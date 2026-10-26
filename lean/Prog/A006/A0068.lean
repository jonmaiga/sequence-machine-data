import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A006800: Number of connected vertex-transitive graphs with n nodes.

The programs for A006800, there is no canonical definition to state claims against.
-/

/-! ## A006800.P12265316124542652833

`(A054917(n+1)+A006799(n+1))/2`
-/

namespace A006800.P12265316124542652833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054917 (n + 1) + A006799 (n + 1) : ℚ) / 2

end

end A006800.P12265316124542652833

/-! ## A006800.P7257949372603236385

`A054917(n+1)+A001281(A006799(n+1)-A054917(n+1))`
-/

namespace A006800.P7257949372603236385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054917 (n + 1) + A001281 (A006799 (n + 1) - A054917 (n + 1)).toNat

end

end A006800.P7257949372603236385

/-! ## A006800.P4287534585984413032

`A054917(n+1)+A004525(A006799(n+1)-A054917(n+1))`
-/

namespace A006800.P4287534585984413032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054917 (n + 1) + A004525 (A006799 (n + 1) - A054917 (n + 1)).toNat

end

end A006800.P4287534585984413032

/-! ## A006800.P12897119564928583001

`A054917(n+1)+A004526(A006799(n+1)-A054917(n+1))`
-/

namespace A006800.P12897119564928583001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054917 (n + 1) + A004526 (A006799 (n + 1) - A054917 (n + 1)).toNat

end

end A006800.P12897119564928583001

/-! ## A006800.P13869520367482371987

`A054917(n+1)+A025480(A006799(n+1)-A054917(n+1))`
-/

namespace A006800.P13869520367482371987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054917 (n + 1) + A025480 (A006799 (n + 1) - A054917 (n + 1)).toNat

end

end A006800.P13869520367482371987

/-!
# A006801: Number of 2-dimensional directed compact animals of size n.

The programs for A006801, there is no canonical definition to state claims against.
-/

/-! ## A006801.P6450169036608485172

`A008647(Δ[Δ[A278615(n)]])`
-/

namespace A006801.P6450169036608485172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (f1 (n + 1) - f1 n).toNat

end

end A006801.P6450169036608485172

/-! ## A006801.P2444596360311572814

`record[A110658(Δ[A077996(n)])]`
-/

namespace A006801.P2444596360311572814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006801.P2444596360311572814

/-! ## A006801.P8537921576819653940

`A110658(Δ[A077996(n+2)])`
-/

namespace A006801.P8537921576819653940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077996 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (f1 (n + 1) - f1 n).toNat

end

end A006801.P8537921576819653940

/-! ## A006801.P13301571435957546915

`A034347(n+1)+A022290(A081294(n))`
-/

namespace A006801.P13301571435957546915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034347 (n + 1) + A022290 (A081294 n).toNat

end

end A006801.P13301571435957546915

/-!
# A006803: Percolation series for hexagonal lattice.

The programs for A006803, there is no canonical definition to state claims against.
-/

/-! ## A006803.P18186711887589048712

`A210736(n)-∑[A357136(A000124(n))]`
-/

namespace A006803.P18186711887589048712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357136 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006803.P18186711887589048712

/-!
# A006809: Bond percolation series for hexagonal lattice.

The programs for A006809, there is no canonical definition to state claims against.
-/

/-! ## A006809.P9056706850234866095

`A171878(A171874(n))+A058396(n)`
-/

namespace A006809.P9056706850234866095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171878 (A171874 n).toNat + A058396 n

end

end A006809.P9056706850234866095

/-! ## A006809.P5655317425272840673

`or(A058396(n), A322390(A146731(n+1)))`
-/

namespace A006809.P5655317425272840673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058396 n) (A322390 (A146731 (n + 1)).toNat)

end

end A006809.P5655317425272840673

/-! ## A006809.P8367692049138973002

`A171878(A171874(n))+∑[A158920(n+1)]`
-/

namespace A006809.P8367692049138973002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171878 (A171874 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006809.P8367692049138973002

/-!
# A006810: Bond percolation series for mean cluster size on directed cubic lattice.

The programs for A006810, there is no canonical definition to state claims against.
-/

/-! ## A006810.P3389005064777278471

`A062108(xor(A090344(n), A135351(2*n+3)))`
-/

namespace A006810.P3389005064777278471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (Int.xor (A090344 n) (A135351 (2 * n + 3))).toNat

end

end A006810.P3389005064777278471

/-! ## A006810.P11513457756600697614

`A090401(A001096(n))`
-/

namespace A006810.P11513457756600697614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090401 (A001096 n).toNat

end

end A006810.P11513457756600697614

/-!
# A006811: Percolation series for b.c.c. lattice.

The programs for A006811, there is no canonical definition to state claims against.
-/

/-! ## A006811.P5527760895803699574

`A060789(2*A344040(2*n+3))`
-/

namespace A006811.P5527760895803699574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (2 * A344040 (2 * n + 3)).toNat

end

end A006811.P5527760895803699574

/-!
# A006812: Percolation series for f.c.c. lattice.

The programs for A006812, there is no canonical definition to state claims against.
-/

/-! ## A006812.P2339943195144929533

`A129325(n)+A005843(A034691(2*(n+1)))`
-/

namespace A006812.P2339943195144929533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129325 n + A005843 (A034691 (2 * (n + 1))).toNat

end

end A006812.P2339943195144929533

/-!
# A006813: Percolation series for directed hexagonal lattice.

The programs for A006813, there is no canonical definition to state claims against.
-/

/-! ## A006813.P13042979701833270164

`A008585(A084213(n)/A011782(n)-A256999(n))`
-/

namespace A006813.P13042979701833270164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.roundAway ((A084213 n : ℚ) / (A011782 n : ℚ) - (A256999 n : ℚ))).toNat

end

end A006813.P13042979701833270164

/-! ## A006813.P1435538127867252908

`3*A003056((n+1)*∏[4-2/(n+1)]/2)`
-/

namespace A006813.P1435538127867252908
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003056 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j) / 2))).toNat

end

end A006813.P1435538127867252908

/-!
# A006814: Related to self-avoiding walks on square lattice.

The programs for A006814, there is no canonical definition to state claims against.
-/

/-! ## A006814.P2202555322496851799

`A371587(A297388(2*n+1)-1)`
-/

namespace A006814.P2202555322496851799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A297388 (2 * n + 1) - 1).toNat

end

end A006814.P2202555322496851799

/-!
# A006815: Related to self-avoiding walks on square lattice.

The programs for A006815, there is no canonical definition to state claims against.
-/

/-! ## A006815.P15906831308612515801

`A259814(n+1)/4`
-/

namespace A006815.P15906831308612515801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259814 (n + 1) : ℚ) / 4

end

end A006815.P15906831308612515801

/-! ## A006815.P5490227722498283420

`A002265(A259814(n+1))`
-/

namespace A006815.P5490227722498283420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A259814 (n + 1)).toNat

end

end A006815.P5490227722498283420

/-!
# A006816: Related to self-avoiding walks on square lattice.

The programs for A006816, there is no canonical definition to state claims against.
-/

/-! ## A006816.P6424755652877535939

`A376953(A134770(n))`
-/

namespace A006816.P6424755652877535939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376953 (A134770 n).toNat

end

end A006816.P6424755652877535939

/-!
# A006817: Trails of length n on square lattice.

The programs for A006817, there is no canonical definition to state claims against.
-/

/-! ## A006817.P5332147763142361208

`A135282(A076491(n))*A238440(n)`
-/

namespace A006817.P5332147763142361208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135282 (A076491 n).toNat * A238440 n

end

end A006817.P5332147763142361208

/-! ## A006817.P10706658997497700467

`A059553(A059502(n+1)*A059514(n+2))`
-/

namespace A006817.P10706658997497700467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059553 (A059502 (n + 1) * A059514 (n + 2)).toNat

end

end A006817.P10706658997497700467

/-! ## A006817.P3075772446542549251

`A059553(A059502(n+1)^A059514(n+2))`
-/

namespace A006817.P3075772446542549251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059553 (SequenceMachineLib.roundAway ((A059502 (n + 1) : ℚ) ^ (A059514 (n + 2) : ℤ))).toNat

end

end A006817.P3075772446542549251

/-!
# A006818: Trails of length n on hexagonal lattice.

The programs for A006818, there is no canonical definition to state claims against.
-/

/-! ## A006818.P7962611088745927300

`A129533(A302545(n))+A002913(n)`
-/

namespace A006818.P7962611088745927300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129533 (A302545 n).toNat + A002913 n

end

end A006818.P7962611088745927300

/-! ## A006818.P3062656338186608861

`A265128(A227117(n+1))+A001412(n)`
-/

namespace A006818.P3062656338186608861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265128 (A227117 (n + 1)).toNat + A001412 n

end

end A006818.P3062656338186608861

/-!
# A006819: Trails of length n on cubic lattice.

The programs for A006819, there is no canonical definition to state claims against.
-/

/-! ## A006819.P16926894407026126491

`A002322(A126033(n+1)-12*C(n, 5))`
-/

namespace A006819.P16926894407026126491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A126033 (n + 1) - (12 * Nat.choose n 5 : ℤ)).toNat

end

end A006819.P16926894407026126491

/-! ## A006819.P13743176187914404105

`A315187(ceil(5^n/4)-A146383(n+1))`
-/

namespace A006819.P13743176187914404105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 (⌈(5 ^ n : ℚ) / 4⌉ - A146383 (n + 1)).toNat

end

end A006819.P13743176187914404105

/-!
# A006820: Number of connected regular simple graphs of degree 4 (or quartic graphs) with n nodes.

The programs for A006820, there is no canonical definition to state claims against.
-/

/-! ## A006820.P7859328390767020174

`A033301(n)-A033483(n)`
-/

namespace A006820.P7859328390767020174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 n - A033483 n

end

end A006820.P7859328390767020174

/-! ## A006820.P18445509817712793516

`A184943(n)+A033886(n)`
-/

namespace A006820.P18445509817712793516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184943 n + A033886 n

end

end A006820.P18445509817712793516

/-! ## A006820.P3869903661879804749

`A033301(n)-(A185044(n)+A185043(n))`
-/

namespace A006820.P3869903661879804749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 n - (A185044 n + A185043 n)

end

end A006820.P3869903661879804749

/-! ## A006820.P4119103879288976702

`A033301(n)+A033483(n)*A260196(n)`
-/

namespace A006820.P4119103879288976702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 n + A033483 n * A260196 n

end

end A006820.P4119103879288976702

/-! ## A006820.P11928084642582204867

`A033301(n)-(A185043(n)-(A185245(n)-A185044(n)))`
-/

namespace A006820.P11928084642582204867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 n - (A185043 n - (A185245 n - A185044 n))

end

end A006820.P11928084642582204867

/-!
# A006821: Number of connected regular graphs of degree 5 (or quintic graphs) with 2n nodes.

The programs for A006821, there is no canonical definition to state claims against.
-/

/-! ## A006821.P9114265574539425265

`A165626(n)-A165655(n)`
-/

namespace A006821.P9114265574539425265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165626 n - A165655 n

end

end A006821.P9114265574539425265

/-! ## A006821.P16973079386561930347

`A184953(n)+A058275(n)`
-/

namespace A006821.P16973079386561930347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184953 n + A058275 n

end

end A006821.P16973079386561930347

/-! ## A006821.P3475542484490301910

`A068934(C(2*n, 2)+6)`
-/

namespace A006821.P3475542484490301910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068934 (Nat.choose (2 * n) 2 + 6)

end

end A006821.P3475542484490301910

/-! ## A006821.P6459790017252277895

`A068934((n+6)*Δ[n²]-14*n)`
-/

namespace A006821.P6459790017252277895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068934 ((n + 6 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (14 * n : ℤ)).toNat

end

end A006821.P6459790017252277895

/-! ## A006821.P10408785268636160595

`A165626(n)-(A185254(n)+A185053(n))`
-/

namespace A006821.P10408785268636160595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165626 n - (A185254 n + A185053 n)

end

end A006821.P10408785268636160595

/-!
# A006822: Number of connected regular graphs of degree 6 (or sextic graphs) with n nodes.

The programs for A006822, there is no canonical definition to state claims against.
-/

/-! ## A006822.P11232678150021440213

`A165627(n)-A165656(n)`
-/

namespace A006822.P11232678150021440213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165627 n - A165656 n

end

end A006822.P11232678150021440213

/-! ## A006822.P11182150944316120353

`A184963(n)+A058276(n)`
-/

namespace A006822.P11182150944316120353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184963 n + A058276 n

end

end A006822.P11182150944316120353

/-! ## A006822.P11301771647389453779

`A165627(n)-(A191928(n)+A185063(n))`
-/

namespace A006822.P11301771647389453779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165627 n - (A191928 n + A185063 n)

end

end A006822.P11301771647389453779

/-! ## A006822.P13397037572491710386

`A165627(n)-A185063(A127287(n))`
-/

namespace A006822.P13397037572491710386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165627 n - A185063 (A127287 n).toNat

end

end A006822.P13397037572491710386

/-! ## A006822.P5222050828892499380

`A165627(n)-A185063(A185037(n)+n)`
-/

namespace A006822.P5222050828892499380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165627 n - A185063 (A185037 n + (n : ℤ)).toNat

end

end A006822.P5222050828892499380

/-!
# A006823: Number of connected trivalent bipartite graphs with 2n nodes.

The programs for A006823, there is no canonical definition to state claims against.
-/

/-! ## A006823.P10514803449441341426

`A008326(∑[n+1]+3)`
-/

namespace A006823.P10514803449441341426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A006823.P10514803449441341426

/-! ## A006823.P292467602007929972

`A129832(A193201(n))`
-/

namespace A006823.P292467602007929972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129832 (A193201 n).toNat

end

end A006823.P292467602007929972

/-! ## A006823.P3792545129350545470

`A294472(A058585(n))`
-/

namespace A006823.P3792545129350545470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294472 (A058585 n).toNat

end

end A006823.P3792545129350545470

/-!
# A006824: Number of connected regular bipartite graphs of degree 4 with 2n nodes.

The programs for A006824, there is no canonical definition to state claims against.
-/

/-! ## A006824.P3530577331745072344

`A008326(∑[n+2]+5)`
-/

namespace A006824.P3530577331745072344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A006824.P3530577331745072344

/-! ## A006824.P1768356871153551822

`A130389(Δ[A058133(n)])`
-/

namespace A006824.P1768356871153551822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130389 (f1 (n + 1) - f1 n).toNat

end

end A006824.P1768356871153551822

/-!
# A006825: Number of connected regular bipartite graphs of degree 5 with 2n nodes.

The programs for A006825, there is no canonical definition to state claims against.
-/

/-! ## A006825.P18302006413126226315

`A008326(A167499(n+2))`
-/

namespace A006825.P18302006413126226315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A167499 (n + 2)).toNat

end

end A006825.P18302006413126226315

/-! ## A006825.P17702326086176577604

`A008326(A141214(n)+8)`
-/

namespace A006825.P17702326086176577604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A141214 n + 8).toNat

end

end A006825.P17702326086176577604

/-! ## A006825.P9710909044078217273

`A008326(A052905(n)+10)`
-/

namespace A006825.P9710909044078217273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A052905 n + 10).toNat

end

end A006825.P9710909044078217273

/-! ## A006825.P11868792904096732983

`A008326(A055999(n)+11)`
-/

namespace A006825.P11868792904096732983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A055999 n + 11).toNat

end

end A006825.P11868792904096732983

/-! ## A006825.P14702249943947966670

`A008326(A167614(n+2)+2)`
-/

namespace A006825.P14702249943947966670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A167614 (n + 2) + 2).toNat

end

end A006825.P14702249943947966670

/-!
# A006827: Number of partitions of 2n with all subsums different from n.

The programs for A006827, there is no canonical definition to state claims against.
-/

/-! ## A006827.P2850604944935870205

`A000041(2*(n+1))-A002219(n+1)`
-/

namespace A006827.P2850604944935870205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * (n + 1)) - A002219 (n + 1)

end

end A006827.P2850604944935870205

/-! ## A006827.P17011690818207614605

`A058696(n+1)-A002219(n+1)`
-/

namespace A006827.P17011690818207614605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (n + 1) - A002219 (n + 1)

end

end A006827.P17011690818207614605

/-! ## A006827.P17959104536903153043

`A035444(A022144(n+1))-A002219(n+1)`
-/

namespace A006827.P17959104536903153043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A022144 (n + 1)).toNat - A002219 (n + 1)

end

end A006827.P17959104536903153043

/-! ## A006827.P9260196265048446414

`A119620(A008586(n+1))-A002219(n+1)`
-/

namespace A006827.P9260196265048446414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A008586 (n + 1)).toNat - A002219 (n + 1)

end

end A006827.P9260196265048446414

/-! ## A006827.P6292941910343453497

`A058696(n+1)-A276107(2*(n+1))`
-/

namespace A006827.P6292941910343453497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (n + 1) - A276107 (2 * (n + 1))

end

end A006827.P6292941910343453497

/-!
# A006832: Discriminants of totally real cubic fields.

The programs for A006832, there is no canonical definition to state claims against.
-/

/-! ## A006832.P17100832223755137711

`A106311(lt[A117902(n), A095046(n+1)])`
-/

namespace A006832.P17100832223755137711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106311 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A006832.P17100832223755137711

/-! ## A006832.P3237859679253609649

`A106311(record[A260999(n+1)])`
-/

namespace A006832.P3237859679253609649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106311 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006832.P3237859679253609649

/-! ## A006832.P13409041130949222789

`A106311(∪[A043319(n+1), A125473(n)])`
-/

namespace A006832.P13409041130949222789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125473 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106311 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A006832.P13409041130949222789

/-! ## A006832.P6586793484040586288

`A106311(∪[A044916(n+1), A125473(n)])`
-/

namespace A006832.P6586793484040586288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125473 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106311 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A006832.P6586793484040586288

/-! ## A006832.P6962861880962213776

`A106311(∪[A043319(n+1), A043319(n+1)²²])`
-/

namespace A006832.P6962861880962213776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A043319 (n + 1) ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106311 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A006832.P6962861880962213776

/-!
# A006835: Percolation series for directed square lattice.

The programs for A006835, there is no canonical definition to state claims against.
-/

/-! ## A006835.P14719474295798337267

`A000034(A151282(n))-A348202(n)`
-/

namespace A006835.P14719474295798337267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A151282 n).toNat - A348202 n

end

end A006835.P14719474295798337267

/-! ## A006835.P3223332117723033753

`A000034(A306519(n))-A348202(n)`
-/

namespace A006835.P3223332117723033753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A306519 n).toNat - A348202 n

end

end A006835.P3223332117723033753

/-! ## A006835.P11932614293504599514

`A081373(A230663(n+1))-A348202(n)`
-/

namespace A006835.P11932614293504599514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (A230663 (n + 1)).toNat - A348202 n

