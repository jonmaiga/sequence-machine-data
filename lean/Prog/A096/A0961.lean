import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C005
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
import Seq.B007.C001
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A096100: a(1) = 1; for n > 1: a(n) = smallest number >1 such that product of any two or more successive terms + 1 is prime.

The programs for A096100, there is no canonical definition to state claims against.
-/

/-! ## A096100.P14550021633711005797

`or(A325190(A329356(n)), A329351(n+1))`
-/

namespace A096100.P14550021633711005797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A325190 (A329356 n).toNat) (A329351 (n + 1))

end

end A096100.P14550021633711005797

/-! ## A096100.P16763357256548486047

`xor(A014499(n+1), A318178(A153723(n+1)))`
-/

namespace A096100.P16763357256548486047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014499 (n + 1)) (A318178 (A153723 (n + 1)).toNat)

end

end A096100.P16763357256548486047

/-!
# A096101: a(1) = 1; for n > 1: a(n) = smallest number >1 such that product of any two or more successive terms - 1 is prime.

The programs for A096101, there is no canonical definition to state claims against.
-/

/-! ## A096101.P7318477076978711002

`A131848(a(n-1)^A131845(n+1))` with `a(0)=1, a(1)=3`
-/

namespace A096101.P7318477076978711002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A131848 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) ^ (A131845 (n + 1) : ℤ))).toNat

end

end A096101.P7318477076978711002

/-! ## A096101.P4895307676277670954

`A210468(A317349(and(n+1, a(n-1)+1)))` with `a(0)=1`
-/

namespace A096101.P4895307676277670954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210468 (A317349 (Int.land (n + 1 : ℤ) (a (n - 1) + 1)).toNat).toNat

end

end A096101.P4895307676277670954

/-! ## A096101.P15081745568199235860

`A059942(A059951(n+1)+n-C(∑[char[∑[n+1]]], 2)+2)`
-/

namespace A096101.P15081745568199235860
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059942 (A059951 (n + 1) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + 2)).toNat

end

end A096101.P15081745568199235860

/-!
# A096104: Digit reversal of A096299(n).

The programs for A096104, there is no canonical definition to state claims against.
-/

/-! ## A096104.P17249454142942877797

`A004086(A096299(n+1))`
-/

namespace A096104.P17249454142942877797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A096299 (n + 1)).toNat

end

end A096104.P17249454142942877797

/-! ## A096104.P1220632789229248756

`A071157(A071163(n+1))`
-/

namespace A096104.P1220632789229248756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071157 (A071163 (n + 1)).toNat

end

end A096104.P1220632789229248756

/-! ## A096104.P16143399181704143111

`A127668(A057335(n+1))`
-/

namespace A096104.P16143399181704143111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127668 (A057335 (n + 1)).toNat

end

end A096104.P16143399181704143111

/-! ## A096104.P18175236887349228031

`A004086(floor(A099821(n+2)/9))`
-/

namespace A096104.P18175236887349228031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ⌊(A099821 (n + 2) : ℚ) / 9⌋.toNat

end

end A096104.P18175236887349228031

/-!
# A096106: Numbers such that every digit is a multiple of the digit to its right.

The programs for A096106, there is no canonical definition to state claims against.
-/

/-! ## A096106.P8554257267427601189

`A354081(n+1)%A352316(n+1)`
-/

namespace A096106.P8554257267427601189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354081 (n + 1)) (A352316 (n + 1))

end

end A096106.P8554257267427601189

/-! ## A096106.P1272437314026606760

`and(A117060(n+2), A354081(n+1))`
-/

namespace A096106.P1272437314026606760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117060 (n + 2)) (A354081 (n + 1))

end

end A096106.P1272437314026606760

/-! ## A096106.P9854102196567410338

`A354081(n+1)+A000007(A143632(n))`
-/

namespace A096106.P9854102196567410338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354081 (n + 1) + A000007 (A143632 n).toNat

end

end A096106.P9854102196567410338

/-! ## A096106.P12547496032746272187

`A354081(n+1)+A000007(A293724(n))`
-/

namespace A096106.P12547496032746272187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354081 (n + 1) + A000007 (A293724 n).toNat

end

end A096106.P12547496032746272187

/-! ## A096106.P10093735034459947926

`∩[A034709(n+1), A354081(n+1)]`
-/

namespace A096106.P10093735034459947926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096106.P10093735034459947926

/-!
# A096107: Triangle read by rows: row n lists cubic residues modulo n.

The programs for A096107, there is no canonical definition to state claims against.
-/

/-! ## A096107.P16197305561200987035

`A329585(A328617(n+1)+1)`
-/

namespace A096107.P16197305561200987035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329585 (A328617 (n + 1) + 1).toNat

end

end A096107.P16197305561200987035

/-! ## A096107.P14895467903680513084

`A329585(n+2)%p?[A329567(n)]`
-/

namespace A096107.P14895467903680513084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329585 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A096107.P14895467903680513084

/-! ## A096107.P14933496895275436402

`A329585(A000720(p?[A283002(n+1)]))`
-/

namespace A096107.P14933496895275436402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329585 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A096107.P14933496895275436402

/-! ## A096107.P5242691967289083122

`A329585(A055396(p?[A283002(n+1)]))`
-/

namespace A096107.P5242691967289083122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329585 (A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A096107.P5242691967289083122

/-! ## A096107.P2432128247103679608

`A089723(A112861(n+3))*A329585(n+2)`
-/

namespace A096107.P2432128247103679608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A112861 (n + 3)).toNat * A329585 (n + 2)

end

end A096107.P2432128247103679608

/-!
# A096111: If n = 2^k - 1, then a(n) = k+1, otherwise a(n) = (A000523(n)+1)*a(A053645(n)).

The programs for A096111, the canonical program `A096111.P4945051898542242552` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096111 has offset 0).

The definition of A096111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096111.P4945051898542242552

`A121663(ceil(n/2))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A096111

/-- `A121663(ceil(n/2))` -/
def P4945051898542242552.Spec : Prop :=
  ∀ n, P4945051898542242552.a n = A096111 n

theorem P4945051898542242552.correct : P4945051898542242552.Spec := by
  intro n
  simp only [A096111]

end A096111

/-! ## A096111.P3528754851813300571

`A121663(A065033(n))-A000007(n)`
-/

namespace A096111.P3528754851813300571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (A065033 n).toNat - A000007 n

end

end A096111.P3528754851813300571

namespace A096111

/-- `A121663(A065033(n))-A000007(n)` -/
def P3528754851813300571.Spec : Prop :=
  ∀ n, P3528754851813300571.a n = A096111 n

end A096111

/-! ## A096111.P6446357378065151082

`A306286(A165789(n+1)+A030101(n+1))`
-/

namespace A096111.P6446357378065151082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (A165789 (n + 1) + A030101 (n + 1)).toNat

end

end A096111.P6446357378065151082

namespace A096111

/-- `A306286(A165789(n+1)+A030101(n+1))` -/
def P6446357378065151082.Spec : Prop :=
  ∀ n, P6446357378065151082.a n = A096111 n

end A096111

/-! ## A096111.P12800659583014364547

`∏{digits}[A086068(n+1), #+1]`
-/

namespace A096111.P12800659583014364547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A096111.P12800659583014364547

namespace A096111

/-- `∏{digits}[A086068(n+1), #+1]` -/
def P12800659583014364547.Spec : Prop :=
  ∀ n, (P12800659583014364547.a n : ℤ) = A096111 n

end A096111

/-! ## A096111.P1607120392868066505

`∏{digits}[A262557(n+1), #+1]`
-/

namespace A096111.P1607120392868066505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A096111.P1607120392868066505

namespace A096111

/-- `∏{digits}[A262557(n+1), #+1]` -/
def P1607120392868066505.Spec : Prop :=
  ∀ n, (P1607120392868066505.a n : ℤ) = A096111 n

end A096111

/-! ## A096111.P15067210026228626789

`A243499(A048678(n+1))`
-/

namespace A096111.P15067210026228626789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A048678 (n + 1)).toNat

end

end A096111.P15067210026228626789

namespace A096111

/-- `A243499(A048678(n+1))` -/
def P15067210026228626789.Spec : Prop :=
  ∀ n, P15067210026228626789.a n = A096111 n

end A096111

/-! ## A096111.P9763542738743591480

`A243499(A124108(n+1)/2)`
-/

namespace A096111.P9763542738743591480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (SequenceMachineLib.roundAway ((A124108 (n + 1) : ℚ) / 2)).toNat

end

end A096111.P9763542738743591480

namespace A096111

/-- `A243499(A124108(n+1)/2)` -/
def P9763542738743591480.Spec : Prop :=
  ∀ n, P9763542738743591480.a n = A096111 n

end A096111

/-! ## A096111.P5476954050428533673

`A243499(A124108(n+1)+1)`
-/

namespace A096111.P5476954050428533673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A124108 (n + 1) + 1).toNat

end

end A096111.P5476954050428533673

namespace A096111

/-- `A243499(A124108(n+1)+1)` -/
def P5476954050428533673.Spec : Prop :=
  ∀ n, P5476954050428533673.a n = A096111 n

end A096111

/-! ## A096111.P6205392047112174556

`A329617(A057335(n+1))`
-/

namespace A096111.P6205392047112174556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329617 (A057335 (n + 1)).toNat

end

end A096111.P6205392047112174556

namespace A096111

/-- `A329617(A057335(n+1))` -/
def P6205392047112174556.Spec : Prop :=
  ∀ n, P6205392047112174556.a n = A096111 n

end A096111

/-! ## A096111.P16814708577174283747

`A306286(n+1)/A124773(n+1)*A306549(n+1)`
-/

namespace A096111.P16814708577174283747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306286 (n + 1) : ℚ) / (A124773 (n + 1) : ℚ) * (A306549 (n + 1) : ℚ)

end

end A096111.P16814708577174283747

namespace A096111

/-- `A306286(n+1)/A124773(n+1)*A306549(n+1)` -/
def P16814708577174283747.Spec : Prop :=
  ∀ n, P16814708577174283747.a n = (A096111 n : ℚ)

end A096111

/-!
# A096113: a(1) = 1, a(2) = 2; then all new products of subsets of pre-existing terms, then the first integer not present, and so on.

The programs for A096113, there is no canonical definition to state claims against.
-/

/-! ## A096113.P15176482000367418970

`A120067(lt[n, ∏{e}[n+1, C(#+2, 2)]]+1)`
-/

namespace A096113.P15176482000367418970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.choose (Nat.factorization (f3 n) p + 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120067 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A096113.P15176482000367418970

/-!
# A096115: If n = (2^k)-1, a(n) = a((n+1)/2) = k, if n = 2^k, a(n) = a(n-1)+1 = k+1, otherwise a(n) = (A000523(n)+1)*a(A035327(n-1)).

The programs for A096115, there is no canonical definition to state claims against.
-/

/-! ## A096115.P9248070177203085206

`A096111(A122199(n+1)-1)`
-/

namespace A096115.P9248070177203085206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 (A122199 (n + 1) - 1).toNat

end

end A096115.P9248070177203085206

/-!
# A096117: Number of connected labeled graphs with n nodes and n+5 edges.

The programs for A096117, there is no canonical definition to state claims against.
-/

/-! ## A096117.P13356153389288561613

`A343088(eq[6, A025581(n)])`
-/

namespace A096117.P13356153389288561613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096117.P13356153389288561613

/-! ## A096117.P16814510787128950549

`A343088(eq[7, A195663(n)])`
-/

namespace A096117.P16814510787128950549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096117.P16814510787128950549

/-! ## A096117.P4322954778089667698

`A343088(eq[13, A099375(n)])`
-/

namespace A096117.P4322954778089667698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096117.P4322954778089667698

/-! ## A096117.P13457692959444406347

`A343088(eq[7, A004736(n+1)])`
-/

namespace A096117.P13457692959444406347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096117.P13457692959444406347

/-! ## A096117.P3346049662847142614

`A343088(A000124(n+6)+n-1)`
-/

namespace A096117.P3346049662847142614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A096117.P3346049662847142614

/-!
# A096119: A050029(2^n + 1).

The programs for A096119, there is no canonical definition to state claims against.
-/

/-! ## A096119.P216935275013578563

`A050029(2^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096119.P216935275013578563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (2 ^ n + 1)

end

end A096119.P216935275013578563

/-! ## A096119.P1606006873839226706

`record[Δ[A050029(n+1)]+1]`
-/

namespace A096119.P1606006873839226706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050029 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096119.P1606006873839226706

/-! ## A096119.P15755362489674197664

`A326688(n)+A050029(A000051(n))`
-/

namespace A096119.P15755362489674197664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n + A050029 (A000051 n).toNat

end

end A096119.P15755362489674197664

/-! ## A096119.P15406976158600250384

`A050029(A000051(n))%A259152(n)`
-/

namespace A096119.P15406976158600250384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050029 (A000051 n).toNat) (A259152 (n + 11))

end

end A096119.P15406976158600250384

/-! ## A096119.P3108197541988228081

`lcm(A033999(n), A050029(A000051(n)))`
-/

namespace A096119.P3108197541988228081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A050029 (A000051 n).toNat)

end

end A096119.P3108197541988228081

/-!
# A096121: Number of full spectrum rook's walks on a (2 X n) board.

The programs for A096121, there is no canonical definition to state claims against.
-/

/-! ## A096121.P15181753610274928901

`(a(n-1)+a(n-2))*∑[2*n]` with `a(0)=2, a(1)=8`
-/

namespace A096121.P15181753610274928901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  (a (n - 1) + a (n - 2)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096121.P15181753610274928901

/-! ## A096121.P12569716004782807734

`(n+1)*n*(a(n-1)+a(n-2))` with `a(0)=2, a(1)=8`
-/

namespace A096121.P12569716004782807734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  (n + 1) * (n * (a (n - 1) + a (n - 2)))

end

end A096121.P12569716004782807734

/-! ## A096121.P1079247721102090559

`(a(n-1)-ceil(-a(n-2)))*∑[2*n]` with `a(0)=2, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A096121.P1079247721102090559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  (a (n - 1) - (-a (n - 2))) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A096121.P1079247721102090559

/-! ## A096121.P14733675367034571514

`(a(n-1)-round(-a(n-2)))*∑[2*n]` with `a(0)=2, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A096121.P14733675367034571514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  (a (n - 1) - (-a (n - 2))) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A096121.P14733675367034571514

/-! ## A096121.P11896072499975314562

`A269565(∑[n+1]+2)`
-/

namespace A096121.P11896072499975314562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269565 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A096121.P11896072499975314562

/-!
# A096123: Least product n*(n-1)*(n-2)*...*(n-k+1) divisible by (n-k)!.

The programs for A096123, there is no canonical definition to state claims against.
-/

/-! ## A096123.P3980008340173152489

`(n+1)!/A056038(n+1)`
-/

namespace A096123.P3980008340173152489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A056038 (n + 1) : ℚ)

end

end A096123.P3980008340173152489

/-! ## A096123.P11629633063014164789

`record[A047920(n)]/A056038(n+1)`
-/

namespace A096123.P11629633063014164789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A056038 (n + 1) : ℚ)

end

end A096123.P11629633063014164789

/-! ## A096123.P15648586220997708267

`record[A047922(n)]/A056038(n+1)`
-/

namespace A096123.P15648586220997708267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A056038 (n + 1) : ℚ)

end

end A096123.P15648586220997708267

/-! ## A096123.P1493058630703301296

`A056038(n+1)*A056042(n+1)`
-/

namespace A096123.P1493058630703301296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056038 (n + 1) * A056042 (n + 1)

end

end A096123.P1493058630703301296

/-! ## A096123.P13615936924835604837

`A056044(n+1)*A065887(n+1)`
-/

namespace A096123.P13615936924835604837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056044 (n + 1) * A065887 (n + 1)

end

end A096123.P13615936924835604837

/-!
# A096125: Least value of k such that n!/((n-k)!)^2 is an integer.

The programs for A096125, there is no canonical definition to state claims against.
-/

/-! ## A096125.P9353401626893250004

`n+1-A056039(n+1)%(n+1)`
-/

namespace A096125.P9353401626893250004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A056039 (n + 1)) (n + 1 : ℤ)

end

end A096125.P9353401626893250004

/-! ## A096125.P12764576641531914847

`ceil(A033638(n)/A056039(n+1))`
-/

namespace A096125.P12764576641531914847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033638 n : ℚ) / (A056039 (n + 1) : ℚ)⌉

end

end A096125.P12764576641531914847

/-! ## A096125.P3517377432781642293

`A028310(1-A056039(n+1)+n)`
-/

namespace A096125.P3517377432781642293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (1 - A056039 (n + 1) + (n : ℤ)).toNat

end

end A096125.P3517377432781642293

/-! ## A096125.P81612151257382408

`A054977(n)-A056039(n+1)+n`
-/

namespace A096125.P81612151257382408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A056039 (n + 1) + (n : ℤ)

end

end A096125.P81612151257382408

/-! ## A096125.P10995631356524840382

`A254667(n+1)-A056039(n+1)`
-/

namespace A096125.P10995631356524840382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (n + 1) - A056039 (n + 1)

end

end A096125.P10995631356524840382

/-! ## A096125.P9602800945311013547

`A001281(A103517(n))-A056039(n+1)`
-/

namespace A096125.P9602800945311013547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A103517 n).toNat - A056039 (n + 1)

end

end A096125.P9602800945311013547

/-! ## A096125.P7883392532526180397

`A233583(n+2)-A056039(n+1)`
-/

namespace A096125.P7883392532526180397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 2) - A056039 (n + 1)

end

end A096125.P7883392532526180397

/-! ## A096125.P797377955251677711

`A004736(A161680(n)+A056039(n+1))`
-/

namespace A096125.P797377955251677711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A161680 n + A056039 (n + 1)).toNat

end

end A096125.P797377955251677711

/-! ## A096125.P10524927523242418850

`A193739(A056039(n+1)+∑[n])`
-/

namespace A096125.P10524927523242418850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A056039 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A096125.P10524927523242418850

/-! ## A096125.P3904879808923788089

`A003983(A056039(n+1)+A000124(n))`
-/

namespace A096125.P3904879808923788089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (A056039 (n + 1) + A000124 n).toNat

end

end A096125.P3904879808923788089

/-! ## A096125.P9101553888887960429

`A025581(A253145(n)+A056039(n+1))`
-/

namespace A096125.P9101553888887960429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A253145 n + A056039 (n + 1)).toNat

end

end A096125.P9101553888887960429

/-!
# A096126: a(n) is the least integer of the form (n^2)!/(n!)^k.

The programs for A096126, there is no canonical definition to state claims against.
-/

/-! ## A096126.P3436484998454043265

`A263884(∑[A263861(n)²])`
-/

namespace A096126.P3436484998454043265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263861 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263884 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A096126.P3436484998454043265

/-!
# A096127: a(n) is the largest k such that (n^2)!/(n!)^k is an integer.

The programs for A096127, there is no canonical definition to state claims against.
-/

/-! ## A096127.P6807666871323595811

`A187279(n+2)+2+n`
-/

namespace A096127.P6807666871323595811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187279 (n + 2) + 2 + (n : ℤ)

end

end A096127.P6807666871323595811

/-! ## A096127.P6983774710047246025

`A242411(A153212(A122111(n+2)))+n+3`
-/

namespace A096127.P6983774710047246025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (A153212 (A122111 (n + 2)).toNat).toNat + (n + 3 : ℤ)

end

end A096127.P6983774710047246025

/-! ## A096127.P15305229001097496934

`A014673(A248012(n+2))+2+n`
-/

namespace A096127.P15305229001097496934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A248012 (n + 2)).toNat + 2 + (n : ℤ)

end

end A096127.P15305229001097496934

/-! ## A096127.P12189944676300924000

`A134332(A133910(n+2))+2+n`
-/

namespace A096127.P12189944676300924000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134332 (A133910 (n + 2)).toNat + 2 + (n : ℤ)

end

end A096127.P12189944676300924000

/-! ## A096127.P1782712578770729918

`A072499(A290479(n+2))+n+2`
-/

namespace A096127.P1782712578770729918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (A290479 (n + 2)).toNat + (n + 2 : ℤ)

end

end A096127.P1782712578770729918

/-!
# A096128: Numbers k with the property that reversing the digits and adding the largest digit produces a prime.

The programs for A096128, there is no canonical definition to state claims against.
-/

/-! ## A096128.P14485042616186422702

`lt[A099980(n), A093971(A129408(n+1))]`
-/

namespace A096128.P14485042616186422702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093971 (A129408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096128.P14485042616186422702

/-! ## A096128.P11387782893922319063

`lt[A099981(n), A093971(A129408(n+1))]`
-/

namespace A096128.P11387782893922319063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099981 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093971 (A129408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096128.P11387782893922319063

/-! ## A096128.P16612146339807098233

`lt[A000040(n+1), A093971(A129408(n+1))]`
-/

namespace A096128.P16612146339807098233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093971 (A129408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096128.P16612146339807098233

/-! ## A096128.P6942293381343367139

`lt[A006881(n+1), A093971(A129408(n+1))]`
-/

namespace A096128.P6942293381343367139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093971 (A129408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096128.P6942293381343367139

/-! ## A096128.P9747311048507296031

`lt[A008578(n+1), A093971(A129408(n+1))]`
-/

namespace A096128.P9747311048507296031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093971 (A129408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096128.P9747311048507296031

/-!
# A096129: Middle term of a triple of consecutive numbers which are sums of two squares.

The programs for A096129, the canonical program `A096129.P18432375319604949998` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096129 has offset 0).

The definition of A096129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096129.P18432375319604949998

`1+2*n²+4*n^3+2*n^4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096129

/-- `1+2*n²+4*n^3+2*n^4` -/
def P18432375319604949998.Spec : Prop :=
  ∀ n, (P18432375319604949998.a n : ℤ) = A096129 n

theorem P18432375319604949998.correct : P18432375319604949998.Spec := by
  intro n
  simp only [A096129]

end A096129

/-! ## A096129.P17779518411521029861

`or(1, 8*∑[n]²)`
-/

namespace A096129.P17779518411521029861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A096129.P17779518411521029861

namespace A096129

/-- `or(1, 8*∑[n]²)` -/
def P17779518411521029861.Spec : Prop :=
  ∀ n, (P17779518411521029861.a n : ℤ) = A096129 n

end A096129

/-! ## A096129.P402927144929466040

`xor(1, 8*∑[n]²)`
-/

namespace A096129.P402927144929466040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A096129.P402927144929466040

namespace A096129

/-- `xor(1, 8*∑[n]²)` -/
def P402927144929466040.Spec : Prop :=
  ∀ n, (P402927144929466040.a n : ℤ) = A096129 n

end A096129

/-! ## A096129.P17016785854432533948

`∑[floor(2/acot(n))^3]`
-/

namespace A096129.P17016785854432533948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096129.P17016785854432533948

namespace A096129

/-- `∑[floor(2/acot(n))^3]` -/
def P17016785854432533948.Spec : Prop :=
  ∀ n, P17016785854432533948.a n = A096129 n

end A096129

/-! ## A096129.P11197973841082808068

`round(2/acot(n²+n)²)`
-/

namespace A096129.P11197973841082808068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n ^ 2 + n : ℝ) ^ 2)

