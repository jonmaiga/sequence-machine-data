import SequenceMachineLib.Basic
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
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
# A377600: Positive integers D such that the generalized Pell equation X^2 - D Y^2 = -3 is solvable over the integers.

The programs for A377600, there is no canonical definition to state claims against.
-/

/-! ## A377600.P63154070597637977

`lt[A269164(A331381(n)), A005928(3*n)]`
-/

namespace A377600.P63154070597637977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269164 (A331381 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377600.P63154070597637977

/-! ## A377600.P4156015603017728973

`A244819(A033621(n+1))`
-/

namespace A377600.P4156015603017728973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244819 (A033621 (n + 1)).toNat

end

end A377600.P4156015603017728973

/-!
# A377601: Number of permutations of the multiset {1^n, 2^n,..., n^n} excluding permutations where all objects of all types are contiguous.

The programs for A377601, the canonical program `A377601.P14384301913357752278` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377601 has offset 0).

The definition of A377601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377601.P14384301913357752278

`A034841(n)-A000142(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A377601

/-- `A034841(n)-A000142(n)` -/
def P14384301913357752278.Spec : Prop :=
  ∀ n, P14384301913357752278.a n = A377601 n

theorem P14384301913357752278.correct : P14384301913357752278.Spec := by
  intro n
  simp only [A377601]

end A377601

/-! ## A377601.P9828298388826135287

`A000142(n)*A057599(n)-A000142(n)`
-/

namespace A377601.P9828298388826135287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A057599 n - A000142 n

end

end A377601.P9828298388826135287

namespace A377601

/-- `A000142(n)*A057599(n)-A000142(n)` -/
def P9828298388826135287.Spec : Prop :=
  ∀ n, P9828298388826135287.a n = A377601 n

end A377601

/-! ## A377601.P11892172161292856079

`A034841(n)-A034841(n)/A057599(n)`
-/

namespace A377601.P11892172161292856079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034841 n : ℚ) - (A034841 n : ℚ) / (A057599 n : ℚ)

end

end A377601.P11892172161292856079

namespace A377601

/-- `A034841(n)-A034841(n)/A057599(n)` -/
def P11892172161292856079.Spec : Prop :=
  ∀ n, P11892172161292856079.a n = (A377601 n : ℚ)

end A377601

/-!
# A377607: Positive integers D such that the generalized Pell equation X^2 - D Y^2 = 3 is solvable over the integers.

The programs for A377607, there is no canonical definition to state claims against.
-/

/-! ## A377607.P4158067434911403337

`filter[A243655(n+1), A114483(#)]`
-/

namespace A377607.P4158067434911403337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114483 (f1 j).toNat = 1) n)

end

end A377607.P4158067434911403337

/-! ## A377607.P581175044536987690

`A243655(A303171(n+1)+A055642(2*n))`
-/

namespace A377607.P581175044536987690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243655 (A303171 (n + 1) + A055642 (2 * n)).toNat

end

end A377607.P581175044536987690

/-! ## A377607.P16019323600687851269

`∩[A116883(A047201(n+1)), A243655(n+1)]`
-/

namespace A377607.P16019323600687851269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116883 (A047201 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377607.P16019323600687851269

/-! ## A377607.P16951086411206898309

`A243655(∑[A357022(3*(n+1))!])`
-/

namespace A377607.P16951086411206898309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A357022 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243655 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A377607.P16951086411206898309

/-!
# A377608: E.g.f. satisfies A(x) = exp( x * A(x) / (1-x) ) / (1-x)^2.

The programs for A377608, there is no canonical definition to state claims against.
-/

/-! ## A377608.P9217709507043051551

`A362968(n+1)+A096087(A260878(n))`
-/

namespace A377608.P9217709507043051551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362968 (n + 1) + A096087 (A260878 n).toNat

end

end A377608.P9217709507043051551

/-!
# A377619: a(n) is the number of iterations of x -> 5*x + 2 until (# composites reached) = (# primes reached), starting with prime(n).

The programs for A377619, there is no canonical definition to state claims against.
-/

/-! ## A377619.P17899068980907880795

`gcd(A020483(A000055(n+3)), A275670(n))`
-/

namespace A377619.P17899068980907880795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020483 (A000055 (n + 3)).toNat) (A275670 n)

end

end A377619.P17899068980907880795

/-! ## A377619.P14857730101556452799

`A139421(3*(n+1))%A085383(A088319(n+2))`
-/

namespace A377619.P14857730101556452799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139421 (3 * (n + 1))) (A085383 (A088319 (n + 2)).toNat)

end

end A377619.P14857730101556452799

/-! ## A377619.P13498912530775942275

`A269481(A327413(n+2))`
-/

namespace A377619.P13498912530775942275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269481 (A327413 (n + 2)).toNat

end

end A377619.P13498912530775942275

/-!
# A377625: Nonnegative numbers whose nonadjacent form is antipalindromic.

The programs for A377625, there is no canonical definition to state claims against.
-/

/-! ## A377625.P1118481213555106338

`eq[A001489(n), A379015(n)]`
-/

namespace A377625.P1118481213555106338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377625.P1118481213555106338

/-! ## A377625.P3115802100098663021

`eq[A038608(n), A379015(n)]`
-/

namespace A377625.P3115802100098663021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377625.P3115802100098663021

/-! ## A377625.P13677097214237193637

`eq[A234319(n), A379015(n)]`
-/

namespace A377625.P13677097214237193637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234319 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377625.P13677097214237193637

/-! ## A377625.P6097803959779994492

`eq[A184616(n), A379015(A184615(n))]`
-/

namespace A377625.P6097803959779994492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379015 (A184615 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377625.P6097803959779994492

/-!
# A377627: Cogrowth sequence of the 12-element group C6 X C2 = .

The programs for A377627, the canonical program `A377627.P16180455227699645803` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377627 has offset 0).

The definition of A377627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377627.P15602276898302226341

`A094715(2*n)`
-/

namespace A377627.P15602276898302226341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094715 (2 * n)

end

end A377627.P15602276898302226341

namespace A377627

/-- `A094715(2*n)` -/
def P15602276898302226341.Spec : Prop :=
  ∀ n, P15602276898302226341.a n = A377627 n

end A377627

/-! ## A377627.P16180455227699645803

