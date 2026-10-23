import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A299102: Number of (n + 1, n + 2)-core partitions with odd parts and corresponding order ideals confined to the three outermost diagonals of P_{n + 1, n + 2}.

The programs for A299102, there is no canonical definition to state claims against.
-/

/-! ## A299102.P321744155102414112

`A367693(3*(n+1))+A193024(C(floor(3*n/2), n))`
-/

namespace A299102.P321744155102414112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367693 (3 * (n + 1)) + A193024 (Nat.choose ⌊3 * ((n : ℚ) / 2)⌋.toNat n)

end

end A299102.P321744155102414112

/-! ## A299102.P6277761244702988305

`A358582(n+1)+A000121(A001076(n))`
-/

namespace A299102.P6277761244702988305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358582 (n + 1) + A000121 (A001076 n).toNat

end

end A299102.P6277761244702988305

/-! ## A299102.P13696556455439078468

`A257639(A135153(2*(n+2))*A346799(n+1))`
-/

namespace A299102.P13696556455439078468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A135153 (2 * (n + 2)) * A346799 (n + 1)).toNat

end

end A299102.P13696556455439078468

/-!
# A299106: Expansion of 1/(1 - x*Product_{k>=1} (1 + x^k)).

The programs for A299106, there is no canonical definition to state claims against.
-/

/-! ## A299106.P6795948041526068104

`A194920(A102543(2*(n+2))-A138302(n+1))`
-/

namespace A299106.P6795948041526068104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A102543 (2 * (n + 2)) - A138302 (n + 1)).toNat

end

end A299106.P6795948041526068104

/-! ## A299106.P2766744797513683042

`A141683(n+1)+A014045(A148167(n))`
-/

namespace A299106.P2766744797513683042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141683 (n + 1) + A014045 (A148167 n).toNat

end

end A299106.P2766744797513683042

/-! ## A299106.P7699416364316551941

`A141683(n+1)-A102683(A015441(n))`
-/

namespace A299106.P7699416364316551941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141683 (n + 1) - A102683 (A015441 n).toNat

end

end A299106.P7699416364316551941

/-! ## A299106.P2240866639922245229

`A141683(n+1)-A055641(A098182(n))`
-/

namespace A299106.P2240866639922245229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141683 (n + 1) - A055641 (A098182 n).toNat

end

end A299106.P2240866639922245229

/-! ## A299106.P500021839076500739

`A141683(n+1)-A185238(A000041(n))`
-/

namespace A299106.P500021839076500739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141683 (n + 1) - A185238 (A000041 n).toNat

end

end A299106.P500021839076500739

/-!
# A299107: Probable primes in sequence {s_k(4)}, where s_k(4) = 4*s_{k-1}(4) - s_{k-2}(4), k >= 2, s_0(4) = 1, s_1(4) = 5.

The programs for A299107, there is no canonical definition to state claims against.
-/

/-! ## A299107.P11813909125978878648

`A001834(A299100(n+1))`
-/

namespace A299107.P11813909125978878648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 (A299100 (n + 1)).toNat

end

end A299107.P11813909125978878648

/-! ## A299107.P8535596647925971857

`A096146(comp[∑[n]])`
-/

namespace A299107.P8535596647925971857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096146 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A299107.P8535596647925971857

/-! ## A299107.P435943218889309410

`A108412(2*A299100(n+1))`
-/

namespace A299107.P435943218889309410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108412 (2 * A299100 (n + 1)).toNat

end

end A299107.P435943218889309410

/-! ## A299107.P5858397973266637768

`A131887(2*A299100(n+1))`
-/

namespace A299107.P5858397973266637768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131887 (2 * A299100 (n + 1)).toNat

end

end A299107.P5858397973266637768

/-!
# A299108: Expansion of 1/(1 - x*Product_{k>=1} (1 + x^k)/(1 - x^k)).

The programs for A299108, there is no canonical definition to state claims against.
-/

/-! ## A299108.P5122757376344709985

`A020725(2*(a(n-1)+a(n-2)+a(n-3)))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=9`
-/

namespace A299108.P5122757376344709985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 9] fun n a =>
  A020725 (2 * (a (n - 1) + (a (n - 2) + a (n - 3)))).toNat

end

end A299108.P5122757376344709985

/-! ## A299108.P13964306504850844636

`A028310(2*(a(n-1)+a(n-2)+a(n-3))+1)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=9`
-/

namespace A299108.P13964306504850844636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 9] fun n a =>
  A028310 (2 * (a (n - 1) + (a (n - 2) + a (n - 3))) + 1).toNat

end

end A299108.P13964306504850844636

/-! ## A299108.P16071833094837704278

`A028310(A077827(log2(ceil(2^(n-1)))))`
-/

namespace A299108.P16071833094837704278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A077827 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat).toNat

end

end A299108.P16071833094837704278

/-! ## A299108.P15313901310300064741

`A028310(A077827(n)-A077835(n))`
-/

namespace A299108.P15313901310300064741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A077827 n - A077835 n).toNat

end

end A299108.P15313901310300064741

/-! ## A299108.P2088480368610963627

`A028310(A077827(n)%A077835(n))`
-/

namespace A299108.P2088480368610963627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A077827 n) (A077835 n)).toNat

end

end A299108.P2088480368610963627

/-!
# A299109: Probable primes in A030221.

The programs for A299109, there is no canonical definition to state claims against.
-/

/-! ## A299109.P8896093821410785427

`A030221(A299101(n+1))`
-/

namespace A299109.P8896093821410785427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030221 (A299101 (n + 1)).toNat

end

end A299109.P8896093821410785427

/-! ## A299109.P14818202557415271435

`A030221(A117522(n+1)%A299107(n+1))`
-/

namespace A299109.P14818202557415271435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030221 (Int.tmod (A117522 (n + 1)) (A299107 (n + 1))).toNat

end

end A299109.P14818202557415271435

/-! ## A299109.P4209162439417642600

`A030221(lcm(A117522(n+1), A197364(n+1)))`
-/

namespace A299109.P4209162439417642600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030221 (Int.lcm (A117522 (n + 1)) (A197364 (n + 1)))

end

end A299109.P4209162439417642600

/-! ## A299109.P4730555203318396885

`A030221(floor(A168033(n+2)/2)%A005342(n+1))`
-/

namespace A299109.P4730555203318396885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030221 (Int.tmod ⌊(A168033 (n + 2) : ℚ) / 2⌋ (A005342 (n + 1))).toNat

end

end A299109.P4730555203318396885

/-!
# A299110: Prime(r) for r such that prime(r) - prime(r-1) = 12 and prime(r-1) - prime(r-2) = 2.

The programs for A299110, there is no canonical definition to state claims against.
-/

/-! ## A299110.P9108188134531303132

`∩[A031931(n+1), A289993(n+1)]`
-/

namespace A299110.P9108188134531303132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299110.P9108188134531303132

/-! ## A299110.P14728169400088016933

`∩[A031931(n+1), A088176(n+1)]`
-/

namespace A299110.P14728169400088016933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299110.P14728169400088016933

/-! ## A299110.P11332679691912663992

`∩[A031931(n+1), A098933(n+1)]`
-/

namespace A299110.P11332679691912663992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299110.P11332679691912663992

/-! ## A299110.P6228320111995947491

`∩[A098933(n+1), A289993(n+1)]`
-/

namespace A299110.P6228320111995947491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299110.P6228320111995947491

/-! ## A299110.P3202276358373228345

`∩[A098933(n+1), A303214(n+1)]`
-/

namespace A299110.P3202276358373228345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299110.P3202276358373228345

/-! ## A299110.P6482495706788875843

`∩[A092216(n+1), A289993(n+1)]`
-/

namespace A299110.P6482495706788875843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299110.P6482495706788875843

/-! ## A299110.P524644556157293773

`p?[A024675(A029707(n+1))+6]`
-/

namespace A299110.P524644556157293773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (A029707 (n + 1)).toNat + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299110.P524644556157293773

/-! ## A299110.P1807619212970659340

`p?[A078444(A107770(n+1))+7]`
-/

namespace A299110.P1807619212970659340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (A107770 (n + 1)).toNat + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299110.P1807619212970659340

/-! ## A299110.P4123542137142691326

`∩[A031931(n+1), A153740(n+1)]`
-/

namespace A299110.P4123542137142691326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299110.P4123542137142691326

/-!
# A299111: Maximum value of the cyclic convolution of first n primes with themselves.

The programs for A299111, there is no canonical definition to state claims against.
-/

/-! ## A299111.P10135729825500208360

`A319824(A226863(n+1))`
-/

namespace A299111.P10135729825500208360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319824 (A226863 (n + 1)).toNat

end

end A299111.P10135729825500208360

/-!
# A299112: Record values in A243145.

The programs for A299112, there is no canonical definition to state claims against.
-/

/-! ## A299112.P13329058645572059685

`record[A243145(n+1)]`
-/

namespace A299112.P13329058645572059685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299112.P13329058645572059685

/-! ## A299112.P9321242433907263022

`A243145(A299073(n+1))`
-/

namespace A299112.P9321242433907263022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (A299073 (n + 1)).toNat

end

end A299112.P9321242433907263022

/-! ## A299112.P15819193277512550787

`record[A243145(n)/a(A001222(n))]` with `a(0)=1`
-/

namespace A299112.P15819193277512550787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A243145 n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299112.P15819193277512550787

/-! ## A299112.P12922320978072945966

`record[A243145(A028310(n))-A037213(n)]`
-/

namespace A299112.P12922320978072945966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (A028310 n).toNat - A037213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299112.P12922320978072945966

/-! ## A299112.P3555379455616343715

`record[A243145(A028310(n))%A117951(n)]`
-/

namespace A299112.P3555379455616343715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243145 (A028310 n).toNat) (A117951 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299112.P3555379455616343715

/-!
# A299113: Number of rooted identity trees with 2n+1 nodes.

The programs for A299113, there is no canonical definition to state claims against.
-/

/-! ## A299113.P17253550548771224718

`A004111(2*n+1)`
-/

namespace A299113.P17253550548771224718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (2 * n + 1)

end

end A299113.P17253550548771224718

/-! ## A299113.P5925153641457232083

`A196118(2*n+1)-A196118(2*n)`
-/

namespace A299113.P5925153641457232083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196118 (2 * n + 1) - A196118 (2 * n)

end

end A299113.P5925153641457232083

/-! ## A299113.P16926614562780577576

`A308433(2*n+1)/(2*n+1)`
-/

namespace A299113.P16926614562780577576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308433 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A299113.P16926614562780577576

/-! ## A299113.P4438209854591602464

`A318757(∑[Δ[n*(2*n+1)]+2]-1)`
-/

namespace A299113.P4438209854591602464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A299113.P4438209854591602464

/-! ## A299113.P8980007788083636320

`A316074(A084849(n))`
-/

namespace A299113.P8980007788083636320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (A084849 n).toNat

end

end A299113.P8980007788083636320

/-! ## A299113.P8673669839595397770

`A316074(A000217(2*n)+1)`
-/

namespace A299113.P8673669839595397770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (A000217 (2 * n) + 1).toNat

end

end A299113.P8673669839595397770

/-! ## A299113.P4037107954482178836

`A032175(2*n+1)-A032177(2*n+1)`
-/

namespace A299113.P4037107954482178836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032175 (2 * n + 1) - A032177 (2 * n + 1)

end

end A299113.P4037107954482178836

/-! ## A299113.P3498642700021211161

`A316101(A091823(n+1))`
-/

namespace A299113.P3498642700021211161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A091823 (n + 1)).toNat

end

end A299113.P3498642700021211161

/-! ## A299113.P13399059350559936085

`A316101(A052905(2*n+1)-(2*n+1))`
-/

namespace A299113.P13399059350559936085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A052905 (2 * n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A299113.P13399059350559936085

/-! ## A299113.P13651945703535596548

`A316101(eq[A108561(n), A327159(2*n+1)])`
-/

namespace A299113.P13651945703535596548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327159 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A299113.P13651945703535596548

/-!
# A299116: The number of sparse union-closed sets. That is, the number of union-closed sets on n elements containing the empty set and the universe, such that in average each set (not counting the empty set) has at most n/2 elements.

The programs for A299116, there is no canonical definition to state claims against.
-/

/-! ## A299116.P2262465782795337754

`A240216(A007097(n))-A008619(n)`
-/

namespace A299116.P2262465782795337754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240216 (A007097 n).toNat - A008619 n

end

end A299116.P2262465782795337754

/-! ## A299116.P133086703896213497

`A241509(A148311(n)-A240210(n))`
-/

namespace A299116.P133086703896213497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241509 (A148311 n - A240210 n).toNat

end

end A299116.P133086703896213497

/-!
# A299117: Sorted terms of A277781.

The programs for A299117, there is no canonical definition to state claims against.
-/

/-! ## A299117.P15899304281122299867

`comp[A277803(n+1)-1]+1`
-/

namespace A299117.P15899304281122299867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277803 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A299117.P15899304281122299867

/-! ## A299117.P15633535499755163512

`comp[A277803(n+1)%A004207(n)]`
-/

namespace A299117.P15633535499755163512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277803 (n + 1)) (A004207 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299117.P15633535499755163512

/-!
# A299119: Positive solution to 2^(n-1) = (1/n) * Sum_{d|n} a(d) * a(n/d).

The programs for A299119, there is no canonical definition to state claims against.
-/

/-! ## A299119.P13547028618824968195

`(n+1)*A299151(n+1)/A299152(n+1)`
-/

namespace A299119.P13547028618824968195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A299151 (n + 1) : ℚ) / (A299152 (n + 1) : ℚ))

end

end A299119.P13547028618824968195

/-! ## A299119.P2288928782911276604

`A089426(A088932(n))`
-/

namespace A299119.P2288928782911276604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089426 (A088932 n).toNat

end

end A299119.P2288928782911276604

/-! ## A299119.P12870178996005868293

`A089426(∑[∑[A362614(n)]])`
-/

namespace A299119.P12870178996005868293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362614 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089426 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299119.P12870178996005868293

/-!
# A299120: a(n) = (n-1)*(n-2)*(n+3)*(n+2)/12.

The programs for A299120, the canonical program `A299120.P9675670611258215446` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299120 has offset 0).

The definition of A299120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*(n-2)*(n+3)*(n+2)/12` (program `A299120.P16864170581446280149`, by `A299120.P16864170581446280149.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299120.P16864170581446280149

`(n-1)*(n-2)*(n+3)*(n+2)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A299120.P16864170581446280149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * ((n : ℤ) - 2) * (n + 3 : ℤ) * (n + 2 : ℤ) : ℚ) / 12

end

end A299120.P16864170581446280149

namespace A299120

/-- `(n-1)*(n-2)*(n+3)*(n+2)/12` -/
def P16864170581446280149.Spec : Prop :=
  ∀ n, P16864170581446280149.a n = (A299120 n : ℚ)

theorem P16864170581446280149.correct : P16864170581446280149.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A299120, Nat.add_sub_cancel, A299120.P16864170581446280149.a, A299120.P9675670611258215446.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A299120, Nat.add_sub_cancel, A299120.P16864170581446280149.a, A299120.P9675670611258215446.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A299120

/-! ## A299120.P9675670611258215446

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=5, a(4)=21`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A299120

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9675670611258215446.Spec : Prop :=
  ∀ n, P9675670611258215446.a n = A299120 n

theorem P9675670611258215446.correct : P9675670611258215446.Spec := by
  intro n
  simp only [A299120]

