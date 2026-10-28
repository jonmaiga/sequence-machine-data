import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
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
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A231800: Number of (n+1)X(2+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to one.

The programs for A231800, there is no canonical definition to state claims against.
-/

/-! ## A231800.P8269128187921130985

`A231806(∑[n+1]+2)`
-/

namespace A231800.P8269128187921130985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231800.P8269128187921130985

/-! ## A231800.P6080774453069849778

`record[A010054(n)*A231806(n+2)]`
-/

namespace A231800.P6080774453069849778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A231806 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231800.P6080774453069849778

/-! ## A231800.P726267797265730990

`record[gcd(A002262(n), A231806(n+2))]`
-/

namespace A231800.P726267797265730990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A231806 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231800.P726267797265730990

/-! ## A231800.P15321161401903749647

`record[root(A231806(n+2), A002260(n+1))]`
-/

namespace A231800.P15321161401903749647
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231806 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231800.P15321161401903749647

/-! ## A231800.P1755521580530007739

`record[A231806(abs(A201163(n)))]`
-/

namespace A231800.P1755521580530007739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231800.P1755521580530007739

/-!
# A231801: Number of (n+1)X(3+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to one.

The programs for A231801, there is no canonical definition to state claims against.
-/

/-! ## A231801.P1443113403306621539

`A231806(∑[n+2]+4)`
-/

namespace A231801.P1443113403306621539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231801.P1443113403306621539

/-! ## A231801.P11795194506563593816

`A231806(A167614(n+1))+A185284(n)`
-/

namespace A231801.P11795194506563593816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A167614 (n + 1)).toNat + A185284 n

end

end A231801.P11795194506563593816

/-! ## A231801.P4475078505106990978

`lcm(A020985(n), A231806(A167614(n+1)))`
-/

namespace A231801.P4475078505106990978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A231806 (A167614 (n + 1)).toNat)

end

end A231801.P4475078505106990978

/-! ## A231801.P13808462684535805677

`A231806(A167614(n+1))+A034563(n+1)`
-/

namespace A231801.P13808462684535805677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A167614 (n + 1)).toNat + A034563 (n + 1)

end

end A231801.P13808462684535805677

/-!
# A231802: Number of (n+1)X(4+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to one.

The programs for A231802, there is no canonical definition to state claims against.
-/

/-! ## A231802.P7548206673257902529

`A231806(A374004(n+1))`
-/

namespace A231802.P7548206673257902529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A374004 (n + 1)).toNat

end

end A231802.P7548206673257902529

/-! ## A231802.P1763905003329199242

`A231806(A141214(n)+7)`
-/

namespace A231802.P1763905003329199242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A141214 n + 7).toNat

end

end A231802.P1763905003329199242

/-! ## A231802.P13007255610272730852

`A231806(A052905(n)+9)`
-/

namespace A231802.P13007255610272730852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A052905 n + 9).toNat

end

end A231802.P13007255610272730852

/-! ## A231802.P5158837648523826373

`A231806(A055999(n)+10)`
-/

namespace A231802.P5158837648523826373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A055999 n + 10).toNat

end

end A231802.P5158837648523826373

/-! ## A231802.P11335231717027217465

`A231806(A167614(n+2)+1)`
-/

namespace A231802.P11335231717027217465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A167614 (n + 2) + 1).toNat

end

end A231802.P11335231717027217465

/-!
# A231803: Number of (n+1)X(5+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to one.

The programs for A231803, there is no canonical definition to state claims against.
-/

/-! ## A231803.P4927843620115606803

`A231806(A374005(n+1))`
-/

namespace A231803.P4927843620115606803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A374005 (n + 1)).toNat

end

end A231803.P4927843620115606803

/-! ## A231803.P15121500397011830833

`A231806(A056000(n)+15)`
-/

namespace A231803.P15121500397011830833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A056000 n + 15).toNat

end

end A231803.P15121500397011830833

/-! ## A231803.P2175515331067595962

`A231806(A034856(n+3)+7)`
-/

namespace A231803.P2175515331067595962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A034856 (n + 3) + 7).toNat

end

end A231803.P2175515331067595962

/-! ## A231803.P12361617426123269953

`A231806(eq[6, A131818(n+1)])`
-/

namespace A231803.P12361617426123269953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231803.P12361617426123269953

/-! ## A231803.P7816312821736136281

`A231806(A052905(n+3)-Δ[n²])`
-/

namespace A231803.P7816312821736136281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A052905 (n + 3) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A231803.P7816312821736136281

/-!
# A231804: Number of (n+1)X(6+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to one.

The programs for A231804, there is no canonical definition to state claims against.
-/

/-! ## A231804.P11916565289710144451

`A231806(A374007(n+1))`
-/

namespace A231804.P11916565289710144451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A374007 (n + 1)).toNat

end

end A231804.P11916565289710144451

/-! ## A231804.P15876540714738233270

`A231806(A000217(n+5)+6)`
-/

namespace A231804.P15876540714738233270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A000217 (n + 5) + 6).toNat

end

end A231804.P15876540714738233270

/-! ## A231804.P12447494389791776463

`A231806(eq[7, A131818(n+1)])`
-/

namespace A231804.P12447494389791776463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231804.P12447494389791776463

/-! ## A231804.P12662263599180453935

`A231806(A056121(n)+21-2*n)`
-/

namespace A231804.P12662263599180453935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A056121 n + 21 - (2 * n : ℤ)).toNat

end

end A231804.P12662263599180453935

/-! ## A231804.P3538856389327741339

`A231806(A052905(n+3))`
-/

namespace A231804.P3538856389327741339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A052905 (n + 3)).toNat

end

end A231804.P3538856389327741339

/-!
# A231805: Number of (n+1) X (7+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to one.

The programs for A231805, there is no canonical definition to state claims against.
-/

/-! ## A231805.P18185305247355817499

`A231806(A374008(n+1))`
-/

namespace A231805.P18185305247355817499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A374008 (n + 1)).toNat

end

end A231805.P18185305247355817499

/-! ## A231805.P149626781990335576

`A231806(A167487(n+5))`
-/

namespace A231805.P149626781990335576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A167487 (n + 5)).toNat

end

end A231805.P149626781990335576

/-! ## A231805.P12843697610151769190

`A231806(A000217(n+6)+7)`
-/

namespace A231805.P12843697610151769190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (A000217 (n + 6) + 7).toNat

end

end A231805.P12843697610151769190

/-! ## A231805.P18087272789673890457

`A231806(eq[8, A131818(n+1)])`
-/

namespace A231805.P18087272789673890457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231805.P18087272789673890457

/-! ## A231805.P3370715847260534392

`A231806(eq[4, A219347(n)])`
-/

namespace A231805.P3370715847260534392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231805.P3370715847260534392

/-!
# A231807: Number of endofunctions on [n] with distinct cardinalities of the nonempty preimages.

The programs for A231807, there is no canonical definition to state claims against.
-/

/-! ## A231807.P16905837287464926734

`A231915(A133263(n)-1)`
-/

namespace A231807.P16905837287464926734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231915 (A133263 n - 1).toNat

end

end A231807.P16905837287464926734

/-! ## A231807.P15035910843500929931

`A231915(∑[A004526(A223134(n))])`
-/

namespace A231807.P15035910843500929931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A223134 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231915 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A231807.P15035910843500929931

/-! ## A231807.P7535372953437870730

`A231915(A178334(n)+A000217(n))`
-/

namespace A231807.P7535372953437870730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231915 (A178334 n + A000217 n).toNat

end

end A231807.P7535372953437870730

/-! ## A231807.P10229257668631631454

`A231915(A000217(n)-A057428(n))`
-/

namespace A231807.P10229257668631631454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231915 (A000217 n - A057428 n).toNat

end

end A231807.P10229257668631631454

/-! ## A231807.P7397485250124875044

`A231915(A000124(n)%A016755(n))`
-/

namespace A231807.P7397485250124875044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231915 (Int.tmod (A000124 n) (A016755 n)).toNat

end

end A231807.P7397485250124875044

/-! ## A231807.P17423470638822041296

`A231915(A000217(n)+A057428(n)²)`
-/

namespace A231807.P17423470638822041296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231915 (A000217 n + A057428 n ^ 2).toNat

end

end A231807.P17423470638822041296

/-! ## A231807.P883577408074315618

`A231915(A000217(n)+A057428(n)+2)`
-/

namespace A231807.P883577408074315618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231915 (A000217 n + (A057428 n + 2)).toNat

end

end A231807.P883577408074315618

/-! ## A231807.P9722223318741208730

`A231915(2-(A178334(n)-A000217(n)))`
-/

namespace A231807.P9722223318741208730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231915 (2 - (A178334 n - A000217 n)).toNat

end

end A231807.P9722223318741208730

/-!
# A231809: Denominator of asymptotic density of Union{H_p: p is odd prime and p <= n-th prime}, where H_p is {K*p*(p-1)/2 : K integer}.

The programs for A231809, there is no canonical definition to state claims against.
-/

/-! ## A231809.P3030889786486720052

`A144521(a(n-2))` with `a(0)=1, a(1)=3, a(2)=5, a(3)=5`
-/

namespace A231809.P3030889786486720052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 5] fun n a =>
  A144521 (a (n - 2)).toNat

end

end A231809.P3030889786486720052

/-! ## A231809.P3111250526509271228

`A156222(a(n-2)+6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=5`
-/

namespace A231809.P3111250526509271228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 5] fun n a =>
  A156222 (a (n - 2) + 6).toNat

end

end A231809.P3111250526509271228

/-!
# A231810: Numbers k such that p-1 does not divide k+1 for every prime divisor p of k.

The programs for A231810, the canonical program `A231810.P5537344332030854373` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231810 has offset 1).

The definition of A231810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231810.P3511402312414669746

`eq[1, gcd(n, A027760(n+1))]`
-/

namespace A231810.P3511402312414669746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A027760 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231810.P3511402312414669746

namespace A231810

/-- `eq[1, gcd(n, A027760(n+1))]` -/
def P3511402312414669746.Spec : Prop :=
  ∀ n, (P3511402312414669746.a n : ℤ) = A231810 (n + 1)

end A231810

/-! ## A231810.P5537344332030854373

`eq[2, gcd(2*n, A165886(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A231810

/-- `eq[2, gcd(2*n, A165886(n))]` -/
def P5537344332030854373.Spec : Prop :=
  ∀ n, (P5537344332030854373.a n : ℤ) = A231810 (n + 1)

theorem P5537344332030854373.correct : P5537344332030854373.Spec := by
  intro n
  simp only [A231810, Nat.add_sub_cancel]

end A231810

/-! ## A231810.P4035586172911705156

`eq[1, gcd(n², A079612(n+1))]`
-/

namespace A231810.P4035586172911705156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A079612 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231810.P4035586172911705156

namespace A231810

/-- `eq[1, gcd(n², A079612(n+1))]` -/
def P4035586172911705156.Spec : Prop :=
  ∀ n, (P4035586172911705156.a n : ℤ) = A231810 (n + 1)

end A231810

/-! ## A231810.P16680890073619388114

`∩[2*n+1, A228919(n+1)]`
-/

namespace A231810.P16680890073619388114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231810.P16680890073619388114

namespace A231810

/-- `∩[2*n+1, A228919(n+1)]` -/
def P16680890073619388114.Spec : Prop :=
  ∀ n, (P16680890073619388114.a n : ℤ) = A231810 (n + 1)

end A231810

/-! ## A231810.P8838178971333051902

`eq[1, gcd(n%(n+1), A106458(n+1))]`
-/

namespace A231810.P8838178971333051902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % (n + 1) : ℕ) : ℤ) (A106458 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231810.P8838178971333051902

namespace A231810

/-- `eq[1, gcd(n%(n+1), A106458(n+1))]` -/
def P8838178971333051902.Spec : Prop :=
  ∀ n, (P8838178971333051902.a n : ℤ) = A231810 (n + 1)

end A231810

/-! ## A231810.P12850801606672426289

`filter[A228919(n+1), A000035(#)]`
-/

namespace A231810.P12850801606672426289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A231810.P12850801606672426289

namespace A231810

/-- `filter[A228919(n+1), A000035(#)]` -/
def P12850801606672426289.Spec : Prop :=
  ∀ n, P12850801606672426289.a n = A231810 (n + 1)

end A231810

/-! ## A231810.P5317515813798541695

`filter[A228919(n+1), A039982(#)]`
-/

namespace A231810.P5317515813798541695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A231810.P5317515813798541695

namespace A231810

/-- `filter[A228919(n+1), A039982(#)]` -/
def P5317515813798541695.Spec : Prop :=
  ∀ n, P5317515813798541695.a n = A231810 (n + 1)

end A231810

/-! ## A231810.P2057658623752710998

`filter[A228919(n+1), A098725(#)]`
-/

namespace A231810.P2057658623752710998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A231810.P2057658623752710998

namespace A231810

/-- `filter[A228919(n+1), A098725(#)]` -/
def P2057658623752710998.Spec : Prop :=
  ∀ n, P2057658623752710998.a n = A231810 (n + 1)

end A231810

/-! ## A231810.P13476384917408919137

`filter[A228919(n+1), A166486(#)]`
-/

namespace A231810.P13476384917408919137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A231810.P13476384917408919137

namespace A231810

/-- `filter[A228919(n+1), A166486(#)]` -/
def P13476384917408919137.Spec : Prop :=
  ∀ n, P13476384917408919137.a n = A231810 (n + 1)

end A231810

/-! ## A231810.P12321514756454721605

`filter[A228919(n+1), A320106(#)]`
-/

namespace A231810.P12321514756454721605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A231810.P12321514756454721605

namespace A231810

/-- `filter[A228919(n+1), A320106(#)]` -/
def P12321514756454721605.Spec : Prop :=
  ∀ n, P12321514756454721605.a n = A231810 (n + 1)

end A231810

/-! ## A231810.P10432040469262118151

`filter[A228919(n+1), A354354(#)]`
-/

namespace A231810.P10432040469262118151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A231810.P10432040469262118151

namespace A231810

/-- `filter[A228919(n+1), A354354(#)]` -/
def P10432040469262118151.Spec : Prop :=
  ∀ n, P10432040469262118151.a n = A231810 (n + 1)

end A231810

/-! ## A231810.P5203941265769531180

`filter[A228919(n+1), A359374(#)]`
-/

namespace A231810.P5203941265769531180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A231810.P5203941265769531180

namespace A231810

/-- `filter[A228919(n+1), A359374(#)]` -/
def P5203941265769531180.Spec : Prop :=
  ∀ n, P5203941265769531180.a n = A231810 (n + 1)

end A231810

/-! ## A231810.P10839642764635261444

`filter[A228919(n+1), A374134(#)]`
-/

namespace A231810.P10839642764635261444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A231810.P10839642764635261444

namespace A231810

/-- `filter[A228919(n+1), A374134(#)]` -/
def P10839642764635261444.Spec : Prop :=
  ∀ n, P10839642764635261444.a n = A231810 (n + 1)

end A231810

/-! ## A231810.P7769849266678048203

`eq[4, gcd(A016742(n), A075180(n))]`
-/

namespace A231810.P7769849266678048203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016742 n) (A075180 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231810.P7769849266678048203

namespace A231810

/-- `eq[4, gcd(A016742(n), A075180(n))]` -/
def P7769849266678048203.Spec : Prop :=
  ∀ n, (P7769849266678048203.a n : ℤ) = A231810 (n + 1)

end A231810

/-! ## A231810.P7874314115506350722

`∩[A228919(n+1), A004273(n)]`
-/

namespace A231810.P7874314115506350722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231810.P7874314115506350722

namespace A231810

/-- `∩[A228919(n+1), A004273(n)]` -/
def P7874314115506350722.Spec : Prop :=
  ∀ n, (P7874314115506350722.a n : ℤ) = A231810 (n + 1)

end A231810

/-! ## A231810.P4485548615192367802

`∩[A228919(n+1), A004274(n)]`
-/

namespace A231810.P4485548615192367802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231810.P4485548615192367802

namespace A231810

/-- `∩[A228919(n+1), A004274(n)]` -/
def P4485548615192367802.Spec : Prop :=
  ∀ n, (P4485548615192367802.a n : ℤ) = A231810 (n + 1)

end A231810

/-! ## A231810.P12081098120267119415

`∩[A228919(n+1), A014528(n)]`
-/

namespace A231810.P12081098120267119415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231810.P12081098120267119415

namespace A231810

/-- `∩[A228919(n+1), A014528(n)]` -/
def P12081098120267119415.Spec : Prop :=
  ∀ n, (P12081098120267119415.a n : ℤ) = A231810 (n + 1)

end A231810

/-! ## A231810.P13618232442493430942

`∩[A228919(n+1), A060747(n)]`
-/

namespace A231810.P13618232442493430942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231810.P13618232442493430942

namespace A231810

/-- `∩[A228919(n+1), A060747(n)]` -/
def P13618232442493430942.Spec : Prop :=
  ∀ n, (P13618232442493430942.a n : ℤ) = A231810 (n + 1)

end A231810

/-! ## A231810.P14896143042621412805

`∩[A228919(n+1), A163985(n)]`
-/

namespace A231810.P14896143042621412805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231810.P14896143042621412805

namespace A231810

/-- `∩[A228919(n+1), A163985(n)]` -/
def P14896143042621412805.Spec : Prop :=
  ∀ n, (P14896143042621412805.a n : ℤ) = A231810 (n + 1)

end A231810

/-! ## A231810.P11175470701686878954

`A004523(record[A014682(A228919(n+1))])`
-/

namespace A231810.P11175470701686878954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A228919 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A231810.P11175470701686878954

namespace A231810

/-- `A004523(record[A014682(A228919(n+1))])` -/
def P11175470701686878954.Spec : Prop :=
  ∀ n, P11175470701686878954.a n = A231810 (n + 1)

end A231810

/-! ## A231810.P15139227168082013537

`eq[1, gcd(n, ∑[2^(n+1)])]`
-/

namespace A231810.P15139227168082013537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231810.P15139227168082013537

namespace A231810

/-- `eq[1, gcd(n, ∑[2^(n+1)])]` -/
def P15139227168082013537.Spec : Prop :=
  ∀ n, (P15139227168082013537.a n : ℤ) = A231810 (n + 1)

end A231810

/-!
# A231811: Numbers k such that p-1 divides k+1 for every prime divisor p of k.

The programs for A231811, there is no canonical definition to state claims against.
-/

/-! ## A231811.P8741674400619605279

`eq[A079068(n+1), A334028(2*n+1)]+1`
-/

namespace A231811.P8741674400619605279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A231811.P8741674400619605279

/-! ## A231811.P16284224335253950691

`record[A332294(record[A204925(n+1)])]`
-/

namespace A231811.P16284224335253950691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204925 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332294 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231811.P16284224335253950691

/-! ## A231811.P13626711228734404785

`∩[A128168(n+1), A321699(n+1)]`
-/

namespace A231811.P13626711228734404785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231811.P13626711228734404785

/-! ## A231811.P2539251050952015660

`∩[A250089(n+1), A321699(n+1)]`
-/

namespace A231811.P2539251050952015660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231811.P2539251050952015660

/-!
# A231812: Number of endofunctions on [n] where all nonempty preimages have the same cardinality.

The programs for A231812, there is no canonical definition to state claims against.
-/

/-! ## A231812.P3606383400774540802

`A231915(∑[n]+n)`
-/

namespace A231812.P3606383400774540802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231915 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A231812.P3606383400774540802

/-! ## A231812.P13865129989514292761

`or(char[15], A231915(A000096(n)))`
-/

namespace A231812.P13865129989514292761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A231915 (A000096 n).toNat)

end

end A231812.P13865129989514292761

/-! ## A231812.P4485608712629372517

`lcm(A106400(n), A231915(A000096(n)))`
-/

namespace A231812.P4485608712629372517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A231915 (A000096 n).toNat)

