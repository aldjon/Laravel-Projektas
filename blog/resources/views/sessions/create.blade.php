<x-layout>
    <section class="px-6 py-8">
        <main class="max-w-lg mx-auto mt-10">
            <x-panel>
                <h1 class="text-center font-bold text-xl">Prisijungti!</h1>

                <form method="POST" action="/login" class="mt-10">
                    @csrf
                    <x-form.field>
                        <x-form.label name="el.pastas"/>
                        <x-form.input name="email" type="email" autocomplete="username" required />
                    </x-form.field>
                    <x-form.field>
                        <x-form.label name="slaptažodis"/>
                        <x-form.input name="password" type="password" autocomplete="current-password" required />
                    </x-form.field>
                    <x-form.button>Prisijungti</x-form.button>
                </form>
            </x-panel>
        </main>
    </section>
</x-layout>

