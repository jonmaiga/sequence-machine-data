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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A309800: Sum of the even parts appearing among the largest parts of the partitions of n into 4 parts.

The programs for A309800, there is no canonical definition to state claims against.
-/

/-! ## A309800.P8644001520013895066

`A308760(n)-A309798(n)`
-/

namespace A309800.P8644001520013895066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308760 n - A309798 n

end

end A309800.P8644001520013895066

/-! ## A309800.P15182825259359762416

`A240834(A309547(n+1)+1)`
-/

namespace A309800.P15182825259359762416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240834 (A309547 (n + 1) + 1).toNat

end

end A309800.P15182825259359762416

/-! ## A309800.P16770016739919661740

`A035650(3*(n+1))*A036452(A198951(n))`
-/

namespace A309800.P16770016739919661740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035650 (3 * (n + 1)) * A036452 (A198951 n).toNat

end

end A309800.P16770016739919661740

/-!
# A309801: If 2*n = Sum (2^e_k) then a(n) = Sum (e_k^n).

The programs for A309801, there is no canonical definition to state claims against.
-/

/-! ## A309801.P16177692654113792763

`∑{digits}[A063013(n+1), #^(n+1)]`
-/

namespace A309801.P16177692654113792763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063013 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ (n + 1)).sum

end

end A309801.P16177692654113792763

/-!
# A309802: a(n) is the coefficient of x^n in the polynomial Product_{i=1..n+2} (prime(i)*x-1).

The programs for A309802, there is no canonical definition to state claims against.
-/

/-! ## A309802.P14213747750515357076

`A260613(∑[n+3])`
-/

namespace A309802.P14213747750515357076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260613 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309802.P14213747750515357076

/-! ## A309802.P2647626585185563570

`abs(A070918(A034856(n+1)+4))`
-/

namespace A309802.P2647626585185563570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A070918 (A034856 (n + 1) + 4).toNat|

end

end A309802.P2647626585185563570

/-! ## A309802.P15937372148024555115

`record[A260613(n)/A260613(n+3)]`
-/

namespace A309802.P15937372148024555115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260613 n : ℚ) / (A260613 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309802.P15937372148024555115

/-! ## A309802.P4937381460939507386

`record[A260613(A055998(A008611(n)))]`
-/

namespace A309802.P4937381460939507386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260613 (A055998 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309802.P4937381460939507386

/-! ## A309802.P4473414024689628640

`lcm(A029883((n+1)²), A070918(A034856(n+1)+4))`
-/

namespace A309802.P4473414024689628640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029883 ((n + 1) ^ 2)) (A070918 (A034856 (n + 1) + 4).toNat)

end

end A309802.P4473414024689628640

/-!
# A309804: a(n) is the coefficient of x^n in the polynomial Product_{i=1..n+4} (prime(i)*x-1).

The programs for A309804, there is no canonical definition to state claims against.
-/

/-! ## A309804.P16787709525871661218

`A260613(eq[4, A025581(n)])`
-/

namespace A309804.P16787709525871661218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309804.P16787709525871661218

/-! ## A309804.P17428155048766948848

`A260613(eq[9, A099375(n)])`
-/

namespace A309804.P17428155048766948848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309804.P17428155048766948848

/-! ## A309804.P16464541583176939869

`A260613(eq[16, A130321(n)])`
-/

namespace A309804.P16464541583176939869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309804.P16464541583176939869

/-! ## A309804.P9068936557089532627

`A260613(eq[5, A004736(n+1)])`
-/

namespace A309804.P9068936557089532627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309804.P9068936557089532627

/-! ## A309804.P16903838949111855563

`A260613(2*n+A167614(n+2)+1)`
-/

namespace A309804.P16903838949111855563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260613 ((2 * n : ℤ) + (A167614 (n + 2) + 1)).toNat

end

end A309804.P16903838949111855563

/-!
# A309805: Maximum number of nonattacking kings placeable on a hexagonal board with edge-length n in Glinski's hexagonal chess.

The programs for A309805, the canonical program `A309805.P16758220771579573178` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309805 has offset 1).