end

end A231812.P4485608712629372517

/-! ## A231812.P3749361136745549444

`A231915(A000096(n))^A014963(4*n+2)`
-/

namespace A231812.P3749361136745549444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231915 (A000096 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A231812.P3749361136745549444

/-! ## A231812.P3699425404421459786

`A231915(A000096(n))+A079979(A202511(n+1))`
-/

namespace A231812.P3699425404421459786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231915 (A000096 n).toNat + A079979 (A202511 (n + 1)).toNat

end

end A231812.P3699425404421459786

/-! ## A231812.P12873947761745823522

`A231915(A000096(n))*A287360(A287362(n+1))`
-/

namespace A231812.P12873947761745823522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231915 (A000096 n).toNat * A287360 (A287362 (n + 1)).toNat

end

end A231812.P12873947761745823522

/-!
# A231813: Number of iterations of A046665(n) = (greatest prime divisor of n) - (least prime divisor of n) [with A046665(1) = 0] required to reach zero.

The programs for A231813, the canonical program `A231813.P8716911688300951202` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231813 has offset 0).

The definition of A231813 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046665, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A231813.P8716911688300951202

`1+a(A046665(n))` with `a(0)=0`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A231813

/-- `1+a(A046665(n))` -/
def P8716911688300951202.Spec : Prop :=
  ∀ n, (P8716911688300951202.a n : ℤ) = A231813 n

theorem P8716911688300951202.correct : P8716911688300951202.Spec := by
  intro n
  simp only [A231813]

end A231813

/-! ## A231813.P14038641377362848470

`∑{e}[A256017(a(A046665(n))), #]` with `a(0)=1`
-/

namespace A231813.P14038641377362848470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A256017 (f1 (A046665 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A231813.P14038641377362848470

namespace A231813

/-- `∑{e}[A256017(a(A046665(n))), #]` -/
def P14038641377362848470.Spec : Prop :=
  ∀ n, (P14038641377362848470.a n : ℤ) = A231813 n

end A231813

/-! ## A231813.P8733178416853255848

`a(A006530(n)-A020639(n))+1` with `a(0)=0`
-/

namespace A231813.P8733178416853255848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A006530 n - A020639 n).toNat + 1

end

end A231813.P8733178416853255848

namespace A231813

/-- `a(A006530(n)-A020639(n))+1` -/
def P8733178416853255848.Spec : Prop :=
  ∀ n, (P8733178416853255848.a n : ℤ) = A231813 n

theorem P8733178416853255848.correct : P8733178416853255848.Spec := by
  intro n
  simp only [A231813, Nat.add_sub_cancel, A231813.P8733178416853255848.a, A231813.P8716911688300951202.a, A006530, A006530.P13372528560459906635.a, A020639, A020639.P7578813688609615429.a, A046665, A046665.P1080562192971006030.a, A008578, A008578.P3639467937083264764.a, A055396, A055396.P18305262754425103137.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A158611, A158611.P9275629407611603775.a, A243055, A243055.P2464886309294058059.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A117371, A117371.P12406732587805932156.a, A297155, A297155.P1611206963555320167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231813

/-! ## A231813.P6265267063843566865

`a(A085393(2*n))+1` with `a(0)=0`
-/

namespace A231813.P6265267063843566865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A085393 (2 * n)).toNat + 1

end

end A231813.P6265267063843566865

namespace A231813

/-- `a(A085393(2*n))+1` -/
def P6265267063843566865.Spec : Prop :=
  ∀ n, (P6265267063843566865.a n : ℤ) = A231813 n

end A231813

/-! ## A231813.P5603781231852194335

`A008817(a(A085393(2*n)))` with `a(0)=0`
-/

namespace A231813.P5603781231852194335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008817 (a (A085393 (2 * n)).toNat).toNat

end

end A231813.P5603781231852194335

namespace A231813

/-- `A008817(a(A085393(2*n)))` -/
def P5603781231852194335.Spec : Prop :=
  ∀ n, P5603781231852194335.a n = A231813 n

end A231813

/-!
# A231814: Squarefree numbers (from A005117) with prime divisors in a 2p-1 progression.

The programs for A231814, there is no canonical definition to state claims against.
-/

/-! ## A231814.P4938259409633558324

`∪[A129521(n+1), A231815(n+1)]`
-/

namespace A231814.P4938259409633558324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231814.P4938259409633558324

/-! ## A231814.P14693334916326151995

`record[∏{p}[A335267(n+1), #]]`
-/

namespace A231814.P14693334916326151995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335267 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231814.P14693334916326151995

/-! ## A231814.P3609509116071442523

`record[A007913(A335268(n+1))]`
-/

namespace A231814.P3609509116071442523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A335268 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231814.P3609509116071442523

/-! ## A231814.P16427524524940092647

`record[A007947(A335267(n+1))]`
-/

namespace A231814.P16427524524940092647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A335267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231814.P16427524524940092647

/-! ## A231814.P5219714159445649369

`filter[A335267(n+1), A008966(#)]`
-/

namespace A231814.P5219714159445649369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A231814.P5219714159445649369

/-!
# A231815: Squarefree numbers (A005117) of the form p*q*r with prime factors p, q, r with q = 2*p-1 and r = 2*q-1.

The programs for A231815, there is no canonical definition to state claims against.
-/

/-! ## A231815.P7826475959585868477

`A079588(A057326(n+1)-1)`
-/

namespace A231815.P7826475959585868477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 (A057326 (n + 1) - 1).toNat

end

end A231815.P7826475959585868477

/-! ## A231815.P17298142449878948624

`A002414(A109835(n+1))`
-/

namespace A231815.P17298142449878948624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (A109835 (n + 1)).toNat

end

end A231815.P17298142449878948624

/-! ## A231815.P5848525679226739644

`A002414(∩[A005382(n+1), A005383(n+1)])`
-/

namespace A231815.P5848525679226739644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A231815.P5848525679226739644

/-! ## A231815.P1411533268270386196

`A002414(∩[A005382(n+1), A164977(n+1)])`
-/

namespace A231815.P1411533268270386196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A231815.P1411533268270386196

/-! ## A231815.P9672976823380909937

`A002414(∩[A005383(n+1), A174568(n+1)])`
-/

namespace A231815.P9672976823380909937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A231815.P9672976823380909937

/-!
# A231817: Multiplicative digital root of concatenation of all divisors of n (A037278).

The programs for A231817, there is no canonical definition to state claims against.
-/

/-! ## A231817.P998449970845916358

`A031347(∏{digits}[∏{digits}[A190997(n+1), #], #])`
-/

namespace A231817.P998449970845916358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190997 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A231817.P998449970845916358

/-! ## A231817.P9188839226817772390

`A031347(∏{digits}[A190997(n+1), #])`
-/

namespace A231817.P9188839226817772390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A231817.P9188839226817772390

/-! ## A231817.P18341754880697010710

`A031347(∏{digits}[∏{d}[n+1, A007954(#)], #])`
-/

namespace A231817.P18341754880697010710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A007954 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A231817.P18341754880697010710

/-! ## A231817.P16467145517584392827

`A031347(∏{digits}[∏{digits}[A037278(n+1), #], #])`
-/

namespace A231817.P16467145517584392827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A231817.P16467145517584392827

/-! ## A231817.P4743220052473221608

`A031347(∏{digits}[∏{digits}[A176558(n+1), #], #])`
-/

namespace A231817.P4743220052473221608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176558 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A231817.P4743220052473221608

/-!
# A231819: Least positive k such that k*n^2 - 1 is a prime, or 0 if no such k exists.

The programs for A231819, there is no canonical definition to state claims against.
-/

/-! ## A231819.P10177817962694171873

`A053989((n+1)²)`
-/

namespace A231819.P10177817962694171873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 ((n + 1) ^ 2)

end

end A231819.P10177817962694171873

/-! ## A231819.P5297454800014281737

`A053989((n+1)^2)%25`
-/

namespace A231819.P5297454800014281737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053989 ((n + 1) ^ 2)) 25

end

end A231819.P5297454800014281737

/-! ## A231819.P7232748208472865765

`or(char[1], A053989(record[(1-n)²]))`
-/

namespace A231819.P7232748208472865765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A053989 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat)

end

end A231819.P7232748208472865765

/-! ## A231819.P12154490764266664028

`A000027(A053989(record[(1-n)²]))`
-/

namespace A231819.P12154490764266664028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A053989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A231819.P12154490764266664028

/-! ## A231819.P17849944224888308507

`A003964(A053989(record[(n-1)²]))`
-/

namespace A231819.P17849944224888308507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A053989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A231819.P17849944224888308507

/-! ## A231819.P6563748236595834714

`A053989(record[(1-n)²])-A264668(n)`
-/

namespace A231819.P6563748236595834714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A264668 n

end

end A231819.P6563748236595834714

/-! ## A231819.P11006175597127184725

`A053989(record[(1-n)²])/A007318(C(2, n))`
-/

namespace A231819.P11006175597127184725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A231819.P11006175597127184725

/-! ## A231819.P1749460900906225671

`A007318(C(3, n))*A053989(record[(1-n)²])`
-/

namespace A231819.P1749460900906225671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A053989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A231819.P1749460900906225671

/-!
# A231820: Least positive k such that n*k! - 1 is a prime, or 0 if no such k exists.

The programs for A231820, there is no canonical definition to state claims against.
-/

/-! ## A231820.P13577663163157155861

`A010884(A040081(n+1)^A010887(n))`
-/

namespace A231820.P13577663163157155861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010884 (SequenceMachineLib.roundAway ((A040081 (n + 1) : ℚ) ^ (A010887 n : ℤ))).toNat

end

end A231820.P13577663163157155861

/-! ## A231820.P6361476667227599668

`A040081(n+1)+A033809(A194606(A194638(n+8)))`
-/

namespace A231820.P6361476667227599668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (n + 1) + A033809 (A194606 (A194638 (n + 8)).toNat).toNat

end

end A231820.P6361476667227599668

/-! ## A231820.P15404415640234495648

`A124778(A185877(n+1))+A040081(n+1)`
-/

namespace A231820.P15404415640234495648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A185877 (n + 1)).toNat + A040081 (n + 1)

end

end A231820.P15404415640234495648

/-! ## A231820.P3401276688443218880

`A165430(A195942(2*(n+2)))+A040081(n+1)`
-/

namespace A231820.P3401276688443218880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165430 (A195942 (2 * (n + 2))).toNat + A040081 (n + 1)

end

end A231820.P3401276688443218880

/-! ## A231820.P6942600082927278331

`A139551(A032842(n+1))+A040081(n+1)`
-/

namespace A231820.P6942600082927278331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 (A032842 (n + 1)).toNat + A040081 (n + 1)

end

end A231820.P6942600082927278331

/-!
# A231821: a(n) = mu(n) + 3, where mu is the Mobius function (A008683).

The programs for A231821, the canonical program `A231821.P12304754178482988977` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231821 has offset 1).