end A299120

/-! ## A299120.P2706424094914757491

`∑[∑[lcm(n, n-1)]-n]+1`
-/

namespace A299120.P2706424094914757491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A299120.P2706424094914757491

namespace A299120

/-- `∑[∑[lcm(n, n-1)]-n]+1` -/
def P2706424094914757491.Spec : Prop :=
  ∀ n, P2706424094914757491.a n = A299120 n

end A299120

/-! ## A299120.P2551630064518266987

`a(n-1)-(∑[n-n²]+n)` with `a(0)=1`
-/

namespace A299120.P2551630064518266987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A299120.P2551630064518266987

namespace A299120

/-- `a(n-1)-(∑[n-n²]+n)` -/
def P2551630064518266987.Spec : Prop :=
  ∀ n, P2551630064518266987.a n = A299120 n

end A299120

/-! ## A299120.P17640099926880483208

`a(n-1)-∑[n-n²]-n` with `a(0)=1`
-/

namespace A299120.P17640099926880483208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A299120.P17640099926880483208

namespace A299120

/-- `a(n-1)-∑[n-n²]-n` -/
def P17640099926880483208.Spec : Prop :=
  ∀ n, P17640099926880483208.a n = A299120 n

end A299120

/-! ## A299120.P7017819632545219209

`A188667(n)/3-(n-1)`
-/

namespace A299120.P7017819632545219209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188667 n : ℚ) / 3 - ((n : ℤ) - 1 : ℚ)

end

end A299120.P7017819632545219209

namespace A299120

/-- `A188667(n)/3-(n-1)` -/
def P7017819632545219209.Spec : Prop :=
  ∀ n, P7017819632545219209.a n = (A299120 n : ℚ)

end A299120

/-! ## A299120.P15347038112598637256

