import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A394200: Expansion of Product_{k>=1} (1 + x^(k*(k+2))) / (1 - x^(k*(k+2))).

The programs for A394200, there is no canonical definition to state claims against.
-/

/-! ## A394200.P1206297521510955326

`A350871(A006739(n))`
-/

namespace A394200.P1206297521510955326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350871 (A006739 n).toNat

end

end A394200.P1206297521510955326

/-! ## A394200.P11805920560858182117

`A390256(A392312(n))`
-/

namespace A394200.P11805920560858182117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390256 (A392312 n).toNat

end

end A394200.P11805920560858182117

/-! ## A394200.P9244090701161544136

`A102669(A307050(n+1))`
-/

namespace A394200.P9244090701161544136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A307050 (n + 1)).toNat

end

end A394200.P9244090701161544136

/-! ## A394200.P2114796820548661201

`A038540(A367222(n)+A326123(n+1))`
-/

namespace A394200.P2114796820548661201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038540 (A367222 n + A326123 (n + 1)).toNat

end

end A394200.P2114796820548661201

/-! ## A394200.P18149685528583839854

`A001221(C(A049318(n+1), A392272(n)))`
-/

namespace A394200.P18149685528583839854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A049318 (n + 1)).toNat (A392272 n).toNat)

end

end A394200.P18149685528583839854

/-!
# A394201: Expansion of Product_{k>=1} (1 + x^(k*(k+5)/2)) / (1 - x^(k*(k+5)/2)).

The programs for A394201, there is no canonical definition to state claims against.
-/

/-! ## A394201.P16828612436536692449

`A083912(A357870(n+1)+A357847(n))`
-/

namespace A394201.P16828612436536692449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (A357870 (n + 1) + A357847 n).toNat

end

end A394201.P16828612436536692449

/-! ## A394201.P10589117294777882186

`A124767(A391961(n))`
-/

namespace A394201.P10589117294777882186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A391961 n).toNat

end

end A394201.P10589117294777882186

/-! ## A394201.P13483458855196874731

`A363887(A068360(n+1)+A056450(n))`
-/

namespace A394201.P13483458855196874731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363887 (A068360 (n + 1) + A056450 n).toNat

end

end A394201.P13483458855196874731

/-! ## A394201.P15912972759045265577

`and(A127237(A092927(n+1)), A127238(n))`
-/

namespace A394201.P15912972759045265577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127237 (A092927 (n + 1)).toNat) (A127238 n)

end

end A394201.P15912972759045265577

/-!
# A394202: Expansion of Product_{k>=1} (1 + x^(k*(2*k+1))) / (1 - x^(k*(2*k+1))).

The programs for A394202, there is no canonical definition to state claims against.
-/

/-! ## A394202.P5695192897643041769

`A280456(2*n+1)*A317994(A304686(3*n+1))`
-/

namespace A394202.P5695192897643041769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280456 (2 * n + 1) * A317994 (A304686 (3 * n + 1)).toNat

end

end A394202.P5695192897643041769

/-! ## A394202.P56851110326968228

`A299090(A335573(2*n+5)^A392273(n))`
-/

namespace A394202.P56851110326968228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (SequenceMachineLib.roundAway ((A335573 (2 * n + 5) : ℚ) ^ (A392273 n : ℤ))).toNat

end

end A394202.P56851110326968228

/-! ## A394202.P13123948983603095225

`A000035(A017996(n))*A320011(n+1)`
-/

namespace A394202.P13123948983603095225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A017996 n).toNat * A320011 (n + 1)

end

end A394202.P13123948983603095225

/-! ## A394202.P12142630570837422912

`A354582(A025854(n)*A342095(2*n+1))`
-/

namespace A394202.P12142630570837422912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (A025854 n * A342095 (2 * n + 1)).toNat

end

end A394202.P12142630570837422912

/-! ## A394202.P15696684175605644249

`A359288(A067929(n+2))`
-/

namespace A394202.P15696684175605644249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (A067929 (n + 2)).toNat

end

end A394202.P15696684175605644249

/-!
# A394205: Expansion of Product_{k>=1} (1 + x^(k*(3*k+1)/2)) / (1 - x^(k*(3*k+1)/2)).

The programs for A394205, there is no canonical definition to state claims against.
-/

/-! ## A394205.P9121134875776522984

`A318465(n+1)%A073751(A005578(n))`
-/

namespace A394205.P9121134875776522984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318465 (n + 1)) (A073751 (A005578 n).toNat)

end

end A394205.P9121134875776522984

/-! ## A394205.P14104386337149873153

`A034444(n+1)%A034444(A269565(n+2))`
-/

namespace A394205.P14104386337149873153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034444 (n + 1)) (A034444 (A269565 (n + 2)).toNat)

end

end A394205.P14104386337149873153

/-! ## A394205.P4685272707281170219

`and(A007310(A020342(n+1)), A034444(n+1))`
-/

namespace A394205.P4685272707281170219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007310 (A020342 (n + 1)).toNat) (A034444 (n + 1))

end

end A394205.P4685272707281170219

/-! ## A394205.P4855349080259736868

`A365171(n+1)%A360009(A389511(n+4))`
-/

namespace A394205.P4855349080259736868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365171 (n + 1)) (A360009 (A389511 (n + 4)).toNat)

end

end A394205.P4855349080259736868

/-! ## A394205.P9388856588949023435

`and(A034444(n+1), A327041(A048049(n+1)))`
-/

namespace A394205.P9388856588949023435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034444 (n + 1)) (A327041 (A048049 (n + 1)).toNat)

end

end A394205.P9388856588949023435

/-!
# A394209: Number of primes p such that 3^(n-1) <= p < 3^n.

The programs for A394209, there is no canonical definition to state claims against.
-/

/-! ## A394209.P14413814358518916974

`Δ[A000720(A104081(n))]`
-/

namespace A394209.P14413814358518916974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394209.P14413814358518916974

/-! ## A394209.P6097821754508098962

`A074990(A000244(n))-A240348(n)`
-/

namespace A394209.P6097821754508098962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074990 (A000244 n).toNat - A240348 n

end

end A394209.P6097821754508098962

/-!
# A394212: Difference set of Mian-Chowla sequence in order of appearance.

The programs for A394212, there is no canonical definition to state claims against.
-/

/-! ## A394212.P11679754330482709082

`A394213(n)+a(n-1)` with `a(0)=1`
-/

namespace A394212.P11679754330482709082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A394213 n + a (n - 1)

end

end A394212.P11679754330482709082

/-!
# A394213: First differences of A394212.

The programs for A394213, there is no canonical definition to state claims against.
-/

/-! ## A394213.P8072745604389163014

`Δ[A394212(n+1)]`
-/

namespace A394213.P8072745604389163014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394213.P8072745604389163014

/-! ## A394213.P7562978158746378565

`A394212(n+2)-A394212(n+1)`
-/

namespace A394213.P7562978158746378565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394212 (n + 2) - A394212 (n + 1)

end

end A394213.P7562978158746378565

/-!
# A394214: Positive elements of A394213.

The programs for A394214, there is no canonical definition to state claims against.
-/

/-! ## A394214.P10702462344192390356

`A025582(n+1)+Δ[A025582(n+2)]`
-/

namespace A394214.P10702462344192390356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 1) + (f1 (n + 1) - f1 n)

end

end A394214.P10702462344192390356

/-! ## A394214.P11229839032308203938

`A394213(∑[n+1])`
-/

namespace A394214.P11229839032308203938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394213 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A394214.P11229839032308203938

/-!
# A394215: Irregular triangle read by rows: a(n,k) is the number of graphs on n nodes with genus k, 0 <= k <= A000933(n).

The programs for A394215, there is no canonical definition to state claims against.
-/

/-! ## A394215.P10402020319872054288

`A294224(A024647(n+1))`
-/

namespace A394215.P10402020319872054288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294224 (A024647 (n + 1)).toNat

end

end A394215.P10402020319872054288

/-! ## A394215.P8894193746200642647

`A294224(A024648(n+1))`
-/

namespace A394215.P8894193746200642647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294224 (A024648 (n + 1)).toNat

end

end A394215.P8894193746200642647

/-! ## A394215.P7262913554751692763

`A294224(A024649(n+1))`
-/

namespace A394215.P7262913554751692763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294224 (A024649 (n + 1)).toNat

end

end A394215.P7262913554751692763

/-!
# A394217: Earliest monotonic sequence satisfying a(1)=1 and a(a(n)+a(n-1))=n for n>=1 (with a(k)=0 for k<=0).

The programs for A394217, the canonical program `A394217.P17364854151603139210` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394217 has offset 1).

The definition of A394217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394217.P9434376327876605000

