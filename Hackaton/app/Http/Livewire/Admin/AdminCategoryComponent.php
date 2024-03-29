<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use Livewire\Component;
use Livewire\WithPagination;

class AdminCategoryComponent extends Component
{
    use WithPagination;

    public function deleteCategory($id)
    {
        $category = Category::find($id);
        $category->delete();

        return redirect('/admin/categories')->with('message', 'Category successfully deleted.');
    }

    public function render()
    {

        $categories = Category::paginate(5);

        return view('livewire.admin.admin-category-component', ['categories' => $categories]);

    }
}
