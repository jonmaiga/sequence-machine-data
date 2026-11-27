import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C048
import Seq.B001.C000
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A398168.P6395778934504465479

`filter[A005117(n+2)-1, A212793(#)]`
-/

namespace A398168.P6395778934504465479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A398168.P6395778934504465479

noncomputable section

/-- A398168: Cubefree numbers k such that k+1 is squarefree.

Offset 1, canonical program `A398168.P6395778934504465479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398168 (n : ℕ) : ℤ :=
  A398168.P6395778934504465479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398169.P4358562404125714648

`record[A007947(A367695(1+n))]`
-/

namespace A398169.P4358562404125714648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A367695 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398169.P4358562404125714648

noncomputable section

/-- A398169: Squarefree numbers k such that k+1 is an exponentially odd number.

Offset 1, canonical program `A398169.P4358562404125714648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8348 terms. -/
def A398169 (n : ℕ) : ℤ :=
  A398169.P4358562404125714648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8348 terms. -/
def A398169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398526.P17968995175064697241

`∑{#}[n, A212793(floor((n+1)/(#+1)))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398526.P17968995175064697241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A212793 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A398526.P17968995175064697241

noncomputable section

/-- A398526: a(n) = Sum_{k=1..n} A212793(floor(n/k)).

Offset 1, canonical program `A398526.P17968995175064697241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212793, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398526 (n : ℕ) : ℤ :=
  A398526.P17968995175064697241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212793, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398754.P13494769797031985891

`filter[A375396(n+1), A212793(#)]`
-/

namespace A398754.P13494769797031985891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A398754.P13494769797031985891

noncomputable section

/-- A398754: Union of squarefree numbers k (in A005117) and products m = lpf(k)*k (in A397710), where lpf(k) is the smallest prime factor of k.

