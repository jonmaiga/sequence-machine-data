import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A309401: a(n) = A306245(n,n).

The programs for A309401, there is no canonical definition to state claims against.
-/

/-! ## A309401.P11022171226513804384

`A306245(∑[4*n])`
-/

namespace A309401.P11022171226513804384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309401.P11022171226513804384

/-! ## A309401.P15853352649901598458

`A306245(A046092(n))+A025469(n)`
-/

namespace A309401.P15853352649901598458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (A046092 n).toNat + A025469 n

end

end A309401.P15853352649901598458

/-! ## A309401.P14504540694317225118

`A047996(n)*A306245(A046092(n))`
-/

namespace A309401.P14504540694317225118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A306245 (A046092 n).toNat

end

end A309401.P14504540694317225118

/-! ## A309401.P13480421477824545831

`lcm(A015111(n), A306245(A046092(n)))`
-/

namespace A309401.P13480421477824545831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015111 n) (A306245 (A046092 n).toNat)

end

end A309401.P13480421477824545831

/-! ## A309401.P4061912504097755449

`A306245(A046092(n))+A034497(n+1)`
-/

namespace A309401.P4061912504097755449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (A046092 n).toNat + A034497 (n + 1)

end

end A309401.P4061912504097755449

/-!
# A309403: Total sum of the number of divisors of the element sum over all nonempty subsets of [n].

The programs for A309403, there is no canonical definition to state claims against.
-/

/-! ## A309403.P13233519013464609820

`A247357(A099166(n))`
-/

namespace A309403.P13233519013464609820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247357 (A099166 n).toNat

end

end A309403.P13233519013464609820

/-!
# A309404: Perimeters of integer-sided isosceles triangles with prime side lengths.

The programs for A309404, there is no canonical definition to state claims against.
-/

/-! ## A309404.P4125353659265073751

`lt[0, A070092(n+1)]+1`
-/

namespace A309404.P4125353659265073751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A309404.P4125353659265073751

/-! ## A309404.P3161005188531875160

`A309265(round(atan(n+3))+n)`
-/

namespace A309404.P3161005188531875160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309265 (SequenceMachineLib.roundAway (Real.arctan (n + 3 : ℝ)) + (n : ℤ)).toNat

end

end A309404.P3161005188531875160

/-! ## A309404.P16795855217620155924

`A309265(A011760(n+1))`
-/

namespace A309404.P16795855217620155924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309265 (A011760 (n + 1)).toNat

end

end A309404.P16795855217620155924

/-! ## A309404.P15729798067132728156

`A309265(comp[A025211(n)-1])`
-/

namespace A309404.P15729798067132728156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309265 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A309404.P15729798067132728156

/-!
# A309407: a(n) = round(sqrt(3*n + 9/4)), with a(0) = 1.

The programs for A309407, there is no canonical definition to state claims against.
-/

/-! ## A309407.P10665180158424682570

`round(sqrt(3*(n+1)-char[∑[n]]))`
-/

namespace A309407.P10665180158424682570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((3 * (n + 1) : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℝ))

end

end A309407.P10665180158424682570

/-! ## A309407.P9071128728399564786

`round(sqrt(A287452(n+1)))%28`
-/

namespace A309407.P9071128728399564786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A287452 (n + 1) : ℝ))) 28

end

end A309407.P9071128728399564786

/-! ## A309407.P17615922182627643664

`A000194(3*(n+1)-char[∑[n]])`
-/

namespace A309407.P17615922182627643664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (3 * (n + 1) - (if ∃ j, f1 j = n then 1 else 0))

end

end A309407.P17615922182627643664

/-! ## A309407.P11101130123083063393

`ceil(sqrt(A047270(a(n-1)+n+2)+1))-2` with `a(0)=1`
-/

namespace A309407.P11101130123083063393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (A047270 (a (n - 1) + (n : ℤ) + 2).toNat + 1 : ℝ)⌉ - 2

end

end A309407.P11101130123083063393

/-! ## A309407.P1745711974311711303

`A002024(A299417(n))`
-/

namespace A309407.P1745711974311711303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A299417 n).toNat

end

end A309407.P1745711974311711303

/-! ## A309407.P12054027149471318127

`A002024(∑[A270642(n+1)])`
-/

namespace A309407.P12054027149471318127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309407.P12054027149471318127

/-! ## A309407.P15800779463051591722

`A002024(∑[gcd(2, A072283(n))])`
-/

namespace A309407.P15800779463051591722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A072283 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309407.P15800779463051591722

/-! ## A309407.P1998079830635842247

`A003056(A082447(n+1)+A054353(n+1))`
-/

namespace A309407.P1998079830635842247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A082447 (n + 1) + A054353 (n + 1)).toNat

end

end A309407.P1998079830635842247

/-! ## A309407.P9541119371526149124

`A259361(A171945(n+1))+1`
-/

namespace A309407.P9541119371526149124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A171945 (n + 1)).toNat + 1

end

end A309407.P9541119371526149124

/-! ## A309407.P2722419361903113841

`A002024(A054353(n+1))%A111123(n+2)`
-/

namespace A309407.P2722419361903113841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (A054353 (n + 1)).toNat) (A111123 (n + 2))

end

end A309407.P2722419361903113841

/-!
# A309408: Start with X = F(n) = A000045(n). Repeatedly replace X with X - ceiling(X/n); a(n) is the number of steps to reach 0.

The programs for A309408, there is no canonical definition to state claims against.
-/

/-! ## A309408.P5871340530245481623

`A135660(∑[A095041(n+1)]*A000009(n))`
-/

namespace A309408.P5871340530245481623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 ((∑ j ∈ Finset.range (n + 1), f1 j) * A000009 n).toNat

end

end A309408.P5871340530245481623

/-! ## A309408.P4257027306477035930

`A291811(A341591(n+1)+A022856(n+1))`
-/

namespace A309408.P4257027306477035930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (A341591 (n + 1) + A022856 (n + 1)).toNat

end

end A309408.P4257027306477035930

/-! ## A309408.P11483265856503690804

`A051889(A239871(2*n))+∑[A056626(2^n)]`
-/

namespace A309408.P11483265856503690804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056626 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A239871 (2 * n)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309408.P11483265856503690804

/-! ## A309408.P670909769084283249

`A051889(A239871(2*n))+∑[A220136(2^n)]`
-/

namespace A309408.P670909769084283249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A239871 (2 * n)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309408.P670909769084283249

/-!
# A309414: Number of squaring iterations necessary to achieve the minimal residue class (mod n).

The programs for A309414, there is no canonical definition to state claims against.
-/

/-! ## A309414.P11314620867619974016

`val(A002322(A318681(n+1)), 2)`
-/

namespace A309414.P11314620867619974016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002322 (A318681 (n + 1)).toNat).toNat 2

end

end A309414.P11314620867619974016

/-! ## A309414.P4153199042555836675

`A007814(A002322(A318681(n+1)))`
-/

namespace A309414.P4153199042555836675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A002322 (A318681 (n + 1)).toNat).toNat

end

end A309414.P4153199042555836675

/-! ## A309414.P14387792934628015380

`val(A002322(A299149(n+1)²), 2)`
-/

namespace A309414.P14387792934628015380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002322 (A299149 (n + 1) ^ 2).toNat).toNat 2

end

end A309414.P14387792934628015380

/-! ## A309414.P1971215235095135753

`A007814(A002322(A299149(n+1)²))`
-/

namespace A309414.P1971215235095135753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A002322 (A299149 (n + 1) ^ 2).toNat).toNat

end

end A309414.P1971215235095135753

/-! ## A309414.P18394347405733263142

`A007814(A002322(n+1)*A182933(n))`
-/

namespace A309414.P18394347405733263142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A002322 (n + 1) * A182933 n).toNat

end

end A309414.P18394347405733263142

/-!
# A309415: Number of different numbers that are formed by permuting digits of n!.

The programs for A309415, there is no canonical definition to state claims against.
-/

/-! ## A309415.P17883528725016710886

`A038388(∏[A034886(n)])`
-/

namespace A309415.P17883528725016710886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309415.P17883528725016710886

/-! ## A309415.P8817466067145097553

`A038388(∏[∑[A029336(n)]])`
-/

namespace A309415.P8817466067145097553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309415.P8817466067145097553

/-! ## A309415.P11770490772434606848

`∏[A268811(record[A176202(n)])]`
-/

namespace A309415.P11770490772434606848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176202 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268811 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A309415.P11770490772434606848

/-! ## A309415.P4241600425563946631

`A307616(xor(6, A062713(n+1)))`
-/

namespace A309415.P4241600425563946631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307616 (Int.xor 6 (A062713 (n + 1))).toNat

end

end A309415.P4241600425563946631

/-! ## A309415.P7459487263419026620

`A189394(A034886(n)*A213217(n))`
-/

namespace A309415.P7459487263419026620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189394 (A034886 n * A213217 n).toNat

end

end A309415.P7459487263419026620

/-!
# A309416: a(n) = Sum_{k > 0} d^k(n), where d^k corresponds to the k-th iterate of A296239.

The programs for A309416, the canonical program `A309416.P13966311176528186971` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309416 has offset 0).

The definition of A309416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309416.P13966311176528186971

`A296239(n)+a(A296239(n))` with `a(0)=0`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A309416

/-- `A296239(n)+a(A296239(n))` -/
def P13966311176528186971.Spec : Prop :=
  ∀ n, P13966311176528186971.a n = A309416 n

theorem P13966311176528186971.correct : P13966311176528186971.Spec := by
  intro n
  simp only [A309416]

end A309416

/-! ## A309416.P299767028238856033

`A073290(A296239(n)%A013658(2*(n+2)))`
-/

namespace A309416.P299767028238856033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073290 (Int.tmod (A296239 n) (A013658 (2 * (n + 2)))).toNat

end

end A309416.P299767028238856033

namespace A309416

/-- `A073290(A296239(n)%A013658(2*(n+2)))` -/
def P299767028238856033.Spec : Prop :=
  ∀ n, P299767028238856033.a n = A309416 n

end A309416

/-! ## A309416.P8701422355046659629

`A053615(A296239(A002378(A074378(A296239(n)))))`
-/

namespace A309416.P8701422355046659629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A296239 (A002378 (A074378 (A296239 n).toNat).toNat).toNat).toNat

end

end A309416.P8701422355046659629

namespace A309416

/-- `A053615(A296239(A002378(A074378(A296239(n)))))` -/
def P8701422355046659629.Spec : Prop :=
  ∀ n, P8701422355046659629.a n = A309416 n

end A309416

/-! ## A309416.P452292013036187071

`or(A296239(n), A376366(A216294(n+4)))`
-/

namespace A309416.P452292013036187071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A296239 n) (A376366 (A216294 (n + 4)).toNat)

end

end A309416.P452292013036187071

namespace A309416

/-- `or(A296239(n), A376366(A216294(n+4)))` -/
def P452292013036187071.Spec : Prop :=
  ∀ n, P452292013036187071.a n = A309416 n

end A309416

/-! ## A309416.P14315858898925998987

`A005314(A296239(n))%A254060(n+1)`
-/

namespace A309416.P14315858898925998987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005314 (A296239 n).toNat) (A254060 (n + 1))

end

end A309416.P14315858898925998987

namespace A309416

/-- `A005314(A296239(n))%A254060(n+1)` -/
def P14315858898925998987.Spec : Prop :=
  ∀ n, P14315858898925998987.a n = A309416 n

end A309416

/-!
# A309417: Number of steps needed to reduce 10^n to zero by subtracting its digital sum.

The programs for A309417, there is no canonical definition to state claims against.
-/

/-! ## A309417.P5202062601964364570

`A084771(n)+A004128(A084771(n))`
-/

namespace A309417.P5202062601964364570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084771 n + A004128 (A084771 n).toNat

end

end A309417.P5202062601964364570

/-!
# A309424: Sum x+y of generator pairs (x, y) {x and y coprime and not both odd} of primitive Pythagorean triangles, sorted by x and y (for same x).

The programs for A309424, the canonical program `A309424.P14488381854534681636` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309424 has offset 1).

The definition of A309424 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094192, A094193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309424.P14488381854534681636