end

end A096129.P11197973841082808068

namespace A096129

/-- `round(2/acot(n²+n)²)` -/
def P11197973841082808068.Spec : Prop :=
  ∀ n, P11197973841082808068.a n = A096129 n

end A096129

/-! ## A096129.P13881043579222831613

`∑[(2*n)^(3%(n+3))]`
-/

namespace A096129.P13881043579222831613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ (3 % (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096129.P13881043579222831613

namespace A096129

/-- `∑[(2*n)^(3%(n+3))]` -/
def P13881043579222831613.Spec : Prop :=
  ∀ n, (P13881043579222831613.a n : ℤ) = A096129 n

end A096129

/-! ## A096129.P2686845516605178323

`-xor(-1, ∑[(2*n)^3])`
-/

namespace A096129.P2686845516605178323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A096129.P2686845516605178323

namespace A096129

/-- `-xor(-1, ∑[(2*n)^3])` -/
def P2686845516605178323.Spec : Prop :=
  ∀ n, P2686845516605178323.a n = A096129 n

end A096129

/-! ## A096129.P3649787626311218551

`or(2, ((n+1)*2*n)²)/2`
-/

namespace A096129.P3649787626311218551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (((n + 1) * (2 * n)) ^ 2) : ℚ) / 2

end

end A096129.P3649787626311218551

namespace A096129

/-- `or(2, ((n+1)*2*n)²)/2` -/
def P3649787626311218551.Spec : Prop :=
  ∀ n, P3649787626311218551.a n = (A096129 n : ℚ)

end A096129

/-! ## A096129.P18363192214176317833

`xor(2, ((n+1)*2*n)²)/2`
-/

namespace A096129.P18363192214176317833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (((n + 1) * (2 * n)) ^ 2) : ℚ) / 2

end

end A096129.P18363192214176317833

namespace A096129

/-- `xor(2, ((n+1)*2*n)²)/2` -/
def P18363192214176317833.Spec : Prop :=
  ∀ n, P18363192214176317833.a n = (A096129 n : ℚ)

end A096129

/-! ## A096129.P17616440196445064226

`abs(a(n-1)+(2*n)^3)` with `a(0)=1`
-/

namespace A096129.P17616440196445064226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n) ^ 3

end

end A096129.P17616440196445064226

namespace A096129

/-- `abs(a(n-1)+(2*n)^3)` -/
def P17616440196445064226.Spec : Prop :=
  ∀ n, (P17616440196445064226.a n : ℤ) = A096129 n

theorem P17616440196445064226.correct : P17616440196445064226.Spec := by
  intro n
  induction n with
  | zero => simp [A096129, A096129.P17616440196445064226.a, A096129.P18432375319604949998.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A096129, Nat.add_sub_cancel, A096129.P17616440196445064226.a, A096129.P18432375319604949998.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A096129

/-! ## A096129.P12143122715953561590

`floor(a(n-1)+(2*n)^3)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A096129.P12143122715953561590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n) ^ 3

end

end A096129.P12143122715953561590

namespace A096129

/-- `floor(a(n-1)+(2*n)^3)` -/
def P12143122715953561590.Spec : Prop :=
  ∀ n, (P12143122715953561590.a n : ℤ) = A096129 n

theorem P12143122715953561590.correct : P12143122715953561590.Spec := by
  intro n
  induction n with
  | zero => simp [A096129, A096129.P12143122715953561590.a, A096129.P18432375319604949998.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A096129, Nat.add_sub_cancel, A096129.P12143122715953561590.a, A096129.P18432375319604949998.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A096129

/-! ## A096129.P6320728159419692268

`ceil(a(n-1)+(2*n)^3)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A096129.P6320728159419692268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n) ^ 3

end

end A096129.P6320728159419692268

namespace A096129

/-- `ceil(a(n-1)+(2*n)^3)` -/
def P6320728159419692268.Spec : Prop :=
  ∀ n, (P6320728159419692268.a n : ℤ) = A096129 n

theorem P6320728159419692268.correct : P6320728159419692268.Spec := by
  intro n
  induction n with
  | zero => simp [A096129, A096129.P6320728159419692268.a, A096129.P18432375319604949998.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A096129, Nat.add_sub_cancel, A096129.P6320728159419692268.a, A096129.P18432375319604949998.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A096129

/-! ## A096129.P1492231851956964355

`round(a(n-1)+(2*n)^3)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A096129.P1492231851956964355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n) ^ 3

end

end A096129.P1492231851956964355

namespace A096129

/-- `round(a(n-1)+(2*n)^3)` -/
def P1492231851956964355.Spec : Prop :=
  ∀ n, (P1492231851956964355.a n : ℤ) = A096129 n

theorem P1492231851956964355.correct : P1492231851956964355.Spec := by
  intro n
  induction n with
  | zero => simp [A096129, A096129.P1492231851956964355.a, A096129.P18432375319604949998.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A096129, Nat.add_sub_cancel, A096129.P1492231851956964355.a, A096129.P18432375319604949998.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A096129

/-! ## A096129.P9857268072682821698

`∑[C(2, n+2)+(2*n)^3]`
-/

namespace A096129.P9857268072682821698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + (2 * n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096129.P9857268072682821698

namespace A096129

/-- `∑[C(2, n+2)+(2*n)^3]` -/
def P9857268072682821698.Spec : Prop :=
  ∀ n, (P9857268072682821698.a n : ℤ) = A096129 n

end A096129

/-! ## A096129.P4432719493633077116

`(∑[a(n-1)+4]²+2)/2` with `a(0)=0`
-/

namespace A096129.P4432719493633077116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 : ℕ) : ℚ) / 2

end

end A096129.P4432719493633077116

namespace A096129

/-- `(∑[a(n-1)+4]²+2)/2` -/
def P4432719493633077116.Spec : Prop :=
  ∀ n, P4432719493633077116.a n = (A096129 n : ℚ)

end A096129

/-! ## A096129.P5656553206800228249

`abs((-2*n)^3-a(n-1))` with `a(0)=1`
-/

namespace A096129.P5656553206800228249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(-(2 * n : ℤ)) ^ 3 - a (n - 1)|

end

end A096129.P5656553206800228249

namespace A096129

/-- `abs((-2*n)^3-a(n-1))` -/
def P5656553206800228249.Spec : Prop :=
  ∀ n, P5656553206800228249.a n = A096129 n

end A096129

/-! ## A096129.P10574130832969279426

`∑[gcd(2*n*(2*n)², C(2, n+2))]`
-/

namespace A096129.P10574130832969279426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n * (2 * n) ^ 2) (Nat.choose 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096129.P10574130832969279426

namespace A096129

/-- `∑[gcd(2*n*(2*n)², C(2, n+2))]` -/
def P10574130832969279426.Spec : Prop :=
  ∀ n, (P10574130832969279426.a n : ℤ) = A096129 n

end A096129

/-! ## A096129.P15740664426313772039

`((2*n)²+a(n-1)/(2*n))*2*n` with `a(0)=1`
-/

namespace A096129.P15740664426313772039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((2 * n) ^ 2 : ℚ) + a (n - 1) / (2 * n : ℚ)) * (2 * n : ℚ)

end

end A096129.P15740664426313772039

namespace A096129

/-- `((2*n)²+a(n-1)/(2*n))*2*n` -/
def P15740664426313772039.Spec : Prop :=
  ∀ n, P15740664426313772039.a n = (A096129 n : ℚ)

end A096129

/-! ## A096129.P1090189733534789092

`∑[A004277(n)^3]`
-/

namespace A096129.P1090189733534789092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096129.P1090189733534789092

namespace A096129

/-- `∑[A004277(n)^3]` -/
def P1090189733534789092.Spec : Prop :=
  ∀ n, P1090189733534789092.a n = A096129 n

end A096129

/-! ## A096129.P2081445991217382823

`∑[A004275(n+1)^3]`
-/

namespace A096129.P2081445991217382823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096129.P2081445991217382823

namespace A096129

/-- `∑[A004275(n+1)^3]` -/
def P2081445991217382823.Spec : Prop :=
  ∀ n, P2081445991217382823.a n = A096129 n

end A096129

/-!
# A096130: Triangle read by rows: T(n,k) = binomial(k*n,n), 1 <= k <= n.

The programs for A096130, the canonical program `A096130.P18207602527319605791` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096130 has offset 1).

The definition of A096130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096130.P14700308430226619716

`C(A075362(n+1), A002024(n+1))`
-/

namespace A096130.P14700308430226619716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A075362 (n + 1)).toNat (A002024 (n + 1)).toNat

end

end A096130.P14700308430226619716

namespace A096130

/-- `C(A075362(n+1), A002024(n+1))` -/
def P14700308430226619716.Spec : Prop :=
  ∀ n, (P14700308430226619716.a n : ℤ) = A096130 (n + 1)

end A096130

/-! ## A096130.P15687461617267531931

`C(A075362(n+1), Δ[A075349(n+1)])`
-/

namespace A096130.P15687461617267531931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075349 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A075362 (n + 1)).toNat (f1 (n + 1) - f1 n).toNat

end

end A096130.P15687461617267531931

namespace A096130

/-- `C(A075362(n+1), Δ[A075349(n+1)])` -/
def P15687461617267531931.Spec : Prop :=
  ∀ n, (P15687461617267531931.a n : ℤ) = A096130 (n + 1)

end A096130

/-! ## A096130.P10222405903095681950

`C(A075362(n+1), A075362(A004201(n+1)-n))`
-/

namespace A096130.P10222405903095681950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A075362 (n + 1)).toNat (A075362 (A004201 (n + 1) - (n : ℤ)).toNat).toNat

end

end A096130.P10222405903095681950

namespace A096130

/-- `C(A075362(n+1), A075362(A004201(n+1)-n))` -/
def P10222405903095681950.Spec : Prop :=
  ∀ n, (P10222405903095681950.a n : ℤ) = A096130 (n + 1)

end A096130

/-! ## A096130.P18207602527319605791

`C(A002024(n+1)*A002260(n+1), A002024(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A096130

/-- `C(A002024(n+1)*A002260(n+1), A002024(n+1))` -/
def P18207602527319605791.Spec : Prop :=
  ∀ n, (P18207602527319605791.a n : ℤ) = A096130 (n + 1)

theorem P18207602527319605791.correct : P18207602527319605791.Spec := by
  intro n
  simp only [A096130, Nat.add_sub_cancel]

end A096130

/-! ## A096130.P10636352943702956683

`C(A075362(n+1), A075362(n+1)/A002260(n+1))`
-/

namespace A096130.P10636352943702956683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A075362 (n + 1)).toNat (SequenceMachineLib.roundAway ((A075362 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ))).toNat

end

end A096130.P10636352943702956683

namespace A096130

/-- `C(A075362(n+1), A075362(n+1)/A002260(n+1))` -/
def P10636352943702956683.Spec : Prop :=
  ∀ n, (P10636352943702956683.a n : ℤ) = A096130 (n + 1)

end A096130

/-! ## A096130.P17708291976592806654

`C(A349520(2*n+1)*A349520(2*(n+1)), A349520(2*(n+1)))`
-/

namespace A096130.P17708291976592806654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349520 (2 * n + 1) * A349520 (2 * (n + 1))).toNat (A349520 (2 * (n + 1))).toNat

end

end A096130.P17708291976592806654

namespace A096130

/-- `C(A349520(2*n+1)*A349520(2*(n+1)), A349520(2*(n+1)))` -/
def P17708291976592806654.Spec : Prop :=
  ∀ n, (P17708291976592806654.a n : ℤ) = A096130 (n + 1)

end A096130

/-! ## A096130.P12550702719718117082

`A060539(A245300(n)+1)`
-/

namespace A096130.P12550702719718117082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060539 (A245300 n + 1).toNat

end

end A096130.P12550702719718117082

namespace A096130

/-- `A060539(A245300(n)+1)` -/
def P12550702719718117082.Spec : Prop :=
  ∀ n, P12550702719718117082.a n = A096130 (n + 1)

end A096130

/-! ## A096130.P18239344230054100669

`A060539((A214661(n+1)+1)/2)`
-/

namespace A096130.P18239344230054100669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060539 (SequenceMachineLib.roundAway ((A214661 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A096130.P18239344230054100669

namespace A096130

/-- `A060539((A214661(n+1)+1)/2)` -/
def P18239344230054100669.Spec : Prop :=
  ∀ n, P18239344230054100669.a n = A096130 (n + 1)

end A096130

/-! ## A096130.P7798423748445742676

`A060539(A008619(A214661(n+1)))`
-/

namespace A096130.P7798423748445742676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060539 (A008619 (A214661 (n + 1)).toNat).toNat

end

end A096130.P7798423748445742676

namespace A096130

/-- `A060539(A008619(A214661(n+1)))` -/
def P7798423748445742676.Spec : Prop :=
  ∀ n, P7798423748445742676.a n = A096130 (n + 1)

end A096130

/-! ## A096130.P10915527431969945572

`A007318(A002024(n+1)+A000217(A075362(n+1)))`
-/

namespace A096130.P10915527431969945572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A002024 (n + 1) + A000217 (A075362 (n + 1)).toNat).toNat

end

end A096130.P10915527431969945572

namespace A096130

/-- `A007318(A002024(n+1)+A000217(A075362(n+1)))` -/
def P10915527431969945572.Spec : Prop :=
  ∀ n, P10915527431969945572.a n = A096130 (n + 1)

end A096130

/-!
# A096131: Sum of the terms of the n-th row of triangle pertaining to A096130.

The programs for A096131, there is no canonical definition to state claims against.
-/

/-! ## A096131.P15332965050913380801

`A323663((n+1)²+n²)`
-/

namespace A096131.P15332965050913380801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323663 ((n + 1) ^ 2 + n ^ 2)

end

end A096131.P15332965050913380801

/-! ## A096131.P16424030049933853231

`record[A003982(n)*A323663(n+1)]`
-/

namespace A096131.P16424030049933853231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A323663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096131.P16424030049933853231

/-! ## A096131.P14091876414098143081

`record[gcd(A008482(n), A323663(n+1))]`
-/

namespace A096131.P14091876414098143081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A323663 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096131.P14091876414098143081

/-! ## A096131.P8317760448058091116

`or(A000007(n), A323663(A001844(n)))`
-/

namespace A096131.P8317760448058091116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A323663 (A001844 n).toNat)

end

end A096131.P8317760448058091116

/-! ## A096131.P9628532676698410560

`A336513(n+1)/∏[n+1]`
-/

namespace A096131.P9628532676698410560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336513 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A096131.P9628532676698410560

/-!
# A096132: Triangle read by rows in which the r-th term of the n-th row is C(n^r,r*n), where r = 1 to n.

The programs for A096132, there is no canonical definition to state claims against.
-/

/-! ## A096132.P11705372733757237663

`C(A075363(n+1), A075362(n+1))`
-/

namespace A096132.P11705372733757237663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A075363 (n + 1)).toNat (A075362 (n + 1)).toNat

end

end A096132.P11705372733757237663

/-! ## A096132.P746434606600800990

`C(A079901(A014132(n+1)), A075362(n+1))`
-/

namespace A096132.P746434606600800990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079901 (A014132 (n + 1)).toNat).toNat (A075362 (n + 1)).toNat

end

end A096132.P746434606600800990

/-! ## A096132.P10685519190246359393

`C(A075363(n+1), A002024(n+1)*A002260(n+1))`
-/

namespace A096132.P10685519190246359393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A075363 (n + 1)).toNat (A002024 (n + 1) * A002260 (n + 1)).toNat

end

end A096132.P10685519190246359393

/-! ## A096132.P17003255902866901535

`C(A002024(n+1)*A076112(n+1), A075362(n+1))`
-/

namespace A096132.P17003255902866901535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1) * A076112 (n + 1)).toNat (A075362 (n + 1)).toNat

end

end A096132.P17003255902866901535

/-! ## A096132.P12410698499525704957

`C(A002024(n+1)^A002260(n+1), A075362(n+1))`
-/

namespace A096132.P12410698499525704957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A002024 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat (A075362 (n + 1)).toNat

end

end A096132.P12410698499525704957

/-!
# A096133: Triangle T(j,k) = (j^k) mod (j*k) for 1 <= k <= j, read by rows.

The programs for A096133, the canonical program `A096133.P16310231902311397784` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096133 has offset 1).

The definition of A096133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096133.P16310231902311397784