`A306847(2*n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A377627

/-- `A306847(2*n)` -/
def P16180455227699645803.Spec : Prop :=
  ∀ n, P16180455227699645803.a n = A377627 n

theorem P16180455227699645803.correct : P16180455227699645803.Spec := by
  intro n
  simp only [A377627]

end A377627

/-! ## A377627.P665144323693068736

`A119336(2*n+1)-A131023(2*n+1)`
-/

namespace A377627.P665144323693068736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119336 (2 * n + 1) - A131023 (2 * n + 1)

end

end A377627.P665144323693068736

namespace A377627

/-- `A119336(2*n+1)-A131023(2*n+1)` -/
def P665144323693068736.Spec : Prop :=
  ∀ n, P665144323693068736.a n = A377627 n

end A377627

/-! ## A377627.P17286729195642161824

`A129339(2*n+1)-A227430(2*n+1)`
-/

namespace A377627.P17286729195642161824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (2 * n + 1) - A227430 (2 * n + 1)

end

end A377627.P17286729195642161824

namespace A377627

/-- `A129339(2*n+1)-A227430(2*n+1)` -/
def P17286729195642161824.Spec : Prop :=
  ∀ n, P17286729195642161824.a n = A377627 n

end A377627

/-! ## A377627.P1411502890130089857

`A306846(A055999(2*n+3))`
-/

namespace A377627.P1411502890130089857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306846 (A055999 (2 * n + 3)).toNat

end

end A377627.P1411502890130089857

namespace A377627

/-- `A306846(A055999(2*n+3))` -/
def P1411502890130089857.Spec : Prop :=
  ∀ n, P1411502890130089857.a n = A377627 n

end A377627

/-!
# A377628: a(n) = a(n-1) + a(n-2) + 1 with a(0)=2 and a(1)=2.

The programs for A377628, the canonical program `A377628.P5901676351159437754` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377628 has offset 0).

The definition of A377628 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A377628.P5901676351159437754`, by `A377628.P5901676351159437754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377628.P5901676351159437754

`a(n-1)+a(n-2)+1` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377628

/-- `a(n-1)+a(n-2)+1` -/
def P5901676351159437754.Spec : Prop :=
  ∀ n, (P5901676351159437754.a n : ℤ) = A377628 n

theorem P5901676351159437754.correct : P5901676351159437754.Spec := by
  intro n
  simp only [A377628]

end A377628

/-! ## A377628.P11598185799706798770

`A022086(n+1)-1`
-/

namespace A377628.P11598185799706798770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (n + 1) - 1

end

end A377628.P11598185799706798770

namespace A377628

/-- `A022086(n+1)-1` -/
def P11598185799706798770.Spec : Prop :=
  ∀ n, P11598185799706798770.a n = A377628 n

end A377628

/-! ## A377628.P16962067560900936107

`ogf((2-2x+x^2)/(1-2x+x^3))`
-/

namespace A377628.P16962067560900936107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 1] [1, -2, 0, 1] n

end

end A377628.P16962067560900936107

namespace A377628

/-- `ogf((2-2x+x^2)/(1-2x+x^3))` -/
def P16962067560900936107.Spec : Prop :=
  ∀ n, P16962067560900936107.a n = A377628 n

end A377628

/-! ## A377628.P13257137093844304459

`2*a(n-1)-a(n-3)` with `a(0)=2, a(1)=2, a(2)=5`
-/

namespace A377628.P13257137093844304459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 5] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A377628.P13257137093844304459

namespace A377628

/-- `2*a(n-1)-a(n-3)` -/
def P13257137093844304459.Spec : Prop :=
  ∀ n, P13257137093844304459.a n = A377628 n

end A377628

/-! ## A377628.P4590800893924993917

`2-floor(1-a(n-1)-a(n-2))` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A377628.P4590800893924993917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 - (1 - a (n - 1) - a (n - 2))

end

end A377628.P4590800893924993917

namespace A377628

/-- `2-floor(1-a(n-1)-a(n-2))` -/
def P4590800893924993917.Spec : Prop :=
  ∀ n, P4590800893924993917.a n = A377628 n

end A377628

/-! ## A377628.P466729240514797944

`4/2-(1-a(n-1)-a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A377628.P466729240514797944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  (4 : ℚ) / 2 - (1 - a (n - 1) - a (n - 2))

end

end A377628.P466729240514797944

namespace A377628

/-- `4/2-(1-a(n-1)-a(n-2))` -/
def P466729240514797944.Spec : Prop :=
  ∀ n, P466729240514797944.a n = (A377628 n : ℚ)

end A377628

/-! ## A377628.P13357816941148529735

`∑[a(n-1)-(a(n-3)-a(n-1))]` with `a(0)=2, a(1)=0, a(2)=3, a(3)=3`
-/

namespace A377628.P13357816941148529735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 3, 3] fun n f1 =>
  f1 (n - 1) - (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377628.P13357816941148529735

namespace A377628

/-- `∑[a(n-1)-(a(n-3)-a(n-1))]` -/
def P13357816941148529735.Spec : Prop :=
  ∀ n, P13357816941148529735.a n = A377628 n

end A377628

/-! ## A377628.P6456917554860520458

`2-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A377628.P6456917554860520458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A377628.P6456917554860520458

namespace A377628

/-- `2-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P6456917554860520458.Spec : Prop :=
  ∀ n, P6456917554860520458.a n = A377628 n

end A377628

/-! ## A377628.P18017754082518825029

`a(n-1)-(gcd(3, a(n-1))-2-a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A377628.P18017754082518825029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) - ((Int.gcd 3 (a (n - 1)) : ℤ) - 2 - a (n - 2))

end

end A377628.P18017754082518825029

namespace A377628

/-- `a(n-1)-(gcd(3, a(n-1))-2-a(n-2))` -/
def P18017754082518825029.Spec : Prop :=
  ∀ n, P18017754082518825029.a n = A377628 n

end A377628

/-! ## A377628.P8152091672747888734

`A111314(n)+1`
-/

namespace A377628.P8152091672747888734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n + 1

end

end A377628.P8152091672747888734

namespace A377628

/-- `A111314(n)+1` -/
def P8152091672747888734.Spec : Prop :=
  ∀ n, P8152091672747888734.a n = A377628 n

end A377628

/-! ## A377628.P14821821516988592094

`A097135(n+1)-1`
-/

namespace A377628.P14821821516988592094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 (n + 1) - 1

end

end A377628.P14821821516988592094

namespace A377628

/-- `A097135(n+1)-1` -/
def P14821821516988592094.Spec : Prop :=
  ∀ n, P14821821516988592094.a n = A377628 n

end A377628

/-! ## A377628.P6655733302361309838

`A187893(n+1)-2`
-/

namespace A377628.P6655733302361309838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 (n + 1) - 2

end

end A377628.P6655733302361309838

namespace A377628

/-- `A187893(n+1)-2` -/
def P6655733302361309838.Spec : Prop :=
  ∀ n, P6655733302361309838.a n = A377628 n

end A377628

/-! ## A377628.P4093331699560852583

`A192967(n)+1+n`
-/

namespace A377628.P4093331699560852583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 n + 1 + (n : ℤ)

end

end A377628.P4093331699560852583

namespace A377628

/-- `A192967(n)+1+n` -/
def P4093331699560852583.Spec : Prop :=
  ∀ n, P4093331699560852583.a n = A377628 n

end A377628

/-! ## A377628.P11138634711996410598

`3*A000045(n+1)-1`
-/

namespace A377628.P11138634711996410598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 (n + 1) - 1

end

end A377628.P11138634711996410598

namespace A377628

/-- `3*A000045(n+1)-1` -/
def P11138634711996410598.Spec : Prop :=
  ∀ n, P11138634711996410598.a n = A377628 n

end A377628

/-! ## A377628.P15425521619812777011

`3*A000071(n+1)+2`
-/

namespace A377628.P15425521619812777011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000071 (n + 1) + 2

end

end A377628.P15425521619812777011

namespace A377628

/-- `3*A000071(n+1)+2` -/
def P15425521619812777011.Spec : Prop :=
  ∀ n, P15425521619812777011.a n = A377628 n

end A377628

/-! ## A377628.P3150464505416632156

`A052952(n)+A014217(n)`
-/

namespace A377628.P3150464505416632156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n + A014217 n

end

end A377628.P3150464505416632156

namespace A377628

/-- `A052952(n)+A014217(n)` -/
def P3150464505416632156.Spec : Prop :=
  ∀ n, P3150464505416632156.a n = A377628 n

end A377628

/-! ## A377628.P14796628734377049264

`A118658(n)+A001610(n)`
-/

namespace A377628.P14796628734377049264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A001610 n

end

end A377628.P14796628734377049264

namespace A377628

/-- `A118658(n)+A001610(n)` -/
def P14796628734377049264.Spec : Prop :=
  ∀ n, P14796628734377049264.a n = A377628 n

end A377628

/-! ## A377628.P6236888857058158935

`A131326(n)+A033999(n)`
-/

namespace A377628.P6236888857058158935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131326 n + A033999 n

end

end A377628.P6236888857058158935

namespace A377628

/-- `A131326(n)+A033999(n)` -/
def P6236888857058158935.Spec : Prop :=
  ∀ n, P6236888857058158935.a n = A377628 n

end A377628

/-! ## A377628.P12253417278263162105

`A020701(n)-A001588(n)`
-/

namespace A377628.P12253417278263162105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - A001588 n

end

end A377628.P12253417278263162105

namespace A377628

/-- `A020701(n)-A001588(n)` -/
def P12253417278263162105.Spec : Prop :=
  ∀ n, P12253417278263162105.a n = A377628 n

end A377628

/-! ## A377628.P10903350321242896944

`A000032(n)+∑[A000045(n)]`
-/

namespace A377628.P10903350321242896944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377628.P10903350321242896944

namespace A377628

/-- `A000032(n)+∑[A000045(n)]` -/
def P10903350321242896944.Spec : Prop :=
  ∀ n, P10903350321242896944.a n = A377628 n

end A377628

/-!
# A377632: E.g.f. satisfies A(x) = 1/(1 - x * A(x)^2 * exp(x*A(x)^2))^2.

The programs for A377632, there is no canonical definition to state claims against.
-/

/-! ## A377632.P15138465938804004110

`A000272(n)*A352867(A000108(2*n))`
-/

namespace A377632.P15138465938804004110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n * A352867 (A000108 (2 * n)).toNat

end

end A377632.P15138465938804004110

/-!
# A377634: a(n) is the smallest k such that tau(k*2^n - 1) is equal to 2^n where tau = A000005.

The programs for A377634, there is no canonical definition to state claims against.
-/

/-! ## A377634.P10060406141790315207

`A349264(n)+A169990(A002577(n))`
-/

namespace A377634.P10060406141790315207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349264 n + A169990 (A002577 n).toNat

end

end A377634.P10060406141790315207

/-!
# A377638: Number of edge cuts in the n-gear graph.

The programs for A377638, the canonical program `A377638.P7721338666716558937` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377638 has offset 0).

The definition of A377638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377638.P7721338666716558937

`2+8^n-(1/2*(5-sqrt(17)))^n-(1/2*(5+sqrt(17)))^n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377638

/-- `2+8^n-(1/2*(5-sqrt(17)))^n-(1/2*(5+sqrt(17)))^n` -/
def P7721338666716558937.Spec : Prop :=
  ∀ n, P7721338666716558937.a n = (A377638 n : ℝ)

end A377638

/-!
# A377639: Number of edge cuts in the n-barbell graph.

The programs for A377639, there is no canonical definition to state claims against.
-/

/-! ## A377639.P9725856322354041340

`2*A006125(n+1)²-A001187(n+1)²`
-/

namespace A377639.P9725856322354041340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006125 (n + 1) ^ 2 - A001187 (n + 1) ^ 2

end

end A377639.P9725856322354041340

/-!
# A377641: a(n) = 3^n + 2^(3*n + 1) - 2^(2*n + 1).

The programs for A377641, the canonical program `A377641.P12381294078907172856` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377641 has offset 1).

