prepare() {
    git config --global user.name "shardingsphere"
    git config --global user.email "dev@shardingsphere.apache.org"
    python3 -m pip install --upgrade pip
    pip install sphinx
    sudo apt-get update -y
    sudo apt-get install -y latexmk texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended
    sudo apt-get install -y texlive-xetex latex-cjk-all
    wget -q https://github.com/jgm/pandoc/releases/download/2.16.1/pandoc-2.16.1-1-amd64.deb
    sudo dpkg -i pandoc-2.16.1-1-amd64.deb
    #wget https://github.com/adobe-fonts/source-han-sans/raw/release/OTF/SourceHanSansSC.zip
    wget https://github.com/adobe-fonts/source-han-sans/releases/latest/download/SourceHanSansSC.zip
    wget https://github.com/adobe-fonts/source-han-serif/releases/download/2.000R/SourceHanSerifSC.zip
    #wget https://github.com/adobe-fonts/source-han-serif/raw/release/OTF/SourceHanSerifSC_SB-H.zip
    #wget https://github.com/adobe-fonts/source-han-serif/raw/release/OTF/SourceHanSerifSC_EL-M.zip
    unzip SourceHanSansSC.zip -d SourceHanSansSC
    unzip SourceHanSerifSC.zip -d SourceHanSerifSC
    #unzip SourceHanSerifSC_EL-M.zip -d SourceHanSerifSC_EL-M
    #unzip SourceHanSerifSC_SB-H.zip -d SourceHanSerifSC_SB-H
    #sudo mv SourceHanSansSC SourceHanSerifSC_EL-M SourceHanSerifSC_SB-H /usr/share/fonts/opentype/
    sudo mv SourceHanSansSC SourceHanSerifSC /usr/share/fonts/opentype/
    wget -O source-serif-pro.zip https://www.fontsquirrel.com/fonts/download/source-serif-pro
    unzip source-serif-pro -d source-serif-pro
    sudo mv source-serif-pro /usr/share/fonts/opentype/
    wget -O source-sans-pro.zip https://www.fontsquirrel.com/fonts/download/source-sans-pro
    unzip source-sans-pro -d source-sans-pro
    sudo mv source-sans-pro /usr/share/fonts/opentype/
    wget -O source-code-pro.zip https://www.fontsquirrel.com/fonts/download/source-code-pro
    unzip source-code-pro -d source-code-pro
    sudo mv source-code-pro /usr/share/fonts/opentype/
    sudo fc-cache -f -v
}

prepare
