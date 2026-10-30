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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A261704: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000101 or 00000111.

The programs for A261704, there is no canonical definition to state claims against.
-/

/-! ## A261704.P15417636150531065887

`A261709(1+∑[n])`
-/

namespace A261704.P15417636150531065887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261704.P15417636150531065887

/-! ## A261704.P14878118057702485401

`record[A261709(n+1)]`
-/

namespace A261704.P14878118057702485401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261704.P14878118057702485401

/-! ## A261704.P14120336026568360263

`lcm(2, A261709(A000124(n)))`
-/

namespace A261704.P14120336026568360263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A261709 (A000124 n).toNat)

end

end A261704.P14120336026568360263

/-! ## A261704.P13896542497376776157

`A261709(A000124(n))-A002262(∑[n])`
-/

namespace A261704.P13896542497376776157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A000124 n).toNat - A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261704.P13896542497376776157

/-! ## A261704.P17908467677775212493

`A261709(A000124(n))+A000038(n+1)`
-/

namespace A261704.P17908467677775212493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A000124 n).toNat + A000038 (n + 1)

end

end A261704.P17908467677775212493

/-! ## A261704.P2579590160460066315

`xor(1, A261709(A000217(n+1))+1)`
-/

namespace A261704.P2579590160460066315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A261709 (A000217 (n + 1)).toNat + 1)

end

end A261704.P2579590160460066315

/-! ## A261704.P11370690998091585080

`A007318(A000096(n+1))*A261709(A000217(n+1))`
-/

namespace A261704.P11370690998091585080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (n + 1)).toNat * A261709 (A000217 (n + 1)).toNat

end

end A261704.P11370690998091585080

/-! ## A261704.P15484915725303366342

`A261709(A000217(n+1))*A298667(A294932(n+2))`
-/

namespace A261704.P15484915725303366342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A000217 (n + 1)).toNat * A298667 (A294932 (n + 2)).toNat

end

end A261704.P15484915725303366342

/-! ## A261704.P17802038807340611870

`A261709(A000217(n+1))+1-A298667(A294932(n+1))`
-/

namespace A261704.P17802038807340611870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A000217 (n + 1)).toNat + 1 - A298667 (A294932 (n + 1)).toNat

end

end A261704.P17802038807340611870

/-! ## A261704.P8432959697478447971

`A261709(A000217(n+1))*A294932(A294932(2*n+1))`
-/

namespace A261704.P8432959697478447971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A000217 (n + 1)).toNat * A294932 (A294932 (2 * n + 1)).toNat

end

end A261704.P8432959697478447971

/-!
# A261705: Number of (n+2)X(2+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00000111.

The programs for A261705, there is no canonical definition to state claims against.
-/

/-! ## A261705.P6170252916587513713

`A261709(∑[n+1]+2)`
-/

namespace A261705.P6170252916587513713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A261705.P6170252916587513713

/-! ## A261705.P8035855074941095491

`record[A261709(A133263(A028242(n)))]`
-/

namespace A261705.P8035855074941095491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261705.P8035855074941095491

/-! ## A261705.P10934456524609922620

`record[A261709(A022856(n+1)+A000007(n))]`
-/

namespace A261705.P10934456524609922620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A022856 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261705.P10934456524609922620

/-! ## A261705.P10005239695592448730

`A033999(2*n)*A261709(A000096(n+1))`
-/

namespace A261705.P10005239695592448730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A261709 (A000096 (n + 1)).toNat

end

end A261705.P10005239695592448730

/-! ## A261705.P12916502374608866484

`A261709(A000096(n+1))%A206204(n+1)`
-/

namespace A261705.P12916502374608866484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261709 (A000096 (n + 1)).toNat) (A206204 (n + 1))

end

end A261705.P12916502374608866484

/-! ## A261705.P853262522142632708

`A007318(A000217(n))*A261709(A000096(n+1))`
-/

namespace A261705.P853262522142632708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A261709 (A000096 (n + 1)).toNat

end

end A261705.P853262522142632708

/-! ## A261705.P7626795956694037217

`A007318(A000096(2*n))*A261709(A000096(n+1))`
-/

namespace A261705.P7626795956694037217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (2 * n)).toNat * A261709 (A000096 (n + 1)).toNat

end

end A261705.P7626795956694037217

/-!
# A261706: Number of (n+2) X (3+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000101 or 00000111.

The programs for A261706, there is no canonical definition to state claims against.
-/

/-! ## A261706.P3586617468524297202

`record[A261709(∑[n-2]+6)]`
-/

namespace A261706.P3586617468524297202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (∑ j ∈ Finset.range (n + 1), f2 j + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261706.P3586617468524297202

/-! ## A261706.P8446973999301206243

`A261709(A167614(n+1))`
-/

namespace A261706.P8446973999301206243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A167614 (n + 1)).toNat

end

end A261706.P8446973999301206243

/-! ## A261706.P3135812237266554795

`A261709(A373663(n+1))`
-/

namespace A261706.P3135812237266554795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A373663 (n + 1)).toNat

end

end A261706.P3135812237266554795

/-! ## A261706.P15419227486082002488

`A261709(A055998(n)+6)`
-/

namespace A261706.P15419227486082002488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A055998 n + 6).toNat

end

end A261706.P15419227486082002488

/-! ## A261706.P2629936549509207891

`A261709(A167499(n)+n)`
-/

namespace A261706.P2629936549509207891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A167499 n + (n : ℤ)).toNat

end

end A261706.P2629936549509207891

/-! ## A261706.P10880031800064785999

`A261709(A034856(n+1)+5)`
-/

namespace A261706.P10880031800064785999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A034856 (n + 1) + 5).toNat

end

end A261706.P10880031800064785999

/-! ## A261706.P11097681511063223473

`A261709(∑[n+3]+1)`
-/

namespace A261706.P11097681511063223473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261706.P11097681511063223473

/-!
# A261707: Number of (n+2) X (4+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000101 or 00000111.

The programs for A261707, there is no canonical definition to state claims against.
-/

/-! ## A261707.P7678192801653514835

`A261709(A374004(n+1))`
-/

namespace A261707.P7678192801653514835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A374004 (n + 1)).toNat

end

end A261707.P7678192801653514835

/-! ## A261707.P12415529725818752932

`A261709(A052905(n)+9)`
-/

namespace A261707.P12415529725818752932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A052905 n + 9).toNat

end

end A261707.P12415529725818752932

/-! ## A261707.P1129886114628011239

`A261709(A167614(n+2)+1)`
-/

namespace A261707.P1129886114628011239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A167614 (n + 2) + 1).toNat

end

end A261707.P1129886114628011239

/-! ## A261707.P10852096297675842326

`A261709(A000096(n+2)+5)`
-/

namespace A261707.P10852096297675842326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (A000096 (n + 2) + 5).toNat

end

end A261707.P10852096297675842326

/-! ## A261707.P1025924164878828658

`A261709(Δ[A264443(n)-n²])`
-/

namespace A261707.P1025924164878828658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (f1 (n + 1) - f1 n).toNat

end

end A261707.P1025924164878828658

/-! ## A261707.P8071272376799766278

`A261709(∑[n+4]+3)`
-/

namespace A261707.P8071272376799766278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A261707.P8071272376799766278

/-! ## A261707.P3599929434401388274

`lcm(A261709(A027379(n+2)), A352080(n+2))`
-/

namespace A261707.P3599929434401388274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A261709 (A027379 (n + 2)).toNat) (A352080 (n + 2))

end

end A261707.P3599929434401388274

/-!
# A261708: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00000111.

The programs for A261708, there is no canonical definition to state claims against.
-/

/-! ## A261708.P5145588447721277925

`A261709(∑[n+4]+11)`
-/

namespace A261708.P5145588447721277925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261709 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A261708.P5145588447721277925

/-! ## A261708.P4244873352032408624

`lcm(2, A261709(Δ[A264443(n)]))`
-/

namespace A261708.P4244873352032408624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A261709 (f1 (n + 1) - f1 n).toNat)

end

end A261708.P4244873352032408624

/-! ## A261708.P17495353311957454719

`or(A000038(n)², A261709(A000124(n+5)-5))`
-/

namespace A261708.P17495353311957454719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n ^ 2) (A261709 (A000124 (n + 5) - 5).toNat)

end

end A261708.P17495353311957454719

/-! ## A261708.P13833934312509810429

`A261709(A000124(n+5)-5)%A261709(n+1)²`
-/

namespace A261708.P13833934312509810429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261709 (A000124 (n + 5) - 5).toNat) (A261709 (n + 1) ^ 2)

end

end A261708.P13833934312509810429

/-!
# A261711: Triangle read by rows: T(n,k) is the number of words over alphabet {0,1,2,3} having exactly k occurrences of the string 01, where n>=0 and k>=0.

The programs for A261711, the canonical program `A261711.P12008416668888732034` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261711 has offset 0).

The definition of A261711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261711.P12008416668888732034

`A207823(A091018(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A261711

/-- `A207823(A091018(n))` -/
def P12008416668888732034.Spec : Prop :=
  ∀ n, P12008416668888732034.a n = A261711 n

theorem P12008416668888732034.correct : P12008416668888732034.Spec := by
  intro n
  simp only [A261711]

end A261711

/-! ## A261711.P9531879101730279575

`gcd(A000038(n), A159764(A091018(n)))`
-/

namespace A261711.P9531879101730279575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A159764 (A091018 n).toNat)

end

end A261711.P9531879101730279575

namespace A261711

/-- `gcd(A000038(n), A159764(A091018(n)))` -/
def P9531879101730279575.Spec : Prop :=
  ∀ n, (P9531879101730279575.a n : ℤ) = A261711 n

end A261711

/-! ## A261711.P6026061717457319151

`lcm(A020985(n), A159764(A091018(n)))`
-/

namespace A261711.P6026061717457319151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A159764 (A091018 n).toNat)

end

end A261711.P6026061717457319151

namespace A261711

/-- `lcm(A020985(n), A159764(A091018(n)))` -/
def P6026061717457319151.Spec : Prop :=
  ∀ n, (P6026061717457319151.a n : ℤ) = A261711 n

end A261711

/-! ## A261711.P12512222841249988502

`Δ[A053615(n)]*A159764(A091018(n))`
-/

namespace A261711.P12512222841249988502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A159764 (A091018 n).toNat

end

end A261711.P12512222841249988502

namespace A261711

/-- `Δ[A053615(n)]*A159764(A091018(n))` -/
def P12512222841249988502.Spec : Prop :=
  ∀ n, P12512222841249988502.a n = A261711 n

end A261711

/-! ## A261711.P18115178893795729518

`abs(A060576(n+2)*A159764(A091018(n)))`
-/

namespace A261711.P18115178893795729518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060576 (n + 2) * A159764 (A091018 n).toNat|

end

end A261711.P18115178893795729518

namespace A261711

/-- `abs(A060576(n+2)*A159764(A091018(n)))` -/
def P18115178893795729518.Spec : Prop :=
  ∀ n, P18115178893795729518.a n = A261711 n

end A261711

/-!
# A261713: Natural numbers that can be split into two squares, leading zeros allowed.

The programs for A261713, there is no canonical definition to state claims against.
-/

/-! ## A261713.P6865945664603552205

`A168042(A055645(n)+4)`
-/

namespace A261713.P6865945664603552205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168042 (A055645 n + 4).toNat

end

end A261713.P6865945664603552205

/-! ## A261713.P9453538218186702698

`A046030(n+5)%Δ[A327848(n+1)]`
-/

namespace A261713.P9453538218186702698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046030 (n + 5)) (f1 (n + 1) - f1 n)

end

end A261713.P9453538218186702698

/-! ## A261713.P11491956638596867088

`A189628((4*n)²+Δ[floor((2*n)²/(2*n+1))^3]+n²)+A046030(n+5)`
-/

namespace A261713.P11491956638596867088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (((4 * n) ^ 2 : ℤ) + (f1 (n + 1) - f1 n + (n ^ 2 : ℤ))).toNat + A046030 (n + 5)

end

end A261713.P11491956638596867088

/-! ## A261713.P5966971269898712063

`A168042(n+4)+A000007(A228836(n))`
-/

namespace A261713.P5966971269898712063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168042 (n + 4) + A000007 (A228836 n).toNat

end

end A261713.P5966971269898712063

/-! ## A261713.P16481569995476179999

`A159075(A061561(n))+A046030(n+5)`
-/

namespace A261713.P16481569995476179999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A061561 n).toNat + A046030 (n + 5)

end

end A261713.P16481569995476179999

/-!
# A261718: Number A(n,k) of partitions of n where each part i is marked with a word of length i over a k-ary alphabet whose letters appear in alphabetical order; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A261718, there is no canonical definition to state claims against.
-/

/-! ## A261718.P5417862118005918297

`A362125(n)%A007749(n+1)`
-/

namespace A261718.P5417862118005918297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362125 n) (A007749 (n + 1))

end

end A261718.P5417862118005918297

/-! ## A261718.P7632412332845411435

`A362125(n)+A010054((4*(n+1))²)`
-/

namespace A261718.P7632412332845411435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 n + A010054 ((4 * (n + 1)) ^ 2)

end

end A261718.P7632412332845411435

/-! ## A261718.P10335407500139242680

`A362125(n)+A011746(A063759(n))`
-/

namespace A261718.P10335407500139242680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 n + A011746 (A063759 n).toNat

end

end A261718.P10335407500139242680

/-! ## A261718.P17255772800436631969

`A362125(n)+A348807(A368869(n))`
-/

namespace A261718.P17255772800436631969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 n + A348807 (A368869 n).toNat

end

end A261718.P17255772800436631969

/-! ## A261718.P17677573729488013865

`A362125(n)^A208673(A144074(n))`
-/

namespace A261718.P17677573729488013865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362125 n : ℚ) ^ (A208673 (A144074 n).toNat : ℤ)

end

end A261718.P17677573729488013865

/-!
# A261719: Number T(n,k) of partitions of n where each part i is marked with a word of length i over a k-ary alphabet whose letters appear in alphabetical order and all k letters occur at least once in the partition; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A261719, there is no canonical definition to state claims against.
-/

/-! ## A261719.P7998788116929954045

`A253283(n)+A133010(A011972(n))`
-/

namespace A261719.P7998788116929954045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253283 n + A133010 (A011972 n).toNat

end

end A261719.P7998788116929954045

/-! ## A261719.P5799054554106437916

`A253283(n)+A185284(A126291(n))`
-/

namespace A261719.P5799054554106437916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253283 n + A185284 (A126291 n).toNat

end

end A261719.P5799054554106437916

/-! ## A261719.P9161237745607472428

`A253283(n)+A185284(A332275(n))`
-/

namespace A261719.P9161237745607472428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253283 n + A185284 (A332275 n).toNat

end

end A261719.P9161237745607472428

/-! ## A261719.P11664907663571931192

`lcm(A000196(A157221(n)), A245111(n))`
-/

namespace A261719.P11664907663571931192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000196 (A157221 n).toNat) (A245111 n)

end

end A261719.P11664907663571931192

/-! ## A261719.P10323401087679058779

`lcm(A143397(n), A212625(A304620(n)))`
-/

namespace A261719.P10323401087679058779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143397 n) (A212625 (A304620 n).toNat)

end

end A261719.P10323401087679058779

/-!
# A261720: Array of pyramidal (3-dimensional figurate numbers) read by antidiagonals.

The programs for A261720, the canonical program `A261720.P5255650142552119612` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261720 has offset 1).

The definition of A261720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261720.P5255650142552119612

`(col(n)+1)*(col(n)+2)*(col(n)*(row(n)-col(n)+1)+3)/6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A261720

/-- `(col(n)+1)*(col(n)+2)*(col(n)*(row(n)-col(n)+1)+3)/6` -/
def P5255650142552119612.Spec : Prop :=
  ∀ n, P5255650142552119612.a n = (A261720 (n + 1) : ℚ)

end A261720

/-! ## A261720.P12693563351882437061

`C(col(n)+3, 3)+(row(n)-col(n))*C(col(n)+2, 3)`
-/

namespace A261720.P12693563351882437061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triCol n + 3) 3 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (Nat.choose (SequenceMachineLib.triCol n + 2) 3 : ℤ)

end

end A261720.P12693563351882437061

namespace A261720

/-- `C(col(n)+3, 3)+(row(n)-col(n))*C(col(n)+2, 3)` -/
def P12693563351882437061.Spec : Prop :=
  ∀ n, P12693563351882437061.a n = A261720 (n + 1)

end A261720

/-! ## A261720.P17647291153811007086

`A080851(comp[∑[n-1]])`
-/

namespace A261720.P17647291153811007086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080851 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A261720.P17647291153811007086

namespace A261720

/-- `A080851(comp[∑[n-1]])` -/
def P17647291153811007086.Spec : Prop :=
  ∀ n, P17647291153811007086.a n = A261720 (n + 1)

end A261720

/-! ## A261720.P2016435644381988341

