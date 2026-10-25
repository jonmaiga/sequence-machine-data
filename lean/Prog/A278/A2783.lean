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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A278301: Number of permutations of length n in the class of juxtapositions of 321-avoiders with 21-avoiders.

The programs for A278301, the canonical program `A278301.P979363314421420552` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278301 has offset 0).

The definition of A278301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278301.P979363314421420552

`A007317(n+1)-A000245(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A278301

/-- `A007317(n+1)-A000245(n)` -/
def P979363314421420552.Spec : Prop :=
  ∀ n, P979363314421420552.a n = A278301 n

theorem P979363314421420552.correct : P979363314421420552.Spec := by
  intro n
  simp only [A278301]

end A278301

/-! ## A278301.P13728074566616068672

`A026759(n)-A039919(n+1)`
-/

namespace A278301.P13728074566616068672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026759 n - A039919 (n + 1)

end

end A278301.P13728074566616068672

namespace A278301

/-- `A026759(n)-A039919(n+1)` -/
def P13728074566616068672.Spec : Prop :=
  ∀ n, P13728074566616068672.a n = A278301 n

theorem P13728074566616068672.correct : P13728074566616068672.Spec := by
  intro n
  simp only [A278301, Nat.add_sub_cancel, A278301.P13728074566616068672.a, A278301.P979363314421420552.a, A000245, A000245.P15461013057778681831.a, A007317, A007317.P12762232467409535098.f1, A007317.P12762232467409535098.a, A026759, A026759.P13760565404652770883.a, A039919, A039919.P74578946767389129.f1, A039919.P74578946767389129.a, A000108, A000108.P17551949696095299361.a, A002212, A002212.P1343919783186949336.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278301

/-! ## A278301.P16878279562642195017

`A007317(n+1)-Δ[A000108(n)]`
-/

namespace A278301.P16878279562642195017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) - (f1 (n + 1) - f1 n)

end

end A278301.P16878279562642195017

namespace A278301

/-- `A007317(n+1)-Δ[A000108(n)]` -/
def P16878279562642195017.Spec : Prop :=
  ∀ n, P16878279562642195017.a n = A278301 n

end A278301

/-! ## A278301.P13276676962650620173

`A055879(2*(n+1))-A000245(n)`
-/

namespace A278301.P13276676962650620173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 (2 * (n + 1)) - A000245 n

end

end A278301.P13276676962650620173

namespace A278301

/-- `A055879(2*(n+1))-A000245(n)` -/
def P13276676962650620173.Spec : Prop :=
  ∀ n, P13276676962650620173.a n = A278301 n

end A278301

/-! ## A278301.P14619347079483410414

`A007317(n+1)+A000108(n)-A000108(n+1)`
-/

namespace A278301.P14619347079483410414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) + (A000108 n - A000108 (n + 1))

end

end A278301.P14619347079483410414

namespace A278301

/-- `A007317(n+1)+A000108(n)-A000108(n+1)` -/
def P14619347079483410414.Spec : Prop :=
  ∀ n, P14619347079483410414.a n = A278301 n

theorem P14619347079483410414.correct : P14619347079483410414.Spec := by
  intro n
  simp only [A278301, Nat.add_sub_cancel, A278301.P14619347079483410414.a, A278301.P979363314421420552.a, A000108, A000108.P17551949696095299361.a, A000245, A000245.P15461013057778681831.a, A007317, A007317.P12762232467409535098.f1, A007317.P12762232467409535098.a, A002212, A002212.P1343919783186949336.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278301

/-! ## A278301.P611706052033871867

`A181768(n+1)+A000108(n)-A000108(n+1)`
-/

namespace A278301.P611706052033871867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (n + 1) + (A000108 n - A000108 (n + 1))

end

end A278301.P611706052033871867

namespace A278301

/-- `A181768(n+1)+A000108(n)-A000108(n+1)` -/
def P611706052033871867.Spec : Prop :=
  ∀ n, P611706052033871867.a n = A278301 n

end A278301

/-! ## A278301.P16032087842552993153

`record[A104259(n)]-A000245(n)`
-/

namespace A278301.P16032087842552993153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000245 n

end

end A278301.P16032087842552993153

namespace A278301

/-- `record[A104259(n)]-A000245(n)` -/
def P16032087842552993153.Spec : Prop :=
  ∀ n, P16032087842552993153.a n = A278301 n

end A278301

/-!
# A278302: Number of n X n 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278302, there is no canonical definition to state claims against.
-/

/-! ## A278302.P15769103750800652717

`A278309((n+1)²+n²)`
-/

namespace A278302.P15769103750800652717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 ((n + 1) ^ 2 + n ^ 2)

end

end A278302.P15769103750800652717

/-!
# A278303: Number of n X 2 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278303, there is no canonical definition to state claims against.
-/

/-! ## A278303.P5787164493365644661

`A278309(∑[n+1]+2)`
-/

namespace A278303.P5787164493365644661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278303.P5787164493365644661

/-! ## A278303.P4900200067857654362

`record[A278309(Δ[A003453(n+5)])]`
-/

namespace A278303.P4900200067857654362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278303.P4900200067857654362

/-! ## A278303.P18033155657435774253

`record[A278309(eq[2, A278317(n+1)])]`
-/

namespace A278303.P18033155657435774253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278317 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278303.P18033155657435774253

/-! ## A278303.P14145169051100969170

`A278309(A000096(n+1))+A235145(n)`
-/

namespace A278303.P14145169051100969170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (A000096 (n + 1)).toNat + A235145 n

end

end A278303.P14145169051100969170

/-! ## A278303.P14537912715034434641

`A178334(n+1)*A278309(A000096(n+1))`
-/

namespace A278303.P14537912715034434641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1) * A278309 (A000096 (n + 1)).toNat

end

end A278303.P14537912715034434641

/-!
# A278304: Number of nX3 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278304, there is no canonical definition to state claims against.
-/

/-! ## A278304.P3374121148617268801

`A278309(∑[n+2]+4)`
-/

namespace A278304.P3374121148617268801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278304.P3374121148617268801

/-! ## A278304.P3813023403088455606

`lcm(A016251(n), A278309(A167614(n+1)))`
-/

namespace A278304.P3813023403088455606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016251 n) (A278309 (A167614 (n + 1)).toNat)

end

end A278304.P3813023403088455606

/-! ## A278304.P7625047885079245110

`A278309(A167614(n+1))%A205316(n+1)`
-/

namespace A278304.P7625047885079245110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278309 (A167614 (n + 1)).toNat) (A205316 (n + 1))

end

end A278304.P7625047885079245110

/-! ## A278304.P14631480548522244229

`or(A125688(n+1), A278309(A167614(n+1)))`
-/

namespace A278304.P14631480548522244229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A125688 (n + 1)) (A278309 (A167614 (n + 1)).toNat)

end

end A278304.P14631480548522244229

/-! ## A278304.P17258610165831837496

`or(A167262(n+1), A278309(A167614(n+1)))`
-/

namespace A278304.P17258610165831837496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A167262 (n + 1)) (A278309 (A167614 (n + 1)).toNat)

end

end A278304.P17258610165831837496

/-!
# A278305: Number of nX4 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278305, there is no canonical definition to state claims against.
-/

/-! ## A278305.P3124311239980139719

`A278309(A141214(n)+7)`
-/

namespace A278305.P3124311239980139719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (A141214 n + 7).toNat

end

end A278305.P3124311239980139719

/-! ## A278305.P17661131986699175907

`A278309(A052905(n)+9)`
-/

namespace A278305.P17661131986699175907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (A052905 n + 9).toNat

end

end A278305.P17661131986699175907

/-! ## A278305.P15304173248066803822

`A278309(A055999(n)+10)`
-/

namespace A278305.P15304173248066803822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (A055999 n + 10).toNat

end

end A278305.P15304173248066803822

/-! ## A278305.P18136948046861406416

`A278309(eq[5, A066657(n)])`
-/

namespace A278305.P18136948046861406416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278305.P18136948046861406416

/-! ## A278305.P15229685158620901203

`A278309(A167614(n+2)+1)`
-/

namespace A278305.P15229685158620901203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (A167614 (n + 2) + 1).toNat

end

end A278305.P15229685158620901203

/-!
# A278306: Number of nX5 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278306, there is no canonical definition to state claims against.
-/

/-! ## A278306.P1732041936412244909

`A278309(A056000(n)+15)`
-/

namespace A278306.P1732041936412244909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (A056000 n + 15).toNat

end

end A278306.P1732041936412244909

/-! ## A278306.P16981772229679337570

`A278309(eq[7, A066657(n)])`
-/

namespace A278306.P16981772229679337570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278306.P16981772229679337570

/-! ## A278306.P388349243583421480

`A278309(A374005(n+1))`
-/

namespace A278306.P388349243583421480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (A374005 (n + 1)).toNat

end

end A278306.P388349243583421480

/-! ## A278306.P828257477510867753

`A278309(eq[4, A193592(n)])`
-/

namespace A278306.P828257477510867753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278306.P828257477510867753

/-! ## A278306.P12400349228819983749

`A278309(Δ[A023545(n+1)])`
-/

namespace A278306.P12400349228819983749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (f1 (n + 1) - f1 n).toNat

end

end A278306.P12400349228819983749

/-!
# A278307: Number of nX6 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278307, there is no canonical definition to state claims against.
-/

/-! ## A278307.P3886339877661164414

`A278309(A374007(n+1))`
-/

namespace A278307.P3886339877661164414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (A374007 (n + 1)).toNat

end

end A278307.P3886339877661164414

/-! ## A278307.P1837367097392724854

`A278309(A052905(n+3))`
-/

namespace A278307.P1837367097392724854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (A052905 (n + 3)).toNat

end

end A278307.P1837367097392724854

/-! ## A278307.P14308428083850893021

`A278309(eq[5, A193592(n)])`
-/

namespace A278307.P14308428083850893021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278307.P14308428083850893021

/-! ## A278307.P6797303758337970975

`A278309(Δ[Δ[A006504(n+1)]])`
-/

namespace A278307.P6797303758337970975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (f1 (n + 1) - f1 n).toNat

end

end A278307.P6797303758337970975

/-! ## A278307.P1632890553798968270

`A278309(Δ[A023545(n+2)]-1)`
-/

namespace A278307.P1632890553798968270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (f1 (n + 1) - f1 n - 1).toNat

end

end A278307.P1632890553798968270

/-!
# A278308: Number of nX7 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278308, there is no canonical definition to state claims against.
-/

/-! ## A278308.P14809927947377894539

`A278309(A374008(n+1))`
-/

namespace A278308.P14809927947377894539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (A374008 (n + 1)).toNat

end

end A278308.P14809927947377894539

/-! ## A278308.P16914481439881901007

`A278309(A055999(n+4))`
-/

namespace A278308.P16914481439881901007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (A055999 (n + 4)).toNat

end

end A278308.P16914481439881901007

/-! ## A278308.P6566792284055560236

`A278309(eq[6, A193592(n)])`
-/

namespace A278308.P6566792284055560236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278308.P6566792284055560236

/-!
# A278310: Numbers m such that T(m) + 3*T(m+1) is a square, where T = A000217.

The programs for A278310, the canonical program `A278310.P6656274132415277736` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278310 has offset 1).

The definition of A278310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278310.P6656274132415277736

`34*a(n-1)-a(n-2)+40` with `a(0)=3, a(1)=143`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278310

/-- `34*a(n-1)-a(n-2)+40` -/
def P6656274132415277736.Spec : Prop :=
  ∀ n, P6656274132415277736.a n = A278310 (n + 1)

theorem P6656274132415277736.correct : P6656274132415277736.Spec := by
  intro n
  simp only [A278310, Nat.add_sub_cancel]

end A278310

/-! ## A278310.P646001989442294920

`((1+sqrt(2))^(4*(n+1))+(1-sqrt(2))^(4*(n+1)))/8-5/4`
-/

namespace A278310.P646001989442294920
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (2 : ℝ)) ^ (4 * (n + 1)) + (1 - Real.sqrt (2 : ℝ)) ^ (4 * (n + 1))) / 8 - ((5 : ℚ) / 4 : ℝ)

end

end A278310.P646001989442294920

namespace A278310

/-- `((1+sqrt(2))^(4*(n+1))+(1-sqrt(2))^(4*(n+1)))/8-5/4` -/
def P646001989442294920.Spec : Prop :=
  ∀ n, P646001989442294920.a n = (A278310 (n + 1) : ℝ)

end A278310

/-! ## A278310.P4136140293632374165

`Δ[∑[A001542(n)²]-n]`
-/

namespace A278310.P4136140293632374165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278310.P4136140293632374165

namespace A278310

/-- `Δ[∑[A001542(n)²]-n]` -/
def P4136140293632374165.Spec : Prop :=
  ∀ n, P4136140293632374165.a n = A278310 (n + 1)

end A278310

/-! ## A278310.P5463646556637609065

`(A349766(n+1)-2)/4`
-/

namespace A278310.P5463646556637609065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349766 (n + 1) - 2 : ℚ) / 4

end

end A278310.P5463646556637609065

namespace A278310

/-- `(A349766(n+1)-2)/4` -/
def P5463646556637609065.Spec : Prop :=
  ∀ n, P5463646556637609065.a n = (A278310 (n + 1) : ℚ)

end A278310

/-!
# A278311: Numbers n such that n-1 and n+1 have the same number of prime factors as n (with multiplicity).

The programs for A278311, there is no canonical definition to state claims against.
-/

/-! ## A278311.P44813669645445330

`A045939(n+1)+1`
-/

namespace A278311.P44813669645445330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1) + 1

end

end A278311.P44813669645445330

/-! ## A278311.P11808664355165020423

`∩[A045920(n+1), A213063(n+1)]`
-/

namespace A278311.P11808664355165020423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278311.P11808664355165020423

/-! ## A278311.P600196349365395414

`∩[A045920(n+1), A278291(n+1)]`
-/

namespace A278311.P600196349365395414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278311.P600196349365395414

/-! ## A278311.P17135783580210814475

`∩[A213063(n+1), A278291(n+1)]`
-/

namespace A278311.P17135783580210814475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278311.P17135783580210814475

/-! ## A278311.P13088207443448274612

`record[gcd(A045920(n+8), A278291(n+7))]`
-/

namespace A278311.P13088207443448274612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045920 (n + 8)) (A278291 (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278311.P13088207443448274612

/-! ## A278311.P13852952425667981073

`∩[A045920(n+2)+1, A045920(n+2)]`
-/

namespace A278311.P13852952425667981073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278311.P13852952425667981073

/-! ## A278311.P10740481521361918723

`∩[A278291(n+2)-1, A278291(n+2)]`
-/

namespace A278311.P10740481521361918723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278311.P10740481521361918723

/-! ## A278311.P9040015957436890630

`A278291(eq[1, A278291(n+2)-A278291(n+1)]+1)`
-/

namespace A278311.P9040015957436890630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 2) - A278291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A278311.P9040015957436890630

/-! ## A278311.P6159889383324196323

`∩[A045920(n+1), A280382(n+1)]`
-/

namespace A278311.P6159889383324196323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278311.P6159889383324196323

/-! ## A278311.P14400921857975649215

`∩[A278291(n+1), A280382(n+1)]`
-/

namespace A278311.P14400921857975649215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278311.P14400921857975649215

/-! ## A278311.P17346696915430367383

`lt[1, A077655(n+1)]+2`
-/

namespace A278311.P17346696915430367383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A278311.P17346696915430367383

/-! ## A278311.P16205391755941292139

`record[A273943(A328359(n+2))]`
-/

namespace A278311.P16205391755941292139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A328359 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278311.P16205391755941292139

/-! ## A278311.P2915457397182874337

`A011760(A045939(n+1))`
-/

namespace A278311.P2915457397182874337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A045939 (n + 1)).toNat

end

end A278311.P2915457397182874337

/-!
# A278312: a(n) = denominator of n/(2^(2*n+1)).

The programs for A278312, the canonical program `A278312.P13833580207506786350` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278312 has offset 0).

The definition of A278312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278312.P13833580207506786350

`2/gcd(n, 2^(n+1))*4^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278312