`A299198(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A299120.P15347038112598637256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299198 (n + 1) - a (n - 1)

end

end A299120.P15347038112598637256

namespace A299120

/-- `A299198(n+1)-a(n-1)` -/
def P15347038112598637256.Spec : Prop :=
  ∀ n, P15347038112598637256.a n = A299120 n

end A299120

/-! ## A299120.P3779127775034602824

`A134393(n+1)-n*(n+2)`
-/

namespace A299120.P3779127775034602824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134393 (n + 1) - (n * (n + 2) : ℤ)

end

end A299120.P3779127775034602824

namespace A299120

/-- `A134393(n+1)-n*(n+2)` -/
def P3779127775034602824.Spec : Prop :=
  ∀ n, P3779127775034602824.a n = A299120 n

end A299120

/-! ## A299120.P15199290465005047247

`A110331(n)+A006007(n)`
-/

namespace A299120.P15199290465005047247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110331 n + A006007 n

end

end A299120.P15199290465005047247

namespace A299120

/-- `A110331(n)+A006007(n)` -/
def P15199290465005047247.Spec : Prop :=
  ∀ n, P15199290465005047247.a n = A299120 n

end A299120

/-! ## A299120.P6186372447884016346

`A014205(n)-A108766(n)`
-/

namespace A299120.P6186372447884016346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014205 n - A108766 n

end

end A299120.P6186372447884016346

namespace A299120

/-- `A014205(n)-A108766(n)` -/
def P6186372447884016346.Spec : Prop :=
  ∀ n, P6186372447884016346.a n = A299120 n

end A299120

/-! ## A299120.P12250677312349899438

`A328152(n+1)-A283551(n)`
-/

namespace A299120.P12250677312349899438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328152 (n + 1) - A283551 n

end

end A299120.P12250677312349899438

namespace A299120

/-- `A328152(n+1)-A283551(n)` -/
def P12250677312349899438.Spec : Prop :=
  ∀ n, P12250677312349899438.a n = A299120 n

end A299120

/-! ## A299120.P14508211089585530805

`2*A145126(n)-A047732(n)`
-/

namespace A299120.P14508211089585530805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145126 n - A047732 n

end

end A299120.P14508211089585530805

namespace A299120

/-- `2*A145126(n)-A047732(n)` -/
def P14508211089585530805.Spec : Prop :=
  ∀ n, P14508211089585530805.a n = A299120 n

end A299120

/-! ## A299120.P180782266534190185

`A200786(n+1)%A154286(n)`
-/

namespace A299120.P180782266534190185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200786 (n + 1)) (A154286 n)

end

end A299120.P180782266534190185

namespace A299120

/-- `A200786(n+1)%A154286(n)` -/
def P180782266534190185.Spec : Prop :=
  ∀ n, P180782266534190185.a n = A299120 n

end A299120

/-! ## A299120.P5108240148927772337

`∑[∑[A002061(n)]]-A005563(n)`
-/

namespace A299120.P5108240148927772337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005563 n

end

end A299120.P5108240148927772337

namespace A299120

/-- `∑[∑[A002061(n)]]-A005563(n)` -/
def P5108240148927772337.Spec : Prop :=
  ∀ n, P5108240148927772337.a n = A299120 n

end A299120

/-! ## A299120.P18355261793226176073

`∑[A000330(n)-A000096(n)]+1`
-/

namespace A299120.P18355261793226176073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A299120.P18355261793226176073

namespace A299120

/-- `∑[A000330(n)-A000096(n)]+1` -/
def P18355261793226176073.Spec : Prop :=
  ∀ n, P18355261793226176073.a n = A299120 n

end A299120

/-! ## A299120.P15530866395018839124

`∑[A033547(n)-A008486(n)]+2`
-/

namespace A299120.P15530866395018839124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 n - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A299120.P15530866395018839124

namespace A299120

/-- `∑[A033547(n)-A008486(n)]+2` -/
def P15530866395018839124.Spec : Prop :=
  ∀ n, P15530866395018839124.a n = A299120 n

end A299120

/-! ## A299120.P10876104116358245893

`A006007(n)-(A023443(n)+n²)`
-/

namespace A299120.P10876104116358245893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 n - (A023443 n + (n ^ 2 : ℤ))

end

end A299120.P10876104116358245893

namespace A299120

/-- `A006007(n)-(A023443(n)+n²)` -/
def P10876104116358245893.Spec : Prop :=
  ∀ n, P10876104116358245893.a n = A299120 n

end A299120

/-! ## A299120.P166592795396260743

`∑[∑[A028310(n)²]-A253145(n)]`
-/

namespace A299120.P166592795396260743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A253145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299120.P166592795396260743

namespace A299120

/-- `∑[∑[A028310(n)²]-A253145(n)]` -/
def P166592795396260743.Spec : Prop :=
  ∀ n, P166592795396260743.a n = A299120 n

end A299120

/-! ## A299120.P15171978835270097725

`A220147(n+1)-A080663(n+1)`
-/

namespace A299120.P15171978835270097725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220147 (n + 1) - A080663 (n + 1)

end

end A299120.P15171978835270097725

namespace A299120

/-- `A220147(n+1)-A080663(n+1)` -/
def P15171978835270097725.Spec : Prop :=
  ∀ n, P15171978835270097725.a n = A299120 n

end A299120

/-!
# A299121: a(n) = Sum_{k=0..n} (k*(n-k))!.

The programs for A299121, there is no canonical definition to state claims against.
-/

/-! ## A299121.P7179951831473370513

`record[ceil(sqrt(A163820(4*n+3)))]`
-/

namespace A299121.P7179951831473370513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A163820 (4 * n + 3) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299121.P7179951831473370513

/-! ## A299121.P7671395282163615054

`A364534(n+1)+A090035(A024429(n))`
-/

namespace A299121.P7671395282163615054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364534 (n + 1) + A090035 (A024429 n).toNat

end

end A299121.P7671395282163615054

/-!
# A299122: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299122, there is no canonical definition to state claims against.
-/

/-! ## A299122.P7471866451952071143

`A299128(∑[4*n]+1)`
-/

namespace A299122.P7471866451952071143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299122.P7471866451952071143

/-! ## A299122.P10891729709875537797

`record[A299128(Δ[A235355(n)])]`
-/

namespace A299122.P10891729709875537797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299122.P10891729709875537797

/-! ## A299122.P2884020712310517984

`and(-1, A299128(A001844(n)))`
-/

namespace A299122.P2884020712310517984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299128 (A001844 n).toNat)

end

end A299122.P2884020712310517984

/-! ## A299122.P8992906411767732102

`record[A299128(A330613(n+1))]`
-/

namespace A299122.P8992906411767732102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299122.P8992906411767732102

/-! ## A299122.P17207152729217600976

`record[A003982(n)*A299128(n+1)]`
-/

namespace A299122.P17207152729217600976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299122.P17207152729217600976

/-!
# A299123: Number of n X 3 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299123, there is no canonical definition to state claims against.
-/

/-! ## A299123.P2776310416134390740

`A299128(∑[n+2]+4)`
-/

namespace A299123.P2776310416134390740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299123.P2776310416134390740

/-! ## A299123.P806936648743188387

`and(-1, A299128(A167614(n+1)))`
-/

namespace A299123.P806936648743188387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299128 (A167614 (n + 1)).toNat)

end

end A299123.P806936648743188387

/-! ## A299123.P4867700196191433449

`A299128(A055998(n)+6)+char[20]`
-/

namespace A299123.P4867700196191433449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299123.P4867700196191433449

/-! ## A299123.P17334042523550934036

`A299128(A167614(n+1))+A025439(n)`
-/

namespace A299123.P17334042523550934036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A167614 (n + 1)).toNat + A025439 n

end

end A299123.P17334042523550934036

/-! ## A299123.P8574778308344975547

`A299128(A167614(n+1))+A025444(n)`
-/

namespace A299123.P8574778308344975547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A167614 (n + 1)).toNat + A025444 n

end

end A299123.P8574778308344975547

/-!
# A299124: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299124, there is no canonical definition to state claims against.
-/

/-! ## A299124.P14620286996150281324

`A299128(∑[n+3]+7)`
-/

namespace A299124.P14620286996150281324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299124.P14620286996150281324

/-! ## A299124.P17733495057281058470

`A299128(A000217(n+3)+4)+char[26]`
-/

namespace A299124.P17733495057281058470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299124.P17733495057281058470

/-! ## A299124.P16598947852916624690

`or(A000007(n), A299128(C(n+5, 2)-n))`
-/

namespace A299124.P16598947852916624690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A299128 (Nat.choose (n + 5) 2 - n))

end

end A299124.P16598947852916624690

/-! ## A299124.P7971777178243145106

`or(A025465(n), A299128(C(n+5, 2)-n))`
-/

namespace A299124.P7971777178243145106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025465 n) (A299128 (Nat.choose (n + 5) 2 - n))

end

end A299124.P7971777178243145106

/-! ## A299124.P16120487239293958211

`A007318(C(2, n))*A299128(A000217(n+3)+4)`
-/

namespace A299124.P16120487239293958211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A299128 (A000217 (n + 3) + 4).toNat

end

end A299124.P16120487239293958211

/-!
# A299125: Number of n X 5 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299125, there is no canonical definition to state claims against.
-/

/-! ## A299125.P17922707209264073780

`A299128(∑[n+4]+11)`
-/

namespace A299125.P17922707209264073780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299125.P17922707209264073780

/-! ## A299125.P8128489837174301599

`A299128(A056000(n)+15)+char[16]`
-/

namespace A299125.P8128489837174301599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299125.P8128489837174301599

/-! ## A299125.P2664576321170867926

`A299128(A000124(n+4)+4)+char[20]`
-/

namespace A299125.P2664576321170867926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A000124 (n + 4) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299125.P2664576321170867926

/-! ## A299125.P16251793038934404819

`A320647(n+1)+A299128(A374005(n+1))`
-/

namespace A299125.P16251793038934404819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (n + 1) + A299128 (A374005 (n + 1)).toNat

end

end A299125.P16251793038934404819

/-! ## A299125.P5296697020054671764

`or(A299128(A374005(n+1)), A336551(n+1))`
-/

namespace A299125.P5296697020054671764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A299128 (A374005 (n + 1)).toNat) (A336551 (n + 1))

end

end A299125.P5296697020054671764

/-!
# A299126: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299126, there is no canonical definition to state claims against.
-/

/-! ## A299126.P6444379696973651012

`A299128(A374007(n+1))`
-/

namespace A299126.P6444379696973651012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A374007 (n + 1)).toNat

end

end A299126.P6444379696973651012

/-! ## A299126.P11112470232194482798

`A299128(A166136(n+4))`
-/

namespace A299126.P11112470232194482798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A166136 (n + 4)).toNat

end

end A299126.P11112470232194482798

/-! ## A299126.P6772026456500273072

`A299128(A056115(n)+21)`
-/

namespace A299126.P6772026456500273072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A056115 n + 21).toNat

end

end A299126.P6772026456500273072

/-! ## A299126.P17260464090483464152

`A299128(A167499(n+4)+1)`
-/

namespace A299126.P17260464090483464152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A167499 (n + 4) + 1).toNat

end

end A299126.P17260464090483464152

/-! ## A299126.P12428648341297873797

`A299128(A167614(n+4)+3)`
-/

namespace A299126.P12428648341297873797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A167614 (n + 4) + 3).toNat

end

end A299126.P12428648341297873797

/-!
# A299127: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299127, there is no canonical definition to state claims against.
-/

/-! ## A299127.P14415505723328123235

`A299128(A374008(n+1))`
-/

namespace A299127.P14415505723328123235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A374008 (n + 1)).toNat

end

end A299127.P14415505723328123235

/-! ## A299127.P18378343976077446714

`A299128(A056119(n)+28)`
-/

namespace A299127.P18378343976077446714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A056119 n + 28).toNat

end

end A299127.P18378343976077446714

/-! ## A299127.P18432386247004447079

`A299128(eq[11, A066657(n)])`
-/

namespace A299127.P18432386247004447079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299127.P18432386247004447079

/-! ## A299127.P9790362766259445510

`A299128(A166136(n+5)+1)`
-/

namespace A299127.P9790362766259445510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A166136 (n + 5) + 1).toNat

end

end A299127.P9790362766259445510

/-! ## A299127.P14119761577240163311

`A299128(A167499(n+5)+2)`
-/

namespace A299127.P14119761577240163311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (A167499 (n + 5) + 2).toNat

end

end A299127.P14119761577240163311

/-!
# A299128: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299128, there is no canonical definition to state claims against.
-/

/-! ## A299128.P14923971371759814214

`A298154(n+1)+A069283(A282230(n+1))`
-/

namespace A299128.P14923971371759814214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (n + 1) + A069283 (A282230 (n + 1)).toNat

end

end A299128.P14923971371759814214

/-! ## A299128.P7777884459588504515

`A273712(n)!!*A298230(n+1)-char[12]`
-/

namespace A299128.P7777884459588504515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.factorial (A273712 n).toNat) : ℤ) * A298230 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299128.P7777884459588504515

/-! ## A299128.P15275195140723142837

`A299905(n)!!*A298230(n+1)-char[12]`
-/

namespace A299128.P15275195140723142837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.factorial (A299905 n).toNat) : ℤ) * A298230 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299128.P15275195140723142837

/-! ## A299128.P16748632149370139135

`A299886(n+1)+A016389(A022166(n))`
-/

namespace A299128.P16748632149370139135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299886 (n + 1) + A016389 (A022166 n).toNat

end

end A299128.P16748632149370139135

/-! ## A299128.P4318514209421994222

`A299886(n+1)-A016389(A086645(n))`
-/

namespace A299128.P4318514209421994222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299886 (n + 1) - A016389 (A086645 n).toNat

end

end A299128.P4318514209421994222

/-!
# A299129: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299129, there is no canonical definition to state claims against.
-/

/-! ## A299129.P11841110080619757484

`A299135(∑[4*n]+1)`
-/

namespace A299129.P11841110080619757484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299129.P11841110080619757484

/-! ## A299129.P4652935853496188819

`record[A299135(A152271(n²))]`
-/

namespace A299129.P4652935853496188819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299129.P4652935853496188819

/-! ## A299129.P13832437695059205681

`record[A003982(n)*A299135(n+1)]`
-/

namespace A299129.P13832437695059205681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299129.P13832437695059205681

/-! ## A299129.P11412957067562501362

`record[gcd(A114327(n), A299135(n+1))]`
-/

namespace A299129.P11412957067562501362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A299135 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299129.P11412957067562501362

/-! ## A299129.P7732364878381551142

`record[root(A299135(n+1), A204018(n+1))]`
-/

namespace A299129.P7732364878381551142
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A299135 (n + 1) : ℝ) ^ (1 / (A204018 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299129.P7732364878381551142

/-!
# A299130: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299130, there is no canonical definition to state claims against.
-/

/-! ## A299130.P1181723488881181707

`A299135(∑[n+2]+4)`
-/

namespace A299130.P1181723488881181707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299130.P1181723488881181707

/-! ## A299130.P1554314044260766170

`A299135(A167614(n+1))%A332145(n)`
-/

namespace A299130.P1554314044260766170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299135 (A167614 (n + 1)).toNat) (A332145 n)

end

end A299130.P1554314044260766170

/-! ## A299130.P10573778854803787429

`gcd(A000038(n), A299135(A167614(n+1)))`
-/

namespace A299130.P10573778854803787429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A299135 (A167614 (n + 1)).toNat)

end

end A299130.P10573778854803787429

/-! ## A299130.P4068630999505878009

`or(A000007(n), A299135(A167614(n+1)))`
-/

namespace A299130.P4068630999505878009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A299135 (A167614 (n + 1)).toNat)

end

end A299130.P4068630999505878009

/-! ## A299130.P14730046733912333786

`or(A102683(n), A299135(A167614(n+1)))`
-/

namespace A299130.P14730046733912333786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 n) (A299135 (A167614 (n + 1)).toNat)

end

end A299130.P14730046733912333786

/-!
# A299131: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299131, there is no canonical definition to state claims against.
-/

/-! ## A299131.P2004901256161656559

`A299135(A374004(n+1))`
-/

namespace A299131.P2004901256161656559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A374004 (n + 1)).toNat

end

end A299131.P2004901256161656559

/-! ## A299131.P10908488379858005401

`A299135(A145018(n+4))`
-/

namespace A299131.P10908488379858005401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A145018 (n + 4)).toNat

end

end A299131.P10908488379858005401

/-! ## A299131.P16285039992478372780

`A299135(A052905(n)+9)`
-/

namespace A299131.P16285039992478372780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A052905 n + 9).toNat

end

end A299131.P16285039992478372780

/-! ## A299131.P10598166988546565617

`A299135(A055999(n)+10)`
-/

namespace A299131.P10598166988546565617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A055999 n + 10).toNat

end

end A299131.P10598166988546565617

/-! ## A299131.P12986785515563147471

`A299135(A167614(n+2)+1)`
-/

namespace A299131.P12986785515563147471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A167614 (n + 2) + 1).toNat

end

end A299131.P12986785515563147471

/-!
# A299132: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299132, there is no canonical definition to state claims against.
-/

/-! ## A299132.P16520944695095107548

`A299135(A374005(n+1))`
-/

namespace A299132.P16520944695095107548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A374005 (n + 1)).toNat

end

end A299132.P16520944695095107548

/-! ## A299132.P4958919472830899593

`A299135(A167499(n+3))`
-/

namespace A299132.P4958919472830899593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A167499 (n + 3)).toNat

end

end A299132.P4958919472830899593

/-! ## A299132.P565380745238760793

`A299135(A155212(n)+13)`
-/

namespace A299132.P565380745238760793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A155212 n + 13).toNat

end

end A299132.P565380745238760793

/-! ## A299132.P13953189627480796468

`A299135(A056000(n)+15)`
-/

namespace A299132.P13953189627480796468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A056000 n + 15).toNat

end

end A299132.P13953189627480796468

/-! ## A299132.P15954091068366303845

`A299135(A046691(n+2)+9)`
-/

namespace A299132.P15954091068366303845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A046691 (n + 2) + 9).toNat

end

end A299132.P15954091068366303845

/-!
# A299133: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299133, there is no canonical definition to state claims against.
-/

/-! ## A299133.P12921403998379068855

`A299135(A374007(n+1))`
-/

namespace A299133.P12921403998379068855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A374007 (n + 1)).toNat

end

end A299133.P12921403998379068855

/-! ## A299133.P4854859918664885867

`A299135(A056115(n)+21)`
-/

namespace A299133.P4854859918664885867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A056115 n + 21).toNat

end

end A299133.P4854859918664885867

/-! ## A299133.P9898844340860433618

`A299135(A046691(n+3)+10)`
-/

namespace A299133.P9898844340860433618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A046691 (n + 3) + 10).toNat

end

end A299133.P9898844340860433618

/-! ## A299133.P1387892707767435505

`A299135(A246172(n+1)+20)`
-/

namespace A299133.P1387892707767435505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A246172 (n + 1) + 20).toNat

end

end A299133.P1387892707767435505

/-! ## A299133.P17115453469920084295

`A299135(eq[7, A131818(n+1)])`
-/

namespace A299133.P17115453469920084295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299133.P17115453469920084295

/-!
# A299134: Number of n X 7 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299134, there is no canonical definition to state claims against.
-/

/-! ## A299134.P11379861300391663523

`A299135(A374008(n+1))`
-/

namespace A299134.P11379861300391663523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A374008 (n + 1)).toNat

end

end A299134.P11379861300391663523

/-! ## A299134.P7208742006497318793

`A299135(A056119(n)+28)`
-/

namespace A299134.P7208742006497318793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A056119 n + 28).toNat

end

end A299134.P7208742006497318793

/-! ## A299134.P4344550193236087060

`A299135(A000217(n+6)+7)`
-/

namespace A299134.P4344550193236087060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (A000217 (n + 6) + 7).toNat

end

end A299134.P4344550193236087060

/-! ## A299134.P3607253879202319479

`A299135(eq[8, A131818(n+1)])`
-/

namespace A299134.P3607253879202319479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299134.P3607253879202319479

/-! ## A299134.P851188193215279376

`A299135(eq[4, A219347(n)])`
-/

namespace A299134.P851188193215279376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299134.P851188193215279376

/-!
# A299135: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299135, there is no canonical definition to state claims against.
-/

/-! ## A299135.P12140768602221063339

`A299893(n+1)+A016389(A022166(n))`
-/

namespace A299135.P12140768602221063339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299893 (n + 1) + A016389 (A022166 n).toNat

end

end A299135.P12140768602221063339

/-! ## A299135.P7427834613991695590

`A299893(n+1)+A016389(A176561(n))`
-/

namespace A299135.P7427834613991695590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299893 (n + 1) + A016389 (A176561 n).toNat

end

end A299135.P7427834613991695590

/-! ## A299135.P3805624643490371050

`A299893(n+1)-A014707(A022171(n))`
-/

namespace A299135.P3805624643490371050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299893 (n + 1) - A014707 (A022171 n).toNat

end

end A299135.P3805624643490371050

/-! ## A299135.P2176354918208820026

`A299893(n+1)-A025465(A022345(n))`
-/

namespace A299135.P2176354918208820026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299893 (n + 1) - A025465 (A022345 n).toNat

end

end A299135.P2176354918208820026

/-! ## A299135.P9769926166558868606

`A299893(n+1)-A007814(A157151(n))`
-/

namespace A299135.P9769926166558868606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299893 (n + 1) - A007814 (A157151 n).toNat

end

end A299135.P9769926166558868606

/-!
# A299136: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299136, there is no canonical definition to state claims against.
-/

/-! ## A299136.P2812497946121312551

`A299142(∑[4*n]+1)`
-/

namespace A299136.P2812497946121312551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299136.P2812497946121312551

/-! ## A299136.P1385885394054467556

`record[A003982(n)*A299142(n+1)]`
-/

namespace A299136.P1385885394054467556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299136.P1385885394054467556

/-! ## A299136.P5038597644985663101

`record[A203994(n+1)*A299142(n+1)]`
-/

namespace A299136.P5038597644985663101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A299142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299136.P5038597644985663101

/-! ## A299136.P15457700286089175428

`A178334(n)*A299142(A001844(n))`
-/

namespace A299136.P15457700286089175428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A299142 (A001844 n).toNat

end

end A299136.P15457700286089175428

/-! ## A299136.P7778574279765080790

`A250261(n)*A299142(A001844(n))`
-/

namespace A299136.P7778574279765080790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 n * A299142 (A001844 n).toNat

end

end A299136.P7778574279765080790

/-!
# A299137: Number of n X 3 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299137, there is no canonical definition to state claims against.
-/

/-! ## A299137.P17677169360090909180

`A299142(∑[n+2]+4)`
-/

namespace A299137.P17677169360090909180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299137.P17677169360090909180

/-! ## A299137.P13706161868057425290

`A299142(A167614(n+1))^A178334(n)`
-/

namespace A299137.P13706161868057425290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299142 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A299137.P13706161868057425290

/-! ## A299137.P16112716060870509524

`gcd(A000038(n), A299142(A167614(n+1)))`
-/

namespace A299137.P16112716060870509524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A299142 (A167614 (n + 1)).toNat)

end

end A299137.P16112716060870509524

/-! ## A299137.P9059625936778997111

`or(A000007(n), A299142(A167614(n+1)))`
-/

namespace A299137.P9059625936778997111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A299142 (A167614 (n + 1)).toNat)

end

end A299137.P9059625936778997111

/-! ## A299137.P14284331855635151078

`or(A025460(n), A299142(A167614(n+1)))`
-/

namespace A299137.P14284331855635151078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025460 n) (A299142 (A167614 (n + 1)).toNat)

end

end A299137.P14284331855635151078

/-!
# A299138: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299138, there is no canonical definition to state claims against.
-/

/-! ## A299138.P11205516628394912765

`A299142(A374004(n+1))`
-/

namespace A299138.P11205516628394912765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (A374004 (n + 1)).toNat

end

end A299138.P11205516628394912765

/-! ## A299138.P9191595721657779487

`A299142(A141214(n)+7)`
-/

namespace A299138.P9191595721657779487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (A141214 n + 7).toNat

end

end A299138.P9191595721657779487

/-! ## A299138.P10315806077585756823

`A299142(A052905(n)+9)`
-/

namespace A299138.P10315806077585756823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (A052905 n + 9).toNat

end

end A299138.P10315806077585756823

/-! ## A299138.P16106962163298089589

`A299142(A055999(n)+10)`
-/

namespace A299138.P16106962163298089589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (A055999 n + 10).toNat

end

end A299138.P16106962163298089589

/-! ## A299138.P16182045974207038945

`A299142(A167614(n+2)+1)`
-/

namespace A299138.P16182045974207038945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (A167614 (n + 2) + 1).toNat

end

end A299138.P16182045974207038945

/-!
# A299139: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299139, there is no canonical definition to state claims against.
-/

/-! ## A299139.P17206762694152596213

`A299142(A374005(n+1))`
-/

namespace A299139.P17206762694152596213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (A374005 (n + 1)).toNat

end

end A299139.P17206762694152596213

/-! ## A299139.P4443281935074617331

`A299142(A167499(n+3))`
-/

namespace A299139.P4443281935074617331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (A167499 (n + 3)).toNat

end

end A299139.P4443281935074617331

/-! ## A299139.P9361304244674825545

`A299142(A155212(n)+13)`
-/

namespace A299139.P9361304244674825545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (A155212 n + 13).toNat

end

end A299139.P9361304244674825545

/-! ## A299139.P11653562625768086740

`A299142(eq[6, A131818(n+1)])`
-/

namespace A299139.P11653562625768086740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299139.P11653562625768086740

/-! ## A299139.P2536945416785458904

`A299142(Δ[A264443(n)])`
-/

namespace A299139.P2536945416785458904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (f1 (n + 1) - f1 n).toNat

end

end A299139.P2536945416785458904

/-!
# A299140: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299140, there is no canonical definition to state claims against.
-/

/-! ## A299140.P3683752295312590977

`A299142(A374007(n+1))`
-/

namespace A299140.P3683752295312590977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (A374007 (n + 1)).toNat

end

end A299140.P3683752295312590977

/-! ## A299140.P13080396211294828417

`A299142(eq[7, A131818(n+1)])`
-/

namespace A299140.P13080396211294828417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299140.P13080396211294828417

/-! ## A299140.P6857862818820499393

`A299142(A052905(n+3))`
-/

namespace A299140.P6857862818820499393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (A052905 (n + 3)).toNat

end

end A299140.P6857862818820499393

/-! ## A299140.P18189348303827980811

`A299142(eq[3, A219347(n)])`
-/

namespace A299140.P18189348303827980811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299140.P18189348303827980811

/-! ## A299140.P812074305765281513

`A299142(eq[5, A193592(n)])`
-/

namespace A299140.P812074305765281513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299140.P812074305765281513

/-!
# A299141: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299141, there is no canonical definition to state claims against.
-/

/-! ## A299141.P7140038797086106478

`A299142(A374008(n+1))`
-/

namespace A299141.P7140038797086106478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (A374008 (n + 1)).toNat

end

end A299141.P7140038797086106478

/-! ## A299141.P7025497693693180283

`A299142(eq[11, A066657(n)])`
-/

namespace A299141.P7025497693693180283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299141.P7025497693693180283

/-! ## A299141.P11034216897996607940

`A299142(eq[8, A131818(n+1)])`
-/

namespace A299141.P11034216897996607940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299141.P11034216897996607940

/-! ## A299141.P7545194418247948352

`A299142(eq[4, A219347(n)])`
-/

namespace A299141.P7545194418247948352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299141.P7545194418247948352

/-! ## A299141.P2864405647409516912

`A299142(eq[6, A193592(n)])`
-/

namespace A299141.P2864405647409516912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299141.P2864405647409516912

/-!
# A299142: T(n,k) = Number of n X k 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299142, there is no canonical definition to state claims against.
-/

/-! ## A299142.P16585035050312688566

`A298280(n+1)+A256974(A001263(n+1))`
-/

namespace A299142.P16585035050312688566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (n + 1) + A256974 (A001263 (n + 1)).toNat

end

end A299142.P16585035050312688566

/-! ## A299142.P11873414484329635609

`A299937(n+1)-A342770(A001263(n+1))`
-/

namespace A299142.P11873414484329635609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (n + 1) - A342770 (A001263 (n + 1)).toNat

end

end A299142.P11873414484329635609

/-! ## A299142.P16888665633136630361

`A299937(n+1)-A069283(A301443(n+1))`
-/

namespace A299142.P16888665633136630361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (n + 1) - A069283 (A301443 (n + 1)).toNat

end

end A299142.P16888665633136630361

/-!
# A299143: a(n) is the least k > n such that gcd(k,n) > 1 and gcd(k+1,n+1) > 1.

The programs for A299143, there is no canonical definition to state claims against.
-/

/-! ## A299143.P12226475980401908958

`n+2+2*A172170(n+3)`
-/

namespace A299143.P12226475980401908958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + 2 * A172170 (n + 3)

end

end A299143.P12226475980401908958

/-! ## A299143.P12491732315215113863

`2*A020639(or(1, n+2))+n+2`
-/

namespace A299143.P12491732315215113863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (Nat.lor 1 (n + 2)) + (n + 2 : ℤ)

end

end A299143.P12491732315215113863

/-! ## A299143.P6407065165030971491

`2*(A020639(A109613(n+2))+1)+n`
-/

namespace A299143.P6407065165030971491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020639 (A109613 (n + 2)).toNat + 1) + (n : ℤ)

end

end A299143.P6407065165030971491

/-! ## A299143.P13110986955847964501

`A020639(n+2)*A020639(n+3)+n+2`
-/

namespace A299143.P13110986955847964501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) * A020639 (n + 3) + (n + 2 : ℤ)

end

end A299143.P13110986955847964501

/-! ## A299143.P11201408291357118326

`A005408(A020639(A014601(n+1)-n))+n+1`
-/

namespace A299143.P11201408291357118326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A020639 (A014601 (n + 1) - (n : ℤ)).toNat).toNat + (n + 1 : ℤ)

end

end A299143.P11201408291357118326

/-! ## A299143.P5814706652234934574

`A061228(A172170(n+3))+n+2`
-/

namespace A299143.P5814706652234934574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (A172170 (n + 3)).toNat + (n + 2 : ℤ)

end

end A299143.P5814706652234934574

/-! ## A299143.P1434469880845226333

`A061228(A061228(A172170(n+3)))+n`
-/

namespace A299143.P1434469880845226333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (A061228 (A172170 (n + 3)).toNat).toNat + (n : ℤ)

end

end A299143.P1434469880845226333

/-!
# A299145: Primes of the form j^k + (j-1)^k + ... + 2^k, for j > 1 and k > 0.

The programs for A299145, there is no canonical definition to state claims against.
-/

/-! ## A299145.P2285787430107236965

`p?[A081175(n+1)-1]`
-/

namespace A299145.P2285787430107236965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081175 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299145.P2285787430107236965

/-! ## A299145.P2869367353354282872

`∩[A000040(n+1), A081175(n+1)-1]`
-/

namespace A299145.P2869367353354282872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081175 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299145.P2869367353354282872

/-! ## A299145.P2628008935480619313

`p?[A014681(A081175(n+1))]`
-/

namespace A299145.P2628008935480619313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A081175 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299145.P2628008935480619313

/-!
# A299146: Modified Pascal's triangle read by rows: T(n,k) = C(n+1,k) - n, 1 <= k <= n.

The programs for A299146, the canonical program `A299146.P13308450374639411893` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299146 has offset 1).

The definition of A299146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299146.P8447543349845566605

`A014430(n)-∑[char[∑[n+1]]]`
-/

namespace A299146.P8447543349845566605
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A299146.P8447543349845566605

namespace A299146

/-- `A014430(n)-∑[char[∑[n+1]]]` -/
def P8447543349845566605.Spec : Prop :=
  ∀ n, P8447543349845566605.a n = A299146 (n + 1)

end A299146

/-! ## A299146.P11175529124515625634

`A014410(n+2)-∑[char[∑[n]]]`
-/

namespace A299146.P11175529124515625634
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A299146.P11175529124515625634

namespace A299146

/-- `A014410(n+2)-∑[char[∑[n]]]` -/
def P11175529124515625634.Spec : Prop :=
  ∀ n, P11175529124515625634.a n = A299146 (n + 1)

end A299146

/-! ## A299146.P7735406944425569284

`sqrt(A014719(n+2))-A002024(n+1)`
-/

namespace A299146.P7735406944425569284
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014719 (n + 2) : ℝ) - (A002024 (n + 1) : ℝ)

end

end A299146.P7735406944425569284

namespace A299146

/-- `sqrt(A014719(n+2))-A002024(n+1)` -/
def P7735406944425569284.Spec : Prop :=
  ∀ n, P7735406944425569284.a n = (A299146 (n + 1) : ℝ)

end A299146

/-! ## A299146.P10527655313860510306

`A014410(n+2)-A007401(n+1)+n`
-/

namespace A299146.P10527655313860510306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) - A007401 (n + 1) + (n : ℤ)

end

end A299146.P10527655313860510306

namespace A299146

/-- `A014410(n+2)-A007401(n+1)+n` -/
def P10527655313860510306.Spec : Prop :=
  ∀ n, P10527655313860510306.a n = A299146 (n + 1)

end A299146

/-! ## A299146.P11975163594966623108

`sqrt(A014719(n+2))-A007401(n+1)+n`
-/

namespace A299146.P11975163594966623108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014719 (n + 2) : ℝ) - (A007401 (n + 1) : ℝ) + (n : ℝ)

end

end A299146.P11975163594966623108

namespace A299146

/-- `sqrt(A014719(n+2))-A007401(n+1)+n` -/
def P11975163594966623108.Spec : Prop :=
  ∀ n, P11975163594966623108.a n = (A299146 (n + 1) : ℝ)

end A299146

/-! ## A299146.P12035071825769203886

`A006463(n)+A014430(n)-A006463(n+1)`
-/

namespace A299146.P12035071825769203886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n + (A014430 n - A006463 (n + 1))

end

end A299146.P12035071825769203886

namespace A299146

/-- `A006463(n)+A014430(n)-A006463(n+1)` -/
def P12035071825769203886.Spec : Prop :=
  ∀ n, P12035071825769203886.a n = A299146 (n + 1)

end A299146

/-! ## A299146.P15566691872620080932

`A007318(n)+A051597(n)-A002024(n+1)`
-/

namespace A299146.P15566691872620080932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A051597 n - A002024 (n + 1))

end

end A299146.P15566691872620080932

namespace A299146

/-- `A007318(n)+A051597(n)-A002024(n+1)` -/
def P15566691872620080932.Spec : Prop :=
  ∀ n, P15566691872620080932.a n = A299146 (n + 1)

end A299146

/-! ## A299146.P8801612582232821136

`A077028(n)+A014430(n)-A003991(n+1)`
-/

namespace A299146.P8801612582232821136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + (A014430 n - A003991 (n + 1))

end

end A299146.P8801612582232821136

namespace A299146

/-- `A077028(n)+A014430(n)-A003991(n+1)` -/
def P8801612582232821136.Spec : Prop :=
  ∀ n, P8801612582232821136.a n = A299146 (n + 1)

end A299146

/-! ## A299146.P13308450374639411893

`A074909(A014132(n+1))-A007401(n+1)+n`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A299146

/-- `A074909(A014132(n+1))-A007401(n+1)+n` -/
def P13308450374639411893.Spec : Prop :=
  ∀ n, P13308450374639411893.a n = A299146 (n + 1)

theorem P13308450374639411893.correct : P13308450374639411893.Spec := by
  intro n
  simp only [A299146, Nat.add_sub_cancel]

end A299146

/-! ## A299146.P9284302439605155979

`A074909(n+1)+A074909(n)-A002024(n+1)`
-/

namespace A299146.P9284302439605155979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + (A074909 n - A002024 (n + 1))

end

end A299146.P9284302439605155979

namespace A299146

/-- `A074909(n+1)+A074909(n)-A002024(n+1)` -/
def P9284302439605155979.Spec : Prop :=
  ∀ n, P9284302439605155979.a n = A299146 (n + 1)

end A299146

/-! ## A299146.P11724961141692478343

`A051597(n)+A134059(abs(1-2*n)+1-n)/3-A002024(n+1)`
-/

namespace A299146.P11724961141692478343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051597 n : ℚ) + (A134059 (|1 - (2 * n : ℤ)| + 1 - (n : ℤ)).toNat : ℚ) / 3 - (A002024 (n + 1) : ℚ)

end

end A299146.P11724961141692478343

namespace A299146

/-- `A051597(n)+A134059(abs(1-2*n)+1-n)/3-A002024(n+1)` -/
def P11724961141692478343.Spec : Prop :=
  ∀ n, P11724961141692478343.a n = (A299146 (n + 1) : ℚ)

end A299146

/-! ## A299146.P13668426926089688060

`A007318(lt[1, A007318(n)])-A002024(n+1)`
-/

namespace A299146.P13668426926089688060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A002024 (n + 1)

end

end A299146.P13668426926089688060

namespace A299146

/-- `A007318(lt[1, A007318(n)])-A002024(n+1)` -/
def P13668426926089688060.Spec : Prop :=
  ∀ n, P13668426926089688060.a n = A299146 (n + 1)

end A299146

/-! ## A299146.P14775986560237482214

`A135278(A002024(n+1)+n)-A002024(n+1)`
-/

namespace A299146.P14775986560237482214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A002024 (n + 1) + (n : ℤ)).toNat - A002024 (n + 1)

end

end A299146.P14775986560237482214

namespace A299146

/-- `A135278(A002024(n+1)+n)-A002024(n+1)` -/
def P14775986560237482214.Spec : Prop :=
  ∀ n, P14775986560237482214.a n = A299146 (n + 1)

end A299146

/-! ## A299146.P7748753669300275173

`A014473(lt[0, A014473(n)])-A003056(n)`
-/

namespace A299146.P7748753669300275173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A003056 n

end

end A299146.P7748753669300275173

namespace A299146

/-- `A014473(lt[0, A014473(n)])-A003056(n)` -/
def P7748753669300275173.Spec : Prop :=
  ∀ n, P7748753669300275173.a n = A299146 (n + 1)

end A299146

/-! ## A299146.P13206030800792584374

`sqrt(A014719(n+2))-A000194(2*(n+1))`
-/

namespace A299146.P13206030800792584374
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014719 (n + 2) : ℝ) - (A000194 (2 * (n + 1)) : ℝ)

end

end A299146.P13206030800792584374

namespace A299146

/-- `sqrt(A014719(n+2))-A000194(2*(n+1))` -/
def P13206030800792584374.Spec : Prop :=
  ∀ n, P13206030800792584374.a n = (A299146 (n + 1) : ℝ)

end A299146

/-!
# A299147: Numbers k such that sigma(k), sigma(k^2) and sigma(k^3) are primes.

The programs for A299147, there is no canonical definition to state claims against.
-/

/-! ## A299147.P10987149858097456814

`∩[A232444(n+1), A299153(n+1)]`
-/

namespace A299147.P10987149858097456814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299147.P10987149858097456814

/-! ## A299147.P8292007657684254943

`∩[A232444(n+1), A279096(n+1)]`
-/

namespace A299147.P8292007657684254943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299147.P8292007657684254943

/-!
# A299148: a(n) is the smallest number k such that sigma(k) and sigma(k^n) are both primes.

The programs for A299148, there is no canonical definition to state claims against.
-/

/-! ## A299148.P706090095581063116

`A292369(A185317(n)^A029578(n))`
-/

namespace A299148.P706090095581063116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292369 (SequenceMachineLib.roundAway ((A185317 n : ℚ) ^ (A029578 n : ℤ))).toNat

end

end A299148.P706090095581063116

/-! ## A299148.P199766374704269627

`A292369(A185317(n)^A065565(n))`
-/

namespace A299148.P199766374704269627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292369 (SequenceMachineLib.roundAway ((A185317 n : ℚ) ^ (A065565 n : ℤ))).toNat

end

end A299148.P199766374704269627

/-! ## A299148.P11573612500398792809

`gcd(A136166(n+1), A292369(A236912(n)))`
-/

namespace A299148.P11573612500398792809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A136166 (n + 1)) (A292369 (A236912 n).toNat)

end

end A299148.P11573612500398792809

/-!
# A299149: Numerators of the positive solution to n = Sum_{d|n} a(d) * a(n/d).

The programs for A299149, the canonical program `A299149.P8105708395331444992` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299149 has offset 1).

The definition of A299149 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A317848, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A299149.P8105708395331444992

`A000265((n+1)*A317848(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A299149

/-- `A000265((n+1)*A317848(n+1))` -/
def P8105708395331444992.Spec : Prop :=
  ∀ n, P8105708395331444992.a n = A299149 (n + 1)

theorem P8105708395331444992.correct : P8105708395331444992.Spec := by
  intro n
  simp only [A299149, Nat.add_sub_cancel]

end A299149

/-! ## A299149.P10339575817785131689

`A318681(n+1)/(n+1)`
-/

namespace A299149.P10339575817785131689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318681 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A299149.P10339575817785131689

namespace A299149

/-- `A318681(n+1)/(n+1)` -/
def P10339575817785131689.Spec : Prop :=
  ∀ n, P10339575817785131689.a n = (A299149 (n + 1) : ℚ)

end A299149

/-! ## A299149.P18071403976921840452

`(n+1)/2^val(n+1, 2)*A046643(n+1)`
-/

namespace A299149.P18071403976921840452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A046643 (n + 1) : ℚ)

end

end A299149.P18071403976921840452

namespace A299149

/-- `(n+1)/2^val(n+1, 2)*A046643(n+1)` -/
def P18071403976921840452.Spec : Prop :=
  ∀ n, P18071403976921840452.a n = (A299149 (n + 1) : ℚ)

end A299149

/-! ## A299149.P4869247584599750311

`A000265(n+1)*A046643(n+1)`
-/

namespace A299149.P4869247584599750311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A046643 (n + 1)

end

end A299149.P4869247584599750311

namespace A299149

/-- `A000265(n+1)*A046643(n+1)` -/
def P4869247584599750311.Spec : Prop :=
  ∀ n, P4869247584599750311.a n = A299149 (n + 1)

end A299149

/-! ## A299149.P8694104428652506183

`(A153733(n)+1)*A046643(n+1)`
-/

namespace A299149.P8694104428652506183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153733 n + 1) * A046643 (n + 1)

