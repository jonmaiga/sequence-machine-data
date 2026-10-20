import SequenceMachineLib
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C025

/-!
# A347800: Number of tilings of an n X n square using integer-sided square tiles of area > 1.

The programs for A347800, there is no canonical definition to state claims against.
-/

/-! ## A347800.P3939942147434545204

`A226206(∑[4*n])`
-/

namespace A347800.P3939942147434545204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347800.P3939942147434545204

/-! ## A347800.P14630971831729085999

`A226206(A046092(n))+char[18]`
-/

namespace A347800.P14630971831729085999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (A046092 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347800.P14630971831729085999

/-! ## A347800.P12590971078481163798

`gcd(A000038(n), A226206(A046092(n)))`
-/

namespace A347800.P12590971078481163798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A226206 (A046092 n).toNat)

end

end A347800.P12590971078481163798

/-! ## A347800.P7295140064289646345

`lcm(A033999(n), A226206(A046092(n)))`
-/

namespace A347800.P7295140064289646345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A226206 (A046092 n).toNat)

end

end A347800.P7295140064289646345

/-! ## A347800.P15324260906694352508

`or(A000007(n), A226206(A046092(n)))`
-/

namespace A347800.P15324260906694352508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A226206 (A046092 n).toNat)

end

end A347800.P15324260906694352508

/-!
# A347801: Expansion of ( Sum_{k>=0} k^2 * q^(k^2) )^2.

The programs for A347801, there is no canonical definition to state claims against.
-/

/-! ## A347801.P9830073801965600647

`A000120(A068911(n))*A037214(n)`
-/

namespace A347801.P9830073801965600647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A068911 n).toNat * A037214 n

end

end A347801.P9830073801965600647

/-! ## A347801.P7110698654851015343

`A000120(A068911(n))²*A063725(n)`
-/

namespace A347801.P7110698654851015343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A068911 n).toNat ^ 2 * A063725 n

end

end A347801.P7110698654851015343

/-! ## A347801.P664132510373599155

`A005811(A095016(n+1))*A037214(n)`
-/

namespace A347801.P664132510373599155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A095016 (n + 1)).toNat * A037214 n

end

end A347801.P664132510373599155

/-! ## A347801.P2201230206569262358

`A001222(A288811(n))*A037214(n)`
-/

namespace A347801.P2201230206569262358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A288811 n).toNat * A037214 n

end

end A347801.P2201230206569262358

/-! ## A347801.P3935390089948928427

`A001222(A288811(n))²*A063725(n)`
-/

namespace A347801.P3935390089948928427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A288811 n).toNat ^ 2 * A063725 n

end

end A347801.P3935390089948928427

/-!
# A347802: Expansion of ( Sum_{k>=0} k^2 * q^(k^2) )^3.

The programs for A347802, there is no canonical definition to state claims against.
-/

/-! ## A347802.P14252981525892472228

`A037215(n)*A307510(A187829(n+1))`
-/

namespace A347802.P14252981525892472228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037215 n * A307510 (A187829 (n + 1)).toNat

end

end A347802.P14252981525892472228

/-! ## A347802.P7203833391836340146

`A307510(A187829(n+1))²*A063691(n)`
-/

namespace A347802.P7203833391836340146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307510 (A187829 (n + 1)).toNat ^ 2 * A063691 n

end

end A347802.P7203833391836340146

/-! ## A347802.P16702753798179317360

`A063691(n)*A307510(A187829(n+1))*A307510(n+1)`
-/

namespace A347802.P16702753798179317360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n * A307510 (A187829 (n + 1)).toNat * A307510 (n + 1)

end

end A347802.P16702753798179317360

/-! ## A347802.P16011380966690113147

`A048675(A008619(n)^A063691(n))*A307510(n+1)`
-/

namespace A347802.P16011380966690113147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.roundAway ((A008619 n : ℚ) ^ (A063691 n : ℤ))).toNat * A307510 (n + 1)

end

end A347802.P16011380966690113147

/-! ## A347802.P10695379662748272306

`A025047(n)%A209438(A374743(n))`
-/

namespace A347802.P10695379662748272306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025047 n) (A209438 (A374743 n).toNat)

end

end A347802.P10695379662748272306

/-!
# A347803: Expansion of ( Sum_{k>=0} k^2 * q^(k^2) )^4.

The programs for A347803, there is no canonical definition to state claims against.
-/

/-! ## A347803.P14637594564627766500

`A063730(n)*A307510(n)*A100755(n+1)%2*A307510(n)`
-/

namespace A347803.P14637594564627766500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 n * A307510 n * Int.tmod (A100755 (n + 1)) 2 * A307510 n

end

end A347803.P14637594564627766500

/-! ## A347803.P1903555831594018856

`A055089(A091809(n+1))*A285716(n+1)*A037216(n)`
-/

namespace A347803.P1903555831594018856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (A091809 (n + 1)).toNat * A285716 (n + 1) * A037216 n

end

end A347803.P1903555831594018856

/-! ## A347803.P13318453536296774293

`A074698(n+5)%A001156(A175969(n+1))*A037216(n)`
-/

namespace A347803.P13318453536296774293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074698 (n + 5)) (A001156 (A175969 (n + 1)).toNat) * A037216 n

end

end A347803.P13318453536296774293

/-! ## A347803.P6670731941652748227

`and(A176837(2*n+1)^4, A007961(n+1))`
-/

namespace A347803.P6670731941652748227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176837 (2 * n + 1) ^ 4) (A007961 (n + 1))

end

end A347803.P6670731941652748227

/-! ## A347803.P4528602514563531741

`A122224(n+1)%A255009(floor((n+1)*sqrt(3)))`
-/

namespace A347803.P4528602514563531741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122224 (n + 1)) (A255009 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat)

end

end A347803.P4528602514563531741

/-!
# A347805: Expansion of (theta_3(x) - 1)^2 / (2 * (3 - theta_3(x))).

The programs for A347805, there is no canonical definition to state claims against.
-/

/-! ## A347805.P4255485059550977707

`A006456(n+2)-A010052(n+2)`
-/

namespace A347805.P4255485059550977707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (n + 2) - A010052 (n + 2)

end

end A347805.P4255485059550977707

/-! ## A347805.P12115921245202627738

`A006456(n+2)-Δ[A000196(n+1)]`
-/

namespace A347805.P12115921245202627738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (n + 2) - (f1 (n + 1) - f1 n)

end

end A347805.P12115921245202627738

/-! ## A347805.P7165110344408443209

`A006456(n+2)-and(1, A000005(n+2))`
-/

namespace A347805.P7165110344408443209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (n + 2) - Int.land 1 (A000005 (n + 2))

end

end A347805.P7165110344408443209

/-! ## A347805.P5716713313866380070

`Δ[A303667(n+1)]-A010052(n+2)`
-/

namespace A347805.P5716713313866380070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010052 (n + 2)

end

end A347805.P5716713313866380070

/-!
# A347806: Expansion of (theta_3(x) - 1)^3 / (4 * (3 - theta_3(x))).

The programs for A347806, there is no canonical definition to state claims against.
-/

/-! ## A347806.P17484636505439356153

`A006456(n+3)-A002654(n+3)`
-/

namespace A347806.P17484636505439356153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (n + 3) - A002654 (n + 3)

end

end A347806.P17484636505439356153

/-!
# A347807: Expansion of (theta_3(x) - 1)^4 / (8 * (3 - theta_3(x))).

The programs for A347807, there is no canonical definition to state claims against.
-/

/-! ## A347807.P1702520880614954752

`A006456(n+4)-A347710(n+4)`
-/

namespace A347807.P1702520880614954752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (n + 4) - A347710 (n + 4)

end

end A347807.P1702520880614954752

/-!
# A347808: Expansion of (theta_3(x) - 1)^5 / (16 * (3 - theta_3(x))).

The programs for A347808, there is no canonical definition to state claims against.
-/

/-! ## A347808.P13073115918573437932

`A006456(n+5)-A347711(n+5)`
-/

namespace A347808.P13073115918573437932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (n + 5) - A347711 (n + 5)

end

end A347808.P13073115918573437932

/-! ## A347808.P2672909099911686523

`A000194(A347807(n+4)*A347809(n+6))`
-/

namespace A347808.P2672909099911686523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A347807 (n + 4) * A347809 (n + 6)).toNat

end

end A347808.P2672909099911686523

/-! ## A347808.P812092794823809704

`A000194((A006456(n+4)-A347710(n+4))*A347809(n+6))`
-/

namespace A347808.P812092794823809704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A006456 (n + 4) - A347710 (n + 4)) * A347809 (n + 6)).toNat

end

end A347808.P812092794823809704

/-! ## A347808.P3238456126228881644

`A000194((A006456(n+6)-A347712(n+6))*A347807(n+4))`
-/

namespace A347808.P3238456126228881644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A006456 (n + 6) - A347712 (n + 6)) * A347807 (n + 4)).toNat

end

end A347808.P3238456126228881644

/-! ## A347808.P5717028566863182725

`or(A015617(n+1), A126988(A033113(n+1)))`
-/

namespace A347808.P5717028566863182725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A015617 (n + 1)) (A126988 (A033113 (n + 1)).toNat)

end

end A347808.P5717028566863182725

/-!
# A347809: Expansion of (theta_3(x) - 1)^6 / (32 * (3 - theta_3(x))).

The programs for A347809, there is no canonical definition to state claims against.
-/

/-! ## A347809.P18252749070216107125

`A006456(n+6)-A347712(n+6)`
-/

namespace A347809.P18252749070216107125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (n + 6) - A347712 (n + 6)

end

end A347809.P18252749070216107125

/-!
# A347810: 

The programs for A347810, there is no canonical definition to state claims against.
-/

/-! ## A347810.P10565325864564596330

`A347811(∑[4*n])`
-/

namespace A347810.P10565325864564596330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347811 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347810.P10565325864564596330

/-!
# A347812: Number of n-dimensional lattice walks from {2}^n to {0}^n using steps that decrease the Euclidean distance to the origin and that change each coordinate by at most 1.

The programs for A347812, there is no canonical definition to state claims against.
-/

/-! ## A347812.P15912635629527508357

`A347811(∑[n+2]+3)`
-/

namespace A347812.P15912635629527508357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347811 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A347812.P15912635629527508357

/-!
# A347813: Number of cubic lattice walks from (n,n,n) to (0,0,0) using steps that decrease the Euclidean distance to the origin and that change each coordinate by at most 1.

The programs for A347813, there is no canonical definition to state claims against.
-/

/-! ## A347813.P15640225620850235057

`A347811(eq[4, A193739(n)])`
-/

namespace A347813.P15640225620850235057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347813.P15640225620850235057

/-! ## A347813.P15070368047905084017

`A347811(A052905(n+1)+1)`
-/

namespace A347813.P15070368047905084017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347811 (A052905 (n + 1) + 1).toNat

end

end A347813.P15070368047905084017

/-!
# A347814: Number of walks on square lattice from (n,0) to (0,0) using steps that decrease the Euclidean distance to the origin and that change each coordinate by at most 1.

The programs for A347814, there is no canonical definition to state claims against.
-/

/-! ## A347814.P6918096355290885258

`A346538(∑[n])`
-/

namespace A347814.P6918096355290885258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346538 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347814.P6918096355290885258

/-! ## A347814.P248372570399208040

`or(1, A346538(A000096(n)))`
-/

namespace A347814.P248372570399208040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A346538 (A000096 n).toNat)

end

end A347814.P248372570399208040

/-! ## A347814.P13541743197836957070

`or(1, A346538(A000217(n)))`
-/

namespace A347814.P13541743197836957070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A346538 (A000217 n).toNat)

end

end A347814.P13541743197836957070

/-! ## A347814.P14430089481329538629

`or(1, A346538(A277209(n)))`
-/

namespace A347814.P14430089481329538629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A346538 (A277209 n).toNat)

end

end A347814.P14430089481329538629

/-! ## A347814.P16525112602469297508

`A346538(A000096(n))+A308857(n)`
-/

namespace A347814.P16525112602469297508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346538 (A000096 n).toNat + A308857 n

end

end A347814.P16525112602469297508

/-!
# A347815: Prime numbers p such that both 30 and 105 are quadratic nonresidue (mod p).

The programs for A347815, there is no canonical definition to state claims against.
-/

/-! ## A347815.P16440519088768714131

`∩[A035257(n+1), A038904(n+1)]`
-/

namespace A347815.P16440519088768714131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347815.P16440519088768714131

/-! ## A347815.P15237534296601510702

`∩[A038885(n+1), A038904(n+1)]`
-/

namespace A347815.P15237534296601510702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347815.P15237534296601510702

/-!
# A347816: Prime numbers p such that both 15 and 85 are quadratic nonresidue (mod p).

The programs for A347816, there is no canonical definition to state claims against.
-/

/-! ## A347816.P16264955784708993488

`∩[A038888(n+1), A038929(n+1)]`
-/

namespace A347816.P16264955784708993488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347816.P16264955784708993488

/-! ## A347816.P10182584578234771936

`∩[A038888(n+1), A038972(n+1)]`
-/

namespace A347816.P10182584578234771936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347816.P10182584578234771936

/-! ## A347816.P5872319744724443481

`∩[A038929(n+1), A038972(n+1)]`
-/

namespace A347816.P5872319744724443481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347816.P5872319744724443481

/-! ## A347816.P2727489265518127107

`∩[p?[(n+1)*(1-A035197(n+1))], A038929(n+1)]`
-/

namespace A347816.P2727489265518127107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A035197 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A347816.P2727489265518127107

/-! ## A347816.P1231334007540625291

`∩[p?[(n+1)*(1-A035197(n+1))], A038972(n+1)]`
-/

namespace A347816.P1231334007540625291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A035197 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A347816.P1231334007540625291

/-!
# A347818: Smallest n-digit brilliant number.

The programs for A347818, there is no canonical definition to state claims against.
-/

/-! ## A347818.P7473225005952122643

`A083289(n)+A011557(n)`
-/

namespace A347818.P7473225005952122643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083289 n + A011557 n

end

end A347818.P7473225005952122643

/-! ## A347818.P4182947753360333800

`A083289(n)+Δ[A002275(n)]`
-/

namespace A347818.P4182947753360333800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083289 n + (f1 (n + 1) - f1 n)

end

end A347818.P4182947753360333800

/-! ## A347818.P3046070264966160368

`A083289(n)+Δ[A047855(n)]`
-/

namespace A347818.P3046070264966160368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083289 n + (f1 (n + 1) - f1 n)

end

end A347818.P3046070264966160368

/-! ## A347818.P10926260963209212628

`A083289(n)+A004643(2*n)`
-/

namespace A347818.P10926260963209212628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083289 n + A004643 (2 * n)

end

end A347818.P10926260963209212628

/-! ## A347818.P15409933022731936331

`A083289(n)+A017934(2*n)`
-/

namespace A347818.P15409933022731936331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083289 n + A017934 (2 * n)

end

end A347818.P15409933022731936331

/-!
# A347819: Minimal elements for the base-10 representations of the primes greater than 10.

The programs for A347819, there is no canonical definition to state claims against.
-/

/-! ## A347819.P13298951320013390955

`p?[or(A016210(n), A108871(n+1))]`
-/

namespace A347819.P13298951320013390955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016210 n) (A108871 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347819.P13298951320013390955

/-! ## A347819.P9290911476576171741

`p?[or(A025426(n), A108871(n+1))]`
-/

namespace A347819.P9290911476576171741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025426 n) (A108871 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347819.P9290911476576171741

/-! ## A347819.P7766831919787260129

`p?[or(A102677(n), A108871(n+1))]`
-/

namespace A347819.P7766831919787260129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102677 n) (A108871 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347819.P7766831919787260129

/-! ## A347819.P10058472721830052683

`p?[or(A108871(n+1), A293162(n))]`
-/

namespace A347819.P10058472721830052683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108871 (n + 1)) (A293162 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347819.P10058472721830052683

/-! ## A347819.P13409266364915269868

`p?[A326291(n+1)+A108871(n+1)]`
-/

namespace A347819.P13409266364915269868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A108871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347819.P13409266364915269868

/-!
# A347823: Triangle read by rows: T(n,k) = (n+k+1)*binomial(n,k), 0 <= k <= n.

The programs for A347823, the canonical program `A347823.P13243761439211694045` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347823 has offset 0).

The definition of A347823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347823.P15655977632039707

`(C(comp[∑[n]]-n, 2)-n)*A029637(n+1)`
-/

namespace A347823.P15655977632039707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A029637 (n + 1)

end

end A347823.P15655977632039707

namespace A347823

/-- `(C(comp[∑[n]]-n, 2)-n)*A029637(n+1)` -/
def P15655977632039707.Spec : Prop :=
  ∀ n, P15655977632039707.a n = A347823 n

end A347823

/-! ## A347823.P3074347408599959391

`(n+1-C(∑[char[∑[n+1]]], 2))*A007318(n)`
-/

namespace A347823.P3074347408599959391
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A007318 n

end

end A347823.P3074347408599959391

namespace A347823

/-- `(n+1-C(∑[char[∑[n+1]]], 2))*A007318(n)` -/
def P3074347408599959391.Spec : Prop :=
  ∀ n, P3074347408599959391.a n = A347823 n

end A347823

/-! ## A347823.P13243761439211694045

