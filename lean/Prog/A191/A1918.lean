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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A191800: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^(2*n^2).

The programs for A191800, there is no canonical definition to state claims against.
-/

/-! ## A191800.P6830021783085996132

`A008616(xor(3, A340358(n)))`
-/

namespace A191800.P6830021783085996132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.xor 3 (A340358 n)).toNat

end

end A191800.P6830021783085996132

/-! ## A191800.P5358836851520076190

`A034888(A136284(n+1)+1)`
-/

namespace A191800.P5358836851520076190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A136284 (n + 1) + 1).toNat

end

end A191800.P5358836851520076190

/-!
# A191801: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^(3*n^2).

The programs for A191801, there is no canonical definition to state claims against.
-/

/-! ## A191801.P6024554445972667624

`A008619(A243667(n))+A007290(n)`
-/

namespace A191801.P6024554445972667624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A243667 n).toNat + A007290 n

end

end A191801.P6024554445972667624

/-! ## A191801.P785104682158532156

`A004396(A277472(n)-A277473(n))`
-/

namespace A191801.P785104682158532156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A277472 n - A277473 n).toNat

end

end A191801.P785104682158532156

/-!
# A191802: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^(4*n^2).

The programs for A191802, there is no canonical definition to state claims against.
-/

/-! ## A191802.P12212285765008618773

`A394051(n^(n+1)+1)`
-/

namespace A191802.P12212285765008618773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394051 (n ^ (n + 1) + 1)

end

end A191802.P12212285765008618773

/-!
# A191803: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^(5*n^2).

The programs for A191803, there is no canonical definition to state claims against.
-/

/-! ## A191803.P4890882452314869603

`∑[xor(4, A310677(n*a(n-1)))]` with `a(0)=1`
-/

namespace A191803.P4890882452314869603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor 4 (A310677 ((n : ℤ) * f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191803.P4890882452314869603

/-!
# A191804: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^(6*n^2).

The programs for A191804, there is no canonical definition to state claims against.
-/

/-! ## A191804.P15642104651001309925

`A082221(C(2*n, n+2)+1)`
-/

namespace A191804.P15642104651001309925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082221 (Nat.choose (2 * n) (n + 2) + 1)

end

end A191804.P15642104651001309925

/-!
# A191805: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^(n^3).

The programs for A191805, there is no canonical definition to state claims against.
-/

/-! ## A191805.P4462177182560535120

`A261093(A121673(n))`
-/

namespace A191805.P4462177182560535120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261093 (A121673 n).toNat

end

end A191805.P4462177182560535120

/-! ## A191805.P6296227510541114924

`A195072(2*A231173(n))`
-/

namespace A191805.P6296227510541114924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (2 * A231173 n).toNat

end

end A191805.P6296227510541114924

/-!
# A191806: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^(n^4).

The programs for A191806, there is no canonical definition to state claims against.
-/

/-! ## A191806.P15762622258426456588

`A034887(n*C(∑[n], n))`
-/

namespace A191806.P15762622258426456588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (n * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A191806.P15762622258426456588

/-!
# A191807: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^(n^5).

The programs for A191807, there is no canonical definition to state claims against.
-/

/-! ## A191807.P16791486227786167360

`A067434(∑[gcd(n, ∑[n])]!)`
-/

namespace A191807.P16791486227786167360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A191807.P16791486227786167360

/-!
# A191808: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^(n^6).

The programs for A191808, there is no canonical definition to state claims against.
-/

/-! ## A191808.P1571920965028191470

`∏{p}[A118103(A231620(n)), #]`
-/

namespace A191808.P1571920965028191470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118103 (A231620 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A191808.P1571920965028191470

/-!
# A191809: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^binomial(n+2,3).

The programs for A191809, there is no canonical definition to state claims against.
-/

/-! ## A191809.P15878694449548744267

`A004526(3*n!)-floor((n/2)²)`
-/

namespace A191809.P15878694449548744267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * Nat.factorial n) - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A191809.P15878694449548744267

/-! ## A191809.P8890413474292678130

`A008619(A050487(n!))`
-/

namespace A191809.P8890413474292678130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A050487 (Nat.factorial n)).toNat

end

end A191809.P8890413474292678130

/-! ## A191809.P4509256236082051385

`A004526(A052560(n))-floor((n/2)²)`
-/

namespace A191809.P4509256236082051385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A052560 n).toNat - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A191809.P4509256236082051385

/-!
# A191810: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^binomial(n+3,4).

The programs for A191810, there is no canonical definition to state claims against.
-/

/-! ## A191810.P618408733340739114

`A171397(floor(sqrt(A351020(n))))`
-/

namespace A191810.P618408733340739114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (Int.sqrt (A351020 n)).toNat

end

end A191810.P618408733340739114

/-! ## A191810.P7397656030806368383

`A002637(5^n+1)`
-/

namespace A191810.P7397656030806368383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002637 (5 ^ n + 1)

end

end A191810.P7397656030806368383

/-!
# A191811: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^binomial(n+4,5).

The programs for A191811, there is no canonical definition to state claims against.
-/

/-! ## A191811.P9566401125268650049

`A247913(n*a(n-1))-1` with `a(0)=1, a(1)=1`
-/

namespace A191811.P9566401125268650049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A247913 ((n : ℤ) * a (n - 1)).toNat - 1

end

end A191811.P9566401125268650049

/-! ## A191811.P16143791133034407489

`A266193(A120733(n)+1)`
-/

namespace A191811.P16143791133034407489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (A120733 n + 1).toNat

end

end A191811.P16143791133034407489

/-!
# A191812: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^binomial(n+5,6).

The programs for A191812, there is no canonical definition to state claims against.
-/

/-! ## A191812.P5239493755882821420

`A290978(n^n+3)`
-/

namespace A191812.P5239493755882821420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290978 (n ^ n + 3)

end

end A191812.P5239493755882821420

/-! ## A191812.P16185286561049783108

`round((A130773(n^n)+n)/(n+3))`
-/

namespace A191812.P16185286561049783108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A130773 (n ^ n) + (n : ℤ) : ℚ) / (n + 3 : ℚ))

end

end A191812.P16185286561049783108

/-!
# A191813: G.f. satisfies: A(x) = Sum_{n>=0} x^(n^2)*A(x)^(n^3).

The programs for A191813, there is no canonical definition to state claims against.
-/

/-! ## A191813.P16309239518193375105

`A367586(ceil(2^(n-1))-C(n, 2))`
-/

namespace A191813.P16309239518193375105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367586 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - (Nat.choose n 2 : ℤ)).toNat

end

end A191813.P16309239518193375105

/-! ## A191813.P191113734662914037

`C(A108563(∑[n!])+n+4, 8)+1`
-/

namespace A191813.P191113734662914037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A108563 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 4 : ℤ)).toNat 8 + 1

end

end A191813.P191113734662914037

/-! ## A191813.P17897477595476090426

`A367586(A364450(n))`
-/

namespace A191813.P17897477595476090426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367586 (A364450 n).toNat

end

end A191813.P17897477595476090426

/-! ## A191813.P8903874242285848174

`A227287(A182461(n+1))`
-/

namespace A191813.P8903874242285848174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227287 (A182461 (n + 1)).toNat

end

end A191813.P8903874242285848174

/-!
# A191814: G.f. satisfies: A(x) = Sum_{n>=0} x^(n^2)*A(x)^(n^4).

The programs for A191814, there is no canonical definition to state claims against.
-/

/-! ## A191814.P6456254258956042640

`A322401(∑[floor(n²/2)]+1)`
-/

namespace A191814.P6456254258956042640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322401 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A191814.P6456254258956042640

/-! ## A191814.P13837538305778500147

`A241414(lcm(n, a(n-1)))+1` with `a(0)=1`
-/

namespace A191814.P13837538305778500147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241414 (Int.lcm (n : ℤ) (a (n - 1))) + 1

end

end A191814.P13837538305778500147

/-! ## A191814.P1482642886141746074

`A351578(round((sqrt(2)^n/3)²)!)`
-/

namespace A191814.P1482642886141746074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351578 (Nat.factorial (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) ^ n / 3) ^ 2)).toNat)

end

end A191814.P1482642886141746074

/-!
# A191819: (A178477(n)-1)/9.

The programs for A191819, there is no canonical definition to state claims against.
-/

/-! ## A191819.P13274017674929785993

`(A178477(n+1)-1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191819.P13274017674929785993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178477 (n + 1) - 1 : ℚ) / 9

end

end A191819.P13274017674929785993

/-! ## A191819.P16443452171720569927

`floor(A178477(n+1)/9)`
-/

namespace A191819.P16443452171720569927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178477 (n + 1) : ℚ) / 9⌋

end

end A191819.P16443452171720569927

/-! ## A191819.P17670191516982420423

`round(A178477(gcd(n, A014105(n))+1)/9)`
-/

namespace A191819.P17670191516982420423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178477 (Int.gcd (n : ℤ) (A014105 n) + 1) : ℚ) / 9)

end

end A191819.P17670191516982420423

/-! ## A191819.P11048106327963627014

`or(round(A178477(n+1)/9), A000038(n))`
-/

namespace A191819.P11048106327963627014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A178477 (n + 1) : ℚ) / 9)) (A000038 n)

end

end A191819.P11048106327963627014

/-! ## A191819.P1508199127118785948

`round(A178477(n+1)/9)*char[A014682(n)]`
-/

namespace A191819.P1508199127118785948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178477 (n + 1) : ℚ) / 9) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A191819.P1508199127118785948

/-! ## A191819.P25369944669766328

`A000007(n+1)+round(A178477(n+1)/9)`
-/

namespace A191819.P25369944669766328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A178477 (n + 1) : ℚ) / 9)

end

end A191819.P25369944669766328

/-! ## A191819.P923911548209776811

`round(A178477(n+1)/9)%A046391(n+1)²`
-/

namespace A191819.P923911548209776811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A178477 (n + 1) : ℚ) / 9)) (A046391 (n + 1) ^ 2)

end

end A191819.P923911548209776811

/-! ## A191819.P8037802220899650446

`or(1, A010051(n+1))*round(A178477(n+1)/9)`
-/

namespace A191819.P8037802220899650446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010051 (n + 1)) * SequenceMachineLib.roundAway ((A178477 (n + 1) : ℚ) / 9)

end

end A191819.P8037802220899650446

/-! ## A191819.P7773816777470517857

`lcm((-1)^A000040(n+2), round(A178477(n+1)/9))`
-/

namespace A191819.P7773816777470517857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A000040 (n + 2) : ℤ))) (SequenceMachineLib.roundAway ((A178477 (n + 1) : ℚ) / 9))

end

end A191819.P7773816777470517857

/-! ## A191819.P14236543947545619233

`round(A011737(A244544(n))+A178477(n+1)/9)`
-/

namespace A191819.P14236543947545619233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A011737 (A244544 n).toNat : ℚ) + (A178477 (n + 1) : ℚ) / 9)

end

end A191819.P14236543947545619233

/-! ## A191819.P14382167486827905402

`round(A178477(n+1)/9)*A019426(A212595(n))`
-/

namespace A191819.P14382167486827905402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178477 (n + 1) : ℚ) / 9) * A019426 (A212595 (n + 10)).toNat

end

end A191819.P14382167486827905402

/-! ## A191819.P12021437435119051378

`ceil(A106400(A004016(n)+1)+A178477(n+1)/9)`
-/

namespace A191819.P12021437435119051378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106400 (A004016 n + 1).toNat : ℚ) + (A178477 (n + 1) : ℚ) / 9⌉

end

end A191819.P12021437435119051378

/-! ## A191819.P10215980742026350207

`ceil(A008683(A122028(n+1))+A178477(n+1)/9)`
-/

namespace A191819.P10215980742026350207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A122028 (n + 1)).toNat : ℚ) + (A178477 (n + 1) : ℚ) / 9⌉

end

end A191819.P10215980742026350207

/-! ## A191819.P11338426543006155581

`round(A178477(n+1)/9)*A001222(A008578(n+2))`
-/

namespace A191819.P11338426543006155581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178477 (n + 1) : ℚ) / 9) * A001222 (A008578 (n + 2)).toNat

end

end A191819.P11338426543006155581

/-! ## A191819.P16779842765432058680

`round(A178477(n+1)/9)*A001222(A151800(n+3))`
-/

namespace A191819.P16779842765432058680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178477 (n + 1) : ℚ) / 9) * A001222 (A151800 (n + 3)).toNat

end

end A191819.P16779842765432058680

/-! ## A191819.P15295575172749574294

`round(A178477(n+1)/9)*A014963(A016825(n+1))`
-/

namespace A191819.P15295575172749574294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178477 (n + 1) : ℚ) / 9) * A014963 (A016825 (n + 1)).toNat

end

end A191819.P15295575172749574294

/-! ## A191819.P13560403320790147910

`A007318(A051904(n²+1))*round(A178477(n+1)/9)`
-/

namespace A191819.P13560403320790147910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A051904 (n ^ 2 + 1)).toNat * SequenceMachineLib.roundAway ((A178477 (n + 1) : ℚ) / 9)

end

end A191819.P13560403320790147910

/-!
# A191820: A178478(n)/9.

The programs for A191820, there is no canonical definition to state claims against.
-/

/-! ## A191820.P2083945616869248311

`A178478(n+1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191820.P2083945616869248311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178478 (n + 1) : ℚ) / 9