The definition of A309805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309805.P16758220771579573178

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=10, a(4)=19`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309805

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P16758220771579573178.Spec : Prop :=
  ∀ n, P16758220771579573178.a n = A309805 (n + 1)

theorem P16758220771579573178.correct : P16758220771579573178.Spec := by
  intro n
  simp only [A309805, Nat.add_sub_cancel]

end A309805

/-! ## A309805.P2260090424133491882

`∑[lcm(2, n+1)-1]`
-/

namespace A309805.P2260090424133491882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309805.P2260090424133491882

namespace A309805

/-- `∑[lcm(2, n+1)-1]` -/
def P2260090424133491882.Spec : Prop :=
  ∀ n, P2260090424133491882.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P17348134253415218993

`∑[or(1, n*gcd(2, n))]`
-/

namespace A309805.P17348134253415218993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309805.P17348134253415218993

namespace A309805

/-- `∑[or(1, n*gcd(2, n))]` -/
def P17348134253415218993.Spec : Prop :=
  ∀ n, (P17348134253415218993.a n : ℤ) = A309805 (n + 1)

end A309805

/-! ## A309805.P3993268260713696940

`∑[C(xor(1, n), n)+n]`
-/

namespace A309805.P3993268260713696940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309805.P3993268260713696940

namespace A309805

/-- `∑[C(xor(1, n), n)+n]` -/
def P3993268260713696940.Spec : Prop :=
  ∀ n, (P3993268260713696940.a n : ℤ) = A309805 (n + 1)

end A309805

/-! ## A309805.P16480485951138157040

`∑[or(1, gcd(n+n, n²))]`
-/

namespace A309805.P16480485951138157040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.gcd (n + n) (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309805.P16480485951138157040

namespace A309805

/-- `∑[or(1, gcd(n+n, n²))]` -/
def P16480485951138157040.Spec : Prop :=
  ∀ n, (P16480485951138157040.a n : ℤ) = A309805 (n + 1)

end A309805

/-! ## A309805.P2612578555290668477

`∑[Δ[ceil(n/2)²]+n]`
-/

namespace A309805.P2612578555290668477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309805.P2612578555290668477

namespace A309805

/-- `∑[Δ[ceil(n/2)²]+n]` -/
def P2612578555290668477.Spec : Prop :=
  ∀ n, P2612578555290668477.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P6166966359208744377

`∑[n]+∑[1-a(n-1)]²` with `a(0)=1`
-/

namespace A309805.P6166966359208744377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A309805.P6166966359208744377

namespace A309805

/-- `∑[n]+∑[1-a(n-1)]²` -/
def P6166966359208744377.Spec : Prop :=
  ∀ n, P6166966359208744377.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P17788481344065581704

`A135370(n+1)-n`
-/

namespace A309805.P17788481344065581704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135370 (n + 1) - (n : ℤ)

end

end A309805.P17788481344065581704

namespace A309805

/-- `A135370(n+1)-n` -/
def P17788481344065581704.Spec : Prop :=
  ∀ n, P17788481344065581704.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P3152544973947566337

`∑[n]+A008619(n)²`
-/

namespace A309805.P3152544973947566337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A008619 n ^ 2

end

end A309805.P3152544973947566337

namespace A309805

/-- `∑[n]+A008619(n)²` -/
def P3152544973947566337.Spec : Prop :=
  ∀ n, P3152544973947566337.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P5718709795488158533

`A131805(n)+∑[n+1]`
-/

namespace A309805.P5718709795488158533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131805 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A309805.P5718709795488158533

namespace A309805

/-- `A131805(n)+∑[n+1]` -/
def P5718709795488158533.Spec : Prop :=
  ∀ n, P5718709795488158533.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P14815182185201022846

`∑[A066043(n+1)]-n`
-/

namespace A309805.P14815182185201022846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A309805.P14815182185201022846

namespace A309805

/-- `∑[A066043(n+1)]-n` -/
def P14815182185201022846.Spec : Prop :=
  ∀ n, P14815182185201022846.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P14082559343974223558

`2*A211539(n)+n+1`
-/

namespace A309805.P14082559343974223558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211539 n + (n + 1 : ℤ)

end

end A309805.P14082559343974223558

namespace A309805

/-- `2*A211539(n)+n+1` -/
def P14082559343974223558.Spec : Prop :=
  ∀ n, P14082559343974223558.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P10183682861175138459

`A393677(n)-a(n-1)` with `a(0)=1`
-/

namespace A309805.P10183682861175138459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A393677 n - a (n - 1)

end

end A309805.P10183682861175138459

namespace A309805

/-- `A393677(n)-a(n-1)` -/
def P10183682861175138459.Spec : Prop :=
  ∀ n, P10183682861175138459.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P15474148207454768071

`∑[n]+A110654(n+1)²`
-/

namespace A309805.P15474148207454768071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A110654 (n + 1) ^ 2

end

end A309805.P15474148207454768071

namespace A309805

/-- `∑[n]+A110654(n+1)²` -/
def P15474148207454768071.Spec : Prop :=
  ∀ n, P15474148207454768071.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P4407877663358173255

`A027656(n)+A001859(n)`
-/

namespace A309805.P4407877663358173255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A001859 n

end

end A309805.P4407877663358173255

namespace A309805

/-- `A027656(n)+A001859(n)` -/
def P4407877663358173255.Spec : Prop :=
  ∀ n, P4407877663358173255.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P6827298737329070640

`A084265(n)+A008794(n)`
-/

namespace A309805.P6827298737329070640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n + A008794 n

end

end A309805.P6827298737329070640

namespace A309805

/-- `A084265(n)+A008794(n)` -/
def P6827298737329070640.Spec : Prop :=
  ∀ n, P6827298737329070640.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P16189103839599672364

`A085787(n)+A008805(n)`
-/

namespace A309805.P16189103839599672364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n + A008805 n

end

end A309805.P16189103839599672364

namespace A309805

/-- `A085787(n)+A008805(n)` -/
def P16189103839599672364.Spec : Prop :=
  ∀ n, P16189103839599672364.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P14361333984636778849

`A135276(n)+A084263(n)`
-/

namespace A309805.P14361333984636778849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n + A084263 n

end

end A309805.P14361333984636778849

namespace A309805

/-- `A135276(n)+A084263(n)` -/
def P14361333984636778849.Spec : Prop :=
  ∀ n, P14361333984636778849.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P15061555629977963544

`A257083(n)+A004526(n)`
-/

namespace A309805.P15061555629977963544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n + A004526 n

end

end A309805.P15061555629977963544

namespace A309805

/-- `A257083(n)+A004526(n)` -/
def P15061555629977963544.Spec : Prop :=
  ∀ n, P15061555629977963544.a n = A309805 (n + 1)

end A309805

/-! ## A309805.P16360410405501091686

`A320259(n)+A008796(n)`
-/

namespace A309805.P16360410405501091686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320259 n + A008796 n

end

end A309805.P16360410405501091686

namespace A309805

/-- `A320259(n)+A008796(n)` -/
def P16360410405501091686.Spec : Prop :=
  ∀ n, P16360410405501091686.a n = A309805 (n + 1)

end A309805

/-!
# A309806: Values of k in k-imperfect numbers.

The programs for A309806, there is no canonical definition to state claims against.
-/

/-! ## A309806.P8565799621717380263

`A234094(∏{e}[∑[A085153(n+1)%4]-n, #+1])`
-/

namespace A309806.P8565799621717380263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085153 (n + 1)) 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234094 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A309806.P8565799621717380263

/-!
# A309807: Number of permutations sigma of [n] such that sigma(k)/k > sigma(k+1)/(k+1) for 1 <= k <= n-1.

The programs for A309807, there is no canonical definition to state claims against.
-/

/-! ## A309807.P10845811004669367068

`∑[A332955(n)]`
-/

namespace A309807.P10845811004669367068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309807.P10845811004669367068

/-! ## A309807.P4435378391318476373

`A332955(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A309807.P4435378391318476373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332955 n + a (A023443 n).toNat

end

end A309807.P4435378391318476373

/-! ## A309807.P17837309428753681807

`A332954(∑[n])`
-/

namespace A309807.P17837309428753681807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309807.P17837309428753681807

/-! ## A309807.P9418951067786400884

`and(-1, A332954(n*(n+1)/2))`
-/

namespace A309807.P9418951067786400884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A332954 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A309807.P9418951067786400884

/-! ## A309807.P1190349597611860559

`or(A000007(n), A332954(C(n+1, 2)))`
-/

namespace A309807.P1190349597611860559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A332954 (Nat.choose (n + 1) 2))

end

end A309807.P1190349597611860559

/-!
# A309808: Primes formed by concatenating k and 2k+1.

The programs for A309808, the canonical program `A309808.P4073451780118516941` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309808 has offset 1).

The definition of A309808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309808.P9999694862168560701

`p?[A309809(n+1)]`
-/

namespace A309808.P9999694862168560701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309808.P9999694862168560701

namespace A309808

/-- `p?[A309809(n+1)]` -/
def P9999694862168560701.Spec : Prop :=
  ∀ n, P9999694862168560701.a n = A309808 (n + 1)

end A309808

/-! ## A309808.P6088950201003642108

`p?[A019550(n+1)+1]`
-/

namespace A309808.P6088950201003642108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309808.P6088950201003642108

namespace A309808

/-- `p?[A019550(n+1)+1]` -/
def P6088950201003642108.Spec : Prop :=
  ∀ n, P6088950201003642108.a n = A309808 (n + 1)

end A309808

/-! ## A309808.P7862144108862783955

`p?[3*A061085(n+1)+1]`
-/

namespace A309808.P7862144108862783955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061085 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309808.P7862144108862783955

namespace A309808

/-- `p?[3*A061085(n+1)+1]` -/
def P7862144108862783955.Spec : Prop :=
  ∀ n, P7862144108862783955.a n = A309808 (n + 1)

end A309808

/-! ## A309808.P1675223180765331831

`p?[floor(A030656(n)/2+n+1)]`
-/

namespace A309808.P1675223180765331831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030656 n : ℚ) / 2 + (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309808.P1675223180765331831

namespace A309808

/-- `p?[floor(A030656(n)/2+n+1)]` -/
def P1675223180765331831.Spec : Prop :=
  ∀ n, P1675223180765331831.a n = A309808 (n + 1)

end A309808

/-! ## A309808.P4073451780118516941

`p?[or(1, ceil(A127421(2*n+3)/2+n))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A309808

/-- `p?[or(1, ceil(A127421(2*n+3)/2+n))]` -/
def P4073451780118516941.Spec : Prop :=
  ∀ n, P4073451780118516941.a n = A309808 (n + 1)

theorem P4073451780118516941.correct : P4073451780118516941.Spec := by
  intro n
  simp only [A309808, Nat.add_sub_cancel]

end A309808

/-! ## A309808.P3669610939257421553

`p?[or(1, (A004442(2*n)+A001704(2*(n+1)))/2)]`
-/

namespace A309808.P3669610939257421553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((A004442 (2 * n) + A001704 (2 * (n + 1)) : ℚ) / 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309808.P3669610939257421553

namespace A309808

/-- `p?[or(1, (A004442(2*n)+A001704(2*(n+1)))/2)]` -/
def P3669610939257421553.Spec : Prop :=
  ∀ n, P3669610939257421553.a n = A309808 (n + 1)

end A309808

/-! ## A309808.P3301279206748415288

`∩[A173626(n+1), A309809(n+1)]`
-/

namespace A309808.P3301279206748415288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309808.P3301279206748415288

namespace A309808

/-- `∩[A173626(n+1), A309809(n+1)]` -/
def P3301279206748415288.Spec : Prop :=
  ∀ n, (P3301279206748415288.a n : ℤ) = A309808 (n + 1)

end A309808

/-!
# A309809: a(n) is the concatenation of n and 2n+1.

The programs for A309809, the canonical program `A309809.P7507900315122133766` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309809 has offset 1).

The definition of A309809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309809.P3559231366283405964

`A019550(n+1)+1`
-/

namespace A309809.P3559231366283405964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (n + 1) + 1

end

end A309809.P3559231366283405964

namespace A309809

/-- `A019550(n+1)+1` -/
def P3559231366283405964.Spec : Prop :=
  ∀ n, P3559231366283405964.a n = A309809 (n + 1)

end A309809

/-! ## A309809.P16249106756230846201

`3*A061085(n+1)+1`
-/

namespace A309809.P16249106756230846201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061085 (n + 1) + 1

end

end A309809.P16249106756230846201

namespace A309809

/-- `3*A061085(n+1)+1` -/
def P16249106756230846201.Spec : Prop :=
  ∀ n, P16249106756230846201.a n = A309809 (n + 1)

end A309809

/-! ## A309809.P2024750661792953167

`A248422(n+1)/2+n+2`
-/

namespace A309809.P2024750661792953167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248422 (n + 1) : ℚ) / 2 + (n + 2 : ℚ)

end

end A309809.P2024750661792953167

namespace A309809

/-- `A248422(n+1)/2+n+2` -/
def P2024750661792953167.Spec : Prop :=
  ∀ n, P2024750661792953167.a n = (A309809 (n + 1) : ℚ)

end A309809

/-! ## A309809.P7507900315122133766

`ceil(A127421(2*n+3)/2+n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A309809

/-- `ceil(A127421(2*n+3)/2+n+1)` -/
def P7507900315122133766.Spec : Prop :=
  ∀ n, P7507900315122133766.a n = A309809 (n + 1)

theorem P7507900315122133766.correct : P7507900315122133766.Spec := by
  intro n
  simp only [A309809, Nat.add_sub_cancel]

end A309809

/-! ## A309809.P3121346755847132400

`(A030656(n+1)+3)/2+n`
-/

namespace A309809.P3121346755847132400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030656 (n + 1) + 3 : ℚ) / 2 + (n : ℚ)

end

end A309809.P3121346755847132400

namespace A309809

/-- `(A030656(n+1)+3)/2+n` -/
def P3121346755847132400.Spec : Prop :=
  ∀ n, P3121346755847132400.a n = (A309809 (n + 1) : ℚ)

end A309809

/-! ## A309809.P1257781785680176274

`n+2+A020338(2*(n+1))/2`
-/

namespace A309809.P1257781785680176274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) + (A020338 (2 * (n + 1)) : ℚ) / 2

end

end A309809.P1257781785680176274

namespace A309809

/-- `n+2+A020338(2*(n+1))/2` -/
def P1257781785680176274.Spec : Prop :=
  ∀ n, P1257781785680176274.a n = (A309809 (n + 1) : ℚ)

end A309809

/-! ## A309809.P6115366592936539221

`A084855(∑[4*(n+1)])`
-/

namespace A309809.P6115366592936539221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309809.P6115366592936539221

namespace A309809

/-- `A084855(∑[4*(n+1)])` -/
def P6115366592936539221.Spec : Prop :=
  ∀ n, P6115366592936539221.a n = A309809 (n + 1)

end A309809

/-! ## A309809.P10690825799778265867

`A084855(2*(n+1)²)+1`
-/

namespace A309809.P10690825799778265867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (2 * (n + 1) ^ 2) + 1

end

end A309809.P10690825799778265867

namespace A309809

/-- `A084855(2*(n+1)²)+1` -/
def P10690825799778265867.Spec : Prop :=
  ∀ n, P10690825799778265867.a n = A309809 (n + 1)

end A309809

/-! ## A309809.P6462132325202687826

`A380389(A006137(n+1))`
-/

namespace A309809.P6462132325202687826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380389 (A006137 (n + 1)).toNat

end

end A309809.P6462132325202687826

namespace A309809

/-- `A380389(A006137(n+1))` -/
def P6462132325202687826.Spec : Prop :=
  ∀ n, P6462132325202687826.a n = A309809 (n + 1)

end A309809

/-!
# A309810: Orders of Parker rings.

The programs for A309810, there is no canonical definition to state claims against.
-/

/-! ## A309810.P15658323527165322911

`lt[A077462(A200583(n+1)), 2*n]`
-/

namespace A309810.P15658323527165322911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A200583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A309810.P15658323527165322911

/-! ## A309810.P4053068481032139971

`lt[A035359(A056538(n+1)), A033991(n)]`
-/

namespace A309810.P4053068481032139971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035359 (A056538 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309810.P4053068481032139971

/-! ## A309810.P6696244942918256176

`lt[A126646(A319299(n+1)), A024036(n)]`
-/

namespace A309810.P6696244942918256176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A319299 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309810.P6696244942918256176

/-! ## A309810.P1969383128413613148

`lt[A317545(A272919(n+1)), A000217(n)]`
-/

namespace A309810.P1969383128413613148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317545 (A272919 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309810.P1969383128413613148

/-! ## A309810.P6163922776099211033

`lt[A001316(A064896(n+1)), A001105(n)]`
-/

namespace A309810.P6163922776099211033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A064896 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309810.P6163922776099211033

/-!
# A309812: Odd integers k such that k^2 is arithmetic mean of two other perfect squares.

The programs for A309812, the canonical program `A309812.P14860242101810124384` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309812 has offset 1).

The definition of A309812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309812.P14860242101810124384

`2*A094551(n+1)-1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A309812

/-- `2*A094551(n+1)-1` -/
def P14860242101810124384.Spec : Prop :=
  ∀ n, P14860242101810124384.a n = A309812 (n + 1)

theorem P14860242101810124384.correct : P14860242101810124384.Spec := by
  intro n
  simp only [A309812, Nat.add_sub_cancel]

end A309812

/-! ## A309812.P8595696100509633196

`comp[∪[2*n, A004144(n+1)]]`
-/

namespace A309812.P8595696100509633196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A309812.P8595696100509633196

namespace A309812

/-- `comp[∪[2*n, A004144(n+1)]]` -/
def P8595696100509633196.Spec : Prop :=
  ∀ n, (P8595696100509633196.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P6356444721140577124

`2*lt[2, A046110(n)]+1`
-/

namespace A309812.P6356444721140577124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A309812.P6356444721140577124

namespace A309812

/-- `2*lt[2, A046110(n)]+1` -/
def P6356444721140577124.Spec : Prop :=
  ∀ n, (P6356444721140577124.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P18046893132848923725

`A004273(A094551(n+1))`
-/

namespace A309812.P18046893132848923725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A094551 (n + 1)).toNat

end

end A309812.P18046893132848923725

namespace A309812

/-- `A004273(A094551(n+1))` -/
def P18046893132848923725.Spec : Prop :=
  ∀ n, P18046893132848923725.a n = A309812 (n + 1)

end A309812

/-! ## A309812.P8842392713633085937

`record[lcm(2, A009003(n+1))/2]`
-/

namespace A309812.P8842392713633085937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A009003 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309812.P8842392713633085937

namespace A309812

/-- `record[lcm(2, A009003(n+1))/2]` -/
def P8842392713633085937.Spec : Prop :=
  ∀ n, P8842392713633085937.a n = (A309812 (n + 1) : ℚ)

end A309812

/-! ## A309812.P972429287685721532

`∩[A009003(n+1), A004273(n)]`
-/

namespace A309812.P972429287685721532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309812.P972429287685721532

namespace A309812

/-- `∩[A009003(n+1), A004273(n)]` -/
def P972429287685721532.Spec : Prop :=
  ∀ n, (P972429287685721532.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P9869856063749959577

`∩[A009003(n+1), A004274(n)]`
-/

namespace A309812.P9869856063749959577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309812.P9869856063749959577

namespace A309812

/-- `∩[A009003(n+1), A004274(n)]` -/
def P9869856063749959577.Spec : Prop :=
  ∀ n, (P9869856063749959577.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P9121076191403871445

`∩[A009003(n+1), A004276(n)]`
-/

namespace A309812.P9121076191403871445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309812.P9121076191403871445

namespace A309812

/-- `∩[A009003(n+1), A004276(n)]` -/
def P9121076191403871445.Spec : Prop :=
  ∀ n, (P9121076191403871445.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P6855017323641525937

`∩[A009003(n+1), A004281(n)]`
-/

namespace A309812.P6855017323641525937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309812.P6855017323641525937

namespace A309812

/-- `∩[A009003(n+1), A004281(n)]` -/
def P6855017323641525937.Spec : Prop :=
  ∀ n, (P6855017323641525937.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P10462271346102239363

`∩[A009003(n+1), A060747(n)]`
-/

namespace A309812.P10462271346102239363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309812.P10462271346102239363

namespace A309812

/-- `∩[A009003(n+1), A060747(n)]` -/
def P10462271346102239363.Spec : Prop :=
  ∀ n, (P10462271346102239363.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P14010343574544154004

`∩[A009003(n+1), A062545(n)]`
-/

namespace A309812.P14010343574544154004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309812.P14010343574544154004

namespace A309812

/-- `∩[A009003(n+1), A062545(n)]` -/
def P14010343574544154004.Spec : Prop :=
  ∀ n, (P14010343574544154004.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P15008311562429476336

`∩[A009003(n+1), A130773(n)]`
-/

namespace A309812.P15008311562429476336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309812.P15008311562429476336

namespace A309812

/-- `∩[A009003(n+1), A130773(n)]` -/
def P15008311562429476336.Spec : Prop :=
  ∀ n, (P15008311562429476336.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P1178511167999992206

`∩[A009003(n+1), A163985(n)]`
-/

namespace A309812.P1178511167999992206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309812.P1178511167999992206

namespace A309812

/-- `∩[A009003(n+1), A163985(n)]` -/
def P1178511167999992206.Spec : Prop :=
  ∀ n, (P1178511167999992206.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P1230998166785558145

`∩[A009003(n+1), A223134(n)]`
-/

namespace A309812.P1230998166785558145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309812.P1230998166785558145

namespace A309812

/-- `∩[A009003(n+1), A223134(n)]` -/
def P1230998166785558145.Spec : Prop :=
  ∀ n, (P1230998166785558145.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P1162529079844587400

`∩[A004280(n+1), A009003(n+1)]`
-/

namespace A309812.P1162529079844587400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309812.P1162529079844587400

namespace A309812

/-- `∩[A004280(n+1), A009003(n+1)]` -/
def P1162529079844587400.Spec : Prop :=
  ∀ n, (P1162529079844587400.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P3564711018317591680

`∩[A009003(n+1), A020735(n+1)]`
-/

namespace A309812.P3564711018317591680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309812.P3564711018317591680

namespace A309812

/-- `∩[A009003(n+1), A020735(n+1)]` -/
def P3564711018317591680.Spec : Prop :=
  ∀ n, (P3564711018317591680.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P14623601707700173253

`∩[A009003(n+1), A088948(n+1)]`
-/

namespace A309812.P14623601707700173253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309812.P14623601707700173253

namespace A309812

/-- `∩[A009003(n+1), A088948(n+1)]` -/
def P14623601707700173253.Spec : Prop :=
  ∀ n, (P14623601707700173253.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P713833465094104365

`∩[A009003(n+1), A140139(n+1)]`
-/

namespace A309812.P713833465094104365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309812.P713833465094104365

namespace A309812

/-- `∩[A009003(n+1), A140139(n+1)]` -/
def P713833465094104365.Spec : Prop :=
  ∀ n, (P713833465094104365.a n : ℤ) = A309812 (n + 1)

end A309812

/-! ## A309812.P8220592783183956245

`∩[A009003(n+1), A144396(n+1)]`
-/

namespace A309812.P8220592783183956245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309812.P8220592783183956245

namespace A309812

/-- `∩[A009003(n+1), A144396(n+1)]` -/
def P8220592783183956245.Spec : Prop :=
  ∀ n, (P8220592783183956245.a n : ℤ) = A309812 (n + 1)

end A309812

/-!
# A309813: Records in A171898.

The programs for A309813, there is no canonical definition to state claims against.
-/

/-! ## A309813.P11453626198637170246

`record[A171898(n+1)]`
-/

namespace A309813.P11453626198637170246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309813.P11453626198637170246

/-! ## A309813.P10267715906571980751

`A171898(A309814(n+1))`
-/

namespace A309813.P10267715906571980751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (A309814 (n + 1)).toNat

end

end A309813.P10267715906571980751

/-! ## A309813.P1738451460482034075

`record[A171898(A028310(n))%A167499(n)]`
-/

namespace A309813.P1738451460482034075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171898 (A028310 n).toNat) (A167499 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309813.P1738451460482034075

/-! ## A309813.P4860360922315008237

`record[A171898(A004277(n)-n)%A167499(n)]`
-/

namespace A309813.P4860360922315008237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171898 (A004277 n - (n : ℤ)).toNat) (A167499 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309813.P4860360922315008237

/-!
# A309815: a(n) is the smallest positive integer x such that sqrt(2) + sqrt(x) is closer to an integer than any other value already in the sequence.

The programs for A309815, there is no canonical definition to state claims against.
-/

/-! ## A309815.P1074619480576326981

`∑[A094525(∑[A024924(n)])]`
-/

namespace A309815.P1074619480576326981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094525 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309815.P1074619480576326981

/-! ## A309815.P16634645400176298329

`∪[A005554(n+1), A005555(A005592(n))]`
-/

namespace A309815.P16634645400176298329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A005592 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309815.P16634645400176298329

/-! ## A309815.P12461159369013517393

`∪[A276690(n+1), A276734(A276735(n+4))]`
-/

namespace A309815.P12461159369013517393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276734 (A276735 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309815.P12461159369013517393

/-!
# A309816: a(n) is the 2-adic valuation of A014664(n).

The programs for A309816, there is no canonical definition to state claims against.
-/

/-! ## A309816.P8510895826676818224

`val(A014664(n+2), 2)`
-/

namespace A309816.P8510895826676818224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014664 (n + 2)).toNat 2

end

end A309816.P8510895826676818224

/-! ## A309816.P14542778030378213954

`val(A211244(n+2), 2)`
-/

namespace A309816.P14542778030378213954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A211244 (n + 2)).toNat 2

end

end A309816.P14542778030378213954

/-! ## A309816.P12244781713452276333

`val(A243905(n+2), 2)`
-/

namespace A309816.P12244781713452276333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A243905 (n + 2)).toNat 2

end

end A309816.P12244781713452276333

/-! ## A309816.P3839478104572313287

`val(A336843(A000040(n+1)), 2)`
-/

namespace A309816.P3839478104572313287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336843 (A000040 (n + 1)).toNat).toNat 2

end

end A309816.P3839478104572313287

/-! ## A309816.P13069216931969334852

`A007814(A014664(n+2))`
-/

namespace A309816.P13069216931969334852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A014664 (n + 2)).toNat

end

end A309816.P13069216931969334852

/-! ## A309816.P14745997585801673771

`A007814(A211244(n+2))`
-/

namespace A309816.P14745997585801673771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A211244 (n + 2)).toNat

end

end A309816.P14745997585801673771

/-! ## A309816.P1871768155509834531

`A007814(A002326(A005097(n+1)))`
-/

namespace A309816.P1871768155509834531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A002326 (A005097 (n + 1)).toNat).toNat

end

end A309816.P1871768155509834531

/-! ## A309816.P3946257234783833019

`A007814(A002326(A102781(n+2)))`
-/

namespace A309816.P3946257234783833019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A002326 (A102781 (n + 2)).toNat).toNat

end

end A309816.P3946257234783833019

/-! ## A309816.P7709938947927233926

`A007814(A002326(A130290(n+2)))`
-/

namespace A309816.P7709938947927233926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A002326 (A130290 (n + 2)).toNat).toNat

end

end A309816.P7709938947927233926

/-! ## A309816.P16804966530181997451

`val(A007733(p?[A004273(n)]), 2)`
-/

namespace A309816.P16804966530181997451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat 2

end

end A309816.P16804966530181997451

/-! ## A309816.P16904114655087316914

`val(A007733(A000040(n+2)), 2)`
-/

namespace A309816.P16904114655087316914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007733 (A000040 (n + 2)).toNat).toNat 2

end

end A309816.P16904114655087316914

/-! ## A309816.P5432505669543515116

`A007814(A007733(p?[A004273(n)]))`
-/

namespace A309816.P5432505669543515116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A309816.P5432505669543515116

/-! ## A309816.P15797717661939199203

`A007814(A007739(p?[A004273(n)]))`
-/

namespace A309816.P15797717661939199203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007739 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A309816.P15797717661939199203

/-! ## A309816.P11244632788690705216

`A007814(A007733(A065091(n+1)))`
-/

namespace A309816.P11244632788690705216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007733 (A065091 (n + 1)).toNat).toNat

end

end A309816.P11244632788690705216

/-! ## A309816.P11078991654685269970

`A007814(A007733(A000040(n+2)))`
-/

namespace A309816.P11078991654685269970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007733 (A000040 (n + 2)).toNat).toNat

end

end A309816.P11078991654685269970

/-!
# A309827: a(n) is the square of the number consisting of one 1 and n 6's: (166...6)^2.

The programs for A309827, the canonical program `A309827.P230506314001216132` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309827 has offset 0).

The definition of A309827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309827.P230506314001216132

`((5*10^n-2)/3)²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309827

/-- `((5*10^n-2)/3)²` -/
def P230506314001216132.Spec : Prop :=
  ∀ n, P230506314001216132.a n = (A309827 n : ℚ)

end A309827

/-! ## A309827.P12100431006077824870

`A246057(n)^2`
-/

namespace A309827.P12100431006077824870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246057 n ^ 2

end

end A309827.P12100431006077824870

namespace A309827

/-- `A246057(n)^2` -/
def P12100431006077824870.Spec : Prop :=
  ∀ n, P12100431006077824870.a n = A309827 n

end A309827

/-! ## A309827.P10707250938298264410

`(1-A126109(n))^2`
-/

namespace A309827.P10707250938298264410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A126109 n) ^ 2

end

end A309827.P10707250938298264410

namespace A309827

/-- `(1-A126109(n))^2` -/
def P10707250938298264410.Spec : Prop :=
  ∀ n, P10707250938298264410.a n = A309827 n

end A309827

/-! ## A309827.P7695498433216439421

`ceil((A086948(n+1)/12)²)`
-/

namespace A309827.P7695498433216439421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A086948 (n + 1) : ℚ) / 12) ^ 2⌉

end

end A309827.P7695498433216439421

namespace A309827

/-- `ceil((A086948(n+1)/12)²)` -/
def P7695498433216439421.Spec : Prop :=
  ∀ n, P7695498433216439421.a n = A309827 n

end A309827

/-! ## A309827.P2761916168775285723

`∑[floor(10^n/2)]*A199685(n)+1`
-/

namespace A309827.P2761916168775285723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A199685 n + 1

end

end A309827.P2761916168775285723

namespace A309827

/-- `∑[floor(10^n/2)]*A199685(n)+1` -/
def P2761916168775285723.Spec : Prop :=
  ∀ n, P2761916168775285723.a n = A309827 n

end A309827

/-! ## A309827.P3488906391032562207

`record[A246057(A002262(n))²]`
-/

namespace A309827.P3488906391032562207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246057 (A002262 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309827.P3488906391032562207

namespace A309827

/-- `record[A246057(A002262(n))²]` -/
def P3488906391032562207.Spec : Prop :=
  ∀ n, P3488906391032562207.a n = A309827 n

end A309827

/-! ## A309827.P12386701936177613521

`lcm(A246057(n)², A000034(n))`
-/

namespace A309827.P12386701936177613521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A246057 n ^ 2) (A000034 n)

end

end A309827.P12386701936177613521

namespace A309827

/-- `lcm(A246057(n)², A000034(n))` -/
def P12386701936177613521.Spec : Prop :=
  ∀ n, (P12386701936177613521.a n : ℤ) = A309827 n

end A309827

/-! ## A309827.P3045968849798152548

`record[A173712(A000265(n+1))²]`
-/

namespace A309827.P3045968849798152548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173712 (A000265 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309827.P3045968849798152548

namespace A309827

/-- `record[A173712(A000265(n+1))²]` -/
def P3045968849798152548.Spec : Prop :=
  ∀ n, P3045968849798152548.a n = A309827 n

end A309827

/-! ## A309827.P2292780439958796067

`A173712(2*n+1)*A173712(2*n+1)`
-/

namespace A309827.P2292780439958796067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173712 (2 * n + 1) * A173712 (2 * n + 1)

end

end A309827.P2292780439958796067

namespace A309827

/-- `A173712(2*n+1)*A173712(2*n+1)` -/
def P2292780439958796067.Spec : Prop :=
  ∀ n, P2292780439958796067.a n = A309827 n

end A309827

/-! ## A309827.P15377227373571793896

`floor(10^(n+1)/6)^A000005(A002476(n+1))`
-/

namespace A309827.P15377227373571793896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(10 ^ (n + 1) : ℚ) / 6⌋ : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A309827.P15377227373571793896

namespace A309827

/-- `floor(10^(n+1)/6)^A000005(A002476(n+1))` -/
def P15377227373571793896.Spec : Prop :=
  ∀ n, P15377227373571793896.a n = (A309827 n : ℚ)

end A309827

/-!
# A309828: Squares formed by concatenating k and 2*k+1.

The programs for A309828, there is no canonical definition to state claims against.
-/

/-! ## A309828.P12227345628927105042

`∩[(n+1)², A309809(n+2)]`
-/

namespace A309828.P12227345628927105042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309809 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309828.P12227345628927105042

/-! ## A309828.P5613413679702006778

`∩[A019550(n+1)+1, (n+1)²]`
-/

namespace A309828.P5613413679702006778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A309828.P5613413679702006778

/-! ## A309828.P11157819918590792243

`∩[A020338(n+1)+2+n, n²]`
-/

namespace A309828.P11157819918590792243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1) + 2 + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A309828.P11157819918590792243

/-! ## A309828.P9395669194771006740

`A130727(A268099(n))²`
-/

namespace A309828.P9395669194771006740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130727 (A268099 n).toNat ^ 2

end

end A309828.P9395669194771006740

/-!
# A309829: Numbers k for which A120077(k) != A007407(k).

The programs for A309829, there is no canonical definition to state claims against.
-/

/-! ## A309829.P2285806056572670548

`A237043(n+2)+A000045(A094037(n))`
-/

namespace A309829.P2285806056572670548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237043 (n + 2) + A000045 (A094037 n).toNat

end

end A309829.P2285806056572670548

/-!
# A309830: Sum of the odd parts appearing among the smallest parts of the partitions of n into 5 parts.

The programs for A309830, there is no canonical definition to state claims against.
-/

/-! ## A309830.P10275122870772991119

`A308823(n)-A309834(n)`
-/

namespace A309830.P10275122870772991119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308823 n - A309834 n

end

end A309830.P10275122870772991119

/-! ## A309830.P5697517949805796235

`A363047(n)%record[A327001(n)]-A309834(n)`
-/

namespace A309830.P5697517949805796235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363047 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - A309834 n

end

end A309830.P5697517949805796235

/-! ## A309830.P2945366553502197789

`A363047(n)+A010815(A209981(n))-A309834(n)`
-/

namespace A309830.P2945366553502197789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363047 n + A010815 (A209981 n).toNat - A309834 n

end

end A309830.P2945366553502197789

/-! ## A309830.P3510279434375098124

`A363047(n)+A010815(A299280(n))-A309834(n)`
-/

namespace A309830.P3510279434375098124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363047 n + A010815 (A299280 n).toNat - A309834 n

end

end A309830.P3510279434375098124

/-! ## A309830.P1365201588398814416

`A321379(abs(floor(2^(n-1))-1)+1)`
-/

namespace A309830.P1365201588398814416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (|⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - 1| + 1).toNat

end

end A309830.P1365201588398814416

/-!
# A309831: Number of even parts appearing among the smallest parts of the partitions of n into 5 parts.

The programs for A309831, the canonical program `A309831.P15864747999336176262` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309831 has offset 0).

The definition of A309831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309831.P15864747999336176262

`∑[A029140(n)]-A001400(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A309831

/-- `∑[A029140(n)]-A001400(n)` -/
def P15864747999336176262.Spec : Prop :=
  ∀ n, P15864747999336176262.a n = A309831 n

theorem P15864747999336176262.correct : P15864747999336176262.Spec := by
  intro n
  simp only [A309831]

end A309831

/-! ## A309831.P14918878047638650052

`∑[A029140(n)-A266755(n)]`
-/

namespace A309831.P14918878047638650052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029140 n - A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309831.P14918878047638650052

namespace A309831

/-- `∑[A029140(n)-A266755(n)]` -/
def P14918878047638650052.Spec : Prop :=
  ∀ n, P14918878047638650052.a n = A309831 n

end A309831

/-! ## A309831.P13262398601731702919

`∑[A097852(gcd(2, n)²+n+1)]`
-/

namespace A309831.P13262398601731702919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097852 (Nat.gcd 2 n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309831.P13262398601731702919

namespace A309831

/-- `∑[A097852(gcd(2, n)²+n+1)]` -/
def P13262398601731702919.Spec : Prop :=
  ∀ n, P13262398601731702919.a n = A309831 n

end A309831

/-! ## A309831.P14930079392736824861

`∑[A097852(6*(n+1)-A090771(n+1))]`
-/

namespace A309831.P14930079392736824861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097852 ((6 * (n + 1) : ℤ) - A090771 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309831.P14930079392736824861

namespace A309831

/-- `∑[A097852(6*(n+1)-A090771(n+1))]` -/
def P14930079392736824861.Spec : Prop :=
  ∀ n, P14930079392736824861.a n = A309831 n

end A309831

/-! ## A309831.P17213153375389170441

`∑[A029140(n)]-A029138(2*n)`
-/

namespace A309831.P17213153375389170441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029138 (2 * n)

end

end A309831.P17213153375389170441

namespace A309831

/-- `∑[A029140(n)]-A029138(2*n)` -/
def P17213153375389170441.Spec : Prop :=
  ∀ n, P17213153375389170441.a n = A309831 n

end A309831

/-! ## A309831.P4858786993612817558

`∑[A029140(n)]-A029167(3*n)`
-/

namespace A309831.P4858786993612817558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029167 (3 * n)

end

end A309831.P4858786993612817558

namespace A309831

/-- `∑[A029140(n)]-A029167(3*n)` -/
def P4858786993612817558.Spec : Prop :=
  ∀ n, P4858786993612817558.a n = A309831 n

end A309831

/-!
# A309834: Sum of the even parts appearing among the smallest parts of the partitions of n into 5 parts.

The programs for A309834, there is no canonical definition to state claims against.
-/

/-! ## A309834.P11469151162441882728

`A308823(n)-A309830(n)`
-/

namespace A309834.P11469151162441882728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308823 n - A309830 n

end

end A309834.P11469151162441882728

/-! ## A309834.P10016761423623605427

`A308823(n)+A134824(n)*A309830(n)`
-/

namespace A309834.P10016761423623605427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308823 n + A134824 n * A309830 n

end

end A309834.P10016761423623605427

/-! ## A309834.P3054431362022204650

`A308823(A028310(n))%A028310(A309830(n))`
-/

namespace A309834.P3054431362022204650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308823 (A028310 n).toNat) (A028310 (A309830 n).toNat)

end

end A309834.P3054431362022204650

/-! ## A309834.P1342053721512994030

`2*A111660(A326448(n))`
-/

namespace A309834.P1342053721512994030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111660 (A326448 n).toNat

end

end A309834.P1342053721512994030

/-! ## A309834.P13661729450155817776

`(A323529(n)-1)%A075944(n)`
-/

namespace A309834.P13661729450155817776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323529 n - 1) (A075944 n)

end

end A309834.P13661729450155817776

/-!
# A309837: Where records occur in A327642.

The programs for A309837, there is no canonical definition to state claims against.
-/

/-! ## A309837.P9155603210405884981

`lt[A104641(n+1), A002144(A226602(n))]`
-/

namespace A309837.P9155603210405884981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309837.P9155603210405884981

/-! ## A309837.P6880714551119597798

`lt[A023847(n), A313167(A032741(n))]`
-/

namespace A309837.P6880714551119597798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313167 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309837.P6880714551119597798

/-! ## A309837.P2105617882426825274

`lt[A140730(n), A007955(A344006(n+1))]`
-/

namespace A309837.P2105617882426825274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A344006 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309837.P2105617882426825274

/-! ## A309837.P10541051898606568818

`lt[A056239(A357864(n+1)), A304442(n)]`
-/

namespace A309837.P10541051898606568818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A357864 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309837.P10541051898606568818

/-! ## A309837.P6713611019142849103

`record[and(A165071(n), A182220(n+1))]`
-/

namespace A309837.P6713611019142849103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165071 n) (A182220 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309837.P6713611019142849103

/-!
# A309838: a(n) = number of dimensions of semisimple matrix subalgebras.

The programs for A309838, there is no canonical definition to state claims against.
-/

/-! ## A309838.P6822895324666976372

`A322554(A261422(n))+1`
-/

namespace A309838.P6822895324666976372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (A261422 n).toNat + 1

end

end A309838.P6822895324666976372

/-! ## A309838.P6642800730203038297

`∑[A007814(A232783(n+1)+1)+n+1]`
-/

namespace A309838.P6642800730203038297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A232783 (n + 1) + 1).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309838.P6642800730203038297

/-! ## A309838.P18140249476809805707

`∑[A339399(A318016(n+1)+1)+n]+1`
-/

namespace A309838.P18140249476809805707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (A318016 (n + 1) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A309838.P18140249476809805707

/-! ## A309838.P6795809616444102231

`∑[A339399(A320402(n+1)+1)+n]+1`
-/

namespace A309838.P6795809616444102231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (A320402 (n + 1) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A309838.P6795809616444102231

/-! ## A309838.P17882783741184840192

`A334299(A325553(n))+A000096(n)`
-/

namespace A309838.P17882783741184840192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334299 (A325553 n).toNat + A000096 n

end

end A309838.P17882783741184840192

/-!
# A309839: a(n) = GAP_n: first integer m that is not the dimension of a semisimple subalgebra of M_n(k).

The programs for A309839, there is no canonical definition to state claims against.
-/

/-! ## A309839.P1420026282703370311

`A215914(n+3)-1`
-/

namespace A309839.P1420026282703370311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215914 (n + 3) - 1

end

end A309839.P1420026282703370311

/-! ## A309839.P7904544611543556144

`A023443(A215914(n+3))`
-/

namespace A309839.P7904544611543556144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A215914 (n + 3)).toNat

end

end A309839.P7904544611543556144

/-! ## A309839.P17696854742421833831

`A249738(2*A215914(n+3))`
-/

namespace A309839.P17696854742421833831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A215914 (n + 3)).toNat

end

end A309839.P17696854742421833831

/-! ## A309839.P11156522619153769481

`abs(A215914(n+3)+A062157(2*(n+1)))`
-/

namespace A309839.P11156522619153769481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215914 (n + 3) + A062157 (2 * (n + 1))|

end

end A309839.P11156522619153769481

/-! ## A309839.P12035929225862042250

`A316441(A000040(n+1))+A215914(n+3)`
-/

namespace A309839.P12035929225862042250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A215914 (n + 3)

end

end A309839.P12035929225862042250

/-!
# A309840: If n = Sum (2^e_k) then a(n) = Product (Fibonacci(e_k + 3)).

The programs for A309840, the canonical program `A309840.P11360781880078736310` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309840 has offset 0).

The definition of A309840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309840.P11360781880078736310

`A000045(floor(log2(n))+3)*a(n-2^floor(log2(n)))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A309840

/-- `A000045(floor(log2(n))+3)*a(n-2^floor(log2(n)))` -/
def P11360781880078736310.Spec : Prop :=
  ∀ n, P11360781880078736310.a n = A309840 n

theorem P11360781880078736310.correct : P11360781880078736310.Spec := by
  intro n
  simp only [A309840]

end A309840

/-! ## A309840.P18096607915941958722

`∏{p}[A019565(n), A003965(#)]`
-/

namespace A309840.P18096607915941958722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003965 p

end

end A309840.P18096607915941958722

namespace A309840

/-- `∏{p}[A019565(n), A003965(#)]` -/
def P18096607915941958722.Spec : Prop :=
  ∀ n, P18096607915941958722.a n = A309840 n

end A309840

/-! ## A309840.P12434236400955568043

`∏{p}[A019565(n), A120249(#)]`
-/

namespace A309840.P12434236400955568043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A120249 p

end

end A309840.P12434236400955568043

namespace A309840

/-- `∏{p}[A019565(n), A120249(#)]` -/
def P12434236400955568043.Spec : Prop :=
  ∀ n, P12434236400955568043.a n = A309840 n

end A309840

/-! ## A309840.P14946926756588148350

`∏{p}[A019565(n), A328846(#)]`
-/

namespace A309840.P14946926756588148350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A328846 p

end

end A309840.P14946926756588148350

namespace A309840

/-- `∏{p}[A019565(n), A328846(#)]` -/
def P14946926756588148350.Spec : Prop :=
  ∀ n, P14946926756588148350.a n = A309840 n

end A309840

/-! ## A309840.P17020450332157243564

`A003965(A019565(n))`
-/

namespace A309840.P17020450332157243564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003965 (A019565 n).toNat

end

end A309840.P17020450332157243564

namespace A309840

/-- `A003965(A019565(n))` -/
def P17020450332157243564.Spec : Prop :=
  ∀ n, P17020450332157243564.a n = A309840 n

end A309840

/-! ## A309840.P10269456171328525841

`A003965(A339809(n)+1)`
-/

namespace A309840.P10269456171328525841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003965 (A339809 n + 1).toNat

end

end A309840.P10269456171328525841

namespace A309840

/-- `A003965(A339809(n)+1)` -/
def P10269456171328525841.Spec : Prop :=
  ∀ n, P10269456171328525841.a n = A309840 n

end A309840

/-!
# A309841: If n = Sum (2^e_k) then a(n) = Product ((e_k + 2)!).

The programs for A309841, the canonical program `A309841.P16453280638572054993` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309841 has offset 0).

The definition of A309841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309841.P16453280638572054993

`(floor(log2(n))+2)!*a(n-2^floor(log2(n)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309841

/-- `(floor(log2(n))+2)!*a(n-2^floor(log2(n)))` -/
def P16453280638572054993.Spec : Prop :=
  ∀ n, (P16453280638572054993.a n : ℤ) = A309841 n

theorem P16453280638572054993.correct : P16453280638572054993.Spec := by
  intro n
  simp only [A309841]

end A309841

/-! ## A309841.P9047359985406855181

`a(floor(n/2))*A121663(n)` with `a(0)=1`
-/

namespace A309841.P9047359985406855181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A121663 n

end

end A309841.P9047359985406855181

namespace A309841

/-- `a(floor(n/2))*A121663(n)` -/
def P9047359985406855181.Spec : Prop :=
  ∀ n, P9047359985406855181.a n = A309841 n

end A309841

/-! ## A309841.P5231265766362339343

`a(floor(n/2))*A096111(2*n)` with `a(0)=1`
-/

namespace A309841.P5231265766362339343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A096111 (2 * n)

end

end A309841.P5231265766362339343

namespace A309841

/-- `a(floor(n/2))*A096111(2*n)` -/
def P5231265766362339343.Spec : Prop :=
  ∀ n, P5231265766362339343.a n = A309841 n

end A309841

/-! ## A309841.P12632763145495396155

`∏{digits}[A063013(2*n), #!]`
-/

namespace A309841.P12632763145495396155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063013 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial x).prod

end

end A309841.P12632763145495396155

namespace A309841

/-- `∏{digits}[A063013(2*n), #!]` -/
def P12632763145495396155.Spec : Prop :=
  ∀ n, (P12632763145495396155.a n : ℤ) = A309841 n

end A309841

/-! ## A309841.P11335333518529344548

`A321898(A332382(n))`
-/

namespace A309841.P11335333518529344548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321898 (A332382 n).toNat

end

end A309841.P11335333518529344548

namespace A309841

/-- `A321898(A332382(n))` -/
def P11335333518529344548.Spec : Prop :=
  ∀ n, P11335333518529344548.a n = A309841 n

end A309841

/-!
# A309842: a(n) is the total surface area of a hollow cubic block (defined as a block with a shell thickness of 1 cube) where n is the edge length of the removed volume.

The programs for A309842, the canonical program `A309842.P16614708194417864595` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309842 has offset 1).

The definition of A309842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309842.P16614708194417864595

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=60, a(1)=120, a(2)=204`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309842

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P16614708194417864595.Spec : Prop :=
  ∀ n, P16614708194417864595.a n = A309842 (n + 1)

theorem P16614708194417864595.correct : P16614708194417864595.Spec := by
  intro n
  simp only [A309842, Nat.add_sub_cancel]

end A309842

/-! ## A309842.P1560586573442209207

`12*((n+2)²+1)`
-/

namespace A309842.P1560586573442209207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * ((n + 2) ^ 2 + 1)

end

end A309842.P1560586573442209207

namespace A309842

/-- `12*((n+2)²+1)` -/
def P1560586573442209207.Spec : Prop :=
  ∀ n, (P1560586573442209207.a n : ℤ) = A309842 (n + 1)

end A309842

/-! ## A309842.P4225274223991587031

`Δ[A027603(n)]-4`
-/

namespace A309842.P4225274223991587031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A309842.P4225274223991587031

namespace A309842

/-- `Δ[A027603(n)]-4` -/
def P4225274223991587031.Spec : Prop :=
  ∀ n, P4225274223991587031.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P11335895701683492603

`A135453(n+2)+12`
-/

namespace A309842.P11335895701683492603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 (n + 2) + 12

end

end A309842.P11335895701683492603

namespace A309842

/-- `A135453(n+2)+12` -/
def P11335895701683492603.Spec : Prop :=
  ∀ n, P11335895701683492603.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P2138360333091148751

`2*A005897(n+2)+8`
-/

namespace A309842.P2138360333091148751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005897 (n + 2) + 8

end

end A309842.P2138360333091148751

namespace A309842

/-- `2*A005897(n+2)+8` -/
def P2138360333091148751.Spec : Prop :=
  ∀ n, P2138360333091148751.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P3997401660593265330

`A162024(n+3)+2*A162024(n+3)`
-/

namespace A309842.P3997401660593265330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162024 (n + 3) + 2 * A162024 (n + 3)

end

end A309842.P3997401660593265330

namespace A309842

/-- `A162024(n+3)+2*A162024(n+3)` -/
def P3997401660593265330.Spec : Prop :=
  ∀ n, P3997401660593265330.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P11073177626411393141

`A158444(n+2)+A053755(n)-A081585(n+1)`
-/

namespace A309842.P11073177626411393141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158444 (n + 2) + (A053755 n - A081585 (n + 1))

end

end A309842.P11073177626411393141

namespace A309842

/-- `A158444(n+2)+A053755(n)-A081585(n+1)` -/
def P11073177626411393141.Spec : Prop :=
  ∀ n, P11073177626411393141.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P1199572551618299969

`A259055(n+1)+A259054(n+2)-A002522(n)`
-/

namespace A309842.P1199572551618299969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259055 (n + 1) + (A259054 (n + 2) - A002522 n)

end

end A309842.P1199572551618299969

namespace A309842

/-- `A259055(n+1)+A259054(n+2)-A002522(n)` -/
def P1199572551618299969.Spec : Prop :=
  ∀ n, P1199572551618299969.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P15810840835221227744

`A016754(n+1)+A173960(n+1)+A027575(n+1)`
-/

namespace A309842.P15810840835221227744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) + (A173960 (n + 1) + A027575 (n + 1))

end

end A309842.P15810840835221227744

namespace A309842

/-- `A016754(n+1)+A173960(n+1)+A027575(n+1)` -/
def P15810840835221227744.Spec : Prop :=
  ∀ n, P15810840835221227744.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P17801491854289613399

`Δ[A159941(n+3)]`
-/

namespace A309842.P17801491854289613399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159941 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309842.P17801491854289613399

namespace A309842

/-- `Δ[A159941(n+3)]` -/
def P17801491854289613399.Spec : Prop :=
  ∀ n, P17801491854289613399.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P16796930191033900461

`Δ[2*A159940(n+3)]`
-/

namespace A309842.P16796930191033900461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159940 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309842.P16796930191033900461

namespace A309842

/-- `Δ[2*A159940(n+3)]` -/
def P16796930191033900461.Spec : Prop :=
  ∀ n, P16796930191033900461.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P6459784568287130484

`lcm(3, A222465(n+2)+1)`
-/

namespace A309842.P6459784568287130484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A222465 (n + 2) + 1)

end

end A309842.P6459784568287130484

namespace A309842

/-- `lcm(3, A222465(n+2)+1)` -/
def P6459784568287130484.Spec : Prop :=
  ∀ n, (P6459784568287130484.a n : ℤ) = A309842 (n + 1)

end A309842

/-! ## A309842.P9738045451008451131

`A030653(n+3)-n^3`
-/

namespace A309842.P9738045451008451131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030653 (n + 3) - (n ^ 3 : ℤ)

end

end A309842.P9738045451008451131

namespace A309842

/-- `A030653(n+3)-n^3` -/
def P9738045451008451131.Spec : Prop :=
  ∀ n, P9738045451008451131.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P1487028058042837614

`Δ[Δ[A304726(n+1)]]+2`
-/

namespace A309842.P1487028058042837614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304726 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A309842.P1487028058042837614

namespace A309842

/-- `Δ[Δ[A304726(n+1)]]+2` -/
def P1487028058042837614.Spec : Prop :=
  ∀ n, P1487028058042837614.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P14071845066460611889

`A063436(n+2)-3*(n-2)`
-/

namespace A309842.P14071845066460611889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063436 (n + 2) - 3 * ((n : ℤ) - 2)

end

end A309842.P14071845066460611889

namespace A309842

/-- `A063436(n+2)-3*(n-2)` -/
def P14071845066460611889.Spec : Prop :=
  ∀ n, P14071845066460611889.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P5617860824396349506

`A033577(n+2)-(7*n+3)`
-/

namespace A309842.P5617860824396349506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033577 (n + 2) - (7 * n + 3 : ℤ)

end

end A309842.P5617860824396349506

namespace A309842

/-- `A033577(n+2)-(7*n+3)` -/
def P5617860824396349506.Spec : Prop :=
  ∀ n, P5617860824396349506.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P12021850779835175767

`A014641(n+2)-(8*n+5)`
-/

namespace A309842.P12021850779835175767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 (n + 2) - (8 * n + 5 : ℤ)

end

end A309842.P12021850779835175767

namespace A309842

/-- `A014641(n+2)-(8*n+5)` -/
def P12021850779835175767.Spec : Prop :=
  ∀ n, P12021850779835175767.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P9335977837419256554

`A079505(n+4)-A061600(n)`
-/

namespace A309842.P9335977837419256554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079505 (n + 4) - A061600 n

end

end A309842.P9335977837419256554

namespace A309842

/-- `A079505(n+4)-A061600(n)` -/
def P9335977837419256554.Spec : Prop :=
  ∀ n, P9335977837419256554.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P5350693541050819411

`A033581(n+1)+A033581(n+3)`
-/

namespace A309842.P5350693541050819411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (n + 1) + A033581 (n + 3)

end

end A309842.P5350693541050819411

namespace A309842

/-- `A033581(n+1)+A033581(n+3)` -/
def P5350693541050819411.Spec : Prop :=
  ∀ n, P5350693541050819411.a n = A309842 (n + 1)

end A309842

/-! ## A309842.P3609610465440072305

`A159941(n+4)-A159941(n+3)`
-/

namespace A309842.P3609610465440072305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159941 (n + 4) - A159941 (n + 3)

end

end A309842.P3609610465440072305

namespace A309842

/-- `A159941(n+4)-A159941(n+3)` -/
def P3609610465440072305.Spec : Prop :=
  ∀ n, P3609610465440072305.a n = A309842 (n + 1)

end A309842

/-!
# A309844: Primes of the form n^4 + n^2 + 3.

The programs for A309844, there is no canonical definition to state claims against.
-/

/-! ## A309844.P13137867547619982786

`A027688(∩[A027752(n+1), n²])`
-/

namespace A309844.P13137867547619982786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027752 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A309844.P13137867547619982786

/-! ## A309844.P6527375848975939582

`∩[A027753(n+1), A027688(n²)]`
-/

namespace A309844.P6527375848975939582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 (n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309844.P6527375848975939582

/-! ## A309844.P5286077198638474344

`∩[A027688(A000290(n)), A027753(n+1)]`
-/

namespace A309844.P5286077198638474344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 (A000290 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309844.P5286077198638474344

/-! ## A309844.P6951090703777345618

`p?[n^4+n²+3]`
-/

namespace A309844.P6951090703777345618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 + (n ^ 2 + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A309844.P6951090703777345618

/-! ## A309844.P16898334041083604969

`or(1, p?[A027688(n²)])`
-/

namespace A309844.P16898334041083604969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A309844.P16898334041083604969

/-!
# A309845: Expansion of e.g.f.: sec(x) + 2*tan(x).

The programs for A309845, there is no canonical definition to state claims against.
-/

/-! ## A309845.P5263725056890105914

`A000111(n+2)-A164575(n)`
-/

namespace A309845.P5263725056890105914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n + 2) - A164575 n

end

end A309845.P5263725056890105914

/-! ## A309845.P7821924606168852689

`A225688(n)+A225689(n)-A164575(n)`
-/

namespace A309845.P7821924606168852689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225688 n + A225689 n - A164575 n

end

end A309845.P7821924606168852689

/-! ## A309845.P5066499867930040952

`(n%2+1)*A000111(n)`
-/

namespace A309845.P5066499867930040952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A000111 n

end

end A309845.P5066499867930040952

/-! ## A309845.P9313386811256316209

`abs(A247453(∑[n]))*gcd(2, n+1)`
-/

namespace A309845.P9313386811256316209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247453 (∑ j ∈ Finset.range (n + 1), f1 j)| * (Nat.gcd 2 (n + 1) : ℤ)

end

end A309845.P9313386811256316209

/-! ## A309845.P2600742020612231032

`A000034(n)*A000111(n)`
-/

namespace A309845.P2600742020612231032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A000111 n

end

end A309845.P2600742020612231032

/-! ## A309845.P7933172686710759128

`A009006(n)+abs(A163747(n))`
-/

namespace A309845.P7933172686710759128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n + |A163747 n|

end

end A309845.P7933172686710759128

/-! ## A309845.P4264980801853791742

`abs(A155585(n)-A163747(n))`
-/

namespace A309845.P4264980801853791742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155585 n - A163747 n|

end

end A309845.P4264980801853791742

/-! ## A309845.P9491231051048311636

`A000111(n)*A014695(n²)`
-/

namespace A309845.P9491231051048311636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A014695 (n ^ 2)

end

end A309845.P9491231051048311636

/-! ## A309845.P8783100711680073653

`A000111(n)*A071222(n²)`
-/

namespace A309845.P8783100711680073653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A071222 (n ^ 2)

end

end A309845.P8783100711680073653

/-! ## A309845.P13980751160732353227

`A000034(n)*A109449(∑[n])`
-/

namespace A309845.P13980751160732353227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A109449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309845.P13980751160732353227

/-!
# A309846: Number of degree n polynomials f with all nonzero coefficients equal to 1 such that f(k) is divisible by 4 for all integers k.

The programs for A309846, there is no canonical definition to state claims against.
-/

/-! ## A309846.P17907436772360152975

`A198381(n)+A010894(A085158(n))`
-/

namespace A309846.P17907436772360152975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198381 n + A010894 ((A085158 n).toNat + 21)

end

end A309846.P17907436772360152975

/-! ## A309846.P9202629967986651849

`A353847(A005251(n)-A057427(n))`
-/

namespace A309846.P9202629967986651849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A005251 n - A057427 n).toNat

end

end A309846.P9202629967986651849

/-! ## A309846.P9336934082928177026

`A353847(A005251(n)-A167383(n))`
-/

namespace A309846.P9336934082928177026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A005251 n - A167383 n).toNat

end

end A309846.P9336934082928177026

/-! ## A309846.P8921887087975141173

`A353847(A005251(n)-A322812(n+2))`
-/

namespace A309846.P8921887087975141173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A005251 n - A322812 (n + 2)).toNat

end

end A309846.P8921887087975141173

/-! ## A309846.P10825111840238559150

`A353847(A005251(n)-A318663(3*n+2))`
-/

namespace A309846.P10825111840238559150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A005251 n - A318663 (3 * n + 2)).toNat

end

end A309846.P10825111840238559150

/-!
# A309847: Digits of the multiplicative inverse of A309752.

The programs for A309847, there is no canonical definition to state claims against.
-/

/-! ## A309847.P14419712313430444941

`A079559(A003328(n+1)*A086963(n+1))`
-/

namespace A309847.P14419712313430444941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 (A003328 (n + 1) * A086963 (n + 1)).toNat

end

end A309847.P14419712313430444941

/-! ## A309847.P10464280128946572758

`A276793(A065091(n+1)*A255774(n+3))`
-/

namespace A309847.P10464280128946572758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276793 (A065091 (n + 1) * A255774 (n + 3)).toNat

end

end A309847.P10464280128946572758

/-! ## A309847.P1428699656903578554

`A143221(A057524(n+2)+A057524(n))`
-/

namespace A309847.P1428699656903578554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143221 (A057524 (n + 2) + A057524 n).toNat

end

end A309847.P1428699656903578554

/-! ## A309847.P12642441919417297478

`A267050(lcm(A000217(n), A165066(2*n+1)))`
-/

namespace A309847.P12642441919417297478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267050 (Int.lcm (A000217 n) (A165066 (2 * n + 1)))

end

end A309847.P12642441919417297478

/-! ## A309847.P11682829999037190471

`A030302(A077554(n)*A360926(n+3))`
-/

namespace A309847.P11682829999037190471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A077554 n * A360926 (n + 3)).toNat

end

end A309847.P11682829999037190471

/-!
# A309848: Digits of the multiplicative inverse of A309754.

The programs for A309848, there is no canonical definition to state claims against.
-/

/-! ## A309848.P3232646175590374246

`A060576(gcd(A120126(n), A139448(n+1)))`
-/

namespace A309848.P3232646175590374246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (Int.gcd (A120126 n) (A139448 (n + 1)))

end

end A309848.P3232646175590374246

/-! ## A309848.P17165175794309301986

`A306440(or(1, A264445(n)))`
-/

namespace A309848.P17165175794309301986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306440 (Int.lor 1 (A264445 n)).toNat

end

end A309848.P17165175794309301986

/-! ## A309848.P14110810000426473778

`A010055(A269303(n+1)+A120132(n+1))`
-/

namespace A309848.P14110810000426473778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A269303 (n + 1) + A120132 (n + 1)).toNat

end

end A309848.P14110810000426473778

/-! ## A309848.P17929875988202849149

`A000035(floor(A299475(n)/A181143(2*n)))`
-/

namespace A309848.P17929875988202849149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ⌊(A299475 n : ℚ) / (A181143 (2 * n) : ℚ)⌋.toNat

end

end A309848.P17929875988202849149

/-! ## A309848.P13702271322605667951

`A036987(or(A157152(2*n), A277893(n+2)))`
-/

namespace A309848.P13702271322605667951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (Int.lor (A157152 (2 * n)) (A277893 (n + 2))).toNat

end

end A309848.P13702271322605667951

/-!
# A309849: Digits of the multiplicative inverse of A309766.

The programs for A309849, there is no canonical definition to state claims against.
-/

/-! ## A309849.P4513647332538999847

`A039963(A178822(n)-∑[A266303(n)])`
-/

namespace A309849.P4513647332538999847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A178822 n - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309849.P4513647332538999847

/-! ## A309849.P10202212534016794988

`ceil(cos(A064155(n+1)-A064186(n+1)))`
-/

namespace A309849.P10202212534016794988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (A064155 (n + 1) - A064186 (n + 1) : ℝ)⌉

end

end A309849.P10202212534016794988

/-! ## A309849.P3644306046310248392

`A004593((4*(n+1))²-1-Δ[n*ceil(n²/2)])`
-/

namespace A309849.P3644306046310248392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (((4 * (n + 1)) ^ 2 : ℤ) - 1 - (f1 (n + 1) - f1 n)).toNat

end

end A309849.P3644306046310248392

/-! ## A309849.P12883344760792118219

`A080764(A156542(3*n+1)+A017982(n))`
-/

namespace A309849.P12883344760792118219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A156542 (3 * n + 1) + A017982 n).toNat

end

end A309849.P12883344760792118219

/-! ## A309849.P8547756630659907846

`A010060(A390567(n)+A001157(n+1))`
-/

namespace A309849.P8547756630659907846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A390567 n + A001157 (n + 1)).toNat

end

end A309849.P8547756630659907846

/-!
# A309850: Digits of the multiplicative inverse of A309768.

The programs for A309850, there is no canonical definition to state claims against.
-/

/-! ## A309850.P12994549292432747875

`A164349(xor(A101433(n), A156792(n)))`
-/

namespace A309850.P12994549292432747875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (Int.xor (A101433 n) (A156792 n)).toNat

end

end A309850.P12994549292432747875

/-! ## A309850.P5322071406423762045

`A003849(A003644(n+1)*A213370(2*n+3))`
-/

namespace A309850.P5322071406423762045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A003644 (n + 1) * A213370 (2 * n + 3)).toNat

end

end A309850.P5322071406423762045

/-! ## A309850.P12242180811288984464

`and(A030302(A342266(2*n+3)), A342256(n+2))`
-/

namespace A309850.P12242180811288984464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030302 (A342266 (2 * n + 3)).toNat) (A342256 (n + 2))

end

end A309850.P12242180811288984464

/-! ## A309850.P16507540229172484500

`A026729(gcd(A004086(n), A216393(n+1)))`
-/

namespace A309850.P16507540229172484500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (Int.gcd (A004086 n) (A216393 (n + 1)))

end

end A309850.P16507540229172484500

/-! ## A309850.P15359737579541601660

`A347595(A063713(n+1))%A336532(2*(n+2))`
-/

namespace A309850.P15359737579541601660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347595 (A063713 (n + 1)).toNat) (A336532 (2 * (n + 2)))

end

end A309850.P15359737579541601660

/-!
# A309851: Primes formed by concatenating n and 2n-1.

The programs for A309851, the canonical program `A309851.P14047395158355173875` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309851 has offset 1).

The definition of A309851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309851.P17445406226143721532

`p?[A075003(n)+A008619(n)]`
-/

namespace A309851.P17445406226143721532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075003 n + A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309851.P17445406226143721532

namespace A309851

/-- `p?[A075003(n)+A008619(n)]` -/
def P17445406226143721532.Spec : Prop :=
  ∀ n, P17445406226143721532.a n = A309851 (n + 1)

end A309851

/-! ## A309851.P749169596107563410

`p?[A004526(n)+A075003(n)+1]`
-/

namespace A309851.P749169596107563410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A075003 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309851.P749169596107563410

namespace A309851

/-- `p?[A004526(n)+A075003(n)+1]` -/
def P749169596107563410.Spec : Prop :=
  ∀ n, P749169596107563410.a n = A309851 (n + 1)

end A309851

/-! ## A309851.P1448349591354816427

`p?[A075003(n)+A065033(n+1)]`
-/

namespace A309851.P1448349591354816427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075003 n + A065033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309851.P1448349591354816427

namespace A309851

/-- `p?[A075003(n)+A065033(n+1)]` -/
def P1448349591354816427.Spec : Prop :=
  ∀ n, P1448349591354816427.a n = A309851 (n + 1)

end A309851

/-! ## A309851.P17888519308498695995

`p?[A123108(n+2)+A075003(n)]`
-/

namespace A309851.P17888519308498695995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 2) + A075003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309851.P17888519308498695995

namespace A309851

/-- `p?[A123108(n+2)+A075003(n)]` -/
def P17888519308498695995.Spec : Prop :=
  ∀ n, P17888519308498695995.a n = A309851 (n + 1)

end A309851

/-! ## A309851.P14047395158355173875

`p?[A008619(n)+ceil(A111708(n)/2+n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A309851

/-- `p?[A008619(n)+ceil(A111708(n)/2+n)]` -/
def P14047395158355173875.Spec : Prop :=
  ∀ n, P14047395158355173875.a n = A309851 (n + 1)

theorem P14047395158355173875.correct : P14047395158355173875.Spec := by
  intro n
  simp only [A309851, Nat.add_sub_cancel]

end A309851

/-! ## A309851.P2056074475227518876

`p?[A065033(n+1)+ceil(A111708(n)/2+n)]`
-/

namespace A309851.P2056074475227518876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) + ⌈(A111708 n : ℚ) / 2 + (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309851.P2056074475227518876

namespace A309851

/-- `p?[A065033(n+1)+ceil(A111708(n)/2+n)]` -/
def P2056074475227518876.Spec : Prop :=
  ∀ n, P2056074475227518876.a n = A309851 (n + 1)

end A309851

/-! ## A309851.P13431011801434900313

`p?[A123108(n+2)+ceil(A111708(n)/2+n)]`
-/

namespace A309851.P13431011801434900313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 2) + ⌈(A111708 n : ℚ) / 2 + (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309851.P13431011801434900313

namespace A309851

/-- `p?[A123108(n+2)+ceil(A111708(n)/2+n)]` -/
def P13431011801434900313.Spec : Prop :=
  ∀ n, P13431011801434900313.a n = A309851 (n + 1)

end A309851

/-!
# A309852: Array read by antidiagonals: ((z+sqrt(x))/2)^k + ((z-sqrt(x))/2)^k for columns k >= 0 and rows n >= 0, where x = 4*n+1 and y = floor(sqrt(x)) and z = y-1+(y mod 2).

The programs for A309852, there is no canonical definition to state claims against.
-/

/-! ## A309852.P10891425336346544286

`A076620(4^A276543(n+1))+A000217(A219866(n))`
-/

namespace A309852.P10891425336346544286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A276543 (n + 1) : ℤ))).toNat + A000217 (A219866 n).toNat