end

end A299149.P8694104428652506183

namespace A299149

/-- `(A153733(n)+1)*A046643(n+1)` -/
def P8694104428652506183.Spec : Prop :=
  ∀ n, P8694104428652506183.a n = A299149 (n + 1)

end A299149

/-! ## A299149.P13711120400628081044

`(2*A025480(n)+1)*A046643(n+1)`
-/

namespace A299149.P13711120400628081044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A025480 n + 1) * A046643 (n + 1)

end

end A299149.P13711120400628081044

namespace A299149

/-- `(2*A025480(n)+1)*A046643(n+1)` -/
def P13711120400628081044.Spec : Prop :=
  ∀ n, P13711120400628081044.a n = A299149 (n + 1)

end A299149

/-! ## A299149.P8237968339352288708

`lcm(A006519(n+1), A318649(n+1))/(n+1)`
-/

namespace A299149.P8237968339352288708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A006519 (n + 1)) (A318649 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A299149.P8237968339352288708

namespace A299149

/-- `lcm(A006519(n+1), A318649(n+1))/(n+1)` -/
def P8237968339352288708.Spec : Prop :=
  ∀ n, P8237968339352288708.a n = (A299149 (n + 1) : ℚ)

end A299149

/-! ## A299149.P7330574614123559706

`A003961(A064989(n+1))*A046643(n+1)`
-/

namespace A299149.P7330574614123559706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (n + 1)).toNat * A046643 (n + 1)

end

end A299149.P7330574614123559706

namespace A299149

/-- `A003961(A064989(n+1))*A046643(n+1)` -/
def P7330574614123559706.Spec : Prop :=
  ∀ n, P7330574614123559706.a n = A299149 (n + 1)

