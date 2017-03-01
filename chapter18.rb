File.open("before.txt","w") do |f|
  str = "made by nagakuray"
  f.write(str)
end


# File.rename("before.txt","after.txt")


# -- file copy --
require 'fileutils'

FileUtils.cp("before.txt","after.txt")
FileUtils.mv("before.txt","data.txt")

 # --- file delete ---
File.delete("data.txt")

# --- directory class method ---
# p Dir.pwd
# Dir.chdir("../")
# p Dir.pwd
# Dir.chdir("./ruby_basic")
# p Dir.pwd

# dir = Dir.open("/usr/bin")
# while name = dir.read
#   p name
# end
# p dir.close
#
#
# dir = Dir.open("/usr/bin")
# dir.each do |name|
#   p name
# end
# dir.close
#

# Dir.open("/usr/bin") do |dir|
#   dir.each do |name|
#     p name
#   end
# end

# def traverse(path)
#   if File.directory?(path)
#     dir = Dir.open(path)
#     while name = dir.read
#       next if name == "."
#       next if name == ".."
#       traverse(path + "/" + name)
#     end
#     dir.close
#   else
#     process_file(path)
#   end
# end
#
# def process_file(path)
#   puts path
# end
# traverse(ARGV[0])
#

# --- Dir.glob ---

# p Dir.glob("*")  # すべてのふぁいる
# p Dir.glob(".*") # 隠しファイル
# p Dir.glob(["*.html","*.htm"])
# p Dir.glob(%w(*.html *.htm))

# -- ディレクトリの作成と削除 --
# Dir.mkdir("temp")
# Dir.rmdir("temp")

filename = "out.txt"
File.open(filename,"w").close

st = File.stat(filename)
p st.ctime
p st.mtime
p st.atime

File.utime(Time.now - 100,Time.now - 100,filename)
st = File.stat(filename)
p st.ctime
p st.mtime
p st.atime