end

end A309852.P10891425336346544286

/-! ## A309852.P16423790993429247904

`A112258(A308322(n)+A130167(n))`
-/

namespace A309852.P16423790993429247904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112258 (A308322 n + A130167 n).toNat

end

end A309852.P16423790993429247904

/-! ## A309852.P4802271708258769689

`A121373(A049352(n+1))+A099597(n)`
-/

namespace A309852.P4802271708258769689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A049352 (n + 1)).toNat + A099597 n

end

end A309852.P4802271708258769689

/-! ## A309852.P6621097138351022567

`A325873(A055645(n))+A004525(A029635(n))`
-/

namespace A309852.P6621097138351022567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325873 (A055645 n).toNat + A004525 (A029635 n).toNat

end

end A309852.P6621097138351022567

/-! ## A309852.P6745585647976629796

`A108790(A242598(n))`
-/

namespace A309852.P6745585647976629796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108790 (A242598 n).toNat

end

end A309852.P6745585647976629796

/-!
# A309853: Array read by antidiagonals: ((z+sqrt(x))/2)^k + ((z-sqrt(x))/2)^k for columns k >= 0 and rows n >= 0, where x = 4*n+1 and y = ceiling(sqrt(x)) and z = y+1-(y mod 2).

The programs for A309853, there is no canonical definition to state claims against.
-/