The definition of A231821 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n+1)+3` (program `A231821.P12304754178482988977`, by `A231821.P12304754178482988977.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A231821.P12304754178482988977

`A008683(n+1)+3`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A231821

/-- `A008683(n+1)+3` -/
def P12304754178482988977.Spec : Prop :=
  ∀ n, P12304754178482988977.a n = A231821 (n + 1)

theorem P12304754178482988977.correct : P12304754178482988977.Spec := by
  intro n
  simp only [A231821, Nat.add_sub_cancel]

end A231821

/-! ## A231821.P7119461953702847255

`round(∏{p}[n+1, -#]/Δ[n²])+3`
-/

namespace A231821.P7119461953702847255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) + 3

end

end A231821.P7119461953702847255

namespace A231821

/-- `round(∏{p}[n+1, -#]/Δ[n²])+3` -/
def P7119461953702847255.Spec : Prop :=
  ∀ n, P7119461953702847255.a n = A231821 (n + 1)

end A231821

/-! ## A231821.P6849452491946343375

`C(∏{p}[n+1, #], n)/∏{p}[n+1, -#]+3`
-/

namespace A231821.P6849452491946343375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) : ℤ) : ℚ) + 3

end

end A231821.P6849452491946343375

namespace A231821

/-- `C(∏{p}[n+1, #], n)/∏{p}[n+1, -#]+3` -/
def P6849452491946343375.Spec : Prop :=
  ∀ n, P6849452491946343375.a n = (A231821 (n + 1) : ℚ)

end A231821

/-! ## A231821.P8933281963438825213

`round(acot(∏{e}[n+1, -#])+n+1)+2-n`
-/

namespace A231821.P8933281963438825213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ) + (n + 1 : ℝ)) + (2 - (n : ℤ))

end

end A231821.P8933281963438825213

namespace A231821

/-- `round(acot(∏{e}[n+1, -#])+n+1)+2-n` -/
def P8933281963438825213.Spec : Prop :=
  ∀ n, P8933281963438825213.a n = A231821 (n + 1)

end A231821

/-! ## A231821.P13319992207811550619

`A080847(n+1)+1`
-/

namespace A231821.P13319992207811550619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1) + 1

end

end A231821.P13319992207811550619

namespace A231821

/-- `A080847(n+1)+1` -/
def P13319992207811550619.Spec : Prop :=
  ∀ n, P13319992207811550619.a n = A231821 (n + 1)

theorem P13319992207811550619.correct : P13319992207811550619.Spec := by
  intro n
  simp only [A231821, Nat.add_sub_cancel, A231821.P13319992207811550619.a, A231821.P12304754178482988977.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A080847, A080847.P17042895332239696920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231821

/-! ## A231821.P17212608654992557042

`A007423(n+1)+2`
-/

namespace A231821.P17212608654992557042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) + 2

end

end A231821.P17212608654992557042

namespace A231821

/-- `A007423(n+1)+2` -/
def P17212608654992557042.Spec : Prop :=
  ∀ n, P17212608654992557042.a n = A231821 (n + 1)

theorem P17212608654992557042.correct : P17212608654992557042.Spec := by
  intro n
  simp only [A231821, Nat.add_sub_cancel, A231821.P17212608654992557042.a, A231821.P12304754178482988977.a, A007423, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231821

/-! ## A231821.P4202732448403038767

`5-A129979(n+1)`
-/

namespace A231821.P4202732448403038767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A129979 (n + 1)

end

end A231821.P4202732448403038767

namespace A231821

/-- `5-A129979(n+1)` -/
def P4202732448403038767.Spec : Prop :=
  ∀ n, P4202732448403038767.a n = A231821 (n + 1)

theorem P4202732448403038767.correct : P4202732448403038767.Spec := by
  intro n
  simp only [A231821, Nat.add_sub_cancel, A231821.P4202732448403038767.a, A231821.P12304754178482988977.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A129979, A129979.P5213750874207387056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231821

/-! ## A231821.P4521757522163096477

`abs(A076544(n+1))+2`
-/

namespace A231821.P4521757522163096477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076544 (n + 1)| + 2

end

end A231821.P4521757522163096477

namespace A231821

/-- `abs(A076544(n+1))+2` -/
def P4521757522163096477.Spec : Prop :=
  ∀ n, P4521757522163096477.a n = A231821 (n + 1)

end A231821

/-! ## A231821.P13491230543858654281

`A162512(n+1)%2+3`
-/

namespace A231821.P13491230543858654281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2 + 3

end

end A231821.P13491230543858654281

namespace A231821

/-- `A162512(n+1)%2+3` -/
def P13491230543858654281.Spec : Prop :=
  ∀ n, P13491230543858654281.a n = A231821 (n + 1)

end A231821

/-! ## A231821.P10399493891571879114

`A076369(n+1)+2-n`
-/

namespace A231821.P10399493891571879114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (n + 1) + (2 - (n : ℤ))

end

end A231821.P10399493891571879114

namespace A231821

/-- `A076369(n+1)+2-n` -/
def P10399493891571879114.Spec : Prop :=
  ∀ n, P10399493891571879114.a n = A231821 (n + 1)

theorem P10399493891571879114.correct : P10399493891571879114.Spec := by
  intro n
  simp only [A231821, Nat.add_sub_cancel, A231821.P10399493891571879114.a, A231821.P12304754178482988977.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A076369, A076369.P8196715672845264258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231821

/-! ## A231821.P17636783002505811763

`A127440(n)+a(n-1)` with `a(0)=4`
-/

namespace A231821.P17636783002505811763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A127440 n + a (n - 1)

end

end A231821.P17636783002505811763

namespace A231821

/-- `A127440(n)+a(n-1)` -/
def P17636783002505811763.Spec : Prop :=
  ∀ n, P17636783002505811763.a n = A231821 (n + 1)

theorem P17636783002505811763.correct : P17636783002505811763.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A231821, Nat.add_sub_cancel, A231821.P17636783002505811763.a, A231821.P12304754178482988977.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A127440, A127440.P13819688515437632303.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A231821, Nat.add_sub_cancel, A231821.P17636783002505811763.a, A231821.P12304754178482988977.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A127440, A127440.P13819688515437632303.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A231821

/-! ## A231821.P6526523441189094868

`floor(sqrt(A228409(n+1)))+1`
-/

namespace A231821.P6526523441189094868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A228409 (n + 1)) + 1

end

end A231821.P6526523441189094868

namespace A231821

/-- `floor(sqrt(A228409(n+1)))+1` -/
def P6526523441189094868.Spec : Prop :=
  ∀ n, P6526523441189094868.a n = A231821 (n + 1)

end A231821

/-! ## A231821.P8700638209388751755

`floor(exp(A140664(n+1)))+2`
-/

namespace A231821.P8700638209388751755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A140664 (n + 1) : ℝ)⌋ + 2

end

end A231821.P8700638209388751755

namespace A231821

/-- `floor(exp(A140664(n+1)))+2` -/
def P8700638209388751755.Spec : Prop :=
  ∀ n, P8700638209388751755.a n = A231821 (n + 1)

end A231821

/-! ## A231821.P9825277809117001543

`(A073184(n+1)+1)%3+2`
-/

namespace A231821.P9825277809117001543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073184 (n + 1) + 1) 3 + 2

end

end A231821.P9825277809117001543

namespace A231821

/-- `(A073184(n+1)+1)%3+2` -/
def P9825277809117001543.Spec : Prop :=
  ∀ n, P9825277809117001543.a n = A231821 (n + 1)

end A231821

/-! ## A231821.P6299534677991871126

`A080848(n+1)/(n+1)+1`
-/

namespace A231821.P6299534677991871126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080848 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A231821.P6299534677991871126

namespace A231821

/-- `A080848(n+1)/(n+1)+1` -/
def P6299534677991871126.Spec : Prop :=
  ∀ n, P6299534677991871126.a n = (A231821 (n + 1) : ℚ)

theorem P6299534677991871126.correct : P6299534677991871126.Spec := by
  intro n
  simp only [A231821, Nat.add_sub_cancel, A231821.P6299534677991871126.a, A231821.P12304754178482988977.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A080848, A080848.P7283304606114589538.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231821

/-! ## A231821.P6509068857688471006

`A061669(n+1)/(n+1)+2`
-/

namespace A231821.P6509068857688471006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061669 (n + 1) : ℚ) / (n + 1 : ℚ) + 2

end

end A231821.P6509068857688471006

namespace A231821

/-- `A061669(n+1)/(n+1)+2` -/
def P6509068857688471006.Spec : Prop :=
  ∀ n, P6509068857688471006.a n = (A231821 (n + 1) : ℚ)