`A132775(n)-A216973(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A347823

/-- `A132775(n)-A216973(n)` -/
def P13243761439211694045.Spec : Prop :=
  ∀ n, P13243761439211694045.a n = A347823 n

theorem P13243761439211694045.correct : P13243761439211694045.Spec := by
  intro n
  simp only [A347823]

end A347823

/-! ## A347823.P10222194550067223940

`A216973(n)+A116666(n+1)`
-/

namespace A347823.P10222194550067223940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n + A116666 (n + 1)

end

end A347823.P10222194550067223940

namespace A347823

/-- `A216973(n)+A116666(n+1)` -/
def P10222194550067223940.Spec : Prop :=
  ∀ n, P10222194550067223940.a n = A347823 n

end A347823

/-! ## A347823.P17943958906332319404

`A007318(n)*(A051162(n)+1)`
-/

namespace A347823.P17943958906332319404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * (A051162 n + 1)

end

end A347823.P17943958906332319404

namespace A347823

/-- `A007318(n)*(A051162(n)+1)` -/
def P17943958906332319404.Spec : Prop :=
  ∀ n, P17943958906332319404.a n = A347823 n

end A347823

/-! ## A347823.P5487561657144560238

`A007318(n)*A094727(n+1)`
-/

namespace A347823.P5487561657144560238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A094727 (n + 1)

end

end A347823.P5487561657144560238

namespace A347823

/-- `A007318(n)*A094727(n+1)` -/
def P5487561657144560238.Spec : Prop :=
  ∀ n, P5487561657144560238.a n = A347823 n

end A347823

/-! ## A347823.P2721023873629102862

`2*A103406(n)-A055137(n)`
-/

namespace A347823.P2721023873629102862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103406 n - A055137 n

end

end A347823.P2721023873629102862

namespace A347823

/-- `2*A103406(n)-A055137(n)` -/
def P2721023873629102862.Spec : Prop :=
  ∀ n, P2721023873629102862.a n = A347823 n

end A347823

/-! ## A347823.P11300234931213788278

`Δ[A102363(n)]*A094727(n+1)`
-/

namespace A347823.P11300234931213788278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A094727 (n + 1)

end

end A347823.P11300234931213788278

namespace A347823

/-- `Δ[A102363(n)]*A094727(n+1)` -/
def P11300234931213788278.Spec : Prop :=
  ∀ n, P11300234931213788278.a n = A347823 n

end A347823

/-! ## A347823.P2132047270595803566

`A004736(n+1)*A029637(n+1)`
-/

namespace A347823.P2132047270595803566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A029637 (n + 1)

end

end A347823.P2132047270595803566

namespace A347823

/-- `A004736(n+1)*A029637(n+1)` -/
def P2132047270595803566.Spec : Prop :=
  ∀ n, P2132047270595803566.a n = A347823 n

end A347823

/-! ## A347823.P947316340205564100

`(A108872(n+1)-1)*A007318(n)`
-/

namespace A347823.P947316340205564100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) - 1) * A007318 n

end

end A347823.P947316340205564100

namespace A347823

/-- `(A108872(n+1)-1)*A007318(n)` -/
def P947316340205564100.Spec : Prop :=
  ∀ n, P947316340205564100.a n = A347823 n

end A347823

/-! ## A347823.P1364685897312045419

`floor(sqrt(A214604(n+1)))*A007318(n)`
-/

namespace A347823.P1364685897312045419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A214604 (n + 1)) * A007318 n

end

end A347823.P1364685897312045419

namespace A347823

/-- `floor(sqrt(A214604(n+1)))*A007318(n)` -/
def P1364685897312045419.Spec : Prop :=
  ∀ n, P1364685897312045419.a n = A347823 n

end A347823

/-! ## A347823.P31102721635059028

`A003506(n+1)+A103406(n)-A007318(n)`
-/

namespace A347823.P31102721635059028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) + (A103406 n - A007318 n)

end

end A347823.P31102721635059028

namespace A347823

/-- `A003506(n+1)+A103406(n)-A007318(n)` -/
def P31102721635059028.Spec : Prop :=
  ∀ n, P31102721635059028.a n = A347823 n

end A347823

/-! ## A347823.P11677699401679634664

`A105725(n+1)/A377660(n)`
-/

namespace A347823.P11677699401679634664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105725 (n + 1) : ℚ) / (A377660 n : ℚ)

end

end A347823.P11677699401679634664

namespace A347823

/-- `A105725(n+1)/A377660(n)` -/
def P11677699401679634664.Spec : Prop :=
  ∀ n, P11677699401679634664.a n = (A347823 n : ℚ)

end A347823

/-!
# A347825: Number of ways to cut a 2 X n rectangle into rectangles with integer sides up to symmetries of the rectangle.

The programs for A347825, there is no canonical definition to state claims against.
-/

/-! ## A347825.P11587803080426052291

`A007203(A071740(n))`
-/

namespace A347825.P11587803080426052291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007203 (A071740 n).toNat

end

end A347825.P11587803080426052291

/-! ## A347825.P14410878274834661159

`Δ[A156562(A108555(n))]`
-/

namespace A347825.P14410878274834661159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A108555 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347825.P14410878274834661159

/-!
# A347826: Numbers k with at least one odd semiprime divisor < k.

The programs for A347826, there is no canonical definition to state claims against.
-/

/-! ## A347826.P4007210214706860931

`lt[n+2, A378548(n+1)]+1`
-/

namespace A347826.P4007210214706860931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347826.P4007210214706860931

/-! ## A347826.P8748660061695620229

`lt[gcd(2, n), A087436(n+1)]+1`
-/

namespace A347826.P8748660061695620229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347826.P8748660061695620229

/-! ## A347826.P7844406615235013607

`lt[2^val(n+1, 2), A028422(n+1)]+1`
-/

namespace A347826.P7844406615235013607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347826.P7844406615235013607

/-! ## A347826.P13874652084626624470

`lt[A066048(n+1), (n+1)/2^val(n+1, 2)]+1`
-/

namespace A347826.P13874652084626624470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A347826.P13874652084626624470

/-! ## A347826.P3932727596083142074

`lt[1, A328959(A008574(n))]`
-/

namespace A347826.P3932727596083142074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328959 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A347826.P3932727596083142074

/-! ## A347826.P2510191859230091763

`lt[2, A328959(A273769(n))]+1`
-/

namespace A347826.P2510191859230091763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328959 (A273769 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347826.P2510191859230091763

/-! ## A347826.P2468046528657434752

`lt[A219964(n)+1, A166974(n)]`
-/

namespace A347826.P2468046528657434752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347826.P2468046528657434752

/-! ## A347826.P3012825262566897248

`lt[A219964(n)+1, A226378(n)]`
-/

namespace A347826.P3012825262566897248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347826.P3012825262566897248

/-! ## A347826.P3535841548115707745

`lt[A340371(A032742(n+1)), 1]+1`
-/

namespace A347826.P3535841548115707745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (A032742 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A347826.P3535841548115707745

/-! ## A347826.P4898471946854424265

`lt[2, A000005(A093803(n+1))]+1`
-/

namespace A347826.P4898471946854424265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A093803 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347826.P4898471946854424265

/-!
# A347828: Numbers in A037019 that are not the same as the corresponding number in A005179.

The programs for A347828, there is no canonical definition to state claims against.
-/

/-! ## A347828.P10655233941284308343

`A037019(A072066(n+1))`
-/

namespace A347828.P10655233941284308343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (A072066 (n + 1)).toNat

end

end A347828.P10655233941284308343

/-! ## A347828.P9430155763399823535

`∑{d}[A072066(n+1), A130113(#)]`
-/

namespace A347828.P9430155763399823535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A130113 d

end

end A347828.P9430155763399823535

/-! ## A347828.P14905556207098380464

`A037019(eq[1, A323510(n+1)]+1)`
-/

namespace A347828.P14905556207098380464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A347828.P14905556207098380464

/-! ## A347828.P9255048592233906332

`∑{d}[eq[1, A323510(n+1)]+1, A130113(#)]`
-/

namespace A347828.P9255048592233906332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323510 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130113 d

end

end A347828.P9255048592233906332

/-!
# A347829: a(n) = Sum_{k=0..n} 2^k * A000041(k) * A000009(n-k).

The programs for A347829, there is no canonical definition to state claims against.
-/

/-! ## A347829.P17356584438470836950

`A260084(A001906(n))+A002773(n)`
-/

namespace A347829.P17356584438470836950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260084 (A001906 n).toNat + A002773 n

end

end A347829.P17356584438470836950

/-! ## A347829.P10391326761391604707

`A331489(A000079(n))+A032766(n)`
-/

namespace A347829.P10391326761391604707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331489 (A000079 n).toNat + A032766 n

end

end A347829.P10391326761391604707

/-!
# A347830: a(n) = Sum_{k=0..n} 2^k * A000009(k) * A000041(n-k).

The programs for A347830, there is no canonical definition to state claims against.
-/

/-! ## A347830.P2678330587799535134

`A292729(A024368(n+2))`
-/

namespace A347830.P2678330587799535134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292729 (A024368 (n + 2)).toNat

end

end A347830.P2678330587799535134

/-!
# A347831: The positive integer moduli a(n) for which the congruence x*(x + 1) == -4 (mod a(n)) is solvable for integer x (representatives from {0, 1, ..., a(n)-1}); in increasing order.

The programs for A347831, there is no canonical definition to state claims against.
-/

/-! ## A347831.P15722185594099409904

`record[gcd(A002024(n+1), A143855(n+1))]`
-/

namespace A347831.P15722185594099409904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002024 (n + 1)) (A143855 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347831.P15722185594099409904

/-! ## A347831.P4985788660767447341

`record[gcd(A000196(2*(n+1)), A027689(n))]`
-/

namespace A347831.P4985788660767447341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (2 * (n + 1))) (A027689 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347831.P4985788660767447341

/-! ## A347831.P7652009103433424404

`record[gcd(A000196(2*n+3), A340266(n+1))]`
-/

namespace A347831.P7652009103433424404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (2 * n + 3)) (A340266 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347831.P7652009103433424404

/-! ## A347831.P17795241282527526980

`record[gcd(A000196(2*(n+2)), A152948(n+4))]`
-/

namespace A347831.P17795241282527526980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (2 * (n + 2))) (A152948 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347831.P17795241282527526980

/-!
# A347832: Irregular triangle T, read by rows, giving the solutions x for x*(x + 1) == -4 (mod A347831 (n)), for x from {0, 1, 2, ..., A347831(n)-1}, for n >= 1.

The programs for A347832, there is no canonical definition to state claims against.
-/

/-! ## A347832.P1874668283058818030

`A004128(A194563(n))%A086525(n+1)`
-/

namespace A347832.P1874668283058818030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004128 (A194563 n).toNat) (A086525 (n + 1))

end

end A347832.P1874668283058818030

/-! ## A347832.P4970728226112888436

`∑{e}[A012864(n), A088521(#)]`
-/

namespace A347832.P4970728226112888436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A088521 (Nat.factorization (f1 n).natAbs p)

end

end A347832.P4970728226112888436

/-! ## A347832.P1308526305243486641

`∑{e}[A012864(n), A098601(#)]`
-/

namespace A347832.P1308526305243486641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A098601 (Nat.factorization (f1 n).natAbs p)

end

end A347832.P1308526305243486641

/-! ## A347832.P9761478250142054838

`∑{e}[A012864(n), A194485(#)]`
-/

namespace A347832.P9761478250142054838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A194485 (Nat.factorization (f1 n).natAbs p)

end

end A347832.P9761478250142054838

/-! ## A347832.P18372205280201628776

`∑{e}[A012864(n), A272727(#)]`
-/

namespace A347832.P18372205280201628776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A272727 (Nat.factorization (f1 n).natAbs p)

end

end A347832.P18372205280201628776

/-!
# A347833: Number of solutions to the congruence (x+1)*x + 4 == 0 (mod A347831(n)).

The programs for A347833, there is no canonical definition to state claims against.
-/

/-! ## A347833.P4247321890140053747

`A035175(∏{p}[A347831(n+1), #])`
-/

namespace A347833.P4247321890140053747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035175 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A347833.P4247321890140053747

/-! ## A347833.P12531342174807023674

`A123864(∏{p}[A347831(n+1), #])`
-/

namespace A347833.P12531342174807023674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123864 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A347833.P12531342174807023674

/-! ## A347833.P16658338977403887113

`∏{p}[A347831(n+1), A316569(#)+1]`
-/

namespace A347833.P16658338977403887113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A316569 p + 1)

end

end A347833.P16658338977403887113

/-! ## A347833.P11277769463892858622

`A000079(∑{p}[A347831(n+1), A316569(#)])`
-/

namespace A347833.P11277769463892858622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A316569 p).toNat

end

end A347833.P11277769463892858622

/-! ## A347833.P12885933792220758073

`A000124(∑{p}[A347831(n+1), A316569(#)])`
-/

namespace A347833.P12885933792220758073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A316569 p).toNat

end

end A347833.P12885933792220758073

/-! ## A347833.P7407447056543225547

`A004277(∑{p}[A347831(n+1), A316569(#)])`
-/

namespace A347833.P7407447056543225547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A316569 p).toNat

end

end A347833.P7407447056543225547

/-! ## A347833.P7133284451808129545

`A000217(∑{p}[A347831(n+1), A316569(#)])+1`
-/

namespace A347833.P7133284451808129545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A316569 p).toNat + 1

end

end A347833.P7133284451808129545

/-! ## A347833.P9306040679737257461

`A000009(3*∑{p}[A347831(n+1), A316569(#)])`
-/

namespace A347833.P9306040679737257461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (3 * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A316569 p)).toNat

end

end A347833.P9306040679737257461

/-! ## A347833.P9463231490318334181

`A000040(∑{p}[A347831(n+1), A316569(#)]+1)-1`
-/

namespace A347833.P9463231490318334181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A316569 p + 1).toNat - 1

end

end A347833.P9463231490318334181

/-! ## A347833.P16719549049444151190

`A000010(2*∑{p}[A347831(n+1), A316569(#)]+1)`
-/

namespace A347833.P16719549049444151190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A316569 p) + 1).toNat

end

end A347833.P16719549049444151190

/-!
# A347834: An array A of the positive odd numbers, read by antidiagonals upwards, giving the present triangle T.

The programs for A347834, there is no canonical definition to state claims against.
-/

/-! ## A347834.P14314919411306014327

`2*A191669(A038722(n+1))-1`
-/

namespace A347834.P14314919411306014327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191669 (A038722 (n + 1)).toNat - 1

end

end A347834.P14314919411306014327

/-! ## A347834.P4885293565392756760

`2*A191669(A061579(n)+1)-1`
-/

namespace A347834.P4885293565392756760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191669 (A061579 n + 1).toNat - 1

end

end A347834.P4885293565392756760

/-! ## A347834.P16555880921047230631

`A008683(A007918(n))+2*A191669(A038722(n+1))`
-/

namespace A347834.P16555880921047230631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 2 * A191669 (A038722 (n + 1)).toNat

end

end A347834.P16555880921047230631

/-! ## A347834.P4558998183653393853

`A008683(A020484(n))+2*A191669(A038722(n+1))`
-/

namespace A347834.P4558998183653393853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat + 2 * A191669 (A038722 (n + 1)).toNat

end

end A347834.P4558998183653393853

/-! ## A347834.P4248443903202053306

`A008683(A060264(n))+2*A191669(A038722(n+1))`
-/

namespace A347834.P4248443903202053306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060264 n).toNat + 2 * A191669 (A038722 (n + 1)).toNat

end

end A347834.P4248443903202053306

/-! ## A347834.P8451105396029153895

`A008683(A112046(n+1))+2*A191669(A038722(n+1))`
-/

namespace A347834.P8451105396029153895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A112046 (n + 1)).toNat + 2 * A191669 (A038722 (n + 1)).toNat

end

end A347834.P8451105396029153895

/-! ## A347834.P2502260445908276604

`A008683(A055781(n+1))+2*A191669(A038722(n+1))`
-/

namespace A347834.P2502260445908276604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A055781 (n + 1)).toNat + 2 * A191669 (A038722 (n + 1)).toNat

end

end A347834.P2502260445908276604

/-! ## A347834.P12997136805953361186

`A008683(A002148(n))+2*A191669(A038722(n+1))`
-/

namespace A347834.P12997136805953361186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002148 n).toNat + 2 * A191669 (A038722 (n + 1)).toNat

end

end A347834.P12997136805953361186

/-! ## A347834.P10975062629376457208

`floor(2*A347839(n+1)/3)`
-/

namespace A347834.P10975062629376457208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A347839 (n + 1) : ℚ) / 3⌋

end

end A347834.P10975062629376457208

/-! ## A347834.P6079449823816749118

`A347839(n+1)-A191669(A038722(n+1))`
-/

namespace A347834.P6079449823816749118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347839 (n + 1) - A191669 (A038722 (n + 1)).toNat

end

end A347834.P6079449823816749118

/-!
# A347836: a(n) = 8*(n + floor(n/3)) - 3; second column of A347834.

The programs for A347836, the canonical program `A347836.P16669764809941260236` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347836 has offset 1).

The definition of A347836 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(n+1+floor((n+1)/3))-3` (program `A347836.P16669764809941260236`, by `A347836.P16669764809941260236.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A347836.P16669764809941260236

`8*(n+1+floor((n+1)/3))-3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A347836

/-- `8*(n+1+floor((n+1)/3))-3` -/
def P16669764809941260236.Spec : Prop :=
  ∀ n, P16669764809941260236.a n = A347836 (n + 1)

theorem P16669764809941260236.correct : P16669764809941260236.Spec := by
  intro n
  simp only [A347836, Nat.add_sub_cancel]

end A347836

/-! ## A347836.P5941845982013805997

`((A319451(n+1)-1)*8-1)/3`
-/

namespace A347836.P5941845982013805997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A319451 (n + 1) - 1) * 8 - 1 : ℚ) / 3

end

end A347836.P5941845982013805997

namespace A347836

/-- `((A319451(n+1)-1)*8-1)/3` -/
def P5941845982013805997.Spec : Prop :=
  ∀ n, P5941845982013805997.a n = (A347836 (n + 1) : ℚ)

end A347836

/-! ## A347836.P12725687437174429203

`((3*A047529(n+1)+1)*4-1)/3`
-/

namespace A347836.P12725687437174429203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * A047529 (n + 1) + 1) * 4 - 1 : ℚ) / 3

end

end A347836.P12725687437174429203

namespace A347836

/-- `((3*A047529(n+1)+1)*4-1)/3` -/
def P12725687437174429203.Spec : Prop :=
  ∀ n, P12725687437174429203.a n = (A347836 (n + 1) : ℚ)

end A347836

/-! ## A347836.P14344079969790812189

`∑[abs(a(n-3))]` with `a(0)=5, a(1)=8, a(2)=16, a(3)=8`
-/

namespace A347836.P14344079969790812189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 8, 16, 8] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347836.P14344079969790812189

namespace A347836

/-- `∑[abs(a(n-3))]` -/
def P14344079969790812189.Spec : Prop :=
  ∀ n, (P14344079969790812189.a n : ℤ) = A347836 (n + 1)

end A347836

/-! ## A347836.P8530536792153879041

`∑[floor(a(n-3))]` with `a(0)=5, a(1)=8, a(2)=16, a(3)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A347836.P8530536792153879041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 8, 16, 8] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347836.P8530536792153879041

namespace A347836

/-- `∑[floor(a(n-3))]` -/
def P8530536792153879041.Spec : Prop :=
  ∀ n, (P8530536792153879041.a n : ℤ) = A347836 (n + 1)

end A347836

/-! ## A347836.P11568158798419032532

