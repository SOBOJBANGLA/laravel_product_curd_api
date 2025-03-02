<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProductController extends Controller
{
    /**
     * Display the user's products in the dashboard.
     */
    public function index()
    {
        $products = Product::where('user_id', Auth::id())->paginate(10);
        return view('dashboard', compact('products'));
    }

    /**
     * Show the form for creating a new product.
     */
    public function create()
    {
        return view('products.create');
    }

    /**
     * Store a newly created product in the database.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'price' => 'required|numeric',
        ]);

        $product = Auth::user()->products()->create($request->all());

        return redirect()->route('dashboard')->with('success', 'Product created successfully.');
    }

    /**
     * Show the form for editing the specified product.
     */
    public function edit(Product $product)
    {
        if ($product->user_id !== Auth::id()) {
            abort(403, 'Unauthorized action.');
        }

        return view('products.edit', compact('product'));
    }

    /**
     * Update the specified product in the database.
     */
    public function update(Request $request, Product $product)
    {
        if ($product->user_id !== Auth::id()) {
            abort(403, 'Unauthorized action.');
        }

        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'price' => 'required|numeric',
        ]);

        $product->update($request->all());

        return redirect()->route('dashboard')->with('success', 'Product updated successfully.');
    }

    /**
     * Remove the specified product from the database.
     */
    public function destroy(Product $product)
    {
        if ($product->user_id !== Auth::id()) {
            abort(403, 'Unauthorized action.');
        }

        $product->delete();

        return redirect()->route('dashboard')->with('success', 'Product deleted successfully.');
    }

    // -----------------------------------------------
    // API Methods (For Fetching Products via JavaScript)
    // -----------------------------------------------

    /**
     * Fetch the authenticated user's products via API.
     */
    public function apiIndex(Request $request)
    {
        $user = $request->user();
    
        if (!$user) {
            return response()->json(['success' => false, 'error' => 'Unauthorized'], 401);
        }
    
        $products = Product::where('user_id', $user->id)->paginate(5);
    
        return response()->json([
            'success' => true,
            'data' => $products
        ]);
    }
    
    /**
     * Store a new product via API.
     */
    public function apiStore(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'price' => 'required|numeric',
        ]);

        $product = $request->user()->products()->create($request->all());

        return response()->json([
            'success' => true,
            'message' => 'Product created successfully.',
            'product' => $product
        ], 201);
    }

    /**
     * Show a single product via API.
     */
    public function apiShow(Product $product, Request $request)
    {
        if ($product->user_id !== $request->user()->id) {
            return response()->json(['error' => 'Unauthorized'], 403);
        }

        return response()->json([
            'success' => true,
            'product' => $product
        ]);
    }

    /**
     * Update a product via API.
     */
    public function apiUpdate(Request $request, Product $product)
    {
        if ($product->user_id !== $request->user()->id) {
            return response()->json(['error' => 'Unauthorized'], 403);
        }

        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'price' => 'required|numeric',
        ]);

        $product->update($request->all());

        return response()->json([
            'success' => true,
            'message' => 'Product updated successfully.',
            'product' => $product
        ]);
    }

    /**
     * Delete a product via API.
     */
    public function apiDestroy(Product $product, Request $request)
    {
        if ($product->user_id !== $request->user()->id) {
            return response()->json(['error' => 'Unauthorized'], 403);
        }

        $product->delete();

        return response()->json([
            'success' => true,
            'message' => 'Product deleted successfully.'
        ]);
    }
}