end

end A006835.P11932614293504599514

/-! ## A006835.P6612960747778504046

`A000038(n)!-(A249561(n)-A185246(A099960(n)))`
-/

namespace A006835.P6612960747778504046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) - (A249561 n - A185246 (A099960 n).toNat)

end

end A006835.P6612960747778504046

/-! ## A006835.P15012853459257133761

`A000038(n)!-(A333069(n)-A184955(A053438(n)))`
-/

namespace A006835.P15012853459257133761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) - (A333069 n - A184955 (A053438 n).toNat)

end

end A006835.P15012853459257133761

/-!
# A006836: Percolation series for directed hexagonal lattice.

The programs for A006836, there is no canonical definition to state claims against.
-/

/-! ## A006836.P14477756582735068163

`A051731(A177390(n))-A265582(n+2)`
-/

namespace A006836.P14477756582735068163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A177390 n).toNat - A265582 (n + 2)

end

end A006836.P14477756582735068163

/-! ## A006836.P7531274355024362443

`2-A051914(A018052(n+1))`
-/

namespace A006836.P7531274355024362443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A051914 (A018052 (n + 1)).toNat

end

end A006836.P7531274355024362443

/-! ## A006836.P3312339938666363087

`2-A204166(A336023(n+3))`
-/

namespace A006836.P3312339938666363087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A204166 (A336023 (n + 3)).toNat

end

end A006836.P3312339938666363087

/-! ## A006836.P14111540974748282075

`A079500(n)-A118759(A005318(n))`
-/

namespace A006836.P14111540974748282075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 n - A118759 (A005318 n).toNat

end

end A006836.P14111540974748282075

/-! ## A006836.P8097783063949987726

`A354601(A274936(n))-A274936(n)`
-/

namespace A006836.P8097783063949987726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354601 ((A274936 n).toNat + 10) - A274936 n

end

end A006836.P8097783063949987726

/-!
# A006839: Minimum of largest partial quotient of continued fraction for k/n, (k,n) = 1.

The programs for A006839, there is no canonical definition to state claims against.
-/

/-! ## A006839.P8658025892242362520

`A184167(A252001(3*n+4)+A006093(n+1))`
-/

namespace A006839.P8658025892242362520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184167 (A252001 (3 * n + 4) + A006093 (n + 1)).toNat

end

end A006839.P8658025892242362520

/-! ## A006839.P13207513791293736190

`A056924(A121538(n+1)+A103424(n))`
-/

namespace A006839.P13207513791293736190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A121538 (n + 1) + A103424 n).toNat

end

end A006839.P13207513791293736190

/-! ## A006839.P14778701926277490136

`gcd(A185782(A286414(n)), A286321(n+1))`
-/

namespace A006839.P14778701926277490136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185782 (A286414 n).toNat) (A286321 (n + 1))

end

end A006839.P14778701926277490136

/-! ## A006839.P13124474046416538014

`A051064(A262616(n)+A000065(2*(n+2)))`
-/

namespace A006839.P13124474046416538014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A262616 n + A000065 (2 * (n + 2))).toNat

end

end A006839.P13124474046416538014

/-! ## A006839.P6162573205377572255

`gcd(A129293(n+1), A333805(A136445(2*(n+1))))`
-/

namespace A006839.P6162573205377572255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129293 (n + 1)) (A333805 (A136445 (2 * (n + 1))).toNat)

end

end A006839.P6162573205377572255

/-!
# A006840: Number of 2n-bead black-white reversible complementable necklaces with n black beads.

The programs for A006840, there is no canonical definition to state claims against.
-/

/-! ## A006840.P3102273965787445381

`A115124(n)+A045633(n)`
-/

namespace A006840.P3102273965787445381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115124 n + A045633 n

end

end A006840.P3102273965787445381

/-! ## A006840.P16986636998434604235

`∑{d}[A028310(n), A045633(#)]`
-/

namespace A006840.P16986636998434604235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045633 d

end

end A006840.P16986636998434604235

/-! ## A006840.P16562442546258382135

`∑{d}[A065033(2*n), A045633(#)]`
-/

namespace A006840.P16562442546258382135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045633 d

end

end A006840.P16562442546258382135

/-! ## A006840.P15947481033417743702

`A000007(n)+∑{d}[n, A045633(#)]`
-/

namespace A006840.P15947481033417743702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A045633 d

end

end A006840.P15947481033417743702

/-! ## A006840.P6870099348657360696

`∑{d}[n-A004277(n), A045633(#)]`
-/

namespace A006840.P6870099348657360696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045633 d

end

end A006840.P6870099348657360696

/-! ## A006840.P2140033102008781973

`∑{d}[1-A057427(n)+n, A045633(#)]`
-/

namespace A006840.P2140033102008781973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045633 d

end

end A006840.P2140033102008781973

/-!
# A006841: Permutation arrays of period n.

The programs for A006841, there is no canonical definition to state claims against.
-/

/-! ## A006841.P274828140123021462

`A107436(floor(sqrt(A001142(n))))`
-/

namespace A006841.P274828140123021462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (Int.sqrt (A001142 n)).toNat

end

end A006841.P274828140123021462

/-! ## A006841.P4338344491369874655

`A107436(ceil(sqrt(A001142(n))))`
-/

namespace A006841.P4338344491369874655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 ⌈Real.sqrt (A001142 n : ℝ)⌉.toNat

end

end A006841.P4338344491369874655

/-! ## A006841.P17170395790229214328

`A107436(round(sqrt(A001142(n))))`
-/

namespace A006841.P17170395790229214328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (SequenceMachineLib.roundAway (Real.sqrt (A001142 n : ℝ))).toNat

end

end A006841.P17170395790229214328

/-! ## A006841.P4131821856084206881

`A289493(or(3, A222626(n+1)))`
-/

namespace A006841.P4131821856084206881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (Int.lor 3 (A222626 (n + 1))).toNat

end

end A006841.P4131821856084206881

/-!
# A006842: Triangle read by rows: row n gives numerators of Farey series of order n.

The programs for A006842, there is no canonical definition to state claims against.
-/

/-! ## A006842.P9334956340751744005

`A133404(n+1)-A006843(n+1)`
-/

namespace A006842.P9334956340751744005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133404 (n + 1) - A006843 (n + 1)

end

end A006842.P9334956340751744005

/-! ## A006842.P7757403340986212077

`A006843(n+1)-A191607(n+1)`
-/

namespace A006842.P7757403340986212077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006843 (n + 1) - A191607 (n + 1)

end

end A006842.P7757403340986212077

/-! ## A006842.P15240774938887438316

`(A133404(n+1)-A191607(n+1))/2`
-/

namespace A006842.P15240774938887438316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133404 (n + 1) - A191607 (n + 1) : ℚ) / 2

end

end A006842.P15240774938887438316

/-! ## A006842.P1211703777197488630

`A001281(A133404(n+1)-A191607(n+1))`
-/

namespace A006842.P1211703777197488630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A133404 (n + 1) - A191607 (n + 1)).toNat

end

end A006842.P1211703777197488630

/-! ## A006842.P3921371114144664244

`A004525(A133404(n+1)-A191607(n+1))`
-/

namespace A006842.P3921371114144664244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A133404 (n + 1) - A191607 (n + 1)).toNat

end

end A006842.P3921371114144664244

/-! ## A006842.P2512523403280378780

`A004526(A133404(n+1)-A191607(n+1))`
-/

namespace A006842.P2512523403280378780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A133404 (n + 1) - A191607 (n + 1)).toNat

end

end A006842.P2512523403280378780

/-! ## A006842.P7623046822468939487

`A014682(A133404(n+1)-A191607(n+1))`
-/

namespace A006842.P7623046822468939487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A133404 (n + 1) - A191607 (n + 1)).toNat

end

end A006842.P7623046822468939487

/-! ## A006842.P12233744912960936245

`A026741(A133404(n+1)-A191607(n+1))`
-/

namespace A006842.P12233744912960936245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A133404 (n + 1) - A191607 (n + 1)).toNat

end

end A006842.P12233744912960936245

/-! ## A006842.P11835873898506256104

`A029578(A133404(n+1)-A191607(n+1))`
-/

namespace A006842.P11835873898506256104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A133404 (n + 1) - A191607 (n + 1)).toNat

end

end A006842.P11835873898506256104

/-! ## A006842.P14318284581975291507

`A038572(A133404(n+1)-A191607(n+1))`
-/

namespace A006842.P14318284581975291507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A133404 (n + 1) - A191607 (n + 1)).toNat

end

end A006842.P14318284581975291507

/-! ## A006842.P12481529550353642041

`A110654(A133404(n+1)-A191607(n+1))`
-/

namespace A006842.P12481529550353642041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A133404 (n + 1) - A191607 (n + 1)).toNat

end

end A006842.P12481529550353642041

/-! ## A006842.P1387667113715345661

`A133404(n+1)-A065033(A191607(n+1)+A133404(n+1))`
-/

namespace A006842.P1387667113715345661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133404 (n + 1) - A065033 (A191607 (n + 1) + A133404 (n + 1)).toNat

end

end A006842.P1387667113715345661

/-!
# A006843: Triangle read by rows: row n gives denominators of Farey series of order n.

The programs for A006843, there is no canonical definition to state claims against.
-/

/-! ## A006843.P7224297900838573827

`A133404(n+1)-A006842(n+1)`
-/

namespace A006843.P7224297900838573827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133404 (n + 1) - A006842 (n + 1)

end

end A006843.P7224297900838573827

/-! ## A006843.P14740736178476459517

`A191607(n+1)+A006842(n+1)`
-/

namespace A006843.P14740736178476459517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191607 (n + 1) + A006842 (n + 1)

end

end A006843.P14740736178476459517

/-! ## A006843.P11455310649592803846

`(A191607(n+1)+A133404(n+1))/2`
-/

namespace A006843.P11455310649592803846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191607 (n + 1) + A133404 (n + 1) : ℚ) / 2

end

end A006843.P11455310649592803846

/-! ## A006843.P3440159780500542860

`A001281(A191607(n+1)+A133404(n+1))`
-/

namespace A006843.P3440159780500542860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A191607 (n + 1) + A133404 (n + 1)).toNat

end

end A006843.P3440159780500542860

/-! ## A006843.P9420262333707257866

`A004525(A191607(n+1)+A133404(n+1))`
-/

namespace A006843.P9420262333707257866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A191607 (n + 1) + A133404 (n + 1)).toNat

end

end A006843.P9420262333707257866

/-! ## A006843.P17925893300729313701

`A004526(A191607(n+1)+A133404(n+1))`
-/

namespace A006843.P17925893300729313701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A191607 (n + 1) + A133404 (n + 1)).toNat

end

end A006843.P17925893300729313701

/-! ## A006843.P10694546838987222964

`A014682(A191607(n+1)+A133404(n+1))`
-/

namespace A006843.P10694546838987222964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A191607 (n + 1) + A133404 (n + 1)).toNat

end

end A006843.P10694546838987222964

/-! ## A006843.P1656964208286262732

`A026741(A191607(n+1)+A133404(n+1))`
-/

namespace A006843.P1656964208286262732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A191607 (n + 1) + A133404 (n + 1)).toNat

end

end A006843.P1656964208286262732

/-! ## A006843.P18161029852139682028

`A029578(A191607(n+1)+A133404(n+1))`
-/

namespace A006843.P18161029852139682028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A191607 (n + 1) + A133404 (n + 1)).toNat

end

end A006843.P18161029852139682028

/-! ## A006843.P7113557976477196765

`A038572(A191607(n+1)+A133404(n+1))`
-/

namespace A006843.P7113557976477196765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A191607 (n + 1) + A133404 (n + 1)).toNat

end

end A006843.P7113557976477196765

/-! ## A006843.P14066123923012604333

`A065033(A191607(n+1)+A133404(n+1))`
-/

namespace A006843.P14066123923012604333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A191607 (n + 1) + A133404 (n + 1)).toNat

end

end A006843.P14066123923012604333

/-! ## A006843.P2602467109162188432

`A110654(A191607(n+1)+A133404(n+1))`
-/

namespace A006843.P2602467109162188432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A191607 (n + 1) + A133404 (n + 1)).toNat

end

end A006843.P2602467109162188432

/-!
# A006845: State assignments for n-state machine.

The programs for A006845, there is no canonical definition to state claims against.
-/

/-! ## A006845.P11056373824694399496

`A059202(A070939(n)+A000225(n))`
-/

namespace A006845.P11056373824694399496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059202 (A070939 n + A000225 n).toNat

end

end A006845.P11056373824694399496

/-! ## A006845.P12310591461320920554

`A133709(n+4)%A192649(A000849(n)+1)`
-/

namespace A006845.P12310591461320920554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133709 (n + 4)) (A192649 (A000849 n + 1).toNat)

end

end A006845.P12310591461320920554

/-!
# A006846: Hammersley's polynomial p_n(1).

The programs for A006846, there is no canonical definition to state claims against.
-/

/-! ## A006846.P7679071294807080723

`abs(A104027(∑[n]))`
-/

namespace A006846.P7679071294807080723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104027 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A006846.P7679071294807080723

/-! ## A006846.P7342857769394987900

`(1-2*n%2)*A104027(n*(n+1)/2)`
-/

namespace A006846.P7342857769394987900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((2 * (n % 2) : ℕ) : ℤ)) * A104027 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A006846.P7342857769394987900

/-! ## A006846.P5447873878347848077

`A033999(n)*A104027(∑[n])`
-/

namespace A006846.P5447873878347848077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A104027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006846.P5447873878347848077

/-! ## A006846.P7979209389651714407

`(-1)^n*A104027(A000217(n))`
-/

namespace A006846.P7979209389651714407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A104027 (A000217 n).toNat

end

end A006846.P7979209389651714407

/-! ## A006846.P230111873103715420

`A104027(A000217(n))/A033999(n)`
-/

namespace A006846.P230111873103715420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104027 (A000217 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A006846.P230111873103715420

/-!
# A006847: Number of extreme points of the set of n X n symmetric doubly-stochastic matrices.

The programs for A006847, there is no canonical definition to state claims against.
-/

/-! ## A006847.P7621362948807371501

`A061017(A286074(n+1)-n)`
-/

namespace A006847.P7621362948807371501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A286074 (n + 1) - (n : ℤ)).toNat

end

end A006847.P7621362948807371501

/-! ## A006847.P8665692277812755217

`A247908(A279569(n)+A195207(n))`
-/

namespace A006847.P8665692277812755217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A279569 n + A195207 n).toNat

end

end A006847.P8665692277812755217

/-! ## A006847.P46843816077316908

`or(A000085(n), A124455(A073225(n)))`
-/

namespace A006847.P46843816077316908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000085 n) (A124455 (A073225 n).toNat)

end

end A006847.P46843816077316908

/-!
# A006848: Number of extreme points of the set of n X n symmetric doubly-substochastic matrices.

The programs for A006848, there is no canonical definition to state claims against.
-/

/-! ## A006848.P6463036045859391033

`∑[A330107(A185040(n))]`
-/