`∑[ceil(a(n-3))]` with `a(0)=5, a(1)=8, a(2)=16, a(3)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A347836.P11568158798419032532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 8, 16, 8] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347836.P11568158798419032532

namespace A347836

/-- `∑[ceil(a(n-3))]` -/
def P11568158798419032532.Spec : Prop :=
  ∀ n, (P11568158798419032532.a n : ℤ) = A347836 (n + 1)

end A347836

/-! ## A347836.P88685844604449530

`∑[round(a(n-3))]` with `a(0)=5, a(1)=8, a(2)=16, a(3)=8`

`round` is left out, it is the identity on integers.
-/

namespace A347836.P88685844604449530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 8, 16, 8] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347836.P88685844604449530

namespace A347836

/-- `∑[round(a(n-3))]` -/
def P88685844604449530.Spec : Prop :=
  ∀ n, (P88685844604449530.a n : ℤ) = A347836 (n + 1)

end A347836

/-! ## A347836.P8111564045974165509

`record[4*and(n+2, n-1)-3]`
-/

namespace A347836.P8111564045974165509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (n + 2 : ℤ) ((n : ℤ) - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347836.P8111564045974165509

namespace A347836

/-- `record[4*and(n+2, n-1)-3]` -/
def P8111564045974165509.Spec : Prop :=
  ∀ n, P8111564045974165509.a n = A347836 (n + 1)

end A347836

/-! ## A347836.P15584127942821488425

`floor(A347837(n+1)/4)`
-/

namespace A347836.P15584127942821488425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A347837 (n + 1) : ℚ) / 4⌋

end

end A347836.P15584127942821488425

namespace A347836

/-- `floor(A347837(n+1)/4)` -/
def P15584127942821488425.Spec : Prop :=
  ∀ n, P15584127942821488425.a n = A347836 (n + 1)

end A347836

/-! ## A347836.P15227271841485260263

`∪[A238477(n+1), A082285(n)]`
-/

namespace A347836.P15227271841485260263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347836.P15227271841485260263

namespace A347836

/-- `∪[A238477(n+1), A082285(n)]` -/
def P15227271841485260263.Spec : Prop :=
  ∀ n, (P15227271841485260263.a n : ℤ) = A347836 (n + 1)

end A347836

/-! ## A347836.P4834277989307263231

`record[xor(n, and(14, n)+5)]`
-/

namespace A347836.P4834277989307263231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land 14 n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347836.P4834277989307263231

namespace A347836

/-- `record[xor(n, and(14, n)+5)]` -/
def P4834277989307263231.Spec : Prop :=
  ∀ n, (P4834277989307263231.a n : ℤ) = A347836 (n + 1)

end A347836

/-! ## A347836.P763280379015178627

`A004770(comp[3*n+n+2]+1)`
-/

namespace A347836.P763280379015178627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A347836.P763280379015178627

namespace A347836

/-- `A004770(comp[3*n+n+2]+1)` -/
def P763280379015178627.Spec : Prop :=
  ∀ n, P763280379015178627.a n = A347836 (n + 1)

end A347836

/-! ## A347836.P14143001653055495600

`A004766(A047529(n+1))`
-/

namespace A347836.P14143001653055495600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A047529 (n + 1)).toNat

end

end A347836.P14143001653055495600

namespace A347836

/-- `A004766(A047529(n+1))` -/
def P14143001653055495600.Spec : Prop :=
  ∀ n, P14143001653055495600.a n = A347836 (n + 1)

end A347836

/-! ## A347836.P13967328493822487524

`A168392(A047531(n+1))`
-/

namespace A347836.P13967328493822487524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168392 (A047531 (n + 1)).toNat

end

end A347836.P13967328493822487524

namespace A347836

/-- `A168392(A047531(n+1))` -/
def P13967328493822487524.Spec : Prop :=
  ∀ n, P13967328493822487524.a n = A347836 (n + 1)

end A347836

/-! ## A347836.P332243735468348605

`A168392(A047537(n+1))`
-/

namespace A347836.P332243735468348605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168392 (A047537 (n + 1)).toNat

end

end A347836.P332243735468348605

namespace A347836

/-- `A168392(A047537(n+1))` -/
def P332243735468348605.Spec : Prop :=
  ∀ n, P332243735468348605.a n = A347836 (n + 1)

end A347836

/-! ## A347836.P15811518445097426766

`A168392(A047539(n+1))`
-/

namespace A347836.P15811518445097426766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168392 (A047539 (n + 1)).toNat

end

end A347836.P15811518445097426766

namespace A347836

/-- `A168392(A047539(n+1))` -/
def P15811518445097426766.Spec : Prop :=
  ∀ n, P15811518445097426766.a n = A347836 (n + 1)

end A347836

/-! ## A347836.P3603668936217732217

`A047608(A047464(n+2))`
-/

namespace A347836.P3603668936217732217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047608 (A047464 (n + 2)).toNat

end

end A347836.P3603668936217732217

namespace A347836

/-- `A047608(A047464(n+2))` -/
def P3603668936217732217.Spec : Prop :=
  ∀ n, P3603668936217732217.a n = A347836 (n + 1)

end A347836

/-! ## A347836.P18412728039485686206

`A168392(A047462(n+2))`
-/

namespace A347836.P18412728039485686206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168392 (A047462 (n + 2)).toNat

end

end A347836.P18412728039485686206

namespace A347836

/-- `A168392(A047462(n+2))` -/
def P18412728039485686206.Spec : Prop :=
  ∀ n, P18412728039485686206.a n = A347836 (n + 1)

end A347836

/-! ## A347836.P5296594709500800822

`A168392(A047472(n+2))`
-/

namespace A347836.P5296594709500800822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168392 (A047472 (n + 2)).toNat

end

end A347836.P5296594709500800822

namespace A347836

/-- `A168392(A047472(n+2))` -/
def P5296594709500800822.Spec : Prop :=
  ∀ n, P5296594709500800822.a n = A347836 (n + 1)

end A347836

/-!
# A347837: a(n) = 32*(n + floor(n/3)) - 11; third column of A347834.

The programs for A347837, the canonical program `A347837.P11468036944160399699` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347837 has offset 1).

The definition of A347837 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*(n+1+floor((n+1)/3))-11` (program `A347837.P11468036944160399699`, by `A347837.P11468036944160399699.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A347837.P11468036944160399699

`32*(n+1+floor((n+1)/3))-11`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A347837

/-- `32*(n+1+floor((n+1)/3))-11` -/
def P11468036944160399699.Spec : Prop :=
  ∀ n, P11468036944160399699.a n = A347837 (n + 1)

theorem P11468036944160399699.correct : P11468036944160399699.Spec := by
  intro n
  simp only [A347837, Nat.add_sub_cancel]

end A347837

/-! ## A347837.P3798917945010357375

`((A319451(n+1)-1)*32-1)/3`
-/

namespace A347837.P3798917945010357375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A319451 (n + 1) - 1) * 32 - 1 : ℚ) / 3

end

end A347837.P3798917945010357375

namespace A347837

/-- `((A319451(n+1)-1)*32-1)/3` -/
def P3798917945010357375.Spec : Prop :=
  ∀ n, P3798917945010357375.a n = (A347837 (n + 1) : ℚ)

end A347837

/-! ## A347837.P17309697892349532678

`((3*A047529(n+1)+1)*16-1)/3`
-/

namespace A347837.P17309697892349532678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * A047529 (n + 1) + 1) * 16 - 1 : ℚ) / 3

end

end A347837.P17309697892349532678

namespace A347837

/-- `((3*A047529(n+1)+1)*16-1)/3` -/
def P17309697892349532678.Spec : Prop :=
  ∀ n, P17309697892349532678.a n = (A347837 (n + 1) : ℚ)

end A347837

/-! ## A347837.P8764809186706614195

`∪[A239123(n+1), A239124(n+1)]`
-/

namespace A347837.P8764809186706614195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347837.P8764809186706614195

namespace A347837

/-- `∪[A239123(n+1), A239124(n+1)]` -/
def P8764809186706614195.Spec : Prop :=
  ∀ n, (P8764809186706614195.a n : ℤ) = A347837 (n + 1)

end A347837

/-! ## A347837.P17862074621238885166

`A170837(A047623(n+2))`
-/

namespace A347837.P17862074621238885166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (A047623 (n + 2)).toNat

end

end A347837.P17862074621238885166

namespace A347837

/-- `A170837(A047623(n+2))` -/
def P17862074621238885166.Spec : Prop :=
  ∀ n, P17862074621238885166.a n = A347837 (n + 1)

end A347837

/-! ## A347837.P2651721937380297628

`A170837(A047202(n+2)+n)`
-/

namespace A347837.P2651721937380297628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (A047202 (n + 2) + (n : ℤ)).toNat

end

end A347837.P2651721937380297628

namespace A347837

/-- `A170837(A047202(n+2)+n)` -/
def P2651721937380297628.Spec : Prop :=
  ∀ n, P2651721937380297628.a n = A347837 (n + 1)

end A347837

/-! ## A347837.P772079546235088713

`A004770(A349414(A347836(n+1)))`
-/

namespace A347837.P772079546235088713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (A349414 (A347836 (n + 1)).toNat).toNat

end

end A347837.P772079546235088713

namespace A347837

/-- `A004770(A349414(A347836(n+1)))` -/
def P772079546235088713.Spec : Prop :=
  ∀ n, P772079546235088713.a n = A347837 (n + 1)

end A347837

/-! ## A347837.P18022369734433672116

`A004770(A349414(A004770(A349414(A047529(n+1)))))`
-/

namespace A347837.P18022369734433672116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (A349414 (A004770 (A349414 (A047529 (n + 1)).toNat).toNat).toNat).toNat

end

end A347837.P18022369734433672116

namespace A347837

/-- `A004770(A349414(A004770(A349414(A047529(n+1)))))` -/
def P18022369734433672116.Spec : Prop :=
  ∀ n, P18022369734433672116.a n = A347837 (n + 1)

end A347837

/-! ## A347837.P2712955759891024295

`eq[5, A050292(val(12*n+4, 2))]`
-/

namespace A347837.P2712955759891024295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (SequenceMachineLib.valuation (12 * n + 4) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347837.P2712955759891024295

namespace A347837

/-- `eq[5, A050292(val(12*n+4, 2))]` -/
def P2712955759891024295.Spec : Prop :=
  ∀ n, (P2712955759891024295.a n : ℤ) = A347837 (n + 1)

end A347837

/-! ## A347837.P4632807594893564771

`A004766(A347836(n+1))`
-/

namespace A347837.P4632807594893564771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A347836 (n + 1)).toNat

end

end A347837.P4632807594893564771

namespace A347837

/-- `A004766(A347836(n+1))` -/
def P4632807594893564771.Spec : Prop :=
  ∀ n, P4632807594893564771.a n = A347837 (n + 1)

end A347837

/-! ## A347837.P16849557521183956311

`A047621(A347836(n+1)+1)`
-/

namespace A347837.P16849557521183956311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (A347836 (n + 1) + 1).toNat

end

end A347837.P16849557521183956311

namespace A347837

/-- `A047621(A347836(n+1)+1)` -/
def P16849557521183956311.Spec : Prop :=
  ∀ n, P16849557521183956311.a n = A347837 (n + 1)

end A347837

/-! ## A347837.P9773921370982884948

`A047436(A047436(A047529(n+1)))`
-/

namespace A347837.P9773921370982884948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047436 (A047436 (A047529 (n + 1)).toNat).toNat

end

end A347837.P9773921370982884948

namespace A347837

/-- `A047436(A047436(A047529(n+1)))` -/
def P9773921370982884948.Spec : Prop :=
  ∀ n, P9773921370982884948.a n = A347837 (n + 1)

end A347837

/-! ## A347837.P8515335296641558399

`A016813(A016813(A008854(n+1)+n+1))`
-/

namespace A347837.P8515335296641558399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A016813 (A008854 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A347837.P8515335296641558399

namespace A347837

/-- `A016813(A016813(A008854(n+1)+n+1))` -/
def P8515335296641558399.Spec : Prop :=
  ∀ n, P8515335296641558399.a n = A347837 (n + 1)

end A347837

/-! ## A347837.P4261647913489347841

`A016813(A016813(A047544(A004773(n+1))))`
-/

namespace A347837.P4261647913489347841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A016813 (A047544 (A004773 (n + 1)).toNat).toNat).toNat

end

end A347837.P4261647913489347841

namespace A347837

/-- `A016813(A016813(A047544(A004773(n+1))))` -/
def P4261647913489347841.Spec : Prop :=
  ∀ n, P4261647913489347841.a n = A347837 (n + 1)

end A347837

/-! ## A347837.P3386835764279193042

`eq[3, A007318(A087229(n))]`
-/

namespace A347837.P3386835764279193042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A087229 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347837.P3386835764279193042

namespace A347837

/-- `eq[3, A007318(A087229(n))]` -/
def P3386835764279193042.Spec : Prop :=
  ∀ n, (P3386835764279193042.a n : ℤ) = A347837 (n + 1)

end A347837

/-! ## A347837.P8131749143165986442

`A005408(2*A347836(n+1))`
-/

namespace A347837.P8131749143165986442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A347836 (n + 1)).toNat

end

end A347837.P8131749143165986442

namespace A347837

/-- `A005408(2*A347836(n+1))` -/
def P8131749143165986442.Spec : Prop :=
  ∀ n, P8131749143165986442.a n = A347837 (n + 1)

end A347837

/-! ## A347837.P12113811731946533533

`A047578(A016825(A016825(A042965(n+1))))`
-/

namespace A347837.P12113811731946533533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047578 (A016825 (A016825 (A042965 (n + 1)).toNat).toNat).toNat

end

end A347837.P12113811731946533533

namespace A347837

/-- `A047578(A016825(A016825(A042965(n+1))))` -/
def P12113811731946533533.Spec : Prop :=
  ∀ n, P12113811731946533533.a n = A347837 (n + 1)

end A347837

/-! ## A347837.P16216571575732409511

`A004773(A047464(A083032(A319451(n+1))))`
-/

namespace A347837.P16216571575732409511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A047464 (A083032 (A319451 (n + 1)).toNat).toNat).toNat

end

end A347837.P16216571575732409511

namespace A347837

/-- `A004773(A047464(A083032(A319451(n+1))))` -/
def P16216571575732409511.Spec : Prop :=
  ∀ n, P16216571575732409511.a n = A347837 (n + 1)

end A347837

/-!
# A347838: Positive numbers that are congruent to 2, 5, or 11 modulo 12.

The programs for A347838, the canonical program `A347838.P5759428233313741391` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347838 has offset 1).

The definition of A347838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347838.P5759428233313741391

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=11, a(3)=14`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A347838

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P5759428233313741391.Spec : Prop :=
  ∀ n, P5759428233313741391.a n = A347838 (n + 1)

theorem P5759428233313741391.correct : P5759428233313741391.Spec := by
  intro n
  simp only [A347838, Nat.add_sub_cancel]

end A347838

/-! ## A347838.P5962075289811958905

`(3*A047529(n+1)+1)/2`
-/

namespace A347838.P5962075289811958905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A047529 (n + 1) + 1 : ℚ) / 2

end

end A347838.P5962075289811958905

namespace A347838

/-- `(3*A047529(n+1)+1)/2` -/
def P5962075289811958905.Spec : Prop :=
  ∀ n, P5962075289811958905.a n = (A347838 (n + 1) : ℚ)

end A347838

/-! ## A347838.P5134957420331458868

`comp[n*(n%3)!²]`
-/

namespace A347838.P5134957420331458868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (n % 3) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A347838.P5134957420331458868

namespace A347838

/-- `comp[n*(n%3)!²]` -/
def P5134957420331458868.Spec : Prop :=
  ∀ n, (P5134957420331458868.a n : ℤ) = A347838 (n + 1)

end A347838

/-! ## A347838.P15016374978377620436

`a(n-3)+12` with `a(0)=2, a(1)=5, a(2)=11`
-/

namespace A347838.P15016374978377620436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 11] fun n a =>
  a (n - 3) + 12

end

end A347838.P15016374978377620436

namespace A347838

/-- `a(n-3)+12` -/
def P15016374978377620436.Spec : Prop :=
  ∀ n, (P15016374978377620436.a n : ℤ) = A347838 (n + 1)

end A347838

/-! ## A347838.P14086784584602134378

`∑[and(5, dr(3*n))+2]`
-/

namespace A347838.P14086784584602134378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 5 (SequenceMachineLib.digitalRoot (3 * n : ℤ)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347838.P14086784584602134378

namespace A347838

/-- `∑[and(5, dr(3*n))+2]` -/
def P14086784584602134378.Spec : Prop :=
  ∀ n, (P14086784584602134378.a n : ℤ) = A347838 (n + 1)

end A347838

/-! ## A347838.P11226993292564581742

`∑[or(2, and(5, dr(3*n)))]`
-/

namespace A347838.P11226993292564581742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (Nat.land 5 (SequenceMachineLib.digitalRoot (3 * n : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347838.P11226993292564581742

namespace A347838

/-- `∑[or(2, and(5, dr(3*n)))]` -/
def P11226993292564581742.Spec : Prop :=
  ∀ n, (P11226993292564581742.a n : ℤ) = A347838 (n + 1)

end A347838

/-! ## A347838.P2890099153641471083

`∑[xor(2, and(5, dr(3*n)))]`
-/

namespace A347838.P2890099153641471083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.land 5 (SequenceMachineLib.digitalRoot (3 * n : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347838.P2890099153641471083

namespace A347838

/-- `∑[xor(2, and(5, dr(3*n)))]` -/
def P2890099153641471083.Spec : Prop :=
  ∀ n, (P2890099153641471083.a n : ℤ) = A347838 (n + 1)

end A347838

/-! ## A347838.P15575568223562931084

`∑[abs(a(n-3))]` with `a(0)=2, a(1)=3, a(2)=6, a(3)=3`
-/

namespace A347838.P15575568223562931084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347838.P15575568223562931084

namespace A347838

/-- `∑[abs(a(n-3))]` -/
def P15575568223562931084.Spec : Prop :=
  ∀ n, (P15575568223562931084.a n : ℤ) = A347838 (n + 1)

end A347838

/-! ## A347838.P18217791470212412383

`∑[dr(a(n-3))]` with `a(0)=2, a(1)=3, a(2)=6, a(3)=3`
-/

namespace A347838.P18217791470212412383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347838.P18217791470212412383

namespace A347838

/-- `∑[dr(a(n-3))]` -/
def P18217791470212412383.Spec : Prop :=
  ∀ n, (P18217791470212412383.a n : ℤ) = A347838 (n + 1)

end A347838

/-! ## A347838.P8217437799069623839

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=3, a(2)=6, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A347838.P8217437799069623839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347838.P8217437799069623839

namespace A347838

/-- `∑[floor(a(n-3))]` -/
def P8217437799069623839.Spec : Prop :=
  ∀ n, (P8217437799069623839.a n : ℤ) = A347838 (n + 1)

end A347838

/-! ## A347838.P9935238200140439754

`∑[ceil(a(n-3))]` with `a(0)=2, a(1)=3, a(2)=6, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A347838.P9935238200140439754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347838.P9935238200140439754

namespace A347838

/-- `∑[ceil(a(n-3))]` -/
def P9935238200140439754.Spec : Prop :=
  ∀ n, (P9935238200140439754.a n : ℤ) = A347838 (n + 1)

end A347838

/-! ## A347838.P17096189158621175035

`∑[round(a(n-3))]` with `a(0)=2, a(1)=3, a(2)=6, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A347838.P17096189158621175035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347838.P17096189158621175035

namespace A347838

/-- `∑[round(a(n-3))]` -/
def P17096189158621175035.Spec : Prop :=
  ∀ n, (P17096189158621175035.a n : ℤ) = A347838 (n + 1)

end A347838

/-! ## A347838.P5871015808617294845

`4*n+3-(n+1)%3`
-/

namespace A347838.P5871015808617294845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (3 - (((n + 1) % 3 : ℕ) : ℤ))

end

end A347838.P5871015808617294845

namespace A347838

/-- `4*n+3-(n+1)%3` -/
def P5871015808617294845.Spec : Prop :=
  ∀ n, P5871015808617294845.a n = A347838 (n + 1)

end A347838

/-! ## A347838.P14310265053999728269

`3*floor(4*(n+1)/3)-1`
-/

namespace A347838.P14310265053999728269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊4 * ((n + 1 : ℚ) / 3)⌋ - 1

end

end A347838.P14310265053999728269

namespace A347838

/-- `3*floor(4*(n+1)/3)-1` -/
def P14310265053999728269.Spec : Prop :=
  ∀ n, P14310265053999728269.a n = A347838 (n + 1)

end A347838

/-! ## A347838.P9797787067775499046

`∑[A101825(n)²+2]`
-/

namespace A347838.P9797787067775499046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347838.P9797787067775499046

namespace A347838

/-- `∑[A101825(n)²+2]` -/
def P9797787067775499046.Spec : Prop :=
  ∀ n, P9797787067775499046.a n = A347838 (n + 1)

end A347838

/-! ## A347838.P6245291188737648927

`∑[dr(A139482(n+1)+1)]`
-/

namespace A347838.P6245291188737648927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A139482 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347838.P6245291188737648927

namespace A347838

/-- `∑[dr(A139482(n+1)+1)]` -/
def P6245291188737648927.Spec : Prop :=
  ∀ n, (P6245291188737648927.a n : ℤ) = A347838 (n + 1)

end A347838

/-! ## A347838.P1276054076114172129

`lcm(A087204(n), A367705(n))`
-/

namespace A347838.P1276054076114172129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087204 n) (A367705 n)

end

end A347838.P1276054076114172129

namespace A347838

/-- `lcm(A087204(n), A367705(n))` -/
def P1276054076114172129.Spec : Prop :=
  ∀ n, (P1276054076114172129.a n : ℤ) = A347838 (n + 1)

end A347838

/-! ## A347838.P8326113012559064336

`∪[A016969(n), A017545(n)]`
-/

namespace A347838.P8326113012559064336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347838.P8326113012559064336

namespace A347838

/-- `∪[A016969(n), A017545(n)]` -/
def P8326113012559064336.Spec : Prop :=
  ∀ n, (P8326113012559064336.a n : ℤ) = A347838 (n + 1)

end A347838

/-! ## A347838.P16572394860685715050

`Δ[A109340(n+1)+n²]`
-/

namespace A347838.P16572394860685715050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109340 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347838.P16572394860685715050

namespace A347838

/-- `Δ[A109340(n+1)+n²]` -/
def P16572394860685715050.Spec : Prop :=
  ∀ n, P16572394860685715050.a n = A347838 (n + 1)

end A347838

/-! ## A347838.P4507431238720795665

`A016789(A042965(n+1))`
-/

namespace A347838.P4507431238720795665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A042965 (n + 1)).toNat

end

end A347838.P4507431238720795665

namespace A347838

/-- `A016789(A042965(n+1))` -/
def P4507431238720795665.Spec : Prop :=
  ∀ n, P4507431238720795665.a n = A347838 (n + 1)

end A347838

/-!
# A347839: An array of the positive integers congruent to 2 modulo 3 (A016789), read by antidiagonals upwards, giving the present triangle.

The programs for A347839, there is no canonical definition to state claims against.
-/

/-! ## A347839.P16061466348176306907

`ceil(3/2*A347834(n+1))`
-/

namespace A347839.P16061466348176306907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 2 * (A347834 (n + 1) : ℚ)⌉

end

end A347839.P16061466348176306907

/-! ## A347839.P6517477608131035605

`3*A191669(A038722(n+1))-1`
-/

namespace A347839.P6517477608131035605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191669 (A038722 (n + 1)).toNat - 1

end

end A347839.P6517477608131035605

/-! ## A347839.P1325391133092644947

`3*A191669(A061579(n)+1)-1`
-/

namespace A347839.P1325391133092644947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191669 (A061579 n + 1).toNat - 1

end

end A347839.P1325391133092644947

/-! ## A347839.P9303769274096896516

`A347834(n+1)+A191669(A038722(n+1))`
-/

namespace A347839.P9303769274096896516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347834 (n + 1) + A191669 (A038722 (n + 1)).toNat

end

end A347839.P9303769274096896516

/-! ## A347839.P4028838418618434513

`ratio[A033999(n)]+3*A191669(A038722(n+1))`
-/

namespace A347839.P4028838418618434513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) + (3 * A191669 (A038722 (n + 1)).toNat : ℚ)

end

end A347839.P4028838418618434513

/-! ## A347839.P12608830188321540611

`or(-1, A000041(n))+3*A191669(A038722(n+1))`
-/

namespace A347839.P12608830188321540611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000041 n) + 3 * A191669 (A038722 (n + 1)).toNat

end

end A347839.P12608830188321540611

/-! ## A347839.P3190975283985315922

`A008683(A007918(n))+3*A191669(A038722(n+1))`
-/

namespace A347839.P3190975283985315922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 3 * A191669 (A038722 (n + 1)).toNat

end

end A347839.P3190975283985315922

/-! ## A347839.P14006855802482894513

`A008683(A020484(n))+3*A191669(A038722(n+1))`
-/

namespace A347839.P14006855802482894513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat + 3 * A191669 (A038722 (n + 1)).toNat

end

end A347839.P14006855802482894513

/-! ## A347839.P18284781278519700685

`A008683(A101300(n))+3*A191669(A038722(n+1))`
-/

namespace A347839.P18284781278519700685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A101300 n).toNat + 3 * A191669 (A038722 (n + 1)).toNat

end

end A347839.P18284781278519700685

/-! ## A347839.P6517404772656522687

`A008683(A084704(n+2))+3*A191669(A038722(n+1))`
-/

namespace A347839.P6517404772656522687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A084704 (n + 2)).toNat + 3 * A191669 (A038722 (n + 1)).toNat