`∑[char[comp[A004761(2*n+3)]]]`
-/

namespace A394217.P9434376327876605000
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (2 * n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394217.P9434376327876605000

namespace A394217

/-- `∑[char[comp[A004761(2*n+3)]]]` -/
def P9434376327876605000.Spec : Prop :=
  ∀ n, (P9434376327876605000.a n : ℤ) = A394217 (n + 1)

end A394217

/-! ## A394217.P17364854151603139210

`n+1-A060973(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A394217

/-- `n+1-A060973(a(n-1))` -/
def P17364854151603139210.Spec : Prop :=
  ∀ n, P17364854151603139210.a n = A394217 (n + 1)

theorem P17364854151603139210.correct : P17364854151603139210.Spec := by
  intro n
  simp only [A394217, Nat.add_sub_cancel]

end A394217

/-! ## A394217.P13953409248747140083

`A275202(n+1)-A032766(A006165(n+1))`
-/

namespace A394217.P13953409248747140083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275202 (n + 1) - A032766 (A006165 (n + 1)).toNat

end

end A394217.P13953409248747140083

namespace A394217

/-- `A275202(n+1)-A032766(A006165(n+1))` -/
def P13953409248747140083.Spec : Prop :=
  ∀ n, P13953409248747140083.a n = A394217 (n + 1)

end A394217

/-! ## A394217.P3993436603459018687

`A263997(A080645(n+1))`
-/

namespace A394217.P3993436603459018687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (A080645 (n + 1)).toNat

end

end A394217.P3993436603459018687

namespace A394217

/-- `A263997(A080645(n+1))` -/
def P3993436603459018687.Spec : Prop :=
  ∀ n, P3993436603459018687.a n = A394217 (n + 1)

end A394217

/-! ## A394217.P8859784443526386343

`A110654(A166079(n+2)+n)`
-/

namespace A394217.P8859784443526386343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A166079 (n + 2) + (n : ℤ)).toNat

end

end A394217.P8859784443526386343

namespace A394217

/-- `A110654(A166079(n+2)+n)` -/
def P8859784443526386343.Spec : Prop :=
  ∀ n, P8859784443526386343.a n = A394217 (n + 1)

end A394217

/-! ## A394217.P5229253992960287053

`A110654(A275202(n+1)-A053646(n+1))`
-/

namespace A394217.P5229253992960287053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A275202 (n + 1) - A053646 (n + 1)).toNat

end

end A394217.P5229253992960287053

namespace A394217

/-- `A110654(A275202(n+1)-A053646(n+1))` -/
def P5229253992960287053.Spec : Prop :=
  ∀ n, P5229253992960287053.a n = A394217 (n + 1)

end A394217

/-! ## A394217.P10902926564312107724

`A004526(A016777(n+1)-A275202(n+1))`
-/

namespace A394217.P10902926564312107724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A016777 (n + 1) - A275202 (n + 1)).toNat

end

end A394217.P10902926564312107724

namespace A394217

/-- `A004526(A016777(n+1)-A275202(n+1))` -/
def P10902926564312107724.Spec : Prop :=
  ∀ n, P10902926564312107724.a n = A394217 (n + 1)

end A394217

/-! ## A394217.P17040547628005138447

`A110654(A110654(2*(n+1))+2*(n+1)-A275202(n+1))`
-/

namespace A394217.P17040547628005138447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 (2 * (n + 1)) + ((2 * (n + 1) : ℤ) - A275202 (n + 1))).toNat

end

end A394217.P17040547628005138447

namespace A394217

/-- `A110654(A110654(2*(n+1))+2*(n+1)-A275202(n+1))` -/
def P17040547628005138447.Spec : Prop :=
  ∀ n, P17040547628005138447.a n = A394217 (n + 1)

end A394217

/-! ## A394217.P15262355540157923854

`A060973(n+1)+A006165(A246552(2*(n+1)))`
-/

namespace A394217.P15262355540157923854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (n + 1) + A006165 (A246552 (2 * (n + 1))).toNat

end

end A394217.P15262355540157923854

namespace A394217

/-- `A060973(n+1)+A006165(A246552(2*(n+1)))` -/
def P15262355540157923854.Spec : Prop :=
  ∀ n, P15262355540157923854.a n = A394217 (n + 1)

end A394217

/-! ## A394217.P16663569606153665536

`A065033(lt[2, A342242(2*n)])`
-/

namespace A394217.P16663569606153665536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A394217.P16663569606153665536

namespace A394217

/-- `A065033(lt[2, A342242(2*n)])` -/
def P16663569606153665536.Spec : Prop :=
  ∀ n, P16663569606153665536.a n = A394217 (n + 1)

end A394217

/-!
# A394218: Earliest monotonic sequence satisfying a(1)=1 and a(a(n)+a(n-1)+a(n-2)) = n for n>=1 (with a(k)=0 for k<=0).

The programs for A394218, there is no canonical definition to state claims against.
-/

/-! ## A394218.P14976933435319874165

`∑[A135136(Δ[A248478(n+2)²+n])]`
-/

namespace A394218.P14976933435319874165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248478 (n + 2) ^ 2 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135136 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394218.P14976933435319874165

/-!
# A394219: Earliest monotonic sequence satisfying a(1)=1 and a(a(n)+a(n-1)+a(n-2)+a(n-3)) = n for n>=1 (with a(k)=0 for k<=0).

The programs for A394219, there is no canonical definition to state claims against.
-/

/-! ## A394219.P17847415610050521746

`∑[A000035(∑[A091239(n+1)])]`
-/

namespace A394219.P17847415610050521746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091239 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394219.P17847415610050521746

/-! ## A394219.P11813617165191839081

`A110656(A360556(3*(n+1))+A010060(n))`
-/

namespace A394219.P11813617165191839081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A360556 (3 * (n + 1)) + A010060 n).toNat

end

end A394219.P11813617165191839081

/-! ## A394219.P6903261177921466146

`A073458(∑[A219035(n+1)+1])+1`
-/

namespace A394219.P6903261177921466146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219035 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073458 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A394219.P6903261177921466146

/-!
# A394221: a(n) is the maximum size of a set family F on {1, 2, ..., n} such that for any pair of distinct sets S, T in F, there exists s in S and t in T such that |s - t| = 1.

The programs for A394221, there is no canonical definition to state claims against.
-/

/-! ## A394221.P7769215445198381650

`round(sqrt(A350473(n+1)))`
-/

namespace A394221.P7769215445198381650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A350473 (n + 1) : ℝ))

end

end A394221.P7769215445198381650

/-! ## A394221.P13622642205016121659

`A195182(A175657(n))`
-/

namespace A394221.P13622642205016121659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195182 (A175657 n).toNat

end

end A394221.P13622642205016121659

/-! ## A394221.P14139513063978099443

`A324540(A136298(n))`
-/

namespace A394221.P14139513063978099443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324540 (A136298 n).toNat

end

end A394221.P14139513063978099443

/-!
# A394222: a(n) = n * gcd(5, n).

The programs for A394222, the canonical program `A394222.P9982478139255054001` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394222 has offset 1).

The definition of A394222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*gcd(5, n+1)` (program `A394222.P9982478139255054001`, by `A394222.P9982478139255054001.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394222.P9982478139255054001

`(n+1)*gcd(5, n+1)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394222

/-- `(n+1)*gcd(5, n+1)` -/
def P9982478139255054001.Spec : Prop :=
  ∀ n, (P9982478139255054001.a n : ℤ) = A394222 (n + 1)

theorem P9982478139255054001.correct : P9982478139255054001.Spec := by
  intro n
  simp only [A394222, Nat.add_sub_cancel]

end A394222

/-! ## A394222.P14277409261161987368

`(n+1)*A109009(n+1)`
-/

namespace A394222.P14277409261161987368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A109009 (n + 1)

end

end A394222.P14277409261161987368

namespace A394222

/-- `(n+1)*A109009(n+1)` -/
def P14277409261161987368.Spec : Prop :=
  ∀ n, P14277409261161987368.a n = A394222 (n + 1)

end A394222

/-! ## A394222.P17213844713941885168

`gcd(n^5+1, (n+1)²)`
-/

namespace A394222.P17213844713941885168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 5 + 1) ((n + 1) ^ 2)

end

end A394222.P17213844713941885168

namespace A394222

/-- `gcd(n^5+1, (n+1)²)` -/
def P17213844713941885168.Spec : Prop :=
  ∀ n, (P17213844713941885168.a n : ℤ) = A394222 (n + 1)

end A394222

/-! ## A394222.P16589887628438830614

`6*(n+1)-lcm(5, n+1)`
-/

namespace A394222.P16589887628438830614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - (Nat.lcm 5 (n + 1) : ℤ)

end

end A394222.P16589887628438830614

namespace A394222

/-- `6*(n+1)-lcm(5, n+1)` -/
def P16589887628438830614.Spec : Prop :=
  ∀ n, P16589887628438830614.a n = A394222 (n + 1)

end A394222

/-! ## A394222.P653019142502646537

`(n+1)²/A060791(n+1)`
-/

namespace A394222.P653019142502646537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A060791 (n + 1) : ℚ)