`A094192(n+1)+A094193(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A309424

/-- `A094192(n+1)+A094193(n+1)` -/
def P14488381854534681636.Spec : Prop :=
  ∀ n, P14488381854534681636.a n = A309424 (n + 1)

theorem P14488381854534681636.correct : P14488381854534681636.Spec := by
  intro n
  simp only [A309424, Nat.add_sub_cancel]

end A309424

/-! ## A309424.P10779725954040282647

`A309425(n+1)+2*A094193(n+1)`
-/

namespace A309424.P10779725954040282647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309425 (n + 1) + 2 * A094193 (n + 1)

end

end A309424.P10779725954040282647

namespace A309424

/-- `A309425(n+1)+2*A094193(n+1)` -/
def P10779725954040282647.Spec : Prop :=
  ∀ n, P10779725954040282647.a n = A309424 (n + 1)

end A309424

/-! ## A309424.P17237784347062433688

`2*A094192(n+1)-A309425(n+1)`
-/

namespace A309424.P17237784347062433688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094192 (n + 1) - A309425 (n + 1)

end

end A309424.P17237784347062433688

namespace A309424

/-- `2*A094192(n+1)-A309425(n+1)` -/
def P17237784347062433688.Spec : Prop :=
  ∀ n, P17237784347062433688.a n = A309424 (n + 1)

end A309424

/-! ## A309424.P12665302006815439228

`A094193(n+1)+∑[char[∑[A055034(n+2)]]]+2`
-/

namespace A309424.P12665302006815439228
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094193 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)

end

end A309424.P12665302006815439228

namespace A309424

/-- `A094193(n+1)+∑[char[∑[A055034(n+2)]]]+2` -/
def P12665302006815439228.Spec : Prop :=
  ∀ n, P12665302006815439228.a n = A309424 (n + 1)

end A309424

/-! ## A309424.P3510077486874973072

`A309425(n+1)+A004277(A094193(n+1))`
-/

namespace A309424.P3510077486874973072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309425 (n + 1) + A004277 (A094193 (n + 1)).toNat

end

end A309424.P3510077486874973072

namespace A309424

/-- `A309425(n+1)+A004277(A094193(n+1))` -/
def P3510077486874973072.Spec : Prop :=
  ∀ n, P3510077486874973072.a n = A309424 (n + 1)

end A309424

/-! ## A309424.P12066475395814867888

`A004277(A094192(n+1))-A309425(n+1)`
-/

namespace A309424.P12066475395814867888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A094192 (n + 1)).toNat - A309425 (n + 1)

end

end A309424.P12066475395814867888

namespace A309424

/-- `A004277(A094192(n+1))-A309425(n+1)` -/
def P12066475395814867888.Spec : Prop :=
  ∀ n, P12066475395814867888.a n = A309424 (n + 1)

end A309424

/-! ## A309424.P475940537457260560

`A309425(n+1)+A000267(A094193(n+1)²)`
-/

namespace A309424.P475940537457260560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309425 (n + 1) + A000267 (A094193 (n + 1) ^ 2).toNat

end

end A309424.P475940537457260560

namespace A309424

/-- `A309425(n+1)+A000267(A094193(n+1)²)` -/
def P475940537457260560.Spec : Prop :=
  ∀ n, P475940537457260560.a n = A309424 (n + 1)

end A309424

/-! ## A309424.P5090178197603437681

`A000267(A094192(n+1)²)-A309425(n+1)`
-/

namespace A309424.P5090178197603437681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A094192 (n + 1) ^ 2).toNat - A309425 (n + 1)

end

end A309424.P5090178197603437681

namespace A309424

/-- `A000267(A094192(n+1)²)-A309425(n+1)` -/
def P5090178197603437681.Spec : Prop :=
  ∀ n, P5090178197603437681.a n = A309424 (n + 1)

end A309424

/-! ## A309424.P14248760009548907746

`A108872(A243808(n+1))`
-/

namespace A309424.P14248760009548907746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (A243808 (n + 1)).toNat

end

end A309424.P14248760009548907746

namespace A309424

/-- `A108872(A243808(n+1))` -/
def P14248760009548907746.Spec : Prop :=
  ∀ n, P14248760009548907746.a n = A309424 (n + 1)

end A309424

/-! ## A309424.P13981101140462070820

`A094727(A243808(n+1)+1)`
-/

namespace A309424.P13981101140462070820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A243808 (n + 1) + 1).toNat

end

end A309424.P13981101140462070820

namespace A309424

/-- `A094727(A243808(n+1)+1)` -/
def P13981101140462070820.Spec : Prop :=
  ∀ n, P13981101140462070820.a n = A309424 (n + 1)

end A309424

/-!
# A309425: Difference x-y of generator pairs (x,y) {x and y coprime and not both odd, x > y} of primitive Pythagorean triangles, sorted by x and y (for same x).

The programs for A309425, the canonical program `A309425.P6950203414554343427` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309425 has offset 1).

The definition of A309425 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094192, A094193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309425.P6950203414554343427

`A094192(n+1)-A094193(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A309425

/-- `A094192(n+1)-A094193(n+1)` -/
def P6950203414554343427.Spec : Prop :=
  ∀ n, P6950203414554343427.a n = A309425 (n + 1)

theorem P6950203414554343427.correct : P6950203414554343427.Spec := by
  intro n
  simp only [A309425, Nat.add_sub_cancel]

end A309425

/-! ## A309425.P14847060791527861343

`filter[A020653(n+1), A000035(#)]`
-/

namespace A309425.P14847060791527861343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A309425.P14847060791527861343

namespace A309425

/-- `filter[A020653(n+1), A000035(#)]` -/
def P14847060791527861343.Spec : Prop :=
  ∀ n, P14847060791527861343.a n = A309425 (n + 1)

end A309425

/-! ## A309425.P9882274514472427406

`filter[A020653(n+1), A125122(#)]`
-/

namespace A309425.P9882274514472427406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A125122 (f1 j).toNat = 1) n)

end

end A309425.P9882274514472427406

namespace A309425

/-- `filter[A020653(n+1), A125122(#)]` -/
def P9882274514472427406.Spec : Prop :=
  ∀ n, P9882274514472427406.a n = A309425 (n + 1)

end A309425

/-! ## A309425.P2240234634444627953

`filter[A020653(n+1), A250299(#)]`
-/

namespace A309425.P2240234634444627953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A250299 (f1 j).toNat = 1) n)

end

end A309425.P2240234634444627953

namespace A309425

/-- `filter[A020653(n+1), A250299(#)]` -/
def P2240234634444627953.Spec : Prop :=
  ∀ n, P2240234634444627953.a n = A309425 (n + 1)

end A309425

/-! ## A309425.P3381345039152372384

`filter[A020653(n+1), A374134(#)]`
-/

namespace A309425.P3381345039152372384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A309425.P3381345039152372384

namespace A309425

/-- `filter[A020653(n+1), A374134(#)]` -/
def P3381345039152372384.Spec : Prop :=
  ∀ n, P3381345039152372384.a n = A309425 (n + 1)

end A309425

/-! ## A309425.P7611045715430763144

`A004736(lt[0, A222946(n+2)]+1)`
-/

namespace A309425.P7611045715430763144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A309425.P7611045715430763144

namespace A309425

/-- `A004736(lt[0, A222946(n+2)]+1)` -/
def P7611045715430763144.Spec : Prop :=
  ∀ n, P7611045715430763144.a n = A309425 (n + 1)

end A309425

/-! ## A309425.P15363168548619943913

`filter[A352911(2*(n+1)), A000035(#)]`
-/

namespace A309425.P15363168548619943913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352911 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A309425.P15363168548619943913

namespace A309425

/-- `filter[A352911(2*(n+1)), A000035(#)]` -/
def P15363168548619943913.Spec : Prop :=
  ∀ n, P15363168548619943913.a n = A309425 (n + 1)

end A309425

/-! ## A309425.P7140284036967707962

`filter[A352911(2*(n+1)), A125122(#)]`
-/

namespace A309425.P7140284036967707962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352911 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A125122 (f1 j).toNat = 1) n)

end

end A309425.P7140284036967707962

namespace A309425

/-- `filter[A352911(2*(n+1)), A125122(#)]` -/
def P7140284036967707962.Spec : Prop :=
  ∀ n, P7140284036967707962.a n = A309425 (n + 1)

end A309425

/-! ## A309425.P17525866736928031877

`filter[A352911(2*(n+1)), A250299(#)]`
-/

namespace A309425.P17525866736928031877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352911 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A250299 (f1 j).toNat = 1) n)

end

end A309425.P17525866736928031877

namespace A309425

/-- `filter[A352911(2*(n+1)), A250299(#)]` -/
def P17525866736928031877.Spec : Prop :=
  ∀ n, P17525866736928031877.a n = A309425 (n + 1)

end A309425

/-!
# A309428: Irregular triangle read by rows: T(n,k) is the multiplicative order of {{A038566(n,k), 1}, {0, 1}} modulo n, n >= 1, 1 <= k <= A000010(n).

The programs for A309428, there is no canonical definition to state claims against.
-/

/-! ## A309428.P11922241696011369625

`A130836(A247984(n+1)+A007088(n))`
-/

namespace A309428.P11922241696011369625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130836 (A247984 (n + 1) + A007088 n).toNat

end

end A309428.P11922241696011369625

/-! ## A309428.P4379289315587017789

`A001222(A157000(n+2)*A290194(n))`
-/

namespace A309428.P4379289315587017789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A157000 (n + 2) * A290194 n).toNat

end

end A309428.P4379289315587017789

/-! ## A309428.P13579327957790958837

`A066099(A113340(2*n+3))+A055396(n+1)`
-/

namespace A309428.P13579327957790958837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A113340 (2 * n + 3)).toNat + A055396 (n + 1)

end

end A309428.P13579327957790958837

/-! ## A309428.P2394481011006056211

`A055396(n+1)+A003557(A275043(3*n+2))`
-/

namespace A309428.P2394481011006056211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + A003557 (A275043 (3 * n + 2)).toNat

end

end A309428.P2394481011006056211

/-! ## A309428.P10487175405293381385

`A306509(A005262(n))`
-/

namespace A309428.P10487175405293381385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (A005262 n).toNat

end

end A309428.P10487175405293381385

/-!
# A309429: Least Luhn prime in base 2n: primes p such that p + reverse(p) in base 2n is also a prime.

The programs for A309429, there is no canonical definition to state claims against.
-/

/-! ## A309429.P5535399496300382073

`A155471(A260710(n)+A108651(n))`
-/

namespace A309429.P5535399496300382073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155471 (A260710 n + A108651 n).toNat

end

end A309429.P5535399496300382073

/-!
# A309430: a(n) = a(n-a(n-1)) + a(n-a(n-4)), with a(n) = ceiling(2*n/3) for n <= 7.

The programs for A309430, the canonical program `A309430.P5978630078098115623` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309430 has offset 1).

The definition of A309430 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-4))` (program `A309430.P5978630078098115623`, by `A309430.P5978630078098115623.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309430.P5978630078098115623