end

end A347839.P6517404772656522687

/-!
# A347840: A surjective map of the positive numbers congruent to 5 modulo 8 (A004770) to the positive numbers congruent to 1, 3, or 7 modulo 8 (A047529).

The programs for A347840, the canonical program `A347840.P15500692017201645384` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347840 has offset 1).

The definition of A347840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347840.P1690568712456385608

`A385109(8*n+5)`
-/

namespace A347840.P1690568712456385608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385109 (8 * n + 5)

end

end A347840.P1690568712456385608

namespace A347840

/-- `A385109(8*n+5)` -/
def P1690568712456385608.Spec : Prop :=
  ∀ n, P1690568712456385608.a n = A347840 (n + 1)

end A347840

/-! ## A347840.P15705816999568196084

`2*A350091(n)+1`
-/

namespace A347840.P15705816999568196084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350091 n + 1

end

end A347840.P15705816999568196084

namespace A347840

/-- `2*A350091(n)+1` -/
def P15705816999568196084.Spec : Prop :=
  ∀ n, P15705816999568196084.a n = A347840 (n + 1)

end A347840

/-! ## A347840.P15500692017201645384

`2*n%A075677(n+1)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A347840

/-- `2*n%A075677(n+1)+1` -/
def P15500692017201645384.Spec : Prop :=
  ∀ n, P15500692017201645384.a n = A347840 (n + 1)

theorem P15500692017201645384.correct : P15500692017201645384.Spec := by
  intro n
  simp only [A347840, Nat.add_sub_cancel]

end A347840

/-! ## A347840.P14786787475027951632

`A005408(A350091(n))`
-/

namespace A347840.P14786787475027951632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A350091 n).toNat

end

end A347840.P14786787475027951632

namespace A347840

/-- `A005408(A350091(n))` -/
def P14786787475027951632.Spec : Prop :=
  ∀ n, P14786787475027951632.a n = A347840 (n + 1)

end A347840

/-! ## A347840.P1057774019074238366

`A004273(A350091(n)+1)`
-/

namespace A347840.P1057774019074238366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A350091 n + 1).toNat

end

end A347840.P1057774019074238366

namespace A347840

/-- `A004273(A350091(n)+1)` -/
def P1057774019074238366.Spec : Prop :=
  ∀ n, P1057774019074238366.a n = A347840 (n + 1)

end A347840

/-! ## A347840.P585335312546307344

`A075677(n+1)-A329480(n+1)-A329480(n+1)`
-/

namespace A347840.P585335312546307344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (n + 1) - A329480 (n + 1) - A329480 (n + 1)

end

end A347840.P585335312546307344

namespace A347840

/-- `A075677(n+1)-A329480(n+1)-A329480(n+1)` -/
def P585335312546307344.Spec : Prop :=
  ∀ n, P585335312546307344.a n = A347840 (n + 1)

end A347840

/-! ## A347840.P11839942212120678929

`Δ[n²]%A065883(3*n+2)`
-/

namespace A347840.P11839942212120678929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A065883 (3 * n + 2))

end

end A347840.P11839942212120678929

namespace A347840

/-- `Δ[n²]%A065883(3*n+2)` -/
def P11839942212120678929.Spec : Prop :=
  ∀ n, P11839942212120678929.a n = A347840 (n + 1)

end A347840

/-! ## A347840.P4207964734137372616

`A004442(2*A350091(n))`
-/

namespace A347840.P4207964734137372616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A350091 n).toNat

end

end A347840.P4207964734137372616

namespace A347840

/-- `A004442(2*A350091(n))` -/
def P4207964734137372616.Spec : Prop :=
  ∀ n, P4207964734137372616.a n = A347840 (n + 1)

end A347840

/-! ## A347840.P9441385875782602962

`A263449(2*A350091(n))`
-/

namespace A347840.P9441385875782602962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 (2 * A350091 n).toNat

end

end A347840.P9441385875782602962

namespace A347840

/-- `A263449(2*A350091(n))` -/
def P9441385875782602962.Spec : Prop :=
  ∀ n, P9441385875782602962.a n = A347840 (n + 1)

end A347840

/-! ## A347840.P16636274578971971715

`filter[A385109(n), A000035(#)]`
-/

namespace A347840.P16636274578971971715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A347840.P16636274578971971715

namespace A347840

/-- `filter[A385109(n), A000035(#)]` -/
def P16636274578971971715.Spec : Prop :=
  ∀ n, P16636274578971971715.a n = A347840 (n + 1)

end A347840

/-!
# A347841: a(n) is the number of (strict) chains of subspaces with ends 0 and (F_3)^n.

The programs for A347841, there is no canonical definition to state claims against.
-/

/-! ## A347841.P17692967115082083744

`A381426(A155212(n)+4)`
-/

namespace A347841.P17692967115082083744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381426 (A155212 n + 4).toNat

end

end A347841.P17692967115082083744

/-! ## A347841.P4146890879009792372

`A381426(A055999(n+1)+2)`
-/

namespace A347841.P4146890879009792372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381426 (A055999 (n + 1) + 2).toNat

end

end A347841.P4146890879009792372

/-! ## A347841.P11567037515926120027

`A381426(A000217(n+3)+n)`
-/

namespace A347841.P11567037515926120027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381426 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A347841.P11567037515926120027

/-!
# A347842: a(n) is the number of (strict) chains of subspaces with ends 0 and (F_4)^n.

The programs for A347842, there is no canonical definition to state claims against.
-/

/-! ## A347842.P5807131774453525001

`A381426(eq[9, A099375(n)])`
-/

namespace A347842.P5807131774453525001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347842.P5807131774453525001

/-!
# A347843: a(n) is the number of (strict) chains of subspaces with ends 0 and (F_5)^n.

The programs for A347843, there is no canonical definition to state claims against.
-/

/-! ## A347843.P18096517970526040009

`A381426(eq[11, A099375(n)])`
-/

namespace A347843.P18096517970526040009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347843.P18096517970526040009

/-!
# A347848: Record gaps between prime octuplets of the form p + {0, 2, 6, 8, 12, 18, 20, 26} (initial members are A022011), divided by 210.

The programs for A347848, there is no canonical definition to state claims against.
-/

/-! ## A347848.P15768574197172756325

`record[Δ[A182393(n+1)]]`
-/

namespace A347848.P15768574197172756325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182393 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347848.P15768574197172756325

/-! ## A347848.P6418807131509408900

`record[A182393(n+2)-A182393(n+1)]`
-/

namespace A347848.P6418807131509408900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182393 (n + 2) - A182393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347848.P6418807131509408900

/-!
# A347850: Record gaps between prime octuplets of the form p + {0, 2, 6, 12, 14, 20, 24, 26} (initial members are A022012), divided by 30.

The programs for A347850, there is no canonical definition to state claims against.
-/

/-! ## A347850.P13818524182274958932

`record[Δ[A022012(n+1)/30]]`
-/

namespace A347850.P13818524182274958932
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022012 (n + 1) : ℚ) / 30

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347850.P13818524182274958932

/-! ## A347850.P9313496926239305747

`record[Δ[A145315(n+1)]]`
-/

namespace A347850.P9313496926239305747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145315 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347850.P9313496926239305747

/-! ## A347850.P12552790933595156279

`record[A145315(n+2)-A145315(n+1)]`
-/

namespace A347850.P12552790933595156279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145315 (n + 2) - A145315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347850.P12552790933595156279

/-!
# A347851: Primes at lower end of record gaps between prime octuplets given by A347850.

The programs for A347851, there is no canonical definition to state claims against.
-/

/-! ## A347851.P3075189485925312039

`A022012(∑[A233835(C(n, 5))])`
-/

namespace A347851.P3075189485925312039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233835 (Nat.choose n 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022012 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A347851.P3075189485925312039

/-! ## A347851.P11499399936103539148

`A022012(∑[A113143(2^n-1)])`
-/

namespace A347851.P11499399936103539148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113143 (2 ^ n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022012 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A347851.P11499399936103539148

/-!
# A347852: Record gaps between prime octuplets of the form p + {0, 6, 8, 14, 18, 20, 24, 26} (initial members are A022013), divided by 210.

The programs for A347852, there is no canonical definition to state claims against.
-/

/-! ## A347852.P1843686066339739148

`record[Δ[A357890(n+1)]]`
-/

namespace A347852.P1843686066339739148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357890 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347852.P1843686066339739148

/-! ## A347852.P6775075021812298237

`record[A357890(n+2)-A357890(n+1)]`
-/

namespace A347852.P6775075021812298237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357890 (n + 2) - A357890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347852.P6775075021812298237

/-!
# A347853: Primes at lower end of record gaps between prime octuplets given by A347852.

The programs for A347853, there is no canonical definition to state claims against.
-/

/-! ## A347853.P11586679019654787787

`A022013(record[∏{p}[2*n+1, #-5]-n]%A069225(2*(n+1)))`
-/

namespace A347853.P11586679019654787787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 5) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022013 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A069225 (2 * (n + 1)))).toNat

end

end A347853.P11586679019654787787

/-! ## A347853.P6446769436841388800

`A022013(eq[A003986(n), A328171(n)])`
-/

namespace A347853.P6446769436841388800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022013 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A347853.P6446769436841388800

/-!
# A347854: a(n) = (6*n)!/((3*n)!*(2*n)!) * (n/2)!/(3*n/2)!.

The programs for A347854, there is no canonical definition to state claims against.
-/

/-! ## A347854.P1645279840751520408

`A061162(n)/A005809(n)*A091527(n)`
-/

namespace A347854.P1645279840751520408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061162 n : ℚ) / (A005809 n : ℚ) * (A091527 n : ℚ)

end

end A347854.P1645279840751520408

/-! ## A347854.P17707310889340758823

`A001448(n)/A005809(n)*A347856(n)`
-/

namespace A347854.P17707310889340758823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001448 n : ℚ) / (A005809 n : ℚ) * (A347856 n : ℚ)

end

end A347854.P17707310889340758823

/-! ## A347854.P3889834325674781676

`A091527(n)/C(2*n, n)²*A275655(n)`
-/

namespace A347854.P3889834325674781676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091527 n : ℚ) / (Nat.choose (2 * n) n ^ 2 : ℚ) * (A275655 n : ℚ)

end

end A347854.P3889834325674781676

/-! ## A347854.P2771896373530099560

`A091527(n)/A000984(n)²*A275655(n)`
-/

namespace A347854.P2771896373530099560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091527 n : ℚ) / (A000984 n ^ 2 : ℚ) * (A275655 n : ℚ)

end

end A347854.P2771896373530099560

/-! ## A347854.P122468534862892875

`A091527(n)/A211421(n)*A211420(n)`
-/

namespace A347854.P122468534862892875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091527 n : ℚ) / (A211421 n : ℚ) * (A211420 n : ℚ)

end

end A347854.P122468534862892875

/-!
# A347856: a(n) = (6*n)!/((4*n)!*n!) * (n/2)!/(3*n/2)!.

The programs for A347856, there is no canonical definition to state claims against.
-/

/-! ## A347856.P6371082048303125837

`A091527(n)/A000984(n)*A211419(n)`
-/

namespace A347856.P6371082048303125837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091527 n : ℚ) / (A000984 n : ℚ) * (A211419 n : ℚ)

end

end A347856.P6371082048303125837

/-! ## A347856.P7837402405871775634

`A091496(n)/A262732(n)*A211419(n)`
-/

namespace A347856.P7837402405871775634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091496 n : ℚ) / (A262732 n : ℚ) * (A211419 n : ℚ)

end

end A347856.P7837402405871775634

/-! ## A347856.P3278932025800259297

`A061162(n)/A001448(n)*A091527(n)`
-/

namespace A347856.P3278932025800259297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061162 n : ℚ) / (A001448 n : ℚ) * (A091527 n : ℚ)

end

end A347856.P3278932025800259297

/-! ## A347856.P6566753125879248924

`A005809(n)/A001448(n)*A347854(n)`
-/

namespace A347856.P6566753125879248924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005809 n : ℚ) / (A001448 n : ℚ) * (A347854 n : ℚ)

end

end A347856.P6566753125879248924

/-! ## A347856.P9426060930227734958

`A091527(n)/A000897(n)*A113424(n)`
-/

namespace A347856.P9426060930227734958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091527 n : ℚ) / (A000897 n : ℚ) * (A113424 n : ℚ)

end

end A347856.P9426060930227734958

/-!
# A347858: a(n) = (9*n)!/((3*n)!*(2*n)!) * (n/2)!/(9*n/2)!.

The programs for A347858, there is no canonical definition to state claims against.
-/

/-! ## A347858.P10335126759660171840

`A091527(3*n)/A262732(n)*A091496(n)`
-/

namespace A347858.P10335126759660171840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091527 (3 * n) : ℚ) / (A262732 n : ℚ) * (A091496 n : ℚ)

end

end A347858.P10335126759660171840

/-!
# A347860: Irregular triangle T(n,k) where row n is the partition of n with the least number of 3-smooth parts such that the product of parts is minimal.

The programs for A347860, there is no canonical definition to state claims against.
-/

/-! ## A347860.P5755620436436910734

`gcd(A070764(A094166(n+1)), A080820(n+1))`
-/

namespace A347860.P5755620436436910734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070764 (A094166 (n + 1)).toNat) (A080820 (n + 1))

end

end A347860.P5755620436436910734

/-!
# A347861: a(n) = A000032(n)*A000032(n+1) mod A000032(n+2).

The programs for A347861, the canonical program `A347861.P5929995848693885535` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347861 has offset 0).

The definition of A347861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347861.P5929995848693885535

`A215602(n)%A000032(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A347861

/-- `A215602(n)%A000032(n+2)` -/
def P5929995848693885535.Spec : Prop :=
  ∀ n, P5929995848693885535.a n = A347861 n

theorem P5929995848693885535.correct : P5929995848693885535.Spec := by
  intro n
  simp only [A347861]

end A347861

/-! ## A347861.P7576502088243060639

`A001060(2*n)%A000032(n+2)`
-/

namespace A347861.P7576502088243060639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001060 (2 * n)) (A000032 (n + 2))

end

end A347861.P7576502088243060639

namespace A347861

/-- `A001060(2*n)%A000032(n+2)` -/
def P7576502088243060639.Spec : Prop :=
  ∀ n, P7576502088243060639.a n = A347861 n

end A347861

/-! ## A347861.P6171785316675813790

`A013655(2*n+1)%A000032(n+2)`
-/

namespace A347861.P6171785316675813790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013655 (2 * n + 1)) (A000032 (n + 2))

end

end A347861.P6171785316675813790

namespace A347861

/-- `A013655(2*n+1)%A000032(n+2)` -/
def P6171785316675813790.Spec : Prop :=
  ∀ n, P6171785316675813790.a n = A347861 n

end A347861

/-! ## A347861.P675495391253644835

`A228208(2*(n+1))%A000032(n+2)`
-/

namespace A347861.P675495391253644835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228208 (2 * (n + 1))) (A000032 (n + 2))

end

end A347861.P675495391253644835

namespace A347861

/-- `A228208(2*(n+1))%A000032(n+2)` -/
def P675495391253644835.Spec : Prop :=
  ∀ n, P675495391253644835.a n = A347861 n

end A347861

/-! ## A347861.P790342146435376096

`(A000032(n+1)*A000032(n))%A000032(n+2)`
-/

namespace A347861.P790342146435376096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (n + 1) * A000032 n) (A000032 (n + 2))

end

end A347861.P790342146435376096

namespace A347861

/-- `(A000032(n+1)*A000032(n))%A000032(n+2)` -/
def P790342146435376096.Spec : Prop :=
  ∀ n, P790342146435376096.a n = A347861 n

end A347861

/-! ## A347861.P13678243042008837385

`record[A203976(n+2)]%A000204(n+2)`
-/

namespace A347861.P13678243042008837385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000204 (n + 2))

end

end A347861.P13678243042008837385

namespace A347861

/-- `record[A203976(n+2)]%A000204(n+2)` -/
def P13678243042008837385.Spec : Prop :=
  ∀ n, P13678243042008837385.a n = A347861 n

end A347861

/-! ## A347861.P17090765415122230043

`A022088(2*(n+1))%A000032(n+2)`
-/

namespace A347861.P17090765415122230043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022088 (2 * (n + 1))) (A000032 (n + 2))

end

end A347861.P17090765415122230043

namespace A347861

/-- `A022088(2*(n+1))%A000032(n+2)` -/
def P17090765415122230043.Spec : Prop :=
  ∀ n, P17090765415122230043.a n = A347861 n

end A347861

/-!
# A347862: Total number of polygons left out in all partitions of the set of vertices of a convex n-gon into nonintersecting polygons.

The programs for A347862, there is no canonical definition to state claims against.
-/

/-! ## A347862.P400769030805614776

`∑[A060000(3*n+1)]%A338729(n)`
-/

namespace A347862.P400769030805614776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A338729 n)

end

end A347862.P400769030805614776

/-! ## A347862.P17072110505440952505

`A234694(A001700(n)-A262694(n))`
-/

namespace A347862.P17072110505440952505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234694 (A001700 n - A262694 n).toNat

end

end A347862.P17072110505440952505

/-! ## A347862.P6528842458029697668

`A234694(A001700(n)-A349041(n))`
-/

namespace A347862.P6528842458029697668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234694 (A001700 n - A349041 n).toNat

end

end A347862.P6528842458029697668

/-! ## A347862.P1256678858459929563

`xor(A026819(A351049(n)), A241579(n))`
-/

namespace A347862.P1256678858459929563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A026819 (A351049 n).toNat) (A241579 n)

end

end A347862.P1256678858459929563

/-!
# A347863: Odd terms in A015782.

The programs for A347863, there is no canonical definition to state claims against.
-/

/-! ## A347863.P12270573038421722439

`record[A015782(n+1)%2*A015782(n+1)]`
-/

namespace A347863.P12270573038421722439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015782 (n + 1)) 2 * A015782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347863.P12270573038421722439

/-! ## A347863.P216642531107194782

`∩[2*n+1, A015782(n+1)]`
-/

namespace A347863.P216642531107194782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347863.P216642531107194782

/-! ## A347863.P10305945824579358059

`record[A093178(A015782(n+1))]`
-/

namespace A347863.P10305945824579358059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A015782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347863.P10305945824579358059

/-! ## A347863.P3661039297700008487

`filter[A015782(n+1), A000035(#)]`
-/

namespace A347863.P3661039297700008487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A347863.P3661039297700008487

/-!
# A347864: Left- or right-truncatable primes, restricted to one consecutive zero.

The programs for A347864, there is no canonical definition to state claims against.
-/

/-! ## A347864.P13931689172692557807

`∪[A033664(n+1), A137812(n+1)]`
-/

namespace A347864.P13931689172692557807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347864.P13931689172692557807

/-! ## A347864.P16754659377875710211

`∪[A137812(n+1), A144714(n+1)]`
-/

namespace A347864.P16754659377875710211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347864.P16754659377875710211

/-! ## A347864.P10140127162232478411

`∪[A137812(n+1), A308711(n+1)]`
-/

namespace A347864.P10140127162232478411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347864.P10140127162232478411

/-! ## A347864.P6976938679675559477

`A080608(lt[A125890(n+1), A000118(n)])`
-/

namespace A347864.P6976938679675559477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080608 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A347864.P6976938679675559477

/-! ## A347864.P16776327564434058637

`∪[A033664(n+1), A069867(n+1)]%A024770(3*n+5)`
-/

namespace A347864.P16776327564434058637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069867 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A024770 (3 * n + 5))

end

end A347864.P16776327564434058637

/-!
# A347865: Number of ways to write n as w^2 + 2*x^2 + y^4 + 3*z^4, where w,x,y,z are nonnegative integers.

The programs for A347865, there is no canonical definition to state claims against.
-/

/-! ## A347865.P13357569517497167558

`A001221(A048645(3*n+5)*A202822(3*n+1))`
-/

namespace A347865.P13357569517497167558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A048645 (3 * n + 5) * A202822 (3 * n + 1)).toNat

