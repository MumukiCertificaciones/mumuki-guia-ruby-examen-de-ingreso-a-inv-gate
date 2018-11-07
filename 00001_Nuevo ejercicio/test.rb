describe 'Descripción del grupo' do
  it 'Descripción del ejemplo' do
    File.open("archivo.txt") {|f| f.write("Extranjero Rock Genero\nJazz Genero\nModerno Nacional Rock Género\nViejito Nacional Rock Género") }
    expect(procesar_archivo("archivo.txt")).to eq true
  end
end