`A086271(n+1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A261720.P2016435644381988341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086271 (n + 1) + SequenceMachineLib.triUpLeft a n

end

end A261720.P2016435644381988341

namespace A261720

/-- `A086271(n+1)+T(n-1,k-1)` -/
def P2016435644381988341.Spec : Prop :=
  ∀ n, P2016435644381988341.a n = A261720 (n + 1)

end A261720

/-! ## A261720.P6568648181109076751

`or(char[1], A080851(A007401(n+1)))`
-/

namespace A261720.P6568648181109076751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A080851 (A007401 (n + 1)).toNat)

end

end A261720.P6568648181109076751

namespace A261720

/-- `or(char[1], A080851(A007401(n+1)))` -/
def P6568648181109076751.Spec : Prop :=
  ∀ n, P6568648181109076751.a n = A261720 (n + 1)

end A261720

/-! ## A261720.P15726687754722771727

`or(char[1], A080851(A003056(n)+1+n))`
-/

namespace A261720.P15726687754722771727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A080851 (A003056 n + 1 + (n : ℤ)).toNat)

end

end A261720.P15726687754722771727

namespace A261720

/-- `or(char[1], A080851(A003056(n)+1+n))` -/
def P15726687754722771727.Spec : Prop :=
  ∀ n, P15726687754722771727.a n = A261720 (n + 1)

end A261720

/-! ## A261720.P18245552596910761575

`A080851(n)+A000292(A002262(n))`
-/

namespace A261720.P18245552596910761575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080851 n + A000292 (A002262 n).toNat

end

end A261720.P18245552596910761575

namespace A261720

/-- `A080851(n)+A000292(A002262(n))` -/
def P18245552596910761575.Spec : Prop :=
  ∀ n, P18245552596910761575.a n = A261720 (n + 1)

end A261720

/-! ## A261720.P2126378482913173141

`A080851(n)+A000292(A025668(n+1))`
-/

namespace A261720.P2126378482913173141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080851 n + A000292 (A025668 (n + 1)).toNat

end

end A261720.P2126378482913173141

namespace A261720

/-- `A080851(n)+A000292(A025668(n+1))` -/
def P2126378482913173141.Spec : Prop :=
  ∀ n, P2126378482913173141.a n = A261720 (n + 1)

end A261720

/-! ## A261720.P4821053937740647874

`A080851(n)+A000292(A025691(n+1))`
-/

namespace A261720.P4821053937740647874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080851 n + A000292 (A025691 (n + 1)).toNat

end

end A261720.P4821053937740647874

namespace A261720

/-- `A080851(n)+A000292(A025691(n+1))` -/
def P4821053937740647874.Spec : Prop :=
  ∀ n, P4821053937740647874.a n = A261720 (n + 1)

end A261720

/-! ## A261720.P15999478837112391088

`A080851(A007401(n+1))%A000045(n+6)`
-/

namespace A261720.P15999478837112391088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080851 (A007401 (n + 1)).toNat) (A000045 (n + 6))

end

end A261720.P15999478837112391088

namespace A261720

/-- `A080851(A007401(n+1))%A000045(n+6)` -/
def P15999478837112391088.Spec : Prop :=
  ∀ n, P15999478837112391088.a n = A261720 (n + 1)

end A261720

/-!
# A261721: Fourth-dimensional figurate numbers.

The programs for A261721, the canonical program `A261721.P15285887266840909957` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261721 has offset 1).

The definition of A261721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261721.P15285887266840909957

`C(col(n)+3, 3)+(row(n)-col(n)+1)*C(col(n)+3, 4)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A261721

/-- `C(col(n)+3, 3)+(row(n)-col(n)+1)*C(col(n)+3, 4)` -/
def P15285887266840909957.Spec : Prop :=
  ∀ n, P15285887266840909957.a n = A261721 (n + 1)

theorem P15285887266840909957.correct : P15285887266840909957.Spec := by
  intro n
  simp only [A261721, Nat.add_sub_cancel]

end A261721

/-! ## A261721.P3087940998335006645

`C(col(n)+4, 4)+(row(n)-col(n))*C(col(n)+3, 4)`
-/

namespace A261721.P3087940998335006645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triCol n + 4) 4 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (Nat.choose (SequenceMachineLib.triCol n + 3) 4 : ℤ)

end

end A261721.P3087940998335006645

namespace A261721

/-- `C(col(n)+4, 4)+(row(n)-col(n))*C(col(n)+3, 4)` -/
def P3087940998335006645.Spec : Prop :=
  ∀ n, P3087940998335006645.a n = A261721 (n + 1)

theorem P3087940998335006645.correct : P3087940998335006645.Spec := by
  intro n
  simp only [A261721, Nat.add_sub_cancel, A261721.P3087940998335006645.a, A261721.P15285887266840909957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A261721

/-! ## A261721.P9678988169296350207

`A080852(comp[∑[n-1]])`
-/

namespace A261721.P9678988169296350207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080852 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A261721.P9678988169296350207

namespace A261721

/-- `A080852(comp[∑[n-1]])` -/
def P9678988169296350207.Spec : Prop :=
  ∀ n, P9678988169296350207.a n = A261721 (n + 1)

end A261721

/-! ## A261721.P7475055926665040152

`or(char[1], A080852(A007401(n+1)))`
-/

namespace A261721.P7475055926665040152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A080852 (A007401 (n + 1)).toNat)

end

end A261721.P7475055926665040152

namespace A261721

/-- `or(char[1], A080852(A007401(n+1)))` -/
def P7475055926665040152.Spec : Prop :=
  ∀ n, P7475055926665040152.a n = A261721 (n + 1)

end A261721

/-! ## A261721.P7333011441212097271

`Δ[A080852(A007401(n))+a(n-1)]` with `a(0)=1`
-/

namespace A261721.P7333011441212097271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A080852 (A007401 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261721.P7333011441212097271

namespace A261721

/-- `Δ[A080852(A007401(n))+a(n-1)]` -/
def P7333011441212097271.Spec : Prop :=
  ∀ n, P7333011441212097271.a n = A261721 (n + 1)

end A261721

/-! ## A261721.P2603571080812484778

`A080852(A007401(n+1))%(A016933(n)^5)`
-/

namespace A261721.P2603571080812484778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080852 (A007401 (n + 1)).toNat) (A016933 n ^ 5)

end

end A261721.P2603571080812484778

namespace A261721

/-- `A080852(A007401(n+1))%(A016933(n)^5)` -/
def P2603571080812484778.Spec : Prop :=
  ∀ n, P2603571080812484778.a n = A261721 (n + 1)

end A261721

/-! ## A261721.P2803304071961439368

`A080852(A007401(n+1))+A008683(8*(n+1))`
-/

namespace A261721.P2803304071961439368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080852 (A007401 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A261721.P2803304071961439368

namespace A261721

/-- `A080852(A007401(n+1))+A008683(8*(n+1))` -/
def P2803304071961439368.Spec : Prop :=
  ∀ n, P2803304071961439368.a n = A261721 (n + 1)

end A261721

/-! ## A261721.P88087969462711465

`A080852(A007401(n+1))+(A000027(n+1)-n+1)%2`
-/

namespace A261721.P88087969462711465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080852 (A007401 (n + 1)).toNat + Int.tmod (A000027 (n + 1) - (n : ℤ) + 1) 2

end

end A261721.P88087969462711465

namespace A261721

/-- `A080852(A007401(n+1))+(A000027(n+1)-n+1)%2` -/
def P88087969462711465.Spec : Prop :=
  ∀ n, P88087969462711465.a n = A261721 (n + 1)

end A261721

/-! ## A261721.P5646236293808822437

`and(1, A000045(n))!*A080852(A007401(n+1))`
-/

namespace A261721.P5646236293808822437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000045 n)).toNat : ℤ) * A080852 (A007401 (n + 1)).toNat

end

end A261721.P5646236293808822437

namespace A261721

/-- `and(1, A000045(n))!*A080852(A007401(n+1))` -/
def P5646236293808822437.Spec : Prop :=
  ∀ n, P5646236293808822437.a n = A261721 (n + 1)

end A261721

/-! ## A261721.P15455368112496433279

`A080852(A007401(n+1))%∑[A000032(n)]`
-/

namespace A261721.P15455368112496433279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080852 (A007401 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261721.P15455368112496433279

namespace A261721

/-- `A080852(A007401(n+1))%∑[A000032(n)]` -/
def P15455368112496433279.Spec : Prop :=
  ∀ n, P15455368112496433279.a n = A261721 (n + 1)

end A261721

/-! ## A261721.P517164965304225171

`A007318(∑[n])*A080852(A007401(n+1))`
-/

namespace A261721.P517164965304225171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A080852 (A007401 (n + 1)).toNat

end

end A261721.P517164965304225171

namespace A261721

/-- `A007318(∑[n])*A080852(A007401(n+1))` -/
def P517164965304225171.Spec : Prop :=
  ∀ n, P517164965304225171.a n = A261721 (n + 1)

end A261721

/-! ## A261721.P34241387725185263

`A080852(A007401(n+1))/A007318(∑[n+1])`
-/

namespace A261721.P34241387725185263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080852 (A007401 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A261721.P34241387725185263

namespace A261721

/-- `A080852(A007401(n+1))/A007318(∑[n+1])` -/
def P34241387725185263.Spec : Prop :=
  ∀ n, P34241387725185263.a n = (A261721 (n + 1) : ℚ)

end A261721

/-!
# A261723: Interleave 2^n + 2 and 2^n + 1.

The programs for A261723, the canonical program `A261723.P6934140495678287330` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261723 has offset 1).

The definition of A261723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261723.P1344718294721642915

`ogf((4+3x-6x^2-4x^3)/(1-3x^2+2x^4))`
-/

namespace A261723.P1344718294721642915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, -6, -4] [1, 0, -3, 0, 2] n

end

end A261723.P1344718294721642915

namespace A261723

/-- `ogf((4+3x-6x^2-4x^3)/(1-3x^2+2x^4))` -/
def P1344718294721642915.Spec : Prop :=
  ∀ n, P1344718294721642915.a n = A261723 (n + 1)

end A261723

/-! ## A261723.P6934140495678287330

`3*a(n-2)-2*a(n-4)` with `a(0)=4, a(1)=3, a(2)=6, a(3)=5`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A261723

/-- `3*a(n-2)-2*a(n-4)` -/
def P6934140495678287330.Spec : Prop :=
  ∀ n, P6934140495678287330.a n = A261723 (n + 1)

theorem P6934140495678287330.correct : P6934140495678287330.Spec := by
  intro n
  simp only [A261723, Nat.add_sub_cancel]

end A261723

/-! ## A261723.P5081327079520769627

`∏[gcd(2, n)]+gcd(2, n)`
-/

namespace A261723.P5081327079520769627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + Nat.gcd 2 n

end

end A261723.P5081327079520769627

namespace A261723

/-- `∏[gcd(2, n)]+gcd(2, n)` -/
def P5081327079520769627.Spec : Prop :=
  ∀ n, (P5081327079520769627.a n : ℤ) = A261723 (n + 1)

end A261723

/-! ## A261723.P7710689375467626457

`lcm(2, a(n-1))-n%2` with `a(0)=4`
-/

namespace A261723.P7710689375467626457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (Int.lcm 2 (a (n - 1)) : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A261723.P7710689375467626457

namespace A261723

/-- `lcm(2, a(n-1))-n%2` -/
def P7710689375467626457.Spec : Prop :=
  ∀ n, P7710689375467626457.a n = A261723 (n + 1)

end A261723

/-! ## A261723.P11899973313582911686

`a(n-2)+2^floor(n/2)` with `a(0)=4, a(1)=3`
-/

namespace A261723.P11899973313582911686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 3] fun n a =>
  a (n - 2) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A261723.P11899973313582911686

namespace A261723

/-- `a(n-2)+2^floor(n/2)` -/
def P11899973313582911686.Spec : Prop :=
  ∀ n, P11899973313582911686.a n = (A261723 (n + 1) : ℚ)

end A261723

/-! ## A261723.P8266957685406410521

`∏[char[2*n]+1]+char[2*n]+1`
-/

namespace A261723.P8266957685406410521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ((if ∃ j, f3 j = n then 1 else 0) + 1)

end

end A261723.P8266957685406410521

namespace A261723

/-- `∏[char[2*n]+1]+char[2*n]+1` -/
def P8266957685406410521.Spec : Prop :=
  ∀ n, (P8266957685406410521.a n : ℤ) = A261723 (n + 1)

end A261723

/-! ## A261723.P3838263088859228856

`floor(a(n-2)+(a(n-1)-1)%a(n-2))` with `a(0)=4, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A261723.P3838263088859228856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  a (n - 2) + Int.tmod (a (n - 1) - 1) (a (n - 2))

end

end A261723.P3838263088859228856

namespace A261723

/-- `floor(a(n-2)+(a(n-1)-1)%a(n-2))` -/
def P3838263088859228856.Spec : Prop :=
  ∀ n, P3838263088859228856.a n = A261723 (n + 1)

end A261723

/-! ## A261723.P7340623138799814859

`floor(a(n-2)-(1-a(n-1))%a(n-2))` with `a(0)=4, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A261723.P7340623138799814859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  a (n - 2) - Int.tmod (1 - a (n - 1)) (a (n - 2))

end

end A261723.P7340623138799814859

namespace A261723

/-- `floor(a(n-2)-(1-a(n-1))%a(n-2))` -/
def P7340623138799814859.Spec : Prop :=
  ∀ n, P7340623138799814859.a n = A261723 (n + 1)

end A261723

/-! ## A261723.P15712489082134758841

`A040001(n+2)*A051032(n+1)`
-/

namespace A261723.P15712489082134758841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A051032 (n + 1)

end

end A261723.P15712489082134758841

namespace A261723

/-- `A040001(n+2)*A051032(n+1)` -/
def P15712489082134758841.Spec : Prop :=
  ∀ n, P15712489082134758841.a n = A261723 (n + 1)

end A261723

/-! ## A261723.P13016478236193925693

`(A016116(n+1)+1)*A000034(n+1)`
-/

namespace A261723.P13016478236193925693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016116 (n + 1) + 1) * A000034 (n + 1)

end

end A261723.P13016478236193925693

namespace A261723

/-- `(A016116(n+1)+1)*A000034(n+1)` -/
def P13016478236193925693.Spec : Prop :=
  ∀ n, P13016478236193925693.a n = A261723 (n + 1)

end A261723

/-! ## A261723.P15962696540577192091

`(A131572(n+1)+1)*A000034(n+1)`
-/

namespace A261723.P15962696540577192091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131572 (n + 1) + 1) * A000034 (n + 1)

end

end A261723.P15962696540577192091

namespace A261723

/-- `(A131572(n+1)+1)*A000034(n+1)` -/
def P15962696540577192091.Spec : Prop :=
  ∀ n, P15962696540577192091.a n = A261723 (n + 1)

end A261723

/-! ## A261723.P16932206298357568007

`(A052552(n+1)+A000035(n+1))*A052552(n)`
-/

namespace A261723.P16932206298357568007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052552 (n + 1) + A000035 (n + 1)) * A052552 n

end

end A261723.P16932206298357568007

namespace A261723

/-- `(A052552(n+1)+A000035(n+1))*A052552(n)` -/
def P16932206298357568007.Spec : Prop :=
  ∀ n, P16932206298357568007.a n = A261723 (n + 1)

end A261723

/-! ## A261723.P16169631097963768633

`2*(∏[A176895(2*n)]+1)/A176895(2*n)`
-/

namespace A261723.P16169631097963768633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (∏ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ) : ℚ) / (A176895 (2 * n) : ℚ)

end

end A261723.P16169631097963768633

namespace A261723

/-- `2*(∏[A176895(2*n)]+1)/A176895(2*n)` -/
def P16169631097963768633.Spec : Prop :=
  ∀ n, P16169631097963768633.a n = (A261723 (n + 1) : ℚ)

end A261723

/-! ## A261723.P14000053840768941237

`2/A016116(n+1)*A005418(n+2)`
-/

namespace A261723.P14000053840768941237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A016116 (n + 1) : ℚ) * (A005418 (n + 2) : ℚ)

end

end A261723.P14000053840768941237

namespace A261723

/-- `2/A016116(n+1)*A005418(n+2)` -/
def P14000053840768941237.Spec : Prop :=
  ∀ n, P14000053840768941237.a n = (A261723 (n + 1) : ℚ)

end A261723

/-! ## A261723.P5254753415352158938

`(A060546(n+1)+A000079(n+1))/A060546(n)`
-/

namespace A261723.P5254753415352158938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060546 (n + 1) + A000079 (n + 1) : ℚ) / (A060546 n : ℚ)

end

end A261723.P5254753415352158938

namespace A261723

/-- `(A060546(n+1)+A000079(n+1))/A060546(n)` -/
def P5254753415352158938.Spec : Prop :=
  ∀ n, P5254753415352158938.a n = (A261723 (n + 1) : ℚ)

end A261723

/-! ## A261723.P13371702824174014161

`A264802(A117142(n+2))`
-/

namespace A261723.P13371702824174014161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264802 (A117142 (n + 2)).toNat

end

end A261723.P13371702824174014161

namespace A261723

/-- `A264802(A117142(n+2))` -/
def P13371702824174014161.Spec : Prop :=
  ∀ n, P13371702824174014161.a n = A261723 (n + 1)

end A261723

/-! ## A261723.P16754767283479461136

`A005418(n+2)*A060546(n+1)/A060546(2*n)`
-/

namespace A261723.P16754767283479461136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005418 (n + 2) * A060546 (n + 1) : ℚ) / (A060546 (2 * n) : ℚ)