namespace A006848.P6463036045859391033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330107 (A185040 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006848.P6463036045859391033

/-! ## A006848.P18109958860273504521

`∑[A330097(A350906(n))]`
-/

namespace A006848.P18109958860273504521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330097 (A350906 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006848.P18109958860273504521

/-!
# A006849: Number of strongly self-dual planar maps with 2n edges.

The programs for A006849, there is no canonical definition to state claims against.
-/

/-! ## A006849.P8717752277734095368

`A013930(A081184(n)+3*a(n-1))` with `a(0)=2`
-/

namespace A006849.P8717752277734095368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A013930 (A081184 n + 3 * a (n - 1)).toNat

end

end A006849.P8717752277734095368

/-!
# A006850: Exponential self-convolution of numbers of rooted trees on n nodes.

The programs for A006850, there is no canonical definition to state claims against.
-/

/-! ## A006850.P13872824036787342424

`A163801(A378858(n))`
-/

namespace A006850.P13872824036787342424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163801 (A378858 n).toNat

end

end A006850.P13872824036787342424

/-! ## A006850.P2216365338683517040

`A150154(A001096(n))`
-/

namespace A006850.P2216365338683517040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150154 (A001096 n).toNat

end

end A006850.P2216365338683517040

/-!
# A006851: Trails of length n on honeycomb lattice.

The programs for A006851, there is no canonical definition to state claims against.
-/

/-! ## A006851.P15178374483701364228

`∑[A161205(A149851(n))]`
-/

namespace A006851.P15178374483701364228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A149851 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006851.P15178374483701364228

/-! ## A006851.P1577342449971083695

`∑[A174873(A173278(n))]`
-/

namespace A006851.P1577342449971083695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174873 (A173278 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006851.P1577342449971083695

/-! ## A006851.P235800310339996748

`∑[A174873(∑[A000048(n)])]`
-/

namespace A006851.P235800310339996748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174873 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006851.P235800310339996748

/-! ## A006851.P8102238693515663252

`A263098(A014137(n))-A173066(n+1)`
-/

namespace A006851.P8102238693515663252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263098 (A014137 n).toNat - A173066 (n + 1)

end

end A006851.P8102238693515663252

/-! ## A006851.P13187679999606015180

`A001615(A027560(n)%A113715(2*(n+1)))`
-/

namespace A006851.P13187679999606015180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (Int.tmod (A027560 n) (A113715 (2 * (n + 1)))).toNat

end

end A006851.P13187679999606015180

/-!
# A006853: Balanced colorings of n-cube.

The programs for A006853, there is no canonical definition to state claims against.
-/

/-! ## A006853.P12888557397339620754

`n*A114830(a(n-1))` with `a(0)=2`
-/

namespace A006853.P12888557397339620754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) * A114830 (a (n - 1)).toNat

end

end A006853.P12888557397339620754

/-!
# A006854: Nonantipodal balanced colorings of n-cube.

The programs for A006854, there is no canonical definition to state claims against.
-/

/-! ## A006854.P15521261131676830786

`xor(a(n-1), A359571(n+1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A006854.P15521261131676830786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  Int.xor (a (n - 1)) (A359571 (n + 1))

end

end A006854.P15521261131676830786

/-!
# A006855: Maximum number of edges in an n-node squarefree graph, or, in a graph containing no 4-cycle, or no C_4.

The programs for A006855, there is no canonical definition to state claims against.
-/

/-! ## A006855.P1750021663860195871

`A191965(n+1)/2`
-/

namespace A006855.P1750021663860195871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191965 (n + 1) : ℚ) / 2

end

end A006855.P1750021663860195871

/-! ## A006855.P4382801616496466299

`A001281(A191965(n+1))`
-/

namespace A006855.P4382801616496466299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A191965 (n + 1)).toNat

end

end A006855.P4382801616496466299

/-! ## A006855.P11803284866718021524

`A004524(A191965(n+1)+1)`
-/

namespace A006855.P11803284866718021524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A191965 (n + 1) + 1).toNat

end

end A006855.P11803284866718021524

/-! ## A006855.P17170976293912998232

`A004526(A191965(n+1)+1)`
-/

namespace A006855.P17170976293912998232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A191965 (n + 1) + 1).toNat

end

end A006855.P17170976293912998232

/-! ## A006855.P5172823786075661430

`A028242(A191965(n+1)+1)`
-/

namespace A006855.P5172823786075661430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A191965 (n + 1) + 1).toNat

end

end A006855.P5172823786075661430

/-!
# A006856: Maximal number of edges in n-node graph of girth at least 5.

The programs for A006856, there is no canonical definition to state claims against.
-/

/-! ## A006856.P3873890178570979889

`∑[A000120(A047412(n+1)^A304869(n+1))]`
-/

namespace A006856.P3873890178570979889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A047412 (n + 1) : ℚ) ^ (A304869 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006856.P3873890178570979889

/-! ## A006856.P8669441999623242195

`A110656(n)+∑[A001221(A189601(n+1))]`
-/

namespace A006856.P8669441999623242195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A189601 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006856.P8669441999623242195

/-! ## A006856.P14337877532853226682

`∑[A001221(record[A181368(n+2)])]`
-/

namespace A006856.P14337877532853226682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181368 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006856.P14337877532853226682

/-! ## A006856.P13808949056131839389

`∑[A001222(A002315(n)%A235950(n+1))]`
-/

namespace A006856.P13808949056131839389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A002315 n) (A235950 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006856.P13808949056131839389

/-! ## A006856.P7037801919667126563

`lt[A344618(3*n), A140119(A271647(n+1))]`
-/

namespace A006856.P7037801919667126563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140119 (A271647 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A006856.P7037801919667126563

/-!
# A006857: a(n) = binomial(n+5,5) * binomial(n+5,4)/(n+5).

The programs for A006857, the canonical program `A006857.P13344409849471814543` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006857 has offset 0).

The definition of A006857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*C(n+5, 4)/(n+5)` (program `A006857.P3611003701782246234`, by `A006857.P3611003701782246234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006857.P6703828727357900104

`C(n+4, 3)*C(n+5, 5)/4`
-/

namespace A006857.P6703828727357900104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 3 * Nat.choose (n + 5) 5 : ℚ) / 4

end

end A006857.P6703828727357900104

namespace A006857

/-- `C(n+4, 3)*C(n+5, 5)/4` -/
def P6703828727357900104.Spec : Prop :=
  ∀ n, P6703828727357900104.a n = (A006857 n : ℚ)

theorem P6703828727357900104.correct : P6703828727357900104.Spec := by
  intro n
  simp only [A006857, Nat.add_sub_cancel, A006857.P6703828727357900104.a, A006857.P13344409849471814543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006857

/-! ## A006857.P3611003701782246234

`C(n+5, 5)*C(n+5, 4)/(n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006857.P3611003701782246234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 * Nat.choose (n + 5) 4 : ℚ) / (n + 5 : ℚ)

end

end A006857.P3611003701782246234

namespace A006857

/-- `C(n+5, 5)*C(n+5, 4)/(n+5)` -/
def P3611003701782246234.Spec : Prop :=
  ∀ n, P3611003701782246234.a n = (A006857 n : ℚ)

theorem P3611003701782246234.correct : P3611003701782246234.Spec := by
  intro n
  simp only [A006857, Nat.add_sub_cancel, A006857.P3611003701782246234.a, A006857.P13344409849471814543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006857

/-! ## A006857.P13344409849471814543

`C(n+4, 4)²-C(n+4, 3)*C(n+4, 5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006857

/-- `C(n+4, 4)²-C(n+4, 3)*C(n+4, 5)` -/
def P13344409849471814543.Spec : Prop :=
  ∀ n, P13344409849471814543.a n = A006857 n

theorem P13344409849471814543.correct : P13344409849471814543.Spec := by
  intro n
  simp only [A006857]

end A006857

/-! ## A006857.P17629727220204572811

`C(n+5, 8)+6*C(n+6, 8)+6*C(n+7, 8)+C(n+8, 8)`
-/

namespace A006857.P17629727220204572811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 8 + 6 * Nat.choose (n + 6) 8 + 6 * Nat.choose (n + 7) 8 + Nat.choose (n + 8) 8

end

end A006857.P17629727220204572811

namespace A006857

/-- `C(n+5, 8)+6*C(n+6, 8)+6*C(n+7, 8)+C(n+8, 8)` -/
def P17629727220204572811.Spec : Prop :=
  ∀ n, (P17629727220204572811.a n : ℤ) = A006857 n

theorem P17629727220204572811.correct : P17629727220204572811.Spec := by
  intro n
  simp only [A006857, Nat.add_sub_cancel, A006857.P17629727220204572811.a, A006857.P13344409849471814543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006857

/-! ## A006857.P14971341907383147211

`∑[∑[∑[∑[∑[n+1]²+(n+1)*∑[n²]]]]]`
-/

namespace A006857.P14971341907383147211
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f5 j) ^ 2 + (n + 1) * (∑ j ∈ Finset.range (n + 1), f6 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006857.P14971341907383147211

namespace A006857

/-- `∑[∑[∑[∑[∑[n+1]²+(n+1)*∑[n²]]]]]` -/
def P14971341907383147211.Spec : Prop :=
  ∀ n, (P14971341907383147211.a n : ℤ) = A006857 n

end A006857

/-! ## A006857.P9225312396818624498

`A134287(n)/(n+1)`
-/

namespace A006857.P9225312396818624498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134287 n : ℚ) / (n + 1 : ℚ)

end

end A006857.P9225312396818624498

namespace A006857

/-- `A134287(n)/(n+1)` -/
def P9225312396818624498.Spec : Prop :=
  ∀ n, P9225312396818624498.a n = (A006857 n : ℚ)

end A006857

/-! ## A006857.P18089236229016244185

`2*∑[A114242(n)/2]`
-/

namespace A006857.P18089236229016244185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114242 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006857.P18089236229016244185

namespace A006857

/-- `2*∑[A114242(n)/2]` -/
def P18089236229016244185.Spec : Prop :=
  ∀ n, P18089236229016244185.a n = (A006857 n : ℚ)

end A006857

/-! ## A006857.P1383008617321339506

`A047819(n)/(n/3+1)`
-/

namespace A006857.P1383008617321339506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047819 n : ℚ) / ((n : ℚ) / 3 + 1)

end

end A006857.P1383008617321339506

namespace A006857

/-- `A047819(n)/(n/3+1)` -/
def P1383008617321339506.Spec : Prop :=
  ∀ n, P1383008617321339506.a n = (A006857 n : ℚ)

end A006857

/-! ## A006857.P4479316271406054818

`2*A107891(n)-A107956(n)`
-/

namespace A006857.P4479316271406054818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107891 n - A107956 n

end

end A006857.P4479316271406054818

namespace A006857

/-- `2*A107891(n)-A107956(n)` -/
def P4479316271406054818.Spec : Prop :=
  ∀ n, P4479316271406054818.a n = A006857 n

end A006857

/-! ## A006857.P11424687666286547662

`A047819(n)+A107916(n)-A105947(n)`
-/

namespace A006857.P11424687666286547662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047819 n + (A107916 n - A105947 n)

end

end A006857.P11424687666286547662

namespace A006857

/-- `A047819(n)+A107916(n)-A105947(n)` -/
def P11424687666286547662.Spec : Prop :=
  ∀ n, P11424687666286547662.a n = A006857 n

end A006857

/-! ## A006857.P17542628223790220111

`A107891(n)+A108680(n)-A107959(n)`
-/

namespace A006857.P17542628223790220111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A108680 n - A107959 n)

end

end A006857.P17542628223790220111

namespace A006857

/-- `A107891(n)+A108680(n)-A107959(n)` -/
def P17542628223790220111.Spec : Prop :=
  ∀ n, P17542628223790220111.a n = A006857 n

end A006857

/-! ## A006857.P5746134987760896681

`A005585(n+1)*A107916(n)/A114242(n)`
-/

namespace A006857.P5746134987760896681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005585 (n + 1) * A107916 n : ℚ) / (A114242 n : ℚ)

end

end A006857.P5746134987760896681

namespace A006857

/-- `A005585(n+1)*A107916(n)/A114242(n)` -/
def P5746134987760896681.Spec : Prop :=
  ∀ n, P5746134987760896681.a n = (A006857 n : ℚ)

end A006857

/-! ## A006857.P14364849948233202864

`A006542(n+4)*A140902(n)/A140903(n)`
-/

namespace A006857.P14364849948233202864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006542 (n + 4) * A140902 n : ℚ) / (A140903 n : ℚ)

end

end A006857.P14364849948233202864

namespace A006857

/-- `A006542(n+4)*A140902(n)/A140903(n)` -/
def P14364849948233202864.Spec : Prop :=
  ∀ n, P14364849948233202864.a n = (A006857 n : ℚ)

end A006857

/-! ## A006857.P3091583197844965113

`A107956(n+1)-A107959(n+1)`
-/

namespace A006857.P3091583197844965113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107956 (n + 1) - A107959 (n + 1)

end

end A006857.P3091583197844965113

namespace A006857

/-- `A107956(n+1)-A107959(n+1)` -/
def P3091583197844965113.Spec : Prop :=
  ∀ n, P3091583197844965113.a n = A006857 n

end A006857

/-! ## A006857.P4529503823704097418

`A107968(n+1)-A107956(n+1)`
-/

namespace A006857.P4529503823704097418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107968 (n + 1) - A107956 (n + 1)

end

end A006857.P4529503823704097418

namespace A006857

/-- `A107968(n+1)-A107956(n+1)` -/
def P4529503823704097418.Spec : Prop :=
  ∀ n, P4529503823704097418.a n = A006857 n

end A006857

/-! ## A006857.P3322464407672216045

`A107891(n+1)-A108680(n+1)`
-/

namespace A006857.P3322464407672216045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 (n + 1) - A108680 (n + 1)

end

end A006857.P3322464407672216045

namespace A006857

/-- `A107891(n+1)-A108680(n+1)` -/
def P3322464407672216045.Spec : Prop :=
  ∀ n, P3322464407672216045.a n = A006857 n

end A006857

/-! ## A006857.P702210442847536877

`(A107968(n+1)-A107959(n+1))/2`
-/

namespace A006857.P702210442847536877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107968 (n + 1) - A107959 (n + 1) : ℚ) / 2

end

end A006857.P702210442847536877

namespace A006857

/-- `(A107968(n+1)-A107959(n+1))/2` -/
def P702210442847536877.Spec : Prop :=
  ∀ n, P702210442847536877.a n = (A006857 n : ℚ)

end A006857

/-! ## A006857.P12272056717645976246

`(A108178(n+1)-A107956(n+1))/2`
-/

namespace A006857.P12272056717645976246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108178 (n + 1) - A107956 (n + 1) : ℚ) / 2

end

end A006857.P12272056717645976246

namespace A006857

/-- `(A108178(n+1)-A107956(n+1))/2` -/
def P12272056717645976246.Spec : Prop :=
  ∀ n, P12272056717645976246.a n = (A006857 n : ℚ)

end A006857

/-! ## A006857.P17644390580141196994

`(A108680(n+1)-A107908(n+1))/2`
-/

namespace A006857.P17644390580141196994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108680 (n + 1) - A107908 (n + 1) : ℚ) / 2

end

end A006857.P17644390580141196994

namespace A006857

/-- `(A108680(n+1)-A107908(n+1))/2` -/
def P17644390580141196994.Spec : Prop :=
  ∀ n, P17644390580141196994.a n = (A006857 n : ℚ)

end A006857

/-! ## A006857.P2499372487289311360

`(A108645(n+1)-A107968(n+1))/2`
-/

namespace A006857.P2499372487289311360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108645 (n + 1) - A107968 (n + 1) : ℚ) / 2

end

end A006857.P2499372487289311360

namespace A006857

/-- `(A108645(n+1)-A107968(n+1))/2` -/
def P2499372487289311360.Spec : Prop :=
  ∀ n, P2499372487289311360.a n = (A006857 n : ℚ)

end A006857

/-!
# A006858: Expansion of g.f. x*(1 + x)*(1 + 6*x + x^2)/(1 - x)^7.

The programs for A006858, the canonical program `A006858.P1892831243030976868` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006858 has offset 0).

The definition of A006858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+7x^2+7x^3+x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` (program `A006858.P1892831243030976868`, by `A006858.P1892831243030976868.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006858.P6703452945589498913

`(n+1)*C(2*n+4, 5)/12`
-/

namespace A006858.P6703452945589498913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.choose (2 * n + 4) 5 : ℚ) / 12

end

end A006858.P6703452945589498913

namespace A006858

/-- `(n+1)*C(2*n+4, 5)/12` -/
def P6703452945589498913.Spec : Prop :=
  ∀ n, P6703452945589498913.a n = (A006858 n : ℚ)

end A006858

/-! ## A006858.P1892831243030976868

`ogf((x+7x^2+7x^3+x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006858

/-- `ogf((x+7x^2+7x^3+x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P1892831243030976868.Spec : Prop :=
  ∀ n, P1892831243030976868.a n = A006858 n

theorem P1892831243030976868.correct : P1892831243030976868.Spec := by
  intro n
  simp only [A006858]

end A006858

/-! ## A006858.P10770930318682680569

`∑[(n+1)²/5]*∑[n²]`
-/

namespace A006858.P10770930318682680569
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A006858.P10770930318682680569

namespace A006858

/-- `∑[(n+1)²/5]*∑[n²]` -/
def P10770930318682680569.Spec : Prop :=
  ∀ n, P10770930318682680569.a n = (A006858 n : ℚ)

end A006858

/-! ## A006858.P4651964073731129457

`∑[∑[n^4-∑[C(2*n, 3)]]]`
-/

namespace A006858.P4651964073731129457
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006858.P4651964073731129457

namespace A006858

/-- `∑[∑[n^4-∑[C(2*n, 3)]]]` -/
def P4651964073731129457.Spec : Prop :=
  ∀ n, P4651964073731129457.a n = A006858 n

end A006858

/-! ## A006858.P16861163905065644979

`∑[∑[n²+4*n*C(n+1, 3)]]`
-/

namespace A006858.P16861163905065644979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 4 * (n * Nat.choose (n + 1) 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006858.P16861163905065644979

namespace A006858

/-- `∑[∑[n²+4*n*C(n+1, 3)]]` -/
def P16861163905065644979.Spec : Prop :=
  ∀ n, (P16861163905065644979.a n : ℤ) = A006858 n

end A006858

/-! ## A006858.P17938581517656958137

`A006332(n)/2`
-/

namespace A006858.P17938581517656958137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006332 n : ℚ) / 2

end

end A006858.P17938581517656958137

namespace A006858

/-- `A006332(n)/2` -/
def P17938581517656958137.Spec : Prop :=
  ∀ n, P17938581517656958137.a n = (A006858 n : ℚ)

theorem P17938581517656958137.correct : P17938581517656958137.Spec := by
  intro n
  simp only [A006858, Nat.add_sub_cancel, A006858.P17938581517656958137.a, A006858.P1892831243030976868.a, A006332, A006332.P18180310474384925349.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006858

/-! ## A006858.P7433273124364410201

`∑[∑[A071270(n)]]`
-/

namespace A006858.P7433273124364410201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006858.P7433273124364410201

namespace A006858

/-- `∑[∑[A071270(n)]]` -/
def P7433273124364410201.Spec : Prop :=
  ∀ n, P7433273124364410201.a n = A006858 n

end A006858

/-! ## A006858.P11854968563692914549

`∑[∑[n*A005900(n)]]`
-/

namespace A006858.P11854968563692914549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005900 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006858.P11854968563692914549

namespace A006858

/-- `∑[∑[n*A005900(n)]]` -/
def P11854968563692914549.Spec : Prop :=
  ∀ n, P11854968563692914549.a n = A006858 n

end A006858

/-! ## A006858.P9055880020084464768

`∑[∑[A072819(n)+n²]]`
-/

namespace A006858.P9055880020084464768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 n + (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006858.P9055880020084464768

namespace A006858

/-- `∑[∑[A072819(n)+n²]]` -/
def P9055880020084464768.Spec : Prop :=
  ∀ n, P9055880020084464768.a n = A006858 n

end A006858

/-! ## A006858.P3162950928603183195

`∑[∑[A035598(n)-n²]]`
-/

namespace A006858.P3162950928603183195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035598 n - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006858.P3162950928603183195

namespace A006858

/-- `∑[∑[A035598(n)-n²]]` -/
def P3162950928603183195.Spec : Prop :=
  ∀ n, P3162950928603183195.a n = A006858 n

end A006858

/-! ## A006858.P10071607201481301197

`∑[∑[A187756(n)+n²]]/2`
-/

namespace A006858.P10071607201481301197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 n + (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A006858.P10071607201481301197

namespace A006858

/-- `∑[∑[A187756(n)+n²]]/2` -/
def P10071607201481301197.Spec : Prop :=
  ∀ n, P10071607201481301197.a n = (A006858 n : ℚ)

end A006858

/-! ## A006858.P12834111466230147730

`∑[A277229(n)+A277228(n)]`
-/

namespace A006858.P12834111466230147730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277229 n + A277228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006858.P12834111466230147730

namespace A006858

/-- `∑[A277229(n)+A277228(n)]` -/
def P12834111466230147730.Spec : Prop :=
  ∀ n, P12834111466230147730.a n = A006858 n

end A006858

/-! ## A006858.P15759573699014061084

`∑[A085461(n+1)]-A085461(n+1)`
-/

namespace A006858.P15759573699014061084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A085461 (n + 1)

end

end A006858.P15759573699014061084

namespace A006858

/-- `∑[A085461(n+1)]-A085461(n+1)` -/
def P15759573699014061084.Spec : Prop :=
  ∀ n, P15759573699014061084.a n = A006858 n

end A006858

/-! ## A006858.P13427357415808934615

`A000330(n+1)*A000538(n)/A004538(n)`
-/

namespace A006858.P13427357415808934615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000330 (n + 1) * A000538 n : ℚ) / (A004538 n : ℚ)

end

end A006858.P13427357415808934615

namespace A006858

/-- `A000330(n+1)*A000538(n)/A004538(n)` -/
def P13427357415808934615.Spec : Prop :=
  ∀ n, P13427357415808934615.a n = (A006858 n : ℚ)

end A006858

/-! ## A006858.P1921742385335541892

`∑[A069038(n+1)-A071238(n+1)]`
-/

namespace A006858.P1921742385335541892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069038 (n + 1) - A071238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006858.P1921742385335541892

namespace A006858

/-- `∑[A069038(n+1)-A071238(n+1)]` -/
def P1921742385335541892.Spec : Prop :=
  ∀ n, P1921742385335541892.a n = A006858 n

end A006858

/-! ## A006858.P2485400995476596309

`∑[A069038(n+1)]-A277229(n+1)`
-/

namespace A006858.P2485400995476596309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A277229 (n + 1)

end

end A006858.P2485400995476596309

namespace A006858

/-- `∑[A069038(n+1)]-A277229(n+1)` -/
def P2485400995476596309.Spec : Prop :=
  ∀ n, P2485400995476596309.a n = A006858 n

end A006858

/-! ## A006858.P743671592127885132

`∑[∑[A289161(2*n+1)/2]]`
-/

namespace A006858.P743671592127885132
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289161 (2 * n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006858.P743671592127885132

namespace A006858

/-- `∑[∑[A289161(2*n+1)/2]]` -/
def P743671592127885132.Spec : Prop :=
  ∀ n, P743671592127885132.a n = (A006858 n : ℚ)

end A006858

/-! ## A006858.P16989681155082225154

`Δ[A011844(2*(n+2))]`
-/

namespace A006858.P16989681155082225154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011844 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006858.P16989681155082225154

namespace A006858

/-- `Δ[A011844(2*(n+2))]` -/
def P16989681155082225154.Spec : Prop :=
  ∀ n, P16989681155082225154.a n = A006858 n

end A006858

/-!
# A006859: From paths in the plane.

The programs for A006859, the canonical program `A006859.P302366829295062184` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006859 has offset 0).

The definition of A006859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006859.P302366829295062184

`A006333(n+1)/2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A006859

/-- `A006333(n+1)/2` -/
def P302366829295062184.Spec : Prop :=
  ∀ n, P302366829295062184.a n = (A006859 n : ℚ)

end A006859

/-! ## A006859.P17264339491368490384

`∑[Δ[A006333(n)]/2]`
-/

namespace A006859.P17264339491368490384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006333 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006859.P17264339491368490384

namespace A006859

/-- `∑[Δ[A006333(n)]/2]` -/
def P17264339491368490384.Spec : Prop :=
  ∀ n, P17264339491368490384.a n = (A006859 n : ℚ)

end A006859

/-! ## A006859.P5402739802341425692

`floor(A006333(A008619(2*n))/2)`
-/

namespace A006859.P5402739802341425692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006333 (A008619 (2 * n)).toNat : ℚ) / 2⌋

end

end A006859.P5402739802341425692

namespace A006859

/-- `floor(A006333(A008619(2*n))/2)` -/
def P5402739802341425692.Spec : Prop :=
  ∀ n, P5402739802341425692.a n = A006859 n

end A006859

/-! ## A006859.P6919901995061693479

`round(A006333(A008619(or(1, 2*n)))/2)`
-/

namespace A006859.P6919901995061693479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006333 (A008619 (Nat.lor 1 (2 * n))).toNat : ℚ) / 2)

end

end A006859.P6919901995061693479

namespace A006859

/-- `round(A006333(A008619(or(1, 2*n)))/2)` -/
def P6919901995061693479.Spec : Prop :=
  ∀ n, P6919901995061693479.a n = A006859 n

end A006859

/-! ## A006859.P7881044652946477216

`A000581(2*(n+4))/A000217(2*n+1)*A000292(n+1)`
-/

namespace A006859.P7881044652946477216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000581 (2 * (n + 4)) : ℚ) / (A000217 (2 * n + 1) : ℚ) * (A000292 (n + 1) : ℚ)

end

end A006859.P7881044652946477216

namespace A006859

/-- `A000581(2*(n+4))/A000217(2*n+1)*A000292(n+1)` -/
def P7881044652946477216.Spec : Prop :=
  ∀ n, P7881044652946477216.a n = (A006859 n : ℚ)

end A006859

/-! ## A006859.P14222223784419362028

`A111910(A167614(n+2))`
-/

namespace A006859.P14222223784419362028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111910 (A167614 (n + 2)).toNat

end

end A006859.P14222223784419362028

namespace A006859

/-- `A111910(A167614(n+2))` -/
def P14222223784419362028.Spec : Prop :=
  ∀ n, P14222223784419362028.a n = A006859 n

end A006859

/-! ## A006859.P1884064271926524780

`A111910(A055999(n)+9)`
-/

namespace A006859.P1884064271926524780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111910 (A055999 n + 9).toNat

end

end A006859.P1884064271926524780

namespace A006859

/-- `A111910(A055999(n)+9)` -/
def P1884064271926524780.Spec : Prop :=
  ∀ n, P1884064271926524780.a n = A006859 n

end A006859

/-! ## A006859.P8907171509894421338

`A111910(∑[n+3]+n+3)`
-/

namespace A006859.P8907171509894421338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111910 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A006859.P8907171509894421338

namespace A006859

/-- `A111910(∑[n+3]+n+3)` -/
def P8907171509894421338.Spec : Prop :=
  ∀ n, P8907171509894421338.a n = A006859 n

end A006859

/-!
# A006861: Number of directed site animals on hexagonal lattice.

The programs for A006861, there is no canonical definition to state claims against.
-/

/-! ## A006861.P520027277593123870

`A185283(A026627(n))`
-/

namespace A006861.P520027277593123870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A026627 n).toNat

end

end A006861.P520027277593123870

/-! ## A006861.P5887419154802279475

`∑[A103128(A148459(n))]`
-/

namespace A006861.P5887419154802279475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A148459 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006861.P5887419154802279475

/-! ## A006861.P7939177777085544298

`A111660(A001588(n))+A011782(n)`
-/

namespace A006861.P7939177777085544298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A001588 n).toNat + A011782 n

end

end A006861.P7939177777085544298

/-! ## A006861.P9008948673092509312

`A276571(A149931(n))`
-/

namespace A006861.P9008948673092509312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A149931 n).toNat

