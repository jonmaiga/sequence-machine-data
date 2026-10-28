import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A167104: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^14 = I.

The programs for A167104, there is no canonical definition to state claims against.
-/

/-! ## A167104.P9584795240637264992

`A302042(A167648(n+1))`
-/

namespace A167104.P9584795240637264992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A167648 (n + 1)).toNat

end

end A167104.P9584795240637264992

/-! ## A167104.P11267608021015434437

`A302042(3*A219676(n))`
-/

namespace A167104.P11267608021015434437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (3 * A219676 n).toNat

end

end A167104.P11267608021015434437

/-! ## A167104.P1937065236645019015

`A008486(floor(A219676(n)/2))`
-/

namespace A167104.P1937065236645019015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ⌊(A219676 n : ℚ) / 2⌋.toNat

end

end A167104.P1937065236645019015

/-! ## A167104.P55721052847491700

`A008486(Δ[A220469(n+1)])`
-/

namespace A167104.P55721052847491700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (n + 1) - f1 n).toNat

end

end A167104.P55721052847491700

/-! ## A167104.P17750378157982082543

`A008486(∑[A168083(n+11)])`
-/

namespace A167104.P17750378157982082543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168083 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167104.P17750378157982082543

/-!
# A167105: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^14 = I.

The programs for A167105, there is no canonical definition to state claims against.
-/

/-! ## A167105.P12217575891246706030

`floor(4*3^(n-1))-A185236(A275077(n))`
-/

namespace A167105.P12217575891246706030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185236 (A275077 n).toNat

end

end A167105.P12217575891246706030

/-! ## A167105.P4337837452110377854

`floor(4*3^(n-1))-A034432(A000040(n+1))`
-/

namespace A167105.P4337837452110377854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A034432 (A000040 (n + 1)).toNat

end

end A167105.P4337837452110377854

/-! ## A167105.P5695252235861741721

`A003946(n)-A185236(A251759(n))`
-/

namespace A167105.P5695252235861741721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A185236 (A251759 n).toNat

end

end A167105.P5695252235861741721

/-! ## A167105.P10602420129657762545

`A003946(n)-A185036(A275077(n))`
-/

namespace A167105.P10602420129657762545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A185036 (A275077 n).toNat

end

end A167105.P10602420129657762545

/-!
# A167106: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^14 = I.

The programs for A167106, there is no canonical definition to state claims against.
-/

/-! ## A167106.P14939693197280041805

`floor(5*4^(n-1))-A185255(2*(n+1))`
-/

namespace A167106.P14939693197280041805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (2 * (n + 1))

end

end A167106.P14939693197280041805

/-! ## A167106.P5020840615705631126

`round(record[5*(-2)^(n-2)])-∑{p}[A185255(2*n+3), #]`
-/

namespace A167106.P5020840615705631126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, p : ℕ) : ℤ)

end

end A167106.P5020840615705631126

/-! ## A167106.P11353789326436381666

`abs(A003947(n)-A185255(2*(n+1)))`
-/

namespace A167106.P11353789326436381666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003947 n - A185255 (2 * (n + 1))|

end

end A167106.P11353789326436381666

/-! ## A167106.P4567983632854770451

`Δ[A305750(2*n)-A185255(2*n)]`
-/

namespace A167106.P4567983632854770451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 (2 * n) - A185255 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167106.P4567983632854770451

/-! ## A167106.P7023048518339174982

`abs(A084215(2*n)-A185255(2*(n+1)))`
-/

namespace A167106.P7023048518339174982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084215 (2 * n) - A185255 (2 * (n + 1))|

end

end A167106.P7023048518339174982

/-!
# A167109: Number of reduced words of length n in Coxeter group on 8 generators S_i with relations (S_i)^2 = (S_i S_j)^14 = I.

The programs for A167109, there is no canonical definition to state claims against.
-/

/-! ## A167109.P5461454457345917169

`xor(floor(8*7^(n-1)), A004016(A022371(n)))`
-/

namespace A167109.P5461454457345917169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊8 * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A004016 (A022371 n).toNat)

end

end A167109.P5461454457345917169

/-! ## A167109.P14878583548969566183

`xor(A004016(A022371(n)), A167899(n))`
-/

namespace A167109.P14878583548969566183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004016 (A022371 n).toNat) (A167899 n)

end

end A167109.P14878583548969566183

/-! ## A167109.P18304281321087977606

`xor(A004016(A022371(n)), A168685(n))`
-/

namespace A167109.P18304281321087977606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004016 (A022371 n).toNat) (A168685 n)

end

end A167109.P18304281321087977606

/-!
# A167119: Primes congruent to 2, 3, 5, 7 or 11 (mod 13).

The programs for A167119, the canonical program `A167119.P7078491149774125345` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167119 has offset 1).

The definition of A167119 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A167119.anchor (n : ℕ) (hn : 1 ≤ n) : A167119 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 3, 5, 7, 11} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A167.A167119`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167119.P7078491149774125345

`∪[A140373(n+1), A215155(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A167119

/-- `∪[A140373(n+1), A215155(n+1)]` -/
def P7078491149774125345.Spec : Prop :=
  ∀ n, (P7078491149774125345.a n : ℤ) = A167119 (n + 1)

theorem P7078491149774125345.correct : P7078491149774125345.Spec := by
  intro n
  simp only [A167119, Nat.add_sub_cancel]

end A167119

/-! ## A167119.P1170078176488552171

`p?[C(A308702(n+3), A308659(n+1))]`
-/

namespace A167119.P1170078176488552171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A308702 (n + 3)).toNat (A308659 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167119.P1170078176488552171

namespace A167119

/-- `p?[C(A308702(n+3), A308659(n+1))]` -/
def P1170078176488552171.Spec : Prop :=
  ∀ n, (P1170078176488552171.a n : ℤ) = A167119 (n + 1)

end A167119

/-! ## A167119.P11003105410437132392

`eq[A003415(n), A340596(A209874(n))]`
-/

namespace A167119.P11003105410437132392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340596 (A209874 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167119.P11003105410437132392

namespace A167119

/-- `eq[A003415(n), A340596(A209874(n))]` -/
def P11003105410437132392.Spec : Prop :=
  ∀ n, (P11003105410437132392.a n : ℤ) = A167119 (n + 1)

end A167119

/-! ## A167119.P2566661398309326153

`eq[A059841(A084534(n+2)), A074206(n)]`
-/

namespace A167119.P2566661398309326153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A084534 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167119.P2566661398309326153

namespace A167119

/-- `eq[A059841(A084534(n+2)), A074206(n)]` -/
def P2566661398309326153.Spec : Prop :=
  ∀ n, (P2566661398309326153.a n : ℤ) = A167119 (n + 1)

end A167119

/-! ## A167119.P9636466312680961795

`eq[n, A289234(A163466(n))]`
-/

namespace A167119.P9636466312680961795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289234 (A163466 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167119.P9636466312680961795

namespace A167119

/-- `eq[n, A289234(A163466(n))]` -/
def P9636466312680961795.Spec : Prop :=
  ∀ n, (P9636466312680961795.a n : ℤ) = A167119 (n + 1)

end A167119

/-!
# A167120: a(n) = 20*a(n-1) - 64*a(n-2) + 1 for n > 2; a(0) = 1, a(1) = 22, a(2) = 376.

The programs for A167120, the canonical program `A167120.P11223060440694260462` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167120 has offset 0).

The definition of A167120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-64*a(n-2)+1` (program `A167120.P11223060440694260462`, by `A167120.P11223060440694260462.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167120.P17709528392096407275

`ogf((1+x-2x^2+x^3)/(1-21x+84x^2-64x^3))`
-/

namespace A167120.P17709528392096407275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, 1] [1, -21, 84, -64] n

end

end A167120.P17709528392096407275

namespace A167120

/-- `ogf((1+x-2x^2+x^3)/(1-21x+84x^2-64x^3))` -/
def P17709528392096407275.Spec : Prop :=
  ∀ n, P17709528392096407275.a n = A167120 n

end A167120

/-! ## A167120.P11223060440694260462

`20*a(n-1)-64*a(n-2)+1` with `a(0)=1, a(1)=22, a(2)=376`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167120

/-- `20*a(n-1)-64*a(n-2)+1` -/
def P11223060440694260462.Spec : Prop :=
  ∀ n, P11223060440694260462.a n = A167120 n

theorem P11223060440694260462.correct : P11223060440694260462.Spec := by
  intro n
  simp only [A167120]

end A167120

/-! ## A167120.P7607736360184173304

`2*A167121(n)-A167122(n)`
-/

namespace A167120.P7607736360184173304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167121 n - A167122 n

end

end A167120.P7607736360184173304

namespace A167120

/-- `2*A167121(n)-A167122(n)` -/
def P7607736360184173304.Spec : Prop :=
  ∀ n, P7607736360184173304.a n = A167120 n

end A167120

/-! ## A167120.P7551472652038637676

`A006105(n+2)+A167121(n)-A167032(n)`
-/

namespace A167120.P7551472652038637676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006105 (n + 2) + (A167121 n - A167032 n)

end

end A167120.P7551472652038637676

namespace A167120

/-- `A006105(n+2)+A167121(n)-A167032(n)` -/
def P7551472652038637676.Spec : Prop :=
  ∀ n, P7551472652038637676.a n = A167120 n

end A167120

/-! ## A167120.P17348033771007801410

`2*A167121(n)+A167122(n)*A317939(A001358(n+1))`
-/

namespace A167120.P17348033771007801410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167121 n + A167122 n * A317939 (A001358 (n + 1)).toNat

end

end A167120.P17348033771007801410

namespace A167120

/-- `2*A167121(n)+A167122(n)*A317939(A001358(n+1))` -/
def P17348033771007801410.Spec : Prop :=
  ∀ n, P17348033771007801410.a n = A167120 n

end A167120

/-! ## A167120.P117654818333112500

`2*(A006105(n+2)-(A167032(n)-A167122(n)))-A167122(n)`
-/

namespace A167120.P117654818333112500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006105 (n + 2) - (A167032 n - A167122 n)) - A167122 n

end

end A167120.P117654818333112500

namespace A167120

/-- `2*(A006105(n+2)-(A167032(n)-A167122(n)))-A167122(n)` -/
def P117654818333112500.Spec : Prop :=
  ∀ n, P117654818333112500.a n = A167120 n

end A167120

/-!
# A167121: a(n) = 20*a(n-1) - 64*a(n-2) + 2 for n > 2; a(0) = 1, a(1) = 22, a(2) = 377.

The programs for A167121, the canonical program `A167121.P7657471683069388467` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167121 has offset 0).

The definition of A167121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-64*a(n-2)+2` (program `A167121.P7657471683069388467`, by `A167121.P7657471683069388467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167121.P5789137047129365508

`ogf((1+x-x^2+x^3)/(1-21x+84x^2-64x^3))`
-/

namespace A167121.P5789137047129365508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 1] [1, -21, 84, -64] n

end

end A167121.P5789137047129365508

namespace A167121

/-- `ogf((1+x-x^2+x^3)/(1-21x+84x^2-64x^3))` -/
def P5789137047129365508.Spec : Prop :=
  ∀ n, P5789137047129365508.a n = A167121 n

end A167121

/-! ## A167121.P7657471683069388467

`20*a(n-1)-64*a(n-2)+2` with `a(0)=1, a(1)=22, a(2)=377`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167121

/-- `20*a(n-1)-64*a(n-2)+2` -/
def P7657471683069388467.Spec : Prop :=
  ∀ n, P7657471683069388467.a n = A167121 n

theorem P7657471683069388467.correct : P7657471683069388467.Spec := by
  intro n
  simp only [A167121]

end A167121

/-! ## A167121.P4886173301736673432

`(A167122(n)+A167120(n))/2`
-/

namespace A167121.P4886173301736673432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167122 n + A167120 n : ℚ) / 2

end

end A167121.P4886173301736673432

namespace A167121

/-- `(A167122(n)+A167120(n))/2` -/
def P4886173301736673432.Spec : Prop :=
  ∀ n, P4886173301736673432.a n = (A167121 n : ℚ)

end A167121

/-! ## A167121.P18240978618404500882

`A167032(n)+A167120(n)-A006105(n+2)`
-/

namespace A167121.P18240978618404500882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167032 n + (A167120 n - A006105 (n + 2))

end

end A167121.P18240978618404500882

namespace A167121

/-- `A167032(n)+A167120(n)-A006105(n+2)` -/
def P18240978618404500882.Spec : Prop :=
  ∀ n, P18240978618404500882.a n = A167121 n

end A167121

/-! ## A167121.P15561876561122738063

`A006105(n+2)+A167122(n)-A167032(n)`
-/

namespace A167121.P15561876561122738063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006105 (n + 2) + (A167122 n - A167032 n)

end

end A167121.P15561876561122738063

namespace A167121

/-- `A006105(n+2)+A167122(n)-A167032(n)` -/
def P15561876561122738063.Spec : Prop :=
  ∀ n, P15561876561122738063.a n = A167121 n

end A167121

/-!
# A167122: a(n) = 20*a(n-1) - 64*a(n-2) + 3 for n > 2; a(0) = 1, a(1) = 22, a(2) = 378.

The programs for A167122, the canonical program `A167122.P12443508159883112083` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167122 has offset 0).

The definition of A167122 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-64*a(n-2)+3` (program `A167122.P12443508159883112083`, by `A167122.P12443508159883112083.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167122.P1412330658008408168

`ogf((1+x+x^3)/(1-21x+84x^2-64x^3))`
-/

namespace A167122.P1412330658008408168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 1] [1, -21, 84, -64] n

end

end A167122.P1412330658008408168

namespace A167122

/-- `ogf((1+x+x^3)/(1-21x+84x^2-64x^3))` -/
def P1412330658008408168.Spec : Prop :=
  ∀ n, P1412330658008408168.a n = A167122 n

end A167122

/-! ## A167122.P12443508159883112083

`20*a(n-1)-64*a(n-2)+3` with `a(0)=1, a(1)=22, a(2)=378`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167122

/-- `20*a(n-1)-64*a(n-2)+3` -/
def P12443508159883112083.Spec : Prop :=
  ∀ n, P12443508159883112083.a n = A167122 n

theorem P12443508159883112083.correct : P12443508159883112083.Spec := by
  intro n
  simp only [A167122]

end A167122

/-! ## A167122.P8571384650237213074

`2*A167121(n)-A167120(n)`
-/

namespace A167122.P8571384650237213074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167121 n - A167120 n

end

end A167122.P8571384650237213074

namespace A167122

/-- `2*A167121(n)-A167120(n)` -/
def P8571384650237213074.Spec : Prop :=
  ∀ n, P8571384650237213074.a n = A167122 n

end A167122

/-! ## A167122.P12299889019181518524

`A167032(n)+A167121(n)-A006105(n+2)`
-/

namespace A167122.P12299889019181518524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167032 n + (A167121 n - A006105 (n + 2))

end

end A167122.P12299889019181518524

namespace A167122

/-- `A167032(n)+A167121(n)-A006105(n+2)` -/
def P12299889019181518524.Spec : Prop :=
  ∀ n, P12299889019181518524.a n = A167122 n

end A167122

/-! ## A167122.P6151279085526943115

`2*(A167032(n)-(A006105(n+2)-A167120(n)))-A167120(n)`
-/

namespace A167122.P6151279085526943115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A167032 n - (A006105 (n + 2) - A167120 n)) - A167120 n

end

end A167122.P6151279085526943115

namespace A167122

/-- `2*(A167032(n)-(A006105(n+2)-A167120(n)))-A167120(n)` -/
def P6151279085526943115.Spec : Prop :=
  ∀ n, P6151279085526943115.a n = A167122 n

end A167122

/-!
# A167128: Triangle T(m,n) read by rows: T(m,n) = Sum_{k=1..n} StirlingS2(m, n) * StirlingS2(m, k).

The programs for A167128, there is no canonical definition to state claims against.
-/

/-! ## A167128.P5888889898265095024

`A008277(n+1)*A102661(n+1)`
-/

namespace A167128.P5888889898265095024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A102661 (n + 1)

end

end A167128.P5888889898265095024

/-! ## A167128.P11895576386668622139

`A008278(A038722(n+1))*A102661(n+1)`
-/

namespace A167128.P11895576386668622139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A038722 (n + 1)).toNat * A102661 (n + 1)

end

end A167128.P11895576386668622139

/-! ## A167128.P15123380640034733787

`A048993(A014132(n+1))*A102661(n+1)`
-/

namespace A167128.P15123380640034733787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A014132 (n + 1)).toNat * A102661 (n + 1)

end

end A167128.P15123380640034733787

/-! ## A167128.P10732854581310815186

`A102661(n+1)*A136011(A056537(n+1))`
-/

namespace A167128.P10732854581310815186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102661 (n + 1) * A136011 (A056537 (n + 1)).toNat

end

end A167128.P10732854581310815186

/-! ## A167128.P5240480326567858049

`A075497(n+1)/A130321(n)*A102661(n+1)`
-/

namespace A167128.P5240480326567858049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075497 (n + 1) : ℚ) / (A130321 n : ℚ) * (A102661 (n + 1) : ℚ)

end

end A167128.P5240480326567858049

/-! ## A167128.P9788878985658287026

`(A320525(n+1)+A284949(n+1))*A102661(n+1)`
-/

namespace A167128.P9788878985658287026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A320525 (n + 1) + A284949 (n + 1)) * A102661 (n + 1)

end

end A167128.P9788878985658287026

/-! ## A167128.P275497801396689151

`gcd(A075497(n+1), A075502(n+1))*A102661(n+1)`
-/

namespace A167128.P275497801396689151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A075497 (n + 1)) (A075502 (n + 1)) : ℤ) * A102661 (n + 1)

end

end A167128.P275497801396689151

/-!
# A167129: n^7 mod 21.

The programs for A167129, the canonical program `A167129.P4063224872050903066` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167129 has offset 0).

The definition of A167129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%21` (program `A167129.P4063224872050903066`, by `A167129.P4063224872050903066.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167129.P4063224872050903066

`(n^7)%21`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167129

/-- `(n^7)%21` -/
def P4063224872050903066.Spec : Prop :=
  ∀ n, (P4063224872050903066.a n : ℤ) = A167129 n

theorem P4063224872050903066.correct : P4063224872050903066.Spec := by
  intro n
  simp only [A167129]

end A167129

/-!
# A167130: Primes of the form A002808(k) + A062502(k+1).

The programs for A167130, the canonical program `A167130.P18314888771923251146` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167130 has offset 1).

The definition of A167130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9971 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167130.P18314888771923251146

`p?[A001222(n+3)+3+n]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167130

/-- `p?[A001222(n+3)+3+n]` -/
def P18314888771923251146.Spec : Prop :=
  ∀ n, P18314888771923251146.a n = A167130 (n + 1)

theorem P18314888771923251146.correct : P18314888771923251146.Spec := by
  intro n
  simp only [A167130, Nat.add_sub_cancel]

end A167130

/-! ## A167130.P18072481005275243521

`p?[∑{e}[n+3, #]+n+3]`
-/

namespace A167130.P18072481005275243521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167130.P18072481005275243521

namespace A167130

/-- `p?[∑{e}[n+3, #]+n+3]` -/
def P18072481005275243521.Spec : Prop :=
  ∀ n, (P18072481005275243521.a n : ℤ) = A167130 (n + 1)

end A167130

/-! ## A167130.P15719287270773424099

`p?[A064800(n+3)]`
-/

namespace A167130.P15719287270773424099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167130.P15719287270773424099

namespace A167130

/-- `p?[A064800(n+3)]` -/
def P15719287270773424099.Spec : Prop :=
  ∀ n, P15719287270773424099.a n = A167130 (n + 1)

end A167130

/-! ## A167130.P8830161214698714915

`p?[A222312(n+3)+1]`
-/

namespace A167130.P8830161214698714915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222312 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167130.P8830161214698714915

namespace A167130

/-- `p?[A222312(n+3)+1]` -/
def P8830161214698714915.Spec : Prop :=
  ∀ n, P8830161214698714915.a n = A167130 (n + 1)

end A167130

/-! ## A167130.P16577222016977002548

`p?[A086436(n+6)+n+6]`
-/

namespace A167130.P16577222016977002548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 6) + (n + 6 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167130.P16577222016977002548

namespace A167130

/-- `p?[A086436(n+6)+n+6]` -/
def P16577222016977002548.Spec : Prop :=
  ∀ n, P16577222016977002548.a n = A167130 (n + 1)

end A167130

/-! ## A167130.P17183077411040413064

`A064800(A158458(n+2))`
-/

namespace A167130.P17183077411040413064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (A158458 (n + 2)).toNat

end

end A167130.P17183077411040413064

namespace A167130

/-- `A064800(A158458(n+2))` -/
def P17183077411040413064.Spec : Prop :=
  ∀ n, P17183077411040413064.a n = A167130 (n + 1)

end A167130

/-! ## A167130.P7187818363495056216

`filter[A064800(n+1), A171387(#)]`
-/

namespace A167130.P7187818363495056216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A167130.P7187818363495056216

namespace A167130

/-- `filter[A064800(n+1), A171387(#)]` -/
def P7187818363495056216.Spec : Prop :=
  ∀ n, P7187818363495056216.a n = A167130 (n + 1)

end A167130

/-! ## A167130.P9461413475872999235

`filter[A064800(n+3), A010051(#)]`
-/

namespace A167130.P9461413475872999235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A167130.P9461413475872999235

namespace A167130

/-- `filter[A064800(n+3), A010051(#)]` -/
def P9461413475872999235.Spec : Prop :=
  ∀ n, P9461413475872999235.a n = A167130 (n + 1)

end A167130

/-! ## A167130.P7279306154826998796

`filter[A064800(n+3), A080339(#)]`
-/

namespace A167130.P7279306154826998796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A167130.P7279306154826998796

namespace A167130

/-- `filter[A064800(n+3), A080339(#)]` -/
def P7279306154826998796.Spec : Prop :=
  ∀ n, P7279306154826998796.a n = A167130 (n + 1)

end A167130

/-! ## A167130.P11790065130146361674

`filter[A064800(n+3), A080545(#)]`
-/

namespace A167130.P11790065130146361674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A167130.P11790065130146361674

namespace A167130

/-- `filter[A064800(n+3), A080545(#)]` -/
def P11790065130146361674.Spec : Prop :=
  ∀ n, P11790065130146361674.a n = A167130 (n + 1)

end A167130

/-! ## A167130.P4133552462635283448

`p?[A001222(A020744(n))+n+3]`
-/

namespace A167130.P4133552462635283448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020744 n).toNat + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167130.P4133552462635283448

namespace A167130

/-- `p?[A001222(A020744(n))+n+3]` -/
def P4133552462635283448.Spec : Prop :=
  ∀ n, P4133552462635283448.a n = A167130 (n + 1)

end A167130

/-! ## A167130.P15840198627791529467

`p?[A001222(A022144(n+3))+n]`
-/

namespace A167130.P15840198627791529467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A022144 (n + 3)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167130.P15840198627791529467

namespace A167130

/-- `p?[A001222(A022144(n+3))+n]` -/
def P15840198627791529467.Spec : Prop :=
  ∀ n, P15840198627791529467.a n = A167130 (n + 1)

end A167130

/-! ## A167130.P3577334079995984714

`p?[A020710(n)+A001222(n+5)]`
-/

namespace A167130.P3577334079995984714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n + A001222 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167130.P3577334079995984714

namespace A167130

/-- `p?[A020710(n)+A001222(n+5)]` -/
def P3577334079995984714.Spec : Prop :=
  ∀ n, P3577334079995984714.a n = A167130 (n + 1)

end A167130

/-! ## A167130.P4411063819331846678

`p?[A001222(A273745(n+2))+n]`
-/

namespace A167130.P4411063819331846678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A273745 (n + 2)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167130.P4411063819331846678

namespace A167130

/-- `p?[A001222(A273745(n+2))+n]` -/
def P4411063819331846678.Spec : Prop :=
  ∀ n, P4411063819331846678.a n = A167130 (n + 1)

end A167130

/-!
# A167132: Gaps between twin prime pairs.

The programs for A167132, the canonical program `A167132.P340755037681699501` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167132 has offset 1).