theorem P6509068857688471006.correct : P6509068857688471006.Spec := by
  intro n
  simp only [A231821, Nat.add_sub_cancel, A231821.P6509068857688471006.a, A231821.P12304754178482988977.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A061669, A061669.P9904449998917605232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231821

/-! ## A231821.P2973461518498955090

`A055615(n+1)/(n+1)+3`
-/

namespace A231821.P2973461518498955090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (n + 1 : ℚ) + 3

end

end A231821.P2973461518498955090

namespace A231821

/-- `A055615(n+1)/(n+1)+3` -/
def P2973461518498955090.Spec : Prop :=
  ∀ n, P2973461518498955090.a n = (A231821 (n + 1) : ℚ)

end A231821

/-! ## A231821.P560947710686114353

`(A080849(n+1)+(n+1)²)/(n+1)²`
-/

namespace A231821.P560947710686114353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080849 (n + 1) + ((n + 1) ^ 2 : ℤ) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A231821.P560947710686114353

namespace A231821

/-- `(A080849(n+1)+(n+1)²)/(n+1)²` -/
def P560947710686114353.Spec : Prop :=
  ∀ n, P560947710686114353.a n = (A231821 (n + 1) : ℚ)

theorem P560947710686114353.correct : P560947710686114353.Spec := by
  intro n
  simp only [A231821, Nat.add_sub_cancel, A231821.P560947710686114353.a, A231821.P12304754178482988977.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A080849, A080849.P2950935866036155147.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231821

/-! ## A231821.P7742027857616363393

`A036584(A293227(n+1))+1`
-/

namespace A231821.P7742027857616363393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 (A293227 (n + 1)).toNat + 1

end

end A231821.P7742027857616363393

namespace A231821

/-- `A036584(A293227(n+1))+1` -/
def P7742027857616363393.Spec : Prop :=
  ∀ n, P7742027857616363393.a n = A231821 (n + 1)

end A231821

/-! ## A231821.P13669721725816314838

`A068073(A349912(n+1))+1`
-/

namespace A231821.P13669721725816314838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 (A349912 (n + 1)).toNat + 1

end

end A231821.P13669721725816314838

namespace A231821

/-- `A068073(A349912(n+1))+1` -/
def P13669721725816314838.Spec : Prop :=
  ∀ n, P13669721725816314838.a n = A231821 (n + 1)

end A231821

/-!
# A231822: Number of n X 2 0..2 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231822, the canonical program `A231822.P899297081179522028` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231822 has offset 1).

The definition of A231822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231822.P899297081179522028

`ogf((1-x^2-4x^3-7x^4-4x^5)/(1-9x+16x^2-11x^3+27x^4-21x^5+4x^6))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231822

/-- `ogf((1-x^2-4x^3-7x^4-4x^5)/(1-9x+16x^2-11x^3+27x^4-21x^5+4x^6))` -/
def P899297081179522028.Spec : Prop :=
  ∀ n, P899297081179522028.a n = A231822 (n + 1)

theorem P899297081179522028.correct : P899297081179522028.Spec := by
  intro n
  simp only [A231822, Nat.add_sub_cancel]

end A231822

/-! ## A231822.P3045382709096372035

`A231828(∑[n+1]+2)`
-/

namespace A231822.P3045382709096372035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231822.P3045382709096372035

namespace A231822

/-- `A231828(∑[n+1]+2)` -/
def P3045382709096372035.Spec : Prop :=
  ∀ n, P3045382709096372035.a n = A231822 (n + 1)

end A231822

/-! ## A231822.P9160362837104825731

`record[A010054(n)*A231828(n+2)]`
-/

namespace A231822.P9160362837104825731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A231828 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231822.P9160362837104825731

namespace A231822

/-- `record[A010054(n)*A231828(n+2)]` -/
def P9160362837104825731.Spec : Prop :=
  ∀ n, P9160362837104825731.a n = A231822 (n + 1)

end A231822

/-! ## A231822.P304482649796603030

`record[A231828(∑[A152271(n)])]`
-/

namespace A231822.P304482649796603030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231822.P304482649796603030

namespace A231822

/-- `record[A231828(∑[A152271(n)])]` -/
def P304482649796603030.Spec : Prop :=
  ∀ n, P304482649796603030.a n = A231822 (n + 1)

end A231822

/-! ## A231822.P7684015329269697347

`record[A097806(n)*A231828(n+1)]`
-/

namespace A231822.P7684015329269697347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A231828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231822.P7684015329269697347

namespace A231822

/-- `record[A097806(n)*A231828(n+1)]` -/
def P7684015329269697347.Spec : Prop :=
  ∀ n, P7684015329269697347.a n = A231822 (n + 1)

end A231822

/-!
# A231823: Number of nX3 0..2 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231823, there is no canonical definition to state claims against.
-/

/-! ## A231823.P3704981801309524347

`A231828(∑[n+2]+4)`
-/

namespace A231823.P3704981801309524347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231823.P3704981801309524347

/-! ## A231823.P1803380022718539388

`A231828(A167614(n+1))+A111253(n+1)`
-/

namespace A231823.P1803380022718539388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A167614 (n + 1)).toNat + A111253 (n + 1)

end

end A231823.P1803380022718539388

/-! ## A231823.P13379562891259940118

`A231828(A167614(n+1))*A266227(n+1)`
-/

namespace A231823.P13379562891259940118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A167614 (n + 1)).toNat * A266227 (n + 1)

end

end A231823.P13379562891259940118

/-! ## A231823.P4639419069431133836

`A340362(n+1)+A231828(A055998(n)+6)`
-/

namespace A231823.P4639419069431133836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340362 (n + 1) + A231828 (A055998 n + 6).toNat

end

end A231823.P4639419069431133836

/-! ## A231823.P16089067189246727672

`A001222(A089793(n))*A231828(A055998(n)+6)`
-/

namespace A231823.P16089067189246727672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A089793 n).toNat * A231828 (A055998 n + 6).toNat

end

end A231823.P16089067189246727672

/-!
# A231824: Number of nX4 0..2 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231824, there is no canonical definition to state claims against.
-/

/-! ## A231824.P14513168207194742692

`A231828(A374004(n+1))`
-/

namespace A231824.P14513168207194742692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A374004 (n + 1)).toNat

end

end A231824.P14513168207194742692

/-! ## A231824.P17075421073909031663

`A231828(A052905(n)+9)`
-/

namespace A231824.P17075421073909031663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A052905 n + 9).toNat

end

end A231824.P17075421073909031663

/-! ## A231824.P13714166306782008503

`A231828(A055999(n)+10)`
-/

namespace A231824.P13714166306782008503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A055999 n + 10).toNat

end

end A231824.P13714166306782008503

/-! ## A231824.P5582123772826504573

`A231828(A167614(n+2)+1)`
-/

namespace A231824.P5582123772826504573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A167614 (n + 2) + 1).toNat

end

end A231824.P5582123772826504573

/-! ## A231824.P10502721873614914704

`A231828(A167487(n+2)-3)`
-/

namespace A231824.P10502721873614914704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A167487 (n + 2) - 3).toNat

end

end A231824.P10502721873614914704

/-!
# A231825: Number of n X 5 0..2 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231825, there is no canonical definition to state claims against.
-/

/-! ## A231825.P16300998044872227381

`A231828(A374005(n+1))`
-/

namespace A231825.P16300998044872227381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A374005 (n + 1)).toNat

end

end A231825.P16300998044872227381

/-! ## A231825.P17890539297605243139

`A231828(A167499(n+3))`
-/

namespace A231825.P17890539297605243139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A167499 (n + 3)).toNat

end

end A231825.P17890539297605243139

/-! ## A231825.P341187595510236106

`A231828(A056000(n)+15)`
-/

namespace A231825.P341187595510236106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A056000 n + 15).toNat

end

end A231825.P341187595510236106

/-! ## A231825.P15146350155587413735

`A231828(eq[6, A131818(n+1)])`
-/

namespace A231825.P15146350155587413735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231825.P15146350155587413735

/-! ## A231825.P12215694052264436309

`A231828(eq[4, A193592(n)])`
-/

namespace A231825.P12215694052264436309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231825.P12215694052264436309

/-!
# A231826: Number of nX6 0..2 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231826, there is no canonical definition to state claims against.
-/

/-! ## A231826.P10719211413441473298

`A231828(A374007(n+1))`
-/

namespace A231826.P10719211413441473298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A374007 (n + 1)).toNat

end

end A231826.P10719211413441473298

/-! ## A231826.P13839895945805062719

`A231828(A052905(n+3))`
-/

namespace A231826.P13839895945805062719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A052905 (n + 3)).toNat

end

end A231826.P13839895945805062719

/-! ## A231826.P9226634949406651319

`A231828(eq[3, A274661(n)])`
-/

namespace A231826.P9226634949406651319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231826.P9226634949406651319

/-! ## A231826.P15141876723945247195

`A231828(eq[5, A193592(n)])`
-/

namespace A231826.P15141876723945247195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231826.P15141876723945247195

/-! ## A231826.P17534406059754575855

`A231828(Δ[A023545(n+2)]-1)`
-/

namespace A231826.P17534406059754575855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (f1 (n + 1) - f1 n - 1).toNat

end

end A231826.P17534406059754575855

/-!
# A231827: Number of nX7 0..2 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231827, there is no canonical definition to state claims against.
-/

/-! ## A231827.P5710381733037183564

`A231828(A374008(n+1))`
-/

namespace A231827.P5710381733037183564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A374008 (n + 1)).toNat

end

end A231827.P5710381733037183564

/-! ## A231827.P11302481077940990931

`A231828(A167487(n+5))`
-/

namespace A231827.P11302481077940990931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A167487 (n + 5)).toNat

end

end A231827.P11302481077940990931

/-! ## A231827.P2994464604782034288

`A231828(A055999(n+4))`
-/

namespace A231827.P2994464604782034288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (A055999 (n + 4)).toNat

end

end A231827.P2994464604782034288

/-! ## A231827.P7597025114756149472

`A231828(eq[6, A193592(n)])`
-/

namespace A231827.P7597025114756149472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231827.P7597025114756149472

/-!
# A231829: Square array read by antidiagonals: T(m,n) = number of ways of creating a closed, simple loop on an m X n rectangular lattice.

The programs for A231829, there is no canonical definition to state claims against.
-/

/-! ## A231829.P14285316154057770861

`A287151(n+1)-A137579(A143007(n))`
-/

namespace A231829.P14285316154057770861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287151 (n + 1) - A137579 (A143007 n).toNat

end

end A231829.P14285316154057770861

/-!
# A231831: a(0) = 1; for n > 0, a(n) = -1 + 4*Product_{i=0..n-1} a(i)^2.

The programs for A231831, there is no canonical definition to state claims against.
-/

/-! ## A231831.P2555960263551667515

`(a(n-1)+1)*a(n-1)²-1` with `a(0)=1, a(1)=3`
-/

namespace A231831.P2555960263551667515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 1) + 1) * a (n - 1) ^ 2 - 1

end

end A231831.P2555960263551667515

/-!
# A231832: Number of n X n 0..3 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A231832, there is no canonical definition to state claims against.
-/

/-! ## A231832.P6315413495149755930

`A231839(∑[4*n]+1)`
-/

namespace A231832.P6315413495149755930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231832.P6315413495149755930

/-!
# A231833: Number of n X 2 0..3 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A231833, the canonical program `A231833.P3465925716903192134` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231833 has offset 1).

The definition of A231833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231833.P3465925716903192134

`ogf((4+34x+86x^2+91x^3+46x^4+11x^5+x^6)/(1-4x-34x^2-86x^3-91x^4-46x^5-11x^6-x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231833

/-- `ogf((4+34x+86x^2+91x^3+46x^4+11x^5+x^6)/(1-4x-34x^2-86x^3-91x^4-46x^5-11x^6-x^7))` -/
def P3465925716903192134.Spec : Prop :=
  ∀ n, P3465925716903192134.a n = A231833 (n + 1)

theorem P3465925716903192134.correct : P3465925716903192134.Spec := by
  intro n
  simp only [A231833, Nat.add_sub_cancel]

end A231833

/-! ## A231833.P8508123228506932676

`A203094(2*(n+1))`
-/

namespace A231833.P8508123228506932676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203094 (2 * (n + 1))

end

end A231833.P8508123228506932676

namespace A231833

/-- `A203094(2*(n+1))` -/
def P8508123228506932676.Spec : Prop :=
  ∀ n, P8508123228506932676.a n = A231833 (n + 1)

end A231833

/-! ## A231833.P15453695852100693882

`record[A203094(A014681(n+1))]`
-/

namespace A231833.P15453695852100693882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203094 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231833.P15453695852100693882

namespace A231833

/-- `record[A203094(A014681(n+1))]` -/
def P15453695852100693882.Spec : Prop :=
  ∀ n, P15453695852100693882.a n = A231833 (n + 1)

end A231833

/-! ## A231833.P9576052746403119505

`record[A203094(n+2)/A033999(n)]`
-/

namespace A231833.P9576052746403119505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203094 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231833.P9576052746403119505

namespace A231833

/-- `record[A203094(n+2)/A033999(n)]` -/
def P9576052746403119505.Spec : Prop :=
  ∀ n, P9576052746403119505.a n = (A231833 (n + 1) : ℚ)

end A231833

/-! ## A231833.P11988067829669887223

`record[A203094(A289436(n+2)+A289435(n+2))]`
-/

namespace A231833.P11988067829669887223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203094 (A289436 (n + 2) + A289435 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231833.P11988067829669887223

namespace A231833

/-- `record[A203094(A289436(n+2)+A289435(n+2))]` -/
def P11988067829669887223.Spec : Prop :=
  ∀ n, P11988067829669887223.a n = A231833 (n + 1)

end A231833

/-!
# A231834: Number of nX3 0..3 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A231834, there is no canonical definition to state claims against.
-/

/-! ## A231834.P7040787558374451273

`A231839(∑[n+3]+1)`
-/

namespace A231834.P7040787558374451273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231834.P7040787558374451273

/-! ## A231834.P9034915212224433962

`A231839(Δ[A008778(n)])%A231837(n+1)`
-/

namespace A231834.P9034915212224433962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231839 (f1 (n + 1) - f1 n).toNat) (A231837 (n + 1))

end

end A231834.P9034915212224433962

/-!
# A231835: Number of nX4 0..3 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A231835, there is no canonical definition to state claims against.
-/

/-! ## A231835.P2492148763847079378

`A231839(A141214(n+1))`
-/

namespace A231835.P2492148763847079378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A141214 (n + 1)).toNat

end

end A231835.P2492148763847079378

/-! ## A231835.P8781814244400708109

`A231839(A027379(n+2))`
-/

namespace A231835.P8781814244400708109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A027379 (n + 2)).toNat

end

end A231835.P8781814244400708109

/-! ## A231835.P7151391077086254695

`A231839(A055998(n+2))`
-/

namespace A231835.P7151391077086254695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A055998 (n + 2)).toNat

end

end A231835.P7151391077086254695

/-! ## A231835.P17192965350708643323

`A231839(A155212(n)+5)`
-/

namespace A231835.P17192965350708643323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A155212 n + 5).toNat

end

end A231835.P17192965350708643323

/-! ## A231835.P10253467479186155951

`A231839(A056000(n)+7)`
-/

namespace A231835.P10253467479186155951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A056000 n + 7).toNat

end

end A231835.P10253467479186155951

/-!
# A231836: Number of nX5 0..3 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A231836, there is no canonical definition to state claims against.
-/

/-! ## A231836.P3401977738225295140

`A231839(eq[4, A193592(n)])`
-/

namespace A231836.P3401977738225295140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231836.P3401977738225295140

/-! ## A231836.P17141329978500063341

`A231839(Δ[A023545(n+1)])`
-/

namespace A231836.P17141329978500063341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (f1 (n + 1) - f1 n).toNat

end

end A231836.P17141329978500063341

/-! ## A231836.P804631187355170826

`A231839(A155212(n+1)+4)`
-/

namespace A231836.P804631187355170826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A155212 (n + 1) + 4).toNat

end

end A231836.P804631187355170826

/-! ## A231836.P15140287913900845371

`A231839(eq[6, A185782(n+1)])`
-/

namespace A231836.P15140287913900845371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231836.P15140287913900845371

/-! ## A231836.P7887030949353143308

`A231839(eq[8, A057728(n+1)])`
-/

namespace A231836.P7887030949353143308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231836.P7887030949353143308

/-!
# A231837: Number of nX6 0..3 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A231837, there is no canonical definition to state claims against.
-/

/-! ## A231837.P5295532541606648890

`A231839(A052905(n+3))`
-/

namespace A231837.P5295532541606648890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A052905 (n + 3)).toNat

end

end A231837.P5295532541606648890

/-! ## A231837.P17987065064688713386

`A231839(eq[6, A200370(n+1)])`
-/

namespace A231837.P17987065064688713386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231837.P17987065064688713386

/-! ## A231837.P5717047141766353902

`A231839(eq[8, A185782(n+1)])`
-/

namespace A231837.P5717047141766353902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231837.P5717047141766353902

/-! ## A231837.P14416276500612638974

`A231839(eq[16, A057728(n+1)])`
-/

namespace A231837.P14416276500612638974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231837.P14416276500612638974

/-! ## A231837.P8689421375854616290

`A231839(Δ[A023545(n+2)]-1)`
-/

namespace A231837.P8689421375854616290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (f1 (n + 1) - f1 n - 1).toNat

end

end A231837.P8689421375854616290

/-!
# A231838: Number of nX7 0..3 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A231838, there is no canonical definition to state claims against.
-/

/-! ## A231838.P15433023174089402916

`A231839(A055999(n+4))`
-/

namespace A231838.P15433023174089402916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A055999 (n + 4)).toNat

end

end A231838.P15433023174089402916

/-! ## A231838.P9628148693910715688

`A231839(eq[4, A219347(n)])`
-/

namespace A231838.P9628148693910715688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231838.P9628148693910715688

/-! ## A231838.P18418907163706809775

`A231839(eq[6, A193592(n)])`
-/

namespace A231838.P18418907163706809775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231838.P18418907163706809775

/-! ## A231838.P4915386618170830880

`A231839(A034856(n+6)-4)`
-/

namespace A231838.P4915386618170830880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A034856 (n + 6) - 4).toNat

end

end A231838.P4915386618170830880

/-! ## A231838.P8397229995232508834

`A231839(eq[10, A185782(n+1)])`
-/

namespace A231838.P8397229995232508834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231838.P8397229995232508834

/-!
# A231840: Number of 2Xn 0..3 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A231840, there is no canonical definition to state claims against.
-/

/-! ## A231840.P11434001515873439951

`A231839(∑[n+1]+2)`
-/

namespace A231840.P11434001515873439951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231840.P11434001515873439951

/-! ## A231840.P5891816297721012810

`or(A231839(A133263(n+1)), A307598(n))`
-/

namespace A231840.P5891816297721012810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A231839 (A133263 (n + 1)).toNat) (A307598 n)

end

end A231840.P5891816297721012810

/-! ## A231840.P13827260136101632685

`A001222(4-(-1)^n)*A231839(A133263(n+1))`
-/

namespace A231840.P13827260136101632685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 - (-1) ^ n).toNat * A231839 (A133263 (n + 1)).toNat

end

end A231840.P13827260136101632685

/-! ## A231840.P9439552280883512270

`A014963(A214082(n+1))*A231839(A133263(n+1))`
-/

namespace A231840.P9439552280883512270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A214082 (n + 1)).toNat * A231839 (A133263 (n + 1)).toNat

end

end A231840.P9439552280883512270

/-! ## A231840.P2844591095882227227

`record[A231839(n+3)/A113350(n)]`
-/

namespace A231840.P2844591095882227227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231839 (n + 3) : ℚ) / (A113350 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231840.P2844591095882227227

/-!
# A231841: Number of 3Xn 0..3 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A231841, there is no canonical definition to state claims against.
-/

/-! ## A231841.P1247203437927952214

`A231839(∑[n+2]+4)`
-/

namespace A231841.P1247203437927952214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231841.P1247203437927952214

/-! ## A231841.P7159623754082123750

`A231839(A167614(n+1))*A262681(n)`
-/

namespace A231841.P7159623754082123750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A167614 (n + 1)).toNat * A262681 n

end

end A231841.P7159623754082123750

/-! ## A231841.P10154543011886207897

`lcm(A033999(n), A231839(A167614(n+1)))`
-/

namespace A231841.P10154543011886207897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A231839 (A167614 (n + 1)).toNat)

end

end A231841.P10154543011886207897

/-! ## A231841.P739405691619438672

`A231839(A167614(n+1))%A231842(n+1)`
-/

namespace A231841.P739405691619438672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231839 (A167614 (n + 1)).toNat) (A231842 (n + 1))

end

end A231841.P739405691619438672

/-! ## A231841.P5372213495834769428

`A231839(A167614(n+1))*A329379(2*n+1)`
-/

namespace A231841.P5372213495834769428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A167614 (n + 1)).toNat * A329379 (2 * n + 1)

end

end A231841.P5372213495834769428

/-!
# A231842: Number of 4Xn 0..3 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A231842, there is no canonical definition to state claims against.
-/

/-! ## A231842.P10748244276512257191

`A231839(A141214(n)+7)`
-/

namespace A231842.P10748244276512257191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A141214 n + 7).toNat

end

end A231842.P10748244276512257191

/-! ## A231842.P9885532355368030019

`A231839(A052905(n)+9)`
-/

namespace A231842.P9885532355368030019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A052905 n + 9).toNat

end

end A231842.P9885532355368030019

/-! ## A231842.P6276671949773628552

`A231839(A055999(n)+10)`
-/

namespace A231842.P6276671949773628552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A055999 n + 10).toNat

end

end A231842.P6276671949773628552

/-! ## A231842.P1613677388925452948

`A231839(A167614(n+2)+1)`
-/

namespace A231842.P1613677388925452948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A167614 (n + 2) + 1).toNat

end

end A231842.P1613677388925452948

/-! ## A231842.P10297361881458687694

`A231839(Δ[A023545(n+1)-n²])`
-/

namespace A231842.P10297361881458687694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (f1 (n + 1) - f1 n).toNat

end