The definition of A377641 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+1)+2^(3*(n+1)+1)-2^(2*(n+1)+1)` (program `A377641.P12381294078907172856`, by `A377641.P12381294078907172856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377641.P3225471473016145934

`15*a(n-1)-68*a(n-2)+96*a(n-3)` with `a(0)=11, a(1)=105, a(2)=923`
-/

namespace A377641.P3225471473016145934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 105, 923] fun n a =>
  15 * a (n - 1) - 68 * a (n - 2) + 96 * a (n - 3)

end

end A377641.P3225471473016145934

namespace A377641

/-- `15*a(n-1)-68*a(n-2)+96*a(n-3)` -/
def P3225471473016145934.Spec : Prop :=
  ∀ n, P3225471473016145934.a n = A377641 (n + 1)

theorem P3225471473016145934.correct : P3225471473016145934.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A377641, Nat.add_sub_cancel, A377641.P3225471473016145934.a, A377641.P12381294078907172856.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A377641, Nat.add_sub_cancel, A377641.P3225471473016145934.a, A377641.P12381294078907172856.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A377641

/-! ## A377641.P12381294078907172856

`3^(n+1)+2^(3*(n+1)+1)-2^(2*(n+1)+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377641

/-- `3^(n+1)+2^(3*(n+1)+1)-2^(2*(n+1)+1)` -/
def P12381294078907172856.Spec : Prop :=
  ∀ n, P12381294078907172856.a n = A377641 (n + 1)

theorem P12381294078907172856.correct : P12381294078907172856.Spec := by
  intro n
  simp only [A377641, Nat.add_sub_cancel]

end A377641

/-!
# A377642: a(n) = (1/(n-1)!) * Product_{i=1..n-1} (2^n-2^i).

The programs for A377642, the canonical program `A377642.P10920870877473794249` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377642 has offset 1).

The definition of A377642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377642.P10920870877473794249

`A000079(n)*A053601(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A377642

/-- `A000079(n)*A053601(n)` -/
def P10920870877473794249.Spec : Prop :=
  ∀ n, P10920870877473794249.a n = A377642 (n + 1)

theorem P10920870877473794249.correct : P10920870877473794249.Spec := by
  intro n
  simp only [A377642, Nat.add_sub_cancel]

end A377642

/-! ## A377642.P6649328070705458942

`A028365(n)/A000142(n)`
-/

namespace A377642.P6649328070705458942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028365 n : ℚ) / (A000142 n : ℚ)