end

end A394222.P653019142502646537

namespace A394222

/-- `(n+1)²/A060791(n+1)` -/
def P653019142502646537.Spec : Prop :=
  ∀ n, P653019142502646537.a n = (A394222 (n + 1) : ℚ)

end A394222

/-! ## A394222.P9515599082025309685

`(n+1)*(2-A291568(n+1))`
-/

namespace A394222.P9515599082025309685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A291568 (n + 1))

end

end A394222.P9515599082025309685

namespace A394222

/-- `(n+1)*(2-A291568(n+1))` -/
def P9515599082025309685.Spec : Prop :=
  ∀ n, P9515599082025309685.a n = A394222 (n + 1)

end A394222

/-! ## A394222.P2654560288797455236

`(n+1)*A355582(A170825(n+1))`
-/

namespace A394222.P2654560288797455236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A355582 (A170825 (n + 1)).toNat

end

end A394222.P2654560288797455236

namespace A394222

/-- `(n+1)*A355582(A170825(n+1))` -/
def P2654560288797455236.Spec : Prop :=
  ∀ n, P2654560288797455236.a n = A394222 (n + 1)

end A394222

/-! ## A394222.P2736894035769943384

`(n+1)*A089086(2*(n+1))`
-/

namespace A394222.P2736894035769943384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A089086 (2 * (n + 1))

end

end A394222.P2736894035769943384

namespace A394222

/-- `(n+1)*A089086(2*(n+1))` -/
def P2736894035769943384.Spec : Prop :=
  ∀ n, P2736894035769943384.a n = A394222 (n + 1)

end A394222

/-! ## A394222.P1717971994226565319

`A051724(A385557(n+1))`
-/

namespace A394222.P1717971994226565319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A385557 (n + 1)).toNat

end

end A394222.P1717971994226565319

namespace A394222

/-- `A051724(A385557(n+1))` -/
def P1717971994226565319.Spec : Prop :=
  ∀ n, P1717971994226565319.a n = A394222 (n + 1)

end A394222

/-!
# A394223: a(n) = n * gcd(7, n).

The programs for A394223, the canonical program `A394223.P6208972729423307326` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394223 has offset 1).

The definition of A394223 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*gcd(7, n+1)` (program `A394223.P6208972729423307326`, by `A394223.P6208972729423307326.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394223.P6208972729423307326

`(n+1)*gcd(7, n+1)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394223

/-- `(n+1)*gcd(7, n+1)` -/
def P6208972729423307326.Spec : Prop :=
  ∀ n, (P6208972729423307326.a n : ℤ) = A394223 (n + 1)

theorem P6208972729423307326.correct : P6208972729423307326.Spec := by
  intro n
  simp only [A394223, Nat.add_sub_cancel]

end A394223

/-! ## A394223.P17035833959299900754

`(n+1)*A109010(n+1)`
-/

namespace A394223.P17035833959299900754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A109010 (n + 1)

end

end A394223.P17035833959299900754

namespace A394223

/-- `(n+1)*A109010(n+1)` -/
def P17035833959299900754.Spec : Prop :=
  ∀ n, P17035833959299900754.a n = A394223 (n + 1)

end A394223

/-! ## A394223.P13068176388419688302

`8*(n+1)-lcm(7, n+1)`
-/

namespace A394223.P13068176388419688302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) - (Nat.lcm 7 (n + 1) : ℤ)

end

end A394223.P13068176388419688302

namespace A394223

/-- `8*(n+1)-lcm(7, n+1)` -/
def P13068176388419688302.Spec : Prop :=
  ∀ n, P13068176388419688302.a n = A394223 (n + 1)

end A394223

/-! ## A394223.P8892301370560676841

`gcd(n²²²+n, (n+1)²)`
-/

namespace A394223.P8892301370560676841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (((n ^ 2) ^ 2) ^ 2 + n) ((n + 1) ^ 2)

end

end A394223.P8892301370560676841

namespace A394223

/-- `gcd(n²²²+n, (n+1)²)` -/
def P8892301370560676841.Spec : Prop :=
  ∀ n, (P8892301370560676841.a n : ℤ) = A394223 (n + 1)

end A394223

/-! ## A394223.P15718719715594193098

`(n+1)²/A106608(n+1)`
-/

namespace A394223.P15718719715594193098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A106608 (n + 1) : ℚ)

end

end A394223.P15718719715594193098

namespace A394223

/-- `(n+1)²/A106608(n+1)` -/
def P15718719715594193098.Spec : Prop :=
  ∀ n, P15718719715594193098.a n = (A394223 (n + 1) : ℚ)

end A394223

/-! ## A394223.P7749015578213223976

`(n+1)*(2-A291578(n+1))`
-/

namespace A394223.P7749015578213223976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A291578 (n + 1))

end

end A394223.P7749015578213223976

namespace A394223

/-- `(n+1)*(2-A291578(n+1))` -/
def P7749015578213223976.Spec : Prop :=
  ∀ n, P7749015578213223976.a n = A394223 (n + 1)

end A394223

/-! ## A394223.P17433955907305372704

`(n+1)*A089129(2*(n+1))`
-/

namespace A394223.P17433955907305372704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A089129 (2 * (n + 1))

end

end A394223.P17433955907305372704

namespace A394223

/-- `(n+1)*A089129(2*(n+1))` -/
def P17433955907305372704.Spec : Prop :=
  ∀ n, P17433955907305372704.a n = A394223 (n + 1)

end A394223

/-!
# A394227: Positive integers whose decimal digits are 2, 3, or 6, and that are divisible by the product of their digits.

The programs for A394227, there is no canonical definition to state claims against.
-/

/-! ## A394227.P11633020808550774087

`A023675(n+2)*A080616(A371965(n))`
-/

namespace A394227.P11633020808550774087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023675 (n + 2) * A080616 (A371965 n).toNat

end

end A394227.P11633020808550774087

/-!
# A394231: Expansion of 1 / sqrt(1 - 10*x + 17*x^2).

The programs for A394231, the canonical program `A394231.P1695926774520394941` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394231 has offset 0).

The definition of A394231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394231.P1695926774520394941

`(5*(2*n-1)*a(n-1)-17*(n-1)*a(n-2))/n` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394231

/-- `(5*(2*n-1)*a(n-1)-17*(n-1)*a(n-2))/n` -/
def P1695926774520394941.Spec : Prop :=
  ∀ n, P1695926774520394941.a n = (A394231 n : ℚ)

end A394231

/-!
# A394232: Expansion of 1 / sqrt(1 - 12*x + 28*x^2).

The programs for A394232, the canonical program `A394232.P9178413718657827253` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394232 has offset 0).

The definition of A394232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394232.P9178413718657827253

`(6*(2*n-1)*a(n-1)-28*(n-1)*a(n-2))/n` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394232

/-- `(6*(2*n-1)*a(n-1)-28*(n-1)*a(n-2))/n` -/
def P9178413718657827253.Spec : Prop :=
  ∀ n, P9178413718657827253.a n = (A394232 n : ℚ)

end A394232

/-!
# A394233: Expansion of 1 / sqrt(1 - 14*x + 41*x^2).

The programs for A394233, the canonical program `A394233.P1193346871535408783` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394233 has offset 0).

The definition of A394233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394233.P1193346871535408783

`(7*(2*n-1)*a(n-1)-41*(n-1)*a(n-2))/n` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394233

/-- `(7*(2*n-1)*a(n-1)-41*(n-1)*a(n-2))/n` -/
def P1193346871535408783.Spec : Prop :=
  ∀ n, P1193346871535408783.a n = (A394233 n : ℚ)

end A394233

/-!
# A394236: Number of circular parking functions of length n avoiding the pattern 123.

The programs for A394236, there is no canonical definition to state claims against.
-/

/-! ## A394236.P3543450350536571954

`A023190(A363109(n))`
-/

namespace A394236.P3543450350536571954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A363109 n).toNat

end

end A394236.P3543450350536571954

/-! ## A394236.P12834509418901163648

`∑[A287732(A067336(n+1)+1)]`
-/

namespace A394236.P12834509418901163648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287732 (A067336 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394236.P12834509418901163648

/-!
# A394237: Number of circular parking functions of length n avoiding the pattern 122.

The programs for A394237, there is no canonical definition to state claims against.
-/

/-! ## A394237.P5084906366384223807

`ceil(A000262(n)/A028310(n))`
-/

namespace A394237.P5084906366384223807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000262 n : ℚ) / (A028310 n : ℚ)⌉

end

end A394237.P5084906366384223807

/-! ## A394237.P15852407905336753001

`A350267(A346698(ceil(2^(2*n-1))))+1`
-/

namespace A394237.P15852407905336753001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350267 (A346698 ⌈(2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)⌉.toNat).toNat + 1

end

end A394237.P15852407905336753001

/-! ## A394237.P17767276291153792200

`A350267(A346700(ceil(2^(2*n-1))))+1`
-/

namespace A394237.P17767276291153792200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350267 (A346700 ⌈(2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)⌉.toNat).toNat + 1

end

end A394237.P17767276291153792200

/-!
# A394238: Number of circular parking functions of length n avoiding the pattern 111.

The programs for A394238, there is no canonical definition to state claims against.
-/

/-! ## A394238.P8068407508911151424

`A365591(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A394238.P8068407508911151424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A365591 (a (n - 1)).toNat

end

end A394238.P8068407508911151424

/-!
# A394239: Expansion of e.g.f. exp(-LambertW(LambertW(-LambertW(x)))).

The programs for A394239, there is no canonical definition to state claims against.
-/

/-! ## A394239.P10612757144733996511

`A260432(n!²)`
-/

namespace A394239.P10612757144733996511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260432 (Nat.factorial n ^ 2)

end

end A394239.P10612757144733996511

/-!
# A394240: Number of regions formed by extending the faces of a regular n-gonal pyramid.

The programs for A394240, the canonical program `A394240.P15634924062511509081` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394240 has offset 3).