/-- `2/gcd(n, 2^(n+1))*4^n` -/
def P13833580207506786350.Spec : Prop :=
  ∀ n, P13833580207506786350.a n = (A278312 n : ℚ)

end A278312

/-! ## A278312.P16440879557920741442

`2^(∑{e}[xor(n, -n), 2-#]+2*n)`
-/

namespace A278312.P16440879557920741442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.factorization (f1 n).natAbs p : ℤ)) + (2 * n : ℤ) : ℤ)

end

end A278312.P16440879557920741442

namespace A278312

/-- `2^(∑{e}[xor(n, -n), 2-#]+2*n)` -/
def P16440879557920741442.Spec : Prop :=
  ∀ n, P16440879557920741442.a n = (A278312 n : ℚ)

end A278312

/-! ## A278312.P3083111086916449420

`2^(A088705(n)+2*n)`
-/

namespace A278312.P3083111086916449420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A088705 n + (2 * n : ℤ) : ℤ)

end

end A278312.P3083111086916449420

namespace A278312

/-- `2^(A088705(n)+2*n)` -/
def P3083111086916449420.Spec : Prop :=
  ∀ n, P3083111086916449420.a n = (A278312 n : ℚ)

end A278312

/-! ## A278312.P13514731176246181149

`2^(2*n-A089263(3*n))`
-/

namespace A278312.P13514731176246181149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - A089263 (3 * n) : ℤ)

end

end A278312.P13514731176246181149

namespace A278312

/-- `2^(2*n-A089263(3*n))` -/
def P13514731176246181149.Spec : Prop :=
  ∀ n, P13514731176246181149.a n = (A278312 n : ℚ)

end A278312

/-! ## A278312.P9836050332971162642

`A004171(n)/gcd(n, A004171(n))`
-/

namespace A278312.P9836050332971162642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004171 n : ℚ) / (Int.gcd (n : ℤ) (A004171 n) : ℚ)

end

end A278312.P9836050332971162642

namespace A278312

/-- `A004171(n)/gcd(n, A004171(n))` -/
def P9836050332971162642.Spec : Prop :=
  ∀ n, P9836050332971162642.a n = (A278312 n : ℚ)

end A278312

/-! ## A278312.P17780193268926473311

`A319862(A033537(n))`
-/

namespace A278312.P17780193268926473311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319862 (A033537 n).toNat

end

end A278312.P17780193268926473311

namespace A278312

/-- `A319862(A033537(n))` -/
def P17780193268926473311.Spec : Prop :=
  ∀ n, P17780193268926473311.a n = A278312 n

end A278312

/-!
# A278313: Number of letters "I" in Roman numeral representation of n.

The programs for A278313, the canonical program `A278313.P12169066231521975213` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278313 has offset 1).

The definition of A278313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278313.P12169066231521975213

`a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=1, a(4)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278313

/-- `a(n-5)` -/
def P12169066231521975213.Spec : Prop :=
  ∀ n, (P12169066231521975213.a n : ℤ) = A278313 (n + 1)

theorem P12169066231521975213.correct : P12169066231521975213.Spec := by
  intro n
  simp only [A278313, Nat.add_sub_cancel]

end A278313

/-!
# A278314: a(n) = -c(n-1) * c(n-2) * c(n+3) where c(n) = A006769(n).

The programs for A278314, there is no canonical definition to state claims against.
-/

/-! ## A278314.P9030292919109132934

`A006769(n)*A247369(2*n+3)`
-/

namespace A278314.P9030292919109132934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 n * A247369 (2 * n + 3)

end

end A278314.P9030292919109132934

/-! ## A278314.P14846853314017054438

`A028942(n+1)*A033999(A000843(n+1))`
-/

namespace A278314.P14846853314017054438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028942 (n + 1) * A033999 (A000843 (n + 1)).toNat

end

end A278314.P14846853314017054438

/-!
# A278315: Composite numbers k such that sum of proper divisors of k divides 2^k-1.

The programs for A278315, there is no canonical definition to state claims against.
-/

/-! ## A278315.P1407253423711667987

`A316856(A023143(n+2)+1)`
-/

namespace A278315.P1407253423711667987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (A023143 (n + 2) + 1).toNat

end

end A278315.P1407253423711667987

/-!
# A278316: Odd numbers n such that q(n)^2 = q(n^2) != 0, where q(n) is the digit product on base 10.

The programs for A278316, there is no canonical definition to state claims against.
-/

/-! ## A278316.P17599556567822935870

`filter[A256115(n+1), A379952(#)]`
-/

namespace A278316.P17599556567822935870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A278316.P17599556567822935870

/-! ## A278316.P2695317565384027364

`record[A093178(A256115(n+1))]`
-/

namespace A278316.P2695317565384027364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A256115 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278316.P2695317565384027364

/-!
# A278317: Number of neighbors of each new term in a right triangle read by rows.

The programs for A278317, the canonical program `A278317.P17917219794750219579` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278317 has offset 1).

The definition of A278317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278317.P12906227827564322901

`ceil(log2(gcd(12, A036561(n))))`
-/

namespace A278317.P12906227827564322901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Int.gcd 12 (A036561 n) : ℝ)⌉

end

end A278317.P12906227827564322901

namespace A278317

/-- `ceil(log2(gcd(12, A036561(n))))` -/
def P12906227827564322901.Spec : Prop :=
  ∀ n, P12906227827564322901.a n = A278317 (n + 1)

end A278317

/-! ## A278317.P17917219794750219579

