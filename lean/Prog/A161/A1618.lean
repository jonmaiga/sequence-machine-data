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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A161801: G.f. is Q_0(q) where Q_0(q^4) is a series quadrisection of the g.f. of A161800.

The programs for A161801, there is no canonical definition to state claims against.
-/

/-! ## A161801.P4358221765393445778

`A161800(4*n)`
-/

namespace A161801.P4358221765393445778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161800 (4 * n)

end

end A161801.P4358221765393445778

/-! ## A161801.P6293055905713498801

`A161800(A008586(n))%Δ[4^n]`
-/

namespace A161801.P6293055905713498801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161800 (A008586 n).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A161801.P6293055905713498801

/-! ## A161801.P10123030165099184521

`A161800(A008574(n))-floor(1/(n+1))`
-/

namespace A161801.P10123030165099184521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161800 (A008574 n).toNat - ⌊1 / (n + 1 : ℚ)⌋

end

end A161801.P10123030165099184521

/-!
# A161802: G.f. is Q_1(q) where q*Q_1(q^4) is a series quadrisection of the g.f. of A161800.

The programs for A161802, there is no canonical definition to state claims against.
-/

/-! ## A161802.P10604355274522286558

`A161800(4*n+1)`
-/

namespace A161802.P10604355274522286558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161800 (4 * n + 1)

end

end A161802.P10604355274522286558

/-! ## A161802.P15543726229761792410

`and(-2, A161800(A016813(n)))`
-/

namespace A161802.P15543726229761792410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A161800 (A016813 n).toNat)

end

end A161802.P15543726229761792410

/-! ## A161802.P13721188247286817095

`A161800(A016813(n))-A101455(2*n)`
-/

namespace A161802.P13721188247286817095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161800 (A016813 n).toNat - A101455 (2 * n)

end

end A161802.P13721188247286817095

/-!
# A161805: A trisection of A161804: a(n) = A161804(3n) for n>=0.

The programs for A161805, there is no canonical definition to state claims against.
-/

/-! ## A161805.P11201943184984123923

`A161804(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161805.P11201943184984123923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161804 (3 * n)

end

end A161805.P11201943184984123923

/-! ## A161805.P5102247194708042410

`record[gcd(A102899(n), A161804(n))]`
-/

namespace A161805.P5102247194708042410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102899 n) (A161804 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161805.P5102247194708042410

/-! ## A161805.P12910614581953937955

`record[record[A161804(n)]/A033999(n)]`
-/

namespace A161805.P12910614581953937955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161804 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161805.P12910614581953937955

/-! ## A161805.P3743819410728538997

`record[A161804(n)/A166925(n+1)]`
-/

namespace A161805.P3743819410728538997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161804 n : ℚ) / (A166925 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161805.P3743819410728538997

/-! ## A161805.P4967499857326243668

`record[record[A161804(n)]/A090740(n+1)]`
-/

namespace A161805.P4967499857326243668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161804 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (A090740 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161805.P4967499857326243668

/-!
# A161806: A trisection of A161804: a(n) = A161804(3n+1) for n>=0.

The programs for A161806, there is no canonical definition to state claims against.
-/

/-! ## A161806.P10366232175214965976

`A161804(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161806.P10366232175214965976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161804 (3 * n + 1)

end

end A161806.P10366232175214965976

/-! ## A161806.P5739475232159915453

`record[A161804(comp[3*n])]`
-/

namespace A161806.P5739475232159915453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161804 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161806.P5739475232159915453

/-! ## A161806.P6130305971206830659

`record[lcm(round(cos(n%6)), A161804(n+1))]`
-/

namespace A161806.P6130305971206830659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ))) (A161804 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161806.P6130305971206830659

/-! ## A161806.P11464325733139944938

`lcm(3, A161804(A016777(n)))`
-/

namespace A161806.P11464325733139944938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A161804 (A016777 n).toNat)

end

end A161806.P11464325733139944938

/-! ## A161806.P2811532337314176038

`or(A000007(n), A161804(A016777(n)))`
-/

namespace A161806.P2811532337314176038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A161804 (A016777 n).toNat)

end

end A161806.P2811532337314176038

/-!
# A161807: A trisection of A161804: a(n) = A161804(3n+2) for n>=0.

The programs for A161807, there is no canonical definition to state claims against.
-/

/-! ## A161807.P7605677971083889292

`A161804(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161807.P7605677971083889292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161804 (3 * n + 2)

end

end A161807.P7605677971083889292

/-! ## A161807.P7429612592455665894

`lcm(3, A161804(A016789(n)))`
-/

namespace A161807.P7429612592455665894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A161804 (A016789 n).toNat)

end

end A161807.P7429612592455665894

/-! ## A161807.P3165764178229829318

`or(A000007(n), A161804(A016789(n)))`
-/

namespace A161807.P3165764178229829318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A161804 (A016789 n).toNat)

end

end A161807.P3165764178229829318

/-! ## A161807.P12061559438315457764

`or(A063524(n), A161804(A016789(n)))`
-/

namespace A161807.P12061559438315457764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A161804 (A016789 n).toNat)

end

end A161807.P12061559438315457764

/-!
# A161808: G.f.: A(q) = exp( Sum_{n>=1} A162552(n) * 3*A038500(n) * q^n/n ).

The programs for A161808, there is no canonical definition to state claims against.
-/

/-! ## A161808.P349281971912412094

`A002102(A278221(n+1)*A293005(n))`
-/

namespace A161808.P349281971912412094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 (A278221 (n + 1) * A293005 n).toNat

end

end A161808.P349281971912412094

/-! ## A161808.P5010157362475276507

`A003959(A261610(n)^A284252(n+1))`
-/

namespace A161808.P5010157362475276507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.roundAway ((A261610 n : ℚ) ^ (A284252 (n + 1) : ℤ))).toNat

end

end A161808.P5010157362475276507

/-!
# A161809: G.f.: A(x) = exp( Sum_{n>=1} 3*A038500(n) * x^n/n ), where A038500 is the highest power of 3 dividing n.

The programs for A161809, there is no canonical definition to state claims against.
-/

/-! ## A161809.P9726255777902084304

`∑[A309677(n)]`
-/

namespace A161809.P9726255777902084304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161809.P9726255777902084304

/-! ## A161809.P13175379264980297799

`A309677(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A161809.P13175379264980297799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A309677 n + a (A023443 n).toNat

end

end A161809.P13175379264980297799

/-! ## A161809.P12797938019233361793

`A309677(3*n+1)-A309677(3*n)`
-/

namespace A161809.P12797938019233361793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309677 (3 * n + 1) - A309677 (3 * n)

end

end A161809.P12797938019233361793

/-! ## A161809.P13710015648111104344

`record[A309677(A004442(n))-A309677(n)]`
-/

namespace A161809.P13710015648111104344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309677 (A004442 n).toNat - A309677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161809.P13710015648111104344

/-! ## A161809.P16715745927313378749

`record[A309677(A061800(n))-A309677(n)]`
-/

namespace A161809.P16715745927313378749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309677 (A061800 n).toNat - A309677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161809.P16715745927313378749

/-! ## A161809.P9737233653232648096

`A309677(n)+a(log2(A011782(n)))` with `a(0)=1`
-/

namespace A161809.P9737233653232648096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A309677 n + a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A161809.P9737233653232648096

/-!
# A161811: Difference between nonprime(n+2) and nonprime(n).

The programs for A161811, the canonical program `A161811.P1074302778511072887` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161811 has offset 1).

The definition of A161811 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161811.P1074302778511072887

`A141468(n+3)-A141468(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161811

/-- `A141468(n+3)-A141468(n+1)` -/
def P1074302778511072887.Spec : Prop :=
  ∀ n, P1074302778511072887.a n = A161811 (n + 1)

theorem P1074302778511072887.correct : P1074302778511072887.Spec := by
  intro n
  simp only [A161811, Nat.add_sub_cancel]

end A161811

/-! ## A161811.P5674001425612480521

`A002808(n+1)-comp[p?[xor(1, n)]]`
-/

namespace A161811.P5674001425612480521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A161811.P5674001425612480521

namespace A161811

/-- `A002808(n+1)-comp[p?[xor(1, n)]]` -/
def P5674001425612480521.Spec : Prop :=
  ∀ n, P5674001425612480521.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P15907568893048524295

`A018252(n+2)-comp[p?[xor(1, n)]]`
-/

namespace A161811.P15907568893048524295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A161811.P15907568893048524295

namespace A161811

/-- `A018252(n+2)-comp[p?[xor(1, n)]]` -/
def P15907568893048524295.Spec : Prop :=
  ∀ n, P15907568893048524295.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P6586212143807990714

`comp[A351078(n)]-comp[A151800(n)]`
-/

namespace A161811.P6586212143807990714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A161811.P6586212143807990714

namespace A161811

/-- `comp[A351078(n)]-comp[A151800(n)]` -/
def P6586212143807990714.Spec : Prop :=
  ∀ n, P6586212143807990714.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P8759368861051601464

`Δ[A053767(n)]-A141468(n+1)`
-/

namespace A161811.P8759368861051601464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A141468 (n + 1)

end

end A161811.P8759368861051601464

namespace A161811

/-- `Δ[A053767(n)]-A141468(n+1)` -/
def P8759368861051601464.Spec : Prop :=
  ∀ n, P8759368861051601464.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P14001116821579398256

`A002808(n+1)-comp[A060264(n)]`
-/

namespace A161811.P14001116821579398256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161811.P14001116821579398256

namespace A161811

/-- `A002808(n+1)-comp[A060264(n)]` -/
def P14001116821579398256.Spec : Prop :=
  ∀ n, P14001116821579398256.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P16583146735744435763

`A002808(n+1)-comp[A088732(n)]`
-/

namespace A161811.P16583146735744435763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161811.P16583146735744435763

namespace A161811

/-- `A002808(n+1)-comp[A088732(n)]` -/
def P16583146735744435763.Spec : Prop :=
  ∀ n, P16583146735744435763.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P9274007377322924424

`A002808(n+1)-comp[A151800(n)]`
-/

namespace A161811.P9274007377322924424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161811.P9274007377322924424

namespace A161811

/-- `A002808(n+1)-comp[A151800(n)]` -/
def P9274007377322924424.Spec : Prop :=
  ∀ n, P9274007377322924424.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P17398291950775403500

`comp[A351078(n)]-A141468(n+1)`
-/

namespace A161811.P17398291950775403500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A141468 (n + 1)

end

end A161811.P17398291950775403500

namespace A161811

/-- `comp[A351078(n)]-A141468(n+1)` -/
def P17398291950775403500.Spec : Prop :=
  ∀ n, P17398291950775403500.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P8995258463856646847

`A018252(n+2)-comp[A151800(n)]`
-/

namespace A161811.P8995258463856646847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161811.P8995258463856646847

namespace A161811

/-- `A018252(n+2)-comp[A151800(n)]` -/
def P8995258463856646847.Spec : Prop :=
  ∀ n, P8995258463856646847.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P13765794208541968308

`A018252(n+2)-comp[A162753(n)]`
-/

namespace A161811.P13765794208541968308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161811.P13765794208541968308

namespace A161811

/-- `A018252(n+2)-comp[A162753(n)]` -/
def P13765794208541968308.Spec : Prop :=
  ∀ n, P13765794208541968308.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P13589511866544612192

`A065310(n+1)+A054546(n+1)`
-/

namespace A161811.P13589511866544612192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1) + A054546 (n + 1)

end

end A161811.P13589511866544612192

namespace A161811

/-- `A065310(n+1)+A054546(n+1)` -/
def P13589511866544612192.Spec : Prop :=
  ∀ n, P13589511866544612192.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P8626555503099872967

`A161671(n+1)-A038529(n+1)`
-/

namespace A161811.P8626555503099872967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1) - A038529 (n + 1)

end

end A161811.P8626555503099872967

namespace A161811

/-- `A161671(n+1)-A038529(n+1)` -/
def P8626555503099872967.Spec : Prop :=
  ∀ n, P8626555503099872967.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P10490217077574112151

`A161843(n+1)-A176100(n+1)`
-/

namespace A161811.P10490217077574112151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1) - A176100 (n + 1)

end

end A161811.P10490217077574112151

namespace A161811

/-- `A161843(n+1)-A176100(n+1)` -/
def P10490217077574112151.Spec : Prop :=
  ∀ n, P10490217077574112151.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P18419082401186371010

`A282671(n+1)-A161843(n+1)`
-/

namespace A161811.P18419082401186371010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1) - A161843 (n + 1)

end

end A161811.P18419082401186371010

namespace A161811

/-- `A282671(n+1)-A161843(n+1)` -/
def P18419082401186371010.Spec : Prop :=
  ∀ n, P18419082401186371010.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P2400104099925266056

`A002808(n+1)-comp[A000040(n+1)]`
-/

namespace A161811.P2400104099925266056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161811.P2400104099925266056

namespace A161811

/-- `A002808(n+1)-comp[A000040(n+1)]` -/
def P2400104099925266056.Spec : Prop :=
  ∀ n, P2400104099925266056.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P8422621820452852307

`A018252(n+2)-comp[A006530(n+2)]`
-/

namespace A161811.P8422621820452852307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161811.P8422621820452852307

namespace A161811

/-- `A018252(n+2)-comp[A006530(n+2)]` -/
def P8422621820452852307.Spec : Prop :=
  ∀ n, P8422621820452852307.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P8189793699925270174

`A002808(n+1)+A002808(n+1)-A161843(n+1)`
-/

namespace A161811.P8189793699925270174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A002808 (n + 1) - A161843 (n + 1))

end

end A161811.P8189793699925270174

namespace A161811

/-- `A002808(n+1)+A002808(n+1)-A161843(n+1)` -/
def P8189793699925270174.Spec : Prop :=
  ∀ n, P8189793699925270174.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P4829766798931959924

`A161671(n+1)+A018252(n+2)-A000040(n+1)`
-/

namespace A161811.P4829766798931959924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1) + (A018252 (n + 2) - A000040 (n + 1))

end

end A161811.P4829766798931959924

namespace A161811

/-- `A161671(n+1)+A018252(n+2)-A000040(n+1)` -/
def P4829766798931959924.Spec : Prop :=
  ∀ n, P4829766798931959924.a n = A161811 (n + 1)

end A161811

/-! ## A161811.P14901191893409146983

`A002808(n+1)-A161844(n+1)/A002808(n+1)`
-/

namespace A161811.P14901191893409146983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) - (A161844 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ)

end

end A161811.P14901191893409146983

namespace A161811

/-- `A002808(n+1)-A161844(n+1)/A002808(n+1)` -/
def P14901191893409146983.Spec : Prop :=
  ∀ n, P14901191893409146983.a n = (A161811 (n + 1) : ℚ)

end A161811

/-!
# A161812: Numbers with decreasing but not strictly decreasing prime signature.

The programs for A161812, there is no canonical definition to state claims against.
-/

/-! ## A161812.P8865892790085120472

`∩[A025487(n+1), A130092(n+1)]`
-/

namespace A161812.P8865892790085120472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161812.P8865892790085120472

/-! ## A161812.P8266805354794477762

`record[A046523(A130092(n+1))]`
-/

namespace A161812.P8266805354794477762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A130092 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161812.P8266805354794477762

/-! ## A161812.P2899929761113596495

`record[A046523(comp[A130091(n+1)-1]+1)]`
-/

namespace A161812.P2899929761113596495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161812.P2899929761113596495

/-! ## A161812.P1489377580200131939

`record[A046523(lt[1, (A351944((n-1)%(n+1)+1)+1)/2])]`
-/

namespace A161812.P1489377580200131939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351944 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat + 1 : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161812.P1489377580200131939

/-! ## A161812.P6133596544517581652

`∩[A130092(n+1), A329899(A330683(n+1))]`
-/

namespace A161812.P6133596544517581652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (A330683 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161812.P6133596544517581652

/-!
# A161813: Rank of n in the lunar poset.

The programs for A161813, there is no canonical definition to state claims against.
-/

/-! ## A161813.P10179234994526388261

`A030076(n+1)-A000007(A118511(n+2))`
-/

namespace A161813.P10179234994526388261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030076 (n + 1) - A000007 (A118511 (n + 2)).toNat

end

end A161813.P10179234994526388261

/-! ## A161813.P12719967598403495523

`A030076(n+1)-A010057(∏{p}[A326528(n)+1, #])`
-/

namespace A161813.P12719967598403495523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326528 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030076 (n + 1) - A010057 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A161813.P12719967598403495523

/-! ## A161813.P12546391087548078895

`A030076(n+1)-A000007(A326528(n))`
-/

namespace A161813.P12546391087548078895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030076 (n + 1) - A000007 (A326528 n).toNat

end

end A161813.P12546391087548078895

/-! ## A161813.P4397765921974061085

`A030076(n+1)-A010057(A326528(n)+1)`
-/

namespace A161813.P4397765921974061085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030076 (n + 1) - A010057 (A326528 n + 1).toNat

end

end A161813.P4397765921974061085

/-! ## A161813.P12661109041582354101

`10-A054055(n+1)-A000007(A326528(n))`
-/

namespace A161813.P12661109041582354101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A054055 (n + 1) - A000007 (A326528 n).toNat

end

end A161813.P12661109041582354101

/-! ## A161813.P12172551401878343759

`A251984(A004185(n+1))-A000007(A326528(n))`
-/

namespace A161813.P12172551401878343759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A004185 (n + 1)).toNat - A000007 (A326528 n).toNat

end

end A161813.P12172551401878343759

/-!
# A161816: Denominator of fraction in Redheffer type matrix.

The programs for A161816, there is no canonical definition to state claims against.
-/

/-! ## A161816.P15631833408004629150

`2^round(∑[tanh(n)²])`
-/

namespace A161816.P15631833408004629150
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n : ℝ) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A161816.P15631833408004629150

/-! ## A161816.P15227706170131483448

`2^round(∑[atan(atan(n))])`
-/

namespace A161816.P15227706170131483448
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Real.arctan (n : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A161816.P15227706170131483448

/-! ## A161816.P2081342799307136975

`2^floor(tanh(2)/acot(n))`
-/

namespace A161816.P2081342799307136975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊Real.tanh (2 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋ : ℤ)

end

end A161816.P2081342799307136975

/-! ## A161816.P14850357792865499473

`2^(n-floor(atan(sqrt(n))))`
-/

namespace A161816.P14850357792865499473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ⌊Real.arctan (Real.sqrt (n : ℝ))⌋ : ℤ)

end

end A161816.P14850357792865499473

/-! ## A161816.P14801698466069503442

`2^ceil(∑[atan(atan(n))²])`
-/

namespace A161816.P14801698466069503442
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Real.arctan (n : ℝ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℤ)

end

end A161816.P14801698466069503442

/-!
# A161817: Positions n such that A010060(n) = A010060(n+5).

The programs for A161817, the canonical program `A161817.P11412616101657124378` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161817 has offset 1).

The definition of A161817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161817.P11412616101657124378