end A231842.P10297361881458687694

/-!
# A231843: Number of 5Xn 0..3 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A231843, there is no canonical definition to state claims against.
-/

/-! ## A231843.P13981135140113735103

`A231839(∑[n+4]+11)`
-/

namespace A231843.P13981135140113735103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A231843.P13981135140113735103

/-!
# A231844: Number of 6Xn 0..3 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A231844, there is no canonical definition to state claims against.
-/

/-! ## A231844.P16223461077908846887

`A231839(A056115(n)+21)`
-/

namespace A231844.P16223461077908846887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A056115 n + 21).toNat

end

end A231844.P16223461077908846887

/-! ## A231844.P1592328340205321013

`A231839(eq[7, A131818(n+1)])`
-/

namespace A231844.P1592328340205321013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231844.P1592328340205321013

/-!
# A231845: Number of 7Xn 0..3 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

The programs for A231845, there is no canonical definition to state claims against.
-/

/-! ## A231845.P16730434014105952633

`A231839(A055998(n+4)+10)`
-/

namespace A231845.P16730434014105952633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (A055998 (n + 4) + 10).toNat

end

end A231845.P16730434014105952633

/-! ## A231845.P8189315413523106523

`A231839(eq[8, A131818(n+1)])`
-/

namespace A231845.P8189315413523106523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231845.P8189315413523106523

/-!
# A231846: Polynomials for total Pontryagin classes. Refinement of double Pochhammer triangle.

The programs for A231846, there is no canonical definition to state claims against.
-/

/-! ## A231846.P10509293733693361930

`A341022(round(ϕ^((n+1)%(n+1)²)))+A241881(n)`
-/

namespace A231846.P10509293733693361930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341022 ((SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n + 1) % (n + 1) ^ 2))).toNat + 35) + A241881 n

end

end A231846.P10509293733693361930

/-! ## A231846.P6654865642137578808

`gcd(A098539(A037141(n)), A098557(n))`
-/

namespace A231846.P6654865642137578808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098539 (A037141 n).toNat) (A098557 n)

end

end A231846.P6654865642137578808

/-!
# A231847: Primes p such that p*(p+1)/2 + 1 is a prime.

The programs for A231847, there is no canonical definition to state claims against.
-/

/-! ## A231847.P12354633370230634280

`p?[A067186(n+1)]`
-/

namespace A231847.P12354633370230634280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231847.P12354633370230634280

/-! ## A231847.P6124840094997576912

`p?[A343151(n+1)]`
-/

namespace A231847.P6124840094997576912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231847.P6124840094997576912

/-! ## A231847.P2909180430975282795

`p?[n*A129634(n)]`
-/

namespace A231847.P2909180430975282795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A129634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231847.P2909180430975282795

/-! ## A231847.P4337899327908307778

`p?[floor(A110872(n+1)/2)]`
-/

namespace A231847.P4337899327908307778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110872 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231847.P4337899327908307778

/-! ## A231847.P2129596129160756579

`or(1, p?[A067186(-xor(n, -1))])`
-/

namespace A231847.P2129596129160756579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067186 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A231847.P2129596129160756579

/-! ## A231847.P16715891389444009977

`eq[A003415(n), A129634(n)]`
-/

namespace A231847.P16715891389444009977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231847.P16715891389444009977

/-! ## A231847.P17690419387672504063

`eq[A129634(n), A175126(n)]`
-/

namespace A231847.P17690419387672504063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231847.P17690419387672504063

/-! ## A231847.P4495367088347058650

`eq[A129634(n), A358771(n)]`
-/

namespace A231847.P4495367088347058650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231847.P4495367088347058650

/-! ## A231847.P16563892480050434929

`eq[A129634(n), A369971(n)]`
-/

namespace A231847.P16563892480050434929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231847.P16563892480050434929

/-! ## A231847.P15357943403393635814

`record[A006530(A067186(n+2))]`
-/

namespace A231847.P15357943403393635814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A067186 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231847.P15357943403393635814

/-!
# A231848: A sequence of rounded numbers meaningful for entering values over several orders of magnitude in computer-human interfaces.

The programs for A231848, there is no canonical definition to state claims against.
-/

/-! ## A231848.P8989002640454441071

`lt[A190392(A190338(n)), n]`
-/

namespace A231848.P8989002640454441071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190392 (A190338 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A231848.P8989002640454441071

/-! ## A231848.P8371411030855349800

`lt[A091703(n²), A008593(n)]`
-/

namespace A231848.P8371411030855349800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231848.P8371411030855349800

/-! ## A231848.P9421719853462605886

`lt[A053253(lcm(5, n)), A117798(n+1)]`
-/

namespace A231848.P9421719853462605886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053253 (Nat.lcm 5 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117798 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231848.P9421719853462605886

/-! ## A231848.P12480992729543774361

`lt[A358497(n), A181819(A250120(n))]`
-/

namespace A231848.P12480992729543774361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358497 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A250120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231848.P12480992729543774361

/-! ## A231848.P3905041852126034220

`A259434(A032571(n+1))`
-/

namespace A231848.P3905041852126034220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259434 (A032571 (n + 1)).toNat

end

end A231848.P3905041852126034220

/-!
# A231849: Number of n X n 0..2 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231849, there is no canonical definition to state claims against.
-/

/-! ## A231849.P11519168677857218518

`A231855((n+1)²+n²)`
-/

namespace A231849.P11519168677857218518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 ((n + 1) ^ 2 + n ^ 2)

end

end A231849.P11519168677857218518

/-!
# A231850: Number of n X 3 0..2 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231850, there is no canonical definition to state claims against.
-/

/-! ## A231850.P7027733049744018095

`ogf((3-29x+65x^2-44x^3)/(1-21x+41x^2-22x^3))`
-/

namespace A231850.P7027733049744018095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -29, 65, -44] [1, -21, 41, -22] n

end

end A231850.P7027733049744018095

/-! ## A231850.P3852302295250748518

`A231855(∑[n+3]+1)`
-/

namespace A231850.P3852302295250748518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231850.P3852302295250748518

/-! ## A231850.P16350438666401602182

`record[A231855(A198464(n+1))]`
-/

namespace A231850.P16350438666401602182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231850.P16350438666401602182

/-!
# A231851: Number of nX4 0..2 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231851, there is no canonical definition to state claims against.
-/

/-! ## A231851.P6325466965485418179

`A231855(A141214(n+1))`
-/

namespace A231851.P6325466965485418179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (A141214 (n + 1)).toNat

end

end A231851.P6325466965485418179

/-! ## A231851.P12718070164870481327

`A231855(A055998(n+2))`
-/

namespace A231851.P12718070164870481327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (A055998 (n + 2)).toNat

end

end A231851.P12718070164870481327

/-! ## A231851.P1719163675755255236

`A231855(A155212(n)+5)`
-/

namespace A231851.P1719163675755255236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (A155212 n + 5).toNat

end

end A231851.P1719163675755255236

/-! ## A231851.P16495035158390538790

`A231855(A056000(n)+7)`
-/

namespace A231851.P16495035158390538790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (A056000 n + 7).toNat

end

end A231851.P16495035158390538790

/-! ## A231851.P18019090202585885338

`A231855(eq[3, A193592(n)])`
-/

namespace A231851.P18019090202585885338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231851.P18019090202585885338

/-!
# A231852: Number of nX5 0..2 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231852, there is no canonical definition to state claims against.
-/

/-! ## A231852.P10475210703401400881

`A231855(Δ[A264443(n)])`
-/

namespace A231852.P10475210703401400881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (f1 (n + 1) - f1 n).toNat

end

end A231852.P10475210703401400881

/-! ## A231852.P4161303732832108184

`A231855(eq[2, A092921(n)])`
-/

namespace A231852.P4161303732832108184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231852.P4161303732832108184

/-! ## A231852.P18116835706029318770

`A231855(eq[4, A193592(n)])`
-/

namespace A231852.P18116835706029318770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231852.P18116835706029318770

/-! ## A231852.P8042657778032231183

`A231855(Δ[A023545(n+1)])`
-/

namespace A231852.P8042657778032231183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (f1 (n + 1) - f1 n).toNat

end

end A231852.P8042657778032231183

/-! ## A231852.P7726466729254868745

`A231855(eq[8, A057728(n+1)])`
-/

namespace A231852.P7726466729254868745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231852.P7726466729254868745

/-!
# A231853: Number of nX6 0..2 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231853, there is no canonical definition to state claims against.
-/

/-! ## A231853.P9600891550197687690

`A231855(eq[5, A193592(n)])`
-/

namespace A231853.P9600891550197687690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231853.P9600891550197687690

/-! ## A231853.P9923087216288371262

`A231855(eq[8, A185782(n+1)])`
-/

namespace A231853.P9923087216288371262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231853.P9923087216288371262

/-! ## A231853.P2155919044331753424

`A231855(Δ[Δ[A006504(n+1)]])`
-/

namespace A231853.P2155919044331753424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (f1 (n + 1) - f1 n).toNat

end

end A231853.P2155919044331753424

/-!
# A231854: Number of nX7 0..2 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231854, there is no canonical definition to state claims against.
-/

/-! ## A231854.P9263316685119602161

`A231855(eq[6, A193592(n)])`
-/

namespace A231854.P9263316685119602161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231854.P9263316685119602161

/-! ## A231854.P5545246717177277542

`A231855(eq[10, A185782(n+1)])`
-/

namespace A231854.P5545246717177277542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231854.P5545246717177277542

/-!
# A231856: Number of 2 X n 0..2 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231856, the canonical program `A231856.P13833521666837048599` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231856 has offset 1).

The definition of A231856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231856.P13833521666837048599

`ogf((3-7x+5x^3+3x^4-11x^5+x^6+3x^7-x^8)/(1-5x+2x^2+5x^3+x^4-10x^5+3x^6+3x^7-x^8))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231856

/-- `ogf((3-7x+5x^3+3x^4-11x^5+x^6+3x^7-x^8)/(1-5x+2x^2+5x^3+x^4-10x^5+3x^6+3x^7-x^8))` -/
def P13833521666837048599.Spec : Prop :=
  ∀ n, P13833521666837048599.a n = A231856 (n + 1)

theorem P13833521666837048599.correct : P13833521666837048599.Spec := by
  intro n
  simp only [A231856, Nat.add_sub_cancel]

end A231856

/-! ## A231856.P2217011591359172842

`A231855(∑[n+1]+2)`
-/

namespace A231856.P2217011591359172842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231856.P2217011591359172842

namespace A231856

/-- `A231855(∑[n+1]+2)` -/
def P2217011591359172842.Spec : Prop :=
  ∀ n, P2217011591359172842.a n = A231856 (n + 1)

end A231856

/-! ## A231856.P8316904812872869064

`record[A231855(n+3)/A221328(n+1)]`
-/

namespace A231856.P8316904812872869064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231855 (n + 3) : ℚ) / (A221328 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231856.P8316904812872869064

namespace A231856

/-- `record[A231855(n+3)/A221328(n+1)]` -/
def P8316904812872869064.Spec : Prop :=
  ∀ n, P8316904812872869064.a n = (A231856 (n + 1) : ℚ)

end A231856

/-!
# A231857: Number of 3Xn 0..2 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231857, there is no canonical definition to state claims against.
-/

/-! ## A231857.P4671234989560258049

`A231855(∑[n+2]+4)`
-/

namespace A231857.P4671234989560258049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231857.P4671234989560258049

/-! ## A231857.P3955572791677048574

`A231855(A167614(n+1))+A025443(n)`
-/

namespace A231857.P3955572791677048574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (A167614 (n + 1)).toNat + A025443 n

end

end A231857.P3955572791677048574

/-! ## A231857.P17584644177557918465

`A231855(A167614(n+1))+A137579(n)`
-/

namespace A231857.P17584644177557918465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (A167614 (n + 1)).toNat + A137579 n

end

end A231857.P17584644177557918465

/-! ## A231857.P5513934823101960157

`lcm(A158388(n), A231855(A167614(n+1)))`
-/

namespace A231857.P5513934823101960157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A231855 (A167614 (n + 1)).toNat)

end

end A231857.P5513934823101960157

/-! ## A231857.P3139707262424301778

`or(A055641(n), A231855(A167614(n+1)))`
-/

namespace A231857.P3139707262424301778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A231855 (A167614 (n + 1)).toNat)

end

end A231857.P3139707262424301778

/-!
# A231858: Number of 4Xn 0..2 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231858, there is no canonical definition to state claims against.
-/

/-! ## A231858.P9461193073642075600

`A231855(∑[n+3]+7)`
-/

namespace A231858.P9461193073642075600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A231858.P9461193073642075600

/-!
# A231859: Number of 5 X n 0..2 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231859, there is no canonical definition to state claims against.
-/

/-! ## A231859.P600048045084683905

`A231855(A167499(n+3))`
-/

namespace A231859.P600048045084683905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (A167499 (n + 3)).toNat

end

end A231859.P600048045084683905

/-! ## A231859.P14886843401530200066

`A231855(A166136(n+3)-1)`
-/

namespace A231859.P14886843401530200066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (A166136 (n + 3) - 1).toNat

end

end A231859.P14886843401530200066

/-! ## A231859.P16178960052574419179

`A231855(eq[6, A131818(n+1)])`
-/

namespace A231859.P16178960052574419179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231859.P16178960052574419179

/-! ## A231859.P9736576911861119492

`A231855(Δ[Δ[A006504(n+1)]]-(2*n+1))`
-/

namespace A231859.P9736576911861119492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A231859.P9736576911861119492

/-! ## A231859.P7757504148355061516

`A231855(A014963(42*(n+1))+A000124(n+4)+3)`
-/

namespace A231859.P7757504148355061516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (A014963 (42 * (n + 1)) + (A000124 (n + 4) + 3)).toNat

end

end A231859.P7757504148355061516

/-!
# A231860: Number of 6Xn 0..2 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231860, there is no canonical definition to state claims against.
-/

/-! ## A231860.P14795193647900533709

`A231855(A166136(n+4))`
-/

namespace A231860.P14795193647900533709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (A166136 (n + 4)).toNat

end

end A231860.P14795193647900533709

/-! ## A231860.P3857508917707053102

`A231855(A056115(n)+21)`
-/

namespace A231860.P3857508917707053102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (A056115 n + 21).toNat

end

end A231860.P3857508917707053102

/-! ## A231860.P15608106339169585683

`A231855(A167499(n+4)+1)`
-/

namespace A231860.P15608106339169585683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (A167499 (n + 4) + 1).toNat

end

end A231860.P15608106339169585683

/-! ## A231860.P4839489661345046071

`A231855(A167614(n+4)+3)`
-/

namespace A231860.P4839489661345046071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (A167614 (n + 4) + 3).toNat

end

end A231860.P4839489661345046071

/-! ## A231860.P15959798976414014193

`A231855(eq[7, A131818(n+1)])`
-/

namespace A231860.P15959798976414014193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231860.P15959798976414014193

/-!
# A231861: Number of 7Xn 0..2 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231861, there is no canonical definition to state claims against.
-/

/-! ## A231861.P12400007867480110697

`A231855(eq[8, A131818(n+1)])`
-/

namespace A231861.P12400007867480110697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231861.P12400007867480110697

/-!
# A231862: Weight distribution of [128,127,2] extended binary primitive BCH (or XBCH) code.

The programs for A231862, there is no canonical definition to state claims against.
-/

/-! ## A231862.P4942808433052008083

`C(A020639((n+2)!)^7, 2*n)`
-/

namespace A231862.P4942808433052008083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (Nat.factorial (n + 2)) ^ 7).toNat (2 * n)

end

end A231862.P4942808433052008083

/-! ## A231862.P2051705499266686178

`C(A183393(A183393(n+1)), 2*n)`
-/

namespace A231862.P2051705499266686178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A183393 (A183393 (n + 1)).toNat).toNat (2 * n)

end

end A231862.P2051705499266686178

/-!
# A231864: Partial sums of the second power of arithmetic derivative function A003415.

The programs for A231864, the canonical program `A231864.P18222772313538243149` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231864 has offset 1).

The definition of A231864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231864.P3595498249385695093

`∑[∑[A258057(n)]²]`
-/

namespace A231864.P3595498249385695093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P3595498249385695093

namespace A231864

/-- `∑[∑[A258057(n)]²]` -/
def P3595498249385695093.Spec : Prop :=
  ∀ n, P3595498249385695093.a n = A231864 (n + 1)

end A231864

/-! ## A231864.P13586781162341471711

`∑[A003415(n+1)²]`
-/

namespace A231864.P13586781162341471711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P13586781162341471711

namespace A231864

/-- `∑[A003415(n+1)²]` -/
def P13586781162341471711.Spec : Prop :=
  ∀ n, P13586781162341471711.a n = A231864 (n + 1)

theorem P13586781162341471711.correct : P13586781162341471711.Spec := by
  intro n
  simp only [A231864, Nat.add_sub_cancel, A231864.P13586781162341471711.f1, A231864.P13586781162341471711.a, A231864.P18222772313538243149.f1, A231864.P18222772313538243149.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A300251, A300251.P1650091160704991913.f1, A300251.P1650091160704991913.a, A300252, A300252.P5081431345107026110.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231864

/-! ## A231864.P4983233889374238229

`∑[(A168036(n+1)+n+1)²]`
-/

namespace A231864.P4983233889374238229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168036 (n + 1) + (n + 1 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P4983233889374238229

namespace A231864

/-- `∑[(A168036(n+1)+n+1)²]` -/
def P4983233889374238229.Spec : Prop :=
  ∀ n, P4983233889374238229.a n = A231864 (n + 1)

theorem P4983233889374238229.correct : P4983233889374238229.Spec := by
  intro n
  simp only [A231864, Nat.add_sub_cancel, A231864.P4983233889374238229.f1, A231864.P4983233889374238229.a, A231864.P18222772313538243149.f1, A231864.P18222772313538243149.a, A168036, A168036.P2098310487666722677.a, A300251, A300251.P1650091160704991913.f1, A300251.P1650091160704991913.a, A300252, A300252.P5081431345107026110.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231864

/-! ## A231864.P4248449736686748103

`∑[(n+1-A129283(n+1))²]`
-/

namespace A231864.P4248449736686748103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A129283 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P4248449736686748103

namespace A231864

/-- `∑[(n+1-A129283(n+1))²]` -/
def P4248449736686748103.Spec : Prop :=
  ∀ n, P4248449736686748103.a n = A231864 (n + 1)

theorem P4248449736686748103.correct : P4248449736686748103.Spec := by
  intro n
  simp only [A231864, Nat.add_sub_cancel, A231864.P4248449736686748103.f1, A231864.P4248449736686748103.a, A231864.P18222772313538243149.f1, A231864.P18222772313538243149.a, A129283, A129283.P3962818557550655141.a, A300251, A300251.P1650091160704991913.f1, A300251.P1650091160704991913.a, A300252, A300252.P5081431345107026110.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231864

/-! ## A231864.P7566423925728992135

`∑[(A190116(n+1)/(n+1))²]`
-/

namespace A231864.P7566423925728992135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A190116 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P7566423925728992135

namespace A231864

/-- `∑[(A190116(n+1)/(n+1))²]` -/
def P7566423925728992135.Spec : Prop :=
  ∀ n, P7566423925728992135.a n = (A231864 (n + 1) : ℚ)

end A231864

/-! ## A231864.P18222772313538243149

`∑[(A300252(n+1)+A300251(n+1))²]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A231864

/-- `∑[(A300252(n+1)+A300251(n+1))²]` -/
def P18222772313538243149.Spec : Prop :=
  ∀ n, P18222772313538243149.a n = A231864 (n + 1)

theorem P18222772313538243149.correct : P18222772313538243149.Spec := by
  intro n
  simp only [A231864, Nat.add_sub_cancel]

end A231864

/-! ## A231864.P17823069510885977361

`∑[(A083345(n+1)*A085731(n+1))²]`
-/

namespace A231864.P17823069510885977361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083345 (n + 1) * A085731 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P17823069510885977361

namespace A231864

/-- `∑[(A083345(n+1)*A085731(n+1))²]` -/
def P17823069510885977361.Spec : Prop :=
  ∀ n, P17823069510885977361.a n = A231864 (n + 1)

end A231864

/-! ## A231864.P14611660235527617254

`∑[(A348492(n+1)*A348493(n+1))²]`
-/

namespace A231864.P14611660235527617254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) * A348493 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P14611660235527617254