The definition of A167132 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167132.P340755037681699501

`A001359(n+2)-A006512(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167132

/-- `A001359(n+2)-A006512(n+1)` -/
def P340755037681699501.Spec : Prop :=
  ∀ n, P340755037681699501.a n = A167132 (n + 1)

theorem P340755037681699501.correct : P340755037681699501.Spec := by
  intro n
  simp only [A167132, Nat.add_sub_cancel]

end A167132

/-! ## A167132.P3716047020826500698

`A053319(n+1)-2`
-/

namespace A167132.P3716047020826500698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053319 (n + 1) - 2

end

end A167132.P3716047020826500698

namespace A167132

/-- `A053319(n+1)-2` -/
def P3716047020826500698.Spec : Prop :=
  ∀ n, P3716047020826500698.a n = A167132 (n + 1)

theorem P3716047020826500698.correct : P3716047020826500698.Spec := by
  intro n
  simp only [A167132, Nat.add_sub_cancel, A167132.P3716047020826500698.a, A167132.P340755037681699501.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A053319, A053319.P1938654990887452238.f1, A053319.P1938654990887452238.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167132

/-! ## A167132.P1595442334586949892

`Δ[A001359(n+1)]-2`
-/

namespace A167132.P1595442334586949892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A167132.P1595442334586949892

namespace A167132

/-- `Δ[A001359(n+1)]-2` -/
def P1595442334586949892.Spec : Prop :=
  ∀ n, P1595442334586949892.a n = A167132 (n + 1)

theorem P1595442334586949892.correct : P1595442334586949892.Spec := by
  intro n
  simp only [A167132, Nat.add_sub_cancel, A167132.P1595442334586949892.f1, A167132.P1595442334586949892.a, A167132.P340755037681699501.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167132

/-! ## A167132.P7695270668884162097

`2*ceil(A204099(n+1)/2)`
-/

namespace A167132.P7695270668884162097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A204099 (n + 1) : ℚ) / 2⌉

end

end A167132.P7695270668884162097

namespace A167132

/-- `2*ceil(A204099(n+1)/2)` -/
def P7695270668884162097.Spec : Prop :=
  ∀ n, P7695270668884162097.a n = A167132 (n + 1)

end A167132

/-! ## A167132.P11961450376720899045

`2*(Δ[A040040(n+1)]-1)`
-/

namespace A167132.P11961450376720899045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1)

end

end A167132.P11961450376720899045

namespace A167132

/-- `2*(Δ[A040040(n+1)]-1)` -/
def P11961450376720899045.Spec : Prop :=
  ∀ n, P11961450376720899045.a n = A167132 (n + 1)

end A167132

/-! ## A167132.P17221611022110052615

`A023444(A053319(n+1))`
-/

namespace A167132.P17221611022110052615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A053319 (n + 1)).toNat

end

end A167132.P17221611022110052615

namespace A167132

/-- `A023444(A053319(n+1))` -/
def P17221611022110052615.Spec : Prop :=
  ∀ n, P17221611022110052615.a n = A167132 (n + 1)

end A167132

/-! ## A167132.P3679721631859534018

`A006370(A204100(n+1))`
-/

namespace A167132.P3679721631859534018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A204100 (n + 1)).toNat

end

end A167132.P3679721631859534018

namespace A167132

/-- `A006370(A204100(n+1))` -/
def P3679721631859534018.Spec : Prop :=
  ∀ n, P3679721631859534018.a n = A167132 (n + 1)

end A167132

/-! ## A167132.P2755680120119711396

`A014681(A204099(n+1))`
-/

namespace A167132.P2755680120119711396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A204099 (n + 1)).toNat

end

end A167132.P2755680120119711396

namespace A167132

/-- `A014681(A204099(n+1))` -/
def P2755680120119711396.Spec : Prop :=
  ∀ n, P2755680120119711396.a n = A167132 (n + 1)

end A167132

/-! ## A167132.P16036721906398907766

`A204099(n+1)+A057427(n)`
-/

namespace A167132.P16036721906398907766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204099 (n + 1) + A057427 n

end

end A167132.P16036721906398907766

namespace A167132

/-- `A204099(n+1)+A057427(n)` -/
def P16036721906398907766.Spec : Prop :=
  ∀ n, P16036721906398907766.a n = A167132 (n + 1)

end A167132

/-! ## A167132.P1591313596121967822

`A204099(n+1)-A057428(n)`
-/

namespace A167132.P1591313596121967822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204099 (n + 1) - A057428 n

end

end A167132.P1591313596121967822

namespace A167132

/-- `A204099(n+1)-A057428(n)` -/
def P1591313596121967822.Spec : Prop :=
  ∀ n, P1591313596121967822.a n = A167132 (n + 1)

end A167132

/-! ## A167132.P7626346424344589427

`A001359(n+1)-A135284(n+1)`
-/

namespace A167132.P7626346424344589427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A135284 (n + 1)

end

end A167132.P7626346424344589427

namespace A167132

/-- `A001359(n+1)-A135284(n+1)` -/
def P7626346424344589427.Spec : Prop :=
  ∀ n, P7626346424344589427.a n = A167132 (n + 1)

end A167132

/-! ## A167132.P4304091692135065641

`A135286(n+1)-A126251(n+1)`
-/

namespace A167132.P4304091692135065641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135286 (n + 1) - A126251 (n + 1)

end

end A167132.P4304091692135065641

namespace A167132

/-- `A135286(n+1)-A126251(n+1)` -/
def P4304091692135065641.Spec : Prop :=
  ∀ n, P4304091692135065641.a n = A167132 (n + 1)

end A167132

/-! ## A167132.P5137888986025388370

`A135286(n+1)%A006512(n+1)`
-/

namespace A167132.P5137888986025388370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135286 (n + 1)) (A006512 (n + 1))

end

end A167132.P5137888986025388370

namespace A167132

/-- `A135286(n+1)%A006512(n+1)` -/
def P5137888986025388370.Spec : Prop :=
  ∀ n, P5137888986025388370.a n = A167132 (n + 1)

end A167132

/-! ## A167132.P15250563311049605596

`A204099(n+1)+n/A028310(n)`
-/

namespace A167132.P15250563311049605596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204099 (n + 1) : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A167132.P15250563311049605596

namespace A167132

/-- `A204099(n+1)+n/A028310(n)` -/
def P15250563311049605596.Spec : Prop :=
  ∀ n, P15250563311049605596.a n = (A167132 (n + 1) : ℚ)

end A167132

/-! ## A167132.P7320025256627007829

`A001359(n+2)-(A001359(n+1)+2)`
-/

namespace A167132.P7320025256627007829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2) - (A001359 (n + 1) + 2)

end

end A167132.P7320025256627007829

namespace A167132

/-- `A001359(n+2)-(A001359(n+1)+2)` -/
def P7320025256627007829.Spec : Prop :=
  ∀ n, P7320025256627007829.a n = A167132 (n + 1)

theorem P7320025256627007829.correct : P7320025256627007829.Spec := by
  intro n
  simp only [A167132, Nat.add_sub_cancel, A167132.P7320025256627007829.a, A167132.P340755037681699501.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167132

/-! ## A167132.P14147888206027961755

`2*(A074953(n+1)-A006512(n+1))`
-/

namespace A167132.P14147888206027961755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A074953 (n + 1) - A006512 (n + 1))

end

end A167132.P14147888206027961755

namespace A167132

/-- `2*(A074953(n+1)-A006512(n+1))` -/
def P14147888206027961755.Spec : Prop :=
  ∀ n, P14147888206027961755.a n = A167132 (n + 1)

end A167132

/-! ## A167132.P10637742162486498500

`A135283(n+1)-(A054735(n+1)+A006512(n+1))`
-/

namespace A167132.P10637742162486498500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135283 (n + 1) - (A054735 (n + 1) + A006512 (n + 1))

end

end A167132.P10637742162486498500

namespace A167132

/-- `A135283(n+1)-(A054735(n+1)+A006512(n+1))` -/
def P10637742162486498500.Spec : Prop :=
  ∀ n, P10637742162486498500.a n = A167132 (n + 1)

theorem P10637742162486498500.correct : P10637742162486498500.Spec := by
  intro n
  simp only [A167132, Nat.add_sub_cancel, A167132.P10637742162486498500.a, A167132.P340755037681699501.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A054735, A054735.P17392456198016609014.a, A135283, A135283.P740554623869463875.a, A014574, A014574.P4587706211531852143.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A008619, A008619.P16053834178911111118.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167132

/-! ## A167132.P17131674012702706377

`A054735(n+1)-(A135284(n+1)+A006512(n+1))`
-/

namespace A167132.P17131674012702706377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1) - (A135284 (n + 1) + A006512 (n + 1))

end

end A167132.P17131674012702706377

namespace A167132

/-- `A054735(n+1)-(A135284(n+1)+A006512(n+1))` -/
def P17131674012702706377.Spec : Prop :=
  ∀ n, P17131674012702706377.a n = A167132 (n + 1)

theorem P17131674012702706377.correct : P17131674012702706377.Spec := by
  intro n
  simp only [A167132, Nat.add_sub_cancel, A167132.P17131674012702706377.a, A167132.P340755037681699501.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A054735, A054735.P17392456198016609014.a, A135284, A135284.P4928143440831884536.a, A014574, A014574.P4587706211531852143.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A008619, A008619.P16053834178911111118.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167132

/-! ## A167132.P13782697293020075215

`Δ[A006512(n+1)]-2`
-/

namespace A167132.P13782697293020075215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A167132.P13782697293020075215

namespace A167132

/-- `Δ[A006512(n+1)]-2` -/
def P13782697293020075215.Spec : Prop :=
  ∀ n, P13782697293020075215.a n = A167132 (n + 1)

theorem P13782697293020075215.correct : P13782697293020075215.Spec := by
  intro n
  simp only [A167132, Nat.add_sub_cancel, A167132.P13782697293020075215.f1, A167132.P13782697293020075215.a, A167132.P340755037681699501.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167132

/-! ## A167132.P15688098882669549554

`Δ[A014574(n+1)]-2`
-/

namespace A167132.P15688098882669549554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A167132.P15688098882669549554

namespace A167132

/-- `Δ[A014574(n+1)]-2` -/
def P15688098882669549554.Spec : Prop :=
  ∀ n, P15688098882669549554.a n = A167132 (n + 1)

end A167132

/-!
# A167133: Primes of the form (number of prime factors of k-th composite) plus (number of divisors of k-th composite).

The programs for A167133, the canonical program `A167133.P12754448107751879519` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167133 has offset 1).

The definition of A167133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167133.P12754448107751879519

`p?[A000005(n+1)+A010051(n+1)+A001222(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A167133

/-- `p?[A000005(n+1)+A010051(n+1)+A001222(n+1)]` -/
def P12754448107751879519.Spec : Prop :=
  ∀ n, P12754448107751879519.a n = A167133 (n + 1)

theorem P12754448107751879519.correct : P12754448107751879519.Spec := by
  intro n
  simp only [A167133, Nat.add_sub_cancel]

end A167133

/-! ## A167133.P18439993434956308797

`p?[A062502(n+1)+A035004(n+1)]`
-/

namespace A167133.P18439993434956308797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062502 (n + 1) + A035004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167133.P18439993434956308797

namespace A167133

/-- `p?[A062502(n+1)+A035004(n+1)]` -/
def P18439993434956308797.Spec : Prop :=
  ∀ n, P18439993434956308797.a n = A167133 (n + 1)

end A167133

/-! ## A167133.P11768023407087881840

`p?[A035004(n+1)+A001222(A018252(n+1))]`
-/

namespace A167133.P11768023407087881840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035004 (n + 1) + A001222 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167133.P11768023407087881840

namespace A167133

/-- `p?[A035004(n+1)+A001222(A018252(n+1))]` -/
def P11768023407087881840.Spec : Prop :=
  ∀ n, P11768023407087881840.a n = A167133 (n + 1)

end A167133

/-! ## A167133.P12732777718195013106

`p?[A035004(n+1)+A001222(A141468(n+2))]`
-/

namespace A167133.P12732777718195013106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035004 (n + 1) + A001222 (A141468 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167133.P12732777718195013106

namespace A167133

/-- `p?[A035004(n+1)+A001222(A141468(n+2))]` -/
def P12732777718195013106.Spec : Prop :=
  ∀ n, P12732777718195013106.a n = A167133 (n + 1)

end A167133

/-! ## A167133.P339263596995309741

`p?[A035004(n+1)+A001222(A222307(2*n+1))]`
-/

namespace A167133.P339263596995309741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035004 (n + 1) + A001222 (A222307 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167133.P339263596995309741

namespace A167133

/-- `p?[A035004(n+1)+A001222(A222307(2*n+1))]` -/
def P339263596995309741.Spec : Prop :=
  ∀ n, P339263596995309741.a n = A167133 (n + 1)

end A167133

/-! ## A167133.P9458517483931965487

`p?[A001222(n+1)+A000005(n+1)%A067824(n+1)]`
-/

namespace A167133.P9458517483931965487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + Int.tmod (A000005 (n + 1)) (A067824 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167133.P9458517483931965487

namespace A167133

/-- `p?[A001222(n+1)+A000005(n+1)%A067824(n+1)]` -/
def P9458517483931965487.Spec : Prop :=
  ∀ n, P9458517483931965487.a n = A167133 (n + 1)

end A167133

/-! ## A167133.P11616343008082589582

`p?[(A001222(n+1)+A000005(n+1))%A184389(n+1)]`
-/

namespace A167133.P11616343008082589582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (n + 1) + A000005 (n + 1)) (A184389 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167133.P11616343008082589582

namespace A167133

/-- `p?[(A001222(n+1)+A000005(n+1))%A184389(n+1)]` -/
def P11616343008082589582.Spec : Prop :=
  ∀ n, P11616343008082589582.a n = A167133 (n + 1)

end A167133

/-! ## A167133.P12090881146425163833

`A001222(A158340(n+1))+A000005(A158340(n+1))`
-/

namespace A167133.P12090881146425163833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A158340 (n + 1)).toNat + A000005 (A158340 (n + 1)).toNat

end

end A167133.P12090881146425163833

namespace A167133

/-- `A001222(A158340(n+1))+A000005(A158340(n+1))` -/
def P12090881146425163833.Spec : Prop :=
  ∀ n, P12090881146425163833.a n = A167133 (n + 1)

end A167133

/-!
# A167134: Primes congruent to {2, 3, 5, 7} mod 11.

The programs for A167134, the canonical program `A167134.P1934329230293337295` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167134 has offset 1).

The definition of A167134 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A167134.anchor (n : ℕ) (hn : 1 ≤ n) : A167134 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 3, 5, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A167.A167134`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167134.P1982999767842553135

`∪[A141854(n+1), A215102(n+1)]`
-/

namespace A167134.P1982999767842553135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167134.P1982999767842553135

namespace A167134

/-- `∪[A141854(n+1), A215102(n+1)]` -/
def P1982999767842553135.Spec : Prop :=
  ∀ n, (P1982999767842553135.a n : ℤ) = A167134 (n + 1)

end A167134

/-! ## A167134.P1934329230293337295

`∪[A141850(n+1), A215210(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A167134

/-- `∪[A141850(n+1), A215210(n+1)]` -/
def P1934329230293337295.Spec : Prop :=
  ∀ n, (P1934329230293337295.a n : ℤ) = A167134 (n + 1)

theorem P1934329230293337295.correct : P1934329230293337295.Spec := by
  intro n
  simp only [A167134, Nat.add_sub_cancel]

end A167134

/-! ## A167134.P14877067340937730320

`p?[a(n-4)+11]` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A167134.P14877067340937730320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5, 7] fun n f1 =>
  f1 (n - 4) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167134.P14877067340937730320

namespace A167134

/-- `p?[a(n-4)+11]` -/
def P14877067340937730320.Spec : Prop :=
  ∀ n, (P14877067340937730320.a n : ℤ) = A167134 (n + 1)

end A167134

/-! ## A167134.P17917143112930134736

`p?[A168484(n+1)]`
-/

namespace A167134.P17917143112930134736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167134.P17917143112930134736

namespace A167134

/-- `p?[A168484(n+1)]` -/
def P17917143112930134736.Spec : Prop :=
  ∀ n, P17917143112930134736.a n = A167134 (n + 1)

end A167134

/-! ## A167134.P16478290542191040149

`p?[A260181(n+1)+floor(n/4)]`
-/

namespace A167134.P16478290542191040149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1) + ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167134.P16478290542191040149

namespace A167134

/-- `p?[A260181(n+1)+floor(n/4)]` -/
def P16478290542191040149.Spec : Prop :=
  ∀ n, P16478290542191040149.a n = A167134 (n + 1)

end A167134

/-! ## A167134.P7928796536753831176

`filter[A168484(n+1), A010051(#)]`
-/

namespace A167134.P7928796536753831176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A167134.P7928796536753831176

namespace A167134

/-- `filter[A168484(n+1), A010051(#)]` -/
def P7928796536753831176.Spec : Prop :=
  ∀ n, P7928796536753831176.a n = A167134 (n + 1)

end A167134

/-! ## A167134.P16501060082522277941

`filter[A168484(n+1), A323152(#)]`
-/

namespace A167134.P16501060082522277941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A167134.P16501060082522277941

namespace A167134

/-- `filter[A168484(n+1), A323152(#)]` -/
def P16501060082522277941.Spec : Prop :=
  ∀ n, P16501060082522277941.a n = A167134 (n + 1)

end A167134

/-! ## A167134.P2778224595363758451

`filter[A168484(n+1), A323153(#)]`
-/

namespace A167134.P2778224595363758451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A167134.P2778224595363758451

namespace A167134

/-- `filter[A168484(n+1), A323153(#)]` -/
def P2778224595363758451.Spec : Prop :=
  ∀ n, P2778224595363758451.a n = A167134 (n + 1)

end A167134

/-! ## A167134.P3063919643552242927

`p?[A057353(n)+A047596(n+1)]`
-/

namespace A167134.P3063919643552242927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n + A047596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167134.P3063919643552242927

namespace A167134

/-- `p?[A057353(n)+A047596(n+1)]` -/
def P3063919643552242927.Spec : Prop :=
  ∀ n, P3063919643552242927.a n = A167134 (n + 1)

end A167134

/-! ## A167134.P3832476114909194331

`p?[A130766(n)+A047613(n+1)]`
-/

namespace A167134.P3832476114909194331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 n + A047613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167134.P3832476114909194331

namespace A167134

/-- `p?[A130766(n)+A047613(n+1)]` -/
def P3832476114909194331.Spec : Prop :=
  ∀ n, P3832476114909194331.a n = A167134 (n + 1)

end A167134

/-! ## A167134.P16985592457122471026

`∩[A000040(n+1), A168484(n+1)]`
-/

namespace A167134.P16985592457122471026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167134.P16985592457122471026

namespace A167134

/-- `∩[A000040(n+1), A168484(n+1)]` -/
def P16985592457122471026.Spec : Prop :=
  ∀ n, (P16985592457122471026.a n : ℤ) = A167134 (n + 1)

end A167134

/-! ## A167134.P52329710697300154

`∩[A008578(n+1), A168484(n+1)]`
-/

namespace A167134.P52329710697300154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167134.P52329710697300154

namespace A167134

/-- `∩[A008578(n+1), A168484(n+1)]` -/
def P52329710697300154.Spec : Prop :=
  ∀ n, (P52329710697300154.a n : ℤ) = A167134 (n + 1)

end A167134

/-! ## A167134.P8987962009446932328

`∩[A033946(n+1), A168484(n+1)]`
-/

namespace A167134.P8987962009446932328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167134.P8987962009446932328

namespace A167134

/-- `∩[A033946(n+1), A168484(n+1)]` -/
def P8987962009446932328.Spec : Prop :=
  ∀ n, (P8987962009446932328.a n : ℤ) = A167134 (n + 1)

end A167134

/-! ## A167134.P6208498054211738287

`∩[A046022(n+1), A168484(n+1)]`
-/

namespace A167134.P6208498054211738287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167134.P6208498054211738287

namespace A167134

/-- `∩[A046022(n+1), A168484(n+1)]` -/
def P6208498054211738287.Spec : Prop :=
  ∀ n, (P6208498054211738287.a n : ℤ) = A167134 (n + 1)

end A167134

/-! ## A167134.P1495844862282581110

`∩[A049543(n+1), A168484(n+1)]`
-/

namespace A167134.P1495844862282581110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167134.P1495844862282581110

namespace A167134

/-- `∩[A049543(n+1), A168484(n+1)]` -/
def P1495844862282581110.Spec : Prop :=
  ∀ n, (P1495844862282581110.a n : ℤ) = A167134 (n + 1)

end A167134

/-! ## A167134.P10060536358596325745

`∩[A051948(n+1), A168484(n+1)]`
-/

namespace A167134.P10060536358596325745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167134.P10060536358596325745

namespace A167134

/-- `∩[A051948(n+1), A168484(n+1)]` -/
def P10060536358596325745.Spec : Prop :=
  ∀ n, (P10060536358596325745.a n : ℤ) = A167134 (n + 1)

end A167134

/-! ## A167134.P13129505263454467745

`∩[A053813(n+1), A168484(n+1)]`
-/

namespace A167134.P13129505263454467745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167134.P13129505263454467745

namespace A167134

/-- `∩[A053813(n+1), A168484(n+1)]` -/
def P13129505263454467745.Spec : Prop :=
  ∀ n, (P13129505263454467745.a n : ℤ) = A167134 (n + 1)

end A167134

/-! ## A167134.P16915266354200367283

`∩[A062972(n+1), A168484(n+1)]`
-/

namespace A167134.P16915266354200367283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167134.P16915266354200367283

namespace A167134

/-- `∩[A062972(n+1), A168484(n+1)]` -/
def P16915266354200367283.Spec : Prop :=
  ∀ n, (P16915266354200367283.a n : ℤ) = A167134 (n + 1)

end A167134

/-! ## A167134.P6931014892377113954

`∩[A066050(n+1), A168484(n+1)]`
-/

namespace A167134.P6931014892377113954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167134.P6931014892377113954

namespace A167134

/-- `∩[A066050(n+1), A168484(n+1)]` -/
def P6931014892377113954.Spec : Prop :=
  ∀ n, (P6931014892377113954.a n : ℤ) = A167134 (n + 1)

end A167134

/-! ## A167134.P1178015089000178527

`∩[A067126(n+1), A168484(n+1)]`
-/

namespace A167134.P1178015089000178527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167134.P1178015089000178527

namespace A167134

/-- `∩[A067126(n+1), A168484(n+1)]` -/
def P1178015089000178527.Spec : Prop :=
  ∀ n, (P1178015089000178527.a n : ℤ) = A167134 (n + 1)

end A167134

/-!
# A167135: Primes congruent to {2, 3, 5, 7, 11} mod 12.

The programs for A167135, the canonical program `A167135.P14473219385980026343` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167135 has offset 1).

The definition of A167135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7523 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167135.P14473219385980026343

`A000040(lt[2, A180217(n+1)]+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A167135

/-- `A000040(lt[2, A180217(n+1)]+1)` -/
def P14473219385980026343.Spec : Prop :=
  ∀ n, P14473219385980026343.a n = A167135 (n + 1)

theorem P14473219385980026343.correct : P14473219385980026343.Spec := by
  intro n
  simp only [A167135, Nat.add_sub_cancel]

end A167135

/-! ## A167135.P4294114250977629671

`p?[(n+1)%((n+1)%12+n)]`
-/

namespace A167135.P4294114250977629671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % ((n + 1) % 12 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167135.P4294114250977629671

namespace A167135

/-- `p?[(n+1)%((n+1)%12+n)]` -/
def P4294114250977629671.Spec : Prop :=
  ∀ n, (P4294114250977629671.a n : ℤ) = A167135 (n + 1)

end A167135

/-! ## A167135.P3092055254252265563

`p?[n-A000005(gcd(n+1, a(n-1)))]` with `a(0)=1`
-/

namespace A167135.P3092055254252265563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - A000005 (Int.gcd (n + 1 : ℤ) (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167135.P3092055254252265563

namespace A167135

/-- `p?[n-A000005(gcd(n+1, a(n-1)))]` -/
def P3092055254252265563.Spec : Prop :=
  ∀ n, P3092055254252265563.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P12526074140523746435

`record[A006530(A110161(n+1)+A006530(2*n+1))]`
-/

namespace A167135.P12526074140523746435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A110161 (n + 1) + A006530 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167135.P12526074140523746435

namespace A167135

/-- `record[A006530(A110161(n+1)+A006530(2*n+1))]` -/
def P12526074140523746435.Spec : Prop :=
  ∀ n, P12526074140523746435.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P17249412584948447893

`record[A020639(A110161(n+1)+A020639(2*n+1))]`
-/

namespace A167135.P17249412584948447893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A110161 (n + 1) + A020639 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167135.P17249412584948447893

namespace A167135

/-- `record[A020639(A110161(n+1)+A020639(2*n+1))]` -/
def P17249412584948447893.Spec : Prop :=
  ∀ n, P17249412584948447893.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P1011888903431082877

`p?[lt[2, gcd(n+1, (n+13)^9)]]`
-/

namespace A167135.P1011888903431082877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) ((n + 13) ^ 9)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167135.P1011888903431082877

namespace A167135

/-- `p?[lt[2, gcd(n+1, (n+13)^9)]]` -/
def P1011888903431082877.Spec : Prop :=
  ∀ n, (P1011888903431082877.a n : ℤ) = A167135 (n + 1)

end A167135

/-! ## A167135.P16398090108072351410

`record[A006530(A006530(2*n+1)-A163811(n+1))]`
-/

namespace A167135.P16398090108072351410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (2 * n + 1) - A163811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167135.P16398090108072351410

namespace A167135

/-- `record[A006530(A006530(2*n+1)-A163811(n+1))]` -/
def P16398090108072351410.Spec : Prop :=
  ∀ n, P16398090108072351410.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P8171947069980614918

`record[A020639(A020639(2*n+1)-A163811(n+1))]`
-/

namespace A167135.P8171947069980614918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (2 * n + 1) - A163811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167135.P8171947069980614918

namespace A167135

/-- `record[A020639(A020639(2*n+1)-A163811(n+1))]` -/
def P8171947069980614918.Spec : Prop :=
  ∀ n, P8171947069980614918.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P11972694743646474349

`p?[A083028(n+1)]`
-/

namespace A167135.P11972694743646474349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167135.P11972694743646474349

namespace A167135

/-- `p?[A083028(n+1)]` -/
def P11972694743646474349.Spec : Prop :=
  ∀ n, P11972694743646474349.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P1853217958808329182

`p?[A190785(n+1)]`
-/

namespace A167135.P1853217958808329182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167135.P1853217958808329182

namespace A167135

/-- `p?[A190785(n+1)]` -/
def P1853217958808329182.Spec : Prop :=
  ∀ n, P1853217958808329182.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P8067563133040164865

`record[A006530(A083028(n+2))]`
-/

namespace A167135.P8067563133040164865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A083028 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167135.P8067563133040164865

namespace A167135

/-- `record[A006530(A083028(n+2))]` -/
def P8067563133040164865.Spec : Prop :=
  ∀ n, P8067563133040164865.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P1058578773406765520

`record[A006530(A190785(n+2))]`
-/

namespace A167135.P1058578773406765520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A190785 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167135.P1058578773406765520

namespace A167135

/-- `record[A006530(A190785(n+2))]` -/
def P1058578773406765520.Spec : Prop :=
  ∀ n, P1058578773406765520.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P10558850170769722187

`filter[A083028(n+2), A010051(#)]`
-/

namespace A167135.P10558850170769722187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A167135.P10558850170769722187

namespace A167135

/-- `filter[A083028(n+2), A010051(#)]` -/
def P10558850170769722187.Spec : Prop :=
  ∀ n, P10558850170769722187.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P15696341532861464181

`filter[A190785(n+2), A010051(#)]`
-/

namespace A167135.P15696341532861464181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A167135.P15696341532861464181

namespace A167135

/-- `filter[A190785(n+2), A010051(#)]` -/
def P15696341532861464181.Spec : Prop :=
  ∀ n, P15696341532861464181.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P3418477185574098618

`filter[A083028(n+2), A302777(#)]`
-/

namespace A167135.P3418477185574098618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A167135.P3418477185574098618

namespace A167135

/-- `filter[A083028(n+2), A302777(#)]` -/
def P3418477185574098618.Spec : Prop :=
  ∀ n, P3418477185574098618.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P1443641392385956203

`filter[A083028(n+2), A323153(#)]`
-/

namespace A167135.P1443641392385956203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A167135.P1443641392385956203

namespace A167135

/-- `filter[A083028(n+2), A323153(#)]` -/
def P1443641392385956203.Spec : Prop :=
  ∀ n, P1443641392385956203.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P16200977007634540325

`filter[A083028(n+2), A355937(#)]`
-/

namespace A167135.P16200977007634540325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A167135.P16200977007634540325

namespace A167135

/-- `filter[A083028(n+2), A355937(#)]` -/
def P16200977007634540325.Spec : Prop :=
  ∀ n, P16200977007634540325.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P18064940635001392721

`filter[A190785(n+2), A323153(#)]`
-/

namespace A167135.P18064940635001392721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A167135.P18064940635001392721

namespace A167135

/-- `filter[A190785(n+2), A323153(#)]` -/
def P18064940635001392721.Spec : Prop :=
  ∀ n, P18064940635001392721.a n = A167135 (n + 1)

end A167135

/-! ## A167135.P7212291104260253659

`∩[A000040(n+1), A083028(n+1)]`
-/

namespace A167135.P7212291104260253659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167135.P7212291104260253659

namespace A167135

/-- `∩[A000040(n+1), A083028(n+1)]` -/
def P7212291104260253659.Spec : Prop :=
  ∀ n, (P7212291104260253659.a n : ℤ) = A167135 (n + 1)

end A167135

/-! ## A167135.P9488878767215112113

`∩[A000430(n+1), A083028(n+1)]`
-/

namespace A167135.P9488878767215112113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167135.P9488878767215112113

namespace A167135

/-- `∩[A000430(n+1), A083028(n+1)]` -/
def P9488878767215112113.Spec : Prop :=
  ∀ n, (P9488878767215112113.a n : ℤ) = A167135 (n + 1)

end A167135

/-!
# A167136: a(n) = b(n)-th highest positive integer not equal to any a(k), 1 <= k <= n-1, where b(n) = noncomposite numbers = A008578(n).

The programs for A167136, the canonical program `A167136.P17162096113252504066` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167136 has offset 1).

The definition of A167136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167136.P17162096113252504066

`n+A008578(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A167136

/-- `n+A008578(n+1)` -/
def P17162096113252504066.Spec : Prop :=
  ∀ n, P17162096113252504066.a n = A167136 (n + 1)

theorem P17162096113252504066.correct : P17162096113252504066.Spec := by
  intro n
  simp only [A167136, Nat.add_sub_cancel]

end A167136

/-! ## A167136.P12621246505641767416

`n+A158611(n+2)`
-/

namespace A167136.P12621246505641767416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A158611 (n + 2)

end

end A167136.P12621246505641767416

namespace A167136

/-- `n+A158611(n+2)` -/
def P12621246505641767416.Spec : Prop :=
  ∀ n, P12621246505641767416.a n = A167136 (n + 1)

end A167136

/-! ## A167136.P13474612223075648889

`A090178(n+1)-1`
-/

namespace A167136.P13474612223075648889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) - 1

end

end A167136.P13474612223075648889

namespace A167136

/-- `A090178(n+1)-1` -/
def P13474612223075648889.Spec : Prop :=
  ∀ n, P13474612223075648889.a n = A167136 (n + 1)

theorem P13474612223075648889.correct : P13474612223075648889.Spec := by
  intro n
  simp only [A167136, Nat.add_sub_cancel, A167136.P13474612223075648889.a, A167136.P17162096113252504066.a, A008578, A008578.P3639467937083264764.a, A090178, A090178.P3922482968985292774.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167136

/-! ## A167136.P8019440395331268633

`A008578(n+1)+n`
-/

namespace A167136.P8019440395331268633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (n : ℤ)

end

end A167136.P8019440395331268633

namespace A167136

/-- `A008578(n+1)+n` -/
def P8019440395331268633.Spec : Prop :=
  ∀ n, P8019440395331268633.a n = A167136 (n + 1)

theorem P8019440395331268633.correct : P8019440395331268633.Spec := by
  intro n
  simp only [A167136, Nat.add_sub_cancel, A167136.P8019440395331268633.a, A167136.P17162096113252504066.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A167136

/-! ## A167136.P9681333944848272003

`A028815(n)-1+n`
-/

namespace A167136.P9681333944848272003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 1 + (n : ℤ)

end

end A167136.P9681333944848272003

namespace A167136

/-- `A028815(n)-1+n` -/
def P9681333944848272003.Spec : Prop :=
  ∀ n, P9681333944848272003.a n = A167136 (n + 1)

theorem P9681333944848272003.correct : P9681333944848272003.Spec := by
  intro n
  simp only [A167136, Nat.add_sub_cancel, A167136.P9681333944848272003.a, A167136.P17162096113252504066.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167136

/-! ## A167136.P7771541998819617847

`sqrt(A280076(n+1))+n`
-/

namespace A167136.P7771541998819617847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (n + 1) : ℝ) + (n : ℝ)

end

end A167136.P7771541998819617847

namespace A167136

/-- `sqrt(A280076(n+1))+n` -/
def P7771541998819617847.Spec : Prop :=
  ∀ n, P7771541998819617847.a n = (A167136 (n + 1) : ℝ)

end A167136

/-! ## A167136.P1681233889401901854

`A001747(n+1)/2+n`
-/

namespace A167136.P1681233889401901854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A167136.P1681233889401901854

namespace A167136

/-- `A001747(n+1)/2+n` -/
def P1681233889401901854.Spec : Prop :=
  ∀ n, P1681233889401901854.a n = (A167136 (n + 1) : ℚ)

theorem P1681233889401901854.correct : P1681233889401901854.Spec := by
  intro n
  simp only [A167136, Nat.add_sub_cancel, A167136.P1681233889401901854.a, A167136.P17162096113252504066.a, A001747, A001747.P198467477273308856.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167136

/-! ## A167136.P8964730383739671171

`A112773(n+1)/3+n`
-/

namespace A167136.P8964730383739671171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112773 (n + 1) : ℚ) / 3 + (n : ℚ)

end

end A167136.P8964730383739671171

namespace A167136

/-- `A112773(n+1)/3+n` -/
def P8964730383739671171.Spec : Prop :=
  ∀ n, P8964730383739671171.a n = (A167136 (n + 1) : ℚ)

theorem P8964730383739671171.correct : P8964730383739671171.Spec := by
  intro n
  simp only [A167136, Nat.add_sub_cancel, A167136.P8964730383739671171.a, A167136.P17162096113252504066.a, A008578, A008578.P3639467937083264764.a, A112773, A112773.P44553575666953962.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167136

/-! ## A167136.P13528306567303666880

`A230846(n)+a(n-1)` with `a(0)=1`
-/

namespace A167136.P13528306567303666880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230846 n + a (n - 1)

end

end A167136.P13528306567303666880

namespace A167136

/-- `A230846(n)+a(n-1)` -/
def P13528306567303666880.Spec : Prop :=
  ∀ n, P13528306567303666880.a n = A167136 (n + 1)

end A167136

/-! ## A167136.P12667454775716262825

`A162177(n+1)+Δ[n²]`
-/

namespace A167136.P12667454775716262825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A167136.P12667454775716262825

namespace A167136

/-- `A162177(n+1)+Δ[n²]` -/
def P12667454775716262825.Spec : Prop :=
  ∀ n, P12667454775716262825.a n = A167136 (n + 1)

theorem P12667454775716262825.correct : P12667454775716262825.Spec := by
  intro n
  simp only [A167136, Nat.add_sub_cancel, A167136.P12667454775716262825.f1, A167136.P12667454775716262825.a, A167136.P17162096113252504066.a, A008578, A008578.P3639467937083264764.a, A162177, A162177.P8282933836838632122.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167136

/-! ## A167136.P3556651205047548772

`A076368(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A167136.P3556651205047548772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A076368 n + a (n - 1)

end

end A167136.P3556651205047548772

namespace A167136

/-- `A076368(n)+a(n-1)` -/
def P3556651205047548772.Spec : Prop :=
  ∀ n, P3556651205047548772.a n = A167136 (n + 1)

end A167136

/-! ## A167136.P6101544759048826433

`A230847(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A167136.P6101544759048826433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A230847 n + a (n - 1)

end

end A167136.P6101544759048826433

namespace A167136

/-- `A230847(n)+a(n-1)` -/
def P6101544759048826433.Spec : Prop :=
  ∀ n, P6101544759048826433.a n = A167136 (n + 1)

end A167136

/-! ## A167136.P16650509296988270158

`A164931(n+1)/(n+1)+n`
-/

namespace A167136.P16650509296988270158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164931 (n + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A167136.P16650509296988270158

namespace A167136

/-- `A164931(n+1)/(n+1)+n` -/
def P16650509296988270158.Spec : Prop :=
  ∀ n, P16650509296988270158.a n = (A167136 (n + 1) : ℚ)

theorem P16650509296988270158.correct : P16650509296988270158.Spec := by
  intro n
  simp only [A167136, Nat.add_sub_cancel, A167136.P16650509296988270158.a, A167136.P17162096113252504066.a, A008578, A008578.P3639467937083264764.a, A164931, A164931.P11447713035022642152.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167136

/-! ## A167136.P12392470589616730591

`A028815(n)+A023443(n)`
-/

namespace A167136.P12392470589616730591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + A023443 n

end

end A167136.P12392470589616730591

namespace A167136

/-- `A028815(n)+A023443(n)` -/
def P12392470589616730591.Spec : Prop :=
  ∀ n, P12392470589616730591.a n = A167136 (n + 1)

theorem P12392470589616730591.correct : P12392470589616730591.Spec := by
  intro n
  simp only [A167136, Nat.add_sub_cancel, A167136.P12392470589616730591.a, A167136.P17162096113252504066.a, A008578, A008578.P3639467937083264764.a, A023443, A023443.P2966051066474347068.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167136

/-! ## A167136.P1726159475808285958

`A028815(n)-A024000(n)`
-/

namespace A167136.P1726159475808285958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - A024000 n

end

end A167136.P1726159475808285958

namespace A167136

/-- `A028815(n)-A024000(n)` -/
def P1726159475808285958.Spec : Prop :=
  ∀ n, P1726159475808285958.a n = A167136 (n + 1)

theorem P1726159475808285958.correct : P1726159475808285958.Spec := by
  intro n
  simp only [A167136, Nat.add_sub_cancel, A167136.P1726159475808285958.a, A167136.P17162096113252504066.a, A008578, A008578.P3639467937083264764.a, A024000, A024000.P8748414335487061084.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167136

/-! ## A167136.P8192927500537117171

`A182986(n+1)+A028310(n)`
-/

namespace A167136.P8192927500537117171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + A028310 n

end

end A167136.P8192927500537117171

namespace A167136

/-- `A182986(n+1)+A028310(n)` -/
def P8192927500537117171.Spec : Prop :=
  ∀ n, P8192927500537117171.a n = A167136 (n + 1)

end A167136

/-! ## A167136.P6144170423700130767

`A326178(n)+A068499(n+1)`
-/

namespace A167136.P6144170423700130767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 n + A068499 (n + 1)

end

end A167136.P6144170423700130767

namespace A167136

/-- `A326178(n)+A068499(n+1)` -/
def P6144170423700130767.Spec : Prop :=
  ∀ n, P6144170423700130767.a n = A167136 (n + 1)

end A167136

/-! ## A167136.P13004391512282912446

`A095116(n+1)-A075526(n)`
-/

namespace A167136.P13004391512282912446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - A075526 n

end

end A167136.P13004391512282912446

namespace A167136

/-- `A095116(n+1)-A075526(n)` -/
def P13004391512282912446.Spec : Prop :=
  ∀ n, P13004391512282912446.a n = A167136 (n + 1)

end A167136

/-! ## A167136.P10336531379872271104

`∪[A016782(n), A014688(n+1)]`
-/

namespace A167136.P10336531379872271104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167136.P10336531379872271104

namespace A167136

/-- `∪[A016782(n), A014688(n+1)]` -/
def P10336531379872271104.Spec : Prop :=
  ∀ n, (P10336531379872271104.a n : ℤ) = A167136 (n + 1)

end A167136

/-! ## A167136.P10356085206655383560

`A014688(n+1)-A230846(n+1)`
-/

namespace A167136.P10356085206655383560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A230846 (n + 1)

end

end A167136.P10356085206655383560

namespace A167136

/-- `A014688(n+1)-A230846(n+1)` -/
def P10356085206655383560.Spec : Prop :=
  ∀ n, P10356085206655383560.a n = A167136 (n + 1)

theorem P10356085206655383560.correct : P10356085206655383560.Spec := by
  intro n
  simp only [A167136, Nat.add_sub_cancel, A167136.P10356085206655383560.a, A167136.P17162096113252504066.a, A008578, A008578.P3639467937083264764.a, A014688, A014688.P4990984272387159238.a, A230846, A230846.P382823846826996037.a, A075526, A075526.P13453056913313804413.a, A090178, A090178.P3922482968985292774.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167136

/-! ## A167136.P2258209847116805356

`record[∑{p}[n, #-1]]+n+1`
-/

namespace A167136.P2258209847116805356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)

end

end A167136.P2258209847116805356

namespace A167136

/-- `record[∑{p}[n, #-1]]+n+1` -/
def P2258209847116805356.Spec : Prop :=
  ∀ n, P2258209847116805356.a n = A167136 (n + 1)

end A167136

/-!
# A167137: E.g.f.: P(exp(x)-1) where P(x) is the g.f. of the partition numbers (A000041).

The programs for A167137, there is no canonical definition to state claims against.
-/

/-! ## A167137.P5159953845642752369

`A268215(n)+A052876(n)`
-/

namespace A167137.P5159953845642752369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268215 n + A052876 n

end

end A167137.P5159953845642752369

/-! ## A167137.P2610249824918755602

`A057355(∑[2^n*n!]-(2^n-2))`
-/

namespace A167137.P2610249824918755602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((2 ^ n : ℤ) - 2)).toNat

end

end A167137.P2610249824918755602

/-!
# A167138: G.f.: Sum_{n>=0} A167137(n)^2 * log(1+x)^n/n! where Sum_{n>=0} A167137(n)*log(1+x)^n/n! = g.f. of the partition numbers (A000041).

The programs for A167138, there is no canonical definition to state claims against.
-/

/-! ## A167138.P7385032437913494479

`A060644(A367164(n)-1)`
-/

namespace A167138.P7385032437913494479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060644 (A367164 n - 1).toNat

end

end A167138.P7385032437913494479

/-!
# A167139: G.f.: Sum_{n>=0} A005649(n)^2 * log(1+x)^n/n! where 1/(1-x)^2 = Sum_{n>=0} A005649(n)*log(1+x)^n/n!.

The programs for A167139, there is no canonical definition to state claims against.
-/

/-! ## A167139.P295345903599903455

`A005229((2*n+1)*A166882(n+1))`
-/

namespace A167139.P295345903599903455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 ((2 * n + 1 : ℤ) * A166882 (n + 1)).toNat

end

end A167139.P295345903599903455

/-!
# A167140: Self-convolution of A155200.

The programs for A167140, there is no canonical definition to state claims against.
-/

/-! ## A167140.P4683161681673926289

`2^n*A156340(n)`
-/

namespace A167140.P4683161681673926289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A156340 n

end

end A167140.P4683161681673926289

/-! ## A167140.P3869518133600372261

`A156340(n)*A156365(A000217(n+1))`
-/

namespace A167140.P3869518133600372261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156340 n * A156365 (A000217 (n + 1)).toNat

end

end A167140.P3869518133600372261

/-! ## A167140.P11110185007568746772

`A156340(n)*A268444(A000225(n))`
-/

namespace A167140.P11110185007568746772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156340 n * A268444 (A000225 n).toNat

end

end A167140.P11110185007568746772

/-! ## A167140.P12174294250313150211

`A156340(n)*A302026(A000079(n))`
-/

namespace A167140.P12174294250313150211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156340 n * A302026 (A000079 n).toNat

end

end A167140.P12174294250313150211

/-!
# A167141: G.f.: Sum_{n>=0} A004123(n)^2*log(1+x)^n/n! where 1/(1-2x) = Sum_{n>=0} A004123(n)*log(1+x)^n/n!.

The programs for A167141, there is no canonical definition to state claims against.
-/

/-! ## A167141.P12861456583830634305

`(n+1)*A340793(A001813(n))`
-/

namespace A167141.P12861456583830634305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A340793 (A001813 n).toNat

end

end A167141.P12861456583830634305

/-!
# A167142: Column 0 of the matrix square of triangle A167015.

The programs for A167142, there is no canonical definition to state claims against.
-/

/-! ## A167142.P1029985177280546441

`A242031(A145350(n))+A157679(n)`
-/

namespace A167142.P1029985177280546441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (A145350 n).toNat + A157679 n

end

end A167142.P1029985177280546441

/-! ## A167142.P14707510740692092202

`A005374(A003308(n+1)+A000120(n))`
-/

namespace A167142.P14707510740692092202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A003308 (n + 1) + A000120 n).toNat

end

end A167142.P14707510740692092202

/-!
# A167143: Column 0 of the matrix cube of triangle A167015.

The programs for A167143, there is no canonical definition to state claims against.
-/

/-! ## A167143.P16696222461252577179

`A067434(∑[(n+1)*∑[n^n]])`
-/

namespace A167143.P16696222461252577179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167143.P16696222461252577179

/-!
# A167144: Column 0 of the matrix 4th power of triangle A167015.

The programs for A167144, there is no canonical definition to state claims against.
-/

/-! ## A167144.P14867154916231403826

`A065033(A331689(n)+A169161(n))`
-/

namespace A167144.P14867154916231403826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A331689 n + A169161 n).toNat

end

end A167144.P14867154916231403826

/-!
# A167145: Column 0 of the matrix 5th power of triangle A167015.

The programs for A167145, there is no canonical definition to state claims against.
-/

/-! ## A167145.P9756053243317120227

`A167015(A272685(n+1)+3)`
-/

namespace A167145.P9756053243317120227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167015 (A272685 (n + 1) + 3).toNat

end

end A167145.P9756053243317120227

/-!
# A167146: a(n) = (Im(rz(n)) - Im(-log(exp(-rz(n)))))/Pi where rz(n) is the n-th zero of Zeta(s).

The programs for A167146, there is no canonical definition to state claims against.
-/

/-! ## A167146.P17281099641477007402

`2*A275579(n+1)`
-/

namespace A167146.P17281099641477007402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275579 (n + 1)

end

end A167146.P17281099641477007402

/-! ## A167146.P15960644472878007625

`A004277(A275579(n+1))`
-/

namespace A167146.P15960644472878007625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A275579 (n + 1)).toNat

end

end A167146.P15960644472878007625

/-! ## A167146.P14620847102658172619

`A005843(A275579(Δ[n²]-n))`
-/

namespace A167146.P14620847102658172619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A275579 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A167146.P14620847102658172619

/-! ## A167146.P17287538839443008938

`A275579(char[6]+1+n)+A275579(n+1)`
-/

namespace A167146.P17287538839443008938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275579 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A275579 (n + 1)

end

end A167146.P17287538839443008938

/-! ## A167146.P9699375773797015127

`A038608(A275579(n+1)+A275579(n+1))`
-/

namespace A167146.P9699375773797015127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A275579 (n + 1) + A275579 (n + 1)).toNat