end

end A261723.P16754767283479461136

namespace A261723

/-- `A005418(n+2)*A060546(n+1)/A060546(2*n)` -/
def P16754767283479461136.Spec : Prop :=
  ∀ n, P16754767283479461136.a n = (A261723 (n + 1) : ℚ)

end A261723

/-!
# A261724: a(n) is the number of ways of putting n labeled balls into 4 indistinguishable boxes such that each box contains at least 3 balls.

The programs for A261724, there is no canonical definition to state claims against.
-/

/-! ## A261724.P7454155046213419283

`A352477(n)+A350286(n+1)`
-/

namespace A261724.P7454155046213419283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352477 (n + 12) + A350286 (n + 1)

end

end A261724.P7454155046213419283

/-!
# A261726: a(n) = binomial(prime(n+1)-1, prime(n)-1).

The programs for A261726, the canonical program `A261726.P7072492619739655578` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261726 has offset 1).

The definition of A261726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000040(n+2)-1, A000040(n+1)-1)` (program `A261726.P7072492619739655578`, by `A261726.P7072492619739655578.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261726.P7072492619739655578

`C(A000040(n+2)-1, A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A261726

/-- `C(A000040(n+2)-1, A000040(n+1)-1)` -/
def P7072492619739655578.Spec : Prop :=
  ∀ n, (P7072492619739655578.a n : ℤ) = A261726 (n + 1)

theorem P7072492619739655578.correct : P7072492619739655578.Spec := by
  intro n
  simp only [A261726, Nat.add_sub_cancel]

end A261726

/-! ## A261726.P3228257952738446357

`C(A006093(n+2), A001223(n+1))`
-/

namespace A261726.P3228257952738446357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006093 (n + 2)).toNat (A001223 (n + 1)).toNat

end

end A261726.P3228257952738446357

namespace A261726

/-- `C(A006093(n+2), A001223(n+1))` -/
def P3228257952738446357.Spec : Prop :=
  ∀ n, (P3228257952738446357.a n : ℤ) = A261726 (n + 1)

end A261726

/-! ## A261726.P9459264864596179

`C(A006093(n+2), A006093(n+1))`
-/

namespace A261726.P9459264864596179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006093 (n + 2)).toNat (A006093 (n + 1)).toNat

end

end A261726.P9459264864596179

namespace A261726

/-- `C(A006093(n+2), A006093(n+1))` -/
def P9459264864596179.Spec : Prop :=
  ∀ n, (P9459264864596179.a n : ℤ) = A261726 (n + 1)

end A261726

/-! ## A261726.P3223877703584523267

`A058077(n+1)/ratio[A000040(n+1)]`
-/

namespace A261726.P3223877703584523267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058077 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A261726.P3223877703584523267

namespace A261726

/-- `A058077(n+1)/ratio[A000040(n+1)]` -/
def P3223877703584523267.Spec : Prop :=
  ∀ n, P3223877703584523267.a n = (A261726 (n + 1) : ℚ)

end A261726

/-! ## A261726.P17435712064240441498

`C(record[A057063(n+2)], A001223(n+1))`
-/

namespace A261726.P17435712064240441498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057063 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat (A001223 (n + 1)).toNat

end

end A261726.P17435712064240441498

namespace A261726

/-- `C(record[A057063(n+2)], A001223(n+1))` -/
def P17435712064240441498.Spec : Prop :=
  ∀ n, (P17435712064240441498.a n : ℤ) = A261726 (n + 1)

end A261726

/-! ## A261726.P3113285776456946130

`C(A065091(n+1)-1, A001223(n+1))`
-/

namespace A261726.P3113285776456946130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 1) - 1).toNat (A001223 (n + 1)).toNat

end

end A261726.P3113285776456946130

namespace A261726

/-- `C(A065091(n+1)-1, A001223(n+1))` -/
def P3113285776456946130.Spec : Prop :=
  ∀ n, (P3113285776456946130.a n : ℤ) = A261726 (n + 1)

end A261726

/-! ## A261726.P8658243883148905062

`C(A000040(n+2)-1, A001223(n+1))`
-/

namespace A261726.P8658243883148905062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 2) - 1).toNat (A001223 (n + 1)).toNat

end

end A261726.P8658243883148905062

namespace A261726

/-- `C(A000040(n+2)-1, A001223(n+1))` -/
def P8658243883148905062.Spec : Prop :=
  ∀ n, (P8658243883148905062.a n : ℤ) = A261726 (n + 1)

end A261726

/-! ## A261726.P18065263626308701983

`C(A039915(n+2), A134735(2*(n+1)))`
-/

namespace A261726.P18065263626308701983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A039915 (n + 2)).toNat (A134735 (2 * (n + 1))).toNat

end

end A261726.P18065263626308701983

namespace A261726

/-- `C(A039915(n+2), A134735(2*(n+1)))` -/
def P18065263626308701983.Spec : Prop :=
  ∀ n, (P18065263626308701983.a n : ℤ) = A261726 (n + 1)

end A261726

/-! ## A261726.P5172767060909445415

`C(record[A060680(2*n+3)], A040976(n+1)+1)`
-/

namespace A261726.P5172767060909445415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat (A040976 (n + 1) + 1).toNat

end

end A261726.P5172767060909445415

namespace A261726

/-- `C(record[A060680(2*n+3)], A040976(n+1)+1)` -/
def P5172767060909445415.Spec : Prop :=
  ∀ n, (P5172767060909445415.a n : ℤ) = A261726 (n + 1)

end A261726

/-! ## A261726.P12686558304280489590

`C(A000010(A065091(n+1)), A001223(n+1))`
-/

namespace A261726.P12686558304280489590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (A065091 (n + 1)).toNat).toNat (A001223 (n + 1)).toNat

end

end A261726.P12686558304280489590

namespace A261726

/-- `C(A000010(A065091(n+1)), A001223(n+1))` -/
def P12686558304280489590.Spec : Prop :=
  ∀ n, (P12686558304280489590.a n : ℤ) = A261726 (n + 1)

end A261726

/-! ## A261726.P8506774016244350420

`C(A000010(A065091(n+1)), A054541(n+2))`
-/

namespace A261726.P8506774016244350420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (A065091 (n + 1)).toNat).toNat (A054541 (n + 2)).toNat

end

end A261726.P8506774016244350420

namespace A261726

/-- `C(A000010(A065091(n+1)), A054541(n+2))` -/
def P8506774016244350420.Spec : Prop :=
  ∀ n, (P8506774016244350420.a n : ℤ) = A261726 (n + 1)

end A261726

/-! ## A261726.P208931149128345837

`A000040(n+1)*A058077(n+1)/A000040(n+2)`
-/

namespace A261726.P208931149128345837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * A058077 (n + 1) : ℚ) / (A000040 (n + 2) : ℚ)

end

end A261726.P208931149128345837

namespace A261726

/-- `A000040(n+1)*A058077(n+1)/A000040(n+2)` -/
def P208931149128345837.Spec : Prop :=
  ∀ n, P208931149128345837.a n = (A261726 (n + 1) : ℚ)

end A261726

/-!
# A261728: a(1)=1; a(2*n) = 3*n; for odd n>1, a(n) is the smallest number not already present which is entailed by the rules (i) k present => 3*k+1 present; (ii) 2*k present => k present.

The programs for A261728, the canonical program `A261728.P10041244644177309717` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261728 has offset 1).

The definition of A261728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261728.P10041244644177309717

`ogf((1+3x+4x^2+6x^3+2x^4+9x^5+5x^6+6x^7+2x^8+3x^9+x^10)/(1-2x^6+x^12))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A261728

/-- `ogf((1+3x+4x^2+6x^3+2x^4+9x^5+5x^6+6x^7+2x^8+3x^9+x^10)/(1-2x^6+x^12))` -/
def P10041244644177309717.Spec : Prop :=
  ∀ n, P10041244644177309717.a n = A261728 (n + 1)

theorem P10041244644177309717.correct : P10041244644177309717.Spec := by
  intro n
  simp only [A261728, Nat.add_sub_cancel]

end A261728

/-!
# A261730: Values of n such that prime(n)! - n! + 1 is a prime number.

The programs for A261730, there is no canonical definition to state claims against.
-/

/-! ## A261730.P15896333544133697850

`A080084(A000866(n))`
-/

namespace A261730.P15896333544133697850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080084 (A000866 n).toNat

end

end A261730.P15896333544133697850

/-!
# A261731: Initial member of five twin prime pairs with gap 210 between them.

The programs for A261731, there is no canonical definition to state claims against.
-/

/-! ## A261731.P10617250823555301719

`A141592(n+1)-1`
-/

namespace A261731.P10617250823555301719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141592 (n + 1) - 1

end

end A261731.P10617250823555301719

/-! ## A261731.P11607496876119235888

`A153881(n+2)+A141592(n+1)`
-/

namespace A261731.P11607496876119235888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A141592 (n + 1)

end

end A261731.P11607496876119235888

/-! ## A261731.P15920694729865698894

`A260196(n+2)+A141592(n+1)`
-/

namespace A261731.P15920694729865698894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A141592 (n + 1)

end

end A261731.P15920694729865698894

/-! ## A261731.P10154164807371625127

`abs(A141592(n+1)+A008683(A007918(n)))`
-/

namespace A261731.P10154164807371625127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141592 (n + 1) + A008683 (A007918 n).toNat|

end

end A261731.P10154164807371625127

/-!
# A261732: Number of partitions of 2n where each part i is marked with a word of length i over an n-ary alphabet whose letters appear in alphabetical order and all n letters occur at least once in the partition.

The programs for A261732, there is no canonical definition to state claims against.
-/

/-! ## A261732.P8110908643594617934

`A261719(C(2*n+1, 2)+n)`
-/

namespace A261732.P8110908643594617934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (Nat.choose (2 * n + 1) 2 + n)

end

end A261732.P8110908643594617934

/-! ## A261732.P12872273642770752786

`A261719(∑[4*n])`
-/

namespace A261732.P12872273642770752786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261732.P12872273642770752786

/-! ## A261732.P7415350266633530013

`record[A261719(A225232(n+3))]`
-/

namespace A261732.P7415350266633530013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (A225232 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261732.P7415350266633530013

/-! ## A261732.P4710265455258074671

`record[A261719(n*A008619(n))]`
-/

namespace A261732.P4710265455258074671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261732.P4710265455258074671

/-! ## A261732.P17810749953312928344

`record[A203994(n+1)*A261719(n)]`
-/

namespace A261732.P17810749953312928344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A261719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261732.P17810749953312928344

/-!
# A261734: Expansion of Product_{k>=1} (1 + x^(4*k))/(1 + x^k).

The programs for A261734, there is no canonical definition to state claims against.
-/

/-! ## A261734.P11812293716879325610

`2*A339406(n)-A001935(n)`
-/

namespace A261734.P11812293716879325610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339406 n - A001935 n

end

end A261734.P11812293716879325610

/-! ## A261734.P13211817327214982270

`2*A339406(n)-abs(A083365(n))`
-/

namespace A261734.P13211817327214982270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339406 n - |A083365 n|

end

end A261734.P13211817327214982270

/-! ## A261734.P4411789495839726564

`2*A339406(n)-∑[A117275(n)]`
-/

namespace A261734.P4411789495839726564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339406 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261734.P4411789495839726564

/-! ## A261734.P18256506356295635854

`A339406(n)-A339407(n)`
-/

namespace A261734.P18256506356295635854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339406 n - A339407 n

end

end A261734.P18256506356295635854

/-! ## A261734.P5991747842709181909

`A001935(n)-2*A339407(n)`
-/

namespace A261734.P5991747842709181909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n - 2 * A339407 n

end

end A261734.P5991747842709181909

/-! ## A261734.P9674881222089296733

`abs(A083365(n))-2*A339407(n)`
-/

namespace A261734.P9674881222089296733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083365 n| - 2 * A339407 n

end

end A261734.P9674881222089296733

/-! ## A261734.P17177888472614710984

`∑[A117275(n)]-2*A339407(n)`
-/

namespace A261734.P17177888472614710984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A339407 n

end

end A261734.P17177888472614710984

/-!
# A261735: Expansion of Product_{k>=1} (1 + x^(8*k))/(1 + x^k).

The programs for A261735, there is no canonical definition to state claims against.
-/

/-! ## A261735.P2030464603347704266

`A081362(n)+A074290(A187618(n))`
-/

namespace A261735.P2030464603347704266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 n + A074290 (A187618 n).toNat

end

end A261735.P2030464603347704266

/-! ## A261735.P2339206863205172736

`A081362(A335835(n)%A052349(n+1))`
-/

namespace A261735.P2339206863205172736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 (Int.tmod (A335835 n) (A052349 (n + 1))).toNat

end

end A261735.P2339206863205172736

/-!
# A261736: Expansion of Product_{k>=1} (1 + x^(6*k))/(1 + x^k).

The programs for A261736, there is no canonical definition to state claims against.
-/

/-! ## A261736.P7172146598701379034

`(-1)^n*A328796(n)`
-/

namespace A261736.P7172146598701379034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A328796 n

end

end A261736.P7172146598701379034

/-! ## A261736.P17519242051118687403

`A328796(n)/A033999(n)`
-/

namespace A261736.P17519242051118687403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328796 n : ℚ) / (A033999 n : ℚ)

end

end A261736.P17519242051118687403

/-! ## A261736.P16741227042002954261

`A328796(n)/A009001(2*n)`
-/

namespace A261736.P16741227042002954261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328796 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A261736.P16741227042002954261

/-! ## A261736.P13107685006960500750

`A328796(n)/A157142(n)%2`
-/

namespace A261736.P13107685006960500750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328796 n : ℚ) / (Int.tmod (A157142 n) 2 : ℚ)

end

end A261736.P13107685006960500750

/-! ## A261736.P5703579055783073693

`-(A033999(n+1)*A328796(n))`
-/

namespace A261736.P5703579055783073693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (n + 1) * A328796 n)

end

end A261736.P5703579055783073693

/-! ## A261736.P2207598928946304047

`A328796(n)/(1-2*A000035(n))`
-/

namespace A261736.P2207598928946304047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328796 n : ℚ) / (1 - 2 * A000035 n : ℚ)

end

end A261736.P2207598928946304047

/-! ## A261736.P4694685625877351816

`A057077(A005408(n+1))*A328800(A005408(2*n))`
-/

namespace A261736.P4694685625877351816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A005408 (n + 1)).toNat * A328800 (A005408 (2 * n)).toNat

end

end A261736.P4694685625877351816

/-! ## A261736.P17085858866679256489

`A057077(n²+3)*A328800(A005408(2*n))`
-/

namespace A261736.P17085858866679256489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n ^ 2 + 3) * A328800 (A005408 (2 * n)).toNat

end

end A261736.P17085858866679256489

/-!
# A261737: Number of partitions of n where each part i is marked with a word of length i over a ternary alphabet whose letters appear in alphabetical order.

The programs for A261737, there is no canonical definition to state claims against.
-/

/-! ## A261737.P1790474210257213608

`A261718(∑[n+3]+n+3)`
-/

namespace A261737.P1790474210257213608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A261737.P1790474210257213608

/-! ## A261737.P9025182069258221262

`record[A261718(abs(A046691(n)))]`
-/

namespace A261737.P9025182069258221262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261737.P9025182069258221262

/-! ## A261737.P15008439892365337621

`record[A261718(A027379(n)-1)]`
-/

namespace A261737.P15008439892365337621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261737.P15008439892365337621

/-! ## A261737.P16439263899037322608

`or(char[1], A261718(A027379(n+2)-1))`
-/

namespace A261737.P16439263899037322608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A261718 (A027379 (n + 2) - 1).toNat)

end

end A261737.P16439263899037322608

/-! ## A261737.P15866870529537232640

`record[A261718(A038722(A167499(n)))]`
-/

namespace A261737.P15866870529537232640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261737.P15866870529537232640

/-!
# A261738: Number of partitions of n where each part i is marked with a word of length i over a quaternary alphabet whose letters appear in alphabetical order.

The programs for A261738, there is no canonical definition to state claims against.
-/

/-! ## A261738.P6589647831010306784

`record[A261718(A052905(n))]`
-/

namespace A261738.P6589647831010306784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261738.P6589647831010306784

/-! ## A261738.P16142145763675634809

`A261718(A052905(n+2))`
-/

namespace A261738.P16142145763675634809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A052905 (n + 2)).toNat

end

end A261738.P16142145763675634809

/-! ## A261738.P7137343974965528425

`A261718(eq[4, A025581(n)])`
-/

namespace A261738.P7137343974965528425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261738.P7137343974965528425

/-! ## A261738.P4477316661769794364

`record[A261718(A055999(n)+1)]`
-/

namespace A261738.P4477316661769794364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261738.P4477316661769794364

/-! ## A261738.P7384329740304994512

`A261718(A000217(n+5)-5)`
-/

namespace A261738.P7384329740304994512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A000217 (n + 5) - 5).toNat

end

end A261738.P7384329740304994512

/-! ## A261738.P15994612512672162515

`A261718(A161680(n+6)-5)`
-/

namespace A261738.P15994612512672162515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A161680 (n + 6) - 5).toNat

end

end A261738.P15994612512672162515