The definition of A394240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394240.P15634924062511509081

`A241199(n+1)+A194073(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A394240

/-- `A241199(n+1)+A194073(n+1)` -/
def P15634924062511509081.Spec : Prop :=
  ∀ n, P15634924062511509081.a n = A394240 (n + 3)

theorem P15634924062511509081.correct : P15634924062511509081.Spec := by
  intro n
  simp only [A394240, Nat.add_sub_cancel]

end A394240

/-! ## A394240.P6889373045256714102

`A191967(n+3)+3`
-/

namespace A394240.P6889373045256714102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191967 (n + 3) + 3

end

end A394240.P6889373045256714102

namespace A394240

/-- `A191967(n+3)+3` -/
def P6889373045256714102.Spec : Prop :=
  ∀ n, P6889373045256714102.a n = A394240 (n + 3)

end A394240

/-!
# A394245: a(n) = a(n-1) + a(n-3) + a(n-4), a(0) = 1, a(1) = 10, a(2) = 100, a(3) = 110.

The programs for A394245, the canonical program `A394245.P1804355167414229738` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394245 has offset 0).

The definition of A394245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A394245.P1804355167414229738`, by `A394245.P1804355167414229738.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394245.P1804355167414229738

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=10, a(2)=100, a(3)=110`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394245

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P1804355167414229738.Spec : Prop :=
  ∀ n, (P1804355167414229738.a n : ℤ) = A394245 n

theorem P1804355167414229738.correct : P1804355167414229738.Spec := by
  intro n
  simp only [A394245]

end A394245

/-!
# A394246: Upper (1/3,2/3) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

The programs for A394246, the canonical program `A394246.P12221301581339972486` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394246 has offset 0).

The definition of A394246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394246.P12221301581339972486