end

end A191820.P2083945616869248311

/-!
# A191821: a(n) = n*(2^n - n + 1) + 2^(n-1)*(n^2 - 3*n + 2).

The programs for A191821, the canonical program `A191821.P346544873714453477` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191821 has offset 1).

The definition of A191821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191821.P346544873714453477

`2*((∑[n]+1)*(2^n-1)+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A191821

/-- `2*((∑[n]+1)*(2^n-1)+1)` -/
def P346544873714453477.Spec : Prop :=
  ∀ n, P346544873714453477.a n = A191821 (n + 1)

theorem P346544873714453477.correct : P346544873714453477.Spec := by
  intro n
  simp only [A191821, Nat.add_sub_cancel]

end A191821

/-! ## A191821.P13492742850818713444

`∑[2*(A080929(n)-n)]`
-/

namespace A191821.P13492742850818713444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A080929 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191821.P13492742850818713444

namespace A191821

/-- `∑[2*(A080929(n)-n)]` -/
def P13492742850818713444.Spec : Prop :=
  ∀ n, P13492742850818713444.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P10032112691093509351

`A052481(n+1)-∑[2*n]`
-/

namespace A191821.P10032112691093509351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052481 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A191821.P10032112691093509351

namespace A191821

/-- `A052481(n+1)-∑[2*n]` -/
def P10032112691093509351.Spec : Prop :=
  ∀ n, P10032112691093509351.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P11677541834453356055

`2*(∑[n]+1)*A000225(n)+2`
-/

namespace A191821.P11677541834453356055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℤ) * A000225 n + 2

end

end A191821.P11677541834453356055

namespace A191821

/-- `2*(∑[n]+1)*A000225(n)+2` -/
def P11677541834453356055.Spec : Prop :=
  ∀ n, P11677541834453356055.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P11631248522352023111

`∑[A001788(n+1)-n-n]+1`
-/

namespace A191821.P11631248522352023111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) - (n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A191821.P11631248522352023111

namespace A191821

/-- `∑[A001788(n+1)-n-n]+1` -/
def P11631248522352023111.Spec : Prop :=
  ∀ n, P11631248522352023111.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P5706662217955295433

`∑[A048506(n+1)]+1-(n+1)²`
-/

namespace A191821.P5706662217955295433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - ((n + 1) ^ 2 : ℤ))

end

end A191821.P5706662217955295433

namespace A191821

/-- `∑[A048506(n+1)]+1-(n+1)²` -/
def P5706662217955295433.Spec : Prop :=
  ∀ n, P5706662217955295433.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P14800028370341587641

`∑[2*(∑[n+1]*A011782(n)-n)]`
-/

namespace A191821.P14800028370341587641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A011782 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191821.P14800028370341587641

namespace A191821

/-- `∑[2*(∑[n+1]*A011782(n)-n)]` -/
def P14800028370341587641.Spec : Prop :=
  ∀ n, P14800028370341587641.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P1817947957600843261

`A110331(n)+A055580(n)`
-/

namespace A191821.P1817947957600843261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110331 n + A055580 n

end

end A191821.P1817947957600843261

namespace A191821

/-- `A110331(n)+A055580(n)` -/
def P1817947957600843261.Spec : Prop :=
  ∀ n, P1817947957600843261.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P8767915910811519436

`A276041(n)+A220588(n)`
-/

namespace A191821.P8767915910811519436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276041 n + A220588 n

end

end A191821.P8767915910811519436

namespace A191821

/-- `A276041(n)+A220588(n)` -/
def P8767915910811519436.Spec : Prop :=
  ∀ n, P8767915910811519436.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P18138292247975672474

`A000225(n)*A014206(n)+2`
-/

namespace A191821.P18138292247975672474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A014206 n + 2

end

end A191821.P18138292247975672474

namespace A191821

/-- `A000225(n)*A014206(n)+2` -/
def P18138292247975672474.Spec : Prop :=
  ∀ n, P18138292247975672474.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P4854550758073702234

`A000124(n)*A000918(n+1)+2`
-/

namespace A191821.P4854550758073702234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A000918 (n + 1) + 2

end

end A191821.P4854550758073702234

namespace A191821

/-- `A000124(n)*A000918(n+1)+2` -/
def P4854550758073702234.Spec : Prop :=
  ∀ n, P4854550758073702234.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P9533075287797211964

`A000079(n+1)+n*A058877(n+1)`
-/

namespace A191821.P9533075287797211964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (n : ℤ) * A058877 (n + 1)

end

end A191821.P9533075287797211964

namespace A191821

/-- `A000079(n+1)+n*A058877(n+1)` -/
def P9533075287797211964.Spec : Prop :=
  ∀ n, P9533075287797211964.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P49518693218494471

`(sqrt(A000537(n))+1)*2*A000225(n)+2`
-/

namespace A191821.P49518693218494471
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A000537 n : ℝ) + 1) * (2 * A000225 n : ℝ) + 2

end

end A191821.P49518693218494471

namespace A191821

/-- `(sqrt(A000537(n))+1)*2*A000225(n)+2` -/
def P49518693218494471.Spec : Prop :=
  ∀ n, P49518693218494471.a n = (A191821 (n + 1) : ℝ)

end A191821

/-! ## A191821.P7169805500488171668

`A000051(n)+A000225(n)*A002061(n+1)`
-/

namespace A191821.P7169805500488171668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + A000225 n * A002061 (n + 1)

end

end A191821.P7169805500488171668

namespace A191821

/-- `A000051(n)+A000225(n)*A002061(n+1)` -/
def P7169805500488171668.Spec : Prop :=
  ∀ n, P7169805500488171668.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P17606840639239511845

`A000079(n+1)+A000225(n)*A002378(n)`
-/

namespace A191821.P17606840639239511845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + A000225 n * A002378 n

end

end A191821.P17606840639239511845

namespace A191821

/-- `A000079(n+1)+A000225(n)*A002378(n)` -/
def P17606840639239511845.Spec : Prop :=
  ∀ n, P17606840639239511845.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P17900915719056860793

`A000051(n+1)*A000124(n)-A005448(n+1)`
-/

namespace A191821.P17900915719056860793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) * A000124 n - A005448 (n + 1)

end

end A191821.P17900915719056860793

namespace A191821

/-- `A000051(n+1)*A000124(n)-A005448(n+1)` -/
def P17900915719056860793.Spec : Prop :=
  ∀ n, P17900915719056860793.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P18164620517716683720

`A142974(n+2)+A000079(n+1)*A000217(n)`
-/

namespace A191821.P18164620517716683720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142974 (n + 2) + A000079 (n + 1) * A000217 n

end

end A191821.P18164620517716683720

namespace A191821

/-- `A142974(n+2)+A000079(n+1)*A000217(n)` -/
def P18164620517716683720.Spec : Prop :=
  ∀ n, P18164620517716683720.a n = A191821 (n + 1)

end A191821

/-! ## A191821.P8194573488780827997

`A000225(n)*A005843(∑[n]+1)+2`
-/

namespace A191821.P8194573488780827997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A005843 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2

end

end A191821.P8194573488780827997

namespace A191821

/-- `A000225(n)*A005843(∑[n]+1)+2` -/
def P8194573488780827997.Spec : Prop :=
  ∀ n, P8194573488780827997.a n = A191821 (n + 1)

end A191821

/-!
# A191822: Number of solutions to the Diophantine equation x1*x2 + x2*x3 + x3*x4 + x4*x5 = n, with all xi >= 1.

The programs for A191822, there is no canonical definition to state claims against.
-/

/-! ## A191822.P12114122557069209140

`∑{d}[n+1, #²-(n+1)]-Δ[A212151(n+1)]`
-/

namespace A191822.P12114122557069209140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2 : ℤ) - (n + 1 : ℤ)) - (f2 (n + 1) - f2 n)

end

end A191822.P12114122557069209140

/-! ## A191822.P3310727346195538260

`A189835(n+1)-Δ[A212151(n+1)]`
-/

namespace A191822.P3310727346195538260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189835 (n + 1) - (f1 (n + 1) - f1 n)

end

end A191822.P3310727346195538260

/-! ## A191822.P12294260743269549482

`A001157(n+1)-A038040(n+1)-Δ[A212151(n+1)]`
-/

namespace A191822.P12294260743269549482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - A038040 (n + 1) - (f1 (n + 1) - f1 n)

end

end A191822.P12294260743269549482

/-! ## A191822.P5918826189070841638

`A086666(n+1)-A094471(n+1)-Δ[A212151(n+1)]`
-/

namespace A191822.P5918826189070841638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086666 (n + 1) - A094471 (n + 1) - (f1 (n + 1) - f1 n)

end

end A191822.P5918826189070841638

/-! ## A191822.P16343959571212404423

`A330866(n+1)-A303384(n+1)-Δ[A212151(n+1)]`
-/

namespace A191822.P16343959571212404423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330866 (n + 1) - A303384 (n + 1) - (f1 (n + 1) - f1 n)

end

end A191822.P16343959571212404423

/-! ## A191822.P3768170409676420592

`2*A007437(n+1)-A152211(n+1)-Δ[A212151(n+1)]`
-/

namespace A191822.P3768170409676420592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007437 (n + 1) - A152211 (n + 1) - (f1 (n + 1) - f1 n)

end

end A191822.P3768170409676420592

/-!
# A191823: Number of n-step three-sided prudent self-avoiding walks.

The programs for A191823, there is no canonical definition to state claims against.
-/

/-! ## A191823.P6435531541474499629

`A277322(A000698(n))+A027941(n+1)`
-/

namespace A191823.P6435531541474499629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (A000698 n).toNat + A027941 (n + 1)

end

end A191823.P6435531541474499629

/-! ## A191823.P7280455241952928385

`A050296(A114185(n+2)+A000124(n))`
-/

namespace A191823.P7280455241952928385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A114185 (n + 2) + A000124 n).toNat

end

end A191823.P7280455241952928385

/-! ## A191823.P33144076591247794

`A248058(A248183(n+1)+A027941(n+1))`
-/

namespace A191823.P33144076591247794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248058 (A248183 (n + 1) + A027941 (n + 1)).toNat

end

end A191823.P33144076591247794

/-!
# A191824: Number of n-step three-sided prudent self-avoiding walks ending on the top side of their box.

The programs for A191824, there is no canonical definition to state claims against.
-/

/-! ## A191824.P14032134034990400538

`A261226(7*A261235(n))`
-/

namespace A191824.P14032134034990400538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (7 * A261235 n).toNat

end

end A191824.P14032134034990400538

/-! ## A191824.P5314185530119295502

`∑[A226190(∑[A181600(2*n)])]`
-/

namespace A191824.P5314185530119295502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181600 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191824.P5314185530119295502

/-! ## A191824.P5238577556063446245

`A248610(A055775(n+2))+A004525(n)`
-/

namespace A191824.P5238577556063446245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (A055775 (n + 2)).toNat + A004525 n

end

end A191824.P5238577556063446245

/-!
# A191825: Number of n-step three-sided prudent self-avoiding walks ending on the bottom side of their box.

The programs for A191825, there is no canonical definition to state claims against.
-/

/-! ## A191825.P11381152878551174797

`2*A191827(n)-1`
-/

namespace A191825.P11381152878551174797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191827 n - 1

end

end A191825.P11381152878551174797

/-! ## A191825.P6714269528082080549

`A008683(A060264(n))+2*A191827(n)`
-/

namespace A191825.P6714269528082080549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060264 n).toNat + 2 * A191827 n

end

end A191825.P6714269528082080549

/-! ## A191825.P10169778545424058532

`A280193(A099375(n))+2*A191827(n)`
-/

namespace A191825.P10169778545424058532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A099375 n).toNat + 2 * A191827 n

end

end A191825.P10169778545424058532

/-! ## A191825.P6974627976217103788

`A008683(A083370(n+1))+2*A191827(n)`
-/

namespace A191825.P6974627976217103788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A083370 (n + 1)).toNat + 2 * A191827 n

end

end A191825.P6974627976217103788

/-! ## A191825.P5946130218206466623

`A008683(A064632(n+2))+2*A191827(n)`
-/

namespace A191825.P5946130218206466623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A064632 (n + 2)).toNat + 2 * A191827 n

end

end A191825.P5946130218206466623

/-!
# A191826: Number of n-step three-sided prudent self-avoiding walks ending on the left side of their box.

The programs for A191826, there is no canonical definition to state claims against.
-/

/-! ## A191826.P15116667194733107357

`A054899(A289245(n+2)+A055125(n))`
-/

namespace A191826.P15116667194733107357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A289245 (n + 2) + A055125 n).toNat

end

end A191826.P15116667194733107357

/-! ## A191826.P2292520323578382962

`A001462(A128746(n+1)-A330796(n))`
-/

namespace A191826.P2292520323578382962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A128746 (n + 1) - A330796 n).toNat

end

end A191826.P2292520323578382962