end

end A377642.P6649328070705458942

namespace A377642

/-- `A028365(n)/A000142(n)` -/
def P6649328070705458942.Spec : Prop :=
  ∀ n, P6649328070705458942.a n = (A377642 (n + 1) : ℚ)

end A377642

/-! ## A377642.P3028538233466099328

`A006125(n)*A157285(A000217(n))`
-/

namespace A377642.P3028538233466099328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n * A157285 (A000217 n).toNat

end

end A377642.P3028538233466099328

namespace A377642

/-- `A006125(n)*A157285(A000217(n))` -/
def P3028538233466099328.Spec : Prop :=
  ∀ n, P3028538233466099328.a n = A377642 (n + 1)

end A377642

/-! ## A377642.P10997786757954515725

`A270882(∑[n+2])`
-/

namespace A377642.P10997786757954515725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270882 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A377642.P10997786757954515725

namespace A377642

/-- `A270882(∑[n+2])` -/
def P10997786757954515725.Spec : Prop :=
  ∀ n, P10997786757954515725.a n = A377642 (n + 1)

end A377642

/-! ## A377642.P8074818852195015724

`record[A270882(n)/A158116(n)]`
-/

namespace A377642.P8074818852195015724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270882 n : ℚ) / (A158116 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377642.P8074818852195015724

namespace A377642

/-- `record[A270882(n)/A158116(n)]` -/
def P8074818852195015724.Spec : Prop :=
  ∀ n, P8074818852195015724.a n = (A377642 (n + 1) : ℚ)

end A377642

/-!
# A377646: Expansion of e.g.f. (1 + x * (exp(x) - 1))^2.

The programs for A377646, there is no canonical definition to state claims against.
-/

/-! ## A377646.P17886821087986734745

`A140361(A140359(n))+A052848(n)`
-/

namespace A377646.P17886821087986734745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (A140359 n).toNat + A052848 n

end

end A377646.P17886821087986734745

/-! ## A377646.P15804346154222813111

`A273514(A007696(n))+A087981(n)`
-/

namespace A377646.P15804346154222813111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273514 (A007696 n).toNat + A087981 n

end

end A377646.P15804346154222813111

/-!
# A377648: Parse Golomb's sequence (A001462) into distinct phrases [1], [2], [2, 3], [3], [4], [4, 4], [5], [5, 5], ...; a(n) is the length of n-th phrase.

The programs for A377648, there is no canonical definition to state claims against.
-/

/-! ## A377648.P14783584531462914181

`A000002(A018609(n+1)^A078880(n+1))`
-/

namespace A377648.P14783584531462914181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (SequenceMachineLib.roundAway ((A018609 (n + 1) : ℚ) ^ (A078880 (n + 1) : ℤ))).toNat

end

end A377648.P14783584531462914181

/-! ## A377648.P7760599841306627207

`A000002(A018609(n+1)^A000002(n+2))`
-/

namespace A377648.P7760599841306627207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (SequenceMachineLib.roundAway ((A018609 (n + 1) : ℚ) ^ (A000002 (n + 2) : ℤ))).toNat

end

end A377648.P7760599841306627207

/-! ## A377648.P5475600141073798291

`A000002(A108906(n+1)+A002378(2*n))`
-/

namespace A377648.P5475600141073798291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A108906 (n + 1) + A002378 (2 * n)).toNat

end

end A377648.P5475600141073798291

/-! ## A377648.P1258152378872556444

`A321020(A171944(3*(n+1))+A156351(n+1))`
-/

namespace A377648.P1258152378872556444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321020 (A171944 (3 * (n + 1)) + A156351 (n + 1)).toNat

end

end A377648.P1258152378872556444

/-! ## A377648.P11000232231577609683

`A022303(A049710(n+1)*A340058(3*(n+1)))`
-/

namespace A377648.P11000232231577609683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A049710 (n + 1) * A340058 (3 * (n + 1))).toNat

end

end A377648.P11000232231577609683

/-!
# A377649: Number of edge cuts in the complete bipartite graph K_n,n.

The programs for A377649, there is no canonical definition to state claims against.
-/

/-! ## A377649.P18205168673428929520

`2^(n+1)²-A005333(n+1)`
-/

namespace A377649.P18205168673428929520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) ^ 2 : ℤ) - A005333 (n + 1)

end

end A377649.P18205168673428929520

/-!
# A377654: Numbers m^2 for which the center part (containing the diagonal) of its symmetric representation of sigma, SRS(m^2), has width 1 and area m.

The programs for A377654, there is no canonical definition to state claims against.
-/

/-! ## A377654.P8378569542126140429

`A244579(n+1)²`
-/

namespace A377654.P8378569542126140429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (n + 1) ^ 2

end

end A377654.P8378569542126140429

/-! ## A377654.P3006450121467104983

`record[A053626(or(1, n))]²`
-/

namespace A377654.P3006450121467104983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A377654.P3006450121467104983

/-! ## A377654.P1701390330203061019

`record[A053627(or(1, n))]²`
-/

namespace A377654.P1701390330203061019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A377654.P1701390330203061019

/-! ## A377654.P7654850063416143383

`(A182991(n+2)/2)²`
-/

namespace A377654.P7654850063416143383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A182991 (n + 2) : ℚ) / 2) ^ 2

end

end A377654.P7654850063416143383

/-! ## A377654.P13114924671080215832

`record[A053626(2*n+1)²]`
-/

namespace A377654.P13114924671080215832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377654.P13114924671080215832

/-! ## A377654.P4263313268211025035

`record[A053627(2*n+1)²]`
-/

namespace A377654.P4263313268211025035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377654.P4263313268211025035

/-! ## A377654.P7344815750896948555

`A000463(A182991(n+2))`
-/

namespace A377654.P7344815750896948555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A182991 (n + 2)).toNat

end

end A377654.P7344815750896948555

/-! ## A377654.P3301750485748584535

`A000265(A182991(n+2)²)`
-/

namespace A377654.P3301750485748584535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A182991 (n + 2) ^ 2).toNat

