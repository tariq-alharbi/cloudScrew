<?php

namespace App\Http\Livewire\Admin;

use App\Models\Order;
use Livewire\Component;

class AdminOrderDetailsComponent extends Component
{
    public $order_id;

    public function mount($order_id)
    {
        // dd($order_id);
        $this->order_id = $order_id;
        // dd($this->order_id);
    }

    public function render()
    {
        $order = Order::find($this->order_id);
        // dd($order);
        return view('livewire.admin.admin-order-details-component', [
            'order' => $order,
        ]);
    }
}