/-!
# A191827: Number of n-step three-sided prudent self-avoiding walks ending at the southwest corner of their box.

The programs for A191827, there is no canonical definition to state claims against.
-/

/-! ## A191827.P15190900390649357412

`ceil(A191825(n)/2)`
-/

namespace A191827.P15190900390649357412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191825 n : ℚ) / 2⌉

end

end A191827.P15190900390649357412

/-! ## A191827.P3365790867462883036

`round(A191825(2*n-n)/2)`
-/

namespace A191827.P3365790867462883036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A191825 (2 * n - n) : ℚ) / 2)

end

end A191827.P3365790867462883036

/-! ## A191827.P12527087175298266249

`(A191825(n)+A160357(n)²)/2`
-/

namespace A191827.P12527087175298266249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191825 n + A160357 n ^ 2 : ℚ) / 2

end

end A191827.P12527087175298266249

/-! ## A191827.P12529484482405378571

`lcm(round(A191825(n)/2), A160357(n+2))`
-/

namespace A191827.P12529484482405378571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A191825 n : ℚ) / 2)) (A160357 (n + 2))

end

end A191827.P12529484482405378571

/-! ## A191827.P12227264789342855985

`and(round(A191825(n)/2), A260196(n+2))`
-/

namespace A191827.P12227264789342855985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A191825 n : ℚ) / 2)) (A260196 (n + 2))

end

end A191827.P12227264789342855985

/-! ## A191827.P4597378465810451571

`A088157(A246465(n))+round(A191825(n)/2)`
-/

namespace A191827.P4597378465810451571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 (A246465 n).toNat + SequenceMachineLib.roundAway ((A191825 n : ℚ) / 2)

end

end A191827.P4597378465810451571

/-! ## A191827.P5077751084657671828

`round(A191825(n)/2)-A185014(A175368(n))`
-/

namespace A191827.P5077751084657671828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A191825 n : ℚ) / 2) - A185014 (A175368 n).toNat

end

end A191827.P5077751084657671828

/-!
# A191828: Number of n-step three-sided prudent self-avoiding walks ending at the northwest corner of their box.

The programs for A191828, there is no canonical definition to state claims against.
-/

/-! ## A191828.P2680152434781874722

`A001462(A002450(n)+A001003(n))`
-/

namespace A191828.P2680152434781874722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A002450 n + A001003 n).toNat

end

end A191828.P2680152434781874722

/-! ## A191828.P8455468555638625924

`A374684(A192968(n))+A218482(n)`
-/

namespace A191828.P8455468555638625924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 (A192968 n).toNat + A218482 n

end

end A191828.P8455468555638625924

/-! ## A191828.P11946391997145148452

`A038373(n)-A294265(A094373(n))`
-/

namespace A191828.P11946391997145148452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038373 n - A294265 (A094373 n).toNat

end

end A191828.P11946391997145148452

/-! ## A191828.P14531957325395616188

`∑[A162428(n)-A001221(A162429(n))]`
-/

namespace A191828.P14531957325395616188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162428 n - A001221 (A162429 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191828.P14531957325395616188

/-!
# A191829: a(n) = Sum_{i+j+k=n, i,j,k >= 1} tau(i)*tau(j)*tau(k), where tau() = A000005().

The programs for A191829, there is no canonical definition to state claims against.
-/

/-! ## A191829.P5303956754241531710

`A320019(A253145(n)+3)`
-/

namespace A191829.P5303956754241531710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320019 (A253145 n + 3).toNat

end

end A191829.P5303956754241531710

/-! ## A191829.P4751549846474578761

`A320019(A134869(n+1)+2)`
-/

namespace A191829.P4751549846474578761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320019 (A134869 (n + 1) + 2).toNat

end

end A191829.P4751549846474578761

/-! ## A191829.P9882546949743033016

`A320019(∑[A233583(n+1)+1])`
-/

namespace A191829.P9882546949743033016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320019 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191829.P9882546949743033016

/-! ## A191829.P16553556522527834773

`A320019(A167614(A028310(n)))`
-/

namespace A191829.P16553556522527834773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320019 (A167614 (A028310 n).toNat).toNat

end

end A191829.P16553556522527834773

/-! ## A191829.P16115555267674298547

`A320019(A055998(n+1)-A004273(n))`
-/

namespace A191829.P16115555267674298547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320019 (A055998 (n + 1) - A004273 n).toNat

end

end A191829.P16115555267674298547

/-! ## A191829.P3782447032224541526

`A320019(A000124(n+2)-A028310(n))`
-/

namespace A191829.P3782447032224541526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320019 (A000124 (n + 2) - A028310 n).toNat

end

end A191829.P3782447032224541526

/-! ## A191829.P985685344841466146

`A320019(A038722(A034856(n+1)))`
-/

namespace A191829.P985685344841466146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320019 (A038722 (A034856 (n + 1)).toNat).toNat

end

end A191829.P985685344841466146

/-!
# A191830: Expansion of x^2*(2-3*x)/(1-x-x^2)^2.

The programs for A191830, the canonical program `A191830.P18056037667756881714` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191830 has offset 0).

The definition of A191830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191830.P18056037667756881714