end

end A167146.P9699375773797015127

/-! ## A167146.P11503087078385633934

`A275579(n+1)+A275579(n+2)-A275737(n+1)`
-/

namespace A167146.P11503087078385633934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275579 (n + 1) + (A275579 (n + 2) - A275737 (n + 1))

end

end A167146.P11503087078385633934

/-!
# A167152: Lexicographically earliest injective sequence such that a(n) = A007953(a(a(n))), where A007953 = sum of digits (in base 10).

The programs for A167152, there is no canonical definition to state claims against.
-/

/-! ## A167152.P16400903476797019449

`A004185(A061479(n+1)+A045887(n+1))`
-/

namespace A167152.P16400903476797019449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A061479 (n + 1) + A045887 (n + 1)).toNat

end

end A167152.P16400903476797019449

/-! ## A167152.P18135205406384339248

`A004185(A180160(n+1)+A061479(n+1))`
-/

namespace A167152.P18135205406384339248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A180160 (n + 1) + A061479 (n + 1)).toNat

end

end A167152.P18135205406384339248

/-!
# A167153: Numbers not appearing in A167152.

The programs for A167153, there is no canonical definition to state claims against.
-/

/-! ## A167153.P13368241861054012823

`comp[A167152(n+1)-1]+1`
-/

namespace A167153.P13368241861054012823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167152 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A167153.P13368241861054012823