end

end A377654.P3301750485748584535

/-! ## A377654.P7466709275758062972

`eq[A028242(n), A232179(n)]²`
-/

namespace A377654.P7466709275758062972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232179 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A377654.P7466709275758062972

/-! ## A377654.P10027164136371854188

`eq[A123108(n), A232179(n)]²`
-/

namespace A377654.P10027164136371854188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232179 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A377654.P10027164136371854188

/-!
# A377658: a(n) = Sum_{k=0 .. n} Sum_{j=0 .. k} tan(j*Pi/(1 + 2*k))^(2*(n - k)). Antidiagonal sums of A377657.

The programs for A377658, there is no canonical definition to state claims against.
-/

/-! ## A377658.P10730910975543472447

`A278055(A167019(n)+n)`
-/

namespace A377658.P10730910975543472447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278055 (A167019 n + (n : ℤ)).toNat

end

end A377658.P10730910975543472447

/-! ## A377658.P6086269677514266974

`A270412(n+7)%A271269(A057704(n+1))`
-/

namespace A377658.P6086269677514266974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270412 (n + 7)) (A271269 (A057704 (n + 1)).toNat)

end

end A377658.P6086269677514266974

/-!
# A377659: a(n) = Motzkin(n) - 2^(n - 1 + 0^n) = A001006(n) - A011782(n).

The programs for A377659, the canonical program `A377659.P12368812019478080147` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377659 has offset 0).

The definition of A377659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377659.P12368812019478080147

`A001006(n)-A011782(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A377659

/-- `A001006(n)-A011782(n)` -/
def P12368812019478080147.Spec : Prop :=
  ∀ n, P12368812019478080147.a n = A377659 n

theorem P12368812019478080147.correct : P12368812019478080147.Spec := by
  intro n
  simp only [A377659]

end A377659

/-! ## A377659.P1637185476612840400

`A001006(n)-∑[A034008(n)]`
-/

namespace A377659.P1637185476612840400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377659.P1637185476612840400

namespace A377659

/-- `A001006(n)-∑[A034008(n)]` -/
def P1637185476612840400.Spec : Prop :=
  ∀ n, P1637185476612840400.a n = A377659 n

end A377659

/-! ## A377659.P7387577698029472609

`A001006(n)-Δ[A131577(n)]`
-/

namespace A377659.P7387577698029472609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - (f1 (n + 1) - f1 n)

end

end A377659.P7387577698029472609

namespace A377659

/-- `A001006(n)-Δ[A131577(n)]` -/
def P7387577698029472609.Spec : Prop :=
  ∀ n, P7387577698029472609.a n = A377659 n

end A377659

/-! ## A377659.P10435448703896831760

`A086246(n+2)-A011782(n)`
-/

namespace A377659.P10435448703896831760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) - A011782 n

end

end A377659.P10435448703896831760

namespace A377659

/-- `A086246(n+2)-A011782(n)` -/
def P10435448703896831760.Spec : Prop :=
  ∀ n, P10435448703896831760.a n = A377659 n

end A377659

/-! ## A377659.P1852052985085761703

`A001006(n)-A158780(2*n+1)`
-/

namespace A377659.P1852052985085761703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A158780 (2 * n + 1)

end

end A377659.P1852052985085761703

namespace A377659

/-- `A001006(n)-A158780(2*n+1)` -/
def P1852052985085761703.Spec : Prop :=
  ∀ n, P1852052985085761703.a n = A377659 n

end A377659

/-! ## A377659.P12682953978183796054

`∑[A105695(n+1)]+1-A011782(n)`
-/

namespace A377659.P12682953978183796054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A011782 n

end

end A377659.P12682953978183796054

namespace A377659

/-- `∑[A105695(n+1)]+1-A011782(n)` -/
def P12682953978183796054.Spec : Prop :=
  ∀ n, P12682953978183796054.a n = A377659 n

end A377659

/-! ## A377659.P14065471030153875451

`A001006(n)-Δ[A137776(2*n+1)]`
-/

namespace A377659.P14065471030153875451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - (f1 (n + 1) - f1 n)

end

end A377659.P14065471030153875451

namespace A377659

/-- `A001006(n)-Δ[A137776(2*n+1)]` -/
def P14065471030153875451.Spec : Prop :=
  ∀ n, P14065471030153875451.a n = A377659 n

end A377659

/-! ## A377659.P16003641729818572196

`A125107(n)-A153008(n)`
-/

namespace A377659.P16003641729818572196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125107 n - A153008 n

end

end A377659.P16003641729818572196

namespace A377659

/-- `A125107(n)-A153008(n)` -/
def P16003641729818572196.Spec : Prop :=
  ∀ n, P16003641729818572196.a n = A377659 n

end A377659

/-!
# A377660: Triangle read by rows: T(n, k) = (n - k)!*(n + k)!/n!.

The programs for A377660, the canonical program `A377660.P13913844871105716731` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377660 has offset 0).

The definition of A377660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377660.P2873529425422829382

`A046899(n)*A098361(n)`
-/

namespace A377660.P2873529425422829382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A098361 n

end

end A377660.P2873529425422829382

namespace A377660

/-- `A046899(n)*A098361(n)` -/
def P2873529425422829382.Spec : Prop :=
  ∀ n, P2873529425422829382.a n = A377660 n

end A377660

/-! ## A377660.P2118500303994563535

`A164961(n)/A110608(n)`
-/

namespace A377660.P2118500303994563535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164961 n : ℚ) / (A110608 n : ℚ)

end

end A377660.P2118500303994563535

namespace A377660

/-- `A164961(n)/A110608(n)` -/
def P2118500303994563535.Spec : Prop :=
  ∀ n, P2118500303994563535.a n = (A377660 n : ℚ)

end A377660

/-! ## A377660.P13913844871105716731

`A253284(n)/A103371(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A377660

/-- `A253284(n)/A103371(n)` -/
def P13913844871105716731.Spec : Prop :=
  ∀ n, P13913844871105716731.a n = (A377660 n : ℚ)

end A377660

/-! ## A377660.P3412552575062157953

`A105725(n+1)/A347823(n)`
-/

namespace A377660.P3412552575062157953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105725 (n + 1) : ℚ) / (A347823 n : ℚ)

end

end A377660.P3412552575062157953

namespace A377660

/-- `A105725(n+1)/A347823(n)` -/
def P3412552575062157953.Spec : Prop :=
  ∀ n, P3412552575062157953.a n = (A377660 n : ℚ)

end A377660

/-! ## A377660.P5831780799841226666

`A008279(A245300(n))*A119502(n)`
-/

namespace A377660.P5831780799841226666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A245300 n).toNat * A119502 n

end

end A377660.P5831780799841226666

namespace A377660