`eq[A035263(n+1), A039963(ceil(n/2))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A161817

/-- `eq[A035263(n+1), A039963(ceil(n/2))]` -/
def P11412616101657124378.Spec : Prop :=
  ∀ n, (P11412616101657124378.a n : ℤ) = A161817 (n + 1)

theorem P11412616101657124378.correct : P11412616101657124378.Spec := by
  intro n
  simp only [A161817, Nat.add_sub_cancel]

end A161817

/-! ## A161817.P2517407188761634628

`eq[A010060(A000265(n+5)), A010060(n)]`
-/

namespace A161817.P2517407188761634628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A000265 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161817.P2517407188761634628

namespace A161817

/-- `eq[A010060(A000265(n+5)), A010060(n)]` -/
def P2517407188761634628.Spec : Prop :=
  ∀ n, (P2517407188761634628.a n : ℤ) = A161817 (n + 1)

end A161817

/-! ## A161817.P7616894393591335698

`eq[A010060(n+5), A010060(n)]`
-/

namespace A161817.P7616894393591335698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161817.P7616894393591335698

namespace A161817

/-- `eq[A010060(n+5), A010060(n)]` -/
def P7616894393591335698.Spec : Prop :=
  ∀ n, (P7616894393591335698.a n : ℤ) = A161817 (n + 1)

end A161817

/-! ## A161817.P14154248904928947517

`eq[A056832(or(3, n+1)+1), A056832(n+1)]`
-/

namespace A161817.P14154248904928947517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (Nat.lor 3 (n + 1) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161817.P14154248904928947517

namespace A161817

/-- `eq[A056832(or(3, n+1)+1), A056832(n+1)]` -/
def P14154248904928947517.Spec : Prop :=
  ∀ n, (P14154248904928947517.a n : ℤ) = A161817 (n + 1)

end A161817

/-! ## A161817.P8494941987739645323

`eq[A001285(n+5), A001285(n)]`
-/

namespace A161817.P8494941987739645323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161817.P8494941987739645323

namespace A161817

/-- `eq[A001285(n+5), A001285(n)]` -/
def P8494941987739645323.Spec : Prop :=
  ∀ n, (P8494941987739645323.a n : ℤ) = A161817 (n + 1)

end A161817

/-! ## A161817.P13692246567415167787

`eq[A010059(n+5), A010059(n)]`
-/

namespace A161817.P13692246567415167787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161817.P13692246567415167787

namespace A161817

/-- `eq[A010059(n+5), A010059(n)]` -/
def P13692246567415167787.Spec : Prop :=
  ∀ n, (P13692246567415167787.a n : ℤ) = A161817 (n + 1)

end A161817

/-! ## A161817.P15297567161769239620

`eq[A039963(2*n), A039963(A004526(n+1))]`
-/

namespace A161817.P15297567161769239620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A004526 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161817.P15297567161769239620

namespace A161817

/-- `eq[A039963(2*n), A039963(A004526(n+1))]` -/
def P15297567161769239620.Spec : Prop :=
  ∀ n, (P15297567161769239620.a n : ℤ) = A161817 (n + 1)

end A161817

/-!
# A161818: If b(n) = the largest proper divisor of n, then a(n) = (2^n - 1)/(2^b(n) - 1).

The programs for A161818, there is no canonical definition to state claims against.
-/

/-! ## A161818.P13437429951946931338

`A126646(n+1)/A126646(A089196(n+1))`
-/

namespace A161818.P13437429951946931338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 (n + 1) : ℚ) / (A126646 (A089196 (n + 1)).toNat : ℚ)

end

end A161818.P13437429951946931338

/-! ## A161818.P7677121659987386140

`A000225(n+2)/A000225(A032742(n+2))`
-/

namespace A161818.P7677121659987386140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 2) : ℚ) / (A000225 (A032742 (n + 2)).toNat : ℚ)

end

end A161818.P7677121659987386140

/-! ## A161818.P8844017110989591068

`A000225(n+2)/A000225(A054576(2*(n+2)))`
-/

namespace A161818.P8844017110989591068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 2) : ℚ) / (A000225 (A054576 (2 * (n + 2))).toNat : ℚ)

end

end A161818.P8844017110989591068

/-! ## A161818.P12403636953426300780

`A255047(n+2)/A255047(A054576(2*(n+2)))`
-/

namespace A161818.P12403636953426300780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255047 (n + 2) : ℚ) / (A255047 (A054576 (2 * (n + 2))).toNat : ℚ)

end

end A161818.P12403636953426300780

/-! ## A161818.P3755230561634647685

`A095121(n+2)/A095121(A032742(n+2))`
-/

namespace A161818.P3755230561634647685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095121 (n + 2) : ℚ) / (A095121 (A032742 (n + 2)).toNat : ℚ)

end

end A161818.P3755230561634647685

/-! ## A161818.P8542841591548688291

`A159741(n+2)/A159741(A032742(n+2))`
-/

namespace A161818.P8542841591548688291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159741 (n + 2) : ℚ) / (A159741 (A032742 (n + 2)).toNat : ℚ)

end

end A161818.P8542841591548688291

/-!
# A161820: a(n) is the smallest positive integer such that both n and a(n), when represented in binary, contain the same types of runs of 1's, the runs being in any order.

The programs for A161820, the canonical program `A161820.P14402460152946731536` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161820 has offset 1).

The definition of A161820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161820.P14402460152946731536

`A322993(A278222(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A161820

/-- `A322993(A278222(n+1))` -/
def P14402460152946731536.Spec : Prop :=
  ∀ n, P14402460152946731536.a n = A161820 (n + 1)

theorem P14402460152946731536.correct : P14402460152946731536.Spec := by
  intro n
  simp only [A161820, Nat.add_sub_cancel]

end A161820

/-! ## A161820.P3092887674015709066

`A156552(A278222(2*(n+1)))`
-/

namespace A161820.P3092887674015709066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A278222 (2 * (n + 1))).toNat

end

end A161820.P3092887674015709066

namespace A161820

/-- `A156552(A278222(2*(n+1)))` -/
def P3092887674015709066.Spec : Prop :=
  ∀ n, P3092887674015709066.a n = A161820 (n + 1)

end A161820

/-! ## A161820.P18227255706524781477

`∑{d}[A278222(n+1), A297112(#)]`
-/

namespace A161820.P18227255706524781477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297112 d

end

end A161820.P18227255706524781477

namespace A161820

/-- `∑{d}[A278222(n+1), A297112(#)]` -/
def P18227255706524781477.Spec : Prop :=
  ∀ n, P18227255706524781477.a n = A161820 (n + 1)

end A161820

/-! ## A161820.P13381960522761499764

`A156552(A278502(A279344(n+1)))`
-/

namespace A161820.P13381960522761499764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A278502 (A279344 (n + 1)).toNat).toNat

end

end A161820.P13381960522761499764

namespace A161820

/-- `A156552(A278502(A279344(n+1)))` -/
def P13381960522761499764.Spec : Prop :=
  ∀ n, P13381960522761499764.a n = A161820 (n + 1)

end A161820

/-! ## A161820.P17694765637528783217

`A156552(A278233(A305417(n+1)))`
-/

namespace A161820.P17694765637528783217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A278233 (A305417 (n + 1)).toNat).toNat

end

end A161820.P17694765637528783217

namespace A161820

/-- `A156552(A278233(A305417(n+1)))` -/
def P17694765637528783217.Spec : Prop :=
  ∀ n, P17694765637528783217.a n = A161820 (n + 1)

end A161820

/-! ## A161820.P2157156538273731781

`A193231(A366264(A286601(A193231(n+1))))`
-/

namespace A161820.P2157156538273731781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A366264 (A286601 (A193231 (n + 1)).toNat).toNat).toNat

end

end A161820.P2157156538273731781

namespace A161820

/-- `A193231(A366264(A286601(A193231(n+1))))` -/
def P2157156538273731781.Spec : Prop :=
  ∀ n, P2157156538273731781.a n = A161820 (n + 1)

end A161820

/-! ## A161820.P615292377092141611

`A156552(A278223(A244154(n+1)))`
-/

namespace A161820.P615292377092141611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A278223 (A244154 (n + 1)).toNat).toNat

end

end A161820.P615292377092141611

namespace A161820

/-- `A156552(A278223(A244154(n+1)))` -/
def P615292377092141611.Spec : Prop :=
  ∀ n, P615292377092141611.a n = A161820 (n + 1)

end A161820

/-! ## A161820.P8328657394977817942

`A156552(A046523(A005940(n+2)))`
-/

namespace A161820.P8328657394977817942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A046523 (A005940 (n + 2)).toNat).toNat

end

end A161820.P8328657394977817942

namespace A161820

/-- `A156552(A046523(A005940(n+2)))` -/
def P8328657394977817942.Spec : Prop :=
  ∀ n, P8328657394977817942.a n = A161820 (n + 1)

end A161820

/-! ## A161820.P15392995833980792126

`A156552(A124859(A278159(n+1)))`
-/

namespace A161820.P15392995833980792126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A124859 (A278159 (n + 1)).toNat).toNat

end

end A161820.P15392995833980792126

namespace A161820

/-- `A156552(A124859(A278159(n+1)))` -/
def P15392995833980792126.Spec : Prop :=
  ∀ n, P15392995833980792126.a n = A161820 (n + 1)

end A161820

/-!
# A161822: a(n) = the smallest positive integer such that both n and a(n), when represented in binary, contain the same types of runs of 0's, the runs being in any order.

The programs for A161822, there is no canonical definition to state claims against.
-/

/-! ## A161822.P15772465762610168435

`A322250(A267508(n+1)+1)`
-/

namespace A161822.P15772465762610168435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322250 (A267508 (n + 1) + 1).toNat

end

end A161822.P15772465762610168435

/-! ## A161822.P13299021905350839006

`A036044(A036044(A267508(n+1)))`
-/

namespace A161822.P13299021905350839006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A036044 (A267508 (n + 1)).toNat).toNat

end

end A161822.P13299021905350839006

/-! ## A161822.P8590606216088572116

`A090077(A322250(n+2)%A141250(n+1))`
-/

namespace A161822.P8590606216088572116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 (Int.tmod (A322250 (n + 2)) (A141250 (n + 1))).toNat

end

end A161822.P8590606216088572116

/-! ## A161822.P11734676215570249184

`A090077(A322250(n+2))%A141230(3*n+4)`
-/

namespace A161822.P11734676215570249184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090077 (A322250 (n + 2)).toNat) (A141230 (3 * n + 4))

end

end A161822.P11734676215570249184

/-! ## A161822.P2300128896073549685

`A015161(n)!*A090077(A163380(n+1))`
-/

namespace A161822.P2300128896073549685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A015161 n).toNat : ℤ) * A090077 (A163380 (n + 1)).toNat

end

end A161822.P2300128896073549685

/-!
# A161823: Among any n lines on the plane, there exists a pair at an angle not more than a(n) degrees.

The programs for A161823, the canonical program `A161823.P14772837221372451884` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161823 has offset 2).

The definition of A161823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161823.P14772837221372451884

`ceil(180/(n+2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A161823

/-- `ceil(180/(n+2))` -/
def P14772837221372451884.Spec : Prop :=
  ∀ n, P14772837221372451884.a n = A161823 (n + 2)

theorem P14772837221372451884.correct : P14772837221372451884.Spec := by
  intro n
  simp only [A161823, Nat.add_sub_cancel]

end A161823

/-! ## A161823.P13835562775087402879

`C(floor(178/(n+2))+1, floor(178/(n+2)))`
-/

namespace A161823.P13835562775087402879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊178 / (n + 2 : ℚ)⌋ + 1).toNat ⌊178 / (n + 2 : ℚ)⌋.toNat

end

end A161823.P13835562775087402879

namespace A161823

/-- `C(floor(178/(n+2))+1, floor(178/(n+2)))` -/
def P13835562775087402879.Spec : Prop :=
  ∀ n, (P13835562775087402879.a n : ℤ) = A161823 (n + 2)

end A161823

/-! ## A161823.P4895874470067650078

`A000027(floor(178/(n+2))+1)`
-/

namespace A161823.P4895874470067650078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌊178 / (n + 2 : ℚ)⌋ + 1).toNat

end

end A161823.P4895874470067650078

namespace A161823

/-- `A000027(floor(178/(n+2))+1)` -/
def P4895874470067650078.Spec : Prop :=
  ∀ n, P4895874470067650078.a n = A161823 (n + 2)

end A161823

/-! ## A161823.P11643426077331787701

`floor(178/(n+2))+A097807(n)²`
-/

namespace A161823.P11643426077331787701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊178 / (n + 2 : ℚ)⌋ + A097807 n ^ 2

end

end A161823.P11643426077331787701

namespace A161823

/-- `floor(178/(n+2))+A097807(n)²` -/
def P11643426077331787701.Spec : Prop :=
  ∀ n, P11643426077331787701.a n = A161823 (n + 2)

end A161823

/-! ## A161823.P11781063330595225363

`A057427(3*n+1)+floor(178/(n+2))`
-/

namespace A161823.P11781063330595225363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 1) + ⌊178 / (n + 2 : ℚ)⌋

end

end A161823.P11781063330595225363

namespace A161823

/-- `A057427(3*n+1)+floor(178/(n+2))` -/
def P11781063330595225363.Spec : Prop :=
  ∀ n, P11781063330595225363.a n = A161823 (n + 2)

end A161823

/-! ## A161823.P9635369693794331280

`floor(178/(n+2))+A004530(3*n+2)!`
-/

namespace A161823.P9635369693794331280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊178 / (n + 2 : ℚ)⌋ + (Nat.factorial (A004530 (3 * n + 2)).toNat : ℤ)

end

end A161823.P9635369693794331280

namespace A161823

/-- `floor(178/(n+2))+A004530(3*n+2)!` -/
def P9635369693794331280.Spec : Prop :=
  ∀ n, P9635369693794331280.a n = A161823 (n + 2)

end A161823

/-!
# A161824: Numbers such that A010060(n) = A010060(n+6).

The programs for A161824, the canonical program `A161824.P16062857071686495012` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161824 has offset 1).

The definition of A161824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161824.P16062857071686495012

`eq[A010060(n+6), A010060(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161824

/-- `eq[A010060(n+6), A010060(n)]` -/
def P16062857071686495012.Spec : Prop :=
  ∀ n, (P16062857071686495012.a n : ℤ) = A161824 (n + 1)

theorem P16062857071686495012.correct : P16062857071686495012.Spec := by
  intro n
  simp only [A161824, Nat.add_sub_cancel]

end A161824

/-! ## A161824.P17008525073845635813

`eq[A039963(∑[∑[n]%2]), A039963(n)]`
-/

namespace A161824.P17008525073845635813
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (∑ j ∈ Finset.range (n + 1), f2 j)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f4 j) n

end

end A161824.P17008525073845635813

namespace A161824

/-- `eq[A039963(∑[∑[n]%2]), A039963(n)]` -/
def P17008525073845635813.Spec : Prop :=
  ∀ n, (P17008525073845635813.a n : ℤ) = A161824 (n + 1)

end A161824

/-! ## A161824.P11800214607165186564

`eq[A039963(A004526(n)+1), A039963(n)]`
-/

namespace A161824.P11800214607165186564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A004526 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161824.P11800214607165186564

namespace A161824

/-- `eq[A039963(A004526(n)+1), A039963(n)]` -/
def P11800214607165186564.Spec : Prop :=
  ∀ n, (P11800214607165186564.a n : ℤ) = A161824 (n + 1)

end A161824

/-! ## A161824.P13547618022677945125

`eq[A001285(n+6), A001285(n)]`
-/

namespace A161824.P13547618022677945125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161824.P13547618022677945125

namespace A161824

/-- `eq[A001285(n+6), A001285(n)]` -/
def P13547618022677945125.Spec : Prop :=
  ∀ n, (P13547618022677945125.a n : ℤ) = A161824 (n + 1)

end A161824

/-! ## A161824.P2233582321020420791

`eq[A010059(n+6), A010059(n)]`
-/

namespace A161824.P2233582321020420791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161824.P2233582321020420791

namespace A161824

/-- `eq[A010059(n+6), A010059(n)]` -/
def P2233582321020420791.Spec : Prop :=
  ∀ n, (P2233582321020420791.a n : ℤ) = A161824 (n + 1)

end A161824

/-! ## A161824.P10610244926523584816

`eq[A106400(n+6), A106400(n)]`
-/

namespace A161824.P10610244926523584816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161824.P10610244926523584816

namespace A161824

/-- `eq[A106400(n+6), A106400(n)]` -/
def P10610244926523584816.Spec : Prop :=
  ∀ n, (P10610244926523584816.a n : ℤ) = A161824 (n + 1)

end A161824

/-! ## A161824.P15995609348565757816

`lt[2, A055396(xor(n, n+6)+1)]`
-/

namespace A161824.P15995609348565757816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Nat.xor n (n + 6) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161824.P15995609348565757816

namespace A161824

/-- `lt[2, A055396(xor(n, n+6)+1)]` -/
def P15995609348565757816.Spec : Prop :=
  ∀ n, (P15995609348565757816.a n : ℤ) = A161824 (n + 1)

end A161824

/-!
# A161825: a(n) is the GCD of n and {the number made by reversing the order of the digits of n written in binary}.

The programs for A161825, the canonical program `A161825.P5954418571217578366` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161825 has offset 1).

The definition of A161825 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161825.P5954418571217578366

`gcd(n+1, A030101(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161825

/-- `gcd(n+1, A030101(n+1))` -/
def P5954418571217578366.Spec : Prop :=
  ∀ n, (P5954418571217578366.a n : ℤ) = A161825 (n + 1)

theorem P5954418571217578366.correct : P5954418571217578366.Spec := by
  intro n
  simp only [A161825, Nat.add_sub_cancel]

end A161825

/-! ## A161825.P1404133030780012234

`gcd(1-(4/2+n), A055944(n+1))`
-/

namespace A161825.P1404133030780012234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (1 - ((4 : ℚ) / 2 + (n : ℚ)))) (A055944 (n + 1))

end

end A161825.P1404133030780012234

namespace A161825

/-- `gcd(1-(4/2+n), A055944(n+1))` -/
def P1404133030780012234.Spec : Prop :=
  ∀ n, (P1404133030780012234.a n : ℤ) = A161825 (n + 1)

end A161825

/-! ## A161825.P6882944832117216912

`gcd(xor(n, -1), A057889((n+1)/2^val(n+1, 2)))`
-/

namespace A161825.P6882944832117216912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A057889 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

end

end A161825.P6882944832117216912

namespace A161825

/-- `gcd(xor(n, -1), A057889((n+1)/2^val(n+1, 2)))` -/
def P6882944832117216912.Spec : Prop :=
  ∀ n, (P6882944832117216912.a n : ℤ) = A161825 (n + 1)

end A161825

/-! ## A161825.P6489900116072484200

`gcd((n+1)/2^val(n+1, 2), A217589((n+1)/2^val(n+1, 2)))`
-/

namespace A161825.P6489900116072484200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A217589 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

end

end A161825.P6489900116072484200

namespace A161825

/-- `gcd((n+1)/2^val(n+1, 2), A217589((n+1)/2^val(n+1, 2)))` -/
def P6489900116072484200.Spec : Prop :=
  ∀ n, (P6489900116072484200.a n : ℤ) = A161825 (n + 1)

end A161825

/-! ## A161825.P7226151146789797669

`gcd(A030640(n), A342122(n+1))`
-/

namespace A161825.P7226151146789797669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030640 n) (A342122 (n + 1))

end

end A161825.P7226151146789797669

namespace A161825

/-- `gcd(A030640(n), A342122(n+1))` -/
def P7226151146789797669.Spec : Prop :=
  ∀ n, (P7226151146789797669.a n : ℤ) = A161825 (n + 1)

end A161825

/-! ## A161825.P4294033159136156017

`gcd(A000265(n+1), A057889(n+1))`
-/

namespace A161825.P4294033159136156017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (n + 1)) (A057889 (n + 1))

end

end A161825.P4294033159136156017

namespace A161825

/-- `gcd(A000265(n+1), A057889(n+1))` -/
def P4294033159136156017.Spec : Prop :=
  ∀ n, (P4294033159136156017.a n : ℤ) = A161825 (n + 1)

end A161825

/-! ## A161825.P3582035755385978783

`gcd(A022998(n+1), A055945(n+1))`
-/

namespace A161825.P3582035755385978783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022998 (n + 1)) (A055945 (n + 1))

end

end A161825.P3582035755385978783

namespace A161825

/-- `gcd(A022998(n+1), A055945(n+1))` -/
def P3582035755385978783.Spec : Prop :=
  ∀ n, (P3582035755385978783.a n : ℤ) = A161825 (n + 1)

end A161825

/-! ## A161825.P7699164498977744426

`gcd(A325401(n+1), A325402(n+1))`
-/

namespace A161825.P7699164498977744426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325401 (n + 1)) (A325402 (n + 1))

end

end A161825.P7699164498977744426

namespace A161825

/-- `gcd(A325401(n+1), A325402(n+1))` -/
def P7699164498977744426.Spec : Prop :=
  ∀ n, (P7699164498977744426.a n : ℤ) = A161825 (n + 1)

end A161825

/-! ## A161825.P6348331885588429988

`gcd(A000027(n+1), A006257(A059893(n+1)))`
-/

namespace A161825.P6348331885588429988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A006257 (A059893 (n + 1)).toNat)

end

end A161825.P6348331885588429988

namespace A161825

/-- `gcd(A000027(n+1), A006257(A059893(n+1)))` -/
def P6348331885588429988.Spec : Prop :=
  ∀ n, (P6348331885588429988.a n : ℤ) = A161825 (n + 1)

end A161825

/-! ## A161825.P15908580118353631205

`gcd(A000265(2*(n+1)), A342121(A000265(2*(n+1))))`
-/

namespace A161825.P15908580118353631205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (2 * (n + 1))) (A342121 (A000265 (2 * (n + 1))).toNat)

end

end A161825.P15908580118353631205

namespace A161825

/-- `gcd(A000265(2*(n+1)), A342121(A000265(2*(n+1))))` -/
def P15908580118353631205.Spec : Prop :=
  ∀ n, (P15908580118353631205.a n : ℤ) = A161825 (n + 1)

end A161825

/-! ## A161825.P7919519251582980169

`gcd(A059893(A059893(n+1)), A264618(n+1))`
-/

namespace A161825.P7919519251582980169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059893 (A059893 (n + 1)).toNat) (A264618 (n + 1))

end

end A161825.P7919519251582980169

namespace A161825

/-- `gcd(A059893(A059893(n+1)), A264618(n+1))` -/
def P7919519251582980169.Spec : Prop :=
  ∀ n, (P7919519251582980169.a n : ℤ) = A161825 (n + 1)

end A161825

/-!
# A161826: Number of maximal vertex-independent sets in the hypergraph with nodes V = {1, 2, ..., n} and "edges" consisting of the triples (X,Y,Z) with X

The programs for A161826, there is no canonical definition to state claims against.
-/

/-! ## A161826.P13639135698743369908

`A007862(A027642(n)*A266122(n+2))`
-/

namespace A161826.P13639135698743369908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A027642 n * A266122 (n + 2)).toNat

end

end A161826.P13639135698743369908

/-!
# A161827: Complement of A006446.

The programs for A161827, the canonical program `A161827.P18149568597438859992` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161827 has offset 1).

The definition of A161827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161827.P18149568597438859992

`lt[n, lcm(n, floor(sqrt(n)))]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A161827

/-- `lt[n, lcm(n, floor(sqrt(n)))]` -/
def P18149568597438859992.Spec : Prop :=
  ∀ n, (P18149568597438859992.a n : ℤ) = A161827 (n + 1)

theorem P18149568597438859992.correct : P18149568597438859992.Spec := by
  intro n
  simp only [A161827, Nat.add_sub_cancel]

end A161827

/-! ## A161827.P1410975063985937423

`floor((sqrt(comp[n²])+1)²)`
-/

namespace A161827.P1410975063985937423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) + 1) ^ 2⌋

end

end A161827.P1410975063985937423

namespace A161827

/-- `floor((sqrt(comp[n²])+1)²)` -/
def P1410975063985937423.Spec : Prop :=
  ∀ n, P1410975063985937423.a n = A161827 (n + 1)

end A161827

/-! ## A161827.P17976932406660327522

`ceil((sqrt(comp[n²])+1)²-gcd(n, n+1))`
-/

namespace A161827.P17976932406660327522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) + 1) ^ 2 - (Nat.gcd n (n + 1) : ℝ)⌉

end

end A161827.P17976932406660327522

namespace A161827

/-- `ceil((sqrt(comp[n²])+1)²-gcd(n, n+1))` -/
def P17976932406660327522.Spec : Prop :=
  ∀ n, P17976932406660327522.a n = A161827 (n + 1)