end A299149

/-! ## A299149.P11140700263811923004

`A000265(n+1)/A003961(n+1)*A318321(n+1)`
-/

namespace A299149.P11140700263811923004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) * (A318321 (n + 1) : ℚ)

end

end A299149.P11140700263811923004

namespace A299149

/-- `A000265(n+1)/A003961(n+1)*A318321(n+1)` -/
def P11140700263811923004.Spec : Prop :=
  ∀ n, P11140700263811923004.a n = (A299149 (n + 1) : ℚ)

end A299149

/-! ## A299149.P13756298327924051519

`A318649(n+1)/A318511(n+1)*A318653(n+1)`
-/

namespace A299149.P13756298327924051519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318649 (n + 1) : ℚ) / (A318511 (n + 1) : ℚ) * (A318653 (n + 1) : ℚ)

end

end A299149.P13756298327924051519

namespace A299149

/-- `A318649(n+1)/A318511(n+1)*A318653(n+1)` -/
def P13756298327924051519.Spec : Prop :=
  ∀ n, P13756298327924051519.a n = (A299149 (n + 1) : ℚ)

end A299149

/-! ## A299149.P16125459468413968512

`A000265(n+1)/A000265(A064989(n+1))*A318319(n+1)`
-/

namespace A299149.P16125459468413968512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A000265 (A064989 (n + 1)).toNat : ℚ) * (A318319 (n + 1) : ℚ)

end

end A299149.P16125459468413968512

namespace A299149

/-- `A000265(n+1)/A000265(A064989(n+1))*A318319(n+1)` -/
def P16125459468413968512.Spec : Prop :=
  ∀ n, P16125459468413968512.a n = (A299149 (n + 1) : ℚ)

end A299149

/-! ## A299149.P4503729508651387314

`A003961(A064989(n+1))/A003961(n+1)*A318321(n+1)`
-/

namespace A299149.P4503729508651387314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (A064989 (n + 1)).toNat : ℚ) / (A003961 (n + 1) : ℚ) * (A318321 (n + 1) : ℚ)

end

end A299149.P4503729508651387314

namespace A299149

/-- `A003961(A064989(n+1))/A003961(n+1)*A318321(n+1)` -/
def P4503729508651387314.Spec : Prop :=
  ∀ n, P4503729508651387314.a n = (A299149 (n + 1) : ℚ)

end A299149

/-! ## A299149.P3782869983533319008

`A028234(2*(n+1))*A046643(n+1)`
-/

namespace A299149.P3782869983533319008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * (n + 1)) * A046643 (n + 1)

end

end A299149.P3782869983533319008

namespace A299149

/-- `A028234(2*(n+1))*A046643(n+1)` -/
def P3782869983533319008.Spec : Prop :=
  ∀ n, P3782869983533319008.a n = A299149 (n + 1)

end A299149

/-! ## A299149.P16980192280882877632

`A317929(A235199(n+1))`
-/

namespace A299149.P16980192280882877632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317929 (A235199 (n + 1)).toNat

end

end A299149.P16980192280882877632

namespace A299149

/-- `A317929(A235199(n+1))` -/
def P16980192280882877632.Spec : Prop :=
  ∀ n, P16980192280882877632.a n = A299149 (n + 1)

end A299149

/-! ## A299149.P4327291706610625949

`A000265(n+1)*A318449(A003961(n+1))`
-/

namespace A299149.P4327291706610625949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A318449 (A003961 (n + 1)).toNat

end

end A299149.P4327291706610625949

namespace A299149

/-- `A000265(n+1)*A318449(A003961(n+1))` -/
def P4327291706610625949.Spec : Prop :=
  ∀ n, P4327291706610625949.a n = A299149 (n + 1)

end A299149

/-! ## A299149.P1181368537025075437

`A318319(A003961(n+1))`
-/

namespace A299149.P1181368537025075437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318319 (A003961 (n + 1)).toNat

end

end A299149.P1181368537025075437

namespace A299149

/-- `A318319(A003961(n+1))` -/
def P1181368537025075437.Spec : Prop :=
  ∀ n, P1181368537025075437.a n = A299149 (n + 1)

end A299149

/-! ## A299149.P5600573298871329957

`A318319(A045965(n+1))`
-/

namespace A299149.P5600573298871329957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318319 (A045965 (n + 1)).toNat

end

end A299149.P5600573298871329957

namespace A299149

/-- `A318319(A045965(n+1))` -/
def P5600573298871329957.Spec : Prop :=
  ∀ n, P5600573298871329957.a n = A299149 (n + 1)

end A299149

/-!
# A299150: Denominators of the positive solution to n = Sum_{d|n} a(d) * a(n/d).

The programs for A299150, the canonical program `A299150.P3795475608102794918` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299150 has offset 1).

The definition of A299150 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A299150.P329030107386329380

`2^A318440(n+1)`
-/

namespace A299150.P329030107386329380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318440 (n + 1) : ℤ)

end

end A299150.P329030107386329380

namespace A299150

/-- `2^A318440(n+1)` -/
def P329030107386329380.Spec : Prop :=
  ∀ n, P329030107386329380.a n = (A299150 (n + 1) : ℚ)

end A299150

/-! ## A299150.P3795475608102794918

`A046644(n+1)/A006519(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A299150

/-- `A046644(n+1)/A006519(n+1)` -/
def P3795475608102794918.Spec : Prop :=
  ∀ n, P3795475608102794918.a n = (A299150 (n + 1) : ℚ)

end A299150

/-! ## A299150.P7266105349759091976

`A165825(n+1)/(A037445(n+1)*A006519(n+1))`
-/

namespace A299150.P7266105349759091976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165825 (n + 1) : ℚ) / (A037445 (n + 1) * A006519 (n + 1) : ℚ)

end

end A299150.P7266105349759091976

namespace A299150

/-- `A165825(n+1)/(A037445(n+1)*A006519(n+1))` -/
def P7266105349759091976.Spec : Prop :=
  ∀ n, P7266105349759091976.a n = (A299150 (n + 1) : ℚ)

end A299150

/-! ## A299150.P8525041217390702108

`2^(A046645(n+1)-val(n+1, 2))`
-/

namespace A299150.P8525041217390702108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A046645 (n + 1) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ)

end

end A299150.P8525041217390702108

namespace A299150

/-- `2^(A046645(n+1)-val(n+1, 2))` -/
def P8525041217390702108.Spec : Prop :=
  ∀ n, P8525041217390702108.a n = (A299150 (n + 1) : ℚ)

end A299150

/-! ## A299150.P577568561540158779

`A000079(A318440(n+1))`
-/

namespace A299150.P577568561540158779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318440 (n + 1)).toNat

end

end A299150.P577568561540158779

namespace A299150

/-- `A000079(A318440(n+1))` -/
def P577568561540158779.Spec : Prop :=
  ∀ n, P577568561540158779.a n = A299150 (n + 1)

end A299150

/-! ## A299150.P7733374183583730767

`A011782(A318440(n+1)+1)`
-/

namespace A299150.P7733374183583730767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A318440 (n + 1) + 1).toNat

end

end A299150.P7733374183583730767

namespace A299150

/-- `A011782(A318440(n+1)+1)` -/
def P7733374183583730767.Spec : Prop :=
  ∀ n, P7733374183583730767.a n = A299150 (n + 1)

end A299150

/-! ## A299150.P2949873826461542100

`A059268(2*A318440(n+1)²)`
-/

namespace A299150.P2949873826461542100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * A318440 (n + 1) ^ 2).toNat

end

end A299150.P2949873826461542100

namespace A299150

/-- `A059268(2*A318440(n+1)²)` -/
def P2949873826461542100.Spec : Prop :=
  ∀ n, P2949873826461542100.a n = A299150 (n + 1)

end A299150

/-! ## A299150.P2167998996625278288

`A046644(n+1)/(A135481(n)+1)`
-/

namespace A299150.P2167998996625278288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A135481 n + 1 : ℚ)

end

end A299150.P2167998996625278288

namespace A299150

/-- `A046644(n+1)/(A135481(n)+1)` -/
def P2167998996625278288.Spec : Prop :=
  ∀ n, P2167998996625278288.a n = (A299150 (n + 1) : ℚ)

end A299150

/-! ## A299150.P6120092106873132340

`A000079(A046645(n+1)-A007814(n+1))`
-/

namespace A299150.P6120092106873132340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A046645 (n + 1) - A007814 (n + 1)).toNat

end

end A299150.P6120092106873132340

namespace A299150

/-- `A000079(A046645(n+1)-A007814(n+1))` -/
def P6120092106873132340.Spec : Prop :=
  ∀ n, P6120092106873132340.a n = A299150 (n + 1)

end A299150

/-! ## A299150.P11661919529687986308

`A000079(A007814(n+1)-A318656(n+1))`
-/

namespace A299150.P11661919529687986308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1) - A318656 (n + 1)).toNat

end

end A299150.P11661919529687986308

namespace A299150

/-- `A000079(A007814(n+1)-A318656(n+1))` -/
def P11661919529687986308.Spec : Prop :=
  ∀ n, P11661919529687986308.a n = A299150 (n + 1)

end A299150

/-! ## A299150.P198332211437389143

`A046644(n+1)/A000079(A007814(n+1))`
-/

namespace A299150.P198332211437389143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A000079 (A007814 (n + 1)).toNat : ℚ)

end

end A299150.P198332211437389143

namespace A299150

/-- `A046644(n+1)/A000079(A007814(n+1))` -/
def P198332211437389143.Spec : Prop :=
  ∀ n, P198332211437389143.a n = (A299150 (n + 1) : ℚ)

end A299150

/-! ## A299150.P1974508701467825602

`2^(A318451(n+1)+A011371(Δ[A011371(n)]))`
-/

namespace A299150.P1974508701467825602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318451 (n + 1) + A011371 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A299150.P1974508701467825602

namespace A299150

/-- `2^(A318451(n+1)+A011371(Δ[A011371(n)]))` -/
def P1974508701467825602.Spec : Prop :=
  ∀ n, P1974508701467825602.a n = (A299150 (n + 1) : ℚ)

end A299150

/-! ## A299150.P1330465457316621096

`A000051(A046645(n+1)-A007814(n+1))-1`
-/

namespace A299150.P1330465457316621096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A046645 (n + 1) - A007814 (n + 1)).toNat - 1

end

end A299150.P1330465457316621096

namespace A299150

/-- `A000051(A046645(n+1)-A007814(n+1))-1` -/
def P1330465457316621096.Spec : Prop :=
  ∀ n, P1330465457316621096.a n = A299150 (n + 1)

end A299150

/-! ## A299150.P4712696442735006564

`A059268(2*A318440(n+1)*A318440(n+1))`
-/

namespace A299150.P4712696442735006564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * A318440 (n + 1) * A318440 (n + 1)).toNat

end

end A299150.P4712696442735006564

namespace A299150

/-- `A059268(2*A318440(n+1)*A318440(n+1))` -/
def P4712696442735006564.Spec : Prop :=
  ∀ n, P4712696442735006564.a n = A299150 (n + 1)

end A299150

/-! ## A299150.P4321229168551087641

`A046644(n+1)*A317934(n+1)/A318314(n+1)`
-/

namespace A299150.P4321229168551087641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) * A317934 (n + 1) : ℚ) / (A318314 (n + 1) : ℚ)

end

end A299150.P4321229168551087641

namespace A299150

/-- `A046644(n+1)*A317934(n+1)/A318314(n+1)` -/
def P4321229168551087641.Spec : Prop :=
  ∀ n, P4321229168551087641.a n = (A299150 (n + 1) : ℚ)

end A299150

/-! ## A299150.P12793779755632471275

`A318512(n+1)/A318511(n+1)*A318680(n+1)`
-/

namespace A299150.P12793779755632471275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318512 (n + 1) : ℚ) / (A318511 (n + 1) : ℚ) * (A318680 (n + 1) : ℚ)

end

end A299150.P12793779755632471275

namespace A299150

/-- `A318512(n+1)/A318511(n+1)*A318680(n+1)` -/
def P12793779755632471275.Spec : Prop :=
  ∀ n, P12793779755632471275.a n = (A299150 (n + 1) : ℚ)

end A299150

/-! ## A299150.P11632910124571712021

`A318512(n+1)/A318649(n+1)*A318681(n+1)`
-/

namespace A299150.P11632910124571712021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318512 (n + 1) : ℚ) / (A318649 (n + 1) : ℚ) * (A318681 (n + 1) : ℚ)

end

end A299150.P11632910124571712021

namespace A299150

/-- `A318512(n+1)/A318649(n+1)*A318681(n+1)` -/
def P11632910124571712021.Spec : Prop :=
  ∀ n, P11632910124571712021.a n = (A299150 (n + 1) : ℚ)

end A299150

/-! ## A299150.P6119800054647663891

`A006519(A165825(n+1)/A006519(n+1))/A037445(n+1)`
-/

namespace A299150.P6119800054647663891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 (SequenceMachineLib.roundAway ((A165825 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ))).toNat : ℚ) / (A037445 (n + 1) : ℚ)

end

end A299150.P6119800054647663891

namespace A299150

/-- `A006519(A165825(n+1)/A006519(n+1))/A037445(n+1)` -/
def P6119800054647663891.Spec : Prop :=
  ∀ n, P6119800054647663891.a n = (A299150 (n + 1) : ℚ)

end A299150

/-! ## A299150.P15047364392911146652

`A317932(A003961(n+1))`
-/

namespace A299150.P15047364392911146652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317932 (A003961 (n + 1)).toNat

end

end A299150.P15047364392911146652

namespace A299150

/-- `A317932(A003961(n+1))` -/
def P15047364392911146652.Spec : Prop :=
  ∀ n, P15047364392911146652.a n = A299150 (n + 1)

end A299150

/-! ## A299150.P2684682388857953667

`A317932(A061898(n+1))`
-/

namespace A299150.P2684682388857953667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317932 (A061898 (n + 1)).toNat

end

end A299150.P2684682388857953667

namespace A299150

/-- `A317932(A061898(n+1))` -/
def P2684682388857953667.Spec : Prop :=
  ∀ n, P2684682388857953667.a n = A299150 (n + 1)

end A299150

/-!
# A299151: Numerators of the positive solution to 2^(n-1) = Sum_{d|n} a(d) * a(n/d).

The programs for A299151, there is no canonical definition to state claims against.
-/

/-! ## A299151.P4143459722426884623

`lcm(n+1, A299119(n+1))/(n+1)`
-/

namespace A299151.P4143459722426884623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A299119 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A299151.P4143459722426884623

/-! ## A299151.P17358251229394242716

`A299119(n+1)/(n+1)*A299152(n+1)`
-/

namespace A299151.P17358251229394242716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299119 (n + 1) : ℚ) / (n + 1 : ℚ) * (A299152 (n + 1) : ℚ)

end

end A299151.P17358251229394242716

/-! ## A299151.P9848510233132165579

`A299119(n+1)/gcd(A000027(n+1), A299119(n+1))`
-/

namespace A299151.P9848510233132165579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299119 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A299119 (n + 1)) : ℚ)

end

end A299151.P9848510233132165579

/-! ## A299151.P998707888933354191

`A026741(A349564(n+1)+A000108(n))`
-/

namespace A299151.P998707888933354191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A349564 (n + 1) + A000108 n).toNat

end

end A299151.P998707888933354191

/-!
# A299152: Denominators of the positive solution to 2^(n-1) = Sum_{d|n} a(d) * a(n/d).

The programs for A299152, the canonical program `A299152.P7362327138160881266` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299152 has offset 1).

The definition of A299152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299152.P7362327138160881266

`ceil(A317932(A003961(n+1))/A167343(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A299152

/-- `ceil(A317932(A003961(n+1))/A167343(n+1))` -/
def P7362327138160881266.Spec : Prop :=
  ∀ n, P7362327138160881266.a n = A299152 (n + 1)

theorem P7362327138160881266.correct : P7362327138160881266.Spec := by
  intro n
  simp only [A299152, Nat.add_sub_cancel]

end A299152

/-! ## A299152.P1556689586006400847

`ceil(A299151(n+1)/ceil(2^(n-1)))`
-/

namespace A299152.P1556689586006400847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299151 (n + 1) : ℚ) / (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)⌉

end

end A299152.P1556689586006400847

namespace A299152

/-- `ceil(A299151(n+1)/ceil(2^(n-1)))` -/
def P1556689586006400847.Spec : Prop :=
  ∀ n, P1556689586006400847.a n = A299152 (n + 1)

end A299152

/-! ## A299152.P14959034933195400230

`(n+1)/gcd(n+1, A299119(n+1))`
-/

namespace A299152.P14959034933195400230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A299119 (n + 1)) : ℚ)