`a(n-a(n-1))+a(n-a(n-4))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=4, a(5)=4, a(6)=5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309430

/-- `a(n-a(n-1))+a(n-a(n-4))` -/
def P5978630078098115623.Spec : Prop :=
  ∀ n, (P5978630078098115623.a n : ℤ) = A309430 (n + 1)

theorem P5978630078098115623.correct : P5978630078098115623.Spec := by
  intro n
  simp only [A309430, Nat.add_sub_cancel]

end A309430

/-! ## A309430.P6155630852972596814

`A048766(A008574(n)*A317589(n+1))`
-/

namespace A309430.P6155630852972596814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A008574 n * A317589 (n + 1)).toNat

end

end A309430.P6155630852972596814

namespace A309430

/-- `A048766(A008574(n)*A317589(n+1))` -/
def P6155630852972596814.Spec : Prop :=
  ∀ n, P6155630852972596814.a n = A309430 (n + 1)

end A309430

/-! ## A309430.P3652954756695378906

`A319951(∑[A359893(n+1)+A000120(n)])`
-/

namespace A309430.P3652954756695378906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (n + 1) + A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309430.P3652954756695378906

namespace A309430

/-- `A319951(∑[A359893(n+1)+A000120(n)])` -/
def P3652954756695378906.Spec : Prop :=
  ∀ n, P3652954756695378906.a n = A309430 (n + 1)

end A309430

/-! ## A309430.P16476754394303302622

`A356895(A066815(n+1))`
-/

namespace A309430.P16476754394303302622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356895 (A066815 (n + 1)).toNat

end

end A309430.P16476754394303302622

namespace A309430

/-- `A356895(A066815(n+1))` -/
def P16476754394303302622.Spec : Prop :=
  ∀ n, P16476754394303302622.a n = A309430 (n + 1)

end A309430

/-! ## A309430.P16944803748737283894

`∑[A213800(3*n+2)%2]`
-/

namespace A309430.P16944803748737283894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213800 (3 * n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309430.P16944803748737283894

namespace A309430

/-- `∑[A213800(3*n+2)%2]` -/
def P16944803748737283894.Spec : Prop :=
  ∀ n, P16944803748737283894.a n = A309430 (n + 1)

end A309430

/-!
# A309431: a(n) = Sum_{k=2..p} (-1)^k * A240236(p, k), where p is n-th prime.

The programs for A309431, there is no canonical definition to state claims against.
-/

/-! ## A309431.P10186445922741391296

`A309531(A000040(n+1))`
-/

namespace A309431.P10186445922741391296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309531 (A000040 (n + 1)).toNat

end

end A309431.P10186445922741391296

/-! ## A309431.P15620161771123784474

`A309531(p?[xor(1, n)])`
-/

namespace A309431.P15620161771123784474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309531 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A309431.P15620161771123784474

/-! ## A309431.P13541642149940915679

`A309531(Δ[A007504(n)])`
-/

namespace A309431.P13541642149940915679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309531 (f1 (n + 1) - f1 n).toNat

end

end A309431.P13541642149940915679

/-! ## A309431.P5442577596827752716

`A309531(A039915(n+1))`
-/

namespace A309431.P5442577596827752716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309531 (A039915 (n + 1)).toNat

end

end A309431.P5442577596827752716

/-! ## A309431.P6207526831584494606

`A309531(A008578(n+2))`
-/

namespace A309431.P6207526831584494606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309531 (A008578 (n + 2)).toNat

end

end A309431.P6207526831584494606

/-! ## A309431.P2416708515542615184

`A309531(A068499(n+2))`
-/

namespace A309431.P2416708515542615184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309531 (A068499 (n + 2)).toNat

end

end A309431.P2416708515542615184

/-! ## A309431.P3579393431848295358

`A309531(A182986(n+2))`
-/

namespace A309431.P3579393431848295358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309531 (A182986 (n + 2)).toNat

end

end A309431.P3579393431848295358

/-! ## A309431.P257817116868081292

`A309531(eq[2, A005127(n)])`
-/

namespace A309431.P257817116868081292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309431.P257817116868081292

/-! ## A309431.P6223148468687546227

`A309531(record[A006530(n+2)])`
-/

namespace A309431.P6223148468687546227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309431.P6223148468687546227

/-! ## A309431.P9769637283222582064

`A309531(record[A014963(n+2)])`
-/

namespace A309431.P9769637283222582064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309431.P9769637283222582064

/-! ## A309431.P10803907683627810114

`A309531(record[A020639(n+2)])`
-/

namespace A309431.P10803907683627810114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309431.P10803907683627810114

/-! ## A309431.P8333950084561266314

`A309531(A100484(n+1)/2)`
-/

namespace A309431.P8333950084561266314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309531 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A309431.P8333950084561266314

/-! ## A309431.P8592063858152558354

`A309531(A007504(n+1)-A007504(n))`
-/

namespace A309431.P8592063858152558354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309531 (A007504 (n + 1) - A007504 n).toNat

end

end A309431.P8592063858152558354

/-!
# A309432: Number of distinct digits in decimal representation of n^2.

The programs for A309432, the canonical program `A309432.P7805551934272391300` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309432 has offset 0).

The definition of A309432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309432.P11891839271156299208

`A043537(n^ceil(atan(n)))`
-/

namespace A309432.P11891839271156299208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

end

end A309432.P11891839271156299208

namespace A309432

/-- `A043537(n^ceil(atan(n)))` -/
def P11891839271156299208.Spec : Prop :=
  ∀ n, P11891839271156299208.a n = A309432 n

end A309432

/-! ## A309432.P7805551934272391300

`A043537(C(2, n)+n²)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A309432

/-- `A043537(C(2, n)+n²)` -/
def P7805551934272391300.Spec : Prop :=
  ∀ n, P7805551934272391300.a n = A309432 n

theorem P7805551934272391300.correct : P7805551934272391300.Spec := by
  intro n
  simp only [A309432]

end A309432

/-! ## A309432.P2635949289000782085

`A043537((C(2, n)-n)²)`
-/

namespace A309432.P2635949289000782085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (((Nat.choose 2 n : ℤ) - (n : ℤ)) ^ 2).toNat

end

end A309432.P2635949289000782085

namespace A309432

/-- `A043537((C(2, n)-n)²)` -/
def P2635949289000782085.Spec : Prop :=
  ∀ n, P2635949289000782085.a n = A309432 n

end A309432

/-! ## A309432.P17509310604258045760

`A043537(gcd(n², C(2, n)))`
-/

namespace A309432.P17509310604258045760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (Nat.gcd (n ^ 2) (Nat.choose 2 n))

end

end A309432.P17509310604258045760

namespace A309432

/-- `A043537(gcd(n², C(2, n)))` -/
def P17509310604258045760.Spec : Prop :=
  ∀ n, P17509310604258045760.a n = A309432 n

end A309432

/-! ## A309432.P10001451179207761692

`A043537(floor(acot(n)+n)²)`
-/

namespace A309432.P10001451179207761692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ ^ 2).toNat

end

end A309432.P10001451179207761692

namespace A309432

/-- `A043537(floor(acot(n)+n)²)` -/
def P10001451179207761692.Spec : Prop :=
  ∀ n, P10001451179207761692.a n = A309432 n

end A309432

/-! ## A309432.P9358264678588695752

`A043537(round(acot(n)+n)²)`
-/

namespace A309432.P9358264678588695752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) ^ 2).toNat

end

end A309432.P9358264678588695752

namespace A309432

/-- `A043537(round(acot(n)+n)²)` -/
def P9358264678588695752.Spec : Prop :=
  ∀ n, P9358264678588695752.a n = A309432 n

end A309432

/-! ## A309432.P13182916853423820345

`A043562(A028908(n))`
-/

namespace A309432.P13182916853423820345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A028908 n).toNat

end

end A309432.P13182916853423820345

namespace A309432

/-- `A043562(A028908(n))` -/
def P13182916853423820345.Spec : Prop :=
  ∀ n, P13182916853423820345.a n = A309432 n

end A309432

/-! ## A309432.P8129428108457544079

`A043537(A253909(n))`
-/

namespace A309432.P8129428108457544079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A253909 n).toNat

end

end A309432.P8129428108457544079

namespace A309432

/-- `A043537(A253909(n))` -/
def P8129428108457544079.Spec : Prop :=
  ∀ n, P8129428108457544079.a n = A309432 n

end A309432

/-! ## A309432.P9118158824561873460

`A043562(A004186(n²))`
-/

namespace A309432.P9118158824561873460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A004186 (n ^ 2)).toNat

end

end A309432.P9118158824561873460

namespace A309432

/-- `A043562(A004186(n²))` -/
def P9118158824561873460.Spec : Prop :=
  ∀ n, P9118158824561873460.a n = A309432 n

end A309432

/-! ## A309432.P16949246657062574467

`A043537(A028310(n²))`
-/

namespace A309432.P16949246657062574467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A028310 (n ^ 2)).toNat

end

end A309432.P16949246657062574467

namespace A309432

/-- `A043537(A028310(n²))` -/
def P16949246657062574467.Spec : Prop :=
  ∀ n, P16949246657062574467.a n = A309432 n

end A309432

/-! ## A309432.P16283746161417766819

`A000120(A086066(n²))`
-/

namespace A309432.P16283746161417766819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A086066 (n ^ 2)).toNat

end

end A309432.P16283746161417766819

namespace A309432

/-- `A000120(A086066(n²))` -/
def P16283746161417766819.Spec : Prop :=
  ∀ n, P16283746161417766819.a n = A309432 n

end A309432

/-! ## A309432.P5475662855511378031

`A043562(A057846(n²))`
-/

namespace A309432.P5475662855511378031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A057846 (n ^ 2)).toNat

end

end A309432.P5475662855511378031

namespace A309432

/-- `A043562(A057846(n²))` -/
def P5475662855511378031.Spec : Prop :=
  ∀ n, P5475662855511378031.a n = A309432 n

end A309432

/-! ## A309432.P3844292304559047153

`A043562(A137564(n²))`
-/

namespace A309432.P3844292304559047153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A137564 (n ^ 2)).toNat

end

end A309432.P3844292304559047153

namespace A309432

/-- `A043562(A137564(n²))` -/
def P3844292304559047153.Spec : Prop :=
  ∀ n, P3844292304559047153.a n = A309432 n

end A309432

/-! ## A309432.P15448889592266663253

`A043562(A227362(n²))`
-/

namespace A309432.P15448889592266663253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A227362 (n ^ 2)).toNat

end

end A309432.P15448889592266663253

namespace A309432

/-- `A043562(A227362(n²))` -/
def P15448889592266663253.Spec : Prop :=
  ∀ n, P15448889592266663253.a n = A309432 n

end A309432

/-! ## A309432.P10627310855459642230

`A043537(A233583(n+1)²)`
-/

namespace A309432.P10627310855459642230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A233583 (n + 1) ^ 2).toNat

end

end A309432.P10627310855459642230

namespace A309432

/-- `A043537(A233583(n+1)²)` -/
def P10627310855459642230.Spec : Prop :=
  ∀ n, P10627310855459642230.a n = A309432 n

end A309432

/-!
# A309434: a(n) = floor(n*Im(2*e^(i*Pi/5))/(Im(2*e^(i*Pi/5)) - 1)).

The programs for A309434, the canonical program `A309434.P17549878271726631054` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309434 has offset 1).

The definition of A309434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309434.P17549878271726631054