/-! ## A309853.P970436685254199344

`A117707(A337506(n))+A008307(n+1)`
-/

namespace A309853.P970436685254199344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A337506 n).toNat + A008307 (n + 1)

end

end A309853.P970436685254199344

/-!
# A309855: Primes p such that 2*p^5-1 is also prime.

The programs for A309855, there is no canonical definition to state claims against.
-/

/-! ## A309855.P7718717968831593682

`p?[A309854(n+1)]`
-/

namespace A309855.P7718717968831593682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309855.P7718717968831593682

/-! ## A309855.P8109133386306662912

`record[p?[A309854(A286378(n))]]`
-/

namespace A309855.P8109133386306662912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309855.P8109133386306662912

/-! ## A309855.P586676894191658777

`∩[A002476(n+1), A309854(n+1)]`
-/

namespace A309855.P586676894191658777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P586676894191658777

/-! ## A309855.P5181297386851691563

`∩[A007645(n+1), A309854(n+1)]`
-/

namespace A309855.P5181297386851691563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P5181297386851691563

/-! ## A309855.P13400854243814252150

`∩[A045331(n+1), A309854(n+1)]`
-/

namespace A309855.P13400854243814252150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P13400854243814252150

/-! ## A309855.P1456353003150518943

`∩[A045375(n+1), A309854(n+1)]`
-/

