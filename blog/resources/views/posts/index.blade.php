<x-layout>
    @include ('posts._header')

    <main class="max-w-6xl mx-auto mt-6 lg:mt-20 space-y-6">
        @if ($posts->count())
            <x-posts-grid :posts="$posts" />

            {{ $posts->links() }}
        @else
            <p class="text-center">Nėra informacijos apie šią magistro temą ar universiteto darbą. Tikrinkite vėliau arba prisijunkikite</p>
            <img src="/images/magistras.jpeg" alt="" class="mx-auto -mb-6" style="width: 145px;">
        @endif
    </main>
</x-layout>