`a(n-A141419(n))+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A278317

/-- `a(n-A141419(n))+2` -/
def P17917219794750219579.Spec : Prop :=
  ∀ n, (P17917219794750219579.a n : ℤ) = A278317 (n + 1)

theorem P17917219794750219579.correct : P17917219794750219579.Spec := by
  intro n
  simp only [A278317, Nat.add_sub_cancel]

end A278317

/-! ## A278317.P7975883300985440557

`floor(log2(gcd(20, A232646(n+1))))`
-/

namespace A278317.P7975883300985440557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Int.gcd 20 (A232646 (n + 1)))

end

end A278317.P7975883300985440557

namespace A278317

/-- `floor(log2(gcd(20, A232646(n+1))))` -/
def P7975883300985440557.Spec : Prop :=
  ∀ n, (P7975883300985440557.a n : ℤ) = A278317 (n + 1)

end A278317

/-! ## A278317.P11001968619408709786

`A278290(n+1)+Δ[A154325(n)]`
-/

namespace A278317.P11001968619408709786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278290 (n + 1) + (f1 (n + 1) - f1 n)

end

end A278317.P11001968619408709786

namespace A278317

/-- `A278290(n+1)+Δ[A154325(n)]` -/
def P11001968619408709786.Spec : Prop :=
  ∀ n, P11001968619408709786.a n = A278317 (n + 1)

end A278317

/-! ## A278317.P8405849628687836095

`A278290(n+1)-Δ[A103451(n)]`
-/

namespace A278317.P8405849628687836095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278290 (n + 1) - (f1 (n + 1) - f1 n)

end

end A278317.P8405849628687836095

namespace A278317

/-- `A278290(n+1)-Δ[A103451(n)]` -/
def P8405849628687836095.Spec : Prop :=
  ∀ n, P8405849628687836095.a n = A278317 (n + 1)

end A278317

/-! ## A278317.P6450090693985838030

`floor(log(A278480(n+1))²)`
-/

namespace A278317.P6450090693985838030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A278480 (n + 1) : ℝ) ^ 2⌋

end

end A278317.P6450090693985838030

namespace A278317

/-- `floor(log(A278480(n+1))²)` -/
def P6450090693985838030.Spec : Prop :=
  ∀ n, P6450090693985838030.a n = A278317 (n + 1)

end A278317

/-! ## A278317.P13624850584817218642

`A249579(A278480(n+1)-or(n, -1))`
-/

namespace A278317.P13624850584817218642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (A278480 (n + 1) - Int.lor (n : ℤ) (-1)).toNat

end

end A278317.P13624850584817218642

namespace A278317

/-- `A249579(A278480(n+1)-or(n, -1))` -/
def P13624850584817218642.Spec : Prop :=
  ∀ n, P13624850584817218642.a n = A278317 (n + 1)

end A278317

/-! ## A278317.P495339200747996296

`A278480(n+1)-(A278597(n+1)+1)`
-/

namespace A278317.P495339200747996296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278480 (n + 1) - (A278597 (n + 1) + 1)

end

end A278317.P495339200747996296

namespace A278317

/-- `A278480(n+1)-(A278597(n+1)+1)` -/
def P495339200747996296.Spec : Prop :=
  ∀ n, P495339200747996296.a n = A278317 (n + 1)

end A278317

/-! ## A278317.P9115523215958921609

`A278597(n+2)+A275015(n+1)-2`
-/

namespace A278317.P9115523215958921609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278597 (n + 2) + (A275015 (n + 1) - 2)

end

end A278317.P9115523215958921609

namespace A278317

/-- `A278597(n+2)+A275015(n+1)-2` -/
def P9115523215958921609.Spec : Prop :=
  ∀ n, P9115523215958921609.a n = A278317 (n + 1)

end A278317

/-! ## A278317.P6502959512897738119

`A275015(n+1)+A121262(A054582(n))`
-/

namespace A278317.P6502959512897738119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275015 (n + 1) + A121262 (A054582 n).toNat

end

end A278317.P6502959512897738119

namespace A278317

/-- `A275015(n+1)+A121262(A054582(n))` -/
def P6502959512897738119.Spec : Prop :=
  ∀ n, P6502959512897738119.a n = A278317 (n + 1)

end A278317

/-! ## A278317.P14088151737762880387

`A275015(n+1)+Δ[A083920(A083920(n))]`
-/

namespace A278317.P14088151737762880387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A083920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275015 (n + 1) + (f1 (n + 1) - f1 n)

end

end A278317.P14088151737762880387

namespace A278317

/-- `A275015(n+1)+Δ[A083920(A083920(n))]` -/
def P14088151737762880387.Spec : Prop :=
  ∀ n, P14088151737762880387.a n = A278317 (n + 1)

end A278317

/-! ## A278317.P4060094924519005747

`A275015(n+1)+A278290(n+2)-A275015(n+2)`
-/

namespace A278317.P4060094924519005747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275015 (n + 1) + (A278290 (n + 2) - A275015 (n + 2))

end

end A278317.P4060094924519005747

namespace A278317

/-- `A275015(n+1)+A278290(n+2)-A275015(n+2)` -/
def P4060094924519005747.Spec : Prop :=
  ∀ n, P4060094924519005747.a n = A278317 (n + 1)

end A278317

/-!
# A278318: Number of n X n 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278318, there is no canonical definition to state claims against.
-/

/-! ## A278318.P17042962100807058704

`A278325(∑[4*n]+1)`
-/

namespace A278318.P17042962100807058704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278318.P17042962100807058704

/-! ## A278318.P10796491844099374557

`record[A003982(n)*A278325(n+1)]`
-/

namespace A278318.P10796491844099374557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A278325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278318.P10796491844099374557

/-! ## A278318.P18392047352680596998

`A057427(n)*A278325(A001844(n))`
-/

namespace A278318.P18392047352680596998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A278325 (A001844 n).toNat

end

end A278318.P18392047352680596998

/-! ## A278318.P6969506436888685647

`A178788(n)*A278325(A001844(n))`
-/

namespace A278318.P6969506436888685647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n * A278325 (A001844 n).toNat

end

end A278318.P6969506436888685647

/-! ## A278318.P595969189607766276

`A275065(n)*A278325(A001844(n))`
-/

namespace A278318.P595969189607766276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275065 n * A278325 (A001844 n).toNat

end

end A278318.P595969189607766276

/-!
# A278319: Number of n X 2 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278319, there is no canonical definition to state claims against.
-/

/-! ## A278319.P8327848430374860865

`A278325(∑[n+1]+2)`
-/

namespace A278319.P8327848430374860865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278319.P8327848430374860865

/-! ## A278319.P11778773123991302691

`record[A278325(A133263(A007953(n)))]`
-/

namespace A278319.P11778773123991302691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A133263 (A007953 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278319.P11778773123991302691

/-! ## A278319.P4726809305560927996

`record[A278325(A133263(A028242(n)))]`
-/

namespace A278319.P4726809305560927996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278319.P4726809305560927996

/-! ## A278319.P2873293737065492802

`A007318(and(3, -n))*A278325(A133263(n+1))`
-/

namespace A278319.P2873293737065492802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A278325 (A133263 (n + 1)).toNat

end

end A278319.P2873293737065492802

/-! ## A278319.P18011440068958311941

`A000040(n+1)%2*A278325(A133263(n+1))`
-/

namespace A278319.P18011440068958311941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A278325 (A133263 (n + 1)).toNat

end

end A278319.P18011440068958311941

/-!
# A278320: Number of nX3 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278320, there is no canonical definition to state claims against.
-/

/-! ## A278320.P1682568304986656204

`A278325(∑[n+2]+4)`
-/

namespace A278320.P1682568304986656204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278320.P1682568304986656204

/-! ## A278320.P8161677685010798690

`A057427(n)*A278325(A167614(n+1))`
-/

namespace A278320.P8161677685010798690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A278325 (A167614 (n + 1)).toNat

end

end A278320.P8161677685010798690

/-! ## A278320.P15427132714215995454

`A178334(n)*A278325(A167614(n+1))`
-/

namespace A278320.P15427132714215995454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A278325 (A167614 (n + 1)).toNat

end

end A278320.P15427132714215995454

/-! ## A278320.P2209496581614564851

`A278325(A167614(n+1))*A304042(n)`
-/

namespace A278320.P2209496581614564851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A167614 (n + 1)).toNat * A304042 n

end

end A278320.P2209496581614564851

/-! ## A278320.P17473238081493602993

`A278325(A167614(n+1))%A165702(n)`
-/

namespace A278320.P17473238081493602993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278325 (A167614 (n + 1)).toNat) (A165702 n)

end

end A278320.P17473238081493602993

/-!
# A278321: Number of nX4 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278321, there is no canonical definition to state claims against.
-/

/-! ## A278321.P12659107173342630554

`A278325(A141214(n)+7)`
-/

namespace A278321.P12659107173342630554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A141214 n + 7).toNat

end

end A278321.P12659107173342630554

/-! ## A278321.P1350816030187904750

`A278325(A052905(n)+9)`
-/

namespace A278321.P1350816030187904750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A052905 n + 9).toNat

end

end A278321.P1350816030187904750

/-! ## A278321.P6700218101461517940

`A278325(A055999(n)+10)`
-/

namespace A278321.P6700218101461517940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A055999 n + 10).toNat

end

end A278321.P6700218101461517940

/-! ## A278321.P14828250050308506499

`A278325(A167614(n+2)+1)`
-/

namespace A278321.P14828250050308506499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A167614 (n + 2) + 1).toNat

end

end A278321.P14828250050308506499

/-! ## A278321.P5683406794919475829

`A278325(A166136(n+2)-2)`
-/

namespace A278321.P5683406794919475829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A166136 (n + 2) - 2).toNat

end

end A278321.P5683406794919475829

/-!
# A278322: Number of nX5 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278322, there is no canonical definition to state claims against.
-/

/-! ## A278322.P11426895934903080901

`A278325(A155212(n)+13)`
-/

namespace A278322.P11426895934903080901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A155212 n + 13).toNat

end

end A278322.P11426895934903080901

/-! ## A278322.P10668872703312432488

`A278325(A056000(n)+15)`
-/

namespace A278322.P10668872703312432488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A056000 n + 15).toNat

end

end A278322.P10668872703312432488

/-! ## A278322.P7738597243092304283

`A278325(eq[6, A131818(n+1)])`
-/

namespace A278322.P7738597243092304283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278322.P7738597243092304283

/-! ## A278322.P13108538960024512630

`A278325(Δ[A264443(n)])`
-/

namespace A278322.P13108538960024512630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (f1 (n + 1) - f1 n).toNat

end

end A278322.P13108538960024512630

/-! ## A278322.P11351265358146855534

`A278325(A374005(n+1))`
-/

namespace A278322.P11351265358146855534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A374005 (n + 1)).toNat

end

end A278322.P11351265358146855534

/-!
# A278323: Number of nX6 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278323, there is no canonical definition to state claims against.
-/

/-! ## A278323.P15735510722094308973

`A278325(Δ[A264443(n)]+10)`
-/

namespace A278323.P15735510722094308973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (f1 (n + 1) - f1 n + 10).toNat

end

end A278323.P15735510722094308973

/-! ## A278323.P7662149919630232740

`A278325(eq[7, A131818(n+1)])`
-/

namespace A278323.P7662149919630232740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278323.P7662149919630232740

/-! ## A278323.P4852556845892086543

`A278325(A374007(n+1))`
-/

namespace A278323.P4852556845892086543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A374007 (n + 1)).toNat

end

end A278323.P4852556845892086543

/-! ## A278323.P3760797237899398671

`A278325(A052905(n+3))`
-/

namespace A278323.P3760797237899398671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A052905 (n + 3)).toNat

end

end A278323.P3760797237899398671

/-! ## A278323.P241535230800325177

`A278325(eq[3, A219347(n)])`
-/

namespace A278323.P241535230800325177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278323.P241535230800325177

/-!
# A278324: Number of nX7 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278324, there is no canonical definition to state claims against.
-/

/-! ## A278324.P9400505988813020847

`A278325(A166136(n+5)+1)`
-/

namespace A278324.P9400505988813020847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A166136 (n + 5) + 1).toNat

end

end A278324.P9400505988813020847

/-! ## A278324.P8523250857155442759

`A278325(A141214(n+3)+10)`
-/

namespace A278324.P8523250857155442759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A141214 (n + 3) + 10).toNat

end

end A278324.P8523250857155442759

/-! ## A278324.P16703408819972806195

`A278325(eq[8, A131818(n+1)])`
-/

namespace A278324.P16703408819972806195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278324.P16703408819972806195

/-! ## A278324.P2887316812794221987

`A278325(A374008(n+1))`
-/

namespace A278324.P2887316812794221987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A374008 (n + 1)).toNat

end

end A278324.P2887316812794221987

/-! ## A278324.P10210720694144888112

`A278325(A055999(n+4))`
-/

namespace A278324.P10210720694144888112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278325 (A055999 (n + 4)).toNat

end

end A278324.P10210720694144888112

/-!
# A278328: Numbers n such that abs(n - rev(n)) is a square, where rev(n) is the decimal reverse of n (A004086).

The programs for A278328, there is no canonical definition to state claims against.
-/

/-! ## A278328.P13319837369386455811

`eq[1, A329739(A151950(n))%2]`
-/

namespace A278328.P13319837369386455811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329739 (A151950 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278328.P13319837369386455811

/-! ## A278328.P15214758539859315391

`lt[A243752(A338827(n)), A340656(n+1)]`
-/

namespace A278328.P15214758539859315391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243752 (A338827 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278328.P15214758539859315391

/-! ## A278328.P12668881502707684674

`lt[A151949(n), A261606(A069877(n+2))]`
-/

namespace A278328.P12668881502707684674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261606 (A069877 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278328.P12668881502707684674

/-! ## A278328.P11816667313092354273

`lt[A231429(n), A329905(A166523(n+5))]`
-/

namespace A278328.P11816667313092354273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329905 (A166523 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278328.P11816667313092354273

/-!
# A278331: Shifted sequence of second differences of Genocchi numbers.

The programs for A278331, there is no canonical definition to state claims against.
-/

/-! ## A278331.P18322149806665406613

`Δ[Δ[A036968(n+2)]]`
-/

namespace A278331.P18322149806665406613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036968 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278331.P18322149806665406613

/-! ## A278331.P13261950658953924602

`Δ[Δ[A226158(n+2)]]`
-/

namespace A278331.P13261950658953924602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278331.P13261950658953924602

/-! ## A278331.P17166418834800622500

`Δ[Δ[A239977(n+2)]]`
-/

namespace A278331.P17166418834800622500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239977 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278331.P17166418834800622500

/-! ## A278331.P11608003045968504338

`Δ[A279172(n+1)]`
-/

namespace A278331.P11608003045968504338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278331.P11608003045968504338

/-! ## A278331.P430503006093384850

`Δ[A133135(n+2)-A133135(n)]`
-/

namespace A278331.P430503006093384850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133135 (n + 2) - A133135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278331.P430503006093384850

/-!
# A278332: E.g.f. equals the limit of the average of all permutations of the compositions of the functions x*exp(x^k), for k=1..n, as n increases.

The programs for A278332, there is no canonical definition to state claims against.
-/

/-! ## A278332.P8038373426931315497

`(n+1)*A278333(n)`
-/

namespace A278332.P8038373426931315497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A278333 n

end

end A278332.P8038373426931315497

/-! ## A278332.P15058320458642734811

`A278333(n)*A291769(n)`
-/

namespace A278332.P15058320458642734811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278333 n * A291769 n

end

end A278332.P15058320458642734811

/-! ## A278332.P4009279917229164235

`A278333(n)*A331300(n)`
-/

namespace A278332.P4009279917229164235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278333 n * A331300 n

end

end A278332.P4009279917229164235

/-! ## A278332.P11569670303836159129

`A278333(n)*A348553(n)`
-/

namespace A278332.P11569670303836159129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278333 n * A348553 n

end

end A278332.P11569670303836159129

/-! ## A278332.P5237066001139753720

`record[A048379(n)*A278333(n)]`
-/

namespace A278332.P5237066001139753720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n * A278333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278332.P5237066001139753720

/-!
# A278333: a(n) = A278332(n+1)/(n+1) for n>=0.

The programs for A278333, there is no canonical definition to state claims against.
-/

/-! ## A278333.P15457549307567031790

`A278332(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278333.P15457549307567031790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278332 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A278333.P15457549307567031790

/-! ## A278333.P322484659095436281

`A007913((n+1)*A278332(n+1))`
-/

namespace A278333.P322484659095436281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A278332 (n + 1)).toNat