namespace A309855.P1456353003150518943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P1456353003150518943

/-! ## A309855.P16625777389625338110

`∩[A123365(n+1), A309854(n+1)]`
-/

namespace A309855.P16625777389625338110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P16625777389625338110

/-! ## A309855.P16733446168721027564

`∩[A279815(n+1), A309854(n+1)]`
-/

namespace A309855.P16733446168721027564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P16733446168721027564

/-! ## A309855.P17713506613376853518

`∩[A040116(n+1), A309854(n+1)]`
-/

namespace A309855.P17713506613376853518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P17713506613376853518

/-! ## A309855.P2198854763615794615

`∩[A045348(n+1), A309854(n+1)]`
-/

namespace A309855.P2198854763615794615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P2198854763615794615

/-! ## A309855.P12260442112579491341

`∩[A045371(n+1), A309854(n+1)]`
-/

namespace A309855.P12260442112579491341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P12260442112579491341

/-! ## A309855.P4847317536820356653

`∩[A309854(n+1), A325143(n+1)]`
-/

namespace A309855.P4847317536820356653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P4847317536820356653

/-! ## A309855.P13145888562192019845

`∩[A045393(n+1), A309854(n+1)]`
-/

namespace A309855.P13145888562192019845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P13145888562192019845

/-! ## A309855.P7142938219499899061

`∩[A140557(n+1), A309854(n+1)]`
-/

namespace A309855.P7142938219499899061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P7142938219499899061

/-! ## A309855.P10877271799788385062

`∩[A167464(n+1), A309854(n+1)]`
-/

namespace A309855.P10877271799788385062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P10877271799788385062

/-! ## A309855.P15220712415591925733

`∩[A140562(n+1), A309854(n+1)]`
-/

namespace A309855.P15220712415591925733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P15220712415591925733

/-! ## A309855.P16299489021195555742

`∩[A140563(n+1), A309854(n+1)]`
-/

namespace A309855.P16299489021195555742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P16299489021195555742

/-! ## A309855.P17045453400013106565

`∩[A049591(n+1), A309854(n+1)]`
-/

namespace A309855.P17045453400013106565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P17045453400013106565

/-! ## A309855.P17580523684883178788

`∩[A067774(n+1), A309854(n+1)]`
-/

namespace A309855.P17580523684883178788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P17580523684883178788

/-! ## A309855.P6859849766770729901

`∩[A138645(n+1), A309854(n+1)]`
-/

namespace A309855.P6859849766770729901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309855.P6859849766770729901

/-!
# A309856: Primes of the form 2*p^3+1 where p is also prime.

The programs for A309856, there is no canonical definition to state claims against.
-/

/-! ## A309856.P17988619951781875826

`2*A309857(n+1)^3+1`
-/

namespace A309856.P17988619951781875826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309857 (n + 1) ^ 3 + 1

end

end A309856.P17988619951781875826

/-! ## A309856.P16165221215862644201

`A033562(A309857(n+1))`
-/

namespace A309856.P16165221215862644201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (A309857 (n + 1)).toNat

end

end A309856.P16165221215862644201

/-! ## A309856.P5553719928741595661

`A033431(A309857(C(n+1, n)))+1`
-/

namespace A309856.P5553719928741595661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (A309857 (Nat.choose (n + 1) n)).toNat + 1

end

end A309856.P5553719928741595661

/-! ## A309856.P18244993112893560577

`A033431(A309857(Δ[n²]-n))+1`
-/

namespace A309856.P18244993112893560577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (A309857 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat + 1

end

end A309856.P18244993112893560577

/-! ## A309856.P104207569107988274

`or(1, A033431(A309857(Δ[(2*n-n)²]-n)))`
-/

namespace A309856.P104207569107988274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033431 (A309857 (f1 (n + 1) - f1 n - (n : ℤ)).toNat).toNat)

end

end A309856.P104207569107988274

/-! ## A309856.P13998752894057253462

`or(A033431(A309857(n+1))+1, A008683(n+1)²)`
-/

namespace A309856.P13998752894057253462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033431 (A309857 (n + 1)).toNat + 1) (A008683 (n + 1) ^ 2)

end

end A309856.P13998752894057253462

/-! ## A309856.P7711936146696778758

`A033431(A309857(n+1))^A001222(A007918(n))+1`
-/

namespace A309856.P7711936146696778758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033431 (A309857 (n + 1)).toNat : ℚ) ^ (A001222 (A007918 n).toNat : ℤ) + 1

end

end A309856.P7711936146696778758

/-!
# A309857: Primes p such that 2*p^3+1 is also prime.

The programs for A309857, there is no canonical definition to state claims against.
-/

/-! ## A309857.P7074572048656046246

`p?[A168550(n+1)]`
-/

namespace A309857.P7074572048656046246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309857.P7074572048656046246

/-! ## A309857.P2968096787389497533

`p?[record[A168550(A262519(n))]]`
-/

namespace A309857.P2968096787389497533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309857.P2968096787389497533

/-! ## A309857.P8172369077279312843

`p?[record[A168550(A286378(n))]]`
-/

namespace A309857.P8172369077279312843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309857.P8172369077279312843

/-! ## A309857.P8629441319195232454

`p?[record[A168550(A328396(n))]]`
-/

namespace A309857.P8629441319195232454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309857.P8629441319195232454

/-! ## A309857.P799460469607251102

`record[A020639(A168550(n+2))]`
-/

namespace A309857.P799460469607251102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A168550 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309857.P799460469607251102

/-! ## A309857.P13566004789685678257

`filter[A168550(n+1), A010051(#)]`
-/

namespace A309857.P13566004789685678257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A309857.P13566004789685678257

/-! ## A309857.P8647088525371611738

`filter[A168550(n+2), A080339(#)]`
-/

namespace A309857.P8647088525371611738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A309857.P8647088525371611738

/-! ## A309857.P12914901414523671586

`∩[A003627(n+1), A168550(n+1)]`
-/

namespace A309857.P12914901414523671586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309857.P12914901414523671586

/-! ## A309857.P18007294638514487735

`∩[A040028(n+1), A168550(n+1)]`
-/

namespace A309857.P18007294638514487735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309857.P18007294638514487735

/-! ## A309857.P1286160431874359528

`∩[A040036(n+1), A168550(n+1)]`
-/

namespace A309857.P1286160431874359528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309857.P1286160431874359528

/-!
# A309858: Number A(n,k) of k-uniform hypergraphs on n unlabeled nodes; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A309858, there is no canonical definition to state claims against.
-/

/-! ## A309858.P11577948612118904592

`A118088(A252753(A026729(n)²))`
-/

namespace A309858.P11577948612118904592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118088 (A252753 (A026729 n ^ 2).toNat).toNat

end

end A309858.P11577948612118904592

/-! ## A309858.P3983558024489141491

`A265569(A062399(A026729(n)+1))`
-/

namespace A309858.P3983558024489141491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265569 (A062399 (A026729 n + 1).toNat).toNat

end

end A309858.P3983558024489141491

/-! ## A309858.P6938369548149752849

`A146852(A306209(n))+A026729(n)`
-/

namespace A309858.P6938369548149752849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146852 (A306209 n).toNat + A026729 n

end

end A309858.P6938369548149752849

/-! ## A309858.P914829462630101119

`A304042(A323483(n))+A026729(n)`
-/

namespace A309858.P914829462630101119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A323483 n).toNat + A026729 n

end

end A309858.P914829462630101119

/-! ## A309858.P8158838180833759296

`A235224(2^A098158(n))`
-/

namespace A309858.P8158838180833759296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A098158 n : ℤ))).toNat

end

end A309858.P8158838180833759296

/-!
# A309860: Number of 6-uniform hypergraphs on n unlabeled nodes.

The programs for A309860, there is no canonical definition to state claims against.
-/

/-! ## A309860.P12460375680888071697

`A332760(A218628(n)+2)`
-/

namespace A309860.P12460375680888071697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332760 (A218628 n + 2).toNat

end

end A309860.P12460375680888071697

/-! ## A309860.P13880396314399865939

`A047997(∏[or(1, A216632(n+1))])`
-/

namespace A309860.P13880396314399865939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A216632 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047997 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309860.P13880396314399865939

/-!
# A309861: Number of 7-uniform hypergraphs on n unlabeled nodes.

The programs for A309861, there is no canonical definition to state claims against.
-/

/-! ## A309861.P7485092749139659109

`A309858(A155212(n+4))`
-/

namespace A309861.P7485092749139659109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309858 (A155212 (n + 4)).toNat

end

end A309861.P7485092749139659109

/-!
# A309863: Number of 9-uniform hypergraphs on n unlabeled nodes.

The programs for A309863, there is no canonical definition to state claims against.
-/

/-! ## A309863.P11038904501292999256

`A000088(floor(∑[3*a(n-1)]/4))` with `a(0)=2, a(1)=1, a(2)=2, a(3)=1, a(4)=1, a(5)=-6, a(6)=1, a(7)=3, a(8)=1`
-/

namespace A309863.P11038904501292999256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2, 1, 1, -6, 1, 3, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋.toNat

end

end A309863.P11038904501292999256

/-! ## A309863.P2384262912944222141

`A000088(A000088(∑[floor(n/8)]))`
-/

namespace A309863.P2384262912944222141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (A000088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A309863.P2384262912944222141

/-! ## A309863.P11257905010492536103

`A000088(C(A026814(n)+2, 3)+n%2)`
-/

namespace A309863.P11257905010492536103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (Nat.choose (A026814 n + 2).toNat 3 + n % 2)

end

end A309863.P11257905010492536103

/-! ## A309863.P3867493741670234308

`A000088(floor(A000997(n)/A277777(n+1)))`
-/

namespace A309863.P3867493741670234308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 ⌊(A000997 n : ℚ) / (A277777 (n + 1) : ℚ)⌋.toNat

end

end A309863.P3867493741670234308

/-! ## A309863.P14235349078638527235

`A000088(ceil(A014138(n)/A121943(n+3)))`
-/

namespace A309863.P14235349078638527235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 ⌈(A014138 n : ℚ) / (A121943 (n + 3) : ℚ)⌉.toNat

end

end A309863.P14235349078638527235

/-!
# A309865: Number T(n,k) of k-uniform hypergraphs on n unlabeled nodes; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A309865, there is no canonical definition to state claims against.
-/

/-! ## A309865.P14558790252047985636

`A309876(n)+1`
-/

namespace A309865.P14558790252047985636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309876 n + 1

end

end A309865.P14558790252047985636

/-! ## A309865.P8063005792577580127

`2-(A000108(C(n, n²)!)-A309876(n))`
-/

namespace A309865.P8063005792577580127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000108 (Nat.factorial (Nat.choose n (n ^ 2))) - A309876 n)

end

end A309865.P8063005792577580127

/-! ## A309865.P418042883840858775

`abs(A008683(A007918(n))-A309876(n))`
-/

namespace A309865.P418042883840858775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A007918 n).toNat - A309876 n|

end

end A309865.P418042883840858775

/-! ## A309865.P15843431518926964256

`A052905(n)-(A055999(n)-A309876(n))`
-/

namespace A309865.P15843431518926964256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n - (A055999 n - A309876 n)

end

end A309865.P15843431518926964256

/-! ## A309865.P15444732572471537664

`A295680(n)%2-(A008683(A007918(n))-A309876(n))`
-/

namespace A309865.P15444732572471537664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295680 n) 2 - (A008683 (A007918 n).toNat - A309876 n)

end

end A309865.P15444732572471537664

/-!
# A309866: Coefficients of 3-adic expansion of exp(-3).

The programs for A309866, there is no canonical definition to state claims against.
-/

/-! ## A309866.P3237057062401448409

`Δ[A309901(n)]/3^n`
-/

namespace A309866.P3237057062401448409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309901 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (3 ^ n : ℚ)

end

end A309866.P3237057062401448409

/-! ## A309866.P17792060116529141086

`abs(Δ[A309901(n)]/A000244(n))`
-/

namespace A309866.P17792060116529141086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309901 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) / (A000244 n : ℚ)|

end

end A309866.P17792060116529141086

/-! ## A309866.P12667978002083947522

`ceil(Δ[A309901(n)]/A014211(n))`
-/

namespace A309866.P12667978002083947522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A014211 n : ℚ)⌉

end

end A309866.P12667978002083947522

/-! ## A309866.P18055301532218099370

`floor(A309901(n+1)/A000244(n))`
-/

namespace A309866.P18055301532218099370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309901 (n + 1) : ℚ) / (A000244 n : ℚ)⌋

end

end A309866.P18055301532218099370

/-! ## A309866.P10709837860214045835

`(Δ[A309901(n)]/A000244(n))%A000005(n+9)²`
-/

namespace A309866.P10709837860214045835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A000244 n : ℚ))) (A000005 (n + 9) ^ 2)

end

end A309866.P10709837860214045835

/-!
# A309868: Number of uniform hypergraphs on n unlabeled nodes with at least one (possibly empty) hyperedge.

The programs for A309868, there is no canonical definition to state claims against.
-/

/-! ## A309868.P7624291085398938756

`∑[A301481(n)]`
-/

namespace A309868.P7624291085398938756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309868.P7624291085398938756

/-!
# A309870: a(n) is the smallest number whose digits are 1's and 0's that cannot be written as a concatenation of any of the previous terms (not repeating any terms in the concatenation). a(0) = 0.

The programs for A309870, there is no canonical definition to state claims against.
-/

/-! ## A309870.P17943432824013666245

`A105026(A072641(n))`
-/

namespace A309870.P17943432824013666245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105026 (A072641 n).toNat

end

end A309870.P17943432824013666245

/-! ## A309870.P4950411758646821647

`A112867(A136861(n+1))`
-/

namespace A309870.P4950411758646821647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112867 (A136861 (n + 1)).toNat

end

end A309870.P4950411758646821647

/-! ## A309870.P3701786616142523360

`A105026(A004148(n)-1+n)`
-/

namespace A309870.P3701786616142523360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105026 (A004148 n - 1 + (n : ℤ)).toNat

end

end A309870.P3701786616142523360

/-!
# A309872: For each term, take the last digit of the previous term and count all the appearances of that digit up to and including the previous term; the first term is 1.

The programs for A309872, there is no canonical definition to state claims against.
-/

/-! ## A309872.P16740218843461291187

`A335497(n+1)%A265809(n+1)`
-/

namespace A309872.P16740218843461291187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335497 (n + 1)) (A265809 (n + 1))

end

end A309872.P16740218843461291187

/-! ## A309872.P12779841858896544461

`and(A335497(n+1), A335574(n+2))`
-/

namespace A309872.P12779841858896544461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A335497 (n + 1)) (A335574 (n + 2))

end

end A309872.P12779841858896544461

/-! ## A309872.P14903299437131339739

`A309913(A310001(n))+A276457(n)`
-/

namespace A309872.P14903299437131339739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309913 (A310001 n).toNat + A276457 n

end

end A309872.P14903299437131339739

/-! ## A309872.P392273988043904969

`A335497(n+1)+A335453(A026725(n))`
-/

namespace A309872.P392273988043904969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335497 (n + 1) + A335453 (A026725 n).toNat

end

end A309872.P392273988043904969

/-! ## A309872.P13827827957632132265

`A335497(n+1)-A335460(A199333(n))`
-/

namespace A309872.P13827827957632132265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335497 (n + 1) - A335460 (A199333 n).toNat

end

end A309872.P13827827957632132265

/-!
# A309873: Period-doubling turn sequence, +1 when the 2-adic valuation of n is even or -1 when odd.

The programs for A309873, the canonical program `A309873.P5021135503689677303` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309873 has offset 1).