end A161827

/-! ## A161827.P1358460492401150103

`comp[abs(A131118(n))]`
-/

namespace A161827.P1358460492401150103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131118 n|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161827.P1358460492401150103

namespace A161827

/-- `comp[abs(A131118(n))]` -/
def P1358460492401150103.Spec : Prop :=
  ∀ n, (P1358460492401150103.a n : ℤ) = A161827 (n + 1)

end A161827

/-! ## A161827.P11678491942447937238

`comp[Δ[A051630(n)]]`
-/

namespace A161827.P11678491942447937238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051630 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161827.P11678491942447937238

namespace A161827

/-- `comp[Δ[A051630(n)]]` -/
def P11678491942447937238.Spec : Prop :=
  ∀ n, (P11678491942447937238.a n : ℤ) = A161827 (n + 1)

end A161827

/-! ## A161827.P7746454845907544076

`comp[∑[A087508(n)]-n]`
-/

namespace A161827.P7746454845907544076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161827.P7746454845907544076

namespace A161827

/-- `comp[∑[A087508(n)]-n]` -/
def P7746454845907544076.Spec : Prop :=
  ∀ n, (P7746454845907544076.a n : ℤ) = A161827 (n + 1)

end A161827

/-! ## A161827.P7097651874330397094

`A027434(n+1)+comp[n²]+1`
-/

namespace A161827.P7097651874330397094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ)

end

end A161827.P7097651874330397094

namespace A161827

/-- `A027434(n+1)+comp[n²]+1` -/
def P7097651874330397094.Spec : Prop :=
  ∀ n, P7097651874330397094.a n = A161827 (n + 1)

end A161827

/-! ## A161827.P50493112216331576

`A143730(n+1)+A028391(n)`
-/

namespace A161827.P50493112216331576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143730 (n + 1) + A028391 n

end

end A161827.P50493112216331576

namespace A161827

/-- `A143730(n+1)+A028391(n)` -/
def P50493112216331576.Spec : Prop :=
  ∀ n, P50493112216331576.a n = A161827 (n + 1)

end A161827

/-! ## A161827.P8799711414957927100

`A135668(n+1)+A130829(n+1)`
-/

namespace A161827.P8799711414957927100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (n + 1) + A130829 (n + 1)

end

end A161827.P8799711414957927100

namespace A161827

/-- `A135668(n+1)+A130829(n+1)` -/
def P8799711414957927100.Spec : Prop :=
  ∀ n, P8799711414957927100.a n = A161827 (n + 1)

end A161827

/-! ## A161827.P13238980447303348801

`A307136(n+1)+A000037(n+1)`
-/

namespace A161827.P13238980447303348801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307136 (n + 1) + A000037 (n + 1)

end

end A161827.P13238980447303348801

namespace A161827

/-- `A307136(n+1)+A000037(n+1)` -/
def P13238980447303348801.Spec : Prop :=
  ∀ n, P13238980447303348801.a n = A161827 (n + 1)

end A161827

/-! ## A161827.P13872686345920907453

`∪[A066047(n+1), A121893(n+1)]`
-/

namespace A161827.P13872686345920907453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161827.P13872686345920907453

namespace A161827

/-- `∪[A066047(n+1), A121893(n+1)]` -/
def P13872686345920907453.Spec : Prop :=
  ∀ n, (P13872686345920907453.a n : ℤ) = A161827 (n + 1)

end A161827

/-! ## A161827.P15297629033613232083

`∪[A013651(n+1), A189151(n+1)]`
-/

namespace A161827.P15297629033613232083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161827.P15297629033613232083

namespace A161827

/-- `∪[A013651(n+1), A189151(n+1)]` -/
def P15297629033613232083.Spec : Prop :=
  ∀ n, (P15297629033613232083.a n : ℤ) = A161827 (n + 1)

end A161827

/-! ## A161827.P14011785773964656129

`∪[A101550(n+1), A121893(n+1)]`
-/

namespace A161827.P14011785773964656129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161827.P14011785773964656129

namespace A161827

/-- `∪[A101550(n+1), A121893(n+1)]` -/
def P14011785773964656129.Spec : Prop :=
  ∀ n, (P14011785773964656129.a n : ℤ) = A161827 (n + 1)

end A161827

/-! ## A161827.P17569754187443216425

`∪[A113909(n+1), A121893(n+1)]`
-/

namespace A161827.P17569754187443216425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161827.P17569754187443216425

namespace A161827

/-- `∪[A113909(n+1), A121893(n+1)]` -/
def P17569754187443216425.Spec : Prop :=
  ∀ n, (P17569754187443216425.a n : ℤ) = A161827 (n + 1)

end A161827

/-! ## A161827.P12494854787154567471

`∪[A121893(n+1), A215848(n+1)]`
-/

namespace A161827.P12494854787154567471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161827.P12494854787154567471

namespace A161827

/-- `∪[A121893(n+1), A215848(n+1)]` -/
def P12494854787154567471.Spec : Prop :=
  ∀ n, (P12494854787154567471.a n : ℤ) = A161827 (n + 1)

end A161827

/-! ## A161827.P7455354986207339560

`∪[A121893(n+1), A348471(n+1)]`
-/

namespace A161827.P7455354986207339560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161827.P7455354986207339560

namespace A161827

/-- `∪[A121893(n+1), A348471(n+1)]` -/
def P7455354986207339560.Spec : Prop :=
  ∀ n, (P7455354986207339560.a n : ℤ) = A161827 (n + 1)

end A161827

/-! ## A161827.P17319036724786860482

`∪[A121893(n+1), A385812(n+1)]`
-/

namespace A161827.P17319036724786860482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161827.P17319036724786860482

namespace A161827

/-- `∪[A121893(n+1), A385812(n+1)]` -/
def P17319036724786860482.Spec : Prop :=
  ∀ n, (P17319036724786860482.a n : ℤ) = A161827 (n + 1)

end A161827

/-! ## A161827.P6474031500016558182

`2*A049068(n+1)-A078358(n+1)`
-/

namespace A161827.P6474031500016558182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049068 (n + 1) - A078358 (n + 1)

end

end A161827.P6474031500016558182

namespace A161827

/-- `2*A049068(n+1)-A078358(n+1)` -/
def P6474031500016558182.Spec : Prop :=
  ∀ n, P6474031500016558182.a n = A161827 (n + 1)

end A161827

/-! ## A161827.P12485515164807872457

`lt[1, A097862(n)]`
-/

namespace A161827.P12485515164807872457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161827.P12485515164807872457

namespace A161827

/-- `lt[1, A097862(n)]` -/
def P12485515164807872457.Spec : Prop :=
  ∀ n, (P12485515164807872457.a n : ℤ) = A161827 (n + 1)

end A161827

/-! ## A161827.P15217487601018042483

`lt[1, A114580(n)]`
-/

namespace A161827.P15217487601018042483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161827.P15217487601018042483

namespace A161827

/-- `lt[1, A114580(n)]` -/
def P15217487601018042483.Spec : Prop :=
  ∀ n, (P15217487601018042483.a n : ℤ) = A161827 (n + 1)

end A161827

/-!
# A161828: Number of rhombuses in the Y-toothpick structure of A160120 after n rounds.

The programs for A161828, there is no canonical definition to state claims against.
-/

/-! ## A161828.P9235055282718259320

`3*A161834(n)`
-/

namespace A161828.P9235055282718259320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A161834 n

end

end A161828.P9235055282718259320

/-! ## A161828.P11745360388870862849

`3*A357457(3*n)`
-/

namespace A161828.P11745360388870862849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A357457 (3 * n)

end

end A161828.P11745360388870862849

/-! ## A161828.P13716197603014568651

`3*A157966(∑[∑{e}[n, #]])`
-/

namespace A161828.P13716197603014568651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A157966 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161828.P13716197603014568651

/-! ## A161828.P14959168438651012952

`∑[A161829(round(sqrt(n²+1)))]`
-/

namespace A161828.P14959168438651012952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161829 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161828.P14959168438651012952

/-! ## A161828.P17590448766104604701

`A006368(A162776(n))`
-/

namespace A161828.P17590448766104604701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A162776 n).toNat

end

end A161828.P17590448766104604701

/-!
# A161830: Y-toothpick triangle (see Comments lines for definition).

The programs for A161830, there is no canonical definition to state claims against.
-/

/-! ## A161830.P6381914674306066832

`floor(A160120(n)/3+n)`
-/

namespace A161830.P6381914674306066832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160120 n : ℚ) / 3 + (n : ℚ)⌋

end

end A161830.P6381914674306066832

/-! ## A161830.P6289913507161218480

`round(A299776(n)/4+n)`
-/

namespace A161830.P6289913507161218480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A299776 n : ℚ) / 4 + (n : ℚ))

end

end A161830.P6289913507161218480

/-! ## A161830.P17880965265820436069

`A161831(n)+a(n-1)` with `a(0)=0`
-/

namespace A161830.P17880965265820436069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161831 n + a (n - 1)

end

end A161830.P17880965265820436069

/-! ## A161830.P13183272303951640535

`∪[∑[A161831(n+1)], n^7]`
-/

namespace A161830.P13183272303951640535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161831 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A161830.P13183272303951640535

/-! ## A161830.P10051658321518423635

`round(round(A160167(n)/3)/3)+n`
-/

namespace A161830.P10051658321518423635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A160167 n : ℚ) / 3) : ℚ) / 3) + (n : ℤ)

end

end A161830.P10051658321518423635

/-!
# A161831: First differences of A161830.

The programs for A161831, there is no canonical definition to state claims against.
-/

/-! ## A161831.P385032866409370434

`Δ[A161830(n)]`
-/

namespace A161831.P385032866409370434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161831.P385032866409370434

/-! ## A161831.P8211100876099075630

`Δ[floor(A160120(n)/3)]+1`
-/

namespace A161831.P8211100876099075630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160120 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A161831.P8211100876099075630

/-! ## A161831.P4003423854527309047

`Δ[round(A299776(n)/4+n)]`
-/

namespace A161831.P4003423854527309047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A299776 n : ℚ) / 4 + (n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161831.P4003423854527309047

/-! ## A161831.P18272804310863865088

`floor(A160121(n+1)/3)+1`
-/

namespace A161831.P18272804310863865088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160121 (n + 1) : ℚ) / 3⌋ + 1

end

end A161831.P18272804310863865088

/-! ## A161831.P9566448841709323947

`round(Δ[A160167(n)/3]/3)+1`
-/

namespace A161831.P9566448841709323947
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160167 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) / 3) + 1

end

end A161831.P9566448841709323947

/-!
# A161832: a(n) = (A161830(n+1)-1)/2.

The programs for A161832, there is no canonical definition to state claims against.
-/

/-! ## A161832.P4706196692465472965

`(A161830(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161832.P4706196692465472965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161830 (n + 1) - 1 : ℚ) / 2

end

end A161832.P4706196692465472965

/-! ## A161832.P5926036137210238771

`floor(A161830(n+1)/2)`
-/

namespace A161832.P5926036137210238771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161830 (n + 1) : ℚ) / 2⌋

end

end A161832.P5926036137210238771

/-! ## A161832.P11540411155296639904

`A161833(n)+a(n-1)` with `a(0)=0`
-/

namespace A161832.P11540411155296639904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161833 n + a (n - 1)

end

end A161832.P11540411155296639904

/-! ## A161832.P10932146192426366697

`∑[floor(A161831(n+1)/2)]`
-/

namespace A161832.P10932146192426366697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161831 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161832.P10932146192426366697

/-! ## A161832.P1426816299949291898

`∑[round(A160121(n+1)/6)]`
-/

namespace A161832.P1426816299949291898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A160121 (n + 1) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161832.P1426816299949291898

/-!
# A161833: First differences of A161832.

The programs for A161833, there is no canonical definition to state claims against.
-/

/-! ## A161833.P12930129741174743128

`A161831(n+2)/2`
-/

namespace A161833.P12930129741174743128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161831 (n + 2) : ℚ) / 2

end

end A161833.P12930129741174743128

/-! ## A161833.P9251659604769821791

`Δ[A161832(n)]`
-/

namespace A161833.P9251659604769821791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161833.P9251659604769821791

/-! ## A161833.P14858837044961578219

`ceil(A160123(n+1)/2)`
-/

namespace A161833.P14858837044961578219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A160123 (n + 1) : ℚ) / 2⌉

end

end A161833.P14858837044961578219

/-! ## A161833.P5343263987509228376

`ceil(A160122(n+1)/4)`
-/

namespace A161833.P5343263987509228376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A160122 (n + 1) : ℚ) / 4⌉

end

end A161833.P5343263987509228376

/-! ## A161833.P7103603940863938286

`ceil(A160121(n+2)/6)`
-/

namespace A161833.P7103603940863938286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A160121 (n + 2) : ℚ) / 6⌉

end

end A161833.P7103603940863938286

/-!
# A161835: Numbers k whose largest divisor <= sqrt(k) is 5.

The programs for A161835, there is no canonical definition to state claims against.
-/

/-! ## A161835.P8713297273145458613

`5*A161839(n+1)`
-/

namespace A161835.P8713297273145458613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A161839 (n + 1)

end

end A161835.P8713297273145458613

/-! ## A161835.P7751985565626988875

`A008587(A161839(n+1))`
-/

namespace A161835.P7751985565626988875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A161839 (n + 1)).toNat

end

end A161835.P7751985565626988875

/-! ## A161835.P14575318228019811300

`eq[5, A033676(n+1)]+1`
-/

namespace A161835.P14575318228019811300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A161835.P14575318228019811300

/-! ## A161835.P1466169729106533538

`record[5*A033677(5*(n+1))]`
-/

namespace A161835.P1466169729106533538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033677 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161835.P1466169729106533538

/-! ## A161835.P15313278659058284000

`record[5*A348582(5*(n+1))]`
-/

namespace A161835.P15313278659058284000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A348582 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161835.P15313278659058284000

/-! ## A161835.P7247209505909325086

`eq[5, A033676(A028310(n))]`
-/

namespace A161835.P7247209505909325086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161835.P7247209505909325086

/-! ## A161835.P7164257911600785446

`A020725(eq[5, A033676(n+1)])`
-/

namespace A161835.P7164257911600785446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161835.P7164257911600785446

/-! ## A161835.P617731101580003606

`A065475(eq[5, A033676(n+1)])`
-/

namespace A161835.P617731101580003606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161835.P617731101580003606

/-! ## A161835.P15788335276996791017

`5*eq[5, A033676(A008706(n))]`
-/

namespace A161835.P15788335276996791017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161835.P15788335276996791017

/-! ## A161835.P2874685629199319803

`5*eq[5, A033676(A168101(n))]`
-/

namespace A161835.P2874685629199319803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A168101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161835.P2874685629199319803

/-!
# A161839: a(n) = A161835(n)/5.

The programs for A161839, there is no canonical definition to state claims against.
-/

/-! ## A161839.P16117705784428874765

`A161835(n+1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161839.P16117705784428874765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161835 (n + 1) : ℚ) / 5

end

end A161839.P16117705784428874765

/-! ## A161839.P14460513429998636444

`lt[A302042(n+5), 6]+5`
-/

namespace A161839.P14460513429998636444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 5

end

end A161839.P14460513429998636444

/-! ## A161839.P15806532125016850228

`lt[A032742(n+5), 6]+5`
-/

namespace A161839.P15806532125016850228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 5

end

end A161839.P15806532125016850228

/-! ## A161839.P3712110999998968688

`record[A033677(5*(n+1))]`
-/

namespace A161839.P3712110999998968688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161839.P3712110999998968688

/-! ## A161839.P1073700620110540892

`record[A348582(5*(n+1))]`
-/

namespace A161839.P1073700620110540892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348582 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161839.P1073700620110540892

/-! ## A161839.P5250047807555222121

`eq[5, A033676(5*(n+1))]+1`
-/

namespace A161839.P5250047807555222121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (5 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A161839.P5250047807555222121

/-! ## A161839.P2305661292843798065

`A002266(A161835(n+1))`
-/

namespace A161839.P2305661292843798065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A161835 (n + 1)).toNat

end

end A161839.P2305661292843798065

/-! ## A161839.P5226259497652712921

`A162348(2*A161835(n+1))`
-/

namespace A161839.P5226259497652712921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * A161835 (n + 1)).toNat

end

end A161839.P5226259497652712921

/-! ## A161839.P17453832142072763296

`eq[n, A033677(A008574(n)+n)]`
-/

namespace A161839.P17453832142072763296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A008574 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161839.P17453832142072763296

/-! ## A161839.P16966283563298200843

`eq[n, A033677(A008458(n)-n)]`
-/

namespace A161839.P16966283563298200843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A008458 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161839.P16966283563298200843

/-!
# A161840: Number of noncentral divisors of n.

The programs for A161840, the canonical program `A161840.P9787077699229106813` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161840 has offset 1).

The definition of A161840 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072670, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161840.P9787077699229106813

`2*A072670(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161840

/-- `2*A072670(n)` -/
def P9787077699229106813.Spec : Prop :=
  ∀ n, P9787077699229106813.a n = A161840 (n + 1)

theorem P9787077699229106813.correct : P9787077699229106813.Spec := by
  intro n
  simp only [A161840, Nat.add_sub_cancel]

end A161840

/-! ## A161840.P6406705356221781437

`A000005(n+1)-A169695(n+1)`
-/

namespace A161840.P6406705356221781437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A169695 (n + 1)

end

end A161840.P6406705356221781437

namespace A161840

/-- `A000005(n+1)-A169695(n+1)` -/
def P6406705356221781437.Spec : Prop :=
  ∀ n, P6406705356221781437.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P8265259167774973551

`A000005(n+1)+A010052(n+1)-2`
-/

namespace A161840.P8265259167774973551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A010052 (n + 1) - 2

end

end A161840.P8265259167774973551

namespace A161840

/-- `A000005(n+1)+A010052(n+1)-2` -/
def P8265259167774973551.Spec : Prop :=
  ∀ n, P8265259167774973551.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P5979444734050364192

`A000005(n+1)-A049240(n+1)-1`
-/

namespace A161840.P5979444734050364192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A049240 (n + 1) - 1

end

end A161840.P5979444734050364192

namespace A161840

/-- `A000005(n+1)-A049240(n+1)-1` -/
def P5979444734050364192.Spec : Prop :=
  ∀ n, P5979444734050364192.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P11428794116812905571

`2*floor(sinh(log(∏{e}[n+1, #+1])))`
-/

namespace A161840.P11428794116812905571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.sinh (Real.log ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℝ))⌋

end

end A161840.P11428794116812905571

namespace A161840

/-- `2*floor(sinh(log(∏{e}[n+1, #+1])))` -/
def P11428794116812905571.Spec : Prop :=
  ∀ n, P11428794116812905571.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P9326524721236574031

`or(1, ∏{e}[n+1, #+1]-1)-1`
-/

namespace A161840.P9326524721236574031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1) - 1

end

end A161840.P9326524721236574031

namespace A161840

/-- `or(1, ∏{e}[n+1, #+1]-1)-1` -/
def P9326524721236574031.Spec : Prop :=
  ∀ n, P9326524721236574031.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P4688011107884688266

`2*floor((∏{e}[n+1, #+1]-1)/2)`
-/

namespace A161840.P4688011107884688266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1 : ℚ) / 2⌋

end

end A161840.P4688011107884688266

namespace A161840

/-- `2*floor((∏{e}[n+1, #+1]-1)/2)` -/
def P4688011107884688266.Spec : Prop :=
  ∀ n, P4688011107884688266.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P16951531102512848488

`2*(round(cosh(log(∏{e}[n+1, #+1])))-1)`
-/

namespace A161840.P16951531102512848488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.roundAway (Real.cosh (Real.log ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℝ))) - 1)

end

end A161840.P16951531102512848488

namespace A161840

/-- `2*(round(cosh(log(∏{e}[n+1, #+1])))-1)` -/
def P16951531102512848488.Spec : Prop :=
  ∀ n, P16951531102512848488.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P16444982997082468855

`∏{e}[n+1, #+1]-(char[comp[n²-1]]+1)`
-/

namespace A161840.P16444982997082468855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A161840.P16444982997082468855

namespace A161840

/-- `∏{e}[n+1, #+1]-(char[comp[n²-1]]+1)` -/
def P16444982997082468855.Spec : Prop :=
  ∀ n, P16444982997082468855.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P12566587390094135463

`Δ[A132106(n)]-2`
-/

namespace A161840.P12566587390094135463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A161840.P12566587390094135463

namespace A161840

/-- `Δ[A132106(n)]-2` -/
def P12566587390094135463.Spec : Prop :=
  ∀ n, P12566587390094135463.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P16226465820857905411

`A161841(n+1)-2`
-/

namespace A161840.P16226465820857905411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161841 (n + 1) - 2

end

end A161840.P16226465820857905411

namespace A161840

/-- `A161841(n+1)-2` -/
def P16226465820857905411.Spec : Prop :=
  ∀ n, P16226465820857905411.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P9340429229418190720

`2*floor(A325765(n)/2)`
-/

namespace A161840.P9340429229418190720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A325765 n : ℚ) / 2⌋

end

end A161840.P9340429229418190720

namespace A161840

/-- `2*floor(A325765(n)/2)` -/
def P9340429229418190720.Spec : Prop :=
  ∀ n, P9340429229418190720.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P9614071154990155863

`2*(A038548(n+1)-1)`
-/

namespace A161840.P9614071154990155863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A038548 (n + 1) - 1)

end

end A161840.P9614071154990155863

namespace A161840

/-- `2*(A038548(n+1)-1)` -/
def P9614071154990155863.Spec : Prop :=
  ∀ n, P9614071154990155863.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P7185128153232146137

`or(1, A032741(n+1))-1`
-/