end

end A299152.P14959034933195400230

namespace A299152

/-- `(n+1)/gcd(n+1, A299119(n+1))` -/
def P14959034933195400230.Spec : Prop :=
  ∀ n, P14959034933195400230.a n = (A299152 (n + 1) : ℚ)

end A299152

/-! ## A299152.P6410380860699512810

`ceil(A046161(val(n+1, 2))/A347401(n+1))`
-/

namespace A299152.P6410380860699512810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046161 (SequenceMachineLib.valuation (n + 1) 2) : ℚ) / (A347401 (n + 1) : ℚ)⌉

end

end A299152.P6410380860699512810

namespace A299152

/-- `ceil(A046161(val(n+1, 2))/A347401(n+1))` -/
def P6410380860699512810.Spec : Prop :=
  ∀ n, P6410380860699512810.a n = A299152 (n + 1)

end A299152

/-! ## A299152.P7713776822579122340

`ceil(A317934(n+1)/A317934(A309057(n)²))`
-/

namespace A299152.P7713776822579122340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317934 (n + 1) : ℚ) / (A317934 (A309057 n ^ 2).toNat : ℚ)⌉

end

end A299152.P7713776822579122340

namespace A299152

/-- `ceil(A317934(n+1)/A317934(A309057(n)²))` -/
def P7713776822579122340.Spec : Prop :=
  ∀ n, P7713776822579122340.a n = A299152 (n + 1)

end A299152

/-!
# A299153: Numbers k such that sigma(k) and sigma(k^3) are both primes.

The programs for A299153, there is no canonical definition to state claims against.
-/

/-! ## A299153.P13045463170799792346

`∩[A023194(n+1), A279096(n+1)]`
-/

namespace A299153.P13045463170799792346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299153.P13045463170799792346

/-! ## A299153.P4807506560222430141

`∩[A055638(n+1)², A279096(n+1)]`
-/

namespace A299153.P4807506560222430141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299153.P4807506560222430141

/-! ## A299153.P2998739668667862896

`∩[A279096(n+1), ceil(A292446(n+1)/2)]`
-/

namespace A299153.P2998739668667862896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A292446 (n + 1) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299153.P2998739668667862896

/-! ## A299153.P10004827214791144082

`∩[A279096(n+1), A379112(n+1)]`
-/

namespace A299153.P10004827214791144082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299153.P10004827214791144082

/-! ## A299153.P4561216511313278352

`∩[A015730(n+1), A279096(n+1)]`
-/

namespace A299153.P4561216511313278352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299153.P4561216511313278352

/-!
# A299154: a(n) is the distance from prime(n) to the next prime that has the same digital root, or a(n) = 0 if there is no greater prime with the same digital root.

The programs for A299154, there is no canonical definition to state claims against.
-/

/-! ## A299154.P5018159119863665250

`9*A318451(A335807(n))`
-/

namespace A299154.P5018159119863665250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A318451 (A335807 n).toNat

end

end A299154.P5018159119863665250

/-!
# A299157: Numbers k such that k+1 divides tau(k), where tau(k) = A000594(k) is Ramanujan's tau function.

The programs for A299157, there is no canonical definition to state claims against.
-/

/-! ## A299157.P3898939961856510557

`eq[0, A299163(n+1)]+1`
-/

namespace A299157.P3898939961856510557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299163 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A299157.P3898939961856510557

/-! ## A299157.P8748769754632848909

`eq[0, A299165(n+1)%(n+2)]+1`
-/

namespace A299157.P8748769754632848909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299165 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A299157.P8748769754632848909

/-! ## A299157.P7578669246640030280

`eq[0, A299163(A028310(n))]`
-/

namespace A299157.P7578669246640030280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299163 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A299157.P7578669246640030280

/-! ## A299157.P10559993233426345855

`eq[0, A299163(A000007(n)+n)]`
-/

namespace A299157.P10559993233426345855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299163 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A299157.P10559993233426345855

/-! ## A299157.P17503388644817620466

`record[A006352(n)*A299163(n+1)+n+1]`
-/

namespace A299157.P17503388644817620466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006352 n * A299163 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299157.P17503388644817620466

/-!
# A299158: Numbers k such that k*(k+1) divides tau(k), where tau(k) = A000594(k) is Ramanujan's tau function.

The programs for A299158, there is no canonical definition to state claims against.
-/

/-! ## A299158.P8878674494825259796

`eq[0, A299165(n+1)]+1`
-/

namespace A299158.P8878674494825259796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299165 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A299158.P8878674494825259796

/-! ## A299158.P5747623697818923575

`eq[0, A299165(A028310(n))]`
-/

namespace A299158.P5747623697818923575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299165 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A299158.P5747623697818923575

/-! ## A299158.P3067850443159136891

`A020725(eq[0, A299165(n+1)])`
-/

namespace A299158.P3067850443159136891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299158.P3067850443159136891

/-! ## A299158.P6757866271075885878

`∩[A063938(n+1), A299157(n+1)]`
-/

namespace A299158.P6757866271075885878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299158.P6757866271075885878

/-! ## A299158.P17490680211809105622

`record[A233583(n+1)+1-A299165(n+1)]`
-/

namespace A299158.P17490680211809105622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + (1 - A299165 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299158.P17490680211809105622

/-!
# A299159: Numbers k such that 4*k-1, 6*k-1 and 12*k-1 are prime.

The programs for A299159, the canonical program `A299159.P14911991714479268637` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299159 has offset 1).

The definition of A299159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299159.P14911991714479268637

`ceil(A181841(n+2)/12)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A299159

/-- `ceil(A181841(n+2)/12)` -/
def P14911991714479268637.Spec : Prop :=
  ∀ n, P14911991714479268637.a n = A299159 (n + 1)

theorem P14911991714479268637.correct : P14911991714479268637.Spec := by
  intro n
  simp only [A299159, Nat.add_sub_cancel]

end A299159

/-! ## A299159.P6838866418798203239

`or(round(A181841(n+2)/12), A000007(n))`
-/

namespace A299159.P6838866418798203239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A181841 (n + 2) : ℚ) / 12)) (A000007 n)

end

end A299159.P6838866418798203239

namespace A299159

/-- `or(round(A181841(n+2)/12), A000007(n))` -/
def P6838866418798203239.Spec : Prop :=
  ∀ n, P6838866418798203239.a n = A299159 (n + 1)

end A299159

/-! ## A299159.P9106322384467452358

`round(A181841(n+2)/12)*A000034(2*n)`
-/

namespace A299159.P9106322384467452358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A181841 (n + 2) : ℚ) / 12) * A000034 (2 * n)

end

end A299159.P9106322384467452358

namespace A299159

/-- `round(A181841(n+2)/12)*A000034(2*n)` -/
def P9106322384467452358.Spec : Prop :=
  ∀ n, P9106322384467452358.a n = A299159 (n + 1)

end A299159

/-! ## A299159.P11949423633289019061

`round(A181841(n+2)/12)*A000045(A020639(50*n+26))`
-/

namespace A299159.P11949423633289019061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A181841 (n + 2) : ℚ) / 12) * A000045 (A020639 (50 * n + 26)).toNat

end

end A299159.P11949423633289019061

namespace A299159

/-- `round(A181841(n+2)/12)*A000045(A020639(50*n+26))` -/
def P11949423633289019061.Spec : Prop :=
  ∀ n, P11949423633289019061.a n = A299159 (n + 1)

end A299159

/-! ## A299159.P3919228343579681263

`round(A181841(n+2)/12)*A014963(A008458(n))`
-/

namespace A299159.P3919228343579681263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A181841 (n + 2) : ℚ) / 12) * A014963 (A008458 n).toNat

end

end A299159.P3919228343579681263

namespace A299159

/-- `round(A181841(n+2)/12)*A014963(A008458(n))` -/
def P3919228343579681263.Spec : Prop :=
  ∀ n, P3919228343579681263.a n = A299159 (n + 1)

end A299159

/-! ## A299159.P11677265224941730395

`round(A181841(n+2)/12)*A014963(A154267(n))`
-/

namespace A299159.P11677265224941730395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A181841 (n + 2) : ℚ) / 12) * A014963 (A154267 n).toNat

end

end A299159.P11677265224941730395

namespace A299159

/-- `round(A181841(n+2)/12)*A014963(A154267(n))` -/
def P11677265224941730395.Spec : Prop :=
  ∀ n, P11677265224941730395.a n = A299159 (n + 1)

end A299159

/-! ## A299159.P6468334903000354554

`ceil(p?[A014682(A023208(n+1))]/6)`
-/

namespace A299159.P6468334903000354554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A023208 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌉

end

end A299159.P6468334903000354554

namespace A299159

/-- `ceil(p?[A014682(A023208(n+1))]/6)` -/
def P6468334903000354554.Spec : Prop :=
  ∀ n, P6468334903000354554.a n = A299159 (n + 1)

end A299159

/-! ## A299159.P7095508719280530241

`A007318(∑[n])*round(A181841(n+2)/12)`
-/

namespace A299159.P7095508719280530241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A181841 (n + 2) : ℚ) / 12)

end

end A299159.P7095508719280530241

namespace A299159

/-- `A007318(∑[n])*round(A181841(n+2)/12)` -/
def P7095508719280530241.Spec : Prop :=
  ∀ n, P7095508719280530241.a n = A299159 (n + 1)

end A299159

/-! ## A299159.P10166283043978924539

`round(A181841(n+2)/12*A001221(A140513(n)))`
-/

namespace A299159.P10166283043978924539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A181841 (n + 2) : ℚ) / 12 * (A001221 (A140513 n).toNat : ℚ))

end

end A299159.P10166283043978924539

namespace A299159

/-- `round(A181841(n+2)/12*A001221(A140513(n)))` -/
def P10166283043978924539.Spec : Prop :=
  ∀ n, P10166283043978924539.a n = A299159 (n + 1)

end A299159

/-! ## A299159.P12358361371555054706

`round(A181841(n+2)/12)*A014963(A053743(n))`
-/

namespace A299159.P12358361371555054706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A181841 (n + 2) : ℚ) / 12) * A014963 (A053743 n).toNat

end

end A299159.P12358361371555054706

namespace A299159

/-- `round(A181841(n+2)/12)*A014963(A053743(n))` -/
def P12358361371555054706.Spec : Prop :=
  ∀ n, P12358361371555054706.a n = A299159 (n + 1)

end A299159

/-!
# A299162: Expansion of 1/(1 - x*Product_{k>=1} 1/(1 - k*x^k)).

The programs for A299162, there is no canonical definition to state claims against.
-/

/-! ## A299162.P13595560222741997880

`A002426(n)-A338653(A038342(n))`
-/

namespace A299162.P13595560222741997880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n - A338653 (A038342 n).toNat

end

end A299162.P13595560222741997880

/-! ## A299162.P16881432128734910284

`A204900(A063727(n))-A325354(n)`
-/

namespace A299162.P16881432128734910284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204900 (A063727 n).toNat - A325354 n

end

end A299162.P16881432128734910284

/-! ## A299162.P13712921311599300282

`A272973(A002846(n+1))+A006645(n)`
-/

namespace A299162.P13712921311599300282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A002846 (n + 1)).toNat + A006645 n

end

end A299162.P13712921311599300282

/-!
# A299163: a(n) = A000594(n) mod (n+1).

The programs for A299163, there is no canonical definition to state claims against.
-/

/-! ## A299163.P1324767182748036908

`A299165(n+1)%(n+2)`
-/

namespace A299163.P1324767182748036908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299165 (n + 1)) (n + 2 : ℤ)

end

end A299163.P1324767182748036908

/-!
# A299164: Expansion of 1/(1 - x*Product_{k>=1} (1 + k*x^k)).

The programs for A299164, there is no canonical definition to state claims against.
-/

/-! ## A299164.P15000700813943579070

`A046108(A294695(n))`
-/

namespace A299164.P15000700813943579070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A294695 n).toNat

end

end A299164.P15000700813943579070

/-! ## A299164.P14677040537524234885

`A083917(A000984(n))+A001519(n)`
-/

namespace A299164.P14677040537524234885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083917 (A000984 n).toNat + A001519 n

end

end A299164.P14677040537524234885

/-! ## A299164.P5991875586418470736

`A056170(A052399(n))+A001519(n)`
-/

namespace A299164.P5991875586418470736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A052399 n).toNat + A001519 n

end

end A299164.P5991875586418470736

/-! ## A299164.P3418370484014051813

`A092573(A373707(n))+A001519(n)`
-/

namespace A299164.P3418370484014051813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 (A373707 n).toNat + A001519 n

end

end A299164.P3418370484014051813

/-!
# A299166: Expansion of 1/(1 - x*Product_{k>=1} 1/(1 - x^k)^k).

The programs for A299166, there is no canonical definition to state claims against.
-/

/-! ## A299166.P6737145621939152750

`∑[A105517(A136703(n+4))]+1`
-/

namespace A299166.P6737145621939152750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (A136703 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A299166.P6737145621939152750

/-! ## A299166.P13256196882413416642

`A226190(A002387(n))+A137745(n)`
-/

namespace A299166.P13256196882413416642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A002387 n).toNat + A137745 n

end

end A299166.P13256196882413416642

/-! ## A299166.P12383658643807319454

`A200752(n)+A054404(A202207(n))`
-/

namespace A299166.P12383658643807319454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 n + A054404 (A202207 n).toNat

end

end A299166.P12383658643807319454

/-!
# A299167: Expansion of 1/(1 - x*Product_{k>=1} (1 + x^k)^k).

The programs for A299167, there is no canonical definition to state claims against.
-/

/-! ## A299167.P11353121708624020714

`A215928(n)+A185714(A072856(n))`
-/

namespace A299167.P11353121708624020714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n + A185714 (A072856 n).toNat

end

end A299167.P11353121708624020714

/-! ## A299167.P615127989774207882

`A054846(A228770(n+1))`
-/

namespace A299167.P615127989774207882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A228770 (n + 1)).toNat

end

end A299167.P615127989774207882

/-! ## A299167.P279310239421283385

`A243283(A149627(n)+1)`
-/

namespace A299167.P279310239421283385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A149627 n + 1).toNat

end

end A299167.P279310239421283385

/-! ## A299167.P3792948366291485864

`A045887(A001710(n))+A001519(n)`
-/

namespace A299167.P3792948366291485864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045887 (A001710 n).toNat + A001519 n

end

end A299167.P3792948366291485864

/-!
# A299169: Number of ordered ways of writing n^4 as a sum of n fourth powers of nonnegative integers.

The programs for A299169, there is no canonical definition to state claims against.
-/

/-! ## A299169.P10871715469020747668

`A028310(n)*A300983(A019538(2*n+3))`
-/

namespace A299169.P10871715469020747668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A300983 (A019538 (2 * n + 3)).toNat

end

end A299169.P10871715469020747668

/-! ## A299169.P2965624296773570974

`A033930(n)*A300983(A019538(2*n+3))`
-/

namespace A299169.P2965624296773570974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 n * A300983 (A019538 (2 * n + 3)).toNat

end

end A299169.P2965624296773570974

/-!
# A299171: Primes p such that Ramanujan number tau(p) is divisible by p+1.

The programs for A299171, there is no canonical definition to state claims against.
-/

/-! ## A299171.P15615685695312202521

`p?[A299157(n+1)]`
-/

namespace A299171.P15615685695312202521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299171.P15615685695312202521

/-! ## A299171.P10996256618381299350

`∩[A000040(n+1), A299157(n+1)]`
-/

namespace A299171.P10996256618381299350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299171.P10996256618381299350

/-! ## A299171.P10832656773398929429

`∩[A008578(n+1), A299157(n+1)]`
-/

namespace A299171.P10832656773398929429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299171.P10832656773398929429

/-! ## A299171.P11474658271255139865

`∩[A033946(n+1), A299157(n+1)]`
-/

namespace A299171.P11474658271255139865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299171.P11474658271255139865

/-! ## A299171.P14872342153898553171

`∩[A046022(n+1), A299157(n+1)]`
-/

namespace A299171.P14872342153898553171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299171.P14872342153898553171

/-! ## A299171.P15724620984731618105

`∩[A062972(n+1), A299157(n+1)]`
-/

namespace A299171.P15724620984731618105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299171.P15724620984731618105

/-! ## A299171.P113474112482851456

`filter[A299157(n+1), A010051(#)]`
-/

namespace A299171.P113474112482851456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A299171.P113474112482851456

/-! ## A299171.P8267952446314286782

`filter[A299157(n+1), A355937(#)]`
-/

namespace A299171.P8267952446314286782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A299171.P8267952446314286782

/-! ## A299171.P6795577294390993016

`filter[A299157(n+1), A302777(#)]`
-/

namespace A299171.P6795577294390993016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A299171.P6795577294390993016

/-! ## A299171.P4414535414130718809

`filter[A299157(n+1), A080339(#)]`
-/

namespace A299171.P4414535414130718809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A299171.P4414535414130718809

/-!
# A299173: a(n) is the maximum number of squared consecutive positive integers into which the integer n can be partitioned.

The programs for A299173, there is no canonical definition to state claims against.
-/

/-! ## A299173.P16179555075373086640

`A248509(n+1)%A261717(A248182(n))`
-/

namespace A299173.P16179555075373086640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248509 (n + 1)) (A261717 (A248182 n).toNat)

end

end A299173.P16179555075373086640

/-! ## A299173.P1886412548760053247

`A281542(n+1)%A261717(A102352(n+1))`
-/

namespace A299173.P1886412548760053247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281542 (n + 1)) (A261717 (A102352 (n + 1)).toNat)

