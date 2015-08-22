class Array
  def eachEven(&wasABlock_nowAProc)
    # We start with "true" because arrays start with 0, which is even.
    isEven = true

    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object
      end

      isEven = (not isEven)  # Toggle from even to odd, or odd to even.
    end
  end
end

['apple', 'bad apple', 'cherry', 'durian'].eachEven do |fruit|
  puts 'Yum!  I just love '+fruit+' pies, don\'t you?'
end

# Remember, we are getting the even-numbered elements
# of the array, all of which happen to be odd numbers,
# just because I like to cause problems like that.
[1, 2, 3, 4, 5].eachEven do |oddBall|
  puts oddBall.to_s+' is NOT an even number!'
end

Yum!  I just love apple pies, don't you?
Yum!  I just love cherry pies, don't you?
1 is NOT an even number!
3 is NOT an even number!
5 is NOT an even number!

So to pass in a block to eachEven, all we had to do was stick the block after the method. You can pass a block into any method this way, though many methods will just ignore the block. In order to make your method not ignore the block, but grab it and turn it into a proc, put the name of the proc at the end of your method's parameter list, preceded by an ampersand (&). So that part is a little tricky, but not too bad, and you only have to do that once (when you define the method). Then you can use the method over and over again, just like the built-in methods which take blocks, like each and times. (Remember 5.times do...?)

If you get confused, just remember what eachEven is supposed to do: call the block passed in with every other element in the array. Once you've written it and it works, you don't need to think about what it's actually doing under the hood ("which block is called when??"); in fact, that's exactly why we write methods like this: so we never have to think about how they work again. We just use them.

I remember one time I wanted to be able to time how long different sections of a program were taking. (This is also known as profiling the code.) So I wrote a method which takes the time before running the code, then it runs it, then it takes the time again at the end and figures out the difference. I can't find the code right now, but I don't need it; it probably went something like this:

def profile descriptionOfBlock, &block
  startTime = Time.now

  block.call

  duration = Time.now - startTime

  puts descriptionOfBlock+':  '+duration.to_s+' seconds'
end

profile '25000 doublings' do
  number = 1

  25000.times do
    number = number + number
  end

  # Show the number of digits in this HUGE number.
  puts number.to_s.length.to_s+' digits'
end

profile 'count to a million' do
  number = 0

  1000000.times do
    number = number + 1
  end
end


