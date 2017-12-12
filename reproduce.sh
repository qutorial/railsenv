printf "\n\nputs 'Environment:'; puts Rails.env;\n\nRails.configuration.sample" | rails console 2>/dev/null
echo "---- this is right "

printf "\n\nputs 'Environment:'; puts Rails.env;\n\nRails.configuration.sample" | rails console --environment=test 2>/dev/null
echo "---- this is right too! "

printf "\n\nputs 'Environment:'; puts Rails.env;\n\nRails.configuration.sample" | rails console --environment test 2>/dev/null
echo "---- this is wrong, outputs dev, but"
echo 'it shall be {"database"=>"test"}'