`A003992(n)%A128227(n)*A123578(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A096133

/-- `A003992(n)%A128227(n)*A123578(n)` -/
def P16310231902311397784.Spec : Prop :=
  ∀ n, P16310231902311397784.a n = A096133 (n + 1)

theorem P16310231902311397784.correct : P16310231902311397784.Spec := by
  intro n
  simp only [A096133, Nat.add_sub_cancel]

end A096133

/-! ## A096133.P18148752108822277013

`(A002024(n+1)*A003992(n))%A075362(n+1)`
-/

namespace A096133.P18148752108822277013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1) * A003992 n) (A075362 (n + 1))

end

end A096133.P18148752108822277013

namespace A096133

/-- `(A002024(n+1)*A003992(n))%A075362(n+1)` -/
def P18148752108822277013.Spec : Prop :=
  ∀ n, P18148752108822277013.a n = A096133 (n + 1)

end A096133

/-! ## A096133.P2531402028258327019

`A076112(n+1)%A128227(n)*A123578(n)`
-/

namespace A096133.P2531402028258327019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076112 (n + 1)) (A128227 n) * A123578 n

end

end A096133.P2531402028258327019

namespace A096133

/-- `A076112(n+1)%A128227(n)*A123578(n)` -/
def P2531402028258327019.Spec : Prop :=
  ∀ n, P2531402028258327019.a n = A096133 (n + 1)

end A096133

/-! ## A096133.P470151689618672690

`A075363(n+1)%A075362(n+1)`
-/

namespace A096133.P470151689618672690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075363 (n + 1)) (A075362 (n + 1))

end

end A096133.P470151689618672690

namespace A096133

/-- `A075363(n+1)%A075362(n+1)` -/
def P470151689618672690.Spec : Prop :=
  ∀ n, P470151689618672690.a n = A096133 (n + 1)

end A096133

/-! ## A096133.P9849210932216704239

`(A002024(n+1)*A076112(n+1))%A075362(n+1)`
-/

namespace A096133.P9849210932216704239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1) * A076112 (n + 1)) (A075362 (n + 1))

end

end A096133.P9849210932216704239

namespace A096133

/-- `(A002024(n+1)*A076112(n+1))%A075362(n+1)` -/
def P9849210932216704239.Spec : Prop :=
  ∀ n, P9849210932216704239.a n = A096133 (n + 1)

end A096133

/-! ## A096133.P12308892727214686833

`(A002024(n+1)^A002260(n+1))%A075362(n+1)`
-/

namespace A096133.P12308892727214686833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A002024 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ))) (A075362 (n + 1))

end

end A096133.P12308892727214686833

namespace A096133

/-- `(A002024(n+1)^A002260(n+1))%A075362(n+1)` -/
def P12308892727214686833.Spec : Prop :=
  ∀ n, P12308892727214686833.a n = A096133 (n + 1)

end A096133

/-!
# A096135: Triangle read by rows which contains in row n that permutation of the n numbers T(n-1)+1..T(n) which yields a smallest multiple of n after concatenation. T(n) are the triangular numbers. If no such multiple exists, the row contains zeros.

The programs for A096135, there is no canonical definition to state claims against.
-/

/-! ## A096135.P3581993239623787901

`A120229(A120229(n+1))+Δ[A060175(n+1)]`
-/

namespace A096135.P3581993239623787901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120229 (A120229 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A096135.P3581993239623787901

/-! ## A096135.P6784127294394730849

`A048766(A162267(n+1))+Δ[A060175(n+1)]`
-/

namespace A096135.P6784127294394730849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A162267 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A096135.P6784127294394730849

/-!
# A096138: a(1) = 1, a(n) = digit reversal of n*a(n-1).

The programs for A096138, there is no canonical definition to state claims against.
-/

/-! ## A096138.P16747710910613228365

`A034874(n+2)/(n+2)`
-/

namespace A096138.P16747710910613228365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034874 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A096138.P16747710910613228365

/-! ## A096138.P9331125290786071949

`A004086((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A096138.P9331125290786071949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A096138.P9331125290786071949

/-! ## A096138.P954004042546424189

`A004086(round((Δ[n²]-n)*a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A096138.P954004042546424189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) * a (n - 1)).toNat

end

end A096138.P954004042546424189

/-! ## A096138.P14781939132426976513

`A004086(A034874(n+1))`
-/

namespace A096138.P14781939132426976513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A034874 (n + 1)).toNat

end

end A096138.P14781939132426976513

/-!
# A096139: Number of ways to write 2*n as an ordered sum of two numbers which are prime or 1.

The programs for A096139, there is no canonical definition to state claims against.
-/

/-! ## A096139.P299107781120153619

`A154804(n+1)+A001031(n+1)`
-/

namespace A096139.P299107781120153619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154804 (n + 1) + A001031 (n + 1)

end

end A096139.P299107781120153619

/-! ## A096139.P10651531884659592693

`A080339(n+1)+2*A154804(n+1)`
-/

namespace A096139.P10651531884659592693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) + 2 * A154804 (n + 1)

end

end A096139.P10651531884659592693

/-! ## A096139.P6783941610698565569

`A341945(2*(n+1))+A154804(n+1)`
-/

namespace A096139.P6783941610698565569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341945 (2 * (n + 1)) + A154804 (n + 1)

end

end A096139.P6783941610698565569

/-! ## A096139.P14226786241263749002

`2*A001031(n+1)-A080339(n+1)`
-/

namespace A096139.P14226786241263749002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001031 (n + 1) - A080339 (n + 1)

end

end A096139.P14226786241263749002

/-! ## A096139.P15897703081661486863

`A001031(n+1)+A101264(n)+A061357(n+1)`
-/

namespace A096139.P15897703081661486863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001031 (n + 1) + (A101264 n + A061357 (n + 1))

end

end A096139.P15897703081661486863

/-! ## A096139.P7645412909228979358

`A341982(2*(n+1))`
-/

namespace A096139.P7645412909228979358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341982 (2 * (n + 1))

end

end A096139.P7645412909228979358

/-! ## A096139.P9442137610283376754

`A341982(n+n+2)+2-4/2`
-/

namespace A096139.P9442137610283376754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341982 (n + n + 2) : ℚ) + (2 - (4 : ℚ) / 2)

end

end A096139.P9442137610283376754

/-! ## A096139.P8299557726505447053

`A010051(2*n+1)+A341945(2*(n+1))+A117929(2*(n+1))`
-/

namespace A096139.P8299557726505447053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1) + (A341945 (2 * (n + 1)) + A117929 (2 * (n + 1)))

end

end A096139.P8299557726505447053

/-!
# A096140: a(n) = sum of n Fibonacci numbers starting from F(n).

The programs for A096140, the canonical program `A096140.P8299260409315623569` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096140 has offset 0).

The definition of A096140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096140.P5131270534938450253

`A121364(Δ[n²])`
-/

namespace A096140.P5131270534938450253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121364 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A096140.P5131270534938450253

namespace A096140

/-- `A121364(Δ[n²])` -/
def P5131270534938450253.Spec : Prop :=
  ∀ n, P5131270534938450253.a n = A096140 n

end A096140

/-! ## A096140.P8299260409315623569

`A094292(n)+A049681(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096140

/-- `A094292(n)+A049681(n)` -/
def P8299260409315623569.Spec : Prop :=
  ∀ n, P8299260409315623569.a n = A096140 n

theorem P8299260409315623569.correct : P8299260409315623569.Spec := by
  intro n
  simp only [A096140]

end A096140

/-! ## A096140.P13192372952912876727

`A362067(n)-A001906(n)`
-/

namespace A096140.P13192372952912876727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362067 n - A001906 n

end

end A096140.P13192372952912876727

namespace A096140

/-- `A362067(n)-A001906(n)` -/
def P13192372952912876727.Spec : Prop :=
  ∀ n, P13192372952912876727.a n = A096140 n

end A096140

/-! ## A096140.P16798924234312998687

`A097040(n+1)+A000045(n)`
-/

namespace A096140.P16798924234312998687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097040 (n + 1) + A000045 n

end

end A096140.P16798924234312998687

namespace A096140

/-- `A097040(n+1)+A000045(n)` -/
def P16798924234312998687.Spec : Prop :=
  ∀ n, P16798924234312998687.a n = A096140 n

end A096140

/-! ## A096140.P13088802763327192749

`A027941(n)-A000071(n+1)`
-/

namespace A096140.P13088802763327192749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n - A000071 (n + 1)

end

end A096140.P13088802763327192749

namespace A096140

/-- `A027941(n)-A000071(n+1)` -/
def P13088802763327192749.Spec : Prop :=
  ∀ n, P13088802763327192749.a n = A096140 n

end A096140

/-! ## A096140.P3602692209755288188

`A081714(n)-A008346(n+1)`
-/

namespace A096140.P3602692209755288188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 n - A008346 (n + 1)

end

end A096140.P3602692209755288188

namespace A096140

/-- `A081714(n)-A008346(n+1)` -/
def P3602692209755288188.Spec : Prop :=
  ∀ n, P3602692209755288188.a n = A096140 n

end A096140

/-! ## A096140.P8168557239934474332

`A122367(n)-A000045(n+1)`
-/

namespace A096140.P8168557239934474332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - A000045 (n + 1)

end

end A096140.P8168557239934474332

namespace A096140

/-- `A122367(n)-A000045(n+1)` -/
def P8168557239934474332.Spec : Prop :=
  ∀ n, P8168557239934474332.a n = A096140 n

end A096140

/-! ## A096140.P2860855141734389711

`A087124(n)-A000045(n+2)`
-/

namespace A096140.P2860855141734389711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087124 n - A000045 (n + 2)

end

end A096140.P2860855141734389711

namespace A096140

/-- `A087124(n)-A000045(n+2)` -/
def P2860855141734389711.Spec : Prop :=
  ∀ n, P2860855141734389711.a n = A096140 n

end A096140

/-! ## A096140.P1504743441457655821

`A362067(n)-A000045(2*n)`
-/

namespace A096140.P1504743441457655821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362067 n - A000045 (2 * n)

end

end A096140.P1504743441457655821

namespace A096140

/-- `A362067(n)-A000045(2*n)` -/
def P1504743441457655821.Spec : Prop :=
  ∀ n, P1504743441457655821.a n = A096140 n

end A096140

/-! ## A096140.P9740781564278249022

`record[Δ[A000045(A029578(n)+1)]]`
-/

namespace A096140.P9740781564278249022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A029578 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096140.P9740781564278249022

namespace A096140

/-- `record[Δ[A000045(A029578(n)+1)]]` -/
def P9740781564278249022.Spec : Prop :=
  ∀ n, P9740781564278249022.a n = A096140 n

end A096140

/-! ## A096140.P4045738165757936326

`Δ[A001906(n)-Δ[A001911(n)]]`
-/

namespace A096140.P4045738165757936326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096140.P4045738165757936326

namespace A096140

/-- `Δ[A001906(n)-Δ[A001911(n)]]` -/
def P4045738165757936326.Spec : Prop :=
  ∀ n, P4045738165757936326.a n = A096140 n

end A096140

/-! ## A096140.P8890290429347528022

`Δ[A001906(n)]-A000045(n+1)`
-/

namespace A096140.P8890290429347528022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000045 (n + 1)

end

end A096140.P8890290429347528022

namespace A096140

/-- `Δ[A001906(n)]-A000045(n+1)` -/
def P8890290429347528022.Spec : Prop :=
  ∀ n, P8890290429347528022.a n = A096140 n

end A096140

/-! ## A096140.P14581631372553798844

`A001519(n+1)-A000045(n+1)`
-/

namespace A096140.P14581631372553798844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) - A000045 (n + 1)

end

end A096140.P14581631372553798844

namespace A096140

/-- `A001519(n+1)-A000045(n+1)` -/
def P14581631372553798844.Spec : Prop :=
  ∀ n, P14581631372553798844.a n = A096140 n

end A096140

/-! ## A096140.P3455770096008202149

`A001519(n+1)-A212804(n+2)`
-/

namespace A096140.P3455770096008202149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) - A212804 (n + 2)

end

end A096140.P3455770096008202149

namespace A096140

/-- `A001519(n+1)-A212804(n+2)` -/
def P3455770096008202149.Spec : Prop :=
  ∀ n, P3455770096008202149.a n = A096140 n

end A096140

/-! ## A096140.P10773122746799677709

`A094967(2*n)-A000045(n+1)`
-/

namespace A096140.P10773122746799677709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (2 * n) - A000045 (n + 1)

end

end A096140.P10773122746799677709

namespace A096140

/-- `A094967(2*n)-A000045(n+1)` -/
def P10773122746799677709.Spec : Prop :=
  ∀ n, P10773122746799677709.a n = A096140 n

end A096140

/-! ## A096140.P3485716592877378244

`A097131(2*n)-A000045(n+1)`
-/

namespace A096140.P3485716592877378244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 (2 * n) - A000045 (n + 1)

end

end A096140.P3485716592877378244

namespace A096140

/-- `A097131(2*n)-A000045(n+1)` -/
def P3485716592877378244.Spec : Prop :=
  ∀ n, P3485716592877378244.a n = A096140 n

end A096140

/-! ## A096140.P7114815475382813027

`A108362(2*n)-A000045(n+1)`
-/

namespace A096140.P7114815475382813027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108362 (2 * n) - A000045 (n + 1)

end

end A096140.P7114815475382813027

namespace A096140

/-- `A108362(2*n)-A000045(n+1)` -/
def P7114815475382813027.Spec : Prop :=
  ∀ n, P7114815475382813027.a n = A096140 n

end A096140

/-! ## A096140.P3508535347855185224

`A115008(2*n)-A000045(n+1)`
-/

namespace A096140.P3508535347855185224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 (2 * n) - A000045 (n + 1)

end

end A096140.P3508535347855185224

namespace A096140

/-- `A115008(2*n)-A000045(n+1)` -/
def P3508535347855185224.Spec : Prop :=
  ∀ n, P3508535347855185224.a n = A096140 n

end A096140

/-!
# A096141: a(n) = sum of n n-th powers starting from n^n.

The programs for A096141, there is no canonical definition to state claims against.
-/

/-! ## A096141.P453934977765252657

`A391310(∑[4*(n+1)])`
-/

namespace A096141.P453934977765252657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096141.P453934977765252657

/-!
# A096142: Let p(0) = 1, p(k) = k-th prime for k >= 1; write 2n = p(i) + p(j) with i <= j and i minimal; sequence gives i.

The programs for A096142, there is no canonical definition to state claims against.
-/

/-! ## A096142.P17118362267185445168

`floor(∑{d}[A238737(n)%A322413(n), #]/2)`
-/

namespace A096142.P17118362267185445168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238737 n) (A322413 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / 2⌋

end

end A096142.P17118362267185445168

/-! ## A096142.P15684022413091425730

`A049472(A238737(n)%A322413(n))`
-/

namespace A096142.P15684022413091425730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (Int.tmod (A238737 n) (A322413 n)).toNat

end

end A096142.P15684022413091425730

/-! ## A096142.P1815976868820679823

`A056943(A049716(n+1)%A171384(n+1))`
-/

namespace A096142.P1815976868820679823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (Int.tmod (A049716 (n + 1)) (A171384 (n + 1))).toNat

end

end A096142.P1815976868820679823

/-! ## A096142.P2658314021341167004

`A001221(A238737(n)!)`
-/

namespace A096142.P2658314021341167004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A238737 n).toNat)

end

end A096142.P2658314021341167004

/-! ## A096142.P4722032529555672719

`A001221((A049716(n+1)-1)!)`
-/

namespace A096142.P4722032529555672719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A049716 (n + 1) - 1).toNat)

end

end A096142.P4722032529555672719

/-! ## A096142.P1136833702890244300

`A001221(A175851(2*n+1)!)`
-/

namespace A096142.P1136833702890244300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A175851 (2 * n + 1)).toNat)

end

end A096142.P1136833702890244300

/-! ## A096142.P16940860574017438632

`A279048(A210444(A362052(A361289(n+1))))`
-/

namespace A096142.P16940860574017438632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279048 (A210444 (A362052 (A361289 (n + 1)).toNat).toNat).toNat

end

end A096142.P16940860574017438632

/-!
# A096143: a(n) = ceiling(Sum_{i=1..n} 1/i).

The programs for A096143, the canonical program `A096143.P14316011638880613569` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096143 has offset 1).

The definition of A096143 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001008, A002805, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A096143.P14316011638880613569

`ceil(A001008(n+1)/A002805(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A096143

/-- `ceil(A001008(n+1)/A002805(n+1))` -/
def P14316011638880613569.Spec : Prop :=
  ∀ n, P14316011638880613569.a n = A096143 (n + 1)

theorem P14316011638880613569.correct : P14316011638880613569.Spec := by
  intro n
  simp only [A096143, Nat.add_sub_cancel]

end A096143

/-! ## A096143.P11204925470848706478

`ceil(∑[1/(n+1)])`
-/

namespace A096143.P11204925470848706478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A096143.P11204925470848706478

namespace A096143

/-- `ceil(∑[1/(n+1)])` -/
def P11204925470848706478.Spec : Prop :=
  ∀ n, P11204925470848706478.a n = A096143 (n + 1)

end A096143

/-! ## A096143.P10930357514289990191

`abs(ceil(∑[tan(acot(n+1))]))`
-/

namespace A096143.P10930357514289990191
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈∑ j ∈ Finset.range (n + 1), f1 j⌉|

end

end A096143.P10930357514289990191

namespace A096143

/-- `abs(ceil(∑[tan(acot(n+1))]))` -/
def P10930357514289990191.Spec : Prop :=
  ∀ n, P10930357514289990191.a n = A096143 (n + 1)

end A096143

/-! ## A096143.P4282992356102240785

`dr(ceil(∑[tan(acot(n+1))]))`
-/

namespace A096143.P4282992356102240785
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A096143.P4282992356102240785

namespace A096143

/-- `dr(ceil(∑[tan(acot(n+1))]))` -/
def P4282992356102240785.Spec : Prop :=
  ∀ n, (P4282992356102240785.a n : ℤ) = A096143 (n + 1)

end A096143

/-! ## A096143.P15819474712038694266

`dr(ceil(∑[(n+1)^-1]))`
-/

namespace A096143.P15819474712038694266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A096143.P15819474712038694266

namespace A096143

/-- `dr(ceil(∑[(n+1)^-1]))` -/
def P15819474712038694266.Spec : Prop :=
  ∀ n, (P15819474712038694266.a n : ℤ) = A096143 (n + 1)

end A096143

/-! ## A096143.P3363497536191994448

`-floor(∑[-tan(acot(n+1))])`
-/

namespace A096143.P3363497536191994448
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A096143.P3363497536191994448

namespace A096143

/-- `-floor(∑[-tan(acot(n+1))])` -/
def P3363497536191994448.Spec : Prop :=
  ∀ n, P3363497536191994448.a n = A096143 (n + 1)

end A096143

/-! ## A096143.P9899688000427300773

`floor(∑[1/(n+1)])%(n+1)+1`
-/

namespace A096143.P9899688000427300773
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ (n + 1 : ℤ) + 1

end

end A096143.P9899688000427300773

namespace A096143

/-- `floor(∑[1/(n+1)])%(n+1)+1` -/
def P9899688000427300773.Spec : Prop :=
  ∀ n, P9899688000427300773.a n = A096143 (n + 1)

end A096143

/-! ## A096143.P10177167563509425056

`n+1-floor(∑[n/C(n+1, n)])`
-/

namespace A096143.P10177167563509425056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.choose (n + 1) n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A096143.P10177167563509425056

namespace A096143

/-- `n+1-floor(∑[n/C(n+1, n)])` -/
def P10177167563509425056.Spec : Prop :=
  ∀ n, P10177167563509425056.a n = A096143 (n + 1)

end A096143

/-! ## A096143.P6664935223294637237

`n+1-floor(∑[1/(2-a(n-1))])` with `a(0)=0`
-/

namespace A096143.P6664935223294637237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  1 / (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A096143.P6664935223294637237

namespace A096143

/-- `n+1-floor(∑[1/(2-a(n-1))])` -/
def P6664935223294637237.Spec : Prop :=
  ∀ n, P6664935223294637237.a n = A096143 (n + 1)

end A096143

/-! ## A096143.P15963904546731568990

`n+1-floor(∑[gcd(n, 2*n)/(n+1)])`
-/

namespace A096143.P15963904546731568990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (2 * n) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A096143.P15963904546731568990

namespace A096143

/-- `n+1-floor(∑[gcd(n, 2*n)/(n+1)])` -/
def P15963904546731568990.Spec : Prop :=
  ∀ n, P15963904546731568990.a n = A096143 (n + 1)

end A096143

/-! ## A096143.P9931977514750565937

`∑[char[A002387(n)-1]]`
-/

namespace A096143.P9931977514750565937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096143.P9931977514750565937

namespace A096143

/-- `∑[char[A002387(n)-1]]` -/
def P9931977514750565937.Spec : Prop :=
  ∀ n, (P9931977514750565937.a n : ℤ) = A096143 (n + 1)

end A096143

/-! ## A096143.P1846233766041182104

`A057427(n)+A055980(n+1)`
-/

namespace A096143.P1846233766041182104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A055980 (n + 1)

end

end A096143.P1846233766041182104

namespace A096143

/-- `A057427(n)+A055980(n+1)` -/
def P1846233766041182104.Spec : Prop :=
  ∀ n, P1846233766041182104.a n = A096143 (n + 1)

end A096143

/-! ## A096143.P13673554452851303762

`A055980(n+1)-A057428(n)`
-/

namespace A096143.P13673554452851303762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (n + 1) - A057428 n

end

end A096143.P13673554452851303762

namespace A096143

/-- `A055980(n+1)-A057428(n)` -/
def P13673554452851303762.Spec : Prop :=
  ∀ n, P13673554452851303762.a n = A096143 (n + 1)

end A096143

/-! ## A096143.P14047063306227134305

`1-A238401(n)+n`
-/

namespace A096143.P14047063306227134305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A238401 n + (n : ℤ)

end

end A096143.P14047063306227134305

namespace A096143

/-- `1-A238401(n)+n` -/
def P14047063306227134305.Spec : Prop :=
  ∀ n, P14047063306227134305.a n = A096143 (n + 1)

end A096143

/-! ## A096143.P13408831771294319813

`floor(∑[A014963(∑[n+1])/(n+1)])`
-/

namespace A096143.P13408831771294319813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A096143.P13408831771294319813

namespace A096143

/-- `floor(∑[A014963(∑[n+1])/(n+1)])` -/
def P13408831771294319813.Spec : Prop :=
  ∀ n, P13408831771294319813.a n = A096143 (n + 1)

end A096143

/-!
# A096144: Triangle T(n,k) = number of partitions of n in which the least part occurs exactly k times, k=1..n.

The programs for A096144, there is no canonical definition to state claims against.
-/

/-! ## A096144.P15993734140577943946

`A111972(3^A182703(n+1))`
-/

namespace A096144.P15993734140577943946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A182703 (n + 1) : ℤ))).toNat

end

end A096144.P15993734140577943946

/-! ## A096144.P1039491975653243074

`A283682(3^A182703(n+1))`
-/

namespace A096144.P1039491975653243074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283682 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A182703 (n + 1) : ℤ))).toNat

end

end A096144.P1039491975653243074

/-! ## A096144.P2884289867973528322

`∑{d}[A182703(n+1), A211992(#!)]`
-/

namespace A096144.P2884289867973528322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A211992 (Nat.factorial d)

end

end A096144.P2884289867973528322

/-! ## A096144.P13066323992336128517

`A167439(A002378(A182703(n+1)))`
-/

namespace A096144.P13066323992336128517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A002378 (A182703 (n + 1)).toNat).toNat

end

end A096144.P13066323992336128517

/-! ## A096144.P8801013102536821041

`∑{d}[A182703(n+1), A207031(A046746(#))]`
-/

namespace A096144.P8801013102536821041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A207031 (A046746 d).toNat

end

end A096144.P8801013102536821041

/-!
# A096145: Sum of digits in Pascal's triangle (A007318) in decimal representation, triangle read by rows, 0<=k<=n.

The programs for A096145, the canonical program `A096145.P17704489690967024670` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096145 has offset 0).

The definition of A096145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096145.P14695803685107904825

`∑{digits}[A007318(n), #]`
-/

namespace A096145.P14695803685107904825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P14695803685107904825

namespace A096145