/-! ## A167153.P12458650004121793712

`A118759(A110303(Δ[n²]))+9`
-/

namespace A167153.P12458650004121793712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A110303 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat + 9

end

end A167153.P12458650004121793712

/-! ## A167153.P15033843983898157949

`A110303(2*n+1)%A355595(n+3)+9`
-/

namespace A167153.P15033843983898157949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110303 (2 * n + 1)) (A355595 (n + 3)) + 9

end

end A167153.P15033843983898157949

/-! ## A167153.P13845043374709122036

`A045918(lt[A045918(n), 36])+n`
-/

namespace A167153.P13845043374709122036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + (n : ℤ)

end

end A167153.P13845043374709122036

/-! ## A167153.P1854618328751241325

`lt[A260793(n+1), A225596(A381963(n))]`
-/

namespace A167153.P1854618328751241325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225596 (A381963 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167153.P1854618328751241325

/-!
# A167154: Numbers where terms in A167153 change parity: a(n)+1 is in A167153, but a(n)-1 is not.

The programs for A167154, there is no canonical definition to state claims against.
-/

/-! ## A167154.P10453777220067899144

`A131668(n+4)+A000035(n)`
-/

namespace A167154.P10453777220067899144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131668 (n + 4) + A000035 n

end

end A167154.P10453777220067899144

/-! ## A167154.P10762912814862098163

`A131668(n+4)+char[A131668(n)]`
-/

namespace A167154.P10762912814862098163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131668 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131668 (n + 4) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A167154.P10762912814862098163

/-! ## A167154.P18378234655592047642

`A131668(n+4)+A059841(n+1)`
-/

namespace A167154.P18378234655592047642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131668 (n + 4) + A059841 (n + 1)

end

end A167154.P18378234655592047642

/-! ## A167154.P17449515823674975960

`A131668(n+4)+A131555(3*n)`
-/

namespace A167154.P17449515823674975960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131668 (n + 4) + A131555 (3 * n)

end

end A167154.P17449515823674975960

/-! ## A167154.P8417617750450823544

`A131668(n+4)-A131736(3*n)`
-/

namespace A167154.P8417617750450823544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131668 (n + 4) - A131736 (3 * n)

end

end A167154.P8417617750450823544

/-!
# A167155: Exponential primorial constant Sum_{k>=0} 1/A140319(k).

The programs for A167155, the canonical program `A167155.P2538249655502824357` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167155 has offset 1).

The definition of A167155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167155.P2538249655502824357

`dr(and(A000051(n+4), A001846(n+1)))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167155

/-- `dr(and(A000051(n+4), A001846(n+1)))` -/
def P2538249655502824357.Spec : Prop :=
  ∀ n, (P2538249655502824357.a n : ℤ) = A167155 (n + 1)

theorem P2538249655502824357.correct : P2538249655502824357.Spec := by
  intro n
  simp only [A167155, Nat.add_sub_cancel]

end A167155

/-!
# A167156: Number of n-vertex 4-hedrites.

The programs for A167156, there is no canonical definition to state claims against.
-/

/-! ## A167156.P1898356207912783450

`∑{d}[∑[n+1]%(n+2), A008621(#)]`
-/

namespace A167156.P1898356207912783450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008621 d

end

end A167156.P1898356207912783450

/-! ## A167156.P9945173083778448284

`(n+1)%2*A145393(∑[log2(gcd(2, n))])`
-/

namespace A167156.P9945173083778448284
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A145393 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A167156.P9945173083778448284

/-! ## A167156.P9269693688987995430

`∑{d}[A027656(n), A008621(#)]`
-/

namespace A167156.P9269693688987995430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008621 d

end

end A167156.P9269693688987995430

/-! ## A167156.P2281161261203216778

`∑{d}[A142150(n+2), A008621(#)]`
-/

namespace A167156.P2281161261203216778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008621 d

end

end A167156.P2281161261203216778

/-! ## A167156.P4313302294884349386

`char[2*n]*A145393(A008619(n))`
-/

namespace A167156.P4313302294884349386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A145393 (A008619 n).toNat

end

end A167156.P4313302294884349386

/-! ## A167156.P3768728356730072277

`char[2*n]*A145393(A029579(n))`
-/

namespace A167156.P3768728356730072277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A145393 (A029579 n).toNat

end

end A167156.P3768728356730072277

/-! ## A167156.P8183274577441121734

`∑{d}[∑[A001057(n+1)], A008621(#)]`
-/

namespace A167156.P8183274577441121734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008621 d

end

end A167156.P8183274577441121734

/-! ## A167156.P9401163784332399124

`∑{d}[A027656(n), A008619(A004524(#))]`
-/

namespace A167156.P9401163784332399124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008619 (A004524 d).toNat

end

end A167156.P9401163784332399124

/-! ## A167156.P9394394965757425868

`∑{d}[A027656(n), A008619(A004525(#))]`
-/

namespace A167156.P9394394965757425868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008619 (A004525 d).toNat

end

end A167156.P9394394965757425868

/-! ## A167156.P6625029046495244615

`∑{d}[A027656(n), A008619(A004526(#))]`
-/

namespace A167156.P6625029046495244615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008619 (A004526 d).toNat

end

end A167156.P6625029046495244615

/-!
# A167166: a(n) = n^7 mod 16.

The programs for A167166, the canonical program `A167166.P12470162922859919365` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167166 has offset 0).

The definition of A167166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%16` (program `A167166.P12470162922859919365`, by `A167166.P12470162922859919365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167166.P12470162922859919365

`(n^7)%16`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167166

/-- `(n^7)%16` -/
def P12470162922859919365.Spec : Prop :=
  ∀ n, (P12470162922859919365.a n : ℤ) = A167166 n

theorem P12470162922859919365.correct : P12470162922859919365.Spec := by
  intro n
  simp only [A167166]

end A167166

/-!
# A167167: A001045 with a(0) replaced by -1.

The programs for A167167, the canonical program `A167167.P17974941635176137961` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167167 has offset 0).

The definition of A167167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167167.P17974941635176137961