end

end A347865.P13357569517497167558

/-! ## A347865.P5264627768769261470

`A124010(A061775(n+1))+A118382(A000041(n))`
-/

namespace A347865.P5264627768769261470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A061775 (n + 1)).toNat + A118382 (A000041 n).toNat

end

end A347865.P5264627768769261470

/-!
# A347866: a(n) is the least prime of the form 2*x+1 where x is the product of n consecutive primes.

The programs for A347866, there is no canonical definition to state claims against.
-/

/-! ## A347866.P12817850399308857972

`p?[2*∏[eq[n, ∏{d}[n, #]]]+1]`
-/

namespace A347866.P12817850399308857972
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A347866.P12817850399308857972

/-! ## A347866.P15913231392571352288

`p?[2*∏[lt[∏{d}[n, #], n+1]]+1]`
-/

namespace A347866.P15913231392571352288
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f5 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A347866.P15913231392571352288

/-!
# A347867: Number of partitions of n such that 3*(greatest part) >= (number of parts).

The programs for A347867, there is no canonical definition to state claims against.
-/

/-! ## A347867.P4945049473052377070

`A000196(A171871(2*n+3)+A090984(n))-A326528(n+1)`
-/

namespace A347867.P4945049473052377070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A171871 (2 * n + 3) + A090984 n).toNat - A326528 (n + 1)

end

end A347867.P4945049473052377070

/-! ## A347867.P7636631110944881209

`A351846(A320236(n+1))`
-/

namespace A347867.P7636631110944881209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A320236 (n + 1)).toNat

end

end A347867.P7636631110944881209

/-! ## A347867.P18218809458261905654

`A071626(A283905(n+1)-A002061(n))`
-/

namespace A347867.P18218809458261905654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A283905 (n + 1) - A002061 n).toNat

end

end A347867.P18218809458261905654

/-! ## A347867.P15760256991765384168

`A321270(A000040(n+1))-A391235(n+1)`
-/

namespace A347867.P15760256991765384168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321270 (A000040 (n + 1)).toNat - A391235 (n + 1)

end

end A347867.P15760256991765384168

/-! ## A347867.P5787283270368124663

`A135662(A006906(n+3)-A000045(n+4))`
-/

namespace A347867.P5787283270368124663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A006906 (n + 3) - A000045 (n + 4)).toNat

end

end A347867.P5787283270368124663

/-!
# A347868: Number of partitions of n such that 4*(greatest part) >= (number of parts).

The programs for A347868, there is no canonical definition to state claims against.
-/

/-! ## A347868.P10843250634984875246

`Δ[A000070(n)]-A017899(A187829(n+1))`
-/

namespace A347868.P10843250634984875246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A017899 (A187829 (n + 1)).toNat

end

end A347868.P10843250634984875246

/-! ## A347868.P3566846904376642237

`record[A035363(n)]-A017899(A187829(n+1))`
-/

namespace A347868.P3566846904376642237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A017899 (A187829 (n + 1)).toNat

end

end A347868.P3566846904376642237

/-! ## A347868.P5255856756597824753

`record[A035444(n)]-A017899(A187829(n+1))`
-/

namespace A347868.P5255856756597824753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A017899 (A187829 (n + 1)).toNat

end

end A347868.P5255856756597824753

/-! ## A347868.P11732284871384688866

`record[A114099(n)]-A017899(A187829(n+1))`
-/

namespace A347868.P11732284871384688866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A017899 (A187829 (n + 1)).toNat

end

end A347868.P11732284871384688866

/-! ## A347868.P726043079000441033

`A000041(n+1)-A017899(A187829(n+1))`
-/

namespace A347868.P726043079000441033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A017899 (A187829 (n + 1)).toNat

end

end A347868.P726043079000441033

/-!
# A347869: Number of partitions of n such that 5*(greatest part) >= (number of parts).

The programs for A347869, there is no canonical definition to state claims against.
-/

/-! ## A347869.P1648550968821296446

`A000194(or(A000031(n), A241414(3*n+1)))`
-/

namespace A347869.P1648550968821296446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.lor (A000031 n) (A241414 (3 * n + 1))).toNat

end

end A347869.P1648550968821296446

/-! ## A347869.P6836680117705543621

`A112995(A047800(n))`
-/

namespace A347869.P6836680117705543621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112995 (A047800 n).toNat

end

end A347869.P6836680117705543621

/-! ## A347869.P10890212587993355316

`A112995(A077169(n+1))`
-/

namespace A347869.P10890212587993355316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112995 (A077169 (n + 1)).toNat

end

end A347869.P10890212587993355316

/-! ## A347869.P5072618894236988323

`A112995(A360029(n+1))`
-/

namespace A347869.P5072618894236988323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112995 (A360029 (n + 1)).toNat

end

end A347869.P5072618894236988323

/-! ## A347869.P9066603731619493430

`A370320(n+2)+A035263(A046301(n+1))`
-/

namespace A347869.P9066603731619493430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370320 (n + 2) + A035263 (A046301 (n + 1)).toNat

end

end A347869.P9066603731619493430

/-!
# A347870: a(n) = A003415(sigma(n)) mod 2, where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

The programs for A347870, the canonical program `A347870.P5523994556869526496` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347870 has offset 1).

The definition of A347870 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342925, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347870.P5523994556869526496

`A342925(n+1)%2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A347870

/-- `A342925(n+1)%2` -/
def P5523994556869526496.Spec : Prop :=
  ∀ n, P5523994556869526496.a n = A347870 (n + 1)

theorem P5523994556869526496.correct : P5523994556869526496.Spec := by
  intro n
  simp only [A347870, Nat.add_sub_cancel]

end A347870

/-! ## A347870.P3325979678611431264

`A165560(A000203(n+1))`
-/

namespace A347870.P3325979678611431264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A000203 (n + 1)).toNat

end

end A347870.P3325979678611431264

namespace A347870

/-- `A165560(A000203(n+1))` -/
def P3325979678611431264.Spec : Prop :=
  ∀ n, P3325979678611431264.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P747968667647430312

`A000035(A342925(n+1))`
-/

namespace A347870.P747968667647430312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A342925 (n + 1)).toNat

end

end A347870.P747968667647430312

namespace A347870

/-- `A000035(A342925(n+1))` -/
def P747968667647430312.Spec : Prop :=
  ∀ n, P747968667647430312.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P16468124420835357482

`char[A347877(n+1)-1]`
-/

namespace A347870.P16468124420835357482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A347870.P16468124420835357482

namespace A347870

/-- `char[A347877(n+1)-1]` -/
def P16468124420835357482.Spec : Prop :=
  ∀ n, (P16468124420835357482.a n : ℤ) = A347870 (n + 1)

end A347870

/-! ## A347870.P12445545260285144324

`(A342926(n+1)+n+1)%2`
-/

namespace A347870.P12445545260285144324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342926 (n + 1) + (n : ℤ) + 1) 2

end

end A347870.P12445545260285144324

namespace A347870

/-- `(A342926(n+1)+n+1)%2` -/
def P12445545260285144324.Spec : Prop :=
  ∀ n, P12445545260285144324.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P4059313173138220955

`abs(log2(gcd(2, n))-A347871(n+1))`
-/

namespace A347870.P4059313173138220955
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.logb 2 (Nat.gcd 2 n : ℝ) - (A347871 (n + 1) : ℝ)|

end

end A347870.P4059313173138220955

namespace A347870

/-- `abs(log2(gcd(2, n))-A347871(n+1))` -/
def P4059313173138220955.Spec : Prop :=
  ∀ n, P4059313173138220955.a n = (A347870 (n + 1) : ℝ)

end A347870

/-! ## A347870.P11164881787528580497

`and(1, A353493(Δ[A160664(n)]))`
-/

namespace A347870.P11164881787528580497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A353493 (f1 (n + 1) - f1 n).toNat)

end

end A347870.P11164881787528580497

namespace A347870

/-- `and(1, A353493(Δ[A160664(n)]))` -/
def P11164881787528580497.Spec : Prop :=
  ∀ n, P11164881787528580497.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P18192039506314018272

`and(A014577(n), A342925(n+1))`
-/

namespace A347870.P18192039506314018272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014577 n) (A342925 (n + 1))

end

end A347870.P18192039506314018272

namespace A347870

/-- `and(A014577(n), A342925(n+1))` -/
def P18192039506314018272.Spec : Prop :=
  ∀ n, P18192039506314018272.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P14543363871309764334

`and(A014709(n), A342925(n+1))`
-/

namespace A347870.P14543363871309764334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014709 n) (A342925 (n + 1))

end

end A347870.P14543363871309764334

namespace A347870

/-- `and(A014709(n), A342925(n+1))` -/
def P14543363871309764334.Spec : Prop :=
  ∀ n, P14543363871309764334.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P2499705462384009566

`and(A054977(n), A342925(n+1))`
-/

namespace A347870.P2499705462384009566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A342925 (n + 1))

end

end A347870.P2499705462384009566

namespace A347870

/-- `and(A054977(n), A342925(n+1))` -/
def P2499705462384009566.Spec : Prop :=
  ∀ n, P2499705462384009566.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P7303129397765664902

`and(A057427(n), A342925(n+1))`
-/

namespace A347870.P7303129397765664902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A342925 (n + 1))

end

end A347870.P7303129397765664902

namespace A347870

/-- `and(A057427(n), A342925(n+1))` -/
def P7303129397765664902.Spec : Prop :=
  ∀ n, P7303129397765664902.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P4265179276343759388

`and(A105234(n), A342925(n+1))`
-/

namespace A347870.P4265179276343759388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105234 n) (A342925 (n + 1))

end

end A347870.P4265179276343759388

namespace A347870

/-- `and(A105234(n), A342925(n+1))` -/
def P4265179276343759388.Spec : Prop :=
  ∀ n, P4265179276343759388.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P4405821890657147810

`and(A152822(n), A342925(n+1))`
-/

namespace A347870.P4405821890657147810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152822 n) (A342925 (n + 1))

end

end A347870.P4405821890657147810

namespace A347870

/-- `and(A152822(n), A342925(n+1))` -/
def P4405821890657147810.Spec : Prop :=
  ∀ n, P4405821890657147810.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P3196384273126697743

`and(A158388(n), A342925(n+1))`
-/

namespace A347870.P3196384273126697743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A342925 (n + 1))

end

end A347870.P3196384273126697743

namespace A347870

/-- `and(A158388(n), A342925(n+1))` -/
def P3196384273126697743.Spec : Prop :=
  ∀ n, P3196384273126697743.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P11731530695533619848

`A059841(xor(n, A347871(n+1)))`
-/

namespace A347870.P11731530695533619848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.xor (n : ℤ) (A347871 (n + 1))).toNat

end

end A347870.P11731530695533619848

namespace A347870

/-- `A059841(xor(n, A347871(n+1)))` -/
def P11731530695533619848.Spec : Prop :=
  ∀ n, P11731530695533619848.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P3964270822927243743

`A353812(n+1)+A353811(n+1)`
-/

namespace A347870.P3964270822927243743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 (n + 1) + A353811 (n + 1)

end

end A347870.P3964270822927243743

namespace A347870

/-- `A353812(n+1)+A353811(n+1)` -/
def P3964270822927243743.Spec : Prop :=
  ∀ n, P3964270822927243743.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P9539776995758126235

`and(A099545(n+1), A342925(n+1))`
-/

namespace A347870.P9539776995758126235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099545 (n + 1)) (A342925 (n + 1))

end

end A347870.P9539776995758126235

namespace A347870

/-- `and(A099545(n+1), A342925(n+1))` -/
def P9539776995758126235.Spec : Prop :=
  ∀ n, P9539776995758126235.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P15645040030311299678

`A000007(and(1, A347871(n+1)-n))`
-/

namespace A347870.P15645040030311299678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land 1 (A347871 (n + 1) - (n : ℤ))).toNat

end

end A347870.P15645040030311299678

namespace A347870

/-- `A000007(and(1, A347871(n+1)-n))` -/
def P15645040030311299678.Spec : Prop :=
  ∀ n, P15645040030311299678.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P10487863101268599082

`A353812(n+1)+A353558(A000203(n+1))`
-/

namespace A347870.P10487863101268599082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 (n + 1) + A353558 (A000203 (n + 1)).toNat

end

end A347870.P10487863101268599082

namespace A347870

/-- `A353812(n+1)+A353558(A000203(n+1))` -/
def P10487863101268599082.Spec : Prop :=
  ∀ n, P10487863101268599082.a n = A347870 (n + 1)

end A347870

/-! ## A347870.P13751086083400459730

`A353812(n+1)+A053866(n+1)*A353810(n+1)`
-/

namespace A347870.P13751086083400459730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 (n + 1) + A053866 (n + 1) * A353810 (n + 1)

end

end A347870.P13751086083400459730

namespace A347870

/-- `A353812(n+1)+A053866(n+1)*A353810(n+1)` -/
def P13751086083400459730.Spec : Prop :=
  ∀ n, P13751086083400459730.a n = A347870 (n + 1)

end A347870

/-!
# A347871: a(n) = (n+A003415(sigma(n))) mod 2, where A003415 gives the arithmetic derivative of its argument.

The programs for A347871, the canonical program `A347871.P11540620617806814251` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347871 has offset 1).

The definition of A347871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347871.P11540620617806814251

`and(1, A342926(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A347871

/-- `and(1, A342926(n+1))` -/
def P11540620617806814251.Spec : Prop :=
  ∀ n, P11540620617806814251.a n = A347871 (n + 1)

theorem P11540620617806814251.correct : P11540620617806814251.Spec := by
  intro n
  simp only [A347871, Nat.add_sub_cancel]

end A347871

/-! ## A347871.P4321204625942170790

`log2(gcd(2, A347870(n+1)+n))`
-/

namespace A347871.P4321204625942170790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A347870 (n + 1) + (n : ℤ)) : ℝ)

end

end A347871.P4321204625942170790

namespace A347871

/-- `log2(gcd(2, A347870(n+1)+n))` -/
def P4321204625942170790.Spec : Prop :=
  ∀ n, P4321204625942170790.a n = (A347871 (n + 1) : ℝ)

end A347871

/-! ## A347871.P10624772897955229238

`(A342925(n+1)+n+1)%2`
-/

namespace A347871.P10624772897955229238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342925 (n + 1) + (n + 1 : ℤ)) 2

end

end A347871.P10624772897955229238

namespace A347871

/-- `(A342925(n+1)+n+1)%2` -/
def P10624772897955229238.Spec : Prop :=
  ∀ n, P10624772897955229238.a n = A347871 (n + 1)

end A347871

/-! ## A347871.P14094281664312603193

`A059841(n-A347870(n+1))`
-/

namespace A347871.P14094281664312603193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ((n : ℤ) - A347870 (n + 1)).toNat

end

end A347871.P14094281664312603193

namespace A347871

/-- `A059841(n-A347870(n+1))` -/
def P14094281664312603193.Spec : Prop :=
  ∀ n, P14094281664312603193.a n = A347871 (n + 1)

end A347871

/-! ## A347871.P10182089413843482554

`A059841(xor(n, A347870(n+1)))`
-/

namespace A347871.P10182089413843482554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.xor (n : ℤ) (A347870 (n + 1))).toNat

end

end A347871.P10182089413843482554

namespace A347871

/-- `A059841(xor(n, A347870(n+1)))` -/
def P10182089413843482554.Spec : Prop :=
  ∀ n, P10182089413843482554.a n = A347871 (n + 1)

end A347871

/-! ## A347871.P891580912044338077

`A059841(A347870(n+1)+n)`
-/

namespace A347871.P891580912044338077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A347870 (n + 1) + (n : ℤ)).toNat

end

end A347871.P891580912044338077

namespace A347871

/-- `A059841(A347870(n+1)+n)` -/
def P891580912044338077.Spec : Prop :=
  ∀ n, P891580912044338077.a n = A347871 (n + 1)

end A347871

/-! ## A347871.P15019184121075141038

`A056594(A347870(n+1)+n)²`
-/

namespace A347871.P15019184121075141038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A347870 (n + 1) + (n : ℤ)).toNat ^ 2

end

end A347871.P15019184121075141038

namespace A347871

/-- `A056594(A347870(n+1)+n)²` -/
def P15019184121075141038.Spec : Prop :=
  ∀ n, P15019184121075141038.a n = A347871 (n + 1)

end A347871

/-! ## A347871.P8038974572856348555

`A000035(A347870(n+1)+1+n)`
-/

namespace A347871.P8038974572856348555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A347870 (n + 1) + 1 + (n : ℤ)).toNat

end

end A347871.P8038974572856348555

namespace A347871

/-- `A000035(A347870(n+1)+1+n)` -/
def P8038974572856348555.Spec : Prop :=
  ∀ n, P8038974572856348555.a n = A347871 (n + 1)

end A347871

/-! ## A347871.P948311822281077837