/-- `∑{digits}[A007318(n), #]` -/
def P14695803685107904825.Spec : Prop :=
  ∀ n, (P14695803685107904825.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P5801185448549709894

`∑{digits}[A108086(n), #]`
-/

namespace A096145.P5801185448549709894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P5801185448549709894

namespace A096145

/-- `∑{digits}[A108086(n), #]` -/
def P5801185448549709894.Spec : Prop :=
  ∀ n, (P5801185448549709894.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P5512208166061356465

`∑{digits}[A117440(n), #]`
-/

namespace A096145.P5512208166061356465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P5512208166061356465

namespace A096145

/-- `∑{digits}[A117440(n), #]` -/
def P5512208166061356465.Spec : Prop :=
  ∀ n, (P5512208166061356465.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P12175901236437520189

`∑{digits}[A130595(n), #]`
-/

namespace A096145.P12175901236437520189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P12175901236437520189

namespace A096145

/-- `∑{digits}[A130595(n), #]` -/
def P12175901236437520189.Spec : Prop :=
  ∀ n, (P12175901236437520189.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P11815446336482547647

`∑{digits}[sqrt(A008459(n)), #]`
-/

namespace A096145.P11815446336482547647
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P11815446336482547647

namespace A096145

/-- `∑{digits}[sqrt(A008459(n)), #]` -/
def P11815446336482547647.Spec : Prop :=
  ∀ n, (P11815446336482547647.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P3000012503740008095

`∑{digits}[A014473(n)+1, #]`
-/

namespace A096145.P3000012503740008095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P3000012503740008095

namespace A096145

/-- `∑{digits}[A014473(n)+1, #]` -/
def P3000012503740008095.Spec : Prop :=
  ∀ n, (P3000012503740008095.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P5997258422450638230

`∑{digits}[A154926(n+1), #]`
-/

namespace A096145.P5997258422450638230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P5997258422450638230

namespace A096145

/-- `∑{digits}[A154926(n+1), #]` -/
def P5997258422450638230.Spec : Prop :=
  ∀ n, (P5997258422450638230.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P15081176489194778601

`∑{digits}[ceil(A135089(n)/5), #]`
-/

namespace A096145.P15081176489194778601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135089 n : ℚ) / 5⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P15081176489194778601

namespace A096145

/-- `∑{digits}[ceil(A135089(n)/5), #]` -/
def P15081176489194778601.Spec : Prop :=
  ∀ n, (P15081176489194778601.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P15586070530945846202

`∑{digits}[A091917(n)+A073424(n), #]`
-/

namespace A096145.P15586070530945846202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 n + A073424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P15586070530945846202

namespace A096145

/-- `∑{digits}[A091917(n)+A073424(n), #]` -/
def P15586070530945846202.Spec : Prop :=
  ∀ n, (P15586070530945846202.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P11082161522276623753

`∑{digits}[A028263(n)-A028276(n), #]`
-/

namespace A096145.P11082161522276623753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n - A028276 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P11082161522276623753

namespace A096145

/-- `∑{digits}[A028263(n)-A028276(n), #]` -/
def P11082161522276623753.Spec : Prop :=
  ∀ n, (P11082161522276623753.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P83444625827719939

`∑{digits}[A091917(n-A073424(n)), #]`
-/

namespace A096145.P83444625827719939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 ((n : ℤ) - A073424 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P83444625827719939

namespace A096145

/-- `∑{digits}[A091917(n-A073424(n)), #]` -/
def P83444625827719939.Spec : Prop :=
  ∀ n, (P83444625827719939.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P15026465642888821718

`∑{digits}[A013620(n)/A036561(n), #]`
-/

namespace A096145.P15026465642888821718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A036561 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P15026465642888821718

namespace A096145

/-- `∑{digits}[A013620(n)/A036561(n), #]` -/
def P15026465642888821718.Spec : Prop :=
  ∀ n, (P15026465642888821718.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P11454228524024676305

`∑{digits}[gcd(A124927(n), A124928(n)), #]`
-/

namespace A096145.P11454228524024676305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124927 n) (A124928 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A096145.P11454228524024676305

namespace A096145

/-- `∑{digits}[gcd(A124927(n), A124928(n)), #]` -/
def P11454228524024676305.Spec : Prop :=
  ∀ n, (P11454228524024676305.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P17704489690967024670

`∑{digits}[C(A003056(n), A002262(n)), #]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A096145

/-- `∑{digits}[C(A003056(n), A002262(n)), #]` -/
def P17704489690967024670.Spec : Prop :=
  ∀ n, (P17704489690967024670.a n : ℤ) = A096145 n

theorem P17704489690967024670.correct : P17704489690967024670.Spec := by
  intro n
  simp only [A096145]

end A096145

/-! ## A096145.P16597928365791034226

`∑{digits}[C(A003056(n), A025581(n)), #]`
-/

namespace A096145.P16597928365791034226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A025581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A096145.P16597928365791034226

namespace A096145

/-- `∑{digits}[C(A003056(n), A025581(n)), #]` -/
def P16597928365791034226.Spec : Prop :=
  ∀ n, (P16597928365791034226.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P15380832703599843729

`∑{digits}[A014410(n+2)-A028263(n), #]`
-/

namespace A096145.P15380832703599843729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) - A028263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P15380832703599843729

namespace A096145

/-- `∑{digits}[A014410(n+2)-A028263(n), #]` -/
def P15380832703599843729.Spec : Prop :=
  ∀ n, (P15380832703599843729.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P12727317345738025979

`∑{digits}[C(A003056(n), A002260(n+1)-1), #]`
-/

namespace A096145.P12727317345738025979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A096145.P12727317345738025979

namespace A096145

/-- `∑{digits}[C(A003056(n), A002260(n+1)-1), #]` -/
def P12727317345738025979.Spec : Prop :=
  ∀ n, (P12727317345738025979.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P1641806168849724765

`∑{digits}[C(A003056(n), A004736(n+1)-1), #]`
-/

namespace A096145.P1641806168849724765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A096145.P1641806168849724765

namespace A096145

/-- `∑{digits}[C(A003056(n), A004736(n+1)-1), #]` -/
def P1641806168849724765.Spec : Prop :=
  ∀ n, (P1641806168849724765.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P12319686246760391493

`∑{digits}[A193554(lt[1, A193588(n)]), #]`
-/

namespace A096145.P12319686246760391493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P12319686246760391493

namespace A096145

/-- `∑{digits}[A193554(lt[1, A193588(n)]), #]` -/
def P12319686246760391493.Spec : Prop :=
  ∀ n, (P12319686246760391493.a n : ℤ) = A096145 n

end A096145

/-! ## A096145.P12274858613007783743

`∑{digits}[A193554(lt[1, A002260(n+1)]), #]`
-/

namespace A096145.P12274858613007783743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A096145.P12274858613007783743

namespace A096145

/-- `∑{digits}[A193554(lt[1, A002260(n+1)]), #]` -/
def P12274858613007783743.Spec : Prop :=
  ∀ n, (P12274858613007783743.a n : ℤ) = A096145 n

end A096145

/-!
# A096146: Prime numerators of the rational convergents to sqrt(3).

The programs for A096146, there is no canonical definition to state claims against.
-/

/-! ## A096146.P18112165507396735965

`p?[4*a(n-2)-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A096146.P18112165507396735965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n f1 =>
  4 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096146.P18112165507396735965

/-! ## A096146.P23402566032151351

`p?[A002531(n)]`
-/

namespace A096146.P23402566032151351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096146.P23402566032151351

/-! ## A096146.P13455770523272776389

`p?[abs(A108413(n))]`
-/

namespace A096146.P13455770523272776389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108413 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096146.P13455770523272776389

/-! ## A096146.P15265697629180851585

`p?[record[A173299(n+1)]]`
-/

namespace A096146.P15265697629180851585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173299 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096146.P15265697629180851585

/-!
# A096147: Prime denominators of the rational convergents to sqrt(3).

The programs for A096147, there is no canonical definition to state claims against.
-/

/-! ## A096147.P6044271880243048475

`A001835(A355979(n+1))`
-/

namespace A096147.P6044271880243048475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (A355979 (n + 1)).toNat

end

end A096147.P6044271880243048475

/-! ## A096147.P15776648842904883188

`A005246(2*A355979(n+1))`
-/

namespace A096147.P15776648842904883188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * A355979 (n + 1)).toNat

end

end A096147.P15776648842904883188

/-! ## A096147.P7226839636994412272

`A079935(A355979(2*n+1-n))`
-/

namespace A096147.P7226839636994412272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (A355979 (2 * n + 1 - n)).toNat

end

end A096147.P7226839636994412272

/-! ## A096147.P910709066550812340

`A079935(A355979(n+1)^A016168(n))`
-/

namespace A096147.P910709066550812340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (SequenceMachineLib.roundAway ((A355979 (n + 1) : ℚ) ^ (A016168 n : ℤ))).toNat

end

end A096147.P910709066550812340

/-! ## A096147.P1726085629317049239

`A079935(lcm(A016168(n), A355979(n+1)))`
-/

namespace A096147.P1726085629317049239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (Int.lcm (A016168 n) (A355979 (n + 1)))

end

end A096147.P1726085629317049239

/-!
# A096148: Perfect zip primes (i.e., order-k zip primes, with k = number of digits).

The programs for A096148, there is no canonical definition to state claims against.
-/

/-! ## A096148.P5322427062278188191

`A019546(lt[A094670(n), A009101(n)])`
-/

namespace A096148.P5322427062278188191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094670 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096148.P5322427062278188191

/-! ## A096148.P2849164215212839164

`∩[A019546(n+1), A080608(A331914(n+1))]`
-/

namespace A096148.P2849164215212839164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080608 (A331914 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096148.P2849164215212839164

/-! ## A096148.P3224877255737229400

`∩[A104179(n+1), A080608(A331914(n+1))]`
-/

namespace A096148.P3224877255737229400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080608 (A331914 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096148.P3224877255737229400

/-!
# A096149: Numbers k such that (2^k-3)*2^k+1 is prime.

The programs for A096149, there is no canonical definition to state claims against.
-/

/-! ## A096149.P12303632495879568619

`A004396(A064534(n+1))`
-/

namespace A096149.P12303632495879568619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A064534 (n + 1)).toNat

end

end A096149.P12303632495879568619

/-! ## A096149.P1923334886123552294

`lt[A017995(n+1), A051564(A279966(n+1))]`
-/

namespace A096149.P1923334886123552294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051564 (A279966 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096149.P1923334886123552294

/-! ## A096149.P17405994398274456209

`lt[A033183(A181390(n+3)), A279966(n+1)]`
-/

namespace A096149.P17405994398274456209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A181390 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096149.P17405994398274456209

/-! ## A096149.P1540706677809478608

`lt[A286118(n+1), 9]+2`
-/

namespace A096149.P1540706677809478608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286118 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A096149.P1540706677809478608

/-! ## A096149.P16633318354042998584

`∑[∑{d}[A000166(n)+4, #%2]]`
-/

namespace A096149.P16633318354042998584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096149.P16633318354042998584

/-!
# A096150: Number of connected labeled graphs with n nodes and n+7 edges.

The programs for A096150, there is no canonical definition to state claims against.
-/

/-! ## A096150.P16099736763932435739

`A343088(eq[7, A116598(n)])`
-/

namespace A096150.P16099736763932435739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096150.P16099736763932435739

/-! ## A096150.P9470245666296467711

`A343088(eq[8, A025581(n)])`
-/

namespace A096150.P9470245666296467711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096150.P9470245666296467711

/-! ## A096150.P13423295176153309573

`A343088(eq[9, A195663(n)])`
-/

namespace A096150.P13423295176153309573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096150.P13423295176153309573

/-! ## A096150.P3718592233124538846

`A343088(eq[17, A099375(n)])`
-/

namespace A096150.P3718592233124538846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096150.P3718592233124538846

/-! ## A096150.P8340744198216151960

`A343088(eq[9, A004736(n+1)])`
-/

namespace A096150.P8340744198216151960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096150.P8340744198216151960

/-!
# A096153: Natural numbers (greater than 1) arranged in rows according to their ordered prime signature. Square array A(n,k) read by descending antidiagonals.

The programs for A096153, there is no canonical definition to state claims against.
-/

/-! ## A096153.P14030548366223575620

`A309785(A351082(n+1))+A095904(n)`
-/

namespace A096153.P14030548366223575620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A351082 (n + 1)).toNat + A095904 n

end

end A096153.P14030548366223575620

/-! ## A096153.P17453650387789410622

`A095904(A139352(A134975(n))+n)`
-/

namespace A096153.P17453650387789410622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095904 (A139352 (A134975 n).toNat + (n : ℤ)).toNat

end

end A096153.P17453650387789410622

/-! ## A096153.P13319981087035571212

`xor(A095904(n), A139352(A134975(n)))`
-/

namespace A096153.P13319981087035571212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A095904 n) (A139352 (A134975 n).toNat)

end

end A096153.P13319981087035571212

/-! ## A096153.P5587633053704463994

`A102679(A034510(2*n+3))+A095904(n)`
-/

namespace A096153.P5587633053704463994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A034510 (2 * n + 3)).toNat + A095904 n

end

end A096153.P5587633053704463994

/-!
# A096155: Numbers k such that A095234(k-1) is divisible by k.

The programs for A096155, there is no canonical definition to state claims against.
-/

/-! ## A096155.P1629484572494733246

`A018405(record[xor(3, n)]-ceil(ϕ*n))`
-/

namespace A096155.P1629484572494733246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018405 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ⌈Real.goldenRatio * (n : ℝ)⌉).toNat

end

end A096155.P1629484572494733246

/-!
# A096156: Numbers with ordered prime signature (2,1).

The programs for A096156, there is no canonical definition to state claims against.
-/

/-! ## A096156.P4142209779993726843

`filter[A337877(n+1), A212793(#)]`
-/

namespace A096156.P4142209779993726843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A096156.P4142209779993726843

/-! ## A096156.P18200667408565884025

`filter[A337877(n+1), A353798(#)]`
-/

namespace A096156.P18200667408565884025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A096156.P18200667408565884025

/-! ## A096156.P9682616317473311039

`filter[A337877(n+1), A355447(#)]`
-/

namespace A096156.P9682616317473311039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A096156.P9682616317473311039

/-! ## A096156.P11967729472811179544

`filter[A337877(n+1), A355823(#)]`
-/

namespace A096156.P11967729472811179544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A096156.P11967729472811179544

/-! ## A096156.P14136175745290236974

`filter[A337877(n+1), A355825(#)]`
-/

namespace A096156.P14136175745290236974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A096156.P14136175745290236974

/-! ## A096156.P8032694884889623923

`filter[A337877(n+1), A359429(#)]`
-/

namespace A096156.P8032694884889623923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A096156.P8032694884889623923

/-! ## A096156.P2234635980695511384

`filter[A337877(n+1), A359471(#)]`
-/

namespace A096156.P2234635980695511384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A096156.P2234635980695511384

/-! ## A096156.P8708519264474318523

`filter[A337877(n+1), A359474(#)]`
-/

namespace A096156.P8708519264474318523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A096156.P8708519264474318523

/-! ## A096156.P2740325687224970192

`filter[A337877(n+1), A359475(#)]`
-/

namespace A096156.P2740325687224970192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A096156.P2740325687224970192

/-! ## A096156.P15865579388552572380

`filter[A337877(n+2), A354108(#)]`
-/

namespace A096156.P15865579388552572380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A096156.P15865579388552572380

/-! ## A096156.P14697969125049661386

`∩[A030515(n+1), A337877(n+1)]`
-/

namespace A096156.P14697969125049661386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096156.P14697969125049661386

/-! ## A096156.P8876755304398418592

`filter[A097320(n+1), A212793(#)]`
-/

namespace A096156.P8876755304398418592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A096156.P8876755304398418592

/-! ## A096156.P3117761064080564194

`filter[A097320(n+1), A353798(#)]`
-/

namespace A096156.P3117761064080564194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A096156.P3117761064080564194

/-! ## A096156.P14306246325912821542

`filter[A097320(n+1), A359429(#)]`
-/

namespace A096156.P14306246325912821542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A096156.P14306246325912821542

/-! ## A096156.P7728363505142225387

`filter[A097320(n+1), A359471(#)]`
-/

namespace A096156.P7728363505142225387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A096156.P7728363505142225387

/-! ## A096156.P3879032768230649120

`filter[A097320(n+1), A359474(#)]`
-/

namespace A096156.P3879032768230649120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A096156.P3879032768230649120

/-! ## A096156.P14870207966303023602

`filter[A097320(n+1), A359475(#)]`
-/

namespace A096156.P14870207966303023602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A096156.P14870207966303023602

/-! ## A096156.P7673870846352996047

`∩[A030515(n+1), A097320(n+1)]`
-/

namespace A096156.P7673870846352996047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096156.P7673870846352996047

/-! ## A096156.P7971760630756503443

`∩[A054753(n+1), A097320(n+1)]`
-/

namespace A096156.P7971760630756503443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096156.P7971760630756503443

/-! ## A096156.P5383939874127176721

`∩[A080258(n+1), A097320(n+1)]`
-/

namespace A096156.P5383939874127176721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096156.P5383939874127176721

/-!
# A096157: Numbers whose numbers of odd and even proper divisors differ at most by 1.

The programs for A096157, the canonical program `A096157.P16966813079005757665` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096157 has offset 1).

The definition of A096157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096157.P16966813079005757665

`lt[A325937(n+1)², 2]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A096157

/-- `lt[A325937(n+1)², 2]+1` -/
def P16966813079005757665.Spec : Prop :=
  ∀ n, (P16966813079005757665.a n : ℤ) = A096157 (n + 1)

theorem P16966813079005757665.correct : P16966813079005757665.Spec := by
  intro n
  simp only [A096157, Nat.add_sub_cancel]

end A096157

/-! ## A096157.P2481900101276097959

`eq[A121262(n), A220400(n)]`
-/

namespace A096157.P2481900101276097959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096157.P2481900101276097959

namespace A096157

/-- `eq[A121262(n), A220400(n)]` -/
def P2481900101276097959.Spec : Prop :=
  ∀ n, (P2481900101276097959.a n : ℤ) = A096157 (n + 1)

end A096157

/-! ## A096157.P3117259154549933798

`lt[A034178(n+1), 2]+1`
-/

namespace A096157.P3117259154549933798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096157.P3117259154549933798

namespace A096157

/-- `lt[A034178(n+1), 2]+1` -/
def P3117259154549933798.Spec : Prop :=
  ∀ n, (P3117259154549933798.a n : ℤ) = A096157 (n + 1)

end A096157

/-! ## A096157.P13057968439123233378

`lt[A112329(n+1), 3]+1`
-/

namespace A096157.P13057968439123233378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096157.P13057968439123233378

namespace A096157

/-- `lt[A112329(n+1), 3]+1` -/
def P13057968439123233378.Spec : Prop :=
  ∀ n, (P13057968439123233378.a n : ℤ) = A096157 (n + 1)

end A096157

/-! ## A096157.P2833185395288967423

`lt[A048272(n+1)², 5]+1`
-/

namespace A096157.P2833185395288967423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096157.P2833185395288967423

namespace A096157

/-- `lt[A048272(n+1)², 5]+1` -/
def P2833185395288967423.Spec : Prop :=
  ∀ n, (P2833185395288967423.a n : ℤ) = A096157 (n + 1)

end A096157

/-! ## A096157.P7344945247739698273

`lt[n*A277894(A316631(n)), n]`
-/

namespace A096157.P7344945247739698273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277894 (A316631 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A096157.P7344945247739698273

namespace A096157

/-- `lt[n*A277894(A316631(n)), n]` -/
def P7344945247739698273.Spec : Prop :=
  ∀ n, (P7344945247739698273.a n : ℤ) = A096157 (n + 1)

end A096157

/-! ## A096157.P10333917463385925618

`eq[1, A000700(A048272(n+1)²)]+1`
-/

namespace A096157.P10333917463385925618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A048272 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096157.P10333917463385925618

namespace A096157

/-- `eq[1, A000700(A048272(n+1)²)]+1` -/
def P10333917463385925618.Spec : Prop :=
  ∀ n, (P10333917463385925618.a n : ℤ) = A096157 (n + 1)

end A096157

/-! ## A096157.P16024180057292521325

`eq[1, ∏{p}[A325937(n+1), A000005(#)]²]+1`
-/

namespace A096157.P16024180057292521325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f3 n).natAbs, A000005 p) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096157.P16024180057292521325

namespace A096157

/-- `eq[1, ∏{p}[A325937(n+1), A000005(#)]²]+1` -/
def P16024180057292521325.Spec : Prop :=
  ∀ n, (P16024180057292521325.a n : ℤ) = A096157 (n + 1)

end A096157

/-! ## A096157.P238351048293894926

`record[(n+1)/A001227(A034178(n+1)²+1)]`
-/

namespace A096157.P238351048293894926
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001227 (A034178 (n + 1) ^ 2 + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096157.P238351048293894926

namespace A096157

/-- `record[(n+1)/A001227(A034178(n+1)²+1)]` -/
def P238351048293894926.Spec : Prop :=
  ∀ n, P238351048293894926.a n = (A096157 (n + 1) : ℚ)

end A096157

/-! ## A096157.P565268170677034849

`lt[A000040((A335021(n+1)+1)²+1)², 28]+1`
-/

namespace A096157.P565268170677034849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((A335021 (n + 1) + 1) ^ 2 + 1).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096157.P565268170677034849

namespace A096157

/-- `lt[A000040((A335021(n+1)+1)²+1)², 28]+1` -/
def P565268170677034849.Spec : Prop :=
  ∀ n, (P565268170677034849.a n : ℤ) = A096157 (n + 1)

end A096157

/-! ## A096157.P4253252459850629538

`lt[A000225((A335021(n+1)+1)²+1)+2, 28]+1`
-/

namespace A096157.P4253252459850629538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 ((A335021 (n + 1) + 1) ^ 2 + 1).toNat + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096157.P4253252459850629538

namespace A096157

/-- `lt[A000225((A335021(n+1)+1)²+1)+2, 28]+1` -/
def P4253252459850629538.Spec : Prop :=
  ∀ n, (P4253252459850629538.a n : ℤ) = A096157 (n + 1)

end A096157

/-!
# A096158: Number of permutations of proper divisors of n such that the sum of adjacent pairs of divisors is prime.

The programs for A096158, there is no canonical definition to state claims against.
-/

/-! ## A096158.P7694935742494033377

`2*A096159(n+1)`
-/

namespace A096158.P7694935742494033377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096159 (n + 1)

end

end A096158.P7694935742494033377

/-! ## A096158.P17262299948613299478

`ceil(sinh(A096159(-xor(n, -1))))`
-/

namespace A096158.P17262299948613299478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (A096159 (-Int.xor (n : ℤ) (-1)).toNat : ℝ)⌉

end

end A096158.P17262299948613299478

/-! ## A096158.P5359872282730272889

`lcm(2, A096159(A000027(n+1))²)`
-/

namespace A096158.P5359872282730272889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A096159 (A000027 (n + 1)).toNat ^ 2)

end

end A096158.P5359872282730272889

/-! ## A096158.P6481717540627716075

`log2(A010675(n)^A096159(n+1))`
-/

namespace A096158.P6481717540627716075
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A010675 n : ℚ) ^ (A096159 (n + 1) : ℤ) : ℝ)

end

end A096158.P6481717540627716075

/-! ## A096158.P7042035702025953303

`log2(A174571(n)^A096159(n+1))`
-/

namespace A096158.P7042035702025953303
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A174571 n : ℚ) ^ (A096159 (n + 1) : ℤ) : ℝ)

end

end A096158.P7042035702025953303

/-! ## A096158.P4828587290836794698

`lcm(A096159(n+1)², A000034(n))`
-/

namespace A096158.P4828587290836794698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096159 (n + 1) ^ 2) (A000034 n)

end

end A096158.P4828587290836794698

/-! ## A096158.P2171118243747680496

`A096159(A133265(n))/(1-1/2)`
-/

namespace A096158.P2171118243747680496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096159 (A133265 n).toNat : ℚ) / (1 - (1 : ℚ) / 2)

end

end A096158.P2171118243747680496

/-! ## A096158.P7586099942851173403

`lcm(A096159(n+1), A174273(n+1))`
-/

namespace A096158.P7586099942851173403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096159 (n + 1)) (A174273 (n + 1))

end

end A096158.P7586099942851173403

/-! ## A096158.P8798072518741450365

`A056908(A096159(n+1)+gcd(n, n+1))`
-/

namespace A096158.P8798072518741450365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056908 (A096159 (n + 1) + (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A096158.P8798072518741450365

/-! ## A096158.P13047850582718694068

`A096159(n+1)+A096159(-xor(n, -1))`
-/

namespace A096158.P13047850582718694068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096159 (n + 1) + A096159 (-Int.xor (n : ℤ) (-1)).toNat

end

end A096158.P13047850582718694068

/-! ## A096158.P13397216686473923337

`A096159(n+1)+A096159(A133265(n))`
-/

namespace A096158.P13397216686473923337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096159 (n + 1) + A096159 (A133265 n).toNat

end

end A096158.P13397216686473923337

/-! ## A096158.P6256653498959581572

`A005843(A096159(n+1)^A002636(n))`
-/

namespace A096158.P6256653498959581572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A096159 (n + 1) : ℚ) ^ (A002636 n : ℤ))).toNat

end

end A096158.P6256653498959581572

/-! ## A096158.P5515124897709377251

`A096159(A000027(n+1))+A096159(n+1)`
-/

namespace A096158.P5515124897709377251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096159 (A000027 (n + 1)).toNat + A096159 (n + 1)

end

end A096158.P5515124897709377251

/-! ## A096158.P12938148254312996034

`A001222(A001358(n+1)^A096159(n+1))`
-/

namespace A096158.P12938148254312996034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A001358 (n + 1) : ℚ) ^ (A096159 (n + 1) : ℤ))).toNat

end

end A096158.P12938148254312996034

/-! ## A096158.P17390195060841053930

`A005843(A096159(n+1)+n)-A005843(n)`
-/

namespace A096158.P17390195060841053930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A096159 (n + 1) + (n : ℤ)).toNat - A005843 n

end

end A096158.P17390195060841053930

/-!
# A096159: A096158(n) / 2.

The programs for A096159, there is no canonical definition to state claims against.
-/

/-! ## A096159.P2390723619615744260

`A096158(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096159.P2390723619615744260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096158 (n + 1) : ℚ) / 2

end

end A096159.P2390723619615744260

/-! ## A096159.P3812809809590405922

`floor(sqrt(A096158(n-log2(1/2))))`
-/

namespace A096159.P3812809809590405922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A096158 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A096159.P3812809809590405922

/-! ## A096159.P12868101055019179645

`dr(A017221(n)*A096158(n+1))`
-/

namespace A096159.P12868101055019179645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A017221 n * A096158 (n + 1))

end

end A096159.P12868101055019179645

/-! ## A096159.P1467842460163307257

`ratio[A000034(n)]*A096158(n+1)`
-/

namespace A096159.P1467842460163307257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A096158 (n + 1) : ℚ)

end

end A096159.P1467842460163307257

/-! ## A096159.P14176027809523080446

`ratio[A084642(n)]*A096158(n+1)`
-/

namespace A096159.P14176027809523080446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A096158 (n + 1) : ℚ)

end

end A096159.P14176027809523080446

/-! ## A096159.P18099088297300111972

`A285097(n*A096158(n+1)+1)`
-/

namespace A096159.P18099088297300111972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 ((n : ℤ) * A096158 (n + 1) + 1).toNat

end

end A096159.P18099088297300111972

/-! ## A096159.P15632596358222847633

`A285099(n*A096158(n+1)+1)`
-/

namespace A096159.P15632596358222847633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 ((n : ℤ) * A096158 (n + 1) + 1).toNat

end

end A096159.P15632596358222847633

/-! ## A096159.P3532393534077714987

`A004526(and(n²-2, A096158(n+1)))`
-/

namespace A096159.P3532393534077714987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.land ((n ^ 2 : ℤ) - 2) (A096158 (n + 1))).toNat

end

end A096159.P3532393534077714987

/-! ## A096159.P16452433571987385975

`A000196(gcd(n, n+1)*A096158(n+1))`
-/

namespace A096159.P16452433571987385975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((Nat.gcd n (n + 1) : ℤ) * A096158 (n + 1)).toNat

end

end A096159.P16452433571987385975

/-! ## A096159.P13706934335029272205

`(n*A096158(n+1))%A024000(2*n)`
-/

namespace A096159.P13706934335029272205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A096158 (n + 1)) (A024000 (2 * n))

end

end A096159.P13706934335029272205

/-! ## A096159.P3602501150339320041

`A004526(A096158(n+1)+and(1, n)^n)`
-/

namespace A096159.P3602501150339320041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A096158 (n + 1) + (Nat.land 1 n ^ n : ℤ)).toNat

end

end A096159.P3602501150339320041

/-! ## A096159.P5566670557421723833

`A004526(A096158(n+1)+∑[(-1)^n])`
-/

namespace A096159.P5566670557421723833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A096158 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A096159.P5566670557421723833

/-! ## A096159.P15255877890237541137

`A029578(A096158(n+1)+∑[(-1)^n])`
-/

namespace A096159.P15255877890237541137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A096158 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A096159.P15255877890237541137

/-! ## A096159.P8703797962613300251

`A066272(abs(abs(A096158(n+1)-n)-n)+1)`
-/

namespace A096159.P8703797962613300251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (|(|A096158 (n + 1) - (n : ℤ)| - (n : ℤ))| + 1).toNat

end

end A096159.P8703797962613300251

/-! ## A096159.P18161839647773060617

`(A018252(C(n, n²)+2)*A096158(n+1))%7`
-/

namespace A096159.P18161839647773060617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (Nat.choose n (n ^ 2) + 2) * A096158 (n + 1)) 7

end

end A096159.P18161839647773060617

/-! ## A096159.P6660109386064881774

`A001221((A020513(n)*A096158(n+1))!)`
-/

namespace A096159.P6660109386064881774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A020513 n * A096158 (n + 1)).toNat)

end

end A096159.P6660109386064881774

/-! ## A096159.P10427017813736165956

`A002262(A020639(n+1)*A096158(n+1))`
-/

namespace A096159.P10427017813736165956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A020639 (n + 1) * A096158 (n + 1)).toNat

end

end A096159.P10427017813736165956

/-! ## A096159.P3221997917678475043

`A003056(lcm(A020639(n+1), A096158(n+1)))`
-/

namespace A096159.P3221997917678475043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lcm (A020639 (n + 1)) (A096158 (n + 1)))

end

end A096159.P3221997917678475043

/-! ## A096159.P8285411689355337164

`16%A000032(A020513(n)*A096158(n+1))`
-/

namespace A096159.P8285411689355337164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 16 (A000032 (A020513 n * A096158 (n + 1)).toNat)

end

end A096159.P8285411689355337164

/-! ## A096159.P16052906147719330216

`A003056((A020639(n+1)-1)*A096158(n+1))`
-/

namespace A096159.P16052906147719330216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((A020639 (n + 1) - 1) * A096158 (n + 1)).toNat

end

end A096159.P16052906147719330216

/-!
# A096160: Numbers whose proper divisors can be arranged in such a way that all sums of adjacent pairs are primes.

The programs for A096160, there is no canonical definition to state claims against.
-/

/-! ## A096160.P3470278769440515717

`lt[4, a(A096158(n))²]` with `a(0)=2`
-/

namespace A096160.P3470278769440515717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A096158 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096160.P3470278769440515717

/-! ## A096160.P4759688757934247768

`lt[0, A096158(n+1)]+1`
-/

namespace A096160.P4759688757934247768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A096160.P4759688757934247768

/-! ## A096160.P4267447917535989655

`lt[0, A096159(n+1)]+1`
-/

namespace A096160.P4267447917535989655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096159 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A096160.P4267447917535989655

/-! ## A096160.P16284564583395116530

`lt[0, A096158(or(n, a(n-1)))]` with `a(0)=0`
-/

namespace A096160.P16284564583395116530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A096158 (Int.lor (n : ℤ) (f2 (n - 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A096160.P16284564583395116530

/-! ## A096160.P18271400627304561054

`lt[0, A096158(A028310(n))]`
-/

namespace A096160.P18271400627304561054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096158 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A096160.P18271400627304561054

/-!
# A096161: Row sums for triangle A096162.

The programs for A096161, there is no canonical definition to state claims against.
-/

/-! ## A096161.P8245755999927613358

`record[A293202(n)]`
-/

namespace A096161.P8245755999927613358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096161.P8245755999927613358

/-! ## A096161.P2406320658605119379

`A161779(n+1)`
-/

namespace A096161.P2406320658605119379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161779 (n + 1)

end

end A096161.P2406320658605119379

/-! ## A096161.P12513925980966034473

`A293202(∑[4*(n+1)])`
-/

namespace A096161.P12513925980966034473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096161.P12513925980966034473

/-! ## A096161.P11162367865596499253

`record[A161779(A002262(n))]`
-/

namespace A096161.P11162367865596499253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161779 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096161.P11162367865596499253

/-! ## A096161.P14629971005773364521

`ratio[A161779(n)]*A161779(n)`
-/

namespace A096161.P14629971005773364521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161779 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A161779 n : ℚ)

end

end A096161.P14629971005773364521

/-!
# A096162: Let n be a number partitioned as n = b_1 + 2*b_2 + ... + n*b_n; then T(n) = (b_1)! * (b_2)! * ... (b_n)!. Irregular triangle read by rows, T(n, k) for n >= 0 and 1 <= k <= A000041(n).

The programs for A096162, there is no canonical definition to state claims against.
-/

/-! ## A096162.P9178628493256028900

`A178888(n)/A035206(n)`
-/

namespace A096162.P9178628493256028900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178888 n : ℚ) / (A035206 n : ℚ)

end

end A096162.P9178628493256028900

/-! ## A096162.P10404809636489342729

`A178803(n)/A048996(n)`
-/

namespace A096162.P10404809636489342729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178803 n : ℚ) / (A048996 n : ℚ)

end

end A096162.P10404809636489342729

/-! ## A096162.P6468183549702958032

`∏{e}[A185974(n), A000142(#)]`
-/

namespace A096162.P6468183549702958032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 (Nat.factorization (f1 n).natAbs p)

end

end A096162.P6468183549702958032

/-! ## A096162.P11698365258228462712

`A112624(A185974(n))`
-/

namespace A096162.P11698365258228462712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A185974 n).toNat

end

end A096162.P11698365258228462712

/-! ## A096162.P10400687560775493849

`A178801(n)/A130561(n)`
-/

namespace A096162.P10400687560775493849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178801 n : ℚ) / (A130561 n : ℚ)

end

end A096162.P10400687560775493849

/-!
# A096163: Primes p of the form qrs + 1 where q, r and s are distinct primes.

The programs for A096163, there is no canonical definition to state claims against.
-/

/-! ## A096163.P17891526974786362504

`A078330(n+2)`
-/

namespace A096163.P17891526974786362504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078330 (n + 2)

end

end A096163.P17891526974786362504

/-! ## A096163.P6581338287568647490

`A104006(n+2)`
-/

namespace A096163.P6581338287568647490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104006 (n + 2)

end

end A096163.P6581338287568647490

/-! ## A096163.P15015076746970639577

`p?[A077449(n+2)]`
-/

namespace A096163.P15015076746970639577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077449 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096163.P15015076746970639577

/-! ## A096163.P7663388144923346289

`p?[A255199(n+3)]`
-/

namespace A096163.P7663388144923346289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096163.P7663388144923346289

/-! ## A096163.P4903007382355495767

`p?[A255219(n+3)]`
-/

namespace A096163.P4903007382355495767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096163.P4903007382355495767

/-! ## A096163.P6028967694477451456

`p?[A007304(n+1)+1]`
-/

namespace A096163.P6028967694477451456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096163.P6028967694477451456

/-! ## A096163.P3793721061463380931

`p?[A053858(n+1)+1]`
-/

namespace A096163.P3793721061463380931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053858 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096163.P3793721061463380931

/-! ## A096163.P8160148198655569963

`p?[A306217(n+1)+1]`
-/

namespace A096163.P8160148198655569963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306217 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096163.P8160148198655569963

/-!
# A096164: Triangle T(n,m) read by rows: matrix product A053121 * A038207.

The programs for A096164, there is no canonical definition to state claims against.
-/

/-! ## A096164.P17551852797611943702

`A054456(n)+A016389(A106187(n))`
-/

namespace A096164.P17551852797611943702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 n + A016389 (A106187 n).toNat

end

end A096164.P17551852797611943702

/-! ## A096164.P419975746777566911

`A054908(A130321(n))+A054456(n)`
-/

namespace A096164.P419975746777566911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054908 (A130321 n).toNat + A054456 n

end

end A096164.P419975746777566911

/-! ## A096164.P8929282751541841477

`A054456(n)+A016389(A272946(n))`
-/

namespace A096164.P8929282751541841477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 n + A016389 (A272946 n).toNat

end

end A096164.P8929282751541841477

/-! ## A096164.P13186720662306006395

`A201166(n)-A285007(A201166(n))`
-/

namespace A096164.P13186720662306006395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201166 n - A285007 (A201166 n).toNat

end

end A096164.P13186720662306006395

/-! ## A096164.P2750073513524667750

`A085980(A159348(n))+A054456(n)`
-/

namespace A096164.P2750073513524667750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085980 (A159348 n).toNat + A054456 n

end

end A096164.P2750073513524667750

/-!
# A096165: Prime powers with exponents that are themselves prime powers.

The programs for A096165, the canonical program `A096165.P5646365465445830634` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096165 has offset 1).

The definition of A096165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096165.P16652988472086841080

`∪[A000040(n+1), A164336(n+2)]`
-/

namespace A096165.P16652988472086841080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A096165.P16652988472086841080

namespace A096165

/-- `∪[A000040(n+1), A164336(n+2)]` -/
def P16652988472086841080.Spec : Prop :=
  ∀ n, (P16652988472086841080.a n : ℤ) = A096165 (n + 1)

end A096165

/-! ## A096165.P10370525605196674113

`∪[A065091(n+1), A164336(n+2)]`
-/

namespace A096165.P10370525605196674113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A096165.P10370525605196674113

namespace A096165

/-- `∪[A065091(n+1), A164336(n+2)]` -/
def P10370525605196674113.Spec : Prop :=
  ∀ n, (P10370525605196674113.a n : ℤ) = A096165 (n + 1)

end A096165

/-! ## A096165.P1924839367750006756

`A164336(n+2)`
-/

namespace A096165.P1924839367750006756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 2)

end

end A096165.P1924839367750006756

namespace A096165

/-- `A164336(n+2)` -/
def P1924839367750006756.Spec : Prop :=
  ∀ n, P1924839367750006756.a n = A096165 (n + 1)

end A096165

/-! ## A096165.P6568563772580043373

`record[A020639(n)^a(A001222(n))]` with `a(0)=2`
-/

namespace A096165.P6568563772580043373
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  (A020639 n : ℝ) ^ (f1 (A001222 n).toNat)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096165.P6568563772580043373

namespace A096165

/-- `record[A020639(n)^a(A001222(n))]` -/
def P6568563772580043373.Spec : Prop :=
  ∀ n, P6568563772580043373.a n = (A096165 (n + 1) : ℝ)

end A096165

/-! ## A096165.P5646365465445830634

`eq[A001221(n+1), A328958(A307409(n+1)+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A096165

/-- `eq[A001221(n+1), A328958(A307409(n+1)+1)]+1` -/
def P5646365465445830634.Spec : Prop :=
  ∀ n, (P5646365465445830634.a n : ℤ) = A096165 (n + 1)

theorem P5646365465445830634.correct : P5646365465445830634.Spec := by
  intro n
  simp only [A096165, Nat.add_sub_cancel]

end A096165

/-! ## A096165.P6515376415304862241

`filter[A374473(n+1), A069513(#)]`
-/

namespace A096165.P6515376415304862241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A096165.P6515376415304862241

namespace A096165

/-- `filter[A374473(n+1), A069513(#)]` -/
def P6515376415304862241.Spec : Prop :=
  ∀ n, P6515376415304862241.a n = A096165 (n + 1)

end A096165

/-! ## A096165.P6130231471990081977

`filter[A374473(n+1), A354923(#)]`
-/

namespace A096165.P6130231471990081977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A096165.P6130231471990081977

namespace A096165

/-- `filter[A374473(n+1), A354923(#)]` -/
def P6130231471990081977.Spec : Prop :=
  ∀ n, P6130231471990081977.a n = A096165 (n + 1)

end A096165

/-! ## A096165.P5451180902563582934

`∩[A000961(n+1), A374473(n+1)]`
-/

namespace A096165.P5451180902563582934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096165.P5451180902563582934

namespace A096165

/-- `∩[A000961(n+1), A374473(n+1)]` -/
def P5451180902563582934.Spec : Prop :=
  ∀ n, (P5451180902563582934.a n : ℤ) = A096165 (n + 1)

end A096165

/-! ## A096165.P17396421177039884270

`∩[A059046(n+1), A374473(n+1)]`
-/

namespace A096165.P17396421177039884270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096165.P17396421177039884270

namespace A096165

/-- `∩[A059046(n+1), A374473(n+1)]` -/
def P17396421177039884270.Spec : Prop :=
  ∀ n, (P17396421177039884270.a n : ℤ) = A096165 (n + 1)

end A096165

/-! ## A096165.P17289794831104069294

`record[A323129(n+2)]`
-/

namespace A096165.P17289794831104069294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323129 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096165.P17289794831104069294

namespace A096165

/-- `record[A323129(n+2)]` -/
def P17289794831104069294.Spec : Prop :=
  ∀ n, P17289794831104069294.a n = A096165 (n + 1)

end A096165

/-! ## A096165.P2938788687961979919

`record[A323130(n+2)]`
-/

namespace A096165.P2938788687961979919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323130 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096165.P2938788687961979919

namespace A096165

/-- `record[A323130(n+2)]` -/
def P2938788687961979919.Spec : Prop :=
  ∀ n, P2938788687961979919.a n = A096165 (n + 1)

end A096165

/-! ## A096165.P10364293589252363930

`eq[1, A064372(n+2)]+2`
-/

namespace A096165.P10364293589252363930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A096165.P10364293589252363930

namespace A096165

/-- `eq[1, A064372(n+2)]+2` -/
def P10364293589252363930.Spec : Prop :=
  ∀ n, (P10364293589252363930.a n : ℤ) = A096165 (n + 1)

end A096165

/-! ## A096165.P12598261972270380729

`record[n/a(A064372(n))]` with `a(0)=2, a(1)=1`
-/

namespace A096165.P12598261972270380729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℚ) / f1 (A064372 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096165.P12598261972270380729

namespace A096165

/-- `record[n/a(A064372(n))]` -/
def P12598261972270380729.Spec : Prop :=
  ∀ n, P12598261972270380729.a n = (A096165 (n + 1) : ℚ)

end A096165

/-! ## A096165.P13308312519530973463

`filter[A374473(n+1), A010055(#)]`
-/

namespace A096165.P13308312519530973463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A096165.P13308312519530973463

namespace A096165

/-- `filter[A374473(n+1), A010055(#)]` -/
def P13308312519530973463.Spec : Prop :=
  ∀ n, P13308312519530973463.a n = A096165 (n + 1)

end A096165

/-! ## A096165.P17851995373129831230

`record[A014963(n)^a(A001222(n))]` with `a(0)=2`
-/

namespace A096165.P17851995373129831230
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  (A014963 n : ℝ) ^ (f1 (A001222 n).toNat)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096165.P17851995373129831230

namespace A096165

/-- `record[A014963(n)^a(A001222(n))]` -/
def P17851995373129831230.Spec : Prop :=
  ∀ n, P17851995373129831230.a n = (A096165 (n + 1) : ℝ)

end A096165

/-! ## A096165.P17644703255324546454

`record[A394674(n+2)]`
-/

namespace A096165.P17644703255324546454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394674 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096165.P17644703255324546454

namespace A096165

/-- `record[A394674(n+2)]` -/
def P17644703255324546454.Spec : Prop :=
  ∀ n, P17644703255324546454.a n = A096165 (n + 1)

end A096165

/-!
# A096166: Engel expansion of the Champernowne number .1234567891011121314151617181920212223... (see A033307).

The programs for A096166, there is no canonical definition to state claims against.
-/

/-! ## A096166.P7265586960055287944

`A331711(A212997(n))+8`
-/

namespace A096166.P7265586960055287944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331711 (A212997 n).toNat + 8

end

end A096166.P7265586960055287944

/-! ## A096166.P16649495506667978026

`A124625(A213348(n+6))+9`
-/

namespace A096166.P16649495506667978026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A213348 (n + 6)).toNat + 9

end

end A096166.P16649495506667978026

/-! ## A096166.P11496265632188646705

`A007027(a(A007032(n+1)))` with `a(0)=9`
-/

namespace A096166.P11496265632188646705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A007027 (a (A007032 (n + 1)).toNat).toNat

end

end A096166.P11496265632188646705

/-! ## A096166.P16490955479804921016

`gcd(A079425(n+1), A106676(n))+9`
-/

namespace A096166.P16490955479804921016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079425 (n + 1)) (A106676 n) + 9

end

end A096166.P16490955479804921016

/-! ## A096166.P15924765683141167780

`A331619(A348433(n+3)+2*n+1)`
-/

namespace A096166.P15924765683141167780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331619 (A348433 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A096166.P15924765683141167780

/-!
# A096168: Number of Abelian cubefree words over a 3-letter alphabet.

The programs for A096168, there is no canonical definition to state claims against.
-/

/-! ## A096168.P13292971991166679251

`A084264(n)+A064547(A084262(n))`
-/

namespace A096168.P13292971991166679251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084264 n + A064547 (A084262 n).toNat

end

end A096168.P13292971991166679251

/-!
# A096169: Odd n such that (n^4+1)/2 is prime.

The programs for A096169, the canonical program `A096169.P15892696127636071477` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096169 has offset 1).

The definition of A096169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096169.P9546528449425515849

`∩[2*n+1, A186689(n+1)]`
-/

namespace A096169.P9546528449425515849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096169.P9546528449425515849

namespace A096169

/-- `∩[2*n+1, A186689(n+1)]` -/
def P9546528449425515849.Spec : Prop :=
  ∀ n, (P9546528449425515849.a n : ℤ) = A096169 (n + 1)

end A096169

/-! ## A096169.P15386348950316280123

`record[A000265(A186689(n+1))]`
-/

namespace A096169.P15386348950316280123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A186689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096169.P15386348950316280123

namespace A096169

/-- `record[A000265(A186689(n+1))]` -/
def P15386348950316280123.Spec : Prop :=
  ∀ n, P15386348950316280123.a n = A096169 (n + 1)

end A096169

/-! ## A096169.P1891326748379238642

`∩[A186689(n+1), A004273(n)]`
-/

namespace A096169.P1891326748379238642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096169.P1891326748379238642

namespace A096169

/-- `∩[A186689(n+1), A004273(n)]` -/
def P1891326748379238642.Spec : Prop :=
  ∀ n, (P1891326748379238642.a n : ℤ) = A096169 (n + 1)

end A096169

/-! ## A096169.P16343353141652887115

`∩[A186689(n+1), A004274(n)]`
-/

namespace A096169.P16343353141652887115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096169.P16343353141652887115

namespace A096169

/-- `∩[A186689(n+1), A004274(n)]` -/
def P16343353141652887115.Spec : Prop :=
  ∀ n, (P16343353141652887115.a n : ℤ) = A096169 (n + 1)

end A096169

/-! ## A096169.P2521250393418801388

`∩[A186689(n+1), A004276(n)]`
-/

namespace A096169.P2521250393418801388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096169.P2521250393418801388

namespace A096169

/-- `∩[A186689(n+1), A004276(n)]` -/
def P2521250393418801388.Spec : Prop :=
  ∀ n, (P2521250393418801388.a n : ℤ) = A096169 (n + 1)

end A096169

/-! ## A096169.P1670139762933204280

`∩[A186689(n+1), A004281(n)]`
-/

namespace A096169.P1670139762933204280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096169.P1670139762933204280

namespace A096169

/-- `∩[A186689(n+1), A004281(n)]` -/
def P1670139762933204280.Spec : Prop :=
  ∀ n, (P1670139762933204280.a n : ℤ) = A096169 (n + 1)

end A096169

/-! ## A096169.P6994481755864706577

`∩[A186689(n+1), A060747(n)]`
-/

namespace A096169.P6994481755864706577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096169.P6994481755864706577

namespace A096169

/-- `∩[A186689(n+1), A060747(n)]` -/
def P6994481755864706577.Spec : Prop :=
  ∀ n, (P6994481755864706577.a n : ℤ) = A096169 (n + 1)

end A096169

/-! ## A096169.P10390911466270988109

`∩[A186689(n+1), A004275(n)+1]`
-/

namespace A096169.P10390911466270988109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096169.P10390911466270988109

namespace A096169

/-- `∩[A186689(n+1), A004275(n)+1]` -/
def P10390911466270988109.Spec : Prop :=
  ∀ n, (P10390911466270988109.a n : ℤ) = A096169 (n + 1)

end A096169

/-! ## A096169.P5622664861448175495

`∩[A186689(n+1), A004277(n)+1]`
-/

namespace A096169.P5622664861448175495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096169.P5622664861448175495

namespace A096169

/-- `∩[A186689(n+1), A004277(n)+1]` -/
def P5622664861448175495.Spec : Prop :=
  ∀ n, (P5622664861448175495.a n : ℤ) = A096169 (n + 1)

end A096169

/-! ## A096169.P9265779508391103653

`∩[A186689(n+1), A005843(n)+1]`
-/

namespace A096169.P9265779508391103653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096169.P9265779508391103653

namespace A096169

/-- `∩[A186689(n+1), A005843(n)+1]` -/
def P9265779508391103653.Spec : Prop :=
  ∀ n, (P9265779508391103653.a n : ℤ) = A096169 (n + 1)

end A096169

/-! ## A096169.P10914300369893607455

`∩[A186689(n+1), A103517(n)-1]`
-/

namespace A096169.P10914300369893607455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096169.P10914300369893607455

namespace A096169

/-- `∩[A186689(n+1), A103517(n)-1]` -/
def P10914300369893607455.Spec : Prop :=
  ∀ n, (P10914300369893607455.a n : ℤ) = A096169 (n + 1)

end A096169

/-! ## A096169.P9290754379680740110

`A186689(eq[1, gcd(2, A186689(n+1))]+1)`
-/

namespace A096169.P9290754379680740110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A186689 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A096169.P9290754379680740110

namespace A096169

/-- `A186689(eq[1, gcd(2, A186689(n+1))]+1)` -/
def P9290754379680740110.Spec : Prop :=
  ∀ n, P9290754379680740110.a n = A096169 (n + 1)

end A096169

/-! ## A096169.P15892696127636071477

`eq[A141310(n), A193929(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A096169

/-- `eq[A141310(n), A193929(n)]` -/
def P15892696127636071477.Spec : Prop :=
  ∀ n, (P15892696127636071477.a n : ℤ) = A096169 (n + 1)

theorem P15892696127636071477.correct : P15892696127636071477.Spec := by
  intro n
  simp only [A096169, Nat.add_sub_cancel]

end A096169

/-! ## A096169.P12051918595550859593

`eq[A174571(n), A193562(n)]`
-/

namespace A096169.P12051918595550859593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096169.P12051918595550859593

namespace A096169

/-- `eq[A174571(n), A193562(n)]` -/
def P12051918595550859593.Spec : Prop :=
  ∀ n, (P12051918595550859593.a n : ℤ) = A096169 (n + 1)

end A096169

/-! ## A096169.P16971690309086006027

`filter[A186689(n+1), A000035(#)]`
-/

namespace A096169.P16971690309086006027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A096169.P16971690309086006027

namespace A096169

/-- `filter[A186689(n+1), A000035(#)]` -/
def P16971690309086006027.Spec : Prop :=
  ∀ n, P16971690309086006027.a n = A096169 (n + 1)

end A096169

/-! ## A096169.P1296889698015741494

`filter[A186689(n+1), A266070(#)]`
-/

namespace A096169.P1296889698015741494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A096169.P1296889698015741494

namespace A096169

/-- `filter[A186689(n+1), A266070(#)]` -/
def P1296889698015741494.Spec : Prop :=
  ∀ n, P1296889698015741494.a n = A096169 (n + 1)

end A096169

/-! ## A096169.P3741855064579366

`filter[A186689(n+1), A266719(#)]`
-/

namespace A096169.P3741855064579366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A096169.P3741855064579366

namespace A096169

/-- `filter[A186689(n+1), A266719(#)]` -/
def P3741855064579366.Spec : Prop :=
  ∀ n, P3741855064579366.a n = A096169 (n + 1)

end A096169

/-! ## A096169.P38466540523666175

`filter[A186689(n+1), A267256(#)]`
-/

namespace A096169.P38466540523666175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A096169.P38466540523666175

namespace A096169

/-- `filter[A186689(n+1), A267256(#)]` -/
def P38466540523666175.Spec : Prop :=
  ∀ n, P38466540523666175.a n = A096169 (n + 1)

end A096169

/-!
# A096170: Primes of the form (k^4 + 1)/2.

The programs for A096170, the canonical program `A096170.P18348030352440901355` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096170 has offset 1).

The definition of A096170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096170.P18400992237443202399

`record[A096172(2*n+3)]`
-/

namespace A096170.P18400992237443202399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096170.P18400992237443202399

namespace A096170

/-- `record[A096172(2*n+3)]` -/
def P18400992237443202399.Spec : Prop :=
  ∀ n, P18400992237443202399.a n = A096170 (n + 1)

end A096170

/-! ## A096170.P8834315547543759770

`A096172(A096169(n+1))`
-/

namespace A096170.P8834315547543759770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (A096169 (n + 1)).toNat

end

end A096170.P8834315547543759770

namespace A096170

/-- `A096172(A096169(n+1))` -/
def P8834315547543759770.Spec : Prop :=
  ∀ n, P8834315547543759770.a n = A096170 (n + 1)

end A096170

/-! ## A096170.P18348030352440901355

`A171714(A096169(n+1)-1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A096170

/-- `A171714(A096169(n+1)-1)` -/
def P18348030352440901355.Spec : Prop :=
  ∀ n, P18348030352440901355.a n = A096170 (n + 1)

theorem P18348030352440901355.correct : P18348030352440901355.Spec := by
  intro n
  simp only [A096170, Nat.add_sub_cancel]

end A096170

/-! ## A096170.P6686027812745062898

`A171714(xor(1, A096169(n+1)))`
-/

namespace A096170.P6686027812745062898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171714 (Int.xor 1 (A096169 (n + 1))).toNat

end

end A096170.P6686027812745062898

namespace A096170

/-- `A171714(xor(1, A096169(n+1)))` -/
def P6686027812745062898.Spec : Prop :=
  ∀ n, P6686027812745062898.a n = A096170 (n + 1)

end A096170

/-! ## A096170.P18207620578265800824

`record[or(1, A096172(A186689(n+1)))]`
-/

namespace A096170.P18207620578265800824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A096172 (A186689 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096170.P18207620578265800824

namespace A096170

/-- `record[or(1, A096172(A186689(n+1)))]` -/
def P18207620578265800824.Spec : Prop :=
  ∀ n, P18207620578265800824.a n = A096170 (n + 1)

end A096170

/-! ## A096170.P9005074290942694181

`A096172(eq[A000035(n), A109199(n)])`
-/

namespace A096170.P9005074290942694181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A096170.P9005074290942694181

namespace A096170

/-- `A096172(eq[A000035(n), A109199(n)])` -/
def P9005074290942694181.Spec : Prop :=
  ∀ n, P9005074290942694181.a n = A096170 (n + 1)

end A096170

/-! ## A096170.P16427273181905298121

`A096172(eq[A007877(n), A109199(n)])`
-/

namespace A096170.P16427273181905298121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A096170.P16427273181905298121

namespace A096170

/-- `A096172(eq[A007877(n), A109199(n)])` -/
def P16427273181905298121.Spec : Prop :=
  ∀ n, P16427273181905298121.a n = A096170 (n + 1)

end A096170

/-! ## A096170.P4020072679922892538

`A096172(eq[A010131(n), A109199(n)])`
-/

namespace A096170.P4020072679922892538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A096170.P4020072679922892538

namespace A096170

/-- `A096172(eq[A010131(n), A109199(n)])` -/
def P4020072679922892538.Spec : Prop :=
  ∀ n, P4020072679922892538.a n = A096170 (n + 1)

end A096170

/-! ## A096170.P5735144179752518662

`A096172(eq[A010132(n), A109199(n)])`
-/

namespace A096170.P5735144179752518662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A096170.P5735144179752518662

namespace A096170

/-- `A096172(eq[A010132(n), A109199(n)])` -/
def P5735144179752518662.Spec : Prop :=
  ∀ n, P5735144179752518662.a n = A096170 (n + 1)

end A096170

/-! ## A096170.P17326182267886217600

`A096172(eq[A010146(n), A109199(n)])`
-/

namespace A096170.P17326182267886217600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A096170.P17326182267886217600

namespace A096170

/-- `A096172(eq[A010146(n), A109199(n)])` -/
def P17326182267886217600.Spec : Prop :=
  ∀ n, P17326182267886217600.a n = A096170 (n + 1)

end A096170

/-!
# A096171: Numbers k such that k^4+1 is an odd semiprime.

The programs for A096171, the canonical program `A096171.P8375444829207766221` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096171 has offset 1).

The definition of A096171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1948 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096171.P4028291157322505629

`∩[A186689(n+1), A020739(n)]`
-/

namespace A096171.P4028291157322505629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096171.P4028291157322505629

namespace A096171

/-- `∩[A186689(n+1), A020739(n)]` -/
def P4028291157322505629.Spec : Prop :=
  ∀ n, (P4028291157322505629.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P7070400248329243286

`∩[A186689(n+1), A020744(n)]`
-/

namespace A096171.P7070400248329243286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096171.P7070400248329243286

namespace A096171

/-- `∩[A186689(n+1), A020744(n)]` -/
def P7070400248329243286.Spec : Prop :=
  ∀ n, (P7070400248329243286.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P8001200623647879840

`∩[A186689(n+1), A004277(n)]`
-/

namespace A096171.P8001200623647879840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096171.P8001200623647879840

namespace A096171

/-- `∩[A186689(n+1), A004277(n)]` -/
def P8001200623647879840.Spec : Prop :=
  ∀ n, (P8001200623647879840.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P17265332829725427818

`∩[A186689(n+1), A005843(n)]`
-/

namespace A096171.P17265332829725427818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096171.P17265332829725427818

namespace A096171

/-- `∩[A186689(n+1), A005843(n)]` -/
def P17265332829725427818.Spec : Prop :=
  ∀ n, (P17265332829725427818.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P4728302497115228077

`∩[A186689(n+1), A103517(n)]`
-/

namespace A096171.P4728302497115228077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096171.P4728302497115228077

namespace A096171

/-- `∩[A186689(n+1), A103517(n)]` -/
def P4728302497115228077.Spec : Prop :=
  ∀ n, (P4728302497115228077.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P6771062649952773208

`∩[A186689(n+1), A004273(n)+1]`
-/

namespace A096171.P6771062649952773208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096171.P6771062649952773208

namespace A096171

/-- `∩[A186689(n+1), A004273(n)+1]` -/
def P6771062649952773208.Spec : Prop :=
  ∀ n, (P6771062649952773208.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P12333049617547366717

`∩[A186689(n+1), A060747(n)+1]`
-/

namespace A096171.P12333049617547366717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096171.P12333049617547366717

namespace A096171

/-- `∩[A186689(n+1), A060747(n)+1]` -/
def P12333049617547366717.Spec : Prop :=
  ∀ n, (P12333049617547366717.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P9821145270115379952

`∩[A163300(n+1), A186689(n+1)]`
-/

namespace A096171.P9821145270115379952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096171.P9821145270115379952

namespace A096171

/-- `∩[A163300(n+1), A186689(n+1)]` -/
def P9821145270115379952.Spec : Prop :=
  ∀ n, (P9821145270115379952.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P3307959175074180235

`∩[A186689(n+1), A004275(n)]`
-/

namespace A096171.P3307959175074180235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096171.P3307959175074180235

namespace A096171

/-- `∩[A186689(n+1), A004275(n)]` -/
def P3307959175074180235.Spec : Prop :=
  ∀ n, (P3307959175074180235.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P15848524240901264621

`∩[A186689(n+1), A004274(n)-1]`
-/

namespace A096171.P15848524240901264621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096171.P15848524240901264621

namespace A096171

/-- `∩[A186689(n+1), A004274(n)-1]` -/
def P15848524240901264621.Spec : Prop :=
  ∀ n, (P15848524240901264621.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P10851371732581374630

`eq[gcd(2, n)², A193562(n)]`
-/

namespace A096171.P10851371732581374630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096171.P10851371732581374630

namespace A096171

/-- `eq[gcd(2, n)², A193562(n)]` -/
def P10851371732581374630.Spec : Prop :=
  ∀ n, (P10851371732581374630.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P8375444829207766221

`2*eq[2, A193929(2*n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A096171

/-- `2*eq[2, A193929(2*n)]` -/
def P8375444829207766221.Spec : Prop :=
  ∀ n, (P8375444829207766221.a n : ℤ) = A096171 (n + 1)

theorem P8375444829207766221.correct : P8375444829207766221.Spec := by
  intro n
  simp only [A096171, Nat.add_sub_cancel]

end A096171

/-! ## A096171.P7923011870468870987

`eq[A010710(n), A193562(n)]`
-/

namespace A096171.P7923011870468870987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096171.P7923011870468870987

namespace A096171

/-- `eq[A010710(n), A193562(n)]` -/
def P7923011870468870987.Spec : Prop :=
  ∀ n, (P7923011870468870987.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P7364318959804362645

`eq[A010711(n), A193562(n)]`
-/

namespace A096171.P7364318959804362645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096171.P7364318959804362645

namespace A096171

/-- `eq[A010711(n), A193562(n)]` -/
def P7364318959804362645.Spec : Prop :=
  ∀ n, (P7364318959804362645.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P15962708898856250691

`eq[A010712(n), A193562(n)]`
-/

namespace A096171.P15962708898856250691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010712 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096171.P15962708898856250691

namespace A096171

/-- `eq[A010712(n), A193562(n)]` -/
def P15962708898856250691.Spec : Prop :=
  ∀ n, (P15962708898856250691.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P13511941505351728959

`eq[A010714(n), A193562(n)]`
-/

namespace A096171.P13511941505351728959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096171.P13511941505351728959

namespace A096171

/-- `eq[A010714(n), A193562(n)]` -/
def P13511941505351728959.Spec : Prop :=
  ∀ n, (P13511941505351728959.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P11284136137838528671

`eq[A010715(n), A193562(n)]`
-/

namespace A096171.P11284136137838528671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010715 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096171.P11284136137838528671

namespace A096171

/-- `eq[A010715(n), A193562(n)]` -/
def P11284136137838528671.Spec : Prop :=
  ∀ n, (P11284136137838528671.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P3273615956821891935

`eq[A040005(n), A193562(n)]`
-/

namespace A096171.P3273615956821891935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096171.P3273615956821891935

namespace A096171

/-- `eq[A040005(n), A193562(n)]` -/
def P3273615956821891935.Spec : Prop :=
  ∀ n, (P3273615956821891935.a n : ℤ) = A096171 (n + 1)

end A096171

/-! ## A096171.P18038562612930911097

`eq[2, A193929(A141310(n)-1)]`
-/

namespace A096171.P18038562612930911097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (A141310 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096171.P18038562612930911097

namespace A096171

/-- `eq[2, A193929(A141310(n)-1)]` -/
def P18038562612930911097.Spec : Prop :=
  ∀ n, (P18038562612930911097.a n : ℤ) = A096171 (n + 1)

end A096171

/-!
# A096172: Largest prime factor of n^4 + 1.

The programs for A096172, there is no canonical definition to state claims against.
-/

/-! ## A096172.P18121209861047967276

`A014442((n+1)²)`
-/

namespace A096172.P18121209861047967276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 ((n + 1) ^ 2)

end

end A096172.P18121209861047967276

/-! ## A096172.P2309134056085673668

`A250069((n+1)²)+1`
-/

namespace A096172.P2309134056085673668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 ((n + 1) ^ 2) + 1

end

end A096172.P2309134056085673668

/-! ## A096172.P783750235893890353

`and(-5, A014442(∑[2*n+1]))`
-/

namespace A096172.P783750235893890353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A014442 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A096172.P783750235893890353

/-! ## A096172.P10337403907044842984

`xor(4, A014442(∑[n+1+n])+4)`
-/

namespace A096172.P10337403907044842984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A014442 (∑ j ∈ Finset.range (n + 1), f1 j) + 4)

end

end A096172.P10337403907044842984

/-! ## A096172.P8642609745886745911

`or(n%2, A014442(A000290(n+1)))`
-/

namespace A096172.P8642609745886745911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A014442 (A000290 (n + 1)).toNat)

end

end A096172.P8642609745886745911

/-! ## A096172.P15115692515196068064

`A014442(∑[2*n+1])%A017500(n)`
-/

namespace A096172.P15115692515196068064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014442 (∑ j ∈ Finset.range (n + 1), f1 j)) (A017500 n)

end

end A096172.P15115692515196068064

/-! ## A096172.P6785917215982277530

`gcd(A000038(n), A014442(∑[2*n+1]))`
-/

namespace A096172.P6785917215982277530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A014442 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A096172.P6785917215982277530

/-! ## A096172.P1701904589686749390

`or(A000035(n), A014442(∑[2*n+1]))`
-/

namespace A096172.P1701904589686749390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A014442 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A096172.P1701904589686749390

/-! ## A096172.P14700846296782094889

`A007318(C(2, n))*A014442(∑[2*n+1])`
-/

namespace A096172.P14700846296782094889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A014442 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096172.P14700846296782094889

/-! ## A096172.P1595279221446466895

`ceil(1/A000041(n))*A014442(∑[2*n+1])`
-/

namespace A096172.P1595279221446466895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A014442 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096172.P1595279221446466895

/-! ## A096172.P7635838991464113252

`A014442(∑[2*n+1])+A008683(lcm(4, n+1))`
-/

namespace A096172.P7635838991464113252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (∑ j ∈ Finset.range (n + 1), f1 j) + A008683 (Nat.lcm 4 (n + 1))

end

end A096172.P7635838991464113252

/-! ## A096172.P11091914511369461150

`A014442(A000290(n+1))+and(2, A000290(n))`
-/

namespace A096172.P11091914511369461150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A000290 (n + 1)).toNat + Int.land 2 (A000290 n)

end

end A096172.P11091914511369461150

/-! ## A096172.P17604142367696486469

`A000045(A014963(2*(n+1)))*A014442(∑[2*n+1])`
-/

namespace A096172.P17604142367696486469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (2 * (n + 1))).toNat * A014442 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096172.P17604142367696486469

/-! ## A096172.P17755854157090581404

`A014442(A000290(n+1))*A247339(A002061(n))`
-/

namespace A096172.P17755854157090581404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A000290 (n + 1)).toNat * A247339 (A002061 n).toNat

end

end A096172.P17755854157090581404

/-! ## A096172.P7108136363245364140

`A014442(A000290(n+1))*A247339(A014442(n+2))`
-/

namespace A096172.P7108136363245364140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A000290 (n + 1)).toNat * A247339 (A014442 (n + 2)).toNat

end

end A096172.P7108136363245364140

/-!
# A096173: Numbers k such that k^3+1 is an odd semiprime.

The programs for A096173, there is no canonical definition to state claims against.
-/

/-! ## A096173.P15414442882280738711

`2*A237037(n+1)`
-/

namespace A096173.P15414442882280738711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237037 (n + 1)

end

end A096173.P15414442882280738711

/-! ## A096173.P12810587898723883387

`(A237040(n+1)-1)^(1/3)`
-/

namespace A096173.P12810587898723883387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237040 (n + 1) - 1 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A096173.P12810587898723883387

/-! ## A096173.P17600212870000431680

`floor(root(A237040(n+1), 3))`
-/

namespace A096173.P17600212870000431680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A237040 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A096173.P17600212870000431680

/-! ## A096173.P7020813678693591356

`A237037(A000027(n+1))+A237037(n+1)`
-/

namespace A096173.P7020813678693591356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (A000027 (n + 1)).toNat + A237037 (n + 1)

end

end A096173.P7020813678693591356

/-! ## A096173.P8958912719392659805

`A237037(n+1)+A237037((n+1)%A000040(n+1))`
-/

namespace A096173.P8958912719392659805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1) + A237037 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat

end

end A096173.P8958912719392659805

/-! ## A096173.P8676195183363826828

`A237037(n+1)+A237037(n+1)%A237038(n+1)`
-/

namespace A096173.P8676195183363826828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237037 (n + 1) + Int.tmod (A237037 (n + 1)) (A237038 (n + 1))

end

end A096173.P8676195183363826828

/-! ## A096173.P17951204014147399639

`(A237037(n+1)+A237037(n+1))%A237040(n+1)`
-/

namespace A096173.P17951204014147399639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237037 (n + 1) + A237037 (n + 1)) (A237040 (n + 1))

end

end A096173.P17951204014147399639

/-! ## A096173.P4230678111049542129

`∩[A006093(n+1), A096174(n+1)]`
-/

namespace A096173.P4230678111049542129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096173.P4230678111049542129

/-! ## A096173.P14139611388253587729

`∩[A068499(n+1), A096174(n+1)]`
-/

namespace A096173.P14139611388253587729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096173.P14139611388253587729

/-! ## A096173.P13105209388607288125

`p?[A089358(n+1)]-1`
-/

namespace A096173.P13105209388607288125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A096173.P13105209388607288125

/-! ## A096173.P4990863922358316382

`p?[A055494(n+1)+1]-1`
-/

namespace A096173.P4990863922358316382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A096173.P4990863922358316382

/-! ## A096173.P6929209838139062849

`p?[A002384(n+1)+2]-1`
-/

namespace A096173.P6929209838139062849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A096173.P6929209838139062849

/-! ## A096173.P6345913609487998138

`A003958(p?[A055494(n+1)+1])`
-/

namespace A096173.P6345913609487998138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096173.P6345913609487998138

/-! ## A096173.P13961131494016842502

`∩[A006093(n+1), A055494(n+1)]`
-/

namespace A096173.P13961131494016842502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096173.P13961131494016842502

/-! ## A096173.P9120226811470352975

`record[A020639(A002384(n+1)+2)-1]`
-/

namespace A096173.P9120226811470352975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002384 (n + 1) + 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096173.P9120226811470352975

/-! ## A096173.P3493492567357232829

`∩[A002384(n+1)+1, A006093(n+1)]`
-/

namespace A096173.P3493492567357232829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096173.P3493492567357232829

/-! ## A096173.P18313641112217644232

`∩[A008864(n+1)-2, A055494(n+1)]`
-/

namespace A096173.P18313641112217644232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096173.P18313641112217644232

/-! ## A096173.P12351364746410480855

`record[A000010(A000010(A089358(n+1))+1)]`
-/

namespace A096173.P12351364746410480855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A089358 (n + 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096173.P12351364746410480855

/-! ## A096173.P16512234481227371573

`∩[A096174(n+1), A196127(n+1)]`
-/

namespace A096173.P16512234481227371573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096173.P16512234481227371573

/-! ## A096173.P11749568232531287295

`∩[A096174(n+1), A173919(n+1)]`
-/

namespace A096173.P11749568232531287295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096173.P11749568232531287295

/-!
# A096174: Even numbers k such that (k^3+1)/(k+1) is prime.

The programs for A096174, there is no canonical definition to state claims against.
-/

/-! ## A096174.P1393595322234254441

`ceil(sqrt(A073337(n+1)))`
-/

namespace A096174.P1393595322234254441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A073337 (n + 1) : ℝ)⌉

end

end A096174.P1393595322234254441

/-! ## A096174.P17241297349976602556

`2*(A073338(n+1)-1)`
-/

namespace A096174.P17241297349976602556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A073338 (n + 1) - 1)