`floor((n+1)*((5+sqrt(5))/2+sqrt(5+2*sqrt(5))))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309434

/-- `floor((n+1)*((5+sqrt(5))/2+sqrt(5+2*sqrt(5))))` -/
def P17549878271726631054.Spec : Prop :=
  ∀ n, P17549878271726631054.a n = A309434 (n + 1)

theorem P17549878271726631054.correct : P17549878271726631054.Spec := by
  intro n
  simp only [A309434, Nat.add_sub_cancel]

end A309434

/-! ## A309434.P17282465568031056474

`ceil(sqrt(A190816(3*(n+1))-A267303(2*n+1)))`
-/

namespace A309434.P17282465568031056474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A190816 (3 * (n + 1)) - A267303 (2 * n + 1) : ℝ)⌉

end

end A309434.P17282465568031056474

namespace A309434

/-- `ceil(sqrt(A190816(3*(n+1))-A267303(2*n+1)))` -/
def P17282465568031056474.Spec : Prop :=
  ∀ n, P17282465568031056474.a n = A309434 (n + 1)

end A309434

/-! ## A309434.P12272570376913869089

`A329978(2*(n+1))+4*(n+1)`
-/

namespace A309434.P12272570376913869089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (2 * (n + 1)) + (4 * (n + 1) : ℤ)

end

end A309434.P12272570376913869089

namespace A309434

/-- `A329978(2*(n+1))+4*(n+1)` -/
def P12272570376913869089.Spec : Prop :=
  ∀ n, P12272570376913869089.a n = A309434 (n + 1)

end A309434

/-! ## A309434.P6871225130604688623

`A070939(A000204(n+1))+A016969(n)`
-/

namespace A309434.P6871225130604688623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000204 (n + 1)).toNat + A016969 n

end

end A309434.P6871225130604688623

namespace A309434

/-- `A070939(A000204(n+1))+A016969(n)` -/
def P6871225130604688623.Spec : Prop :=
  ∀ n, P6871225130604688623.a n = A309434 (n + 1)

end A309434

/-! ## A309434.P14307653602751160799

`xor(A022839(3*(n+1)), A269244(A332833(n)))`
-/

namespace A309434.P14307653602751160799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A022839 (3 * (n + 1))) (A269244 (A332833 n).toNat)

end

end A309434.P14307653602751160799

namespace A309434

/-- `xor(A022839(3*(n+1)), A269244(A332833(n)))` -/
def P14307653602751160799.Spec : Prop :=
  ∀ n, P14307653602751160799.a n = A309434 (n + 1)

end A309434

/-!
# A309435: Iteratively replace the product of two sequentially chosen consecutive integers with those integers.

The programs for A309435, there is no canonical definition to state claims against.
-/

/-! ## A309435.P3032895813439116985

`A141810((n+1)*A125653(n+1))`
-/

namespace A309435.P3032895813439116985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141810 ((n + 1 : ℤ) * A125653 (n + 1)).toNat

end

end A309435.P3032895813439116985

/-! ## A309435.P2760989715308679853

`A141810(A187829(n+1)+Δ[A264857(n+1)])`
-/

namespace A309435.P2760989715308679853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141810 (A187829 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A309435.P2760989715308679853

/-!
# A309436: Number of prime parts in the partitions of n into 7 parts.

The programs for A309436, there is no canonical definition to state claims against.
-/

/-! ## A309436.P2609822010632353588

`and(A061768(A061044(n+5)), A309437(n+1))`
-/

namespace A309436.P2609822010632353588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061768 (A061044 (n + 5)).toNat) (A309437 (n + 1))

end

end A309436.P2609822010632353588

/-! ## A309436.P3493899122597738643

`and(A061768(A061044(n+5)), A309439(n+3))`
-/

namespace A309436.P3493899122597738643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061768 (A061044 (n + 5)).toNat) (A309439 (n + 3))

end

end A309436.P3493899122597738643

/-! ## A309436.P6243648457267361374

`A309437(A043320(n+1))`
-/

namespace A309436.P6243648457267361374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309437 (A043320 (n + 1)).toNat

end

end A309436.P6243648457267361374

/-! ## A309436.P3223989633489255123

`A309437(A044917(n+1))`
-/

namespace A309436.P3223989633489255123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309437 (A044917 (n + 1)).toNat

end

end A309436.P3223989633489255123

/-! ## A309436.P6955623477390191676

`A072088(A309437(n+1))`
-/

namespace A309436.P6955623477390191676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A309437 (n + 1)).toNat

end

end A309436.P6955623477390191676

/-!
# A309437: Number of prime parts in the partitions of n into 8 parts.

The programs for A309437, there is no canonical definition to state claims against.
-/

/-! ## A309437.P10791778271979882739

`A089856(A309438(n+1))`
-/

namespace A309437.P10791778271979882739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A309438 (n + 1)).toNat

end

end A309437.P10791778271979882739

/-! ## A309437.P7641881251484517351

`A089856(A309439(n+2))`
-/

namespace A309437.P7641881251484517351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A309439 (n + 2)).toNat

end

end A309437.P7641881251484517351

/-! ## A309437.P14955371394154956625

`A309439(A151764(n+2))`
-/

namespace A309437.P14955371394154956625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309439 (A151764 (n + 2)).toNat

end

end A309437.P14955371394154956625

/-! ## A309437.P16020401754933886152

`filter[A309438(n+1), A103583(#)]`
-/

namespace A309437.P16020401754933886152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103583 (f1 j).toNat = 1) n)

end

end A309437.P16020401754933886152

/-! ## A309437.P7174444521292580307

`filter[A309438(n+1), A385395(#)]`
-/

namespace A309437.P7174444521292580307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A309437.P7174444521292580307

/-!
# A309438: Number of prime parts in the partitions of n into 9 parts.

The programs for A309438, there is no canonical definition to state claims against.
-/

/-! ## A309438.P18038243035398674840

`A309439(A077342(n+1))`
-/

namespace A309438.P18038243035398674840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309439 (A077342 (n + 1)).toNat

end

end A309438.P18038243035398674840

/-! ## A309438.P8515091660821937508

`A309439(A242474(n+1))`
-/

namespace A309438.P8515091660821937508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309439 (A242474 (n + 1)).toNat

end

end A309438.P8515091660821937508

/-! ## A309438.P11730456192764595557

`A309439(A351374(n+1))`
-/

namespace A309438.P11730456192764595557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309439 (A351374 (n + 1)).toNat

end

end A309438.P11730456192764595557

/-! ## A309438.P5853045678061817608

`A309439(n+1)+A151674(A000009(3*(n+1)))`
-/

namespace A309438.P5853045678061817608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309439 (n + 1) + A151674 (A000009 (3 * (n + 1))).toNat

end

end A309438.P5853045678061817608

/-! ## A309438.P4704576166726181981

`A089856(A309439(n+1))`
-/

namespace A309438.P4704576166726181981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A309439 (n + 1)).toNat

end

end A309438.P4704576166726181981

/-!
# A309439: Number of prime parts in the partitions of n into 10 parts.

The programs for A309439, there is no canonical definition to state claims against.
-/

/-! ## A309439.P15042570520796030193

`∑{e}[A003945(n), A309438(#)]`
-/

namespace A309439.P15042570520796030193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A309438 (Nat.factorization (f1 n).natAbs p)

end

end A309439.P15042570520796030193

/-! ## A309439.P17162430445121756330

`A309438((n-1)^A059995(n))`
-/

namespace A309439.P17162430445121756330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309438 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (A059995 n : ℤ))).toNat

end

end A309439.P17162430445121756330

/-!
# A309440: The number of digits of the greatest product from addends that sum up to 10^n.

The programs for A309440, there is no canonical definition to state claims against.
-/

/-! ## A309440.P10789591928989360952

`A187909(A047855(n))`
-/

namespace A309440.P10789591928989360952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187909 (A047855 n).toNat

end

end A309440.P10789591928989360952

/-!
# A309441: Number of ON (black) cells in the n-th iteration of the "honeycomb" elementary cellular automaton with rule 4124, starting with a single ON (black) cell (see Comments for precise definition).

The programs for A309441, there is no canonical definition to state claims against.
-/

/-! ## A309441.P8335390897147077532

`A322483(or(A175390(n+1), A347444(2*(n+1))))`
-/

namespace A309441.P8335390897147077532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (Int.lor (A175390 (n + 1)) (A347444 (2 * (n + 1)))).toNat

end

end A309441.P8335390897147077532

/-! ## A309441.P17691140646743692937

`A211974(n)+A003406(A230915(n+1)!)`
-/

namespace A309441.P17691140646743692937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211974 n + A003406 (Nat.factorial (A230915 (n + 1)).toNat)

end

end A309441.P17691140646743692937

/-! ## A309441.P2548901236852134865

`A163575(Δ[A151895(n)])+(-1)^A184955(n)`
-/

namespace A309441.P2548901236852134865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151895 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163575 (f1 (n + 1) - f1 n).toNat : ℚ) + (-1 : ℚ) ^ (A184955 n : ℤ)

end

end A309441.P2548901236852134865

/-! ## A309441.P15249663233808621908

`A000005(A241810(n)+A073287(n)^A278657(n))`
-/

namespace A309441.P15249663233808621908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A241810 n : ℚ) + (A073287 n : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A309441.P15249663233808621908

/-! ## A309441.P14300664589804392127

`A211974(A055645(n))+1`
-/

namespace A309441.P14300664589804392127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211974 (A055645 n).toNat + 1

end

end A309441.P14300664589804392127

/-!
# A309443: Coefficients in 5-adic expansion of 4^(1/3).

The programs for A309443, there is no canonical definition to state claims against.
-/

/-! ## A309443.P4669400976343757218

`Δ[A309444(n)]/A000351(n)`
-/

namespace A309443.P4669400976343757218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309444 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000351 n : ℚ)

end

end A309443.P4669400976343757218

/-! ## A309443.P16131273727605204620

`Δ[A290567(n)²%A000351(n)]/A000351(n)`
-/

namespace A309443.P16131273727605204620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290567 n ^ 2) (A000351 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000351 n : ℚ)

end

end A309443.P16131273727605204620

/-!
# A309444: The successive approximations up to 5^n for 5-adic integer 4^(1/3).

The programs for A309444, there is no canonical definition to state claims against.
-/

/-! ## A309444.P16957951854352525640

`4+a(n-1)*3^a(n-1)` with `a(0)=0, a(1)=4, a(2)=9, a(3)=59, a(4)=559`
-/

namespace A309444.P16957951854352525640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 9, 59, 559] fun n a =>
  4 + a (n - 1) * 3 ^ a (n - 1)

end

end A309444.P16957951854352525640

/-! ## A309444.P3522375759181809508

`(floor(acot(n))+1)*A290567(n)²%A000351(n)`
-/

namespace A309444.P3522375759181809508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1) * Int.tmod (A290567 n ^ 2) (A000351 n)

end

end A309444.P3522375759181809508

/-! ## A309444.P18204069485417092010

`(A290567(n)²%A000351(n))%A022032(n)`
-/

namespace A309444.P18204069485417092010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A290567 n ^ 2) (A000351 n)) (A022032 n)

end

end A309444.P18204069485417092010

/-! ## A309444.P8907022408069115456

`A242179(n)²*A290567(n+1)²%A000351(n)`
-/

namespace A309444.P8907022408069115456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242179 n ^ 2 * Int.tmod (A290567 (n + 1) ^ 2) (A000351 n)

end

end A309444.P8907022408069115456

/-! ## A309444.P12700458474718625631

`A290567(n+2)²%(5^n)`
-/

namespace A309444.P12700458474718625631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290567 (n + 2) ^ 2) (5 ^ n : ℤ)

end

end A309444.P12700458474718625631

/-!
# A309445: Coefficients in 7-adic expansion of 2^(1/5).

The programs for A309445, there is no canonical definition to state claims against.
-/

/-! ## A309445.P4226395573907774153

`Δ[A309450(n)]/7^n`
-/

namespace A309445.P4226395573907774153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309450 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (7 ^ n : ℚ)

end

end A309445.P4226395573907774153

/-!
# A309446: Coefficients in 7-adic expansion of 3^(1/5).

The programs for A309446, there is no canonical definition to state claims against.
-/

/-! ## A309446.P3756757555966583520

`Δ[A309451(n)]/7^n`
-/

namespace A309446.P3756757555966583520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309451 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (7 ^ n : ℚ)

end

end A309446.P3756757555966583520

/-! ## A309446.P7969434339732958511

`floor(A309451(n+1)/7^n)`
-/

namespace A309446.P7969434339732958511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309451 (n + 1) : ℚ) / (7 ^ n : ℚ)⌋

end

end A309446.P7969434339732958511

/-! ## A309446.P17773096929646502625

`Δ[A309451(n)]%A019325(n)`
-/

namespace A309446.P17773096929646502625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A019325 n)

end

end A309446.P17773096929646502625

/-!
# A309447: Coefficients in 7-adic expansion of 4^(1/5).

The programs for A309447, there is no canonical definition to state claims against.
-/

/-! ## A309447.P6679053313254742877

`Δ[A309452(n)]/7^n`
-/

namespace A309447.P6679053313254742877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309452 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (7 ^ n : ℚ)

end

end A309447.P6679053313254742877

/-! ## A309447.P8682525535503083275

`Δ[A309452(n)]%A019325(n)`
-/

namespace A309447.P8682525535503083275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A019325 n)

end

end A309447.P8682525535503083275

/-! ## A309447.P14222858509829956828

`floor(A309452(n+1)/A000420(n))`
-/

namespace A309447.P14222858509829956828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309452 (n + 1) : ℚ) / (A000420 n : ℚ)⌋

end

end A309447.P14222858509829956828

/-!
# A309448: Coefficients in 7-adic expansion of 5^(1/5).

The programs for A309448, there is no canonical definition to state claims against.
-/

/-! ## A309448.P2006463754240784578

`Δ[A309453(n)]/7^n`
-/

namespace A309448.P2006463754240784578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309453 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (7 ^ n : ℚ)

end

end A309448.P2006463754240784578

/-! ## A309448.P481317013774240329

`floor(A309453(n+1)/A000420(n))`
-/

namespace A309448.P481317013774240329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309453 (n + 1) : ℚ) / (A000420 n : ℚ)⌋

end

end A309448.P481317013774240329

/-!
# A309449: Coefficients in 7-adic expansion of 6^(1/5).

The programs for A309449, there is no canonical definition to state claims against.
-/

/-! ## A309449.P11283807619402297267

`Δ[A309454(n)]/7^n`
-/

namespace A309449.P11283807619402297267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309454 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (7 ^ n : ℚ)

end

end A309449.P11283807619402297267

/-! ## A309449.P6895511598290720410

`Δ[A309454(n)]%A019325(n)`
-/

namespace A309449.P6895511598290720410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A019325 n)

end

end A309449.P6895511598290720410