namespace A161840.P7185128153232146137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A032741 (n + 1)) - 1

end

end A161840.P7185128153232146137

namespace A161840

/-- `or(1, A032741(n+1))-1` -/
def P7185128153232146137.Spec : Prop :=
  ∀ n, P7185128153232146137.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P4368815371710232698

`2*ceil(A070824(n+1)/2)`
-/

namespace A161840.P4368815371710232698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A070824 (n + 1) : ℚ) / 2⌉

end

end A161840.P4368815371710232698

namespace A161840

/-- `2*ceil(A070824(n+1)/2)` -/
def P4368815371710232698.Spec : Prop :=
  ∀ n, P4368815371710232698.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P18092819440711324650

`A005843(A072670(n))`
-/

namespace A161840.P18092819440711324650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A072670 n).toNat

end

end A161840.P18092819440711324650

namespace A161840

/-- `A005843(A072670(n))` -/
def P18092819440711324650.Spec : Prop :=
  ∀ n, P18092819440711324650.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P276653306069052595

`A052928(A325765(n))`
-/

namespace A161840.P276653306069052595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A325765 n).toNat

end

end A161840.P276653306069052595

namespace A161840

/-- `A052928(A325765(n))` -/
def P276653306069052595.Spec : Prop :=
  ∀ n, P276653306069052595.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P5673136510455874433

`A052928(A032741(n+1))`
-/

namespace A161840.P5673136510455874433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A032741 (n + 1)).toNat

end

end A161840.P5673136510455874433

namespace A161840

/-- `A052928(A032741(n+1))` -/
def P5673136510455874433.Spec : Prop :=
  ∀ n, P5673136510455874433.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P6790050839754358082

`A023444(A161841(n+1))`
-/

namespace A161840.P6790050839754358082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A161841 (n + 1)).toNat

end

end A161840.P6790050839754358082

namespace A161840

/-- `A023444(A161841(n+1))` -/
def P6790050839754358082.Spec : Prop :=
  ∀ n, P6790050839754358082.a n = A161840 (n + 1)

end A161840

/-! ## A161840.P12129611117558770778

`A122461(A086369(n+1))`
-/

namespace A161840.P12129611117558770778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122461 (A086369 (n + 1)).toNat

end

end A161840.P12129611117558770778

namespace A161840

/-- `A122461(A086369(n+1))` -/
def P12129611117558770778.Spec : Prop :=
  ∀ n, P12129611117558770778.a n = A161840 (n + 1)

end A161840

/-!
# A161841: Number of factors, with repetition, in all distinct pairs (a <= b) such that a*b = n.

The programs for A161841, the canonical program `A161841.P10874343468678800026` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161841 has offset 1).

The definition of A161841 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161841.P10874343468678800026

`A038548(n+1)*2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161841

/-- `A038548(n+1)*2` -/
def P10874343468678800026.Spec : Prop :=
  ∀ n, P10874343468678800026.a n = A161841 (n + 1)

theorem P10874343468678800026.correct : P10874343468678800026.Spec := by
  intro n
  simp only [A161841, Nat.add_sub_cancel]

end A161841

/-! ## A161841.P10395586970754579797

`A000005(n+1)+A010052(n+1)`
-/

namespace A161841.P10395586970754579797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A010052 (n + 1)

end

end A161841.P10395586970754579797

namespace A161841

/-- `A000005(n+1)+A010052(n+1)` -/
def P10395586970754579797.Spec : Prop :=
  ∀ n, P10395586970754579797.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P13392535432432226904

`Δ[A132106(n)]`
-/

namespace A161841.P13392535432432226904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161841.P13392535432432226904

namespace A161841

/-- `Δ[A132106(n)]` -/
def P13392535432432226904.Spec : Prop :=
  ∀ n, P13392535432432226904.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P2360427919285603543

`A161840(n+1)+2`
-/

namespace A161841.P2360427919285603543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161840 (n + 1) + 2

end

end A161841.P2360427919285603543

namespace A161841

/-- `A161840(n+1)+2` -/
def P2360427919285603543.Spec : Prop :=
  ∀ n, P2360427919285603543.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P10729897386050869408

`2*(A072670(n)+1)`
-/

namespace A161841.P10729897386050869408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072670 n + 1)

end

end A161841.P10729897386050869408

namespace A161841

/-- `2*(A072670(n)+1)` -/
def P10729897386050869408.Spec : Prop :=
  ∀ n, P10729897386050869408.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P17195403036391912609

`2*sqrt(A330571(n+1))`
-/

namespace A161841.P17195403036391912609
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A330571 (n + 1) : ℝ)

end

end A161841.P17195403036391912609

namespace A161841

/-- `2*sqrt(A330571(n+1))` -/
def P17195403036391912609.Spec : Prop :=
  ∀ n, P17195403036391912609.a n = (A161841 (n + 1) : ℝ)

end A161841

/-! ## A161841.P12191709346730135494

`Δ[floor(A006218(n)+sqrt(n))]`
-/

namespace A161841.P12191709346730135494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006218 n : ℝ) + Real.sqrt (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161841.P12191709346730135494

namespace A161841

/-- `Δ[floor(A006218(n)+sqrt(n))]` -/
def P12191709346730135494.Spec : Prop :=
  ∀ n, P12191709346730135494.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P7942383286268305289

`Δ[floor(A054519(n)+sqrt(n))]`
-/

namespace A161841.P7942383286268305289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054519 n : ℝ) + Real.sqrt (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161841.P7942383286268305289

namespace A161841

/-- `Δ[floor(A054519(n)+sqrt(n))]` -/
def P7942383286268305289.Spec : Prop :=
  ∀ n, P7942383286268305289.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P10149947262447751545

`or(1, A032741(n+1))+1`
-/

namespace A161841.P10149947262447751545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A032741 (n + 1)) + 1

end

end A161841.P10149947262447751545

namespace A161841

/-- `or(1, A032741(n+1))+1` -/
def P10149947262447751545.Spec : Prop :=
  ∀ n, P10149947262447751545.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P8088980759063875840

`floor(2*sqrt(A337174(n+1)))`
-/

namespace A161841.P8088980759063875840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A337174 (n + 1) : ℝ)⌋

end

end A161841.P8088980759063875840

namespace A161841

/-- `floor(2*sqrt(A337174(n+1)))` -/
def P8088980759063875840.Spec : Prop :=
  ∀ n, P8088980759063875840.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P12335136116256913560

`2/(n+1)*A060872(n+1)`
-/

namespace A161841.P12335136116256913560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A060872 (n + 1) : ℚ)

end

end A161841.P12335136116256913560

namespace A161841

/-- `2/(n+1)*A060872(n+1)` -/
def P12335136116256913560.Spec : Prop :=
  ∀ n, P12335136116256913560.a n = (A161841 (n + 1) : ℚ)

end A161841

/-! ## A161841.P8439216049138120987

`A004277(A038548(n+1))`
-/

namespace A161841.P8439216049138120987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A038548 (n + 1)).toNat

end

end A161841.P8439216049138120987

namespace A161841

/-- `A004277(A038548(n+1))` -/
def P8439216049138120987.Spec : Prop :=
  ∀ n, P8439216049138120987.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P17402710579733260136

`A005843(A072670(n)+1)`
-/

namespace A161841.P17402710579733260136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A072670 n + 1).toNat

end

end A161841.P17402710579733260136

namespace A161841

/-- `A005843(A072670(n)+1)` -/
def P17402710579733260136.Spec : Prop :=
  ∀ n, P17402710579733260136.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P12752845441531416606

`A018837(A062011(n+1))`
-/

namespace A161841.P12752845441531416606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 (A062011 (n + 1)).toNat

end

end A161841.P12752845441531416606

namespace A161841

/-- `A018837(A062011(n+1))` -/
def P12752845441531416606.Spec : Prop :=
  ∀ n, P12752845441531416606.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P16701294003017550292

`A130855(A184389(n+1))`
-/

namespace A161841.P16701294003017550292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130855 (A184389 (n + 1)).toNat

end

end A161841.P16701294003017550292

namespace A161841

/-- `A130855(A184389(n+1))` -/
def P16701294003017550292.Spec : Prop :=
  ∀ n, P16701294003017550292.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P5278219266624118454

`A000267(A330571(n+1))`
-/

namespace A161841.P5278219266624118454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A330571 (n + 1)).toNat

end

end A161841.P5278219266624118454

namespace A161841

/-- `A000267(A330571(n+1))` -/
def P5278219266624118454.Spec : Prop :=
  ∀ n, P5278219266624118454.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P12650546091604732997

`A001670(A337174(n+1))`
-/

namespace A161841.P12650546091604732997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (A337174 (n + 1)).toNat

end

end A161841.P12650546091604732997

namespace A161841

/-- `A001670(A337174(n+1))` -/
def P12650546091604732997.Spec : Prop :=
  ∀ n, P12650546091604732997.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P5639759938257395940

`A052928(A334954(n+1))`
-/

namespace A161841.P5639759938257395940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A334954 (n + 1)).toNat

end

end A161841.P5639759938257395940

namespace A161841

/-- `A052928(A334954(n+1))` -/
def P5639759938257395940.Spec : Prop :=
  ∀ n, P5639759938257395940.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P16393599033289918617

`A246416(A145154(n+1))`
-/

namespace A161841.P16393599033289918617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246416 (A145154 (n + 1)).toNat

end

end A161841.P16393599033289918617

namespace A161841

/-- `A246416(A145154(n+1))` -/
def P16393599033289918617.Spec : Prop :=
  ∀ n, P16393599033289918617.a n = A161841 (n + 1)

end A161841

/-! ## A161841.P13008935478914359790

`A052928(A325765(n)+2)`
-/

namespace A161841.P13008935478914359790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A325765 n + 2).toNat

end

end A161841.P13008935478914359790

namespace A161841

/-- `A052928(A325765(n)+2)` -/
def P13008935478914359790.Spec : Prop :=
  ∀ n, P13008935478914359790.a n = A161841 (n + 1)

end A161841

/-!
# A161842: Partial sums of A161841.

The programs for A161842, the canonical program `A161842.P12055032570686258273` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161842 has offset 1).

The definition of A161842 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094820, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161842.P12055032570686258273

`2*A094820(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161842

/-- `2*A094820(n+1)` -/
def P12055032570686258273.Spec : Prop :=
  ∀ n, P12055032570686258273.a n = A161842 (n + 1)

theorem P12055032570686258273.correct : P12055032570686258273.Spec := by
  intro n
  simp only [A161842, Nat.add_sub_cancel]

end A161842

/-! ## A161842.P921393519745999218

`∑[2*ceil(∏{e}[n+1, #+1]/2)]`
-/

namespace A161842.P921393519745999218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P921393519745999218

namespace A161842

/-- `∑[2*ceil(∏{e}[n+1, #+1]/2)]` -/
def P921393519745999218.Spec : Prop :=
  ∀ n, P921393519745999218.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P16946950304201306237

`∑[2*round(∏{e}[n+1, #+1]/2)]`
-/

namespace A161842.P16946950304201306237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P16946950304201306237

namespace A161842

/-- `∑[2*round(∏{e}[n+1, #+1]/2)]` -/
def P16946950304201306237.Spec : Prop :=
  ∀ n, P16946950304201306237.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P2033669140170826314

`∑[A161841(n+1)]`
-/

namespace A161842.P2033669140170826314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P2033669140170826314

namespace A161842

/-- `∑[A161841(n+1)]` -/
def P2033669140170826314.Spec : Prop :=
  ∀ n, P2033669140170826314.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P17069405107167582074

`∑[abs(Δ[A132106(n)])]`
-/

namespace A161842.P17069405107167582074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P17069405107167582074

namespace A161842

/-- `∑[abs(Δ[A132106(n)])]` -/
def P17069405107167582074.Spec : Prop :=
  ∀ n, P17069405107167582074.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P7673574211510700172

`A132106(n+1)-1`
-/

namespace A161842.P7673574211510700172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 (n + 1) - 1

end

end A161842.P7673574211510700172

namespace A161842

/-- `A132106(n+1)-1` -/
def P7673574211510700172.Spec : Prop :=
  ∀ n, P7673574211510700172.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P14915676960982486478

`∑[A161840(n+1)+2]`
-/

namespace A161842.P14915676960982486478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161840 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P14915676960982486478

namespace A161842

/-- `∑[A161840(n+1)+2]` -/
def P14915676960982486478.Spec : Prop :=
  ∀ n, P14915676960982486478.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P2682352787405124565

`∑[2*A038548(n+1)]`
-/

namespace A161842.P2682352787405124565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P2682352787405124565

namespace A161842

/-- `∑[2*A038548(n+1)]` -/
def P2682352787405124565.Spec : Prop :=
  ∀ n, P2682352787405124565.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P7805610289275538279

`∑[2*(A072670(n)+1)]`
-/

namespace A161842.P7805610289275538279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072670 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P7805610289275538279

namespace A161842

/-- `∑[2*(A072670(n)+1)]` -/
def P7805610289275538279.Spec : Prop :=
  ∀ n, P7805610289275538279.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P17238790347757244357

`2*(A091627(n+1)+1)`
-/

namespace A161842.P17238790347757244357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A091627 (n + 1) + 1)

end

end A161842.P17238790347757244357

namespace A161842

/-- `2*(A091627(n+1)+1)` -/
def P17238790347757244357.Spec : Prop :=
  ∀ n, P17238790347757244357.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P16617352468930012357

`∑[2*sqrt(A330571(n+1))]`
-/

namespace A161842.P16617352468930012357
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A330571 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P16617352468930012357

namespace A161842

/-- `∑[2*sqrt(A330571(n+1))]` -/
def P16617352468930012357.Spec : Prop :=
  ∀ n, P16617352468930012357.a n = (A161842 (n + 1) : ℝ)

end A161842

/-! ## A161842.P2751077033144203807

`2*(A183003(n+1)+n+1)`
-/

namespace A161842.P2751077033144203807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A183003 (n + 1) + (n + 1 : ℤ))

end

end A161842.P2751077033144203807

namespace A161842

/-- `2*(A183003(n+1)+n+1)` -/
def P2751077033144203807.Spec : Prop :=
  ∀ n, P2751077033144203807.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P6747380387697317500

`A183002(n+1)+2*(n+1)`
-/

namespace A161842.P6747380387697317500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183002 (n + 1) + (2 * (n + 1) : ℤ)

end

end A161842.P6747380387697317500

namespace A161842

/-- `A183002(n+1)+2*(n+1)` -/
def P6747380387697317500.Spec : Prop :=
  ∀ n, P6747380387697317500.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P8555305200223760154

`∑[and(A000005(n+1)+1, -2)]`
-/

namespace A161842.P8555305200223760154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (n + 1) + 1) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P8555305200223760154

namespace A161842

/-- `∑[and(A000005(n+1)+1, -2)]` -/
def P8555305200223760154.Spec : Prop :=
  ∀ n, P8555305200223760154.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P5201974040590317345

`∑[2*round(A000005(char[1]+1+n)/2)]`
-/