`ceil(A397107(n)/3)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A394246

/-- `ceil(A397107(n)/3)` -/
def P12221301581339972486.Spec : Prop :=
  ∀ n, P12221301581339972486.a n = A394246 n

theorem P12221301581339972486.correct : P12221301581339972486.Spec := by
  intro n
  simp only [A394246]

end A394246

/-! ## A394246.P7939454251174065285

`A000982(n)-A396834(n)`
-/

namespace A394246.P7939454251174065285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - A396834 n

end

end A394246.P7939454251174065285

namespace A394246

/-- `A000982(n)-A396834(n)` -/
def P7939454251174065285.Spec : Prop :=
  ∀ n, P7939454251174065285.a n = A394246 n

end A394246

/-! ## A394246.P9285044886099592931

`A260708(n)-A198442(n+1)`
-/

namespace A394246.P9285044886099592931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260708 n - A198442 (n + 1)

end

end A394246.P9285044886099592931

namespace A394246

/-- `A260708(n)-A198442(n+1)` -/
def P9285044886099592931.Spec : Prop :=
  ∀ n, P9285044886099592931.a n = A394246 n

end A394246

/-! ## A394246.P14097562348745141027

`A008794(n+1)+A008794(n)-A396834(n)`
-/

namespace A394246.P14097562348745141027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (n + 1) + (A008794 n - A396834 n)

end

end A394246.P14097562348745141027

namespace A394246

/-- `A008794(n+1)+A008794(n)-A396834(n)` -/
def P14097562348745141027.Spec : Prop :=
  ∀ n, P14097562348745141027.a n = A394246 n

end A394246

/-! ## A394246.P18182118845916732146

`A036407(A007494(n))`
-/

namespace A394246.P18182118845916732146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036407 (A007494 n).toNat

end

end A394246.P18182118845916732146

namespace A394246

/-- `A036407(A007494(n))` -/
def P18182118845916732146.Spec : Prop :=
  ∀ n, P18182118845916732146.a n = A394246 n

end A394246

/-!
# A394247: Maximum number of parts i with multiplicity i possible in a partition of n.

The programs for A394247, there is no canonical definition to state claims against.
-/

/-! ## A394247.P15100105498780897883

`A328806(n)-1`
-/

namespace A394247.P15100105498780897883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328806 n - 1

end

end A394247.P15100105498780897883

/-! ## A394247.P9198950091307553125

`A200748(n)%A328806(n)`
-/

namespace A394247.P9198950091307553125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A328806 n)

end

end A394247.P9198950091307553125

/-! ## A394247.P7945078838948614490

`A058197(n+1)%A328806(n)`
-/

namespace A394247.P7945078838948614490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A328806 n)

end

end A394247.P7945078838948614490

/-! ## A394247.P12138003325051066366

`A117010(n+1)%A328806(n)`
-/

namespace A394247.P12138003325051066366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A328806 n)

end

end A394247.P12138003325051066366

/-! ## A394247.P4110347891460927503

`A083800(n+1)%A328806(n)`
-/

namespace A394247.P4110347891460927503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A328806 n)

end

end A394247.P4110347891460927503

/-! ## A394247.P4393424839573536196

`A070198(n)%A328806(n)`
-/

namespace A394247.P4393424839573536196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A328806 n)

end

end A394247.P4393424839573536196

/-! ## A394247.P11055694425218904493

`A079782(n+1)%A328806(n)`
-/

namespace A394247.P11055694425218904493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A328806 n)

end

end A394247.P11055694425218904493

/-! ## A394247.P12161854608133201728

`A083685(n+1)%A328806(n)`
-/

namespace A394247.P12161854608133201728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A328806 n)

end

end A394247.P12161854608133201728

/-! ## A394247.P16980679985356949021

`A121934(n+1)%A328806(n)`
-/

namespace A394247.P16980679985356949021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A328806 n)

end

end A394247.P16980679985356949021

/-! ## A394247.P12269064464468095747

`A030494(n+1)%A328806(n)`
-/

namespace A394247.P12269064464468095747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A328806 n)

end

end A394247.P12269064464468095747

/-! ## A394247.P5433965627067099188

`A072828(n+1)%A328806(n)`
-/

namespace A394247.P5433965627067099188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A328806 n)

end

end A394247.P5433965627067099188

/-! ## A394247.P918738261538387027

`A198277(n)%A328806(n)`
-/

namespace A394247.P918738261538387027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A328806 n)

end

end A394247.P918738261538387027

/-!
# A394250: Number of partitions p of n such that (maximal multiplicity of the parts of p) <= 2 * (number of distinct parts of p).

The programs for A394250, there is no canonical definition to state claims against.
-/

/-! ## A394250.P14394774700899720267

`A251629(A173599(n))`
-/

namespace A394250.P14394774700899720267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251629 (A173599 n).toNat

end

end A394250.P14394774700899720267

/-! ## A394250.P16600707818726273623

`xor(A054923(A156077(n+1)), A381996(n+1))`
-/

namespace A394250.P16600707818726273623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054923 (A156077 (n + 1)).toNat) (A381996 (n + 1))

end

end A394250.P16600707818726273623

/-! ## A394250.P9141193853553553996

`A003002(A024367(n+1))`
-/

namespace A394250.P9141193853553553996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A024367 (n + 1)).toNat

end

end A394250.P9141193853553553996

/-! ## A394250.P4545337226412964423

`A325858(n)-A060950(A000105(n))`
-/

namespace A394250.P4545337226412964423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325858 n - A060950 (A000105 n).toNat

end

end A394250.P4545337226412964423

/-!
# A394251: Number of partitions p of n such that (maximal multiplicity of the parts of p) <= 3 * (number of distinct parts of p).

The programs for A394251, there is no canonical definition to state claims against.
-/

/-! ## A394251.P8575053134063519974

`A111654(A091360(n))`
-/

namespace A394251.P8575053134063519974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A091360 n).toNat

end

end A394251.P8575053134063519974

/-! ## A394251.P2757056340280040702

`A204164(A202086(n+2))`
-/

namespace A394251.P2757056340280040702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A202086 (n + 2)).toNat

end

end A394251.P2757056340280040702

/-! ## A394251.P9012168766726146891

`A333193(n)%A376684(3*n+4)-A168324(A003114(n))`
-/

namespace A394251.P9012168766726146891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333193 n) (A376684 (3 * n + 4)) - A168324 (A003114 n).toNat

end

end A394251.P9012168766726146891

/-!
# A394252: a(1)=1; for n>1, a(n) is the smallest integer greater than a(n-1) that cannot be written as the sum of exactly n-1 elements from {a(1),...,a(n-1)}, repetition allowed.

The programs for A394252, there is no canonical definition to state claims against.
-/

/-! ## A394252.P8686550503761382618

`A277121(A217730(n))`
-/

namespace A394252.P8686550503761382618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277121 (A217730 n).toNat

end

end A394252.P8686550503761382618

/-!
# A394255: The sum of infinitary divisors of n that are numbers whose prime factorization exponents are all powers of 2 (A138302).

The programs for A394255, there is no canonical definition to state claims against.
-/

/-! ## A394255.P3288518167481658310

`A049417(n+1)%A000010(A139204(n+1))`
-/

namespace A394255.P3288518167481658310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049417 (n + 1)) (A000010 (A139204 (n + 1)).toNat)

end

end A394255.P3288518167481658310

/-! ## A394255.P15196271911611720206

`A034448(n+1)-A000122(A210040(3*n+4))`
-/

namespace A394255.P15196271911611720206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A000122 (A210040 (3 * n + 4)).toNat

end

end A394255.P15196271911611720206

/-! ## A394255.P12810827673284394763

`A324706(n+1)%A324717(A324689(3*(n+1)))`
-/

namespace A394255.P12810827673284394763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324706 (n + 1)) (A324717 (A324689 (3 * (n + 1))).toNat)

end

end A394255.P12810827673284394763

/-! ## A394255.P2152584316362777049

`A034448(n+1)-A000122(A001060(n))`
-/

namespace A394255.P2152584316362777049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A000122 (A001060 n).toNat

end

end A394255.P2152584316362777049

/-! ## A394255.P893472505910946384

`A034448(n+1)-A000122(A002778(n+3))`
-/

namespace A394255.P893472505910946384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A000122 (A002778 (n + 3)).toNat

end

end A394255.P893472505910946384

/-!
# A394256: Exponentially odd numbers whose maximum exponent in their prime factorization is congruent to 1 mod 4.

The programs for A394256, there is no canonical definition to state claims against.
-/

/-! ## A394256.P627401081925431197

`A390440(n+2)%A227650(A250122(n))`
-/

namespace A394256.P627401081925431197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390440 (n + 2)) (A227650 (A250122 n).toNat)

end

end A394256.P627401081925431197

/-! ## A394256.P8230654741916509678

`eq[24, A000118(∑{d}[n^3, ceil(1/#)])]`
-/

namespace A394256.P8230654741916509678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (∑ d ∈ Nat.divisors (f3 n), ⌈1 / (d : ℚ)⌉).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A394256.P8230654741916509678

/-! ## A394256.P16025951585017936587

`A097448(A390440(n+2))`
-/

namespace A394256.P16025951585017936587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A390440 (n + 2)).toNat

end

end A394256.P16025951585017936587

/-! ## A394256.P7888811487916155995

`filter[A333638(n+2), A353519(#)]`
-/

namespace A394256.P7888811487916155995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333638 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A394256.P7888811487916155995

/-! ## A394256.P104181943753907788

`∩[A028785(n+1), A390440(n+1)]`
-/

namespace A394256.P104181943753907788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394256.P104181943753907788

/-!
# A394258: Largest prime less than the n-th prime-complete number.

The programs for A394258, there is no canonical definition to state claims against.
-/

/-! ## A394258.P8390997714356727242

`A307701(A158384(n+1))`
-/

namespace A394258.P8390997714356727242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307701 (A158384 (n + 1)).toNat

end

end A394258.P8390997714356727242

/-! ## A394258.P2595303245422267144

`A156724(A393096(n+1))`
-/

namespace A394258.P2595303245422267144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A393096 (n + 1)).toNat

end

end A394258.P2595303245422267144

/-! ## A394258.P14684663291823875861

`A341628(A261929(n+2))`
-/

namespace A394258.P14684663291823875861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341628 (A261929 (n + 2)).toNat

end

end A394258.P14684663291823875861

/-!
# A394261: Expansion of Product_{k>=1} (1 + x^(2*k^2+1)) / (1 - x^(2*k^2+1)).

The programs for A394261, there is no canonical definition to state claims against.
-/

/-! ## A394261.P2003717435632149975

`A113971(A267318(n+1))`
-/

namespace A394261.P2003717435632149975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113971 (A267318 (n + 1)).toNat

end

end A394261.P2003717435632149975

/-! ## A394261.P5350869891089230803

`A001221(A325860(n+2))*A341793(n)`
-/

namespace A394261.P5350869891089230803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A325860 (n + 2)).toNat * A341793 (n + 10)

end

end A394261.P5350869891089230803

/-! ## A394261.P14708654579778953303

`A132399(A075082(n+1))*A341775(n+4)`
-/

namespace A394261.P14708654579778953303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132399 (A075082 (n + 1)).toNat * A341775 (n + 4)

end

end A394261.P14708654579778953303

/-! ## A394261.P7317849669440526196

`A028637(A022352(n))`
-/

namespace A394261.P7317849669440526196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028637 (A022352 n).toNat

end

end A394261.P7317849669440526196

/-! ## A394261.P16444978691452693639

`A282691(A077958(n))`
-/

namespace A394261.P16444978691452693639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282691 (A077958 n).toNat

end

end A394261.P16444978691452693639

/-!
# A394265: Positive integers k for which the Chebyshev distance between the vector of proportions of the first k decimal digits of Pi and the uniform distribution (1/10, ..., 1/10) sets a new minimum.

The programs for A394265, there is no canonical definition to state claims against.
-/

/-! ## A394265.P4105475379773767749

`∑[A340596(A282264(n)²)]`
-/

namespace A394265.P4105475379773767749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340596 (A282264 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394265.P4105475379773767749

/-! ## A394265.P13649786193388602857

`∑[A033630(record[A120231(3*n+2)])]`
-/

namespace A394265.P13649786193388602857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120231 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394265.P13649786193388602857

/-! ## A394265.P16231918944500921189

`∑[A066636(A180282(n+2)+n+1)]`
-/

namespace A394265.P16231918944500921189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (A180282 (n + 2) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394265.P16231918944500921189

/-!
# A394266: Number of induced cubes in the n-odd graph.

The programs for A394266, the canonical program `A394266.P11615888605151437702` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394266 has offset 1).

The definition of A394266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394266.P11615888605151437702

`Δ[n²]*A189176(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A394266

/-- `Δ[n²]*A189176(n)` -/
def P11615888605151437702.Spec : Prop :=
  ∀ n, P11615888605151437702.a n = A394266 (n + 1)

theorem P11615888605151437702.correct : P11615888605151437702.Spec := by
  intro n
  simp only [A394266, Nat.add_sub_cancel]

end A394266

/-! ## A394266.P12964867946681360095

`A165205(n)+A005430(n)`
-/

namespace A394266.P12964867946681360095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165205 n + A005430 n

end

end A394266.P12964867946681360095

namespace A394266

/-- `A165205(n)+A005430(n)` -/
def P12964867946681360095.Spec : Prop :=
  ∀ n, P12964867946681360095.a n = A394266 (n + 1)

end A394266

/-! ## A394266.P15371255825536332576

`A110609(n)+A026619(n+1)`
-/

namespace A394266.P15371255825536332576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110609 n + A026619 (n + 1)

end

end A394266.P15371255825536332576

namespace A394266

/-- `A110609(n)+A026619(n+1)` -/
def P15371255825536332576.Spec : Prop :=
  ∀ n, P15371255825536332576.a n = A394266 (n + 1)

end A394266

/-! ## A394266.P12810698775825567746

`A295934(n+1)-A373565(n)`
-/

namespace A394266.P12810698775825567746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295934 (n + 1) - A373565 n

end

end A394266.P12810698775825567746

namespace A394266

/-- `A295934(n+1)-A373565(n)` -/
def P12810698775825567746.Spec : Prop :=
  ∀ n, P12810698775825567746.a n = A394266 (n + 1)

theorem P12810698775825567746.correct : P12810698775825567746.Spec := by
  intro n
  simp only [A394266, Nat.add_sub_cancel, A394266.P12810698775825567746.a, A394266.P11615888605151437702.f1, A394266.P11615888605151437702.a, A189176, A189176.P2914353405765729826.a, A295934, A295934.P14483957444416556349.a, A373565, A373565.P16782235386161217431.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A394266

/-! ## A394266.P3943626108483176671

`A001700(n+1)/A230585(n+1)*A001700(n)`
-/

namespace A394266.P3943626108483176671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001700 (n + 1) : ℚ) / (A230585 (n + 1) : ℚ) * (A001700 n : ℚ)

end

end A394266.P3943626108483176671

namespace A394266

/-- `A001700(n+1)/A230585(n+1)*A001700(n)` -/
def P3943626108483176671.Spec : Prop :=
  ∀ n, P3943626108483176671.a n = (A394266 (n + 1) : ℚ)

end A394266

/-! ## A394266.P6280898732295489113

`floor((n+3)*C(2*n+1, n)/2)`
-/

namespace A394266.P6280898732295489113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) * ((Nat.choose (2 * n + 1) n : ℚ) / 2)⌋

end

end A394266.P6280898732295489113

namespace A394266

/-- `floor((n+3)*C(2*n+1, n)/2)` -/
def P6280898732295489113.Spec : Prop :=
  ∀ n, P6280898732295489113.a n = A394266 (n + 1)

end A394266

/-! ## A394266.P8792852966928674198

`A092443(n+1)/A178815(n+1)`
-/

namespace A394266.P8792852966928674198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092443 (n + 1) : ℚ) / (A178815 (n + 1) : ℚ)

end

end A394266.P8792852966928674198

namespace A394266

/-- `A092443(n+1)/A178815(n+1)` -/
def P8792852966928674198.Spec : Prop :=
  ∀ n, P8792852966928674198.a n = (A394266 (n + 1) : ℚ)

end A394266

/-!
# A394268: a(0) = 1; a(n) = Sum_{k=0..n-1} (-1)^(n-k-1) * binomial(n,k) * (k+2)^(2*(n-k)) * a(k).

The programs for A394268, there is no canonical definition to state claims against.
-/

/-! ## A394268.P6162896123003982114

`A082169(∑[n+1]+n)`
-/

namespace A394268.P6162896123003982114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082169 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A394268.P6162896123003982114

/-! ## A394268.P14217440174903612246

`A103240(∑[n+1]+2)`
-/

namespace A394268.P14217440174903612246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103240 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A394268.P14217440174903612246

/-!
# A394269: Number of induced cubes in the n-polygon diagonal intersection graph.

The programs for A394269, there is no canonical definition to state claims against.
-/

/-! ## A394269.P7468488005576540473

`A213373(A058696(n))+A000041(2*(n+2))`
-/

namespace A394269.P7468488005576540473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213373 (A058696 n).toNat + A000041 (2 * (n + 2))

end

end A394269.P7468488005576540473

/-!
# A394270: a(n) = binomial(5*n+2,n).

The programs for A394270, the canonical program `A394270.P250688662164372602` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394270 has offset 0).

The definition of A394270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*n+2, n)` (program `A394270.P250688662164372602`, by `A394270.P250688662164372602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394270.P250688662164372602

`C(5*n+2, n)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394270

/-- `C(5*n+2, n)` -/
def P250688662164372602.Spec : Prop :=
  ∀ n, (P250688662164372602.a n : ℤ) = A394270 n

theorem P250688662164372602.correct : P250688662164372602.Spec := by
  intro n
  simp only [A394270]

end A394270

/-! ## A394270.P9037976201287142283

`A051052(A016873(n))`
-/

namespace A394270.P9037976201287142283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051052 (A016873 n).toNat

end

end A394270.P9037976201287142283

namespace A394270

/-- `A051052(A016873(n))` -/
def P9037976201287142283.Spec : Prop :=
  ∀ n, P9037976201287142283.a n = A394270 n

end A394270

/-! ## A394270.P17686797186440230461

`A338995(∑[4*n])`
-/

namespace A394270.P17686797186440230461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338995 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A394270.P17686797186440230461

namespace A394270

/-- `A338995(∑[4*n])` -/
def P17686797186440230461.Spec : Prop :=
  ∀ n, P17686797186440230461.a n = A394270 n

end A394270

/-! ## A394270.P1316683724788030052

`A119301(2*(n+1)²)`
-/

namespace A394270.P1316683724788030052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 (2 * (n + 1) ^ 2)

end

end A394270.P1316683724788030052

namespace A394270

/-- `A119301(2*(n+1)²)` -/
def P1316683724788030052.Spec : Prop :=
  ∀ n, P1316683724788030052.a n = A394270 n

end A394270

/-! ## A394270.P538171207599563342

`A264773(A001844(n+1))`
-/

namespace A394270.P538171207599563342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264773 (A001844 (n + 1)).toNat

end

end A394270.P538171207599563342

namespace A394270

/-- `A264773(A001844(n+1))` -/
def P538171207599563342.Spec : Prop :=
  ∀ n, P538171207599563342.a n = A394270 n

end A394270

/-! ## A394270.P15479320594083153318

`A264773(A099776(n+1))`
-/

namespace A394270.P15479320594083153318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264773 (A099776 (n + 1)).toNat

end

end A394270.P15479320594083153318

namespace A394270

/-- `A264773(A099776(n+1))` -/
def P15479320594083153318.Spec : Prop :=
  ∀ n, P15479320594083153318.a n = A394270 n

end A394270

/-!
# A394274: Number of induced cubes in the n-Sierpinski carpet graph.

The programs for A394274, the canonical program `A394274.P1363637198758073110` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394274 has offset 1).

The definition of A394274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394274.P1363637198758073110

`12*a(n-1)-35*a(n-2)+24*a(n-3)` with `a(0)=1, a(1)=16, a(2)=168`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394274

/-- `12*a(n-1)-35*a(n-2)+24*a(n-3)` -/
def P1363637198758073110.Spec : Prop :=
  ∀ n, P1363637198758073110.a n = A394274 (n + 1)

theorem P1363637198758073110.correct : P1363637198758073110.Spec := by
  intro n
  simp only [A394274, Nat.add_sub_cancel]

end A394274

/-! ## A394274.P753883501082029293

`(40-112*3^n+107*8^n)/35`
-/

namespace A394274.P753883501082029293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (40 - (112 * 3 ^ n : ℤ) + (107 * 8 ^ n : ℤ) : ℚ) / 35

end

end A394274.P753883501082029293

namespace A394274

/-- `(40-112*3^n+107*8^n)/35` -/
def P753883501082029293.Spec : Prop :=
  ∀ n, P753883501082029293.a n = (A394274 (n + 1) : ℚ)

theorem P753883501082029293.correct : P753883501082029293.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A394274, Nat.add_sub_cancel, A394274.P753883501082029293.a, A394274.P1363637198758073110.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A394274, Nat.add_sub_cancel, A394274.P753883501082029293.a, A394274.P1363637198758073110.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A394274

/-!
# A394275: Number of induced cubes in the n-Sierpinski tetrahedron graph.

The programs for A394275, the canonical program `A394275.P7956179940845381263` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394275 has offset 1).

The definition of A394275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394275.P7956179940845381263

`5*a(n-1)-4*a(n-2)` with `a(0)=10, a(1)=37, a(2)=142`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394275

/-- `5*a(n-1)-4*a(n-2)` -/
def P7956179940845381263.Spec : Prop :=
  ∀ n, P7956179940845381263.a n = A394275 (n + 1)

theorem P7956179940845381263.correct : P7956179940845381263.Spec := by
  intro n
  simp only [A394275, Nat.add_sub_cancel]

end A394275

/-! ## A394275.P14162876857593137022

`∑[ogf((-10+13x+3x^2)/(-1+4x))]`
-/

namespace A394275.P14162876857593137022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -13, -3] [1, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394275.P14162876857593137022

namespace A394275

/-- `∑[ogf((-10+13x+3x^2)/(-1+4x))]` -/
def P14162876857593137022.Spec : Prop :=
  ∀ n, P14162876857593137022.a n = A394275 (n + 1)

end A394275

/-! ## A394275.P13453329923979738137

`ogf((10-13x-3x^2)/(1-5x+4x^2))`
-/

namespace A394275.P13453329923979738137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -13, -3] [1, -5, 4] n