The definition of A309873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309873.P5021135503689677303

`1-2*A096268(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A309873

/-- `1-2*A096268(n)` -/
def P5021135503689677303.Spec : Prop :=
  ∀ n, P5021135503689677303.a n = A309873 (n + 1)

theorem P5021135503689677303.correct : P5021135503689677303.Spec := by
  intro n
  simp only [A309873, Nat.add_sub_cancel]

end A309873

/-! ## A309873.P6728740704167833396

`(-1)^A007814(n+1)`
-/

namespace A309873.P6728740704167833396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A309873.P6728740704167833396

namespace A309873

/-- `(-1)^A007814(n+1)` -/
def P6728740704167833396.Spec : Prop :=
  ∀ n, P6728740704167833396.a n = (A309873 (n + 1) : ℚ)

end A309873

/-! ## A309873.P14134119136309980022

`2*A035263(n+1)-1`
-/

namespace A309873.P14134119136309980022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035263 (n + 1) - 1

end

end A309873.P14134119136309980022

namespace A309873

/-- `2*A035263(n+1)-1` -/
def P14134119136309980022.Spec : Prop :=
  ∀ n, P14134119136309980022.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P15259536628472268875

`A035263(n+1)-A096268(n)`
-/

namespace A309873.P15259536628472268875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) - A096268 n

end

end A309873.P15259536628472268875

namespace A309873

/-- `A035263(n+1)-A096268(n)` -/
def P15259536628472268875.Spec : Prop :=
  ∀ n, P15259536628472268875.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P2303903190006340728

`(-1)^val(n+1, 2)`
-/

namespace A309873.P2303903190006340728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

end

end A309873.P2303903190006340728

namespace A309873

/-- `(-1)^val(n+1, 2)` -/
def P2303903190006340728.Spec : Prop :=
  ∀ n, P2303903190006340728.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P9890900547447308206

`cos(π*val(n+1, 2))`
-/

namespace A309873.P9890900547447308206
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.pi * (SequenceMachineLib.valuation (n + 1) 2 : ℝ))

end

end A309873.P9890900547447308206

namespace A309873

/-- `cos(π*val(n+1, 2))` -/
def P9890900547447308206.Spec : Prop :=
  ∀ n, P9890900547447308206.a n = (A309873 (n + 1) : ℝ)

end A309873

/-! ## A309873.P1020309185589059103

`2-gcd(3, xor(n, n+1))`
-/

namespace A309873.P1020309185589059103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 3 (Nat.xor n (n + 1)) : ℤ)

end

end A309873.P1020309185589059103

namespace A309873

/-- `2-gcd(3, xor(n, n+1))` -/
def P1020309185589059103.Spec : Prop :=
  ∀ n, P1020309185589059103.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P2320710876938672355

`2-xor(n, n+1)%6`
-/

namespace A309873.P2320710876938672355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.xor n (n + 1) % 6 : ℕ) : ℤ)

end

end A309873.P2320710876938672355

namespace A309873

/-- `2-xor(n, n+1)%6` -/
def P2320710876938672355.Spec : Prop :=
  ∀ n, P2320710876938672355.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P9476151665250300235

`(-a(floor(n/2)))^n` with `a(0)=1`
-/

namespace A309873.P9476151665250300235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-a ⌊(n : ℚ) / 2⌋.toNat) ^ n

end

end A309873.P9476151665250300235

namespace A309873

/-- `(-a(floor(n/2)))^n` -/
def P9476151665250300235.Spec : Prop :=
  ∀ n, P9476151665250300235.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P5086797345214086147

`gcd(4, val((n+1)², 2))-3`
-/

namespace A309873.P5086797345214086147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (SequenceMachineLib.valuation ((n + 1) ^ 2) 2) : ℤ) - 3

end

end A309873.P5086797345214086147

namespace A309873

/-- `gcd(4, val((n+1)², 2))-3` -/
def P5086797345214086147.Spec : Prop :=
  ∀ n, P5086797345214086147.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P1884017867551221324

`1-and(2, val((n+1)², 2))`
-/

namespace A309873.P1884017867551221324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 (SequenceMachineLib.valuation ((n + 1) ^ 2) 2) : ℤ)

end

end A309873.P1884017867551221324

namespace A309873

/-- `1-and(2, val((n+1)², 2))` -/
def P1884017867551221324.Spec : Prop :=
  ∀ n, P1884017867551221324.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P15699765264315272521

`1-2*val(n+1, 2)%2`
-/

namespace A309873.P15699765264315272521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (SequenceMachineLib.valuation (n + 1) 2 % 2) : ℕ) : ℤ)

end

end A309873.P15699765264315272521

namespace A309873

/-- `1-2*val(n+1, 2)%2` -/
def P15699765264315272521.Spec : Prop :=
  ∀ n, P15699765264315272521.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P11389553835255848958

`1-(a(floor((n-1)/2))+a(n-1))` with `a(0)=1`
-/

namespace A309873.P11389553835255848958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - 1))

end

end A309873.P11389553835255848958

namespace A309873

/-- `1-(a(floor((n-1)/2))+a(n-1))` -/
def P11389553835255848958.Spec : Prop :=
  ∀ n, P11389553835255848958.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P9609457751558844980

`1-a(floor((n-1)/2))-a(n-1)` with `a(0)=1`
-/

namespace A309873.P9609457751558844980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat - a (n - 1)

end

end A309873.P9609457751558844980

namespace A309873

/-- `1-a(floor((n-1)/2))-a(n-1)` -/
def P9609457751558844980.Spec : Prop :=
  ∀ n, P9609457751558844980.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P4858335212172742653

`Δ[A068639(n)]`
-/

namespace A309873.P4858335212172742653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309873.P4858335212172742653

namespace A309873

/-- `Δ[A068639(n)]` -/
def P4858335212172742653.Spec : Prop :=
  ∀ n, P4858335212172742653.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P10048323113169200203

`-ratio[A106400(n)]`
-/

namespace A309873.P10048323113169200203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A309873.P10048323113169200203

namespace A309873

/-- `-ratio[A106400(n)]` -/
def P10048323113169200203.Spec : Prop :=
  ∀ n, P10048323113169200203.a n = (A309873 (n + 1) : ℚ)

end A309873

/-! ## A309873.P11636278358471438094

`or(1, Δ[A096268(n)])`
-/

namespace A309873.P11636278358471438094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A309873.P11636278358471438094

namespace A309873

/-- `or(1, Δ[A096268(n)])` -/
def P11636278358471438094.Spec : Prop :=
  ∀ n, P11636278358471438094.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P1029534883391466385

`A014655(val(n+1, 2))`
-/

namespace A309873.P1029534883391466385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014655 (SequenceMachineLib.valuation (n + 1) 2)

end

end A309873.P1029534883391466385

namespace A309873

/-- `A014655(val(n+1, 2))` -/
def P1029534883391466385.Spec : Prop :=
  ∀ n, P1029534883391466385.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P10363453908640654304

`A015063(val(n+1, 2))`
-/

namespace A309873.P10363453908640654304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015063 (SequenceMachineLib.valuation (n + 1) 2)

end

end A309873.P10363453908640654304

namespace A309873

/-- `A015063(val(n+1, 2))` -/
def P10363453908640654304.Spec : Prop :=
  ∀ n, P10363453908640654304.a n = A309873 (n + 1)

end A309873

/-! ## A309873.P2859518939686655930

`A033999(val(n+1, 2))`
-/

namespace A309873.P2859518939686655930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.valuation (n + 1) 2)

end

end A309873.P2859518939686655930

namespace A309873

/-- `A033999(val(n+1, 2))` -/
def P2859518939686655930.Spec : Prop :=
  ∀ n, P2859518939686655930.a n = A309873 (n + 1)

end A309873

/-!
# A309874: a(n) = 2*n*Fibonacci(n-2) + (-1)^n + 1.

The programs for A309874, the canonical program `A309874.P12989217329271986297` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309874 has offset 2).

The definition of A309874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309874.P3182500853250414268

`2*A323812(n+2)`
-/

namespace A309874.P3182500853250414268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A323812 (n + 2)

end

end A309874.P3182500853250414268

namespace A309874

/-- `2*A323812(n+2)` -/
def P3182500853250414268.Spec : Prop :=
  ∀ n, P3182500853250414268.a n = A309874 (n + 2)

end A309874

/-! ## A309874.P12989217329271986297

`2*((n+1)%2+(n+2)*A000045(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A309874

/-- `2*((n+1)%2+(n+2)*A000045(n))` -/
def P12989217329271986297.Spec : Prop :=
  ∀ n, P12989217329271986297.a n = A309874 (n + 2)

theorem P12989217329271986297.correct : P12989217329271986297.Spec := by
  intro n
  simp only [A309874, Nat.add_sub_cancel]

end A309874

/-! ## A309874.P6179848656809260614

`A324128(n)+A022087(n)`
-/

namespace A309874.P6179848656809260614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324128 n + A022087 n

end

end A309874.P6179848656809260614

namespace A309874

/-- `A324128(n)+A022087(n)` -/
def P6179848656809260614.Spec : Prop :=
  ∀ n, P6179848656809260614.a n = A309874 (n + 2)

end A309874

/-! ## A309874.P15591439290224593451

`2*(A166012(n)+A045925(n))`
-/

namespace A309874.P15591439290224593451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A166012 n + A045925 n)

end

end A309874.P15591439290224593451

namespace A309874

/-- `2*(A166012(n)+A045925(n))` -/
def P15591439290224593451.Spec : Prop :=
  ∀ n, P15591439290224593451.a n = A309874 (n + 2)

end A309874

/-! ## A309874.P18003880636846762992

`2*(A127968(n)+A120940(n))`
-/

namespace A309874.P18003880636846762992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A127968 n + A120940 n)

end

end A309874.P18003880636846762992

namespace A309874

/-- `2*(A127968(n)+A120940(n))` -/
def P18003880636846762992.Spec : Prop :=
  ∀ n, P18003880636846762992.a n = A309874 (n + 2)

end A309874

/-! ## A309874.P13834060301864200130

`2*(A006490(n+2)+A000035(n+1))`
-/

namespace A309874.P13834060301864200130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006490 (n + 2) + A000035 (n + 1))

end

end A309874.P13834060301864200130

namespace A309874

/-- `2*(A006490(n+2)+A000035(n+1))` -/
def P13834060301864200130.Spec : Prop :=
  ∀ n, P13834060301864200130.a n = A309874 (n + 2)

end A309874

/-! ## A309874.P13610184845589451003

`2*(A182614(n+1)-A136376(n+1))`
-/

namespace A309874.P13610184845589451003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A182614 (n + 1) - A136376 (n + 1))

end

end A309874.P13610184845589451003

namespace A309874

/-- `2*(A182614(n+1)-A136376(n+1))` -/
def P13610184845589451003.Spec : Prop :=
  ∀ n, P13610184845589451003.a n = A309874 (n + 2)

end A309874

/-! ## A309874.P8461613161357083614

`2^(n+2)-A035615(n+2)`
-/

namespace A309874.P8461613161357083614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A035615 (n + 2)

end

end A309874.P8461613161357083614

namespace A309874

/-- `2^(n+2)-A035615(n+2)` -/
def P8461613161357083614.Spec : Prop :=
  ∀ n, P8461613161357083614.a n = A309874 (n + 2)

end A309874

/-!
# A309875: Cubefree colossally superabundant numbers: cubefree numbers (A004709) k for which there is a positive exponent epsilon such that sigma(k)/k^{1 + epsilon} >= sigma(j)/j^{1 + epsilon} for all cubefree j > 1, so that k attains the maximum value of sigma(k)/k^{1 + epsilon} over the cubefree numbers.

The programs for A309875, there is no canonical definition to state claims against.
-/

/-! ## A309875.P8715256433407699980

`∏[p?[A219964(A242415(n+1))]]`
-/

namespace A309875.P8715256433407699980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 (A242415 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A309875.P8715256433407699980

/-! ## A309875.P7448625042715229961

`∏[p?[A219964(A242420(n+1))]]`
-/

namespace A309875.P7448625042715229961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 (A242420 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A309875.P7448625042715229961

/-! ## A309875.P10825541099760548947

`∏[p?[A257241(A350390(n+1))]]`
-/

namespace A309875.P10825541099760548947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257241 (A350390 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A309875.P10825541099760548947

/-! ## A309875.P17462419249294211640

`∏[p?[A297109(A325368(n+1))+1]]`
-/

namespace A309875.P17462419249294211640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A325368 (n + 1)).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A309875.P17462419249294211640

/-! ## A309875.P2908812697330354150

`∏[p?[A235791(n+1)*A285914(n+1)]]`
-/

namespace A309875.P2908812697330354150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (n + 1) * A285914 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A309875.P2908812697330354150

/-!
# A309876: Number T(n,k) of k-uniform hypergraphs on n unlabeled nodes with at least one (possibly empty) hyperedge; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A309876, there is no canonical definition to state claims against.
-/

/-! ## A309876.P3016937876658086988

`A309865(n)-1`
-/

namespace A309876.P3016937876658086988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309865 n - 1

end

end A309876.P3016937876658086988

/-! ## A309876.P252547012001465407

`A001478(n+1)+A309865(n)+n`
-/

namespace A309876.P252547012001465407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A309865 n + (n : ℤ))

end

end A309876.P252547012001465407

/-! ## A309876.P11234893025410119628

`A309873(A016825(n))+A309865(n)`
-/

namespace A309876.P11234893025410119628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A016825 n).toNat + A309865 n

end

end A309876.P11234893025410119628

/-! ## A309876.P9348138326250952554

`A349340(A342505(n+1))+A309865(n)`
-/

namespace A309876.P9348138326250952554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A342505 (n + 1)).toNat + A309865 n

end

end A309876.P9348138326250952554

/-! ## A309876.P134955474905795437

`A349340(A342509(n+1))+A309865(n)`
-/

namespace A309876.P134955474905795437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A342509 (n + 1)).toNat + A309865 n

end

end A309876.P134955474905795437

/-!
# A309877: a(n) is the smallest number k such that the difference between the next prime greater than k and k equals n.

The programs for A309877, there is no canonical definition to state claims against.
-/

/-! ## A309877.P11752637638582498482

`A230358(A052928(n))-(n%2+1)`
-/

namespace A309877.P11752637638582498482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230358 (A052928 n).toNat - ((n % 2 + 1 : ℕ) : ℤ)

end

end A309877.P11752637638582498482

/-! ## A309877.P15467506009512781297

`A230358(A052928(n))-A000034(n)`
-/

namespace A309877.P15467506009512781297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230358 (A052928 n).toNat - A000034 n

end

end A309877.P15467506009512781297

/-! ## A309877.P15640121045241849514

`A230358(A052928(n))-Δ[A032766(n)]`
-/

namespace A309877.P15640121045241849514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230358 (A052928 n).toNat - (f1 (n + 1) - f1 n)

end

end A309877.P15640121045241849514

/-! ## A309877.P1264200808089810243

`A230358(A052928(n))-(A000035(n)+1)`
-/

namespace A309877.P1264200808089810243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230358 (A052928 n).toNat - (A000035 n + 1)

end

end A309877.P1264200808089810243

/-! ## A309877.P1452037725299728781

`A230358(A052928(n))-A040001(n+1)`
-/

namespace A309877.P1452037725299728781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230358 (A052928 n).toNat - A040001 (n + 1)

end

end A309877.P1452037725299728781

/-! ## A309877.P12825879243100798894

`A230358(A052928(n))+A059841(n)-2`
-/

namespace A309877.P12825879243100798894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230358 (A052928 n).toNat + (A059841 n - 2)

end

end A309877.P12825879243100798894

/-! ## A309877.P15262625774634095474

`A230358(A052928(n))-Δ[A001651(n+1)]`
-/

namespace A309877.P15262625774634095474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230358 (A052928 n).toNat - (f1 (n + 1) - f1 n)

end

end A309877.P15262625774634095474

/-! ## A309877.P11812441603821144184

`A230358(A052928(n))-A000005(gcd(n+1, n-1))`
-/

namespace A309877.P11812441603821144184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230358 (A052928 n).toNat - A000005 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1))

end

end A309877.P11812441603821144184

/-! ## A309877.P9781738371287916255

`A230358(A052928(n))-A006530(A006519(n+1))`
-/

namespace A309877.P9781738371287916255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230358 (A052928 n).toNat - A006530 (A006519 (n + 1)).toNat

end

end A309877.P9781738371287916255

/-! ## A309877.P2428138780722126731

`A230358(n)-1`
-/

namespace A309877.P2428138780722126731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230358 n - 1

end

end A309877.P2428138780722126731

/-! ## A309877.P17739558007775435808

`A262593(gcd(n, n+1))+A230358(n)`
-/

namespace A309877.P17739558007775435808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262593 (Nat.gcd n (n + 1)) + A230358 n

end

end A309877.P17739558007775435808

/-! ## A309877.P7260196147030768453

`A321800(A007920(n))+A230358(n)`
-/

namespace A309877.P7260196147030768453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A007920 n).toNat + A230358 n

end

end A309877.P7260196147030768453

/-! ## A309877.P10057345300303650448

`A321800(A130321(n))+A230358(n)`
-/

namespace A309877.P10057345300303650448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A130321 n).toNat + A230358 n

end

end A309877.P10057345300303650448

/-! ## A309877.P14378609762655874414

`A316441(A000040(n+1))+A230358(n)`
-/

namespace A309877.P14378609762655874414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A230358 n

end

end A309877.P14378609762655874414

/-! ## A309877.P12798156642166466009

`A321800(A006519(n+1))+A230358(n)`
-/

namespace A309877.P12798156642166466009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A006519 (n + 1)).toNat + A230358 n

end

end A309877.P12798156642166466009

/-!
# A309878: The real part of b(n) where b(n) = (n + b(n-1)) * (1 + i) with b(-1)=0; i = sqrt(-1).

The programs for A309878, the canonical program `A309878.P12757710739588681327` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309878 has offset 0).

The definition of A309878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309878.P12757710739588681327