namespace A161842.P5201974040590317345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((A000005 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P5201974040590317345

namespace A161842

/-- `∑[2*round(A000005(char[1]+1+n)/2)]` -/
def P5201974040590317345.Spec : Prop :=
  ∀ n, P5201974040590317345.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P8230925381618161773

`∑[A005843(A072670(n)+1)]`
-/

namespace A161842.P8230925381618161773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A072670 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P8230925381618161773

namespace A161842

/-- `∑[A005843(A072670(n)+1)]` -/
def P8230925381618161773.Spec : Prop :=
  ∀ n, P8230925381618161773.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P16814177879399039955

`∑[A052928(A334954(n+1))]`
-/

namespace A161842.P16814177879399039955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A334954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P16814177879399039955

namespace A161842

/-- `∑[A052928(A334954(n+1))]` -/
def P16814177879399039955.Spec : Prop :=
  ∀ n, P16814177879399039955.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P16667382866088780891

`∑[A246416(A145154(n+1))]`
-/

namespace A161842.P16667382866088780891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246416 (A145154 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P16667382866088780891

namespace A161842

/-- `∑[A246416(A145154(n+1))]` -/
def P16667382866088780891.Spec : Prop :=
  ∀ n, P16667382866088780891.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P3955989923937292025

`∑[A063655(A038548(n+1)²)]`
-/

namespace A161842.P3955989923937292025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A038548 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P3955989923937292025

namespace A161842

/-- `∑[A063655(A038548(n+1)²)]` -/
def P3955989923937292025.Spec : Prop :=
  ∀ n, P3955989923937292025.a n = A161842 (n + 1)

end A161842

/-! ## A161842.P15705521177851072517

`∑[A131055(A000005(n+1)+1)]`
-/

namespace A161842.P15705521177851072517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161842.P15705521177851072517

namespace A161842

/-- `∑[A131055(A000005(n+1)+1)]` -/
def P15705521177851072517.Spec : Prop :=
  ∀ n, P15705521177851072517.a n = A161842 (n + 1)

end A161842

/-!
# A161843: a(n) = n-th composite plus n-th nonprime.

The programs for A161843, the canonical program `A161843.P14238606548560197180` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161843 has offset 1).

The definition of A161843 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161843.P14238606548560197180

`A002808(n+1)+A141468(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161843

/-- `A002808(n+1)+A141468(n+1)` -/
def P14238606548560197180.Spec : Prop :=
  ∀ n, P14238606548560197180.a n = A161843 (n + 1)

theorem P14238606548560197180.correct : P14238606548560197180.Spec := by
  intro n
  simp only [A161843, Nat.add_sub_cancel]

end A161843

/-! ## A161843.P4345407966028298668

`comp[A151800(n)]+comp[A351078(n)]`
-/

namespace A161843.P4345407966028298668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A161843.P4345407966028298668

namespace A161843

/-- `comp[A151800(n)]+comp[A351078(n)]` -/
def P4345407966028298668.Spec : Prop :=
  ∀ n, (P4345407966028298668.a n : ℤ) = A161843 (n + 1)

end A161843

/-! ## A161843.P7364987263625770897

`A141468(n+1)+Δ[A053767(n)]`
-/

namespace A161843.P7364987263625770897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + (f1 (n + 1) - f1 n)

end

end A161843.P7364987263625770897

namespace A161843

/-- `A141468(n+1)+Δ[A053767(n)]` -/
def P7364987263625770897.Spec : Prop :=
  ∀ n, P7364987263625770897.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P2314681758866823436

`A002808(n+1)+comp[A060264(n)]`
-/

namespace A161843.P2314681758866823436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161843.P2314681758866823436

namespace A161843

/-- `A002808(n+1)+comp[A060264(n)]` -/
def P2314681758866823436.Spec : Prop :=
  ∀ n, P2314681758866823436.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P12713594538841392749

`A002808(n+1)+comp[A088732(n)]`
-/

namespace A161843.P12713594538841392749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161843.P12713594538841392749

namespace A161843

/-- `A002808(n+1)+comp[A088732(n)]` -/
def P12713594538841392749.Spec : Prop :=
  ∀ n, P12713594538841392749.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P12777656004875237925

`A002808(n+1)+comp[A151800(n)]`
-/

namespace A161843.P12777656004875237925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161843.P12777656004875237925

namespace A161843

/-- `A002808(n+1)+comp[A151800(n)]` -/
def P12777656004875237925.Spec : Prop :=
  ∀ n, P12777656004875237925.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P2332080645083377774

`A141468(n+1)+comp[A351078(n)]`
-/

namespace A161843.P2332080645083377774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161843.P2332080645083377774

namespace A161843

/-- `A141468(n+1)+comp[A351078(n)]` -/
def P2332080645083377774.Spec : Prop :=
  ∀ n, P2332080645083377774.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P10743632713149018331

`A018252(n+2)+comp[A151800(n)]`
-/

namespace A161843.P10743632713149018331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161843.P10743632713149018331

namespace A161843

/-- `A018252(n+2)+comp[A151800(n)]` -/
def P10743632713149018331.Spec : Prop :=
  ∀ n, P10743632713149018331.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P1438290617349694975

`A018252(n+2)+comp[A162753(n)]`
-/

namespace A161843.P1438290617349694975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161843.P1438290617349694975

namespace A161843

/-- `A018252(n+2)+comp[A162753(n)]` -/
def P1438290617349694975.Spec : Prop :=
  ∀ n, P1438290617349694975.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P7337450419946947665

`A141468(n+3)+comp[A151800(n)]`
-/

namespace A161843.P7337450419946947665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161843.P7337450419946947665

namespace A161843

/-- `A141468(n+3)+comp[A151800(n)]` -/
def P7337450419946947665.Spec : Prop :=
  ∀ n, P7337450419946947665.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P4274037771071799999

`A166037(n+1)+A065310(n+1)`
-/

namespace A161843.P4274037771071799999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1) + A065310 (n + 1)

end

end A161843.P4274037771071799999

namespace A161843

/-- `A166037(n+1)+A065310(n+1)` -/
def P4274037771071799999.Spec : Prop :=
  ∀ n, P4274037771071799999.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P8417067625227161157

`A176100(n+1)+A161811(n+1)`
-/

namespace A161843.P8417067625227161157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1) + A161811 (n + 1)

end

end A161843.P8417067625227161157

namespace A161843

/-- `A176100(n+1)+A161811(n+1)` -/
def P8417067625227161157.Spec : Prop :=
  ∀ n, P8417067625227161157.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P9229191829871768205

`A141468(n+1)+A018252(n+2)`
-/

namespace A161843.P9229191829871768205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + A018252 (n + 2)

end

end A161843.P9229191829871768205

namespace A161843

/-- `A141468(n+1)+A018252(n+2)` -/
def P9229191829871768205.Spec : Prop :=
  ∀ n, P9229191829871768205.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P16761124752897568019

`A166039(n+1)-A018252(n+1)`
-/

namespace A161843.P16761124752897568019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1) - A018252 (n + 1)

end

end A161843.P16761124752897568019

namespace A161843

/-- `A166039(n+1)-A018252(n+1)` -/
def P16761124752897568019.Spec : Prop :=
  ∀ n, P16761124752897568019.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P3324937977689638970

`A064799(n+1)-A161671(n+1)`
-/

namespace A161843.P3324937977689638970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1) - A161671 (n + 1)

end

end A161843.P3324937977689638970

namespace A161843

/-- `A064799(n+1)-A161671(n+1)` -/
def P3324937977689638970.Spec : Prop :=
  ∀ n, P3324937977689638970.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P2586764568193132101

`A282671(n+1)-A161811(n+1)`
-/

namespace A161843.P2586764568193132101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1) - A161811 (n + 1)

end

end A161843.P2586764568193132101

namespace A161843

/-- `A282671(n+1)-A161811(n+1)` -/
def P2586764568193132101.Spec : Prop :=
  ∀ n, P2586764568193132101.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P2640940854218824540

`A141468(n+1)+A141468(n+3)`
-/

namespace A161843.P2640940854218824540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + A141468 (n + 3)

end

end A161843.P2640940854218824540

namespace A161843

/-- `A141468(n+1)+A141468(n+3)` -/
def P2640940854218824540.Spec : Prop :=
  ∀ n, P2640940854218824540.a n = A161843 (n + 1)

end A161843

/-! ## A161843.P15047258185886647849

`comp[A351078(n)]+comp[A006530(n+2)]`
-/

namespace A161843.P15047258185886647849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A161843.P15047258185886647849

namespace A161843

/-- `comp[A351078(n)]+comp[A006530(n+2)]` -/
def P15047258185886647849.Spec : Prop :=
  ∀ n, (P15047258185886647849.a n : ℤ) = A161843 (n + 1)

end A161843

/-! ## A161843.P5477788379566310647

`comp[A351078(n)]+comp[A020639(n+2)]`
-/

namespace A161843.P5477788379566310647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A161843.P5477788379566310647

namespace A161843

/-- `comp[A351078(n)]+comp[A020639(n+2)]` -/
def P5477788379566310647.Spec : Prop :=
  ∀ n, (P5477788379566310647.a n : ℤ) = A161843 (n + 1)

end A161843

/-! ## A161843.P7624823079566795449

`A002808(n+1)+comp[A000040(n+1)]`
-/

namespace A161843.P7624823079566795449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161843.P7624823079566795449

namespace A161843

/-- `A002808(n+1)+comp[A000040(n+1)]` -/
def P7624823079566795449.Spec : Prop :=
  ∀ n, P7624823079566795449.a n = A161843 (n + 1)

end A161843

/-!
# A161844: Product of the n-th composite by the n-th nonprime.

The programs for A161844, the canonical program `A161844.P543762527301748495` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161844 has offset 1).

The definition of A161844 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161844.P543762527301748495

`A002808(n+1)*A141468(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161844

/-- `A002808(n+1)*A141468(n+1)` -/
def P543762527301748495.Spec : Prop :=
  ∀ n, P543762527301748495.a n = A161844 (n + 1)

theorem P543762527301748495.correct : P543762527301748495.Spec := by
  intro n
  simp only [A161844, Nat.add_sub_cancel]

end A161844

/-! ## A161844.P4508869317842587973

`comp[A151800(n)]*comp[A351078(n)]`
-/

namespace A161844.P4508869317842587973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A161844.P4508869317842587973

namespace A161844

/-- `comp[A151800(n)]*comp[A351078(n)]` -/
def P4508869317842587973.Spec : Prop :=
  ∀ n, (P4508869317842587973.a n : ℤ) = A161844 (n + 1)

end A161844

/-! ## A161844.P8632004056866987219

`Δ[A053767(n)]*A141468(n+1)`
-/

namespace A161844.P8632004056866987219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A141468 (n + 1)

end

end A161844.P8632004056866987219

namespace A161844

/-- `Δ[A053767(n)]*A141468(n+1)` -/
def P8632004056866987219.Spec : Prop :=
  ∀ n, P8632004056866987219.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P4885958002432527753

`comp[A060264(n)]*A002808(n+1)`
-/

namespace A161844.P4885958002432527753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A002808 (n + 1)

end

end A161844.P4885958002432527753

namespace A161844

/-- `comp[A060264(n)]*A002808(n+1)` -/
def P4885958002432527753.Spec : Prop :=
  ∀ n, P4885958002432527753.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P8646160869298742573

`comp[A088732(n)]*A002808(n+1)`
-/

namespace A161844.P8646160869298742573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A002808 (n + 1)

end

end A161844.P8646160869298742573

namespace A161844

/-- `comp[A088732(n)]*A002808(n+1)` -/
def P8646160869298742573.Spec : Prop :=
  ∀ n, P8646160869298742573.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P17117948139626194339

`comp[A151800(n)]*A002808(n+1)`
-/

namespace A161844.P17117948139626194339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A002808 (n + 1)

end

end A161844.P17117948139626194339

namespace A161844

/-- `comp[A151800(n)]*A002808(n+1)` -/
def P17117948139626194339.Spec : Prop :=
  ∀ n, P17117948139626194339.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P8948574646072131828

`comp[A351078(n)]*A141468(n+1)`
-/

namespace A161844.P8948574646072131828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A141468 (n + 1)

end

end A161844.P8948574646072131828

namespace A161844

/-- `comp[A351078(n)]*A141468(n+1)` -/
def P8948574646072131828.Spec : Prop :=
  ∀ n, P8948574646072131828.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P11941827187723940611

`comp[A151800(n)]*A018252(n+2)`
-/

namespace A161844.P11941827187723940611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A018252 (n + 2)

end

end A161844.P11941827187723940611

namespace A161844

/-- `comp[A151800(n)]*A018252(n+2)` -/
def P11941827187723940611.Spec : Prop :=
  ∀ n, P11941827187723940611.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P14990620032351702626

`comp[A162753(n)]*A018252(n+2)`
-/

namespace A161844.P14990620032351702626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A018252 (n + 2)

end

end A161844.P14990620032351702626

namespace A161844

/-- `comp[A162753(n)]*A018252(n+2)` -/
def P14990620032351702626.Spec : Prop :=
  ∀ n, P14990620032351702626.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P14358815711305481114

`comp[A151800(n)]*A141468(n+3)`
-/

namespace A161844.P14358815711305481114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A141468 (n + 3)

end

end A161844.P14358815711305481114

namespace A161844

/-- `comp[A151800(n)]*A141468(n+3)` -/
def P14358815711305481114.Spec : Prop :=
  ∀ n, P14358815711305481114.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P10992657915045752355

`A056653(n+1)*A141468(n+1)`
-/

namespace A161844.P10992657915045752355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1) * A141468 (n + 1)

end

end A161844.P10992657915045752355

namespace A161844

/-- `A056653(n+1)*A141468(n+1)` -/
def P10992657915045752355.Spec : Prop :=
  ∀ n, P10992657915045752355.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P15540358865050698795

`A018252(n+2)*A141468(n+1)`
-/

namespace A161844.P15540358865050698795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) * A141468 (n + 1)

end

end A161844.P15540358865050698795

namespace A161844

/-- `A018252(n+2)*A141468(n+1)` -/
def P15540358865050698795.Spec : Prop :=
  ∀ n, P15540358865050698795.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P5170208508370957804

`A141468(n+1)*A141468(n+3)`
-/

namespace A161844.P5170208508370957804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) * A141468 (n + 3)

end

end A161844.P5170208508370957804

namespace A161844

/-- `A141468(n+1)*A141468(n+3)` -/
def P5170208508370957804.Spec : Prop :=
  ∀ n, P5170208508370957804.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P79025754186101766

`comp[A351078(n)]*comp[A006530(n+2)]`
-/

namespace A161844.P79025754186101766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A161844.P79025754186101766

namespace A161844

/-- `comp[A351078(n)]*comp[A006530(n+2)]` -/
def P79025754186101766.Spec : Prop :=
  ∀ n, (P79025754186101766.a n : ℤ) = A161844 (n + 1)

end A161844

/-! ## A161844.P5466498200505375167

`comp[A000040(n+1)]*A002808(n+1)`
-/

namespace A161844.P5466498200505375167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A002808 (n + 1)

end

end A161844.P5466498200505375167

namespace A161844

/-- `comp[A000040(n+1)]*A002808(n+1)` -/
def P5466498200505375167.Spec : Prop :=
  ∀ n, P5466498200505375167.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P17875277381091046862

`comp[A006530(n+2)]*A002808(n+1)`
-/

namespace A161844.P17875277381091046862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A002808 (n + 1)

end

end A161844.P17875277381091046862

namespace A161844

/-- `comp[A006530(n+2)]*A002808(n+1)` -/
def P17875277381091046862.Spec : Prop :=
  ∀ n, P17875277381091046862.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P1727334777321702322

`A018252(n+2)*comp[A000040(n+1)]`
-/

namespace A161844.P1727334777321702322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161844.P1727334777321702322

namespace A161844

/-- `A018252(n+2)*comp[A000040(n+1)]` -/
def P1727334777321702322.Spec : Prop :=
  ∀ n, P1727334777321702322.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P240012229049466454

`comp[A020639(n+2)]*A002808(n+1)`
-/

namespace A161844.P240012229049466454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A002808 (n + 1)

end

end A161844.P240012229049466454

namespace A161844

/-- `comp[A020639(n+2)]*A002808(n+1)` -/
def P240012229049466454.Spec : Prop :=
  ∀ n, P240012229049466454.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P17171713801575642549

`comp[A006530(n+2)]*A018252(n+2)`
-/

namespace A161844.P17171713801575642549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A018252 (n + 2)

end

end A161844.P17171713801575642549

namespace A161844

/-- `comp[A006530(n+2)]*A018252(n+2)` -/
def P17171713801575642549.Spec : Prop :=
  ∀ n, P17171713801575642549.a n = A161844 (n + 1)

end A161844

/-! ## A161844.P97632599501336128

`comp[A008578(n+2)]*A018252(n+2)`
-/

namespace A161844.P97632599501336128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A018252 (n + 2)

end

end A161844.P97632599501336128

namespace A161844

/-- `comp[A008578(n+2)]*A018252(n+2)` -/
def P97632599501336128.Spec : Prop :=
  ∀ n, P97632599501336128.a n = A161844 (n + 1)

end A161844

/-!
# A161845: a(n) = A002808(n)^A141468(n).

The programs for A161845, the canonical program `A161845.P15767429707514864025` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161845 has offset 1).

The definition of A161845 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161845.P15767429707514864025

`A002808(n+1)^A141468(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161845

/-- `A002808(n+1)^A141468(n+1)` -/
def P15767429707514864025.Spec : Prop :=
  ∀ n, P15767429707514864025.a n = (A161845 (n + 1) : ℚ)

end A161845

/-! ## A161845.P10102247928448431718

`A018252(n+2)^A141468(n+1)`
-/

namespace A161845.P10102247928448431718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) ^ (A141468 (n + 1) : ℤ)

end

end A161845.P10102247928448431718

namespace A161845

/-- `A018252(n+2)^A141468(n+1)` -/
def P10102247928448431718.Spec : Prop :=
  ∀ n, P10102247928448431718.a n = (A161845 (n + 1) : ℚ)

end A161845

/-! ## A161845.P14258964467174771431

`A018252(n+2)^comp[A000040(n+1)]`
-/

namespace A161845.P14258964467174771431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161845.P14258964467174771431

namespace A161845

/-- `A018252(n+2)^comp[A000040(n+1)]` -/
def P14258964467174771431.Spec : Prop :=
  ∀ n, P14258964467174771431.a n = A161845 (n + 1)

end A161845

/-! ## A161845.P12402672526615362631

`A018252(n+2)^comp[A006530(n+2)]`
-/

namespace A161845.P12402672526615362631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161845.P12402672526615362631

namespace A161845

/-- `A018252(n+2)^comp[A006530(n+2)]` -/
def P12402672526615362631.Spec : Prop :=
  ∀ n, P12402672526615362631.a n = A161845 (n + 1)

end A161845

/-! ## A161845.P4986159975850899440

`A018252(n+2)^comp[A020639(n+2)]`
-/

namespace A161845.P4986159975850899440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161845.P4986159975850899440

namespace A161845

/-- `A018252(n+2)^comp[A020639(n+2)]` -/
def P4986159975850899440.Spec : Prop :=
  ∀ n, P4986159975850899440.a n = A161845 (n + 1)

end A161845

/-!
# A161846: Numerator of the ratio (prime((n+1)^2) - prime(n^2))/prime(n).

The programs for A161846, there is no canonical definition to state claims against.
-/

/-! ## A161846.P13155585425029215593

`and(A063076(n+1), A107392(n))`
-/

namespace A161846.P13155585425029215593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063076 (n + 1)) (A107392 n)

end

end A161846.P13155585425029215593

/-! ## A161846.P4373244436626205691

`A063076(n+1)%A066860(n+1)`
-/

namespace A161846.P4373244436626205691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063076 (n + 1)) (A066860 (n + 1))

end

end A161846.P4373244436626205691

/-! ## A161846.P3533122008703577859

`Δ[A323526(n+2)]%A066860(n+1)`
-/

namespace A161846.P3533122008703577859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A066860 (n + 1))

end

end A161846.P3533122008703577859

/-! ## A161846.P13335563043238658066

`Δ[A011757(n+1)]%A269152(n+4)`
-/

namespace A161846.P13335563043238658066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A269152 (n + 4))

end

end A161846.P13335563043238658066

/-! ## A161846.P11838150568926101259

`A063076(n+1)/gcd(5, A000040(n+1))`
-/

namespace A161846.P11838150568926101259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063076 (n + 1) : ℚ) / (Int.gcd 5 (A000040 (n + 1)) : ℚ)

end

end A161846.P11838150568926101259

/-! ## A161846.P7704116285615330272

`Δ[A000040((n+1)²)]%A066860(n+1)`
-/

namespace A161846.P7704116285615330272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A066860 (n + 1))

end

end A161846.P7704116285615330272

/-! ## A161846.P747512793809914845

`A063076(n+1)-char[2]*A119590(n+1)`
-/

namespace A161846.P747512793809914845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063076 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A119590 (n + 1)

end

end A161846.P747512793809914845

/-! ## A161846.P11199668551032778735

`A063076(n+1)%A129202(A004767(n))`
-/

namespace A161846.P11199668551032778735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063076 (n + 1)) (A129202 (A004767 n).toNat)

end

end A161846.P11199668551032778735

/-! ## A161846.P15826103621023005241

`Δ[A011757(n+1)]%A000145(A029048(n))`
-/

namespace A161846.P15826103621023005241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000145 (A029048 n).toNat)

end

end A161846.P15826103621023005241

/-! ## A161846.P13366183983571882556

`A063076(n+1)/A014963(A001750(n+1))`
-/

namespace A161846.P13366183983571882556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063076 (n + 1) : ℚ) / (A014963 (A001750 (n + 1)).toNat : ℚ)

end

end A161846.P13366183983571882556

/-!
# A161847: Denominator of the ratio (prime((n+1)^2) - prime(n^2))/prime(n).

The programs for A161847, the canonical program `A161847.P7260317161909887223` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161847 has offset 1).

The definition of A161847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161847.P8321899446743916380

`p?[round(4*2*n/7)]%round(acot(n)+n)²`
-/

namespace A161847.P8321899446743916380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((2 * n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) ^ 2)

end

end A161847.P8321899446743916380

namespace A161847

/-- `p?[round(4*2*n/7)]%round(acot(n)+n)²` -/
def P8321899446743916380.Spec : Prop :=
  ∀ n, P8321899446743916380.a n = A161847 (n + 1)

end A161847

/-! ## A161847.P7260317161909887223

`A000040(n+1)%A109256(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A161847

/-- `A000040(n+1)%A109256(n)` -/
def P7260317161909887223.Spec : Prop :=
  ∀ n, P7260317161909887223.a n = A161847 (n + 1)

theorem P7260317161909887223.correct : P7260317161909887223.Spec := by
  intro n
  simp only [A161847, Nat.add_sub_cancel]

end A161847

/-! ## A161847.P15768958929380678391

`gcd(A000040(n+1), A138426(n+1))`
-/

namespace A161847.P15768958929380678391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A138426 (n + 1))

end

end A161847.P15768958929380678391

namespace A161847

/-- `gcd(A000040(n+1), A138426(n+1))` -/
def P15768958929380678391.Spec : Prop :=
  ∀ n, (P15768958929380678391.a n : ℤ) = A161847 (n + 1)

end A161847

/-! ## A161847.P14857121280766276307

`gcd(A006094(n+1), A273224(n+1))`
-/

namespace A161847.P14857121280766276307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006094 (n + 1)) (A273224 (n + 1))

end

end A161847.P14857121280766276307

namespace A161847

/-- `gcd(A006094(n+1), A273224(n+1))` -/
def P14857121280766276307.Spec : Prop :=
  ∀ n, (P14857121280766276307.a n : ℤ) = A161847 (n + 1)

end A161847

/-! ## A161847.P3124541186439490504

`lcm(5, p?[xor(1, n)+1])/5`
-/

namespace A161847.P3124541186439490504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 5

end

end A161847.P3124541186439490504

namespace A161847

/-- `lcm(5, p?[xor(1, n)+1])/5` -/
def P3124541186439490504.Spec : Prop :=
  ∀ n, P3124541186439490504.a n = (A161847 (n + 1) : ℚ)

end A161847

/-! ## A161847.P16096165964317510626

`p?[abs(xor(n, -2))]-4*char[2]`
-/

namespace A161847.P16096165964317510626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - ((4 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A161847.P16096165964317510626

namespace A161847

/-- `p?[abs(xor(n, -2))]-4*char[2]` -/
def P16096165964317510626.Spec : Prop :=
  ∀ n, P16096165964317510626.a n = A161847 (n + 1)

end A161847

/-! ## A161847.P5560898005890776712

`p?[abs(xor(n, -2))]%or(4, n²)`
-/

namespace A161847.P5560898005890776712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (Nat.lor 4 (n ^ 2) : ℤ)

end

end A161847.P5560898005890776712

namespace A161847

/-- `p?[abs(xor(n, -2))]%or(4, n²)` -/
def P5560898005890776712.Spec : Prop :=
  ∀ n, P5560898005890776712.a n = A161847 (n + 1)

end A161847

/-! ## A161847.P11455552340959466844

`gcd(2*char[2], p?[n%3+n])`
-/

namespace A161847.P11455552340959466844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * (if ∃ j, f1 j = n then 1 else 0)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A161847.P11455552340959466844

namespace A161847

/-- `gcd(2*char[2], p?[n%3+n])` -/
def P11455552340959466844.Spec : Prop :=
  ∀ n, (P11455552340959466844.a n : ℤ) = A161847 (n + 1)

end A161847

/-! ## A161847.P13021915903209973524

`p?[xor(1, n)+1]%(2*xor(2, ∑[n]))`
-/

namespace A161847.P13021915903209973524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % (2 * Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A161847.P13021915903209973524

namespace A161847

/-- `p?[xor(1, n)+1]%(2*xor(2, ∑[n]))` -/
def P13021915903209973524.Spec : Prop :=
  ∀ n, (P13021915903209973524.a n : ℤ) = A161847 (n + 1)

end A161847

/-! ## A161847.P11291495837904194379

`p?[-xor(1, -n)]%xor(4, ∑[2*n])`
-/

namespace A161847.P11291495837904194379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (Nat.xor 4 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A161847.P11291495837904194379

namespace A161847

/-- `p?[-xor(1, -n)]%xor(4, ∑[2*n])` -/
def P11291495837904194379.Spec : Prop :=
  ∀ n, P11291495837904194379.a n = A161847 (n + 1)

end A161847

/-! ## A161847.P13555343059262814073

`lcm(n+3, p?[n-(-1)^n])/(n+3)`
-/

namespace A161847.P13555343059262814073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 3 : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℚ) / (n + 3 : ℚ)

end

end A161847.P13555343059262814073

namespace A161847

/-- `lcm(n+3, p?[n-(-1)^n])/(n+3)` -/
def P13555343059262814073.Spec : Prop :=
  ∀ n, P13555343059262814073.a n = (A161847 (n + 1) : ℚ)

end A161847

/-! ## A161847.P16998134345036167652

`p?[n-(-1)^n]+1-gcd(5, p?[n-(-1)^n])`
-/

namespace A161847.P16998134345036167652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 - (Int.gcd 5 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) : ℤ)

end

end A161847.P16998134345036167652

namespace A161847

/-- `p?[n-(-1)^n]+1-gcd(5, p?[n-(-1)^n])` -/
def P16998134345036167652.Spec : Prop :=
  ∀ n, P16998134345036167652.a n = A161847 (n + 1)

end A161847

/-! ## A161847.P9475112226317636307

`A060791(A000040(n+1))`
-/

namespace A161847.P9475112226317636307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (A000040 (n + 1)).toNat

end

end A161847.P9475112226317636307

namespace A161847

/-- `A060791(A000040(n+1))` -/
def P9475112226317636307.Spec : Prop :=
  ∀ n, P9475112226317636307.a n = A161847 (n + 1)

end A161847

/-! ## A161847.P4815055649057632771

`A078268(A100484(n+1))`
-/

namespace A161847.P4815055649057632771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078268 (A100484 (n + 1)).toNat

end

end A161847.P4815055649057632771

namespace A161847

/-- `A078268(A100484(n+1))` -/
def P4815055649057632771.Spec : Prop :=
  ∀ n, P4815055649057632771.a n = A161847 (n + 1)

end A161847

/-! ## A161847.P12016816092921477091

`A106616(A001748(n+1))`
-/

namespace A161847.P12016816092921477091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (A001748 (n + 1)).toNat

end

end A161847.P12016816092921477091

namespace A161847

/-- `A106616(A001748(n+1))` -/
def P12016816092921477091.Spec : Prop :=
  ∀ n, P12016816092921477091.a n = A161847 (n + 1)

end A161847

/-! ## A161847.P5303213189947059522

`A106621(A001749(n+1))`
-/

namespace A161847.P5303213189947059522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A001749 (n + 1)).toNat

end

end A161847.P5303213189947059522

namespace A161847

/-- `A106621(A001749(n+1))` -/
def P5303213189947059522.Spec : Prop :=
  ∀ n, P5303213189947059522.a n = A161847 (n + 1)

end A161847

/-! ## A161847.P11926952254193198714

`A078268(A062876(n+1))`
-/

namespace A161847.P11926952254193198714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078268 (A062876 (n + 1)).toNat

end

end A161847.P11926952254193198714

namespace A161847

/-- `A078268(A062876(n+1))` -/
def P11926952254193198714.Spec : Prop :=
  ∀ n, P11926952254193198714.a n = A161847 (n + 1)

end A161847

/-! ## A161847.P6075720780167599605

`A106621(A072900(n+1))`
-/

namespace A161847.P6075720780167599605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A072900 (n + 1)).toNat