end

end A278333.P322484659095436281

/-!
# A278336: Numbers k such that (94*10^k - 7) / 3 is prime.

The programs for A278336, there is no canonical definition to state claims against.
-/

/-! ## A278336.P14774664078009422106

`record[and(A026584(n+1), A328677(n+3))]`
-/

namespace A278336.P14774664078009422106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026584 (n + 1)) (A328677 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278336.P14774664078009422106

/-! ## A278336.P13693295285388880147

`eq[A000005(A053198(2*n+1)), A000224(3*(n+1))]`
-/

namespace A278336.P13693295285388880147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053198 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278336.P13693295285388880147

/-!
# A278338: Irregular triangle read by rows in which row n contains the first Carmichael number equal to m mod n where m is coprime to n, 0 <= m < n, ordered by m.

The programs for A278338, there is no canonical definition to state claims against.
-/

/-! ## A278338.P13048456392956352491

`A309235(A067538(n+1)^A053121(n))`
-/

namespace A278338.P13048456392956352491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309235 (SequenceMachineLib.roundAway ((A067538 (n + 1) : ℚ) ^ (A053121 n : ℤ))).toNat

end

end A278338.P13048456392956352491

/-! ## A278338.P10941666249479925223

`A215672(A233239(n+1)^A053121(n))`
-/

namespace A278338.P10941666249479925223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215672 (SequenceMachineLib.roundAway ((A233239 (n + 1) : ℚ) ^ (A053121 n : ℤ))).toNat

end

end A278338.P10941666249479925223

/-! ## A278338.P4737025210857952528

`A002997(gcd(A001951(n), A058136(n+1)))`
-/

namespace A278338.P4737025210857952528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (Int.gcd (A001951 n) (A058136 (n + 1)))

end

end A278338.P4737025210857952528

/-!
# A278340: Number of partitions of n*(n+1)/2 into distinct squares.

The programs for A278340, there is no canonical definition to state claims against.
-/

/-! ## A278340.P6331538928386228560

`A033461(A000217(n))`
-/

namespace A278340.P6331538928386228560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A000217 n).toNat

end

end A278340.P6331538928386228560

/-! ## A278340.P12425196893982267092

`A033461(∑[n])`
-/

namespace A278340.P12425196893982267092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278340.P12425196893982267092

/-! ## A278340.P14455124243115295427

`and(-1, A033461(C(n+1, 2)))`
-/

namespace A278340.P14455124243115295427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A033461 (Nat.choose (n + 1) 2))

end

end A278340.P14455124243115295427

/-! ## A278340.P4972381813292484189

`and(-1, A033461((n²+n)/2))`
-/

namespace A278340.P4972381813292484189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A033461 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A278340.P4972381813292484189

/-! ## A278340.P13613930898852527532

`Δ[A033461(C(n, 2))+a(n-1)]` with `a(0)=1`
-/

namespace A278340.P13613930898852527532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A033461 (Nat.choose n 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278340.P13613930898852527532

/-! ## A278340.P9185362668827544888

`A033461(C(n+1, 2))+A000007(n+1)`
-/

namespace A278340.P9185362668827544888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (Nat.choose (n + 1) 2) + A000007 (n + 1)

end

end A278340.P9185362668827544888

/-! ## A278340.P17159370438644893782

`A033461(C(n+1, 2))%(A000041(n)+1)`
-/

namespace A278340.P17159370438644893782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033461 (Nat.choose (n + 1) 2)) (A000041 n + 1)

end

end A278340.P17159370438644893782

/-! ## A278340.P9450838177825330500

`A007318(C(2, n))*A033461(C(n+1, 2))`
-/

namespace A278340.P9450838177825330500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A033461 (Nat.choose (n + 1) 2)

end

end A278340.P9450838177825330500

/-! ## A278340.P4794898847727910903

`A033461(C(n+1, 2))+C(2, A000203(n+2))`
-/

namespace A278340.P4794898847727910903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (Nat.choose (n + 1) 2) + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A278340.P4794898847727910903

/-! ## A278340.P2834867026215842692

`A000010(gcd(n, n+2))*A033461(C(n+1, 2))`
-/

namespace A278340.P2834867026215842692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 2)) * A033461 (Nat.choose (n + 1) 2)

end

end A278340.P2834867026215842692

/-! ## A278340.P3233813554317576726

`lcm(A008683(A005117(n+1)), A033461(C(n+1, 2)))`
-/

namespace A278340.P3233813554317576726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A005117 (n + 1)).toNat) (A033461 (Nat.choose (n + 1) 2))

end

end A278340.P3233813554317576726

/-!
# A278341: a(n) is the number of decompositions of n into unordered form p + c*q, where p, q are terms of A274987 and the difference of trits for p and q is no more than 1, c=1 for even n-s and c=2 for odd n-s.

The programs for A278341, there is no canonical definition to state claims against.
-/

/-! ## A278341.P4235580680873233296

`A276520(n+1)-A369036(A294414(n))`
-/

namespace A278341.P4235580680873233296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276520 (n + 1) - A369036 (A294414 n).toNat

end

end A278341.P4235580680873233296

/-!
# A278342: Zero terms of A278341.

The programs for A278342, there is no canonical definition to state claims against.
-/

/-! ## A278342.P13498103144005602055

`eq[0, A278341(n+1)]+1`
-/

namespace A278342.P13498103144005602055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A278342.P13498103144005602055

/-! ## A278342.P7584214688190445634

`lt[n*A278341(A028310(n)), n]`
-/

namespace A278342.P7584214688190445634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A278341 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A278342.P7584214688190445634

/-! ## A278342.P13577720993904546573

`lt[A278341(n+1), A158388(n+4)]+1`
-/

namespace A278342.P13577720993904546573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A278342.P13577720993904546573

/-! ## A278342.P10025773146658501620

`eq[A000007(n), A278341(A028310(n))]`
-/

namespace A278342.P10025773146658501620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278341 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278342.P10025773146658501620

/-! ## A278342.P3807617745005379073

`eq[A000038(n), A278341(A028310(n))]`
-/

namespace A278342.P3807617745005379073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278341 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278342.P3807617745005379073

/-!
# A278343: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

The programs for A278343, there is no canonical definition to state claims against.
-/

/-! ## A278343.P5724968818491074810

`A007088(A278345(n))`
-/

namespace A278343.P5724968818491074810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278345 n).toNat

end

end A278343.P5724968818491074810

/-! ## A278343.P13426713414390050883

`A305989(A278346(n))`
-/

namespace A278343.P13426713414390050883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A278346 n).toNat

end

end A278343.P13426713414390050883

/-! ## A278343.P12383284066025365942

`A185544(2*A278345(n))`
-/

namespace A278343.P12383284066025365942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278345 n).toNat

end

end A278343.P12383284066025365942

/-! ## A278343.P15687135683104257967

`A185544(lcm(2, A278345(n)))`
-/

namespace A278343.P15687135683104257967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A278345 n))

end

end A278343.P15687135683104257967

/-!
# A278344: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

The programs for A278344, there is no canonical definition to state claims against.
-/

/-! ## A278344.P5713895267151260984

`A007088(A278346(n))`
-/

namespace A278344.P5713895267151260984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278346 n).toNat

end

end A278344.P5713895267151260984

/-! ## A278344.P4760375875149624981

`A185544(2*A278346(n))`
-/

namespace A278344.P4760375875149624981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278346 n).toNat

end

end A278344.P4760375875149624981

/-!
# A278345: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

The programs for A278345, there is no canonical definition to state claims against.
-/

/-! ## A278345.P13784027203221346468

`xor(A175919(A278346(n)), A278346(n))`
-/

namespace A278345.P13784027203221346468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A175919 (A278346 n).toNat) (A278346 n)

end

end A278345.P13784027203221346468

/-! ## A278345.P7700878848050671143

`A030101(A278346(n))`
-/

namespace A278345.P7700878848050671143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A278346 n).toNat

end

end A278345.P7700878848050671143

/-! ## A278345.P18083761543843725510

`and(∑[A343844(n+1)], A277866(n))`
-/

namespace A278345.P18083761543843725510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A277866 n)

end

end A278345.P18083761543843725510

/-! ## A278345.P2284463022841340819

`A276966(n)+A000035(A092184(n))`
-/

namespace A278345.P2284463022841340819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276966 n + A000035 (A092184 n).toNat

end

end A278345.P2284463022841340819

/-!
# A278346: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

The programs for A278346, there is no canonical definition to state claims against.
-/

/-! ## A278346.P1269383363452154818

`and(A277867(n), A293480(A074323(n)))`
-/

namespace A278346.P1269383363452154818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277867 n) (A293480 (A074323 n).toNat)

end

end A278346.P1269383363452154818

/-! ## A278346.P1179325483088430977

`A277867(n)-A330316(A376830(n+3))`
-/

namespace A278346.P1179325483088430977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277867 n - A330316 (A376830 (n + 3)).toNat

end

end A278346.P1179325483088430977

/-! ## A278346.P16522807193595341056

`and(A004273(A343844(n+1)), A266850(n))`
-/

namespace A278346.P16522807193595341056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 (A343844 (n + 1)).toNat) (A266850 n)

end

end A278346.P16522807193595341056

/-! ## A278346.P1687676663706607447

`and(A004273(A343844(n+1)), A277867(n))`
-/

namespace A278346.P1687676663706607447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 (A343844 (n + 1)).toNat) (A277867 n)

end

end A278346.P1687676663706607447

/-!
# A278347: If n is even, a(n) = a(n/2 -1) - a(n/2 +1), and if n is odd, a(n) = a((n-1)/2) - a((n+1)/2), with a(1) = a(2) = 1.

The programs for A278347, the canonical program `A278347.P8924268599534833433` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278347 has offset 1).

The definition of A278347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278347.P8924268599534833433

`a(floor(n/2)-1)-a(∑[n%2])` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278347

/-- `a(floor(n/2)-1)-a(∑[n%2])` -/
def P8924268599534833433.Spec : Prop :=
  ∀ n, P8924268599534833433.a n = A278347 (n + 1)

theorem P8924268599534833433.correct : P8924268599534833433.Spec := by
  intro n
  simp only [A278347, Nat.add_sub_cancel]

end A278347

/-! ## A278347.P14504439607148868326

`a(floor(n/2)-1)-a(floor((n+1)/2))` with `a(0)=1, a(1)=1`
-/

namespace A278347.P14504439607148868326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (⌊(n : ℚ) / 2⌋ - 1).toNat - a ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A278347.P14504439607148868326

namespace A278347

/-- `a(floor(n/2)-1)-a(floor((n+1)/2))` -/
def P14504439607148868326.Spec : Prop :=
  ∀ n, P14504439607148868326.a n = A278347 (n + 1)

end A278347

/-! ## A278347.P5594829812962801407

`A083037(A343026(n+1)^A191392(n))`
-/

namespace A278347.P5594829812962801407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083037 (SequenceMachineLib.roundAway ((A343026 (n + 1) : ℚ) ^ (A191392 n : ℤ))).toNat

end

end A278347.P5594829812962801407

namespace A278347

/-- `A083037(A343026(n+1)^A191392(n))` -/
def P5594829812962801407.Spec : Prop :=
  ∀ n, P5594829812962801407.a n = A278347 (n + 1)