`4*a(n-1)-7*a(n-2)+6*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309878

/-- `4*a(n-1)-7*a(n-2)+6*a(n-3)-2*a(n-4)` -/
def P12757710739588681327.Spec : Prop :=
  ∀ n, P12757710739588681327.a n = A309878 n

theorem P12757710739588681327.correct : P12757710739588681327.Spec := by
  intro n
  simp only [A309878]

end A309878

/-! ## A309878.P18317534797492565305

`∑[2*(a(n-1)-a(n-2))-1]` with `a(0)=0, a(1)=1`
-/

namespace A309878.P18317534797492565305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * (f1 (n - 1) - f1 (n - 2)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309878.P18317534797492565305

namespace A309878

/-- `∑[2*(a(n-1)-a(n-2))-1]` -/
def P18317534797492565305.Spec : Prop :=
  ∀ n, P18317534797492565305.a n = A309878 n

end A309878

/-! ## A309878.P12622625579007427343

`2*(a(n-1)+1-a(n-2))-n` with `a(0)=0, a(1)=1`
-/

namespace A309878.P12622625579007427343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) + (1 - a (n - 2))) - (n : ℤ)

end

end A309878.P12622625579007427343

namespace A309878

/-- `2*(a(n-1)+1-a(n-2))-n` -/
def P12622625579007427343.Spec : Prop :=
  ∀ n, P12622625579007427343.a n = A309878 n

end A309878

/-! ## A309878.P6147815819183252668

`2*(1-(a(n-2)-a(n-1)))-n` with `a(0)=0, a(1)=1`
-/

namespace A309878.P6147815819183252668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (1 - (a (n - 2) - a (n - 1))) - (n : ℤ)

end

end A309878.P6147815819183252668

namespace A309878

/-- `2*(1-(a(n-2)-a(n-1)))-n` -/
def P6147815819183252668.Spec : Prop :=
  ∀ n, P6147815819183252668.a n = A309878 n

end A309878

/-! ## A309878.P13671098628392282278

`a(n-1)+a(n-1)+2-(a(n-2)+a(n-2)+n)` with `a(0)=0, a(1)=1`
-/

namespace A309878.P13671098628392282278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (2 - (a (n - 2) + (a (n - 2) + (n : ℤ)))))

end

end A309878.P13671098628392282278

namespace A309878

/-- `a(n-1)+a(n-1)+2-(a(n-2)+a(n-2)+n)` -/
def P13671098628392282278.Spec : Prop :=
  ∀ n, P13671098628392282278.a n = A309878 n

end A309878

/-! ## A309878.P15635570241252065524

`2-(a(n-2)-(a(n-1)-(a(n-2)-(a(n-1)-n))))` with `a(0)=0, a(1)=1`
-/

namespace A309878.P15635570241252065524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - (a (n - 2) - (a (n - 1) - (a (n - 2) - (a (n - 1) - (n : ℤ)))))

end

end A309878.P15635570241252065524

namespace A309878

/-- `2-(a(n-2)-(a(n-1)-(a(n-2)-(a(n-1)-n))))` -/
def P15635570241252065524.Spec : Prop :=
  ∀ n, P15635570241252065524.a n = A309878 n

end A309878

/-! ## A309878.P10936268900456591862

`∑[A099087(n)-1]`
-/

namespace A309878.P10936268900456591862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309878.P10936268900456591862

namespace A309878

/-- `∑[A099087(n)-1]` -/
def P10936268900456591862.Spec : Prop :=
  ∀ n, P10936268900456591862.a n = A309878 n

end A309878

/-! ## A309878.P5165759876854593779

`A077860(n)-(n+1)`
-/

namespace A309878.P5165759876854593779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077860 n - (n + 1 : ℤ)

end

end A309878.P5165759876854593779

namespace A309878

/-- `A077860(n)-(n+1)` -/
def P5165759876854593779.Spec : Prop :=
  ∀ n, P5165759876854593779.a n = A309878 n

end A309878

/-! ## A309878.P2634602319356290587

`2*A009545(n)-n`
-/

namespace A309878.P2634602319356290587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009545 n - (n : ℤ)

end

end A309878.P2634602319356290587

namespace A309878

/-- `2*A009545(n)-n` -/
def P2634602319356290587.Spec : Prop :=
  ∀ n, P2634602319356290587.a n = A309878 n

end A309878

/-! ## A309878.P4495538139776558930

`∑[∑[A146559(n)]-1]`
-/

namespace A309878.P4495538139776558930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309878.P4495538139776558930

namespace A309878

/-- `∑[∑[A146559(n)]-1]` -/
def P4495538139776558930.Spec : Prop :=
  ∀ n, P4495538139776558930.a n = A309878 n

end A309878

/-! ## A309878.P6200890289530725415

`∑[A009545(n+1)-1]`
-/

namespace A309878.P6200890289530725415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309878.P6200890289530725415

namespace A309878

/-- `∑[A009545(n+1)-1]` -/
def P6200890289530725415.Spec : Prop :=
  ∀ n, P6200890289530725415.a n = A309878 n

end A309878

/-! ## A309878.P17073611386141534380

`A138614(2*n+3)-n`
-/

namespace A309878.P17073611386141534380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138614 (2 * n + 3) - (n : ℤ)

end

end A309878.P17073611386141534380

namespace A309878

/-- `A138614(2*n+3)-n` -/
def P17073611386141534380.Spec : Prop :=
  ∀ n, P17073611386141534380.a n = A309878 n

end A309878

/-! ## A309878.P7951613738635123230

`2*A138231(2*n)-n`
-/

namespace A309878.P7951613738635123230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138231 (2 * n) - (n : ℤ)

end

end A309878.P7951613738635123230

namespace A309878

/-- `2*A138231(2*n)-n` -/
def P7951613738635123230.Spec : Prop :=
  ∀ n, P7951613738635123230.a n = A309878 n

end A309878

/-! ## A309878.P16143371089443768802

`A106664(n+1)-or(1, n)`
-/

namespace A309878.P16143371089443768802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106664 (n + 1) - (Nat.lor 1 n : ℤ)

end

end A309878.P16143371089443768802

namespace A309878

/-- `A106664(n+1)-or(1, n)` -/
def P16143371089443768802.Spec : Prop :=
  ∀ n, P16143371089443768802.a n = A309878 n

end A309878

/-! ## A309878.P11272000950468643163

`2*A138232(2*n+1)-n`
-/

namespace A309878.P11272000950468643163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138232 (2 * n + 1) - (n : ℤ)

end

end A309878.P11272000950468643163

namespace A309878

/-- `2*A138232(2*n+1)-n` -/
def P11272000950468643163.Spec : Prop :=
  ∀ n, P11272000950468643163.a n = A309878 n

end A309878

/-! ## A309878.P10885383762623683076

`A106664(n+1)-A109613(n)`
-/

namespace A309878.P10885383762623683076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106664 (n + 1) - A109613 n

end

end A309878.P10885383762623683076

namespace A309878

/-- `A106664(n+1)-A109613(n)` -/
def P10885383762623683076.Spec : Prop :=
  ∀ n, P10885383762623683076.a n = A309878 n

end A309878

/-! ## A309878.P15670521472470001804

`2*A099087(A263313(n))-n`
-/

namespace A309878.P15670521472470001804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099087 (A263313 n).toNat - (n : ℤ)

end

end A309878.P15670521472470001804

namespace A309878

/-- `2*A099087(A263313(n))-n` -/
def P15670521472470001804.Spec : Prop :=
  ∀ n, P15670521472470001804.a n = A309878 n

end A309878

/-! ## A309878.P12200220817947179123

`A090131(n)-(A146559(n)+n)`
-/

namespace A309878.P12200220817947179123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090131 n - (A146559 n + (n : ℤ))

end

end A309878.P12200220817947179123

namespace A309878

/-- `A090131(n)-(A146559(n)+n)` -/
def P12200220817947179123.Spec : Prop :=
  ∀ n, P12200220817947179123.a n = A309878 n

end A309878

/-! ## A309878.P10904616876709185644

`A106664(n+1)-(A000035(n+1)+n)`
-/

namespace A309878.P10904616876709185644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106664 (n + 1) - (A000035 (n + 1) + (n : ℤ))

end

end A309878.P10904616876709185644

namespace A309878

/-- `A106664(n+1)-(A000035(n+1)+n)` -/
def P10904616876709185644.Spec : Prop :=
  ∀ n, P10904616876709185644.a n = A309878 n

end A309878

/-!
# A309879: Number of odd parts appearing among the fourth largest parts of the partitions of n into 5 parts.

The programs for A309879, there is no canonical definition to state claims against.
-/

/-! ## A309879.P12568099994168911300

`A026811(n)-A309881(n)`
-/

namespace A309879.P12568099994168911300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n - A309881 n

end

end A309879.P12568099994168911300

/-! ## A309879.P17139612542596217440

`A001401(n)-(A309881(n)+A001400(n))`
-/

namespace A309879.P17139612542596217440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - (A309881 n + A001400 n)

end

end A309879.P17139612542596217440

/-! ## A309879.P17007607778772689995

`A308822(n)/A028310(n)-A309881(n)`
-/

namespace A309879.P17007607778772689995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308822 n : ℚ) / (A028310 n : ℚ) - (A309881 n : ℚ)

end

end A309879.P17007607778772689995

/-! ## A309879.P15862911447841505746

`∑[A008667(n)-A266755(n)]-A309881(n)`
-/

namespace A309879.P15862911447841505746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n - A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309881 n

end

end A309879.P15862911447841505746

/-! ## A309879.P9877095752977020980

`A001401(n)-A026810(n+4)-A309881(n)`
-/

namespace A309879.P9877095752977020980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A026810 (n + 4) - A309881 n

end

end A309879.P9877095752977020980

/-! ## A309879.P10189942464762722991

`A288166(4*n)-A309881(n)`
-/

namespace A309879.P10189942464762722991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (4 * n) - A309881 n

end

end A309879.P10189942464762722991

/-!
# A309880: Sum of the odd parts appearing among the fourth largest parts in the partitions of n into 5 parts.

The programs for A309880, there is no canonical definition to state claims against.
-/

/-! ## A309880.P12824890343655483835

`A308824(n)-A309882(n)`
-/

namespace A309880.P12824890343655483835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308824 n - A309882 n

end

end A309880.P12824890343655483835

/-! ## A309880.P8046256399269194160

`A308824(n)-A156726(A212367(n+1))`
-/

namespace A309880.P8046256399269194160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308824 n - A156726 (A212367 (n + 1)).toNat

end

end A309880.P8046256399269194160

/-! ## A309880.P5496378385017126517

`A308824(n)-A156726(∑[A322803(n)]-n)`
-/

namespace A309880.P5496378385017126517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308824 n - A156726 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A309880.P5496378385017126517

/-! ## A309880.P5972430846984879797

`A308824(n)-2*A127321(A034445(2*(n+2)))`
-/

namespace A309880.P5972430846984879797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308824 n - 2 * A127321 (A034445 (2 * (n + 2))).toNat

end

end A309880.P5972430846984879797

/-!
# A309881: Number of even parts appearing among the fourth largest parts of the partitions of n into 5 parts.

The programs for A309881, there is no canonical definition to state claims against.
-/

/-! ## A309881.P2637634024947433100

`A026811(n)-A309879(n)`
-/

namespace A309881.P2637634024947433100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n - A309879 n

end

end A309881.P2637634024947433100

/-! ## A309881.P5478119816998240863

`A001401(n)-(A309879(n)+A001400(n))`
-/

namespace A309881.P5478119816998240863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - (A309879 n + A001400 n)

end

end A309881.P5478119816998240863

/-! ## A309881.P11874341714372431055

`A308822(n)/A028310(n)-A309879(n)`
-/

namespace A309881.P11874341714372431055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308822 n : ℚ) / (A028310 n : ℚ) - (A309879 n : ℚ)

end

end A309881.P11874341714372431055

/-! ## A309881.P3795767714585458123

`∑[A008667(n)-A266755(n)]-A309879(n)`
-/

namespace A309881.P3795767714585458123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n - A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309879 n

end

end A309881.P3795767714585458123

/-! ## A309881.P2331065237567586534

`A001401(n)-A026810(n+4)-A309879(n)`
-/

namespace A309881.P2331065237567586534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A026810 (n + 4) - A309879 n

end

end A309881.P2331065237567586534

/-! ## A309881.P8412092318943250659

`A288166(4*n)-A309879(n)`
-/

namespace A309881.P8412092318943250659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (4 * n) - A309879 n

end

end A309881.P8412092318943250659

/-!
# A309882: Sum of the even parts appearing among the fourth largest parts of the partitions of n into 5 parts.

The programs for A309882, there is no canonical definition to state claims against.
-/

/-! ## A309882.P13829849748414656708

`A308824(n)-A309880(n)`
-/

namespace A309882.P13829849748414656708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308824 n - A309880 n

end

end A309882.P13829849748414656708

/-! ## A309882.P17738075972203156629

`A156726(A212367(n+1))`
-/

namespace A309882.P17738075972203156629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156726 (A212367 (n + 1)).toNat

end

end A309882.P17738075972203156629

/-! ## A309882.P6741241187183784041

`A156726(∑[A322803(n)]-n)`
-/

namespace A309882.P6741241187183784041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156726 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A309882.P6741241187183784041

/-! ## A309882.P3651685934475667175

`2*A127321(A034445(2*(n+2)))`
-/

namespace A309882.P3651685934475667175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127321 (A034445 (2 * (n + 2))).toNat

end

end A309882.P3651685934475667175

/-! ## A309882.P1764513828052952594

`A156726(ratio[a(n-1)*A212367(n)])` with `a(0)=1`
-/

namespace A309882.P1764513828052952594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A212367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156726 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A309882.P1764513828052952594

/-!
# A309883: Numbers k such that A003132(k^2) = A003132(k), where A003132(n) is the sum of the squares of the digits of n.

The programs for A309883, there is no canonical definition to state claims against.
-/

/-! ## A309883.P15945833226648521279

`A167228(A089540(n+1))+A004126(n)`
-/

namespace A309883.P15945833226648521279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167228 (A089540 (n + 1)).toNat + A004126 n

end

end A309883.P15945833226648521279

/-!
# A309884: Numbers k such that A003132(k^3) = A003132(k), where A003132(n) is the sum of the squares of the digits of n.

The programs for A309884, there is no canonical definition to state claims against.
-/

/-! ## A309884.P7728027948190858096

`eq[A004086(n), A139262(A317642(2*n))]`
-/

namespace A309884.P7728027948190858096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 (A317642 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309884.P7728027948190858096

/-! ## A309884.P12100218984995659013

`eq[A004086(n), A139262(A028605(4*n))]`
-/

namespace A309884.P12100218984995659013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 (A028605 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309884.P12100218984995659013

/-!
# A309886: a(n) is the smallest number that cannot be obtained from the first n powers of two {2^0,2^1,...,2^(n-1)} using each power exactly once and the operations +,-,*,/. Parentheses are allowed.

The programs for A309886, there is no canonical definition to state claims against.
-/

/-! ## A309886.P10246938136220829112

`A275962(3*n+4)+A071314(n)`
-/

namespace A309886.P10246938136220829112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (3 * n + 4) + A071314 n

end

end A309886.P10246938136220829112

/-! ## A309886.P11845662909959548968

`A071314(n)+A036239(A274888(n))`
-/

namespace A309886.P11845662909959548968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071314 n + A036239 (A274888 n).toNat

end

end A309886.P11845662909959548968

/-! ## A309886.P494545642892216412

`A267610(A234017(n))+A071314(n)`
-/

namespace A309886.P494545642892216412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267610 (A234017 n).toNat + A071314 n

end

end A309886.P494545642892216412

/-! ## A309886.P11381658161809762013

`A309953(A309800(n))+A071314(n)`
-/

namespace A309886.P11381658161809762013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 (A309800 n).toNat + A071314 n

end

end A309886.P11381658161809762013

/-!
# A309887: Coefficients of 4-adic expansion of exp(4).

The programs for A309887, there is no canonical definition to state claims against.
-/

/-! ## A309887.P13211436925898142896

`A320815(2*n)+2*A320815(2*n+1)`
-/

namespace A309887.P13211436925898142896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320815 (2 * n) + 2 * A320815 (2 * n + 1)

end

end A309887.P13211436925898142896

/-! ## A309887.P11583307792336026835

`Δ[A320814(2*n)]/A000079(n)²`
-/

namespace A309887.P11583307792336026835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320814 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n ^ 2 : ℚ)

end

end A309887.P11583307792336026835

/-! ## A309887.P5426517448724317393

`Δ[A320814(2*n)]/A000079(2*n)`
-/

namespace A309887.P5426517448724317393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320814 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 (2 * n) : ℚ)

end

end A309887.P5426517448724317393

/-! ## A309887.P14084884474939174279

`Δ[A320814(2*n)]/A011782(n+1)²`
-/

namespace A309887.P14084884474939174279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320814 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A011782 (n + 1) ^ 2 : ℚ)

end

end A309887.P14084884474939174279

/-! ## A309887.P14215036574046156522

`Δ[A320814(2*n)]/A011782(2*n+1)`
-/

namespace A309887.P14215036574046156522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320814 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A011782 (2 * n + 1) : ℚ)

end

end A309887.P14215036574046156522

/-! ## A309887.P11931345667126431948

`Δ[A320814(2*n)]/A038231(∑[n])`
-/

namespace A309887.P11931345667126431948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320814 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A038231 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A309887.P11931345667126431948

/-!
# A309888: Coefficients of 5-adic expansion of exp(5).

The programs for A309888, there is no canonical definition to state claims against.
-/

/-! ## A309888.P14130601913620030325

`Δ[A309902(n)]/A000351(n)`
-/

namespace A309888.P14130601913620030325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309902 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000351 n : ℚ)

end

end A309888.P14130601913620030325

/-! ## A309888.P16070459927486520214

`floor(A309902(n+1)/A000351(n))`
-/

namespace A309888.P16070459927486520214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309902 (n + 1) : ℚ) / (A000351 n : ℚ)⌋

end

end A309888.P16070459927486520214

/-!
# A309890: Lexicographically earliest sequence of positive integers without triples in weakly increasing arithmetic progression.

The programs for A309890, there is no canonical definition to state claims against.
-/

/-! ## A309890.P16176034540438033891

`A229037(n+1)%A141214(A118235(n+1))`
-/

namespace A309890.P16176034540438033891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229037 (n + 1)) (A141214 (A118235 (n + 1)).toNat)

end

end A309890.P16176034540438033891

/-! ## A309890.P16637417213006333129

`(A248625(n)+1)%A141214(A118235(n+1))`
-/

namespace A309890.P16637417213006333129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248625 n + 1) (A141214 (A118235 (n + 1)).toNat)

end

end A309890.P16637417213006333129

/-! ## A309890.P16243838308063797338

`A348553(A248625(n))%A141214(A118235(n+1))`
-/

namespace A309890.P16243838308063797338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348553 (A248625 n).toNat) (A141214 (A118235 (n + 1)).toNat)

end

end A309890.P16243838308063797338

/-! ## A309890.P2342432458176786295

`A229037(n+1)%A049638(A009999(n))`
-/

namespace A309890.P2342432458176786295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229037 (n + 1)) (A049638 (A009999 n).toNat)

end

end A309890.P2342432458176786295

/-! ## A309890.P5724365207440569686

`(A248625(n)+1)%A049638(A009999(n))`
-/

namespace A309890.P5724365207440569686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248625 n + 1) (A049638 (A009999 n).toNat)

end

end A309890.P5724365207440569686

/-! ## A309890.P17393050151202951427

`A348553(A248625(n))%A049638(A009999(n))`
-/

namespace A309890.P17393050151202951427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348553 (A248625 n).toNat) (A049638 (A009999 n).toNat)

end

end A309890.P17393050151202951427

/-! ## A309890.P5391618471674404094

`A260056(A248625(n)²)%A049638(A009999(n))`
-/

namespace A309890.P5391618471674404094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260056 (A248625 n ^ 2).toNat) (A049638 (A009999 n).toNat)

end

end A309890.P5391618471674404094

/-! ## A309890.P6712628086254406066

`A008620(3*A248625(n))%A049638(A009999(n))`
-/

namespace A309890.P6712628086254406066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008620 (3 * A248625 n).toNat) (A049638 (A009999 n).toNat)

end

end A309890.P6712628086254406066

/-!
# A309891: a(n) is the total number of trailing zeros in the representations of n over all bases b >= 2.

The programs for A309891, there is no canonical definition to state claims against.
-/

/-! ## A309891.P3186262545884816110

`A169594(n+1)-1`
-/

namespace A309891.P3186262545884816110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169594 (n + 1) - 1

end

end A309891.P3186262545884816110

/-! ## A309891.P16044552179870358038

`A351923(n+1)-(n+1)`
-/

namespace A309891.P16044552179870358038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351923 (n + 1) - (n + 1 : ℤ)

end

end A309891.P16044552179870358038

/-! ## A309891.P3650174441937482409

`∑{d}[n+1, A089723(#)]-1`
-/

namespace A309891.P3650174441937482409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A089723 d - 1

end

end A309891.P3650174441937482409

/-! ## A309891.P15870749513533860144

`A023443(A169594(n+1))`
-/

namespace A309891.P15870749513533860144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A169594 (n + 1)).toNat

end

end A309891.P15870749513533860144

/-! ## A309891.P8229296549964383093

`A342929(A101296(n+1))-1`
-/

namespace A309891.P8229296549964383093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342929 (A101296 (n + 1)).toNat - 1

end

end A309891.P8229296549964383093

/-! ## A309891.P8083585223936361651

`A065423(2*A169594(n+1))`
-/

namespace A309891.P8083585223936361651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A169594 (n + 1)).toNat