`(A003415(∑{d}[n+1, #])+n+1)%2`
-/

namespace A347871.P948311822281077837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (∑ d ∈ Nat.divisors (f1 n), d) + (n + 1 : ℤ)) 2

end

end A347871.P948311822281077837

namespace A347871

/-- `(A003415(∑{d}[n+1, #])+n+1)%2` -/
def P948311822281077837.Spec : Prop :=
  ∀ n, P948311822281077837.a n = A347871 (n + 1)

end A347871

/-! ## A347871.P13434648269945433074

`(A003415(A000203(n+1))+n+1)%2`
-/

namespace A347871.P13434648269945433074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A000203 (n + 1)).toNat + (n + 1 : ℤ)) 2

end

end A347871.P13434648269945433074

namespace A347871

/-- `(A003415(A000203(n+1))+n+1)%2` -/
def P13434648269945433074.Spec : Prop :=
  ∀ n, P13434648269945433074.a n = A347871 (n + 1)

end A347871

/-! ## A347871.P3017283084669810867

`A000035(A165560(A000203(n+1))+n+1)`
-/

namespace A347871.P3017283084669810867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A165560 (A000203 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A347871.P3017283084669810867

namespace A347871

/-- `A000035(A165560(A000203(n+1))+n+1)` -/
def P3017283084669810867.Spec : Prop :=
  ∀ n, P3017283084669810867.a n = A347871 (n + 1)

end A347871

/-! ## A347871.P9727299304052825574

`A152822(2*(A342925(n+1)+n))`
-/

namespace A347871.P9727299304052825574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (2 * (A342925 (n + 1) + (n : ℤ))).toNat

end

end A347871.P9727299304052825574

namespace A347871

/-- `A152822(2*(A342925(n+1)+n))` -/
def P9727299304052825574.Spec : Prop :=
  ∀ n, P9727299304052825574.a n = A347871 (n + 1)

end A347871

/-! ## A347871.P11102101306008016698

`A318886(val(A003415(∑{d}[n+1, #])+1+n, 2)+1)^n`
-/

namespace A347871.P11102101306008016698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (SequenceMachineLib.valuation (A003415 (∑ d ∈ Nat.divisors (f1 n), d) + 1 + (n : ℤ)).toNat 2 + 1) ^ n

end

end A347871.P11102101306008016698

namespace A347871

/-- `A318886(val(A003415(∑{d}[n+1, #])+1+n, 2)+1)^n` -/
def P11102101306008016698.Spec : Prop :=
  ∀ n, P11102101306008016698.a n = A347871 (n + 1)

end A347871

/-! ## A347871.P16786323661958668215

`A000035(abs(A342926(n+1)))`
-/

namespace A347871.P16786323661958668215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 |A342926 (n + 1)|.toNat

end

end A347871.P16786323661958668215

namespace A347871

/-- `A000035(abs(A342926(n+1)))` -/
def P16786323661958668215.Spec : Prop :=
  ∀ n, P16786323661958668215.a n = A347871 (n + 1)

end A347871

/-! ## A347871.P11876915280619504455

`A000035(A342925(n+1)+1+n)`
-/

namespace A347871.P11876915280619504455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A342925 (n + 1) + 1 + (n : ℤ)).toNat

end

end A347871.P11876915280619504455

namespace A347871

/-- `A000035(A342925(n+1)+1+n)` -/
def P11876915280619504455.Spec : Prop :=
  ∀ n, P11876915280619504455.a n = A347871 (n + 1)

end A347871

/-! ## A347871.P7050950953438024419

`A000035(A003415(A000203(n+1))+n+1)`
-/

namespace A347871.P7050950953438024419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003415 (A000203 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A347871.P7050950953438024419

namespace A347871

/-- `A000035(A003415(A000203(n+1))+n+1)` -/
def P7050950953438024419.Spec : Prop :=
  ∀ n, P7050950953438024419.a n = A347871 (n + 1)

end A347871

/-! ## A347871.P12450063048696126127

`A014577(2*(A342925(n+1)+n))`
-/

namespace A347871.P12450063048696126127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (2 * (A342925 (n + 1) + (n : ℤ))).toNat

end

end A347871.P12450063048696126127

namespace A347871

/-- `A014577(2*(A342925(n+1)+n))` -/
def P12450063048696126127.Spec : Prop :=
  ∀ n, P12450063048696126127.a n = A347871 (n + 1)

end A347871

/-!
# A347872: Numbers k such that k and A003415(sigma(k)) have the same parity.

The programs for A347872, the canonical program `A347872.P7267029531139032759` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347872 has offset 1).

The definition of A347872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347872.P7267029531139032759

`eq[0, A347871(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A347872

/-- `eq[0, A347871(n+1)]+1` -/
def P7267029531139032759.Spec : Prop :=
  ∀ n, (P7267029531139032759.a n : ℤ) = A347872 (n + 1)

theorem P7267029531139032759.correct : P7267029531139032759.Spec := by
  intro n
  simp only [A347872, Nat.add_sub_cancel]

end A347872

/-! ## A347872.P4153996400908131376

`lt[A347871(n+2), 1]+2`
-/

namespace A347872.P4153996400908131376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A347872.P4153996400908131376

namespace A347872

/-- `lt[A347871(n+2), 1]+2` -/
def P4153996400908131376.Spec : Prop :=
  ∀ n, (P4153996400908131376.a n : ℤ) = A347872 (n + 1)

end A347872

/-! ## A347872.P16696953834466819724

`eq[n%2, A347870(n+2)]+2`
-/

namespace A347872.P16696953834466819724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A347872.P16696953834466819724

namespace A347872

/-- `eq[n%2, A347870(n+2)]+2` -/
def P16696953834466819724.Spec : Prop :=
  ∀ n, (P16696953834466819724.a n : ℤ) = A347872 (n + 1)

end A347872

/-! ## A347872.P11259851917045541754

`eq[log2(gcd(2, n)), A347870(n+1)]+1`
-/

namespace A347872.P11259851917045541754
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A347872.P11259851917045541754

namespace A347872

/-- `eq[log2(gcd(2, n)), A347870(n+1)]+1` -/
def P11259851917045541754.Spec : Prop :=
  ∀ n, (P11259851917045541754.a n : ℤ) = A347872 (n + 1)

end A347872

/-! ## A347872.P17020350745800110194

`eq[0, A342926(n+1)%2]+1`
-/

namespace A347872.P17020350745800110194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342926 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347872.P17020350745800110194

namespace A347872

/-- `eq[0, A342926(n+1)%2]+1` -/
def P17020350745800110194.Spec : Prop :=
  ∀ n, (P17020350745800110194.a n : ℤ) = A347872 (n + 1)

end A347872

/-! ## A347872.P3151483470486060898

`eq[0, A347871(A028310(n))]`
-/

namespace A347872.P3151483470486060898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347872.P3151483470486060898

namespace A347872

/-- `eq[0, A347871(A028310(n))]` -/
def P3151483470486060898.Spec : Prop :=
  ∀ n, (P3151483470486060898.a n : ℤ) = A347872 (n + 1)

end A347872

/-! ## A347872.P2866715482361631179

`A020725(eq[0, A347871(n+1)])`
-/

namespace A347872.P2866715482361631179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347872.P2866715482361631179

namespace A347872

/-- `A020725(eq[0, A347871(n+1)])` -/
def P2866715482361631179.Spec : Prop :=
  ∀ n, P2866715482361631179.a n = A347872 (n + 1)

end A347872

/-! ## A347872.P4316999529452155664

`A065475(eq[0, A347871(n+1)])`
-/

namespace A347872.P4316999529452155664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347872.P4316999529452155664

namespace A347872

/-- `A065475(eq[0, A347871(n+1)])` -/
def P4316999529452155664.Spec : Prop :=
  ∀ n, P4316999529452155664.a n = A347872 (n + 1)

end A347872

/-! ## A347872.P6802108373625893522

`eq[A056594(n), A347870(n+1)]+1`
-/

namespace A347872.P6802108373625893522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A347872.P6802108373625893522

namespace A347872

/-- `eq[A056594(n), A347870(n+1)]+1` -/
def P6802108373625893522.Spec : Prop :=
  ∀ n, (P6802108373625893522.a n : ℤ) = A347872 (n + 1)

end A347872

/-! ## A347872.P15355711790804162105

`eq[A059841(n), A347870(n+1)]+1`
-/

namespace A347872.P15355711790804162105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A347872.P15355711790804162105

namespace A347872

/-- `eq[A059841(n), A347870(n+1)]+1` -/
def P15355711790804162105.Spec : Prop :=
  ∀ n, (P15355711790804162105.a n : ℤ) = A347872 (n + 1)

end A347872

/-! ## A347872.P1154060878119135640

`eq[0, A347871(A233583(n+1))]`
-/

namespace A347872.P1154060878119135640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347872.P1154060878119135640

namespace A347872

/-- `eq[0, A347871(A233583(n+1))]` -/
def P1154060878119135640.Spec : Prop :=
  ∀ n, (P1154060878119135640.a n : ℤ) = A347872 (n + 1)

end A347872

/-!
# A347873: Numbers k such that k and A003415(sigma(k)) are of different parity.

The programs for A347873, the canonical program `A347873.P7226621123320201345` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347873 has offset 1).

The definition of A347873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347873.P7226621123320201345

`lt[0, A347871(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A347873

/-- `lt[0, A347871(n+1)]+1` -/
def P7226621123320201345.Spec : Prop :=
  ∀ n, (P7226621123320201345.a n : ℤ) = A347873 (n + 1)

theorem P7226621123320201345.correct : P7226621123320201345.Spec := by
  intro n
  simp only [A347873, Nat.add_sub_cancel]

end A347873

/-! ## A347873.P6269822242988718816

`comp[A347872(n+1)-1]+1`
-/

namespace A347873.P6269822242988718816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347872 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A347873.P6269822242988718816

namespace A347873

/-- `comp[A347872(n+1)-1]+1` -/
def P6269822242988718816.Spec : Prop :=
  ∀ n, (P6269822242988718816.a n : ℤ) = A347873 (n + 1)

end A347873

/-! ## A347873.P9380985082601516931

`eq[n%2, A347870(n+1)]+1`
-/

namespace A347873.P9380985082601516931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347873.P9380985082601516931

namespace A347873

/-- `eq[n%2, A347870(n+1)]+1` -/
def P9380985082601516931.Spec : Prop :=
  ∀ n, (P9380985082601516931.a n : ℤ) = A347873 (n + 1)

end A347873

/-! ## A347873.P15900710931946095073

`eq[1, A347871(-xor(n, -1))]+1`
-/

namespace A347873.P15900710931946095073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347873.P15900710931946095073

namespace A347873

/-- `eq[1, A347871(-xor(n, -1))]+1` -/
def P15900710931946095073.Spec : Prop :=
  ∀ n, (P15900710931946095073.a n : ℤ) = A347873 (n + 1)

end A347873

/-! ## A347873.P16512799114571422567

`eq[1, A347871(round(acot(n)+n)+1)]+1`
-/

namespace A347873.P16512799114571422567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347873.P16512799114571422567

namespace A347873

/-- `eq[1, A347871(round(acot(n)+n)+1)]+1` -/
def P16512799114571422567.Spec : Prop :=
  ∀ n, (P16512799114571422567.a n : ℤ) = A347873 (n + 1)

end A347873

/-! ## A347873.P9602180110166798472

`eq[1, A347871(round(sqrt(n²+1))+1)]+1`
-/

namespace A347873.P9602180110166798472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347873.P9602180110166798472

namespace A347873

/-- `eq[1, A347871(round(sqrt(n²+1))+1)]+1` -/
def P9602180110166798472.Spec : Prop :=
  ∀ n, (P9602180110166798472.a n : ℤ) = A347873 (n + 1)

end A347873

/-! ## A347873.P18427398877324615193

`filter[A263715(n+2), A347871(#)]`
-/

namespace A347873.P18427398877324615193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A347873.P18427398877324615193

namespace A347873

/-- `filter[A263715(n+2), A347871(#)]` -/
def P18427398877324615193.Spec : Prop :=
  ∀ n, P18427398877324615193.a n = A347873 (n + 1)

end A347873

/-! ## A347873.P8307772810729234667

`filter[A079298(n+2), A347871(#)]`
-/

namespace A347873.P8307772810729234667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A347873.P8307772810729234667

namespace A347873

/-- `filter[A079298(n+2), A347871(#)]` -/
def P8307772810729234667.Spec : Prop :=
  ∀ n, P8307772810729234667.a n = A347873 (n + 1)

end A347873

/-! ## A347873.P6563649947108848709

`filter[A047595(n+2), A347871(#)]`
-/

namespace A347873.P6563649947108848709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A347873.P6563649947108848709

namespace A347873

/-- `filter[A047595(n+2), A347871(#)]` -/
def P6563649947108848709.Spec : Prop :=
  ∀ n, P6563649947108848709.a n = A347873 (n + 1)

end A347873

/-! ## A347873.P159620865513052954

`filter[A132999(n+1), A347871(#)]`
-/

namespace A347873.P159620865513052954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A347873.P159620865513052954

namespace A347873

/-- `filter[A132999(n+1), A347871(#)]` -/
def P159620865513052954.Spec : Prop :=
  ∀ n, P159620865513052954.a n = A347873 (n + 1)

end A347873

/-! ## A347873.P12037399536333698651

`filter[n+1, A347871(#)]`
-/

namespace A347873.P12037399536333698651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j) = 1) n)

end

end A347873.P12037399536333698651

namespace A347873

/-- `filter[n+1, A347871(#)]` -/
def P12037399536333698651.Spec : Prop :=
  ∀ n, (P12037399536333698651.a n : ℤ) = A347873 (n + 1)

end A347873

/-! ## A347873.P14818052502270852822

`eq[1, gcd(2, A342926(n+1)²)]+1`
-/

namespace A347873.P14818052502270852822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A342926 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A347873.P14818052502270852822

namespace A347873

/-- `eq[1, gcd(2, A342926(n+1)²)]+1` -/
def P14818052502270852822.Spec : Prop :=
  ∀ n, (P14818052502270852822.a n : ℤ) = A347873 (n + 1)

end A347873

/-! ## A347873.P6858285727993229422

`eq[ceil(acot(n)), A347871(A028310(n))]`
-/

namespace A347873.P6858285727993229422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347873.P6858285727993229422

namespace A347873

/-- `eq[ceil(acot(n)), A347871(A028310(n))]` -/
def P6858285727993229422.Spec : Prop :=
  ∀ n, (P6858285727993229422.a n : ℤ) = A347873 (n + 1)

end A347873

/-! ## A347873.P12389736523587632442

`eq[and(1, n), A165560(A000203(n+1))]+1`
-/

namespace A347873.P12389736523587632442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347873.P12389736523587632442

namespace A347873

/-- `eq[and(1, n), A165560(A000203(n+1))]+1` -/
def P12389736523587632442.Spec : Prop :=
  ∀ n, (P12389736523587632442.a n : ℤ) = A347873 (n + 1)

end A347873

/-! ## A347873.P3245450861178197009

`eq[1, A347871(n+1)]%A000032(n+1)+1`
-/

namespace A347873.P3245450861178197009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A000032 (n + 1)) + 1

end

end A347873.P3245450861178197009

namespace A347873

/-- `eq[1, A347871(n+1)]%A000032(n+1)+1` -/
def P3245450861178197009.Spec : Prop :=
  ∀ n, P3245450861178197009.a n = A347873 (n + 1)

end A347873

/-!
# A347874: Odd composites for which A342926(n) is even and A342926(2*n) is a multiple of 3.

The programs for A347874, there is no canonical definition to state claims against.
-/

/-! ## A347874.P12341667537348978881

`filter[A351562(n+1), A347870(#)]`
-/

namespace A347874.P12341667537348978881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347874.P12341667537348978881

/-!
# A347875: Numbers k such that A323905(sigma(k)) is equal to A323905(2*k).

The programs for A347875, there is no canonical definition to state claims against.
-/

/-! ## A347875.P10848815526138321645

`record[A325634(A095225(n+1))]`
-/

namespace A347875.P10848815526138321645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325634 (A095225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347875.P10848815526138321645

/-!
# A347876: a(n) = A323905(sigma(n)), where A323905(x) = A156552(x) - A048675(x).

The programs for A347876, the canonical program `A347876.P12063469541535710273` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347876 has offset 1).

The definition of A347876 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331750, A332221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347876.P12063469541535710273