end A278347

/-! ## A278347.P1294358821772230290

`A083037(A289816(n)^A173117(n))`
-/

namespace A278347.P1294358821772230290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083037 (SequenceMachineLib.roundAway ((A289816 n : ℚ) ^ (A173117 n : ℤ))).toNat

end

end A278347.P1294358821772230290

namespace A278347

/-- `A083037(A289816(n)^A173117(n))` -/
def P1294358821772230290.Spec : Prop :=
  ∀ n, P1294358821772230290.a n = A278347 (n + 1)

end A278347

/-! ## A278347.P3756464605030955787

`A083037(A289816(n)^A191392(n))`
-/

namespace A278347.P3756464605030955787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083037 (SequenceMachineLib.roundAway ((A289816 n : ℚ) ^ (A191392 n : ℤ))).toNat

end

end A278347.P3756464605030955787

namespace A278347

/-- `A083037(A289816(n)^A191392(n))` -/
def P3756464605030955787.Spec : Prop :=
  ∀ n, P3756464605030955787.a n = A278347 (n + 1)

end A278347

/-!
# A278348: Number of 2 X 2 singular integer matrices with elements from {0,...,n} with no elements repeated.

The programs for A278348, there is no canonical definition to state claims against.
-/

/-! ## A278348.P2851348545872250062

`∑[8*A278648(n)]`
-/

namespace A278348.P2851348545872250062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A278648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278348.P2851348545872250062

/-! ## A278348.P2973998176812497734

`∑[A008590(A278648(n))]`
-/

namespace A278348.P2973998176812497734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A278648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278348.P2973998176812497734

/-! ## A278348.P10023159384908629831

`∑[A008586(A278648(n)+A278648(n))]`
-/

namespace A278348.P10023159384908629831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A278648 n + A278648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278348.P10023159384908629831

/-! ## A278348.P4787151202324351883

`A017089(∑[A278648(n)])-2`
-/

namespace A278348.P4787151202324351883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 2

end

end A278348.P4787151202324351883

/-! ## A278348.P5976687231898474642

`lcm(4, A005408(∑[A278648(n)]))-4`
-/

namespace A278348.P5976687231898474642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) : ℤ) - 4

end

end A278348.P5976687231898474642

/-! ## A278348.P17229035129687607550

`A047470(A005408(∑[A278648(n)]))`
-/

namespace A278348.P17229035129687607550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047470 (A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A278348.P17229035129687607550

/-! ## A278348.P8670825951043135096

`A005843(∑[A008586(A278648(n))])`
-/

namespace A278348.P8670825951043135096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A278648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278348.P8670825951043135096

/-! ## A278348.P263728377491078341

`A042948(∑[A008586(A278648(n))])`
-/

namespace A278348.P263728377491078341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A278648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278348.P263728377491078341

/-!
# A278349: a(n) is the smallest semiprime followed by gap (to the next semiprime) equal to n-th semiprime.

The programs for A278349, there is no canonical definition to state claims against.
-/

/-! ## A278349.P6537905898949138181

`A131109(A001358(n+1))`
-/

namespace A278349.P6537905898949138181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131109 (A001358 (n + 1)).toNat

end

end A278349.P6537905898949138181

/-! ## A278349.P8978065151410464765

`A131109(A176540(n+2))`
-/

namespace A278349.P8978065151410464765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131109 (A176540 (n + 2)).toNat

end

end A278349.P8978065151410464765

/-! ## A278349.P17676272327755230545

`A131109(lt[1, A105700(n)])`
-/

namespace A278349.P17676272327755230545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A278349.P17676272327755230545

/-! ## A278349.P7405032257175585098

`A131109(eq[2, A105700(n)])`
-/

namespace A278349.P7405032257175585098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278349.P7405032257175585098

/-! ## A278349.P9561658693790237623

`A131109(sqrt(A074985(n+1)))`
-/

namespace A278349.P9561658693790237623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131109 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A278349.P9561658693790237623

/-!
# A278350: Cototient of Fibonacci(n).

The programs for A278350, the canonical program `A278350.P8625627632809308465` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278350 has offset 1).

The definition of A278350 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278350.P17958320813880951890

`A000045(n+1)-A065449(n+1)`
-/

namespace A278350.P17958320813880951890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A065449 (n + 1)

end

end A278350.P17958320813880951890

namespace A278350

/-- `A000045(n+1)-A065449(n+1)` -/
def P17958320813880951890.Spec : Prop :=
  ∀ n, P17958320813880951890.a n = A278350 (n + 1)

end A278350

/-! ## A278350.P8625627632809308465

`A051953(A000045(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A278350

/-- `A051953(A000045(n+1))` -/
def P8625627632809308465.Spec : Prop :=
  ∀ n, P8625627632809308465.a n = A278350 (n + 1)

theorem P8625627632809308465.correct : P8625627632809308465.Spec := by
  intro n
  simp only [A278350, Nat.add_sub_cancel]

end A278350

/-! ## A278350.P5542021646745993469

`∑[A212804(n)-Δ[A065449(n)]]`
-/

namespace A278350.P5542021646745993469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278350.P5542021646745993469

namespace A278350

/-- `∑[A212804(n)-Δ[A065449(n)]]` -/
def P5542021646745993469.Spec : Prop :=
  ∀ n, P5542021646745993469.a n = A278350 (n + 1)

end A278350

/-! ## A278350.P3558846391409706715

`∑[A212804(n)]-A065449(n+1)`
-/

namespace A278350.P3558846391409706715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A065449 (n + 1)

end

end A278350.P3558846391409706715

namespace A278350

/-- `∑[A212804(n)]-A065449(n+1)` -/
def P3558846391409706715.Spec : Prop :=
  ∀ n, P3558846391409706715.a n = A278350 (n + 1)

end A278350

/-! ## A278350.P4785941350581986609

`A212804(n+2)-A065449(n+1)`
-/

namespace A278350.P4785941350581986609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - A065449 (n + 1)

end

end A278350.P4785941350581986609

namespace A278350

/-- `A212804(n+2)-A065449(n+1)` -/
def P4785941350581986609.Spec : Prop :=
  ∀ n, P4785941350581986609.a n = A278350 (n + 1)

end A278350

/-! ## A278350.P15497081306338957577

`A094441(∑[n])-A065449(n+1)`
-/

namespace A278350.P15497081306338957577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094441 (∑ j ∈ Finset.range (n + 1), f1 j) - A065449 (n + 1)

end

end A278350.P15497081306338957577

namespace A278350

/-- `A094441(∑[n])-A065449(n+1)` -/
def P15497081306338957577.Spec : Prop :=
  ∀ n, P15497081306338957577.a n = A278350 (n + 1)

end A278350

/-!
# A278351: Least number that is the start of a prime-semiprime gap of size n.

The programs for A278351, there is no canonical definition to state claims against.
-/

/-! ## A278351.P12611258511146548570

`A278404(n+1)-(n+1)`
-/

namespace A278351.P12611258511146548570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278404 (n + 1) - (n + 1 : ℤ)

end

end A278351.P12611258511146548570

/-! ## A278351.P11707049097163967365

`A278404(-xor(n, -1))-1-n`
-/

namespace A278351.P11707049097163967365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278404 (-Int.xor (n : ℤ) (-1)).toNat - 1 - (n : ℤ)

end

end A278351.P11707049097163967365

/-! ## A278351.P662784609628307417

`A278404(A008619(2*n))-1-n`
-/

namespace A278351.P662784609628307417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278404 (A008619 (2 * n)).toNat - 1 - (n : ℤ)

end

end A278351.P662784609628307417

/-! ## A278351.P16868655535591355909

`A023443(A278404(n+1)-n)`
-/

namespace A278351.P16868655535591355909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A278404 (n + 1) - (n : ℤ)).toNat

end

end A278351.P16868655535591355909

/-! ## A278351.P9311772839283287466

`A023443(A278404(n+1))+A001489(n)`
-/

namespace A278351.P9311772839283287466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A278404 (n + 1)).toNat + A001489 n

end

end A278351.P9311772839283287466

/-!
# A278354: Number of neighbors of each new term in a square spiral.

The programs for A278354, the canonical program `A278354.P2699865306502681676` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278354 has offset 1).

The definition of A278354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9802 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278354.P2699865306502681676

`A265359(A080037(n)-1)-A265359(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A278354

/-- `A265359(A080037(n)-1)-A265359(n+1)` -/
def P2699865306502681676.Spec : Prop :=
  ∀ n, P2699865306502681676.a n = A278354 (n + 1)

theorem P2699865306502681676.correct : P2699865306502681676.Spec := by
  intro n
  simp only [A278354, Nat.add_sub_cancel]

end A278354

/-! ## A278354.P580963681983108644

`A278317(Δ[n²]-round(sqrt(n)))`
-/

namespace A278354.P580963681983108644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278317 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

end

end A278354.P580963681983108644

namespace A278354

/-- `A278317(Δ[n²]-round(sqrt(n)))` -/
def P580963681983108644.Spec : Prop :=
  ∀ n, P580963681983108644.a n = A278354 (n + 1)

end A278354

/-! ## A278354.P13900934709638325894

`Δ[A028391(A016825(n)-A027709(n))]`
-/

namespace A278354.P13900934709638325894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A016825 n - A027709 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278354.P13900934709638325894

namespace A278354

/-- `Δ[A028391(A016825(n)-A027709(n))]` -/
def P13900934709638325894.Spec : Prop :=
  ∀ n, P13900934709638325894.a n = A278354 (n + 1)

end A278354

/-! ## A278354.P7563007254790359250

`A000005(A194832(2*n+3))%A019543(n)`
-/

namespace A278354.P7563007254790359250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A194832 (2 * n + 3)).toNat) (A019543 n)

end

end A278354.P7563007254790359250

namespace A278354

/-- `A000005(A194832(2*n+3))%A019543(n)` -/
def P7563007254790359250.Spec : Prop :=
  ∀ n, P7563007254790359250.a n = A278354 (n + 1)

end A278354

/-!
# A278355: a(n) = sum of the perimeters of the Ferrers boards of the partitions of n. Also, sum of the perimeters of the diagrams of the regions of the set of partitions of n.

The programs for A278355, there is no canonical definition to state claims against.
-/

/-! ## A278355.P299603849741771103

`2*A211978(n)`
-/

namespace A278355.P299603849741771103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211978 n

end

end A278355.P299603849741771103

/-! ## A278355.P13655805720152474492

`4*A006128(n)`
-/

namespace A278355.P13655805720152474492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006128 n

end

end A278355.P13655805720152474492

/-! ## A278355.P11408733075265654400

`∑[A278602(n)]`
-/

namespace A278355.P11408733075265654400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278355.P11408733075265654400

/-! ## A278355.P9615749964584706291

`4*(A225596(n)-n)`
-/

namespace A278355.P9615749964584706291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A225596 n - (n : ℤ))

end

end A278355.P9615749964584706291

/-! ## A278355.P13188052022490992623

`4*∑{d}[n, A085410(#)]`
-/

namespace A278355.P13188052022490992623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ d ∈ Nat.divisors (f1 n), A085410 d)

end

end A278355.P13188052022490992623

/-! ## A278355.P10075059103910921752

`2*(A210970(n)-∑[n])`
-/

namespace A278355.P10075059103910921752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A210970 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A278355.P10075059103910921752

/-! ## A278355.P5256533020458703673

`2*(A225610(n)-A133041(n))`
-/

namespace A278355.P5256533020458703673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A225610 n - A133041 n)

end

end A278355.P5256533020458703673

/-! ## A278355.P7097109877357985528

`4*(A093694(n)-A000041(n))`
-/

namespace A278355.P7097109877357985528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A093694 n - A000041 n)

end

end A278355.P7097109877357985528

/-! ## A278355.P3252818113540830541

`A006128(n)/(A033999(n)/2)²`
-/

namespace A278355.P3252818113540830541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006128 n : ℚ) / ((A033999 n : ℚ) / 2) ^ 2

end

end A278355.P3252818113540830541

/-! ## A278355.P17854766673536326765

`2*(∑[A233968(n+1)]-A233968(n+1))`
-/

namespace A278355.P17854766673536326765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A233968 (n + 1))

end

end A278355.P17854766673536326765

/-! ## A278355.P6072140935611657089

`A211978(A005843(n)/2)+A211978(n)`
-/