/-! ## A261738.P9346436344914374720

`record[A261718(abs(A046691(n))-1)]`
-/

namespace A261738.P9346436344914374720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261738.P9346436344914374720

/-! ## A261738.P7947831958630155826

`record[A261718(A046691(n+1)-1)]`
-/

namespace A261738.P7947831958630155826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261738.P7947831958630155826

/-! ## A261738.P2096452807840879752

`record[A261718(A027379(n+1)-2)]`
-/

namespace A261738.P2096452807840879752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261738.P2096452807840879752

/-!
# A261739: Number of partitions of n where each part i is marked with a word of length i over a quinary alphabet whose letters appear in alphabetical order.

The programs for A261739, there is no canonical definition to state claims against.
-/

/-! ## A261739.P11308284449950997640

`record[A261718(A055999(n))]`
-/

namespace A261739.P11308284449950997640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261739.P11308284449950997640

/-! ## A261739.P18105016177037945158

`A261718(A055999(n+3))`
-/

namespace A261739.P18105016177037945158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A055999 (n + 3)).toNat

end

end A261739.P18105016177037945158

/-! ## A261739.P3231660022481653241

`record[A261718(∑[A020705(n)])]`
-/

namespace A261739.P3231660022481653241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261739.P3231660022481653241

/-! ## A261739.P17405941836041743169

`A261718(Δ[A023551(n+1)])`
-/

namespace A261739.P17405941836041743169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (f1 (n + 1) - f1 n).toNat

end

end A261739.P17405941836041743169

/-! ## A261739.P570581402765394191

`record[A261718(A052905(n)-1)]`
-/

namespace A261739.P570581402765394191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261739.P570581402765394191

/-! ## A261739.P10202963916141465174

`record[A261718(A027379(n)+n)]`
-/

namespace A261739.P10202963916141465174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261739.P10202963916141465174

/-! ## A261739.P4930289743655485635

`A261718(A000124(n+6)-7)`
-/

namespace A261739.P4930289743655485635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A000124 (n + 6) - 7).toNat

end

end A261739.P4930289743655485635

/-! ## A261739.P16176162538483482195

`record[A261718(abs(2-A046691(n)))]`
-/

namespace A261739.P16176162538483482195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 |2 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261739.P16176162538483482195

/-! ## A261739.P7813150016519807749

`record[A261718(A046691(n+1)-2)]`
-/

namespace A261739.P7813150016519807749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A046691 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261739.P7813150016519807749

/-! ## A261739.P9769073876691676871

`record[A261718(A034928(A167614(n+1)))]`
-/

namespace A261739.P9769073876691676871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A034928 (A167614 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261739.P9769073876691676871

/-!
# A261740: Number of partitions of n where each part i is marked with a word of length i over a senary alphabet whose letters appear in alphabetical order.

The programs for A261740, there is no canonical definition to state claims against.
-/

/-! ## A261740.P1888135565430013586

`A261718(A000217(n+7)-7)`
-/

namespace A261740.P1888135565430013586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A000217 (n + 7) - 7).toNat

end

end A261740.P1888135565430013586

/-! ## A261740.P14129330168921888139

`A261718(A161680(n+8)-7)`
-/

namespace A261740.P14129330168921888139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A161680 (n + 8) - 7).toNat

end

end A261740.P14129330168921888139

/-! ## A261740.P16486741181281313615

`A261718(eq[7, A004736(n+1)])`
-/

namespace A261740.P16486741181281313615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261740.P16486741181281313615

/-! ## A261740.P2500417787077355109

`A261718(Δ[A023551(n+2)]-1)`
-/

namespace A261740.P2500417787077355109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (f1 (n + 1) - f1 n - 1).toNat

end

end A261740.P2500417787077355109

/-! ## A261740.P12032882414379496422

`A261718(A046691(n+4)+A020705(n))`
-/

namespace A261740.P12032882414379496422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A046691 (n + 4) + A020705 n).toNat

end

end A261740.P12032882414379496422

/-! ## A261740.P15573142113424759102

`A261718(A317108(n+2)+A133263(n+5))`
-/

namespace A261740.P15573142113424759102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A317108 (n + 2) + A133263 (n + 5)).toNat

end

end A261740.P15573142113424759102

/-!
# A261741: Number of partitions of n where each part i is marked with a word of length i over a septenary alphabet whose letters appear in alphabetical order.

The programs for A261741, there is no canonical definition to state claims against.
-/

/-! ## A261741.P9413268805122700339

`A261718(eq[7, A025581(n)])`
-/

namespace A261741.P9413268805122700339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261741.P9413268805122700339

/-! ## A261741.P12853400029181948451

`A261718(eq[8, A193739(n)])`
-/

namespace A261741.P12853400029181948451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261741.P12853400029181948451

/-! ## A261741.P14945157188418790515

`A261718(A253145(n+7)-8)`
-/

namespace A261741.P14945157188418790515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A253145 (n + 7) - 8).toNat

end

end A261741.P14945157188418790515

/-! ## A261741.P16544849083837012026

`A261718(A000217(n+8)-8)`
-/

namespace A261741.P16544849083837012026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A000217 (n + 8) - 8).toNat

end

end A261741.P16544849083837012026

/-! ## A261741.P4642772887310788299

`A261718(A161680(n+9)-8)`
-/

namespace A261741.P4642772887310788299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A161680 (n + 9) - 8).toNat

end

end A261741.P4642772887310788299

/-! ## A261741.P11606151683237520164

`A261718(eq[8, A004736(n+1)])`
-/

namespace A261741.P11606151683237520164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261741.P11606151683237520164

/-!
# A261742: Number of partitions of n where each part i is marked with a word of length i over an octonary alphabet whose letters appear in alphabetical order.

The programs for A261742, there is no canonical definition to state claims against.
-/

/-! ## A261742.P18181827480918325306

`A261718(A055999(n+6)-3)`
-/

namespace A261742.P18181827480918325306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A055999 (n + 6) - 3).toNat

end

end A261742.P18181827480918325306

/-! ## A261742.P16394777616499477852

`A261718(A052905(n+6)-4)`
-/

namespace A261742.P16394777616499477852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A052905 (n + 6) - 4).toNat

end

end A261742.P16394777616499477852

/-! ## A261742.P6908440966531022151

`A261718(A253145(n+8)-9)`
-/

namespace A261742.P6908440966531022151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A253145 (n + 8) - 9).toNat

end

end A261742.P6908440966531022151

/-! ## A261742.P8538737883914138518

`A261718(A000217(n+9)-9)`
-/

namespace A261742.P8538737883914138518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A000217 (n + 9) - 9).toNat

end

end A261742.P8538737883914138518

/-! ## A261742.P16661744960573935933

`A261718(A161680(n+10)-9)`
-/

namespace A261742.P16661744960573935933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A161680 (n + 10) - 9).toNat

end

end A261742.P16661744960573935933

/-!
# A261743: Number of partitions of n where each part i is marked with a word of length i over a nonary alphabet whose letters appear in alphabetical order.

The programs for A261743, there is no canonical definition to state claims against.
-/

/-! ## A261743.P7407870937931065517

`A261718(A056000(n+6))`
-/

namespace A261743.P7407870937931065517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A056000 (n + 6)).toNat

end

end A261743.P7407870937931065517

/-! ## A261743.P15922595871302363259

`A261718(A055999(n+7)-4)`
-/

namespace A261743.P15922595871302363259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A055999 (n + 7) - 4).toNat

end

end A261743.P15922595871302363259

/-! ## A261743.P11650345473611449969

`A261718(A253145(n+9)-10)`
-/

namespace A261743.P11650345473611449969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A253145 (n + 9) - 10).toNat

end

end A261743.P11650345473611449969

/-! ## A261743.P201048297162988629

`A261718(A000217(n+10)-10)`
-/

namespace A261743.P201048297162988629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A000217 (n + 10) - 10).toNat

end

end A261743.P201048297162988629

/-! ## A261743.P8238011462387519883

`A261718(A161680(n+11)-10)`
-/

namespace A261743.P8238011462387519883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A161680 (n + 11) - 10).toNat

end

end A261743.P8238011462387519883

/-!
# A261744: Number of partitions of n where each part i is marked with a word of length i over a denary alphabet whose letters appear in alphabetical order.

The programs for A261744, there is no canonical definition to state claims against.
-/

/-! ## A261744.P12485676618009234476

`A261718(eq[10, A025581(n)])`
-/

namespace A261744.P12485676618009234476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261744.P12485676618009234476

/-! ## A261744.P12373228872041316055

`A261718(A052905(n+8)-6)`
-/

namespace A261744.P12373228872041316055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A052905 (n + 8) - 6).toNat

end

end A261744.P12373228872041316055

/-! ## A261744.P15462338003263707806

`A261718(A253145(n+10)-11)`
-/

namespace A261744.P15462338003263707806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A253145 (n + 10) - 11).toNat

end

end A261744.P15462338003263707806

/-! ## A261744.P9209280924218415486

`A261718(A000217(n+11)-11)`
-/

namespace A261744.P9209280924218415486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A000217 (n + 11) - 11).toNat

end

end A261744.P9209280924218415486

/-! ## A261744.P16775626000261897370

`A261718(A161680(n+12)-11)`
-/

namespace A261744.P16775626000261897370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A161680 (n + 12) - 11).toNat

end

end A261744.P16775626000261897370

/-! ## A261744.P2307743989748926046

`A261718(eq[11, A004736(n+1)])`
-/

namespace A261744.P2307743989748926046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261744.P2307743989748926046

/-!
# A261746: Chocolate numbers.

The programs for A261746, there is no canonical definition to state claims against.
-/

/-! ## A261746.P5530118956987878967

`record[A131758(n)/A132318(n)]`
-/

namespace A261746.P5530118956987878967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131758 n : ℚ) / (A132318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261746.P5530118956987878967

/-! ## A261746.P16105360458785147907

`record[and(A048764(n+1), A123901(n))]`
-/

namespace A261746.P16105360458785147907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048764 (n + 1)) (A123901 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261746.P16105360458785147907

/-! ## A261746.P6256187927785609437

`A297531(A232165(n))`
-/

namespace A261746.P6256187927785609437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297531 (A232165 n).toNat

end

end A261746.P6256187927785609437

/-!
# A261747: Chocolate-2 numbers.

The programs for A261747, there is no canonical definition to state claims against.
-/

/-! ## A261747.P9669405809918268667

`A261964(∑[n]+2)`
-/

namespace A261747.P9669405809918268667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261964 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A261747.P9669405809918268667

/-! ## A261747.P10062742845469030970

`and(-1, A261964(A133263(n)))`
-/

namespace A261747.P10062742845469030970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A261964 (A133263 n).toNat)

end

end A261747.P10062742845469030970

/-! ## A261747.P16756114800505608236

`A261964(A133263(n))+A079694(n)`
-/

namespace A261747.P16756114800505608236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261964 (A133263 n).toNat + A079694 n

end

end A261747.P16756114800505608236

/-! ## A261747.P12433365127599191983

`A261964(A133263(n))+A185284(n)`
-/

namespace A261747.P12433365127599191983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261964 (A133263 n).toNat + A185284 n

end

end A261747.P12433365127599191983

/-!
# A261748: Primes of the form p^3 - q^3 + r^3 where p, q, r are consecutive primes.

The programs for A261748, there is no canonical definition to state claims against.
-/

/-! ## A261748.P5277093987467758639

`p?[A129701(n+2)+A030078(n+1)]`
-/

namespace A261748.P5277093987467758639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129701 (n + 2) + A030078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261748.P5277093987467758639

/-!
# A261750: Number of conjugacy classes of two-element generating sets in the symmetric group S_n.

The programs for A261750, there is no canonical definition to state claims against.
-/

/-! ## A261750.P8442857294983894606

