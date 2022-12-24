<x-layout>



    <section class="px-6 py-8">

        <main class="max-w-lg mx-auto mt-10 bg-gray-100 border border-gray-200 p-6 rounded-xl">

            <h1 class="text-center font-bold text-xl">Log In !</h1>
            <form action="/sessions" method="POST" class="mt-10">
                    <div class="mb-6">
                        @csrf


                    <label  class="block mb-2 uppercase font-bold text-xs text-gray-700"
                        for="email"
                        >
                            email
                        </label>
    
                        <input  class="border border-gray-400 p-2 w-full"
                        type="email"
                        name="email" 
                        value="{{old('email')}}"
                        id="email">
                        @error('email')

                        <p> {{$message}} </p>
                            
                        @enderror
                    
                        <label  class="block mb-2 uppercase font-bold text-xs text-gray-700"
                        for="password"
                    >
                        Password
                    </label>
    
                    <input  class="border border-gray-400 p-2 w-full"
                    type="password"
                    name="password" 
                    id="password">
    
                    @error('password')

                    <p> {{$message}} </p>
                        
                    @enderror


                    <button type="submit"
                            class="w-full mt-10 bg-blue-400 text-white rounded py-2 px-4 hover:bg-blue-500">
                            LogIn
                            
                            </button>
                        @foreach ($errors->all() as $error  )
                            <li> {{ $error }}</li>
                        @endforeach
                        
                        </div>
                </form>
        </main>
    </section>

</x-layout>