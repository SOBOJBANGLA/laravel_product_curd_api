@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Dashboard</h1>

        {{-- Hidden input to store the API token securely --}}
        <input type="hidden" id="api_token" value="{{ auth()->user()->createToken('dashboard-token')->plainTextToken }}">

        {{-- Include products section --}}
        <h2>My Products</h2>
        <a href="{{ route('products.create') }}" style="color: blue" class="btn btn-primary mb-3">Add Product</a>

        <table class="table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody id="productTableBody">
                <!-- Products will be inserted here by JavaScript -->
            </tbody>
        </table>

        <nav>
            <ul class="pagination" id="pagination">
                <!-- Pagination links will be inserted here by JavaScript -->
            </ul>
        </nav>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const token = document.getElementById("api_token").value; // Get API token

            function fetchProducts(page = 1) {
                fetch(`/api/products?page=${page}`, {
                    method: "GET",
                    headers: {
                        "Authorization": `Bearer ${token}`,
                        "Accept": "application/json"
                    }
                })
                .then(response => response.json())
                .then(data => {
                    console.log("Fetched Products:", data); // Debugging log

                    const productTableBody = document.getElementById("productTableBody");
                    productTableBody.innerHTML = "";

                    if (data.success && data.data.data.length > 0) {
                        data.data.data.forEach(product => {
                            const row = document.createElement("tr");
                            row.innerHTML = `
                                <td>${product.name}</td>
                                <td>${product.description || 'N/A'}</td>
                                <td>$${product.price}</td>
                                <td>
                                    <a href="/products/${product.id}/edit" class="btn btn-warning" >Edit</a>
                                    <button class="btn btn-danger" onclick="deleteProduct(${product.id})">Delete</button>
                                </td>
                            `;
                            productTableBody.appendChild(row);
                        });

                        renderPagination(data.data);
                    } else {
                        productTableBody.innerHTML = `<tr><td colspan="4" class="text-center">No products found.</td></tr>`;
                    }
                })
                .catch(error => {
                    console.error("Error fetching products:", error);
                });
            }

            
            function renderPagination(data) {
                const pagination = document.getElementById("pagination");
                pagination.innerHTML = "";

                if (data.total > data.per_page) {
                    for (let i = 1; i <= data.last_page; i++) {
                        const li = document.createElement("li");
                        li.className = `page-item ${i === data.current_page ? 'active' : ''}`;
                        li.innerHTML = `<a class="page-link" href="#" onclick="fetchProducts(${i})">${i}</a>`;
                        pagination.appendChild(li);
                    }
                }
            }

            fetchProducts();
        });
    </script>
@endsection