end

end A006861.P9008948673092509312

/-! ## A006861.P8599557955800407510

`A172471(A363543(n))`
-/

namespace A006861.P8599557955800407510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A363543 n).toNat

end

end A006861.P8599557955800407510

/-!
# A006862: Euclid numbers: 1 + product of the first n primes.

The programs for A006862, the canonical program `A006862.P2963727191997132236` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006862 has offset 0).

The definition of A006862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006862.P2963727191997132236

`A002110(n)+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006862

/-- `A002110(n)+1` -/
def P2963727191997132236.Spec : Prop :=
  ∀ n, P2963727191997132236.a n = A006862 n

theorem P2963727191997132236.correct : P2963727191997132236.Spec := by
  intro n
  simp only [A006862]

end A006862

/-! ## A006862.P3871215816586684407

`1+A000040(n)*(a(n-1)-1)` with `a(0)=2`
-/

namespace A006862.P3871215816586684407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 + A000040 n * (a (n - 1) - 1)

end

end A006862.P3871215816586684407

namespace A006862

/-- `1+A000040(n)*(a(n-1)-1)` -/
def P3871215816586684407.Spec : Prop :=
  ∀ n, P3871215816586684407.a n = A006862 n

end A006862

/-! ## A006862.P7602314572990624706

`A370121(∑[n])`
-/

namespace A006862.P7602314572990624706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370121 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006862.P7602314572990624706

namespace A006862

/-- `A370121(∑[n])` -/
def P7602314572990624706.Spec : Prop :=
  ∀ n, P7602314572990624706.a n = A006862 n

end A006862

/-! ## A006862.P17276709218157747265

`A096334(∑[n])+1`
-/

namespace A006862.P17276709218157747265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A006862.P17276709218157747265

namespace A006862

/-- `A096334(∑[n])+1` -/
def P17276709218157747265.Spec : Prop :=
  ∀ n, P17276709218157747265.a n = A006862 n

end A006862

/-! ## A006862.P17896813271703492312

`A121281(∑[n])+1`
-/

namespace A006862.P17896813271703492312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A006862.P17896813271703492312

namespace A006862

/-- `A121281(∑[n])+1` -/
def P17896813271703492312.Spec : Prop :=
  ∀ n, P17896813271703492312.a n = A006862 n

end A006862

/-! ## A006862.P1103054173407431177

`A246868(∑[n])+1`
-/

namespace A006862.P1103054173407431177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246868 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A006862.P1103054173407431177

namespace A006862

/-- `A246868(∑[n])+1` -/
def P1103054173407431177.Spec : Prop :=
  ∀ n, P1103054173407431177.a n = A006862 n

end A006862

/-! ## A006862.P11927646107488833477

`record[A096334(n)+1]`
-/

namespace A006862.P11927646107488833477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006862.P11927646107488833477

namespace A006862

/-- `record[A096334(n)+1]` -/
def P11927646107488833477.Spec : Prop :=
  ∀ n, P11927646107488833477.a n = A006862 n

end A006862

/-! ## A006862.P7342812790221610570

`record[A121281(n)+1]`
-/

namespace A006862.P7342812790221610570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006862.P7342812790221610570

namespace A006862

/-- `record[A121281(n)+1]` -/
def P7342812790221610570.Spec : Prop :=
  ∀ n, P7342812790221610570.a n = A006862 n

end A006862

/-! ## A006862.P14791705017919602479

`record[A303761(n)+1]`
-/

namespace A006862.P14791705017919602479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303761 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006862.P14791705017919602479

namespace A006862

/-- `record[A303761(n)+1]` -/
def P14791705017919602479.Spec : Prop :=
  ∀ n, P14791705017919602479.a n = A006862 n

end A006862

/-! ## A006862.P8404960067775379626

`(A282704(n)+3)/2`
-/

namespace A006862.P8404960067775379626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282704 n + 3 : ℚ) / 2

end

end A006862.P8404960067775379626

namespace A006862

/-- `(A282704(n)+3)/2` -/
def P8404960067775379626.Spec : Prop :=
  ∀ n, P8404960067775379626.a n = (A006862 n : ℚ)

end A006862

/-!
# A006863: Denominator of B_{2n}/(-4n), where B_m are the Bernoulli numbers.

The programs for A006863, there is no canonical definition to state claims against.
-/

/-! ## A006863.P206610336750980923

`A079612(A004275(n+1))-A000007(n)`
-/

namespace A006863.P206610336750980923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (A004275 (n + 1)).toNat - A000007 n

end

end A006863.P206610336750980923

/-! ## A006863.P9594719356350807495

`A079612(record[A005131(n)])-A000007(n)`
-/

namespace A006863.P9594719356350807495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000007 n

end

end A006863.P9594719356350807495

/-! ## A006863.P860823677167906784

`A079612(A065033(4*n))-A000007(n)`
-/

namespace A006863.P860823677167906784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (A065033 (4 * n)).toNat - A000007 n

end

end A006863.P860823677167906784

/-! ## A006863.P2094252921957144793

`A079612(A065033(4*n))-A039982(4*n)`
-/

namespace A006863.P2094252921957144793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (A065033 (4 * n)).toNat - A039982 (4 * n)

end

end A006863.P2094252921957144793

/-! ## A006863.P11593214553420834253

`A079612(A065033(4*n))/A003842(floor(1/(n+1)))`
-/

namespace A006863.P11593214553420834253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (A065033 (4 * n)).toNat : ℚ) / (A003842 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℚ)

end

end A006863.P11593214553420834253

/-! ## A006863.P3530855612847525993

`A079612(A065033(4*n))-A135481(A073659(n+1))`
-/

namespace A006863.P3530855612847525993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (A065033 (4 * n)).toNat - A135481 (A073659 (n + 1)).toNat

end

end A006863.P3530855612847525993

/-! ## A006863.P3037557864057005772

`A079612(A065033(4*n))^A001221(A008578(n+1))`
-/

namespace A006863.P3037557864057005772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (A065033 (4 * n)).toNat : ℚ) ^ (A001221 (A008578 (n + 1)).toNat : ℤ)

end

end A006863.P3037557864057005772

/-! ## A006863.P14343847234314571099

`A079612(A004277(n))-A097331(2*n)`
-/

namespace A006863.P14343847234314571099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (A004277 n).toNat - A097331 (2 * n)

end

end A006863.P14343847234314571099

/-! ## A006863.P10692740352481711650

`A079612(A065033(4*n))-A008683(A016754(n))`
-/

namespace A006863.P10692740352481711650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (A065033 (4 * n)).toNat - A008683 (A016754 n).toNat

end

end A006863.P10692740352481711650

/-! ## A006863.P13124019927806377557

`(a(A221836(A061142(n)))+1)*A006953(n)` with `a(0)=1`
-/

namespace A006863.P13124019927806377557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (A221836 (A061142 n).toNat).toNat + 1) * A006953 n

end

end A006863.P13124019927806377557

/-!
# A006864: Number of Hamiltonian cycles in P_4 X P_n.

The programs for A006864, the canonical program `A006864.P11879833161337350818` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006864 has offset 1).

The definition of A006864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006864.P11879833161337350818

`2*a(n-1)+2*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006864

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)+a(n-4)` -/
def P11879833161337350818.Spec : Prop :=
  ∀ n, P11879833161337350818.a n = A006864 (n + 1)

theorem P11879833161337350818.correct : P11879833161337350818.Spec := by
  intro n
  simp only [A006864, Nat.add_sub_cancel]

end A006864

/-! ## A006864.P9617091370182450984

`ogf(x/(1-2x-2x^2+2x^3-x^4))`
-/

namespace A006864.P9617091370182450984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -2, 2, -1] n

end

end A006864.P9617091370182450984

namespace A006864

/-- `ogf(x/(1-2x-2x^2+2x^3-x^4))` -/
def P9617091370182450984.Spec : Prop :=
  ∀ n, P9617091370182450984.a n = A006864 (n + 1)

end A006864

/-! ## A006864.P13339539443578634929

`∑[A181688(A028310(n))]-1`
-/

namespace A006864.P13339539443578634929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181688 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006864.P13339539443578634929

namespace A006864

/-- `∑[A181688(A028310(n))]-1` -/
def P13339539443578634929.Spec : Prop :=
  ∀ n, P13339539443578634929.a n = A006864 (n + 1)

end A006864

/-! ## A006864.P16552403170528369719

`∑[A057428(n)²*A181688(A028310(n))]`
-/

namespace A006864.P16552403170528369719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A181688 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006864.P16552403170528369719

namespace A006864

/-- `∑[A057428(n)²*A181688(A028310(n))]` -/
def P16552403170528369719.Spec : Prop :=
  ∀ n, P16552403170528369719.a n = A006864 (n + 1)

end A006864

/-! ## A006864.P17745443417556801875

`A057428(n+1)+∑[A181688(A028310(n))]`
-/

namespace A006864.P17745443417556801875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181688 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006864.P17745443417556801875

namespace A006864

/-- `A057428(n+1)+∑[A181688(A028310(n))]` -/
def P17745443417556801875.Spec : Prop :=
  ∀ n, P17745443417556801875.a n = A006864 (n + 1)

end A006864

/-! ## A006864.P14125509897032769590

`Δ[A180488(A028310(n))]`
-/

namespace A006864.P14125509897032769590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180488 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006864.P14125509897032769590

namespace A006864

/-- `Δ[A180488(A028310(n))]` -/
def P14125509897032769590.Spec : Prop :=
  ∀ n, P14125509897032769590.a n = A006864 (n + 1)

end A006864

/-! ## A006864.P7693722280784255341

`Δ[A180488(A057428(n)+1+n)]`
-/

namespace A006864.P7693722280784255341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180488 (A057428 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006864.P7693722280784255341

namespace A006864

/-- `Δ[A180488(A057428(n)+1+n)]` -/
def P7693722280784255341.Spec : Prop :=
  ∀ n, P7693722280784255341.a n = A006864 (n + 1)

end A006864

/-! ## A006864.P15198951263546607614

`∑[A181688(n+1)]-A181688(n+1)`
-/

namespace A006864.P15198951263546607614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A181688 (n + 1)

end

end A006864.P15198951263546607614

namespace A006864

/-- `∑[A181688(n+1)]-A181688(n+1)` -/
def P15198951263546607614.Spec : Prop :=
  ∀ n, P15198951263546607614.a n = A006864 (n + 1)

end A006864

/-! ## A006864.P15407809212734743228

`A180488(n+1)-A180488(A028310(n))`
-/

namespace A006864.P15407809212734743228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180488 (n + 1) - A180488 (A028310 n).toNat

end

end A006864.P15407809212734743228

namespace A006864

/-- `A180488(n+1)-A180488(A028310(n))` -/
def P15407809212734743228.Spec : Prop :=
  ∀ n, P15407809212734743228.a n = A006864 (n + 1)

end A006864

/-! ## A006864.P8312875834861389736

`A180488(n+2)-(A181688(n+1)+A180488(n+1))`
-/

namespace A006864.P8312875834861389736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180488 (n + 2) - (A181688 (n + 1) + A180488 (n + 1))

end

end A006864.P8312875834861389736

namespace A006864

/-- `A180488(n+2)-(A181688(n+1)+A180488(n+1))` -/
def P8312875834861389736.Spec : Prop :=
  ∀ n, P8312875834861389736.a n = A006864 (n + 1)

end A006864

/-! ## A006864.P2402962780221954838

`∑[A181688(A028310(n))%A006131(n+1)]`
-/

namespace A006864.P2402962780221954838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181688 (A028310 n).toNat) (A006131 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006864.P2402962780221954838

namespace A006864

/-- `∑[A181688(A028310(n))%A006131(n+1)]` -/
def P2402962780221954838.Spec : Prop :=
  ∀ n, P2402962780221954838.a n = A006864 (n + 1)

end A006864

/-! ## A006864.P7156502594115020131

`∑[A181688(A028310(n))%A024027(n)]`
-/

namespace A006864.P7156502594115020131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181688 (A028310 n).toNat) (A024027 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006864.P7156502594115020131

namespace A006864

/-- `∑[A181688(A028310(n))%A024027(n)]` -/
def P7156502594115020131.Spec : Prop :=
  ∀ n, P7156502594115020131.a n = A006864 (n + 1)

end A006864

/-!
# A006865: Number of Hamiltonian cycles in P_5 X P_{2n}.

The programs for A006865, the canonical program `A006865.P12984898754780376849` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006865 has offset 1).

The definition of A006865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006865.P12984898754780376849

`11*a(n-1)+2*a(n-3)` with `a(0)=1, a(1)=14, a(2)=154`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006865

/-- `11*a(n-1)+2*a(n-3)` -/
def P12984898754780376849.Spec : Prop :=
  ∀ n, (P12984898754780376849.a n : ℤ) = A006865 (n + 1)

theorem P12984898754780376849.correct : P12984898754780376849.Spec := by
  intro n
  simp only [A006865, Nat.add_sub_cancel]

end A006865

/-! ## A006865.P5711042387561428923

`ogf((1+3x)/(1-11x-2x^3))`
-/

namespace A006865.P5711042387561428923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -11, 0, -2] n

end

end A006865.P5711042387561428923

namespace A006865

/-- `ogf((1+3x)/(1-11x-2x^3))` -/
def P5711042387561428923.Spec : Prop :=
  ∀ n, P5711042387561428923.a n = A006865 (n + 1)

end A006865

/-!
# A006866: Number of irreducible polyhedral graphs with n nodes.

The programs for A006866, there is no canonical definition to state claims against.
-/

/-! ## A006866.P8570498559954193943

`A306242(xor(A074103(n+1), A095929(n)))`
-/

namespace A006866.P8570498559954193943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306242 (Int.xor (A074103 (n + 1)) (A095929 n)).toNat

end

end A006866.P8570498559954193943

/-! ## A006866.P1623196439624304138

`A375115(A375131(n+1)+A375117(n+3))`
-/

namespace A006866.P1623196439624304138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375115 (A375131 (n + 1) + A375117 (n + 3)).toNat

end

end A006866.P1623196439624304138

/-!
# A006867: Number of irreducible polyhedral graphs with n faces.

The programs for A006867, there is no canonical definition to state claims against.
-/

/-! ## A006867.P13713966685007820919

`A003051(A008965(3*n+1))+char[or(3, n)]`
-/

namespace A006867.P13713966685007820919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003051 (A008965 (3 * n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A006867.P13713966685007820919

/-! ## A006867.P7954566696398430664

`A004523(A016121(n)+A000670(n))`
-/

namespace A006867.P7954566696398430664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A016121 n + A000670 n).toNat

end

end A006867.P7954566696398430664

/-!
# A006869: Number of distinct vertex-degree sequences of n-faced polyhedral graphs.

The programs for A006869, there is no canonical definition to state claims against.
-/

/-! ## A006869.P11077915030922278316

`Δ[A320117(∏[A001611(n)])]`
-/

namespace A006869.P11077915030922278316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320117 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006869.P11077915030922278316

/-! ## A006869.P16500846127797247809

`or(∑[∑{e}[n, #]], A325781(2^n))`
-/

namespace A006869.P16500846127797247809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A325781 (2 ^ n))

end

end A006869.P16500846127797247809

/-!
# A006870: Number of quasi-orders with n elements.

The programs for A006870, there is no canonical definition to state claims against.
-/

/-! ## A006870.P4077099401128629485

`A260734(A320181(n))+floor(n/2)`
-/

namespace A006870.P4077099401128629485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A320181 n).toNat + ⌊(n : ℚ) / 2⌋

end

end A006870.P4077099401128629485

/-! ## A006870.P11487644894295646333

`A247983(A322851(n)+A181768(n))`
-/

namespace A006870.P11487644894295646333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (A322851 n + A181768 n).toNat

end

end A006870.P11487644894295646333

/-!
# A006871: Exponentiation of g.f. for rooted trees.

The programs for A006871, there is no canonical definition to state claims against.
-/

/-! ## A006871.P3302078978692688817

`A057365((n+3)*a(n-1))` with `a(0)=1`
-/

namespace A006871.P3302078978692688817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057365 ((n + 3 : ℤ) * a (n - 1)).toNat

end

end A006871.P3302078978692688817

/-! ## A006871.P14563610479064694801

`A268699(n+1)-A025458(A274935(2*n+1))`
-/

namespace A006871.P14563610479064694801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268699 (n + 1) - A025458 (A274935 (2 * n + 1)).toNat

end

end A006871.P14563610479064694801

/-! ## A006871.P4660359201647067192

`A268699(n+1)-A010894(A208508(2*(n+2)))`
-/

namespace A006871.P4660359201647067192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268699 (n + 1) - A010894 ((A208508 (2 * (n + 2))).toNat + 21)

end

end A006871.P4660359201647067192

/-!
# A006872: Numbers k such that phi(k) = phi(sigma(k)).

The programs for A006872, the canonical program `A006872.P9526046772509008616` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006872 has offset 1).