/-! ## A309449.P16473475482779355740

`floor(A309454(n+1)/A000420(n))`
-/

namespace A309449.P16473475482779355740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309454 (n + 1) : ℚ) / (A000420 n : ℚ)⌋

end

end A309449.P16473475482779355740

/-! ## A309449.P1615160522908381325

`floor(A309454(n+1)/A103458(n))`
-/

namespace A309449.P1615160522908381325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309454 (n + 1) : ℚ) / (A103458 n : ℚ)⌋

end

end A309449.P1615160522908381325

/-! ## A309449.P7758238651040918717

`dr(Δ[A309454(n)]*A016777(n))`
-/

namespace A309449.P7758238651040918717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309454 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((f1 (n + 1) - f1 n) * A016777 n)

end

end A309449.P7758238651040918717

/-!
# A309450: The successive approximations up to 7^n for 7-adic integer 2^(1/5).

The programs for A309450, there is no canonical definition to state claims against.
-/

/-! ## A309450.P7556090878951236564

`A278530(∑[A026581(n)]²)-1`
-/

namespace A309450.P7556090878951236564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278530 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat - 1

end

end A309450.P7556090878951236564

/-!
# A309451: The successive approximations up to 7^n for 7-adic integer 3^(1/5).

The programs for A309451, there is no canonical definition to state claims against.
-/

/-! ## A309451.P17510485997675739814

`A352830(A352920(n+1))*A352905(n)`
-/

namespace A309451.P17510485997675739814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352830 (A352920 (n + 1)).toNat * A352905 n

end

end A309451.P17510485997675739814

/-!
# A309452: The successive approximations up to 7^n for 7-adic integer 4^(1/5).

The programs for A309452, there is no canonical definition to state claims against.
-/

/-! ## A309452.P8093608181376422332

`2+a(n-1)*2^a(n-1)` with `a(0)=0, a(1)=2, a(2)=9, a(3)=107, a(4)=450`
-/

namespace A309452.P8093608181376422332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 9, 107, 450] fun n a =>
  2 + a (n - 1) * 2 ^ a (n - 1)

end

end A309452.P8093608181376422332

/-! ## A309452.P2751922687542426525

`A309450(n)²%(7^n)`
-/

namespace A309452.P2751922687542426525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309450 n ^ 2) (7 ^ n : ℤ)

end

end A309452.P2751922687542426525

/-!
# A309453: The successive approximations up to 7^n for 7-adic integer 5^(1/5).

The programs for A309453, there is no canonical definition to state claims against.
-/

/-! ## A309453.P5993113211417659156

`A000601(7^n)%(7^n)`
-/

namespace A309453.P5993113211417659156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000601 (7 ^ n)) (7 ^ n : ℤ)

end

end A309453.P5993113211417659156

/-!
# A309454: The successive approximations up to 7^n for 7-adic integer 6^(1/5).

The programs for A309454, there is no canonical definition to state claims against.
-/

/-! ## A309454.P1885067839569154146

`A062849(A318960(2*(n+3)))%A000420(n)`
-/

namespace A309454.P1885067839569154146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062849 (A318960 (2 * (n + 3))).toNat) (A000420 n)

end

end A309454.P1885067839569154146

/-!
# A309462: Limiting row sequence for Pascal-like triangle A140995 (Stepan's triangle with index of asymmetry s = 3).

The programs for A309462, the canonical program `A309462.P15642956790934535355` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309462 has offset 0).

The definition of A309462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309462.P15642956790934535355

`record[A141073(n+1)+A000035(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A309462

/-- `record[A141073(n+1)+A000035(n)]` -/
def P15642956790934535355.Spec : Prop :=
  ∀ n, P15642956790934535355.a n = A309462 n

theorem P15642956790934535355.correct : P15642956790934535355.Spec := by
  intro n
  simp only [A309462]

end A309462

/-! ## A309462.P11497725233614694263

`record[lcm(A000034(n), A141073(n+1))]`
-/

namespace A309462.P11497725233614694263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A141073 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309462.P11497725233614694263

namespace A309462

/-- `record[lcm(A000034(n), A141073(n+1))]` -/
def P11497725233614694263.Spec : Prop :=
  ∀ n, (P11497725233614694263.a n : ℤ) = A309462 n

end A309462

/-! ## A309462.P17582769204682108031

`A141073(2*(n+1))`
-/

namespace A309462.P17582769204682108031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141073 (2 * (n + 1))

end

end A309462.P17582769204682108031

namespace A309462

/-- `A141073(2*(n+1))` -/
def P17582769204682108031.Spec : Prop :=
  ∀ n, P17582769204682108031.a n = A309462 n

end A309462

/-! ## A309462.P5465830875594025578

`record[gcd(A141073(n+1), A142150(n))]`
-/

namespace A309462.P5465830875594025578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141073 (n + 1)) (A142150 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309462.P5465830875594025578

namespace A309462

/-- `record[gcd(A141073(n+1), A142150(n))]` -/
def P5465830875594025578.Spec : Prop :=
  ∀ n, (P5465830875594025578.a n : ℤ) = A309462 n

end A309462

/-! ## A309462.P15834169577262449884

`A141073(A103517(n))+A000038(n+1)`
-/

namespace A309462.P15834169577262449884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141073 (A103517 n).toNat + A000038 (n + 1)

end

end A309462.P15834169577262449884

namespace A309462

/-- `A141073(A103517(n))+A000038(n+1)` -/
def P15834169577262449884.Spec : Prop :=
  ∀ n, P15834169577262449884.a n = A309462 n

end A309462

/-! ## A309462.P3765131059811684254

`A141073(A103517(n))-n*A000038(n)`
-/

namespace A309462.P3765131059811684254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141073 (A103517 n).toNat - (n : ℤ) * A000038 n

end

end A309462.P3765131059811684254

namespace A309462

/-- `A141073(A103517(n))-n*A000038(n)` -/
def P3765131059811684254.Spec : Prop :=
  ∀ n, P3765131059811684254.a n = A309462 n

end A309462

/-! ## A309462.P15251963087834574610

`A141073(A103517(n))-A000038(A117136(n))²`
-/

namespace A309462.P15251963087834574610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141073 (A103517 n).toNat - A000038 (A117136 n).toNat ^ 2

end

end A309462.P15251963087834574610

namespace A309462

/-- `A141073(A103517(n))-A000038(A117136(n))²` -/
def P15251963087834574610.Spec : Prop :=
  ∀ n, P15251963087834574610.a n = A309462 n

end A309462

/-! ## A309462.P8293282057837340350

`A140996(∑[4*n])`
-/

namespace A309462.P8293282057837340350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309462.P8293282057837340350

namespace A309462

/-- `A140996(∑[4*n])` -/
def P8293282057837340350.Spec : Prop :=
  ∀ n, P8293282057837340350.a n = A309462 n

end A309462

/-! ## A309462.P27080379195885763

`record[A140996(A001972(n))]`
-/

namespace A309462.P27080379195885763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (A001972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309462.P27080379195885763

namespace A309462

/-- `record[A140996(A001972(n))]` -/
def P27080379195885763.Spec : Prop :=
  ∀ n, P27080379195885763.a n = A309462 n

end A309462

/-!
# A309463: Number of squarefree parts in the partitions of n into 9 parts.

The programs for A309463, there is no canonical definition to state claims against.
-/

/-! ## A309463.P13646372539591009303

`A159918(A035615(n))*A326522(n)`
-/

namespace A309463.P13646372539591009303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A035615 n).toNat * A326522 n

end

end A309463.P13646372539591009303

/-!
# A309464: Number of squarefree parts in the partitions of n into 10 parts.

The programs for A309464, there is no canonical definition to state claims against.
-/

/-! ## A309464.P15394148960892271019

`A332874(n)-A102683(A011782(n))`
-/

namespace A309464.P15394148960892271019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332874 n - A102683 (A011782 n).toNat

end

end A309464.P15394148960892271019

/-! ## A309464.P3332887719656358640

`A332874(n)-A102683(A056469(n))`
-/

namespace A309464.P3332887719656358640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332874 n - A102683 (A056469 n).toNat

end

end A309464.P3332887719656358640

/-! ## A309464.P575145244792209491

`A332874(n)-A102683(A131577(n))`
-/

namespace A309464.P575145244792209491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332874 n - A102683 (A131577 n).toNat

end

end A309464.P575145244792209491

/-! ## A309464.P5122679988534689544

`A332874(n)-A335446(A333150(n))`
-/

namespace A309464.P5122679988534689544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332874 n - A335446 (A333150 n).toNat

end

end A309464.P5122679988534689544

/-!
# A309465: Sum of the prime parts in the partitions of n into 4 parts.

The programs for A309465, there is no canonical definition to state claims against.
-/

/-! ## A309465.P10608784198180676894

`A328772(A020079(n)-A025901(n))`
-/

namespace A309465.P10608784198180676894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 (A020079 n - A025901 n).toNat

end

end A309465.P10608784198180676894

/-! ## A309465.P9189789184407538152

`A351625(A351707(n))-A351724(n)`
-/

namespace A309465.P9189789184407538152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351625 (A351707 n).toNat - A351724 n

end

end A309465.P9189789184407538152

/-! ## A309465.P13552653409934342506

`A328772(lcm(A000120(n), A020079(n)))`
-/

namespace A309465.P13552653409934342506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 (Int.lcm (A000120 n) (A020079 n))

end

end A309465.P13552653409934342506

/-! ## A309465.P10060563405634627403

`A328772(xor(A020079(n), A025901(n)))`
-/

namespace A309465.P10060563405634627403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 (Int.xor (A020079 n) (A025901 n)).toNat

end

end A309465.P10060563405634627403

/-! ## A309465.P16361604796570466456

`A239470(A095062(n+1))%A301720(n)`
-/

namespace A309465.P16361604796570466456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239470 (A095062 (n + 1)).toNat) (A301720 n)

end

end A309465.P16361604796570466456

/-!
# A309466: Sum of the prime parts in the partitions of n into 5 parts.

The programs for A309466, there is no canonical definition to state claims against.
-/

/-! ## A309466.P3922175689396201818

`A309467(A153583(∑[n]))`
-/

namespace A309466.P3922175689396201818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309467 (A153583 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A309466.P3922175689396201818

/-! ## A309466.P1221538926528525204

`A309467(A062399(n)+1)`
-/

namespace A309466.P1221538926528525204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309467 (A062399 n + 1).toNat

end

end A309466.P1221538926528525204

/-! ## A309466.P13582433952389741484

`A089867(A309467(n+1))`
-/

namespace A309466.P13582433952389741484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A309467 (n + 1)).toNat

end

end A309466.P13582433952389741484

/-! ## A309466.P1942321652508066236

`A309467(A351870(n)+1)`
-/

namespace A309466.P1942321652508066236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309467 (A351870 n + 1).toNat

end

end A309466.P1942321652508066236

/-! ## A309466.P9248485071884007448

`A309468(A062399(n)+2)`
-/

namespace A309466.P9248485071884007448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309468 (A062399 n + 2).toNat

end

end A309466.P9248485071884007448

/-!
# A309467: Sum of the prime parts in the partitions of n into 6 parts.

The programs for A309467, there is no canonical definition to state claims against.
-/

/-! ## A309467.P16501311319338694679

`A309468(A187829(n+1))-A308974(n+1)`
-/

namespace A309467.P16501311319338694679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309468 (A187829 (n + 1)).toNat - A308974 (n + 1)

end

end A309467.P16501311319338694679

/-! ## A309467.P9784025954336338937

`A309468(n+1)-A308974(A077168(n))`
-/

namespace A309467.P9784025954336338937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309468 (n + 1) - A308974 (A077168 n).toNat

end

end A309467.P9784025954336338937

/-! ## A309467.P16505577452193793079

`A309469(n+2)-A308974(A077168(n))`
-/

namespace A309467.P16505577452193793079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309469 (n + 2) - A308974 (A077168 n).toNat

end

end A309467.P16505577452193793079

/-! ## A309467.P8070126531205535255

`A309468(∑[A287384(n)])`
-/

namespace A309467.P8070126531205535255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309468 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309467.P8070126531205535255

/-! ## A309467.P5070860753043048405

`A309469(A077168(n+1))`
-/

namespace A309467.P5070860753043048405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309469 (A077168 (n + 1)).toNat

end

end A309467.P5070860753043048405

/-!
# A309468: Sum of the prime parts in the partitions of n into 7 parts.

The programs for A309468, there is no canonical definition to state claims against.
-/

/-! ## A309468.P7228636748947349011

`A309469(A187829(n+1))`
-/

namespace A309468.P7228636748947349011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309469 (A187829 (n + 1)).toNat

end

end A309468.P7228636748947349011

/-! ## A309468.P3866450114034984072

`A309469(∑[∑[A028240(n)]])`
-/

namespace A309468.P3866450114034984072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028240 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309469 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309468.P3866450114034984072

/-! ## A309468.P3695372028633800433

`∑[A351870(Δ[A309469(n)])]`
-/

namespace A309468.P3695372028633800433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309468.P3695372028633800433

/-! ## A309468.P12915672494159604532

`A309469(record[A132662(n+1)])`
-/

namespace A309468.P12915672494159604532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309469 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309468.P12915672494159604532

/-! ## A309468.P9931248069348732653

`A309470(A187829(n+1)+1)`
-/

namespace A309468.P9931248069348732653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309470 (A187829 (n + 1) + 1).toNat

end

end A309468.P9931248069348732653

/-!
# A309469: Sum of the prime parts in the partitions of n into 8 parts.

The programs for A309469, there is no canonical definition to state claims against.
-/

/-! ## A309469.P7542440231655088001

`A309470(n+1)%∏[n!]`
-/

namespace A309469.P7542440231655088001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309470 (n + 1)) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A309469.P7542440231655088001

/-! ## A309469.P15238642267255725255

`A309470(A000005(2^n))`
-/

namespace A309469.P15238642267255725255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309470 (A000005 (2 ^ n)).toNat

end

end A309469.P15238642267255725255

/-! ## A309469.P5285949415063221812

`A309470(∑[∑[A091536(n)]])`
-/

namespace A309469.P5285949415063221812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309470 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309469.P5285949415063221812

/-! ## A309469.P1192616720720476464

`(A309470(n+1)-1)*A173557(2^n)+1`
-/

namespace A309469.P1192616720720476464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A309470 (n + 1) - 1) * A173557 (2 ^ n) + 1

end

end A309469.P1192616720720476464

/-! ## A309469.P13344189421994909139

`A090996((2-C(2, n²))^(n-1))*A309470(n+1)`
-/

namespace A309469.P13344189421994909139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (SequenceMachineLib.roundAway ((2 - (Nat.choose 2 (n ^ 2) : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat * A309470 (n + 1)

end

end A309469.P13344189421994909139

/-!
# A309470: Sum of the prime parts in the partitions of n into 9 parts.

The programs for A309470, there is no canonical definition to state claims against.
-/

/-! ## A309470.P6061482309854328296

`∑{d}[∑[2^n], A309471(ceil((n+1)/#))]`
-/

namespace A309470.P6061482309854328296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309471 ⌈(n + 1 : ℚ) / (d : ℚ)⌉.toNat

end

end A309470.P6061482309854328296

/-! ## A309470.P14333600159514398046

`∑[A118759(Δ[A309471(n)])]`
-/

namespace A309470.P14333600159514398046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309471 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309470.P14333600159514398046

/-! ## A309470.P4338620304507562810

`A309471(n+1)%A309327(n)`
-/

namespace A309470.P4338620304507562810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309471 (n + 1)) (A309327 n)

end

end A309470.P4338620304507562810

/-! ## A309470.P15598063902751092396

`A309471(C(A077342(n+1), n))`
-/

namespace A309470.P15598063902751092396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309471 (Nat.choose (A077342 (n + 1)).toNat n)

end

end A309470.P15598063902751092396

/-! ## A309470.P15744024421625231602

`filter[A309471(n+1), A322674(#)]`
-/

namespace A309470.P15744024421625231602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322674 (f1 j).toNat = 1) n)

