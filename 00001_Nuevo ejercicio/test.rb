describe 'tests' do
  it 'test1' do
    File.open("archivo.txt", "w") {|f| f.write("Extranjero Rock Genero\nJazz Genero\nModerno Nacional Rock Género\nViejito Nacional Rock Género") }
    expect(procesar_archivo("archivo.txt")).to eq "a"
  end
  it 'test2' do
    File.open("archivo.txt", "w") {|f| f.write("") }
    expect(procesar_archivo("archivo.txt")).to eq "a"
  end
end