end

end A096174.P17241297349976602556

/-! ## A096174.P12653666735556796718

`∩[2*n, A055494(n+1)]`
-/

namespace A096174.P12653666735556796718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096174.P12653666735556796718

/-! ## A096174.P16718399536610124109

`∩[2*n, A002384(n+1)+1]`
-/

namespace A096174.P16718399536610124109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096174.P16718399536610124109

/-! ## A096174.P13788944512065343192

`A004275(A073338(n+1))`
-/

namespace A096174.P13788944512065343192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A073338 (n + 1)).toNat

end

end A096174.P13788944512065343192

/-! ## A096174.P7604640182661532162

`∩[A055494(n+1), A004275(n)]`
-/

namespace A096174.P7604640182661532162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096174.P7604640182661532162

/-! ## A096174.P16769695666047657790

`∩[A055494(n+1), A004277(n)]`
-/

namespace A096174.P16769695666047657790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096174.P16769695666047657790

/-! ## A096174.P16997834358478230153

`∩[A055494(n+1), A005843(n)]`
-/

namespace A096174.P16997834358478230153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096174.P16997834358478230153

/-! ## A096174.P8363068790024151132

`record[2*(n+1)/A289356(2*n+1)]`
-/

namespace A096174.P8363068790024151132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A289356 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096174.P8363068790024151132