namespace A278355.P6072140935611657089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211978 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A211978 n

end

end A278355.P6072140935611657089

/-! ## A278355.P8893277514168437007

`A006128(n)+A211978(n)+A006128(n)`
-/

namespace A278355.P8893277514168437007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n + (A211978 n + A006128 n)

end

end A278355.P8893277514168437007

/-! ## A278355.P3572518996725215567

`A211978(A005843(n)-n)+A211978(n)`
-/

namespace A278355.P3572518996725215567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211978 (A005843 n - (n : ℤ)).toNat + A211978 n

end

end A278355.P3572518996725215567

/-! ## A278355.P9430540434499176714

`A006128(n)/(A000041(n)/A139582(n))²`
-/

namespace A278355.P9430540434499176714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006128 n : ℚ) / ((A000041 n : ℚ) / (A139582 n : ℚ)) ^ 2

end

end A278355.P9430540434499176714

/-! ## A278355.P514222673912864812

`4*(A093694(n)-A035363(2*n))`
-/

namespace A278355.P514222673912864812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A093694 n - A035363 (2 * n))

end

end A278355.P514222673912864812

/-! ## A278355.P2705677893498219432

`4*A210485(∑[n]+n)`
-/

namespace A278355.P2705677893498219432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A210485 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A278355.P2705677893498219432

/-! ## A278355.P7232959101116086695

`2*2*A210485(A000096(n))`
-/

namespace A278355.P7232959101116086695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A210485 (A000096 n).toNat)

end

end A278355.P7232959101116086695

/-! ## A278355.P4305605449679092971

`4*record[A210485(n)/A210535(n+1)]`
-/

namespace A278355.P4305605449679092971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210485 n : ℚ) / (A210535 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278355.P4305605449679092971

/-! ## A278355.P15208015110733626162

`2*2*A327618(A034856(n+1))`
-/

namespace A278355.P15208015110733626162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A327618 (A034856 (n + 1)).toNat)

end

end A278355.P15208015110733626162

/-!
# A278356: Number of n X n 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278356, there is no canonical definition to state claims against.
-/

/-! ## A278356.P17126671547750238690

`A278363(∑[4*n]+1)`
-/

namespace A278356.P17126671547750238690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278356.P17126671547750238690

/-! ## A278356.P17651960766215295640

`lcm(2, A278363(A001844(n)))`
-/

namespace A278356.P17651960766215295640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A278363 (A001844 n).toNat)

end

end A278356.P17651960766215295640

/-! ## A278356.P14835092121133496613

`record[A003982(n)*A278363(n+1)]`
-/

namespace A278356.P14835092121133496613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A278363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278356.P14835092121133496613

/-! ## A278356.P9810930217599271233

`A007318(∑[n])*A278363(A001844(n))`
-/

namespace A278356.P9810930217599271233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A278363 (A001844 n).toNat

end

end A278356.P9810930217599271233

/-! ## A278356.P4903643214775421647

`A278363(A001844(n))+A008683(12*n+8)`
-/

namespace A278356.P4903643214775421647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (A001844 n).toNat + A008683 (12 * n + 8)

end

end A278356.P4903643214775421647

/-!
# A278357: Number of n X 2 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278357, the canonical program `A278357.P14772144764163584461` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278357 has offset 1).

The definition of A278357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278357.P14772144764163584461

`∑[A278670(n+1)-A027480(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A278357

/-- `∑[A278670(n+1)-A027480(n)]` -/
def P14772144764163584461.Spec : Prop :=
  ∀ n, P14772144764163584461.a n = A278357 (n + 1)

theorem P14772144764163584461.correct : P14772144764163584461.Spec := by
  intro n
  simp only [A278357, Nat.add_sub_cancel]

end A278357

/-! ## A278357.P13211235880021217775

`∑[A278670(n+1)-∑[A045943(n)]]`
-/

namespace A278357.P13211235880021217775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278670 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278357.P13211235880021217775

namespace A278357

/-- `∑[A278670(n+1)-∑[A045943(n)]]` -/
def P13211235880021217775.Spec : Prop :=
  ∀ n, P13211235880021217775.a n = A278357 (n + 1)

end A278357

/-! ## A278357.P13024756965334350822

`∑[A278670(n+1)-3*A000292(n)]`
-/

namespace A278357.P13024756965334350822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278670 (n + 1) - 3 * A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278357.P13024756965334350822

namespace A278357

/-- `∑[A278670(n+1)-3*A000292(n)]` -/
def P13024756965334350822.Spec : Prop :=
  ∀ n, P13024756965334350822.a n = A278357 (n + 1)

end A278357

/-! ## A278357.P8352260236292483455

`∑[A278670(n+1)-n*A000217(n+1)]`
-/

namespace A278357.P8352260236292483455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278670 (n + 1) - (n : ℤ) * A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278357.P8352260236292483455

namespace A278357

/-- `∑[A278670(n+1)-n*A000217(n+1)]` -/
def P8352260236292483455.Spec : Prop :=
  ∀ n, P8352260236292483455.a n = A278357 (n + 1)

end A278357

/-! ## A278357.P6331054774719555795

`∑[A278670(n+1)]-A000217(A000096(n))`
-/

namespace A278357.P6331054774719555795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000217 (A000096 n).toNat

end

end A278357.P6331054774719555795

namespace A278357

/-- `∑[A278670(n+1)]-A000217(A000096(n))` -/
def P6331054774719555795.Spec : Prop :=
  ∀ n, P6331054774719555795.a n = A278357 (n + 1)

end A278357

/-!
# A278358: Number of n X 3 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278358, there is no canonical definition to state claims against.
-/

/-! ## A278358.P2904812140408485605

`A278363(∑[n+2]+4)`
-/

namespace A278358.P2904812140408485605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278358.P2904812140408485605

/-! ## A278358.P5972927475451733730

`A278363(A167614(n+1))+n%-1`
-/

namespace A278358.P5972927475451733730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (A167614 (n + 1)).toNat + Int.tmod (n : ℤ) (-1)

end

end A278358.P5972927475451733730

/-! ## A278358.P11434472245831120653

`A278363(A167614(n+1))%A017467(n)`
-/

namespace A278358.P11434472245831120653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278363 (A167614 (n + 1)).toNat) (A017467 n)

end

end A278358.P11434472245831120653

/-! ## A278358.P689037742368010707

`A278363(A167614(n+1))+A034432(n+1)`
-/

namespace A278358.P689037742368010707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (A167614 (n + 1)).toNat + A034432 (n + 1)

end

end A278358.P689037742368010707

/-! ## A278358.P3328576485702035111

`A278363(A055998(n)+6)%A251880(n+1)`
-/

namespace A278358.P3328576485702035111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278363 (A055998 n + 6).toNat) (A251880 (n + 1))

end

end A278358.P3328576485702035111

/-!
# A278359: Number of n X 4 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278359, there is no canonical definition to state claims against.
-/

/-! ## A278359.P2292115582104888185

`A278363(A141214(n)+7)`
-/

namespace A278359.P2292115582104888185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (A141214 n + 7).toNat

end

end A278359.P2292115582104888185

/-! ## A278359.P3445061964062891591

`A278363(A052905(n)+9)`
-/

namespace A278359.P3445061964062891591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (A052905 n + 9).toNat

end

end A278359.P3445061964062891591

/-! ## A278359.P27831366387772945

`A278363(A055999(n)+10)`
-/

namespace A278359.P27831366387772945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (A055999 n + 10).toNat

end

end A278359.P27831366387772945

/-! ## A278359.P15215737186358838151

`A278363(A167614(n+2)+1)`
-/

namespace A278359.P15215737186358838151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (A167614 (n + 2) + 1).toNat

end

end A278359.P15215737186358838151

/-! ## A278359.P7378006624386052096

`A278363(A000217(n+3)+4)`
-/

namespace A278359.P7378006624386052096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (A000217 (n + 3) + 4).toNat

end

end A278359.P7378006624386052096

/-!
# A278360: Number of nX5 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278360, there is no canonical definition to state claims against.
-/

/-! ## A278360.P16928882740399615243

`A278363(A155212(n)+13)`
-/

namespace A278360.P16928882740399615243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (A155212 n + 13).toNat

end

end A278360.P16928882740399615243

/-! ## A278360.P15772911702903866431

`A278363(A056000(n)+15)`
-/

namespace A278360.P15772911702903866431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (A056000 n + 15).toNat

end

end A278360.P15772911702903866431

/-! ## A278360.P11815865390677968178

`A278363(Δ[A264443(n)])`
-/

namespace A278360.P11815865390677968178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (f1 (n + 1) - f1 n).toNat

end

end A278360.P11815865390677968178

/-! ## A278360.P6628197710267384183

`A278363(A374005(n+1))`
-/

namespace A278360.P6628197710267384183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (A374005 (n + 1)).toNat

end

end A278360.P6628197710267384183

/-! ## A278360.P15815309687633829134

`A278363(A056115(n)+11)`
-/

namespace A278360.P15815309687633829134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (A056115 n + 11).toNat

end

end A278360.P15815309687633829134

/-!
# A278361: Number of nX6 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278361, there is no canonical definition to state claims against.
-/

/-! ## A278361.P10559848965663700945

`A278363(∑[n+5]+16)`
-/

namespace A278361.P10559848965663700945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A278361.P10559848965663700945

/-!
# A278362: Number of nX7 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278362, there is no canonical definition to state claims against.
-/

/-! ## A278362.P10558479050286116756

`A278363(eq[11, A066657(n)])`
-/

namespace A278362.P10558479050286116756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278362.P10558479050286116756

/-! ## A278362.P5242556191702407013

`A278363(Δ[n²]+∑[n+5]+16)`
-/

namespace A278362.P5242556191702407013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 16 : ℕ) : ℤ)).toNat

end

end A278362.P5242556191702407013

/-!
# A278364: A sequence showing denominators in ratios tending to the constant Pi/4 = 0.785398163397448... .

The programs for A278364, there is no canonical definition to state claims against.
-/

/-! ## A278364.P8998385728784552245

`lcm((2*n+1)*5^(2*n+1), a(n-1))` with `a(0)=5`
-/

namespace A278364.P8998385728784552245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.lcm ((2 * n + 1) * 5 ^ (2 * n + 1)) (a (n - 1))

end

end A278364.P8998385728784552245

/-! ## A278364.P12052085416958422097

`lcm(a(n-1), A072172(n))` with `a(0)=5`
-/

namespace A278364.P12052085416958422097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A072172 n)

end

end A278364.P12052085416958422097

/-!
# A278365: Number of n X 1 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278365, there is no canonical definition to state claims against.
-/

/-! ## A278365.P6114608484077204623

`A120987(A004280(n+1)+∑[n])`
-/

namespace A278365.P6114608484077204623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120987 (A004280 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A278365.P6114608484077204623

/-! ## A278365.P14205842564526737385

`A082601(A052905(n+11)+2-n)`
-/

namespace A278365.P14205842564526737385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A052905 (n + 11) + (2 - (n : ℤ))).toNat

end

end A278365.P14205842564526737385

/-! ## A278365.P15597978109409284204

`A071675(A052905(n+10)+n+7)`
-/

namespace A278365.P15597978109409284204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (A052905 (n + 10) + (n + 7 : ℤ)).toNat

end

end A278365.P15597978109409284204

/-! ## A278365.P6207433788430856099

`A120987(∑[A293754(n+1)])`
-/

namespace A278365.P6207433788430856099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120987 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278365.P6207433788430856099

/-!
# A278366: Number of nX2 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278366, there is no canonical definition to state claims against.
-/

/-! ## A278366.P14792644380485338281

`A278372(∑[n+1]+2)`
-/

namespace A278366.P14792644380485338281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278366.P14792644380485338281

/-!
# A278367: Number of nX3 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278367, there is no canonical definition to state claims against.
-/

/-! ## A278367.P16567996631819222787

`A278372(∑[n+2]+4)`
-/

namespace A278367.P16567996631819222787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278367.P16567996631819222787

/-! ## A278367.P5466861305553138452

`record[A278372(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A278367.P5466861305553138452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278367.P5466861305553138452

/-! ## A278367.P10220225278539273895

`A278372(A167614(n+1))+A185284(n)`
-/

namespace A278367.P10220225278539273895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (A167614 (n + 1)).toNat + A185284 n

end

end A278367.P10220225278539273895

/-! ## A278367.P12530427353062960818

`lcm(A033999(n), A278372(A167614(n+1)))`
-/

namespace A278367.P12530427353062960818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A278372 (A167614 (n + 1)).toNat)

end

end A278367.P12530427353062960818

/-! ## A278367.P14282441494443929827

`A278372(A167614(n+1))%A219712(n+1)`
-/

namespace A278367.P14282441494443929827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278372 (A167614 (n + 1)).toNat) (A219712 (n + 1))