/-- `A008279(A245300(n))*A119502(n)` -/
def P5831780799841226666.Spec : Prop :=
  ∀ n, P5831780799841226666.a n = A377660 n

end A377660

/-! ## A377660.P8193048401199956276

`A143084(n)/A008279(n)`
-/

namespace A377660.P8193048401199956276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143084 n : ℚ) / (A008279 n : ℚ)

end

end A377660.P8193048401199956276

namespace A377660

/-- `A143084(n)/A008279(n)` -/
def P8193048401199956276.Spec : Prop :=
  ∀ n, P8193048401199956276.a n = (A377660 n : ℚ)

end A377660

/-! ## A377660.P12893337768034080533

`A134478(n)!/A008279(n)`
-/

namespace A377660.P12893337768034080533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A134478 n).toNat : ℚ) / (A008279 n : ℚ)

end

end A377660.P12893337768034080533

namespace A377660

/-- `A134478(n)!/A008279(n)` -/
def P12893337768034080533.Spec : Prop :=
  ∀ n, P12893337768034080533.a n = (A377660 n : ℚ)

end A377660

/-! ## A377660.P2342988051658288404

`A143085(n)/A068424(n+1)`
-/

namespace A377660.P2342988051658288404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143085 n : ℚ) / (A068424 (n + 1) : ℚ)

end

end A377660.P2342988051658288404

namespace A377660

/-- `A143085(n)/A068424(n+1)` -/
def P2342988051658288404.Spec : Prop :=
  ∀ n, P2342988051658288404.a n = (A377660 n : ℚ)

end A377660

/-!
# A377661: Triangle read by rows: T(n, k) = e*Gamma(n - k + 1, 1)*binomial(n, k)^2.

The programs for A377661, there is no canonical definition to state claims against.
-/

/-! ## A377661.P2531187754960113564

`A007318(n)*A073107(n)`
-/

namespace A377661.P2531187754960113564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A073107 n

end

end A377661.P2531187754960113564

/-! ## A377661.P4629558366743788751

`A000522(A025581(n))*A008459(n)`
-/

namespace A377661.P4629558366743788751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (A025581 n).toNat * A008459 n

end

end A377661.P4629558366743788751

/-! ## A377661.P6926547410567784056

`A007318(n)²*A000522(A025581(n))`
-/

namespace A377661.P6926547410567784056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A000522 (A025581 n).toNat

end

end A377661.P6926547410567784056

/-! ## A377661.P4176785384486306766

`A073107(n)*A363486(A283282(n+1))`
-/

namespace A377661.P4176785384486306766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073107 n * A363486 (A283282 (n + 1)).toNat

end

end A377661.P4176785384486306766

/-!
# A377662: a(n) = Sum_{k=0..n} binomial(n, k) * Sum_{j=k..n} n!/(k!*(j - k)!). Row sums of A377661.

The programs for A377662, there is no canonical definition to state claims against.
-/

/-! ## A377662.P2634284962764843519

`A154450(A001931(n+1))`
-/

namespace A377662.P2634284962764843519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154450 (A001931 (n + 1)).toNat

end

end A377662.P2634284962764843519

/-!
# A377663: a(n) = 2*n^3 - 3*n + 1.

The programs for A377663, the canonical program `A377663.P14362438416029704129` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377663 has offset 0).

The definition of A377663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^3-3*n+1` (program `A377663.P14362438416029704129`, by `A377663.P14362438416029704129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377663.P14362438416029704129

