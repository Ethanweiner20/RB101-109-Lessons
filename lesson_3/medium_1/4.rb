=begin

There is indeed a difference between the two.

#rolling_buffer1 keeps the same "buffer" object whenever it is called: it
directly mutates the object stored in the `buffer` parameter, and
returns that same object, because `buffer` is never reassigned.

#rolling_buffer2 does not keep the same "buffer" object whenever it is called.
Since #+ is a non-mutating method, it creates an entirely new object to which
`buffer` is assigned. Therefore, the parameter and return value point to
completely separate objects, so the actual buffer object is continually
being recreated. This is an importanc consideration if memory is a concern,
because it might take quite a bit of space to continually create new buffer
objects upon loading each new element.

=end