namespace A231864

/-- `∑[(A348492(n+1)*A348493(n+1))²]` -/
def P14611660235527617254.Spec : Prop :=
  ∀ n, P14611660235527617254.a n = A231864 (n + 1)

end A231864

/-! ## A231864.P17168513647772230745

`∑[(A086130(n+1)/A083346(n+1))²]`
-/

namespace A231864.P17168513647772230745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A086130 (n + 1) : ℚ) / (A083346 (n + 1) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P17168513647772230745

namespace A231864

/-- `∑[(A086130(n+1)/A083346(n+1))²]` -/
def P17168513647772230745.Spec : Prop :=
  ∀ n, P17168513647772230745.a n = (A231864 (n + 1) : ℚ)

end A231864

/-! ## A231864.P4975658540247846996

`∑[Δ[-∑[A003415(n)]]²]`
-/

namespace A231864.P4975658540247846996
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P4975658540247846996

namespace A231864

/-- `∑[Δ[-∑[A003415(n)]]²]` -/
def P4975658540247846996.Spec : Prop :=
  ∀ n, P4975658540247846996.a n = A231864 (n + 1)

end A231864

/-! ## A231864.P11490019204940687029

`∑[A319703(2*(n+1))²]`
-/

namespace A231864.P11490019204940687029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P11490019204940687029

namespace A231864

/-- `∑[A319703(2*(n+1))²]` -/
def P11490019204940687029.Spec : Prop :=
  ∀ n, P11490019204940687029.a n = A231864 (n + 1)

end A231864

/-! ## A231864.P8018626397687108292

`∑[A068512(2*(n+1))²]`
-/

namespace A231864.P8018626397687108292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068512 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P8018626397687108292

namespace A231864

/-- `∑[A068512(2*(n+1))²]` -/
def P8018626397687108292.Spec : Prop :=
  ∀ n, P8018626397687108292.a n = A231864 (n + 1)

end A231864

/-! ## A231864.P9515724505417095508

`∑[A258197(A000124(n+1))²]`
-/

namespace A231864.P9515724505417095508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258197 (A000124 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231864.P9515724505417095508

namespace A231864

/-- `∑[A258197(A000124(n+1))²]` -/
def P9515724505417095508.Spec : Prop :=
  ∀ n, P9515724505417095508.a n = A231864 (n + 1)

end A231864

/-!
# A231865: Numbers k such that (43^k + 1)/44 is prime.

The programs for A231865, there is no canonical definition to state claims against.
-/

/-! ## A231865.P5925740172850091459

`A084127(A081184(n)+6)`
-/

namespace A231865.P5925740172850091459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (A081184 n + 6).toNat

end

end A231865.P5925740172850091459

/-!
# A231866: E.g.f. A(x) satisfies: A'(x) = A(x*A'(x)^2) with A(0)=1.

The programs for A231866, there is no canonical definition to state claims against.
-/

/-! ## A231866.P5019152820333215783

`A147336(ceil(n*ϕ²)+1)`
-/

namespace A231866.P5019152820333215783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147336 (⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ + 1).toNat

end

end A231866.P5019152820333215783

/-! ## A231866.P18043698417405382013

`A285759(A005799(n))`
-/

namespace A231866.P18043698417405382013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285759 (A005799 n).toNat

end

end A231866.P18043698417405382013

/-!
# A231868: E.g.f. satisfies: A'(x) = A(x*A(x)) with A(0)=1.

The programs for A231868, there is no canonical definition to state claims against.
-/

/-! ## A231868.P15909589295438134858

`A057354(4*ceil(A125282(n+1)/10))`
-/

namespace A231868.P15909589295438134858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (4 * ⌈(A125282 (n + 1) : ℚ) / 10⌉).toNat

end

end A231868.P15909589295438134858

/-! ## A231868.P8849908991175938811

`A178503(A128240(n+1)+2^val(n+1, 2))`
-/

namespace A231868.P8849908991175938811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (A128240 (n + 1) + (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)).toNat

end

end A231868.P8849908991175938811

/-!
# A231869: Elements of the planar rooted trees sub-operad PRT of TN generated by 01.

The programs for A231869, there is no canonical definition to state claims against.
-/

/-! ## A231869.P13818410534120980168

`A071159(A057548(n))`
-/

namespace A231869.P13818410534120980168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071159 (A057548 n).toNat

end

end A231869.P13818410534120980168

/-! ## A231869.P8513686161963004047

`A358615(A102800(n+1))`
-/

namespace A231869.P8513686161963004047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358615 (A102800 (n + 1)).toNat

end

end A231869.P8513686161963004047

/-! ## A231869.P3989283127171393223

`A358615(A133137(n+1))`
-/

namespace A231869.P3989283127171393223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358615 (A133137 (n + 1)).toNat

end

end A231869.P3989283127171393223

/-! ## A231869.P6004827375925069444

`A358615(A160543(n+1))`
-/

namespace A231869.P6004827375925069444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358615 (A160543 (n + 1)).toNat

end

end A231869.P6004827375925069444

/-! ## A231869.P16691813508238687558

`A358615(A023810(n+2))`
-/

namespace A231869.P16691813508238687558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358615 (A023810 (n + 2)).toNat

end

end A231869.P16691813508238687558

/-!
# A231870: Elements of the sub-operad FCat(2) of TN generated by 00, 01, 02.

The programs for A231870, there is no canonical definition to state claims against.
-/

/-! ## A231870.P15651195214526230055

`A231874(A156136(∑[n]))`
-/

namespace A231870.P15651195214526230055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231874 (A156136 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A231870.P15651195214526230055

/-! ## A231870.P16276287350475707989

`A231874(A024661(n)+1)`
-/

namespace A231870.P16276287350475707989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231874 (A024661 n + 1).toNat

end

end A231870.P16276287350475707989

/-! ## A231870.P4759361181007686441

`A231874(A043315(n+1))`
-/

namespace A231870.P4759361181007686441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231874 (A043315 (n + 1)).toNat

end

end A231870.P4759361181007686441

/-! ## A231870.P1263944370257839623

`A231874(A044912(n+1))`
-/

namespace A231870.P1263944370257839623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231874 (A044912 (n + 1)).toNat

end

end A231870.P1263944370257839623

/-! ## A231870.P3736782393375594183

`A231874(A055649(n+1))`
-/

namespace A231870.P3736782393375594183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231874 (A055649 (n + 1)).toNat

end

end A231870.P3736782393375594183

/-!
# A231871: Elements of the Schroeder trees sub-operad Schr of TN generated by 00, 01, 10.

The programs for A231871, there is no canonical definition to state claims against.
-/

/-! ## A231871.P5608931905271933417

`record[gcd(A054908(n), A240763(n+1))]`
-/

namespace A231871.P5608931905271933417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054908 n) (A240763 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231871.P5608931905271933417

/-! ## A231871.P3958569504538354592

`or(A185035(A185035(n)), A240763(n+1))`
-/

namespace A231871.P3958569504538354592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185035 (A185035 n).toNat) (A240763 (n + 1))

end

end A231871.P3958569504538354592

/-!
# A231872: Elements of the Motzkin words sub-operad Motz of TN generated by 00 and 010.

The programs for A231872, there is no canonical definition to state claims against.
-/

/-! ## A231872.P13399498116345153993

`∩[A071158(n+1), A239903(n)]`
-/

namespace A231872.P13399498116345153993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231872.P13399498116345153993

/-! ## A231872.P18356303153333882457

`∩[A071158(n+1), A071159(n+1)]`
-/

namespace A231872.P18356303153333882457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231872.P18356303153333882457

/-! ## A231872.P18172696608021553336

`A231873(floor(acot(n))+2*n)`
-/

namespace A231872.P18172696608021553336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231873 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat

end

end A231872.P18172696608021553336

/-! ## A231872.P4395582626937799641

`A231873(round(1/acot(n))+n)`
-/

namespace A231872.P4395582626937799641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231873 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A231872.P4395582626937799641

/-! ## A231872.P16393451385476870053

`A231873(floor(3/acot(n))-n)`
-/

namespace A231872.P16393451385476870053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231873 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

end

end A231872.P16393451385476870053

/-!
# A231873: Elements of the integer compositions sub-operad Comp of TN_2 generated by 00 and 010.

The programs for A231873, there is no canonical definition to state claims against.
-/

/-! ## A231873.P4639718778816427817

`2*5*a(floor((n-1)/2))-or(n, -2)` with `a(0)=1`
-/

namespace A231873.P4639718778816427817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (5 * a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat) - Int.lor (n : ℤ) (-2)

end

end A231873.P4639718778816427817

/-! ## A231873.P9240144494504091477

`floor(A130838(n+1)/10)`
-/

namespace A231873.P9240144494504091477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130838 (n + 1) : ℚ) / 10⌋

end

end A231873.P9240144494504091477

/-! ## A231873.P12028526104749444457

`A007931(2^floor(log2(n+1))+n)`
-/

namespace A231873.P12028526104749444457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (2 ^ Nat.log 2 (n + 1) + n)

end

end A231873.P12028526104749444457

/-! ## A231873.P8822011454336139025

`A284920(2^floor(log2(n+1))+n)/2`
-/

namespace A231873.P8822011454336139025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284920 (2 ^ Nat.log 2 (n + 1) + n) : ℚ) / 2

end

end A231873.P8822011454336139025

/-! ## A231873.P7258793541776053091

`A007089(A132140(n+1))`
-/

namespace A231873.P7258793541776053091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A132140 (n + 1)).toNat

end

end A231873.P7258793541776053091

/-!
# A231874: Elements of the segmented integer compositions sub-operad SComp of TN_3 generated by 00, 01, 02.

The programs for A231874, there is no canonical definition to state claims against.
-/

/-! ## A231874.P11597870418611362116

`A007932(A132171(n)+n)`
-/

namespace A231874.P11597870418611362116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (A132171 n + (n : ℤ)).toNat

end

end A231874.P11597870418611362116

/-! ## A231874.P17809127874936087007

`∩[A007090(n), A231870(n+1)]`
-/

namespace A231874.P17809127874936087007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231874.P17809127874936087007

/-! ## A231874.P3184346979016909085

`∩[A007932(n+1), A089951(n+1)]`
-/

namespace A231874.P3184346979016909085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231874.P3184346979016909085

/-! ## A231874.P1991692640583308016

`∩[A007932(n+1), A231870(n+1)]`
-/

namespace A231874.P1991692640583308016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231874.P1991692640583308016