Offset 1, canonical program `A398754.P13494769797031985891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8615 terms. -/
def A398754 (n : ℕ) : ℤ :=
  A398754.P13494769797031985891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8615 terms. -/
def A398754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398821.P1436620168790745760

`∩[A398820(n+1)-1, A398820(n+1)]`
-/

namespace A398821.P1436620168790745760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398820 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398821.P1436620168790745760

noncomputable section

/-- A398821: Numbers k such that the powerful parts (A057521) of both k and k+1 are squares that are larger than 1.

Offset 1, canonical program `A398821.P1436620168790745760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. -/
def A398821 (n : ℕ) : ℤ :=
  (A398821.P1436620168790745760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. -/
def A398821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401084.P11150832154018647509

`∑{d}[A019554(1+n), A380322(#)]`
-/

namespace A401084.P11150832154018647509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A380322 d

end

end A401084.P11150832154018647509

noncomputable section

/-- A401084: The total sum of exponentially odd divisors of the exponentially odd divisors of n.

Offset 1, canonical program `A401084.P11150832154018647509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401084 (n : ℕ) : ℤ :=
  A401084.P11150832154018647509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401715.P1986271179111597576

`Δ[fp[A389215(n+1)]]`
-/

namespace A401715.P1986271179111597576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389215 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A401715.P1986271179111597576

noncomputable section

/-- A401715: a(n) = 1 if {sum of unitary divisors of n} plus {sum of squarefree divisors of n} >= 2*n, otherwise 0.

Offset 1, canonical program `A401715.P1986271179111597576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401715 (n : ℕ) : ℤ :=
  A401715.P1986271179111597576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A402243.P7368100219335166266

`∑{d}[n+1, #*A353519(#)]`
-/

namespace A402243.P7368100219335166266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A353519 d

end

end A402243.P7368100219335166266

noncomputable section

/-- A402243: Sum of divisors of n that are terms in A252895.

Offset 1, canonical program `A402243.P7368100219335166266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A402243 (n : ℕ) : ℤ :=
  A402243.P7368100219335166266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A402243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399093.P13952728189661185523

`A051903(A367695(n+1))`
-/

namespace A399093.P13952728189661185523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A367695 (n + 1)).toNat

end

end A399093.P13952728189661185523

noncomputable section

/-- A399093: The maximum exponent in the prime factorization of the exponentially odd numbers k such that k+1 is also exponentially odd.

Offset 1, canonical program `A399093.P13952728189661185523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A367695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399093 (n : ℕ) : ℤ :=
  A399093.P13952728189661185523.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A367695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400433.P121471542447752140

`filter[A190641(n+1), A319710(#)]`
-/

namespace A400433.P121471542447752140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A400433.P121471542447752140

noncomputable section

/-- A400433: Numbers k of the form rad(k) * lpf(k)^m, m > 1, where rad = A007947 and lpf(k) is the least prime factor of k.

Offset 1, canonical program `A400433.P121471542447752140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8255 terms. -/
def A400433 (n : ℕ) : ℤ :=
  A400433.P121471542447752140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8255 terms. -/
def A400433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A402246.P18208456299775347097

`A051903(A375934(n+1))`
-/

namespace A402246.P18208456299775347097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A375934 (n + 1)).toNat

end

end A402246.P18208456299775347097

noncomputable section

/-- A402246: Maximum exponent in the prime factorization of the numbers whose prime factorization has a second-largest exponent that equals 1.

Offset 1, canonical program `A402246.P18208456299775347097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A402246 (n : ℕ) : ℤ :=
  A402246.P18208456299775347097.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A402246.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A402451.P15090510164143558014

`∪[A003657(n+1), A003658(n+1)]`
-/

namespace A402451.P15090510164143558014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A402451.P15090510164143558014

noncomputable section

/-- A402451: Absolute values of fundamental discriminant of quadratic fields. Also conductors of real Dirichlet primitive characters.

Offset 1, canonical program `A402451.P15090510164143558014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A402451 (n : ℕ) : ℤ :=
  (A402451.P15090510164143558014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A402451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399139.P8237178519949403340

`∑[floor(A000005(n+1)/(A246277(n+1)+1))]`
-/

namespace A399139.P8237178519949403340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n + 1) : ℚ) / (A246277 (n + 1) + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399139.P8237178519949403340

noncomputable section

/-- A399139: Maximum size of a subset of {1,...,n} in which no prime divides more than 3 elements.

Offset 1, canonical program `A399139.P8237178519949403340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2098 terms. -/
def A399139 (n : ℕ) : ℤ :=
  A399139.P8237178519949403340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2098 terms. -/
def A399139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A402651.P10268435161352999712

`A289383(A046072(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A402651.P10268435161352999712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289383 (A046072 (n + 1)).toNat

end

end A402651.P10268435161352999712

noncomputable section

/-- A402651: a(n) = A289383(A046072(n)); for n >= 3, number of prime races modulo n.

Offset 1, canonical program `A402651.P10268435161352999712`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046072, A289383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A402651 (n : ℕ) : ℤ :=
  A402651.P10268435161352999712.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046072, A289383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A402651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397962.P1462171921949038625

`comp[A397805(n+1)-1]+1`
-/

namespace A397962.P1462171921949038625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397805 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A397962.P1462171921949038625

noncomputable section

/-- A397962: Complement of A397805: numbers that have fewer than 3 divisors that are smaller than the square of their least prime factor.

Offset 1, canonical program `A397962.P1462171921949038625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397962 (n : ℕ) : ℤ :=
  (A397962.P1462171921949038625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399734.P6634302789312156605

`(n+1)*A034448(n+1)/A399732(n+1)`
-/

namespace A399734.P6634302789312156605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A034448 (n + 1) : ℚ) / (A399732 (n + 1) : ℚ)

end

end A399734.P6634302789312156605

noncomputable section

/-- A399734: The sum of the unitary divisors d of n such that n/d is a cubefull number (A036966).

Offset 1, canonical program `A399734.P6634302789312156605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A399732, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399734 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399734.P6634302789312156605.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A399732, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398823.P17524817232743273424

`∩[A398822(n+1)-1, A398822(n+1)]`
-/

namespace A398823.P17524817232743273424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398822 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398823.P17524817232743273424

noncomputable section

/-- A398823: Numbers k such that the powerful parts (A057521) of both k and k+1 are cubes that are larger than 1.

Offset 1, canonical program `A398823.P17524817232743273424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A398823 (n : ℕ) : ℤ :=
  (A398823.P17524817232743273424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A398823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401422.P2863499948558819369

`A353898(A365296(n+1))`
-/

namespace A401422.P2863499948558819369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353898 (A365296 (n + 1)).toNat

end

end A401422.P2863499948558819369

noncomputable section

/-- A401422: The number of terms in A138302 that divide the smallest coreful infinitary divisor of n.

Offset 1, canonical program `A401422.P2863499948558819369`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353898, A365296, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A401422 (n : ℕ) : ℤ :=
  A401422.P2863499948558819369.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353898, A365296, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A401422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401423.P862875318019210488

`A005361(A365296(n+1))`
-/

namespace A401423.P862875318019210488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A365296 (n + 1)).toNat

end

end A401423.P862875318019210488

noncomputable section

/-- A401423: The number of coreful divisors of the smallest coreful infinitary divisor of n.

Offset 1, canonical program `A401423.P862875318019210488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A365296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401423 (n : ℕ) : ℤ :=
  A401423.P862875318019210488.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A365296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401423.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401424.P13827627055239304936

`A057723(A365296(n+1))`
-/

namespace A401424.P13827627055239304936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (A365296 (n + 1)).toNat

end

end A401424.P13827627055239304936

noncomputable section

/-- A401424: The sum of coreful divisors of the smallest coreful infinitary divisor of n.

Offset 1, canonical program `A401424.P13827627055239304936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A365296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401424 (n : ℕ) : ℤ :=
  A401424.P13827627055239304936.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A365296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401424.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398488.P6063951227161082576

`A000720(A046315(n+2))-A000720(A046315(n+1))`
-/

namespace A398488.P6063951227161082576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A046315 (n + 2)).toNat - A000720 (A046315 (n + 1)).toNat

end

end A398488.P6063951227161082576

noncomputable section

/-- A398488: Number of primes between the n-th odd semiprime and the following odd semiprime.

Offset 1, canonical program `A398488.P6063951227161082576`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046315, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398488 (n : ℕ) : ℤ :=
  A398488.P6063951227161082576.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046315, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398488.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400572.P6899762946665674541

`∩[A014613(n+1)+1, A000040(n+1)]`
-/

namespace A400572.P6899762946665674541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400572.P6899762946665674541

noncomputable section

/-- A400572: Primes of the form the product of two semiprimes plus 1.

Offset 1, canonical program `A400572.P6899762946665674541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1420 terms. -/
def A400572 (n : ℕ) : ℤ :=
  (A400572.P6899762946665674541.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1420 terms. -/
def A400572.provenance : SequenceMachineLib.Provenance := .conjectured