`A133956(a(n-1)+a(n-gcd(2, n+1)))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A261750.P8442857294983894606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A133956 (a (n - 1) + a (n - Nat.gcd 2 (n + 1))).toNat

end

end A261750.P8442857294983894606

/-! ## A261750.P9439667120981603169

`A023788(A277703(n+1))`
-/

namespace A261750.P9439667120981603169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023788 (A277703 (n + 1)).toNat

end

end A261750.P9439667120981603169

/-!
# A261751: Numbers n with property that binary expansion of n^3 begins with the binary expansion of n.

The programs for A261751, there is no canonical definition to state claims against.
-/

/-! ## A261751.P9278670017020090599

`record[A014682(A116601(n))-A116601(n)]`
-/

namespace A261751.P9278670017020090599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A116601 n).toNat - A116601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261751.P9278670017020090599

/-! ## A261751.P16787272935261560511

`eq[0, and((1-n)², n²)]`
-/

namespace A261751.P16787272935261560511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((1 - (n : ℤ)) ^ 2) (n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261751.P16787272935261560511

/-! ## A261751.P6561172563374513993

`lt[and((1-n)², n²), 1]`
-/

namespace A261751.P6561172563374513993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((1 - (n : ℤ)) ^ 2) (n ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A261751.P6561172563374513993

/-! ## A261751.P13242117170413829806

`record[A318518(A017912(n))]`
-/

namespace A261751.P13242117170413829806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A017912 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261751.P13242117170413829806

/-! ## A261751.P10390059566740481775

`record[A318518(A116601(n)+1)]`
-/

namespace A261751.P10390059566740481775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A116601 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261751.P10390059566740481775

/-!
# A261752: Minimum number of knights on an n X n chessboard such that every square is attacked.

The programs for A261752, there is no canonical definition to state claims against.
-/

/-! ## A261752.P6299266829669989067

`record[A105527(2*n+5)-A046315(n+1)%A086021(n+1)]`
-/

namespace A261752.P6299266829669989067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105527 (2 * n + 5) - Int.tmod (A046315 (n + 1)) (A086021 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261752.P6299266829669989067

/-!
# A261753: Number of (n+1)X(n+1) 0..1 arrays with each row and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261753, there is no canonical definition to state claims against.
-/

/-! ## A261753.P10161911876620089448

`A261761(∑[4*n]+1)`
-/

namespace A261753.P10161911876620089448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261753.P10161911876620089448

/-! ## A261753.P4619647985741812590

`A261761(A001844(n))+char[6]`
-/

namespace A261753.P4619647985741812590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A261753.P4619647985741812590

/-!
# A261754: Number of (n+1)X(1+1) 0..1 arrays with each row and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261754, there is no canonical definition to state claims against.
-/

/-! ## A261754.P2362205737086241347

`A059305(A332220(n+2))*A332219(n+2)`
-/

namespace A261754.P2362205737086241347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059305 (A332220 (n + 2)).toNat * A332219 (n + 2)

end

end A261754.P2362205737086241347

/-! ## A261754.P1910682691124792921

`A059305(∑[A332219(n+2)])*A332219(n+2)`
-/

namespace A261754.P1910682691124792921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059305 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A332219 (n + 2)

end

end A261754.P1910682691124792921

/-! ## A261754.P8140586785164562107

`A261761(∑[1+n])`
-/

namespace A261754.P8140586785164562107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261754.P8140586785164562107

/-! ## A261754.P5628026124130503129

`A090112(2^(n+2))`
-/

namespace A261754.P5628026124130503129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090112 (2 ^ (n + 2))

end

end A261754.P5628026124130503129

/-! ## A261754.P4228850912345213428

`A049084(2^(n+2)-1)`
-/

namespace A261754.P4228850912345213428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 ^ (n + 2) - 1)

end

end A261754.P4228850912345213428

/-!
# A261755: Number of (n+1)X(2+1) 0..1 arrays with each row and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261755, there is no canonical definition to state claims against.
-/

/-! ## A261755.P8727532521590139492

`A261761(∑[n+1]+2)`
-/

namespace A261755.P8727532521590139492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A261755.P8727532521590139492

/-! ## A261755.P7601556722746728871

`A261761(A000096(n)+3)%A017441(n)`
-/

namespace A261755.P7601556722746728871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261761 (A000096 n + 3).toNat) (A017441 n)

end

end A261755.P7601556722746728871

/-! ## A261755.P12435937500511932536

`lcm(A008836(n+1), A261761(A000096(n)+3))`
-/

namespace A261755.P12435937500511932536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A261761 (A000096 n + 3).toNat)

end

end A261755.P12435937500511932536

/-! ## A261755.P16815999768413471619

`or(A261761(A000096(n)+3), A267145(2*n+1))`
-/

namespace A261755.P16815999768413471619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A261761 (A000096 n + 3).toNat) (A267145 (2 * n + 1))

end

end A261755.P16815999768413471619

/-! ## A261755.P7609142157076529209

`A000027(A261761(∑[n+2]))`
-/

namespace A261755.P7609142157076529209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A261761 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A261755.P7609142157076529209

/-!
# A261756: Number of (n+1)X(3+1) 0..1 arrays with each row and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261756, there is no canonical definition to state claims against.
-/

/-! ## A261756.P3043862213566883332

`A261761(∑[n+2]+4)`
-/

namespace A261756.P3043862213566883332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A261756.P3043862213566883332

/-! ## A261756.P4751531793356027290

`ceil(n/98)*A261761(A167614(n+1))`
-/

namespace A261756.P4751531793356027290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 98⌉ * A261761 (A167614 (n + 1)).toNat

end

end A261756.P4751531793356027290

/-! ## A261756.P13503649788772042129

`A261761(A167614(n+1))+A025466(n)`
-/

namespace A261756.P13503649788772042129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (A167614 (n + 1)).toNat + A025466 n

end

end A261756.P13503649788772042129

/-! ## A261756.P17060184817423057877

`A261761(A167614(n+1))+A084904(n)`
-/

namespace A261756.P17060184817423057877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (A167614 (n + 1)).toNat + A084904 n

end

end A261756.P17060184817423057877

/-! ## A261756.P3972843418980268372

`A261761(A167614(n+1))+A180649(n)`
-/

namespace A261756.P3972843418980268372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (A167614 (n + 1)).toNat + A180649 n

end

end A261756.P3972843418980268372

/-!
# A261757: Number of (n+1) X (4+1) 0..1 arrays with each row and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261757, there is no canonical definition to state claims against.
-/

/-! ## A261757.P7736411753539752508

`A261761(∑[n+3]+7)`
-/

namespace A261757.P7736411753539752508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A261757.P7736411753539752508

/-!
# A261758: Number of (n+1)X(5+1) 0..1 arrays with each row and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261758, there is no canonical definition to state claims against.
-/

/-! ## A261758.P163663122226093516

`A261761(A374005(n+1))`
-/

namespace A261758.P163663122226093516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (A374005 (n + 1)).toNat

end

end A261758.P163663122226093516

/-! ## A261758.P4843312984313751978

`A261761(A167499(n+3))`
-/

namespace A261758.P4843312984313751978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (A167499 (n + 3)).toNat

end

end A261758.P4843312984313751978

/-! ## A261758.P11711511161273744731

`A261761(A155212(n)+13)`
-/

namespace A261758.P11711511161273744731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (A155212 n + 13).toNat

end

end A261758.P11711511161273744731

/-! ## A261758.P17962506699679843743

`A261761(A056000(n)+15)`
-/

namespace A261758.P17962506699679843743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (A056000 n + 15).toNat

end

end A261758.P17962506699679843743

/-! ## A261758.P4166912247690162268

`A261761(eq[7, A066657(n)])`
-/

namespace A261758.P4166912247690162268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261758.P4166912247690162268

/-!
# A261759: Number of (n+1) X (6+1) 0..1 arrays with each row and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261759, there is no canonical definition to state claims against.
-/

/-! ## A261759.P17364962977472159131

`A261761(∑[n+6]+10)`
-/

namespace A261759.P17364962977472159131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A261759.P17364962977472159131

/-! ## A261759.P17738103380158254481

`A261761(A374007(n+1))-A326684(n)`
-/

namespace A261759.P17738103380158254481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (A374007 (n + 1)).toNat - A326684 n

end

end A261759.P17738103380158254481

/-! ## A261759.P4077447801614404492

`A261761(A374007(n+1))*A305936(3*n+1)`
-/

namespace A261759.P4077447801614404492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (A374007 (n + 1)).toNat * A305936 (3 * n + 1)

end

end A261759.P4077447801614404492

/-!
# A261760: Number of (n+1)X(7+1) 0..1 arrays with each row and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261760, there is no canonical definition to state claims against.
-/

/-! ## A261760.P12801337292382375147

`A261761(A374008(n+1))`
-/

namespace A261760.P12801337292382375147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (A374008 (n + 1)).toNat

end

end A261760.P12801337292382375147

/-! ## A261760.P8353445905575816401

`A261761(A055999(n+4))`
-/

namespace A261760.P8353445905575816401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261761 (A055999 (n + 4)).toNat

end

end A261760.P8353445905575816401

/-!
# A261762: Triangle read by rows: T(n,k) is the number of subpermutations of an n-set whose orbits are each of size at most k, and without fixed points. Equivalently, T(n,k) is the number of partial derangements of an n-set each of whose orbits is of size at most k.

The programs for A261762, there is no canonical definition to state claims against.
-/

/-! ## A261762.P1831890348928052748

`A134403(2^A294582(n))`
-/

namespace A261762.P1831890348928052748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134403 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A294582 n : ℤ))).toNat

end

end A261762.P1831890348928052748

/-! ## A261762.P106415827586539874

`∑{d}[A266183(n+1), A012265(#)]`
-/

namespace A261762.P106415827586539874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A012265 d

end

end A261762.P106415827586539874

/-!
# A261764: Triangle read by rows: T(n,k) is the number of nilpotent subpermutations on an n-set, each of nilpotency index less than or equal to k.

The programs for A261764, there is no canonical definition to state claims against.
-/

/-! ## A261764.P16744070876056348211

`A327189(A303535(n))`
-/

namespace A261764.P16744070876056348211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327189 (A303535 n).toNat

end

end A261764.P16744070876056348211

/-! ## A261764.P18176117168964119272

`xor(A341840(A303535(n)), A341856(n))`
-/

namespace A261764.P18176117168964119272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A341840 (A303535 n).toNat) (A341856 n)

end

end A261764.P18176117168964119272

/-! ## A261764.P4987479546644198830

`A029931(A335461(n)^A076050(n+1))`
-/

namespace A261764.P4987479546644198830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (SequenceMachineLib.roundAway ((A335461 n : ℚ) ^ (A076050 (n + 1) : ℤ))).toNat

end

end A261764.P4987479546644198830

/-! ## A261764.P1097779091572143063

`A349780(A049872(n))`
-/

namespace A261764.P1097779091572143063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349780 (A049872 n).toNat

end

end A261764.P1097779091572143063

/-! ## A261764.P12953591072260544062

`A349780(A061816(n))`
-/

namespace A261764.P12953591072260544062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349780 (A061816 n).toNat

end

end A261764.P12953591072260544062

/-!
# A261765: Triangle read by rows: T(n,k) is the number of subpermutations of an n-set, whose orbits are each of size at most k with at least one orbit of size exactly k, and without fixed points. Equivalently, T(n,k) is the number of partial derangements of an n-set each of whose orbits is of size at most k with at least one orbit of size exactly k, and without fixed points.

The programs for A261765, there is no canonical definition to state claims against.
-/

/-! ## A261765.P17957397013458298904

`dr(A303638(n+1)^A090683(n))`
-/

namespace A261765.P17957397013458298904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A303638 (n + 1) : ℚ) ^ (A090683 n : ℤ)))

end

end A261765.P17957397013458298904

/-! ## A261765.P3602722928234545407

`dr(A303638(n+1)^A143395(n))`
-/

namespace A261765.P3602722928234545407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A303638 (n + 1) : ℚ) ^ (A143395 n : ℤ)))

end

end A261765.P3602722928234545407

/-! ## A261765.P15061400089178658279

`and(-A016054(n+2), A076732(n+1))`
-/

namespace A261765.P15061400089178658279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A016054 (n + 2)) (A076732 (n + 1))

end

end A261765.P15061400089178658279

/-! ## A261765.P3875590940127399553

`and(comp[A108411(n)-1], A058580(3*n+2))`
-/

namespace A261765.P3875590940127399553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A058580 (3 * n + 2))

end

end A261765.P3875590940127399553

/-! ## A261765.P5286990880377459770

`A004442(A002262(n)^A010155(n))`
-/

namespace A261765.P5286990880377459770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A010155 n : ℤ))).toNat

end

end A261765.P5286990880377459770

/-!
# A261766: a(n) is the number of partial derangements of an n-set with at least one orbit of size exactly n.

The programs for A261766, there is no canonical definition to state claims against.
-/

/-! ## A261766.P6401492259897306105

`A261765(C(n+1, 2)+n)`
-/

namespace A261766.P6401492259897306105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261765 (Nat.choose (n + 1) 2 + n)

end

end A261766.P6401492259897306105

/-! ## A261766.P9434322173495321318

`n!*ratio[round(acot(n)+n)]-char[1]`
-/

namespace A261766.P9434322173495321318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ)

end

end A261766.P9434322173495321318

/-! ## A261766.P332791614294798293

`(n-1/n)*a(n-1)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A261766.P332791614294798293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  ((n : ℚ) - 1 / (n : ℚ)) * a (n - 1)

end

end A261766.P332791614294798293

/-! ## A261766.P16136510908501420428

`(n+1)*lcm(n-1, abs(1-n)!)`
-/

namespace A261766.P16136510908501420428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.lcm ((n : ℤ) - 1) (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ)

end

end A261766.P16136510908501420428

/-! ## A261766.P555430121389145463

`(n²-1)*∏[or(n-2, C(2, n))]`
-/

namespace A261766.P555430121389145463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 2) (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A261766.P555430121389145463

/-! ## A261766.P4017368226176326530

`(n+1)*gcd(n-1, a(n-2))!` with `a(0)=1, a(1)=0`
-/

namespace A261766.P4017368226176326530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n + 1) * Nat.factorial (Int.gcd ((n : ℤ) - 1) (a (n - 2) : ℤ))

end

end A261766.P4017368226176326530

/-! ## A261766.P15090506402633686245

`A059171(n+1)-char[1]`
-/

namespace A261766.P15090506402633686245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059171 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A261766.P15090506402633686245

/-! ## A261766.P15918366155801728326

`(n+1)!/gcd(n, a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A261766.P15918366155801728326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (Nat.factorial (n + 1) : ℚ) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A261766.P15918366155801728326

/-!
# A261768: a(n) = phi(n)^n - n^phi(n), where phi(n) is Euler's totient function.

The programs for A261768, the canonical program `A261768.P4235035151799676691` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261768 has offset 1).

The definition of A261768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261768.P4235035151799676691

`A000010(n+1)^(n+1)-A062981(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A261768

/-- `A000010(n+1)^(n+1)-A062981(n+1)` -/
def P4235035151799676691.Spec : Prop :=
  ∀ n, P4235035151799676691.a n = A261768 (n + 1)

theorem P4235035151799676691.correct : P4235035151799676691.Spec := by
  intro n
  simp only [A261768, Nat.add_sub_cancel]

end A261768

/-! ## A261768.P13178227633993589513

`A000010(n+1)^(n+1)-(n+1)^A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261768.P13178227633993589513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) ^ (n + 1) : ℚ) - (n + 1 : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A261768.P13178227633993589513

namespace A261768

/-- `A000010(n+1)^(n+1)-(n+1)^A000010(n+1)` -/
def P13178227633993589513.Spec : Prop :=
  ∀ n, P13178227633993589513.a n = (A261768 (n + 1) : ℚ)

end A261768

/-! ## A261768.P12822877162040838006

`A284438(n+1)-A062981(n+1)`
-/

namespace A261768.P12822877162040838006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284438 (n + 1) - A062981 (n + 1)

end

end A261768.P12822877162040838006

namespace A261768

/-- `A284438(n+1)-A062981(n+1)` -/
def P12822877162040838006.Spec : Prop :=
  ∀ n, P12822877162040838006.a n = A261768 (n + 1)

end A261768

/-! ## A261768.P977117316336087689

`A284438(n+1)-(n+1)^Δ[A005728(n)]`
-/

namespace A261768.P977117316336087689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284438 (n + 1) : ℚ) - (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A261768.P977117316336087689

namespace A261768

/-- `A284438(n+1)-(n+1)^Δ[A005728(n)]` -/
def P977117316336087689.Spec : Prop :=
  ∀ n, P977117316336087689.a n = (A261768 (n + 1) : ℚ)

end A261768

/-! ## A261768.P8960798833637006932

`A284438(n+1)-A175701(n+1)/(n+1)`
-/

namespace A261768.P8960798833637006932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284438 (n + 1) : ℚ) - (A175701 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A261768.P8960798833637006932

namespace A261768

/-- `A284438(n+1)-A175701(n+1)/(n+1)` -/
def P8960798833637006932.Spec : Prop :=
  ∀ n, P8960798833637006932.a n = (A261768 (n + 1) : ℚ)

end A261768

/-! ## A261768.P10674502005986899210

`A284438(n+1)-(n+1)^(n-A016035(n+1))`
-/

namespace A261768.P10674502005986899210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284438 (n + 1) : ℚ) - (n + 1 : ℚ) ^ ((n : ℤ) - A016035 (n + 1) : ℤ)

end

end A261768.P10674502005986899210

namespace A261768

/-- `A284438(n+1)-(n+1)^(n-A016035(n+1))` -/
def P10674502005986899210.Spec : Prop :=
  ∀ n, P10674502005986899210.a n = (A261768 (n + 1) : ℚ)

end A261768

/-!
# A261769: Number of distinct representations of n as a product of nonunit Fibonacci numbers (order doesn't matter).

The programs for A261769, there is no canonical definition to state claims against.
-/

/-! ## A261769.P7231252413351483332

`A005086(n+1)-A001221(A225004(n+1))`
-/

namespace A261769.P7231252413351483332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (n + 1) - A001221 (A225004 (n + 1)).toNat

end

end A261769.P7231252413351483332

/-! ## A261769.P3311946332598504323

`∑{d}[n+1, A010056(#)]-A087624(A225004(n+1))`
-/

namespace A261769.P3311946332598504323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010056 d - A087624 (A225004 (n + 1)).toNat

end

end A261769.P3311946332598504323

/-! ## A261769.P11422254691080836837

`A293435(n+1)+A192687(n)-A087624(A225004(n+1))`
-/

namespace A261769.P11422254691080836837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (n + 1) + (A192687 n - A087624 (A225004 (n + 1)).toNat)

end

end A261769.P11422254691080836837

/-! ## A261769.P1383387425175979852

`A005086(n+1)-A069010(A156552(n+1))`
-/

namespace A261769.P1383387425175979852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (n + 1) - A069010 (A156552 (n + 1)).toNat

end

end A261769.P1383387425175979852

/-! ## A261769.P9546307233193100069

`∑{d}[n+1, A010056(#)]-A069010(A156552(n+1))`
-/

namespace A261769.P9546307233193100069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010056 d - A069010 (A156552 (n + 1)).toNat

end

end A261769.P9546307233193100069

/-! ## A261769.P16261566991946810454

`val(A304104(n+1), 2)+1-A069010(A156552(n+1))`
-/

namespace A261769.P16261566991946810454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A304104 (n + 1)).toNat 2 + 1 : ℤ) - A069010 (A156552 (n + 1)).toNat

end

end A261769.P16261566991946810454

/-! ## A261769.P12578734581376235329

`A293435(n+1)+A192687(n)-A069010(A156552(n+1))`
-/

namespace A261769.P12578734581376235329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (n + 1) + (A192687 n - A069010 (A156552 (n + 1)).toNat)

end

end A261769.P12578734581376235329

/-! ## A261769.P9568474857398119460

`A293435(n+1)+A010056(n+1)-A069010(A156552(n+1))`
-/

namespace A261769.P9568474857398119460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (n + 1) + A010056 (n + 1) - A069010 (A156552 (n + 1)).toNat

end

end A261769.P9568474857398119460

/-!
# A261770: Expansion of Product_{k>=1} (1 + x^k) / (1 + x^(6*k)).

The programs for A261770, there is no canonical definition to state claims against.
-/

/-! ## A261770.P5059561393736599230

`A290307(A055999(n+3))`
-/

namespace A261770.P5059561393736599230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A055999 (n + 3)).toNat

end

end A261770.P5059561393736599230

/-! ## A261770.P2719446756807791034

`A290307(A056119(n)+15)`
-/

namespace A261770.P2719446756807791034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A056119 n + 15).toNat

end

end A261770.P2719446756807791034

/-! ## A261770.P9884298139149277133

`A290307(Δ[A023551(n+1)])`
-/

namespace A261770.P9884298139149277133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (f1 (n + 1) - f1 n).toNat

end

end A261770.P9884298139149277133

/-! ## A261770.P572722641316298528

`A290307(Δ[A026054(n+3)])`
-/

namespace A261770.P572722641316298528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (f1 (n + 1) - f1 n).toNat

end

end A261770.P572722641316298528

/-! ## A261770.P104830476285587729

`A290307(A052905(n+3)-1)`
-/

namespace A261770.P104830476285587729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A052905 (n + 3) - 1).toNat

end

end A261770.P104830476285587729

/-! ## A261770.P2943975001360659132

`A290307(A055998(n+4)-3)`
-/

namespace A261770.P2943975001360659132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A055998 (n + 4) - 3).toNat

end

end A261770.P2943975001360659132

/-! ## A261770.P7486394700507470219

`A290307(A000217(n+6)-6)`
-/

namespace A261770.P7486394700507470219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A000217 (n + 6) - 6).toNat

end

end A261770.P7486394700507470219

/-! ## A261770.P2724816762787951617

`A290307(A000124(n+6)-7)`
-/

namespace A261770.P2724816762787951617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A000124 (n + 6) - 7).toNat

end

end A261770.P2724816762787951617

/-! ## A261770.P17668878317756642705

`A290307(A000096(n+4)+n+1)`
-/

namespace A261770.P17668878317756642705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A261770.P17668878317756642705

/-! ## A261770.P1257349690796607682

`A290307(2*n+Δ[A008778(n+1)]+7)`
-/

namespace A261770.P1257349690796607682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 ((2 * n : ℤ) + (f1 (n + 1) - f1 n + 7)).toNat

end

end A261770.P1257349690796607682

/-! ## A261770.P5919778438352232563

`A290307(A145018(n+5)+A005408(n))`
-/

namespace A261770.P5919778438352232563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A145018 (n + 5) + A005408 n).toNat