/-! ## A231874.P16595131156924995206

`∩[A008541(n+1), A231870(n+1)]`
-/

namespace A231874.P16595131156924995206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231874.P16595131156924995206

/-!
# A231875: Elements of the triassociative sub-operad Tri of TN generated by 01, 10 and 11.

The programs for A231875, there is no canonical definition to state claims against.
-/

/-! ## A231875.P10876960664529553048

`eq[6, or(2, A086066(n))]`
-/

namespace A231875.P10876960664529553048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A086066 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231875.P10876960664529553048

/-! ## A231875.P5729885533110445339

`A007931(comp[2^n-1])`
-/

namespace A231875.P5729885533110445339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A231875.P5729885533110445339

/-! ## A231875.P15435192445946441734

`eq[2, A062078(n+1)]+1`
-/

namespace A231875.P15435192445946441734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231875.P15435192445946441734

/-! ## A231875.P4701865833773925625

`floor(A111066(2*(n+1))/10)`
-/

namespace A231875.P4701865833773925625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111066 (2 * (n + 1)) : ℚ) / 10⌋

end

end A231875.P4701865833773925625

/-! ## A231875.P8937754051392099997

`round(A111066(2*n+2)/10)`
-/

namespace A231875.P8937754051392099997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A111066 (2 * n + 2) : ℚ) / 10)

end

end A231875.P8937754051392099997

/-!
# A231876: Numbers k such that omega(k)^2 (cf. A001221) divides k.

The programs for A231876, the canonical program `A231876.P18340019204035770853` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231876 has offset 1).

The definition of A231876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231876.P18340019204035770853

`eq[n+1, lcm(n+1, A001221(n+1)²)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A231876

/-- `eq[n+1, lcm(n+1, A001221(n+1)²)]+1` -/
def P18340019204035770853.Spec : Prop :=
  ∀ n, (P18340019204035770853.a n : ℤ) = A231876 (n + 1)

theorem P18340019204035770853.correct : P18340019204035770853.Spec := by
  intro n
  simp only [A231876, Nat.add_sub_cancel]

end A231876

/-! ## A231876.P9981417395090606351

`eq[char[A231877(n+1)], A151933(n)]`
-/

namespace A231876.P9981417395090606351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231877 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A231876.P9981417395090606351

namespace A231876

/-- `eq[char[A231877(n+1)], A151933(n)]` -/
def P9981417395090606351.Spec : Prop :=
  ∀ n, (P9981417395090606351.a n : ℤ) = A231876 (n + 1)

end A231876

/-! ## A231876.P3156112142661076745

`lt[A286851(n), A158662(A284289(3*n))]`
-/

namespace A231876.P3156112142661076745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158662 (A284289 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231876.P3156112142661076745

namespace A231876

/-- `lt[A286851(n), A158662(A284289(3*n))]` -/
def P3156112142661076745.Spec : Prop :=
  ∀ n, (P3156112142661076745.a n : ℤ) = A231876 (n + 1)

end A231876

/-! ## A231876.P18119929844526669066

`record[A304686(A328167(n+1)+2)]`
-/

namespace A231876.P18119929844526669066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (A328167 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231876.P18119929844526669066

namespace A231876

/-- `record[A304686(A328167(n+1)+2)]` -/
def P18119929844526669066.Spec : Prop :=
  ∀ n, P18119929844526669066.a n = A231876 (n + 1)

end A231876

/-! ## A231876.P311104101450451999

`A334298(n+2)%A334331(n+1)`
-/

namespace A231876.P311104101450451999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334298 (n + 2)) (A334331 (n + 1))

end

end A231876.P311104101450451999

namespace A231876

/-- `A334298(n+2)%A334331(n+1)` -/
def P311104101450451999.Spec : Prop :=
  ∀ n, P311104101450451999.a n = A231876 (n + 1)

end A231876

/-!
# A231877: Numbers k such that omega(k)^2 (cf. A001221) does not divide k.

The programs for A231877, the canonical program `A231877.P9922668353028729998` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231877 has offset 1).

The definition of A231877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231877.P9922668353028729998

`lt[n*char[A231876(n+1)], n]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231877

/-- `lt[n*char[A231876(n+1)], n]` -/
def P9922668353028729998.Spec : Prop :=
  ∀ n, (P9922668353028729998.a n : ℤ) = A231877 (n + 1)

theorem P9922668353028729998.correct : P9922668353028729998.Spec := by
  intro n
  simp only [A231877, Nat.add_sub_cancel]

end A231877

/-! ## A231877.P1745759408824207906

`eq[char[A231876(n+1)], A000007(n)]`
-/

namespace A231877.P1745759408824207906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231876 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A231877.P1745759408824207906

namespace A231877

/-- `eq[char[A231876(n+1)], A000007(n)]` -/
def P1745759408824207906.Spec : Prop :=
  ∀ n, (P1745759408824207906.a n : ℤ) = A231877 (n + 1)

end A231877

/-! ## A231877.P12327313683482272324

`eq[char[A231876(n+1)], A000038(n)]`
-/

namespace A231877.P12327313683482272324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231876 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A231877.P12327313683482272324

namespace A231877

/-- `eq[char[A231876(n+1)], A000038(n)]` -/
def P12327313683482272324.Spec : Prop :=
  ∀ n, (P12327313683482272324.a n : ℤ) = A231877 (n + 1)

end A231877

/-! ## A231877.P8228790397336406293

`lt[char[A231876(n+1)], n/A129484(n+1)]`
-/

namespace A231877.P8228790397336406293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231876 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A129484 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A231877.P8228790397336406293

namespace A231877

/-- `lt[char[A231876(n+1)], n/A129484(n+1)]` -/
def P8228790397336406293.Spec : Prop :=
  ∀ n, (P8228790397336406293.a n : ℤ) = A231877 (n + 1)

end A231877

/-! ## A231877.P12478748248658812935

`lt[char[A231876(n+1)], n/A213969(n+1)]`
-/

namespace A231877.P12478748248658812935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231876 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A213969 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A231877.P12478748248658812935

namespace A231877

/-- `lt[char[A231876(n+1)], n/A213969(n+1)]` -/
def P12478748248658812935.Spec : Prop :=
  ∀ n, (P12478748248658812935.a n : ℤ) = A231877 (n + 1)

end A231877

/-!
# A231878: Numbers k such that bigomega(k)^2 (cf. A001222) divides k.

The programs for A231878, the canonical program `A231878.P16496121419704727293` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231878 has offset 1).

The definition of A231878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231878.P16508521925224132725

`∪[A000040(n+1), A224705(n+1)]`
-/

namespace A231878.P16508521925224132725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231878.P16508521925224132725

namespace A231878

/-- `∪[A000040(n+1), A224705(n+1)]` -/
def P16508521925224132725.Spec : Prop :=
  ∀ n, (P16508521925224132725.a n : ℤ) = A231878 (n + 1)

end A231878

/-! ## A231878.P570147204847312472

`∪[A175787(n+1), A224705(n+1)]`
-/

namespace A231878.P570147204847312472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231878.P570147204847312472

namespace A231878

/-- `∪[A175787(n+1), A224705(n+1)]` -/
def P570147204847312472.Spec : Prop :=
  ∀ n, (P570147204847312472.a n : ℤ) = A231878 (n + 1)

end A231878

/-! ## A231878.P16496121419704727293

`eq[n+1, lcm(n+1, A001222(n+1)²)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A231878

/-- `eq[n+1, lcm(n+1, A001222(n+1)²)]+1` -/
def P16496121419704727293.Spec : Prop :=
  ∀ n, (P16496121419704727293.a n : ℤ) = A231878 (n + 1)

theorem P16496121419704727293.correct : P16496121419704727293.Spec := by
  intro n
  simp only [A231878, Nat.add_sub_cancel]

end A231878

/-! ## A231878.P12903950560062521437

`eq[char[A231879(n+1)], A000007(n)]`
-/

namespace A231878.P12903950560062521437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231879 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A231878.P12903950560062521437

namespace A231878

/-- `eq[char[A231879(n+1)], A000007(n)]` -/
def P12903950560062521437.Spec : Prop :=
  ∀ n, (P12903950560062521437.a n : ℤ) = A231878 (n + 1)

end A231878

/-! ## A231878.P945130055453866011

`eq[char[A231879(n+1)], A000038(n)]`
-/

namespace A231878.P945130055453866011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231879 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A231878.P945130055453866011

namespace A231878

/-- `eq[char[A231879(n+1)], A000038(n)]` -/
def P945130055453866011.Spec : Prop :=
  ∀ n, (P945130055453866011.a n : ℤ) = A231878 (n + 1)

end A231878

/-!
# A231879: Numbers k such that bigomega(k)^2 (cf. A001222) does not divide k.

The programs for A231879, the canonical program `A231879.P1230613589456422052` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231879 has offset 1).

The definition of A231879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231879.P1230613589456422052

`comp[A231878(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231879

/-- `comp[A231878(n+1)-1]+1` -/
def P1230613589456422052.Spec : Prop :=
  ∀ n, (P1230613589456422052.a n : ℤ) = A231879 (n + 1)

theorem P1230613589456422052.correct : P1230613589456422052.Spec := by
  intro n
  simp only [A231879, Nat.add_sub_cancel]

end A231879

/-! ## A231879.P18193076664018484880

`eq[char[A231878(n+1)], A000007(n)]`
-/

namespace A231879.P18193076664018484880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A231879.P18193076664018484880

namespace A231879

/-- `eq[char[A231878(n+1)], A000007(n)]` -/
def P18193076664018484880.Spec : Prop :=
  ∀ n, (P18193076664018484880.a n : ℤ) = A231879 (n + 1)

end A231879

/-! ## A231879.P6511242228798758421

`eq[char[A231878(n+1)], A000038(n)]`
-/

namespace A231879.P6511242228798758421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A231879.P6511242228798758421

namespace A231879

/-- `eq[char[A231878(n+1)], A000038(n)]` -/
def P6511242228798758421.Spec : Prop :=
  ∀ n, (P6511242228798758421.a n : ℤ) = A231879 (n + 1)

end A231879

/-! ## A231879.P17052137764156248057

`eq[char[A231878(n+1)], A063667(53*n)]`
-/

namespace A231879.P17052137764156248057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 (53 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A231879.P17052137764156248057

namespace A231879

/-- `eq[char[A231878(n+1)], A063667(53*n)]` -/
def P17052137764156248057.Spec : Prop :=
  ∀ n, (P17052137764156248057.a n : ℤ) = A231879 (n + 1)

end A231879

/-! ## A231879.P17936077740134841702

`eq[(A001045(n)+1)%2, char[A231878(n+1)]]`
-/

namespace A231879.P17936077740134841702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001045 n + 1) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A231879.P17936077740134841702

namespace A231879

/-- `eq[(A001045(n)+1)%2, char[A231878(n+1)]]` -/
def P17936077740134841702.Spec : Prop :=
  ∀ n, (P17936077740134841702.a n : ℤ) = A231879 (n + 1)

end A231879

/-! ## A231879.P16683085561616214794

`eq[1, A178334(n)+char[A231878(n+1)]]`
-/

namespace A231879.P16683085561616214794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231879.P16683085561616214794

namespace A231879

/-- `eq[1, A178334(n)+char[A231878(n+1)]]` -/
def P16683085561616214794.Spec : Prop :=
  ∀ n, (P16683085561616214794.a n : ℤ) = A231879 (n + 1)

end A231879

/-!
# A231882: Number of maximal 2-independent sets in the planar 3 X n grid graph.

The programs for A231882, the canonical program `A231882.P3367373246752248893` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231882 has offset 0).

The definition of A231882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231882.P3367373246752248893

`ogf((3x+x^2+7x^3-3x^4+4x^5-4x^6-x^7-2x^8-x^9)/(1-x-3x^3-x^4-x^6+2x^7+x^9))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231882

/-- `ogf((3x+x^2+7x^3-3x^4+4x^5-4x^6-x^7-2x^8-x^9)/(1-x-3x^3-x^4-x^6+2x^7+x^9))` -/
def P3367373246752248893.Spec : Prop :=
  ∀ n, P3367373246752248893.a n = A231882 n

theorem P3367373246752248893.correct : P3367373246752248893.Spec := by
  intro n
  simp only [A231882]

end A231882

/-!
# A231884: Number of maximal 2-independent sets in the 3-dimensional (2, 2, n) grid graph.

The programs for A231884, the canonical program `A231884.P5878921414370286602` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231884 has offset 0).

The definition of A231884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231884.P5878921414370286602

`ogf((4x+4x^2+8x^3+4x^4-12x^5-12x^6-4x^7)/(1-3x^2-4x^3-4x^4+9x^6+3x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231884

/-- `ogf((4x+4x^2+8x^3+4x^4-12x^5-12x^6-4x^7)/(1-3x^2-4x^3-4x^4+9x^6+3x^7))` -/
def P5878921414370286602.Spec : Prop :=
  ∀ n, P5878921414370286602.a n = A231884 n

theorem P5878921414370286602.correct : P5878921414370286602.Spec := by
  intro n
  simp only [A231884]

end A231884

/-! ## A231884.P12389071222979025719

`A172307(A002865(3*n+1)+A001065(n+1))`
-/

namespace A231884.P12389071222979025719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172307 (A002865 (3 * n + 1) + A001065 (n + 1)).toNat

end

end A231884.P12389071222979025719

namespace A231884

/-- `A172307(A002865(3*n+1)+A001065(n+1))` -/
def P12389071222979025719.Spec : Prop :=
  ∀ n, P12389071222979025719.a n = A231884 n

end A231884

/-!
# A231885: Primes of the form Catalan(k) - 1.

The programs for A231885, there is no canonical definition to state claims against.
-/

/-! ## A231885.P11563142967089825508

`A001453(A053427(n+1))`
-/

namespace A231885.P11563142967089825508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001453 (A053427 (n + 1)).toNat

end

end A231885.P11563142967089825508

/-! ## A231885.P13364862433317631310

`∩[A001453(n+2), A173867(n+3)]`
-/

namespace A231885.P13364862433317631310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001453 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173867 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231885.P13364862433317631310

/-! ## A231885.P11422452538995761172

`A057428(n+1)+A000108(A053427(n+1))`
-/

namespace A231885.P11422452538995761172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A000108 (A053427 (n + 1)).toNat

end

end A231885.P11422452538995761172

/-! ## A231885.P16608783421549626557

`A120304(A053427(n+1))+A057427(n+2)`
-/

namespace A231885.P16608783421549626557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (A053427 (n + 1)).toNat + A057427 (n + 2)

end

end A231885.P16608783421549626557

/-! ## A231885.P5314757225049553470

`A120304(A053427(n+1))+A057979(2*n)`
-/

namespace A231885.P5314757225049553470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (A053427 (n + 1)).toNat + A057979 (2 * n)

end

end A231885.P5314757225049553470

/-!
# A231888: Number of maximal 3-independent sets in the 3-dimensional (3, 3, n) grid graph.

The programs for A231888, there is no canonical definition to state claims against.
-/

/-! ## A231888.P14535219928505146149

`A118759(6*n²+n)+C(n, 4)`
-/

namespace A231888.P14535219928505146149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (6 * n ^ 2 + n) + (Nat.choose n 4 : ℤ)

end

end A231888.P14535219928505146149

/-!
# A231889: Base 2 analog of A231880 (written in base 2).

The programs for A231889, there is no canonical definition to state claims against.
-/

/-! ## A231889.P2133333543715494513

`A007088(A231890(n))`
-/

namespace A231889.P2133333543715494513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A231890 n).toNat

end

end A231889.P2133333543715494513

/-! ## A231889.P15700110733106205027

`A185544(2*A231890(n))`
-/

namespace A231889.P15700110733106205027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A231890 n).toNat

end

end A231889.P15700110733106205027

/-! ## A231889.P17856110357260805360

`A185544(A231890(n)+A231890(n))`
-/

namespace A231889.P17856110357260805360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A231890 n + A231890 n).toNat