end

end A309470.P15744024421625231602

/-!
# A309471: Sum of the prime parts in the partitions of n into 10 parts.

The programs for A309471, there is no canonical definition to state claims against.
-/

/-! ## A309471.P15900517564186757214

`∑{e}[A003945(n), A309470(#)]`
-/

namespace A309471.P15900517564186757214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A309470 (Nat.factorization (f1 n).natAbs p)

end

end A309471.P15900517564186757214

/-! ## A309471.P10497148733387540554

`A309470(abs(1-n))+A000038(A061645(n+1))`
-/

namespace A309471.P10497148733387540554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309470 |1 - (n : ℤ)|.toNat + A000038 (A061645 (n + 1)).toNat

end

end A309471.P10497148733387540554

/-! ## A309471.P8758523210727325678

`A309469((n-2)%A146631(n+5))`
-/

namespace A309471.P8758523210727325678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309469 (Int.tmod ((n : ℤ) - 2) (A146631 (n + 5))).toNat

end

end A309471.P8758523210727325678

/-! ## A309471.P12957688376030809662

`A001221(A011782(n))*A309470(abs(1-n))`
-/

namespace A309471.P12957688376030809662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A011782 n).toNat * A309470 |1 - (n : ℤ)|.toNat

end

end A309471.P12957688376030809662

/-! ## A309471.P193973443435559196

`A309470(A091536(n)-1+n)`
-/

namespace A309471.P193973443435559196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309470 (A091536 n - 1 + (n : ℤ)).toNat

end

end A309471.P193973443435559196

/-!
# A309472: a(n) = n^n - n * n!.

The programs for A309472, the canonical program `A309472.P4967340079062654910` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309472 has offset 0).

The definition of A309472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n-n*n!` (program `A309472.P4967340079062654910`, by `A309472.P4967340079062654910.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309472.P4967340079062654910

`n^n-n*n!`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309472

/-- `n^n-n*n!` -/
def P4967340079062654910.Spec : Prop :=
  ∀ n, P4967340079062654910.a n = A309472 n

theorem P4967340079062654910.correct : P4967340079062654910.Spec := by
  intro n
  simp only [A309472]

end A309472

/-! ## A309472.P8326753759978679572

`A000312(n)-A001563(n)`
-/

namespace A309472.P8326753759978679572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n - A001563 n

end

end A309472.P8326753759978679572

namespace A309472

/-- `A000312(n)-A001563(n)` -/
def P8326753759978679572.Spec : Prop :=
  ∀ n, P8326753759978679572.a n = A309472 n

end A309472

/-! ## A309472.P9761340065563043135

`n^n-Δ[n!]`
-/

namespace A309472.P9761340065563043135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A309472.P9761340065563043135

namespace A309472

/-- `n^n-Δ[n!]` -/
def P9761340065563043135.Spec : Prop :=
  ∀ n, P9761340065563043135.a n = A309472 n

theorem P9761340065563043135.correct : P9761340065563043135.Spec := by
  intro n
  simp only [A309472, Nat.add_sub_cancel, A309472.P9761340065563043135.f1, A309472.P9761340065563043135.a, A309472.P4967340079062654910.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A309472

/-! ## A309472.P15897816282327536813

`Δ[-n!]+n^n`
-/

namespace A309472.P15897816282327536813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n ^ n : ℤ)

end

end A309472.P15897816282327536813

namespace A309472

/-- `Δ[-n!]+n^n` -/
def P15897816282327536813.Spec : Prop :=
  ∀ n, P15897816282327536813.a n = A309472 n

theorem P15897816282327536813.correct : P15897816282327536813.Spec := by
  intro n
  simp only [A309472, Nat.add_sub_cancel, A309472.P15897816282327536813.f1, A309472.P15897816282327536813.a, A309472.P4967340079062654910.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A309472

/-! ## A309472.P3817194580694579137

`abs((n+1)!-n!-n^n)`
-/

namespace A309472.P3817194580694579137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (n + 1) : ℤ) - (Nat.factorial n : ℤ) - (n ^ n : ℤ)|

end

end A309472.P3817194580694579137

namespace A309472

/-- `abs((n+1)!-n!-n^n)` -/
def P3817194580694579137.Spec : Prop :=
  ∀ n, P3817194580694579137.a n = A309472 n

end A309472

/-! ## A309472.P14038593350303448663

`abs(n*∏[round(1/acot(n))]-n^n)`
-/

namespace A309472.P14038593350303448663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j) - (n ^ n : ℤ)|

end

end A309472.P14038593350303448663

namespace A309472

/-- `abs(n*∏[round(1/acot(n))]-n^n)` -/
def P14038593350303448663.Spec : Prop :=
  ∀ n, P14038593350303448663.a n = A309472 n

end A309472

/-! ## A309472.P14760809203776647962

`n^n-Δ[A000142(n)]`
-/

namespace A309472.P14760809203776647962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - (f1 (n + 1) - f1 n)

end

end A309472.P14760809203776647962

namespace A309472

/-- `n^n-Δ[A000142(n)]` -/
def P14760809203776647962.Spec : Prop :=
  ∀ n, P14760809203776647962.a n = A309472 n

end A309472

/-! ## A309472.P8884341460862973853

`n^n-n*(A038507(n)-1)`
-/

namespace A309472.P8884341460862973853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - (n : ℤ) * (A038507 n - 1)

end

end A309472.P8884341460862973853

namespace A309472

/-- `n^n-n*(A038507(n)-1)` -/
def P8884341460862973853.Spec : Prop :=
  ∀ n, P8884341460862973853.a n = A309472 n

end A309472

/-! ## A309472.P11121338404365247018

`∏[A028310(n)]+n^n-(n+1)!`
-/

namespace A309472.P11121338404365247018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n ^ n : ℤ) - (Nat.factorial (n + 1) : ℤ)

end

end A309472.P11121338404365247018

namespace A309472

/-- `∏[A028310(n)]+n^n-(n+1)!` -/
def P11121338404365247018.Spec : Prop :=
  ∀ n, P11121338404365247018.a n = A309472 n

end A309472

/-! ## A309472.P9953109134351285120

`A000142(n)+A000312(n)-A000142(n+1)`
-/

namespace A309472.P9953109134351285120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A000312 n - A000142 (n + 1))

end

end A309472.P9953109134351285120

namespace A309472

/-- `A000142(n)+A000312(n)-A000142(n+1)` -/
def P9953109134351285120.Spec : Prop :=
  ∀ n, P9953109134351285120.a n = A309472 n

end A309472

/-!
# A309473: a(n) = (-1)^n + Sum_{k=0..n-1} binomial(n-1,k) * a(k) * a(n-k-1).

The programs for A309473, there is no canonical definition to state claims against.
-/

/-! ## A309473.P6408114816468622528

`A008647(A000674(n)-A304329(n))`
-/

namespace A309473.P6408114816468622528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A000674 n - A304329 n).toNat

end

end A309473.P6408114816468622528

/-! ## A309473.P8011470375586425474

`or(A008618(n), A342696(A000674(n)))`
-/

namespace A309473.P8011470375586425474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008618 n) (A342696 (A000674 n).toNat)

end

end A309473.P8011470375586425474

/-! ## A309473.P2684457638763765682

`or(A048993(n), A342696(A000674(n)))`
-/

namespace A309473.P2684457638763765682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048993 n) (A342696 (A000674 n).toNat)

end

end A309473.P2684457638763765682

/-! ## A309473.P13055712840094058547

`or(A057979(n), A342696(A000674(n)))`
-/

namespace A309473.P13055712840094058547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057979 n) (A342696 (A000674 n).toNat)

end

end A309473.P13055712840094058547

/-!
# A309474: Digits of one of the two 3-adic integers sqrt(-1/2).

The programs for A309474, there is no canonical definition to state claims against.
-/

/-! ## A309474.P7100601199246399170

`A000007(n)+2-A309475(n)`
-/

namespace A309474.P7100601199246399170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (2 - A309475 n)

end

end A309474.P7100601199246399170

/-! ## A309474.P3443045780416166047

`A020639(A031131(n+1))-A309475(n)`
-/

namespace A309474.P3443045780416166047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A031131 (n + 1)).toNat - A309475 n

end

end A309474.P3443045780416166047

/-! ## A309474.P3415052701246934737

`A271223(n)+A271224(n)-A309475(n)`
-/

namespace A309474.P3415052701246934737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271223 n + (A271224 n - A309475 n)

end

end A309474.P3415052701246934737

/-! ## A309474.P14947844969561268040

`A020639(A008864(n+1))-A309475(n)`
-/

namespace A309474.P14947844969561268040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008864 (n + 1)).toNat - A309475 n

end

end A309474.P14947844969561268040