end

end A278367.P14282441494443929827

/-!
# A278368: Number of nX4 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278368, there is no canonical definition to state claims against.
-/

/-! ## A278368.P4291144292879525682

`A278372(A141214(n)+7)`
-/

namespace A278368.P4291144292879525682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (A141214 n + 7).toNat

end

end A278368.P4291144292879525682

/-! ## A278368.P3234140863741660229

`A278372(A052905(n)+9)`
-/

namespace A278368.P3234140863741660229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (A052905 n + 9).toNat

end

end A278368.P3234140863741660229

/-! ## A278368.P6839679779382918307

`A278372(A055999(n)+10)`
-/

namespace A278368.P6839679779382918307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (A055999 n + 10).toNat

end

end A278368.P6839679779382918307

/-! ## A278368.P12947863727514591114

`A278372(A167614(n+2)+1)`
-/

namespace A278368.P12947863727514591114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (A167614 (n + 2) + 1).toNat

end

end A278368.P12947863727514591114

/-! ## A278368.P3737442658840733878

`A278372(A000217(n+3)+4)`
-/

namespace A278368.P3737442658840733878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (A000217 (n + 3) + 4).toNat

end

end A278368.P3737442658840733878

/-!
# A278369: Number of nX5 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278369, there is no canonical definition to state claims against.
-/

/-! ## A278369.P793046523865924552

`A278372(A167499(n+3))`
-/

namespace A278369.P793046523865924552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (A167499 (n + 3)).toNat

end

end A278369.P793046523865924552

/-! ## A278369.P299368275007376971

`A278372(A155212(n)+13)`
-/

namespace A278369.P299368275007376971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (A155212 n + 13).toNat

end

end A278369.P299368275007376971

/-! ## A278369.P15654157816573527958

`A278372(A056000(n)+15)`
-/

namespace A278369.P15654157816573527958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (A056000 n + 15).toNat

end

end A278369.P15654157816573527958

/-! ## A278369.P15080766024321890644

`A278372(A000217(n+4)+5)`
-/

namespace A278369.P15080766024321890644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (A000217 (n + 4) + 5).toNat

end

end A278369.P15080766024321890644

/-! ## A278369.P12615611293621996050

`A278372(eq[6, A131818(n+1)])`
-/

namespace A278369.P12615611293621996050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278369.P12615611293621996050

/-!
# A278370: Number of nX6 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278370, there is no canonical definition to state claims against.
-/

/-! ## A278370.P14233262024108338813

`A278372(A374007(n+1))`
-/

namespace A278370.P14233262024108338813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (A374007 (n + 1)).toNat

end

end A278370.P14233262024108338813

/-! ## A278370.P14591273105907557414

`A278372(A052905(n+3))`
-/

namespace A278370.P14591273105907557414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 (A052905 (n + 3)).toNat

end

end A278370.P14591273105907557414

/-!
# A278371: Number of nX7 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278371, there is no canonical definition to state claims against.
-/

/-! ## A278371.P9796441778898868034

`A278372(Δ[n²]+∑[n+5]+16)`
-/

namespace A278371.P9796441778898868034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278372 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 16 : ℕ) : ℤ)).toNat

end

end A278371.P9796441778898868034

/-!
# A278373: Numbers of the form sigma(k) + phi(k) - 2k.

The programs for A278373, there is no canonical definition to state claims against.
-/

/-! ## A278373.P14856150010566665904

`comp[A056996(n+1)]`
-/

namespace A278373.P14856150010566665904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A278373.P14856150010566665904

/-! ## A278373.P11600029643082304825

`comp[or(1, A056996(A028310(n)))]`
-/

namespace A278373.P11600029643082304825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A056996 (A028310 n).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A278373.P11600029643082304825

/-! ## A278373.P15538553469500563445

`eq[char[A056996(n+1)], A000007(n+1)]`
-/

namespace A278373.P15538553469500563445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056996 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A278373.P15538553469500563445

/-! ## A278373.P3844588386418575128

`eq[A029579(2*n)-(n+1), char[A056996(n+1)]]`
-/

namespace A278373.P3844588386418575128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * n) - (n + 1 : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056996 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A278373.P3844588386418575128

/-! ## A278373.P3096934742342029891

`A051709(A278374(n+1))`
-/

namespace A278373.P3096934742342029891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (A278374 (n + 1)).toNat

end

end A278373.P3096934742342029891

/-! ## A278373.P16237981988316070520

`eq[char[A056996(n+1)], A010051((n+2)²)]`
-/

namespace A278373.P16237981988316070520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056996 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A278373.P16237981988316070520

/-!
# A278374: a(n) = smallest k with sigma(k) + phi(k) - 2k = A278373(n).

The programs for A278374, there is no canonical definition to state claims against.
-/

/-! ## A278374.P12225210056322640886

`A085153(A293763(n+1))`
-/

namespace A278374.P12225210056322640886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085153 (A293763 (n + 1)).toNat

end

end A278374.P12225210056322640886

/-! ## A278374.P2232694496259287577

`A324592(A180470(n+2))`
-/

namespace A278374.P2232694496259287577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324592 (A180470 (n + 2)).toNat

end

end A278374.P2232694496259287577

/-!
# A278377: Number of 2 X 2 matrices with all elements in {0,1,...,n} and determinant n with no elements repeated.

The programs for A278377, there is no canonical definition to state claims against.
-/

/-! ## A278377.P4264762925839438120

`(A279063(n)-A279273(n))/2`
-/

namespace A278377.P4264762925839438120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279063 n - A279273 n : ℚ) / 2

end

end A278377.P4264762925839438120

/-! ## A278377.P15923683362190460730

`A006370(A279063(n)-A279273(n))`
-/

namespace A278377.P15923683362190460730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A279063 n - A279273 n).toNat

end

end A278377.P15923683362190460730

/-! ## A278377.P1848286322467179026

`A344834(A254365(n)-A143629(n))`
-/

namespace A278377.P1848286322467179026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344834 (A254365 n - A143629 n).toNat

end

end A278377.P1848286322467179026

/-! ## A278377.P15730825264595384504

`A118759(A095848(n+5)%A000079(n))`
-/

namespace A278377.P15730825264595384504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A095848 (n + 5)) (A000079 n)).toNat

end

end A278377.P15730825264595384504

/-! ## A278377.P5220058068934115972

`and(A029862(n), A139608(A029858(n+1)))`
-/

namespace A278377.P5220058068934115972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029862 n) (A139608 (A029858 (n + 1)).toNat)

end

end A278377.P5220058068934115972

/-!
# A278378: Number of n X n 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278378, there is no canonical definition to state claims against.
-/

/-! ## A278378.P4362371260662827525

`A278385(∑[4*n]+1)`
-/

namespace A278378.P4362371260662827525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278378.P4362371260662827525

/-! ## A278378.P17289786431296554828

`lcm(2, A278385(A001844(n)))`
-/

namespace A278378.P17289786431296554828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A278385 (A001844 n).toNat)

end

end A278378.P17289786431296554828

/-! ## A278378.P9323807078648475076

`A278385(A001844(n))+A025442(n)`
-/

namespace A278378.P9323807078648475076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A001844 n).toNat + A025442 n

end

end A278378.P9323807078648475076

/-! ## A278378.P10638069834817820337

`A321537(n)+A278385(A001844(n))`
-/

namespace A278378.P10638069834817820337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 n + A278385 (A001844 n).toNat

end

end A278378.P10638069834817820337

/-!
# A278379: Number of n X 2 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278379, there is no canonical definition to state claims against.
-/

/-! ## A278379.P11753853499251902359

`A278385(∑[n+1]+2)`
-/

namespace A278379.P11753853499251902359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278379.P11753853499251902359

/-! ## A278379.P8044185072406325084

`A141605(n+1)*A278385(A022856(n+5))`
-/

namespace A278379.P8044185072406325084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141605 (n + 1) * A278385 (A022856 (n + 5)).toNat

end

end A278379.P8044185072406325084

/-! ## A278379.P11741195227558290745

`A278385(A022856(n+5))%A179792(n+1)`
-/

namespace A278379.P11741195227558290745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278385 (A022856 (n + 5)).toNat) (A179792 (n + 1))

end

end A278379.P11741195227558290745

/-! ## A278379.P16372050296972634818

`A306637(3*(n+1))+A278385(A022856(n+5))`
-/

namespace A278379.P16372050296972634818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306637 (3 * (n + 1)) + A278385 (A022856 (n + 5)).toNat

end

end A278379.P16372050296972634818

/-! ## A278379.P10908192322718904768

`A261143(3*(n+1))*A278385(A022856(n+5))`
-/

namespace A278379.P10908192322718904768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (3 * (n + 1)) * A278385 (A022856 (n + 5)).toNat

end

end A278379.P10908192322718904768

/-!
# A278380: Number of nX3 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278380, there is no canonical definition to state claims against.
-/

/-! ## A278380.P1532027900044095586

`A278385(∑[n+2]+4)`
-/

namespace A278380.P1532027900044095586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278380.P1532027900044095586

/-! ## A278380.P16778105204351529763

`A278385(A167614(n+1))+A061858(n)`
-/

namespace A278380.P16778105204351529763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A167614 (n + 1)).toNat + A061858 n

end

end A278380.P16778105204351529763

/-! ## A278380.P7628779361374773083

`A278385(A167614(n+1))+A185284(n)`
-/

namespace A278380.P7628779361374773083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A167614 (n + 1)).toNat + A185284 n

end

end A278380.P7628779361374773083

/-! ## A278380.P9068651263588440240

`lcm(A087960(n), A278385(A167614(n+1)))`
-/

namespace A278380.P9068651263588440240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A278385 (A167614 (n + 1)).toNat)

end

end A278380.P9068651263588440240

/-! ## A278380.P8428956795930922004

`or(A098108(n), A278385(A167614(n+1)))`
-/

namespace A278380.P8428956795930922004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098108 n) (A278385 (A167614 (n + 1)).toNat)

end

end A278380.P8428956795930922004

/-!
# A278381: Number of nX4 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278381, there is no canonical definition to state claims against.
-/

/-! ## A278381.P11418959746900543783

`A278385(A374004(n+1))`
-/

namespace A278381.P11418959746900543783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A374004 (n + 1)).toNat

end

end A278381.P11418959746900543783

/-! ## A278381.P5911329362174341296

`A278385(A141214(n)+7)`
-/

namespace A278381.P5911329362174341296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A141214 n + 7).toNat

end

end A278381.P5911329362174341296

/-! ## A278381.P4142178074939720519

`A278385(A167614(n+2)+1)`
-/

namespace A278381.P4142178074939720519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A167614 (n + 2) + 1).toNat

end

end A278381.P4142178074939720519

/-! ## A278381.P10784367275367455131

`A278385(A166136(n+2)-2)`
-/

namespace A278381.P10784367275367455131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A166136 (n + 2) - 2).toNat

end

end A278381.P10784367275367455131

/-! ## A278381.P4250255463482689342

`A278385(A055998(n+1)+7)`
-/

namespace A278381.P4250255463482689342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A055998 (n + 1) + 7).toNat

end

end A278381.P4250255463482689342

/-!
# A278382: Number of nX5 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278382, there is no canonical definition to state claims against.
-/

/-! ## A278382.P3248577869776952848

`A278385(A374005(n+1))`
-/

namespace A278382.P3248577869776952848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A374005 (n + 1)).toNat

end

end A278382.P3248577869776952848

/-! ## A278382.P11258749968571890737

`A278385(A155212(n)+13)`
-/

namespace A278382.P11258749968571890737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A155212 n + 13).toNat

end

end A278382.P11258749968571890737

/-! ## A278382.P226831470577548614

`A278385(A056000(n)+15)`
-/

namespace A278382.P226831470577548614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A056000 n + 15).toNat

end

end A278382.P226831470577548614

/-! ## A278382.P15787858555651689071

`A278385(A166136(n+3)-1)`
-/