end

end A231889.P17856110357260805360

/-!
# A231890: Terms of A231889 (base-2 analog of A231880) written in base 10.

The programs for A231890, there is no canonical definition to state claims against.
-/

/-! ## A231890.P11490730216051222941

`A053830(A231889(n))*A054977(A001611(n))`
-/

namespace A231890.P11490730216051222941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A231889 n).toNat * A054977 (A001611 n).toNat

end

end A231890.P11490730216051222941

/-! ## A231890.P814548976414720309

`A001222(A178608(n+1))*A053830(A231889(n))`
-/

namespace A231890.P814548976414720309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A178608 (n + 1)).toNat * A053830 (A231889 n).toNat

end

end A231890.P814548976414720309

/-! ## A231890.P13157804615848876729

`A053830(A231889(n))%A000040(A017993(n))`
-/

namespace A231890.P13157804615848876729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053830 (A231889 n).toNat) (A000040 (A017993 n).toNat)

end

end A231890.P13157804615848876729

/-! ## A231890.P2380714526227681013

`A028897(A231889(n))`
-/

namespace A231890.P2380714526227681013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A231889 n).toNat

end

end A231890.P2380714526227681013

/-!
# A231891: Base-2 analog of A231881 (written in base 2).

The programs for A231891, there is no canonical definition to state claims against.
-/

/-! ## A231891.P18355395885220958332

`A007088(A231892(n))`
-/

namespace A231891.P18355395885220958332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A231892 n).toNat

end

end A231891.P18355395885220958332

/-! ## A231891.P10890512142375509860

`A185544(2*A231892(n))`
-/

namespace A231891.P10890512142375509860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A231892 n).toNat

end

end A231891.P10890512142375509860

/-! ## A231891.P3846406696506717644

`A185544(A231892(n)+A231892(n))`
-/

namespace A231891.P3846406696506717644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A231892 n + A231892 n).toNat

end

end A231891.P3846406696506717644

/-!
# A231892: Terms of A231891 (base-2 analog of A231881) written in base 10.

The programs for A231892, there is no canonical definition to state claims against.
-/

/-! ## A231892.P14430709036929000771

`A068505(A231891(n))`
-/

namespace A231892.P14430709036929000771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A231891 n).toNat

end

end A231892.P14430709036929000771

/-! ## A231892.P11229611872449100219

`A075448(A068962(n+1))+A053830(A231891(n))`
-/

namespace A231892.P11229611872449100219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075448 (A068962 (n + 1)).toNat + A053830 (A231891 n).toNat

end

end A231892.P11229611872449100219

/-! ## A231892.P1615645688184296454

`A324852(A201718(n+1))+A053830(A231891(n))`
-/

namespace A231892.P1615645688184296454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (A201718 (n + 1)).toNat + A053830 (A231891 n).toNat

end

end A231892.P1615645688184296454

/-! ## A231892.P12274008970684257610

`A053830(A231891(n))^A164844(A059995(n))²`
-/

namespace A231892.P12274008970684257610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053830 (A231891 n).toNat : ℚ) ^ (A164844 (A059995 n).toNat ^ 2 : ℤ)

end

end A231892.P12274008970684257610

/-!
# A231894: Boustrophedon transform of the Catalan numbers A000108.

The programs for A231894, there is no canonical definition to state claims against.
-/

/-! ## A231894.P6674409746381962457

`A008621(A273027(n))+n`
-/

namespace A231894.P6674409746381962457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A273027 n).toNat + (n : ℤ)

end

end A231894.P6674409746381962457

/-!
# A231895: a(n) = 2*A000111(n+1) + A000111(n).

The programs for A231895, there is no canonical definition to state claims against.
-/

/-! ## A231895.P15090849771268892003

`2*A000111(n+1)+A000111(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A231895.P15090849771268892003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000111 (n + 1) + A000111 n

end

end A231895.P15090849771268892003

/-! ## A231895.P6640531685464525869

`A260786(n+1)+A000111(n)`
-/

namespace A231895.P6640531685464525869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260786 (n + 1) + A000111 n

end

end A231895.P6640531685464525869

/-! ## A231895.P2325079278052643464

`A000111(n)+Δ[2*A173253(n)]`
-/

namespace A231895.P2325079278052643464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n + (f1 (n + 1) - f1 n)

end

end A231895.P2325079278052643464

/-! ## A231895.P18334660849186662123

`A008282(A238531(n+2))+abs(A163982(n))`
-/

namespace A231895.P18334660849186662123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A238531 (n + 2)).toNat + |A163982 n|

end

end A231895.P18334660849186662123

/-! ## A231895.P10919739312809757795

`A001250(n+1)+A000111(n)+A000007(n)`
-/

namespace A231895.P10919739312809757795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 (n + 1) + (A000111 n + A000007 n)

end

end A231895.P10919739312809757795

/-! ## A231895.P10564742900955570743

`A001250(A141044(n+1)+n)+A000111(n)`
-/

namespace A231895.P10564742900955570743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 (A141044 (n + 1) + (n : ℤ)).toNat + A000111 n

end

end A231895.P10564742900955570743

/-!
# A231896: a(n) = 4*a(n-1) - a(n-2) with a(0) = 0, a(1) = 4.

The programs for A231896, the canonical program `A231896.P4337462992292041080` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231896 has offset 0).

The definition of A231896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A231896.P4337462992292041080`, by `A231896.P4337462992292041080.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A231896.P16483119178140116865

`ogf(4x/(1-4x+x^2))`
-/

namespace A231896.P16483119178140116865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -4, 1] n

end

end A231896.P16483119178140116865

namespace A231896

/-- `ogf(4x/(1-4x+x^2))` -/
def P16483119178140116865.Spec : Prop :=
  ∀ n, P16483119178140116865.a n = A231896 n

end A231896

/-! ## A231896.P4337462992292041080

`4*a(n-1)-a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231896

/-- `4*a(n-1)-a(n-2)` -/
def P4337462992292041080.Spec : Prop :=
  ∀ n, P4337462992292041080.a n = A231896 n

theorem P4337462992292041080.correct : P4337462992292041080.Spec := by
  intro n
  simp only [A231896]

end A231896

/-! ## A231896.P14024645880739652136

`a(n-1)/(1/2)²-a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A231896.P14024645880739652136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A231896.P14024645880739652136

namespace A231896

/-- `a(n-1)/(1/2)²-a(n-2)` -/
def P14024645880739652136.Spec : Prop :=
  ∀ n, P14024645880739652136.a n = (A231896 n : ℚ)

end A231896

/-! ## A231896.P8709875278918969274

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A231896.P8709875278918969274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2))))

end

end A231896.P8709875278918969274

namespace A231896

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P8709875278918969274.Spec : Prop :=
  ∀ n, P8709875278918969274.a n = A231896 n

theorem P8709875278918969274.correct : P8709875278918969274.Spec := by
  intro n
  simp only [A231896, Nat.add_sub_cancel, A231896.P8709875278918969274.a, A231896.P4337462992292041080.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A231896

/-! ## A231896.P6762985627161590047

`a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=4`
-/

namespace A231896.P6762985627161590047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A231896.P6762985627161590047

namespace A231896

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` -/
def P6762985627161590047.Spec : Prop :=
  ∀ n, P6762985627161590047.a n = A231896 n

theorem P6762985627161590047.correct : P6762985627161590047.Spec := by
  intro n
  simp only [A231896, Nat.add_sub_cancel, A231896.P6762985627161590047.a, A231896.P4337462992292041080.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A231896

/-! ## A231896.P14592856909423033587

`2*A052530(n)`
-/

namespace A231896.P14592856909423033587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052530 n

end

end A231896.P14592856909423033587

namespace A231896

/-- `2*A052530(n)` -/
def P14592856909423033587.Spec : Prop :=
  ∀ n, P14592856909423033587.a n = A231896 n

end A231896

/-! ## A231896.P5469076784042832920

`4*A001353(n)`
-/

namespace A231896.P5469076784042832920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001353 n

end

end A231896.P5469076784042832920

namespace A231896

/-- `4*A001353(n)` -/
def P5469076784042832920.Spec : Prop :=
  ∀ n, P5469076784042832920.a n = A231896 n

end A231896

/-! ## A231896.P4346996947144203402

`abs(4*A106707(n))`
-/

namespace A231896.P4346996947144203402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * A106707 n|

end

end A231896.P4346996947144203402

namespace A231896

/-- `abs(4*A106707(n))` -/
def P4346996947144203402.Spec : Prop :=
  ∀ n, P4346996947144203402.a n = A231896 n

end A231896

/-! ## A231896.P3525131245618768796

`floor(A234272(n)/2)`
-/

namespace A231896.P3525131245618768796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A234272 n : ℚ) / 2⌋

end

end A231896.P3525131245618768796

namespace A231896

/-- `floor(A234272(n)/2)` -/
def P3525131245618768796.Spec : Prop :=
  ∀ n, P3525131245618768796.a n = A231896 n

end A231896

/-! ## A231896.P10306374141196788353

`Δ[2*A001835(n)]`
-/

namespace A231896.P10306374141196788353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231896.P10306374141196788353

namespace A231896

/-- `Δ[2*A001835(n)]` -/
def P10306374141196788353.Spec : Prop :=
  ∀ n, P10306374141196788353.a n = A231896 n

end A231896

/-! ## A231896.P13833878883456252037

`Δ[4*A101879(n)]`
-/

namespace A231896.P13833878883456252037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231896.P13833878883456252037

namespace A231896

/-- `Δ[4*A101879(n)]` -/
def P13833878883456252037.Spec : Prop :=
  ∀ n, P13833878883456252037.a n = A231896 n

end A231896

/-! ## A231896.P16630326123628509859

`2*(A071954(n)-2)`
-/

namespace A231896.P16630326123628509859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A071954 n - 2)

end

end A231896.P16630326123628509859

namespace A231896

/-- `2*(A071954(n)-2)` -/
def P16630326123628509859.Spec : Prop :=
  ∀ n, P16630326123628509859.a n = A231896 n

end A231896

/-! ## A231896.P1692469977638133088

`2*A048788(2*n)`
-/

namespace A231896.P1692469977638133088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048788 (2 * n)

end

end A231896.P1692469977638133088

namespace A231896

/-- `2*A048788(2*n)` -/
def P1692469977638133088.Spec : Prop :=
  ∀ n, P1692469977638133088.a n = A231896 n

end A231896

/-! ## A231896.P3456145701763815117

`4*(A072110(n)-1)`
-/

namespace A231896.P3456145701763815117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A072110 n - 1)

end

end A231896.P3456145701763815117

namespace A231896

/-- `4*(A072110(n)-1)` -/
def P3456145701763815117.Spec : Prop :=
  ∀ n, P3456145701763815117.a n = A231896 n

end A231896

/-! ## A231896.P10668197456053826507

`2*A254308(3*n)`
-/

namespace A231896.P10668197456053826507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254308 (3 * n)

end

end A231896.P10668197456053826507

namespace A231896

/-- `2*A254308(3*n)` -/
def P10668197456053826507.Spec : Prop :=
  ∀ n, P10668197456053826507.a n = A231896 n

end A231896

/-! ## A231896.P5983473346981294063

`4*A002530(2*n)`
-/

namespace A231896.P5983473346981294063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002530 (2 * n)

end

end A231896.P5983473346981294063

namespace A231896

/-- `4*A002530(2*n)` -/
def P5983473346981294063.Spec : Prop :=
  ∀ n, P5983473346981294063.a n = A231896 n

end A231896

/-! ## A231896.P13290776647255092259

`4*A249578(3*n)`
-/

namespace A231896.P13290776647255092259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A249578 (3 * n)

end

end A231896.P13290776647255092259

namespace A231896

/-- `4*A249578(3*n)` -/
def P13290776647255092259.Spec : Prop :=
  ∀ n, P13290776647255092259.a n = A231896 n

end A231896

/-! ## A231896.P9959255594238490978

`4/3*A005320(n)`
-/

namespace A231896.P9959255594238490978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A005320 n : ℚ)

end

end A231896.P9959255594238490978

namespace A231896

/-- `4/3*A005320(n)` -/
def P9959255594238490978.Spec : Prop :=
  ∀ n, P9959255594238490978.a n = (A231896 n : ℚ)

end A231896

/-! ## A231896.P9474232926407676511

`2*A162959(Δ[n²])`
-/

namespace A231896.P9474232926407676511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162959 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A231896.P9474232926407676511

namespace A231896

/-- `2*A162959(Δ[n²])` -/
def P9474232926407676511.Spec : Prop :=
  ∀ n, P9474232926407676511.a n = A231896 n

end A231896

/-! ## A231896.P12430128501179975436

`A005320(n)+A001353(n)`
-/

namespace A231896.P12430128501179975436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005320 n + A001353 n

end

end A231896.P12430128501179975436

namespace A231896

/-- `A005320(n)+A001353(n)` -/
def P12430128501179975436.Spec : Prop :=
  ∀ n, P12430128501179975436.a n = A231896 n

end A231896

/-!
# A231897: a(n) = smallest m such that wt(m^2) = n (where wt(i) = A000120(i)), or -1 if no such m exists.

The programs for A231897, there is no canonical definition to state claims against.
-/

/-! ## A231897.P13375740974907896640

`sqrt(A089998(n))`
-/

namespace A231897.P13375740974907896640
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A089998 n : ℝ)

end

end A231897.P13375740974907896640

/-! ## A231897.P14498041649858731848

`A089998(n)^abs(A065357(n)/2)`
-/

namespace A231897.P14498041649858731848
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A089998 n : ℝ) ^ (|(A065357 n : ℚ) / 2| : ℝ)

end

end A231897.P14498041649858731848

/-! ## A231897.P10870194328964394326

`A089998(n)^(A008486(n)/A008458(n))`
-/

namespace A231897.P10870194328964394326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A089998 n : ℝ) ^ ((A008486 n : ℚ) / (A008458 n : ℚ) : ℝ)

end

end A231897.P10870194328964394326

/-! ## A231897.P8221087033547345319

`A089998(n)^(A000040(n+1)/A100484(n+1))`
-/

namespace A231897.P8221087033547345319
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A089998 n : ℝ) ^ ((A000040 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ) : ℝ)

end

end A231897.P8221087033547345319

/-!
# A231899: E.g.f. A(x) satisfies: A'(x) = A(x*A'(x)^3) with A(0)=1.

The programs for A231899, there is no canonical definition to state claims against.
-/

/-! ## A231899.P7980254462357407455

`A274498(A006452(n))-2`
-/

namespace A231899.P7980254462357407455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274498 (A006452 n).toNat - 2

end

end A231899.P7980254462357407455

/-! ## A231899.P7692366799561290057

`A274498(A208126(n))-2`
-/

namespace A231899.P7692366799561290057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274498 (A208126 n).toNat - 2

end

end A231899.P7692366799561290057