end

end A299173.P1886412548760053247

/-! ## A299173.P1145276728034380491

`A248509(n+1)*A285530(A330424(n+1)+1)`
-/

namespace A299173.P1145276728034380491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248509 (n + 1) * A285530 (A330424 (n + 1) + 1).toNat

end

end A299173.P1145276728034380491

/-! ## A299173.P9767922540516608462

`A004736(A297845(n+1))*A285530(A330424(n+1)+1)`
-/

namespace A299173.P9767922540516608462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A297845 (n + 1)).toNat * A285530 (A330424 (n + 1) + 1).toNat

end

end A299173.P9767922540516608462

/-! ## A299173.P17888994691616195221

`and(A102457(A033996(3*n+4)), A281542(n+1))`
-/

namespace A299173.P17888994691616195221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102457 (A033996 (3 * n + 4)).toNat) (A281542 (n + 1))

end

end A299173.P17888994691616195221

/-!
# A299174: The positive even integers.

The programs for A299174, the canonical program `A299174.P2087432199030095038` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299174 has offset 1).

The definition of A299174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299174.P2087432199030095038

`2*(n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A299174

/-- `2*(n+1)` -/
def P2087432199030095038.Spec : Prop :=
  ∀ n, (P2087432199030095038.a n : ℤ) = A299174 (n + 1)

theorem P2087432199030095038.correct : P2087432199030095038.Spec := by
  intro n
  simp only [A299174, Nat.add_sub_cancel]

end A299174

/-!
# A299175: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299175, there is no canonical definition to state claims against.
-/

/-! ## A299175.P10429251820182354136

`A299180(∑[4*n]+1)`
-/

namespace A299175.P10429251820182354136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299175.P10429251820182354136

/-! ## A299175.P14410746704886469734

`record[A299180(Δ[A235355(n)])]`
-/

namespace A299175.P14410746704886469734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299175.P14410746704886469734

/-! ## A299175.P4296632776801162196

`record[A299180(A330613(n+1))]`
-/

namespace A299175.P4296632776801162196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299175.P4296632776801162196

/-! ## A299175.P10800318061388980037

`A299180(A001844(n))+char[12]`
-/

namespace A299175.P10800318061388980037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299175.P10800318061388980037

/-! ## A299175.P6647043075985800281

`record[A003982(n)*A299180(n+1)]`
-/

namespace A299175.P6647043075985800281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299175.P6647043075985800281

/-!
# A299176: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299176, there is no canonical definition to state claims against.
-/

/-! ## A299176.P18347408511411979014

`A299180(∑[n+3]+7)`
-/

namespace A299176.P18347408511411979014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299176.P18347408511411979014

/-! ## A299176.P14458737000880090981

`A299942(∑[n+3]+7)`
-/

namespace A299176.P14458737000880090981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299176.P14458737000880090981

/-! ## A299176.P14995880210691347226

`A299942(A052905(n)+9)+char[26]`
-/

namespace A299176.P14995880210691347226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299176.P14995880210691347226

/-! ## A299176.P1968119587529100549

`A299942(A052905(n)+9)%A000032(or(42, n))`
-/

namespace A299176.P1968119587529100549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299942 (A052905 n + 9).toNat) (A000032 (Nat.lor 42 n))

end

end A299176.P1968119587529100549

/-! ## A299176.P12161312646593851036

`A007318(C(n+2, 2))*A299942(A052905(n)+9)`
-/

namespace A299176.P12161312646593851036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A299942 (A052905 n + 9).toNat

end

end A299176.P12161312646593851036

/-!
# A299177: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299177, there is no canonical definition to state claims against.
-/

/-! ## A299177.P6613305519813303449

`A299180(A374005(n+1))`
-/

namespace A299177.P6613305519813303449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A374005 (n + 1)).toNat

end

end A299177.P6613305519813303449

/-! ## A299177.P10919511153031345634

`A299180(A167499(n+3))`
-/

namespace A299177.P10919511153031345634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A167499 (n + 3)).toNat

end

end A299177.P10919511153031345634

/-! ## A299177.P8396399052258474175

`A299180(A155212(n)+13)`
-/

namespace A299177.P8396399052258474175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A155212 n + 13).toNat

end

end A299177.P8396399052258474175

/-! ## A299177.P12499181543700412882

`A299180(A056000(n)+15)`
-/

namespace A299177.P12499181543700412882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A056000 n + 15).toNat

end

end A299177.P12499181543700412882

/-! ## A299177.P16223272745254484516

`A299180(eq[7, A066657(n)])`
-/

namespace A299177.P16223272745254484516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299177.P16223272745254484516

/-!
# A299178: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299178, there is no canonical definition to state claims against.
-/

/-! ## A299178.P14799290043123115657

`A299180(A374007(n+1))`
-/

namespace A299178.P14799290043123115657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A374007 (n + 1)).toNat

end

end A299178.P14799290043123115657

/-! ## A299178.P12978400710214447659

`A299180(A166136(n+4))`
-/

namespace A299178.P12978400710214447659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A166136 (n + 4)).toNat

end

end A299178.P12978400710214447659

/-! ## A299178.P5221020825043208596

`A299180(A056115(n)+21)`
-/

namespace A299178.P5221020825043208596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A056115 n + 21).toNat

end

end A299178.P5221020825043208596

/-! ## A299178.P638957704209260098

`A299180(A167487(n+4)-1)`
-/

namespace A299178.P638957704209260098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A167487 (n + 4) - 1).toNat

end

end A299178.P638957704209260098

/-! ## A299178.P12605201897060417850

`A299180(A167614(n+4)+3)`
-/

namespace A299178.P12605201897060417850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A167614 (n + 4) + 3).toNat

end

end A299178.P12605201897060417850

/-!
# A299179: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299179, there is no canonical definition to state claims against.
-/

/-! ## A299179.P18320486760580882635

`A299180(A374008(n+1))`
-/

namespace A299179.P18320486760580882635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A374008 (n + 1)).toNat

end

end A299179.P18320486760580882635

/-! ## A299179.P7207792055425312000

`A299180(A167487(n+5))`
-/

namespace A299179.P7207792055425312000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A167487 (n + 5)).toNat

end

end A299179.P7207792055425312000

/-! ## A299179.P16788616064677034176

`A299180(A056119(n)+28)`
-/

namespace A299179.P16788616064677034176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A056119 n + 28).toNat

end

end A299179.P16788616064677034176

/-! ## A299179.P17517666089867975749

`A299180(eq[11, A066657(n)])`
-/

namespace A299179.P17517666089867975749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299179.P17517666089867975749

/-! ## A299179.P8150234930478998458

`A299180(A133263(n+6)+5)`
-/

namespace A299179.P8150234930478998458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299180 (A133263 (n + 6) + 5).toNat

end

end A299179.P8150234930478998458

/-!
# A299180: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299180, there is no canonical definition to state claims against.
-/

/-! ## A299180.P2098429127534579004

`A299942(∑[A010894(n)!])`
-/

namespace A299180.P2098429127534579004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299180.P2098429127534579004

/-! ## A299180.P7770465175759663173

`A299942(∑[A036225(n)^8])`
-/

namespace A299180.P7770465175759663173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299180.P7770465175759663173

/-! ## A299180.P7317357633106255908

`A299942(C(∑[A036225(n)], n))`
-/

namespace A299180.P7317357633106255908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat n)

end

end A299180.P7317357633106255908

/-! ## A299180.P15434668864225300393

`A299942((n+1)^A036225(n))`
-/

namespace A299180.P15434668864225300393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A036225 n : ℤ))).toNat

end

end A299180.P15434668864225300393

/-! ## A299180.P14815637490895931316

`A299942(C(n+1, A036225(n)))`
-/

namespace A299180.P14815637490895931316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (Nat.choose (n + 1) (A036225 n).toNat)

end

end A299180.P14815637490895931316

/-!
# A299181: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299181, there is no canonical definition to state claims against.
-/

/-! ## A299181.P14442869171240797942

`A299187(∑[4*n]+1)`
-/

namespace A299181.P14442869171240797942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299181.P14442869171240797942

/-! ## A299181.P5626803404756884210

`record[A299187(A330613(n+1))]`
-/

namespace A299181.P5626803404756884210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299181.P5626803404756884210

/-! ## A299181.P16973004442910266031

`A299187(A001844(n))+char[10]`
-/

namespace A299181.P16973004442910266031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299181.P16973004442910266031

/-! ## A299181.P10529085035483177016

`record[A003982(n)*A299187(n+1)]`
-/

namespace A299181.P10529085035483177016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299181.P10529085035483177016

/-! ## A299181.P4943626049764219229

`A036225(n)*A299187(A001844(n))`
-/

namespace A299181.P4943626049764219229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A299187 (A001844 n).toNat

end

end A299181.P4943626049764219229

/-!
# A299182: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299182, there is no canonical definition to state claims against.
-/

/-! ## A299182.P2976262621557789674

`A299187(∑[n+2]+4)`
-/

namespace A299182.P2976262621557789674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299182.P2976262621557789674

/-! ## A299182.P15576257193251123677

`A299948(∑[n+2]+4)`
-/

namespace A299182.P15576257193251123677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299182.P15576257193251123677

/-! ## A299182.P14155033923053215388

`A299187(A046691(n)+7)+char[23]`
-/

namespace A299182.P14155033923053215388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299182.P14155033923053215388

/-! ## A299182.P15809704302787062967

`A299187(A167614(n+1))+A025466(n)`
-/

namespace A299182.P15809704302787062967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (A167614 (n + 1)).toNat + A025466 n

end

end A299182.P15809704302787062967

/-! ## A299182.P15732182316419017227

`A299187(A167614(n+1))+A185284(n)`
-/

namespace A299182.P15732182316419017227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (A167614 (n + 1)).toNat + A185284 n

end

end A299182.P15732182316419017227

/-!
# A299183: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299183, there is no canonical definition to state claims against.
-/

/-! ## A299183.P16953061863137791452

`A299187(∑[n+3]+7)`
-/

namespace A299183.P16953061863137791452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299183.P16953061863137791452

/-! ## A299183.P18245513279390022207

`A299948(∑[n+3]+7)`
-/

namespace A299183.P18245513279390022207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299183.P18245513279390022207

/-! ## A299183.P8636937773517486825

`A299187(A167614(n+2)+1)+char[18]`
-/

namespace A299183.P8636937773517486825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299183.P8636937773517486825

/-! ## A299183.P16133774585017147345

`A007318(C(2, n))²*A299948(A055999(n)+10)`
-/

namespace A299183.P16133774585017147345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) ^ 2 * A299948 (A055999 n + 10).toNat

end

end A299183.P16133774585017147345

/-! ## A299183.P1064518731322343354

`A007318(C(n, 2))*A299187(A167614(n+2)+1)`
-/

namespace A299183.P1064518731322343354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A299187 (A167614 (n + 2) + 1).toNat

end

end A299183.P1064518731322343354

/-!
# A299184: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299184, there is no canonical definition to state claims against.
-/

/-! ## A299184.P6123064879049284702

`A299187(∑[n+4]+11)`
-/

namespace A299184.P6123064879049284702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299184.P6123064879049284702

/-! ## A299184.P4141046687856751334

`A299187(A167499(n+3))+char[17]`
-/

namespace A299184.P4141046687856751334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299184.P4141046687856751334

/-! ## A299184.P5074635606033648629

`A299187(A000217(n+4)+5)+char[19]`
-/

namespace A299184.P5074635606033648629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (A000217 (n + 4) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299184.P5074635606033648629

/-! ## A299184.P18357765676841712524

`A299187(A374005(n+1))%A115429(n+1)`
-/

namespace A299184.P18357765676841712524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299187 (A374005 (n + 1)).toNat) (A115429 (n + 1))

end

end A299184.P18357765676841712524

/-! ## A299184.P369581193438637077

`A007318(C(2, n))*A299187(A167499(n+3))`
-/

namespace A299184.P369581193438637077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A299187 (A167499 (n + 3)).toNat

end

end A299184.P369581193438637077

/-!
# A299185: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299185, there is no canonical definition to state claims against.
-/

/-! ## A299185.P11227274108118010461

`A299187(∑[n+5]+16)`
-/

namespace A299185.P11227274108118010461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A299185.P11227274108118010461

/-!
# A299186: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299186, there is no canonical definition to state claims against.
-/

/-! ## A299186.P9674214261006968505

`A299187(A374008(n+1))`
-/

namespace A299186.P9674214261006968505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (A374008 (n + 1)).toNat

end

end A299186.P9674214261006968505

/-! ## A299186.P12224054142678204565

`A299187(A056119(n)+28)`
-/

namespace A299186.P12224054142678204565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (A056119 n + 28).toNat

end

end A299186.P12224054142678204565

/-! ## A299186.P2671708043279811122

`A299187(eq[11, A066657(n)])`
-/

namespace A299186.P2671708043279811122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299186.P2671708043279811122

/-! ## A299186.P14894382355247832733

`A299187(A166136(n+5)+1)`
-/

namespace A299186.P14894382355247832733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (A166136 (n + 5) + 1).toNat

end

end A299186.P14894382355247832733

/-! ## A299186.P9338151943998165181

`A299187(A167614(n+5)+4)`
-/

namespace A299186.P9338151943998165181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (A167614 (n + 5) + 4).toNat

end

end A299186.P9338151943998165181

/-!
# A299187: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299187, there is no canonical definition to state claims against.
-/

/-! ## A299187.P6097651951649247456

`A299948(∑[A010894(n)!])`
-/

namespace A299187.P6097651951649247456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299187.P6097651951649247456

/-! ## A299187.P6638793677647478329

`A299948((n+1)^A036225(n))`
-/

namespace A299187.P6638793677647478329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A036225 n : ℤ))).toNat

end

end A299187.P6638793677647478329

/-! ## A299187.P12628700363091837761

`A299948(n+1)^A010894(n)!`
-/

namespace A299187.P12628700363091837761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (n + 1) ^ Nat.factorial (A010894 (n + 21)).toNat

end

end A299187.P12628700363091837761

/-! ## A299187.P10805461072199194529

`A299948(n+1)%A236596(n+1)`
-/

namespace A299187.P10805461072199194529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299948 (n + 1)) (A236596 (n + 1))

end

end A299187.P10805461072199194529

/-! ## A299187.P1727370375163810558

`A299948(A008835(2*n+1)²+n)`
-/

namespace A299187.P1727370375163810558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (A008835 (2 * n + 1) ^ 2 + (n : ℤ)).toNat

end

end A299187.P1727370375163810558

/-!
# A299188: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299188, there is no canonical definition to state claims against.
-/

/-! ## A299188.P13270081278318489360

`A299194(∑[4*n]+1)`
-/

namespace A299188.P13270081278318489360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299188.P13270081278318489360

/-! ## A299188.P9774187504293584605

`A299194(A001844(n))+char[10]`
-/

namespace A299188.P9774187504293584605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299188.P9774187504293584605

/-! ## A299188.P10476084253041962869

`gcd(A010894(n), A299194(A001844(n)))`
-/

namespace A299188.P10476084253041962869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A299194 (A001844 n).toNat)

end

end A299188.P10476084253041962869

/-! ## A299188.P8260962361791971076

`or(A059995(n), A299194(A001844(n)))`
-/

namespace A299188.P8260962361791971076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059995 n) (A299194 (A001844 n).toNat)

end

end A299188.P8260962361791971076

/-! ## A299188.P7086507381758880015

`or(A089806(n), A299194(A001844(n)))`
-/

namespace A299188.P7086507381758880015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089806 n) (A299194 (A001844 n).toNat)

end

end A299188.P7086507381758880015

/-!
# A299189: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299189, there is no canonical definition to state claims against.
-/

/-! ## A299189.P13762166608318951235

`A299194(∑[n+2]+4)`
-/

namespace A299189.P13762166608318951235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299189.P13762166608318951235

/-! ## A299189.P1934658760133860124

`A300030(∑[n+2]+4)`
-/

namespace A299189.P1934658760133860124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299189.P1934658760133860124

/-! ## A299189.P10841024971781847019

`or(1, A299194(A167614(n+1)))`
-/

namespace A299189.P10841024971781847019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299194 (A167614 (n + 1)).toNat)

end

end A299189.P10841024971781847019

/-! ## A299189.P6181292095844648765

`or(1, A300030(A152949(n+4)))`
-/

namespace A299189.P6181292095844648765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A300030 (A152949 (n + 4)).toNat)

end

end A299189.P6181292095844648765

/-! ## A299189.P17791184135554444378

`or(1, A299194(A034856(n+1)+5))`
-/

namespace A299189.P17791184135554444378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299194 (A034856 (n + 1) + 5).toNat)

end

end A299189.P17791184135554444378

/-!
# A299190: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299190, there is no canonical definition to state claims against.
-/

/-! ## A299190.P4162210499973712191

`A299194(∑[n+3]+7)`
-/

namespace A299190.P4162210499973712191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299190.P4162210499973712191

/-! ## A299190.P2205296442049245099

`A300030(∑[n+3]+7)`
-/

namespace A299190.P2205296442049245099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299190.P2205296442049245099

/-! ## A299190.P14984820373095410967

`or(char[1], A300030(A141214(n)+7))`
-/

namespace A299190.P14984820373095410967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300030 (A141214 n + 7).toNat)

end

end A299190.P14984820373095410967

/-! ## A299190.P3761641948159842418

`A299194(Δ[A008778(n)]+6)+char[17]`
-/

namespace A299190.P3761641948159842418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (f1 (n + 1) - f1 n + 6).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299190.P3761641948159842418

/-! ## A299190.P11823596630153760504

`A299194(A052905(n)+9)+A008683(8*n+4)`
-/

namespace A299190.P11823596630153760504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (A052905 n + 9).toNat + A008683 (8 * n + 4)

end

end A299190.P11823596630153760504

/-!
# A299191: Number of n X 5 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299191, there is no canonical definition to state claims against.
-/

/-! ## A299191.P9497546005039871792

`A299194(A167499(n+3))`
-/

namespace A299191.P9497546005039871792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (A167499 (n + 3)).toNat

end

end A299191.P9497546005039871792

/-! ## A299191.P15201111639890958833

`A299194(A155212(n)+13)`
-/

namespace A299191.P15201111639890958833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (A155212 n + 13).toNat

end

end A299191.P15201111639890958833

/-! ## A299191.P1107519581955709354

`A299194(A056000(n)+15)`
-/

namespace A299191.P1107519581955709354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (A056000 n + 15).toNat

end

end A299191.P1107519581955709354

/-! ## A299191.P12205417995942151222

`A299194(eq[7, A066657(n)])`
-/

namespace A299191.P12205417995942151222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299191.P12205417995942151222

/-! ## A299191.P7019036683286803652

`A299194(A167614(n+3)+2)`
-/

namespace A299191.P7019036683286803652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (A167614 (n + 3) + 2).toNat

end

end A299191.P7019036683286803652

/-!
# A299192: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299192, there is no canonical definition to state claims against.
-/

/-! ## A299192.P3811609924815311786

`A299194(∑[n+5]+16)`
-/

namespace A299192.P3811609924815311786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A299192.P3811609924815311786

/-! ## A299192.P10102308616103171389

`A299194(eq[5, A193592(n)])%A233987(n+1)`
-/

namespace A299192.P10102308616103171389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A233987 (n + 1))

end

end A299192.P10102308616103171389

/-! ## A299192.P4852510190687838374

`A299194(A055999(n+3)+1)+A034548(A046951(n+1))`
-/

namespace A299192.P4852510190687838374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (A055999 (n + 3) + 1).toNat + A034548 (A046951 (n + 1)).toNat

end

end A299192.P4852510190687838374

/-!
# A299193: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299193, there is no canonical definition to state claims against.
-/

/-! ## A299193.P9989778034951309777

`A299194(A056119(n)+28)`
-/

namespace A299193.P9989778034951309777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (A056119 n + 28).toNat

end

end A299193.P9989778034951309777

/-! ## A299193.P1230715998945292130

`A299194(eq[11, A066657(n)])`
-/

namespace A299193.P1230715998945292130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299193.P1230715998945292130

/-! ## A299193.P5778485384107457040

`A299194(A166136(n+5)+1)`
-/

namespace A299193.P5778485384107457040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (A166136 (n + 5) + 1).toNat

end

end A299193.P5778485384107457040

/-! ## A299193.P9395904197735781710

`A299194(A167499(n+5)+2)`
-/

namespace A299193.P9395904197735781710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (A167499 (n + 5) + 2).toNat

end

end A299193.P9395904197735781710

/-! ## A299193.P3574709186408373341

`A299194(eq[6, A002262(n)]+1)`
-/

namespace A299193.P3574709186408373341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A299193.P3574709186408373341

/-!
# A299194: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299194, there is no canonical definition to state claims against.
-/

/-! ## A299194.P10190451513691115012

`A300030(∑[A010894(n)!])`
-/

namespace A299194.P10190451513691115012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299194.P10190451513691115012

/-! ## A299194.P18142081663600084923

`A300030(A010894(n)!+n)`
-/

namespace A299194.P18142081663600084923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A299194.P18142081663600084923

/-! ## A299194.P10160499080977343284

`A106608(7*A300030(n+1))`
-/

namespace A299194.P10160499080977343284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (7 * A300030 (n + 1)).toNat

end

end A299194.P10160499080977343284

/-! ## A299194.P294557296425265767

`A226581(8*A300030(n+1))`
-/

namespace A299194.P294557296425265767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226581 (8 * A300030 (n + 1)).toNat

end

end A299194.P294557296425265767

/-! ## A299194.P15100386733240033850

`A343609(9*A300030(n+1))`
-/

namespace A299194.P15100386733240033850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (9 * A300030 (n + 1)).toNat

end

end A299194.P15100386733240033850

/-!
# A299196: Number of partitions of n into distinct parts that are lesser of twin primes (A001359).

The programs for A299196, there is no canonical definition to state claims against.
-/

/-! ## A299196.P14887444436794050690

`A288729(A303299(2*n+3)+A036150(2*n))`
-/

namespace A299196.P14887444436794050690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288729 (A303299 (2 * n + 3) + A036150 (2 * n)).toNat

end

end A299196.P14887444436794050690

/-! ## A299196.P5593022138577656007

`ceil(A339422(n)/A083404(n))`
-/

namespace A299196.P5593022138577656007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A339422 n : ℚ) / (A083404 n : ℚ)⌉

end

end A299196.P5593022138577656007

/-! ## A299196.P12382041768408542173

`ceil(A339422(n)/A092097(n))`
-/

namespace A299196.P12382041768408542173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A339422 n : ℚ) / (A092097 n : ℚ)⌉

end

end A299196.P12382041768408542173

/-! ## A299196.P17924700818702167390

`ceil(A339422(n)/A096592(n))`
-/

namespace A299196.P17924700818702167390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A339422 n : ℚ) / (A096592 n : ℚ)⌉

end

end A299196.P17924700818702167390

/-! ## A299196.P1744779591319913448

`ceil(A339422(n)/A096878(2*n+3))`
-/

namespace A299196.P1744779591319913448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A339422 n : ℚ) / (A096878 (2 * n + 3) : ℚ)⌉

end

end A299196.P1744779591319913448

/-!
# A299197: Number of partitions of n into distinct parts that are greater of twin primes (A006512).

The programs for A299197, there is no canonical definition to state claims against.
-/

/-! ## A299197.P17921345428030290767

`A003982(A239895(n+1)*A332298(n))`
-/

namespace A299197.P17921345428030290767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A239895 (n + 1) * A332298 n).toNat

end

end A299197.P17921345428030290767

/-! ## A299197.P12539966623034575755

`A164349(A332371(2*(n+1))+A063538(n+5))`
-/

namespace A299197.P12539966623034575755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (A332371 (2 * (n + 1)) + A063538 (n + 5)).toNat

end

end A299197.P12539966623034575755

/-! ## A299197.P7760296699920804872

`A287663(A028993(n)-A057163(n))`
-/

namespace A299197.P7760296699920804872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287663 (A028993 n - A057163 n).toNat

end

end A299197.P7760296699920804872

/-! ## A299197.P4043260527189586056

`A010060(A001157(n+1)*A331435(n+1))`
-/

namespace A299197.P4043260527189586056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A001157 (n + 1) * A331435 (n + 1)).toNat

end

end A299197.P4043260527189586056

/-! ## A299197.P14219165236933279291

`A227896(n+1)%A270645(A006094(n+1))`
-/

namespace A299197.P14219165236933279291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227896 (n + 1)) (A270645 (A006094 (n + 1)).toNat)

end

end A299197.P14219165236933279291

/-!
# A299198: a(n) = n^4/6 - 2*n^3/3 - n^2/6 + 5*n/3 + 1.

The programs for A299198, the canonical program `A299198.P8448535918251250639` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299198 has offset 1).

The definition of A299198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299198.P8448535918251250639

`(n-2)*(n+2)*((n+1)²-2*(n+1)-2)/6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A299198