`ogf((-1+2x+2x^2)/(1-x-2x^2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167167

/-- `ogf((-1+2x+2x^2)/(1-x-2x^2))` -/
def P17974941635176137961.Spec : Prop :=
  ∀ n, P17974941635176137961.a n = A167167 n

theorem P17974941635176137961.correct : P17974941635176137961.Spec := by
  intro n
  simp only [A167167]

end A167167

/-! ## A167167.P269446990276115200

`2^(n-1)-a(n-1)` with `a(0)=-1, a(1)=1`
-/

namespace A167167.P269446990276115200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A167167.P269446990276115200

namespace A167167

/-- `2^(n-1)-a(n-1)` -/
def P269446990276115200.Spec : Prop :=
  ∀ n, P269446990276115200.a n = (A167167 n : ℚ)

end A167167

/-! ## A167167.P16099939199337714808

`a(n-1)+2*a(n-2)` with `a(0)=-1, a(1)=1, a(2)=1`
-/

namespace A167167.P16099939199337714808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 1] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A167167.P16099939199337714808

namespace A167167

/-- `a(n-1)+2*a(n-2)` -/
def P16099939199337714808.Spec : Prop :=
  ∀ n, P16099939199337714808.a n = A167167 n

end A167167

/-! ## A167167.P10052714607587399634

`a(n-2)+a(n-1)+a(n-2)` with `a(0)=-1, a(1)=1, a(2)=1`
-/

namespace A167167.P10052714607587399634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 1] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A167167.P10052714607587399634

namespace A167167

/-- `a(n-2)+a(n-1)+a(n-2)` -/
def P10052714607587399634.Spec : Prop :=
  ∀ n, P10052714607587399634.a n = A167167 n

end A167167

/-! ## A167167.P1335405750584801219

`3*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=-1, a(1)=1, a(2)=1`
-/

namespace A167167.P1335405750584801219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 1] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A167167.P1335405750584801219

namespace A167167

/-- `3*a(n-2)-(a(n-2)-a(n-1))` -/
def P1335405750584801219.Spec : Prop :=
  ∀ n, P1335405750584801219.a n = A167167 n

end A167167

/-! ## A167167.P1181488365160134874

`or(1, A167030(n))`
-/

namespace A167167.P1181488365160134874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A167030 n)

end

end A167167.P1181488365160134874

namespace A167167

/-- `or(1, A167030(n))` -/
def P1181488365160134874.Spec : Prop :=
  ∀ n, P1181488365160134874.a n = A167167 n

end A167167

/-! ## A167167.P5928943558903840369

`2*A023105(n)-3`
-/

namespace A167167.P5928943558903840369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023105 n - 3

end

end A167167.P5928943558903840369

namespace A167167

/-- `2*A023105(n)-3` -/
def P5928943558903840369.Spec : Prop :=
  ∀ n, P5928943558903840369.a n = A167167 n

end A167167

/-! ## A167167.P9162480351141255945

`or(1, A001045(n)-1)`
-/

namespace A167167.P9162480351141255945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001045 n - 1)

end

end A167167.P9162480351141255945

namespace A167167

/-- `or(1, A001045(n)-1)` -/
def P9162480351141255945.Spec : Prop :=
  ∀ n, P9162480351141255945.a n = A167167 n

end A167167

/-! ## A167167.P12968359554241312425

`or(1, A128209(n)-2)`
-/

namespace A167167.P12968359554241312425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A128209 n - 2)

end

end A167167.P12968359554241312425

namespace A167167

/-- `or(1, A128209(n)-2)` -/
def P12968359554241312425.Spec : Prop :=
  ∀ n, P12968359554241312425.a n = A167167 n

end A167167

/-! ## A167167.P4081654630065354672

`or(1, A133684(2*n)-1)`
-/

namespace A167167.P4081654630065354672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A133684 (2 * n) - 1)

end

end A167167.P4081654630065354672

namespace A167167

/-- `or(1, A133684(2*n)-1)` -/
def P4081654630065354672.Spec : Prop :=
  ∀ n, P4081654630065354672.a n = A167167 n

end A167167

/-! ## A167167.P5003039858977984595

`or(1, A133730(2*n+1)-1)`
-/

namespace A167167.P5003039858977984595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A133730 (2 * n + 1) - 1)

end

end A167167.P5003039858977984595

namespace A167167

/-- `or(1, A133730(2*n+1)-1)` -/
def P5003039858977984595.Spec : Prop :=
  ∀ n, P5003039858977984595.a n = A167167 n

end A167167

/-! ## A167167.P942618539238913689

`A133730(A004280(n+2))`
-/

namespace A167167.P942618539238913689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (A004280 (n + 2)).toNat

end

end A167167.P942618539238913689

namespace A167167

/-- `A133730(A004280(n+2))` -/
def P942618539238913689.Spec : Prop :=
  ∀ n, P942618539238913689.a n = A167167 n

end A167167

/-! ## A167167.P3810872961870851700

`A167030(n)+A057427(n)`
-/

namespace A167167.P3810872961870851700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 n + A057427 n

end

end A167167.P3810872961870851700

namespace A167167

/-- `A167030(n)+A057427(n)` -/
def P3810872961870851700.Spec : Prop :=
  ∀ n, P3810872961870851700.a n = A167167 n

end A167167

/-! ## A167167.P9867789601862770996

`A001045(n)-A000007(n)`
-/

namespace A167167.P9867789601862770996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n - A000007 n

end

end A167167.P9867789601862770996

namespace A167167

/-- `A001045(n)-A000007(n)` -/
def P9867789601862770996.Spec : Prop :=
  ∀ n, P9867789601862770996.a n = A167167 n

end A167167

/-! ## A167167.P18265957783755772234

`A152046(n)-A000038(n)`
-/

namespace A167167.P18265957783755772234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n - A000038 n

end

end A167167.P18265957783755772234

namespace A167167

/-- `A152046(n)-A000038(n)` -/
def P18265957783755772234.Spec : Prop :=
  ∀ n, P18265957783755772234.a n = A167167 n

end A167167

/-! ## A167167.P9038961713599140456

`A128209(n)-A054977(n)`
-/

namespace A167167.P9038961713599140456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n - A054977 n

end

end A167167.P9038961713599140456

namespace A167167

/-- `A128209(n)-A054977(n)` -/
def P9038961713599140456.Spec : Prop :=
  ∀ n, P9038961713599140456.a n = A167167 n

end A167167

/-! ## A167167.P11883953841170899745

`A167030(n)-A057428(n)`
-/

namespace A167167.P11883953841170899745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 n - A057428 n

end

end A167167.P11883953841170899745

namespace A167167

/-- `A167030(n)-A057428(n)` -/
def P11883953841170899745.Spec : Prop :=
  ∀ n, P11883953841170899745.a n = A167167 n

end A167167

/-! ## A167167.P8541876283948819247

`A193652(n)-A282577(n)`
-/

namespace A167167.P8541876283948819247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193652 n - A282577 n

end

end A167167.P8541876283948819247

namespace A167167

/-- `A193652(n)-A282577(n)` -/
def P8541876283948819247.Spec : Prop :=
  ∀ n, P8541876283948819247.a n = A167167 n

end A167167

/-! ## A167167.P1778023445135011098

`A001045(n)-char[A332180(n)]`
-/

namespace A167167.P1778023445135011098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A167167.P1778023445135011098

namespace A167167

/-- `A001045(n)-char[A332180(n)]` -/
def P1778023445135011098.Spec : Prop :=
  ∀ n, P1778023445135011098.a n = A167167 n

end A167167

/-! ## A167167.P5348482598409265117

`A133730(A114112(2*(n+1)))`
-/

namespace A167167.P5348482598409265117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (A114112 (2 * (n + 1))).toNat

end

end A167167.P5348482598409265117

namespace A167167

/-- `A133730(A114112(2*(n+1)))` -/
def P5348482598409265117.Spec : Prop :=
  ∀ n, P5348482598409265117.a n = A167167 n

end A167167

/-!
# A167168: Sequence of prime gaps which characterize Rowland sequences of prime-generating recurrences.

The programs for A167168, there is no canonical definition to state claims against.
-/

/-! ## A167168.P240570940086472929

`p?[lt[n, A330013(n+1)!]]`
-/

namespace A167168.P240570940086472929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A330013 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167168.P240570940086472929

/-! ## A167168.P14618102118571087611

`p?[A327413(A060756(n))]`
-/

namespace A167168.P14618102118571087611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327413 (A060756 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167168.P14618102118571087611

/-! ## A167168.P4499817704837793221

`A327413(A060756(n+1))`
-/

namespace A167168.P4499817704837793221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327413 (A060756 (n + 1)).toNat

end

end A167168.P4499817704837793221

/-! ## A167168.P5243166842806675146

`A000040(lt[A051174(n+4), A084938(n)])`
-/

namespace A167168.P5243166842806675146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051174 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A167168.P5243166842806675146

/-!
# A167169: a(n) is the number of isomorphism classes of iterated quadratic extensions of the field of rationals of degree 2^n that ramify only at 2.

The programs for A167169, there is no canonical definition to state claims against.
-/

/-! ## A167169.P12864166353685439495

`A310259(n^2^(n-2))`
-/

namespace A167169.P12864166353685439495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310259 (SequenceMachineLib.roundAway ((n : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ))).toNat

end

end A167169.P12864166353685439495

/-!
# A167170: a(6) = 14, for n >= 7, a(n) = a(n-1) + gcd(n, a(n-1)).

The programs for A167170, the canonical program `A167170.P18316752027719039340` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167170 has offset 6).

The definition of A167170 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+gcd(n+6, a(n-1))` (program `A167170.P18316752027719039340`, by `A167170.P18316752027719039340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167170.P18316752027719039340

`a(n-1)+gcd(n+6, a(n-1))` with `a(0)=14`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167170

/-- `a(n-1)+gcd(n+6, a(n-1))` -/
def P18316752027719039340.Spec : Prop :=
  ∀ n, (P18316752027719039340.a n : ℤ) = A167170 (n + 6)

theorem P18316752027719039340.correct : P18316752027719039340.Spec := by
  intro n
  simp only [A167170, Nat.add_sub_cancel]

end A167170

/-! ## A167170.P7909576741033748908

`A084663(n+6)`
-/

namespace A167170.P7909576741033748908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084663 (n + 6)

end

end A167170.P7909576741033748908

namespace A167170

/-- `A084663(n+6)` -/
def P7909576741033748908.Spec : Prop :=
  ∀ n, P7909576741033748908.a n = A167170 (n + 6)

end A167170

/-! ## A167170.P7240705183086025436

`∑[A134744(n+5)]+13`
-/

namespace A167170.P7240705183086025436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134744 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 13

end

end A167170.P7240705183086025436

namespace A167170

/-- `∑[A134744(n+5)]+13` -/
def P7240705183086025436.Spec : Prop :=
  ∀ n, P7240705183086025436.a n = A167170 (n + 6)

end A167170

/-! ## A167170.P11341567442643802138

`record[A084663(A020710(A007599(n)))]`
-/

namespace A167170.P11341567442643802138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084663 (A020710 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167170.P11341567442643802138

namespace A167170

/-- `record[A084663(A020710(A007599(n)))]` -/
def P11341567442643802138.Spec : Prop :=
  ∀ n, P11341567442643802138.a n = A167170 (n + 6)

end A167170

/-! ## A167170.P16701230334807788391

`A167197(2*(n+6))-(n+6)`
-/

namespace A167170.P16701230334807788391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167197 (2 * (n + 6)) - (n + 6 : ℤ)

end

end A167170.P16701230334807788391

namespace A167170

/-- `A167197(2*(n+6))-(n+6)` -/
def P16701230334807788391.Spec : Prop :=
  ∀ n, P16701230334807788391.a n = A167170 (n + 6)

end A167170

/-!
# A167171: Squarefree semiprimes together with primes.

The programs for A167171, the canonical program `A167171.P4186148817536951828` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167171 has offset 1).

The definition of A167171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167171.P4186148817536951828

`eq[1, A353471(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A167171

/-- `eq[1, A353471(n+1)]+1` -/
def P4186148817536951828.Spec : Prop :=
  ∀ n, (P4186148817536951828.a n : ℤ) = A167171 (n + 1)

theorem P4186148817536951828.correct : P4186148817536951828.Spec := by
  intro n
  simp only [A167171, Nat.add_sub_cancel]

end A167171

/-! ## A167171.P12046588940948276884

`filter[A344180(n), A353471(#)]`
-/

namespace A167171.P12046588940948276884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A167171.P12046588940948276884

namespace A167171

/-- `filter[A344180(n), A353471(#)]` -/
def P12046588940948276884.Spec : Prop :=
  ∀ n, P12046588940948276884.a n = A167171 (n + 1)

end A167171

/-! ## A167171.P9317894480729406081

`filter[A005117(n+1), A101040(#)]`
-/

namespace A167171.P9317894480729406081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A167171.P9317894480729406081

namespace A167171

/-- `filter[A005117(n+1), A101040(#)]` -/
def P9317894480729406081.Spec : Prop :=
  ∀ n, P9317894480729406081.a n = A167171 (n + 1)

end A167171

/-! ## A167171.P4199183142389197786

`filter[A374129(n+1), A008966(#)]`
-/

namespace A167171.P4199183142389197786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A167171.P4199183142389197786

namespace A167171

/-- `filter[A374129(n+1), A008966(#)]` -/
def P4199183142389197786.Spec : Prop :=
  ∀ n, P4199183142389197786.a n = A167171 (n + 1)

end A167171

/-! ## A167171.P4705649719808272110

`filter[A374129(n+1), A166486(#)]`
-/

namespace A167171.P4705649719808272110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A167171.P4705649719808272110

namespace A167171

/-- `filter[A374129(n+1), A166486(#)]` -/
def P4705649719808272110.Spec : Prop :=
  ∀ n, P4705649719808272110.a n = A167171 (n + 1)

end A167171

/-! ## A167171.P3207209411217501039

`filter[A374129(n+1), A323154(#)]`
-/

namespace A167171.P3207209411217501039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A167171.P3207209411217501039

namespace A167171

/-- `filter[A374129(n+1), A323154(#)]` -/
def P3207209411217501039.Spec : Prop :=
  ∀ n, P3207209411217501039.a n = A167171 (n + 1)

end A167171

/-! ## A167171.P18210696269588530161

`filter[A374129(n+1), A341625(#)]`
-/

namespace A167171.P18210696269588530161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A167171.P18210696269588530161

namespace A167171

/-- `filter[A374129(n+1), A341625(#)]` -/
def P18210696269588530161.Spec : Prop :=
  ∀ n, P18210696269588530161.a n = A167171 (n + 1)

end A167171

/-! ## A167171.P8330193957054019293

`filter[A374129(n+1), A353471(#)]`
-/

namespace A167171.P8330193957054019293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A167171.P8330193957054019293

namespace A167171

/-- `filter[A374129(n+1), A353471(#)]` -/
def P8330193957054019293.Spec : Prop :=
  ∀ n, P8330193957054019293.a n = A167171 (n + 1)

end A167171

/-! ## A167171.P2843813899711739747

`filter[A374129(n+1), A353559(#)]`
-/

namespace A167171.P2843813899711739747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A167171.P2843813899711739747

namespace A167171

/-- `filter[A374129(n+1), A353559(#)]` -/
def P2843813899711739747.Spec : Prop :=
  ∀ n, P2843813899711739747.a n = A167171 (n + 1)

end A167171

/-! ## A167171.P4803751188256314551

`filter[A374129(n+1), A359550(#)]`
-/

namespace A167171.P4803751188256314551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A167171.P4803751188256314551

namespace A167171

/-- `filter[A374129(n+1), A359550(#)]` -/
def P4803751188256314551.Spec : Prop :=
  ∀ n, P4803751188256314551.a n = A167171 (n + 1)

end A167171

/-! ## A167171.P11996625996157805688

`filter[A374129(n+1), A371087(#)]`
-/

namespace A167171.P11996625996157805688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A167171.P11996625996157805688

namespace A167171

/-- `filter[A374129(n+1), A371087(#)]` -/
def P11996625996157805688.Spec : Prop :=
  ∀ n, P11996625996157805688.a n = A167171 (n + 1)

end A167171

/-! ## A167171.P8770045540107632181

`∪[A006881(n+1), Δ[A007504(n)]]`
-/

namespace A167171.P8770045540107632181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167171.P8770045540107632181

namespace A167171

/-- `∪[A006881(n+1), Δ[A007504(n)]]` -/
def P8770045540107632181.Spec : Prop :=
  ∀ n, (P8770045540107632181.a n : ℤ) = A167171 (n + 1)

end A167171

/-! ## A167171.P1841927693207154181

`∪[A000040(n+1), A006881(n+1)]`
-/

namespace A167171.P1841927693207154181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167171.P1841927693207154181

namespace A167171

/-- `∪[A000040(n+1), A006881(n+1)]` -/
def P1841927693207154181.Spec : Prop :=
  ∀ n, (P1841927693207154181.a n : ℤ) = A167171 (n + 1)

end A167171

/-! ## A167171.P13709557568384595833

`∪[A006881(n+1), A008578(n+2)]`
-/

namespace A167171.P13709557568384595833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167171.P13709557568384595833

namespace A167171

/-- `∪[A006881(n+1), A008578(n+2)]` -/
def P13709557568384595833.Spec : Prop :=
  ∀ n, (P13709557568384595833.a n : ℤ) = A167171 (n + 1)

end A167171

/-! ## A167171.P16144893218921178840

`record[lcm(A006530(n+2), A020639(n+2))]`
-/

namespace A167171.P16144893218921178840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (n + 2)) (A020639 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167171.P16144893218921178840

namespace A167171

/-- `record[lcm(A006530(n+2), A020639(n+2))]` -/
def P16144893218921178840.Spec : Prop :=
  ∀ n, (P16144893218921178840.a n : ℤ) = A167171 (n + 1)

end A167171

/-! ## A167171.P14909250616219182239

`eq[A001221(n+2), A319685(n+2)]+2`
-/

namespace A167171.P14909250616219182239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319685 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A167171.P14909250616219182239

namespace A167171

/-- `eq[A001221(n+2), A319685(n+2)]+2` -/
def P14909250616219182239.Spec : Prop :=
  ∀ n, (P14909250616219182239.a n : ℤ) = A167171 (n + 1)

end A167171

/-! ## A167171.P12341882532000134552

`∪[A006881(n+1), A008864(n+1)-1]`
-/

namespace A167171.P12341882532000134552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167171.P12341882532000134552

namespace A167171

/-- `∪[A006881(n+1), A008864(n+1)-1]` -/
def P12341882532000134552.Spec : Prop :=
  ∀ n, (P12341882532000134552.a n : ℤ) = A167171 (n + 1)

end A167171

/-! ## A167171.P2625308882475933779

`∪[A040976(n+1)+2, A006881(n+1)]`
-/

namespace A167171.P2625308882475933779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167171.P2625308882475933779

namespace A167171

/-- `∪[A040976(n+1)+2, A006881(n+1)]` -/
def P2625308882475933779.Spec : Prop :=
  ∀ n, (P2625308882475933779.a n : ℤ) = A167171 (n + 1)

end A167171

/-! ## A167171.P14804910818191110061

`eq[gcd(2, A001221(n+1)), A001222(n+1)]+1`
-/

namespace A167171.P14804910818191110061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001221 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A167171.P14804910818191110061

namespace A167171

/-- `eq[gcd(2, A001221(n+1)), A001222(n+1)]+1` -/
def P14804910818191110061.Spec : Prop :=
  ∀ n, (P14804910818191110061.a n : ℤ) = A167171 (n + 1)

end A167171

/-! ## A167171.P465706507851033257

`lt[∑{e}[n+2, #²], 3]+2`
-/

namespace A167171.P465706507851033257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 2

end

end A167171.P465706507851033257

namespace A167171

/-- `lt[∑{e}[n+2, #²], 3]+2` -/
def P465706507851033257.Spec : Prop :=
  ∀ n, (P465706507851033257.a n : ℤ) = A167171 (n + 1)

end A167171

/-!
# A167172: Triangle T(n,k) read by rows: T(n,k) = binomial(n, k) + A140356(n, k) - 1.

The programs for A167172, the canonical program `A167172.P4528320979691283848` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167172 has offset 0).

The definition of A167172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167172.P4528320979691283848

`A014473(n)+A004197(n)!`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A167172

/-- `A014473(n)+A004197(n)!` -/
def P4528320979691283848.Spec : Prop :=
  ∀ n, P4528320979691283848.a n = A167172 n

theorem P4528320979691283848.correct : P4528320979691283848.Spec := by
  intro n
  simp only [A167172]

end A167172

/-! ## A167172.P11200374755448478542

`A033312(A004197(n))+A007318(n)`
-/

namespace A167172.P11200374755448478542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 (A004197 n).toNat + A007318 n

end

end A167172.P11200374755448478542

namespace A167172

/-- `A033312(A004197(n))+A007318(n)` -/
def P11200374755448478542.Spec : Prop :=
  ∀ n, P11200374755448478542.a n = A167172 n

theorem P11200374755448478542.correct : P11200374755448478542.Spec := by
  intro n
  simp only [A167172, Nat.add_sub_cancel, A167172.P11200374755448478542.a, A167172.P4528320979691283848.a, A004197, A004197.P2905520585302697030.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A033312, A033312.P12652974073192440444.a, A003983, A003983.P15269842853270651919.a, A157458, A157458.P16856629470642738053.a, A003982, A003982.P6136202056268562101.a, A157454, A157454.P17958483760181188644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167172

/-! ## A167172.P8018038952316783612

`A081123(A157458(n))+A014473(n)`
-/

namespace A167172.P8018038952316783612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A157458 n).toNat + A014473 n

end

end A167172.P8018038952316783612

namespace A167172

/-- `A081123(A157458(n))+A014473(n)` -/
def P8018038952316783612.Spec : Prop :=
  ∀ n, P8018038952316783612.a n = A167172 n

end A167172

/-! ## A167172.P10785318666611270232

`A081123(A157454(n+1))+A014473(n)`
-/

namespace A167172.P10785318666611270232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A157454 (n + 1)).toNat + A014473 n

end

end A167172.P10785318666611270232

namespace A167172

/-- `A081123(A157454(n+1))+A014473(n)` -/
def P10785318666611270232.Spec : Prop :=
  ∀ n, P10785318666611270232.a n = A167172 n

end A167172

/-! ## A167172.P14132708702408863921

`A014473(n)+A174378(n)/A174301(n)`
-/

namespace A167172.P14132708702408863921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014473 n : ℚ) + (A174378 n : ℚ) / (A174301 n : ℚ)

end

end A167172.P14132708702408863921

namespace A167172

/-- `A014473(n)+A174378(n)/A174301(n)` -/
def P14132708702408863921.Spec : Prop :=
  ∀ n, P14132708702408863921.a n = (A167172 n : ℚ)

end A167172

/-! ## A167172.P1475847399783342571

`A014473(n)+A001222(A152714(n))!`
-/

namespace A167172.P1475847399783342571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (Nat.factorial (A001222 (A152714 n).toNat).toNat : ℤ)

end

end A167172.P1475847399783342571

namespace A167172

/-- `A014473(n)+A001222(A152714(n))!` -/
def P1475847399783342571.Spec : Prop :=
  ∀ n, P1475847399783342571.a n = A167172 n

end A167172

/-! ## A167172.P10791081851455670284

`A112624(A152714(n))+A014473(n)`
-/

namespace A167172.P10791081851455670284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A152714 n).toNat + A014473 n

end

end A167172.P10791081851455670284

namespace A167172

/-- `A112624(A152714(n))+A014473(n)` -/
def P10791081851455670284.Spec : Prop :=
  ∀ n, P10791081851455670284.a n = A167172 n

end A167172

/-! ## A167172.P14183934132297558074

`A140356(n)+A014473(n)`
-/

namespace A167172.P14183934132297558074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 n + A014473 n

end

end A167172.P14183934132297558074

namespace A167172

/-- `A140356(n)+A014473(n)` -/
def P14183934132297558074.Spec : Prop :=
  ∀ n, P14183934132297558074.a n = A167172 n

end A167172

/-! ## A167172.P11431044637282376067

`A007318(n)+A140356(n)-1`
-/

namespace A167172.P11431044637282376067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A140356 n - 1)

end

end A167172.P11431044637282376067

namespace A167172

/-- `A007318(n)+A140356(n)-1` -/
def P11431044637282376067.Spec : Prop :=
  ∀ n, P11431044637282376067.a n = A167172 n

end A167172

/-! ## A167172.P2331212612895502442

`A007318(n)-A024000(A140356(n))`
-/

namespace A167172.P2331212612895502442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A024000 (A140356 n).toNat

end

end A167172.P2331212612895502442

namespace A167172

/-- `A007318(n)-A024000(A140356(n))` -/
def P2331212612895502442.Spec : Prop :=
  ∀ n, P2331212612895502442.a n = A167172 n

end A167172

/-!
# A167175: Numbers with a nonprime number of prime divisors (counted with multiplicity).

The programs for A167175, the canonical program `A167175.P17494444165242893148` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167175 has offset 1).

The definition of A167175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167175.P17494444165242893148

`lt[0, tan(A073855(n)²)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A167175

/-- `lt[0, tan(A073855(n)²)]` -/
def P17494444165242893148.Spec : Prop :=
  ∀ n, (P17494444165242893148.a n : ℤ) = A167175 (n + 1)

theorem P17494444165242893148.correct : P17494444165242893148.Spec := by
  intro n
  simp only [A167175, Nat.add_sub_cancel]

end A167175

/-! ## A167175.P15831085252965472111

`record[n*A000007(a(A001222(n)))]` with `a(0)=1`
-/

namespace A167175.P15831085252965472111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * A000007 (f1 (A001222 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167175.P15831085252965472111

namespace A167175

/-- `record[n*A000007(a(A001222(n)))]` -/
def P15831085252965472111.Spec : Prop :=
  ∀ n, P15831085252965472111.a n = A167175 (n + 1)

end A167175

/-! ## A167175.P5416333089560532110

`record[n*A014849(a(A001222(n)))]` with `a(0)=1`
-/

namespace A167175.P5416333089560532110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * A014849 (f1 (A001222 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167175.P5416333089560532110

namespace A167175

/-- `record[n*A014849(a(A001222(n)))]` -/
def P5416333089560532110.Spec : Prop :=
  ∀ n, P5416333089560532110.a n = A167175 (n + 1)

end A167175

/-! ## A167175.P16112859422371609358

`record[n*A015087(a(A001222(n)))]` with `a(0)=1`
-/

namespace A167175.P16112859422371609358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * A015087 (f1 (A001222 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167175.P16112859422371609358

namespace A167175

/-- `record[n*A015087(a(A001222(n)))]` -/
def P16112859422371609358.Spec : Prop :=
  ∀ n, P16112859422371609358.a n = A167175 (n + 1)

end A167175

/-! ## A167175.P5227454627212529507

`lt[A075053(A001222(n+1)), 1]+1`
-/

namespace A167175.P5227454627212529507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A001222 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A167175.P5227454627212529507

namespace A167175

/-- `lt[A075053(A001222(n+1)), 1]+1` -/
def P5227454627212529507.Spec : Prop :=
  ∀ n, (P5227454627212529507.a n : ℤ) = A167175 (n + 1)

end A167175

/-! ## A167175.P8666718588708818106

`lt[A054055(16*a(A001222(n))), 7]` with `a(0)=9`
-/

namespace A167175.P8666718588708818106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  A054055 (16 * f1 (A001222 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A167175.P8666718588708818106

namespace A167175

/-- `lt[A054055(16*a(A001222(n))), 7]` -/
def P8666718588708818106.Spec : Prop :=
  ∀ n, (P8666718588708818106.a n : ℤ) = A167175 (n + 1)

end A167175

/-! ## A167175.P5015518343647766862

`∪[A008578(n+1), A067028(n+1)]`
-/

namespace A167175.P5015518343647766862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167175.P5015518343647766862

namespace A167175

/-- `∪[A008578(n+1), A067028(n+1)]` -/
def P5015518343647766862.Spec : Prop :=
  ∀ n, (P5015518343647766862.a n : ℤ) = A167175 (n + 1)

end A167175

/-! ## A167175.P17472547790678452971

`∪[A067028(n+1), A397574(n+1)]`
-/

namespace A167175.P17472547790678452971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167175.P17472547790678452971

namespace A167175

/-- `∪[A067028(n+1), A397574(n+1)]` -/
def P17472547790678452971.Spec : Prop :=
  ∀ n, (P17472547790678452971.a n : ℤ) = A167175 (n + 1)

end A167175

/-! ## A167175.P10418956758714361003

`∪[A067028(n+1), A323520(n+1)]`
-/

namespace A167175.P10418956758714361003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167175.P10418956758714361003

namespace A167175

/-- `∪[A067028(n+1), A323520(n+1)]` -/
def P10418956758714361003.Spec : Prop :=
  ∀ n, (P10418956758714361003.a n : ℤ) = A167175 (n + 1)

end A167175

/-! ## A167175.P3290468563245131988

`∪[A067028(n+1), A171474(n+1)]`
-/

namespace A167175.P3290468563245131988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167175.P3290468563245131988

namespace A167175

/-- `∪[A067028(n+1), A171474(n+1)]` -/
def P3290468563245131988.Spec : Prop :=
  ∀ n, (P3290468563245131988.a n : ℤ) = A167175 (n + 1)

end A167175

/-!
# A167176: a(n) = n^3 mod 9.

The programs for A167176, the canonical program `A167176.P14018754952049731726` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167176 has offset 0).

The definition of A167176 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3)%9` (program `A167176.P14018754952049731726`, by `A167176.P14018754952049731726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167176.P14018754952049731726

`(n^3)%9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167176

/-- `(n^3)%9` -/
def P14018754952049731726.Spec : Prop :=
  ∀ n, (P14018754952049731726.a n : ℤ) = A167176 n

theorem P14018754952049731726.correct : P14018754952049731726.Spec := by
  intro n
  simp only [A167176]

end A167176

/-!
# A167177: Expansion of 1/((1 +x +x^2)^2 *(1 +x^2 +x^3)^3).

The programs for A167177, the canonical program `A167177.P14175150336859353584` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167177 has offset 0).

