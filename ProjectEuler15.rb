def latticePaths n
	@lattice_hash = {}
	recurLatticePaths(n, n)
end

def recurLatticePaths x, y
	return @lattice_hash[[x,y]] if @lattice_hash[[x,y]] != nil
	recurLatticePaths(x-1,y-1) if x >= 1 and y >= 1
	if x==0 or y==0
		@lattice_hash[[x,y]] = 1
	else
		@lattice_hash[[x,y]] = recurLatticePaths(x,y-1) + recurLatticePaths(x-1,y)
	end
end

puts latticePaths gets.chomp.to_i
