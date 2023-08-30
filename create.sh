#!/usr/bin/env sh

cat introduction.md > forglory.md
echo '   ' >> forglory.md
cat mechanics.md >> forglory.md
echo '   ' >> forglory.md
echo '# Characters' >> forglory.md
cat characters/stats.md >> forglory.md
cat characters/powers.md >> forglory.md
echo '   ' >> forglory.md
cat timeandspace.md >> forglory.md
echo '   ' >> forglory.md
cat combat.md >> forglory.md
echo '   ' >> forglory.md
cat dooms.md >> forglory.md
echo '   ' >> forglory.md
cat suffering.md >> forglory.md
echo '   ' >> forglory.md
cat death.md >> forglory.md
echo '   ' >> forglory.md
cat gear.md >> forglory.md
echo '   ' >> forglory.md
cat weapons.md >> forglory.md
echo '   ' >> forglory.md
cat armor.md >> forglory.md
echo '   ' >> forglory.md
echo 'Done!'