end

end A309891.P8083585223936361651

/-! ## A309891.P11390202257992873556

`A351923(n+1)%A000027(n+1)`
-/

namespace A309891.P11390202257992873556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351923 (n + 1)) (A000027 (n + 1))

end

end A309891.P11390202257992873556

/-! ## A309891.P2261021142168032313

`floor(A014681(2*A169594(n+1))/2)`
-/

namespace A309891.P2261021142168032313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014681 (2 * A169594 (n + 1)).toNat : ℚ) / 2⌋

end

end A309891.P2261021142168032313

/-! ## A309891.P11513032141990952774

`A001478(n+1)+A169594(n+1)+n`
-/

namespace A309891.P11513032141990952774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A169594 (n + 1) + (n : ℤ))

end

end A309891.P11513032141990952774

/-! ## A309891.P8623100337135818072

`(A169594(A046523(n+1))+n)%(n+1)`
-/

namespace A309891.P8623100337135818072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169594 (A046523 (n + 1)).toNat + (n : ℤ)) (n + 1 : ℤ)

end

end A309891.P8623100337135818072

/-! ## A309891.P679636015903390033

`(A169594(n+1)+3*n)%A016777(n)`
-/

namespace A309891.P679636015903390033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169594 (n + 1) + (3 * n : ℤ)) (A016777 n)

end

end A309891.P679636015903390033

/-! ## A309891.P15329822599443817315

`(A169594(sqrt(A000290(n+1)))+n)%(n+1)`
-/

namespace A309891.P15329822599443817315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169594 (SequenceMachineLib.roundAway (Real.sqrt (A000290 (n + 1) : ℝ))).toNat + (n : ℤ)) (n + 1 : ℤ)

end

end A309891.P15329822599443817315

/-! ## A309891.P9554783450485642336

`∑{d}[n+1, A066637(#)*A114591((n+1)/#)]`
-/

namespace A309891.P9554783450485642336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066637 d * A114591 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309891.P9554783450485642336

/-! ## A309891.P9844259061646706443

`A309947(A101296(n+1))`
-/

namespace A309891.P9844259061646706443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309947 (A101296 (n + 1)).toNat

end

end A309891.P9844259061646706443

/-! ## A309891.P4003899832163787122

`A070198(n)%A169594(n+1)`
-/

namespace A309891.P4003899832163787122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A169594 (n + 1))

end

end A309891.P4003899832163787122

/-! ## A309891.P8733188573553070106

`A079782(n+1)%A169594(n+1)`
-/

namespace A309891.P8733188573553070106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A169594 (n + 1))

end

end A309891.P8733188573553070106

/-! ## A309891.P16083787346705434133

`A083685(n+1)%A169594(n+1)`
-/

namespace A309891.P16083787346705434133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A169594 (n + 1))

end

end A309891.P16083787346705434133

/-! ## A309891.P8933808353250659388

`A121934(n+1)%A169594(n+1)`
-/

namespace A309891.P8933808353250659388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A169594 (n + 1))

end

end A309891.P8933808353250659388

/-! ## A309891.P9591643830781747055

`A334739(A087560(n+1))`
-/

namespace A309891.P9591643830781747055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334739 (A087560 (n + 1)).toNat

end

end A309891.P9591643830781747055

/-! ## A309891.P7305593836629928408

`A030494(n+1)%A169594(n+1)`
-/

namespace A309891.P7305593836629928408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A169594 (n + 1))

end

end A309891.P7305593836629928408

/-!
# A309892: a(0) = 0, a(1) = 1, and for any n > 1, a(n) is the number of iterations of the map x -> x - gpf(x) (where gpf(x) denotes the greatest prime factor of x) required to reach 0 starting from n.

The programs for A309892, the canonical program `A309892.P4509692505962728463` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309892 has offset 0).

The definition of A309892 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076563, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309892.P4509692505962728463

`1+a(A076563(n))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A309892

/-- `1+a(A076563(n))` -/
def P4509692505962728463.Spec : Prop :=
  ∀ n, (P4509692505962728463.a n : ℤ) = A309892 n

theorem P4509692505962728463.correct : P4509692505962728463.Spec := by
  intro n
  simp only [A309892]

end A309892

/-! ## A309892.P9794226203795089325

`A289052(n+1)-1`
-/

namespace A309892.P9794226203795089325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289052 (n + 1) - 1

end

end A309892.P9794226203795089325

namespace A309892

/-- `A289052(n+1)-1` -/
def P9794226203795089325.Spec : Prop :=
  ∀ n, P9794226203795089325.a n = A309892 n

end A309892

/-! ## A309892.P632126586922729911

`a(A076563(n))+1` with `a(0)=0, a(1)=1`
-/

namespace A309892.P632126586922729911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A076563 n).toNat + 1

end

end A309892.P632126586922729911

namespace A309892

/-- `a(A076563(n))+1` -/
def P632126586922729911.Spec : Prop :=
  ∀ n, (P632126586922729911.a n : ℤ) = A309892 n

end A309892

/-! ## A309892.P11199180420740820003

`a(n-A006530(n))+1` with `a(0)=0`
-/

namespace A309892.P11199180420740820003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A006530 n).toNat + 1

end

end A309892.P11199180420740820003

namespace A309892

/-- `a(n-A006530(n))+1` -/
def P11199180420740820003.Spec : Prop :=
  ∀ n, (P11199180420740820003.a n : ℤ) = A309892 n

end A309892

/-! ## A309892.P5820757023189163789

`A059169(4*A289052(n+1))`
-/

namespace A309892.P5820757023189163789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A289052 (n + 1)).toNat

end

end A309892.P5820757023189163789

namespace A309892

/-- `A059169(4*A289052(n+1))` -/
def P5820757023189163789.Spec : Prop :=
  ∀ n, P5820757023189163789.a n = A309892 n

end A309892

/-! ## A309892.P7468265323827112508

`A200748(n)%A289052(n+1)`
-/

namespace A309892.P7468265323827112508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A289052 (n + 1))

end

end A309892.P7468265323827112508

namespace A309892

/-- `A200748(n)%A289052(n+1)` -/
def P7468265323827112508.Spec : Prop :=
  ∀ n, P7468265323827112508.a n = A309892 n

end A309892

/-! ## A309892.P8788849381228532272

`A000005(2^a(n-A006530(n)))` with `a(0)=0, a(1)=1`
-/

namespace A309892.P8788849381228532272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (a ((n : ℤ) - A006530 n).toNat : ℤ))).toNat

end

end A309892.P8788849381228532272

namespace A309892

/-- `A000005(2^a(n-A006530(n)))` -/
def P8788849381228532272.Spec : Prop :=
  ∀ n, P8788849381228532272.a n = A309892 n

end A309892

/-! ## A309892.P16962829428950273940

`A083800(n+1)%A289052(n+1)`
-/

namespace A309892.P16962829428950273940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A289052 (n + 1))

end

end A309892.P16962829428950273940

namespace A309892

/-- `A083800(n+1)%A289052(n+1)` -/
def P16962829428950273940.Spec : Prop :=
  ∀ n, P16962829428950273940.a n = A309892 n

end A309892

/-! ## A309892.P13744272372603301940

`A070198(n)%A289052(n+1)`
-/

namespace A309892.P13744272372603301940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A289052 (n + 1))

end

end A309892.P13744272372603301940

namespace A309892

/-- `A070198(n)%A289052(n+1)` -/
def P13744272372603301940.Spec : Prop :=
  ∀ n, P13744272372603301940.a n = A309892 n

end A309892

/-! ## A309892.P1836798407244228461

`A079782(n+1)%A289052(n+1)`
-/

namespace A309892.P1836798407244228461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A289052 (n + 1))

end

end A309892.P1836798407244228461

namespace A309892

/-- `A079782(n+1)%A289052(n+1)` -/
def P1836798407244228461.Spec : Prop :=
  ∀ n, P1836798407244228461.a n = A309892 n

end A309892

/-! ## A309892.P8854561824864584309

`A083685(n+1)%A289052(n+1)`
-/

namespace A309892.P8854561824864584309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A289052 (n + 1))

end

end A309892.P8854561824864584309

namespace A309892

/-- `A083685(n+1)%A289052(n+1)` -/
def P8854561824864584309.Spec : Prop :=
  ∀ n, P8854561824864584309.a n = A309892 n

end A309892

/-! ## A309892.P15987735113091106732

`A121934(n+1)%A289052(n+1)`
-/

namespace A309892.P15987735113091106732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A289052 (n + 1))

end

end A309892.P15987735113091106732

namespace A309892

/-- `A121934(n+1)%A289052(n+1)` -/
def P15987735113091106732.Spec : Prop :=
  ∀ n, P15987735113091106732.a n = A309892 n

end A309892

/-! ## A309892.P12110671353761983794

`A030494(n+1)%A289052(n+1)`
-/

namespace A309892.P12110671353761983794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A289052 (n + 1))

end

end A309892.P12110671353761983794

namespace A309892

/-- `A030494(n+1)%A289052(n+1)` -/
def P12110671353761983794.Spec : Prop :=
  ∀ n, P12110671353761983794.a n = A309892 n

end A309892

/-! ## A309892.P11138716177806102503

`A072828(n+1)%A289052(n+1)`
-/

namespace A309892.P11138716177806102503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A289052 (n + 1))

end

end A309892.P11138716177806102503

namespace A309892

/-- `A072828(n+1)%A289052(n+1)` -/
def P11138716177806102503.Spec : Prop :=
  ∀ n, P11138716177806102503.a n = A309892 n

end A309892

/-! ## A309892.P5808802257357319925

`A198277(n)%A289052(n+1)`
-/

namespace A309892.P5808802257357319925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A289052 (n + 1))

end

end A309892.P5808802257357319925

namespace A309892

/-- `A198277(n)%A289052(n+1)` -/
def P5808802257357319925.Spec : Prop :=
  ∀ n, P5808802257357319925.a n = A309892 n

end A309892

/-!
# A309895: Number of floor(n/2)-uniform hypergraphs on n unlabeled nodes.

The programs for A309895, there is no canonical definition to state claims against.
-/

/-! ## A309895.P9310281168565408329

`A309876(∑[∑[gcd(4, n)%4]])+1`
-/

namespace A309895.P9310281168565408329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309876 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A309895.P9310281168565408329

/-! ## A309895.P3829699162017441348

`A309865(A194274(n))`
-/

namespace A309895.P3829699162017441348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309865 (A194274 n).toNat

end

end A309895.P3829699162017441348

/-! ## A309895.P15340395185923569308

`A309865(A007590(n+1))`
-/

namespace A309895.P15340395185923569308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309865 (A007590 (n + 1)).toNat

end

end A309895.P15340395185923569308

/-! ## A309895.P1191274821476991103

`A309865(A080476(n+1))`
-/

namespace A309895.P1191274821476991103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309865 (A080476 (n + 1)).toNat

end

end A309895.P1191274821476991103

/-! ## A309895.P8334784464579396408

`A309865(A156324(n+1))`
-/

namespace A309895.P8334784464579396408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309865 (A156324 (n + 1)).toNat

end

end A309895.P8334784464579396408

/-!
# A309896: Generalized Fibonacci numbers. Square array read by ascending antidiagonals. F(n,k) for n >= 0 and k >= 0.

The programs for A309896, there is no canonical definition to state claims against.
-/

/-! ## A309896.P12945376244350457221

`A347386(xor(2, A289481(n)))`
-/

namespace A309896.P12945376244350457221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347386 (Int.xor 2 (A289481 n)).toNat

end

end A309896.P12945376244350457221

/-! ## A309896.P13084367418651110544

`A160385(A099594(n)*A136868(n))`
-/

namespace A309896.P13084367418651110544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A099594 n * A136868 n).toNat

end

end A309896.P13084367418651110544

/-! ## A309896.P13975599461138314310

`A007895(or(A214015(n), A289481(n)))`
-/

namespace A309896.P13975599461138314310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Int.lor (A214015 n) (A289481 n)).toNat

end

end A309896.P13975599461138314310

/-! ## A309896.P8739872803281457023

`A007895(or(A276837(n), A289481(n)))`
-/

namespace A309896.P8739872803281457023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Int.lor (A276837 n) (A289481 n)).toNat

end

end A309896.P8739872803281457023

/-! ## A309896.P12378285446079016797

`A007895(or(A289481(n), A318557(n)))`
-/

namespace A309896.P12378285446079016797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Int.lor (A289481 n) (A318557 n)).toNat

end

end A309896.P12378285446079016797

/-!
# A309897: Number of not unique partition coefficients of n.

The programs for A309897, there is no canonical definition to state claims against.
-/

/-! ## A309897.P6186594214414323529

`A000041(n)-A070289(n)`
-/

namespace A309897.P6186594214414323529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A070289 n

end

end A309897.P6186594214414323529

/-! ## A309897.P2529476951678799629

`∑[A002865(n)]-A070289(n)`
-/

namespace A309897.P2529476951678799629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A070289 n

end

end A309897.P2529476951678799629

/-! ## A309897.P9710909853372263871

`A000065(n)+1-A070289(n)`
-/

namespace A309897.P9710909853372263871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A070289 n)

end

end A309897.P9710909853372263871

/-! ## A309897.P18296802049671875206

`A035363(2*n)-A070289(n)`
-/

namespace A309897.P18296802049671875206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A070289 n

end

end A309897.P18296802049671875206

/-! ## A309897.P14090868796867446836

`A038752(A038752(n))-A070289(n)`
-/

namespace A309897.P14090868796867446836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038752 (A038752 n).toNat - A070289 n

end

end A309897.P14090868796867446836

/-!
# A309898: For each b = 1, 2, 3, ... numbers k = 1, 2, 3, ... are inserted into the blanks within the sequence along with k * b blanks, skipping existing terms in the sequence.

The programs for A309898, there is no canonical definition to state claims against.
-/

/-! ## A309898.P8038252518203285201

`A025581(eq[A025581(n), A290318(n+1)])`
-/

namespace A309898.P8038252518203285201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A309898.P8038252518203285201

/-! ## A309898.P17893709904663235422

`A025581(eq[A163352(n), A226314(n+1)])`
-/

namespace A309898.P17893709904663235422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A309898.P17893709904663235422

/-! ## A309898.P11689438909239555515

`A290318(eq[A204016(n+1), A290318(n)])`
-/

namespace A309898.P11689438909239555515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A309898.P11689438909239555515

/-! ## A309898.P7189175826119538975

`A051340(n)*A124010(A182614(n+1))`
-/

namespace A309898.P7189175826119538975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n * A124010 (A182614 (n + 1)).toNat

end

end A309898.P7189175826119538975

/-!
# A309899: Numbers k = 1, 2, 3, ... are added to the sequence along with k blanks. Next, the numbers k + 1 are inserted on the blanks along with k + 1 blanks. This process is then repeated.

The programs for A309899, there is no canonical definition to state claims against.
-/

/-! ## A309899.P9077848320283908002

`A001222(A223556(n+2)^A295658(n+1))`
-/

namespace A309899.P9077848320283908002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A223556 (n + 2) : ℚ) ^ (A295658 (n + 1) : ℤ))).toNat

end

end A309899.P9077848320283908002

/-! ## A309899.P5948105002349607084

`A134478(A187829(n+1))-A239259(A306548(n))`
-/

namespace A309899.P5948105002349607084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A187829 (n + 1)).toNat - A239259 (A306548 n).toNat

end

end A309899.P5948105002349607084

/-! ## A309899.P13088177765157736956

`∑{e}[A223556(A250039(n+1)), #]`
-/

namespace A309899.P13088177765157736956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223556 (A250039 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A309899.P13088177765157736956