The definition of A167177 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x+6x^2+11x^3+19x^4+27x^5+34x^6+38x^7+36x^8+30x^9+21x^10+12x^11+5x^12+x^13))` (program `A167177.P14175150336859353584`, by `A167177.P14175150336859353584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167177.P14175150336859353584

`ogf(1/(1+2x+6x^2+11x^3+19x^4+27x^5+34x^6+38x^7+36x^8+30x^9+21x^10+12x^11+5x^12+x^13))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167177

/-- `ogf(1/(1+2x+6x^2+11x^3+19x^4+27x^5+34x^6+38x^7+36x^8+30x^9+21x^10+12x^11+5x^12+x^13))` -/
def P14175150336859353584.Spec : Prop :=
  ∀ n, P14175150336859353584.a n = A167177 n

theorem P14175150336859353584.correct : P14175150336859353584.Spec := by
  intro n
  simp only [A167177]

end A167177

/-!
# A167179: The number of additional armies one receives in Parker Brothers' (now part of Hasbro) game of Risk for turning in the n-th set of three different or alike cards.

The programs for A167179, the canonical program `A167179.P12901112780225683473` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167179 has offset 1).

The definition of A167179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167179.P12901112780225683473

`ogf((4-2x+x^5+2x^6)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167179

/-- `ogf((4-2x+x^5+2x^6)/(1-2x+x^2))` -/
def P12901112780225683473.Spec : Prop :=
  ∀ n, P12901112780225683473.a n = A167179 (n + 1)

theorem P12901112780225683473.correct : P12901112780225683473.Spec := by
  intro n
  simp only [A167179, Nat.add_sub_cancel]

end A167179

/-!
# A167180: a(n) = pi(n) plus the number of nonprimes less than prime(n).

The programs for A167180, the canonical program `A167180.P16080205514212626559` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167180 has offset 1).

The definition of A167180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167180.P16080205514212626559

`A000720(n+1)+A014689(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A167180

/-- `A000720(n+1)+A014689(n+1)` -/
def P16080205514212626559.Spec : Prop :=
  ∀ n, P16080205514212626559.a n = A167180 (n + 1)

theorem P16080205514212626559.correct : P16080205514212626559.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel]

end A167180

/-! ## A167180.P51421017664825196

`A000720(n+1)+A000040(n+1)-(n+1)`
-/

namespace A167180.P51421017664825196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A000040 (n + 1) - (n + 1 : ℤ)

end

end A167180.P51421017664825196

namespace A167180

/-- `A000720(n+1)+A000040(n+1)-(n+1)` -/
def P51421017664825196.Spec : Prop :=
  ∀ n, P51421017664825196.a n = A167180 (n + 1)

theorem P51421017664825196.correct : P51421017664825196.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P51421017664825196.a, A167180.P16080205514212626559.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P5716742306347940964

`A100486(n+1)-(n+1)`
-/

namespace A167180.P5716742306347940964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1) - (n + 1 : ℤ)

end

end A167180.P5716742306347940964

namespace A167180

/-- `A100486(n+1)-(n+1)` -/
def P5716742306347940964.Spec : Prop :=
  ∀ n, P5716742306347940964.a n = A167180 (n + 1)

theorem P5716742306347940964.correct : P5716742306347940964.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P5716742306347940964.a, A167180.P16080205514212626559.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A100486, A100486.P14505039985477023089.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P4260237381288505694

`Δ[A007504(n)]-A062298(n+1)`
-/

namespace A167180.P4260237381288505694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A062298 (n + 1)

end

end A167180.P4260237381288505694

namespace A167180

/-- `Δ[A007504(n)]-A062298(n+1)` -/
def P4260237381288505694.Spec : Prop :=
  ∀ n, P4260237381288505694.a n = A167180 (n + 1)

end A167180

/-! ## A167180.P15028691234277444159

`A065890(n+1)+A036234(n+1)`
-/

namespace A167180.P15028691234277444159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + A036234 (n + 1)

end

end A167180.P15028691234277444159

namespace A167180

/-- `A065890(n+1)+A036234(n+1)` -/
def P15028691234277444159.Spec : Prop :=
  ∀ n, P15028691234277444159.a n = A167180 (n + 1)

theorem P15028691234277444159.correct : P15028691234277444159.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P15028691234277444159.a, A167180.P16080205514212626559.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A036234, A036234.P2906282677021386800.a, A065890, A065890.P15936493256530540462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P4505279767782360073

`A000040(n+1)-A062298(n+1)`
-/

namespace A167180.P4505279767782360073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A062298 (n + 1)

end

end A167180.P4505279767782360073

namespace A167180

/-- `A000040(n+1)-A062298(n+1)` -/
def P4505279767782360073.Spec : Prop :=
  ∀ n, P4505279767782360073.a n = A167180 (n + 1)

theorem P4505279767782360073.correct : P4505279767782360073.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P4505279767782360073.a, A167180.P16080205514212626559.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P1123961099422371208

`A006093(n+1)-A065855(n+1)`
-/

namespace A167180.P1123961099422371208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A065855 (n + 1)

end

end A167180.P1123961099422371208

namespace A167180

/-- `A006093(n+1)-A065855(n+1)` -/
def P1123961099422371208.Spec : Prop :=
  ∀ n, P1123961099422371208.a n = A167180 (n + 1)

theorem P1123961099422371208.correct : P1123961099422371208.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P1123961099422371208.a, A167180.P16080205514212626559.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006093, A006093.P2906174024863549003.a, A014689, A014689.P6286543075765329050.a, A065855, A065855.P16805213270251966039.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P11003552576076572274

`A111181(n+1)-A097454(n+1)`
-/

namespace A167180.P11003552576076572274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111181 (n + 1) - A097454 (n + 1)

end

end A167180.P11003552576076572274

namespace A167180

/-- `A111181(n+1)-A097454(n+1)` -/
def P11003552576076572274.Spec : Prop :=
  ∀ n, P11003552576076572274.a n = A167180 (n + 1)

theorem P11003552576076572274.correct : P11003552576076572274.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P11003552576076572274.a, A167180.P16080205514212626559.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A097454, A097454.P2717210328983116484.a, A111181, A111181.P943142989482477223.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072731, A072731.P11631103641081885778.a, A065855, A065855.P16805213270251966039.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P17395092456389254481

`A134591(n+1)-A111181(n+1)`
-/

namespace A167180.P17395092456389254481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) - A111181 (n + 1)

end

end A167180.P17395092456389254481

namespace A167180

/-- `A134591(n+1)-A111181(n+1)` -/
def P17395092456389254481.Spec : Prop :=
  ∀ n, P17395092456389254481.a n = A167180 (n + 1)

theorem P17395092456389254481.correct : P17395092456389254481.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P17395092456389254481.a, A167180.P16080205514212626559.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A111181, A111181.P943142989482477223.a, A134591, A134591.P13784663667261059065.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P6872845557048011302

`A014689(n+1)+∑[A010051(n+1)]`
-/

namespace A167180.P6872845557048011302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167180.P6872845557048011302

namespace A167180

/-- `A014689(n+1)+∑[A010051(n+1)]` -/
def P6872845557048011302.Spec : Prop :=
  ∀ n, P6872845557048011302.a n = A167180 (n + 1)

end A167180

/-! ## A167180.P14153583386258560899

`A000040(n+1)-∑[A005171(n+1)]`
-/

namespace A167180.P14153583386258560899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167180.P14153583386258560899

namespace A167180

/-- `A000040(n+1)-∑[A005171(n+1)]` -/
def P14153583386258560899.Spec : Prop :=
  ∀ n, P14153583386258560899.a n = A167180 (n + 1)

end A167180

/-! ## A167180.P8745839568363698890

`A000720(n+1)+A065890(n+1)+1`
-/

namespace A167180.P8745839568363698890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A065890 (n + 1) + 1)

end

end A167180.P8745839568363698890

namespace A167180

/-- `A000720(n+1)+A065890(n+1)+1` -/
def P8745839568363698890.Spec : Prop :=
  ∀ n, P8745839568363698890.a n = A167180 (n + 1)

theorem P8745839568363698890.correct : P8745839568363698890.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P8745839568363698890.a, A167180.P16080205514212626559.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A065890, A065890.P15936493256530540462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P12951875393784156724

`A000720(n+1)+A014692(n+1)-1`
-/

namespace A167180.P12951875393784156724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A014692 (n + 1) - 1)

end

end A167180.P12951875393784156724

namespace A167180

/-- `A000720(n+1)+A014692(n+1)-1` -/
def P12951875393784156724.Spec : Prop :=
  ∀ n, P12951875393784156724.a n = A167180 (n + 1)

theorem P12951875393784156724.correct : P12951875393784156724.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P12951875393784156724.a, A167180.P16080205514212626559.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A014692, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P14602587414983943448

`A014689(n+1)+A036234(n+1)-1`
-/

namespace A167180.P14602587414983943448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (A036234 (n + 1) - 1)

end

end A167180.P14602587414983943448

namespace A167180

/-- `A014689(n+1)+A036234(n+1)-1` -/
def P14602587414983943448.Spec : Prop :=
  ∀ n, P14602587414983943448.a n = A167180 (n + 1)

theorem P14602587414983943448.correct : P14602587414983943448.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P14602587414983943448.a, A167180.P16080205514212626559.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A036234, A036234.P2906282677021386800.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P16612446301134030354

`A000040(n+1)-(A065855(n+1)+1)`
-/

namespace A167180.P16612446301134030354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A065855 (n + 1) + 1)

end

end A167180.P16612446301134030354

namespace A167180

/-- `A000040(n+1)-(A065855(n+1)+1)` -/
def P16612446301134030354.Spec : Prop :=
  ∀ n, P16612446301134030354.a n = A167180 (n + 1)

theorem P16612446301134030354.correct : P16612446301134030354.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P16612446301134030354.a, A167180.P16080205514212626559.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A065855, A065855.P16805213270251966039.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P4311006648802754939

`A006093(n+1)+1-A062298(n+1)`
-/

namespace A167180.P4311006648802754939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A062298 (n + 1))

end

end A167180.P4311006648802754939

namespace A167180

/-- `A006093(n+1)+1-A062298(n+1)` -/
def P4311006648802754939.Spec : Prop :=
  ∀ n, P4311006648802754939.a n = A167180 (n + 1)

theorem P4311006648802754939.correct : P4311006648802754939.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P4311006648802754939.a, A167180.P16080205514212626559.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006093, A006093.P2906174024863549003.a, A014689, A014689.P6286543075765329050.a, A062298, A062298.P8226643735375377344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P5570380709234372274

`A008864(n+1)-(A062298(n+1)+1)`
-/

namespace A167180.P5570380709234372274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A062298 (n + 1) + 1)

end

end A167180.P5570380709234372274

namespace A167180

/-- `A008864(n+1)-(A062298(n+1)+1)` -/
def P5570380709234372274.Spec : Prop :=
  ∀ n, P5570380709234372274.a n = A167180 (n + 1)

theorem P5570380709234372274.correct : P5570380709234372274.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P5570380709234372274.a, A167180.P16080205514212626559.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A008864, A008864.P9177617808325052279.a, A014689, A014689.P6286543075765329050.a, A062298, A062298.P8226643735375377344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P4366022741796162273

`A040976(n+1)+2-A062298(n+1)`
-/

namespace A167180.P4366022741796162273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (2 - A062298 (n + 1))

end

end A167180.P4366022741796162273

namespace A167180

/-- `A040976(n+1)+2-A062298(n+1)` -/
def P4366022741796162273.Spec : Prop :=
  ∀ n, P4366022741796162273.a n = A167180 (n + 1)

theorem P4366022741796162273.correct : P4366022741796162273.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P4366022741796162273.a, A167180.P16080205514212626559.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A040976, A040976.P11599754272797435513.a, A062298, A062298.P8226643735375377344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P6125487285856088085

`A000720(n+1)+A006093(n+1)-n`
-/

namespace A167180.P6125487285856088085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A006093 (n + 1) - (n : ℤ))

end

end A167180.P6125487285856088085

namespace A167180

/-- `A000720(n+1)+A006093(n+1)-n` -/
def P6125487285856088085.Spec : Prop :=
  ∀ n, P6125487285856088085.a n = A167180 (n + 1)

theorem P6125487285856088085.correct : P6125487285856088085.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P6125487285856088085.a, A167180.P16080205514212626559.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006093, A006093.P2906174024863549003.a, A014689, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-! ## A167180.P13960413970685695804

`A095116(n+1)-(A062298(n+1)+n)`
-/

namespace A167180.P13960413970685695804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - (A062298 (n + 1) + (n : ℤ))

end

end A167180.P13960413970685695804

namespace A167180

/-- `A095116(n+1)-(A062298(n+1)+n)` -/
def P13960413970685695804.Spec : Prop :=
  ∀ n, P13960413970685695804.a n = A167180 (n + 1)

theorem P13960413970685695804.correct : P13960413970685695804.Spec := by
  intro n
  simp only [A167180, Nat.add_sub_cancel, A167180.P13960413970685695804.a, A167180.P16080205514212626559.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A062298, A062298.P8226643735375377344.a, A095116, A095116.P2789422422958858773.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167180

/-!
# A167181: Squarefree numbers such that all prime factors are == 3 mod 4.

The programs for A167181, the canonical program `A167181.P7167596632618904553` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167181 has offset 1).

The definition of A167181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167181.P7167596632618904553

`filter[A004614(n+1), A008966(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A167181

/-- `filter[A004614(n+1), A008966(#)]` -/
def P7167596632618904553.Spec : Prop :=
  ∀ n, P7167596632618904553.a n = A167181 (n + 1)

theorem P7167596632618904553.correct : P7167596632618904553.Spec := by
  intro n
  simp only [A167181, Nat.add_sub_cancel]

end A167181

/-! ## A167181.P2657803753636575082

`filter[A004614(n+1), A359590(#)]`
-/

namespace A167181.P2657803753636575082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A167181.P2657803753636575082

namespace A167181

/-- `filter[A004614(n+1), A359590(#)]` -/
def P2657803753636575082.Spec : Prop :=
  ∀ n, P2657803753636575082.a n = A167181 (n + 1)

end A167181

/-! ## A167181.P14019052826497766372

`filter[A004614(n+1), A359592(#)]`
-/

namespace A167181.P14019052826497766372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A167181.P14019052826497766372

namespace A167181

/-- `filter[A004614(n+1), A359592(#)]` -/
def P14019052826497766372.Spec : Prop :=
  ∀ n, P14019052826497766372.a n = A167181 (n + 1)

end A167181

/-! ## A167181.P18255951047302818813

`filter[A004614(n+1), A359834(#)]`
-/

namespace A167181.P18255951047302818813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A167181.P18255951047302818813

namespace A167181

/-- `filter[A004614(n+1), A359834(#)]` -/
def P18255951047302818813.Spec : Prop :=
  ∀ n, P18255951047302818813.a n = A167181 (n + 1)

end A167181

/-! ## A167181.P12491868114834132654

`∩[A004614(n+1), A005117(n+1)]`
-/

namespace A167181.P12491868114834132654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167181.P12491868114834132654

namespace A167181

/-- `∩[A004614(n+1), A005117(n+1)]` -/
def P12491868114834132654.Spec : Prop :=
  ∀ n, (P12491868114834132654.a n : ℤ) = A167181 (n + 1)

end A167181

/-! ## A167181.P13036396945631123420

`filter[2*n+1, A329272(#)]`
-/

namespace A167181.P13036396945631123420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329272 (f1 j) = 1) n)

end

end A167181.P13036396945631123420

namespace A167181

/-- `filter[2*n+1, A329272(#)]` -/
def P13036396945631123420.Spec : Prop :=
  ∀ n, (P13036396945631123420.a n : ℤ) = A167181 (n + 1)

end A167181

/-! ## A167181.P3755511852204346579

`filter[A004614(n+1), A323154(#)]`
-/

namespace A167181.P3755511852204346579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A167181.P3755511852204346579

namespace A167181

/-- `filter[A004614(n+1), A323154(#)]` -/
def P3755511852204346579.Spec : Prop :=
  ∀ n, P3755511852204346579.a n = A167181 (n + 1)

end A167181

/-! ## A167181.P661311837248627553

`filter[A004614(n+1), A323239(#)]`
-/

namespace A167181.P661311837248627553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A167181.P661311837248627553

namespace A167181

/-- `filter[A004614(n+1), A323239(#)]` -/
def P661311837248627553.Spec : Prop :=
  ∀ n, P661311837248627553.a n = A167181 (n + 1)

end A167181

/-! ## A167181.P10153970660595443450

`filter[A004614(n+1), A353559(#)]`
-/

namespace A167181.P10153970660595443450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A167181.P10153970660595443450

namespace A167181

/-- `filter[A004614(n+1), A353559(#)]` -/
def P10153970660595443450.Spec : Prop :=
  ∀ n, P10153970660595443450.a n = A167181 (n + 1)

end A167181

/-! ## A167181.P14024304324403696218

`filter[A004614(n+1), A353627(#)]`
-/

namespace A167181.P14024304324403696218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A167181.P14024304324403696218

namespace A167181

/-- `filter[A004614(n+1), A353627(#)]` -/
def P14024304324403696218.Spec : Prop :=
  ∀ n, P14024304324403696218.a n = A167181 (n + 1)

end A167181

/-! ## A167181.P7337220318178350064

`filter[A004144(n+1), A323239(#)]`
-/

namespace A167181.P7337220318178350064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A167181.P7337220318178350064

namespace A167181

/-- `filter[A004144(n+1), A323239(#)]` -/
def P7337220318178350064.Spec : Prop :=
  ∀ n, P7337220318178350064.a n = A167181 (n + 1)

end A167181

/-! ## A167181.P15315352601795114907

`filter[A081754(n+1), A323239(#)]`
-/

namespace A167181.P15315352601795114907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A167181.P15315352601795114907

namespace A167181

/-- `filter[A081754(n+1), A323239(#)]` -/
def P15315352601795114907.Spec : Prop :=
  ∀ n, P15315352601795114907.a n = A167181 (n + 1)

end A167181

/-! ## A167181.P6188094458344853465

`∩[A004144(n+1), A056911(n+1)]`
-/

namespace A167181.P6188094458344853465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167181.P6188094458344853465

namespace A167181

/-- `∩[A004144(n+1), A056911(n+1)]` -/
def P6188094458344853465.Spec : Prop :=
  ∀ n, (P6188094458344853465.a n : ℤ) = A167181 (n + 1)

end A167181

/-! ## A167181.P1771624838901817305

`∩[A004614(n+1), A056911(n+1)]`
-/

namespace A167181.P1771624838901817305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167181.P1771624838901817305

namespace A167181

/-- `∩[A004614(n+1), A056911(n+1)]` -/
def P1771624838901817305.Spec : Prop :=
  ∀ n, (P1771624838901817305.a n : ℤ) = A167181 (n + 1)

end A167181

/-! ## A167181.P18044011573185815762

`∩[A056911(n+1), A081754(n+1)]`
-/

namespace A167181.P18044011573185815762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167181.P18044011573185815762

namespace A167181

/-- `∩[A056911(n+1), A081754(n+1)]` -/
def P18044011573185815762.Spec : Prop :=
  ∀ n, (P18044011573185815762.a n : ℤ) = A167181 (n + 1)

end A167181

/-! ## A167181.P16684157343220481336

`filter[A268377(n+1), A323239(#)]`
-/

namespace A167181.P16684157343220481336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A167181.P16684157343220481336

namespace A167181

/-- `filter[A268377(n+1), A323239(#)]` -/
def P16684157343220481336.Spec : Prop :=
  ∀ n, P16684157343220481336.a n = A167181 (n + 1)

end A167181

/-! ## A167181.P16961849356805851642

`∩[A056911(n+1), A268377(n+1)]`
-/

namespace A167181.P16961849356805851642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167181.P16961849356805851642

namespace A167181

/-- `∩[A056911(n+1), A268377(n+1)]` -/
def P16961849356805851642.Spec : Prop :=
  ∀ n, (P16961849356805851642.a n : ℤ) = A167181 (n + 1)

end A167181

/-! ## A167181.P10500346032616835712

`∩[A004614(n+1), A084349(n+1)]`
-/

namespace A167181.P10500346032616835712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167181.P10500346032616835712

namespace A167181

/-- `∩[A004614(n+1), A084349(n+1)]` -/
def P10500346032616835712.Spec : Prop :=
  ∀ n, (P10500346032616835712.a n : ℤ) = A167181 (n + 1)

end A167181

/-! ## A167181.P12763348786075831006

`∩[A084349(n+1), A200982(n+1)]`
-/

namespace A167181.P12763348786075831006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167181.P12763348786075831006

namespace A167181

/-- `∩[A084349(n+1), A200982(n+1)]` -/
def P12763348786075831006.Spec : Prop :=
  ∀ n, (P12763348786075831006.a n : ℤ) = A167181 (n + 1)

end A167181

/-! ## A167181.P3778754963962940278

`∩[A004614(n+1), A091428(n+1)]`
-/

namespace A167181.P3778754963962940278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167181.P3778754963962940278

namespace A167181