The definition of A006872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006872.P9526046772509008616

`record[(n+1)*A353637(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A006872

/-- `record[(n+1)*A353637(n+1)]` -/
def P9526046772509008616.Spec : Prop :=
  ∀ n, P9526046772509008616.a n = A006872 (n + 1)

theorem P9526046772509008616.correct : P9526046772509008616.Spec := by
  intro n
  simp only [A006872, Nat.add_sub_cancel]

end A006872

/-! ## A006872.P3797712349175460420

`eq[1, A353637(n+1)]+1`
-/

namespace A006872.P3797712349175460420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006872.P3797712349175460420

namespace A006872

/-- `eq[1, A353637(n+1)]+1` -/
def P3797712349175460420.Spec : Prop :=
  ∀ n, (P3797712349175460420.a n : ℤ) = A006872 (n + 1)

end A006872

/-! ## A006872.P18121245349449786207

`eq[A000010(A000203(n+1)), A000010(n+1)]+1`
-/

namespace A006872.P18121245349449786207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A006872.P18121245349449786207

namespace A006872

/-- `eq[A000010(A000203(n+1)), A000010(n+1)]+1` -/
def P18121245349449786207.Spec : Prop :=
  ∀ n, (P18121245349449786207.a n : ℤ) = A006872 (n + 1)

end A006872

/-! ## A006872.P15441539922126679562

`lt[A353636(n+1)², 1]+1`
-/

namespace A006872.P15441539922126679562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A006872.P15441539922126679562

namespace A006872

/-- `lt[A353636(n+1)², 1]+1` -/
def P15441539922126679562.Spec : Prop :=
  ∀ n, (P15441539922126679562.a n : ℤ) = A006872 (n + 1)

end A006872

/-! ## A006872.P8983654505615217051

`eq[A000010(n+1), A062401(n+1)]+1`
-/

namespace A006872.P8983654505615217051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A006872.P8983654505615217051

namespace A006872

/-- `eq[A000010(n+1), A062401(n+1)]+1` -/
def P8983654505615217051.Spec : Prop :=
  ∀ n, (P8983654505615217051.a n : ℤ) = A006872 (n + 1)

end A006872

/-! ## A006872.P2391749317246051253

`eq[A051953(n+1), A295301(n+1)]+1`
-/

namespace A006872.P2391749317246051253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A006872.P2391749317246051253

namespace A006872

/-- `eq[A051953(n+1), A295301(n+1)]+1` -/
def P2391749317246051253.Spec : Prop :=
  ∀ n, (P2391749317246051253.a n : ℤ) = A006872 (n + 1)

end A006872

/-! ## A006872.P8955504308550039038

`eq[A000007(n), A353636(A028310(n))]`
-/

namespace A006872.P8955504308550039038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006872.P8955504308550039038

namespace A006872

/-- `eq[A000007(n), A353636(A028310(n))]` -/
def P8955504308550039038.Spec : Prop :=
  ∀ n, (P8955504308550039038.a n : ℤ) = A006872 (n + 1)

end A006872

/-! ## A006872.P10821658740573237490

`eq[A000038(n), A353636(A028310(n))]`
-/

namespace A006872.P10821658740573237490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006872.P10821658740573237490

namespace A006872

/-- `eq[A000038(n), A353636(A028310(n))]` -/
def P10821658740573237490.Spec : Prop :=
  ∀ n, (P10821658740573237490.a n : ℤ) = A006872 (n + 1)

end A006872

/-! ## A006872.P2264859869534927814

`eq[A000007(n), A353636(A000007(n)+n)]`
-/

namespace A006872.P2264859869534927814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006872.P2264859869534927814

namespace A006872

/-- `eq[A000007(n), A353636(A000007(n)+n)]` -/
def P2264859869534927814.Spec : Prop :=
  ∀ n, (P2264859869534927814.a n : ℤ) = A006872 (n + 1)

end A006872

/-! ## A006872.P15363688661511659539

`eq[A000038(n), A353636(A000038(n)+n)]`
-/

namespace A006872.P15363688661511659539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006872.P15363688661511659539

namespace A006872

/-- `eq[A000038(n), A353636(A000038(n)+n)]` -/
def P15363688661511659539.Spec : Prop :=
  ∀ n, (P15363688661511659539.a n : ℤ) = A006872 (n + 1)

end A006872

/-! ## A006872.P6170712098249798860

`eq[A000010(n+1), A000010(A088580(n+1)-1)]+1`
-/

namespace A006872.P6170712098249798860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A088580 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A006872.P6170712098249798860

namespace A006872

/-- `eq[A000010(n+1), A000010(A088580(n+1)-1)]+1` -/
def P6170712098249798860.Spec : Prop :=
  ∀ n, (P6170712098249798860.a n : ℤ) = A006872 (n + 1)

end A006872

/-!
# A006873: Number of alternating 4-signed permutations.

The programs for A006873, there is no canonical definition to state claims against.
-/

/-! ## A006873.P4093970773223631038

`A156201(n)/A225109(n)*A156205(n)`
-/

namespace A006873.P4093970773223631038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156201 n : ℚ) / (A225109 n : ℚ) * (A156205 n : ℚ)

end

end A006873.P4093970773223631038

/-!
# A006874: Number of mu-atoms of period n on continent of Mandelbrot set.

The programs for A006874, there is no canonical definition to state claims against.
-/

/-! ## A006874.P5730141916339996615

`∑{d}[n+1, A008683(#)*A338750((n+1)/#)]`
-/

namespace A006874.P5730141916339996615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A338750 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A006874.P5730141916339996615

/-! ## A006874.P15441049755506873135

`A274262(n+1)/A036453(A057335(n))`
-/

namespace A006874.P15441049755506873135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274262 (n + 1) : ℚ) / (A036453 (A057335 n).toNat : ℚ)

end

end A006874.P15441049755506873135

/-! ## A006874.P6172170381878093212

`A274262(n+1)/A001511(A269697(n))`
-/

namespace A006874.P6172170381878093212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274262 (n + 1) : ℚ) / (A001511 (A269697 n).toNat : ℚ)

end

end A006874.P6172170381878093212

/-! ## A006874.P14809391319544294497

`A274262(n+1)/A005811(A329562(n))`
-/

namespace A006874.P14809391319544294497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274262 (n + 1) : ℚ) / (A005811 (A329562 n).toNat : ℚ)

end

end A006874.P14809391319544294497

/-! ## A006874.P10649857659530382186

`A274262(n+1)/A036453(A064987(n+1))`
-/

namespace A006874.P10649857659530382186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274262 (n + 1) : ℚ) / (A036453 (A064987 (n + 1)).toNat : ℚ)

end

end A006874.P10649857659530382186

/-! ## A006874.P7158013354202706287

`A274262(n+1)/A020639(A161415(n+1))`
-/

namespace A006874.P7158013354202706287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274262 (n + 1) : ℚ) / (A020639 (A161415 (n + 1)).toNat : ℚ)

end

end A006874.P7158013354202706287

/-! ## A006874.P8925020187656124397

`A004525(A274262(n+1)^A262079(n+1))`
-/

namespace A006874.P8925020187656124397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A274262 (n + 1) : ℚ) ^ (A262079 (n + 1) : ℤ))).toNat

end

end A006874.P8925020187656124397

/-! ## A006874.P6954961161954007717

`A004525(A274262(n+1)%A183680(n+1))`
-/

namespace A006874.P6954961161954007717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A274262 (n + 1)) (A183680 (n + 1))).toNat

end

end A006874.P6954961161954007717

/-!
# A006875: Non-seed mu-atoms of period n in Mandelbrot set.

The programs for A006875, the canonical program `A006875.P14857395006895934659` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006875 has offset 1).

The definition of A006875 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000740, A006876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A006875.P14857395006895934659

`A000740(n+1)-A006876(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A006875

/-- `A000740(n+1)-A006876(n+1)` -/
def P14857395006895934659.Spec : Prop :=
  ∀ n, P14857395006895934659.a n = A006875 (n + 1)

theorem P14857395006895934659.correct : P14857395006895934659.Spec := by
  intro n
  simp only [A006875, Nat.add_sub_cancel]

end A006875

/-! ## A006875.P3003561723538309570

`A000079(n)-(A178472(n+1)+A006876(n+1))`
-/

namespace A006875.P3003561723538309570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A178472 (n + 1) + A006876 (n + 1))

end

end A006875.P3003561723538309570

namespace A006875

/-- `A000079(n)-(A178472(n+1)+A006876(n+1))` -/
def P3003561723538309570.Spec : Prop :=
  ∀ n, P3003561723538309570.a n = A006875 (n + 1)

theorem P3003561723538309570.correct : P3003561723538309570.Spec := by
  intro n
  simp only [A006875, Nat.add_sub_cancel, A006875.P3003561723538309570.a, A006875.P14857395006895934659.a, A000079, A000079.P10855139691139572931.a, A000740, A000740.P14835443835842648949.a, A006876, A006876.P13042802876446333329.f1, A006876.P13042802876446333329.a, A178472, A178472.P12067930664029615455.a, A024000, A024000.P8748414335487061084.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A296302, A296302.P8637239320253714587.f1, A296302.P8637239320253714587.a, A008683, A008683.P18254306604665478110.a, A034771, A034771.P14136708575511469544.f1, A034771.P14136708575511469544.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A034729, A034729.P14831145742905992677.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006875

/-! ## A006875.P18225919099584877349

`A056278(n+1)+A006876(n+1)*A057428(n)`
-/

namespace A006875.P18225919099584877349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (n + 1) + A006876 (n + 1) * A057428 n

end

end A006875.P18225919099584877349

namespace A006875

/-- `A056278(n+1)+A006876(n+1)*A057428(n)` -/
def P18225919099584877349.Spec : Prop :=
  ∀ n, P18225919099584877349.a n = A006875 (n + 1)

end A006875

/-!
# A006876: Mu-molecules in Mandelbrot set whose seeds have period n.

The programs for A006876, the canonical program `A006876.P13042802876446333329` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006876 has offset 1).

The definition of A006876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006876.P6471802515620585259

`A000740(n+1)-A006875(n+1)`
-/

namespace A006876.P6471802515620585259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) - A006875 (n + 1)

end

end A006876.P6471802515620585259

namespace A006876

/-- `A000740(n+1)-A006875(n+1)` -/
def P6471802515620585259.Spec : Prop :=
  ∀ n, P6471802515620585259.a n = A006876 (n + 1)

theorem P6471802515620585259.correct : P6471802515620585259.Spec := by
  intro n
  simp only [A006876, Nat.add_sub_cancel, A006876.P6471802515620585259.a, A006876.P13042802876446333329.f1, A006876.P13042802876446333329.a, A000740, A000740.P14835443835842648949.a, A006875, A006875.P14857395006895934659.a, A024000, A024000.P8748414335487061084.a, A296302, A296302.P8637239320253714587.f1, A296302.P8637239320253714587.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A034771, A034771.P14136708575511469544.f1, A034771.P14136708575511469544.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A008683, A008683.P18254306604665478110.a, A034729, A034729.P14831145742905992677.a, A055895, A055895.P2077075893561003355.f1, A055895.P2077075893561003355.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006876

/-! ## A006876.P13042802876446333329

`∑{d}[n+1, A024000(#-1)*A296302((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A006876

/-- `∑{d}[n+1, A024000(#-1)*A296302((n+1)/#)]` -/
def P13042802876446333329.Spec : Prop :=
  ∀ n, P13042802876446333329.a n = A006876 (n + 1)

theorem P13042802876446333329.correct : P13042802876446333329.Spec := by
  intro n
  simp only [A006876, Nat.add_sub_cancel]

end A006876

/-! ## A006876.P8809374837405611891

`A056278(n+1)+A000007(n)-A006875(n+1)`
-/

namespace A006876.P8809374837405611891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (n + 1) + (A000007 n - A006875 (n + 1))

end

end A006876.P8809374837405611891

namespace A006876

/-- `A056278(n+1)+A000007(n)-A006875(n+1)` -/
def P8809374837405611891.Spec : Prop :=
  ∀ n, P8809374837405611891.a n = A006876 (n + 1)

end A006876

/-! ## A006876.P16920260658562052242

`A000079(n)-(A178472(n+1)+A006875(n+1))`
-/

namespace A006876.P16920260658562052242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A178472 (n + 1) + A006875 (n + 1))

end

end A006876.P16920260658562052242

namespace A006876

/-- `A000079(n)-(A178472(n+1)+A006875(n+1))` -/
def P16920260658562052242.Spec : Prop :=
  ∀ n, P16920260658562052242.a n = A006876 (n + 1)

theorem P16920260658562052242.correct : P16920260658562052242.Spec := by
  intro n
  simp only [A006876, Nat.add_sub_cancel, A006876.P16920260658562052242.a, A006876.P13042802876446333329.f1, A006876.P13042802876446333329.a, A000079, A000079.P10855139691139572931.a, A006875, A006875.P14857395006895934659.a, A024000, A024000.P8748414335487061084.a, A178472, A178472.P12067930664029615455.a, A296302, A296302.P8637239320253714587.f1, A296302.P8637239320253714587.a, A000740, A000740.P14835443835842648949.a, A034771, A034771.P14136708575511469544.f1, A034771.P14136708575511469544.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A034729, A034729.P14831145742905992677.a, A008683, A008683.P18254306604665478110.a, A055895, A055895.P2077075893561003355.f1, A055895.P2077075893561003355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006876

/-! ## A006876.P5041335259724847938

`A038199(n+1)-(A056278(n+1)+A006875(n+1))`
-/

namespace A006876.P5041335259724847938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038199 (n + 1) - (A056278 (n + 1) + A006875 (n + 1))

end

end A006876.P5041335259724847938

namespace A006876

/-- `A038199(n+1)-(A056278(n+1)+A006875(n+1))` -/
def P5041335259724847938.Spec : Prop :=
  ∀ n, P5041335259724847938.a n = A006876 (n + 1)

end A006876

/-! ## A006876.P1235981344073365886

`A137651(A133263(n))-A006875(n+1)`
-/

namespace A006876.P1235981344073365886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137651 (A133263 n).toNat - A006875 (n + 1)

end

end A006876.P1235981344073365886

namespace A006876

/-- `A137651(A133263(n))-A006875(n+1)` -/
def P1235981344073365886.Spec : Prop :=
  ∀ n, P1235981344073365886.a n = A006876 (n + 1)

end A006876

/-!
# A006877: In the '3x+1' problem, these values for the starting value set new records for number of steps to reach 1.

The programs for A006877, there is no canonical definition to state claims against.
-/

/-! ## A006877.P3361398973783233443

`A033491(A006878(n+1))`
-/

namespace A006877.P3361398973783233443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (A006878 (n + 1)).toNat

end

end A006877.P3361398973783233443

/-! ## A006877.P10611972413695807349

`A033491(A033492(n+1)-1)`
-/

namespace A006877.P10611972413695807349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (A033492 (n + 1) - 1).toNat

end

end A006877.P10611972413695807349

/-! ## A006877.P347955095391473315

`A033491(A057428(n+1)+A033492(n+1))`
-/

namespace A006877.P347955095391473315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (A057428 (n + 1) + A033492 (n + 1)).toNat

end

end A006877.P347955095391473315

/-! ## A006877.P18000302678331755488

`A033491(A260196(n+2)+A033492(n+1))`
-/

namespace A006877.P18000302678331755488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (A260196 (n + 2) + A033492 (n + 1)).toNat

end

end A006877.P18000302678331755488

/-! ## A006877.P15859994530074085691

`A033491(∑[A288493(n+1)]-A288493(n+1))`
-/

namespace A006877.P15859994530074085691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (∑ j ∈ Finset.range (n + 1), f1 j - A288493 (n + 1)).toNat

end

end A006877.P15859994530074085691

/-! ## A006877.P8284946174627187780

`A033491(record[A337150(n+1)])`
-/

namespace A006877.P8284946174627187780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006877.P8284946174627187780

/-!
# A006878: Record number of steps to reach 1 in '3x+1' problem, corresponding to starting values in A006877.

The programs for A006878, there is no canonical definition to state claims against.
-/

/-! ## A006878.P15605730277661981506

`A288493(n)+a(n-1)` with `a(0)=0`
-/

namespace A006878.P15605730277661981506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A288493 n + a (n - 1)

end

end A006878.P15605730277661981506

/-! ## A006878.P15856983284706951963

`∑[A288493(ceil(abs(γ-n)))]-1`
-/

namespace A006878.P15856983284706951963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288493 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006878.P15856983284706951963

/-! ## A006878.P10210289276270265514

`abs(∑[A288493(abs(2-n)+2)]-8)`
-/

namespace A006878.P10210289276270265514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288493 (|2 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 8|

end

end A006878.P10210289276270265514

/-! ## A006878.P5670446275197028121

`A023450(∑[A288493(abs(2-n)+2)])`
-/

namespace A006878.P5670446275197028121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288493 (|2 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023450 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006878.P5670446275197028121

/-! ## A006878.P5773497186147747318

`A033492(n+1)-1`
-/

namespace A006878.P5773497186147747318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033492 (n + 1) - 1

end

end A006878.P5773497186147747318

/-! ## A006878.P12299915133118681121

`abs(1-A033492(-xor(n, -1)))`
-/

namespace A006878.P12299915133118681121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A033492 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A006878.P12299915133118681121

/-! ## A006878.P8463377089210499474

`abs(1-A033492(Δ[n²]-n))`
-/

namespace A006878.P8463377089210499474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A033492 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A006878.P8463377089210499474

/-! ## A006878.P14522959638088430455

`or(A033492(n-log2(1/2))-1, char[1])`
-/

namespace A006878.P14522959638088430455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033492 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - 1) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A006878.P14522959638088430455

/-! ## A006878.P15216534088971652091

`A023443(A033492(n+1))`
-/

namespace A006878.P15216534088971652091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A033492 (n + 1)).toNat

end

end A006878.P15216534088971652091

/-! ## A006878.P740574801097989579

`record[A033492(A117910(n))-1]`
-/

namespace A006878.P740574801097989579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033492 (A117910 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006878.P740574801097989579

/-! ## A006878.P2569564186908957365

`A023444(A033492(n+1)+1)`
-/

namespace A006878.P2569564186908957365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A033492 (n + 1) + 1).toNat

end

end A006878.P2569564186908957365

/-! ## A006878.P2960287445970119646

`A279119(2*A033492(n+1))`
-/

namespace A006878.P2960287445970119646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A033492 (n + 1)).toNat

end

end A006878.P2960287445970119646

/-! ## A006878.P8534527310697571781

`A057428(n+1)+A033492(n+1)`
-/

namespace A006878.P8534527310697571781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A033492 (n + 1)

end

end A006878.P8534527310697571781

/-! ## A006878.P1328415995105261785

`A260196(n+2)+A033492(n+1)`
-/

namespace A006878.P1328415995105261785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A033492 (n + 1)

end

end A006878.P1328415995105261785

/-! ## A006878.P4036098664756725726

`A054670(Δ[or(1, n)])+A033492(n+1)`
-/

namespace A006878.P4036098664756725726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054670 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A033492 (n + 1)

end

end A006878.P4036098664756725726

/-! ## A006878.P7046833106901834255

`A033999(2*n+1)+A033492(n+1)`
-/

namespace A006878.P7046833106901834255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A033492 (n + 1)

end

end A006878.P7046833106901834255

/-! ## A006878.P7666790476658067880

`A165326(2*(n+1))+A033492(n+1)`
-/

namespace A006878.P7666790476658067880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) + A033492 (n + 1)