end

end A394275.P13453329923979738137

namespace A394275

/-- `ogf((10-13x-3x^2)/(1-5x+4x^2))` -/
def P13453329923979738137.Spec : Prop :=
  ∀ n, P13453329923979738137.a n = A394275 (n + 1)

end A394275

/-!
# A394276: Number of induced cubes in the n-triangular honeycomb queen graph.

The programs for A394276, there is no canonical definition to state claims against.
-/

/-! ## A394276.P9386296969916407670

`A212991(A326804(n+1))`
-/

namespace A394276.P9386296969916407670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212991 (A326804 (n + 1)).toNat

end

end A394276.P9386296969916407670

/-!
# A394279: Number of induced cubes in the n X n black bishop graph.

The programs for A394279, the canonical program `A394279.P5667834372275693597` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394279 has offset 1).

The definition of A394279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394279.P5667834372275693597

`(n+2)*(3-3*(-1)^(n+1)+(n+1)*(n+2)*(n+3))/24`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394279

/-- `(n+2)*(3-3*(-1)^(n+1)+(n+1)*(n+2)*(n+3))/24` -/
def P5667834372275693597.Spec : Prop :=
  ∀ n, P5667834372275693597.a n = (A394279 (n + 1) : ℚ)

end A394279

/-! ## A394279.P9290340718652114057

