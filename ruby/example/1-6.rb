#!/usr/bin/ruby
task :convert_to_pdf => :compile do
  sh "dvipdfmx learnig-ruby.dvi"
end

task :compile => %w[ chap-01.tex chap-02.tex ] do
  sh "platex learnig-ruby.tex"
end

rule '.tex' => '.rd' do |t|
  output = File.basename(t.name, '.tex')
  input = t.source
  sh "rd2 -r rd2book -o #{output} #{input}"
end

rule '.tex' => '.rd' do |t|
  output = File.basename(t.name, '.tex')
  input = t.source
  sh "rd2 -r rd2book -o #{output} #{input}"
end