`A332221(n+1)-A331750(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A347876

/-- `A332221(n+1)-A331750(n+1)` -/
def P12063469541535710273.Spec : Prop :=
  ∀ n, P12063469541535710273.a n = A347876 (n + 1)

theorem P12063469541535710273.correct : P12063469541535710273.Spec := by
  intro n
  simp only [A347876, Nat.add_sub_cancel]

end A347876

/-! ## A347876.P12593403235840957228

`A323905(A000203(n+1))`
-/

namespace A347876.P12593403235840957228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323905 (A000203 (n + 1)).toNat

end

end A347876.P12593403235840957228

namespace A347876

/-- `A323905(A000203(n+1))` -/
def P12593403235840957228.Spec : Prop :=
  ∀ n, P12593403235840957228.a n = A347876 (n + 1)

end A347876

/-! ## A347876.P5720259116214303090

`A323905(∑{d}[n+1, #])`
-/

namespace A347876.P5720259116214303090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323905 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A347876.P5720259116214303090

namespace A347876

/-- `A323905(∑{d}[n+1, #])` -/
def P5720259116214303090.Spec : Prop :=
  ∀ n, P5720259116214303090.a n = A347876 (n + 1)

end A347876

/-! ## A347876.P4140506141491553776

`A323905(Δ[A160664(n)])`
-/

namespace A347876.P4140506141491553776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323905 (f1 (n + 1) - f1 n).toNat

end

end A347876.P4140506141491553776

namespace A347876

/-- `A323905(Δ[A160664(n)])` -/
def P4140506141491553776.Spec : Prop :=
  ∀ n, P4140506141491553776.a n = A347876 (n + 1)

end A347876

/-! ## A347876.P1309329029966884925

`A323905(abs(Δ[A330725(n)]))`
-/

namespace A347876.P1309329029966884925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323905 |f1 (n + 1) - f1 n|.toNat

end

end A347876.P1309329029966884925

namespace A347876

/-- `A323905(abs(Δ[A330725(n)]))` -/
def P1309329029966884925.Spec : Prop :=
  ∀ n, P1309329029966884925.a n = A347876 (n + 1)

end A347876

/-! ## A347876.P4895845502900376147

`A323905(A245092(Δ[n²]))`
-/

namespace A347876.P4895845502900376147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323905 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A347876.P4895845502900376147

namespace A347876

/-- `A323905(A245092(Δ[n²]))` -/
def P4895845502900376147.Spec : Prop :=
  ∀ n, P4895845502900376147.a n = A347876 (n + 1)

end A347876

/-! ## A347876.P5535283395819987671

`A323905(A262610(Δ[n²]))`
-/

namespace A347876.P5535283395819987671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323905 (A262610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A347876.P5535283395819987671

namespace A347876

/-- `A323905(A262610(Δ[n²]))` -/
def P5535283395819987671.Spec : Prop :=
  ∀ n, P5535283395819987671.a n = A347876 (n + 1)

end A347876

/-! ## A347876.P2170826661360400458

`A323905(abs(A143348(n+1)))`
-/

namespace A347876.P2170826661360400458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323905 |A143348 (n + 1)|.toNat

end

end A347876.P2170826661360400458

namespace A347876

/-- `A323905(abs(A143348(n+1)))` -/
def P2170826661360400458.Spec : Prop :=
  ∀ n, P2170826661360400458.a n = A347876 (n + 1)

end A347876

/-! ## A347876.P2138313798977060898

`A323905(A000203(2*n-(n-1))-and(2, n²))`
-/

namespace A347876.P2138313798977060898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323905 (A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (Nat.land 2 (n ^ 2) : ℤ)).toNat

end

end A347876.P2138313798977060898

namespace A347876

/-- `A323905(A000203(2*n-(n-1))-and(2, n²))` -/
def P2138313798977060898.Spec : Prop :=
  ∀ n, P2138313798977060898.a n = A347876 (n + 1)

end A347876

/-! ## A347876.P8470912013293564550

`A323905((ϕ²-ϕ)*A000203(2*n-(n-1)))`
-/

namespace A347876.P8470912013293564550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323905 (SequenceMachineLib.roundAway ((Real.goldenRatio ^ 2 - Real.goldenRatio) * (A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℝ))).toNat

end

end A347876.P8470912013293564550

namespace A347876

/-- `A323905((ϕ²-ϕ)*A000203(2*n-(n-1)))` -/
def P8470912013293564550.Spec : Prop :=
  ∀ n, P8470912013293564550.a n = A347876 (n + 1)

end A347876

/-! ## A347876.P566249926272046391

`A332221(n+1)-A048675(A000203(n+1))`
-/

namespace A347876.P566249926272046391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332221 (n + 1) - A048675 (A000203 (n + 1)).toNat

end

end A347876.P566249926272046391

namespace A347876

/-- `A332221(n+1)-A048675(A000203(n+1))` -/
def P566249926272046391.Spec : Prop :=
  ∀ n, P566249926272046391.a n = A347876 (n + 1)

end A347876

/-! ## A347876.P4161438974839533163

`A156552(A000203(n+1))-A331750(n+1)`
-/

namespace A347876.P4161438974839533163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A000203 (n + 1)).toNat - A331750 (n + 1)

end

end A347876.P4161438974839533163

namespace A347876

/-- `A156552(A000203(n+1))-A331750(n+1)` -/
def P4161438974839533163.Spec : Prop :=
  ∀ n, P4161438974839533163.a n = A347876 (n + 1)

end A347876

/-!
# A347877: Numbers k for which A003415(sigma(k)) is odd.

The programs for A347877, the canonical program `A347877.P587708220660822344` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347877 has offset 1).

The definition of A347877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347877.P587708220660822344

`record[(n+2)*A347870(n+2)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A347877

/-- `record[(n+2)*A347870(n+2)]` -/
def P587708220660822344.Spec : Prop :=
  ∀ n, P587708220660822344.a n = A347877 (n + 1)

theorem P587708220660822344.correct : P587708220660822344.Spec := by
  intro n
  simp only [A347877, Nat.add_sub_cancel]

end A347877

/-! ## A347877.P18418266802722199749

`lt[0, A347870(n+1)]+1`
-/

namespace A347877.P18418266802722199749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347877.P18418266802722199749

namespace A347877

/-- `lt[0, A347870(n+1)]+1` -/
def P18418266802722199749.Spec : Prop :=
  ∀ n, (P18418266802722199749.a n : ℤ) = A347877 (n + 1)

end A347877

/-! ## A347877.P17578784717458430642

`eq[and(1, n), A347871(n+1)]+1`
-/

namespace A347877.P17578784717458430642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347877.P17578784717458430642

namespace A347877

/-- `eq[and(1, n), A347871(n+1)]+1` -/
def P17578784717458430642.Spec : Prop :=
  ∀ n, (P17578784717458430642.a n : ℤ) = A347877 (n + 1)

end A347877

/-! ## A347877.P12589940364075133864

`filter[A001481(n+2), A347870(#)]`
-/

namespace A347877.P12589940364075133864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P12589940364075133864

namespace A347877

/-- `filter[A001481(n+2), A347870(#)]` -/
def P12589940364075133864.Spec : Prop :=
  ∀ n, P12589940364075133864.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P2131560942738127834

`filter[A005792(n+1), A347870(#)]`
-/

namespace A347877.P2131560942738127834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P2131560942738127834

namespace A347877

/-- `filter[A005792(n+1), A347870(#)]` -/
def P2131560942738127834.Spec : Prop :=
  ∀ n, P2131560942738127834.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P464275290246664238

`filter[A285801(n+1), A347870(#)]`
-/

namespace A347877.P464275290246664238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P464275290246664238

namespace A347877

/-- `filter[A285801(n+1), A347870(#)]` -/
def P464275290246664238.Spec : Prop :=
  ∀ n, P464275290246664238.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P14357651137548907732

`filter[A327609(n+2), A347870(#)]`
-/

namespace A347877.P14357651137548907732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327609 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P14357651137548907732

namespace A347877

/-- `filter[A327609(n+2), A347870(#)]` -/
def P14357651137548907732.Spec : Prop :=
  ∀ n, P14357651137548907732.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P1733921573036300965

`filter[A383784(n+2), A347870(#)]`
-/

namespace A347877.P1733921573036300965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P1733921573036300965

namespace A347877

/-- `filter[A383784(n+2), A347870(#)]` -/
def P1733921573036300965.Spec : Prop :=
  ∀ n, P1733921573036300965.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P18179222218226620688

`filter[A353202(n+1), A347870(#)]`
-/

namespace A347877.P18179222218226620688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P18179222218226620688

namespace A347877

/-- `filter[A353202(n+1), A347870(#)]` -/
def P18179222218226620688.Spec : Prop :=
  ∀ n, P18179222218226620688.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P7575706661249408337

`filter[A091072(n+1), A347870(#)]`
-/

namespace A347877.P7575706661249408337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P7575706661249408337

namespace A347877

/-- `filter[A091072(n+1), A347870(#)]` -/
def P7575706661249408337.Spec : Prop :=
  ∀ n, P7575706661249408337.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P8967952323421391818

`filter[A225857(n+1), A347870(#)]`
-/

namespace A347877.P8967952323421391818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P8967952323421391818

namespace A347877

/-- `filter[A225857(n+1), A347870(#)]` -/
def P8967952323421391818.Spec : Prop :=
  ∀ n, P8967952323421391818.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P6698953364201327224

`filter[A351723(n+2), A347870(#)]`
-/

namespace A347877.P6698953364201327224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351723 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P6698953364201327224

namespace A347877

/-- `filter[A351723(n+2), A347870(#)]` -/
def P6698953364201327224.Spec : Prop :=
  ∀ n, P6698953364201327224.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P16523296101909130727

`eq[1, A342925(n+1)%2]+1`
-/

namespace A347877.P16523296101909130727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342925 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347877.P16523296101909130727

namespace A347877

/-- `eq[1, A342925(n+1)%2]+1` -/
def P16523296101909130727.Spec : Prop :=
  ∀ n, (P16523296101909130727.a n : ℤ) = A347877 (n + 1)

end A347877

/-! ## A347877.P2338380916500014395

`filter[A047614(n+2), A347870(#)]`
-/

namespace A347877.P2338380916500014395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P2338380916500014395

namespace A347877

/-- `filter[A047614(n+2), A347870(#)]` -/
def P2338380916500014395.Spec : Prop :=
  ∀ n, P2338380916500014395.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P8927777214745442837

`filter[A269176(n+1), A347870(#)]`
-/

namespace A347877.P8927777214745442837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P8927777214745442837

namespace A347877

/-- `filter[A269176(n+1), A347870(#)]` -/
def P8927777214745442837.Spec : Prop :=
  ∀ n, P8927777214745442837.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P10263976318851245853

`filter[A049692(n+1), A347870(#)]`
-/

namespace A347877.P10263976318851245853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P10263976318851245853

namespace A347877

/-- `filter[A049692(n+1), A347870(#)]` -/
def P10263976318851245853.Spec : Prop :=
  ∀ n, P10263976318851245853.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P2099841048533897774

`filter[A004773(n+1), A347870(#)]`
-/

namespace A347877.P2099841048533897774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P2099841048533897774

namespace A347877

/-- `filter[A004773(n+1), A347870(#)]` -/
def P2099841048533897774.Spec : Prop :=
  ∀ n, P2099841048533897774.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P15791899366287405706

`filter[A007417(n+1), A347870(#)]`
-/

namespace A347877.P15791899366287405706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P15791899366287405706

namespace A347877

/-- `filter[A007417(n+1), A347870(#)]` -/
def P15791899366287405706.Spec : Prop :=
  ∀ n, P15791899366287405706.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P15244551235143538921

`filter[A047498(n+2), A347870(#)]`
-/

namespace A347877.P15244551235143538921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047498 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P15244551235143538921

namespace A347877

/-- `filter[A047498(n+2), A347870(#)]` -/
def P15244551235143538921.Spec : Prop :=
  ∀ n, P15244551235143538921.a n = A347877 (n + 1)

end A347877

/-! ## A347877.P145100684331311691

`filter[A047602(n+2), A347870(#)]`
-/

namespace A347877.P145100684331311691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A347877.P145100684331311691

namespace A347877

/-- `filter[A047602(n+2), A347870(#)]` -/
def P145100684331311691.Spec : Prop :=
  ∀ n, P145100684331311691.a n = A347877 (n + 1)

end A347877

/-!
# A347878: Numbers k for which A003415(sigma(k)) is even.

The programs for A347878, there is no canonical definition to state claims against.
-/

/-! ## A347878.P11828426788844412006

`eq[0, A347870(n+1)]+1`
-/

namespace A347878.P11828426788844412006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347878.P11828426788844412006

/-! ## A347878.P10302699543527092667

`comp[A347877(n+1)-1]+1`
-/

namespace A347878.P10302699543527092667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A347878.P10302699543527092667

/-! ## A347878.P1441282135825438095

`comp[(n+2)*A347870(n+2)]`
-/

namespace A347878.P1441282135825438095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A347870 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A347878.P1441282135825438095

/-! ## A347878.P955247046916634654

`eq[0, A342925(n+1)%2]+1`
-/

namespace A347878.P955247046916634654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342925 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347878.P955247046916634654

/-! ## A347878.P15264793763814910790

`eq[n%2, A347871(round(acot(n)+n))]`
-/

namespace A347878.P15264793763814910790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347878.P15264793763814910790

/-! ## A347878.P15618339496001792391

`eq[0, A347870(A000038(n)+n)]`
-/

namespace A347878.P15618339496001792391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347878.P15618339496001792391

/-! ## A347878.P1348906610030597718

`eq[n%2, A347871(A028310(n))]`
-/

namespace A347878.P1348906610030597718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347878.P1348906610030597718

/-! ## A347878.P700969401854772442

`eq[0, A347870(xor(n, A000038(n)))]`
-/

namespace A347878.P700969401854772442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347878.P700969401854772442

/-! ## A347878.P15717433708364923228

`eq[0, A165560(A000203(n+1))]+1`
-/

namespace A347878.P15717433708364923228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347878.P15717433708364923228

/-! ## A347878.P17607609879683449660

`eq[A059841(n), A347871(n+1)]+1`
-/

namespace A347878.P17607609879683449660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A347878.P17607609879683449660

/-!
# A347879: The nearest common ancestor of n and sigma(n) in the Doudna tree (A005940).

The programs for A347879, there is no canonical definition to state claims against.
-/

/-! ## A347879.P9970779445556600760

`A053438(A347380(n+1))^Δ[A077342(n+1)]`
-/

namespace A347879.P9970779445556600760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053438 (A347380 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A347879.P9970779445556600760

/-! ## A347879.P2731860745574729128

`A053438(A347380(n+1))^A001221(A000079(n))`
-/

namespace A347879.P2731860745574729128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053438 (A347380 (n + 1)).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A347879.P2731860745574729128

/-!
# A347880: Numbers k such that A342926(k) is a multiple of 3.

The programs for A347880, the canonical program `A347880.P396111995697444498` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347880 has offset 1).

The definition of A347880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347880.P396111995697444498

`eq[0, A347883(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A347880

/-- `eq[0, A347883(n+1)]+1` -/
def P396111995697444498.Spec : Prop :=
  ∀ n, (P396111995697444498.a n : ℤ) = A347880 (n + 1)

theorem P396111995697444498.correct : P396111995697444498.Spec := by
  intro n
  simp only [A347880, Nat.add_sub_cancel]

end A347880

/-! ## A347880.P13840661504231623340

`lt[A347883(round(acot(n)+n)), 1]`
-/

namespace A347880.P13840661504231623340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A347880.P13840661504231623340

namespace A347880

/-- `lt[A347883(round(acot(n)+n)), 1]` -/
def P13840661504231623340.Spec : Prop :=
  ∀ n, (P13840661504231623340.a n : ℤ) = A347880 (n + 1)

end A347880

/-! ## A347880.P2697121631110975035

`lt[A347883(round(sqrt(n²+1))), 1]`
-/

namespace A347880.P2697121631110975035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A347880.P2697121631110975035

namespace A347880

/-- `lt[A347883(round(sqrt(n²+1))), 1]` -/
def P2697121631110975035.Spec : Prop :=
  ∀ n, (P2697121631110975035.a n : ℤ) = A347880 (n + 1)

end A347880

/-! ## A347880.P9368402510750244773

`lt[A347883(C(n+1, n)), 1]+1`
-/

namespace A347880.P9368402510750244773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (Nat.choose (n + 1) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A347880.P9368402510750244773

namespace A347880

/-- `lt[A347883(C(n+1, n)), 1]+1` -/
def P9368402510750244773.Spec : Prop :=
  ∀ n, (P9368402510750244773.a n : ℤ) = A347880 (n + 1)

end A347880

/-! ## A347880.P8348035671161009723

`A020725(eq[0, A347883(n+1)])`
-/

namespace A347880.P8348035671161009723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347880.P8348035671161009723

namespace A347880

/-- `A020725(eq[0, A347883(n+1)])` -/
def P8348035671161009723.Spec : Prop :=
  ∀ n, P8348035671161009723.a n = A347880 (n + 1)

end A347880

/-! ## A347880.P7700481606037765521

`A065475(eq[0, A347883(n+1)])`
-/

namespace A347880.P7700481606037765521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347880.P7700481606037765521

namespace A347880

/-- `A065475(eq[0, A347883(n+1)])` -/
def P7700481606037765521.Spec : Prop :=
  ∀ n, P7700481606037765521.a n = A347880 (n + 1)

end A347880

/-! ## A347880.P7858533962301839155

`eq[A342926(n+1)%3, 0]+1`
-/

namespace A347880.P7858533962301839155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342926 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A347880.P7858533962301839155

namespace A347880

/-- `eq[A342926(n+1)%3, 0]+1` -/
def P7858533962301839155.Spec : Prop :=
  ∀ n, (P7858533962301839155.a n : ℤ) = A347880 (n + 1)

end A347880

/-! ## A347880.P3524513708060824273

`eq[0, A347883(A028310(n))]`
-/

namespace A347880.P3524513708060824273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347880.P3524513708060824273

namespace A347880

/-- `eq[0, A347883(A028310(n))]` -/
def P3524513708060824273.Spec : Prop :=
  ∀ n, (P3524513708060824273.a n : ℤ) = A347880 (n + 1)

end A347880

/-! ## A347880.P3123140142119664162

`eq[0, A347883(A123108(2*n))]`
-/

namespace A347880.P3123140142119664162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347880.P3123140142119664162

namespace A347880

/-- `eq[0, A347883(A123108(2*n))]` -/
def P3123140142119664162.Spec : Prop :=
  ∀ n, (P3123140142119664162.a n : ℤ) = A347880 (n + 1)

end A347880

/-! ## A347880.P2012415603850044442

`eq[0, A347883(A233583(n+1))]`
-/

namespace A347880.P2012415603850044442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347880.P2012415603850044442

namespace A347880

/-- `eq[0, A347883(A233583(n+1))]` -/
def P2012415603850044442.Spec : Prop :=
  ∀ n, (P2012415603850044442.a n : ℤ) = A347880 (n + 1)

end A347880

/-!
# A347882: Odd numbers k for which A003415(sigma(k^2))-(k^2) is strictly positive and a multiple of 3. Here A003415 is the arithmetic derivative.

The programs for A347882, there is no canonical definition to state claims against.
-/

/-! ## A347882.P227200840422589669

`A010684(A215503(n))*A220171(n+1)`
-/

namespace A347882.P227200840422589669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A215503 n).toNat * A220171 (n + 1)

end

end A347882.P227200840422589669

/-! ## A347882.P10973419420909582966

`A085082(A175255(n+1))*A220171(n+1)`
-/

namespace A347882.P10973419420909582966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A175255 (n + 1)).toNat * A220171 (n + 1)

end

end A347882.P10973419420909582966

/-! ## A347882.P14784073663638780951

`3*A220171(A078213(n+1))`
-/

namespace A347882.P14784073663638780951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A220171 (A078213 (n + 1)).toNat

end

end A347882.P14784073663638780951

/-! ## A347882.P369196425781401041

`3*A220171(A107070(n+1))`
-/

namespace A347882.P369196425781401041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A220171 (A107070 (n + 1)).toNat

end

end A347882.P369196425781401041

/-!
# A347883: a(n) = A342926(n) mod 3.

The programs for A347883, the canonical program `A347883.P4782406160806441288` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347883 has offset 1).

The definition of A347883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347883.P4782406160806441288

`(A342926(n+1)%3+3)%3`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A347883

/-- `(A342926(n+1)%3+3)%3` -/
def P4782406160806441288.Spec : Prop :=
  ∀ n, P4782406160806441288.a n = A347883 (n + 1)

theorem P4782406160806441288.correct : P4782406160806441288.Spec := by
  intro n
  simp only [A347883, Nat.add_sub_cancel]

end A347883

/-! ## A347883.P5513359918152566583

`(A342925(n+1)+2*(n+1))%3`
-/

namespace A347883.P5513359918152566583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342925 (n + 1) + (2 * (n + 1) : ℤ)) 3

end

end A347883.P5513359918152566583

namespace A347883

/-- `(A342925(n+1)+2*(n+1))%3` -/
def P5513359918152566583.Spec : Prop :=
  ∀ n, P5513359918152566583.a n = A347883 (n + 1)

end A347883

/-! ## A347883.P1926937482725452573

`(A005843(n+1)+A003415(A000203(n+1)))%3`
-/

namespace A347883.P1926937482725452573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (n + 1) + A003415 (A000203 (n + 1)).toNat) 3

end

end A347883.P1926937482725452573

namespace A347883

/-- `(A005843(n+1)+A003415(A000203(n+1)))%3` -/
def P1926937482725452573.Spec : Prop :=
  ∀ n, P1926937482725452573.a n = A347883 (n + 1)

end A347883

/-! ## A347883.P7275302449803475340

`(A319703(A074400(n+1))+2*(n+1))%3`
-/

namespace A347883.P7275302449803475340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319703 (A074400 (n + 1)).toNat + (2 * (n + 1) : ℤ)) 3

end

end A347883.P7275302449803475340

namespace A347883

/-- `(A319703(A074400(n+1))+2*(n+1))%3` -/
def P7275302449803475340.Spec : Prop :=
  ∀ n, P7275302449803475340.a n = A347883 (n + 1)

end A347883

/-! ## A347883.P6390117475253613355

`A010872(A342925(n+1)+2-A010872(n))`
-/

namespace A347883.P6390117475253613355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A342925 (n + 1) + (2 - A010872 n)).toNat

end

end A347883.P6390117475253613355

namespace A347883

/-- `A010872(A342925(n+1)+2-A010872(n))` -/
def P6390117475253613355.Spec : Prop :=
  ∀ n, P6390117475253613355.a n = A347883 (n + 1)

end A347883

/-! ## A347883.P11016301105564360653

`A010872(A342925(n+1)+A016873(n))`
-/

namespace A347883.P11016301105564360653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A342925 (n + 1) + A016873 n).toNat

end

end A347883.P11016301105564360653

namespace A347883

/-- `A010872(A342925(n+1)+A016873(n))` -/
def P11016301105564360653.Spec : Prop :=
  ∀ n, P11016301105564360653.a n = A347883 (n + 1)

end A347883

/-!
# A347885: Odd numbers k such that sigma(k^2) has an odd number of prime factors when counted with multiplicity.

The programs for A347885, there is no canonical definition to state claims against.
-/

/-! ## A347885.P8094579504347239747

`eq[1, A347870((n^(n%2))²)]`
-/

namespace A347885.P8094579504347239747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 ((n ^ (n % 2)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347885.P8094579504347239747

/-! ## A347885.P5372949450968722367

`eq[(-1)^n, A347870((n+1)²)]+1`
-/

namespace A347885.P5372949450968722367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A347885.P5372949450968722367

/-! ## A347885.P1620733849604924043

`eq[0, A347871(A009001(n)²)]`
-/

namespace A347885.P1620733849604924043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (A009001 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347885.P1620733849604924043

/-! ## A347885.P14228966211910190860

`eq[0, A347871(A093178(n)²)]`
-/

namespace A347885.P14228966211910190860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (A093178 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347885.P14228966211910190860

/-! ## A347885.P15471343203361262118

`eq[1, A347870(A009001(n)²)]`
-/

namespace A347885.P15471343203361262118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (A009001 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347885.P15471343203361262118

/-! ## A347885.P7413203723174984845

`eq[1, A347870(A093178(n)²)]`
-/

namespace A347885.P7413203723174984845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (A093178 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347885.P7413203723174984845

/-! ## A347885.P12064198618014063794

`eq[A166333(n), A347870(A253909(n))]`
-/

namespace A347885.P12064198618014063794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347885.P12064198618014063794

/-! ## A347885.P15731262857590908689

`eq[A237420(n), A347871(A253909(n))]`
-/

namespace A347885.P15731262857590908689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347885.P15731262857590908689

/-!
# A347886: Odd numbers k such that sigma(k^2) has an even number of prime factors when counted with multiplicity.

The programs for A347886, there is no canonical definition to state claims against.
-/

/-! ## A347886.P8656819161430170974

`eq[(-1)^n, A347871((n+1)²)]+1`
-/

namespace A347886.P8656819161430170974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A347886.P8656819161430170974

/-! ## A347886.P11779184337952026844

`eq[n%2, A347871(A009001(n)²)]`
-/

namespace A347886.P11779184337952026844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (A009001 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347886.P11779184337952026844

/-! ## A347886.P14085510976220732744

`eq[gcd(2, n), A347871(A093178(n)²)]`
-/

namespace A347886.P14085510976220732744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (A093178 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347886.P14085510976220732744

/-! ## A347886.P6110733270243981865

`eq[(n+1)%2, A347870(A009001(n)²)]`
-/

namespace A347886.P6110733270243981865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (A009001 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347886.P6110733270243981865

/-! ## A347886.P7651107476795893835

`eq[A319998(n+1), A347870((n+1)²)]+1`
-/

namespace A347886.P7651107476795893835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A347886.P7651107476795893835

/-! ## A347886.P71064068138281782

`eq[A000035(n), A347871(A009001(n)²)]`
-/

namespace A347886.P71064068138281782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (A009001 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347886.P71064068138281782

/-! ## A347886.P7527690169468029222

`eq[A056594(n), A347870(A009001(n)²)]`
-/

namespace A347886.P7527690169468029222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (A009001 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347886.P7527690169468029222

/-! ## A347886.P5001629418272427576

`eq[A059841(n), A347870(A009001(n)²)]`
-/

namespace A347886.P5001629418272427576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (A009001 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347886.P5001629418272427576

/-! ## A347886.P9400635435807760013

`eq[A000035(n), A347871(A093178(n)²)]`
-/

namespace A347886.P9400635435807760013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (A093178 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347886.P9400635435807760013

/-!
# A347887: Odd numbers k for which A003415(sigma(k^2))-(k^2) is strictly positive and even. Here A003415 is the arithmetic derivative.

The programs for A347887, there is no canonical definition to state claims against.
-/

/-! ## A347887.P4937978119632584666

`A347881(A029731(n+1)+2)`
-/

namespace A347887.P4937978119632584666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347881 (A029731 (n + 1) + 2).toNat

end

end A347887.P4937978119632584666

/-! ## A347887.P13466052063677548032

`A347881(A029968(n+1)+2)`
-/

namespace A347887.P13466052063677548032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347881 (A029968 (n + 1) + 2).toNat

end

end A347887.P13466052063677548032

/-! ## A347887.P8777961335089869620

`A347881(A029970(n+1)+2)`
-/

namespace A347887.P8777961335089869620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347881 (A029970 (n + 1) + 2).toNat

end

end A347887.P8777961335089869620

/-! ## A347887.P16909399784590801712

`A347881(A249157(n+2)+1)`
-/

namespace A347887.P16909399784590801712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347881 (A249157 (n + 2) + 1).toNat

end

end A347887.P16909399784590801712

/-! ## A347887.P17014691141876159137

`record[gcd(A185284(3*n+2), A347881(n+2))]`
-/

namespace A347887.P17014691141876159137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 (3 * n + 2)) (A347881 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347887.P17014691141876159137

/-!
# A347888: Odd numbers k for which A003415(sigma(k^2))-(k^2) is strictly positive and a multiple of six. Here A003415 is the arithmetic derivative.

The programs for A347888, there is no canonical definition to state claims against.
-/

/-! ## A347888.P16302846026754433105

`∩[A347882(n+1), A347887(n+1)]`
-/

namespace A347888.P16302846026754433105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347888.P16302846026754433105

/-! ## A347888.P10743124474548828882

`A347882(lt[A325545(n), A104842(3*n+2)])`
-/

namespace A347888.P10743124474548828882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104842 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347882 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A347888.P10743124474548828882

/-!
# A347889: Numbers k such that sigma(k) > 2*k and A003415(sigma(k)) < k, where A003415 is the arithmetic derivative, and sigma is the sum of divisors function.

The programs for A347889, there is no canonical definition to state claims against.
-/

/-! ## A347889.P1668059219695097996

`∩[A083211(n+1), A343216(n+1)]`
-/

namespace A347889.P1668059219695097996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347889.P1668059219695097996

/-! ## A347889.P6239992230985845983

`∩[A156903(n+1), A343216(n+1)]`
-/

namespace A347889.P6239992230985845983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347889.P6239992230985845983

/-! ## A347889.P6243794270039677788

`∩[A136446(n+1), A343216(n+1)]`
-/

namespace A347889.P6243794270039677788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347889.P6243794270039677788

/-! ## A347889.P8582269356618931619

`∩[A326133(n+1), A343216(n+1)]`
-/

namespace A347889.P8582269356618931619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347889.P8582269356618931619

/-! ## A347889.P3971512435731687420

`∩[A087245(n+1), A343216(n+1)]`
-/

namespace A347889.P3971512435731687420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347889.P3971512435731687420

/-! ## A347889.P6794855989525287376

`∩[A005101(n+1), A343216(n+1)]`
-/

namespace A347889.P6794855989525287376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347889.P6794855989525287376

/-! ## A347889.P8223576772980826661

`∩[A005835(n+1), A343216(n+1)]`
-/

namespace A347889.P8223576772980826661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347889.P8223576772980826661

/-! ## A347889.P6708927578234070910

`∩[A023196(n+1), A343216(n+1)]`
-/

namespace A347889.P6708927578234070910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347889.P6708927578234070910

/-! ## A347889.P16994430996679144629

`∩[A177052(n+1), A343216(n+1)]`
-/

namespace A347889.P16994430996679144629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347889.P16994430996679144629

/-!
# A347890: Odd numbers k such that sigma(k) > 2*k and A003415(sigma(k)) < k, where A003415 is the arithmetic derivative, and sigma is the sum of divisors function.

The programs for A347890, there is no canonical definition to state claims against.
-/

/-! ## A347890.P5992251597137218266

`A347891(n+1)²`
-/

namespace A347890.P5992251597137218266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347891 (n + 1) ^ 2

end

end A347890.P5992251597137218266

/-! ## A347890.P15601998313413770473

`record[A347891(ceil(C(or(1, n), n)/2))²]`
-/

namespace A347890.P15601998313413770473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347891 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347890.P15601998313413770473

/-! ## A347890.P2291139900586693607

`record[A347891(A141256(n))²]`
-/

namespace A347890.P2291139900586693607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347891 (A141256 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347890.P2291139900586693607

/-! ## A347890.P12250226831345381414

`record[A347891(A286622(n))²]`
-/

namespace A347890.P12250226831345381414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347891 (A286622 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347890.P12250226831345381414

/-! ## A347890.P875275338072357472

`A347891(n+1)^A020639(2*(n+1))`
-/

namespace A347890.P875275338072357472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347891 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A347890.P875275338072357472

/-!
# A347891: Odd numbers k such that sigma(k^2) > 2*k^2 and A003415(sigma(k^2)) < k^2.

The programs for A347891, there is no canonical definition to state claims against.
-/

/-! ## A347891.P11618722597946347318

`sqrt(A347890(n+1))`
-/

namespace A347891.P11618722597946347318
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A347890 (n + 1) : ℝ)

end

end A347891.P11618722597946347318

/-! ## A347891.P11540874594482693707

`root(A347890(Δ[n²]-n), 2)`
-/

namespace A347891.P11540874594482693707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A347890 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A347891.P11540874594482693707

/-! ## A347891.P5677965492924787706

`∑{d}[root(A347890(n+1), 2), A000010(#)]`
-/

namespace A347891.P5677965492924787706
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A347890 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A347891.P5677965492924787706

/-! ## A347891.P13610142918156090351

`root(A347890(n+1), 2)*A007318(∑[n])`
-/

namespace A347891.P13610142918156090351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A347890 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A347891.P13610142918156090351

/-! ## A347891.P13991976164388651778

`∏{d}[root(A347890(n+1), 2), A014963(#)]`
-/

namespace A347891.P13991976164388651778
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A347890 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A014963 d

end

end A347891.P13991976164388651778

/-!
# A347892: Nonsquarefree numbers k such that A003968(k) is a multiple of k, where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

The programs for A347892, the canonical program `A347892.P11518152403954504806` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347892 has offset 1).

The definition of A347892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347892.P11518152403954504806

`filter[A008591(n+1), A353559(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A347892

/-- `filter[A008591(n+1), A353559(#)]` -/
def P11518152403954504806.Spec : Prop :=
  ∀ n, P11518152403954504806.a n = A347892 (n + 1)

theorem P11518152403954504806.correct : P11518152403954504806.Spec := by
  intro n
  simp only [A347892, Nat.add_sub_cancel]

end A347892

/-! ## A347892.P7519124339174108417

`filter[A008594(n+1), A353559(#)]`
-/

namespace A347892.P7519124339174108417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P7519124339174108417

namespace A347892

/-- `filter[A008594(n+1), A353559(#)]` -/
def P7519124339174108417.Spec : Prop :=
  ∀ n, P7519124339174108417.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P9378995605411423219

`filter[A008600(n+1), A353559(#)]`
-/

namespace A347892.P9378995605411423219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P9378995605411423219

namespace A347892

/-- `filter[A008600(n+1), A353559(#)]` -/
def P9378995605411423219.Spec : Prop :=
  ∀ n, P9378995605411423219.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P13169537443469133538

`filter[A014766(n+1), A353559(#)]`
-/

namespace A347892.P13169537443469133538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P13169537443469133538

namespace A347892

/-- `filter[A014766(n+1), A353559(#)]` -/
def P13169537443469133538.Spec : Prop :=
  ∀ n, P13169537443469133538.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P11826309761392897194

`filter[A036785(n+1), A353559(#)]`
-/

namespace A347892.P11826309761392897194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P11826309761392897194

namespace A347892

/-- `filter[A036785(n+1), A353559(#)]` -/
def P11826309761392897194.Spec : Prop :=
  ∀ n, P11826309761392897194.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P409129574615781803

`filter[A044102(n+1), A353559(#)]`
-/

namespace A347892.P409129574615781803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P409129574615781803

namespace A347892

/-- `filter[A044102(n+1), A353559(#)]` -/
def P409129574615781803.Spec : Prop :=
  ∀ n, P409129574615781803.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P3813937923781072455

`filter[A048111(n+1), A353559(#)]`
-/

namespace A347892.P3813937923781072455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P3813937923781072455

namespace A347892

/-- `filter[A048111(n+1), A353559(#)]` -/
def P3813937923781072455.Spec : Prop :=
  ∀ n, P3813937923781072455.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P8238975234723119303

`filter[A064597(n+1), A353559(#)]`
-/

namespace A347892.P8238975234723119303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P8238975234723119303

namespace A347892

/-- `filter[A064597(n+1), A353559(#)]` -/
def P8238975234723119303.Spec : Prop :=
  ∀ n, P8238975234723119303.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P11557746370124558443

`filter[A082295(n+1), A353559(#)]`
-/

namespace A347892.P11557746370124558443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P11557746370124558443

namespace A347892

/-- `filter[A082295(n+1), A353559(#)]` -/
def P11557746370124558443.Spec : Prop :=
  ∀ n, P11557746370124558443.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P7882459316911281333

`filter[A167632(n+1), A353559(#)]`
-/

namespace A347892.P7882459316911281333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P7882459316911281333

namespace A347892

/-- `filter[A167632(n+1), A353559(#)]` -/
def P7882459316911281333.Spec : Prop :=
  ∀ n, P7882459316911281333.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P1625130987049382669

`filter[A274241(n+1), A353559(#)]`
-/

namespace A347892.P1625130987049382669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P1625130987049382669

namespace A347892

/-- `filter[A274241(n+1), A353559(#)]` -/
def P1625130987049382669.Spec : Prop :=
  ∀ n, P1625130987049382669.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P16607470505849119018

`filter[A327945(n+1), A353559(#)]`
-/

namespace A347892.P16607470505849119018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P16607470505849119018

namespace A347892

/-- `filter[A327945(n+1), A353559(#)]` -/
def P16607470505849119018.Spec : Prop :=
  ∀ n, P16607470505849119018.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P5746177501845984346

`filter[A338539(n+1), A353559(#)]`
-/

namespace A347892.P5746177501845984346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P5746177501845984346

namespace A347892

/-- `filter[A338539(n+1), A353559(#)]` -/
def P5746177501845984346.Spec : Prop :=
  ∀ n, P5746177501845984346.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P2110723108011001150

`filter[A347960(n+1), A353559(#)]`
-/

namespace A347892.P2110723108011001150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P2110723108011001150

namespace A347892

/-- `filter[A347960(n+1), A353559(#)]` -/
def P2110723108011001150.Spec : Prop :=
  ∀ n, P2110723108011001150.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P16344466564255653702

`filter[A357605(n+1), A353559(#)]`
-/

namespace A347892.P16344466564255653702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P16344466564255653702

namespace A347892

/-- `filter[A357605(n+1), A353559(#)]` -/
def P16344466564255653702.Spec : Prop :=
  ∀ n, P16344466564255653702.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P17801845361127613022

`filter[A375397(n+1), A353559(#)]`
-/

namespace A347892.P17801845361127613022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P17801845361127613022

namespace A347892

/-- `filter[A375397(n+1), A353559(#)]` -/
def P17801845361127613022.Spec : Prop :=
  ∀ n, P17801845361127613022.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P6692443347166078299

`filter[A390557(n+1), A353559(#)]`
-/

namespace A347892.P6692443347166078299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P6692443347166078299

namespace A347892

/-- `filter[A390557(n+1), A353559(#)]` -/
def P6692443347166078299.Spec : Prop :=
  ∀ n, P6692443347166078299.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P11511163675834602360

`filter[A118510(2*(n+1)), A353559(#)]`
-/

namespace A347892.P11511163675834602360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P11511163675834602360

namespace A347892

/-- `filter[A118510(2*(n+1)), A353559(#)]` -/
def P11511163675834602360.Spec : Prop :=
  ∀ n, P11511163675834602360.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P13926671364268717

`filter[A152053(2*n+1), A353559(#)]`
-/

namespace A347892.P13926671364268717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152053 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P13926671364268717

namespace A347892

/-- `filter[A152053(2*n+1), A353559(#)]` -/
def P13926671364268717.Spec : Prop :=
  ∀ n, P13926671364268717.a n = A347892 (n + 1)

end A347892

/-! ## A347892.P9127403346517165442

`filter[A298031(2*n+1), A353559(#)]`
-/

namespace A347892.P9127403346517165442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298031 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P9127403346517165442

namespace A347892

/-- `filter[A298031(2*n+1), A353559(#)]` -/
def P9127403346517165442.Spec : Prop :=
  ∀ n, P9127403346517165442.a n = A347892 (n + 1)

end A347892

/-!
# A347893: E.g.f.: Product_{k>=1} (1 + x^k)^cos(x).

The programs for A347893, there is no canonical definition to state claims against.
-/

/-! ## A347893.P13917053397158682048

`A238872(C(∑[2^floor(n/2)], n+1))`
-/

namespace A347893.P13917053397158682048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (Nat.choose (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat (n + 1))

end

end A347893.P13917053397158682048

/-! ## A347893.P15326110265482652599

`A096781(A001519(n))`
-/

namespace A347893.P15326110265482652599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096781 (A001519 n).toNat

end

end A347893.P15326110265482652599

/-!
# A347894: E.g.f.: Product_{k>=1} (1 + x^k)^tan(x).

The programs for A347894, there is no canonical definition to state claims against.
-/

/-! ## A347894.P7138197824609049851

`A244017(a(n-1))+50` with `a(0)=1, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A347894.P7138197824609049851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 3] fun n a =>
  A244017 (a (n - 1)).toNat + 50

end

end A347894.P7138197824609049851

/-! ## A347894.P16606904366121206324

`A247498(A354595(n))`
-/

namespace A347894.P16606904366121206324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247498 (A354595 n).toNat

end

end A347894.P16606904366121206324

/-!
# A347895: E.g.f.: Product_{k>=1} 1 / (1 - x^k)^(sin(x)/k).

The programs for A347895, there is no canonical definition to state claims against.
-/

/-! ## A347895.P5572354924543733678

`n*A298482(a(n-1))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A347895.P5572354924543733678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  (n : ℤ) * A298482 (a (n - 1)).toNat

end

end A347895.P5572354924543733678

/-! ## A347895.P16493829577023692351

`floor(acot(n))-1+A048774(n)+C(n, 2)`
-/

namespace A347895.P16493829577023692351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 + (A048774 n + (Nat.choose n 2 : ℤ))

end

end A347895.P16493829577023692351

/-!
# A347896: E.g.f.: Product_{k>=1} 1 / (1 - x^k)^(cos(x)/k).

The programs for A347896, there is no canonical definition to state claims against.
-/

/-! ## A347896.P9052872702787846790

`A173304(A008262(n))`
-/

namespace A347896.P9052872702787846790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173304 (A008262 n).toNat

end

end A347896.P9052872702787846790

/-! ## A347896.P9723658898149028012

`A080594(A060656(n)²)`
-/

namespace A347896.P9723658898149028012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080594 (A060656 n ^ 2).toNat

end

end A347896.P9723658898149028012

/-!
# A347899: E.g.f.: Product_{k>=1} (1 + x^k)^(cos(x)/k).

The programs for A347899, there is no canonical definition to state claims against.
-/

/-! ## A347899.P7679879914788085405

`A104976(A176837(3*n+2))`
-/

namespace A347899.P7679879914788085405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104976 (A176837 (3 * n + 2)).toNat

end

end A347899.P7679879914788085405

/-! ## A347899.P18246810569147717529

`A155041(A155042(2*round(C(n, 2)/3)+1))`
-/

namespace A347899.P18246810569147717529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155041 (A155042 (2 * SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) / 3) + 1).toNat).toNat

end

end A347899.P18246810569147717529

/-! ## A347899.P16117271250685362887

`A155041(A155042(round(or(1, (n+1)*(n-2))/3)+1))`
-/

namespace A347899.P16117271250685362887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155041 (A155042 (SequenceMachineLib.roundAway ((Int.lor 1 ((n + 1 : ℤ) * ((n : ℤ) - 2)) : ℚ) / 3) + 1).toNat).toNat

end

end A347899.P16117271250685362887

