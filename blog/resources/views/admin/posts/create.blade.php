<x-layout>
    <x-setting heading="Publish New Post">
        <form method="POST" action="/admin/posts" enctype="multipart/form-data">
            @csrf
            <x-form.field>
                <x-form.label name="pavadinimas"/>
                <x-form.input name="title" required />
            </x-form.field>
            <x-form.field>
                <x-form.label name="adresas"/>
                <x-form.input name="slug" required />
            </x-form.field>
            <x-form.field>
                <x-form.label name="paveikslėlis"/>
                <x-form.input name="thumbnail" type="file" required />
            </x-form.field>
            <x-form.field>
                <x-form.label name="magistrinis failas"/>
                <x-form.input name="mfile" type="file" required />
            </x-form.field>
            <x-form.field>
                <x-form.label name="ištrauka"/>
                <x-form.textarea name="excerpt" required />
            </x-form.field>

            <x-form.field>
                <x-form.label name="pagrindas"/>
                <x-form.textarea name="body" required />
            </x-form.field>

            <x-form.field>
                <x-form.label name="kategorija"/>

                <select name="category_id" id="category_id" required>
                    @foreach (\App\Models\Category::all() as $category)
                        <option
                            value="{{ $category->id }}"
                            {{ old('category_id') == $category->id ? 'selected' : '' }}
                        >{{ ucwords($category->name) }}</option>
                    @endforeach
                </select>

                <x-form.error name="category"/>
            </x-form.field>

            <x-form.button>Publish</x-form.button>
        </form>
    </x-setting>
</x-layout>