end

end A161847.P6075720780167599605

namespace A161847

/-- `A106621(A072900(n+1))` -/
def P6075720780167599605.Spec : Prop :=
  ∀ n, P6075720780167599605.a n = A161847 (n + 1)

end A161847

/-! ## A161847.P15555964724582290899

`and(A000040(n+1), A127582(n))`
-/

namespace A161847.P15555964724582290899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 1)) (A127582 n)

end

end A161847.P15555964724582290899

namespace A161847

/-- `and(A000040(n+1), A127582(n))` -/
def P15555964724582290899.Spec : Prop :=
  ∀ n, P15555964724582290899.a n = A161847 (n + 1)

end A161847

/-! ## A161847.P13972255731650109981

`A132739(A001750(n+1))`
-/

namespace A161847.P13972255731650109981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (A001750 (n + 1)).toNat

end

end A161847.P13972255731650109981

namespace A161847

/-- `A132739(A001750(n+1))` -/
def P13972255731650109981.Spec : Prop :=
  ∀ n, P13972255731650109981.a n = A161847 (n + 1)

end A161847

/-!
# A161848: Primes with at least one digit appearing exactly three times in the decimal expansion.

The programs for A161848, there is no canonical definition to state claims against.
-/

/-! ## A161848.P11803584494590101556

`A164937(n+47)`
-/

namespace A161848.P11803584494590101556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 47)

end

end A161848.P11803584494590101556

/-! ## A161848.P4385363192601427707

`A182051(n+52)`
-/

namespace A161848.P4385363192601427707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182051 (n + 52)

end

end A161848.P4385363192601427707

/-! ## A161848.P11860154346314079392

`A235154(n+67)`
-/

namespace A161848.P11860154346314079392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 67)

end

end A161848.P11860154346314079392

/-! ## A161848.P11941071105226331871

`A030291(n+72)`
-/

namespace A161848.P11941071105226331871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 72)

end

end A161848.P11941071105226331871

/-! ## A161848.P15183540291862451326

`p?[A291346(n+1)]`
-/

namespace A161848.P15183540291862451326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161848.P15183540291862451326

/-!
# A161849: a(n) = A052369(n) mod A056608(n).

The programs for A161849, there is no canonical definition to state claims against.
-/

/-! ## A161849.P11806510139987282426

`A069859(Δ[A053767(n)])`
-/

namespace A161849.P11806510139987282426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (f1 (n + 1) - f1 n).toNat

end

end A161849.P11806510139987282426

/-! ## A161849.P10497269112768133869

`A069859(A002808(n+1))`
-/

namespace A161849.P10497269112768133869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A002808 (n + 1)).toNat

end

end A161849.P10497269112768133869

/-! ## A161849.P8135233010941732641

`A069859(A056653(n+1))`
-/

namespace A161849.P8135233010941732641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A056653 (n + 1)).toNat

end

end A161849.P8135233010941732641

/-! ## A161849.P13796228326994735081

`A069859(A018252(n+2))`
-/

namespace A161849.P13796228326994735081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A018252 (n + 2)).toNat

end

end A161849.P13796228326994735081

/-! ## A161849.P5073675318286274662

`A085428(n)%A056608(n+1)`
-/

namespace A161849.P5073675318286274662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085428 n) (A056608 (n + 1))

end

end A161849.P5073675318286274662

/-! ## A161849.P18214789054458998882

`A069859(lt[1, A001222(n+1)]+1)`
-/

namespace A161849.P18214789054458998882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A161849.P18214789054458998882

/-! ## A161849.P431344792693122714

`A161986(n+1)-A002808(n+1)`
-/

namespace A161849.P431344792693122714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (n + 1) - A002808 (n + 1)

end

end A161849.P431344792693122714

/-! ## A161849.P3132457284843119633

`A161986(n+1)-A018252(n+2)`
-/

namespace A161849.P3132457284843119633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (n + 1) - A018252 (n + 2)

end

end A161849.P3132457284843119633

/-! ## A161849.P3509764791398942199

`A052369(n+1)%A056608(n+1)`
-/

namespace A161849.P3509764791398942199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052369 (n + 1)) (A056608 (n + 1))

end

end A161849.P3509764791398942199

/-! ## A161849.P7038606978122790190

`A085275(n+1)%A056608(n+1)`
-/

namespace A161849.P7038606978122790190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085275 (n + 1)) (A056608 (n + 1))

end

end A161849.P7038606978122790190

/-! ## A161849.P11973250506715227755

`A069859(A053767(n+1)-A053767(n))`
-/

namespace A161849.P11973250506715227755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A053767 (n + 1) - A053767 n).toNat

end

end A161849.P11973250506715227755

/-! ## A161849.P5516820222320940508

`A006530(A002808(n+1))%A056608(n+1)`
-/

namespace A161849.P5516820222320940508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A002808 (n + 1)).toNat) (A056608 (n + 1))

end

end A161849.P5516820222320940508

/-! ## A161849.P10487141609191879487

`A161986(n+1)-A052369(n+1)*A161003(n+1)`
-/

namespace A161849.P10487141609191879487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (n + 1) - A052369 (n + 1) * A161003 (n + 1)

end

end A161849.P10487141609191879487

/-! ## A161849.P1211449112082262846

`A161986(n+1)-A056608(n+1)*A160180(n+1)`
-/

namespace A161849.P1211449112082262846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (n + 1) - A056608 (n + 1) * A160180 (n + 1)

end

end A161849.P1211449112082262846

/-! ## A161849.P16505791989793043634

`A069859(lt[2, A005128(n)])`
-/

namespace A161849.P16505791989793043634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161849.P16505791989793043634

/-! ## A161849.P9444572411326253922

`A111426(n+1)%A056608(n+1)`
-/

namespace A161849.P9444572411326253922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111426 (n + 1)) (A056608 (n + 1))

end

end A161849.P9444572411326253922

/-! ## A161849.P510335208581375494

`A069859(A062312(n+2))`
-/

namespace A161849.P510335208581375494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A062312 (n + 2)).toNat

end

end A161849.P510335208581375494

/-! ## A161849.P238131064860872917

`A069859(A216153(n+2))`
-/

namespace A161849.P238131064860872917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A216153 (n + 2)).toNat

end

end A161849.P238131064860872917

/-!
# A161850: Subsequence of A161986 consisting of all terms that are prime.

The programs for A161850, there is no canonical definition to state claims against.
-/

/-! ## A161850.P12417703223452057745

`p?[A161986(n+1)]`
-/

namespace A161850.P12417703223452057745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161850.P12417703223452057745

/-! ## A161850.P9567362968009696836

`or(1, p?[A161986(A028310(n))])`
-/

namespace A161850.P9567362968009696836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A161850.P9567362968009696836

/-! ## A161850.P15165153980967002985

`or(1, p?[A161986(A344180(n))])`
-/

namespace A161850.P15165153980967002985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A161850.P15165153980967002985

/-! ## A161850.P12905382168658446143

`filter[A161986(n+1), A010051(#)]`
-/

namespace A161850.P12905382168658446143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A161850.P12905382168658446143

/-! ## A161850.P15036774762005527771

`filter[A161986(n+1), A080339(#)]`
-/

namespace A161850.P15036774762005527771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A161850.P15036774762005527771

/-! ## A161850.P4895912500219021307

`filter[A161986(n+1), A080545(#)]`
-/

namespace A161850.P4895912500219021307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A161850.P4895912500219021307

/-! ## A161850.P16283736811181067846

`filter[A161986(n+1), A171387(#)]`
-/

namespace A161850.P16283736811181067846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A161850.P16283736811181067846

/-! ## A161850.P2648987385467194146

`filter[A161986(n+1), A257531(#)]`
-/

namespace A161850.P2648987385467194146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A161850.P2648987385467194146

/-! ## A161850.P17890815097992980253

`filter[A161986(n+1), A323152(#)]`
-/

namespace A161850.P17890815097992980253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A161850.P17890815097992980253

/-! ## A161850.P1369671097923704445

`filter[A161986(n+1), A323153(#)]`
-/

namespace A161850.P1369671097923704445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A161850.P1369671097923704445

/-!
# A161851: Squares which are anagrams of prime numbers.

The programs for A161851, there is no canonical definition to state claims against.
-/

/-! ## A161851.P11600678550436959687

`A171584((n+1)^gcd(10^n, ∑{digits}[n, (#%2)!]!))`
-/

namespace A161851.P11600678550436959687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171584 ((n + 1) ^ Nat.gcd (10 ^ n) (Nat.factorial ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum))

end

end A161851.P11600678550436959687

/-! ## A161851.P14882866347699004249

`A171584(A002998(n)+1)`
-/

namespace A161851.P14882866347699004249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171584 (A002998 n + 1).toNat

end

end A161851.P14882866347699004249

/-! ## A161851.P246629498642903950

`A171584(A043315(n+1))`
-/

namespace A161851.P246629498642903950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171584 (A043315 (n + 1)).toNat

end

end A161851.P246629498642903950

/-! ## A161851.P15449171550649193953

`A171584(A044912(n+1))`
-/

namespace A161851.P15449171550649193953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171584 (A044912 (n + 1)).toNat

end

end A161851.P15449171550649193953

/-! ## A161851.P15258187981475041651

`A171584(A055649(n+1))`
-/

namespace A161851.P15258187981475041651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171584 (A055649 (n + 1)).toNat

end

end A161851.P15258187981475041651

/-!
# A161852: Solutions to the simultaneous equations m(n)+1=a(n)^2 and 7*m(n)+1=b(n)^2.

The programs for A161852, the canonical program `A161852.P13496728816473145261` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161852 has offset 1).

The definition of A161852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161852.P13496728816473145261

`16*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=79`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A161852

/-- `16*a(n-2)-a(n-4)` -/
def P13496728816473145261.Spec : Prop :=
  ∀ n, P13496728816473145261.a n = A161852 (n + 1)

theorem P13496728816473145261.correct : P13496728816473145261.Spec := by
  intro n
  simp only [A161852, Nat.add_sub_cancel]

end A161852

/-! ## A161852.P18252629117212858318

`2*A077398(n)+1`
-/

namespace A161852.P18252629117212858318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077398 n + 1

end

end A161852.P18252629117212858318

namespace A161852

/-- `2*A077398(n)+1` -/
def P18252629117212858318.Spec : Prop :=
  ∀ n, P18252629117212858318.a n = A161852 (n + 1)

end A161852

/-! ## A161852.P4940851784619460646

`Δ[Δ[A007750(n-A057427(n))]]`
-/

namespace A161852.P4940851784619460646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 ((n : ℤ) - A057427 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161852.P4940851784619460646

namespace A161852

/-- `Δ[Δ[A007750(n-A057427(n))]]` -/
def P4940851784619460646.Spec : Prop :=
  ∀ n, P4940851784619460646.a n = A161852 (n + 1)

end A161852

/-! ## A161852.P3739370506506487695

`or(2*A077398(n), A007318(A000217(n)))`
-/

namespace A161852.P3739370506506487695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A077398 n) (A007318 (A000217 n).toNat)

end

end A161852.P3739370506506487695

namespace A161852

/-- `or(2*A077398(n), A007318(A000217(n)))` -/
def P3739370506506487695.Spec : Prop :=
  ∀ n, P3739370506506487695.a n = A161852 (n + 1)

end A161852

/-! ## A161852.P17060765047177336494

`sqrt(A195917(n+1)+1)`
-/

namespace A161852.P17060765047177336494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A195917 (n + 1) + 1 : ℝ)

end

end A161852.P17060765047177336494

namespace A161852

/-- `sqrt(A195917(n+1)+1)` -/
def P17060765047177336494.Spec : Prop :=
  ∀ n, P17060765047177336494.a n = (A161852 (n + 1) : ℝ)

end A161852

/-!
# A161853: Primes which are anagrams of squares.

The programs for A161853, there is no canonical definition to state claims against.
-/

/-! ## A161853.P10708271814201264864

`p?[A235993(n+1)]`
-/

namespace A161853.P10708271814201264864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161853.P10708271814201264864

/-! ## A161853.P8808843598596024668

`record[p?[A235993(A323889(n))]]`
-/

namespace A161853.P8808843598596024668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161853.P8808843598596024668

/-! ## A161853.P16862833601102308101

`∩[A000040(n+1), A235993(n+1)]`
-/

namespace A161853.P16862833601102308101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P16862833601102308101

/-! ## A161853.P14320130506850185766

`∩[A002476(n+1), A235993(n+1)]`
-/

namespace A161853.P14320130506850185766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P14320130506850185766

/-! ## A161853.P6711782422603041838

`∩[A004139(n+1), A235993(n+1)]`
-/

namespace A161853.P6711782422603041838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P6711782422603041838

/-! ## A161853.P6420490140371768023

`∩[A007645(n+1), A235993(n+1)]`
-/

namespace A161853.P6420490140371768023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P6420490140371768023

/-! ## A161853.P3312852328905767920

`∩[A040116(n+1), A235993(n+1)]`
-/

namespace A161853.P3312852328905767920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P3312852328905767920

/-! ## A161853.P17370743607665002776

`∩[A045319(n+1), A235993(n+1)]`
-/

namespace A161853.P17370743607665002776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P17370743607665002776

/-! ## A161853.P7322514567574444043

`∩[A045331(n+1), A235993(n+1)]`
-/

namespace A161853.P7322514567574444043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P7322514567574444043

/-! ## A161853.P18342977592086498086

`∩[A045344(n+1), A235993(n+1)]`
-/

namespace A161853.P18342977592086498086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P18342977592086498086

/-! ## A161853.P8849937836589562362

`∩[A045375(n+1), A235993(n+1)]`
-/

namespace A161853.P8849937836589562362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P8849937836589562362

/-! ## A161853.P18155797622849540257

`∩[A049591(n+1), A235993(n+1)]`
-/

namespace A161853.P18155797622849540257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P18155797622849540257

/-! ## A161853.P9855092420144453504

`∩[A053176(n+1), A235993(n+1)]`
-/

namespace A161853.P9855092420144453504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P9855092420144453504

/-! ## A161853.P15345491713772880244

`∩[A058501(n+1), A235993(n+1)]`
-/

namespace A161853.P15345491713772880244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P15345491713772880244

/-! ## A161853.P13187797312438868139

`∩[A059456(n+1), A235993(n+1)]`
-/

namespace A161853.P13187797312438868139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P13187797312438868139

/-! ## A161853.P3174780022971915138

`∩[A059500(n+1), A235993(n+1)]`
-/

namespace A161853.P3174780022971915138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P3174780022971915138

/-! ## A161853.P12327671275998785893

`∩[A065091(n+1), A235993(n+1)]`
-/

namespace A161853.P12327671275998785893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P12327671275998785893

/-! ## A161853.P4597804757544948824

`∩[A067774(n+1), A235993(n+1)]`
-/

namespace A161853.P4597804757544948824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P4597804757544948824

/-! ## A161853.P7930083576447860767

`∩[A067833(n+1), A235993(n+1)]`
-/

namespace A161853.P7930083576447860767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P7930083576447860767

/-! ## A161853.P2637115103021448877

`∩[A071621(n+1), A235993(n+1)]`
-/

namespace A161853.P2637115103021448877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161853.P2637115103021448877

/-!
# A161854: Primes which are anagrams of cubes.

The programs for A161854, there is no canonical definition to state claims against.
-/

/-! ## A161854.P15227144078924709058

`p?[A235994(n+1)]`
-/

namespace A161854.P15227144078924709058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161854.P15227144078924709058

/-! ## A161854.P17303472543440630040

`p?[record[A235994(A328399(n))]]`
-/

namespace A161854.P17303472543440630040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161854.P17303472543440630040

/-! ## A161854.P2385136717777517230

`p?[record[A235994(A331303(n))]]`
-/

namespace A161854.P2385136717777517230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (A331303 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161854.P2385136717777517230

/-! ## A161854.P5043988773965297336

`∩[A129805(n+1), A235994(n+1)]`
-/

namespace A161854.P5043988773965297336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161854.P5043988773965297336

/-! ## A161854.P5215744802471758697

`p?[record[A235994(A126759(n))]]`
-/

namespace A161854.P5215744802471758697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161854.P5215744802471758697

/-! ## A161854.P6906883628707467849

`p?[record[A235994(A154958(n))]]`
-/

namespace A161854.P6906883628707467849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161854.P6906883628707467849

/-! ## A161854.P1735500716204986399

`∩[A166849(n+1), A235994(n+1)]`
-/

namespace A161854.P1735500716204986399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161854.P1735500716204986399

/-! ## A161854.P2423108128115812118

`filter[A235994(n+1), A010051(#)]`
-/

namespace A161854.P2423108128115812118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A161854.P2423108128115812118

/-!
# A161855: Cubes which are anagrams of primes.

The programs for A161855, there is no canonical definition to state claims against.
-/

/-! ## A161855.P17021856060869336257

`∩[A007933(n+1), n*n²]`
-/

namespace A161855.P17021856060869336257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007933 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A161855.P17021856060869336257

/-! ## A161855.P7366542685544363858

`∩[A007934(n+1), n*n²]`
-/

namespace A161855.P7366542685544363858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A161855.P7366542685544363858

/-! ## A161855.P11515582086568647592

`eq[A040436(n), A177025(A130238(2*n+1)+3)]^3`
-/

namespace A161855.P11515582086568647592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040436 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177025 (A130238 (2 * n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3

end

end A161855.P11515582086568647592

/-!
# A161856: Triangle read by rows in which row n lists the coefficients of the interpolating polynomial for its divisors of n.

The programs for A161856, there is no canonical definition to state claims against.
-/

/-! ## A161856.P2390041760503277476

`A299480(A001227(A027750(n+1))^A319844(n+1))`
-/

namespace A161856.P2390041760503277476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (SequenceMachineLib.roundAway ((A001227 (A027750 (n + 1)).toNat : ℚ) ^ (A319844 (n + 1) : ℤ))).toNat

end

end A161856.P2390041760503277476

/-!
# A161857: a(n) is the sum of the first column of the difference table of the divisors of n.

The programs for A161857, there is no canonical definition to state claims against.
-/

/-! ## A161857.P4215723749919996835

`A000203(n+1)+A161700(n+1)-A273103(n+1)`
-/

namespace A161857.P4215723749919996835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A161700 (n + 1) - A273103 (n + 1))

end

end A161857.P4215723749919996835

/-! ## A161857.P2503386171772522696

`A273263(∑[∏{e}[n, #+1]])`
-/

namespace A161857.P2503386171772522696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273263 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161857.P2503386171772522696

/-! ## A161857.P1888105151098982909

`A273263(∑[∑{d}[n, ceil(acot(#))]]+1)`
-/

namespace A161857.P1888105151098982909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273263 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A161857.P1888105151098982909

/-! ## A161857.P16957495617213723784

`A273263(∑[∑{d}[n, ceil(1/#)]]+1)`
-/

namespace A161857.P16957495617213723784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273263 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A161857.P16957495617213723784

/-! ## A161857.P18412088670821185164

`A273263(A054519(n))`
-/

namespace A161857.P18412088670821185164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273263 (A054519 n).toNat

end

end A161857.P18412088670821185164

/-!
# A161858: Number of reduced words of length n in the Weyl group B_12.

The programs for A161858, there is no canonical definition to state claims against.
-/

/-! ## A161858.P5906862006247370418

`∑[A161776(n)^val(A367481(2*(n+2)), 2)]`
-/

namespace A161858.P5906862006247370418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161776 n ^ SequenceMachineLib.valuation (A367481 (2 * (n + 2))).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161858.P5906862006247370418

/-!
# A161859: Number of reduced words of length n in the Weyl group B_13.

The programs for A161859, there is no canonical definition to state claims against.
-/

/-! ## A161859.P17516257417693030551

`∑[A010690(A255843(3*n+2))*A161858(n)]`
-/

namespace A161859.P17516257417693030551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 (A255843 (3 * n + 2)).toNat * A161858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161859.P17516257417693030551

/-!
# A161860: Squares which are anagrams of cubes.

The programs for A161860, there is no canonical definition to state claims against.
-/

/-! ## A161860.P2097371356485690784

`∩[A235994(n+1), n²]`
-/

namespace A161860.P2097371356485690784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A161860.P2097371356485690784

/-! ## A161860.P6892014004081377777

`∩[A000290(n), A235994(n+1)]`
-/

namespace A161860.P6892014004081377777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161860.P6892014004081377777

/-! ## A161860.P11439012111505192438

`∩[A085960(n+1), A235994(n+1)]`
-/

namespace A161860.P11439012111505192438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161860.P11439012111505192438

/-! ## A161860.P8417551516038489410

`∩[A034793(n+1), A235994(n+1)]`
-/

namespace A161860.P8417551516038489410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161860.P8417551516038489410

/-! ## A161860.P9162171418546969392

`∩[A138326(n+1), A235994(n+1)]`
-/

namespace A161860.P9162171418546969392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161860.P9162171418546969392

/-!
# A161861: Cubes which are anagrams of squares.

The programs for A161861, there is no canonical definition to state claims against.
-/

/-! ## A161861.P790089221808597810

`record[A007953(A060102(n))^3]`
-/

namespace A161861.P790089221808597810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A060102 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161861.P790089221808597810

/-! ## A161861.P5673449680580681863

`filter[A179163(n+1), A059620(#)]`
-/

namespace A161861.P5673449680580681863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059620 (f1 j).toNat = 1) n)