end

end A006878.P7666790476658067880

/-! ## A006878.P4400402745569780915

`abs(A033492(n+1)+(-1)^A000040(n+2))`
-/

namespace A006878.P4400402745569780915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A033492 (n + 1) : ℚ) + (-1 : ℚ) ^ (A000040 (n + 2) : ℤ)|

end

end A006878.P4400402745569780915

/-! ## A006878.P16677806185960116555

`A081729(A017557(n))+A033492(n+1)`
-/

namespace A006878.P16677806185960116555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A017557 n).toNat + A033492 (n + 1)

end

end A006878.P16677806185960116555

/-! ## A006878.P53514604337040221

`A033880(A014963(2*(n+2)))+A033492(n+1)`
-/

namespace A006878.P53514604337040221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A014963 (2 * (n + 2))).toNat + A033492 (n + 1)

end

end A006878.P53514604337040221

/-!
# A006879: Number of primes with n digits.

The programs for A006879, there is no canonical definition to state claims against.
-/

/-! ## A006879.P8241525803613076580

`Δ[A006880(comp[2*(n+1)]-n)]`
-/

namespace A006879.P8241525803613076580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006879.P8241525803613076580

/-! ## A006879.P16396609367713527395

`record[Δ[A006880(A004523(n))]]`
-/