/-! ## A309474.P4100699573630764387

`A069735(A020482(n+2))-A309475(n)`
-/

namespace A309474.P4100699573630764387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (A020482 (n + 2)).toNat - A309475 n

end

end A309474.P4100699573630764387

/-! ## A309474.P6423023384843834215

`A116895(A156611(n+1))-A309475(n)`
-/

namespace A309474.P6423023384843834215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116895 (A156611 (n + 1)).toNat - A309475 n

end

end A309474.P6423023384843834215

/-! ## A309474.P17895979118248278643

`A178815(n+1)-A309475(n)`
-/

namespace A309474.P17895979118248278643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1) - A309475 n

end

end A309474.P17895979118248278643

/-!
# A309475: Digits of one of the two 3-adic integers sqrt(-1/2). Here the sequence with first digit 2.

The programs for A309475, there is no canonical definition to state claims against.
-/

/-! ## A309475.P16522473653947480183

`dr(A253639(n+1))-A309474(n)`
-/

namespace A309475.P16522473653947480183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A253639 (n + 1)) : ℤ) - A309474 n

end

end A309475.P16522473653947480183

/-! ## A309475.P6015382513957036946

`A010693(A226225(n))-A309474(n)`
-/

namespace A309475.P6015382513957036946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A226225 n).toNat - A309474 n

end

end A309475.P6015382513957036946

/-! ## A309475.P6153217448428755214

`A020639(A031131(n+1))-A309474(n)`
-/

namespace A309475.P6153217448428755214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A031131 (n + 1)).toNat - A309474 n

end

end A309475.P6153217448428755214

/-! ## A309475.P1163842433485575230

`A271223(n)+A271224(n)-A309474(n)`
-/

namespace A309475.P1163842433485575230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271223 n + (A271224 n - A309474 n)

end

end A309475.P1163842433485575230

/-! ## A309475.P371039289857927718

`A309474(A293991(a(n-1)))-A309474(n)` with `a(0)=2`
-/

namespace A309475.P371039289857927718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A309474 (A293991 (a (n - 1)).toNat).toNat - A309474 n

end

end A309475.P371039289857927718

/-! ## A309475.P7355120561124553328

`A000040(gcd(n, A000040(n+1)))-A309474(n)`
-/

namespace A309475.P7355120561124553328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.gcd (n : ℤ) (A000040 (n + 1))) - A309474 n

end

end A309475.P7355120561124553328

/-! ## A309475.P8940563857519353109

`A309474(A172376(a(n-1)+1))-A309474(n)` with `a(0)=2`
-/

namespace A309475.P8940563857519353109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A309474 (A172376 (a (n - 1) + 1).toNat).toNat - A309474 n

end

end A309475.P8940563857519353109

/-! ## A309475.P5135356134891214419

`A295878(A001749(n+1))-A309474(n)`
-/

namespace A309475.P5135356134891214419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (A001749 (n + 1)).toNat - A309474 n

end

end A309475.P5135356134891214419

/-! ## A309475.P16627830177817664649

`2-and(A055010(n), A309474(n))`
-/

namespace A309475.P16627830177817664649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land (A055010 n) (A309474 n)

end

end A309475.P16627830177817664649

/-! ## A309475.P2476549240854404535

`Δ[A309477(n)]/Δ[A003462(n)]`
-/

namespace A309475.P2476549240854404535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309477 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A309475.P2476549240854404535

/-! ## A309475.P8043975119408477000

`A178815(n+1)-A309474(n)`
-/

namespace A309475.P8043975119408477000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1) - A309474 n

end

end A309475.P8043975119408477000

/-!
# A309476: One of the two successive approximations up to 3^n for the 3-adic integer sqrt(-1/2).

The programs for A309476, there is no canonical definition to state claims against.
-/

/-! ## A309476.P1007431547782840794

`3^n-(A309477(n)+A000007(n))`
-/

namespace A309476.P1007431547782840794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (A309477 n + A000007 n)

end

end A309476.P1007431547782840794

/-! ## A309476.P12503138693430395683

`A268924(n)+A271222(n)-A309477(n)`
-/

namespace A309476.P12503138693430395683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268924 n + (A271222 n - A309477 n)

end

end A309476.P12503138693430395683

/-! ## A309476.P15962375331628674388

`(A309477(n)+A271222(n))%A000244(n)`
-/

namespace A309476.P15962375331628674388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309477 n + A271222 n) (A000244 n)

end

end A309476.P15962375331628674388

/-! ## A309476.P17893536621221610338

`Δ[A003462(A000007(n)+n)]-A309477(n)`
-/

namespace A309476.P17893536621221610338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A309477 n

end

end A309476.P17893536621221610338

/-! ## A309476.P11227486250629932244

`A000244(n)%A000351(n)-A309477(n)`
-/

namespace A309476.P11227486250629932244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A000351 n) - A309477 n

end

end A309476.P11227486250629932244

/-!
# A309477: One of the two successive approximations up to 3^n for the 3-adic integer sqrt(-1/2).

The programs for A309477, there is no canonical definition to state claims against.
-/

/-! ## A309477.P4919926998799336830

`A000244(n)-A309476(A028310(n))`
-/

namespace A309477.P4919926998799336830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A309476 (A028310 n).toNat

end

end A309477.P4919926998799336830

/-! ## A309477.P882477147312373530

`A000244(n)-A309476(A000007(n)+n)`
-/

namespace A309477.P882477147312373530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A309476 (A000007 n + (n : ℤ)).toNat

end

end A309477.P882477147312373530

/-! ## A309477.P2451951834550643897

`A268924(n)+A271222(n)-A309476(n)`
-/

namespace A309477.P2451951834550643897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268924 n + (A271222 n - A309476 n)

end

end A309477.P2451951834550643897

/-! ## A309477.P17634912815501007396

`A000244(n)-A000007(n)-A309476(n)`
-/

namespace A309477.P17634912815501007396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A000007 n - A309476 n

end

end A309477.P17634912815501007396

/-! ## A309477.P15872147587724166969

`(A309476(n)+A268924(n))%A000244(n)`
-/

namespace A309477.P15872147587724166969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309476 n + A268924 n) (A000244 n)

end

end A309477.P15872147587724166969

/-!
# A309478: Sum of the squarefree parts of the partitions of n into 3 parts.

The programs for A309478, there is no canonical definition to state claims against.
-/

/-! ## A309478.P12361139787545172665

`A238134(A114509(n+1))`
-/

namespace A309478.P12361139787545172665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238134 (A114509 (n + 1)).toNat

end

end A309478.P12361139787545172665

/-! ## A309478.P132925443477457317

`∑[A095999(A014681(n)!)]`
-/

namespace A309478.P132925443477457317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095999 (Nat.factorial (A014681 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309478.P132925443477457317

/-! ## A309478.P10453258482488675203

`A001222(A064183(n))*A143579(n)`
-/

namespace A309478.P10453258482488675203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A064183 n).toNat * A143579 n

end

end A309478.P10453258482488675203

/-! ## A309478.P1572220477022342356

`A054991(A287489(n))*A072797(n)`
-/

namespace A309478.P1572220477022342356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (A287489 n).toNat * A072797 n

end

end A309478.P1572220477022342356

/-! ## A309478.P2533987101654507811

`A001221(A326566(n))*A130935(n)`
-/

namespace A309478.P2533987101654507811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A326566 n).toNat * A130935 n

end

end A309478.P2533987101654507811

/-!
# A309479: Sum of the squarefree parts of the partitions of n into 4 parts.

The programs for A309479, there is no canonical definition to state claims against.
-/

/-! ## A309479.P1084416504278239126

`A208246(∑[A169637(n)])`
-/

namespace A309479.P1084416504278239126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208246 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309479.P1084416504278239126

/-! ## A309479.P130560138798327462

`A237769(∑[A230823(n)-gcd(3, n)]+5)`
-/

namespace A309479.P130560138798327462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230823 n - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237769 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A309479.P130560138798327462

/-! ## A309479.P16491956091780550216

`A000583(A001788(n))%A005578(n)`
-/

namespace A309479.P16491956091780550216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 (A001788 n).toNat) (A005578 n)

end

end A309479.P16491956091780550216

/-! ## A309479.P6354763213756041287

`A378033(A304521(n+1))-A081676(n+1)`
-/

namespace A309479.P6354763213756041287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378033 (A304521 (n + 1)).toNat - A081676 (n + 1)

end

end A309479.P6354763213756041287

/-!
# A309480: Sum of the squarefree parts of the partitions of n into 5 parts.

The programs for A309480, there is no canonical definition to state claims against.
-/

/-! ## A309480.P2049453642930160883

`A033431(2*n)%A031143(A343645(2*n+1))`
-/

namespace A309480.P2049453642930160883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033431 (2 * n)) (A031143 (A343645 (2 * n + 1)).toNat)

end

end A309480.P2049453642930160883

/-! ## A309480.P5808284157719335197

`A308783(A308840(n+1))+n*A336361(A336351(2*(n+1)))`
-/

namespace A309480.P5808284157719335197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308783 (A308840 (n + 1)).toNat + (n : ℤ) * A336361 (A336351 (2 * (n + 1))).toNat

end

end A309480.P5808284157719335197

/-!
# A309482: Sum of the squarefree parts of the partitions of n into 7 parts.

The programs for A309482, there is no canonical definition to state claims against.
-/

/-! ## A309482.P12710576117726708818

`n*A045887(A146998(n+1))-A309626(A037145(n))`
-/

namespace A309482.P12710576117726708818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A045887 (A146998 (n + 1)).toNat - A309626 (A037145 n).toNat

end

end A309482.P12710576117726708818

/-!
# A309485: Sum of the squarefree parts of the partitions of n into 9 parts.

The programs for A309485, there is no canonical definition to state claims against.
-/

/-! ## A309485.P11677604020536473660

`n*A328499(A328460(n))-A326471(A338915(n))`
-/

namespace A309485.P11677604020536473660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328499 (A328460 n).toNat - A326471 (A338915 n).toNat

end

end A309485.P11677604020536473660

/-! ## A309485.P16609489664065793746

`n*A356894(A322298(n))-A326471(A338915(n))`
-/

namespace A309485.P16609489664065793746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A356894 (A322298 n).toNat - A326471 (A338915 n).toNat

end

end A309485.P16609489664065793746

/-! ## A309485.P3927081063355414304

`and(A137814(n), A326464(n))`
-/

namespace A309485.P3927081063355414304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137814 n) (A326464 n)

end

end A309485.P3927081063355414304

/-! ## A309485.P10225876751840915279

`and(-A320355(n), A326464(n))`
-/

namespace A309485.P10225876751840915279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A320355 n) (A326464 n)

end

end A309485.P10225876751840915279

/-! ## A309485.P17480396076930573605

`A326464(n)-A184946(A006456(n))`
-/

namespace A309485.P17480396076930573605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 n - A184946 (A006456 n).toNat

end

end A309485.P17480396076930573605

/-!
# A309486: Sum of the squarefree parts of the partitions of n into 10 parts.

The programs for A309486, there is no canonical definition to state claims against.
-/

/-! ## A309486.P4962018735098893363

`and(A001401(A011782(n)), A326588(n))`
-/

namespace A309486.P4962018735098893363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001401 (A011782 n).toNat) (A326588 n)

end

end A309486.P4962018735098893363

/-! ## A309486.P14040346561678261928

`and(A001401(A131577(n)), A326588(n))`
-/

namespace A309486.P14040346561678261928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001401 (A131577 n).toNat) (A326588 n)

end

end A309486.P14040346561678261928

/-! ## A309486.P15271723283181979555

`and(A188114(A140513(n)), A326588(n))`
-/

namespace A309486.P15271723283181979555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188114 (A140513 n).toNat) (A326588 n)

end

end A309486.P15271723283181979555

/-! ## A309486.P13312049329565784916

`and(A307563(A164147(n)), A326588(n))`
-/

namespace A309486.P13312049329565784916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A307563 (A164147 n).toNat) (A326588 n)

end

end A309486.P13312049329565784916

/-! ## A309486.P14329442507397007581

`and(A049627(2^n)+1, A326588(n))`
-/

namespace A309486.P14329442507397007581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049627 (2 ^ n) + 1) (A326588 n)

end

end A309486.P14329442507397007581

/-!
# A309488: Primes whose decimal expansion is of the form d_1+0+d_2+0+d_3+0+...+0+d_k where d_i are digits with 1 <= d_i <= 9, k > 1 and + stands for concatenation.