/-! ## A096174.P687395296150003363

`filter[A055494(n+1), A135528(#)]`
-/

namespace A096174.P687395296150003363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A096174.P687395296150003363

/-! ## A096174.P12963645149358143001

`2*eq[2, A278251(2*n)]`
-/

namespace A096174.P12963645149358143001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096174.P12963645149358143001

/-! ## A096174.P10227194106086863237

`eq[A010693(n), A278251(n)]`
-/

namespace A096174.P10227194106086863237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096174.P10227194106086863237

/-! ## A096174.P1183177852223985081

`eq[A010694(n), A278251(n)]`
-/

namespace A096174.P1183177852223985081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096174.P1183177852223985081

/-! ## A096174.P7607985834129511723

`eq[A010695(n), A278251(n)]`
-/

namespace A096174.P7607985834129511723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096174.P7607985834129511723

/-! ## A096174.P11092424720083447158

`eq[A010697(n), A278251(n)]`
-/

namespace A096174.P11092424720083447158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010697 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096174.P11092424720083447158

/-! ## A096174.P15988162214721636999

`eq[A010699(n), A278251(n)]`
-/

namespace A096174.P15988162214721636999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096174.P15988162214721636999

/-! ## A096174.P6824949785986650123

`eq[A010700(n), A278251(n)]`
-/