/-- `(n-2)*(n+2)*((n+1)²-2*(n+1)-2)/6` -/
def P8448535918251250639.Spec : Prop :=
  ∀ n, P8448535918251250639.a n = (A299198 (n + 1) : ℚ)

end A299198

/-! ## A299198.P16481094208206702041

`(n+1)^4/6-2*(n+1)^3/3-(n+1)²/6+5*(n+1)/3+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A299198.P16481094208206702041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℚ) / 6 - (2 * (n + 1) ^ 3 : ℚ) / 3 - ((n + 1) ^ 2 : ℚ) / 6 + (5 * (n + 1) : ℚ) / 3 + 1

end

end A299198.P16481094208206702041

namespace A299198

/-- `(n+1)^4/6-2*(n+1)^3/3-(n+1)²/6+5*(n+1)/3+1` -/
def P16481094208206702041.Spec : Prop :=
  ∀ n, P16481094208206702041.a n = (A299198 (n + 1) : ℚ)

end A299198

/-! ## A299198.P11019129023659576634

`abs(n²-2-A008911(n))`
-/

namespace A299198.P11019129023659576634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - 2 - A008911 n|

end

end A299198.P11019129023659576634

namespace A299198

/-- `abs(n²-2-A008911(n))` -/
def P11019129023659576634.Spec : Prop :=
  ∀ n, P11019129023659576634.a n = A299198 (n + 1)

end A299198

/-! ## A299198.P13192146022667104233

`abs(n-2-(A329523(n)-n²))`
-/

namespace A299198.P13192146022667104233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 2 - (A329523 n - (n ^ 2 : ℤ))|

end

end A299198.P13192146022667104233

namespace A299198

/-- `abs(n-2-(A329523(n)-n²))` -/
def P13192146022667104233.Spec : Prop :=
  ∀ n, P13192146022667104233.a n = A299198 (n + 1)

end A299198

/-! ## A299198.P603648329151988096

`∑[A006331(A028310(n))-A132209(n)]`
-/

namespace A299198.P603648329151988096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (A028310 n).toNat - A132209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299198.P603648329151988096

namespace A299198

/-- `∑[A006331(A028310(n))-A132209(n)]` -/
def P603648329151988096.Spec : Prop :=
  ∀ n, P603648329151988096.a n = A299198 (n + 1)

end A299198