/-- `∩[A004614(n+1), A091428(n+1)]` -/
def P3778754963962940278.Spec : Prop :=
  ∀ n, (P3778754963962940278.a n : ℤ) = A167181 (n + 1)

end A167181

/-!
# A167182: a(0) = 1, a(1) = 2; for n >= 2, a(n) = 2^A042950(n-2).

The programs for A167182, the canonical program `A167182.P6547219592406288494` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167182 has offset 0).

The definition of A167182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167182.P6547219592406288494

`a(n-1)²` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167182

/-- `a(n-1)²` -/
def P6547219592406288494.Spec : Prop :=
  ∀ n, (P6547219592406288494.a n : ℤ) = A167182 n

theorem P6547219592406288494.correct : P6547219592406288494.Spec := by
  intro n
  simp only [A167182]

end A167182

/-! ## A167182.P9673273064064904866

`a(n-1)^2` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A167182.P9673273064064904866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 1) ^ 2

end

end A167182.P9673273064064904866

namespace A167182

/-- `a(n-1)^2` -/
def P9673273064064904866.Spec : Prop :=
  ∀ n, (P9673273064064904866.a n : ℤ) = A167182 n

theorem P9673273064064904866.correct : P9673273064064904866.Spec := by
  intro n
  simp only [A167182, Nat.add_sub_cancel, A167182.P9673273064064904866.a, A167182.P6547219592406288494.a, SequenceMachineLib.memo_apply]

end A167182

/-! ## A167182.P3636585419987768388

`2^round(3*2^(n-3))`
-/

namespace A167182.P3636585419987768388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)) : ℤ)

end

end A167182.P3636585419987768388

namespace A167182

/-- `2^round(3*2^(n-3))` -/
def P3636585419987768388.Spec : Prop :=
  ∀ n, P3636585419987768388.a n = (A167182 n : ℚ)

end A167182

/-! ## A167182.P4973814649738328200

`a(n-1)*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A167182.P4973814649738328200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 1) * a (n - 1)

end

end A167182.P4973814649738328200

namespace A167182

/-- `a(n-1)*a(n-1)` -/
def P4973814649738328200.Spec : Prop :=
  ∀ n, (P4973814649738328200.a n : ℤ) = A167182 n

theorem P4973814649738328200.correct : P4973814649738328200.Spec := by
  intro n
  simp only [A167182, Nat.add_sub_cancel, A167182.P4973814649738328200.a, A167182.P6547219592406288494.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A167182

/-! ## A167182.P13841509766159630230

`record[2^A251745(n)]`
-/

namespace A167182.P13841509766159630230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A251745 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167182.P13841509766159630230

namespace A167182

/-- `record[2^A251745(n)]` -/
def P13841509766159630230.Spec : Prop :=
  ∀ n, P13841509766159630230.a n = (A167182 n : ℚ)

end A167182

/-!
# A167184: Smallest prime power >= n that is not prime.

The programs for A167184, there is no canonical definition to state claims against.
-/

/-! ## A167184.P6790491249729049244

`A377468(A000015(n+1))`
-/

namespace A167184.P6790491249729049244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (A000015 (n + 1)).toNat

end

end A167184.P6790491249729049244

/-! ## A167184.P16382126254168579141

`A080695(A377468(n+1))`
-/

namespace A167184.P16382126254168579141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080695 (A377468 (n + 1)).toNat

end

end A167184.P16382126254168579141

/-! ## A167184.P7080950485899990876

`A377468(A378370(n+1)+n+1)`
-/

namespace A167184.P7080950485899990876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (A378370 (n + 1) + (n + 1 : ℤ)).toNat

end

end A167184.P7080950485899990876

/-! ## A167184.P11808978310179049780

`filter[A377468(n+1), A370702(#)]`
-/

namespace A167184.P11808978310179049780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370702 (f1 j).toNat = 1) n)

end

end A167184.P11808978310179049780

/-! ## A167184.P894642647267319710

`filter[A377468(n+1), A399253(#)]`
-/

namespace A167184.P894642647267319710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A399253 (f1 j).toNat = 1) n)

end

end A167184.P894642647267319710

/-!
# A167185: Largest prime power <= n that is not prime.

The programs for A167185, there is no canonical definition to state claims against.
-/

/-! ## A167185.P754857443836319504

`1-A069585(n+1)+n`
-/

namespace A167185.P754857443836319504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A069585 (n + 1) + (n : ℤ)

end

end A167185.P754857443836319504

/-! ## A167185.P9583657597234717696

`A025475(∑[round(n/∏{p}[n+1, #+n])]+1)`
-/

namespace A167185.P9583657597234717696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), (p + n) : ℕ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A167185.P9583657597234717696

/-! ## A167185.P8891683712962255773

`A249435(∑[round(n/∏{p}[n+1, #+n])]+1)+1`
-/

namespace A167185.P8891683712962255773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), (p + n) : ℕ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + 1

end

end A167185.P8891683712962255773

/-! ## A167185.P7633027108766688468

`A025475(A085501(n+1))`
-/

namespace A167185.P7633027108766688468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (A085501 (n + 1)).toNat

end

end A167185.P7633027108766688468

/-! ## A167185.P9107319151494308960

`A025475(A069637(n+1)+1)`
-/

namespace A167185.P9107319151494308960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (A069637 (n + 1) + 1).toNat

end

end A167185.P9107319151494308960

/-! ## A167185.P16161909276172707365

`A025475(∑[char[A249435(n+1)]])`
-/

namespace A167185.P16161909276172707365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167185.P16161909276172707365

/-! ## A167185.P8322260000398335786

`A025475(n+1-A085972(n+1))`
-/

namespace A167185.P8322260000398335786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 ((n + 1 : ℤ) - A085972 (n + 1)).toNat

end

end A167185.P8322260000398335786

/-! ## A167185.P5372587765695882191

`A025475(A065515(n+1)-A000720(n+1))`
-/

namespace A167185.P5372587765695882191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (A065515 (n + 1) - A000720 (n + 1)).toNat

end

end A167185.P5372587765695882191

/-!
# A167186: Record gaps between nonprime prime powers.

The programs for A167186, there is no canonical definition to state claims against.
-/

/-! ## A167186.P6990970740060222343

`A167189(n+1)-A167188(n+1)`
-/

namespace A167186.P6990970740060222343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167189 (n + 1) - A167188 (n + 1)

end

end A167186.P6990970740060222343

/-! ## A167186.P6435184154601546155

`record[A053707(n+1)]`
-/

namespace A167186.P6435184154601546155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167186.P6435184154601546155

/-! ## A167186.P14388623217353886154

`record[Δ[A025475(n+1)]]`
-/

namespace A167186.P14388623217353886154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167186.P14388623217353886154

/-! ## A167186.P9201627316231240140

`record[Δ[A249435(n+1)]]`
-/

namespace A167186.P9201627316231240140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167186.P9201627316231240140

/-! ## A167186.P6821727152446070101

`record[A025475(n+2)-A025475(n+1)]`
-/

namespace A167186.P6821727152446070101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2) - A025475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167186.P6821727152446070101

/-! ## A167186.P5781213897938505948

`record[A249435(n+2)-A249435(n+1)]`
-/

namespace A167186.P5781213897938505948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 2) - A249435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167186.P5781213897938505948

/-!
# A167187: Primes obtained from other primes by prefixing a 7.

The programs for A167187, there is no canonical definition to state claims against.
-/

/-! ## A167187.P15067136026159824217

`p?[A004086(A017353(A004087(n+1)))]`
-/

namespace A167187.P15067136026159824217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A017353 (A004087 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167187.P15067136026159824217

/-!
# A167188: Smaller prime power associated with record gap in A167186.

The programs for A167188, there is no canonical definition to state claims against.
-/

/-! ## A167188.P5056130721484077823

`A167189(n+1)-A167186(n+1)`
-/

namespace A167188.P5056130721484077823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167189 (n + 1) - A167186 (n + 1)

end

end A167188.P5056130721484077823

/-! ## A167188.P4070978314797360931

`A167189(n+1)-record[A053707(n+1)]`
-/

namespace A167188.P4070978314797360931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167189 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167188.P4070978314797360931

/-! ## A167188.P11272432983099928582

`A167189(n+1)-record[Δ[A025475(n+1)]]`
-/

namespace A167188.P11272432983099928582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167189 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167188.P11272432983099928582

/-! ## A167188.P7137486400522878024

`A167189(n+1)-record[Δ[A249435(n+1)]]`
-/

namespace A167188.P7137486400522878024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167189 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167188.P7137486400522878024

/-! ## A167188.P17884570240605466479

`A167189(n+1)-record[A025475(n+2)-A025475(n+1)]`
-/

namespace A167188.P17884570240605466479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2) - A025475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167189 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167188.P17884570240605466479

/-!
# A167189: Larger prime power associated with record gap in A167186.

The programs for A167189, there is no canonical definition to state claims against.
-/

/-! ## A167189.P16037256685236113029

`A167188(n+1)+A167186(n+1)`
-/

namespace A167189.P16037256685236113029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167188 (n + 1) + A167186 (n + 1)

end

end A167189.P16037256685236113029

/-! ## A167189.P16085707317196897908

`A167188(n+1)+record[A053707(n+1)]`
-/

namespace A167189.P16085707317196897908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167188 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167189.P16085707317196897908

/-! ## A167189.P17049293737687812527

`A167188(n+1)+record[Δ[A025475(n+1)]]`
-/

namespace A167189.P17049293737687812527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167188 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167189.P17049293737687812527

/-! ## A167189.P18416423591288072818

`A167188(n+1)+record[Δ[A249435(n+1)]]`
-/

namespace A167189.P18416423591288072818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167188 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167189.P18416423591288072818

/-! ## A167189.P5945493332184430851

`A167188(n+1)+record[A025475(n+2)-A025475(n+1)]`
-/

namespace A167189.P5945493332184430851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2) - A025475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167188 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167189.P5945493332184430851

/-!
# A167191: a(n) = 4*n*(1 + 45*n + 620*n^2).

The programs for A167191, the canonical program `A167191.P14921985383433869934` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167191 has offset 1).

The definition of A167191 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)*(1+45*(n+1)+620*(n+1)²)` (program `A167191.P14921985383433869934`, by `A167191.P14921985383433869934.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167191.P14921985383433869934

`4*(n+1)*(1+45*(n+1)+620*(n+1)²)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167191

/-- `4*(n+1)*(1+45*(n+1)+620*(n+1)²)` -/
def P14921985383433869934.Spec : Prop :=
  ∀ n, (P14921985383433869934.a n : ℤ) = A167191 (n + 1)

theorem P14921985383433869934.correct : P14921985383433869934.Spec := by
  intro n
  simp only [A167191, Nat.add_sub_cancel]

end A167191

/-!
# A167192: Triangle read by rows: T(n,k) = (n-k)/gcd(n,k), 1 <= k <= n.

The programs for A167192, the canonical program `A167192.P5021356062370593471` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167192 has offset 1).

The definition of A167192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167192.P5021356062370593471

`(row(n)+1-(col(n)+1))/gcd(row(n)+1, col(n)+1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167192

/-- `(row(n)+1-(col(n)+1))/gcd(row(n)+1, col(n)+1)` -/
def P5021356062370593471.Spec : Prop :=
  ∀ n, P5021356062370593471.a n = (A167192 (n + 1) : ℚ)

end A167192

/-! ## A167192.P693804910868085201

`lcm(col(n)+1, row(n)-col(n))/(col(n)+1)`
-/

namespace A167192.P693804910868085201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (SequenceMachineLib.triCol n + 1 : ℤ) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A167192.P693804910868085201

namespace A167192

/-- `lcm(col(n)+1, row(n)-col(n))/(col(n)+1)` -/
def P693804910868085201.Spec : Prop :=
  ∀ n, P693804910868085201.a n = (A167192 (n + 1) : ℚ)

end A167192

/-! ## A167192.P12794644904778508257

`(row(n)-col(n))/gcd(col(n)+1, row(n)-col(n))`
-/

namespace A167192.P12794644904778508257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) / (Int.gcd (SequenceMachineLib.triCol n + 1 : ℤ) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) : ℚ)

end

end A167192.P12794644904778508257

namespace A167192

/-- `(row(n)-col(n))/gcd(col(n)+1, row(n)-col(n))` -/
def P12794644904778508257.Spec : Prop :=
  ∀ n, P12794644904778508257.a n = (A167192 (n + 1) : ℚ)

end A167192

/-! ## A167192.P3820233557541087788

`A025581(n)/A050873(n+1)`
-/

namespace A167192.P3820233557541087788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) / (A050873 (n + 1) : ℚ)

end

end A167192.P3820233557541087788

namespace A167192

/-- `A025581(n)/A050873(n+1)` -/
def P3820233557541087788.Spec : Prop :=
  ∀ n, P3820233557541087788.a n = (A167192 (n + 1) : ℚ)

end A167192

/-! ## A167192.P15421347857005560229

`A054531(n+1)-A164306(n+1)`
-/

namespace A167192.P15421347857005560229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) - A164306 (n + 1)

end

end A167192.P15421347857005560229

namespace A167192

/-- `A054531(n+1)-A164306(n+1)` -/
def P15421347857005560229.Spec : Prop :=
  ∀ n, P15421347857005560229.a n = A167192 (n + 1)

end A167192

/-! ## A167192.P13119739336014621803

`(A004736(n+1)-1)/A050873(n+1)`
-/

namespace A167192.P13119739336014621803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1 : ℚ) / (A050873 (n + 1) : ℚ)

end

end A167192.P13119739336014621803

namespace A167192

/-- `(A004736(n+1)-1)/A050873(n+1)` -/
def P13119739336014621803.Spec : Prop :=
  ∀ n, P13119739336014621803.a n = (A167192 (n + 1) : ℚ)

end A167192

/-! ## A167192.P10482720781216615077

`A025581(n)/gcd(A002024(n+1), A025581(n))`
-/

namespace A167192.P10482720781216615077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) / (Int.gcd (A002024 (n + 1)) (A025581 n) : ℚ)

end

end A167192.P10482720781216615077

namespace A167192

/-- `A025581(n)/gcd(A002024(n+1), A025581(n))` -/
def P10482720781216615077.Spec : Prop :=
  ∀ n, P10482720781216615077.a n = (A167192 (n + 1) : ℚ)

end A167192

/-! ## A167192.P3026324176281004709

`A054531(n+1)+A024000(A164306(n+1)+1)`
-/

namespace A167192.P3026324176281004709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) + A024000 (A164306 (n + 1) + 1).toNat

end

end A167192.P3026324176281004709

namespace A167192

/-- `A054531(n+1)+A024000(A164306(n+1)+1)` -/
def P3026324176281004709.Spec : Prop :=
  ∀ n, P3026324176281004709.a n = A167192 (n + 1)

end A167192

/-! ## A167192.P940974088473344827

`A054531(n+1)+A054531(n+1)-A400755(n+1)`
-/

namespace A167192.P940974088473344827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) + A054531 (n + 1) - A400755 (n + 1)

end

end A167192.P940974088473344827

namespace A167192

/-- `A054531(n+1)+A054531(n+1)-A400755(n+1)` -/
def P940974088473344827.Spec : Prop :=
  ∀ n, P940974088473344827.a n = A167192 (n + 1)

end A167192

/-! ## A167192.P12948380078428270207

`(A002024(n+1)-A002260(n+1))/A050873(n+1)`
-/

namespace A167192.P12948380078428270207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - A002260 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A167192.P12948380078428270207

namespace A167192

/-- `(A002024(n+1)-A002260(n+1))/A050873(n+1)` -/
def P12948380078428270207.Spec : Prop :=
  ∀ n, P12948380078428270207.a n = (A167192 (n + 1) : ℚ)

end A167192

/-! ## A167192.P791934504168827735

`A054531(n+1)-A051537(n+1)/A054531(n+1)`
-/

namespace A167192.P791934504168827735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054531 (n + 1) : ℚ) - (A051537 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A167192.P791934504168827735

namespace A167192

/-- `A054531(n+1)-A051537(n+1)/A054531(n+1)` -/
def P791934504168827735.Spec : Prop :=
  ∀ n, P791934504168827735.a n = (A167192 (n + 1) : ℚ)

end A167192

/-! ## A167192.P14594286778656896478

`A051537(n+1)/A164306(n+1)-A164306(n+1)`
-/

namespace A167192.P14594286778656896478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051537 (n + 1) : ℚ) / (A164306 (n + 1) : ℚ) - (A164306 (n + 1) : ℚ)

end

end A167192.P14594286778656896478

namespace A167192

/-- `A051537(n+1)/A164306(n+1)-A164306(n+1)` -/
def P14594286778656896478.Spec : Prop :=
  ∀ n, P14594286778656896478.a n = (A167192 (n + 1) : ℚ)

end A167192

/-! ## A167192.P656867794255641589

`A277227(n+2)-A164306(n+1)`
-/

namespace A167192.P656867794255641589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 2) - A164306 (n + 1)

end

end A167192.P656867794255641589

namespace A167192

/-- `A277227(n+2)-A164306(n+1)` -/
def P656867794255641589.Spec : Prop :=
  ∀ n, P656867794255641589.a n = A167192 (n + 1)

end A167192

/-! ## A167192.P13919083244574828737

`A277227(n+2)-A051537(n+1)/A277227(n+2)`
-/

namespace A167192.P13919083244574828737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277227 (n + 2) : ℚ) - (A051537 (n + 1) : ℚ) / (A277227 (n + 2) : ℚ)

end

end A167192.P13919083244574828737

namespace A167192

/-- `A277227(n+2)-A051537(n+1)/A277227(n+2)` -/
def P13919083244574828737.Spec : Prop :=
  ∀ n, P13919083244574828737.a n = (A167192 (n + 1) : ℚ)

end A167192

/-! ## A167192.P13630332188730481352

`A057554(2*(n+1))/gcd(A002024(n+2), A057554(2*(n+1)))`
-/

namespace A167192.P13630332188730481352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057554 (2 * (n + 1)) : ℚ) / (Int.gcd (A002024 (n + 2)) (A057554 (2 * (n + 1))) : ℚ)

end

end A167192.P13630332188730481352

namespace A167192

/-- `A057554(2*(n+1))/gcd(A002024(n+2), A057554(2*(n+1)))` -/
def P13630332188730481352.Spec : Prop :=
  ∀ n, P13630332188730481352.a n = (A167192 (n + 1) : ℚ)

end A167192

/-! ## A167192.P6982577154187539687

`∑[char[∑[n]]]-A226314(n+1)`
-/

namespace A167192.P6982577154187539687
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A226314 (n + 1)

end

end A167192.P6982577154187539687

namespace A167192

/-- `∑[char[∑[n]]]-A226314(n+1)` -/
def P6982577154187539687.Spec : Prop :=
  ∀ n, P6982577154187539687.a n = A167192 (n + 1)

end A167192

/-! ## A167192.P9047464805195303762

`A003056(n)+1-A226314(n+1)`
-/

namespace A167192.P9047464805195303762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (1 - A226314 (n + 1))

end

end A167192.P9047464805195303762

namespace A167192

/-- `A003056(n)+1-A226314(n+1)` -/
def P9047464805195303762.Spec : Prop :=
  ∀ n, P9047464805195303762.a n = A167192 (n + 1)

end A167192

/-! ## A167192.P4906945807598221881

`abs(A002024(n+1)-A226314(n+1))`
-/

namespace A167192.P4906945807598221881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002024 (n + 1) - A226314 (n + 1)|

end

end A167192.P4906945807598221881

namespace A167192

/-- `abs(A002024(n+1)-A226314(n+1))` -/
def P4906945807598221881.Spec : Prop :=
  ∀ n, P4906945807598221881.a n = A167192 (n + 1)

end A167192

/-! ## A167192.P295144270391069593

`A002487(A355090(n))`
-/

namespace A167192.P295144270391069593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A355090 n).toNat

end

end A167192.P295144270391069593

namespace A167192

/-- `A002487(A355090(n))` -/
def P295144270391069593.Spec : Prop :=
  ∀ n, P295144270391069593.a n = A167192 (n + 1)

end A167192

/-!
# A167193: a(n) = (1/3)*(1 - (-2)^n + 3*(-1)^n ) = (-1)^(n+1)*A167030(n).

The programs for A167193, the canonical program `A167193.P13646511038953808611` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167193 has offset 0).

The definition of A167193 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^(n+1)*A167030(n)` (program `A167193.P13646511038953808611`, by `A167193.P13646511038953808611.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167193.P2248193220839234134

`ogf((1+2x-x^2)/(1+2x-x^2-2x^3))`
-/

namespace A167193.P2248193220839234134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 2, -1, -2] n

end

end A167193.P2248193220839234134

namespace A167193

/-- `ogf((1+2x-x^2)/(1+2x-x^2-2x^3))` -/
def P2248193220839234134.Spec : Prop :=
  ∀ n, P2248193220839234134.a n = A167193 n

end A167193

/-! ## A167193.P13646511038953808611