namespace A096174.P6824949785986650123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096174.P6824949785986650123

/-! ## A096174.P8133808410560975581

`eq[A060395(n), A278251(n)]`
-/

namespace A096174.P8133808410560975581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060395 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096174.P8133808410560975581

/-! ## A096174.P965465253289869433

`eq[A262083(n), A278251(n)]`
-/

namespace A096174.P965465253289869433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262083 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096174.P965465253289869433

/-!
# A096175: Numbers k such that k^3-1 is an odd semiprime.

The programs for A096175, there is no canonical definition to state claims against.
-/

/-! ## A096175.P11112116318344136373

`2*A317138(n+1)`
-/

namespace A096175.P11112116318344136373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317138 (n + 1)

end

end A096175.P11112116318344136373

/-! ## A096175.P13343156456436154432

`A317138(A000027(n+1))+A317138(n+1)`
-/

namespace A096175.P13343156456436154432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317138 (A000027 (n + 1)).toNat + A317138 (n + 1)

end

end A096175.P13343156456436154432

/-! ## A096175.P17771076349987231129

`A317138(n+1)+A317138(n+1)/A073575(A073575(n+1))`
-/

namespace A096175.P17771076349987231129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317138 (n + 1) : ℚ) + (A317138 (n + 1) : ℚ) / (A073575 (A073575 (n + 1)).toNat : ℚ)

end

end A096175.P17771076349987231129

/-! ## A096175.P2786432330329835981

`∩[A309544(n+1), A028815(n+2)]`
-/

namespace A096175.P2786432330329835981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P2786432330329835981

/-! ## A096175.P4792427144609834363

`∩[A061344(n+1), A309544(n+1)]`
-/

namespace A096175.P4792427144609834363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P4792427144609834363

/-! ## A096175.P12073585930335095995

`∩[A182253(n+1), A028815(n)]`
-/

namespace A096175.P12073585930335095995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P12073585930335095995

/-! ## A096175.P1328741201101656678

`∩[A008864(n+1), A182253(n+1)]`
-/

namespace A096175.P1328741201101656678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P1328741201101656678

/-! ## A096175.P12801191849826501244

`∩[A135731(n+1), A182253(n+1)]`
-/

namespace A096175.P12801191849826501244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P12801191849826501244

/-! ## A096175.P1403916896348135838

`∩[A093515(2*n+1), A182253(n+2)]`
-/

namespace A096175.P1403916896348135838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P1403916896348135838

/-! ## A096175.P2942882258908630434

`p?[A128815(n+3)]+1`
-/

namespace A096175.P2942882258908630434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128815 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A096175.P2942882258908630434

/-! ## A096175.P13757588639142756912

`∩[A055670(n+1), A096176(n+1)]`
-/

namespace A096175.P13757588639142756912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P13757588639142756912

/-! ## A096175.P13700321297224185372

`∩[A002384(n+2), A006093(n+2)+2]`
-/

namespace A096175.P13700321297224185372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P13700321297224185372

/-! ## A096175.P16040241446769121867

`∩[A008864(n+2), A055494(n+2)-1]`
-/

namespace A096175.P16040241446769121867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P16040241446769121867

/-! ## A096175.P14993050980624810267

`∩[A309544(n+1), A370745(n+1)]`
-/

namespace A096175.P14993050980624810267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P14993050980624810267

/-! ## A096175.P4151929113565378465

`∩[A309544(n+1), A387501(n+1)]`
-/

namespace A096175.P4151929113565378465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P4151929113565378465

/-! ## A096175.P7094371614790585424

`∩[A039767(n+1), A309544(n+1)]`
-/

namespace A096175.P7094371614790585424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P7094371614790585424

/-! ## A096175.P11836085623345438516

`∩[A111688(n+1), A182253(n+1)]`
-/

namespace A096175.P11836085623345438516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P11836085623345438516

/-! ## A096175.P4715948431698462867

`∩[A182253(n+1), A093515(n+1)]`
-/

namespace A096175.P4715948431698462867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P4715948431698462867

/-! ## A096175.P8350418929805210972

`∩[A242058(n+1), A309544(n+1)]`
-/

namespace A096175.P8350418929805210972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P8350418929805210972

/-! ## A096175.P9901299521120048172

`∩[A243937(n+1), A309544(n+1)]`
-/

namespace A096175.P9901299521120048172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096175.P9901299521120048172

/-!
# A096176: Numbers k such that (k^3-1)/(k-1) is prime.

The programs for A096176, there is no canonical definition to state claims against.
-/

/-! ## A096176.P5662755206310199797

`A128815(n+1)+1`
-/

namespace A096176.P5662755206310199797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128815 (n + 1) + 1

end

end A096176.P5662755206310199797

/-! ## A096176.P8037928386169604196

`floor(sqrt(A002383(n+2)))`
-/

namespace A096176.P8037928386169604196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002383 (n + 2))

end

end A096176.P8037928386169604196

/-! ## A096176.P7489832785725810290

`A002384(n+2)`
-/

namespace A096176.P7489832785725810290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 2)

end

end A096176.P7489832785725810290

/-! ## A096176.P14965778657381794215

`A055494(n+2)-1`
-/

namespace A096176.P14965778657381794215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 2) - 1

end

end A096176.P14965778657381794215

/-! ## A096176.P8639602990262296494

`A089358(n+2)-2`
-/

namespace A096176.P8639602990262296494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089358 (n + 2) - 2

end

end A096176.P8639602990262296494

/-! ## A096176.P15255070015625820961

`floor(A088503(n+2)/2)`
-/

namespace A096176.P15255070015625820961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088503 (n + 2) : ℚ) / 2⌋

end

end A096176.P15255070015625820961

/-! ## A096176.P4680077603285894210

`A088503(n+2)%A055494(n+2)`
-/

namespace A096176.P4680077603285894210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088503 (n + 2)) (A055494 (n + 2))

end

end A096176.P4680077603285894210

/-! ## A096176.P13542619995670753130

`(A088503(n+2)-1)/A020639(2*(n+1))`
-/

namespace A096176.P13542619995670753130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088503 (n + 2) - 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A096176.P13542619995670753130

/-! ## A096176.P490711933417099057

`record[A214059(n+2)]`
-/

namespace A096176.P490711933417099057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214059 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096176.P490711933417099057

/-! ## A096176.P8208127884101659451

`lt[3, A108154(n+1)]`
-/

namespace A096176.P8208127884101659451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A096176.P8208127884101659451

/-! ## A096176.P16917094743987076068

`eq[1, A289356(n)+char[1]]`
-/

namespace A096176.P16917094743987076068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n + ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096176.P16917094743987076068

/-! ## A096176.P7569499111422112584

`lt[n²+2, A081256(n+1)]`
-/

namespace A096176.P7569499111422112584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A096176.P7569499111422112584

/-! ## A096176.P17001031613800282016

`A020725(A128815(n+1))`
-/

namespace A096176.P17001031613800282016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A128815 (n + 1)).toNat

end

end A096176.P17001031613800282016

/-! ## A096176.P6442914506901846905

`eq[A005131(n), A289356(n)]`
-/

namespace A096176.P6442914506901846905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096176.P6442914506901846905

/-! ## A096176.P14890113659509847809

`eq[A130770(n), A182047(n)]`
-/

namespace A096176.P14890113659509847809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096176.P14890113659509847809

/-! ## A096176.P16577994732911361930

`eq[A060576(n), A289356(n)]`
-/

namespace A096176.P16577994732911361930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096176.P16577994732911361930

/-! ## A096176.P7314729070030262758

`eq[A078688(n), A289356(n)]`
-/

namespace A096176.P7314729070030262758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096176.P7314729070030262758

/-! ## A096176.P14692753297007537723

`eq[A078689(n), A289356(n)]`
-/

namespace A096176.P14692753297007537723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096176.P14692753297007537723

/-! ## A096176.P5457135908930195185

`eq[A131534(n), A289356(n)]`
-/

namespace A096176.P5457135908930195185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096176.P5457135908930195185

/-! ## A096176.P16727926396011902248

`eq[A131713(n), A289356(n)]`
-/

namespace A096176.P16727926396011902248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096176.P16727926396011902248

/-!
# A096177: Primes p such that primorial(p)/2 + 2 is prime.

The programs for A096177, there is no canonical definition to state claims against.
-/

/-! ## A096177.P6606686798079319071

`A000040(A067027(n+1))`
-/

namespace A096177.P6606686798079319071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A067027 (n + 1)).toNat

end

end A096177.P6606686798079319071

/-! ## A096177.P10797109382656217833

`A008578(A067027(n+1)+1)`
-/

namespace A096177.P10797109382656217833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A067027 (n + 1) + 1).toNat

end

end A096177.P10797109382656217833

/-! ## A096177.P4692126124508329622

`A182986(A067027(n+1)+1)`
-/

namespace A096177.P4692126124508329622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A067027 (n + 1) + 1).toNat

end

end A096177.P4692126124508329622

/-! ## A096177.P2341152748973790049

`A158611(A067027(n+1)+2)`
-/

namespace A096177.P2341152748973790049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A067027 (n + 1) + 2).toNat

end

end A096177.P2341152748973790049

/-! ## A096177.P8284495641796961974

`A157928(n+2)+A006093(A067027(n+1))`
-/

namespace A096177.P8284495641796961974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 2) + A006093 (A067027 (n + 1)).toNat

end

end A096177.P8284495641796961974

/-!
# A096178: Primes of the form primorial(p)/2+2.

The programs for A096178, there is no canonical definition to state claims against.
-/

/-! ## A096178.P3701938123940895371

`A070826(A067027(n+1))+2`
-/

namespace A096178.P3701938123940895371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (A067027 (n + 1)).toNat + 2

end

end A096178.P3701938123940895371

/-! ## A096178.P12072764483621110522

`A348430(A067027(n+1)-1)`
-/

namespace A096178.P12072764483621110522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348430 (A067027 (n + 1) - 1).toNat

end

end A096178.P12072764483621110522

/-!
# A096179: Triangle read by rows: T(n,k) is the smallest positive integer having at least k of the first n positive integers as divisors.

The programs for A096179, there is no canonical definition to state claims against.
-/

/-! ## A096179.P13378444586705739921

`gcd(A072843(n), A249027(n+1))`
-/

namespace A096179.P13378444586705739921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072843 n) (A249027 (n + 1))

end

end A096179.P13378444586705739921

/-! ## A096179.P2995619413993772931

`gcd(A106037(A080786(n+1)), A106241(n+1))`
-/

namespace A096179.P2995619413993772931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106037 (A080786 (n + 1)).toNat) (A106241 (n + 1))

end

end A096179.P2995619413993772931

/-! ## A096179.P384514244942200879

`A366563(A361840(n))`
-/

namespace A096179.P384514244942200879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366563 (A361840 n).toNat

end

end A096179.P384514244942200879

/-! ## A096179.P4298988580864450031

`gcd(12, A196444(A292477(n)))`
-/

namespace A096179.P4298988580864450031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A196444 (A292477 n).toNat)

end

end A096179.P4298988580864450031

/-! ## A096179.P8634916153436943005

`∏{e}[A300717(A361840(n)²), #+1]`
-/

namespace A096179.P8634916153436943005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (A361840 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A096179.P8634916153436943005

/-!
# A096181: Floor (e^(n / log(n))).

The programs for A096181, the canonical program `A096181.P7295170442231766518` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096181 has offset 2).

The definition of A096181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096181.P7295170442231766518

`floor(root(exp(n+2), log(n+2)))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096181

/-- `floor(root(exp(n+2), log(n+2)))` -/
def P7295170442231766518.Spec : Prop :=
  ∀ n, P7295170442231766518.a n = A096181 (n + 2)

theorem P7295170442231766518.correct : P7295170442231766518.Spec := by
  intro n
  simp only [A096181, Nat.add_sub_cancel]

end A096181

/-!
# A096182: Index of first occurrence of n in A095773.

The programs for A096182, there is no canonical definition to state claims against.
-/

/-! ## A096182.P12467983402661544490

`∑[∑[char[2*A194803(n)]]]`
-/

namespace A096182.P12467983402661544490
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194803 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096182.P12467983402661544490

/-! ## A096182.P7563274999045254486

`∑[A004523(A069924(n+2))]`
-/

namespace A096182.P7563274999045254486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A069924 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096182.P7563274999045254486

/-! ## A096182.P7506902076653955448

`∑[A095773(A095773(or(1, n)))]`
-/

namespace A096182.P7506902076653955448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (A095773 (Nat.lor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096182.P7506902076653955448

/-! ## A096182.P9244492126260237101

`∑[A000523(Δ[A322003(n+2)])]`
-/

namespace A096182.P9244492126260237101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322003 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096182.P9244492126260237101

/-! ## A096182.P13753025209685073215

`A095773(A095773(n))+a(n-1)` with `a(0)=1`
-/

namespace A096182.P13753025209685073215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095773 (A095773 n).toNat + a (n - 1)

end

end A096182.P13753025209685073215

/-! ## A096182.P3385484881209454045

`∑[A065033(∑[A322583(2*(n+2))])]`
-/

namespace A096182.P3385484881209454045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096182.P3385484881209454045

/-! ## A096182.P14264153353143326487

`∑[A004396(A069924(n+2)+1)-1]`
-/

namespace A096182.P14264153353143326487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A069924 (n + 2) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096182.P14264153353143326487

/-! ## A096182.P2086718377632242594

`∑[A095773(A095773((n+1)%2+n))]`
-/

namespace A096182.P2086718377632242594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (A095773 ((n + 1) % 2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096182.P2086718377632242594

/-! ## A096182.P15224138079878782909

`∑[A095773(A095773(and(1, n+1)+n))]`
-/

namespace A096182.P15224138079878782909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (A095773 (Nat.land 1 (n + 1) + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096182.P15224138079878782909

/-! ## A096182.P16349910176445553370

`∑[A070939(A072720(A008619(n)))]`
-/

namespace A096182.P16349910176445553370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A072720 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096182.P16349910176445553370

/-!
# A096183: Index k in A095773 where a string of n identical values occurs.

The programs for A096183, there is no canonical definition to state claims against.
-/

/-! ## A096183.P4855675844057930773

`A096184(A096182(n+1))`
-/

namespace A096183.P4855675844057930773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096184 (A096182 (n + 1)).toNat

end

end A096183.P4855675844057930773

/-! ## A096183.P7294243930949145531

`A096184(A095773(A096184(n+1)))`
-/

namespace A096183.P7294243930949145531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096184 (A095773 (A096184 (n + 1)).toNat).toNat

end

end A096183.P7294243930949145531

/-! ## A096183.P14426437730019597918

`A096184(∑[A000196(A001651(n+1))])`
-/

namespace A096183.P14426437730019597918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096184 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A096183.P14426437730019597918

/-! ## A096183.P7084270986183557149

`A096184(∑[round(n/4)+1]^floor(n^(1/3)))`
-/

namespace A096183.P7084270986183557149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096184 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ : ℤ))).toNat

end

end A096183.P7084270986183557149

/-!
# A096184: Least index in A095773 which begins a string of n identical values.

The programs for A096184, there is no canonical definition to state claims against.
-/

/-! ## A096184.P11960621262824240127

`A095773(A096183(n+1))`
-/

namespace A096184.P11960621262824240127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (A096183 (n + 1)).toNat

end

end A096184.P11960621262824240127

/-! ## A096184.P14274431151500651084

`A096182(A096182(n+1))`
-/

namespace A096184.P14274431151500651084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096182 (A096182 (n + 1)).toNat

end

end A096184.P14274431151500651084

/-! ## A096184.P5962275108490618166

`record[A096182(A096182(A000174(n)))]`
-/

namespace A096184.P5962275108490618166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096182 (A096182 (A000174 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096184.P5962275108490618166

/-! ## A096184.P768070801341322201

`record[A096182(A096182(A020986(n)))]`
-/

namespace A096184.P768070801341322201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096182 (A096182 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096184.P768070801341322201

/-! ## A096184.P18262713973686961263

`record[A096182(A096182(A028920(n)))]`
-/

namespace A096184.P18262713973686961263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096182 (A096182 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096184.P18262713973686961263

/-!
# A096189: Engel expansion of the twin primes constant ~ .660161815846869573927812110014555778432623360284733413319448.

The programs for A096189, there is no canonical definition to state claims against.
-/

/-! ## A096189.P3841991880886985348

`A073949(a(n-1))` with `a(0)=2, a(1)=4, a(2)=4, a(3)=8`
-/

namespace A096189.P3841991880886985348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 4, 8] fun n a =>
  A073949 (a (n - 1)).toNat

end

end A096189.P3841991880886985348

/-!
# A096191: a(n) = Sum_{k=1..n} C(n,k)^3 where C(n,k) is binomial(n,k).

The programs for A096191, there is no canonical definition to state claims against.
-/

/-! ## A096191.P18317041414099280331

`∑[abs(Δ[A000172(n)])]`
-/

namespace A096191.P18317041414099280331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096191.P18317041414099280331

/-! ## A096191.P16883724772504783633

`A000172(n+1)-1`
-/

namespace A096191.P16883724772504783633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 (n + 1) - 1

end

end A096191.P16883724772504783633

/-! ## A096191.P8020490308310396715

`2*A061693(n+1)+1`
-/

namespace A096191.P8020490308310396715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061693 (n + 1) + 1

end

end A096191.P8020490308310396715

/-! ## A096191.P7996739213319694855

`record[A000172(ceil(abs((1-n)/2)))-1]`
-/

namespace A096191.P7996739213319694855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096191.P7996739213319694855

/-! ## A096191.P16405379307534923574

`2*∑{d}[n+1, #*A092239(#)]+1`
-/

namespace A096191.P16405379307534923574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A092239 d) + 1

end

end A096191.P16405379307534923574

/-! ## A096191.P1707056680121105558

`A033999(2*n+1)+A000172(n+1)`
-/

namespace A096191.P1707056680121105558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A000172 (n + 1)

end

end A096191.P1707056680121105558

/-! ## A096191.P12520875148544492225

`A126595(A000070(gcd(n, n+1)))+A000172(n+1)`
-/

namespace A096191.P12520875148544492225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126595 (A000070 (Nat.gcd n (n + 1))).toNat + A000172 (n + 1)

end

end A096191.P12520875148544492225

/-! ## A096191.P16180046202754709950

`A126595(root(A000079(n+1), n+1))+A000172(n+1)`
-/

namespace A096191.P16180046202754709950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126595 (SequenceMachineLib.roundAway ((A000079 (n + 1) : ℝ) ^ (1 / (n + 1 : ℝ)))).toNat + A000172 (n + 1)

end

end A096191.P16180046202754709950

/-! ## A096191.P1704965116970501065

`2*(A285779(A007318(∑[n]))+A000172(n+1)/2)+1`
-/

namespace A096191.P1704965116970501065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A285779 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ) + (A000172 (n + 1) : ℚ) / 2) + 1

end

end A096191.P1704965116970501065

/-! ## A096191.P11668859423199675504