namespace A006879.P16396609367713527395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (A004523 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006879.P16396609367713527395

/-! ## A006879.P2969141121898220747

`record[Δ[A006880(A057355(n))]]`
-/

namespace A006879.P2969141121898220747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (A057355 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006879.P2969141121898220747

/-! ## A006879.P14221254924155441919

`record[Δ[A006880(A083920(n))]]`
-/

namespace A006879.P14221254924155441919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (A083920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006879.P14221254924155441919

/-! ## A006879.P14051419225215431658

`Δ[A090226(A028310(n))]`
-/

namespace A006879.P14051419225215431658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006879.P14051419225215431658

/-!
# A006880: Number of primes < 10^n.

The programs for A006880, the canonical program `A006880.P1375622950831351857` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006880 has offset 0).

The definition of A006880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006880.P1375622950831351857

`A000720(10^n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006880

/-- `A000720(10^n)` -/
def P1375622950831351857.Spec : Prop :=
  ∀ n, P1375622950831351857.a n = A006880 n

theorem P1375622950831351857.correct : P1375622950831351857.Spec := by
  intro n
  simp only [A006880]

end A006880

/-! ## A006880.P3301424500849079996

`∑[A006879(n)]`
-/

namespace A006880.P3301424500849079996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006880.P3301424500849079996

namespace A006880

/-- `∑[A006879(n)]` -/
def P3301424500849079996.Spec : Prop :=
  ∀ n, P3301424500849079996.a n = A006880 n

end A006880

/-! ## A006880.P13523273979409704757

`A002283(n)-A065894(n)`
-/

namespace A006880.P13523273979409704757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n - A065894 n

end

end A006880.P13523273979409704757

namespace A006880

/-- `A002283(n)-A065894(n)` -/
def P13523273979409704757.Spec : Prop :=
  ∀ n, P13523273979409704757.a n = A006880 n

theorem P13523273979409704757.correct : P13523273979409704757.Spec := by
  intro n
  simp only [A006880, Nat.add_sub_cancel, A006880.P13523273979409704757.a, A006880.P1375622950831351857.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A002283, A002283.P2252111154706607536.a, A065894, A065894.P12674390457359744932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006880

/-! ## A006880.P269548743816231438

`A238815(n)-A076048(n)`
-/

namespace A006880.P269548743816231438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238815 n - A076048 n

end

end A006880.P269548743816231438

namespace A006880

/-- `A238815(n)-A076048(n)` -/
def P269548743816231438.Spec : Prop :=
  ∀ n, P269548743816231438.a n = A006880 n

end A006880

/-! ## A006880.P3488952868112814633

`A090226(n+1)-1`
-/

namespace A006880.P3488952868112814633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1) - 1

end

end A006880.P3488952868112814633

namespace A006880

/-- `A090226(n+1)-1` -/
def P3488952868112814633.Spec : Prop :=
  ∀ n, P3488952868112814633.a n = A006880 n

theorem P3488952868112814633.correct : P3488952868112814633.Spec := by
  intro n
  simp only [A006880, Nat.add_sub_cancel, A006880.P3488952868112814633.a, A006880.P1375622950831351857.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A090226, A090226.P1073034422440432756.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006880

/-!
# A006881: Squarefree semiprimes: Numbers that are the product of two distinct primes.

The programs for A006881, the canonical program `A006881.P8515618879267886084` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006881 has offset 1).

The definition of A006881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006881.P4418026683578275147

`A096916(n+1)*A070647(n+1)`
-/

namespace A006881.P4418026683578275147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096916 (n + 1) * A070647 (n + 1)

end

end A006881.P4418026683578275147

namespace A006881

/-- `A096916(n+1)*A070647(n+1)` -/
def P4418026683578275147.Spec : Prop :=
  ∀ n, P4418026683578275147.a n = A006881 (n + 1)

end A006881

/-! ## A006881.P7919147658030069210

`eq[4, A077462(n)]`
-/

namespace A006881.P7919147658030069210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006881.P7919147658030069210

namespace A006881

/-- `eq[4, A077462(n)]` -/
def P7919147658030069210.Spec : Prop :=
  ∀ n, (P7919147658030069210.a n : ℤ) = A006881 (n + 1)

end A006881

/-! ## A006881.P13648966118097974764

`sqrt(A085986(n+1))`
-/

namespace A006881.P13648966118097974764
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A085986 (n + 1) : ℝ)

end

end A006881.P13648966118097974764

namespace A006881

/-- `sqrt(A085986(n+1))` -/
def P13648966118097974764.Spec : Prop :=
  ∀ n, P13648966118097974764.a n = (A006881 (n + 1) : ℝ)

end A006881

/-! ## A006881.P14878675632151671974

`sqrt(sqrt(A189991(n+1)))`
-/

namespace A006881.P14878675632151671974
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A189991 (n + 1) : ℝ))

end

end A006881.P14878675632151671974

namespace A006881

/-- `sqrt(sqrt(A189991(n+1)))` -/
def P14878675632151671974.Spec : Prop :=
  ∀ n, P14878675632151671974.a n = (A006881 (n + 1) : ℝ)

end A006881

/-! ## A006881.P12213595946521128034

`A162142(n+1)^(1/3)`
-/

namespace A006881.P12213595946521128034
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A162142 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A006881.P12213595946521128034

namespace A006881

/-- `A162142(n+1)^(1/3)` -/
def P12213595946521128034.Spec : Prop :=
  ∀ n, P12213595946521128034.a n = (A006881 (n + 1) : ℝ)

end A006881

/-! ## A006881.P17909063768962808094

`eq[1, A280710(n+1)]+1`
-/

namespace A006881.P17909063768962808094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006881.P17909063768962808094

namespace A006881

/-- `eq[1, A280710(n+1)]+1` -/
def P17909063768962808094.Spec : Prop :=
  ∀ n, (P17909063768962808094.a n : ℤ) = A006881 (n + 1)

end A006881

/-! ## A006881.P2325756890086591728

`eq[1, A281116(n+1)]+1`
-/

namespace A006881.P2325756890086591728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006881.P2325756890086591728

namespace A006881

/-- `eq[1, A281116(n+1)]+1` -/
def P2325756890086591728.Spec : Prop :=
  ∀ n, (P2325756890086591728.a n : ℤ) = A006881 (n + 1)

end A006881

/-! ## A006881.P8162954071571636411

`eq[2, A046645(n+1)]+1`
-/

namespace A006881.P8162954071571636411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006881.P8162954071571636411

namespace A006881

/-- `eq[2, A046645(n+1)]+1` -/
def P8162954071571636411.Spec : Prop :=
  ∀ n, (P8162954071571636411.a n : ℤ) = A006881 (n + 1)

end A006881

/-! ## A006881.P9546401734316253315

`eq[2, A051709(n+1)]+1`
-/

namespace A006881.P9546401734316253315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006881.P9546401734316253315

namespace A006881

/-- `eq[2, A051709(n+1)]+1` -/
def P9546401734316253315.Spec : Prop :=
  ∀ n, (P9546401734316253315.a n : ℤ) = A006881 (n + 1)

end A006881

/-! ## A006881.P12093313434068787506

`A162142(n+1)/A085986(n+1)`
-/

namespace A006881.P12093313434068787506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162142 (n + 1) : ℚ) / (A085986 (n + 1) : ℚ)

end

end A006881.P12093313434068787506

namespace A006881

/-- `A162142(n+1)/A085986(n+1)` -/
def P12093313434068787506.Spec : Prop :=
  ∀ n, P12093313434068787506.a n = (A006881 (n + 1) : ℚ)

end A006881

/-! ## A006881.P15825691087006066211

`A189991(n+1)/A162142(n+1)`
-/

namespace A006881.P15825691087006066211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189991 (n + 1) : ℚ) / (A162142 (n + 1) : ℚ)

end

end A006881.P15825691087006066211

namespace A006881

/-- `A189991(n+1)/A162142(n+1)` -/
def P15825691087006066211.Spec : Prop :=
  ∀ n, P15825691087006066211.a n = (A006881 (n + 1) : ℚ)

end A006881

/-! ## A006881.P12534196007246028706

`A190465(n+1)/A189991(n+1)`
-/

namespace A006881.P12534196007246028706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190465 (n + 1) : ℚ) / (A189991 (n + 1) : ℚ)

end

end A006881.P12534196007246028706

namespace A006881

/-- `A190465(n+1)/A189991(n+1)` -/
def P12534196007246028706.Spec : Prop :=
  ∀ n, P12534196007246028706.a n = (A006881 (n + 1) : ℚ)

end A006881

/-! ## A006881.P9029706837013775566

`A070647(n+1)*A343004(2*n+1)`
-/

namespace A006881.P9029706837013775566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070647 (n + 1) * A343004 (2 * n + 1)

end

end A006881.P9029706837013775566

namespace A006881

/-- `A070647(n+1)*A343004(2*n+1)` -/
def P9029706837013775566.Spec : Prop :=
  ∀ n, P9029706837013775566.a n = A006881 (n + 1)

end A006881

/-! ## A006881.P16071015932958421034

`A096916(n+1)*A343004(2*(n+1))`
-/

namespace A006881.P16071015932958421034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096916 (n + 1) * A343004 (2 * (n + 1))

end

end A006881.P16071015932958421034

namespace A006881

/-- `A096916(n+1)*A343004(2*(n+1))` -/
def P16071015932958421034.Spec : Prop :=
  ∀ n, P16071015932958421034.a n = A006881 (n + 1)

end A006881

/-! ## A006881.P6761566633201855080

`A343004(2*n+1)*A343004(2*(n+1))`
-/

namespace A006881.P6761566633201855080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * n + 1) * A343004 (2 * (n + 1))

end

end A006881.P6761566633201855080

namespace A006881

/-- `A343004(2*n+1)*A343004(2*(n+1))` -/
def P6761566633201855080.Spec : Prop :=
  ∀ n, P6761566633201855080.a n = A006881 (n + 1)

end A006881

/-! ## A006881.P4115684794502932811

`eq[A008683(n+1)+1, A001222(n+1)]+1`
-/

namespace A006881.P4115684794502932811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A006881.P4115684794502932811

namespace A006881

/-- `eq[A008683(n+1)+1, A001222(n+1)]+1` -/
def P4115684794502932811.Spec : Prop :=
  ∀ n, (P4115684794502932811.a n : ℤ) = A006881 (n + 1)

end A006881

/-! ## A006881.P7547923898868671241

`eq[A001222(n+1)+2, A000005(n+1)]+1`
-/

namespace A006881.P7547923898868671241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A006881.P7547923898868671241

namespace A006881

/-- `eq[A001222(n+1)+2, A000005(n+1)]+1` -/
def P7547923898868671241.Spec : Prop :=
  ∀ n, (P7547923898868671241.a n : ℤ) = A006881 (n + 1)

end A006881

/-! ## A006881.P3359180089241681213

`eq[A001221(n+1)/2, A008683(n+1)]+1`
-/

namespace A006881.P3359180089241681213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A006881.P3359180089241681213

namespace A006881

/-- `eq[A001221(n+1)/2, A008683(n+1)]+1` -/
def P3359180089241681213.Spec : Prop :=
  ∀ n, (P3359180089241681213.a n : ℤ) = A006881 (n + 1)

end A006881

/-! ## A006881.P8515618879267886084

`A161918(A065475(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A006881

/-- `A161918(A065475(n+1))` -/
def P8515618879267886084.Spec : Prop :=
  ∀ n, P8515618879267886084.a n = A006881 (n + 1)

theorem P8515618879267886084.correct : P8515618879267886084.Spec := by
  intro n
  simp only [A006881, Nat.add_sub_cancel]

end A006881

/-! ## A006881.P9865714948986188032

`A161918(A181440(n+2))`
-/

namespace A006881.P9865714948986188032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (A181440 (n + 2)).toNat

end

end A006881.P9865714948986188032

namespace A006881

/-- `A161918(A181440(n+2))` -/
def P9865714948986188032.Spec : Prop :=
  ∀ n, P9865714948986188032.a n = A006881 (n + 1)

end A006881

/-!
# A006882: Double factorials n!!: a(n) = n*a(n-2) for n > 1, a(0) = a(1) = 1.

The programs for A006882, the canonical program `A006882.P4505634677935663530` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006882 has offset 0).

The definition of A006882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-2)` (program `A006882.P4505634677935663530`, by `A006882.P4505634677935663530.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006882.P4505634677935663530

`n*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006882

/-- `n*a(n-2)` -/
def P4505634677935663530.Spec : Prop :=
  ∀ n, (P4505634677935663530.a n : ℤ) = A006882 n

theorem P4505634677935663530.correct : P4505634677935663530.Spec := by
  intro n
  simp only [A006882]

end A006882

/-! ## A006882.P10891269941508753326

`n!/a(n-1)` with `a(0)=1`
-/

namespace A006882.P10891269941508753326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℚ) / a (n - 1)

end

end A006882.P10891269941508753326

namespace A006882

/-- `n!/a(n-1)` -/
def P10891269941508753326.Spec : Prop :=
  ∀ n, P10891269941508753326.a n = (A006882 n : ℚ)

end A006882

/-! ## A006882.P7959710426141962820

`∏[n/a(n-1)]` with `a(0)=1`
-/

namespace A006882.P7959710426141962820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006882.P7959710426141962820

namespace A006882

/-- `∏[n/a(n-1)]` -/
def P7959710426141962820.Spec : Prop :=
  ∀ n, P7959710426141962820.a n = (A006882 n : ℚ)

end A006882

/-! ## A006882.P3584267961642491861

`a(n-2)/tan(acot(n))` with `a(0)=1, a(1)=1`
-/

namespace A006882.P3584267961642491861
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A006882.P3584267961642491861

namespace A006882

/-- `a(n-2)/tan(acot(n))` -/
def P3584267961642491861.Spec : Prop :=
  ∀ n, P3584267961642491861.a n = (A006882 n : ℝ)

end A006882

/-! ## A006882.P3786435999715658194

`a(n-2)/cot(atan(n))` with `a(0)=1, a(1)=1`
-/

namespace A006882.P3786435999715658194
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / Real.cot (Real.arctan (n : ℝ))

end

end A006882.P3786435999715658194

namespace A006882

/-- `a(n-2)/cot(atan(n))` -/
def P3786435999715658194.Spec : Prop :=
  ∀ n, P3786435999715658194.a n = (A006882 n : ℝ)

end A006882

/-! ## A006882.P16504669709609880353

`a(n-2)/n^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A006882.P16504669709609880353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / (n : ℚ) ^ (-1 : ℤ)

end

end A006882.P16504669709609880353

namespace A006882

/-- `a(n-2)/n^(-1)` -/
def P16504669709609880353.Spec : Prop :=
  ∀ n, P16504669709609880353.a n = (A006882 n : ℚ)

end A006882

/-! ## A006882.P16264288682945102487

`floor(n*a(floor(n/(2/n+1))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A006882.P16264288682945102487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a ⌊(n : ℚ) / (2 / (n : ℚ) + 1)⌋.toNat

end

end A006882.P16264288682945102487

namespace A006882

/-- `floor(n*a(floor(n/(2/n+1))))` -/
def P16264288682945102487.Spec : Prop :=
  ∀ n, (P16264288682945102487.a n : ℤ) = A006882 n

end A006882

/-! ## A006882.P8858898011605870525

`A128882(n)+1`
-/

namespace A006882.P8858898011605870525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 n + 1

end

end A006882.P8858898011605870525

namespace A006882

/-- `A128882(n)+1` -/
def P8858898011605870525.Spec : Prop :=
  ∀ n, P8858898011605870525.a n = A006882 n

theorem P8858898011605870525.correct : P8858898011605870525.Spec := by
  intro n
  simp only [A006882, Nat.add_sub_cancel, A006882.P8858898011605870525.a, A006882.P4505634677935663530.a, A128882, A128882.P10026494431697835336.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006882

/-! ## A006882.P9637929775948204133

`A007911(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A006882.P9637929775948204133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007911 (n + 1) + a (n - 1)

end

end A006882.P9637929775948204133

namespace A006882

/-- `A007911(n+1)+a(n-1)` -/
def P9637929775948204133.Spec : Prop :=
  ∀ n, P9637929775948204133.a n = A006882 n

end A006882

/-! ## A006882.P11791652951170352453

`A216466(n)+A130779(n)`
-/

namespace A006882.P11791652951170352453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216466 n + A130779 n

end

end A006882.P11791652951170352453

namespace A006882

/-- `A216466(n)+A130779(n)` -/
def P11791652951170352453.Spec : Prop :=
  ∀ n, P11791652951170352453.a n = A006882 n

end A006882

/-! ## A006882.P963929045922698313

`A095987(n)*A380909(n)`
-/

namespace A006882.P963929045922698313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095987 n * A380909 n

end

end A006882.P963929045922698313

namespace A006882

/-- `A095987(n)*A380909(n)` -/
def P963929045922698313.Spec : Prop :=
  ∀ n, P963929045922698313.a n = A006882 n

end A006882

/-! ## A006882.P9077126090926881119

`lcm(A004730(n), A072346(n))`
-/

namespace A006882.P9077126090926881119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004730 n) (A072346 n)

end

end A006882.P9077126090926881119

namespace A006882

/-- `lcm(A004730(n), A072346(n))` -/
def P9077126090926881119.Spec : Prop :=
  ∀ n, (P9077126090926881119.a n : ℤ) = A006882 n

end A006882

/-! ## A006882.P12858378892915647268

`A004731(n+1)*A095987(n)`
-/

namespace A006882.P12858378892915647268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (n + 1) * A095987 n

end

end A006882.P12858378892915647268

namespace A006882

/-- `A004731(n+1)*A095987(n)` -/
def P12858378892915647268.Spec : Prop :=
  ∀ n, P12858378892915647268.a n = A006882 n

end A006882

/-! ## A006882.P18343000830486584512

`A004730(n)*A095987(n+1)`
-/

namespace A006882.P18343000830486584512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 n * A095987 (n + 1)

end

end A006882.P18343000830486584512

namespace A006882

/-- `A004730(n)*A095987(n+1)` -/
def P18343000830486584512.Spec : Prop :=
  ∀ n, P18343000830486584512.a n = A006882 n

end A006882

/-! ## A006882.P4625151412688922459

`A095987(n+1)*A380910(n+1)`
-/

namespace A006882.P4625151412688922459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095987 (n + 1) * A380910 (n + 1)

end

end A006882.P4625151412688922459

namespace A006882

/-- `A095987(n+1)*A380910(n+1)` -/
def P4625151412688922459.Spec : Prop :=
  ∀ n, P4625151412688922459.a n = A006882 n

end A006882

/-! ## A006882.P8908550755986216011

`A076051(n)-a(n-1)` with `a(0)=1`
-/

namespace A006882.P8908550755986216011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076051 n - a (n - 1)

end

end A006882.P8908550755986216011

namespace A006882

/-- `A076051(n)-a(n-1)` -/
def P8908550755986216011.Spec : Prop :=
  ∀ n, P8908550755986216011.a n = A006882 n

end A006882

/-! ## A006882.P10235778408172409399

`A060696(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A006882.P10235778408172409399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060696 (n + 1) - a (n - 1)

end

end A006882.P10235778408172409399

namespace A006882

/-- `A060696(n+1)-a(n-1)` -/
def P10235778408172409399.Spec : Prop :=
  ∀ n, P10235778408172409399.a n = A006882 n

end A006882

/-! ## A006882.P546151506286140888

`Δ[A129981(n)-A128882(n)]`
-/

namespace A006882.P546151506286140888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 n - A128882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006882.P546151506286140888

namespace A006882

/-- `Δ[A129981(n)-A128882(n)]` -/
def P546151506286140888.Spec : Prop :=
  ∀ n, P546151506286140888.a n = A006882 n

end A006882

/-! ## A006882.P16822397963070131976

`Δ[A076051(n+1)]/(n+1)`
-/

namespace A006882.P16822397963070131976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076051 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A006882.P16822397963070131976

namespace A006882

/-- `Δ[A076051(n+1)]/(n+1)` -/
def P16822397963070131976.Spec : Prop :=
  ∀ n, P16822397963070131976.a n = (A006882 n : ℚ)

end A006882

/-! ## A006882.P13209749191699696571

`A293656(n+1)/∑[n+1]`
-/

namespace A006882.P13209749191699696571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293656 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A006882.P13209749191699696571

namespace A006882

/-- `A293656(n+1)/∑[n+1]` -/
def P13209749191699696571.Spec : Prop :=
  ∀ n, P13209749191699696571.a n = (A006882 n : ℚ)

end A006882

/-!
# A006883: Long period primes: the decimal expansion of 1/p has period p-1.

The programs for A006883, there is no canonical definition to state claims against.
-/

/-! ## A006883.P17294131315273353805

`A001913(n%a(n-1))` with `a(0)=2`
-/

namespace A006883.P17294131315273353805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001913 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A006883.P17294131315273353805

/-! ## A006883.P5579587701408095453

`A001913(C(n, a(n-1))/2+n)` with `a(0)=2`
-/

namespace A006883.P5579587701408095453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001913 (SequenceMachineLib.roundAway ((Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ))).toNat

end

end A006883.P5579587701408095453

/-! ## A006883.P13728885992620451980

`∪[A001913(n+1), A006686(n+1)]`
-/

namespace A006883.P13728885992620451980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006883.P13728885992620451980

/-! ## A006883.P3692480374877139688

`∪[A001913(n+1), A007352(n+1)]`
-/

namespace A006883.P3692480374877139688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006883.P3692480374877139688

/-! ## A006883.P6768728391743188087

`record[A002371(n+2)+1]`
-/

namespace A006883.P6768728391743188087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006883.P6768728391743188087

/-! ## A006883.P12553657357290225587

`record[A048595(n+1)+1]`
-/

namespace A006883.P12553657357290225587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006883.P12553657357290225587

/-! ## A006883.P17597435666516523546

`A000040(eq[1, A060370(n+1)]+1)`
-/

namespace A006883.P17597435666516523546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A006883.P17597435666516523546

/-! ## A006883.P3394766337474800344

`record[(A006093(n+1)+1)/A060370(n+1)]`
-/

namespace A006883.P3394766337474800344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1 : ℚ) / (A060370 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006883.P3394766337474800344

/-! ## A006883.P11013031572696108399

`eq[n, A007732(n+1)]+1`
-/

namespace A006883.P11013031572696108399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006883.P11013031572696108399

/-! ## A006883.P1830794255098890259

`lt[n, A007732(n+2)]+2`
-/

namespace A006883.P1830794255098890259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A006883.P1830794255098890259

/-! ## A006883.P2863748055388286917

`A020725(eq[n, A007732(n+1)])`
-/

namespace A006883.P2863748055388286917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006883.P2863748055388286917

/-! ## A006883.P17689401494501995880

`eq[n, A007732(A028310(n))+1]`
-/

namespace A006883.P17689401494501995880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006883.P17689401494501995880

/-! ## A006883.P10029351246294287460

`record[A007732(A000040(n+1))+1]`
-/

namespace A006883.P10029351246294287460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A000040 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006883.P10029351246294287460

/-! ## A006883.P15843277381205134361

`record[A007732(A006530(n+1))+1]`
-/

namespace A006883.P15843277381205134361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A006530 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006883.P15843277381205134361

/-! ## A006883.P1615206271878232190

`record[A014963(A007732(n+1)+1)]`
-/

namespace A006883.P1615206271878232190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A007732 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006883.P1615206271878232190

/-! ## A006883.P4602063356954742432

`record[A020639(A007732(n+1)+1)]`
-/

namespace A006883.P4602063356954742432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007732 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006883.P4602063356954742432

/-! ## A006883.P8401975878803118668

`record[A007732(A000010(2*n+1)+1)+1]`
-/

namespace A006883.P8401975878803118668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A000010 (2 * n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006883.P8401975878803118668

/-! ## A006883.P15261968006387718171

`record[A006530(A084681(A006530(n+1))+1)]`
-/

namespace A006883.P15261968006387718171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A084681 (A006530 (n + 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006883.P15261968006387718171

/-! ## A006883.P15228891847957928180

`record[A014963(A084681(A014963(n+1))+1)]`
-/

namespace A006883.P15228891847957928180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A084681 (A014963 (n + 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006883.P15228891847957928180

/-! ## A006883.P13070375077828894447

`record[A020639(A084681(A020639(n+1))+1)]`
-/

namespace A006883.P13070375077828894447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A084681 (A020639 (n + 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006883.P13070375077828894447

/-!
# A006884: In the '3x+1' problem, these values for the starting value set new records for highest point of trajectory before reaching 1.

The programs for A006884, there is no canonical definition to state claims against.
-/

/-! ## A006884.P12994682745186832038

`record[A002784(A000032(n))]`
-/

namespace A006884.P12994682745186832038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002784 (A000032 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006884.P12994682745186832038

/-! ## A006884.P1098558053887904431

`record[gcd(A079968(n), A314022(n))]`
-/

namespace A006884.P1098558053887904431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079968 n) (A314022 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006884.P1098558053887904431

/-! ## A006884.P2246272725915708285

`∑[A246811(floor(A246818(n)/2))]`
-/

namespace A006884.P2246272725915708285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246811 ⌊(A246818 n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006884.P2246272725915708285

/-!
# A006885: Record highest point of trajectory before reaching 1 in '3x+1' problem, corresponding to starting values in A006884.

The programs for A006885, there is no canonical definition to state claims against.
-/

/-! ## A006885.P17902174756727893786

`gcd(A130706(n), A336994(n+1))`
-/

namespace A006885.P17902174756727893786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A336994 (n + 1))

end

end A006885.P17902174756727893786

/-! ## A006885.P11767696951145469904

`xor((n+1)*A169585(n), A336994(n+1))`
-/

namespace A006885.P11767696951145469904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1 : ℤ) * A169585 n) (A336994 (n + 1))

end

end A006885.P11767696951145469904

/-! ## A006885.P7939077148724682775

`A336994(n+1)+A089798(A000096(n))`
-/

namespace A006885.P7939077148724682775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336994 (n + 1) + A089798 (A000096 n).toNat

end

end A006885.P7939077148724682775

/-! ## A006885.P1465241475954303323

`A336994(n+1)+A123022(2*n)`
-/

namespace A006885.P1465241475954303323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336994 (n + 1) + A123022 (2 * n)

end

end A006885.P1465241475954303323

/-! ## A006885.P6501836349703532056

`record[A087251(n+1)]`
-/

namespace A006885.P6501836349703532056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006885.P6501836349703532056

/-!
# A006886: Kaprekar numbers: positive numbers n such that n = q+r and n^2 = q*10^m+r, for some m >= 1, q >= 0 and 0 <= r < 10^m, with n != 10^a, a >= 1.

The programs for A006886, there is no canonical definition to state claims against.
-/

/-! ## A006886.P16968185617122012841

`A194218(n+1)+A194219(n+1)`
-/

namespace A006886.P16968185617122012841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194218 (n + 1) + A194219 (n + 1)

end

end A006886.P16968185617122012841

/-! ## A006886.P17181733933212181537

`∪[A053816(n+1), A382160(n+1)]`
-/

namespace A006886.P17181733933212181537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006886.P17181733933212181537

/-! ## A006886.P11818537746758896820

`A014681(record[A014681(A248353(n+1))])`
-/

namespace A006886.P11818537746758896820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A248353 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006886.P11818537746758896820

/-! ## A006886.P16318743557072501139

`A330396(record[A330396(A248353(n+1))])`
-/

namespace A006886.P16318743557072501139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (A248353 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006886.P16318743557072501139

/-! ## A006886.P12235163600159534989

`A248353(A055642(A053816(n+1))+n)`
-/

namespace A006886.P12235163600159534989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248353 (A055642 (A053816 (n + 1)).toNat + (n : ℤ)).toNat

end

end A006886.P12235163600159534989

/-!
# A006887: Kaprekar triples: q such that q = x + y + z and q^3 = x*10^2n + y*10^n + z, where z < 10^n and n is the number of digits in q. q is not a power of 10 (except q=1).

The programs for A006887, there is no canonical definition to state claims against.
-/

/-! ## A006887.P6048709855450143502

`root(A291461(n+1), 3)`
-/

namespace A006887.P6048709855450143502
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A291461 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A006887.P6048709855450143502

/-! ## A006887.P1746705303232746087

`A291461(A000027(n+1))^(1/3)`
-/

namespace A006887.P1746705303232746087
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A291461 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A006887.P1746705303232746087

/-! ## A006887.P5285339174842566352

`A291461(n+1)^(A057427(n)/3)`
-/

namespace A006887.P5285339174842566352
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A291461 (n + 1) : ℝ) ^ ((A057427 n : ℚ) / 3 : ℝ)

end

end A006887.P5285339174842566352

/-!
# A006888: a(n) = a(n-1) + a(n-2)*a(n-3) for n > 2 with a(0) = a(1) = a(2) = 1.

The programs for A006888, the canonical program `A006888.P8470228410157475931` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006888 has offset 0).

The definition of A006888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)*a(n-3)` (program `A006888.P8470228410157475931`, by `A006888.P8470228410157475931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006888.P8470228410157475931

`a(n-1)+a(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006888

/-- `a(n-1)+a(n-2)*a(n-3)` -/
def P8470228410157475931.Spec : Prop :=
  ∀ n, (P8470228410157475931.a n : ℤ) = A006888 n

theorem P8470228410157475931.correct : P8470228410157475931.Spec := by
  intro n
  simp only [A006888]

end A006888

/-! ## A006888.P2873722507039996174

`a(n-1)+lcm(a(n-2), a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A006888.P2873722507039996174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + Nat.lcm (a (n - 2)) (a (n - 3))

end

end A006888.P2873722507039996174

namespace A006888

/-- `a(n-1)+lcm(a(n-2), a(n-3))` -/
def P2873722507039996174.Spec : Prop :=
  ∀ n, (P2873722507039996174.a n : ℤ) = A006888 n

end A006888

/-! ## A006888.P3031584306935275382

`a(n-1)-floor(-a(n-3))*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A006888.P3031584306935275382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - (-a (n - 3)) * a (n - 2)

end

end A006888.P3031584306935275382

namespace A006888

/-- `a(n-1)-floor(-a(n-3))*a(n-2)` -/
def P3031584306935275382.Spec : Prop :=
  ∀ n, P3031584306935275382.a n = A006888 n

end A006888

/-! ## A006888.P16897958559213567217

`a(n-1)+a(n-2)/a(n-3)^(-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A006888.P16897958559213567217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) / a (n - 3) ^ (-1 : ℤ)

end

end A006888.P16897958559213567217

namespace A006888

/-- `a(n-1)+a(n-2)/a(n-3)^(-1)` -/
def P16897958559213567217.Spec : Prop :=
  ∀ n, P16897958559213567217.a n = (A006888 n : ℚ)

end A006888

/-! ## A006888.P10973382600373427151

`A193921(A018063(n))`
-/

namespace A006888.P10973382600373427151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193921 (A018063 n).toNat

end

end A006888.P10973382600373427151

namespace A006888

/-- `A193921(A018063(n))` -/
def P10973382600373427151.Spec : Prop :=
  ∀ n, P10973382600373427151.a n = A006888 n

end A006888

/-!
# A006892: Representation as a sum of squares requires n squares with greedy algorithm.

The programs for A006892, the canonical program `A006892.P17933148690849713620` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006892 has offset 1).

The definition of A006892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006892.P17933148690849713620

`((a(n-1)+3)/2)²-2` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006892

/-- `((a(n-1)+3)/2)²-2` -/
def P17933148690849713620.Spec : Prop :=
  ∀ n, P17933148690849713620.a n = (A006892 (n + 1) : ℚ)

end A006892

/-! ## A006892.P10236709226583301570

`∑[A262123(n+1)]`
-/

namespace A006892.P10236709226583301570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006892.P10236709226583301570

namespace A006892

/-- `∑[A262123(n+1)]` -/
def P10236709226583301570.Spec : Prop :=
  ∀ n, P10236709226583301570.a n = A006892 (n + 1)

end A006892

/-! ## A006892.P9211162053442038756

`A014616(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A006892.P9211162053442038756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A014616 (a (n - 1)).toNat

end

end A006892.P9211162053442038756

namespace A006892

/-- `A014616(a(n-1))` -/
def P9211162053442038756.Spec : Prop :=
  ∀ n, P9211162053442038756.a n = A006892 (n + 1)

end A006892

/-! ## A006892.P6860096120247068250

`A397268(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A006892.P6860096120247068250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A397268 (a (n - 1)).toNat

end

end A006892.P6860096120247068250

namespace A006892

/-- `A397268(a(n-1))` -/
def P6860096120247068250.Spec : Prop :=
  ∀ n, P6860096120247068250.a n = A006892 (n + 1)

end A006892

/-!
# A006893: Smallest number whose representation requires n triangular numbers with greedy algorithm; also number of 1-2 rooted trees of height n.

The programs for A006893, the canonical program `A006893.P10911796732085039575` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006893 has offset 1).

The definition of A006893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006893.P10911796732085039575

`a(n-1)*(a(n-1)+3)/2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006893

/-- `a(n-1)*(a(n-1)+3)/2` -/
def P10911796732085039575.Spec : Prop :=
  ∀ n, P10911796732085039575.a n = (A006893 (n + 1) : ℚ)

end A006893

/-! ## A006893.P17518623739290098866

`A007501(n)-1`
-/

namespace A006893.P17518623739290098866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007501 n - 1

end

end A006893.P17518623739290098866

namespace A006893

/-- `A007501(n)-1` -/
def P17518623739290098866.Spec : Prop :=
  ∀ n, P17518623739290098866.a n = A006893 (n + 1)

end A006893

/-! ## A006893.P11980249415208113184

`C(a(n-1)+2, 2)-1` with `a(0)=1`
-/

namespace A006893.P11980249415208113184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (a (n - 1) + 2).toNat 2 : ℤ) - 1

end

end A006893.P11980249415208113184

namespace A006893

/-- `C(a(n-1)+2, 2)-1` -/
def P11980249415208113184.Spec : Prop :=
  ∀ n, P11980249415208113184.a n = A006893 (n + 1)

end A006893

/-! ## A006893.P4411176985549017656

`lcm(a(n-1)+3, a(n-1))/2` with `a(0)=1`
-/

namespace A006893.P4411176985549017656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (SequenceMachineLib.roundAway (a (n - 1) + 3)) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / 2

end

end A006893.P4411176985549017656

namespace A006893

/-- `lcm(a(n-1)+3, a(n-1))/2` -/
def P4411176985549017656.Spec : Prop :=
  ∀ n, P4411176985549017656.a n = (A006893 (n + 1) : ℚ)

end A006893

/-! ## A006893.P16299599057510719827

`(2-(1-a(n-1))/2)*a(n-1)` with `a(0)=1`
-/

namespace A006893.P16299599057510719827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 - (1 - a (n - 1)) / 2) * a (n - 1)

end

end A006893.P16299599057510719827

namespace A006893

/-- `(2-(1-a(n-1))/2)*a(n-1)` -/
def P16299599057510719827.Spec : Prop :=
  ∀ n, P16299599057510719827.a n = (A006893 (n + 1) : ℚ)

end A006893

/-!
# A006894: Number of planted 3-trees of height < n.

The programs for A006894, the canonical program `A006894.P12103002077536023779` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006894 has offset 1).

The definition of A006894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006894.P17985180898888236281

`1+C(1+a(n-1), 2)` with `a(0)=1`
-/

namespace A006894.P17985180898888236281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + Nat.choose (1 + a (n - 1)) 2

end

end A006894.P17985180898888236281

namespace A006894

/-- `1+C(1+a(n-1), 2)` -/
def P17985180898888236281.Spec : Prop :=
  ∀ n, (P17985180898888236281.a n : ℤ) = A006894 (n + 1)

end A006894

/-! ## A006894.P15270682850682313483

`1+a(n-1)*(a(n-1)+1)/2` with `a(0)=1`
-/

namespace A006894.P15270682850682313483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (n - 1) * (a (n - 1) + 1) / 2

end

end A006894.P15270682850682313483

namespace A006894

/-- `1+a(n-1)*(a(n-1)+1)/2` -/
def P15270682850682313483.Spec : Prop :=
  ∀ n, P15270682850682313483.a n = (A006894 (n + 1) : ℚ)

end A006894

/-! ## A006894.P12103002077536023779

`A000124(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006894

/-- `A000124(a(n-1))` -/
def P12103002077536023779.Spec : Prop :=
  ∀ n, P12103002077536023779.a n = A006894 (n + 1)

theorem P12103002077536023779.correct : P12103002077536023779.Spec := by
  intro n
  simp only [A006894, Nat.add_sub_cancel]

end A006894

/-! ## A006894.P10055093707309117943

`(a(n-1)+a(n-1)²)/2+1` with `a(0)=1`
-/

namespace A006894.P10055093707309117943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + a (n - 1) ^ 2) / 2 + 1

end

end A006894.P10055093707309117943

namespace A006894

/-- `(a(n-1)+a(n-1)²)/2+1` -/
def P10055093707309117943.Spec : Prop :=
  ∀ n, P10055093707309117943.a n = (A006894 (n + 1) : ℚ)

end A006894

/-! ## A006894.P793919455825471624

`1-(C(a(n-1), 2)-a(n-1)²)` with `a(0)=1`
-/

namespace A006894.P793919455825471624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((Nat.choose (a (n - 1)).toNat 2 : ℤ) - a (n - 1) ^ 2)

end

end A006894.P793919455825471624

namespace A006894

/-- `1-(C(a(n-1), 2)-a(n-1)²)` -/
def P793919455825471624.Spec : Prop :=
  ∀ n, P793919455825471624.a n = A006894 (n + 1)

end A006894

/-!
# A006895: Parenthesized one way gives the powers of 2: (1), (2), (1+3), ..., another way the powers of 3: (1), (2+1), (3+6), ....

The programs for A006895, there is no canonical definition to state claims against.
-/

/-! ## A006895.P10812336010176095600

`Δ[record[A296955(A000961(n+1))]]`
-/

namespace A006895.P10812336010176095600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (A000961 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006895.P10812336010176095600

/-! ## A006895.P7247902830401270829

`Δ[record[A296955(A025475(n+1))]]`
-/

namespace A006895.P7247902830401270829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (A025475 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006895.P7247902830401270829

/-! ## A006895.P8251274153628858479

`Δ[record[A296955(A246655(n+1))]]`
-/

namespace A006895.P8251274153628858479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (A246655 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006895.P8251274153628858479

/-! ## A006895.P7357286330282102944

`Δ[record[A296955(A302498(n+1))]]`
-/

namespace A006895.P7357286330282102944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (A302498 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006895.P7357286330282102944

/-! ## A006895.P3666674185169563979

`Δ[record[A296955(A214577(n+1))]]`
-/

namespace A006895.P3666674185169563979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (A214577 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006895.P3666674185169563979

/-!
# A006896: a(n) is the number of hierarchical linear models on n labeled factors allowing 2-way interactions (but no higher order interactions); or the number of simple labeled graphs with nodes chosen from an n-set.

The programs for A006896, there is no canonical definition to state claims against.
-/

/-! ## A006896.P9316186459015327838

`1+A004140(n)`
-/

namespace A006896.P9316186459015327838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A004140 n

end

end A006896.P9316186459015327838

/-! ## A006896.P14797496151839734138

`A006898(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A006896.P14797496151839734138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006898 (n - 1) + a (n - 1)

end

end A006896.P14797496151839734138

/-! ## A006896.P7948455926618590033

`A000225(n)+A379706(n)+1`
-/

namespace A006896.P7948455926618590033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A379706 n + 1)

end

end A006896.P7948455926618590033

/-! ## A006896.P11580342837226045335

`1-A004140(n)*A057428(n)`
-/

namespace A006896.P11580342837226045335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004140 n * A057428 n

end

end A006896.P11580342837226045335

/-! ## A006896.P10643106812374382632

`2-(A033999(n)²-A004140(n))`
-/

namespace A006896.P10643106812374382632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A033999 n ^ 2 - A004140 n)

end

end A006896.P10643106812374382632

/-!
# A006897: a(n) is the number of hierarchical linear models on n unlabeled factors allowing 2-way interactions (but no higher order interactions); or the number of unlabeled simple graphs with <= n nodes.

The programs for A006897, there is no canonical definition to state claims against.
-/

/-! ## A006897.P16559150353700240019

`∑[A000088(n)]`
-/

namespace A006897.P16559150353700240019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006897.P16559150353700240019

/-! ## A006897.P14011038375400705004

`∑[∑[A002494(n)]]`
-/

namespace A006897.P14011038375400705004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006897.P14011038375400705004

/-! ## A006897.P663530534471503666

`∑[A361404(∑[n])]`
-/

namespace A006897.P663530534471503666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361404 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006897.P663530534471503666

/-! ## A006897.P11441103175996153198

`∑[A001349(n)+A000719(n)]`
-/

namespace A006897.P11441103175996153198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 n + A000719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006897.P11441103175996153198

/-! ## A006897.P2670023576466889068

`∑[A157016(n)+A157015(n)]`
-/

namespace A006897.P2670023576466889068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157016 n + A157015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006897.P2670023576466889068

/-!
# A006898: a(n) = Sum_{k=0..n} C(n,k)*2^(k*(k+1)/2).

The programs for A006898, there is no canonical definition to state claims against.
-/

/-! ## A006898.P13404856500112420276

`Δ[A004140(n)]`
-/

namespace A006898.P13404856500112420276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006898.P13404856500112420276

/-! ## A006898.P17815777884461507060

`Δ[A006896(n)]`
-/

namespace A006898.P17815777884461507060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006898.P17815777884461507060

/-! ## A006898.P9070348954067974225

`A004140(n+1)-A004140(n)`
-/

namespace A006898.P9070348954067974225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004140 (n + 1) - A004140 n

end

end A006898.P9070348954067974225

/-! ## A006898.P16256223972905285317

`A006896(n+1)-A006896(n)`
-/

namespace A006898.P16256223972905285317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006896 (n + 1) - A006896 n

end

end A006898.P16256223972905285317

/-! ## A006898.P1585252945972945161

`record[A006896(A008611(n))]-A006896(n)`
-/

namespace A006898.P1585252945972945161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006896 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A006896 n

end

end A006898.P1585252945972945161

/-!
# A006899: Numbers of the form 2^i or 3^j.

The programs for A006899, the canonical program `A006899.P2708636492723814346` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006899 has offset 1).