`2*n^3-3*n+1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A377663

/-- `2*n^3-3*n+1` -/
def P14362438416029704129.Spec : Prop :=
  ∀ n, P14362438416029704129.a n = A377663 n

theorem P14362438416029704129.correct : P14362438416029704129.Spec := by
  intro n
  simp only [A377663]

end A377663

/-! ## A377663.P12984723949358415205

`Δ[C(n²-n, 2)-(1-n)²]`
-/

namespace A377663.P12984723949358415205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377663.P12984723949358415205

namespace A377663

/-- `Δ[C(n²-n, 2)-(1-n)²]` -/
def P12984723949358415205.Spec : Prop :=
  ∀ n, P12984723949358415205.a n = A377663 n

end A377663

/-! ## A377663.P5446736058470502690

`Δ[4*C(C(n, 2)+1, 2)-(5*C(n, 2)-n)]`
-/

namespace A377663.P5446736058470502690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (Nat.choose n 2 + 1) 2 : ℤ) - ((5 * Nat.choose n 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377663.P5446736058470502690

namespace A377663

/-- `Δ[4*C(C(n, 2)+1, 2)-(5*C(n, 2)-n)]` -/
def P5446736058470502690.Spec : Prop :=
  ∀ n, P5446736058470502690.a n = A377663 n

end A377663

/-! ## A377663.P18345957161377936148

`(n-1)*A142463(n)`
-/

namespace A377663.P18345957161377936148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A142463 n

end

end A377663.P18345957161377936148

namespace A377663

/-- `(n-1)*A142463(n)` -/
def P18345957161377936148.Spec : Prop :=
  ∀ n, P18345957161377936148.a n = A377663 n

end A377663

/-! ## A377663.P195281098918674884

`Δ[A242983(n)]`
-/

namespace A377663.P195281098918674884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377663.P195281098918674884

namespace A377663

/-- `Δ[A242983(n)]` -/
def P195281098918674884.Spec : Prop :=
  ∀ n, P195281098918674884.a n = A377663 n

end A377663

/-!
# A377664: a(n) = Sum_{j=0..n} binomial(n, j)*Euler(j, 0)*(2*n)^j. Main diagonal of A377666.

The programs for A377664, there is no canonical definition to state claims against.
-/

/-! ## A377664.P10196402714945014806

`A377666(∑[4*n])`
-/

namespace A377664.P10196402714945014806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377666 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A377664.P10196402714945014806

/-!
# A377665: a(n) = Sum_{j=0..n} binomial(n, j) * Euler(j, 0) * 10^j. Row 5 of A377666.

The programs for A377665, there is no canonical definition to state claims against.
-/

/-! ## A377665.P5514480881687897583

`A156260(A047926(n))*A156272(n)`
-/

namespace A377665.P5514480881687897583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156260 (A047926 n).toNat * A156272 n

end

end A377665.P5514480881687897583

/-!
# A377666: Array read by ascending antidiagonals: A(n, k) = Sum_{j = 0..k} binomial(k, j) * Euler(j, 0) *(2*n)^j.

The programs for A377666, there is no canonical definition to state claims against.
-/

/-! ## A377666.P1188971327100245387

`A318667(A261274(n))-A048720(n)`
-/

namespace A377666.P1188971327100245387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318667 (A261274 n).toNat - A048720 n

end

end A377666.P1188971327100245387

/-! ## A377666.P15641487591620131746

`A319149(A187783(n))-A265080(n)`
-/

namespace A377666.P15641487591620131746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319149 (A187783 n).toNat - A265080 n

end

end A377666.P15641487591620131746

/-! ## A377666.P8189233802075580959

`A331154(A137593(n+1))-A048720(n)`
-/

namespace A377666.P8189233802075580959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331154 (A137593 (n + 1)).toNat - A048720 n

end

end A377666.P8189233802075580959

/-! ## A377666.P18231123529378246326

`A381356(A136684(n+1))-A048720(n)`
-/

namespace A377666.P18231123529378246326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381356 (A136684 (n + 1)).toNat - A048720 n

end

end A377666.P18231123529378246326

/-! ## A377666.P926243332619563919

`A176270(n)%A341956(A330717(n+3))`
-/

namespace A377666.P926243332619563919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176270 n) (A341956 (A330717 (n + 3)).toNat)

end

end A377666.P926243332619563919

/-!
# A377670: Number of subwords of the form UDD in nondecreasing Dyck paths of length 2n.

The programs for A377670, there is no canonical definition to state claims against.
-/

/-! ## A377670.P5633279113139946783

`A121449(n)-A353847(A011782(n))`
-/

namespace A377670.P5633279113139946783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 n - A353847 (A011782 n).toNat

end

end A377670.P5633279113139946783

/-! ## A377670.P9186289653463302837

`A093110(2^n-(n+1))`
-/

namespace A377670.P9186289653463302837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 (2 ^ n - (n + 1))

end

end A377670.P9186289653463302837

/-! ## A377670.P17081808831490995733

`A033109(A124647(n))`
-/

namespace A377670.P17081808831490995733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033109 (A124647 n).toNat

end

end A377670.P17081808831490995733

/-!
# A377673: a(n) is the sum of the divisors of n^n + n.

The programs for A377673, the canonical program `A377673.P6974552087118426098` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377673 has offset 1).

The definition of A377673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377673.P6974552087118426098

`A000203(A066068(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A377673

/-- `A000203(A066068(n+1))` -/
def P6974552087118426098.Spec : Prop :=
  ∀ n, P6974552087118426098.a n = A377673 (n + 1)

theorem P6974552087118426098.correct : P6974552087118426098.Spec := by
  intro n
  simp only [A377673, Nat.add_sub_cancel]

end A377673

/-! ## A377673.P9868677082072625484

`∑{d}[(n+1)^(n+1)+n+1, #]`
-/

namespace A377673.P9868677082072625484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A377673.P9868677082072625484

namespace A377673

/-- `∑{d}[(n+1)^(n+1)+n+1, #]` -/
def P9868677082072625484.Spec : Prop :=
  ∀ n, (P9868677082072625484.a n : ℤ) = A377673 (n + 1)

end A377673

/-! ## A377673.P10872812781867685389

`∑{d}[A000169(n+1)+1, #]*A000203(n+1)`
-/

namespace A377673.P10872812781867685389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) * A000203 (n + 1)

end

end A377673.P10872812781867685389

namespace A377673

/-- `∑{d}[A000169(n+1)+1, #]*A000203(n+1)` -/
def P10872812781867685389.Spec : Prop :=
  ∀ n, P10872812781867685389.a n = A377673 (n + 1)

end A377673

/-!
# A377674: a(n) = phi(n^n + n) where phi is the Euler totient function.

The programs for A377674, the canonical program `A377674.P11450829007157849169` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377674 has offset 1).

The definition of A377674 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A377674.P11450829007157849169

