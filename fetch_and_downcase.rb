def fetch_and_downcase(ary,index)
  if str = ary[index]
    return str.downcase
  end
end

ary = ["boo","tab","hoge"]
p fetch_and_downcase(ary,1)

hash = {0 => "boo", 1=> "tab", 2=> "hoge"}
p fetch_and_downcase(hash,1)