The definition of A006899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 542 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006899.P6285012583556963148

`A085239(n+1)^A085238(n+1)`
-/

namespace A006899.P6285012583556963148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085239 (n + 1) : ℚ) ^ (A085238 (n + 1) : ℤ)

end

end A006899.P6285012583556963148

namespace A006899

/-- `A085239(n+1)^A085238(n+1)` -/
def P6285012583556963148.Spec : Prop :=
  ∀ n, P6285012583556963148.a n = (A006899 (n + 1) : ℚ)

end A006899

/-! ## A006899.P13321738830091026551

`A108906(n)+a(n-1)` with `a(0)=1`
-/

namespace A006899.P13321738830091026551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108906 n + a (n - 1)

end

end A006899.P13321738830091026551

namespace A006899

/-- `A108906(n)+a(n-1)` -/
def P13321738830091026551.Spec : Prop :=
  ∀ n, P13321738830091026551.a n = A006899 (n + 1)

end A006899

/-! ## A006899.P12086288737990767079

`∑[A108906(A028310(n))]`
-/

namespace A006899.P12086288737990767079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108906 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006899.P12086288737990767079

namespace A006899

/-- `∑[A108906(A028310(n))]` -/
def P12086288737990767079.Spec : Prop :=
  ∀ n, P12086288737990767079.a n = A006899 (n + 1)

end A006899

/-! ## A006899.P2708636492723814346

`∪[A000079(n), A367083(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006899

/-- `∪[A000079(n), A367083(n)]` -/
def P2708636492723814346.Spec : Prop :=
  ∀ n, (P2708636492723814346.a n : ℤ) = A006899 (n + 1)

theorem P2708636492723814346.correct : P2708636492723814346.Spec := by
  intro n
  simp only [A006899, Nat.add_sub_cancel]

end A006899

/-! ## A006899.P17348471367291870221

`∑[A108906(A233583(n+1))]`
-/

namespace A006899.P17348471367291870221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108906 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006899.P17348471367291870221

namespace A006899

/-- `∑[A108906(A233583(n+1))]` -/
def P17348471367291870221.Spec : Prop :=
  ∀ n, P17348471367291870221.a n = A006899 (n + 1)

end A006899

/-! ## A006899.P7480707187562914612

`∑[A108906(A123108(2*n))]`
-/

namespace A006899.P7480707187562914612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108906 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006899.P7480707187562914612

namespace A006899

/-- `∑[A108906(A123108(2*n))]` -/
def P7480707187562914612.Spec : Prop :=
  ∀ n, P7480707187562914612.a n = A006899 (n + 1)

end A006899

/-! ## A006899.P15845729797688920500

`∪[A346461(n+1), A367083(n)]`
-/

namespace A006899.P15845729797688920500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367083 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006899.P15845729797688920500

namespace A006899

/-- `∪[A346461(n+1), A367083(n)]` -/
def P15845729797688920500.Spec : Prop :=
  ∀ n, (P15845729797688920500.a n : ℤ) = A006899 (n + 1)

end A006899

/-! ## A006899.P1443689198945342431

`∪[2^n, 3^n]`
-/

namespace A006899.P1443689198945342431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A006899.P1443689198945342431

namespace A006899

/-- `∪[2^n, 3^n]` -/
def P1443689198945342431.Spec : Prop :=
  ∀ n, (P1443689198945342431.a n : ℤ) = A006899 (n + 1)

end A006899

/-! ## A006899.P14393635150392386380

`∑[A108906(n+1)]+1-A108906(n+1)`
-/

namespace A006899.P14393635150392386380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A108906 (n + 1))

end

end A006899.P14393635150392386380

namespace A006899

/-- `∑[A108906(n+1)]+1-A108906(n+1)` -/
def P14393635150392386380.Spec : Prop :=
  ∀ n, P14393635150392386380.a n = A006899 (n + 1)

end A006899

/-! ## A006899.P3226530890200522891

`Δ[A170804(n+1)]`
-/

namespace A006899.P3226530890200522891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006899.P3226530890200522891

namespace A006899

/-- `Δ[A170804(n+1)]` -/
def P3226530890200522891.Spec : Prop :=
  ∀ n, P3226530890200522891.a n = A006899 (n + 1)

end A006899

/-! ## A006899.P15898157173545640162

`Δ[A170805(n+1)]`
-/

namespace A006899.P15898157173545640162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006899.P15898157173545640162

namespace A006899

/-- `Δ[A170805(n+1)]` -/
def P15898157173545640162.Spec : Prop :=
  ∀ n, P15898157173545640162.a n = A006899 (n + 1)

end A006899

/-! ## A006899.P8278659070380170230

`A170804(n+2)-A170804(n+1)`
-/

namespace A006899.P8278659070380170230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170804 (n + 2) - A170804 (n + 1)

end

end A006899.P8278659070380170230

namespace A006899

/-- `A170804(n+2)-A170804(n+1)` -/
def P8278659070380170230.Spec : Prop :=
  ∀ n, P8278659070380170230.a n = A006899 (n + 1)

end A006899

/-! ## A006899.P9730141665153501976

`A170805(n+2)-A170805(n+1)`
-/

namespace A006899.P9730141665153501976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170805 (n + 2) - A170805 (n + 1)

end

end A006899.P9730141665153501976

namespace A006899

/-- `A170805(n+2)-A170805(n+1)` -/
def P9730141665153501976.Spec : Prop :=
  ∀ n, P9730141665153501976.a n = A006899 (n + 1)

end A006899

/-! ## A006899.P4941293434586173344

`A170803(n+2)-(A170803(n+1)+A108906(n+1))`
-/

namespace A006899.P4941293434586173344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170803 (n + 2) - (A170803 (n + 1) + A108906 (n + 1))

end

end A006899.P4941293434586173344

namespace A006899

/-- `A170803(n+2)-(A170803(n+1)+A108906(n+1))` -/
def P4941293434586173344.Spec : Prop :=
  ∀ n, P4941293434586173344.a n = A006899 (n + 1)

end A006899

/-! ## A006899.P4940571400805549392

`record[A347288(n)/gcd(2, A347288(n))]`
-/

namespace A006899.P4940571400805549392
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347288 n : ℚ) / (Int.gcd 2 (A347288 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006899.P4940571400805549392

namespace A006899

/-- `record[A347288(n)/gcd(2, A347288(n))]` -/
def P4940571400805549392.Spec : Prop :=
  ∀ n, P4940571400805549392.a n = (A006899 (n + 1) : ℚ)

end A006899

/-! ## A006899.P10484261665950504180

`A003586(A374484(n+1))`
-/

namespace A006899.P10484261665950504180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A374484 (n + 1)).toNat

end

end A006899.P10484261665950504180

namespace A006899

/-- `A003586(A374484(n+1))` -/
def P10484261665950504180.Spec : Prop :=
  ∀ n, P10484261665950504180.a n = A006899 (n + 1)

end A006899

/-! ## A006899.P12258393829336360198

`∩[A003586(n+1), A306044(n+1)]`
-/

namespace A006899.P12258393829336360198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006899.P12258393829336360198

namespace A006899

/-- `∩[A003586(n+1), A306044(n+1)]` -/
def P12258393829336360198.Spec : Prop :=
  ∀ n, (P12258393829336360198.a n : ℤ) = A006899 (n + 1)

end A006899

/-! ## A006899.P3129951829361973020

`A003586(eq[n, n*A086412(n+1)]+1)`
-/

namespace A006899.P3129951829361973020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A086412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A006899.P3129951829361973020

namespace A006899

/-- `A003586(eq[n, n*A086412(n+1)]+1)` -/
def P3129951829361973020.Spec : Prop :=
  ∀ n, P3129951829361973020.a n = A006899 (n + 1)

end A006899

/-! ## A006899.P12433456339487283221

`A003586(eq[A086410(n+1), A086411(n+1)]+1)`
-/

namespace A006899.P12433456339487283221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A006899.P12433456339487283221

namespace A006899

/-- `A003586(eq[A086410(n+1), A086411(n+1)]+1)` -/
def P12433456339487283221.Spec : Prop :=
  ∀ n, P12433456339487283221.a n = A006899 (n + 1)

end A006899

/-! ## A006899.P17685519157839679909

`∩[A003586(n+1), A337801(n+1)]`
-/

namespace A006899.P17685519157839679909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006899.P17685519157839679909

namespace A006899

/-- `∩[A003586(n+1), A337801(n+1)]` -/
def P17685519157839679909.Spec : Prop :=
  ∀ n, (P17685519157839679909.a n : ℤ) = A006899 (n + 1)

end A006899