`a(n-1)+a(n-2)+A000045(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A191830

/-- `a(n-1)+a(n-2)+A000045(n-5)` -/
def P18056037667756881714.Spec : Prop :=
  ∀ n, P18056037667756881714.a n = A191830 n

theorem P18056037667756881714.correct : P18056037667756881714.Spec := by
  intro n
  simp only [A191830]

end A191830

/-! ## A191830.P15557459681341213419

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A191830.P15557459681341213419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 1] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A191830.P15557459681341213419

namespace A191830

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P15557459681341213419.Spec : Prop :=
  ∀ n, P15557459681341213419.a n = A191830 n

end A191830

/-! ## A191830.P11495978951001458134

`Δ[A206268(n)]`
-/

namespace A191830.P11495978951001458134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191830.P11495978951001458134

namespace A191830

/-- `Δ[A206268(n)]` -/
def P11495978951001458134.Spec : Prop :=
  ∀ n, P11495978951001458134.a n = A191830 n

end A191830

/-! ## A191830.P15521358300669533681

`A000045(n)-Δ[A240847(n)]`
-/

namespace A191830.P15521358300669533681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (f1 (n + 1) - f1 n)

end

end A191830.P15521358300669533681

namespace A191830

/-- `A000045(n)-Δ[A240847(n)]` -/
def P15521358300669533681.Spec : Prop :=
  ∀ n, P15521358300669533681.a n = A191830 n

end A191830

/-! ## A191830.P18171336943159111756

`A206268(n+1)-A206268(n)`
-/

namespace A191830.P18171336943159111756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206268 (n + 1) - A206268 n

end

end A191830.P18171336943159111756

namespace A191830

/-- `A206268(n+1)-A206268(n)` -/
def P18171336943159111756.Spec : Prop :=
  ∀ n, P18171336943159111756.a n = A191830 n

end A191830

/-! ## A191830.P1216411816626729160

`A000045(n)+A240847(n)-A240847(n+1)`
-/

namespace A191830.P1216411816626729160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A240847 n - A240847 (n + 1))

end

end A191830.P1216411816626729160

namespace A191830

/-- `A000045(n)+A240847(n)-A240847(n+1)` -/
def P1216411816626729160.Spec : Prop :=
  ∀ n, P1216411816626729160.a n = A191830 n

end A191830

/-! ## A191830.P3932198190162562490

`A029907(n)+n*A152163(n)`
-/

namespace A191830.P3932198190162562490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + (n : ℤ) * A152163 n

end

end A191830.P3932198190162562490

namespace A191830

/-- `A029907(n)+n*A152163(n)` -/
def P3932198190162562490.Spec : Prop :=
  ∀ n, P3932198190162562490.a n = A191830 n

end A191830

/-! ## A191830.P16506000559132029741

`A029907(n)+A240847(n)-A010049(n)`
-/

namespace A191830.P16506000559132029741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + (A240847 n - A010049 n)

end

end A191830.P16506000559132029741

namespace A191830

/-- `A029907(n)+A240847(n)-A010049(n)` -/
def P16506000559132029741.Spec : Prop :=
  ∀ n, P16506000559132029741.a n = A191830 n

end A191830

/-! ## A191830.P6327654291722044390

`A010049(n+1)+A240847(n)-A208354(n)`
-/

namespace A191830.P6327654291722044390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) + (A240847 n - A208354 n)

end

end A191830.P6327654291722044390

namespace A191830

/-- `A010049(n+1)+A240847(n)-A208354(n)` -/
def P6327654291722044390.Spec : Prop :=
  ∀ n, P6327654291722044390.a n = A191830 n

end A191830

/-! ## A191830.P17995068653315811698

`Δ[Δ[Δ[A208354(n)]]]`
-/

namespace A191830.P17995068653315811698
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191830.P17995068653315811698

namespace A191830

/-- `Δ[Δ[Δ[A208354(n)]]]` -/
def P17995068653315811698.Spec : Prop :=
  ∀ n, P17995068653315811698.a n = A191830 n

end A191830

/-! ## A191830.P5614445249921639769

`Δ[Δ[A094588(n)-A001629(n)]]`
-/

namespace A191830.P5614445249921639769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n - A001629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191830.P5614445249921639769

namespace A191830

/-- `Δ[Δ[A094588(n)-A001629(n)]]` -/
def P5614445249921639769.Spec : Prop :=
  ∀ n, P5614445249921639769.a n = A191830 n

end A191830

/-!
# A191836: The slowest growing sequence that satisfies: a(1) = 1, a(n) is a multiple of n and a(n-1), and a(n) > a(n-1).

The programs for A191836, the canonical program `A191836.P5700790045255042442` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191836 has offset 1).

The definition of A191836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191836.P5700790045255042442

`∏[A143731(n+1)+ceil((n+1)/∏{p}[n+1, (n+1)/#])]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A191836

/-- `∏[A143731(n+1)+ceil((n+1)/∏{p}[n+1, (n+1)/#])]` -/
def P5700790045255042442.Spec : Prop :=
  ∀ n, P5700790045255042442.a n = A191836 (n + 1)

theorem P5700790045255042442.correct : P5700790045255042442.Spec := by
  intro n
  simp only [A191836, Nat.add_sub_cancel]

end A191836

/-! ## A191836.P2565840649216850913

`∏[A143731(n+1)+A014963(n+1)]`
-/

namespace A191836.P2565840649216850913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) + A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191836.P2565840649216850913

namespace A191836

/-- `∏[A143731(n+1)+A014963(n+1)]` -/
def P2565840649216850913.Spec : Prop :=
  ∀ n, P2565840649216850913.a n = A191836 (n + 1)

end A191836

/-! ## A191836.P17527338410492781034

`∏[A284694(A332461(n+1))]`
-/

namespace A191836.P17527338410492781034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284694 (A332461 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191836.P17527338410492781034

namespace A191836

/-- `∏[A284694(A332461(n+1))]` -/
def P17527338410492781034.Spec : Prop :=
  ∀ n, P17527338410492781034.a n = A191836 (n + 1)

end A191836

/-!
# A191838: Ordered sums f+2*g, where f and g are positive Fibonacci numbers (A000045).

The programs for A191838, there is no canonical definition to state claims against.
-/

/-! ## A191838.P3828943406586370706

`lt[A345476(A244981(n+1)), A336178(n+1)]`
-/

namespace A191838.P3828943406586370706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345476 (A244981 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191838.P3828943406586370706

/-!
# A191841: Ordered sequence of nonnegative differences c*f-d*f where f and g are positive Fibonacci numbers (A000045) and {c,d}={1,2}.

The programs for A191841, there is no canonical definition to state claims against.
-/

/-! ## A191841.P8681113407407965647

`∪[A191839(n+1), A191840(n+1)]`
-/

namespace A191841.P8681113407407965647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191841.P8681113407407965647

/-!
# A191842: Ordered sums f+3*g, where f and g are Fibonacci numbers (A000045).

The programs for A191842, there is no canonical definition to state claims against.
-/

/-! ## A191842.P681563784270449562

`lt[A249716(n), A187210(A341464(n))]`
-/

namespace A191842.P681563784270449562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187210 (A341464 (n + 28)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191842.P681563784270449562

/-! ## A191842.P2595766614262769023

`lt[A010060(A381569(n)), A381596(n+1)]`
-/

namespace A191842.P2595766614262769023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A381569 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191842.P2595766614262769023

/-! ## A191842.P3699610858933160472

`lt[A242845(A242885(n+1)), A242904(n+1)]`
-/

namespace A191842.P3699610858933160472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242845 ((A242885 (n + 1)).toNat + 25)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191842.P3699610858933160472

/-! ## A191842.P4340394677338555181

`lt[A061398(A045896(3*n+4)), A060681(n+1)]`
-/

namespace A191842.P4340394677338555181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061398 (A045896 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191842.P4340394677338555181

/-!
# A191844: Ordered nonnegative differences 3*f-g, where f and g are positive Fibonacci numbers (A000045).

The programs for A191844, there is no canonical definition to state claims against.
-/

/-! ## A191844.P18179428136847748393

`lt[n, A070499(A106502(n+1))]`
-/

namespace A191844.P18179428136847748393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070499 (A106502 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191844.P18179428136847748393

/-!
# A191845: Ordered nonnegative differences c*f-d*g, where f and g are positive Fibonacci numbers, and {c,d}={1,3}.

The programs for A191845, there is no canonical definition to state claims against.
-/

/-! ## A191845.P16820054733407300246

`∪[A191843(n+1), A191844(n+1)]`
-/

namespace A191845.P16820054733407300246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191845.P16820054733407300246

/-! ## A191845.P4327624084575674550

`lt[A026927(n+1), A014682(A140891(n))]`
-/

namespace A191845.P4327624084575674550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A140891 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191845.P4327624084575674550

/-! ## A191845.P4381492152823826841

`eq[0, A180760(A302150(n+1))]`
-/

namespace A191845.P4381492152823826841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A302150 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191845.P4381492152823826841

/-! ## A191845.P8934776885638452833

`lt[A008292(A302150(n+1)), A360005(2*(n+3))]`
-/

namespace A191845.P8934776885638452833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A302150 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360005 (2 * (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191845.P8934776885638452833

/-! ## A191845.P7638306204528029467

`eq[1, A267392(A302150(n+1))]%A000041(n+1)`
-/

namespace A191845.P7638306204528029467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A302150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A000041 (n + 1))

end

end A191845.P7638306204528029467

/-!
# A191846: Ordered sums 2*f+3*g, where f and g are Fibonacci numbers (A000045).

The programs for A191846, there is no canonical definition to state claims against.
-/

/-! ## A191846.P3122913414647984440

`A181819(A061645(n+1))+A091897(n+1)`
-/

namespace A191846.P3122913414647984440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A061645 (n + 1)).toNat + A091897 (n + 1)

end

end A191846.P3122913414647984440

/-! ## A191846.P5062491382311600547

`lt[A055642(A300979(2*(n+2))), A303389(n+1)]`
-/

namespace A191846.P5062491382311600547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A300979 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191846.P5062491382311600547

/-!
# A191847: Ordered nonnegative differences 2*f-3*g, where f and g are positive Fibonacci numbers (A000045).

The programs for A191847, there is no canonical definition to state claims against.
-/

/-! ## A191847.P8587571918689156803

`lt[A008705(n+1), A125008(A008725(n))]`
-/

namespace A191847.P8587571918689156803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125008 (A008725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191847.P8587571918689156803

/-! ## A191847.P12699013078687390463

`lt[A008705(n+1), A090334(A000404(n+1))]`
-/

namespace A191847.P12699013078687390463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090334 (A000404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191847.P12699013078687390463

/-! ## A191847.P8391609565182502324

`lt[A008705(n+1), A090334(A050376(n+1))]`
-/

namespace A191847.P8391609565182502324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090334 (A050376 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191847.P8391609565182502324

/-! ## A191847.P18425278813298622288

`lt[A008705(n+1), A163300(A132636(n+1)+1)]`
-/

namespace A191847.P18425278813298622288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (A132636 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191847.P18425278813298622288

/-! ## A191847.P3972094846568490183

`lt[A075167(n+1), A235354(A062312(3*n+2))]`
-/

namespace A191847.P3972094846568490183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235354 (A062312 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191847.P3972094846568490183

/-!
# A191849: Ordered nonnegative differences c*f-d*g, where f and g are positive Fibonacci numbers (A000045), and {c,d}={2,3}.

The programs for A191849, there is no canonical definition to state claims against.
-/

/-! ## A191849.P10203229687776470221

`∪[A191847(n+1), A191848(n+1)]`
-/

namespace A191849.P10203229687776470221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191849.P10203229687776470221

/-! ## A191849.P3181770911055680871

`lt[A111536(A229110(2*(n+1))), A191894(2*n+5)]`
-/

namespace A191849.P3181770911055680871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111536 (A229110 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191894 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191849.P3181770911055680871

/-!
# A191853: Ordered nonnegative differences c*f-d*g, where f and g are positive Fibonacci numbers (A000045) and {c,d}={1,4}.

The programs for A191853, there is no canonical definition to state claims against.
-/

/-! ## A191853.P11227410725683769238

`∪[A191851(n+1), A191852(n+1)]`
-/

namespace A191853.P11227410725683769238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191853.P11227410725683769238

/-! ## A191853.P2324320026916631214

`lt[A110361(n+1), A003132(A007522(n+1))]`
-/

namespace A191853.P2324320026916631214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A007522 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191853.P2324320026916631214

/-! ## A191853.P18291264765553322163

`lt[A316719(floor(n/4)), A110934(n+1)]`
-/

namespace A191853.P18291264765553322163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316719 ⌊(n : ℚ) / 4⌋.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191853.P18291264765553322163

/-! ## A191853.P15949400697367508699

`lt[A110977(n), A110953(A110934(n+1))]`
-/

namespace A191853.P15949400697367508699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110953 (A110934 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191853.P15949400697367508699

/-! ## A191853.P9293533266424497326

`lt[A006530(A270339(n+1)), A048672(3*n+5)]`
-/

namespace A191853.P9293533266424497326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A270339 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048672 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191853.P9293533266424497326

/-!
# A191854: First factor in happy factorization of n-th rectangular number.

The programs for A191854, there is no canonical definition to state claims against.
-/

/-! ## A191854.P17802419409718837500

`A007969(n+1)/A191855(n+1)`
-/

namespace A191854.P17802419409718837500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007969 (n + 1) : ℚ) / (A191855 (n + 1) : ℚ)

end

end A191854.P17802419409718837500

/-! ## A191854.P16907177894239219273

`comp[∪[A007970(n+1), n²]]/A191855(n+1)`
-/

namespace A191854.P16907177894239219273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007970 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / (A191855 (n + 1) : ℚ)

end

end A191854.P16907177894239219273

/-! ## A191854.P1645048227308167021

`(eq[2, A266722(A010340(n+1))]+1)/A191855(n+1)`
-/

namespace A191854.P1645048227308167021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 (A010340 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (A191855 (n + 1) : ℚ)

end

end A191854.P1645048227308167021

/-! ## A191854.P2335421611518766415

`(lt[1, A260738(A010340(n+1)+1)]+1)/A191855(n+1)`
-/

namespace A191854.P2335421611518766415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A010340 (n + 1) + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) / (A191855 (n + 1) : ℚ)

end

end A191854.P2335421611518766415

/-! ## A191854.P10667547358143605749

`(lt[2, A020639(A010340(n+1)+1)]+1)/A191855(n+1)`
-/

namespace A191854.P10667547358143605749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A010340 (n + 1) + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) / (A191855 (n + 1) : ℚ)

end

end A191854.P10667547358143605749

/-! ## A191854.P763997407421431187

`(eq[A010341(n+1)%2, A000122(n+1)]+1)/A191855(n+1)`
-/

namespace A191854.P763997407421431187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010341 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1 : ℚ) / (A191855 (n + 1) : ℚ)

end

end A191854.P763997407421431187

/-! ## A191854.P10699524707235864755

`A007966(A007969(n+1))`
-/

namespace A191854.P10699524707235864755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A007969 (n + 1)).toNat

end

end A191854.P10699524707235864755

/-! ## A191854.P7680309575266433329

`A007966(eq[1, A007968(n)])`
-/

namespace A191854.P7680309575266433329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191854.P7680309575266433329

/-! ## A191854.P4297418074911462611

`eq[1, A007968(n)]/A191855(n+1)`
-/

namespace A191854.P4297418074911462611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (A191855 (n + 1) : ℚ)

end

end A191854.P4297418074911462611

/-! ## A191854.P14581545449662449069

`eq[1, A007968(n)]/A007967(A007969(n+1))`
-/

namespace A191854.P14581545449662449069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (A007967 (A007969 (n + 1)).toNat : ℚ)

end

end A191854.P14581545449662449069

/-!
# A191855: Second factor in happy factorization of n-th rectangular number.

The programs for A191855, there is no canonical definition to state claims against.
-/

/-! ## A191855.P1723814385294463430

`A007969(n+1)/A191854(n+1)`
-/

namespace A191855.P1723814385294463430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007969 (n + 1) : ℚ) / (A191854 (n + 1) : ℚ)

end

end A191855.P1723814385294463430

/-! ## A191855.P6109838939674384937

`comp[∪[A007970(n+1), n²]]/A191854(n+1)`
-/

namespace A191855.P6109838939674384937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007970 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / (A191854 (n + 1) : ℚ)

end

end A191855.P6109838939674384937

/-! ## A191855.P9730024294951520586

`(eq[2, A266722(A010340(n+1))]+1)/A191854(n+1)`
-/

namespace A191855.P9730024294951520586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 (A010340 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (A191854 (n + 1) : ℚ)

end

end A191855.P9730024294951520586

/-! ## A191855.P15366108054466753721

`(lt[1, A260738(A010340(n+1)+1)]+1)/A191854(n+1)`
-/

namespace A191855.P15366108054466753721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A010340 (n + 1) + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) / (A191854 (n + 1) : ℚ)

end

end A191855.P15366108054466753721

/-! ## A191855.P14741093751462535412

`(lt[2, A020639(A010340(n+1)+1)]+1)/A191854(n+1)`
-/

namespace A191855.P14741093751462535412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A010340 (n + 1) + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) / (A191854 (n + 1) : ℚ)

end

end A191855.P14741093751462535412

/-! ## A191855.P6938603811237652874

`(eq[A010341(n+1)%2, A000122(n+1)]+1)/A191854(n+1)`
-/

namespace A191855.P6938603811237652874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010341 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1 : ℚ) / (A191854 (n + 1) : ℚ)

end

end A191855.P6938603811237652874

/-! ## A191855.P10436992966518726412

`A007967(A007969(n+1))`
-/

namespace A191855.P10436992966518726412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A007969 (n + 1)).toNat

end

end A191855.P10436992966518726412

/-! ## A191855.P3838077487605157

`A007967(eq[1, A007968(n)])`
-/

namespace A191855.P3838077487605157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191855.P3838077487605157

/-! ## A191855.P1453180372482856808

`eq[1, A007968(n)]/A191854(n+1)`
-/

namespace A191855.P1453180372482856808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (A191854 (n + 1) : ℚ)

end

end A191855.P1453180372482856808

/-! ## A191855.P14360741513328464910

`eq[1, A007968(n)]/A007966(A007969(n+1))`
-/

namespace A191855.P14360741513328464910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (A007966 (A007969 (n + 1)).toNat : ℚ)

end

end A191855.P14360741513328464910

/-!
# A191856: First factor in happy factorization of n-th rhombic number.

The programs for A191856, there is no canonical definition to state claims against.
-/

/-! ## A191856.P17230610243113524060

`A007970(n+1)/A191857(n+1)`
-/

namespace A191856.P17230610243113524060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007970 (n + 1) : ℚ) / (A191857 (n + 1) : ℚ)

end

end A191856.P17230610243113524060

/-! ## A191856.P7816811484455472147

`(lt[0, A010341(n+1)%2]+1)/A191857(n+1)`
-/

namespace A191856.P7816811484455472147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010341 (n + 1)) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) / (A191857 (n + 1) : ℚ)

end

end A191856.P7816811484455472147

/-! ## A191856.P1980123396048245965

`(eq[1, A010340(n+1)%2]+1)/A191857(n+1)`
-/

namespace A191856.P1980123396048245965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010340 (n + 1)) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (A191857 (n + 1) : ℚ)

end

end A191856.P1980123396048245965

/-! ## A191856.P995351667889153431

`(eq[1, gcd(2, A010340(n+2))]+2)/A191857(n+1)`
-/

namespace A191856.P995351667889153431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A010340 (n + 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2 : ℚ) / (A191857 (n + 1) : ℚ)

end

end A191856.P995351667889153431

/-! ## A191856.P8294270636751000890

`eq[1, A010340(A028310(n))%2]/A191857(n+1)`
-/

namespace A191856.P8294270636751000890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010340 (A028310 n).toNat) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (A191857 (n + 1) : ℚ)

end

end A191856.P8294270636751000890

/-! ## A191856.P6354796765694286316

`eq[A308778(n)%2, A134430(n)]/A191857(n+1)`
-/

namespace A191856.P6354796765694286316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308778 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134430 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / (A191857 (n + 1) : ℚ)

end

end A191856.P6354796765694286316

/-! ## A191856.P3834521547476811826

`A020725(eq[1, A010341(n+1)%2])/A191857(n+1)`
-/

namespace A191856.P3834521547476811826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010341 (n + 1)) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (A191857 (n + 1) : ℚ)

end

end A191856.P3834521547476811826

/-! ## A191856.P3130720207277847932

`A007966(A007970(n+1))`
-/

namespace A191856.P3130720207277847932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A007970 (n + 1)).toNat

end

end A191856.P3130720207277847932

/-! ## A191856.P6853677840766381744

`A007966(eq[2, A007968(n)])`
-/

namespace A191856.P6853677840766381744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191856.P6853677840766381744

/-! ## A191856.P4128909301918188955

`eq[2, A007968(n)]/A191857(n+1)`
-/