`A285779(2*n+1)+A285779(2*n)+A000172(n+1)`
-/

namespace A096191.P11668859423199675504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (2 * n + 1) + (A285779 (2 * n) + A000172 (n + 1))

end

end A096191.P11668859423199675504

/-!
# A096192: a(n) = Sum_{k=1..n} C(n,k)^4 where C(n,k) is binomial(n,k).

The programs for A096192, there is no canonical definition to state claims against.
-/

/-! ## A096192.P5304312652734661441

`∑[abs(Δ[A005260(n)])]`
-/

namespace A096192.P5304312652734661441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005260 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096192.P5304312652734661441

/-! ## A096192.P4524617848768976918

`A005260(n+1)-1`
-/

namespace A096192.P4524617848768976918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005260 (n + 1) - 1

end

end A096192.P4524617848768976918

/-! ## A096192.P1215276530760051960

`record[A005260(A117909(n))-1]`
-/

namespace A096192.P1215276530760051960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005260 (A117909 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096192.P1215276530760051960

/-! ## A096192.P7478148843897313204

`record[A005260(A133310(n))-1]`
-/

namespace A096192.P7478148843897313204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005260 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096192.P7478148843897313204

/-! ## A096192.P13194023017654205518

`A057428(n+1)+A005260(n+1)`
-/

namespace A096192.P13194023017654205518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A005260 (n + 1)

end

end A096192.P13194023017654205518

/-! ## A096192.P8325643906699109225

`Δ[∑[A005260(n)]-A008619(2*n)]`
-/

namespace A096192.P8325643906699109225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005260 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096192.P8325643906699109225

/-! ## A096192.P16428149755188598899

`Δ[∑[A005260(n)]-A028242(2*n)]`
-/

namespace A096192.P16428149755188598899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005260 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096192.P16428149755188598899

/-! ## A096192.P15750913008081805039

`A008683(A002144(n+1))+A005260(n+1)`
-/

namespace A096192.P15750913008081805039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002144 (n + 1)).toNat + A005260 (n + 1)

end

end A096192.P15750913008081805039

/-!
# A096195: a(n) = number of distinct solutions to equations 1 +- x +- x^2 +- ... +- x^n = 0 over the complex numbers.

The programs for A096195, there is no canonical definition to state claims against.
-/

/-! ## A096195.P17113096567352366576

`∩[A003314(n+1), A392712(n+1)]`
-/

namespace A096195.P17113096567352366576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096195.P17113096567352366576

/-! ## A096195.P16830063403625626045

`eq[A124771(n), A353858(A008480(n+4))]`
-/

namespace A096195.P16830063403625626045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353858 (A008480 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096195.P16830063403625626045

/-!
# A096196: a(n) = (1 + 2^n) mod n.

The programs for A096196, the canonical program `A096196.P3881709190125399747` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096196 has offset 1).

The definition of A096196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096196.P3881709190125399747

`(A015910(n+1)+1)%(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096196

/-- `(A015910(n+1)+1)%(n+1)` -/
def P3881709190125399747.Spec : Prop :=
  ∀ n, P3881709190125399747.a n = A096196 (n + 1)

theorem P3881709190125399747.correct : P3881709190125399747.Spec := by
  intro n
  simp only [A096196, Nat.add_sub_cancel]

end A096196

/-! ## A096196.P14748541389959751402

`A053286(n+1)%(n+1)`
-/

namespace A096196.P14748541389959751402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053286 (n + 1)) (n + 1 : ℤ)

end

end A096196.P14748541389959751402

namespace A096196

/-- `A053286(n+1)%(n+1)` -/
def P14748541389959751402.Spec : Prop :=
  ∀ n, P14748541389959751402.a n = A096196 (n + 1)

end A096196

/-! ## A096196.P12822950221777437265

`(∑[2^n]+2)%(n+1)`
-/

namespace A096196.P12822950221777437265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) % (n + 1)

end

end A096196.P12822950221777437265

namespace A096196

/-- `(∑[2^n]+2)%(n+1)` -/
def P12822950221777437265.Spec : Prop :=
  ∀ n, (P12822950221777437265.a n : ℤ) = A096196 (n + 1)

end A096196

/-! ## A096196.P5650345884687236193

`abs((2^(n+1)-n)%(n+1))`
-/

namespace A096196.P5650345884687236193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((2 ^ (n + 1) : ℤ) - (n : ℤ)) (n + 1 : ℤ)|

end

end A096196.P5650345884687236193

namespace A096196

/-- `abs((2^(n+1)-n)%(n+1))` -/
def P5650345884687236193.Spec : Prop :=
  ∀ n, P5650345884687236193.a n = A096196 (n + 1)

end A096196

/-! ## A096196.P15019823790479347163

`-(n-2^(n+1))%(n+1)`
-/

namespace A096196.P15019823790479347163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod ((n : ℤ) - (2 ^ (n + 1) : ℤ)) (n + 1 : ℤ)

end

end A096196.P15019823790479347163

namespace A096196

/-- `-(n-2^(n+1))%(n+1)` -/
def P15019823790479347163.Spec : Prop :=
  ∀ n, P15019823790479347163.a n = A096196 (n + 1)

end A096196

/-! ## A096196.P13989724198621702062

`A002262(A015910(n+1)+A000124(n))`
-/

namespace A096196.P13989724198621702062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A015910 (n + 1) + A000124 n).toNat

end

end A096196.P13989724198621702062

namespace A096196

/-- `A002262(A015910(n+1)+A000124(n))` -/
def P13989724198621702062.Spec : Prop :=
  ∀ n, P13989724198621702062.a n = A096196 (n + 1)

end A096196

/-!
# A096197: a(n) = (1+prime(n)) mod n.

The programs for A096197, the canonical program `A096197.P7059853987983990690` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096197 has offset 1).

The definition of A096197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096197.P7059853987983990690

`A008864(n+1)%(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096197

/-- `A008864(n+1)%(n+1)` -/
def P7059853987983990690.Spec : Prop :=
  ∀ n, P7059853987983990690.a n = A096197 (n + 1)

theorem P7059853987983990690.correct : P7059853987983990690.Spec := by
  intro n
  simp only [A096197, Nat.add_sub_cancel]

end A096197

/-! ## A096197.P3083804509988503884

`A014692(n+1)%(n+1)`
-/

namespace A096197.P3083804509988503884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014692 (n + 1)) (n + 1 : ℤ)

end

end A096197.P3083804509988503884

namespace A096197

/-- `A014692(n+1)%(n+1)` -/
def P3083804509988503884.Spec : Prop :=
  ∀ n, P3083804509988503884.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P17717790081229617708

`A028815(n+1)%(n+1)`
-/

namespace A096197.P17717790081229617708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028815 (n + 1)) (n + 1 : ℤ)

end

end A096197.P17717790081229617708

namespace A096197

/-- `A028815(n+1)%(n+1)` -/
def P17717790081229617708.Spec : Prop :=
  ∀ n, P17717790081229617708.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P10836578419615859653

`A055670(n+1)%(n+1)`
-/

namespace A096197.P10836578419615859653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055670 (n + 1)) (n + 1 : ℤ)

end

end A096197.P10836578419615859653

namespace A096197

/-- `A055670(n+1)%(n+1)` -/
def P10836578419615859653.Spec : Prop :=
  ∀ n, P10836578419615859653.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P2522528995093756371

`A131733(n+1)%(n+1)`
-/

namespace A096197.P2522528995093756371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131733 (n + 1)) (n + 1 : ℤ)

end

end A096197.P2522528995093756371

namespace A096197

/-- `A131733(n+1)%(n+1)` -/
def P2522528995093756371.Spec : Prop :=
  ∀ n, P2522528995093756371.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P16738333011209455568

`A175216(n+1)%(n+1)`
-/

namespace A096197.P16738333011209455568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175216 (n + 1)) (n + 1 : ℤ)

end

end A096197.P16738333011209455568

namespace A096197

/-- `A175216(n+1)%(n+1)` -/
def P16738333011209455568.Spec : Prop :=
  ∀ n, P16738333011209455568.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P15534555600490088658

`A372054(n+1)%(n+1)`
-/

namespace A096197.P15534555600490088658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372054 (n + 1)) (n + 1 : ℤ)

end

end A096197.P15534555600490088658

namespace A096197

/-- `A372054(n+1)%(n+1)` -/
def P15534555600490088658.Spec : Prop :=
  ∀ n, P15534555600490088658.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P13168222689010306415

`(A000040(n+1)+1)%(n+1)`
-/

namespace A096197.P13168222689010306415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) + 1) (n + 1 : ℤ)

end

end A096197.P13168222689010306415

namespace A096197

/-- `(A000040(n+1)+1)%(n+1)` -/
def P13168222689010306415.Spec : Prop :=
  ∀ n, P13168222689010306415.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P11295416164065497379

`A090178(n+2)%(n+1)`
-/

namespace A096197.P11295416164065497379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090178 (n + 2)) (n + 1 : ℤ)

end

end A096197.P11295416164065497379

namespace A096197

/-- `A090178(n+2)%(n+1)` -/
def P11295416164065497379.Spec : Prop :=
  ∀ n, P11295416164065497379.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P7902689039929781029

`A299763(n+2)%(n+1)`
-/

namespace A096197.P7902689039929781029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299763 (n + 2)) (n + 1 : ℤ)

end

end A096197.P7902689039929781029

namespace A096197

/-- `A299763(n+2)%(n+1)` -/
def P7902689039929781029.Spec : Prop :=
  ∀ n, P7902689039929781029.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P2165084245178951473

`A093515(2*n+1)%(n+1)`
-/

namespace A096197.P2165084245178951473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093515 (2 * n + 1)) (n + 1 : ℤ)

end

end A096197.P2165084245178951473

namespace A096197

/-- `A093515(2*n+1)%(n+1)` -/
def P2165084245178951473.Spec : Prop :=
  ∀ n, P2165084245178951473.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P5632102744820216682

`record[A000010(n+1)+2]%(n+1)`
-/

namespace A096197.P5632102744820216682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A096197.P5632102744820216682

namespace A096197

/-- `record[A000010(n+1)+2]%(n+1)` -/
def P5632102744820216682.Spec : Prop :=
  ∀ n, P5632102744820216682.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P2116967741660598811

`record[A006530(n+2)+1]%(n+1)`
-/

namespace A096197.P2116967741660598811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A096197.P2116967741660598811

namespace A096197

/-- `record[A006530(n+2)+1]%(n+1)` -/
def P2116967741660598811.Spec : Prop :=
  ∀ n, P2116967741660598811.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P14457691930882407602

`record[A020639(n+2)+1]%(n+1)`
-/

namespace A096197.P14457691930882407602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A096197.P14457691930882407602

namespace A096197

/-- `record[A020639(n+2)+1]%(n+1)` -/
def P14457691930882407602.Spec : Prop :=
  ∀ n, P14457691930882407602.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P1105369240871062229

`record[(n+3)/A001222(n+2)]%(n+1)`
-/

namespace A096197.P1105369240871062229
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A001222 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (n + 1 : ℤ)

end

end A096197.P1105369240871062229

namespace A096197

/-- `record[(n+3)/A001222(n+2)]%(n+1)` -/
def P1105369240871062229.Spec : Prop :=
  ∀ n, P1105369240871062229.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P18125604659706375606

`(A020639(lt[n+1, A020639(n+2)]+2)+1)%(n+1)`
-/

namespace A096197.P18125604659706375606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2) + 1) (n + 1 : ℤ)

end

end A096197.P18125604659706375606

namespace A096197

/-- `(A020639(lt[n+1, A020639(n+2)]+2)+1)%(n+1)` -/
def P18125604659706375606.Spec : Prop :=
  ∀ n, P18125604659706375606.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P1205569095766322860

`(∏{p}[p?[A207790(n+1)], #]+1)%(n+1)`
-/

namespace A096197.P1205569095766322860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + 1) % (n + 1)

end

end A096197.P1205569095766322860

namespace A096197

/-- `(∏{p}[p?[A207790(n+1)], #]+1)%(n+1)` -/
def P1205569095766322860.Spec : Prop :=
  ∀ n, (P1205569095766322860.a n : ℤ) = A096197 (n + 1)

end A096197

/-! ## A096197.P17771009297033608008

`A069088(A000040(n+1))%(n+1)`
-/

namespace A096197.P17771009297033608008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069088 (A000040 (n + 1)).toNat) (n + 1 : ℤ)

end

end A096197.P17771009297033608008

namespace A096197

/-- `A069088(A000040(n+1))%(n+1)` -/
def P17771009297033608008.Spec : Prop :=
  ∀ n, P17771009297033608008.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P4718723619973491268

`A072548(A000040(n+1))`
-/

namespace A096197.P4718723619973491268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072548 (A000040 (n + 1)).toNat

end

end A096197.P4718723619973491268

namespace A096197

/-- `A072548(A000040(n+1))` -/
def P4718723619973491268.Spec : Prop :=
  ∀ n, P4718723619973491268.a n = A096197 (n + 1)

end A096197

/-! ## A096197.P11954903697028743897

`A065134(A175216(n+1))`
-/

namespace A096197.P11954903697028743897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065134 (A175216 (n + 1)).toNat

end

end A096197.P11954903697028743897

namespace A096197

/-- `A065134(A175216(n+1))` -/
def P11954903697028743897.Spec : Prop :=
  ∀ n, P11954903697028743897.a n = A096197 (n + 1)

end A096197

/-!
# A096198: Triangle read by rows: T(m,n)=A029837(m)+A029837(n), where (m,n)=(1,1); (2,1), (1,2); (3,1), (2,2), (1,3); ...

The programs for A096198, there is no canonical definition to state claims against.
-/

/-! ## A096198.P13027602867881204410

`A335884(A073060(n))`
-/

namespace A096198.P13027602867881204410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335884 (A073060 n).toNat

end

end A096198.P13027602867881204410

/-! ## A096198.P6028984708264476733

`A029837(A085207(n)+1)`
-/

namespace A096198.P6028984708264476733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A085207 n + 1).toNat

end

end A096198.P6028984708264476733

/-! ## A096198.P4084765491144687321

`A029837(A085208(n)+1)`
-/

namespace A096198.P4084765491144687321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A085208 n + 1).toNat

end

end A096198.P4084765491144687321

/-! ## A096198.P850873695441750761

`A029837(A085211(n)+1)`
-/

namespace A096198.P850873695441750761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A085211 n + 1).toNat

end

end A096198.P850873695441750761

/-! ## A096198.P8300770202777320274

`A029837(A085212(n)+1)`
-/

namespace A096198.P8300770202777320274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A085212 n + 1).toNat

end

end A096198.P8300770202777320274

/-! ## A096198.P4025667293207919701

`A196050(A003991(n+1))`
-/

namespace A096198.P4025667293207919701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A003991 (n + 1)).toNat

end

end A096198.P4025667293207919701

/-! ## A096198.P16112482872339985731

`A196050(A059036(n)+1)`
-/

namespace A096198.P16112482872339985731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A059036 n + 1).toNat

end

end A096198.P16112482872339985731

/-! ## A096198.P18423756301288979998

`A334097(A059036(n)+1)`
-/

namespace A096198.P18423756301288979998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (A059036 n + 1).toNat

end

end A096198.P18423756301288979998

/-! ## A096198.P15796088390099058080

`A335884(A098350(n+1))`
-/

namespace A096198.P15796088390099058080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335884 (A098350 (n + 1)).toNat

end

end A096198.P15796088390099058080

/-! ## A096198.P5264347770392281946

`A061775(A059036(n)+1)-1`
-/

namespace A096198.P5264347770392281946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A059036 n + 1).toNat - 1

end

end A096198.P5264347770392281946

/-! ## A096198.P1225362554698611342

`A196050(A098352(n+1))-2`
-/

namespace A096198.P1225362554698611342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A098352 (n + 1)).toNat - 2

end

end A096198.P1225362554698611342

/-! ## A096198.P5188051093336287775

`A196050(A098352(n+1)/4)`
-/

namespace A096198.P5188051093336287775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (SequenceMachineLib.roundAway ((A098352 (n + 1) : ℚ) / 4)).toNat

end

end A096198.P5188051093336287775

/-! ## A096198.P1622172326134568133

`A334097(A098352(n+1)/4)`
-/

namespace A096198.P1622172326134568133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (SequenceMachineLib.roundAway ((A098352 (n + 1) : ℚ) / 4)).toNat

end

end A096198.P1622172326134568133

/-! ## A096198.P1272180884380100547

`A334097(A003991(n+1)²)/2`
-/

namespace A096198.P1272180884380100547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334097 (A003991 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A096198.P1272180884380100547

/-! ## A096198.P2595512865553221984

`A334097(2*A003991(n+1))-1`
-/

namespace A096198.P2595512865553221984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (2 * A003991 (n + 1)).toNat - 1

end

end A096198.P2595512865553221984

/-! ## A096198.P14682877112838916817

`A061775(A098352(n+1)/2)-2`
-/

namespace A096198.P14682877112838916817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (SequenceMachineLib.roundAway ((A098352 (n + 1) : ℚ) / 2)).toNat - 2

end

end A096198.P14682877112838916817

/-! ## A096198.P1032558736593758881

`A334097(A003991(n+1)%(n+2))`
-/

namespace A096198.P1032558736593758881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (Int.tmod (A003991 (n + 1)) (n + 2 : ℤ)).toNat

end

end A096198.P1032558736593758881

/-! ## A096198.P15088706928803484191

`A004525(A334097(A003991(n+1)²))`
-/

namespace A096198.P15088706928803484191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A334097 (A003991 (n + 1) ^ 2).toNat).toNat

end

end A096198.P15088706928803484191

/-! ## A096198.P11378148305032366519

`A334097(A003991(n+1))%A001844(n)`
-/

namespace A096198.P11378148305032366519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334097 (A003991 (n + 1)).toNat) (A001844 n)

end

end A096198.P11378148305032366519

/-! ## A096198.P17682675446097416190

`A196050(A002260(n+1)*A004736(n+1))`
-/

namespace A096198.P17682675446097416190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A002260 (n + 1) * A004736 (n + 1)).toNat

end

end A096198.P17682675446097416190

/-!
# A096199: Numbers such that in binary representation the length is a multiple of the number of ones.

The programs for A096199, the canonical program `A096199.P9180462710428091109` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096199 has offset 1).

The definition of A096199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1363 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096199.P13706026784407771970

`eq[1, A099245(n)]`
-/

namespace A096199.P13706026784407771970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096199.P13706026784407771970

namespace A096199

/-- `eq[1, A099245(n)]` -/
def P13706026784407771970.Spec : Prop :=
  ∀ n, (P13706026784407771970.a n : ℤ) = A096199 (n + 1)

end A096199

/-! ## A096199.P3479986276577420774

`eq[0, A265918(n+1)]+1`
-/

namespace A096199.P3479986276577420774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096199.P3479986276577420774

namespace A096199

/-- `eq[0, A265918(n+1)]+1` -/
def P3479986276577420774.Spec : Prop :=
  ∀ n, (P3479986276577420774.a n : ℤ) = A096199 (n + 1)

end A096199

/-! ## A096199.P10877400088743469043

`record[(n+1)/A099245(n+1)]`
-/

namespace A096199.P10877400088743469043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A099245 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096199.P10877400088743469043

namespace A096199

/-- `record[(n+1)/A099245(n+1)]` -/
def P10877400088743469043.Spec : Prop :=
  ∀ n, P10877400088743469043.a n = (A096199 (n + 1) : ℚ)

end A096199

/-! ## A096199.P828359646088939278

`lt[A023416(A099245(n)²), 1]`
-/

namespace A096199.P828359646088939278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A099245 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A096199.P828359646088939278

namespace A096199

/-- `lt[A023416(A099245(n)²), 1]` -/
def P828359646088939278.Spec : Prop :=
  ∀ n, (P828359646088939278.a n : ℤ) = A096199 (n + 1)

end A096199

/-! ## A096199.P17565684419352460010

`lt[A099245(n), atan(2*A006257(n))]`
-/

namespace A096199.P17565684419352460010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * A006257 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A096199.P17565684419352460010

namespace A096199

/-- `lt[A099245(n), atan(2*A006257(n))]` -/
def P17565684419352460010.Spec : Prop :=
  ∀ n, (P17565684419352460010.a n : ℤ) = A096199 (n + 1)

end A096199

/-! ## A096199.P5728541127751266582

`record[(n+1)/A000120(n+1)*A099244(n+1)]`
-/

namespace A096199.P5728541127751266582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000120 (n + 1) : ℚ) * (A099244 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096199.P5728541127751266582

namespace A096199

/-- `record[(n+1)/A000120(n+1)*A099244(n+1)]` -/
def P5728541127751266582.Spec : Prop :=
  ∀ n, P5728541127751266582.a n = (A096199 (n + 1) : ℚ)

end A096199

/-! ## A096199.P742036333063132177

`record[A008486(n)/A008486(A099245(n))]`
-/

namespace A096199.P742036333063132177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 n : ℚ) / (A008486 (A099245 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096199.P742036333063132177

namespace A096199

/-- `record[A008486(n)/A008486(A099245(n))]` -/
def P742036333063132177.Spec : Prop :=
  ∀ n, P742036333063132177.a n = (A096199 (n + 1) : ℚ)

end A096199

/-! ## A096199.P4201511033115211417

`eq[A000120(n)*A099246(n), A070939(n)]`
-/

namespace A096199.P4201511033115211417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A099246 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096199.P4201511033115211417

namespace A096199

/-- `eq[A000120(n)*A099246(n), A070939(n)]` -/
def P4201511033115211417.Spec : Prop :=
  ∀ n, (P4201511033115211417.a n : ℤ) = A096199 (n + 1)

end A096199

/-! ## A096199.P9180462710428091109

`eq[1, A000120(n)/gcd(A037861(n), A080791(n))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A096199

/-- `eq[1, A000120(n)/gcd(A037861(n), A080791(n))]` -/
def P9180462710428091109.Spec : Prop :=
  ∀ n, (P9180462710428091109.a n : ℤ) = A096199 (n + 1)

theorem P9180462710428091109.correct : P9180462710428091109.Spec := by
  intro n
  simp only [A096199, Nat.add_sub_cancel]

end A096199

/-! ## A096199.P12235980408854593876

`lt[A099245(n), atan(A324467(n))]`
-/

namespace A096199.P12235980408854593876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A324467 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A096199.P12235980408854593876

namespace A096199

/-- `lt[A099245(n), atan(A324467(n))]` -/
def P12235980408854593876.Spec : Prop :=
  ∀ n, (P12235980408854593876.a n : ℤ) = A096199 (n + 1)

end A096199