The programs for A309488, there is no canonical definition to state claims against.
-/

/-! ## A309488.P1898078837271495728

`p?[A051022(A052382(n+8))]`
-/

namespace A309488.P1898078837271495728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A052382 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309488.P1898078837271495728

/-! ## A309488.P61121483288864712

`p?[A051022(A007095(n)+11)]`
-/

namespace A309488.P61121483288864712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A007095 n + 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309488.P61121483288864712

/-! ## A309488.P12760012397753596430

`p?[gcd(A015120(n), A051022(n))]`
-/

namespace A309488.P12760012397753596430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015120 n) (A051022 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A309488.P12760012397753596430

/-! ## A309488.P9153315513901169163

`p?[∩[A274612(n+1), A051022(n)]]`
-/

namespace A309488.P9153315513901169163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274612 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A309488.P9153315513901169163

/-! ## A309488.P6000471180409709268

`p?[A051022(n+8)*A168046(n+8)]`
-/

namespace A309488.P6000471180409709268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (n + 8) * A168046 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309488.P6000471180409709268

/-!
# A309490: Total number of adjacent node merge operations to turn a circular list of size n to a node.

The programs for A309490, the canonical program `A309490.P4600182613217163580` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309490 has offset 1).

The definition of A309490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309490.P4600182613217163580

`n+1+(n+1)*a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309490

/-- `n+1+(n+1)*a(n-1)` -/
def P4600182613217163580.Spec : Prop :=
  ∀ n, (P4600182613217163580.a n : ℤ) = A309490 (n + 1)

theorem P4600182613217163580.correct : P4600182613217163580.Spec := by
  intro n
  simp only [A309490, Nat.add_sub_cancel]

end A309490

/-! ## A309490.P1528379858713117784

`(n+1)*(1+a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A309490.P1528379858713117784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 1) * (1 + a (n - 1))

end

end A309490.P1528379858713117784

namespace A309490

/-- `(n+1)*(1+a(n-1))` -/
def P1528379858713117784.Spec : Prop :=
  ∀ n, (P1528379858713117784.a n : ℤ) = A309490 (n + 1)

theorem P1528379858713117784.correct : P1528379858713117784.Spec := by
  intro n
  simp only [A309490, Nat.add_sub_cancel, A309490.P1528379858713117784.a, A309490.P4600182613217163580.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A309490

/-! ## A309490.P18159931061207425657

`(a(n-1)+1)/(n+1)^(-1)` with `a(0)=0, a(1)=1`
-/

namespace A309490.P18159931061207425657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + 1) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A309490.P18159931061207425657

namespace A309490

/-- `(a(n-1)+1)/(n+1)^(-1)` -/
def P18159931061207425657.Spec : Prop :=
  ∀ n, P18159931061207425657.a n = (A309490 (n + 1) : ℚ)

end A309490

/-! ## A309490.P14651764663547182425

`(n+1)/2*A296943(n)`
-/

namespace A309490.P14651764663547182425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A296943 n : ℚ)

end

end A309490.P14651764663547182425

namespace A309490

/-- `(n+1)/2*A296943(n)` -/
def P14651764663547182425.Spec : Prop :=
  ∀ n, P14651764663547182425.a n = (A309490 (n + 1) : ℚ)

end A309490

/-! ## A309490.P14403308221743196020

`(a(A023443(n))+1)*(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A309490.P14403308221743196020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (A023443 n).toNat + 1) * (n + 1)

end

end A309490.P14403308221743196020

namespace A309490

/-- `(a(A023443(n))+1)*(n+1)` -/
def P14403308221743196020.Spec : Prop :=
  ∀ n, (P14403308221743196020.a n : ℤ) = A309490 (n + 1)

end A309490

/-! ## A309490.P5369808921054481618

`A224869(n+1)+A001710(n+1)`
-/

namespace A309490.P5369808921054481618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224869 (n + 1) + A001710 (n + 1)

end

end A309490.P5369808921054481618

namespace A309490

/-- `A224869(n+1)+A001710(n+1)` -/
def P5369808921054481618.Spec : Prop :=
  ∀ n, P5369808921054481618.a n = A309490 (n + 1)

end A309490

/-! ## A309490.P17686333858423002817

`A000522(n+1)-1-A070960(n+1)`
-/

namespace A309490.P17686333858423002817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (n + 1) - 1 - A070960 (n + 1)

end

end A309490.P17686333858423002817

namespace A309490

/-- `A000522(n+1)-1-A070960(n+1)` -/
def P17686333858423002817.Spec : Prop :=
  ∀ n, P17686333858423002817.a n = A309490 (n + 1)

end A309490

/-! ## A309490.P7732239418407794090

`(a(n-1)+1)*A103128(A000096(n))` with `a(0)=0`
-/

namespace A309490.P7732239418407794090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * A103128 (A000096 n).toNat

end

end A309490.P7732239418407794090

namespace A309490

/-- `(a(n-1)+1)*A103128(A000096(n))` -/
def P7732239418407794090.Spec : Prop :=
  ∀ n, P7732239418407794090.a n = A309490 (n + 1)

end A309490

/-! ## A309490.P1203799777359353002

`A224869(n+1)+A074143(n+1)/(n+1)`
-/

namespace A309490.P1203799777359353002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224869 (n + 1) : ℚ) + (A074143 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A309490.P1203799777359353002

namespace A309490

/-- `A224869(n+1)+A074143(n+1)/(n+1)` -/
def P1203799777359353002.Spec : Prop :=
  ∀ n, P1203799777359353002.a n = (A309490 (n + 1) : ℚ)

end A309490

/-!
# A309491: Let gcd_2(b,c) be the second-largest common divisor of non-coprime integers b and c; then a(n) = Sum_{k=1..n} gcd_2(k,n). If b and c are coprime, then gcd_2(b,c) = 0.

The programs for A309491, there is no canonical definition to state claims against.
-/

/-! ## A309491.P6117536989647235660

`A048766(A095117(A067558(n+1)²))`
-/

namespace A309491.P6117536989647235660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A095117 (A067558 (n + 1) ^ 2).toNat).toNat

end

end A309491.P6117536989647235660

/-! ## A309491.P15182760006611034402

`A051612(n+1)-A353379(A077168(n))`
-/

namespace A309491.P15182760006611034402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) - A353379 (A077168 n).toNat

end

end A309491.P15182760006611034402

/-! ## A309491.P6378957325043903253

`A284258(A000225(n+1))+∑{d}[n+1, #]-(n+1)`
-/

namespace A309491.P6378957325043903253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (A000225 (n + 1)).toNat + (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A309491.P6378957325043903253

/-! ## A309491.P3185334664138980522

`A300244(n+1)+A244315(A006876(n+1))`
-/

namespace A309491.P3185334664138980522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300244 (n + 1) + A244315 (A006876 (n + 1)).toNat

end

end A309491.P3185334664138980522

/-! ## A309491.P4802840595166814646

`A081212(A287993(n))+A001065(n+1)`
-/

namespace A309491.P4802840595166814646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081212 (A287993 n).toNat + A001065 (n + 1)

end

end A309491.P4802840595166814646

/-!
# A309492: a(1) = a(2) = 1, a(3) = 3, a(4) = 5, a(5) = 2; a(n) = a(n-a(n-2)) + a(n-a(n-3)) for n > 5.

The programs for A309492, the canonical program `A309492.P6022290546573679147` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309492 has offset 1).

The definition of A309492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+a(n-a(n-3))` (program `A309492.P6022290546573679147`, by `A309492.P6022290546573679147.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309492.P6022290546573679147

`a(n-a(n-2))+a(n-a(n-3))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309492

/-- `a(n-a(n-2))+a(n-a(n-3))` -/
def P6022290546573679147.Spec : Prop :=
  ∀ n, (P6022290546573679147.a n : ℤ) = A309492 (n + 1)

theorem P6022290546573679147.correct : P6022290546573679147.Spec := by
  intro n
  simp only [A309492, Nat.add_sub_cancel]

end A309492

/-!
# A309493: Highly Brazilian numbers (A329383) that are not highly composite numbers (A002182).

The programs for A309493, there is no canonical definition to state claims against.
-/

/-! ## A309493.P10304117576333832820

`∑{d}[A120327(A179597(n)), #]`
-/

namespace A309493.P10304117576333832820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A179597 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A309493.P10304117576333832820

/-!
# A309494: a(1) = a(2) = a(3) = a(5) = 1, a(4) = 2; a(n) = a(n-a(n-3)) + a(n-a(n-4)) for n > 5.

The programs for A309494, the canonical program `A309494.P3690274714061289843` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309494 has offset 1).

The definition of A309494 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-3))+a(n-a(n-4))` (program `A309494.P3690274714061289843`, by `A309494.P3690274714061289843.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309494.P3690274714061289843

`a(n-a(n-3))+a(n-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309494

/-- `a(n-a(n-3))+a(n-a(n-4))` -/
def P3690274714061289843.Spec : Prop :=
  ∀ n, (P3690274714061289843.a n : ℤ) = A309494 (n + 1)

theorem P3690274714061289843.correct : P3690274714061289843.Spec := by
  intro n
  simp only [A309494, Nat.add_sub_cancel]

end A309494

/-!
# A309495: Triangle read by rows, derived from A007318, row sums = the Bell Sequence.

The programs for A309495, there is no canonical definition to state claims against.
-/

/-! ## A309495.P15293647518231775685

`A325361(A071944(n))%A209622(2*(n+2))`
-/

namespace A309495.P15293647518231775685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325361 (A071944 n).toNat) (A209622 (2 * (n + 2)))

end

end A309495.P15293647518231775685

/-! ## A309495.P431235088570783827

`A325361(A071944(n)%A270613(2*n+5))`
-/

namespace A309495.P431235088570783827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (Int.tmod (A071944 n) (A270613 (2 * n + 5))).toNat

end

end A309495.P431235088570783827

/-!
# A309496: a(1) = 1, a(2) = 3, a(3) = a(4) = a(6) = 6, a(5) = 2, a(7) = 4; a(n) = a(n-a(n-4)) + a(n-a(n-5)) for n > 7.

The programs for A309496, the canonical program `A309496.P17759540887311382837` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309496 has offset 1).

The definition of A309496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-4))+a(n-a(n-5))` (program `A309496.P17759540887311382837`, by `A309496.P17759540887311382837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309496.P17759540887311382837

`a(n-a(n-4))+a(n-a(n-5))` with `a(0)=1, a(1)=3, a(2)=6, a(3)=6, a(4)=2, a(5)=6, a(6)=4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309496

/-- `a(n-a(n-4))+a(n-a(n-5))` -/
def P17759540887311382837.Spec : Prop :=
  ∀ n, (P17759540887311382837.a n : ℤ) = A309496 (n + 1)

theorem P17759540887311382837.correct : P17759540887311382837.Spec := by
  intro n
  simp only [A309496, Nat.add_sub_cancel]

end A309496

/-!
# A309498: Least number k > 0 such that 4*p^2*k^2 + 1 is prime, where p = prime(n) is the n-th prime.

The programs for A309498, there is no canonical definition to state claims against.
-/

/-! ## A309498.P10631380359560727143

`ceil(A193807(A001248(n+1))/2)`
-/

namespace A309498.P10631380359560727143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A193807 (A001248 (n + 1)).toNat : ℚ) / 2⌉

end

end A309498.P10631380359560727143

/-! ## A309498.P11561621721173096214

`round(A193807(p?[A000961(n+1)]²)/2)`
-/

namespace A309498.P11561621721173096214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A193807 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat : ℚ) / 2)

end

end A309498.P11561621721173096214

/-! ## A309498.P2795344789381875367

`A193807(A001248(n+1))/gcd(2, A000010(n+2))`
-/

namespace A309498.P2795344789381875367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193807 (A001248 (n + 1)).toNat : ℚ) / (Int.gcd 2 (A000010 (n + 2)) : ℚ)

end

end A309498.P2795344789381875367

/-!
# A309499: Primes p having a record value of least k such that 4*k^2*p^2 + 1 is prime.

The programs for A309499, there is no canonical definition to state claims against.
-/

/-! ## A309499.P16483007271351869917

`A286516(A135919(n))`
-/

namespace A309499.P16483007271351869917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286516 (A135919 n).toNat

end

end A309499.P16483007271351869917