`(-1)^(n+1)*A167030(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167193

/-- `(-1)^(n+1)*A167030(n)` -/
def P13646511038953808611.Spec : Prop :=
  ∀ n, P13646511038953808611.a n = A167193 n

theorem P13646511038953808611.correct : P13646511038953808611.Spec := by
  intro n
  simp only [A167193]

end A167193

/-! ## A167193.P6124736179443446240

`1/3*(1-(-2)^n+3*(-1)^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167193.P6124736179443446240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (1 - (-2) ^ n + 3 * (-1) ^ n : ℚ)

end

end A167193.P6124736179443446240

namespace A167193

/-- `1/3*(1-(-2)^n+3*(-1)^n)` -/
def P6124736179443446240.Spec : Prop :=
  ∀ n, P6124736179443446240.a n = (A167193 n : ℚ)

end A167193

/-! ## A167193.P3201633110279101856

`∑[ogf((1+2x-x^2)/(1+3x+2x^2))]`
-/

namespace A167193.P3201633110279101856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167193.P3201633110279101856

namespace A167193

/-- `∑[ogf((1+2x-x^2)/(1+3x+2x^2))]` -/
def P3201633110279101856.Spec : Prop :=
  ∀ n, P3201633110279101856.a n = A167193 n

end A167193

/-! ## A167193.P5204091030082702362

`2*(n%2-a(n-1))` with `a(0)=1`
-/

namespace A167193.P5204091030082702362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (((n % 2 : ℕ) : ℤ) - a (n - 1))

end

end A167193.P5204091030082702362

namespace A167193

/-- `2*(n%2-a(n-1))` -/
def P5204091030082702362.Spec : Prop :=
  ∀ n, P5204091030082702362.a n = A167193 n

end A167193

/-! ## A167193.P15224305437659768560

`2*(and(1, n)-a(n-1))` with `a(0)=1`
-/

namespace A167193.P15224305437659768560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((Nat.land 1 n : ℤ) - a (n - 1))

end

end A167193.P15224305437659768560

namespace A167193

/-- `2*(and(1, n)-a(n-1))` -/
def P15224305437659768560.Spec : Prop :=
  ∀ n, P15224305437659768560.a n = A167193 n

end A167193

/-! ## A167193.P11254464198958581076

`Δ[or(1, n)]-2*a(n-1)` with `a(0)=1`
-/

namespace A167193.P11254464198958581076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2 * a (n - 1)

end

end A167193.P11254464198958581076

namespace A167193

/-- `Δ[or(1, n)]-2*a(n-1)` -/
def P11254464198958581076.Spec : Prop :=
  ∀ n, P11254464198958581076.a n = A167193 n

end A167193

/-! ## A167193.P2653855104054349848

`a(n-2)-(-2)^(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A167193.P2653855104054349848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A167193.P2653855104054349848

namespace A167193

/-- `a(n-2)-(-2)^(n-2)` -/
def P2653855104054349848.Spec : Prop :=
  ∀ n, P2653855104054349848.a n = (A167193 n : ℚ)

end A167193

/-! ## A167193.P3795352883774030219

`2*(2-(a(n-1)+gcd(2, n)))` with `a(0)=1`
-/

namespace A167193.P3795352883774030219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - (a (n - 1) + (Nat.gcd 2 n : ℤ)))

end

end A167193.P3795352883774030219

namespace A167193

/-- `2*(2-(a(n-1)+gcd(2, n)))` -/
def P3795352883774030219.Spec : Prop :=
  ∀ n, P3795352883774030219.a n = A167193 n

end A167193

/-! ## A167193.P17195158694448101922

`2*(n-(a(n-1)+2*floor(n/2)))` with `a(0)=1`
-/

namespace A167193.P17195158694448101922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) - (a (n - 1) + 2 * ⌊(n : ℚ) / 2⌋))

end

end A167193.P17195158694448101922

namespace A167193

/-- `2*(n-(a(n-1)+2*floor(n/2)))` -/
def P17195158694448101922.Spec : Prop :=
  ∀ n, P17195158694448101922.a n = A167193 n

end A167193

/-! ## A167193.P8184411747946122409

`2-2*(∑[-a(n-1)]+a(n-1))` with `a(0)=1`
-/

namespace A167193.P8184411747946122409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - 2 * (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A167193.P8184411747946122409

namespace A167193

/-- `2-2*(∑[-a(n-1)]+a(n-1))` -/
def P8184411747946122409.Spec : Prop :=
  ∀ n, P8184411747946122409.a n = A167193 n

end A167193

/-! ## A167193.P7622396508030717695

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A167193.P7622396508030717695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  5 * a (n - 2) - 4 * a (n - 4)

end

end A167193.P7622396508030717695

namespace A167193

/-- `5*a(n-2)-4*a(n-4)` -/
def P7622396508030717695.Spec : Prop :=
  ∀ n, P7622396508030717695.a n = A167193 n

end A167193

/-! ## A167193.P8387467535710883162

`a(n-2)%4-a(n-1)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A167193.P8387467535710883162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  Int.tmod (a (n - 2)) 4 - a (n - 1) - a (n - 1)

end

end A167193.P8387467535710883162

namespace A167193

/-- `a(n-2)%4-a(n-1)-a(n-1)` -/
def P8387467535710883162.Spec : Prop :=
  ∀ n, P8387467535710883162.a n = A167193 n

end A167193

/-! ## A167193.P5867343787191967074

`∑[A122959(n)]`
-/

namespace A167193.P5867343787191967074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167193.P5867343787191967074

namespace A167193

/-- `∑[A122959(n)]` -/
def P5867343787191967074.Spec : Prop :=
  ∀ n, P5867343787191967074.a n = A167193 n

end A167193

/-! ## A167193.P9670717761429491028

`and(3, 2*n+3)-A140966(n)`
-/

namespace A167193.P9670717761429491028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 3 (2 * n + 3) : ℤ) - A140966 n

end

end A167193.P9670717761429491028

namespace A167193

/-- `and(3, 2*n+3)-A140966(n)` -/
def P9670717761429491028.Spec : Prop :=
  ∀ n, P9670717761429491028.a n = A167193 n

end A167193

/-! ## A167193.P9181942931385390700

`(-1)^n-A001045(n)*(-1)^n`
-/

namespace A167193.P9181942931385390700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n - A001045 n * (-1) ^ n

end

end A167193.P9181942931385390700

namespace A167193

/-- `(-1)^n-A001045(n)*(-1)^n` -/
def P9181942931385390700.Spec : Prop :=
  ∀ n, P9181942931385390700.a n = A167193 n

end A167193

/-! ## A167193.P6417331428374643884

`A084247(n)-A010673(n)`
-/

namespace A167193.P6417331428374643884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n - A010673 n

end

end A167193.P6417331428374643884

namespace A167193

/-- `A084247(n)-A010673(n)` -/
def P6417331428374643884.Spec : Prop :=
  ∀ n, P6417331428374643884.a n = A167193 n

end A167193

/-! ## A167193.P9860558289661165597

`A176040(n)-A140966(n)`
-/

namespace A167193.P9860558289661165597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n - A140966 n

end

end A167193.P9860558289661165597

namespace A167193

/-- `A176040(n)-A140966(n)` -/
def P9860558289661165597.Spec : Prop :=
  ∀ n, P9860558289661165597.a n = A167193 n

end A167193

/-! ## A167193.P356167934687727325

`A033999(n)+A084247(n)-1`
-/

namespace A167193.P356167934687727325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + (A084247 n - 1)

end

end A167193.P356167934687727325

namespace A167193

/-- `A033999(n)+A084247(n)-1` -/
def P356167934687727325.Spec : Prop :=
  ∀ n, P356167934687727325.a n = A167193 n

end A167193

/-! ## A167193.P4580759851203307897

`A153284(n+1)-A171501(n)`
-/

namespace A167193.P4580759851203307897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 1) - A171501 n

end

end A167193.P4580759851203307897

namespace A167193

/-- `A153284(n+1)-A171501(n)` -/
def P4580759851203307897.Spec : Prop :=
  ∀ n, P4580759851203307897.a n = A167193 n

end A167193

/-!
# A167194: Triangle read by rows. A130713 in the columns.

The programs for A167194, the canonical program `A167194.P14816993463113374063` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167194 has offset 1).

The definition of A167194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167194.P14816993463113374063

`C(2, row(n)-col(n))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167194

/-- `C(2, row(n)-col(n))` -/
def P14816993463113374063.Spec : Prop :=
  ∀ n, (P14816993463113374063.a n : ℤ) = A167194 (n + 1)

theorem P14816993463113374063.correct : P14816993463113374063.Spec := by
  intro n
  simp only [A167194, Nat.add_sub_cancel]

end A167194

/-! ## A167194.P6531163963765218617

`T(n-1,k-1)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A167194.P6531163963765218617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n

end

end A167194.P6531163963765218617

namespace A167194

/-- `T(n-1,k-1)` -/
def P6531163963765218617.Spec : Prop :=
  ∀ n, (P6531163963765218617.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P9642494329463057988

`C(2, C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A167194.P9642494329463057988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A167194.P9642494329463057988

namespace A167194

/-- `C(2, C(comp[∑[n]]-n, 2)-(n+1))` -/
def P9642494329463057988.Spec : Prop :=
  ∀ n, (P9642494329463057988.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P2739519397623653210

`C(2, C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A167194.P2739519397623653210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A167194.P2739519397623653210

namespace A167194

/-- `C(2, C(comp[∑[n]]-n, 2)-n-1)` -/
def P2739519397623653210.Spec : Prop :=
  ∀ n, (P2739519397623653210.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P3896776072289554762

`abs(A185018(n))`
-/

namespace A167194.P3896776072289554762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185018 n|

end

end A167194.P3896776072289554762

namespace A167194

/-- `abs(A185018(n))` -/
def P3896776072289554762.Spec : Prop :=
  ∀ n, P3896776072289554762.a n = A167194 (n + 1)

end A167194

/-! ## A167194.P2776312929900063332

`C(2, A025581(n))`
-/

namespace A167194.P2776312929900063332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A025581 n).toNat

end

end A167194.P2776312929900063332

namespace A167194

/-- `C(2, A025581(n))` -/
def P2776312929900063332.Spec : Prop :=
  ∀ n, (P2776312929900063332.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P16858242454550126450

`C(2, A180663(n))`
-/

namespace A167194.P16858242454550126450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A180663 n).toNat

end

end A167194.P16858242454550126450

namespace A167194

/-- `C(2, A180663(n))` -/
def P16858242454550126450.Spec : Prop :=
  ∀ n, (P16858242454550126450.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P15713820513905968878

`C(2, log2(A130321(n)))`
-/

namespace A167194.P15713820513905968878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A167194.P15713820513905968878

namespace A167194

/-- `C(2, log2(A130321(n)))` -/
def P15713820513905968878.Spec : Prop :=
  ∀ n, (P15713820513905968878.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P15177182861812544959

`A221876(n+1)%4`
-/

namespace A167194.P15177182861812544959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221876 (n + 1)) 4

end

end A167194.P15177182861812544959

namespace A167194

/-- `A221876(n+1)%4` -/
def P15177182861812544959.Spec : Prop :=
  ∀ n, P15177182861812544959.a n = A167194 (n + 1)

end A167194

/-! ## A167194.P12403328415406220398

`C(2, A061260(n+1))`
-/

namespace A167194.P12403328415406220398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A061260 (n + 1)).toNat

end

end A167194.P12403328415406220398

namespace A167194

/-- `C(2, A061260(n+1))` -/
def P12403328415406220398.Spec : Prop :=
  ∀ n, (P12403328415406220398.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P5624207207983247752

`C(2, A290222(n+1))`
-/

namespace A167194.P5624207207983247752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A290222 (n + 1)).toNat

end

end A167194.P5624207207983247752

namespace A167194

/-- `C(2, A290222(n+1))` -/
def P5624207207983247752.Spec : Prop :=
  ∀ n, (P5624207207983247752.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P5505206267686278414

`C(2, A327549(n+1))`
-/

namespace A167194.P5505206267686278414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A327549 (n + 1)).toNat

end

end A167194.P5505206267686278414

namespace A167194

/-- `C(2, A327549(n+1))` -/
def P5505206267686278414.Spec : Prop :=
  ∀ n, (P5505206267686278414.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P5173931904240018774

`C(2, A368091(n+1))`
-/

namespace A167194.P5173931904240018774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A368091 (n + 1)).toNat

end

end A167194.P5173931904240018774

namespace A167194

/-- `C(2, A368091(n+1))` -/
def P5173931904240018774.Spec : Prop :=
  ∀ n, (P5173931904240018774.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P9262288130731737214

`C(2, A392681(n+1))`
-/

namespace A167194.P9262288130731737214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A392681 (n + 1)).toNat

end

end A167194.P9262288130731737214

namespace A167194

/-- `C(2, A392681(n+1))` -/
def P9262288130731737214.Spec : Prop :=
  ∀ n, (P9262288130731737214.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P3644525573450858916

`round(acot(A097805(n+2)))`
-/

namespace A167194.P3644525573450858916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A097805 (n + 2) : ℝ))

end

end A167194.P3644525573450858916

namespace A167194

/-- `round(acot(A097805(n+2)))` -/
def P3644525573450858916.Spec : Prop :=
  ∀ n, P3644525573450858916.a n = A167194 (n + 1)

end A167194

/-! ## A167194.P14237944703231808041

`C(2, sqrt(A095831(n+1)))`
-/

namespace A167194.P14237944703231808041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (SequenceMachineLib.roundAway (Real.sqrt (A095831 (n + 1) : ℝ))).toNat

end

end A167194.P14237944703231808041

namespace A167194

/-- `C(2, sqrt(A095831(n+1)))` -/
def P14237944703231808041.Spec : Prop :=
  ∀ n, (P14237944703231808041.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P17762422375255424377

`C(2, log2(A262616(n))/2)`
-/

namespace A167194.P17762422375255424377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (SequenceMachineLib.roundAway (Real.logb 2 (A262616 n : ℝ) / 2)).toNat

end

end A167194.P17762422375255424377

namespace A167194

/-- `C(2, log2(A262616(n))/2)` -/
def P17762422375255424377.Spec : Prop :=
  ∀ n, (P17762422375255424377.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P5199513914405270008

`C(2, A004736(n+1)-1)`
-/

namespace A167194.P5199513914405270008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A004736 (n + 1) - 1).toNat

end

end A167194.P5199513914405270008

namespace A167194

/-- `C(2, A004736(n+1)-1)` -/
def P5199513914405270008.Spec : Prop :=
  ∀ n, (P5199513914405270008.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P7437038637617435172

`C(2, A057554(2*(n+1)))`
-/

namespace A167194.P7437038637617435172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A057554 (2 * (n + 1))).toNat

end

end A167194.P7437038637617435172

namespace A167194

/-- `C(2, A057554(2*(n+1)))` -/
def P7437038637617435172.Spec : Prop :=
  ∀ n, (P7437038637617435172.a n : ℤ) = A167194 (n + 1)

end A167194

/-! ## A167194.P11495107422023949251

`A130713(A025581(n))`
-/

namespace A167194.P11495107422023949251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (A025581 n).toNat

end

end A167194.P11495107422023949251

namespace A167194

/-- `A130713(A025581(n))` -/
def P11495107422023949251.Spec : Prop :=
  ∀ n, P11495107422023949251.a n = A167194 (n + 1)

end A167194

/-!
# A167195: a(2)=3, for n>=3, a(n)=a(n-1)+gcd(n, a(n-1)).

The programs for A167195, the canonical program `A167195.P14705103731417195779` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167195 has offset 2).

The definition of A167195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+gcd(n+2, a(n-1))` (program `A167195.P14705103731417195779`, by `A167195.P14705103731417195779.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167195.P14705103731417195779

`a(n-1)+gcd(n+2, a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167195

/-- `a(n-1)+gcd(n+2, a(n-1))` -/
def P14705103731417195779.Spec : Prop :=
  ∀ n, (P14705103731417195779.a n : ℤ) = A167195 (n + 2)

theorem P14705103731417195779.correct : P14705103731417195779.Spec := by
  intro n
  simp only [A167195, Nat.add_sub_cancel]

end A167195

/-! ## A167195.P11754128155450993332

`∑[2-Δ[A258451(n+1)]]`
-/

namespace A167195.P11754128155450993332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258451 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167195.P11754128155450993332

namespace A167195

/-- `∑[2-Δ[A258451(n+1)]]` -/
def P11754128155450993332.Spec : Prop :=
  ∀ n, P11754128155450993332.a n = A167195 (n + 2)

end A167195

/-! ## A167195.P6688570589487529743

`2*(n+3)-A258451(n+2)`
-/

namespace A167195.P6688570589487529743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A258451 (n + 2)

end

end A167195.P6688570589487529743

namespace A167195

/-- `2*(n+3)-A258451(n+2)` -/
def P6688570589487529743.Spec : Prop :=
  ∀ n, P6688570589487529743.a n = A167195 (n + 2)

end A167195

/-! ## A167195.P6309605594902165569

`A167614(n+1)-A258451(n+2)-A000217(n)`
-/

namespace A167195.P6309605594902165569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 1) - A258451 (n + 2) - A000217 n

end

end A167195.P6309605594902165569

namespace A167195

/-- `A167614(n+1)-A258451(n+2)-A000217(n)` -/
def P6309605594902165569.Spec : Prop :=
  ∀ n, P6309605594902165569.a n = A167195 (n + 2)

end A167195

/-! ## A167195.P18170183824425118599

`A109004(∑[n+1]+a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A167195.P18170183824425118599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A109004 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 1)).toNat + a (n - 1)

end

end A167195.P18170183824425118599

namespace A167195

/-- `A109004(∑[n+1]+a(n-1))+a(n-1)` -/
def P18170183824425118599.Spec : Prop :=
  ∀ n, P18170183824425118599.a n = A167195 (n + 2)

end A167195

/-!
# A167196: Triangle T(n,k) read by rows: matrix inverse of A106246.

The programs for A167196, there is no canonical definition to state claims against.
-/

/-! ## A167196.P14905260052387371771

`abs(A108086(n))*A167199(A025581(n))`
-/

namespace A167196.P14905260052387371771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| * A167199 (A025581 n).toNat

end

end A167196.P14905260052387371771

/-! ## A167196.P13379230934164259111

`abs(A167199(A025581(n)))*A130595(n)`
-/

namespace A167196.P13379230934164259111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167199 (A025581 n).toNat| * A130595 n

end

end A167196.P13379230934164259111

/-! ## A167196.P13463944436609551333

`Δ[A102363(n)]*A167199(A025581(n))`
-/

namespace A167196.P13463944436609551333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A167199 (A025581 n).toNat

end

end A167196.P13463944436609551333

/-! ## A167196.P17138724419965518251

`(A014473(n)+1)*A167199(A025581(n))`
-/

namespace A167196.P17138724419965518251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A167199 (A025581 n).toNat

end

end A167196.P17138724419965518251

/-! ## A167196.P2362793076232925053

`A167199(A025581(n))/2*A028326(n)`
-/

namespace A167196.P2362793076232925053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167199 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A167196.P2362793076232925053

/-!
# A167197: a(6) = 7, for n >= 7, a(n) = a(n - 1) + gcd(n, a(n - 1)).

The programs for A167197, the canonical program `A167197.P11233646797835746834` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167197 has offset 6).

The definition of A167197 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+gcd(n+6, a(n-1))` (program `A167197.P11233646797835746834`, by `A167197.P11233646797835746834.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167197.P11233646797835746834

`a(n-1)+gcd(n+6, a(n-1))` with `a(0)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A167197

/-- `a(n-1)+gcd(n+6, a(n-1))` -/
def P11233646797835746834.Spec : Prop :=
  ∀ n, (P11233646797835746834.a n : ℤ) = A167197 (n + 6)

theorem P11233646797835746834.correct : P11233646797835746834.Spec := by
  intro n
  simp only [A167197, Nat.add_sub_cancel]

end A167197

/-! ## A167197.P301094165441163405

`lt[A217296(A217296(n+1)), A217334(3*n+1)]`
-/

namespace A167197.P301094165441163405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217296 (A217296 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217334 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167197.P301094165441163405

namespace A167197

/-- `lt[A217296(A217296(n+1)), A217334(3*n+1)]` -/
def P301094165441163405.Spec : Prop :=
  ∀ n, (P301094165441163405.a n : ℤ) = A167197 (n + 6)

end A167197

/-!
# A167198: Fractal sequence of the interspersion A083047.

The programs for A167198, there is no canonical definition to state claims against.
-/

/-! ## A167198.P644379886084882683

`A120874(A026242(n+1))`
-/

namespace A167198.P644379886084882683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120874 (A026242 (n + 1)).toNat

end

end A167198.P644379886084882683

/-! ## A167198.P3268989768689726128

`A120874(A193564(n+1)+1)`
-/

namespace A167198.P3268989768689726128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120874 (A193564 (n + 1) + 1).toNat

end

end A167198.P3268989768689726128

/-! ## A167198.P8492893582338509419

`A194832(lt[A000700(n), A333627(n+4)])`
-/

namespace A167198.P8492893582338509419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A167198.P8492893582338509419

/-! ## A167198.P4869032659455744093

`A366806(A011782(n)*A266414(n+2))`
-/

namespace A167198.P4869032659455744093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366806 (A011782 n * A266414 (n + 2)).toNat

end

end A167198.P4869032659455744093

/-! ## A167198.P13806106793733267268

`A133299(A262524(n+1))`
-/

namespace A167198.P13806106793733267268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133299 (A262524 (n + 1)).toNat

end

end A167198.P13806106793733267268

/-!
# A167199: First column of A167196.

The programs for A167199, there is no canonical definition to state claims against.
-/

/-! ## A167199.P1347677099570753503

`A167196(∑[n]+1)`
-/

namespace A167199.P1347677099570753503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167196 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A167199.P1347677099570753503

/-! ## A167199.P17066203797977874056

`or(A130713(n), A167196(A000124(n)))`
-/

namespace A167199.P17066203797977874056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130713 n) (A167196 (A000124 n).toNat)

end

end A167199.P17066203797977874056

/-! ## A167199.P17744173785548978151

`∑[A006012(n)/A011782(n+1)]*A133942(n)`
-/

namespace A167199.P17744173785548978151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006012 n : ℚ) / (A011782 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A133942 n : ℚ)

end

end A167199.P17744173785548978151

/-! ## A167199.P4231234332279165012

`A346432(n)/A162512(2^n)`
-/

namespace A167199.P4231234332279165012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346432 n : ℚ) / (A162512 (2 ^ n) : ℚ)

end

end A167199.P4231234332279165012