end

end A161861.P5673449680580681863

/-!
# A161862: Number of reduced words of length n in the Weyl group B_14.

The programs for A161862, there is no canonical definition to state claims against.
-/

/-! ## A161862.P9254425326002018913

`A185709(A090164(n))+A162301(n)`
-/

namespace A161862.P9254425326002018913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185709 (A090164 n).toNat + A162301 n

end

end A161862.P9254425326002018913

/-!
# A161864: Numbers n such that n^2 + n + 5 and n^2 + n - 5 are both prime.

The programs for A161864, there is no canonical definition to state claims against.
-/

/-! ## A161864.P1912503103354399309

`record[A204123(A088765(n+1))]`
-/

namespace A161864.P1912503103354399309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204123 (A088765 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161864.P1912503103354399309

/-! ## A161864.P8421523058704819976

`record[A127701(A088765(n+2))]`
-/

namespace A161864.P8421523058704819976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127701 (A088765 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161864.P8421523058704819976

/-! ## A161864.P13710616816404270841

`A002024(∩[A088765(n+1), A000217(n)])`
-/

namespace A161864.P13710616816404270841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A161864.P13710616816404270841

/-! ## A161864.P15600801175242548575

`A003056(∩[A088765(n+1), A000217(n)])`
-/

namespace A161864.P15600801175242548575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A161864.P15600801175242548575

/-! ## A161864.P10105176829338517064

`A051162(∩[A088765(n+1), A000217(n)])`
-/

namespace A161864.P10105176829338517064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A161864.P10105176829338517064

/-!
# A161866: Numbers k such that k^2+k+7 and k^2+k-7 are both prime.

The programs for A161866, there is no canonical definition to state claims against.
-/

/-! ## A161866.P3795831390756135731

`A131818(∩[A088767(n+1), A000217(n)])`
-/

namespace A161866.P3795831390756135731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A161866.P3795831390756135731

/-!
# A161868: Primes p such that both p+2 and p-2 are products of 3 distinct primes.

The programs for A161868, the canonical program `A161868.P13367704596078585754` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161868 has offset 1).

The definition of A161868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161868.P13367704596078585754

`∩[A049282(n+1), A063645(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A161868

/-- `∩[A049282(n+1), A063645(n+1)]` -/
def P13367704596078585754.Spec : Prop :=
  ∀ n, (P13367704596078585754.a n : ℤ) = A161868 (n + 1)

theorem P13367704596078585754.correct : P13367704596078585754.Spec := by
  intro n
  simp only [A161868, Nat.add_sub_cancel]

end A161868

/-!
# A161869: Convergent of an infinite product of Pascal's triangles aerated by rows.

The programs for A161869, there is no canonical definition to state claims against.
-/

/-! ## A161869.P460105745445047918

`A261104(A148442(n+1))`
-/

namespace A161869.P460105745445047918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A148442 (n + 1)).toNat

end

end A161869.P460105745445047918

/-! ## A161869.P1998747506420220287

`A261104(Δ[A071688(n+1)])`
-/

namespace A161869.P1998747506420220287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (f1 (n + 1) - f1 n).toNat

end

end A161869.P1998747506420220287

/-! ## A161869.P16242050021688368583

`A261104(Δ[A089421(n+2)])`
-/

namespace A161869.P16242050021688368583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089421 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (f1 (n + 1) - f1 n).toNat

end

end A161869.P16242050021688368583

/-! ## A161869.P16142181735921663265

`∑[A000196(∑[A292440(n)]²)]`
-/

namespace A161869.P16142181735921663265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161869.P16142181735921663265

/-! ## A161869.P11832530254176921215

`A185283(A000110(n+1)-n)`
-/

namespace A161869.P11832530254176921215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A000110 (n + 1) - (n : ℤ)).toNat

end

end A161869.P11832530254176921215

/-!
# A161870: Convolution square of A000219.

The programs for A161870, there is no canonical definition to state claims against.
-/

/-! ## A161870.P11629699746127876880

`A255961(∑[n+3])`
-/

namespace A161870.P11629699746127876880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161870.P11629699746127876880

/-! ## A161870.P17276425924268238597

`record[A255961(A069981(n))]`
-/

namespace A161870.P17276425924268238597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A069981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161870.P17276425924268238597

/-! ## A161870.P13246471280597409315

`xor(1, xor(1, A255961(A055998(n+1))))`
-/

namespace A161870.P13246471280597409315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A255961 (A055998 (n + 1)).toNat))

end

end A161870.P13246471280597409315

/-! ## A161870.P15348786249002061725

`record[A255961(A055998(A008611(n)))]`
-/

namespace A161870.P15348786249002061725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A055998 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161870.P15348786249002061725

/-! ## A161870.P2844094673608246265

`record[A255961(A055998(A008612(n)))]`
-/

namespace A161870.P2844094673608246265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A055998 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161870.P2844094673608246265

/-! ## A161870.P3526197925853387104

`record[A255961(A027379(A331742(n)))]`
-/

namespace A161870.P3526197925853387104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A027379 (A331742 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161870.P3526197925853387104

/-! ## A161870.P7321172921296770114

`A255961(A055998(n+1))%A255610(n+1)`
-/

namespace A161870.P7321172921296770114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255961 (A055998 (n + 1)).toNat) (A255610 (n + 1))

end

end A161870.P7321172921296770114

/-!
# A161873: Bases with smallest happy number > 1 in that base equal to the base.

The programs for A161873, there is no canonical definition to state claims against.
-/

/-! ## A161873.P17672485563430703953

`record[A161871(n+2)]`
-/

namespace A161873.P17672485563430703953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161871 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161873.P17672485563430703953

/-! ## A161873.P9357393455338384438

`eq[n, A161871(round(acot(n)+n))]`
-/

namespace A161873.P9357393455338384438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161871 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161873.P9357393455338384438

/-! ## A161873.P11790397956920098373

`lt[A028310(n), A161871(n+2)]+2`
-/

namespace A161873.P11790397956920098373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161871 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A161873.P11790397956920098373

/-! ## A161873.P396195822506882425

`lt[A153152(n), A161871(n+2)]+2`
-/

namespace A161873.P396195822506882425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161871 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A161873.P396195822506882425

/-! ## A161873.P7826133474903344228

`eq[n, A161871(A233583(n+1))]`
-/

namespace A161873.P7826133474903344228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161871 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161873.P7826133474903344228

/-!
# A161874: Bases with smallest unhappy number (in that base) > 2.

The programs for A161874, there is no canonical definition to state claims against.
-/

/-! ## A161874.P9794870679813657750

`lt[2, A161872(n+2)]+2`
-/

namespace A161874.P9794870679813657750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161872 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A161874.P9794870679813657750

/-! ## A161874.P9617120617672235810

`A009056(lt[2, A161872(n+2)])`
-/

namespace A161874.P9617120617672235810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161874.P9617120617672235810

/-!
# A161875: Number of reduced words of length n in the Weyl group B_15.

The programs for A161875, there is no canonical definition to state claims against.
-/

/-! ## A161875.P5436549699604204591

`A162321(n)+A055641(A006723(n))`
-/

namespace A161875.P5436549699604204591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162321 n + A055641 (A006723 n).toNat

end

end A161875.P5436549699604204591

/-!
# A161876: Number of reduced words of length n in the Weyl group B_16.

The programs for A161876, there is no canonical definition to state claims against.
-/

/-! ## A161876.P3612271189994118978

`A162327(n)+A102683(A184955(n))`
-/

namespace A161876.P3612271189994118978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162327 n + A102683 (A184955 n).toNat

end

end A161876.P3612271189994118978

/-!
# A161877: Number of reduced words of length n in the Weyl group B_17.

The programs for A161877, there is no canonical definition to state claims against.
-/

/-! ## A161877.P9289301215399629252

`∑[A031424(A031429(n+1))*A161876(n)]`
-/

namespace A161877.P9289301215399629252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031424 (A031429 (n + 1)).toNat * A161876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161877.P9289301215399629252

/-!
# A161878: Number of reduced words of length n in the Weyl group B_18.

The programs for A161878, there is no canonical definition to state claims against.
-/

/-! ## A161878.P11454241336368655813

`A169673(A008300(n+4))+A162346(n)`
-/

namespace A161878.P11454241336368655813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169673 (A008300 (n + 4)).toNat + A162346 n

end

end A161878.P11454241336368655813

/-!
# A161879: Number of reduced words of length n in the Weyl group B_19.

The programs for A161879, there is no canonical definition to state claims against.
-/

/-! ## A161879.P10992120040100696812

`∑[A185284(A185284(n))+A161878(n)]`
-/

namespace A161879.P10992120040100696812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A185284 n).toNat + A161878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161879.P10992120040100696812

/-!
# A161880: Number of reduced words of length n in the Weyl group B_20.

The programs for A161880, there is no canonical definition to state claims against.
-/

/-! ## A161880.P12913710225643183538

`∑[A161879(n)*A309397(2*(n+2))]`
-/

namespace A161880.P12913710225643183538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161879 n * A309397 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161880.P12913710225643183538

/-!
# A161881: a(n) = Sum_{k=0..n-1} {[x^k] A(x)^(n-k)} * {[x^(n-k-1)] A(x)^(k+1)} for n>0, with a(0)=1, where g.f. A(x) = Sum_{n>=0} a(n)*x^n.

The programs for A161881, there is no canonical definition to state claims against.
-/

/-! ## A161881.P17808753328713778745

`A008619(A290352(n)-A327868(n))`
-/

namespace A161881.P17808753328713778745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A290352 n - A327868 n).toNat

end

end A161881.P17808753328713778745

/-! ## A161881.P11982648131397858086

`A324327(n)+A326351(n)-A324173(n)`
-/

namespace A161881.P11982648131397858086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324327 n + (A326351 n - A324173 n)

end

end A161881.P11982648131397858086

/-!
# A161882: Smallest k such that n^2 = a_1^2 + ... + a_k^2 and all a_i are positive integers less than n.

The programs for A161882, the canonical program `A161882.P9047361608683957407` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161882 has offset 2).

The definition of A161882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 699 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161882.P16507780302508593056

`A070402(A173614(n+2)+1)`
-/

namespace A161882.P16507780302508593056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 (A173614 (n + 2) + 1).toNat

end

end A161882.P16507780302508593056

namespace A161882

/-- `A070402(A173614(n+2)+1)` -/
def P16507780302508593056.Spec : Prop :=
  ∀ n, P16507780302508593056.a n = A161882 (n + 2)

end A161882

/-! ## A161882.P4947561711578577448

`A000032(and(3, -A173614(n+2)))`
-/

namespace A161882.P4947561711578577448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land 3 (-A173614 (n + 2))).toNat

end

end A161882.P4947561711578577448

namespace A161882

/-- `A000032(and(3, -A173614(n+2)))` -/
def P4947561711578577448.Spec : Prop :=
  ∀ n, P4947561711578577448.a n = A161882 (n + 2)

end A161882

/-! ## A161882.P14059164384890206345

`A000041(and(3, -A173614(n+2)))+1`
-/

namespace A161882.P14059164384890206345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 3 (-A173614 (n + 2))).toNat + 1

end

end A161882.P14059164384890206345

namespace A161882

/-- `A000041(and(3, -A173614(n+2)))+1` -/
def P14059164384890206345.Spec : Prop :=
  ∀ n, P14059164384890206345.a n = A161882 (n + 2)

end A161882

/-! ## A161882.P9306414156601376026

`A000045(and(3, -A173614(n+2)))+2`
-/

namespace A161882.P9306414156601376026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 3 (-A173614 (n + 2))).toNat + 2

end

end A161882.P9306414156601376026

namespace A161882

/-- `A000045(and(3, -A173614(n+2)))+2` -/
def P9306414156601376026.Spec : Prop :=
  ∀ n, P9306414156601376026.a n = A161882 (n + 2)

end A161882

/-! ## A161882.P16054653765577119864

`A000005(and(3, -A173614(n+2))²+5)`
-/

namespace A161882.P16054653765577119864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.land 3 (-A173614 (n + 2)) ^ 2 + 5).toNat

end

end A161882.P16054653765577119864

namespace A161882

/-- `A000005(and(3, -A173614(n+2))²+5)` -/
def P16054653765577119864.Spec : Prop :=
  ∀ n, P16054653765577119864.a n = A161882 (n + 2)

end A161882

/-! ## A161882.P9047361608683957407

`A297382(A170818(n+2))+A297382(n+2)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A161882

/-- `A297382(A170818(n+2))+A297382(n+2)` -/
def P9047361608683957407.Spec : Prop :=
  ∀ n, P9047361608683957407.a n = A161882 (n + 2)

theorem P9047361608683957407.correct : P9047361608683957407.Spec := by
  intro n
  simp only [A161882, Nat.add_sub_cancel]

end A161882

/-!
# A161886: Number of nonzero elements in the n X n Redheffer matrix.

The programs for A161886, the canonical program `A161886.P10842892658287364340` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161886 has offset 1).

The definition of A161886 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006590, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161886.P15522832780191672869

`A006218(n+1)+n`
-/

namespace A161886.P15522832780191672869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + (n : ℤ)

end

end A161886.P15522832780191672869

namespace A161886

/-- `A006218(n+1)+n` -/
def P15522832780191672869.Spec : Prop :=
  ∀ n, P15522832780191672869.a n = A161886 (n + 1)

end A161886

/-! ## A161886.P7911682591395883874

`1+a(n-1)+A000005(n+1)` with `a(0)=1`
-/

namespace A161886.P7911682591395883874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 + (a (n - 1) + A000005 (n + 1))

end

end A161886.P7911682591395883874

namespace A161886

/-- `1+a(n-1)+A000005(n+1)` -/
def P7911682591395883874.Spec : Prop :=
  ∀ n, P7911682591395883874.a n = A161886 (n + 1)

end A161886

/-! ## A161886.P10842892658287364340

