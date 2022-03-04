<x-layout>
    <x-setting :heading="'Pertvarkyti puslapį: ' . $post->title">
        <form method="POST" action="/admin/posts/{{ $post->id }}" enctype="multipart/form-data">
            @csrf
            @method('PATCH')

            <x-form.field>
                <x-form.label name="Pavadinimas"/>
                <x-form.input name="title" :value="old('title', $post->title)" required />
            </x-form.field>

            <x-form.field>
                <x-form.label name="adresas"/>
                <x-form.input name="slug" :value="old('slug', $post->slug)" required />
            </x-form.field>

            <x-form.field>
                <x-form.label name="Paveiksliukas"/>
                <div class="flex mt-6">
                    <div class="flex-1">
                        <x-form.input name="thumbnail" type="file" :value="old('thumbnail', $post->thumbnail)" />
                    </div>

                    <img src="{{ asset('storage/' . $post->thumbnail) }}" alt="" class="rounded-xl ml-6" width="100">
                </div>
            </x-form.field>

            <x-form.field>
                <x-form.label name="Magistrinis failas"/>

                <div class="flex mt-6">
                    <div class="flex-1">
                        <x-form.input name="mfile" type="file" :value="old('mfile', $post->mfile)" />
                    </div>

                    <a href="{{ asset('storage/' . $post->mfile) }}">  </a>
                </div>
            </x-form.field>

            <x-form.field>
                <x-form.label name="Ištrauka"/>
                <x-form.textarea name="excerpt" required>{{ old('excerpt', $post->excerpt) }}</x-form.textarea>
            </x-form.field>

            <x-form.field>
            <x-form.label name="Pagrindas"/>
            <x-form.textarea name="body" required>{{ old('body', $post->body) }}</x-form.textarea>
            </x-form.field>

            <x-form.field>
                <x-form.label name="kategorija"/>

                <select name="category_id" id="category_id" required>
                    @foreach (\App\Models\Category::all() as $category)
                        <option
                            value="{{ $category->id }}"
                            {{ old('category_id', $post->category_id) == $category->id ? 'selected' : '' }}
                        >{{ ucwords($category->name) }}</option>
                    @endforeach
                </select>

                <x-form.error name="category"/>
            </x-form.field>

            <x-form.button>Update</x-form.button>
        </form>
    </x-setting>
</x-layout>