end

end A261770.P5919778438352232563

/-!
# A261771: Expansion of Product_{k>=1} (1 + x^k) / (1 + x^(8*k)).

The programs for A261771, there is no canonical definition to state claims against.
-/

/-! ## A261771.P153432618087708292

`A290307(∑[floor(atan(n)+n)+7]+22)`
-/

namespace A261771.P153432618087708292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋ + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (∑ j ∈ Finset.range (n + 1), f1 j + 22).toNat

end

end A261771.P153432618087708292

/-! ## A261771.P10670960551971376995

`A290307(A155212(4+n))`
-/

namespace A261771.P10670960551971376995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A155212 (4 + n)).toNat

end

end A261771.P10670960551971376995

/-! ## A261771.P12314175265559444679

`A290307(A046691(6+n)-4)`
-/

namespace A261771.P12314175265559444679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A046691 (6 + n) - 4).toNat

end

end A261771.P12314175265559444679

/-! ## A261771.P15432750142986402445

`A290307(A055998(n+6)-5)`
-/

namespace A261771.P15432750142986402445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A055998 (n + 6) - 5).toNat

end

end A261771.P15432750142986402445

/-! ## A261771.P9634835524204668365

`A290307(A000096(n+7)-7)`
-/

namespace A261771.P9634835524204668365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A000096 (n + 7) - 7).toNat

end

end A261771.P9634835524204668365

/-! ## A261771.P12766504981211468053

`A290307(A000217(n+8)-8)`
-/

namespace A261771.P12766504981211468053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A000217 (n + 8) - 8).toNat

end

end A261771.P12766504981211468053

/-! ## A261771.P11422588919396997914

`A290307(A179865(n+9)-8)`
-/

namespace A261771.P11422588919396997914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A179865 (n + 9) - 8).toNat

end

end A261771.P11422588919396997914

/-! ## A261771.P10401524683216314628

`A290307(A000124(n+7)+n-1)`
-/

namespace A261771.P10401524683216314628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A000124 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A261771.P10401524683216314628

/-! ## A261771.P18217284098830646057

`A290307(A145018(n+7)+A005408(n+1))`
-/

namespace A261771.P18217284098830646057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A145018 (n + 7) + A005408 (n + 1)).toNat

end

end A261771.P18217284098830646057

/-! ## A261771.P1988861991052588882

`A290307(A008585(n+4)+A000124(n+5))`
-/

namespace A261771.P1988861991052588882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A008585 (n + 4) + A000124 (n + 5)).toNat

end

end A261771.P1988861991052588882

/-!
# A261772: Expansion of Product_{k>=1} (1 + x^k) / (1 + x^(10*k)).

The programs for A261772, there is no canonical definition to state claims against.
-/

/-! ## A261772.P12070097320375652448

`A290307(A056000(n+6))`
-/

namespace A261772.P12070097320375652448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A056000 (n + 6)).toNat

end

end A261772.P12070097320375652448

/-! ## A261772.P1325228677176408169

`A290307(A155212(n+6)-2)`
-/

namespace A261772.P1325228677176408169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A155212 (n + 6) - 2).toNat

end

end A261772.P1325228677176408169

/-! ## A261772.P13109287165923576520

`A290307(A055999(n+7)-4)`
-/

namespace A261772.P13109287165923576520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A055999 (n + 7) - 4).toNat

end

end A261772.P13109287165923576520

/-! ## A261772.P1109228955565398036

`A290307(A052905(n+7)-5)`
-/

namespace A261772.P1109228955565398036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A052905 (n + 7) - 5).toNat

end

end A261772.P1109228955565398036

/-! ## A261772.P3020056176366909313

`A290307(A000096(n+9)-9)`
-/

namespace A261772.P3020056176366909313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A000096 (n + 9) - 9).toNat

end

end A261772.P3020056176366909313

/-! ## A261772.P1303073749093905666

`A290307(A000217(n+10)-10)`
-/

namespace A261772.P1303073749093905666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A000217 (n + 10) - 10).toNat

end

end A261772.P1303073749093905666

/-! ## A261772.P17629958781261298063

`A290307(A000124(n+9)+n-1)`
-/

namespace A261772.P17629958781261298063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A000124 (n + 9) + ((n : ℤ) - 1)).toNat

end

end A261772.P17629958781261298063

/-! ## A261772.P13689283930388072929

`A290307(2*n+A000217(n+8)+9)`
-/

namespace A261772.P13689283930388072929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 ((2 * n : ℤ) + (A000217 (n + 8) + 9)).toNat

end

end A261772.P13689283930388072929

/-! ## A261772.P12860225777276691367

`A290307(A145018(n+9)+A005408(n+2))`
-/

namespace A261772.P12860225777276691367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A145018 (n + 9) + A005408 (n + 2)).toNat

end

end A261772.P12860225777276691367

/-! ## A261772.P14386613008784147340

`A290307(A005843(n+5)+A000096(n+7))`
-/

namespace A261772.P14386613008784147340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A005843 (n + 5) + A000096 (n + 7)).toNat

end

end A261772.P14386613008784147340

/-! ## A261772.P5877831406715475509

`A290307(A055998(n+6)+A005843(n+6))`
-/

namespace A261772.P5877831406715475509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A055998 (n + 6) + A005843 (n + 6)).toNat

end

end A261772.P5877831406715475509

/-!
# A261773: Number of full reptend primes p < n in base n.

The programs for A261773, there is no canonical definition to state claims against.
-/

/-! ## A261773.P7227545674085253476

`A118131(n)%A118121(A155162(n))`
-/

namespace A261773.P7227545674085253476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118131 n) (A118121 (A155162 n).toNat)

end

end A261773.P7227545674085253476

/-! ## A261773.P13037940394893192090

`and(A000523(n+1), A285423(A002531(n)))`
-/

namespace A261773.P13037940394893192090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000523 (n + 1)) (A285423 (A002531 n).toNat)

end

end A261773.P13037940394893192090

/-! ## A261773.P15557389309374725807

`lcm(A088705(A027714(n+1)), A297116(n+1))`
-/

namespace A261773.P15557389309374725807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A088705 (A027714 (n + 1)).toNat) (A297116 (n + 1))

end

end A261773.P15557389309374725807

/-! ## A261773.P377206645935510177

`A062756(A269303(2*(n+1))+A168186(n+1))%4`
-/

namespace A261773.P377206645935510177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062756 (A269303 (2 * (n + 1)) + A168186 (n + 1)).toNat) 4

end

end A261773.P377206645935510177

/-! ## A261773.P11962028738412606005

`A196563(∑[A196529(n+2)])`
-/

namespace A261773.P11962028738412606005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261773.P11962028738412606005

/-!
# A261774: Number of compositions of n where the (possibly scattered) maximal subsequence of part i with multiplicity j is marked with a word of length i*j over an n-ary alphabet whose letters appear in alphabetical order and all n letters occur exactly once in the composition.

The programs for A261774, there is no canonical definition to state claims against.
-/

/-! ## A261774.P2044281571072217441

`round(sqrt(A307002(n^n)))`
-/

namespace A261774.P2044281571072217441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A307002 (n ^ n) : ℝ))

end

end A261774.P2044281571072217441

/-! ## A261774.P17421954995348375665

`floor(Δ[sqrt(A360868(n+1))])`
-/

namespace A261774.P17421954995348375665
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A360868 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A261774.P17421954995348375665

/-!
# A261775: Expansion of Product_{k>=1} (1 - x^(8*k))/(1 - x^k).

The programs for A261775, there is no canonical definition to state claims against.
-/

/-! ## A261775.P5722577439229399307

`A061198(A055998(n+5)+10)`
-/

namespace A261775.P5722577439229399307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061198 (A055998 (n + 5) + 10).toNat

end

end A261775.P5722577439229399307

/-! ## A261775.P6176914530472573826

`A286653(A155212(n+4))`
-/

namespace A261775.P6176914530472573826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A155212 (n + 4)).toNat

end

end A261775.P6176914530472573826

/-! ## A261775.P8631512527104181516

`A286653(A055999(n+5)-2)`
-/

namespace A261775.P8631512527104181516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A055999 (n + 5) - 2).toNat

end

end A261775.P8631512527104181516

/-! ## A261775.P1845896253689627016

`A286653(A052905(n+5)-3)`
-/

namespace A261775.P1845896253689627016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A052905 (n + 5) - 3).toNat

end

end A261775.P1845896253689627016

/-! ## A261775.P9039492055771282002

`A286653(A046691(n+6)-4)`
-/

namespace A261775.P9039492055771282002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A046691 (n + 6) - 4).toNat

end

end A261775.P9039492055771282002

/-! ## A261775.P8294423109607447747

`A286653(A000096(n+7)-7)`
-/

namespace A261775.P8294423109607447747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A000096 (n + 7) - 7).toNat

end

end A261775.P8294423109607447747

/-! ## A261775.P10145593021067684504

`A286653(A000217(n+8)-8)`
-/

namespace A261775.P10145593021067684504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A000217 (n + 8) - 8).toNat

end

end A261775.P10145593021067684504

/-! ## A261775.P3149411454074255650

`A286653(A161680(n+9)-8)`
-/

namespace A261775.P3149411454074255650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A161680 (n + 9) - 8).toNat

end

end A261775.P3149411454074255650

/-! ## A261775.P12562235224136454279

`A286653(A000124(n+7)+n-1)`
-/

namespace A261775.P12562235224136454279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A000124 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A261775.P12562235224136454279

/-! ## A261775.P9057510136629487768

`A286653(2*n+A000217(n+6)+7)`
-/

namespace A261775.P9057510136629487768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A261775.P9057510136629487768

/-! ## A261775.P2285970639373786351

`A286653(Δ[n²]+A000096(n+5)+7)`
-/

namespace A261775.P2285970639373786351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000096 (n + 5) + 7)).toNat

end

end A261775.P2285970639373786351

/-!
# A261776: Expansion of Product_{k>=1} (1 - x^(10*k))/(1 - x^k).

The programs for A261776, there is no canonical definition to state claims against.
-/

/-! ## A261776.P3377613750001939059

`A286653(A056000(n+6))`
-/

namespace A261776.P3377613750001939059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A056000 (n + 6)).toNat

end

end A261776.P3377613750001939059

/-! ## A261776.P6076662528391283218

`A286653(eq[9, A025581(n)])`
-/

namespace A261776.P6076662528391283218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261776.P6076662528391283218

/-! ## A261776.P3772256903092342497

`A286653(eq[10, A193739(n)])`
-/

namespace A261776.P3772256903092342497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261776.P3772256903092342497

/-! ## A261776.P17851785109928013546

`A286653(A155212(n+6)-2)`
-/

namespace A261776.P17851785109928013546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A155212 (n + 6) - 2).toNat

end

end A261776.P17851785109928013546

/-! ## A261776.P8024836838456126017

`A286653(A051936(n+10)-1)`
-/

namespace A261776.P8024836838456126017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A051936 (n + 10) - 1).toNat

end

end A261776.P8024836838456126017

/-! ## A261776.P18314934399378628984

`A286653(A000217(n+10)-10)`
-/

namespace A261776.P18314934399378628984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A000217 (n + 10) - 10).toNat

end

end A261776.P18314934399378628984

/-! ## A261776.P17958477040633907113

`A286653(A161680(n+11)-10)`
-/

namespace A261776.P17958477040633907113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A161680 (n + 11) - 10).toNat

end

end A261776.P17958477040633907113

/-! ## A261776.P6668252054745363674

`A286653(A046691(n+7)+n+4)`
-/

namespace A261776.P6668252054745363674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A046691 (n + 7) + (n + 4 : ℤ)).toNat

end

end A261776.P6668252054745363674

/-! ## A261776.P14608598530706177586

`A286653(A016861(n+6)+A000096(n+4))`
-/

namespace A261776.P14608598530706177586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A016861 (n + 6) + A000096 (n + 4)).toNat

end

end A261776.P14608598530706177586

/-!
# A261777: Number of compositions of n where the (possibly scattered) maximal subsequence of part i with multiplicity j is marked with i words of length j over an n-ary alphabet whose letters appear in alphabetical order and all n letters occur exactly once in the composition.

The programs for A261777, there is no canonical definition to state claims against.
-/

/-! ## A261777.P16529422982766233751

`A062968(A002061(n)+A001147(n))`
-/

namespace A261777.P16529422982766233751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (A002061 n + A001147 n).toNat

end

end A261777.P16529422982766233751

/-! ## A261777.P14462071287685696799

`A053645(A072213(n))+A002355(n)`
-/

namespace A261777.P14462071287685696799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A072213 n).toNat + A002355 n

end

end A261777.P14462071287685696799

/-!
# A261779: a(n) = ceiling((n-1)! / n).

The programs for A261779, the canonical program `A261779.P8156452283775123571` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261779 has offset 1).

The definition of A261779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n!/(n+1))` (program `A261779.P8156452283775123571`, by `A261779.P8156452283775123571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261779.P8156452283775123571