`∑[∑[∑[n-1]+lcm(2, n+1)]]`
-/

namespace A394279.P9290340718652114057
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + (Nat.lcm 2 (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394279.P9290340718652114057

namespace A394279

/-- `∑[∑[∑[n-1]+lcm(2, n+1)]]` -/
def P9290340718652114057.Spec : Prop :=
  ∀ n, P9290340718652114057.a n = A394279 (n + 1)

end A394279

/-! ## A394279.P15835895966920439513

`∑[∑[∑[(2*n+1)*(n+1)%2]]]`
-/

namespace A394279.P15835895966920439513
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((n + 1) % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394279.P15835895966920439513

namespace A394279

/-- `∑[∑[∑[(2*n+1)*(n+1)%2]]]` -/
def P15835895966920439513.Spec : Prop :=
  ∀ n, (P15835895966920439513.a n : ℤ) = A394279 (n + 1)

end A394279

/-! ## A394279.P2721868063472355414

`∑[∑[∑[(2*n+1)*and(1, n+1)]]]`
-/

namespace A394279.P2721868063472355414
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.land 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394279.P2721868063472355414

namespace A394279

/-- `∑[∑[∑[(2*n+1)*and(1, n+1)]]]` -/
def P2721868063472355414.Spec : Prop :=
  ∀ n, (P2721868063472355414.a n : ℤ) = A394279 (n + 1)

end A394279

/-! ## A394279.P14496212447990365435

`∑[∑[∑[a(n-2)+4]-a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A394279.P14496212447990365435
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  f3 (n - 2) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394279.P14496212447990365435

namespace A394279

/-- `∑[∑[∑[a(n-2)+4]-a(n-1)]]` -/
def P14496212447990365435.Spec : Prop :=
  ∀ n, P14496212447990365435.a n = A394279 (n + 1)

end A394279

/-! ## A394279.P7342309026627531777

`A394293(n+1)+A027656(n)`
-/

namespace A394279.P7342309026627531777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394293 (n + 1) + A027656 n

end

end A394279.P7342309026627531777

namespace A394279

/-- `A394293(n+1)+A027656(n)` -/
def P7342309026627531777.Spec : Prop :=
  ∀ n, P7342309026627531777.a n = A394279 (n + 1)

end A394279

/-! ## A394279.P17181446653645465659

`A206806(n+2)-A006918(n)`
-/

namespace A394279.P17181446653645465659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206806 (n + 2) - A006918 n

end

end A394279.P17181446653645465659

namespace A394279

/-- `A206806(n+2)-A006918(n)` -/
def P17181446653645465659.Spec : Prop :=
  ∀ n, P17181446653645465659.a n = A394279 (n + 1)

end A394279

/-! ## A394279.P13512435468685746867

`A338429(n+1)-A024862(n+2)`
-/

namespace A394279.P13512435468685746867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338429 (n + 1) - A024862 (n + 2)

end

end A394279.P13512435468685746867

namespace A394279

/-- `A338429(n+1)-A024862(n+2)` -/
def P13512435468685746867.Spec : Prop :=
  ∀ n, P13512435468685746867.a n = A394279 (n + 1)

end A394279

/-! ## A394279.P11129128372410530825

`A005997(n+1)+A000332(n+2)`
-/

namespace A394279.P11129128372410530825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005997 (n + 1) + A000332 (n + 2)

end

end A394279.P11129128372410530825

namespace A394279

/-- `A005997(n+1)+A000332(n+2)` -/
def P11129128372410530825.Spec : Prop :=
  ∀ n, P11129128372410530825.a n = A394279 (n + 1)

end A394279

/-!
# A394282: a(n) is the largest prime p such that A284665(n) = p^i + p^j with i, j > 0.

The programs for A394282, there is no canonical definition to state claims against.
-/

/-! ## A394282.P4058651314824383817

`A067629(A067629(n+2))%A390567(3*n+4)`
-/

namespace A394282.P4058651314824383817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067629 (A067629 (n + 2)).toNat) (A390567 (3 * n + 4))

end

end A394282.P4058651314824383817

/-! ## A394282.P12548130660066197874

`A197861(A072941(n+2))`
-/

namespace A394282.P12548130660066197874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197861 (A072941 (n + 2)).toNat

end

end A394282.P12548130660066197874

/-! ## A394282.P747823084683302913

`A197861(A225655(n+2))`
-/

namespace A394282.P747823084683302913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197861 (A225655 (n + 2)).toNat

end

end A394282.P747823084683302913

/-! ## A394282.P5177961489115960322

`A361632(A162657(n+2))`
-/

namespace A394282.P5177961489115960322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361632 (A162657 (n + 2)).toNat

end

end A394282.P5177961489115960322

/-! ## A394282.P866478709886061886

`A067629(A067629(n+2)^A324342(n))`
-/

namespace A394282.P866478709886061886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067629 (SequenceMachineLib.roundAway ((A067629 (n + 2) : ℚ) ^ (A324342 n : ℤ))).toNat

end

end A394282.P866478709886061886

/-!
# A394283: Number of rectangular plane partitions of n with exactly 2 rows and with rows and columns strictly decreasing.

The programs for A394283, there is no canonical definition to state claims against.
-/

/-! ## A394283.P8152670693333729471

`Δ[A001522(n)]`
-/

namespace A394283.P8152670693333729471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394283.P8152670693333729471

/-! ## A394283.P18192661087968397647

`A001522(n+1)-A001522(n)`
-/

namespace A394283.P18192661087968397647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001522 (n + 1) - A001522 n

end

end A394283.P18192661087968397647

/-! ## A394283.P18081473271169947512

`Δ[A352833(2*n+1)]%A010965(n)`
-/

namespace A394283.P18081473271169947512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352833 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A010965 (n + 12))

end

end A394283.P18081473271169947512

/-!
# A394284: Triangle read by rows: T(n,k) is the number of ordered rooted trees with non-root node weights summing to n that have k non-root nodes; such that the root has weight 0, non-root nodes have positive integer weights, and only nodes of even weight can have branches.

The programs for A394284, there is no canonical definition to state claims against.
-/

/-! ## A394284.P7296038961956562570

`A307301(A269955(n))`
-/

namespace A394284.P7296038961956562570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307301 (A269955 n).toNat

end

end A394284.P7296038961956562570

/-! ## A394284.P16681252932295681081

`∑{e}[A036291(A358575(n+1)), #]`
-/

namespace A394284.P16681252932295681081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036291 (A358575 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A394284.P16681252932295681081

/-! ## A394284.P6372514470532046465

`A280880(lt[n+1, A023835(n+1)])`
-/

namespace A394284.P6372514470532046465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A394284.P6372514470532046465

/-! ## A394284.P6712883493630623849

`A374758(A291883(n)^A001227(2*(n+2)))`
-/

namespace A394284.P6712883493630623849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 (SequenceMachineLib.roundAway ((A291883 n : ℚ) ^ (A001227 (2 * (n + 2)) : ℤ))).toNat

end

end A394284.P6712883493630623849

/-! ## A394284.P5330447490751984913

`A120699(A058716(n)^A286001(3*n+4))`
-/

namespace A394284.P5330447490751984913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120699 (SequenceMachineLib.roundAway ((A058716 n : ℚ) ^ (A286001 (3 * n + 4) : ℤ))).toNat

end

end A394284.P5330447490751984913

/-!
# A394285: Number of ordered rooted trees with node weights summing to n; such that the root has weight 0, non-root nodes have positive integer weights, and only nodes of even weight can have branches.

The programs for A394285, there is no canonical definition to state claims against.
-/

/-! ## A394285.P5406391357711554813

`A351094(n+1)+A058488(n)`
-/

namespace A394285.P5406391357711554813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351094 (n + 1) + A058488 n

end

end A394285.P5406391357711554813

/-! ## A394285.P15138992937775402709

`A101211(A003242(n))+A058488(n)`
-/

namespace A394285.P15138992937775402709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (A003242 n).toNat + A058488 n

end

end A394285.P15138992937775402709

/-! ## A394285.P17573702290973639306

`A216320(A100883(n))+A058488(n)`
-/

namespace A394285.P17573702290973639306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216320 (A100883 n).toNat + A058488 n

end

end A394285.P17573702290973639306

/-! ## A394285.P1522048824921182716

`A058488(n)+A002260(A383095(n))`
-/

namespace A394285.P1522048824921182716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058488 n + A002260 (A383095 n).toNat

end

end A394285.P1522048824921182716

/-!
# A394288: Values taken by the analog of Euler's totient function for Gaussian integers.

The programs for A394288, there is no canonical definition to state claims against.
-/

/-! ## A394288.P10288350534683273206

`filter[A048166(n+1), A242718(#)]`
-/

namespace A394288.P10288350534683273206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A394288.P10288350534683273206

/-! ## A394288.P9118102384592977194

`filter[A387056(n+1), A242718(#)]`
-/

namespace A394288.P9118102384592977194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A394288.P9118102384592977194

/-! ## A394288.P5990132848328383957

`∩[A048166(n+1), A342591(n+1)]`
-/

namespace A394288.P5990132848328383957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394288.P5990132848328383957

/-! ## A394288.P1991497828572802419

`∩[A342591(n+1), A387056(n+1)]`
-/

namespace A394288.P1991497828572802419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394288.P1991497828572802419

/-!
# A394290: Number of partitions of n such that the multiplicity m of the greatest part g is a part of the partition and m < g.

The programs for A394290, there is no canonical definition to state claims against.
-/

/-! ## A394290.P12889270675681064994

`A240494(n+1)-A006141(n+1)`
-/

namespace A394290.P12889270675681064994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240494 (n + 1) - A006141 (n + 1)

end

end A394290.P12889270675681064994

/-! ## A394290.P7707514911293070542

`A000837(n)-A364387(A122405(n+4))`
-/

namespace A394290.P7707514911293070542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n - A364387 (A122405 (n + 4)).toNat

end

end A394290.P7707514911293070542

/-!
# A394291: Number of partitions of n such that the multiplicity m of the least part s is a part of the partition and m > s.

The programs for A394291, there is no canonical definition to state claims against.
-/

/-! ## A394291.P13004552864159265925

`A240493(n+1)-A096403(n+1)`
-/

namespace A394291.P13004552864159265925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240493 (n + 1) - A096403 (n + 1)

end

end A394291.P13004552864159265925

/-! ## A394291.P700414042851537035

`A240176(n+1)+A240493(n+1)-A240177(n+1)`
-/

namespace A394291.P700414042851537035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240176 (n + 1) + (A240493 (n + 1) - A240177 (n + 1))

end

end A394291.P700414042851537035

/-! ## A394291.P5704425425359321938

`A240175(n+1)+A240493(n+1)-A188216(n+1)`
-/

namespace A394291.P5704425425359321938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240175 (n + 1) + (A240493 (n + 1) - A188216 (n + 1))

end

end A394291.P5704425425359321938

/-!
# A394293: Number of induced cubes in the n X n white bishop graph.

The programs for A394293, the canonical program `A394293.P15844129642221276303` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394293 has offset 1).

The definition of A394293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394293.P15844129642221276303

`(n+2)*(3*((-1)^(n+1)-1)+(n+1)*(n+2)*(n+3))/24`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394293

/-- `(n+2)*(3*((-1)^(n+1)-1)+(n+1)*(n+2)*(n+3))/24` -/
def P15844129642221276303.Spec : Prop :=
  ∀ n, P15844129642221276303.a n = (A394293 (n + 1) : ℚ)

end A394293

/-! ## A394293.P12973849661824338727

`∑[∑[C(or(1, n+1), 2)]]`
-/

namespace A394293.P12973849661824338727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 (n + 1)) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394293.P12973849661824338727

namespace A394293

/-- `∑[∑[C(or(1, n+1), 2)]]` -/
def P12973849661824338727.Spec : Prop :=
  ∀ n, (P12973849661824338727.a n : ℤ) = A394293 (n + 1)

end A394293

/-! ## A394293.P2213336592265565147

`∑[∑[∑[n+2]-lcm(2, n+1)]]`
-/

namespace A394293.P2213336592265565147
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (Nat.lcm 2 (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394293.P2213336592265565147

namespace A394293

/-- `∑[∑[∑[n+2]-lcm(2, n+1)]]` -/
def P2213336592265565147.Spec : Prop :=
  ∀ n, P2213336592265565147.a n = A394293 (n + 1)

end A394293

/-! ## A394293.P7321989773286755669

`∑[∑[∑[(2*n+1)*n%2]]]`
-/

namespace A394293.P7321989773286755669
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394293.P7321989773286755669

namespace A394293

/-- `∑[∑[∑[(2*n+1)*n%2]]]` -/
def P7321989773286755669.Spec : Prop :=
  ∀ n, (P7321989773286755669.a n : ℤ) = A394293 (n + 1)

end A394293

/-! ## A394293.P2271662337272431558

`∑[∑[∑[(2*n+1)*and(1, n)]]]`
-/

namespace A394293.P2271662337272431558
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394293.P2271662337272431558

namespace A394293

/-- `∑[∑[∑[(2*n+1)*and(1, n)]]]` -/
def P2271662337272431558.Spec : Prop :=
  ∀ n, (P2271662337272431558.a n : ℤ) = A394293 (n + 1)

end A394293

/-! ## A394293.P10230669629355395935

`A363256(n)-A109622(n)`
-/

namespace A394293.P10230669629355395935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363256 n - A109622 n

end

end A394293.P10230669629355395935

namespace A394293

/-- `A363256(n)-A109622(n)` -/
def P10230669629355395935.Spec : Prop :=
  ∀ n, P10230669629355395935.a n = A394293 (n + 1)

end A394293

/-! ## A394293.P11624593531504158089

`∪[A180324(n), A330805(n)]`
-/

namespace A394293.P11624593531504158089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180324 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330805 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A394293.P11624593531504158089

namespace A394293

/-- `∪[A180324(n), A330805(n)]` -/
def P11624593531504158089.Spec : Prop :=
  ∀ n, (P11624593531504158089.a n : ℤ) = A394293 (n + 1)

end A394293

/-! ## A394293.P468759541032279464

`A394279(n+1)-A027656(n)`
-/

namespace A394293.P468759541032279464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394279 (n + 1) - A027656 n

end

end A394293.P468759541032279464

namespace A394293

/-- `A394279(n+1)-A027656(n)` -/
def P468759541032279464.Spec : Prop :=
  ∀ n, P468759541032279464.a n = A394293 (n + 1)

end A394293

/-! ## A394293.P2623033938735803125

`A206806(n+2)-A053307(n)`
-/

namespace A394293.P2623033938735803125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206806 (n + 2) - A053307 n

end

end A394293.P2623033938735803125

namespace A394293

/-- `A206806(n+2)-A053307(n)` -/
def P2623033938735803125.Spec : Prop :=
  ∀ n, P2623033938735803125.a n = A394293 (n + 1)

end A394293

/-! ## A394293.P8786509557051601599

`A005712(n+2)-A005997(n+1)`
-/

namespace A394293.P8786509557051601599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) - A005997 (n + 1)

end

end A394293.P8786509557051601599

namespace A394293

/-- `A005712(n+2)-A005997(n+1)` -/
def P8786509557051601599.Spec : Prop :=
  ∀ n, P8786509557051601599.a n = A394293 (n + 1)

end A394293

/-!
# A394299: a(n) is the numerator of the expected absolute difference of two primes p1, p2 drawn randomly from the interval 2^n <= p < 2^(n+1) without replacement.

The programs for A394299, there is no canonical definition to state claims against.
-/

/-! ## A394299.P7233207614433965205

`A345430(A133602(n))`
-/

namespace A394299.P7233207614433965205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345430 (A133602 n).toNat

end

end A394299.P7233207614433965205