`A006590(n+2)-2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161886

/-- `A006590(n+2)-2` -/
def P10842892658287364340.Spec : Prop :=
  ∀ n, P10842892658287364340.a n = A161886 (n + 1)

theorem P10842892658287364340.correct : P10842892658287364340.Spec := by
  intro n
  simp only [A161886, Nat.add_sub_cancel]

end A161886

/-! ## A161886.P8954780462491380267

`∑[∏{e}[n+1, #+1]]+n`
-/

namespace A161886.P8954780462491380267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A161886.P8954780462491380267

namespace A161886

/-- `∑[∏{e}[n+1, #+1]]+n` -/
def P8954780462491380267.Spec : Prop :=
  ∀ n, (P8954780462491380267.a n : ℤ) = A161886 (n + 1)

end A161886

/-! ## A161886.P4359837637348261064

`∑[∑{d}[n+1, gcd(n, #)]]+n`
-/

namespace A161886.P4359837637348261064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A161886.P4359837637348261064

namespace A161886

/-- `∑[∑{d}[n+1, gcd(n, #)]]+n` -/
def P4359837637348261064.Spec : Prop :=
  ∀ n, (P4359837637348261064.a n : ℤ) = A161886 (n + 1)

end A161886

/-! ## A161886.P16297687395916648507

`∑[∑{d}[n+1, ceil(acot(#))]]+n`
-/

namespace A161886.P16297687395916648507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A161886.P16297687395916648507

namespace A161886

/-- `∑[∑{d}[n+1, ceil(acot(#))]]+n` -/
def P16297687395916648507.Spec : Prop :=
  ∀ n, P16297687395916648507.a n = A161886 (n + 1)

end A161886

/-! ## A161886.P10368580134708056694

`∑[∑{d}[n+1, ceil(2/#)]]-1`
-/

namespace A161886.P10368580134708056694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈2 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A161886.P10368580134708056694

namespace A161886

/-- `∑[∑{d}[n+1, ceil(2/#)]]-1` -/
def P10368580134708056694.Spec : Prop :=
  ∀ n, P10368580134708056694.a n = A161886 (n + 1)

end A161886

/-! ## A161886.P8747073784315704699

`∑[∑{d}[n+1, C(2, #)!]-1]+n`
-/

namespace A161886.P8747073784315704699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), Nat.factorial (Nat.choose 2 d) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A161886.P8747073784315704699

namespace A161886

/-- `∑[∑{d}[n+1, C(2, #)!]-1]+n` -/
def P8747073784315704699.Spec : Prop :=
  ∀ n, P8747073784315704699.a n = A161886 (n + 1)

end A161886

/-! ## A161886.P2964194331978629329

`∑[∏{p}[n+1, val(n+1, #)+1]]+n`
-/

namespace A161886.P2964194331978629329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (SequenceMachineLib.valuation (n + 1) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A161886.P2964194331978629329

namespace A161886

/-- `∑[∏{p}[n+1, val(n+1, #)+1]]+n` -/
def P2964194331978629329.Spec : Prop :=
  ∀ n, (P2964194331978629329.a n : ℤ) = A161886 (n + 1)

end A161886

/-! ## A161886.P7506796348743433851

`A156745(n+1)-1`
-/

namespace A161886.P7506796348743433851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156745 (n + 1) - 1

end

end A161886.P7506796348743433851

namespace A161886

/-- `A156745(n+1)-1` -/
def P7506796348743433851.Spec : Prop :=
  ∀ n, P7506796348743433851.a n = A161886 (n + 1)

end A161886

/-! ## A161886.P17926124507637148917

`A077597(n)+1+n`
-/

namespace A161886.P17926124507637148917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077597 n + 1 + (n : ℤ)

end

end A161886.P17926124507637148917

namespace A161886

/-- `A077597(n)+1+n` -/
def P17926124507637148917.Spec : Prop :=
  ∀ n, P17926124507637148917.a n = A161886 (n + 1)

end A161886

/-! ## A161886.P10305331668102690492

`∑[A334954(n+1)]-1`
-/

namespace A161886.P10305331668102690492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A161886.P10305331668102690492

namespace A161886

/-- `∑[A334954(n+1)]-1` -/
def P10305331668102690492.Spec : Prop :=
  ∀ n, P10305331668102690492.a n = A161886 (n + 1)

end A161886

/-! ## A161886.P1382398988565596444

`∑[A000005(n+1)]+n`
-/

namespace A161886.P1382398988565596444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A161886.P1382398988565596444

namespace A161886

/-- `∑[A000005(n+1)]+n` -/
def P1382398988565596444.Spec : Prop :=
  ∀ n, P1382398988565596444.a n = A161886 (n + 1)

end A161886

/-! ## A161886.P4167742587151465097

`A054519(n+1)-1+n`
-/

namespace A161886.P4167742587151465097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 1) - 1 + (n : ℤ)

end

end A161886.P4167742587151465097

namespace A161886

/-- `A054519(n+1)-1+n` -/
def P4167742587151465097.Spec : Prop :=
  ∀ n, P4167742587151465097.a n = A161886 (n + 1)

end A161886

/-! ## A161886.P824254323703173803

`∑[abs(A329484(n+1))]+n`
-/

namespace A161886.P824254323703173803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329484 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A161886.P824254323703173803

namespace A161886

/-- `∑[abs(A329484(n+1))]+n` -/
def P824254323703173803.Spec : Prop :=
  ∀ n, P824254323703173803.a n = A161886 (n + 1)

end A161886

/-! ## A161886.P10311133553844023602

`A002541(n+1)+Δ[n²]`
-/

namespace A161886.P10311133553844023602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A161886.P10311133553844023602

namespace A161886

/-- `A002541(n+1)+Δ[n²]` -/
def P10311133553844023602.Spec : Prop :=
  ∀ n, P10311133553844023602.a n = A161886 (n + 1)

end A161886

/-! ## A161886.P15589920649193657264

`∑[sqrt(A035116(n+1))]+n`
-/

namespace A161886.P15589920649193657264
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A161886.P15589920649193657264

namespace A161886

/-- `∑[sqrt(A035116(n+1))]+n` -/
def P15589920649193657264.Spec : Prop :=
  ∀ n, P15589920649193657264.a n = (A161886 (n + 1) : ℝ)

end A161886

/-! ## A161886.P6115660816058626680

`∑[log2(A338506(n+1))]+n`
-/

namespace A161886.P6115660816058626680
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A338506 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A161886.P6115660816058626680

namespace A161886

/-- `∑[log2(A338506(n+1))]+n` -/
def P6115660816058626680.Spec : Prop :=
  ∀ n, P6115660816058626680.a n = (A161886 (n + 1) : ℝ)

end A161886

/-! ## A161886.P12056763493694010233

`∑[∑[A341062(n+1)]]+n`
-/

namespace A161886.P12056763493694010233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A161886.P12056763493694010233

namespace A161886

/-- `∑[∑[A341062(n+1)]]+n` -/
def P12056763493694010233.Spec : Prop :=
  ∀ n, P12056763493694010233.a n = A161886 (n + 1)

end A161886

/-! ## A161886.P16515464658642539227

`∑[A320111(2*(n+1))]+n`
-/

namespace A161886.P16515464658642539227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A161886.P16515464658642539227

namespace A161886

/-- `∑[A320111(2*(n+1))]+n` -/
def P16515464658642539227.Spec : Prop :=
  ∀ n, P16515464658642539227.a n = A161886 (n + 1)

end A161886

/-!
# A161887: A product of quotients of factorials.

The programs for A161887, there is no canonical definition to state claims against.
-/

/-! ## A161887.P5345082619543120317

`A185021(A187041(n+1)^A055642(n))`
-/

namespace A161887.P5345082619543120317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185021 (SequenceMachineLib.roundAway ((A187041 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A161887.P5345082619543120317

/-! ## A161887.P8276953349927573890

`A071364(record[A185021(n)])`
-/

namespace A161887.P8276953349927573890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A161887.P8276953349927573890

/-! ## A161887.P18052952008314839816

`A097272(record[A185021(n)])`
-/

namespace A161887.P18052952008314839816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A161887.P18052952008314839816

/-! ## A161887.P16887727697585160684

`A175068(record[A185021(n)])`
-/

namespace A161887.P16887727697585160684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175068 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A161887.P16887727697585160684

/-!
# A161888: a(n) = the smallest positive integer that does not divide n, and is such that sum{k=1 to n} a(k) is coprime to n.

The programs for A161888, there is no canonical definition to state claims against.
-/

/-! ## A161888.P8910135078907599531

`Δ[A161889(A028310(n))%(n+1)²]`
-/

namespace A161888.P8910135078907599531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161889 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161888.P8910135078907599531

/-! ## A161888.P14928367497047699023

`A000038(n)+Δ[A161889(A028310(n))]`
-/

namespace A161888.P14928367497047699023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161889 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A161888.P14928367497047699023

/-! ## A161888.P15594087854825811144

`A161889(n+1)+A000038(n)-A161889(A028310(n))`
-/

namespace A161888.P15594087854825811144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161889 (n + 1) + (A000038 n - A161889 (A028310 n).toNat)

end

end A161888.P15594087854825811144

/-! ## A161888.P78205515946751981

`A161889(n+1)-A057427(n)*A161889(A028310(n))`
-/

namespace A161888.P78205515946751981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161889 (n + 1) - A057427 n * A161889 (A028310 n).toNat

end

end A161888.P78205515946751981

/-! ## A161888.P13649567453471334539

`Δ[A161889(A028310(n))+A122553(n)]`
-/

namespace A161888.P13649567453471334539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161889 (A028310 n).toNat + A122553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161888.P13649567453471334539

/-! ## A161888.P14520366166788203493

`Δ[A057427(n)*A161889(A028310(n))]`
-/

namespace A161888.P14520366166788203493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A161889 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161888.P14520366166788203493

/-!
# A161889: a(1)=2. a(n) = the smallest integer > a(n-1) that is coprime to n, and is such that (a(n)-a(n-1)) is not a divisor of n.

The programs for A161889, there is no canonical definition to state claims against.
-/

/-! ## A161889.P17644381044987307022

`∑[A161888(n+1)]`
-/

namespace A161889.P17644381044987307022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161889.P17644381044987307022

/-! ## A161889.P7150358629680410603

`gcd(∑[A161888(ϕ²-(ϕ-n))], A000038(n))`
-/

namespace A161889.P7150358629680410603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161888 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A161889.P7150358629680410603

/-! ## A161889.P15952348405921311065

`∑[A000034(2*n)*A161888(ϕ²-(ϕ-n))]`
-/

namespace A161889.P15952348405921311065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A161888 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161889.P15952348405921311065

/-! ## A161889.P5592532084327144289

`A028310(∑[A161888(ϕ²-(ϕ-n))])`
-/

namespace A161889.P5592532084327144289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161888 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161889.P5592532084327144289

/-! ## A161889.P2333614588061234911

`∑[A161888(ϕ²-(ϕ-n))%A159694(n)]`
-/

namespace A161889.P2333614588061234911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161888 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) (A159694 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161889.P2333614588061234911

/-! ## A161889.P5957914431202339384

`∑[A127252(n)²*A161888(ϕ²-(ϕ-n))]`
-/

namespace A161889.P5957914431202339384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127252 n ^ 2 * A161888 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161889.P5957914431202339384

/-! ## A161889.P246603227453759079

`∑[A161888(ϕ²-(ϕ-n))]*A040001(A172368(n))`
-/

namespace A161889.P246603227453759079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161888 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A040001 (A172368 n).toNat

end

end A161889.P246603227453759079

/-!
# A161890: Numbers such that A010060(n) = A010060(n+9).

The programs for A161890, the canonical program `A161890.P15218163243923693132` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161890 has offset 0).

The definition of A161890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161890.P15218163243923693132

`eq[A065359(n+9), A065359(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161890

/-- `eq[A065359(n+9), A065359(n)]` -/
def P15218163243923693132.Spec : Prop :=
  ∀ n, (P15218163243923693132.a n : ℤ) = A161890 n

theorem P15218163243923693132.correct : P15218163243923693132.Spec := by
  intro n
  simp only [A161890]

end A161890

/-! ## A161890.P6212689454309436441

`eq[A010060(n+9), A010060(n)]`
-/

namespace A161890.P6212689454309436441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161890.P6212689454309436441

namespace A161890

/-- `eq[A010060(n+9), A010060(n)]` -/
def P6212689454309436441.Spec : Prop :=
  ∀ n, (P6212689454309436441.a n : ℤ) = A161890 n

end A161890

/-! ## A161890.P9818503425742703773

`eq[A001285(n+9), A001285(n)]`
-/

namespace A161890.P9818503425742703773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161890.P9818503425742703773

namespace A161890

/-- `eq[A001285(n+9), A001285(n)]` -/
def P9818503425742703773.Spec : Prop :=
  ∀ n, (P9818503425742703773.a n : ℤ) = A161890 n

end A161890

/-! ## A161890.P2172653024410746889

`eq[A010059(n+9), A010059(n)]`
-/

namespace A161890.P2172653024410746889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161890.P2172653024410746889

namespace A161890

/-- `eq[A010059(n+9), A010059(n)]` -/
def P2172653024410746889.Spec : Prop :=
  ∀ n, (P2172653024410746889.a n : ℤ) = A161890 n

end A161890

/-! ## A161890.P33831495891112740

`eq[A106400(n+9), A106400(n)]`
-/

namespace A161890.P33831495891112740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161890.P33831495891112740

namespace A161890

/-- `eq[A106400(n+9), A106400(n)]` -/
def P33831495891112740.Spec : Prop :=
  ∀ n, (P33831495891112740.a n : ℤ) = A161890 n

end A161890

/-!
# A161891: Primes p with the property that every non-solvable transitive permutation group of degree p is alternating or symmetric.

The programs for A161891, there is no canonical definition to state claims against.
-/

/-! ## A161891.P14770544198309099192

`A066047(comp[A008324(n)]+1)`
-/

namespace A161891.P14770544198309099192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008324 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066047 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A161891.P14770544198309099192

/-! ## A161891.P17740758240406169194

`A000040(comp[A045816(n+1)]+3)`
-/

namespace A161891.P17740758240406169194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045816 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3)

end

end A161891.P17740758240406169194

/-! ## A161891.P5719189583972033669

`p?[A188642(n)+A082226(n+1)]`
-/

namespace A161891.P5719189583972033669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n + A082226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161891.P5719189583972033669

/-! ## A161891.P2578356891345585142

`A000040(record[ceil(A107777(n+1)/2)])`
-/

namespace A161891.P2578356891345585142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A107777 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A161891.P2578356891345585142

/-! ## A161891.P695655614118336129

`record[A000040(A065033(A107776(n+1)))]`
-/

namespace A161891.P695655614118336129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065033 (A107776 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161891.P695655614118336129

/-!
# A161892: Numerators of S(n) = Sum_{j=2..n} (pi((j+1)^2) - pi(j^2))/(pi((j+1)^2)*pi(j^2)) where pi(k) = A000720(k).

The programs for A161892, there is no canonical definition to state claims against.
-/

/-! ## A161892.P7642239335276487888

`A116921(A161893(n+2))`
-/

namespace A161892.P7642239335276487888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A161893 (n + 2)).toNat

end

end A161892.P7642239335276487888

/-! ## A161892.P18066475596568920888

`A060819(∑[A014085(n+2)])`
-/

namespace A161892.P18066475596568920888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161892.P18066475596568920888

/-!
# A161893: Denominators of S(n) = Sum_{j=2..n} (pi((j+1)^2) - pi(j^2))/(pi((j+1)^2)*pi(j^2)) where pi(k) = A000720(k).

The programs for A161893, there is no canonical definition to state claims against.
-/

/-! ## A161893.P417271356672037705

`A145979(∑[A014085(n+2)])`
-/

namespace A161893.P417271356672037705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161893.P417271356672037705

/-! ## A161893.P10873070912341693687

`A146307(3*A038107(n+3))`
-/

namespace A161893.P10873070912341693687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (3 * A038107 (n + 3)).toNat

end

end A161893.P10873070912341693687

/-!
# A161894: Small factors of some highly composite numbers.

The programs for A161894, there is no canonical definition to state claims against.
-/

/-! ## A161894.P7230405887918475970

`A301413(A072846(n+1))`
-/

namespace A161894.P7230405887918475970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (A072846 (n + 1)).toNat

end

end A161894.P7230405887918475970

/-! ## A161894.P9875040844656377061

`A086332(n+1)/A002110(n+1)`
-/

namespace A161894.P9875040844656377061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086332 (n + 1) : ℚ) / (A002110 (n + 1) : ℚ)

end

end A161894.P9875040844656377061

/-! ## A161894.P15226959261818374034

`A086332(n+1)/∏[A000040(n+1)]`
-/

namespace A161894.P15226959261818374034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086332 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A161894.P15226959261818374034

/-! ## A161894.P6954045362911911020

`A086332(n+1)/∏[A095320(n+1)]`
-/

namespace A161894.P6954045362911911020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095320 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086332 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A161894.P6954045362911911020

/-! ## A161894.P18409726950938199442

`A002182(A072846(n+1))/A002110(n+1)`
-/

namespace A161894.P18409726950938199442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (A072846 (n + 1)).toNat : ℚ) / (A002110 (n + 1) : ℚ)

end

end A161894.P18409726950938199442

/-!
# A161895: Write down binary n as a string of 0's and 1's. Consider the runs of 1's (bounded by 0's or by the edge of the string) alternating with the runs of 0's (bounded by 1's or by the edge of the string) in the string. Then, a(n) = the number of positive binary integers that contain the same lengths of runs of 1's as of the runs of 1's in binary n, and contain the same lengths of runs of 0's as of the runs of 0's in binary n.

The programs for A161895, there is no canonical definition to state claims against.
-/

/-! ## A161895.P11378335479257118504

`A175096(n+1)/(n%2+1)`
-/

namespace A161895.P11378335479257118504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175096 (n + 1) : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A161895.P11378335479257118504

/-! ## A161895.P3182121605775488461

`A175096(n+1)/A000034(n)`
-/

namespace A161895.P3182121605775488461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175096 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A161895.P3182121605775488461

/-! ## A161895.P12656815774111350433

`A175096(n+1)/sqrt(A010685(n))`
-/

namespace A161895.P12656815774111350433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A175096 (n + 1) : ℝ) / Real.sqrt (A010685 n : ℝ)

end

end A161895.P12656815774111350433

/-! ## A161895.P16849968210200145403

`A175096(n+1)/Δ[A032766(n)]`
-/

namespace A161895.P16849968210200145403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175096 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A161895.P16849968210200145403

/-! ## A161895.P12801260593454140837

`A175096(n+1)/ratio[A016116(n)]`
-/

namespace A161895.P12801260593454140837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175096 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A161895.P12801260593454140837

/-! ## A161895.P11476030471667641420

`A175096(n+1)/A040001(n+1)`
-/

namespace A161895.P11476030471667641420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175096 (n + 1) : ℚ) / (A040001 (n + 1) : ℚ)

end

end A161895.P11476030471667641420

/-! ## A161895.P7797550063740212487

`A175096(n+1)/Δ[A001651(n+1)]`
-/

namespace A161895.P7797550063740212487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175096 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A161895.P7797550063740212487

/-! ## A161895.P17119673864502172941

`A175096(n+1)/(A215036(n+3)+1)`
-/

namespace A161895.P17119673864502172941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175096 (n + 1) : ℚ) / (A215036 (n + 3) + 1 : ℚ)

end

end A161895.P17119673864502172941

/-! ## A161895.P10974962898417879357

`A175096(n+1)/A057237(A008486(n))`
-/

namespace A161895.P10974962898417879357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175096 (n + 1) : ℚ) / (A057237 (A008486 n).toNat : ℚ)

end

end A161895.P10974962898417879357

/-! ## A161895.P970063884103751858

`A175096(n+1)/A006530(A006519(n+1))`
-/

namespace A161895.P970063884103751858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175096 (n + 1) : ℚ) / (A006530 (A006519 (n + 1)).toNat : ℚ)

end

end A161895.P970063884103751858

/-! ## A161895.P5668478303022139280

`A175096(n+1)/A006519(n²+1)`
-/

namespace A161895.P5668478303022139280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175096 (n + 1) : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A161895.P5668478303022139280

/-!
# A161896: Integers m such that (9^m - 3 * 3^m - 4*m) / (2*m * (2*m + 1)) is an integer.

The programs for A161896, the canonical program `A161896.P6775021465739901244` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161896 has offset 1).

The definition of A161896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161896.P459703031882925131

`floor(A161897(n+1)/2)`
-/

namespace A161896.P459703031882925131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161897 (n + 1) : ℚ) / 2⌋

end

end A161896.P459703031882925131

namespace A161896

/-- `floor(A161897(n+1)/2)` -/
def P459703031882925131.Spec : Prop :=
  ∀ n, P459703031882925131.a n = A161896 (n + 1)

end A161896

/-! ## A161896.P15416317505777032503

`∩[A177966(n+1), A271116(n+1)]`
-/

namespace A161896.P15416317505777032503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161896.P15416317505777032503

namespace A161896

/-- `∩[A177966(n+1), A271116(n+1)]` -/
def P15416317505777032503.Spec : Prop :=
  ∀ n, (P15416317505777032503.a n : ℤ) = A161896 (n + 1)

end A161896

/-! ## A161896.P6775021465739901244

`∩[A034784(n+1), A271116(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161896

/-- `∩[A034784(n+1), A271116(n+1)]` -/
def P6775021465739901244.Spec : Prop :=
  ∀ n, (P6775021465739901244.a n : ℤ) = A161896 (n + 1)

theorem P6775021465739901244.correct : P6775021465739901244.Spec := by
  intro n
  simp only [A161896, Nat.add_sub_cancel]

end A161896

/-! ## A161896.P10277249665303613297

`A000265(A161897(n+1)-1)`
-/

namespace A161896.P10277249665303613297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A161897 (n + 1) - 1).toNat

end

end A161896.P10277249665303613297

namespace A161896

/-- `A000265(A161897(n+1)-1)` -/
def P10277249665303613297.Spec : Prop :=
  ∀ n, P10277249665303613297.a n = A161896 (n + 1)

end A161896

/-! ## A161896.P17856377882561816633

`A014682(A161897(n+1)-1)`
-/

namespace A161896.P17856377882561816633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A161897 (n + 1) - 1).toNat

end

end A161896.P17856377882561816633

namespace A161896

/-- `A014682(A161897(n+1)-1)` -/
def P17856377882561816633.Spec : Prop :=
  ∀ n, P17856377882561816633.a n = A161896 (n + 1)

end A161896

/-! ## A161896.P8456881012973208257

`A000265(xor(1, A161897(n+1)))`
-/

namespace A161896.P8456881012973208257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor 1 (A161897 (n + 1))).toNat

end

end A161896.P8456881012973208257

namespace A161896

/-- `A000265(xor(1, A161897(n+1)))` -/
def P8456881012973208257.Spec : Prop :=
  ∀ n, P8456881012973208257.a n = A161896 (n + 1)

end A161896

/-! ## A161896.P2520311349630396003

`A000265(A000010(A161897(n+1)))`
-/

namespace A161896.P2520311349630396003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000010 (A161897 (n + 1)).toNat).toNat

end

end A161896.P2520311349630396003

namespace A161896

/-- `A000265(A000010(A161897(n+1)))` -/
def P2520311349630396003.Spec : Prop :=
  ∀ n, P2520311349630396003.a n = A161896 (n + 1)

end A161896

/-! ## A161896.P2316006310428839628

`A002616(A161897(n+1))`
-/

namespace A161896.P2316006310428839628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A161897 (n + 1)).toNat

end

end A161896.P2316006310428839628

namespace A161896

/-- `A002616(A161897(n+1))` -/
def P2316006310428839628.Spec : Prop :=
  ∀ n, P2316006310428839628.a n = A161896 (n + 1)

end A161896

/-!
# A161897: Prime numbers p for which k = (3^p - 3 * 3^((p + 1) / 2) - 6p + 6) / (3p^2 - 3p) is an integer.

The programs for A161897, the canonical program `A161897.P16359747201491512776` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161897 has offset 1).

The definition of A161897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161897.P16359747201491512776

`2*A161896(n+1)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161897

/-- `2*A161896(n+1)+1` -/
def P16359747201491512776.Spec : Prop :=
  ∀ n, P16359747201491512776.a n = A161897 (n + 1)

theorem P16359747201491512776.correct : P16359747201491512776.Spec := by
  intro n
  simp only [A161897, Nat.add_sub_cancel]

end A161897

/-! ## A161897.P7261600306238033033

`A161896(n+1)+A161896(n+1)+A057813(n)%2`
-/

namespace A161897.P7261600306238033033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161896 (n + 1) + (A161896 (n + 1) + Int.tmod (A057813 n) 2)

end

end A161897.P7261600306238033033

namespace A161897

/-- `A161896(n+1)+A161896(n+1)+A057813(n)%2` -/
def P7261600306238033033.Spec : Prop :=
  ∀ n, P7261600306238033033.a n = A161897 (n + 1)

end A161897

/-! ## A161897.P3999341189817150567

`A006530(lcm(2, A161896(n+1))+1)`
-/

namespace A161897.P3999341189817150567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A161896 (n + 1)) + 1)

end

end A161897.P3999341189817150567

namespace A161897

/-- `A006530(lcm(2, A161896(n+1))+1)` -/
def P3999341189817150567.Spec : Prop :=
  ∀ n, P3999341189817150567.a n = A161897 (n + 1)

end A161897

/-! ## A161897.P7093693805470327299

`A000265(A161896(n+1)+A161896(n+1)+1)`
-/

namespace A161897.P7093693805470327299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A161896 (n + 1) + (A161896 (n + 1) + 1)).toNat

end

end A161897.P7093693805470327299

namespace A161897

/-- `A000265(A161896(n+1)+A161896(n+1)+1)` -/
def P7093693805470327299.Spec : Prop :=
  ∀ n, P7093693805470327299.a n = A161897 (n + 1)

end A161897

/-! ## A161897.P12603347728035388813

`A006530(A161896(n+1)+A161896(n+1)+1)`
-/

namespace A161897.P12603347728035388813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A161896 (n + 1) + (A161896 (n + 1) + 1)).toNat

end

end A161897.P12603347728035388813

namespace A161897

/-- `A006530(A161896(n+1)+A161896(n+1)+1)` -/
def P12603347728035388813.Spec : Prop :=
  ∀ n, P12603347728035388813.a n = A161897 (n + 1)

end A161897

/-! ## A161897.P17622884718809752401

`A014601(A161896(n+1))`
-/

namespace A161897.P17622884718809752401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A161896 (n + 1)).toNat

end

end A161897.P17622884718809752401

namespace A161897

/-- `A014601(A161896(n+1))` -/
def P17622884718809752401.Spec : Prop :=
  ∀ n, P17622884718809752401.a n = A161897 (n + 1)

end A161897

/-! ## A161897.P17277063368267084652

`A004273(A161896(n+1)+1)`
-/

namespace A161897.P17277063368267084652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A161896 (n + 1) + 1).toNat

end

end A161897.P17277063368267084652

namespace A161897

/-- `A004273(A161896(n+1)+1)` -/
def P17277063368267084652.Spec : Prop :=
  ∀ n, P17277063368267084652.a n = A161897 (n + 1)

end A161897

/-! ## A161897.P42934554897233561

`A014963(A161896(n+1)+A161896(n+1)+1)`
-/

namespace A161897.P42934554897233561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A161896 (n + 1) + (A161896 (n + 1) + 1)).toNat

end

end A161897.P42934554897233561

namespace A161897

/-- `A014963(A161896(n+1)+A161896(n+1)+1)` -/
def P42934554897233561.Spec : Prop :=
  ∀ n, P42934554897233561.a n = A161897 (n + 1)

end A161897

/-!
# A161898: Row sums of triangle A064580

The programs for A161898, there is no canonical definition to state claims against.
-/

/-! ## A161898.P4409266254675882632

`A159770(A329254(n+1))`
-/

namespace A161898.P4409266254675882632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159770 (A329254 (n + 1)).toNat

end

end A161898.P4409266254675882632

/-! ## A161898.P6051763213649121105

`A159770(A002998(n+2))`
-/

namespace A161898.P6051763213649121105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159770 (A002998 (n + 2)).toNat

end

end A161898.P6051763213649121105

/-! ## A161898.P3658391452066331016

`A159770(A032555(n+2))`
-/

namespace A161898.P3658391452066331016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159770 (A032555 (n + 2)).toNat

end

end A161898.P3658391452066331016

/-! ## A161898.P9374633415934870150

`A159770(A032557(n+2))`
-/

namespace A161898.P9374633415934870150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159770 (A032557 (n + 2)).toNat

end

end A161898.P9374633415934870150

/-!
# A161899: Number of reduced words of length n in the Weyl group B_21.

The programs for A161899, there is no canonical definition to state claims against.
-/

/-! ## A161899.P2913993166655080065

`∑[A161880(n)-A161875(A161868(n+1))]`
-/

namespace A161899.P2913993166655080065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161880 n - A161875 (A161868 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161899.P2913993166655080065