namespace A278382.P15787858555651689071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A166136 (n + 3) - 1).toNat

end

end A278382.P15787858555651689071

/-! ## A278382.P1955351156655265532

`A278385(A055998(n+2)+8)`
-/

namespace A278382.P1955351156655265532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A055998 (n + 2) + 8).toNat

end

end A278382.P1955351156655265532

/-!
# A278383: Number of nX6 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278383, there is no canonical definition to state claims against.
-/

/-! ## A278383.P11961519559105474905

`A278385(A374007(n+1))`
-/

namespace A278383.P11961519559105474905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A374007 (n + 1)).toNat

end

end A278383.P11961519559105474905

/-! ## A278383.P12457723663674999850

`A278385(A166136(n+4))`
-/

namespace A278383.P12457723663674999850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A166136 (n + 4)).toNat

end

end A278383.P12457723663674999850

/-! ## A278383.P4211285462802660114

`A278385(A056115(n)+21)`
-/

namespace A278383.P4211285462802660114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A056115 n + 21).toNat

end

end A278383.P4211285462802660114

/-! ## A278383.P4576846255656200914

`A278385(A167499(n+4)+1)`
-/

namespace A278383.P4576846255656200914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A167499 (n + 4) + 1).toNat

end

end A278383.P4576846255656200914

/-! ## A278383.P10540620197156831142

`A278385(A246172(n+1)+20)`
-/

namespace A278383.P10540620197156831142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A246172 (n + 1) + 20).toNat

end

end A278383.P10540620197156831142

/-!
# A278384: Number of nX7 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278384, there is no canonical definition to state claims against.
-/

/-! ## A278384.P4753376208129168966

`A278385(A374008(n+1))`
-/

namespace A278384.P4753376208129168966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A374008 (n + 1)).toNat

end

end A278384.P4753376208129168966

/-! ## A278384.P4816864355423882205

`A278385(eq[8, A131818(n+1)])`
-/

namespace A278384.P4816864355423882205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278384.P4816864355423882205

/-! ## A278384.P14394169356668041312

`A278385(A167499(n+5)+2)+A112802(n+1)`
-/

namespace A278384.P14394169356668041312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 (A167499 (n + 5) + 2).toNat + A112802 (n + 1)

end

end A278384.P14394169356668041312

/-! ## A278384.P3738104458858960722

`A278385(Δ[n²]+∑[n+5]+16)`
-/

namespace A278384.P3738104458858960722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278385 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 16 : ℕ) : ℤ)).toNat

end

end A278384.P3738104458858960722

/-!
# A278385: T(n,k)=Number of nXk 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly three mistakes.

The programs for A278385, there is no canonical definition to state claims against.
-/

/-! ## A278385.P3721957979223023575

`(24*n)%A327482(floor(cosh(log((n+1)²))))`
-/

namespace A278385.P3721957979223023575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (24 * n : ℤ) (A327482 ⌊Real.cosh (Real.log ((n + 1) ^ 2 : ℝ))⌋.toNat)

end

end A278385.P3721957979223023575

/-! ## A278385.P5651473703151453428

`A051127(A022179(n))`
-/

namespace A278385.P5651473703151453428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051127 (A022179 n).toNat

end

end A278385.P5651473703151453428

/-! ## A278385.P9048720323793022888

`A058305(A022181(n))`
-/

namespace A278385.P9048720323793022888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A022181 n).toNat

end

end A278385.P9048720323793022888

/-! ## A278385.P447133510309343816

`A124938(A022166(n))`
-/

namespace A278385.P447133510309343816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124938 (A022166 n).toNat

end

end A278385.P447133510309343816

/-! ## A278385.P5126819314900380220

`A124938(A046802(n))`
-/

namespace A278385.P5126819314900380220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124938 (A046802 n).toNat

end

end A278385.P5126819314900380220

/-!
# A278387: Number of mora in Japanese name of n in Old Japanese.

The programs for A278387, there is no canonical definition to state claims against.
-/

/-! ## A278387.P9619093593282179050

`A002024(A167677(n))+char[8]`
-/

namespace A278387.P9619093593282179050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A167677 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A278387.P9619093593282179050

/-! ## A278387.P3365142169160090066

`A198318(n)+A002024(A167677(n))`
-/

namespace A278387.P3365142169160090066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 n + A002024 (A167677 n).toNat

end

end A278387.P3365142169160090066

/-! ## A278387.P662068055938902722

`A002024(lcm(A167677(n), A253641(n)))`
-/

namespace A278387.P662068055938902722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lcm (A167677 n) (A253641 n))

end

end A278387.P662068055938902722

/-! ## A278387.P10805241766373042154

`or(A002024(A167677(n)), A022003(n))`
-/

namespace A278387.P10805241766373042154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002024 (A167677 n).toNat) (A022003 n)

end

end A278387.P10805241766373042154

/-! ## A278387.P4691951404357483642

`or(A002024(A167677(n)), A025432(n))`
-/

namespace A278387.P4691951404357483642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002024 (A167677 n).toNat) (A025432 n)

end

end A278387.P4691951404357483642

/-!
# A278390: Triangle T(n,k) read by rows: the number of independent sets of size k in the 132 core of size n.

The programs for A278390, there is no canonical definition to state claims against.
-/

/-! ## A278390.P18226196748299973544

`A194975(A138464(n+1))`
-/

namespace A278390.P18226196748299973544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194975 (A138464 (n + 1)).toNat

end

end A278390.P18226196748299973544

/-! ## A278390.P11262423556682486212

`A219200(A123175(∑[n]))+A039798(n)`
-/

namespace A278390.P11262423556682486212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219200 ((A123175 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 41) + A039798 n

end

end A278390.P11262423556682486212

/-! ## A278390.P3276257964389651728

`A212619(A340266(n+1))+A039798(n)`
-/

namespace A278390.P3276257964389651728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A340266 (n + 1)).toNat + A039798 n

end

end A278390.P3276257964389651728

/-! ## A278390.P17812930293619839630

`A138464(n+1)-A259100(A304320(n+1))`
-/

namespace A278390.P17812930293619839630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (n + 1) - A259100 (A304320 (n + 1)).toNat

end

end A278390.P17812930293619839630

/-! ## A278390.P8208298094088833271

`A212619(A340266(n+1))+A039797(A061579(n))`
-/

namespace A278390.P8208298094088833271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A340266 (n + 1)).toNat + A039797 (A061579 n).toNat

end

end A278390.P8208298094088833271

/-!
# A278391: Number of positive meanders (walks starting at the origin and ending at any altitude > 0 that never touch or go below the x-axis in between) with n steps from {-2,-1,0,1,2}.

The programs for A278391, there is no canonical definition to state claims against.
-/

/-! ## A278391.P11515267166244655049

`A007067(A151096(n))-A151087(n)`
-/

namespace A278391.P11515267166244655049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A151096 n).toNat - A151087 n

end

end A278391.P11515267166244655049

/-! ## A278391.P13905121771184729298

`A072748(A268409(n))`
-/

namespace A278391.P13905121771184729298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072748 (A268409 n).toNat

end

end A278391.P13905121771184729298

/-!
# A278392: Number of positive meanders (walks starting at the origin and ending at any altitude > 0 that never touch or go below the x-axis in between) with n steps from {-3,-2,-1,0,1,2,3}.

The programs for A278392, there is no canonical definition to state claims against.
-/

/-! ## A278392.P11183499661787647516

`A360617(n+4)+A005843(A346503(3*n+2))`
-/

namespace A278392.P11183499661787647516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360617 (n + 4) + A005843 (A346503 (3 * n + 2)).toNat

end

end A278392.P11183499661787647516

/-! ## A278392.P2683683110936589313

`A005843(A346503(3*n+2))+A001221(3*n+2)`
-/

namespace A278392.P2683683110936589313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A346503 (3 * n + 2)).toNat + A001221 (3 * n + 2)

end

end A278392.P2683683110936589313

/-!
# A278393: Number of positive meanders (walks starting at the origin and ending at any altitude > 0 that never touch or go below the x-axis in between) with n steps from {-4,-3,-2,-1,0,1,2,3,4}.

The programs for A278393, there is no canonical definition to state claims against.
-/

/-! ## A278393.P71927818624689784

`A084500(10^n)-A303775(n)`
-/

namespace A278393.P71927818624689784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084500 (10 ^ n) - A303775 n

end

end A278393.P71927818624689784

/-!
# A278394: Number of positive meanders (walks starting at the origin and ending at any altitude > 0 that never touch or go below the x-axis in between) with n steps from {-2,-1,1,2}.

The programs for A278394, there is no canonical definition to state claims against.
-/

/-! ## A278394.P3812481585650060137

`A047002(n)+record[A138364(n)]`
-/

namespace A278394.P3812481585650060137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047002 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278394.P3812481585650060137

/-! ## A278394.P687777459715001507

`A245667(A000124(n))+A047002(n)`
-/

namespace A278394.P687777459715001507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (A000124 n).toNat + A047002 n

end

end A278394.P687777459715001507

/-! ## A278394.P7271664336010911232

`A047002(n)+A004526(A000984(n))`
-/

namespace A278394.P7271664336010911232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047002 n + A004526 (A000984 n).toNat

end

end A278394.P7271664336010911232

/-! ## A278394.P2490719593431838153

`A047002(n)+A004526(A001405(2*n))`
-/

namespace A278394.P2490719593431838153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047002 n + A004526 (A001405 (2 * n)).toNat

end

end A278394.P2490719593431838153

/-!
# A278395: Number of positive meanders (walks starting at the origin and ending at any altitude > 0 that never touch or go below the x-axis in between) with n steps from {-3,-2,-1,1,2,3}.

The programs for A278395, there is no canonical definition to state claims against.
-/

/-! ## A278395.P14564292907561534277

`A258798(n)-A240210(A009211(n))`
-/

namespace A278395.P14564292907561534277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258798 n - A240210 (A009211 n).toNat

end

end A278395.P14564292907561534277

/-! ## A278395.P10805167304536334835

`A081598(A081671(n))-A217248(n+1)`
-/

namespace A278395.P10805167304536334835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081598 (A081671 n).toNat - A217248 (n + 1)

end

end A278395.P10805167304536334835

/-!
# A278396: Number of positive meanders (walks starting at the origin and ending at any altitude > 0 that never touch or go below the x-axis in between) with n steps from {-4,-3,-2,-1,1,2,3,4}.

The programs for A278396, there is no canonical definition to state claims against.
-/

/-! ## A278396.P5668663424259419462

`ceil(sqrt(A141804(7^n)))`
-/

namespace A278396.P5668663424259419462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A141804 (7 ^ n) : ℝ)⌉

end

end A278396.P5668663424259419462

/-!
# A278398: Number of meanders (walks starting at the origin and ending at any altitude >= 0 that may touch but never go below the x-axis) with n steps from {-3,-2,-1,1,2,3}.

The programs for A278398, there is no canonical definition to state claims against.
-/

/-! ## A278398.P18028190816402406903

`A004526(A149288(n)+A081569(n))`
-/

namespace A278398.P18028190816402406903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149288 n + A081569 n).toNat

end

end A278398.P18028190816402406903

/-!
# A278399: G.f.: Re((i; x)_inf), where (a; q)_inf is the q-Pochhammer symbol, i = sqrt(-1).

The programs for A278399, there is no canonical definition to state claims against.
-/

/-! ## A278399.P9184761923366123457

`A292043(n)+A292042(n)`
-/

namespace A278399.P9184761923366123457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292043 n + A292042 n

end

end A278399.P9184761923366123457

/-! ## A278399.P465110289961807446

`A292042(n)-A292052(n)`
-/

namespace A278399.P465110289961807446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292042 n - A292052 n

end

end A278399.P465110289961807446

/-! ## A278399.P6642627735205988919

`A278400(n)+2*A292042(n)`
-/

namespace A278399.P6642627735205988919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278400 n + 2 * A292042 n

end

end A278399.P6642627735205988919

/-! ## A278399.P16220083450886172219

`2*A292043(n)-A278400(n)`
-/

namespace A278399.P16220083450886172219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292043 n - A278400 n

end

end A278399.P16220083450886172219

/-! ## A278399.P9719688811081730217

`A292043(n)-(A292052(n)+A278400(n))`
-/

namespace A278399.P9719688811081730217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292043 n - (A292052 n + A278400 n)

end

end A278399.P9719688811081730217