namespace A191856.P4128909301918188955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (A191857 (n + 1) : ℚ)

end

end A191856.P4128909301918188955

/-!
# A191857: Second factor in happy factorization of n-th rhombic number.

The programs for A191857, there is no canonical definition to state claims against.
-/

/-! ## A191857.P17715980152676160472

`A007970(n+1)/A191856(n+1)`
-/

namespace A191857.P17715980152676160472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007970 (n + 1) : ℚ) / (A191856 (n + 1) : ℚ)

end

end A191857.P17715980152676160472

/-! ## A191857.P10514915777037695431

`(lt[0, A010341(n+1)%2]+1)/A191856(n+1)`
-/

namespace A191857.P10514915777037695431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010341 (n + 1)) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) / (A191856 (n + 1) : ℚ)

end

end A191857.P10514915777037695431

/-! ## A191857.P15625021416312610831

`(eq[1, A010340(n+1)%2]+1)/A191856(n+1)`
-/

namespace A191857.P15625021416312610831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010340 (n + 1)) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (A191856 (n + 1) : ℚ)

end

end A191857.P15625021416312610831

/-! ## A191857.P15297963303550904461

`(eq[1, gcd(2, A010340(n+2))]+2)/A191856(n+1)`
-/

namespace A191857.P15297963303550904461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A010340 (n + 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2 : ℚ) / (A191856 (n + 1) : ℚ)

end

end A191857.P15297963303550904461

/-! ## A191857.P16874168561419673084

`eq[1, A010340(A028310(n))%2]/A191856(n+1)`
-/

namespace A191857.P16874168561419673084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010340 (A028310 n).toNat) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (A191856 (n + 1) : ℚ)

end

end A191857.P16874168561419673084

/-! ## A191857.P13363915324311173826

`eq[A308778(n)%2, A134430(n)]/A191856(n+1)`
-/

namespace A191857.P13363915324311173826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308778 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134430 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / (A191856 (n + 1) : ℚ)

end

end A191857.P13363915324311173826

/-! ## A191857.P10411109942954554451

`A020725(eq[1, A010341(n+1)%2])/A191856(n+1)`
-/

namespace A191857.P10411109942954554451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010341 (n + 1)) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (A191856 (n + 1) : ℚ)

end

end A191857.P10411109942954554451

/-! ## A191857.P15361928529390413546

`(eq[2, A020639(A010340(n+1)+1)]+1)/A191856(n+1)`
-/

namespace A191857.P15361928529390413546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A010340 (n + 1) + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (A191856 (n + 1) : ℚ)

end

end A191857.P15361928529390413546

/-! ## A191857.P2365244557555565317

`A007967(A007970(n+1))`
-/

namespace A191857.P2365244557555565317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A007970 (n + 1)).toNat

end

end A191857.P2365244557555565317

/-! ## A191857.P11333309337978514063

`A007967(eq[2, A007968(n)])`
-/

namespace A191857.P11333309337978514063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191857.P11333309337978514063

/-!
# A191859: The primes created by concatenation of anti-divisors in A191647.

The programs for A191859, there is no canonical definition to state claims against.
-/

/-! ## A191859.P16984837030785449896

`A130846(A191647(n+1))`
-/

namespace A191859.P16984837030785449896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130846 (A191647 (n + 1)).toNat

end

end A191859.P16984837030785449896

/-! ## A191859.P11850095815130006258

`p?[A130846(n+3)%A107666(n+1)]`
-/

namespace A191859.P11850095815130006258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130846 (n + 3)) (A107666 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191859.P11850095815130006258

/-!
# A191861: Second member of a pair of numbers occurring in the definition of 1-happy couples.

The programs for A191861, there is no canonical definition to state claims against.
-/

/-! ## A191861.P11644388327659256888

`A354598(A092452(3*(n+1))+n)`
-/

namespace A191861.P11644388327659256888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354598 (A092452 (3 * (n + 1)) + (n : ℤ)).toNat

end

end A191861.P11644388327659256888

/-! ## A191861.P3976587561529573750

`A305079(∑[A082582(n)+n]+1)`
-/

namespace A191861.P3976587561529573750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A191861.P3976587561529573750

/-! ## A191861.P7031168676444159472

`p?[A265524(2*n+1)]%A346488(n+3)`
-/

namespace A191861.P7031168676444159472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265524 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A346488 (n + 3))

end

end A191861.P7031168676444159472

/-! ## A191861.P11318831785177218839

`gcd(record[A111796(2*(n+1))], A111807(2*n+1))`
-/

namespace A191861.P11318831785177218839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111796 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A111807 (2 * n + 1))

end

end A191861.P11318831785177218839

/-!
# A191862: First member of a pair of numbers occurring in the definition of 2-happy couples.

The programs for A191862, there is no canonical definition to state claims against.
-/

/-! ## A191862.P12909067327599462447

`gcd(A000041(A004773(4*n+1)), A086364(4*n))`
-/

namespace A191862.P12909067327599462447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000041 (A004773 (4 * n + 1)).toNat) (A086364 (4 * n))

end

end A191862.P12909067327599462447

/-! ## A191862.P6854661056676928930

`gcd(A139694(A017910(n)), A175723(n+1))`
-/

namespace A191862.P6854661056676928930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139694 (A017910 n).toNat) (A175723 (n + 1))

end

end A191862.P6854661056676928930

/-!
# A191863: Second member of a pair of numbers occurring in the definition of 2-happy couples.

The programs for A191863, there is no canonical definition to state claims against.
-/

/-! ## A191863.P10131763362544938586

`A274888(A027465(n))+A000122(n+2)`
-/

namespace A191863.P10131763362544938586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274888 (A027465 n).toNat + A000122 (n + 2)

end

end A191863.P10131763362544938586

/-!
# A191864: a(n) = (a(n-1) + a(n-4)) * (a(n-2) - a(n-3)) with a(1)=1, a(2)=2, a(3)=3 and a(4)=4.

The programs for A191864, the canonical program `A191864.P7648282946048594143` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191864 has offset 1).

The definition of A191864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+a(n-4))*(a(n-2)-a(n-3))` (program `A191864.P7648282946048594143`, by `A191864.P7648282946048594143.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191864.P7648282946048594143

`(a(n-1)+a(n-4))*(a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A191864

/-- `(a(n-1)+a(n-4))*(a(n-2)-a(n-3))` -/
def P7648282946048594143.Spec : Prop :=
  ∀ n, P7648282946048594143.a n = A191864 (n + 1)

theorem P7648282946048594143.correct : P7648282946048594143.Spec := by
  intro n
  simp only [A191864, Nat.add_sub_cancel]

end A191864

/-! ## A191864.P6764786904213804634

`lcm(A008833(n+1), A334461(A099857(n)))`
-/

namespace A191864.P6764786904213804634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008833 (n + 1)) (A334461 (A099857 n).toNat)

end

end A191864.P6764786904213804634

namespace A191864

/-- `lcm(A008833(n+1), A334461(A099857(n)))` -/
def P6764786904213804634.Spec : Prop :=
  ∀ n, (P6764786904213804634.a n : ℤ) = A191864 (n + 1)

end A191864

/-! ## A191864.P12670860245772917342

`∪[A000607(2*(n+2)), A332109(A127604(2*(n+2)))]`
-/

namespace A191864.P12670860245772917342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332109 (A127604 (2 * (n + 2))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191864.P12670860245772917342

namespace A191864

/-- `∪[A000607(2*(n+2)), A332109(A127604(2*(n+2)))]` -/
def P12670860245772917342.Spec : Prop :=
  ∀ n, (P12670860245772917342.a n : ℤ) = A191864 (n + 1)

end A191864

/-!
# A191866: Numbers n such that n = (a+b)*c = a*b+c for some a > b > c > 1, with gcd(a,b) = gcd(b,c) = 1.

The programs for A191866, there is no canonical definition to state claims against.
-/

/-! ## A191866.P1358082980272682976

`A191676(∑[(A290969(n)%A124010(3*n+2))²+1])`
-/

namespace A191866.P1358082980272682976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290969 n) (A124010 (3 * n + 2)) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191676 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191866.P1358082980272682976

/-! ## A191866.P10446024808744468973

`A191676(∑[(A131274(n+1)%A124010(3*n+2))²+1])`
-/

namespace A191866.P10446024808744468973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131274 (n + 1)) (A124010 (3 * n + 2)) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191676 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191866.P10446024808744468973

/-! ## A191866.P1256055234357230143

`A191676(A226381(n+1)*A290848(n))`
-/

namespace A191866.P1256055234357230143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191676 (A226381 (n + 1) * A290848 n).toNat

end

end A191866.P1256055234357230143

/-! ## A191866.P7249666441862457864

`A191676(A226381(n+1)^A290848(n))`
-/

namespace A191866.P7249666441862457864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191676 (SequenceMachineLib.roundAway ((A226381 (n + 1) : ℚ) ^ (A290848 n : ℤ))).toNat

end

end A191866.P7249666441862457864

/-!
# A191867: Numbers which are both the sum of two nonzero squares and the concatenation of the decimal representation of two nonzero squares.

The programs for A191867, there is no canonical definition to state claims against.
-/

/-! ## A191867.P10890386960125766078

`filter[A191933(n+1), A353814(#)]`
-/

namespace A191867.P10890386960125766078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A191867.P10890386960125766078

/-! ## A191867.P15696048243231039161

`∩[A097268(n+1), A191933(n+1)]`
-/

namespace A191867.P15696048243231039161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191867.P15696048243231039161

/-! ## A191867.P9228229209671410544

`∩[A000404(n+1), A191933(n+1)]`
-/

namespace A191867.P9228229209671410544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191867.P9228229209671410544

/-! ## A191867.P5418442640626101544

`∩[A004431(n+1), A191933(n+1)]`
-/

namespace A191867.P5418442640626101544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191867.P5418442640626101544

/-! ## A191867.P3839538355747745346

`∩[A085989(n+1), A191933(n+1)]`
-/

namespace A191867.P3839538355747745346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191867.P3839538355747745346

/-!
# A191868: Numbers n such that (product of divisors of 2n) mod (sum of divisors of 2n) is equal to number of divisors of 2n.

The programs for A191868, there is no canonical definition to state claims against.
-/

/-! ## A191868.P12065929906953856644

`record[gcd(A087507(n), A323167(n+1))]`
-/

namespace A191868.P12065929906953856644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087507 n) (A323167 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191868.P12065929906953856644

/-! ## A191868.P14772181030463207257

`record[A139169(A064988(3*n+1))]`
-/

namespace A191868.P14772181030463207257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (A064988 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191868.P14772181030463207257

/-! ## A191868.P7912285675419417462

`record[xor(1, A006530(A248003(3*n+1)))+1]`
-/

namespace A191868.P7912285675419417462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A006530 (A248003 (3 * n + 1)).toNat) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191868.P7912285675419417462

/-! ## A191868.P13704494431232789426

`record[A025492(3*n+1)%A025518(n+4)]`
-/

namespace A191868.P13704494431232789426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025492 (3 * n + 1)) (A025518 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191868.P13704494431232789426

/-! ## A191868.P17104084864553983543

`filter[A100980(3*n+1), A383298(#)]`
-/

namespace A191868.P17104084864553983543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100980 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A191868.P17104084864553983543

/-!
# A191869: First differences of the dying rabbits sequence A000044.

The programs for A191869, there is no canonical definition to state claims against.
-/

/-! ## A191869.P1207260254929498469

`Δ[A000044(n)]`
-/

namespace A191869.P1207260254929498469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191869.P1207260254929498469

/-! ## A191869.P17648859963636043178

`A000044(n+1)-A000044(n)`
-/

namespace A191869.P17648859963636043178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000044 (n + 1) - A000044 n

end

end A191869.P17648859963636043178

/-! ## A191869.P9975809520888477022

`A000044(n+1)+A000044(n)*A033999(2*n+1)`
-/

namespace A191869.P9975809520888477022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000044 (n + 1) + A000044 n * A033999 (2 * n + 1)

end

end A191869.P9975809520888477022

/-! ## A191869.P14310037586430680105

`A165190(or(11, A022115(n)))`
-/

namespace A191869.P14310037586430680105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (Int.lor 11 (A022115 n)).toNat

end

end A191869.P14310037586430680105

/-! ## A191869.P962468743425874572

`A165190(A022115(n)-A165190(n+1))`
-/

namespace A191869.P962468743425874572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A022115 n - A165190 (n + 1)).toNat

end

end A191869.P962468743425874572

/-!
# A191870: Row sums of A156528.

The programs for A191870, there is no canonical definition to state claims against.
-/

/-! ## A191870.P3881274689436511965

`A187646(n)+A129505(n+1)%A234324(n)`
-/

namespace A191870.P3881274689436511965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187646 n + Int.tmod (A129505 (n + 1)) (A234324 n)

end

end A191870.P3881274689436511965

/-! ## A191870.P1942852121859486471

`A129505(n+1)+A187646(n)%A348084(n)`
-/

namespace A191870.P1942852121859486471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129505 (n + 1) + Int.tmod (A187646 n) (A348084 n)

end

end A191870.P1942852121859486471

/-! ## A191870.P16513232463404848754

`A132393(A184636(n+1))+abs(A154415(2*n))`
-/

namespace A191870.P16513232463404848754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A184636 (n + 1)).toNat + |A154415 (2 * n)|