`A000010(A066068(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A377674

/-- `A000010(A066068(n+1))` -/
def P11450829007157849169.Spec : Prop :=
  ∀ n, P11450829007157849169.a n = A377674 (n + 1)

theorem P11450829007157849169.correct : P11450829007157849169.Spec := by
  intro n
  simp only [A377674, Nat.add_sub_cancel]

end A377674

/-! ## A377674.P11724745870943533369

`A000010((n+1)^(n+1)+1+n)`
-/

namespace A377674.P11724745870943533369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ (n + 1) + 1 + n)

end

end A377674.P11724745870943533369

namespace A377674

/-- `A000010((n+1)^(n+1)+1+n)` -/
def P11724745870943533369.Spec : Prop :=
  ∀ n, P11724745870943533369.a n = A377674 (n + 1)

end A377674

/-!
# A377676: a(n) is the number of divisors of n^n - n.

The programs for A377676, there is no canonical definition to state claims against.
-/

/-! ## A377676.P17690974494731652503

`∏{e}[A061190(n+2), A062770(#)]`
-/

namespace A377676.P17690974494731652503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061190 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A062770 (Nat.factorization (f1 n).natAbs p)

end

end A377676.P17690974494731652503

/-! ## A377676.P10005108055844268902

`A057936(A274110(2*(n+1)))*A271487(n)`
-/

namespace A377676.P10005108055844268902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057936 (A274110 (2 * (n + 1))).toNat * A271487 n

end

end A377676.P10005108055844268902

/-!
# A377677: a(n) is the sum of the divisors of n^n - n.

The programs for A377677, the canonical program `A377677.P3120597122940150678` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377677 has offset 2).

The definition of A377677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377677.P3120597122940150678

`A000203(A061190(n+2))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A377677

/-- `A000203(A061190(n+2))` -/
def P3120597122940150678.Spec : Prop :=
  ∀ n, P3120597122940150678.a n = A377677 (n + 2)

theorem P3120597122940150678.correct : P3120597122940150678.Spec := by
  intro n
  simp only [A377677, Nat.add_sub_cancel]

end A377677

/-! ## A377677.P13796206764009323353

`∑{d}[n+2-(n+2)^(n+2), #]`
-/

namespace A377677.P13796206764009323353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((n + 2) ^ (n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A377677.P13796206764009323353

namespace A377677

/-- `∑{d}[n+2-(n+2)^(n+2), #]` -/
def P13796206764009323353.Spec : Prop :=
  ∀ n, (P13796206764009323353.a n : ℤ) = A377677 (n + 2)

end A377677

/-!
# A377678: a(n) = phi(n^n - n) where phi is the Euler totient function.

The programs for A377678, the canonical program `A377678.P7286090810318958759` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377678 has offset 2).

The definition of A377678 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A377678.P7286090810318958759

`A000010(A061190(n+2))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A377678

/-- `A000010(A061190(n+2))` -/
def P7286090810318958759.Spec : Prop :=
  ∀ n, P7286090810318958759.a n = A377678 (n + 2)

theorem P7286090810318958759.correct : P7286090810318958759.Spec := by
  intro n
  simp only [A377678, Nat.add_sub_cancel]

end A377678

/-!
# A377679: Number of subwords of the form DDD in nondecreasing Dyck paths of length 2n.

The programs for A377679, there is no canonical definition to state claims against.
-/

/-! ## A377679.P15977285823094152245

`A378383(n)+A377867(n)`
-/

namespace A377679.P15977285823094152245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378383 n + A377867 n

end

end A377679.P15977285823094152245

/-! ## A377679.P4019089559749939134

`A378383(n)+A374744(A365756(n))`
-/

namespace A377679.P4019089559749939134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378383 n + A374744 (A365756 n).toNat

end

end A377679.P4019089559749939134

/-! ## A377679.P4546026480979846328

`A255408(A085810(n+1))-A000129(n+1)`
-/

namespace A377679.P4546026480979846328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A085810 (n + 1)).toNat - A000129 (n + 1)

end

end A377679.P4546026480979846328

/-!
# A377680: Expansion of e.g.f. (1 + x * (exp(x) - 1))^3.

The programs for A377680, there is no canonical definition to state claims against.
-/

/-! ## A377680.P469246306438727447

`A002265(6*A351733(n))`
-/

namespace A377680.P469246306438727447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (6 * A351733 n).toNat

end

end A377680.P469246306438727447

/-! ## A377680.P18404179661496639877

`A052848(n)*A257993(6^n)`
-/

namespace A377680.P18404179661496639877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052848 n * A257993 (6 ^ n)

end

end A377680.P18404179661496639877

/-!
# A377681: Expansion of e.g.f. (1 + x * (exp(x) - 1))^4.

The programs for A377681, there is no canonical definition to state claims against.
-/

/-! ## A377681.P5069039963202338596

`A004396(2*A351734(n))`
-/

namespace A377681.P5069039963202338596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A351734 n).toNat

end

end A377681.P5069039963202338596

/-! ## A377681.P10066156772918692562

`A034444(A000400(n))*A355843(n)`
-/

namespace A377681.P10066156772918692562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A000400 n).toNat * A355843 n

end

end A377681.P10066156772918692562

/-!
# A377682: Expansion of e.g.f. (1 - x * log(1 - x))^2.

The programs for A377682, there is no canonical definition to state claims against.
-/

/-! ## A377682.P4294605148674658495

`A135313(n)+A065744(A016269(n))`
-/

namespace A377682.P4294605148674658495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 n + A065744 (A016269 n).toNat

end

end A377682.P4294605148674658495

/-! ## A377682.P11995242323023322462

`A378117(A230982(n+1))-A278043(n)`
-/

namespace A377682.P11995242323023322462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378117 (A230982 (n + 1)).toNat - A278043 n

end

end A377682.P11995242323023322462

/-!
# A377683: Expansion of e.g.f. (1 - x * log(1 - x))^3.

The programs for A377683, there is no canonical definition to state claims against.
-/

/-! ## A377683.P17636197334167845689

`A001918(A000309(n))*A052830(n)`
-/

namespace A377683.P17636197334167845689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (A000309 n).toNat * A052830 n

end

end A377683.P17636197334167845689

/-! ## A377683.P15186713279263166421

`A014673(A115974(n))*A052830(n)`
-/

namespace A377683.P15186713279263166421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A115974 n).toNat * A052830 n

end

end A377683.P15186713279263166421

/-!
# A377684: Expansion of e.g.f. (1 - x * log(1 - x))^4.

The programs for A377684, there is no canonical definition to state claims against.
-/

/-! ## A377684.P8030295579785592219

`A050292(2*A053490(n))`
-/

namespace A377684.P8030295579785592219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (2 * A053490 n).toNat

end

end A377684.P8030295579785592219

/-! ## A377684.P11128452015120414465

`A005811(∏[∏{e}[n, n^#!!]])*A375671(n)`
-/

namespace A377684.P11128452015120414465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n ^ Nat.factorial (Nat.factorial (Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (∏ j ∈ Finset.range (n + 1), f1 j) * A375671 n

end

end A377684.P11128452015120414465

/-!
# A377687: E.g.f. satisfies A(x) = 1 - x*log(1 - x*A(x)^3).

The programs for A377687, there is no canonical definition to state claims against.
-/

/-! ## A377687.P7669278061480153285

`A005843(A371228(n))-A370993(n)`
-/

namespace A377687.P7669278061480153285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A371228 n).toNat - A370993 n

end

end A377687.P7669278061480153285

/-! ## A377687.P6730411142344721868

`A371122(n)-A269162(A371122(n))`
-/

namespace A377687.P6730411142344721868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371122 n - A269162 (A371122 n).toNat

end

end A377687.P6730411142344721868

/-!
# A377689: E.g.f. satisfies A(x) = (1 + x * (exp(x*A(x)) - 1))^3.

The programs for A377689, there is no canonical definition to state claims against.
-/

/-! ## A377689.P6541706466760114645

`A274846(A075118(n))`
-/

namespace A377689.P6541706466760114645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274846 (A075118 n).toNat

end

end A377689.P6541706466760114645

/-!
# A377690: E.g.f. satisfies A(x) = 1 + x * (exp(x*A(x)^3) - 1).

The programs for A377690, there is no canonical definition to state claims against.
-/

/-! ## A377690.P4758438371303219023

`A377687(n)-A025429(A370988(n))`
-/

namespace A377690.P4758438371303219023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377687 n - A025429 (A370988 n).toNat

end

end A377690.P4758438371303219023

/-!
# A377691: E.g.f. satisfies A(x) = (1 - x * log(1 - x) * A(x))^3.

The programs for A377691, there is no canonical definition to state claims against.
-/

/-! ## A377691.P5295423606943868436

`A246003(A086494(n))`
-/

namespace A377691.P5295423606943868436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246003 (A086494 n).toNat

end

end A377691.P5295423606943868436

/-!
# A377692: E.g.f. satisfies A(x) = (1 - log(1 - x) * A(x))^2.

The programs for A377692, there is no canonical definition to state claims against.
-/

/-! ## A377692.P12021865232830425781

`A324847((2*n-1)*a(n-1)+(n-1)*(n-2)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A377692.P12021865232830425781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A324847 (((2 * n : ℤ) - 1) * a (n - 1) + ((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 2))).toNat

end

end A377692.P12021865232830425781

/-!
# A377697: Decimal expansion of the midradius of a truncated dodecahedron with unit edge length.

The programs for A377697, there is no canonical definition to state claims against.
-/

/-! ## A377697.P3035008148250230419

`A205769(C(A292447(n+1), A327051(n+4))+n)`
-/

namespace A377697.P3035008148250230419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205769 (Nat.choose (A292447 (n + 1)).toNat (A327051 (n + 4)).toNat + n)

end

end A377697.P3035008148250230419