`ceil(n!/(n+1))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A261779

/-- `ceil(n!/(n+1))` -/
def P8156452283775123571.Spec : Prop :=
  ∀ n, P8156452283775123571.a n = A261779 (n + 1)

theorem P8156452283775123571.correct : P8156452283775123571.Spec := by
  intro n
  simp only [A261779, Nat.add_sub_cancel]

end A261779

/-! ## A261779.P10761955824763316033

`round(n!/(n+1))`
-/

namespace A261779.P10761955824763316033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (n + 1 : ℚ))

end

end A261779.P10761955824763316033

namespace A261779

/-- `round(n!/(n+1))` -/
def P10761955824763316033.Spec : Prop :=
  ∀ n, P10761955824763316033.a n = A261779 (n + 1)

end A261779

/-! ## A261779.P13607747568622543225

`floor((n!+n)/(n+1))`
-/

namespace A261779.P13607747568622543225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n + n : ℚ) / (n + 1 : ℚ)⌋

end

end A261779.P13607747568622543225

namespace A261779

/-- `floor((n!+n)/(n+1))` -/
def P13607747568622543225.Spec : Prop :=
  ∀ n, P13607747568622543225.a n = A261779 (n + 1)

end A261779

/-! ## A261779.P905164042609624458

`round((n+1)^-1*n!)`
-/

namespace A261779.P905164042609624458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (-1 : ℤ) * (Nat.factorial n : ℚ))

end

end A261779.P905164042609624458

namespace A261779

/-- `round((n+1)^-1*n!)` -/
def P905164042609624458.Spec : Prop :=
  ∀ n, P905164042609624458.a n = A261779 (n + 1)

end A261779

/-! ## A261779.P5825251830801074353

`abs(floor(n!/(n-1-2*n)))`
-/

namespace A261779.P5825251830801074353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(Nat.factorial n : ℚ) / ((n : ℤ) - 1 - (2 * n : ℤ) : ℚ)⌋|

end

end A261779.P5825251830801074353

namespace A261779

/-- `abs(floor(n!/(n-1-2*n)))` -/
def P5825251830801074353.Spec : Prop :=
  ∀ n, P5825251830801074353.a n = A261779 (n + 1)

end A261779

/-! ## A261779.P2057283704480399764

`ceil(abs(n!/(2*n-(n-1))))`
-/

namespace A261779.P2057283704480399764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(Nat.factorial n : ℚ) / ((2 * n : ℤ) - ((n : ℤ) - 1) : ℚ)|⌉

end

end A261779.P2057283704480399764

namespace A261779

/-- `ceil(abs(n!/(2*n-(n-1))))` -/
def P2057283704480399764.Spec : Prop :=
  ∀ n, P2057283704480399764.a n = A261779 (n + 1)

end A261779

/-! ## A261779.P1982721598472177516

`-floor(n!/(n-1-2*n))`
-/

namespace A261779.P1982721598472177516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(Nat.factorial n : ℚ) / ((n : ℤ) - 1 - (2 * n : ℤ) : ℚ)⌋

end

end A261779.P1982721598472177516

namespace A261779

/-- `-floor(n!/(n-1-2*n))` -/
def P1982721598472177516.Spec : Prop :=
  ∀ n, P1982721598472177516.a n = A261779 (n + 1)

end A261779

/-! ## A261779.P17183923565558802023

`round(abs(n!/(2*n-(n-1))))`
-/

namespace A261779.P17183923565558802023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway |(Nat.factorial n : ℚ) / ((2 * n : ℤ) - ((n : ℤ) - 1) : ℚ)|

end

end A261779.P17183923565558802023

namespace A261779

/-- `round(abs(n!/(2*n-(n-1))))` -/
def P17183923565558802023.Spec : Prop :=
  ∀ n, P17183923565558802023.a n = A261779 (n + 1)

end A261779

/-! ## A261779.P14288122591394703926

`ceil(-(n!/(n-1-2*n)))`
-/

namespace A261779.P14288122591394703926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((Nat.factorial n : ℚ) / ((n : ℤ) - 1 - (2 * n : ℤ) : ℚ))⌉

end

end A261779.P14288122591394703926

namespace A261779

/-- `ceil(-(n!/(n-1-2*n)))` -/
def P14288122591394703926.Spec : Prop :=
  ∀ n, P14288122591394703926.a n = A261779 (n + 1)

end A261779

/-! ## A261779.P8257856803496638703

`round(-(n!/(n-1-2*n)))`
-/

namespace A261779.P8257856803496638703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-((Nat.factorial n : ℚ) / ((n : ℤ) - 1 - (2 * n : ℤ) : ℚ)))

end

end A261779.P8257856803496638703

namespace A261779

/-- `round(-(n!/(n-1-2*n)))` -/
def P8257856803496638703.Spec : Prop :=
  ∀ n, P8257856803496638703.a n = A261779 (n + 1)

end A261779

/-!
# A261780: Number A(n,k) of compositions of n where each part i is marked with a word of length i over a k-ary alphabet whose letters appear in alphabetical order; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A261780, there is no canonical definition to state claims against.
-/

/-! ## A261780.P15116521767851052920

`A124540(n)-A082859(A102480(n))`
-/

namespace A261780.P15116521767851052920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 n - A082859 (A102480 n).toNat

end

end A261780.P15116521767851052920

/-! ## A261780.P13395380446281935072

`A124540(n)-A307598(A118354(n))`
-/

namespace A261780.P13395380446281935072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124540 n - A307598 (A118354 n).toNat

end

end A261780.P13395380446281935072

/-! ## A261780.P5825518697446860452

`A144074(n)+A082859(A102480(n))²`
-/

namespace A261780.P5825518697446860452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 n + A082859 (A102480 n).toNat ^ 2

end

end A261780.P5825518697446860452

/-! ## A261780.P7826811488751898422

`A124550(n)-A033886(A208673(n))²-A307598(A118354(n))`
-/

namespace A261780.P7826811488751898422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 n - A033886 (A208673 n).toNat ^ 2 - A307598 (A118354 n).toNat

end

end A261780.P7826811488751898422

/-! ## A261780.P5858160076149532277

`A144074(n)+A024362(A003242(n))`
-/

namespace A261780.P5858160076149532277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 n + A024362 (A003242 n).toNat

end

end A261780.P5858160076149532277

/-!
# A261781: Number T(n,k) of compositions of n where each part i is marked with a word of length i over a k-ary alphabet whose letters appear in alphabetical order and all k letters occur at least once in the composition; triangle T(n,k), n >= 0, 0 <= k <= n, read by rows.

The programs for A261781, there is no canonical definition to state claims against.
-/

/-! ## A261781.P14651898438781858025

`A118765(A211402(n))`
-/

namespace A261781.P14651898438781858025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118765 (A211402 n).toNat

end

end A261781.P14651898438781858025

/-! ## A261781.P5044950658084179451

`A211402(n)-A299905(A135153(n))`
-/

namespace A261781.P5044950658084179451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 n - A299905 (A135153 n).toNat

end

end A261781.P5044950658084179451

/-! ## A261781.P9808390065556154591

`and(A000174(A148017(n)), A211402(n))`
-/

namespace A261781.P9808390065556154591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000174 (A148017 n).toNat) (A211402 n)

end

end A261781.P9808390065556154591

/-! ## A261781.P17716021878204525481

`A257740(n)+A001221(A094344(n)!)`
-/

namespace A261781.P17716021878204525481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 n + A001221 (Nat.factorial (A094344 n).toNat)

end

end A261781.P17716021878204525481

/-!
# A261782: Powers C^z = A^x + B^y with positive integers A,B,C,x,y,z such that x,y,z > 2.

The programs for A261782, there is no canonical definition to state claims against.
-/

/-! ## A261782.P17826375272489558043

`record[A264901(gcd(n+1, ceil(n/2)))]`
-/

namespace A261782.P17826375272489558043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P17826375272489558043

/-! ## A261782.P5076728132386917018

`record[A264901(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A261782.P5076728132386917018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P5076728132386917018

/-! ## A261782.P4555044896786830692

`record[A264901(A065648(n))]`
-/

namespace A261782.P4555044896786830692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P4555044896786830692

/-! ## A261782.P15457633958490942057

`record[A264901(A106466(n))]`
-/

namespace A261782.P15457633958490942057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A106466 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P15457633958490942057

/-! ## A261782.P40508668218355181

`record[A264901(A133310(n))]`
-/

namespace A261782.P40508668218355181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P40508668218355181

/-! ## A261782.P5449560127604860332

`record[A264901(A152271(n))]`
-/

namespace A261782.P5449560127604860332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P5449560127604860332

/-! ## A261782.P15701147608212683501

`record[A264901(A158416(n))]`
-/

namespace A261782.P15701147608212683501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P15701147608212683501

/-! ## A261782.P5519825963785551052

`record[A264901(A203814(n))]`
-/

namespace A261782.P5519825963785551052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A203814 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P5519825963785551052

/-! ## A261782.P7733871180734161682

`record[A264901(A236858(n))]`
-/

namespace A261782.P7733871180734161682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A236858 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P7733871180734161682

/-! ## A261782.P16968873406555032776

`record[A264901(A246694(n))]`
-/

namespace A261782.P16968873406555032776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A246694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P16968873406555032776

/-! ## A261782.P13395828439100202550

`record[A264901(A291766(n))]`
-/

namespace A261782.P13395828439100202550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A291766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P13395828439100202550

/-! ## A261782.P2004929816738393618

`record[A264901(A291769(n))]`
-/

namespace A261782.P2004929816738393618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P2004929816738393618

/-! ## A261782.P5736092262783650714

`record[A264901(A324347(n))]`
-/

namespace A261782.P5736092262783650714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P5736092262783650714

/-! ## A261782.P12922536888485998755

`record[A264901(A324533(n))]`
-/

namespace A261782.P12922536888485998755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A324533 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P12922536888485998755

/-! ## A261782.P7740109096427636242

`record[A264901(A328397(n))]`
-/

namespace A261782.P7740109096427636242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A328397 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P7740109096427636242

/-! ## A261782.P3178049896669181683

`record[A264901(A328399(n))]`
-/

namespace A261782.P3178049896669181683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P3178049896669181683

/-! ## A261782.P3201279958899860708

`record[A264901(A328477(n))]`
-/

namespace A261782.P3201279958899860708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A328477 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P3201279958899860708

/-! ## A261782.P13661093765660487678

`record[A264901(A329048(n))]`
-/

namespace A261782.P13661093765660487678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A329048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P13661093765660487678

/-! ## A261782.P14888105672087962249

`record[A264901(A331300(n))]`
-/

namespace A261782.P14888105672087962249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A331300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P14888105672087962249

/-! ## A261782.P15617960920006034173

`record[A264901(A003602(n+1))]`
-/

namespace A261782.P15617960920006034173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264901 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261782.P15617960920006034173

/-!
# A261783: Number of compositions of n where each part i is marked with a word of length i over an n-ary alphabet whose letters appear in alphabetical order.

The programs for A261783, there is no canonical definition to state claims against.
-/

/-! ## A261783.P14785155012196086849

`A261780(C(n+n+1, 2)+n)`
-/

namespace A261783.P14785155012196086849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (Nat.choose (n + n + 1) 2 + n)

end

end A261783.P14785155012196086849

/-! ## A261783.P10154738887660803178

`A261780(∑[4*n])`
-/

namespace A261783.P10154738887660803178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261783.P10154738887660803178

/-! ## A261783.P4861319061211238416

`or(1, A261780(A046092(n)))`
-/

namespace A261783.P4861319061211238416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261780 (A046092 n).toNat)

end

end A261783.P4861319061211238416

/-! ## A261783.P5073441233077147085

`A261780(A046092(n))^A178334(n)`
-/

namespace A261783.P5073441233077147085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261780 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A261783.P5073441233077147085

/-! ## A261783.P16310835356393601994

`gcd(A000038(n), A261780(A046092(n)))`
-/

namespace A261783.P16310835356393601994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A261780 (A046092 n).toNat)

end

end A261783.P16310835356393601994

/-!
# A261784: Number of compositions of 2n where each part i is marked with a word of length i over an n-ary alphabet whose letters appear in alphabetical order and all n letters occur at least once in the composition.

The programs for A261784, there is no canonical definition to state claims against.
-/

/-! ## A261784.P6128484697233751961

`A261781(C(2*n+1, 2)+n)`
-/

namespace A261784.P6128484697233751961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (Nat.choose (2 * n + 1) 2 + n)

end

end A261784.P6128484697233751961

/-! ## A261784.P17639370665281555310

`A261781(∑[4*n])`
-/

namespace A261784.P17639370665281555310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261784.P17639370665281555310

/-! ## A261784.P7885860247488335878

`record[A261781(n*A004275(n))]`
-/

namespace A261784.P7885860247488335878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 ((n : ℤ) * A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261784.P7885860247488335878

/-! ## A261784.P15246924431099420900

`A016192(n)*A261781(A046092(n))`
-/

namespace A261784.P15246924431099420900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 n * A261781 (A046092 n).toNat

end

end A261784.P15246924431099420900

/-! ## A261784.P8492157147207496052

`A261781(A046092(n))/A007318(∑[n])`
-/

namespace A261784.P8492157147207496052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261781 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A261784.P8492157147207496052

/-!
# A261785: Sum over all Motzkin paths of length n of products over all peaks p of (n*x_p+y_p)/y_p, where x_p and y_p are the coordinates of peak p.

The programs for A261785, there is no canonical definition to state claims against.
-/

/-! ## A261785.P10066870167875909675

`A258309(C(n+n+1, 2)+n)`
-/

namespace A261785.P10066870167875909675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258309 (Nat.choose (n + n + 1) 2 + n)

end

end A261785.P10066870167875909675

/-! ## A261785.P12657667755726948733

`A258309(∑[4*n])`
-/

namespace A261785.P12657667755726948733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258309 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261785.P12657667755726948733

/-! ## A261785.P9319048054561176670

`gcd(A000038(n), A258309(A046092(n)))`
-/

namespace A261785.P9319048054561176670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258309 (A046092 n).toNat)

end

end A261785.P9319048054561176670

/-! ## A261785.P12501506716909682116

`lcm(A165326(n), A258309(A046092(n)))`
-/

namespace A261785.P12501506716909682116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 n) (A258309 (A046092 n).toNat)

end

end A261785.P12501506716909682116

/-! ## A261785.P14254760283606665584

`A258309(A046092(n))%A090354(n+3)`
-/

namespace A261785.P14254760283606665584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258309 (A046092 n).toNat) (A090354 (n + 3))

end

end A261785.P14254760283606665584

/-!
# A261786: Successively add the smallest ternary number that is not a substring.

The programs for A261786, there is no canonical definition to state claims against.
-/

/-! ## A261786.P5911828419495274927

`A261789(n)+a(n-1)` with `a(0)=1`
-/

namespace A261786.P5911828419495274927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261789 n + a (n - 1)

end

end A261786.P5911828419495274927

/-! ## A261786.P14275492973731887591

`∑[A261789(A028310(n))]-1`
-/

namespace A261786.P14275492973731887591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261789 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A261786.P14275492973731887591

/-! ## A261786.P17081804816940031925

`∑[A261789(n+1)]+1-A261789(n+1)`
-/

namespace A261786.P17081804816940031925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A261789 (n + 1))

end

end A261786.P17081804816940031925

/-! ## A261786.P6767754992145589630

`A261787(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A261786.P6767754992145589630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261787 (a (n - 1)).toNat + a (n - 1)

end

end A261786.P6767754992145589630

/-! ## A261786.P15692742600552166484

`∑[A261789(A233583(n+1))]-1`
-/

namespace A261786.P15692742600552166484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261789 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A261786.P15692742600552166484

/-!
# A261787: a(n) is the smallest nonzero number that is not a substring of n in ternary representation.

The programs for A261787, there is no canonical definition to state claims against.
-/

/-! ## A261787.P10033158109571778306

`A001221(A279600(n)+A060649(n+2))`
-/

namespace A261787.P10033158109571778306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A279600 n + A060649 (n + 2)).toNat

end

end A261787.P10033158109571778306

/-! ## A261787.P5040871817875887011

`A001222(∏{p}[A352354(n+1)+A047520(n), #])`
-/

namespace A261787.P5040871817875887011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352354 (n + 1) + A047520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A261787.P5040871817875887011

/-! ## A261787.P16910727266891150376

`A001222(A182863(n+3)-A001222(3*n+5))`
-/

namespace A261787.P16910727266891150376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A182863 (n + 3) - A001222 (3 * n + 5)).toNat

end

end A261787.P16910727266891150376

/-! ## A261787.P9737230475384601307

`A001221(∑[A002144(3^floor(n/2))])`
-/

namespace A261787.P9737230475384601307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261787.P9737230475384601307

/-! ## A261787.P18189329624883889235

`A126211(n)+A046951(A094373(n))`
-/

namespace A261787.P18189329624883889235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126211 n + A046951 (A094373 n).toNat

end

end A261787.P18189329624883889235

/-!
# A261788: a(n) is the smallest k such that A261786(k) >= 3^n.

The programs for A261788, there is no canonical definition to state claims against.
-/

/-! ## A261788.P11330554922312662074

`A008615(5*A129703(n))`
-/

namespace A261788.P11330554922312662074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (5 * A129703 n).toNat

end

end A261788.P11330554922312662074

/-! ## A261788.P11626141370374445451

`A008615(lcm(5, A129703(n)))`
-/

namespace A261788.P11626141370374445451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.lcm 5 (A129703 n))

end

end A261788.P11626141370374445451

/-! ## A261788.P14786489770850550577

`A081753(A207436(n+1)+A008776(n))`
-/

namespace A261788.P14786489770850550577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A207436 (n + 1) + A008776 n).toNat

end

end A261788.P14786489770850550577

/-!
# A261789: First differences of A261786.

The programs for A261789, there is no canonical definition to state claims against.
-/

/-! ## A261789.P4284365404638807448

`Δ[A261786(n+1)]`
-/

namespace A261789.P4284365404638807448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261789.P4284365404638807448

/-! ## A261789.P395361993792955344

`A261786(n+2)-A261786(n+1)`
-/

namespace A261789.P395361993792955344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261786 (n + 2) - A261786 (n + 1)

end

end A261789.P395361993792955344

/-! ## A261789.P3674690460023735709

`Δ[A261787(a(n-1))+a(n-1)]` with `a(0)=1`
-/

namespace A261789.P3674690460023735709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A261787 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261789.P3674690460023735709

/-! ## A261789.P2485766719170108364

`A261787(A261786(abs(xor(n, -1))))`
-/

namespace A261789.P2485766719170108364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261787 (A261786 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A261789.P2485766719170108364

/-! ## A261789.P5040479375628659854

`A261787(A261786(n+1)%A034782(n+1))`
-/

namespace A261789.P5040479375628659854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261787 (Int.tmod (A261786 (n + 1)) (A034782 (n + 1))).toNat

end

end A261789.P5040479375628659854

/-!
# A261790: Regular triangle read by rows: T(n,k) is the least positive number m such that k*m and k*m*(m+1)/2 are both divisible by n, with 0<=k<=n and T(0,0)=1.

The programs for A261790, there is no canonical definition to state claims against.
-/

/-! ## A261790.P14028745983537707750

`A257088(A341314(n))`
-/

namespace A261790.P14028745983537707750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A341314 n).toNat

end

end A261790.P14028745983537707750

/-! ## A261790.P5700904764270467597

`A331291(2^A341314(n))`
-/

namespace A261790.P5700904764270467597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331291 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A341314 n : ℤ))).toNat

end

end A261790.P5700904764270467597

/-! ## A261790.P4680086265049772132

`A054531(2*A341314(n)²+1)`
-/

namespace A261790.P4680086265049772132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (2 * A341314 n ^ 2 + 1).toNat

end

end A261790.P4680086265049772132

/-! ## A261790.P421769156369693596

`A022998(A341314(A000007(n)+n))`
-/

namespace A261790.P421769156369693596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A341314 (A000007 n + (n : ℤ)).toNat).toNat

end

end A261790.P421769156369693596

/-! ## A261790.P10592940781662864772

`A082895(A341314(n)+A000007(n))`
-/

namespace A261790.P10592940781662864772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082895 (A341314 n + A000007 n).toNat

end

end A261790.P10592940781662864772

/-! ## A261790.P11513301638920334285

`A022998(gcd(A007318(n), A341314(n)))`
-/

namespace A261790.P11513301638920334285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Int.gcd (A007318 n) (A341314 n))

end

end A261790.P11513301638920334285

/-! ## A261790.P2418344281250792696

`A022998(or(A000007(n), A341314(n)))`
-/

namespace A261790.P2418344281250792696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Int.lor (A000007 n) (A341314 n)).toNat

end

end A261790.P2418344281250792696

/-! ## A261790.P288923731505276912

`A022998(xor(A000007(n), A341314(n)))`
-/

namespace A261790.P288923731505276912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Int.xor (A000007 n) (A341314 n)).toNat

end

end A261790.P288923731505276912

/-! ## A261790.P6697563030671211805

`A022998(A341314(A151933(n)+n))`
-/

namespace A261790.P6697563030671211805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A341314 (A151933 n + (n : ℤ)).toNat).toNat

end

end A261790.P6697563030671211805

/-! ## A261790.P4179573825136807453

`A022998(or(A151933(n), A341314(n)))`
-/

namespace A261790.P4179573825136807453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Int.lor (A151933 n) (A341314 n)).toNat

end

end A261790.P4179573825136807453

/-!
# A261791: The integer part of the surface area of the 4-dimensional sphere of radius n.