end

end A191870.P16513232463404848754

/-! ## A191870.P4145519921990797616

`A132393(A184636(n+1))+A094267(n²)*A154415(2*n)`
-/

namespace A191870.P4145519921990797616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A184636 (n + 1)).toNat + A094267 (n ^ 2) * A154415 (2 * n)

end

end A191870.P4145519921990797616

/-! ## A191870.P2891247055125976577

`A354979(A000217(n)+n)+A132393(A184636(n+1))`
-/

namespace A191870.P2891247055125976577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354979 (A000217 n + (n : ℤ)).toNat + A132393 (A184636 (n + 1)).toNat

end

end A191870.P2891247055125976577

/-!
# A191871: a(n) = numerator(n^2 / 2^n).

The programs for A191871, the canonical program `A191871.P1204527680089105261` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191871 has offset 0).

The definition of A191871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191871.P1204527680089105261

`gcd(n², a(∑[n]%n))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A191871

/-- `gcd(n², a(∑[n]%n))` -/
def P1204527680089105261.Spec : Prop :=
  ∀ n, (P1204527680089105261.a n : ℤ) = A191871 n

theorem P1204527680089105261.correct : P1204527680089105261.Spec := by
  intro n
  simp only [A191871]

end A191871

/-! ## A191871.P15328268610980358052

`(2*n/xor(abs(1-n), -(n+1)))²`
-/

namespace A191871.P15328268610980358052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℚ) / (Int.xor |1 - (n : ℤ)| (-(n + 1 : ℤ)) : ℚ)) ^ 2

end

end A191871.P15328268610980358052

namespace A191871

/-- `(2*n/xor(abs(1-n), -(n+1)))²` -/
def P15328268610980358052.Spec : Prop :=
  ∀ n, P15328268610980358052.a n = (A191871 n : ℚ)

end A191871

/-! ## A191871.P6343574918549654073

`gcd(n, A129527(n))²`
-/

namespace A191871.P6343574918549654073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A129527 n) ^ 2

end

end A191871.P6343574918549654073

namespace A191871

/-- `gcd(n, A129527(n))²` -/
def P6343574918549654073.Spec : Prop :=
  ∀ n, (P6343574918549654073.a n : ℤ) = A191871 n

end A191871

/-! ## A191871.P8064909379670804005

`ceil(A129343(n)/2)²`
-/

namespace A191871.P8064909379670804005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129343 n : ℚ) / 2⌉ ^ 2

end

end A191871.P8064909379670804005

namespace A191871

/-- `ceil(A129343(n)/2)²` -/
def P8064909379670804005.Spec : Prop :=
  ∀ n, P8064909379670804005.a n = A191871 n

end A191871

/-! ## A191871.P13947852265936628945

`A000265(n*(and(2, a(n-1))²+2))²` with `a(0)=0`
-/

namespace A191871.P13947852265936628945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000265 ((n : ℤ) * (Int.land 2 (a (n - 1)) ^ 2 + 2)).toNat ^ 2

end

end A191871.P13947852265936628945

namespace A191871

/-- `A000265(n*(and(2, a(n-1))²+2))²` -/
def P13947852265936628945.Spec : Prop :=
  ∀ n, P13947852265936628945.a n = A191871 n

end A191871

/-! ## A191871.P12858617516981342240

`A057889(A030101(n))²`
-/

namespace A191871.P12858617516981342240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A030101 n).toNat ^ 2

end

end A191871.P12858617516981342240

namespace A191871

/-- `A057889(A030101(n))²` -/
def P12858617516981342240.Spec : Prop :=
  ∀ n, P12858617516981342240.a n = A191871 n

end A191871

/-! ## A191871.P13891657738235500279

`A057889(n-A055945(n))²`
-/

namespace A191871.P13891657738235500279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 ((n : ℤ) - A055945 n).toNat ^ 2

end

end A191871.P13891657738235500279

namespace A191871

/-- `A057889(n-A055945(n))²` -/
def P13891657738235500279.Spec : Prop :=
  ∀ n, P13891657738235500279.a n = A191871 n

end A191871

/-! ## A191871.P9091808141161498767

`(A005843(n)-A129527(n))²`
-/

namespace A191871.P9091808141161498767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 n - A129527 n) ^ 2

end

end A191871.P9091808141161498767

namespace A191871

/-- `(A005843(n)-A129527(n))²` -/
def P9091808141161498767.Spec : Prop :=
  ∀ n, P9091808141161498767.a n = A191871 n

end A191871

/-! ## A191871.P13436031756279516288

`A057889(xor(n, A175919(n)))²`
-/

namespace A191871.P13436031756279516288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.xor (n : ℤ) (A175919 n)).toNat ^ 2

end

end A191871.P13436031756279516288

namespace A191871

/-- `A057889(xor(n, A175919(n)))²` -/
def P13436031756279516288.Spec : Prop :=
  ∀ n, P13436031756279516288.a n = A191871 n

end A191871

/-! ## A191871.P3477952391854577913

`A000290(2*n-A129527(n))`
-/

namespace A191871.P3477952391854577913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((2 * n : ℤ) - A129527 n).toNat

end

end A191871.P3477952391854577913

namespace A191871

/-- `A000290(2*n-A129527(n))` -/
def P3477952391854577913.Spec : Prop :=
  ∀ n, P3477952391854577913.a n = A191871 n

end A191871

/-! ## A191871.P16747234796422958619

`A000290(n-A129527(n)+n)`
-/

namespace A191871.P16747234796422958619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((n : ℤ) - A129527 n + (n : ℤ)).toNat

end

end A191871.P16747234796422958619

namespace A191871

/-- `A000290(n-A129527(n)+n)` -/
def P16747234796422958619.Spec : Prop :=
  ∀ n, P16747234796422958619.a n = A191871 n

end A191871

/-! ## A191871.P6402217327364539073

`A000290(n-(A129527(n)-n))`
-/

namespace A191871.P6402217327364539073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((n : ℤ) - (A129527 n - (n : ℤ))).toNat

end

end A191871.P6402217327364539073

namespace A191871

/-- `A000290(n-(A129527(n)-n))` -/
def P6402217327364539073.Spec : Prop :=
  ∀ n, P6402217327364539073.a n = A191871 n

end A191871

/-! ## A191871.P5625219476122572106

`A004273(A103391(n+1)-1)²`
-/

namespace A191871.P5625219476122572106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A103391 (n + 1) - 1).toNat ^ 2

end

end A191871.P5625219476122572106

namespace A191871

/-- `A004273(A103391(n+1)-1)²` -/
def P5625219476122572106.Spec : Prop :=
  ∀ n, P5625219476122572106.a n = A191871 n

end A191871

/-! ## A191871.P16057840732667422620

`(A000265(A028310(n))%(n+1))²`
-/

namespace A191871.P16057840732667422620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A028310 n).toNat) (n + 1 : ℤ) ^ 2

end

end A191871.P16057840732667422620

namespace A191871

/-- `(A000265(A028310(n))%(n+1))²` -/
def P16057840732667422620.Spec : Prop :=
  ∀ n, P16057840732667422620.a n = A191871 n

end A191871

/-! ## A191871.P7471064244336695410

`(n/A006519(A065190(n+1)))²`
-/

namespace A191871.P7471064244336695410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (A006519 (A065190 (n + 1)).toNat : ℚ)) ^ 2

end

end A191871.P7471064244336695410

namespace A191871

/-- `(n/A006519(A065190(n+1)))²` -/
def P7471064244336695410.Spec : Prop :=
  ∀ n, P7471064244336695410.a n = (A191871 n : ℚ)

end A191871

/-! ## A191871.P4171618650065102946

`A056539(A055944(n)-n)²`
-/

namespace A191871.P4171618650065102946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A055944 n - (n : ℤ)).toNat ^ 2

end

end A191871.P4171618650065102946

namespace A191871

/-- `A056539(A055944(n)-n)²` -/
def P4171618650065102946.Spec : Prop :=
  ∀ n, P4171618650065102946.a n = A191871 n

end A191871

/-! ## A191871.P8477676129662316689

`A030101(A030101(n))*A030101(A057889(n))`
-/

namespace A191871.P8477676129662316689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 n).toNat * A030101 (A057889 n).toNat

end

end A191871.P8477676129662316689

namespace A191871

/-- `A030101(A030101(n))*A030101(A057889(n))` -/
def P8477676129662316689.Spec : Prop :=
  ∀ n, P8477676129662316689.a n = A191871 n

end A191871

/-! ## A191871.P9641113345422070065

`A325401(2*A325401(2*n))²`
-/

namespace A191871.P9641113345422070065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A325401 (2 * n)).toNat ^ 2

end

end A191871.P9641113345422070065

namespace A191871

/-- `A325401(2*A325401(2*n))²` -/
def P9641113345422070065.Spec : Prop :=
  ∀ n, P9641113345422070065.a n = A191871 n

end A191871

/-! ## A191871.P5048523110897193050

`A135276(A129343(n))`
-/

namespace A191871.P5048523110897193050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 (A129343 n).toNat

end

end A191871.P5048523110897193050

namespace A191871

/-- `A135276(A129343(n))` -/
def P5048523110897193050.Spec : Prop :=
  ∀ n, P5048523110897193050.a n = A191871 n

end A191871

/-! ## A191871.P2055401787541549774

`(n/A214546(A004273(n)))²`
-/

namespace A191871.P2055401787541549774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (A214546 (A004273 n).toNat : ℚ)) ^ 2

end

end A191871.P2055401787541549774

namespace A191871

/-- `(n/A214546(A004273(n)))²` -/
def P2055401787541549774.Spec : Prop :=
  ∀ n, P2055401787541549774.a n = (A191871 n : ℚ)

end A191871

/-!
# A191872: a(n) is the smallest multiple of n such that the sum of the square of the decimal digits of a(n) is divisible by n.

The programs for A191872, there is no canonical definition to state claims against.
-/

/-! ## A191872.P9487093212812352532

`(n+1)*A096815(A342762(n))`
-/

namespace A191872.P9487093212812352532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096815 (A342762 n).toNat

end

end A191872.P9487093212812352532

/-! ## A191872.P6993089678705660219

`(n+1)*A147494(A317491(n))`
-/

namespace A191872.P6993089678705660219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A147494 (A317491 n).toNat

end

end A191872.P6993089678705660219

/-! ## A191872.P12235709894150111980

`∑{d}[A335813(n), C(n+1, #)]`
-/

namespace A191872.P12235709894150111980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.choose (n + 1) d

end

end A191872.P12235709894150111980

/-! ## A191872.P3611141715161248569

`A146915(a(n-1))²+n` with `a(0)=1`
-/

namespace A191872.P3611141715161248569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A146915 (a (n - 1)).toNat ^ 2 + (n : ℤ)

end

end A191872.P3611141715161248569

/-! ## A191872.P15395999588759144551

`A147339(a(n-1))²+n` with `a(0)=1`
-/

namespace A191872.P15395999588759144551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147339 (a (n - 1)).toNat ^ 2 + (n : ℤ)

end

end A191872.P15395999588759144551

/-!
# A191873: A problem of Zarankiewicz: maximal number of 1's in an n X n matrix of 0's and 1's with 0's on the main diagonal and no "rectangle" with 1's at the four corners.

The programs for A191873, there is no canonical definition to state claims against.
-/

/-! ## A191873.P9731877452879667295

`A072567(n+1)-char[n^6]`
-/

namespace A191873.P9731877452879667295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072567 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A191873.P9731877452879667295

/-! ## A191873.P4520403375778471504

`A205805(2*(n+1))-C(n, n²)`
-/

namespace A191873.P4520403375778471504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205805 (2 * (n + 1)) - (Nat.choose n (n ^ 2) : ℤ)

end

end A191873.P4520403375778471504

/-! ## A191873.P10302843485023933904

`(n+1)²-A350296(n+1)-char[n^6]`
-/

namespace A191873.P10302843485023933904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A350296 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A191873.P10302843485023933904

/-! ## A191873.P13530900675758339467

`A392221(A285250(n+1))`
-/

namespace A191873.P13530900675758339467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392221 (A285250 (n + 1)).toNat

end

end A191873.P13530900675758339467

/-! ## A191873.P3284379256914487273

`A205805(record[A205843(n+4)])`
-/

namespace A191873.P3284379256914487273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205843 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205805 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191873.P3284379256914487273

/-!
# A191874: Number of n X n (0,1) matrices that achieve the record mentioned in A191873.

The programs for A191874, there is no canonical definition to state claims against.
-/

/-! ## A191874.P7561496515097028297

`A233275(C(n!, ceil(sqrt(n))!))`
-/

namespace A191874.P7561496515097028297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (Nat.choose (Nat.factorial n) (Nat.factorial ⌈Real.sqrt (n : ℝ)⌉.toNat))

end

end A191874.P7561496515097028297

/-!
# A191875: Ordered sums 3*f+4*g, where f and g are Fibonacci numbers (A000045).

The programs for A191875, there is no canonical definition to state claims against.
-/

/-! ## A191875.P8764255512429718647

`lt[A259789(n+1), A326106(A100861(n))]`
-/

namespace A191875.P8764255512429718647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326106 (A100861 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191875.P8764255512429718647

/-!
# A191877: Ordered sequence of nonnegative differences 4*f-3*g, where f and g are positive Fibonacci numbers (A000045).

The programs for A191877, there is no canonical definition to state claims against.
-/

/-! ## A191877.P10370334445293282209

`A285189(A001935(n))+n`
-/

namespace A191877.P10370334445293282209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A001935 n).toNat + (n : ℤ)

end

end A191877.P10370334445293282209

/-! ## A191877.P16162690266638399452

`A157685(A285423(n+1)+A223036(n+1))`
-/

namespace A191877.P16162690266638399452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A285423 (n + 1) + A223036 (n + 1)).toNat

end

end A191877.P16162690266638399452

/-! ## A191877.P10531357287062994253

`lt[A093765(A000010(n+1)), A290100(n+1)]`
-/

namespace A191877.P10531357287062994253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093765 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191877.P10531357287062994253

/-! ## A191877.P15580837794518377324

`lt[A263666(A184402(2*(n+1))), A332580(n+1)]`
-/

namespace A191877.P15580837794518377324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (A184402 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191877.P15580837794518377324

/-! ## A191877.P17413780362815430217

`eq[A161906(n+1), A167383(n)]`
-/

namespace A191877.P17413780362815430217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191877.P17413780362815430217

/-!
# A191881: Ordered sequence of nonnegative differences 5*f-g, where f and g are positive Fibonacci numbers (A000045).

The programs for A191881, there is no canonical definition to state claims against.
-/

/-! ## A191881.P1563450786544627040

`record[A154958(n)-A308558(n+1)]`
-/

namespace A191881.P1563450786544627040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 n - A308558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191881.P1563450786544627040

/-! ## A191881.P15465343256244846148

`lt[Δ[A006968(A088346(2*n+3)+1)], 2]`
-/

namespace A191881.P15465343256244846148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A088346 (2 * n + 3) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A191881.P15465343256244846148

/-! ## A191881.P8506183302803698397

`record[A086161(2*n)-A308558(2*n+1)]`
-/

namespace A191881.P8506183302803698397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (2 * n) - A308558 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191881.P8506183302803698397

/-! ## A191881.P18054506362319033025

`lt[A000045(n), A103505(A096275(n))]`
-/

namespace A191881.P18054506362319033025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (A096275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191881.P18054506362319033025

/-! ## A191881.P9528844091331928797

`record[A226762(n+1)-A321391(A004524(n))]`
-/

namespace A191881.P9528844091331928797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (n + 1) - A321391 (A004524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191881.P9528844091331928797

/-!
# A191882: Ordered sequence of nonnegative differences c*f-d*g, where f and g are positive Fibonacci numbers (A000045) and {c,d}={1,5}.

The programs for A191882, there is no canonical definition to state claims against.
-/

/-! ## A191882.P15341506806321998367

`eq[A000002(n+1), A143589(A000961(n+3))]`
-/

namespace A191882.P15341506806321998367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143589 (A000961 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191882.P15341506806321998367

/-! ## A191882.P10076415577084400340

`lt[A299962(n+1), A299986(A299972(2*n+1))]`
-/

namespace A191882.P10076415577084400340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299986 (A299972 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191882.P10076415577084400340

/-! ## A191882.P11113971958034782463

`lt[A190886(A052410(3*n+4)), A175506(3*(n+1))]`
-/

namespace A191882.P11113971958034782463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A052410 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175506 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191882.P11113971958034782463

/-! ## A191882.P5800675784763989730

`lt[A229823(A196249(2*n+3)), A184829(3*n+4)]`
-/

namespace A191882.P5800675784763989730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229823 (A196249 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184829 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191882.P5800675784763989730

/-!
# A191884: Ordered sequence of nonnegative differences f-5*g, where f and g are positive Fibonacci numbers (A000045).

The programs for A191884, there is no canonical definition to state claims against.
-/

/-! ## A191884.P10792764201830100296

`eq[A132588(n+1), A132588(A268809(n+1))]`
-/

namespace A191884.P10792764201830100296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132588 (A268809 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191884.P10792764201830100296

/-! ## A191884.P13499697642152073651

`lt[A360053(n+1), A360028(A360017(n+4))]`
-/

namespace A191884.P13499697642152073651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360028 (A360017 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191884.P13499697642152073651

/-! ## A191884.P7733587193515125856

`eq[A260956(A033666(3*n+1)), A351202(3*n+4)]`
-/

namespace A191884.P7733587193515125856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260956 (A033666 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351202 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191884.P7733587193515125856

/-!
# A191885: Ordered sequence of nonnegative differences 5*f-g, where f and g are positive Fibonacci numbers (A000045).

The programs for A191885, there is no canonical definition to state claims against.
-/

/-! ## A191885.P1248830014082013659

`A247977(2*A055932(n+1)²)`
-/

namespace A191885.P1248830014082013659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247977 (2 * A055932 (n + 1) ^ 2).toNat

end

end A191885.P1248830014082013659

/-! ## A191885.P7952270226134181415

`record[A316465(n+1)%A278496(n+1)]`
-/

namespace A191885.P7952270226134181415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316465 (n + 1)) (A278496 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191885.P7952270226134181415

/-! ## A191885.P14635378150785722855

`A247977(A005843(A055932(n+1)²))`
-/

namespace A191885.P14635378150785722855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247977 (A005843 (A055932 (n + 1) ^ 2).toNat).toNat

end

end A191885.P14635378150785722855

/-! ## A191885.P10337131743311665016

`A247977(2*A055932(n+1)*A055932(n+1))`
-/

namespace A191885.P10337131743311665016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247977 (2 * A055932 (n + 1) * A055932 (n + 1)).toNat

end

end A191885.P10337131743311665016

/-!
# A191886: Ordered sequence of nonnegative differences c*f-d*g, where f and g are positive Fibonacci numbers (A000045) and {c,d}={2,5}.

The programs for A191886, there is no canonical definition to state claims against.
-/

/-! ## A191886.P11657250369417299253

`lt[A166477(2*n+3), A160713(A359040(3*n+5))]`
-/

namespace A191886.P11657250369417299253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166477 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160713 (A359040 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191886.P11657250369417299253

/-!
# A191888: Ordered sequence of nonnegative differences 3*f-5*g, where f and g are positive Fibonacci numbers (A000045).

The programs for A191888, there is no canonical definition to state claims against.
-/

/-! ## A191888.P9064417350416909434

`lt[A226290(A210991(n)), A157868(n+1)]`
-/

namespace A191888.P9064417350416909434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226290 (A210991 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191888.P9064417350416909434

/-! ## A191888.P17876317677838169200

`eq[A010815(A374828(n+3)), A091048(2*n+1)]`
-/

namespace A191888.P17876317677838169200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A374828 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091048 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191888.P17876317677838169200

/-!
# A191889: Ordered sequence of nonnegative differences 5*f-3*g, where f and g are positive Fibonacci numbers (A000045).

The programs for A191889, there is no canonical definition to state claims against.
-/

/-! ## A191889.P8691701246409590470

`lt[A084193(2*n+3), A000578(A366973(n+1))]`
-/

namespace A191889.P8691701246409590470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084193 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A366973 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191889.P8691701246409590470

/-! ## A191889.P12340127244370420409

`lt[A002113(n+2), A067824(A372111(3*n+2))]`
-/

namespace A191889.P12340127244370420409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (A372111 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191889.P12340127244370420409

/-! ## A191889.P4293589080273848408

`lt[A089246(2*(n+1)), A022269(A347464(2*n+1))]`
-/

namespace A191889.P4293589080273848408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089246 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 (A347464 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191889.P4293589080273848408

/-!
# A191890: Ordered sequence of nonnegative differences c*f-d*g, where f and g are positive Fibonacci numbers (A000045) and {c,d}={3,5}.

The programs for A191890, there is no canonical definition to state claims against.
-/

/-! ## A191890.P10566406764114016882

`∪[A191888(n+1), A191889(n+1)]`
-/

namespace A191890.P10566406764114016882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191890.P10566406764114016882

/-!
# A191894: Ordered sequence of nonnegative differences c*f-d*g, where f and g are positive Fibonacci numbers (A000045) and {c,d}={4,5}.

The programs for A191894, there is no canonical definition to state claims against.
-/

/-! ## A191894.P15369593824955525281

`∪[A191892(n+1), A191893(n+1)]`
-/

namespace A191894.P15369593824955525281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191894.P15369593824955525281

/-! ## A191894.P1578750809479197641

`eq[A000007(n), A086017(A340865(n+1))]`
-/

namespace A191894.P1578750809479197641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 (A340865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191894.P1578750809479197641

/-!
# A191895: Smallest multiple of n whose factorial digit sum equals n.

The programs for A191895, there is no canonical definition to state claims against.
-/

/-! ## A191895.P15500733573317287861

`∩[A167503(n+1), A385890(n+1)]`
-/

namespace A191895.P15500733573317287861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191895.P15500733573317287861

/-! ## A191895.P8783272177211356975

`A064770(lcm(A046994(n+1), A047005(n+3)))`
-/

namespace A191895.P8783272177211356975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (Int.lcm (A046994 (n + 1)) (A047005 (n + 3)))

end

end A191895.P8783272177211356975

/-!
# A191897: Coefficients of the Z(n,x) polynomials; Z(0,x) = 1, Z(1,x) = x and Z(n,x) = x*Z(n-1,x) - 2*Z(n-2,x), n >= 2.

The programs for A191897, the canonical program `A191897.P3416227680953869584` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191897 has offset 0).

The definition of A191897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191897.P5339500661359501425

`sqrt(A059268(n))*A053119(n)`
-/

namespace A191897.P5339500661359501425
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059268 n : ℝ) * (A053119 n : ℝ)

end

end A191897.P5339500661359501425

namespace A191897

/-- `sqrt(A059268(n))*A053119(n)` -/
def P5339500661359501425.Spec : Prop :=
  ∀ n, P5339500661359501425.a n = (A191897 n : ℝ)

end A191897

/-! ## A191897.P3416227680953869584

`A016116(A002262(n))*A053119(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A191897

/-- `A016116(A002262(n))*A053119(n)` -/
def P3416227680953869584.Spec : Prop :=
  ∀ n, P3416227680953869584.a n = A191897 n

theorem P3416227680953869584.correct : P3416227680953869584.Spec := by
  intro n
  simp only [A191897]

end A191897

/-! ## A191897.P6852702856471180383

`A065941(n)*A077966(A002262(n))`
-/

namespace A191897.P6852702856471180383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n * A077966 (A002262 n).toNat

end

end A191897.P6852702856471180383

namespace A191897

/-- `A065941(n)*A077966(A002262(n))` -/
def P6852702856471180383.Spec : Prop :=
  ∀ n, P6852702856471180383.a n = A191897 n

end A191897

/-! ## A191897.P6807405318722477006

`A077957(A002262(n))*A108299(n)`
-/

namespace A191897.P6807405318722477006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A002262 n).toNat * A108299 n

end

end A191897.P6807405318722477006

namespace A191897

/-- `A077957(A002262(n))*A108299(n)` -/
def P6807405318722477006.Spec : Prop :=
  ∀ n, P6807405318722477006.a n = A191897 n

end A191897

/-! ## A191897.P12662912400223984838

`A016116(A002260(n+1))*A053119(n)`
-/

namespace A191897.P12662912400223984838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002260 (n + 1)).toNat * A053119 n

end

end A191897.P12662912400223984838

namespace A191897

/-- `A016116(A002260(n+1))*A053119(n)` -/
def P12662912400223984838.Spec : Prop :=
  ∀ n, P12662912400223984838.a n = A191897 n

end A191897

/-! ## A191897.P3471182194888219369

`A110509(A059399(n+1)-1)`
-/

namespace A191897.P3471182194888219369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 (A059399 (n + 1) - 1).toNat

end

end A191897.P3471182194888219369

namespace A191897

/-- `A110509(A059399(n+1)-1)` -/
def P3471182194888219369.Spec : Prop :=
  ∀ n, P3471182194888219369.a n = A191897 n

end A191897

/-! ## A191897.P5444736485677865447

`A053119(n)*A156663(A061579(n))`
-/

namespace A191897.P5444736485677865447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 n * A156663 (A061579 n).toNat

end

end A191897.P5444736485677865447

namespace A191897

/-- `A053119(n)*A156663(A061579(n))` -/
def P5444736485677865447.Spec : Prop :=
  ∀ n, P5444736485677865447.a n = A191897 n

end A191897

/-! ## A191897.P11502434082686412025

`A053119(n)*A330617(n)`
-/

namespace A191897.P11502434082686412025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 n * A330617 n

end

end A191897.P11502434082686412025

namespace A191897

/-- `A053119(n)*A330617(n)` -/
def P11502434082686412025.Spec : Prop :=
  ∀ n, P11502434082686412025.a n = A191897 n

end A191897

/-! ## A191897.P10862714061333189476

`A037213(A059268(n))*A108299(n)`
-/

namespace A191897.P10862714061333189476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A059268 n).toNat * A108299 n

end

end A191897.P10862714061333189476

namespace A191897

/-- `A037213(A059268(n))*A108299(n)` -/
def P10862714061333189476.Spec : Prop :=
  ∀ n, P10862714061333189476.a n = A191897 n

end A191897

/-! ## A191897.P16852980920742301795

`A000188(A276618(n))*A053119(n)`
-/

namespace A191897.P16852980920742301795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A276618 n).toNat * A053119 n

end

end A191897.P16852980920742301795

namespace A191897

/-- `A000188(A276618(n))*A053119(n)` -/
def P16852980920742301795.Spec : Prop :=
  ∀ n, P16852980920742301795.a n = A191897 n

end A191897

/-!
# A191898: Symmetric square array read by antidiagonals: T(n,1)=1, T(1,k)=1, T(n,k) = -Sum_{i=1..k-1} T(n-i,k) for n >= k, -Sum_{i=1..n-1} T(k-i,n) for n < k.

The programs for A191898, the canonical program `A191898.P7435542862714692241` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191898 has offset 1).

The definition of A191898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191898.P7435542862714692241

`∏{p}[A003989(n+1), 1-#]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A191898

/-- `∏{p}[A003989(n+1), 1-#]` -/
def P7435542862714692241.Spec : Prop :=
  ∀ n, P7435542862714692241.a n = A191898 (n + 1)

theorem P7435542862714692241.correct : P7435542862714692241.Spec := by
  intro n
  simp only [A191898, Nat.add_sub_cancel]

end A191898

/-! ## A191898.P12731319291098539983

`A023900(A003989(n+1))`
-/

namespace A191898.P12731319291098539983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A003989 (n + 1)).toNat

end

end A191898.P12731319291098539983

namespace A191898

/-- `A023900(A003989(n+1))` -/
def P12731319291098539983.Spec : Prop :=
  ∀ n, P12731319291098539983.a n = A191898 (n + 1)

end A191898

/-! ## A191898.P16754674470892012951

`∑{d}[A003989(n+1), A055615(#)]`
-/

namespace A191898.P16754674470892012951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055615 d

end

end A191898.P16754674470892012951

namespace A191898

/-- `∑{d}[A003989(n+1), A055615(#)]` -/
def P16754674470892012951.Spec : Prop :=
  ∀ n, P16754674470892012951.a n = A191898 (n + 1)

end A191898

/-! ## A191898.P15361193035381534511

`∑{d}[A003989(n+1), #*A008683(#)]`
-/

namespace A191898.P15361193035381534511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A008683 d

end

end A191898.P15361193035381534511

namespace A191898

/-- `∑{d}[A003989(n+1), #*A008683(#)]` -/
def P15361193035381534511.Spec : Prop :=
  ∀ n, P15361193035381534511.a n = A191898 (n + 1)

end A191898

/-! ## A191898.P16334588199409590759

`A231425(2*A003989(n+1)²)`
-/

namespace A191898.P16334588199409590759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231425 (2 * A003989 (n + 1) ^ 2).toNat

end

end A191898.P16334588199409590759

namespace A191898

/-- `A231425(2*A003989(n+1)²)` -/
def P16334588199409590759.Spec : Prop :=
  ∀ n, P16334588199409590759.a n = A191898 (n + 1)

end A191898

/-! ## A191898.P6191571577538455247

`A231425(comp[∑[n]])`
-/

namespace A191898.P6191571577538455247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231425 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A191898.P6191571577538455247

namespace A191898

/-- `A231425(comp[∑[n]])` -/
def P6191571577538455247.Spec : Prop :=
  ∀ n, P6191571577538455247.a n = A191898 (n + 1)

end A191898

/-! ## A191898.P3209155028258552552

`A334312(A014132(n+1))-A334312(n+1)`
-/

namespace A191898.P3209155028258552552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334312 (A014132 (n + 1)).toNat - A334312 (n + 1)

end

end A191898.P3209155028258552552

namespace A191898

/-- `A334312(A014132(n+1))-A334312(n+1)` -/
def P3209155028258552552.Spec : Prop :=
  ∀ n, P3209155028258552552.a n = A191898 (n + 1)

end A191898

/-! ## A191898.P3273892614050192149

`∏{p}[A287957(n+1), 1-#]`
-/

namespace A191898.P3273892614050192149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (p : ℤ))

end

end A191898.P3273892614050192149

namespace A191898

/-- `∏{p}[A287957(n+1), 1-#]` -/
def P3273892614050192149.Spec : Prop :=
  ∀ n, P3273892614050192149.a n = A191898 (n + 1)

end A191898

/-! ## A191898.P13538272865064486390

`A023900(A287957(n+1))`
-/

namespace A191898.P13538272865064486390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A287957 (n + 1)).toNat

end

end A191898.P13538272865064486390

namespace A191898

/-- `A023900(A287957(n+1))` -/
def P13538272865064486390.Spec : Prop :=
  ∀ n, P13538272865064486390.a n = A191898 (n + 1)

end A191898

/-! ## A191898.P17698841036866744750

`∏{p}[A164561(n+2), 1-#]`
-/

namespace A191898.P17698841036866744750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164561 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (p : ℤ))

end

end A191898.P17698841036866744750

namespace A191898

/-- `∏{p}[A164561(n+2), 1-#]` -/
def P17698841036866744750.Spec : Prop :=
  ∀ n, P17698841036866744750.a n = A191898 (n + 1)

end A191898

/-!
# A191899: Number of compositions of odd natural numbers into 8 parts <=n.

The programs for A191899, the canonical program `A191899.P10691144360822715161` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191899 has offset 0).

The definition of A191899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191899.P10691144360822715161

`floor((n+1)^8/2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A191899

/-- `floor((n+1)^8/2)` -/
def P10691144360822715161.Spec : Prop :=
  ∀ n, P10691144360822715161.a n = A191899 n

theorem P10691144360822715161.correct : P10691144360822715161.Spec := by
  intro n
  simp only [A191899]

end A191899

/-! ## A191899.P3785608723033165049

`round(sinh(8*log(n+1)))`
-/

namespace A191899.P3785608723033165049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (8 * Real.log (n + 1 : ℝ)))

end

end A191899.P3785608723033165049

namespace A191899

/-- `round(sinh(8*log(n+1)))` -/
def P3785608723033165049.Spec : Prop :=
  ∀ n, P3785608723033165049.a n = A191899 n

end A191899

/-! ## A191899.P16210745095809732673

`∑[Δ[or(1, n^8)]/2]`
-/

namespace A191899.P16210745095809732673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 8)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191899.P16210745095809732673

namespace A191899

/-- `∑[Δ[or(1, n^8)]/2]` -/
def P16210745095809732673.Spec : Prop :=
  ∀ n, P16210745095809732673.a n = (A191899 n : ℚ)

end A191899

/-! ## A191899.P14725229647518723731

`round(cot(2/(n+1)^8))`
-/

namespace A191899.P14725229647518723731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / ((n + 1) ^ 8 : ℚ) : ℝ))

end

end A191899.P14725229647518723731

namespace A191899

/-- `round(cot(2/(n+1)^8))` -/
def P14725229647518723731.Spec : Prop :=
  ∀ n, P14725229647518723731.a n = A191899 n

end A191899

/-! ## A191899.P10312282365490216574

`lcm(2, floor((n+1)²²²/2))`
-/

namespace A191899.P10312282365490216574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌊((((n + 1) ^ 2) ^ 2) ^ 2 : ℚ) / 2⌋

end

end A191899.P10312282365490216574

namespace A191899

/-- `lcm(2, floor((n+1)²²²/2))` -/
def P10312282365490216574.Spec : Prop :=
  ∀ n, (P10312282365490216574.a n : ℤ) = A191899 n

end A191899

/-! ## A191899.P12969584134987857027

`ceil(A258809(n+1)/2)`
-/

namespace A191899.P12969584134987857027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A258809 (n + 1) : ℚ) / 2⌉

end

end A191899.P12969584134987857027

namespace A191899

/-- `ceil(A258809(n+1)/2)` -/
def P12969584134987857027.Spec : Prop :=
  ∀ n, P12969584134987857027.a n = A191899 n

end A191899

/-! ## A191899.P15483697488488981461

`round((A000290(n+1)²²-1)/2)`
-/

namespace A191899.P15483697488488981461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000290 (n + 1) ^ 2) ^ 2 - 1 : ℚ) / 2)

end

end A191899.P15483697488488981461

namespace A191899

/-- `round((A000290(n+1)²²-1)/2)` -/
def P15483697488488981461.Spec : Prop :=
  ∀ n, P15483697488488981461.a n = A191899 n

end A191899

/-! ## A191899.P10561779684564498556

`A191495(n)-A059841(n)`
-/

namespace A191899.P10561779684564498556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191495 n - A059841 n

end

end A191899.P10561779684564498556

namespace A191899

/-- `A191495(n)-A059841(n)` -/
def P10561779684564498556.Spec : Prop :=
  ∀ n, P10561779684564498556.a n = A191899 n

end A191899

/-! ## A191899.P8297154046406798915

`2*A171714(n)*A191903(n)`
-/

namespace A191899.P8297154046406798915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A171714 n * A191903 n)

end

end A191899.P8297154046406798915

namespace A191899

/-- `2*A171714(n)*A191903(n)` -/
def P8297154046406798915.Spec : Prop :=
  ∀ n, P8297154046406798915.a n = A191899 n

end A191899

/-! ## A191899.P12166602657934989575

`∪[A191495(2*n+1), A191495(2*n)-1]`
-/

namespace A191899.P12166602657934989575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191495 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191495 (2 * n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191899.P12166602657934989575

namespace A191899

/-- `∪[A191495(2*n+1), A191495(2*n)-1]` -/
def P12166602657934989575.Spec : Prop :=
  ∀ n, (P12166602657934989575.a n : ℤ) = A191899 n

end A191899

/-! ## A191899.P9626599897986077449

`A191495(n)+A191903(n)-A171714(n)`
-/

namespace A191899.P9626599897986077449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191495 n + (A191903 n - A171714 n)

end

end A191899.P9626599897986077449

namespace A191899

/-- `A191495(n)+A191903(n)-A171714(n)` -/
def P9626599897986077449.Spec : Prop :=
  ∀ n, P9626599897986077449.a n = A191899 n

end A191899

/-! ## A191899.P14051689082287699156

`A191495(n)+A191900(n)-A191494(n)`
-/

namespace A191899.P14051689082287699156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191495 n + (A191900 n - A191494 n)

end

end A191899.P14051689082287699156

namespace A191899

/-- `A191495(n)+A191900(n)-A191494(n)` -/
def P14051689082287699156.Spec : Prop :=
  ∀ n, P14051689082287699156.a n = A191899 n

end A191899

/-! ## A191899.P2623996942948344428

`A191495(n)+A191902(n)-A191484(n)`
-/

namespace A191899.P2623996942948344428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191495 n + (A191902 n - A191484 n)

end

end A191899.P2623996942948344428

namespace A191899

/-- `A191495(n)+A191902(n)-A191484(n)` -/
def P2623996942948344428.Spec : Prop :=
  ∀ n, P2623996942948344428.a n = A191899 n

end A191899

/-! ## A191899.P1119507611677795552

`round((Δ[A000538(n)]²-1)/2)`
-/

namespace A191899.P1119507611677795552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) - f1 n) ^ 2 - 1 : ℚ) / 2)

end

end A191899.P1119507611677795552

namespace A191899

/-- `round((Δ[A000538(n)]²-1)/2)` -/
def P1119507611677795552.Spec : Prop :=
  ∀ n, P1119507611677795552.a n = A191899 n

end A191899

/-! ## A191899.P15363141561835668334

`(A001016(n+1)-A000035(n+1))/2`
-/

namespace A191899.P15363141561835668334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 (n + 1) - A000035 (n + 1) : ℚ) / 2

end

end A191899.P15363141561835668334

namespace A191899

/-- `(A001016(n+1)-A000035(n+1))/2` -/
def P15363141561835668334.Spec : Prop :=
  ∀ n, P15363141561835668334.a n = (A191899 n : ℚ)

end A191899

/-! ## A191899.P4787637029798439389

`A036487(n+1)+A191495(n)-A036486(n+1)`
-/

namespace A191899.P4787637029798439389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 (n + 1) + (A191495 n - A036486 (n + 1))

end

end A191899.P4787637029798439389

namespace A191899

/-- `A036487(n+1)+A191495(n)-A036486(n+1)` -/
def P4787637029798439389.Spec : Prop :=
  ∀ n, P4787637029798439389.a n = A191899 n

end A191899

/-! ## A191899.P14399301058207482152

`A191903(n*(n+2))`
-/

namespace A191899.P14399301058207482152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191903 (n * (n + 2))

end

end A191899.P14399301058207482152

namespace A191899

/-- `A191903(n*(n+2))` -/
def P14399301058207482152.Spec : Prop :=
  ∀ n, P14399301058207482152.a n = A191899 n

end A191899

