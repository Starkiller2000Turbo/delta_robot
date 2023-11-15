function TrVec = TrVec(ET)
if size(ET) ~= [4 4]
    error('Размер матрицы преобразования должен быть 4x4')
end
TrVec = ET(1:3,4);