The programs for A261791, the canonical program `A261791.P10234995705912915791` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261791 has offset 1).

The definition of A261791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261791.P10234995705912915791

`floor(2*π²*(n+1)^3)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A261791

/-- `floor(2*π²*(n+1)^3)` -/
def P10234995705912915791.Spec : Prop :=
  ∀ n, P10234995705912915791.a n = A261791 (n + 1)

theorem P10234995705912915791.correct : P10234995705912915791.Spec := by
  intro n
  simp only [A261791, Nat.add_sub_cancel]

end A261791

/-! ## A261791.P4033224858197781496

`A079044((n+1)^3)`
-/

namespace A261791.P4033224858197781496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079044 ((n + 1) ^ 3)

end

end A261791.P4033224858197781496

namespace A261791

/-- `A079044((n+1)^3)` -/
def P4033224858197781496.Spec : Prop :=
  ∀ n, P4033224858197781496.a n = A261791 (n + 1)

end A261791

/-! ## A261791.P4929545312324207016

`A037085(2*(n+1)^3)`
-/

namespace A261791.P4929545312324207016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037085 (2 * (n + 1) ^ 3)

end

end A261791.P4929545312324207016

namespace A261791

/-- `A037085(2*(n+1)^3)` -/
def P4929545312324207016.Spec : Prop :=
  ∀ n, P4929545312324207016.a n = A261791 (n + 1)

end A261791

/-! ## A261791.P10205542390755937857

`A248359(Δ[∑[2*n]²])-1`
-/

namespace A261791.P10205542390755937857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248359 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A261791.P10205542390755937857

namespace A261791

/-- `A248359(Δ[∑[2*n]²])-1` -/
def P10205542390755937857.Spec : Prop :=
  ∀ n, P10205542390755937857.a n = A261791 (n + 1)

end A261791

/-!
# A261792: Primes of the form k*pi(k) - 1, where pi(k) is the number of primes <= k.

The programs for A261792, the canonical program `A261792.P15740581189978020374` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261792 has offset 1).

The definition of A261792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261792.P15740581189978020374

`p?[A128913(n+1)-1]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A261792

/-- `p?[A128913(n+1)-1]` -/
def P15740581189978020374.Spec : Prop :=
  ∀ n, P15740581189978020374.a n = A261792 (n + 1)

theorem P15740581189978020374.correct : P15740581189978020374.Spec := by
  intro n
  simp only [A261792, Nat.add_sub_cancel]

end A261792

/-! ## A261792.P4943856681150725841

`p?[n*A230980(n)-1]`
-/

namespace A261792.P4943856681150725841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230980 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261792.P4943856681150725841

namespace A261792

/-- `p?[n*A230980(n)-1]` -/
def P4943856681150725841.Spec : Prop :=
  ∀ n, P4943856681150725841.a n = A261792 (n + 1)

end A261792

/-! ## A261792.P6640446514537504593

`p?[(n+1)*A000720(n+1)-1]`
-/

namespace A261792.P6640446514537504593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000720 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261792.P6640446514537504593

namespace A261792

/-- `p?[(n+1)*A000720(n+1)-1]` -/
def P6640446514537504593.Spec : Prop :=
  ∀ n, P6640446514537504593.a n = A261792 (n + 1)

end A261792

/-! ## A261792.P3760116581636880090

`p?[(n+1)*A033270(n+1)+n]`
-/

namespace A261792.P3760116581636880090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033270 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261792.P3760116581636880090

namespace A261792

/-- `p?[(n+1)*A033270(n+1)+n]` -/
def P3760116581636880090.Spec : Prop :=
  ∀ n, P3760116581636880090.a n = A261792 (n + 1)

end A261792

/-! ## A261792.P15163425805050379430

`p?[n*∑[char[A000040(n+1)]]-1]`
-/

namespace A261792.P15163425805050379430
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261792.P15163425805050379430

namespace A261792

/-- `p?[n*∑[char[A000040(n+1)]]-1]` -/
def P15163425805050379430.Spec : Prop :=
  ∀ n, P15163425805050379430.a n = A261792 (n + 1)

end A261792

/-! ## A261792.P1835540562119640301

`p?[A001057(n)*A056172(n+1)-1]`
-/

namespace A261792.P1835540562119640301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n * A056172 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261792.P1835540562119640301

namespace A261792

/-- `p?[A001057(n)*A056172(n+1)-1]` -/
def P1835540562119640301.Spec : Prop :=
  ∀ n, P1835540562119640301.a n = A261792 (n + 1)

end A261792

/-! ## A261792.P5342538947412095909

`p?[A056172(n+1)*A142150(n)-1]`
-/

namespace A261792.P5342538947412095909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (n + 1) * A142150 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261792.P5342538947412095909

namespace A261792

/-- `p?[A056172(n+1)*A142150(n)-1]` -/
def P5342538947412095909.Spec : Prop :=
  ∀ n, P5342538947412095909.a n = A261792 (n + 1)

end A261792

/-! ## A261792.P17832757161606598456

`p?[n*A036234(A014684(n+1))-(n+1)]`
-/

namespace A261792.P17832757161606598456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A036234 (A014684 (n + 1)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261792.P17832757161606598456

namespace A261792

/-- `p?[n*A036234(A014684(n+1))-(n+1)]` -/
def P17832757161606598456.Spec : Prop :=
  ∀ n, P17832757161606598456.a n = A261792 (n + 1)

end A261792

/-! ## A261792.P5202975001449074489

`p?[n*A082058(A007918(n+1))-(n+1)]`
-/

namespace A261792.P5202975001449074489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A082058 (A007918 (n + 1)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261792.P5202975001449074489

namespace A261792

/-- `p?[n*A082058(A007918(n+1))-(n+1)]` -/
def P5202975001449074489.Spec : Prop :=
  ∀ n, P5202975001449074489.a n = A261792 (n + 1)

end A261792

/-! ## A261792.P6673883461136823872

`p?[(n+1)*A055679(2*(n+1))-1]`
-/

namespace A261792.P6673883461136823872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055679 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261792.P6673883461136823872

namespace A261792

/-- `p?[(n+1)*A055679(2*(n+1))-1]` -/
def P6673883461136823872.Spec : Prop :=
  ∀ n, P6673883461136823872.a n = A261792 (n + 1)

end A261792

/-!
# A261793: Successively add the smallest number that is not a substring in decimal representation.

The programs for A261793, there is no canonical definition to state claims against.
-/

/-! ## A261793.P500447771848378291

`A261795(n)+a(n-1)` with `a(0)=1`
-/

namespace A261793.P500447771848378291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261795 n + a (n - 1)

end

end A261793.P500447771848378291

/-! ## A261793.P8156183044831628849

`∑[A261795(abs(1-n)+1)]`
-/

namespace A261793.P8156183044831628849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261795 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261793.P8156183044831628849

/-! ## A261793.P10855991845834739279

`∑[A261795(A028310(n))]-1`
-/

namespace A261793.P10855991845834739279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261795 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A261793.P10855991845834739279

/-! ## A261793.P4619760354071806540

`∑[A261795(n+1)]+1-A261795(n+1)`
-/

namespace A261793.P4619760354071806540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A261795 (n + 1))

end

end A261793.P4619760354071806540

/-! ## A261793.P11740896585368053274

`A261794(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A261793.P11740896585368053274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261794 (a (n - 1)).toNat + a (n - 1)

end

end A261793.P11740896585368053274

/-! ## A261793.P427238128501216215

`∑[A261794(A262288(n))]`
-/

namespace A261793.P427238128501216215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (A262288 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261793.P427238128501216215

/-! ## A261793.P15932378050965474236

`A262288(n+1)`
-/

namespace A261793.P15932378050965474236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262288 (n + 1)

end

end A261793.P15932378050965474236

/-! ## A261793.P13127677099303083743

`record[A262288(abs(1-n))]`
-/

namespace A261793.P13127677099303083743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262288 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261793.P13127677099303083743

/-! ## A261793.P15758216509767341232

`∑[A005117(Δ[A262288(n)])]`
-/

namespace A261793.P15758216509767341232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262288 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261793.P15758216509767341232

/-! ## A261793.P4339490315960939505

`∑[A020639(Δ[A262288(n)])]`
-/

namespace A261793.P4339490315960939505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262288 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261793.P4339490315960939505

/-!
# A261794: a(n) is the smallest nonzero number that is not a substring of n in decimal representation.

The programs for A261794, there is no canonical definition to state claims against.
-/

/-! ## A261794.P16869207343678692033

`A050603(A086066(n))`
-/

namespace A261794.P16869207343678692033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A086066 n).toNat

end

end A261794.P16869207343678692033

/-! ## A261794.P9625767507426974071

`10-A116667(A055120(n))`
-/

namespace A261794.P9625767507426974071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A116667 (A055120 n).toNat

end

end A261794.P9625767507426974071

/-! ## A261794.P16555692948978500555

`gcd(A067898(n), A094267(A086066(n)))`
-/

namespace A261794.P16555692948978500555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067898 n) (A094267 (A086066 n).toNat)

end

end A261794.P16555692948978500555

/-! ## A261794.P6781067727965437703

`A067898(10*A004185(n))`
-/

namespace A261794.P6781067727965437703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (10 * A004185 n).toNat

end

end A261794.P6781067727965437703

/-! ## A261794.P13480074848910523206

`A067898(10*A137564(n))`
-/

namespace A261794.P13480074848910523206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (10 * A137564 n).toNat

end

end A261794.P13480074848910523206

/-! ## A261794.P10038526848732868207

`A067898(10*n)`
-/

namespace A261794.P10038526848732868207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (10 * n)

end

end A261794.P10038526848732868207

/-! ## A261794.P8788598879225697836

`A067898(A008592(n))%5`
-/

namespace A261794.P8788598879225697836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067898 (A008592 n).toNat) 5

end

end A261794.P8788598879225697836

/-! ## A261794.P18187262900265590452

`dr(A067898(A195817(A005843(n))))`
-/

namespace A261794.P18187262900265590452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A067898 (A195817 (A005843 n).toNat).toNat)

end

end A261794.P18187262900265590452

/-! ## A261794.P11895932141658561740

`A067898(A102439(n))+A000007(n)`
-/

namespace A261794.P11895932141658561740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A102439 n).toNat + A000007 n

end

end A261794.P11895932141658561740

/-! ## A261794.P112068815637662758

`A277697(30*A113581(n))`
-/

namespace A261794.P112068815637662758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (30 * A113581 n).toNat

end

end A261794.P112068815637662758

/-!
# A261795: First differences of A261793.

The programs for A261795, there is no canonical definition to state claims against.
-/

/-! ## A261795.P11195063420205752488

`Δ[A261793(1+n)]`
-/

namespace A261795.P11195063420205752488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261793 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261795.P11195063420205752488

/-! ## A261795.P16354572776090627989

`A261793(2+n)-A261793(n+1)`
-/

namespace A261795.P16354572776090627989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261793 (2 + n) - A261793 (n + 1)

end

end A261795.P16354572776090627989

/-! ## A261795.P17055377100585745494

`Δ[A261794(a(n-1))+a(n-1)]` with `a(0)=1`
-/

namespace A261795.P17055377100585745494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A261794 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261795.P17055377100585745494

/-! ## A261795.P17445324775551048494

`A261794(A261793(n+1)%A014206(n))`
-/

namespace A261795.P17445324775551048494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (Int.tmod (A261793 (n + 1)) (A014206 n)).toNat

end

end A261795.P17445324775551048494

/-! ## A261795.P16625417043898288922

`A261794(or(A000007(n), A261793(n+1)))`
-/

namespace A261795.P16625417043898288922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (Int.lor (A000007 n) (A261793 (n + 1))).toNat

end

end A261795.P16625417043898288922

/-! ## A261795.P13590452951772482304

`A261794(10*A261793(n+1))`
-/

namespace A261795.P13590452951772482304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (10 * A261793 (n + 1)).toNat

end

end A261795.P13590452951772482304

/-! ## A261795.P9597968958951554245

`A261794(∑[A261794(A262288(n))])`
-/

namespace A261795.P9597968958951554245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (A262288 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261795.P9597968958951554245

/-! ## A261795.P9954181452085698840

`A261794(A262288(n+1))`
-/

namespace A261795.P9954181452085698840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (A262288 (n + 1)).toNat

end

end A261795.P9954181452085698840

/-! ## A261795.P10850589896760158156

`Δ[A262288(n+1)]`
-/

namespace A261795.P10850589896760158156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261795.P10850589896760158156

/-! ## A261795.P6439497567682024103

`A262288(n+2)-A262288(n+1)`
-/

namespace A261795.P6439497567682024103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262288 (n + 2) - A262288 (n + 1)

end

end A261795.P6439497567682024103

/-!
# A261797: Expansion of Product_{k>=1} (1-x^(3*k))*(1-x^(5*k))/(1-x^k).

The programs for A261797, there is no canonical definition to state claims against.
-/

/-! ## A261797.P17095249575671268676

`A067590(n)-A340998(A067590(n+1))`
-/

namespace A261797.P17095249575671268676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067590 n - A340998 ((A067590 (n + 1)).toNat + 140)

end

end A261797.P17095249575671268676

/-! ## A261797.P6773593976540491139

`A067590(n)-A340998(A067593(n))`
-/

namespace A261797.P6773593976540491139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067590 n - A340998 ((A067593 n).toNat + 140)

end

end A261797.P6773593976540491139

/-! ## A261797.P10602928870807987938

`A067590(n)-∑[A096268(A282754(n+1))]`
-/

namespace A261797.P10602928870807987938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A282754 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067590 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261797.P10602928870807987938

/-! ## A261797.P16477356200155030656

`A067590(n)-A096268(A282754(n+1)+2)`
-/

namespace A261797.P16477356200155030656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067590 n - A096268 (A282754 (n + 1) + 2).toNat

end

end A261797.P16477356200155030656

/-! ## A261797.P7193520383227176929

`A067590(n)-A086080(A099099(n))`
-/

namespace A261797.P7193520383227176929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067590 n - A086080 (A099099 n).toNat

end

end A261797.P7193520383227176929

/-!
# A261799: Number of 7-compositions of n: matrices with 7 rows of nonnegative integers with positive column sums and total element sum n.

The programs for A261799, the canonical program `A261799.P4310293131266667027` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261799 has offset 0).

The definition of A261799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261799.P4310293131266667027

`ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-14x+42x^2-70x^3+70x^4-42x^5+14x^6-2x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A261799

/-- `ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-14x+42x^2-70x^3+70x^4-42x^5+14x^6-2x^7))` -/
def P4310293131266667027.Spec : Prop :=
  ∀ n, P4310293131266667027.a n = A261799 n

theorem P4310293131266667027.correct : P4310293131266667027.Spec := by
  intro n
  simp only [A261799]

end A261799

/-! ## A261799.P1338404263936886578

`A261780(eq[7, A025581(n)])`
-/

namespace A261799.P1338404263936886578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261799.P1338404263936886578

namespace A261799

/-- `A261780(eq[7, A025581(n)])` -/
def P1338404263936886578.Spec : Prop :=
  ∀ n, P1338404263936886578.a n = A261799 n

end A261799

/-! ## A261799.P17269928654260043489

`A261780(A000096(n+7)-7)`
-/

namespace A261799.P17269928654260043489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A000096 (n + 7) - 7).toNat

end

end A261799.P17269928654260043489

namespace A261799

/-- `A261780(A000096(n+7)-7)` -/
def P17269928654260043489.Spec : Prop :=
  ∀ n, P17269928654260043489.a n = A261799 n

end A261799

/-! ## A261799.P4023818747174677450

`A261780(A000217(n+8)-8)`
-/

namespace A261799.P4023818747174677450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A000217 (n + 8) - 8).toNat

end

end A261799.P4023818747174677450

namespace A261799

/-- `A261780(A000217(n+8)-8)` -/
def P4023818747174677450.Spec : Prop :=
  ∀ n, P4023818747174677450.a n = A261799 n

end A261799

/-! ## A261799.P17321509924026587514

`A261780(A179865(n+9)-8)`
-/

namespace A261799.P17321509924026587514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (A179865 (n + 9) - 8).toNat

end

end A261799.P17321509924026587514

namespace A261799

/-- `A261780(A179865(n+9)-8)` -/
def P17321509924026587514.Spec : Prop :=
  ∀ n, P17321509924026587514.a n = A261799 n

end A261799

/-! ## A261799.P3544003570568252111

`A261780(eq[8, A004736(n+1)])`
-/

namespace A261799.P3544003570568252111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261799.P3544003570568252111

namespace A261799

/-- `A261780(eq[8, A004736(n+1)])` -/
def P3544003570568252111.Spec : Prop :=
  ∀ n, P3544003570568252111.a n = A261799 n

end A261799

/-! ## A261799.P2516217424594346558

`A261780(2*n+A055998(n+4)+10)`
-/

namespace A261799.P2516217424594346558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 ((2 * n : ℤ) + (A055998 (n + 4) + 10)).toNat

end

end A261799.P2516217424594346558

namespace A261799

/-- `A261780(2*n+A055998(n+4)+10)` -/
def P2516217424594346558.Spec : Prop :=
  ∀ n, P2516217424594346558.a n = A261799 n

end A261799

