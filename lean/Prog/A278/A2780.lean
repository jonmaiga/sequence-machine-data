import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A278000: Number of n X 2 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278000, the canonical program `A278000.P10031538546484995220` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278000 has offset 1).

The definition of A278000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278000.P10031538546484995220

`6*a(n-1)+6*a(n-2)+3*a(n-3)-6*a(n-4)` with `a(0)=0, a(1)=9, a(2)=52, a(3)=364`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278000

/-- `6*a(n-1)+6*a(n-2)+3*a(n-3)-6*a(n-4)` -/
def P10031538546484995220.Spec : Prop :=
  ∀ n, P10031538546484995220.a n = A278000 (n + 1)

theorem P10031538546484995220.correct : P10031538546484995220.Spec := by
  intro n
  simp only [A278000, Nat.add_sub_cancel]

end A278000

/-! ## A278000.P10162530791012865996

`A278006(∑[n+1]+2)`
-/

namespace A278000.P10162530791012865996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278000.P10162530791012865996

namespace A278000

/-- `A278006(∑[n+1]+2)` -/
def P10162530791012865996.Spec : Prop :=
  ∀ n, P10162530791012865996.a n = A278000 (n + 1)

end A278000

/-! ## A278000.P16649543672347843277

`record[A278006(n+2)/A174109(n)]`
-/

namespace A278000.P16649543672347843277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278006 (n + 2) : ℚ) / (A174109 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278000.P16649543672347843277

namespace A278000

/-- `record[A278006(n+2)/A174109(n)]` -/
def P16649543672347843277.Spec : Prop :=
  ∀ n, P16649543672347843277.a n = (A278000 (n + 1) : ℚ)

end A278000

/-! ## A278000.P4005493363504497818

`record[A278006(Δ[A003453(n+5)]+2)]`
-/

namespace A278000.P4005493363504497818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278000.P4005493363504497818

namespace A278000

/-- `record[A278006(Δ[A003453(n+5)]+2)]` -/
def P4005493363504497818.Spec : Prop :=
  ∀ n, P4005493363504497818.a n = A278000 (n + 1)

end A278000

/-! ## A278000.P3224323083663743967

`record[Δ[A278006(n+1)]-A278006(n+1)²]`
-/

namespace A278000.P3224323083663743967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A278006 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278000.P3224323083663743967

namespace A278000

/-- `record[Δ[A278006(n+1)]-A278006(n+1)²]` -/
def P3224323083663743967.Spec : Prop :=
  ∀ n, P3224323083663743967.a n = A278000 (n + 1)

end A278000

/-!
# A278001: Number of nX3 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278001, there is no canonical definition to state claims against.
-/

/-! ## A278001.P16998553917512985521

`A278006(∑[n+2]+4)`
-/

namespace A278001.P16998553917512985521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278001.P16998553917512985521

/-! ## A278001.P1548003084633641012

`lcm(A011602(n), A278006(A167614(n+1)))`
-/

namespace A278001.P1548003084633641012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011602 n) (A278006 (A167614 (n + 1)).toNat)

end

end A278001.P1548003084633641012

/-! ## A278001.P17469309563092366475

`A326291(n+1)+A278006(A167614(n+1))`
-/

namespace A278001.P17469309563092366475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A278006 (A167614 (n + 1)).toNat

end

end A278001.P17469309563092366475

/-! ## A278001.P2353733761411746844

`A278006(A167614(n+1))%A237478(n+1)`
-/

namespace A278001.P2353733761411746844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278006 (A167614 (n + 1)).toNat) (A237478 (n + 1))

end

end A278001.P2353733761411746844

/-! ## A278001.P8010101181244523883

`record[A185018(n)*A278006(n+1)]`
-/

namespace A278001.P8010101181244523883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A278006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278001.P8010101181244523883

/-!
# A278002: Number of nX4 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278002, there is no canonical definition to state claims against.
-/

/-! ## A278002.P9275274066283518140

`A278006(A374004(n+1))`
-/

namespace A278002.P9275274066283518140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (A374004 (n + 1)).toNat

end

end A278002.P9275274066283518140

/-! ## A278002.P13877037058756770527

`A278006(A141214(n)+7)`
-/

namespace A278002.P13877037058756770527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (A141214 n + 7).toNat

end

end A278002.P13877037058756770527

/-! ## A278002.P11033106676143844331

`A278006(A052905(n)+9)`
-/

namespace A278002.P11033106676143844331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (A052905 n + 9).toNat

end

end A278002.P11033106676143844331

/-! ## A278002.P18379038672149065942

`A278006(A055999(n)+10)`
-/

namespace A278002.P18379038672149065942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (A055999 n + 10).toNat

end

end A278002.P18379038672149065942

/-! ## A278002.P14300398532343866178

`A278006(A167614(n+2)+1)`
-/

namespace A278002.P14300398532343866178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (A167614 (n + 2) + 1).toNat

end

end A278002.P14300398532343866178

/-!
# A278003: Number of nX5 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278003, there is no canonical definition to state claims against.
-/

/-! ## A278003.P3517183629130825024

`A278006(A374005(n+1))`
-/

namespace A278003.P3517183629130825024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (A374005 (n + 1)).toNat

end

end A278003.P3517183629130825024

/-! ## A278003.P7737284152259168569

`A278006(A167499(n+3))`
-/

namespace A278003.P7737284152259168569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (A167499 (n + 3)).toNat

end

end A278003.P7737284152259168569

/-! ## A278003.P9609079267724700129

`A278006(A056000(n)+15)`
-/

namespace A278003.P9609079267724700129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (A056000 n + 15).toNat

end

end A278003.P9609079267724700129

/-! ## A278003.P8882640917414754452

`A278006(eq[6, A131818(n+1)])`
-/

namespace A278003.P8882640917414754452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278003.P8882640917414754452

/-! ## A278003.P10559966915705344399

`A278006(Δ[A264443(n)])`
-/

namespace A278003.P10559966915705344399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (f1 (n + 1) - f1 n).toNat

end

end A278003.P10559966915705344399

/-!
# A278004: Number of nX6 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278004, there is no canonical definition to state claims against.
-/

/-! ## A278004.P11545158767025115453

`A278006(A374007(n+1))`
-/

namespace A278004.P11545158767025115453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (A374007 (n + 1)).toNat

end

end A278004.P11545158767025115453

/-! ## A278004.P314551044690781141

`A278006(eq[7, A131818(n+1)])`
-/

namespace A278004.P314551044690781141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278004.P314551044690781141

/-! ## A278004.P14091012044230378357

`A278006(eq[5, A193592(n)])`
-/

namespace A278004.P14091012044230378357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278004.P14091012044230378357

/-! ## A278004.P3946463758676816999

`A278006(eq[6, A200370(n+1)])`
-/

namespace A278004.P3946463758676816999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278004.P3946463758676816999

/-! ## A278004.P13163483660533824037

`A278006(Δ[A264443(n+1)]-1)`
-/

namespace A278004.P13163483660533824037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (f1 (n + 1) - f1 n - 1).toNat

end

end A278004.P13163483660533824037

/-!
# A278005: Number of nX7 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278005, there is no canonical definition to state claims against.
-/

/-! ## A278005.P16340857355300772276

`A278006(A374008(n+1))`
-/

namespace A278005.P16340857355300772276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (A374008 (n + 1)).toNat

end

end A278005.P16340857355300772276

/-! ## A278005.P211951586964668869

`A278006(eq[8, A131818(n+1)])`
-/

namespace A278005.P211951586964668869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278005.P211951586964668869

/-! ## A278005.P14449580712608008346

`A278006(eq[6, A193592(n)])`
-/

namespace A278005.P14449580712608008346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278005.P14449580712608008346

/-! ## A278005.P10324944194511153487

`A278006(Δ[A026054(n+4)])`
-/

namespace A278005.P10324944194511153487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (f1 (n + 1) - f1 n).toNat

end

end A278005.P10324944194511153487

/-! ## A278005.P1171723137903787501

`A278006(eq[7, A200370(n+1)])`
-/

namespace A278005.P1171723137903787501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278005.P1171723137903787501

/-!
# A278006: T(n,k)=Number of nXk 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278006, there is no canonical definition to state claims against.
-/

/-! ## A278006.P11253629483850918462

`A023820(∑{d}[A015123(n), #])`
-/

namespace A278006.P11253629483850918462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023820 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A278006.P11253629483850918462

/-! ## A278006.P57611098637530109

`(A139561(n)+1)%A022173(n)`
-/

namespace A278006.P57611098637530109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139561 n + 1) (A022173 n)

end

end A278006.P57611098637530109

/-! ## A278006.P1851743539128885203

`p?[A157152(n)]²%A157278(n)`
-/

namespace A278006.P1851743539128885203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) (A157278 n)

end

end A278006.P1851743539128885203

/-! ## A278006.P14140132418592160830

`A157209(n)-A045778(A265802(n))`
-/

namespace A278006.P14140132418592160830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157209 n - A045778 (A265802 n).toNat

end

end A278006.P14140132418592160830

/-!
# A278008: Number of n X 2 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278008, the canonical program `A278008.P8506601232245184458` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278008 has offset 1).

The definition of A278008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278008.P17604421638358175142

`ogf(6x/(1-5x-8x^2))`
-/

namespace A278008.P17604421638358175142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -5, -8] n

end

end A278008.P17604421638358175142

namespace A278008

/-- `ogf(6x/(1-5x-8x^2))` -/
def P17604421638358175142.Spec : Prop :=
  ∀ n, P17604421638358175142.a n = A278008 (n + 1)

end A278008

/-! ## A278008.P8506601232245184458

`5*a(n-1)+8*a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278008

/-- `5*a(n-1)+8*a(n-2)` -/
def P8506601232245184458.Spec : Prop :=
  ∀ n, (P8506601232245184458.a n : ℤ) = A278008 (n + 1)

theorem P8506601232245184458.correct : P8506601232245184458.Spec := by
  intro n
  simp only [A278008, Nat.add_sub_cancel]

end A278008

/-! ## A278008.P1900322592772416290

`6*A015544(n)`
-/

namespace A278008.P1900322592772416290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A015544 n

end

end A278008.P1900322592772416290

namespace A278008

/-- `6*A015544(n)` -/
def P1900322592772416290.Spec : Prop :=
  ∀ n, P1900322592772416290.a n = A278008 (n + 1)

end A278008

/-! ## A278008.P13647523917230130007

`3*(A180031(n)-A180030(n))`
-/

namespace A278008.P13647523917230130007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A180031 n - A180030 n)

end

end A278008.P13647523917230130007

namespace A278008

/-- `3*(A180031(n)-A180030(n))` -/
def P13647523917230130007.Spec : Prop :=
  ∀ n, P13647523917230130007.a n = A278008 (n + 1)

end A278008

/-! ## A278008.P6180472194729258649

`6*A083861(eq[15, A004736(n+1)])`
-/

namespace A278008.P6180472194729258649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A083861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278008.P6180472194729258649

namespace A278008

/-- `6*A083861(eq[15, A004736(n+1)])` -/
def P6180472194729258649.Spec : Prop :=
  ∀ n, P6180472194729258649.a n = A278008 (n + 1)

end A278008

/-! ## A278008.P15554401120234811602

`6*A083861(A000124(n+14)+n-1)`
-/

namespace A278008.P15554401120234811602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A083861 (A000124 (n + 14) + ((n : ℤ) - 1)).toNat

end

end A278008.P15554401120234811602

namespace A278008

/-- `6*A083861(A000124(n+14)+n-1)` -/
def P15554401120234811602.Spec : Prop :=
  ∀ n, P15554401120234811602.a n = A278008 (n + 1)

end A278008

/-!
# A278009: Number of nX3 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278009, there is no canonical definition to state claims against.
-/

/-! ## A278009.P6326891351099631091

`A278014(∑[n+3]+1)`
-/

namespace A278009.P6326891351099631091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278009.P6326891351099631091

/-! ## A278009.P8030902043798617327

`record[A278014(A198464(n+1))]`
-/

namespace A278009.P8030902043798617327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278009.P8030902043798617327

/-! ## A278009.P3900389346143410014

`record[A278014(gcd(n, A002262(n+2)))]`
-/

namespace A278009.P3900389346143410014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (Int.gcd (n : ℤ) (A002262 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278009.P3900389346143410014

/-! ## A278009.P8202836081305037023

`record[char[A141214(n)]*A278014(n+1)]`
-/

namespace A278009.P8202836081305037023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A278014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278009.P8202836081305037023

/-! ## A278009.P12438702935554388872

`A278014(A141214(n)+1)-A326683(n)-A326684(n)`
-/

namespace A278009.P12438702935554388872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A141214 n + 1).toNat - A326683 n - A326684 n

end

end A278009.P12438702935554388872

/-!
# A278010: Number of nX4 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278010, there is no canonical definition to state claims against.
-/

/-! ## A278010.P11888037220010218912

`A278014(A141214(n+1))`
-/

namespace A278010.P11888037220010218912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A141214 (n + 1)).toNat

end

end A278010.P11888037220010218912

/-! ## A278010.P7435732012573405349

`A278014(A056000(n)+7)`
-/

namespace A278010.P7435732012573405349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A056000 n + 7).toNat

end

end A278010.P7435732012573405349

/-! ## A278010.P9332179605178246755

`A278014(eq[3, A193592(n)])`
-/

namespace A278010.P9332179605178246755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278010.P9332179605178246755

/-! ## A278010.P16231310881056726516

`A278014(eq[5, A103923(n)])`
-/

namespace A278010.P16231310881056726516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278010.P16231310881056726516

/-! ## A278010.P2436601516974946240

`A278014(A052905(n+1)+2)`
-/

namespace A278010.P2436601516974946240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A052905 (n + 1) + 2).toNat

end

end A278010.P2436601516974946240

/-!
# A278011: Number of nX5 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278011, there is no canonical definition to state claims against.
-/

/-! ## A278011.P3532354674163645125

`A278014(eq[4, A193592(n)])`
-/

namespace A278011.P3532354674163645125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278011.P3532354674163645125

/-! ## A278011.P8425294002846164065

`A278014(A000217(n+5)-4)`
-/

namespace A278011.P8425294002846164065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A000217 (n + 5) - 4).toNat

end

end A278011.P8425294002846164065

/-! ## A278011.P2231381657396266802

`A278014(eq[8, A057728(n+1)])`
-/

namespace A278011.P2231381657396266802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278011.P2231381657396266802

/-! ## A278011.P17261044141944364446

`A278014(eq[10, A239829(n+1)])`
-/

namespace A278011.P17261044141944364446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278011.P17261044141944364446

/-! ## A278011.P8783152252430438700

`record[A278014(A198464(n+1)-2)]`
-/

namespace A278011.P8783152252430438700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A198464 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278011.P8783152252430438700

/-!
# A278012: Number of nX6 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278012, there is no canonical definition to state claims against.
-/

/-! ## A278012.P15383568090386499910

`A278014(eq[5, A193592(n)])`
-/

namespace A278012.P15383568090386499910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278012.P15383568090386499910

/-! ## A278012.P16665487334599800722

`A278014(eq[16, A057728(n+1)])`
-/

namespace A278012.P16665487334599800722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278012.P16665487334599800722

/-! ## A278012.P11654479594433256191

`A278014(Δ[Δ[A006504(n+1)]])`
-/

namespace A278012.P11654479594433256191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (f1 (n + 1) - f1 n).toNat

end

end A278012.P11654479594433256191

/-!
# A278013: Number of nX7 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278013, there is no canonical definition to state claims against.
-/

/-! ## A278013.P16722371071257614608

`A278014(eq[6, A193592(n)])`
-/

namespace A278013.P16722371071257614608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278013.P16722371071257614608

/-! ## A278013.P1263337420316783051

`A278014(Δ[A026054(n+4)])`
-/

namespace A278013.P1263337420316783051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (f1 (n + 1) - f1 n).toNat

end

end A278013.P1263337420316783051

/-!
# A278014: T(n,k)=Number of nXk 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278014, there is no canonical definition to state claims against.
-/

/-! ## A278014.P11683262170955843436

`A153078(A022166(n))*A353568(n+1)`
-/

namespace A278014.P11683262170955843436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153078 (A022166 n).toNat * A353568 (n + 1)

end

end A278014.P11683262170955843436

/-! ## A278014.P15264932199265913750

`lcm(A138390(A057197(n+1)), A244138(n+1))`
-/

namespace A278014.P15264932199265913750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138390 (A057197 (n + 1)).toNat) (A244138 (n + 1))

end

end A278014.P15264932199265913750

/-! ## A278014.P15020853725371460256

`A122350(A231246(n+1))*A271518(2*n+1)`
-/

namespace A278014.P15020853725371460256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (A231246 (n + 1)).toNat * A271518 (2 * n + 1)

end

end A278014.P15020853725371460256

/-!
# A278015: Number of 2 X n 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278015, the canonical program `A278015.P12388097705548021670` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278015 has offset 1).

The definition of A278015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278015.P12388097705548021670

`6*a(n-1)-8*a(n-3)-a(n-4)` with `a(0)=0, a(1)=6, a(2)=28, a(3)=168`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278015

/-- `6*a(n-1)-8*a(n-3)-a(n-4)` -/
def P12388097705548021670.Spec : Prop :=
  ∀ n, P12388097705548021670.a n = A278015 (n + 1)

theorem P12388097705548021670.correct : P12388097705548021670.Spec := by
  intro n
  simp only [A278015, Nat.add_sub_cancel]

end A278015

/-! ## A278015.P359825913421860935

`A278014(∑[n+1]+2)`
-/

namespace A278015.P359825913421860935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278015.P359825913421860935

namespace A278015

/-- `A278014(∑[n+1]+2)` -/
def P359825913421860935.Spec : Prop :=
  ∀ n, P359825913421860935.a n = A278015 (n + 1)

end A278015

/-! ## A278015.P4654083366963722601

`record[A278014(A255128(n+1))]`
-/

namespace A278015.P4654083366963722601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A255128 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278015.P4654083366963722601

namespace A278015

/-- `record[A278014(A255128(n+1))]` -/
def P4654083366963722601.Spec : Prop :=
  ∀ n, P4654083366963722601.a n = A278015 (n + 1)

end A278015

/-! ## A278015.P817704685151548398

`record[char[A000124(n)]*A278014(n+1)]`
-/

namespace A278015.P817704685151548398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A278014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278015.P817704685151548398

namespace A278015

/-- `record[char[A000124(n)]*A278014(n+1)]` -/
def P817704685151548398.Spec : Prop :=
  ∀ n, P817704685151548398.a n = A278015 (n + 1)

end A278015

/-! ## A278015.P13016423626933107149

`record[(2-A002262(n))*A278014(n+1)]`
-/

namespace A278015.P13016423626933107149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A002262 n) * A278014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278015.P13016423626933107149

namespace A278015

/-- `record[(2-A002262(n))*A278014(n+1)]` -/
def P13016423626933107149.Spec : Prop :=
  ∀ n, P13016423626933107149.a n = A278015 (n + 1)

end A278015

/-!
# A278016: Number of 3Xn 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278016, there is no canonical definition to state claims against.
-/

/-! ## A278016.P14339740131455563409

`A278014(∑[n+2]+4)`
-/

namespace A278016.P14339740131455563409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278016.P14339740131455563409

/-! ## A278016.P5942911454253039106

`lcm(2, A278014(A167614(n+1)))`
-/

namespace A278016.P5942911454253039106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A278014 (A167614 (n + 1)).toNat)

end

end A278016.P5942911454253039106

/-! ## A278016.P14686218394146281007

`record[A278014(A255128(2*n+1)+2)]`
-/

namespace A278016.P14686218394146281007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A255128 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278016.P14686218394146281007

/-! ## A278016.P14153626682662999599

`record[char[A000124(n+1)]*A278014(n+2)]`
-/

namespace A278016.P14153626682662999599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A278014 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278016.P14153626682662999599

/-! ## A278016.P3504659188060718044

`A278014(A167614(n+1))+A025469(n)`
-/

namespace A278016.P3504659188060718044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A167614 (n + 1)).toNat + A025469 n

end

end A278016.P3504659188060718044

/-!
# A278017: Number of 4Xn 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278017, there is no canonical definition to state claims against.
-/

/-! ## A278017.P4150544797898006242

`A278014(A141214(n)+7)`
-/

namespace A278017.P4150544797898006242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A141214 n + 7).toNat

end

end A278017.P4150544797898006242

/-! ## A278017.P16769671415893994512

`A278014(A052905(n)+9)`
-/

namespace A278017.P16769671415893994512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A052905 n + 9).toNat

end

end A278017.P16769671415893994512

/-! ## A278017.P15170085846733143412

`A278014(A055999(n)+10)`
-/

namespace A278017.P15170085846733143412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A055999 n + 10).toNat

end

end A278017.P15170085846733143412

/-! ## A278017.P15633811441253262428

`A278014(eq[5, A066657(n)])`
-/

namespace A278017.P15633811441253262428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278017.P15633811441253262428

/-! ## A278017.P12057056741288134475

`A278014(A167614(n+2)+1)`
-/

namespace A278017.P12057056741288134475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A167614 (n + 2) + 1).toNat

end

end A278017.P12057056741288134475

/-!
# A278018: Number of 5Xn 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278018, there is no canonical definition to state claims against.
-/

/-! ## A278018.P931553815595915809

`A278014(C(n+5, 2)+5)`
-/

namespace A278018.P931553815595915809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (Nat.choose (n + 5) 2 + 5)

end

end A278018.P931553815595915809

/-! ## A278018.P1893884233945064126

`A278014(A056000(n)+15)`
-/

namespace A278018.P1893884233945064126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A056000 n + 15).toNat

end

end A278018.P1893884233945064126

/-! ## A278018.P4597963949342435245

`A278014(eq[7, A066657(n)])`
-/

namespace A278018.P4597963949342435245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278018.P4597963949342435245

/-! ## A278018.P17323825448685548493

`A278014(A000124(n+4)+4)`
-/

namespace A278018.P17323825448685548493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A000124 (n + 4) + 4).toNat

end

end A278018.P17323825448685548493

/-! ## A278018.P7985310957447693753

`A278014(A000217(n+4)+5)`
-/

namespace A278018.P7985310957447693753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (A000217 (n + 4) + 5).toNat

end

end A278018.P7985310957447693753

/-!
# A278019: Number of 6Xn 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278019, there is no canonical definition to state claims against.
-/

/-! ## A278019.P16470825983574746185

`A278014(eq[7, A131818(n+1)])`
-/

namespace A278019.P16470825983574746185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278019.P16470825983574746185

/-!
# A278020: Number of 7Xn 0..2 arrays with every element plus 1 mod 3 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278020, there is no canonical definition to state claims against.
-/

/-! ## A278020.P3691682426409998655

`A278014(eq[11, A066657(n)])`
-/

namespace A278020.P3691682426409998655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278020.P3691682426409998655

/-! ## A278020.P4665406848655043175

`A278014(eq[8, A131818(n+1)])`
-/

namespace A278020.P4665406848655043175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278020.P4665406848655043175

/-!
# A278021: Numbers n such that n - lambda(n) is prime, where lambda = A002322.

The programs for A278021, there is no canonical definition to state claims against.
-/

/-! ## A278021.P12375715074237496249

`eq[5, A020725(a(A277127(n)))]` with `a(0)=2`
-/

namespace A278021.P12375715074237496249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A020725 (f2 (A277127 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278021.P12375715074237496249

/-! ## A278021.P18254446485164949261

`eq[5, A084964(a(A277127(n)))]` with `a(0)=12`
-/

namespace A278021.P18254446485164949261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [12] fun n f2 =>
  A084964 (f2 (A277127 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278021.P18254446485164949261

/-! ## A278021.P15134637430806369178

`eq[A062584(A277127(n+1)), A277127(n+1)]+1`
-/

namespace A278021.P15134637430806369178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A277127 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277127 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A278021.P15134637430806369178

/-! ## A278021.P452761304346450445

`eq[2, A000005(A277127(A233583(n+1)))]`
-/

namespace A278021.P452761304346450445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A277127 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278021.P452761304346450445

/-! ## A278021.P11730683787633080153

`eq[5, A034448(a(A277127(n)))]` with `a(0)=2`
-/

namespace A278021.P11730683787633080153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A034448 (f2 (A277127 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278021.P11730683787633080153

/-!
# A278022: Squares s such that s + 2 and s - 2 are semiprime.

The programs for A278022, there is no canonical definition to state claims against.
-/

/-! ## A278022.P5497568931645559139

`∩[A105571(n+1), n²]`
-/

namespace A278022.P5497568931645559139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A278022.P5497568931645559139

/-! ## A278022.P15718920824073001644

`∩[A175648(n+1)+2, n²]`
-/

namespace A278022.P15718920824073001644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A278022.P15718920824073001644

/-! ## A278022.P12031425088834363869

`∩[A000290(n), A105571(n+1)]`
-/

namespace A278022.P12031425088834363869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278022.P12031425088834363869

/-! ## A278022.P17798192551717987136

`∩[A175664(n+1)-2, n²]`
-/

namespace A278022.P17798192551717987136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175664 (n + 1) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A278022.P17798192551717987136

/-! ## A278022.P11976900259016883060

`∩[A000463(A000027(2*(n+2))), A175664(n+1)-2]`
-/

namespace A278022.P11976900259016883060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A000027 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175664 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278022.P11976900259016883060

/-!
# A278023: G.f.: 2*x*(1-x*sqrt(1-4*x))/((1+2*x^2+sqrt(1-4*x))*sqrt(1-4*x)).

The programs for A278023, there is no canonical definition to state claims against.
-/

/-! ## A278023.P13472385729168210013

`floor(floor(A269849(A163862(n))/2)/2)`
-/

namespace A278023.P13472385729168210013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A269849 (A163862 n).toNat : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A278023.P13472385729168210013

/-! ## A278023.P483994843486136488

`A008617(A053368(n)+A029651(n))`
-/

namespace A278023.P483994843486136488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A053368 n + A029651 n).toNat

end

end A278023.P483994843486136488

/-! ## A278023.P5409949072333738527

`A148969(n)-A189718(A000351(n))`
-/

namespace A278023.P5409949072333738527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148969 n - A189718 (A000351 n).toNat

end

end A278023.P5409949072333738527

/-!
# A278024: Number of irreducible involutions of length n.

The programs for A278024, there is no canonical definition to state claims against.
-/

/-! ## A278024.P16392716056572616885

`A143363(n)-A004198(A114495(n+1))`
-/

namespace A278024.P16392716056572616885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143363 n - A004198 (A114495 (n + 1)).toNat

end

end A278024.P16392716056572616885

/-! ## A278024.P7852393911421091928

`or(1, Δ[A321994(abs(1-n)+1)])`
-/

namespace A278024.P7852393911421091928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A278024.P7852393911421091928

/-! ## A278024.P13384053660400997469

`A088450(A152046(n))`
-/

namespace A278024.P13384053660400997469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088450 (A152046 n).toNat

end

end A278024.P13384053660400997469

/-! ## A278024.P13834712784888758984

`A117331(A261050(n))`
-/

namespace A278024.P13834712784888758984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117331 (A261050 n).toNat

end

end A278024.P13834712784888758984

/-!
# A278025: Number of irreducible involutions of length n avoiding the pattern {123}.

The programs for A278025, there is no canonical definition to state claims against.
-/

/-! ## A278025.P15415499833153573197

`A001462(round(23^(n/3)))+n%2`
-/

namespace A278025.P15415499833153573197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (SequenceMachineLib.roundAway ((23 : ℝ) ^ ((n : ℚ) / 3 : ℝ))).toNat + ((n % 2 : ℕ) : ℤ)

end

end A278025.P15415499833153573197

/-! ## A278025.P6512661718295681260

`A001462(A018043(n))+A000035(n)`
-/

namespace A278025.P6512661718295681260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A018043 n).toNat + A000035 n

end

end A278025.P6512661718295681260

/-! ## A278025.P7412531118867939450

`A021913(2*n)+A001462(A018043(n))`
-/

namespace A278025.P7412531118867939450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (2 * n) + A001462 (A018043 n).toNat

end

end A278025.P7412531118867939450

/-! ## A278025.P5021581798798807466

`A002024(A081172(2*n+1))+A001045(n)`
-/

namespace A278025.P5021581798798807466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A081172 (2 * n + 1)).toNat + A001045 n

end

end A278025.P5021581798798807466

/-! ## A278025.P15923669897779976063

`A340832(3*n+2)+A001462(A018043(n))`
-/

namespace A278025.P15923669897779976063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340832 (3 * n + 2) + A001462 (A018043 n).toNat

end

end A278025.P15923669897779976063

/-!
# A278026: Number of 1324-avoiding permutations of length n with a non-intersecting boundary of type (t, 2), for some integer t >= 1.

The programs for A278026, there is no canonical definition to state claims against.
-/

/-! ## A278026.P12224020194026862464

`A008618(∑[A093129(n)])`
-/

namespace A278026.P12224020194026862464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278026.P12224020194026862464

/-! ## A278026.P14204839668973744364

`A008618(A260304(n+1))`
-/

namespace A278026.P14204839668973744364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A260304 (n + 1)).toNat

end

end A278026.P14204839668973744364

/-! ## A278026.P617680835070206334

`A008651(record[A309399((n-1)^(n%2))])`
-/

namespace A278026.P617680835070206334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309399 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278026.P617680835070206334

/-! ## A278026.P6658229990664967052

`A002487(A002133(n+1)*A292065(n+1))`
-/

namespace A278026.P6658229990664967052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A002133 (n + 1) * A292065 (n + 1)).toNat

end

end A278026.P6658229990664967052

/-!
# A278027: Number of 1324-avoiding permutations of length n with a non-intersecting boundary of type (t, 3), for some integer t >= 1.

The programs for A278027, there is no canonical definition to state claims against.
-/

/-! ## A278027.P3709729869128833461

`A001045(n)²%A058122(n)`
-/

namespace A278027.P3709729869128833461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001045 n ^ 2) (A058122 n)

end

end A278027.P3709729869128833461

/-! ## A278027.P8614465633593206563

`A008618(A305543(n+1)+1)`
-/

namespace A278027.P8614465633593206563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A305543 (n + 1) + 1).toNat

end

end A278027.P8614465633593206563

/-! ## A278027.P12804884999084008003

`A142607(n+1)²%A058122(n)`
-/

namespace A278027.P12804884999084008003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142607 (n + 1) ^ 2) (A058122 n)

end

end A278027.P12804884999084008003

/-! ## A278027.P16305141431761525121

`A211003(n+1)²%A058122(n)`
-/

namespace A278027.P16305141431761525121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211003 (n + 1) ^ 2) (A058122 n)

end

end A278027.P16305141431761525121

/-!
# A278029: a(1) = 0; for n > 1, a(n) = k if n is a non-perfect-power, A007916(k); or 0 if n is a perfect power.

The programs for A278029, the canonical program `A278029.P1112025626637894235` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278029 has offset 1).

The definition of A278029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278029.P1112025626637894235

`Δ[A000124(n-A076411(n+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A278029

/-- `Δ[A000124(n-A076411(n+1))]` -/
def P1112025626637894235.Spec : Prop :=
  ∀ n, P1112025626637894235.a n = A278029 (n + 1)

theorem P1112025626637894235.correct : P1112025626637894235.Spec := by
  intro n
  simp only [A278029, Nat.add_sub_cancel]

end A278029

/-! ## A278029.P1670945265903365653

`Δ[A000217(n-A076411(n+1))]`
-/

namespace A278029.P1670945265903365653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n : ℤ) - A076411 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278029.P1670945265903365653

namespace A278029

/-- `Δ[A000217(n-A076411(n+1))]` -/
def P1670945265903365653.Spec : Prop :=
  ∀ n, P1670945265903365653.a n = A278029 (n + 1)

end A278029

/-! ## A278029.P15679605329821986847

`Δ[A161680(n+1-A076411(n+1))]`
-/

namespace A278029.P15679605329821986847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 ((n + 1 : ℤ) - A076411 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278029.P15679605329821986847

namespace A278029

/-- `Δ[A161680(n+1-A076411(n+1))]` -/
def P15679605329821986847.Spec : Prop :=
  ∀ n, P15679605329821986847.a n = A278029 (n + 1)

end A278029

/-! ## A278029.P4356873844241505461

`A110654(Δ[(A076411(n+1)-n)²])`
-/

namespace A278029.P4356873844241505461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076411 (n + 1) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n).toNat

end

end A278029.P4356873844241505461

namespace A278029

/-- `A110654(Δ[(A076411(n+1)-n)²])` -/
def P4356873844241505461.Spec : Prop :=
  ∀ n, P4356873844241505461.a n = A278029 (n + 1)

end A278029

/-! ## A278029.P15880979896904732273

`A004526(Δ[(n+1-A076411(n+1))²])`
-/

namespace A278029.P15880979896904732273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A076411 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A278029.P15880979896904732273

namespace A278029

/-- `A004526(Δ[(n+1-A076411(n+1))²])` -/
def P15880979896904732273.Spec : Prop :=
  ∀ n, P15880979896904732273.a n = A278029 (n + 1)

end A278029

/-!
# A278031: Records in A269415.

The programs for A278031, there is no canonical definition to state claims against.
-/

/-! ## A278031.P17914629203256649820

`record[A269415(n+1)]`
-/

namespace A278031.P17914629203256649820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278031.P17914629203256649820

/-! ## A278031.P3659315318468561715

`A319442(A003173(n+1))+A270339(n+1)`
-/

namespace A278031.P3659315318468561715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319442 (A003173 (n + 1)).toNat + A270339 (n + 1)

end

end A278031.P3659315318468561715

/-!
# A278032: a(n) is the smallest positive integer not already in the sequence such that Sum_{i=1..n} binary_weight(a(i)) is prime.

The programs for A278032, there is no canonical definition to state claims against.
-/

/-! ## A278032.P2575020648792818781

`A305493(A270264(n+1))`
-/

namespace A278032.P2575020648792818781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305493 (A270264 (n + 1)).toNat

end

end A278032.P2575020648792818781

/-!
# A278033: Instanton numbers of the (4, 1)-threefold.

The programs for A278033, there is no canonical definition to state claims against.
-/

/-! ## A278033.P3453936609748046820

`lcm(A109628(n+1), A109628(A056469(n)))`
-/

namespace A278033.P3453936609748046820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109628 (n + 1)) (A109628 (A056469 n).toNat)

end

end A278033.P3453936609748046820

/-!
# A278034: Instanton numbers of the (1, 1)-threefold.

The programs for A278034, there is no canonical definition to state claims against.
-/

/-! ## A278034.P17535181449787375290

`4*A278035(n+1)`
-/

namespace A278034.P17535181449787375290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A278035 (n + 1)

end

end A278034.P17535181449787375290

/-!
# A278035: a(n) = A278034(n)/4.

The programs for A278035, there is no canonical definition to state claims against.
-/

/-! ## A278035.P12232829848303885294

`A278034(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278035.P12232829848303885294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278034 (n + 1) : ℚ) / 4

end

end A278035.P12232829848303885294

/-!
# A278038: Binary vectors not containing three consecutive 1's; or, representation of n in the tribonacci base.

The programs for A278038, the canonical program `A278038.P15952078169272648163` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278038 has offset 0).

The definition of A278038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278038.P15952078169272648163

`A007088(eq[0, and(n, 2*and(n, 2*n))])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A278038

/-- `A007088(eq[0, and(n, 2*and(n, 2*n))])` -/
def P15952078169272648163.Spec : Prop :=
  ∀ n, P15952078169272648163.a n = A278038 n

theorem P15952078169272648163.correct : P15952078169272648163.Spec := by
  intro n
  simp only [A278038]

end A278038

/-! ## A278038.P5492468947616961833

`A007088(A003726(n+1))`
-/

namespace A278038.P5492468947616961833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A003726 (n + 1)).toNat

end

end A278038.P5492468947616961833

namespace A278038

/-- `A007088(A003726(n+1))` -/
def P5492468947616961833.Spec : Prop :=
  ∀ n, P5492468947616961833.a n = A278038 n

end A278038

/-! ## A278038.P15854106123874759455

`A007088(eq[0, A014082(n)])`
-/

namespace A278038.P15854106123874759455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278038.P15854106123874759455

namespace A278038

/-- `A007088(eq[0, A014082(n)])` -/
def P15854106123874759455.Spec : Prop :=
  ∀ n, P15854106123874759455.a n = A278038 n

end A278038

/-! ## A278038.P11334469488996039345

`A007088(eq[1, A329720(n)])`
-/

namespace A278038.P11334469488996039345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278038.P11334469488996039345

namespace A278038

/-- `A007088(eq[1, A329720(n)])` -/
def P11334469488996039345.Spec : Prop :=
  ∀ n, P11334469488996039345.a n = A278038 n

end A278038

/-! ## A278038.P12092403005704015742

`A007088(lt[A014082(n), 1])`
-/

namespace A278038.P12092403005704015742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A278038.P12092403005704015742

namespace A278038

/-- `A007088(lt[A014082(n), 1])` -/
def P12092403005704015742.Spec : Prop :=
  ∀ n, P12092403005704015742.a n = A278038 n

end A278038

/-! ## A278038.P8106168966140775018

`A007088(record[gcd(n, A014082(n))])`
-/

namespace A278038.P8106168966140775018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A014082 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A278038.P8106168966140775018

namespace A278038

/-- `A007088(record[gcd(n, A014082(n))])` -/
def P8106168966140775018.Spec : Prop :=
  ∀ n, P8106168966140775018.a n = A278038 n

end A278038

/-! ## A278038.P8240413664226372676

`record[(1-A014082(n))*A007088(n)]`
-/

namespace A278038.P8240413664226372676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A014082 n) * A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278038.P8240413664226372676

namespace A278038

/-- `record[(1-A014082(n))*A007088(n)]` -/
def P8240413664226372676.Spec : Prop :=
  ∀ n, P8240413664226372676.a n = A278038 n

end A278038

/-! ## A278038.P17840893111230587643

`record[A007088(n)/A261461(A014082(n))]`
-/

namespace A278038.P17840893111230587643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 n : ℚ) / (A261461 (A014082 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278038.P17840893111230587643

namespace A278038

/-- `record[A007088(n)/A261461(A014082(n))]` -/
def P17840893111230587643.Spec : Prop :=
  ∀ n, P17840893111230587643.a n = (A278038 n : ℚ)

end A278038

/-! ## A278038.P15417839966365448699

`A185544(2*A003726(n+1))`
-/

namespace A278038.P15417839966365448699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A003726 (n + 1)).toNat

end

end A278038.P15417839966365448699

namespace A278038

/-- `A185544(2*A003726(n+1))` -/
def P15417839966365448699.Spec : Prop :=
  ∀ n, P15417839966365448699.a n = A278038 n

end A278038

/-! ## A278038.P17647625266336113270

`A007089(A356823(n+1))`
-/

namespace A278038.P17647625266336113270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A356823 (n + 1)).toNat

end

end A278038.P17647625266336113270

namespace A278038

/-- `A007089(A356823(n+1))` -/
def P17647625266336113270.Spec : Prop :=
  ∀ n, P17647625266336113270.a n = A278038 n

end A278038

/-!
# A278039: The tribonacci representation of a(n) is obtained by appending a 0 to the tribonacci representation of n (cf. A278038).

The programs for A278039, the canonical program `A278039.P16218767788797619260` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278039 has offset 0).

The definition of A278039 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003144, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278039.P16218767788797619260

`A003144(n+1)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A278039

/-- `A003144(n+1)-1` -/
def P16218767788797619260.Spec : Prop :=
  ∀ n, P16218767788797619260.a n = A278039 n

theorem P16218767788797619260.correct : P16218767788797619260.Spec := by
  intro n
  simp only [A278039]

end A278039

/-! ## A278039.P657492053609812885

`2*n-(A276798(n)-1)`
-/

namespace A278039.P657492053609812885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (A276798 n - 1)

end

end A278039.P657492053609812885

namespace A278039

/-- `2*n-(A276798(n)-1)` -/
def P657492053609812885.Spec : Prop :=
  ∀ n, P657492053609812885.a n = A278039 n

end A278039

/-! ## A278039.P8212987414043849593

`eq[0, A080843(n)]`
-/

namespace A278039.P8212987414043849593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278039.P8212987414043849593

namespace A278039

/-- `eq[0, A080843(n)]` -/
def P8212987414043849593.Spec : Prop :=
  ∀ n, (P8212987414043849593.a n : ℤ) = A278039 n

end A278039

/-! ## A278039.P4560769694104181568

`lt[0, A278045(n)]`
-/

namespace A278039.P4560769694104181568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278039.P4560769694104181568

namespace A278039

/-- `lt[0, A278045(n)]` -/
def P4560769694104181568.Spec : Prop :=
  ∀ n, (P4560769694104181568.a n : ℤ) = A278039 n

theorem P4560769694104181568.correct : P4560769694104181568.Spec := by
  intro n
  simp only [A278039, Nat.add_sub_cancel, A278039.P4560769694104181568.f1, A278039.P4560769694104181568.f2, A278039.P4560769694104181568.a, A278039.P16218767788797619260.a, A003144, A003144.P14581909281585168490.f1, A003144.P14581909281585168490.f2, A003144.P14581909281585168490.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278039

/-! ## A278039.P5863727555534159673

`comp[A003265(n+1)]`
-/

namespace A278039.P5863727555534159673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A278039.P5863727555534159673

namespace A278039

/-- `comp[A003265(n+1)]` -/
def P5863727555534159673.Spec : Prop :=
  ∀ n, (P5863727555534159673.a n : ℤ) = A278039 n

end A278039

/-! ## A278039.P6386465304642443774

`eq[1, A092782(n+1)]`
-/

namespace A278039.P6386465304642443774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278039.P6386465304642443774

namespace A278039

/-- `eq[1, A092782(n+1)]` -/
def P6386465304642443774.Spec : Prop :=
  ∀ n, (P6386465304642443774.a n : ℤ) = A278039 n

end A278039

/-! ## A278039.P16776997248486145104

`lt[0, A317193(n+1)]`
-/

namespace A278039.P16776997248486145104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278039.P16776997248486145104

namespace A278039

/-- `lt[0, A317193(n+1)]` -/
def P16776997248486145104.Spec : Prop :=
  ∀ n, (P16776997248486145104.a n : ℤ) = A278039 n

end A278039

/-! ## A278039.P15312751893765062531

`lt[1, A305392(n+1)]`
-/

namespace A278039.P15312751893765062531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278039.P15312751893765062531

namespace A278039

/-- `lt[1, A305392(n+1)]` -/
def P15312751893765062531.Spec : Prop :=
  ∀ n, (P15312751893765062531.a n : ℤ) = A278039 n

end A278039

/-! ## A278039.P17116290802065332242

`lt[4, A305394(n+1)]`
-/

namespace A278039.P17116290802065332242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305394 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278039.P17116290802065332242

namespace A278039

/-- `lt[4, A305394(n+1)]` -/
def P17116290802065332242.Spec : Prop :=
  ∀ n, (P17116290802065332242.a n : ℤ) = A278039 n

end A278039

/-! ## A278039.P13843683602771626149

`lt[5, A275925(n+2)]`
-/

namespace A278039.P13843683602771626149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278039.P13843683602771626149

namespace A278039

/-- `lt[5, A275925(n+2)]` -/
def P13843683602771626149.Spec : Prop :=
  ∀ n, (P13843683602771626149.a n : ℤ) = A278039 n

end A278039

/-! ## A278039.P17435343649232670000

`eq[2, gcd(2, A278038(n))]`
-/

namespace A278039.P17435343649232670000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A278038 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278039.P17435343649232670000

namespace A278039

/-- `eq[2, gcd(2, A278038(n))]` -/
def P17435343649232670000.Spec : Prop :=
  ∀ n, (P17435343649232670000.a n : ℤ) = A278039 n

end A278039

/-! ## A278039.P5087570028053520696

`Δ[n²]-A276798(n)`
-/

namespace A278039.P5087570028053520696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A276798 n

end

end A278039.P5087570028053520696

namespace A278039

/-- `Δ[n²]-A276798(n)` -/
def P5087570028053520696.Spec : Prop :=
  ∀ n, P5087570028053520696.a n = A278039 n

end A278039

/-! ## A278039.P5889766179694276831

`∑[A305374(n)-1]-1`
-/

namespace A278039.P5889766179694276831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305374 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A278039.P5889766179694276831

namespace A278039

/-- `∑[A305374(n)-1]-1` -/
def P5889766179694276831.Spec : Prop :=
  ∀ n, P5889766179694276831.a n = A278039 n

end A278039

/-! ## A278039.P3011716625405499507

`∑[2-A276791(n)]-1`
-/

namespace A278039.P3011716625405499507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A276791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A278039.P3011716625405499507

namespace A278039

/-- `∑[2-A276791(n)]-1` -/
def P3011716625405499507.Spec : Prop :=
  ∀ n, P3011716625405499507.a n = A278039 n

end A278039

/-! ## A278039.P9038488988704017273

`A140101(n+1)-(n+2)`
-/

namespace A278039.P9038488988704017273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (n + 1) - (n + 2 : ℤ)

end

end A278039.P9038488988704017273

namespace A278039

/-- `A140101(n+1)-(n+2)` -/
def P9038488988704017273.Spec : Prop :=
  ∀ n, P9038488988704017273.a n = A278039 n

end A278039

/-! ## A278039.P17193370100485923133

`comp[A140100(n+1)-2]-n`
-/

namespace A278039.P17193370100485923133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A278039.P17193370100485923133

namespace A278039

/-- `comp[A140100(n+1)-2]-n` -/
def P17193370100485923133.Spec : Prop :=
  ∀ n, P17193370100485923133.a n = A278039 n

end A278039

/-! ## A278039.P16079101331780767387

`2*n-∑[char[A003146(n+1)]]`
-/

namespace A278039.P16079101331780767387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A278039.P16079101331780767387

namespace A278039

/-- `2*n-∑[char[A003146(n+1)]]` -/
def P16079101331780767387.Spec : Prop :=
  ∀ n, P16079101331780767387.a n = A278039 n

end A278039

/-! ## A278039.P3218312979449854221

`eq[1, A054977(A278045(n)²)]`
-/

namespace A278039.P3218312979449854221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A278045 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278039.P3218312979449854221

namespace A278039

/-- `eq[1, A054977(A278045(n)²)]` -/
def P3218312979449854221.Spec : Prop :=
  ∀ n, (P3218312979449854221.a n : ℤ) = A278039 n

end A278039

/-! ## A278039.P18299223526366719126

`A278040(n)-A140100(n+1)`
-/

namespace A278039.P18299223526366719126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n - A140100 (n + 1)

end

end A278039.P18299223526366719126

namespace A278039

/-- `A278040(n)-A140100(n+1)` -/
def P18299223526366719126.Spec : Prop :=
  ∀ n, P18299223526366719126.a n = A278039 n

end A278039

/-!
# A278040: The tribonacci representation of a(n) is obtained by appending 0,1 to the tribonacci representation of n (cf. A278038).

The programs for A278040, the canonical program `A278040.P10650196326427599491` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278040 has offset 0).

The definition of A278040 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003145, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278040.P10650196326427599491

`A003145(n+1)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A278040

/-- `A003145(n+1)-1` -/
def P10650196326427599491.Spec : Prop :=
  ∀ n, P10650196326427599491.a n = A278040 n

theorem P10650196326427599491.correct : P10650196326427599491.Spec := by
  intro n
  simp only [A278040]

end A278040

/-! ## A278040.P5440790425076921902

`A308199(n)+1`
-/

namespace A278040.P5440790425076921902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308199 n + 1

end

end A278040.P5440790425076921902

namespace A278040

/-- `A308199(n)+1` -/
def P5440790425076921902.Spec : Prop :=
  ∀ n, P5440790425076921902.a n = A278040 n

theorem P5440790425076921902.correct : P5440790425076921902.Spec := by
  intro n
  simp only [A278040, Nat.add_sub_cancel, A278040.P5440790425076921902.a, A278040.P10650196326427599491.a, A003145, A003145.P16204300471705086444.f1, A003145.P16204300471705086444.f2, A003145.P16204300471705086444.a, A308199, A308199.P4084788755827198599.a, A317193, A317193.P13677178970524234186.a, A057078, A057078.P1741063947389819901.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278040

/-! ## A278040.P18024271689054078046

`lt[1, A305393(n+1)]`
-/

namespace A278040.P18024271689054078046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305393 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278040.P18024271689054078046

namespace A278040

/-- `lt[1, A305393(n+1)]` -/
def P18024271689054078046.Spec : Prop :=
  ∀ n, (P18024271689054078046.a n : ℤ) = A278040 n

end A278040

/-! ## A278040.P13990230930193107354

`eq[4, A305394(n+1)]`
-/

namespace A278040.P13990230930193107354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305394 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278040.P13990230930193107354

namespace A278040

/-- `eq[4, A305394(n+1)]` -/
def P13990230930193107354.Spec : Prop :=
  ∀ n, (P13990230930193107354.a n : ℤ) = A278040 n

end A278040

/-! ## A278040.P3735801878453418863

`eq[5, A275925(n+2)]`
-/

namespace A278040.P3735801878453418863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278040.P3735801878453418863

namespace A278040

/-- `eq[5, A275925(n+2)]` -/
def P3735801878453418863.Spec : Prop :=
  ∀ n, (P3735801878453418863.a n : ℤ) = A278040 n

end A278040

/-! ## A278040.P9687427404489065000

`comp[A140102(n)]-(n+2)`
-/

namespace A278040.P9687427404489065000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 2 : ℤ)

end

end A278040.P9687427404489065000

namespace A278040

/-- `comp[A140102(n)]-(n+2)` -/
def P9687427404489065000.Spec : Prop :=
  ∀ n, P9687427404489065000.a n = A278040 n

end A278040

/-! ## A278040.P17807188852816603201

`eq[0, A317193(n+1)+1]`
-/

namespace A278040.P17807188852816603201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278040.P17807188852816603201

namespace A278040

/-- `eq[0, A317193(n+1)+1]` -/
def P17807188852816603201.Spec : Prop :=
  ∀ n, (P17807188852816603201.a n : ℤ) = A278040 n

end A278040

/-! ## A278040.P5977434371357143875

`eq[2, A305393(n+2)]+1`
-/

namespace A278040.P5977434371357143875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305393 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A278040.P5977434371357143875

namespace A278040

/-- `eq[2, A305393(n+2)]+1` -/
def P5977434371357143875.Spec : Prop :=
  ∀ n, (P5977434371357143875.a n : ℤ) = A278040 n

end A278040

/-! ## A278040.P1946848424317436260

`A140103(n+1)-(n+2)`
-/

namespace A278040.P1946848424317436260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1) - (n + 2 : ℤ)

end

end A278040.P1946848424317436260

namespace A278040

/-- `A140103(n+1)-(n+2)` -/
def P1946848424317436260.Spec : Prop :=
  ∀ n, P1946848424317436260.a n = A278040 n

end A278040

/-! ## A278040.P7742879125076743976

`A276789(n)+a(n-1)` with `a(0)=1`
-/

namespace A278040.P7742879125076743976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276789 n + a (n - 1)

end

end A278040.P7742879125076743976

namespace A278040

/-- `A276789(n)+a(n-1)` -/
def P7742879125076743976.Spec : Prop :=
  ∀ n, P7742879125076743976.a n = A278040 n

end A278040

/-! ## A278040.P14477046089233931771

`A278039(A278039(n))+1`
-/

namespace A278040.P14477046089233931771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A278039 n).toNat + 1

end

end A278040.P14477046089233931771

namespace A278040

/-- `A278039(A278039(n))+1` -/
def P14477046089233931771.Spec : Prop :=
  ∀ n, P14477046089233931771.a n = A278040 n

end A278040

/-! ## A278040.P17915203726723539589

`A140102(A003144(n+1))+n`
-/

namespace A278040.P17915203726723539589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 (A003144 (n + 1)).toNat + (n : ℤ)

end

end A278040.P17915203726723539589

namespace A278040

/-- `A140102(A003144(n+1))+n` -/
def P17915203726723539589.Spec : Prop :=
  ∀ n, P17915203726723539589.a n = A278040 n

end A278040

/-! ## A278040.P350039233022511662

`A278041(n)-A140101(n+1)`
-/

namespace A278040.P350039233022511662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n - A140101 (n + 1)

end

end A278040.P350039233022511662

namespace A278040

/-- `A278041(n)-A140101(n+1)` -/
def P350039233022511662.Spec : Prop :=
  ∀ n, P350039233022511662.a n = A278040 n

end A278040

/-! ## A278040.P3691518741300745279

`A276796(n)+A140100(A003144(n+1))`
-/

namespace A278040.P3691518741300745279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 n + A140100 (A003144 (n + 1)).toNat

end

end A278040.P3691518741300745279

namespace A278040

/-- `A276796(n)+A140100(A003144(n+1))` -/
def P3691518741300745279.Spec : Prop :=
  ∀ n, P3691518741300745279.a n = A278040 n

end A278040

/-! ## A278040.P15761588036136941479

`lt[A317193(n+1)/17, A217221(A217221(n))]`
-/

namespace A278040.P15761588036136941479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317193 (n + 1) : ℚ) / 17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217221 (A217221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A278040.P15761588036136941479

namespace A278040

/-- `lt[A317193(n+1)/17, A217221(A217221(n))]` -/
def P15761588036136941479.Spec : Prop :=
  ∀ n, (P15761588036136941479.a n : ℤ) = A278040 n

end A278040

/-! ## A278040.P2670036173028515734

`A003265(A140100(n+1))`
-/

namespace A278040.P2670036173028515734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003265 (A140100 (n + 1)).toNat

end

end A278040.P2670036173028515734

namespace A278040

/-- `A003265(A140100(n+1))` -/
def P2670036173028515734.Spec : Prop :=
  ∀ n, P2670036173028515734.a n = A278040 n

end A278040

/-! ## A278040.P4918280760933691744

`∩[A003265(n+1), A385455(n+1)]`
-/

namespace A278040.P4918280760933691744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278040.P4918280760933691744

namespace A278040

/-- `∩[A003265(n+1), A385455(n+1)]` -/
def P4918280760933691744.Spec : Prop :=
  ∀ n, (P4918280760933691744.a n : ℤ) = A278040 n

end A278040

/-! ## A278040.P13791634267152106736

`lt[atan(n), A278045(n)]+1`
-/

namespace A278040.P13791634267152106736
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A278040.P13791634267152106736

namespace A278040

/-- `lt[atan(n), A278045(n)]+1` -/
def P13791634267152106736.Spec : Prop :=
  ∀ n, (P13791634267152106736.a n : ℤ) = A278040 n

end A278040

/-! ## A278040.P15974060629408329324

`eq[1, A080843(n)]`
-/

namespace A278040.P15974060629408329324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278040.P15974060629408329324

namespace A278040

/-- `eq[1, A080843(n)]` -/
def P15974060629408329324.Spec : Prop :=
  ∀ n, (P15974060629408329324.a n : ℤ) = A278040 n

end A278040

/-!
# A278041: The tribonacci representation of a(n) is obtained by appending 0,1,1 to the tribonacci representation of n (cf. A278038).

The programs for A278041, the canonical program `A278041.P13470193706674634785` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278041 has offset 0).

The definition of A278041 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003146, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278041.P13470193706674634785

`A003146(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278041

/-- `A003146(n+1)-1` -/
def P13470193706674634785.Spec : Prop :=
  ∀ n, P13470193706674634785.a n = A278041 n

theorem P13470193706674634785.correct : P13470193706674634785.Spec := by
  intro n
  simp only [A278041]

end A278041

/-! ## A278041.P14152851226846640182

`A308200(n)+3`
-/

namespace A278041.P14152851226846640182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 n + 3

end

end A278041.P14152851226846640182

namespace A278041

/-- `A308200(n)+3` -/
def P14152851226846640182.Spec : Prop :=
  ∀ n, P14152851226846640182.a n = A278041 n

theorem P14152851226846640182.correct : P14152851226846640182.Spec := by
  intro n
  simp only [A278041, Nat.add_sub_cancel, A278041.P14152851226846640182.a, A278041.P13470193706674634785.a, A003146, A003146.P4319550854608353230.a, A308200, A308200.P11353778696816616322.a, A275925, A275925.P1014596103965212206.a, A003796, A003796.P430726989961333611.f1, A003796.P430726989961333611.f2, A003796.P430726989961333611.a, A056974, A056974.P14269005406388105579.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278041

/-! ## A278041.P3261291906020656261

`A319967(n+1)+1`
-/

namespace A278041.P3261291906020656261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319967 (n + 1) + 1

end

end A278041.P3261291906020656261

namespace A278041

/-- `A319967(n+1)+1` -/
def P3261291906020656261.Spec : Prop :=
  ∀ n, P3261291906020656261.a n = A278041 n

end A278041

/-! ## A278041.P18321294405225334465

`∑[A275925(n+1)]+n`
-/

namespace A278041.P18321294405225334465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A278041.P18321294405225334465

namespace A278041

/-- `∑[A275925(n+1)]+n` -/
def P18321294405225334465.Spec : Prop :=
  ∀ n, P18321294405225334465.a n = A278041 n

end A278041

/-! ## A278041.P5531301465562472007

`(A319968(n+1)+n)/2`
-/

namespace A278041.P5531301465562472007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319968 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A278041.P5531301465562472007

namespace A278041

/-- `(A319968(n+1)+n)/2` -/
def P5531301465562472007.Spec : Prop :=
  ∀ n, P5531301465562472007.a n = (A278041 n : ℚ)

end A278041

/-! ## A278041.P2080739837712922819

`A276792(n)+a(n-1)` with `a(0)=3`
-/

namespace A278041.P2080739837712922819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A276792 n + a (n - 1)

end

end A278041.P2080739837712922819

namespace A278041

/-- `A276792(n)+a(n-1)` -/
def P2080739837712922819.Spec : Prop :=
  ∀ n, P2080739837712922819.a n = A278041 n

end A278041

/-! ## A278041.P15551035149487526123

`(A319966(n+1)+n-1)/2`
-/

namespace A278041.P15551035149487526123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319966 (n + 1) + ((n : ℤ) - 1) : ℚ) / 2

end

end A278041.P15551035149487526123

namespace A278041

/-- `(A319966(n+1)+n-1)/2` -/
def P15551035149487526123.Spec : Prop :=
  ∀ n, P15551035149487526123.a n = (A278041 n : ℚ)

end A278041

/-! ## A278041.P848955663487989060

`(A319970(n+1)+n+2)/2`
-/

namespace A278041.P848955663487989060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319970 (n + 1) + (n + 2 : ℤ) : ℚ) / 2

end

end A278041.P848955663487989060

namespace A278041

/-- `(A319970(n+1)+n+2)/2` -/
def P848955663487989060.Spec : Prop :=
  ∀ n, P848955663487989060.a n = (A278041 n : ℚ)

end A278041

/-! ## A278041.P14819846773483029949

`A278040(A278039(n))+2`
-/

namespace A278041.P14819846773483029949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278039 n).toNat + 2

end

end A278041.P14819846773483029949

namespace A278041

/-- `A278040(A278039(n))+2` -/
def P14819846773483029949.Spec : Prop :=
  ∀ n, P14819846773483029949.a n = A278041 n

end A278041

/-! ## A278041.P1268390346746599840

`A140100(A003145(n+1))+n`
-/

namespace A278041.P1268390346746599840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (A003145 (n + 1)).toNat + (n : ℤ)

end

end A278041.P1268390346746599840

namespace A278041

/-- `A140100(A003145(n+1))+n` -/
def P1268390346746599840.Spec : Prop :=
  ∀ n, P1268390346746599840.a n = A278041 n

end A278041

/-! ## A278041.P6578811431960959910

`A278039(n)+A140103(n+1)`
-/

namespace A278041.P6578811431960959910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n + A140103 (n + 1)

end

end A278041.P6578811431960959910

namespace A278041

/-- `A278039(n)+A140103(n+1)` -/
def P6578811431960959910.Spec : Prop :=
  ∀ n, P6578811431960959910.a n = A278041 n

end A278041

/-! ## A278041.P11745438189064454030

`A140100(A278040(n)+1)+n`
-/

namespace A278041.P11745438189064454030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (A278040 n + 1).toNat + (n : ℤ)

end

end A278041.P11745438189064454030

namespace A278041

/-- `A140100(A278040(n)+1)+n` -/
def P11745438189064454030.Spec : Prop :=
  ∀ n, P11745438189064454030.a n = A278041 n

end A278041

/-! ## A278041.P13662796437712086295

`A278040(n)+A140101(n+1)`
-/

namespace A278041.P13662796437712086295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n + A140101 (n + 1)

end

end A278041.P13662796437712086295

namespace A278041

/-- `A278040(n)+A140101(n+1)` -/
def P13662796437712086295.Spec : Prop :=
  ∀ n, P13662796437712086295.a n = A278041 n

end A278041

/-! ## A278041.P8962851015217884842

`A140101(A003144(n+1))+1+n`
-/

namespace A278041.P8962851015217884842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (A003144 (n + 1)).toNat + 1 + (n : ℤ)

end

end A278041.P8962851015217884842

namespace A278041

/-- `A140101(A003144(n+1))+1+n` -/
def P8962851015217884842.Spec : Prop :=
  ∀ n, P8962851015217884842.a n = A278041 n

end A278041

/-! ## A278041.P14345654090717904773

`A003144(n+1)+A140103(n+1)-1`
-/

namespace A278041.P14345654090717904773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) + (A140103 (n + 1) - 1)

end

end A278041.P14345654090717904773

namespace A278041

/-- `A003144(n+1)+A140103(n+1)-1` -/
def P14345654090717904773.Spec : Prop :=
  ∀ n, P14345654090717904773.a n = A278041 n

end A278041

/-! ## A278041.P15375412268468797965

`A003144(n+1)+A003145(n+1)+n`
-/

namespace A278041.P15375412268468797965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) + A003145 (n + 1) + (n : ℤ)

end

end A278041.P15375412268468797965

namespace A278041

/-- `A003144(n+1)+A003145(n+1)+n` -/
def P15375412268468797965.Spec : Prop :=
  ∀ n, P15375412268468797965.a n = A278041 n

end A278041

/-! ## A278041.P16932606049226224736

`A003145(n+1)+A278040(n)-A276796(n)`
-/

namespace A278041.P16932606049226224736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) + (A278040 n - A276796 n)

end

end A278041.P16932606049226224736

namespace A278041

/-- `A003145(n+1)+A278040(n)-A276796(n)` -/
def P16932606049226224736.Spec : Prop :=
  ∀ n, P16932606049226224736.a n = A278041 n

end A278041

/-! ## A278041.P3427177127298951033

`A140100(A140100(n+1)+A003144(n+1))+n`
-/

namespace A278041.P3427177127298951033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (A140100 (n + 1) + A003144 (n + 1)).toNat + (n : ℤ)

end

end A278041.P3427177127298951033

namespace A278041

/-- `A140100(A140100(n+1)+A003144(n+1))+n` -/
def P3427177127298951033.Spec : Prop :=
  ∀ n, P3427177127298951033.a n = A278041 n

end A278041

/-! ## A278041.P18208241558173682642

`A305373(n+1)+n`
-/

namespace A278041.P18208241558173682642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305373 (n + 1) + (n : ℤ)

end

end A278041.P18208241558173682642

namespace A278041

/-- `A305373(n+1)+n` -/
def P18208241558173682642.Spec : Prop :=
  ∀ n, P18208241558173682642.a n = A278041 n

end A278041

/-!
# A278042: Number of 0's in tribonacci representation of n (cf. A278038).

The programs for A278042, the canonical program `A278042.P17948730681649741485` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278042 has offset 0).

The definition of A278042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278042.P17948730681649741485

`∑{digits}[A278038(n), 1-#]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A278042

/-- `∑{digits}[A278038(n), 1-#]` -/
def P17948730681649741485.Spec : Prop :=
  ∀ n, P17948730681649741485.a n = A278042 n

theorem P17948730681649741485.correct : P17948730681649741485.Spec := by
  intro n
  simp only [A278042]

end A278042

/-! ## A278042.P7719498214215712675

`A317207(n+1)-C(n, C(n, n²))`
-/

namespace A278042.P7719498214215712675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (n + 1) - (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ)

end

end A278042.P7719498214215712675

namespace A278042

/-- `A317207(n+1)-C(n, C(n, n²))` -/
def P7719498214215712675.Spec : Prop :=
  ∀ n, P7719498214215712675.a n = A278042 n

end A278042

/-! ## A278042.P9445978380649919652

`A278044(n)-A278043(n)`
-/

namespace A278042.P9445978380649919652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278044 n - A278043 n

end

end A278042.P9445978380649919652

namespace A278042

/-- `A278044(n)-A278043(n)` -/
def P9445978380649919652.Spec : Prop :=
  ∀ n, P9445978380649919652.a n = A278042 n

theorem P9445978380649919652.correct : P9445978380649919652.Spec := by
  intro n
  simp only [A278042, Nat.add_sub_cancel, A278042.P9445978380649919652.a, A278042.P17948730681649741485.f1, A278042.P17948730681649741485.a, A278038, A278038.P15952078169272648163.f1, A278038.P15952078169272648163.f2, A278038.P15952078169272648163.a, A278043, A278043.P1081770688957329620.a, A278044, A278044.P17470812905146498962.a, A000120, A000120.P2816527436160941581.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A007088, A007088.P12432121332583687413.a, A005187, A005187.P3874015513960485494.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278042

/-! ## A278042.P17611337912942496116

`A317207(n+1)-A204843(C(2, A005117(n+1)))`
-/

namespace A278042.P17611337912942496116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (n + 1) - A204843 (Nat.choose 2 (A005117 (n + 1)).toNat)

end

end A278042.P17611337912942496116

namespace A278042

/-- `A317207(n+1)-A204843(C(2, A005117(n+1)))` -/
def P17611337912942496116.Spec : Prop :=
  ∀ n, P17611337912942496116.a n = A278042 n

end A278042

/-! ## A278042.P1451931335470047667

`A317207(n+1)-char[A119257(n+1)]`
-/

namespace A278042.P1451931335470047667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A278042.P1451931335470047667

namespace A278042

/-- `A317207(n+1)-char[A119257(n+1)]` -/
def P1451931335470047667.Spec : Prop :=
  ∀ n, P1451931335470047667.a n = A278042 n

end A278042

/-! ## A278042.P2035948644538895757

`A317207(n+1)-A001221(A008578(n+1))`
-/

namespace A278042.P2035948644538895757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (n + 1) - A001221 (A008578 (n + 1)).toNat

end

end A278042.P2035948644538895757

namespace A278042

/-- `A317207(n+1)-A001221(A008578(n+1))` -/
def P2035948644538895757.Spec : Prop :=
  ∀ n, P2035948644538895757.a n = A278042 n

end A278042

/-! ## A278042.P10200951842356533078

`A317207(n+1)-A089309(A089309(2*n)²)`
-/

namespace A278042.P10200951842356533078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (n + 1) - A089309 (A089309 (2 * n) ^ 2).toNat

end

end A278042.P10200951842356533078

namespace A278042

/-- `A317207(n+1)-A089309(A089309(2*n)²)` -/
def P10200951842356533078.Spec : Prop :=
  ∀ n, P10200951842356533078.a n = A278042 n

end A278042

/-! ## A278042.P5202214502946298568

`abs(2-A317207(A003144(n+1)))`
-/

namespace A278042.P5202214502946298568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A317207 (A003144 (n + 1)).toNat|

end

end A278042.P5202214502946298568

namespace A278042

/-- `abs(2-A317207(A003144(n+1)))` -/
def P5202214502946298568.Spec : Prop :=
  ∀ n, P5202214502946298568.a n = A278042 n

end A278042

/-! ## A278042.P7787422889297778189

`A028310(2*n)+A317207(n+1)-(2*n+1)`
-/

namespace A278042.P7787422889297778189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n) + (A317207 (n + 1) - (2 * n + 1 : ℤ))

end

end A278042.P7787422889297778189

namespace A278042

/-- `A028310(2*n)+A317207(n+1)-(2*n+1)` -/
def P7787422889297778189.Spec : Prop :=
  ∀ n, P7787422889297778189.a n = A278042 n

end A278042

/-! ## A278042.P9980145596774099461

`A317207(n+1)-and(1, A000040(2*n+1))`
-/

namespace A278042.P9980145596774099461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (n + 1) - Int.land 1 (A000040 (2 * n + 1))

end

end A278042.P9980145596774099461

namespace A278042

/-- `A317207(n+1)-and(1, A000040(2*n+1))` -/
def P9980145596774099461.Spec : Prop :=
  ∀ n, P9980145596774099461.a n = A278042 n

end A278042

/-! ## A278042.P14445803622770311524

`A023416(A003726(n+1))`
-/

namespace A278042.P14445803622770311524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A003726 (n + 1)).toNat

end

end A278042.P14445803622770311524

namespace A278042

/-- `A023416(A003726(n+1))` -/
def P14445803622770311524.Spec : Prop :=
  ∀ n, P14445803622770311524.a n = A278042 n

end A278042

/-! ## A278042.P16756392547155395153

`A023416(eq[0, A014082(n)])`
-/

namespace A278042.P16756392547155395153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278042.P16756392547155395153

namespace A278042

/-- `A023416(eq[0, A014082(n)])` -/
def P16756392547155395153.Spec : Prop :=
  ∀ n, P16756392547155395153.a n = A278042 n

end A278042

/-! ## A278042.P2376319466632636078

`A023416(eq[1, A329720(n)])`
-/

namespace A278042.P2376319466632636078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278042.P2376319466632636078

namespace A278042

/-- `A023416(eq[1, A329720(n)])` -/
def P2376319466632636078.Spec : Prop :=
  ∀ n, P2376319466632636078.a n = A278042 n

end A278042

/-! ## A278042.P1049481840603650151

`A023416(eq[A069010(n), A329320(n)])`
-/

namespace A278042.P1049481840603650151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A278042.P1049481840603650151

namespace A278042

/-- `A023416(eq[A069010(n), A329320(n)])` -/
def P1049481840603650151.Spec : Prop :=
  ∀ n, P1049481840603650151.a n = A278042 n

end A278042

/-! ## A278042.P2348790277487996817

`abs(2-A317207(A003145(n+1)))`
-/

namespace A278042.P2348790277487996817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A317207 (A003145 (n + 1)).toNat|

end

end A278042.P2348790277487996817

namespace A278042

/-- `abs(2-A317207(A003145(n+1)))` -/
def P2348790277487996817.Spec : Prop :=
  ∀ n, P2348790277487996817.a n = A278042 n

end A278042

/-! ## A278042.P6929466061049382695

`abs(3-A317207(A319966(n+1)))`
-/

namespace A278042.P6929466061049382695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A317207 (A319966 (n + 1)).toNat|

end

end A278042.P6929466061049382695

namespace A278042

/-- `abs(3-A317207(A319966(n+1)))` -/
def P6929466061049382695.Spec : Prop :=
  ∀ n, P6929466061049382695.a n = A278042 n

end A278042

/-! ## A278042.P13382380924684989400

`A317207(n+1)-A089309(n²)`
-/

namespace A278042.P13382380924684989400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (n + 1) - A089309 (n ^ 2)

end

end A278042.P13382380924684989400

namespace A278042

/-- `A317207(n+1)-A089309(n²)` -/
def P13382380924684989400.Spec : Prop :=
  ∀ n, P13382380924684989400.a n = A278042 n

end A278042

/-! ## A278042.P5111068941160902994

`abs(2-A316714(n))`
-/

namespace A278042.P5111068941160902994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A316714 n|

end

end A278042.P5111068941160902994

namespace A278042

/-- `abs(2-A316714(n))` -/
def P5111068941160902994.Spec : Prop :=
  ∀ n, P5111068941160902994.a n = A278042 n

end A278042

/-! ## A278042.P15658487535409460925

`A316714(A000038(n)+n)-2`
-/

namespace A278042.P15658487535409460925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316714 (A000038 n + (n : ℤ)).toNat - 2

end

end A278042.P15658487535409460925

namespace A278042

/-- `A316714(A000038(n)+n)-2` -/
def P15658487535409460925.Spec : Prop :=
  ∀ n, P15658487535409460925.a n = A278042 n

end A278042

/-! ## A278042.P4603765975019901633

`A316714(n)-(2-A000038(n))`
-/

namespace A278042.P4603765975019901633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316714 n - (2 - A000038 n)

end

end A278042.P4603765975019901633

namespace A278042

/-- `A316714(n)-(2-A000038(n))` -/
def P4603765975019901633.Spec : Prop :=
  ∀ n, P4603765975019901633.a n = A278042 n

end A278042

/-!
# A278043: Number of 1's in tribonacci representation of n (cf. A278038).

The programs for A278043, the canonical program `A278043.P1081770688957329620` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278043 has offset 0).

The definition of A278043 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003726, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278043.P1081770688957329620

`A000120(A003726(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A278043

/-- `A000120(A003726(n+1))` -/
def P1081770688957329620.Spec : Prop :=
  ∀ n, P1081770688957329620.a n = A278043 n

theorem P1081770688957329620.correct : P1081770688957329620.Spec := by
  intro n
  simp only [A278043]

end A278043

/-! ## A278043.P4774517288031077059

`∑{digits}[A278038(n), #]`
-/

namespace A278043.P4774517288031077059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A278043.P4774517288031077059

namespace A278043

/-- `∑{digits}[A278038(n), #]` -/
def P4774517288031077059.Spec : Prop :=
  ∀ n, (P4774517288031077059.a n : ℤ) = A278043 n

end A278043

/-! ## A278043.P9869042931348584930

`∑{digits}[A317206(n+1), #-1]`
-/

namespace A278043.P9869042931348584930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) - 1).sum

end

end A278043.P9869042931348584930

namespace A278043

/-- `∑{digits}[A317206(n+1), #-1]` -/
def P9869042931348584930.Spec : Prop :=
  ∀ n, P9869042931348584930.a n = A278043 n

end A278043

/-! ## A278043.P15571537603723045493

`A278044(n)-A278042(n)`
-/

namespace A278043.P15571537603723045493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278044 n - A278042 n

end

end A278043.P15571537603723045493

namespace A278043

/-- `A278044(n)-A278042(n)` -/
def P15571537603723045493.Spec : Prop :=
  ∀ n, P15571537603723045493.a n = A278043 n

theorem P15571537603723045493.correct : P15571537603723045493.Spec := by
  intro n
  simp only [A278043, Nat.add_sub_cancel, A278043.P15571537603723045493.a, A278043.P1081770688957329620.a, A000120, A000120.P2816527436160941581.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A278042, A278042.P17948730681649741485.f1, A278042.P17948730681649741485.a, A278044, A278044.P17470812905146498962.a, A005187, A005187.P3874015513960485494.a, A278038, A278038.P15952078169272648163.f1, A278038.P15952078169272648163.f2, A278038.P15952078169272648163.a, A007088, A007088.P12432121332583687413.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278043

/-! ## A278043.P5447801298951410352

`A000120(eq[0, A014082(n)])`
-/

namespace A278043.P5447801298951410352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278043.P5447801298951410352

namespace A278043

/-- `A000120(eq[0, A014082(n)])` -/
def P5447801298951410352.Spec : Prop :=
  ∀ n, P5447801298951410352.a n = A278043 n

end A278043

/-! ## A278043.P12052241296027027157

`A000120(lt[A014082(n), 1])`
-/

namespace A278043.P12052241296027027157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A278043.P12052241296027027157

namespace A278043

/-- `A000120(lt[A014082(n), 1])` -/
def P12052241296027027157.Spec : Prop :=
  ∀ n, P12052241296027027157.a n = A278043 n

end A278043

/-! ## A278043.P14293009486364558930

`A048881(2*A003726(n+1))`
-/

namespace A278043.P14293009486364558930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A003726 (n + 1)).toNat

end

end A278043.P14293009486364558930

namespace A278043

/-- `A048881(2*A003726(n+1))` -/
def P14293009486364558930.Spec : Prop :=
  ∀ n, P14293009486364558930.a n = A278043 n

end A278043

/-! ## A278043.P4106019690205820409

`A048881(A003726(n+1)+A003726(n+1))`
-/

namespace A278043.P4106019690205820409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A003726 (n + 1) + A003726 (n + 1)).toNat

end

end A278043.P4106019690205820409

namespace A278043

/-- `A048881(A003726(n+1)+A003726(n+1))` -/
def P4106019690205820409.Spec : Prop :=
  ∀ n, P4106019690205820409.a n = A278043 n

end A278043

/-! ## A278043.P13838142118157339665

`A000120(lt[A329320(n), A033264(2*(n+1))])`
-/

namespace A278043.P13838142118157339665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A278043.P13838142118157339665

namespace A278043

/-- `A000120(lt[A329320(n), A033264(2*(n+1))])` -/
def P13838142118157339665.Spec : Prop :=
  ∀ n, P13838142118157339665.a n = A278043 n

end A278043

/-! ## A278043.P10253991868885739842

`A316716(n)+2*A316717(n)`
-/

namespace A278043.P10253991868885739842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316716 n + 2 * A316717 n

end

end A278043.P10253991868885739842

namespace A278043

/-- `A316716(n)+2*A316717(n)` -/
def P10253991868885739842.Spec : Prop :=
  ∀ n, P10253991868885739842.a n = A278043 n

end A278043

/-! ## A278043.P6170737571348542812

`A316717(n)+A069010(A003726(n+1))`
-/

namespace A278043.P6170737571348542812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316717 n + A069010 (A003726 (n + 1)).toNat

end

end A278043.P6170737571348542812

namespace A278043

/-- `A316717(n)+A069010(A003726(n+1))` -/
def P6170737571348542812.Spec : Prop :=
  ∀ n, P6170737571348542812.a n = A278043 n

end A278043

/-! ## A278043.P3517708154721821982

`A316714(n)+A316717(n)-A316715(n)`
-/

namespace A278043.P3517708154721821982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316714 n + (A316717 n - A316715 n)

end

end A278043.P3517708154721821982

namespace A278043

/-- `A316714(n)+A316717(n)-A316715(n)` -/
def P3517708154721821982.Spec : Prop :=
  ∀ n, P3517708154721821982.a n = A278043 n

end A278043

/-!
# A278044: Length of tribonacci representation of n (cf. A278038).

The programs for A278044, the canonical program `A278044.P17470812905146498962` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278044 has offset 0).

The definition of A278044 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278042, A278043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278044.P17470812905146498962

`A278042(n)+A278043(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A278044

/-- `A278042(n)+A278043(n)` -/
def P17470812905146498962.Spec : Prop :=
  ∀ n, P17470812905146498962.a n = A278044 n

theorem P17470812905146498962.correct : P17470812905146498962.Spec := by
  intro n
  simp only [A278044]

end A278044

/-! ## A278044.P8020204054012689227

`∑[char[A308189(Δ[n²])]]`
-/

namespace A278044.P8020204054012689227
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278044.P8020204054012689227

namespace A278044

/-- `∑[char[A308189(Δ[n²])]]` -/
def P8020204054012689227.Spec : Prop :=
  ∀ n, (P8020204054012689227.a n : ℤ) = A278044 n

end A278044

/-! ## A278044.P284422083756375958

`∑[char[A000073(n)]-char[1]]`
-/

namespace A278044.P284422083756375958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278044.P284422083756375958

namespace A278044

/-- `∑[char[A000073(n)]-char[1]]` -/
def P284422083756375958.Spec : Prop :=
  ∀ n, P284422083756375958.a n = A278044 n

end A278044

/-! ## A278044.P15610519914227109453

`∑[char[A000073(n+4)]]+1`
-/

namespace A278044.P15610519914227109453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 4)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A278044.P15610519914227109453

namespace A278044

/-- `∑[char[A000073(n+4)]]+1` -/
def P15610519914227109453.Spec : Prop :=
  ∀ n, (P15610519914227109453.a n : ℤ) = A278044 n

end A278044

/-! ## A278044.P13363158830478704985

`∑[char[A227751(∑[n+1])]]+1`
-/

namespace A278044.P13363158830478704985
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227751 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A278044.P13363158830478704985

namespace A278044

/-- `∑[char[A227751(∑[n+1])]]+1` -/
def P13363158830478704985.Spec : Prop :=
  ∀ n, (P13363158830478704985.a n : ℤ) = A278044 n

end A278044

/-! ## A278044.P8720188000658424281

`char[A296651(∑[n+1])]+a(n-1)` with `a(0)=1`
-/

namespace A278044.P8720188000658424281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296651 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A278044.P8720188000658424281

namespace A278044

/-- `char[A296651(∑[n+1])]+a(n-1)` -/
def P8720188000658424281.Spec : Prop :=
  ∀ n, (P8720188000658424281.a n : ℤ) = A278044 n

end A278044

/-! ## A278044.P6263953172599341476

`∑{digits}[A278038(n), A007318(#)]`
-/

namespace A278044.P6263953172599341476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007318 x).sum

end

end A278044.P6263953172599341476

namespace A278044

/-- `∑{digits}[A278038(n), A007318(#)]` -/
def P6263953172599341476.Spec : Prop :=
  ∀ n, P6263953172599341476.a n = A278044 n

end A278044

/-! ## A278044.P3447337510075727385

`∑{digits}[2-A317206(A003144(n+1)), #]`
-/

namespace A278044.P3447337510075727385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A317206 (A003144 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A278044.P3447337510075727385

namespace A278044

/-- `∑{digits}[2-A317206(A003144(n+1)), #]` -/
def P3447337510075727385.Spec : Prop :=
  ∀ n, (P3447337510075727385.a n : ℤ) = A278044 n

end A278044

/-! ## A278044.P6471268576575047299

`A070939(A003726(n+1))`
-/

namespace A278044.P6471268576575047299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A003726 (n + 1)).toNat

end

end A278044.P6471268576575047299

namespace A278044

/-- `A070939(A003726(n+1))` -/
def P6471268576575047299.Spec : Prop :=
  ∀ n, P6471268576575047299.a n = A278044 n

end A278044

/-! ## A278044.P14154389382515910681

`A070939(A003796(2*(n+1))-A003796(n+2))`
-/

namespace A278044.P14154389382515910681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A003796 (2 * (n + 1)) - A003796 (n + 2)).toNat

end

end A278044.P14154389382515910681

namespace A278044

/-- `A070939(A003796(2*(n+1))-A003796(n+2))` -/
def P14154389382515910681.Spec : Prop :=
  ∀ n, P14154389382515910681.a n = A278044 n

end A278044

/-!
# A278045: Number of trailing 0's in tribonacci representation of n (cf. A278038).

The programs for A278045, the canonical program `A278045.P7038591754817271268` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278045 has offset 0).

The definition of A278045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278045.P15761196255726064970

`log2(gcd(A003726(n+1), A140513(n)))`
-/

namespace A278045.P15761196255726064970
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A003726 (n + 1)) (A140513 n) : ℝ)

end

end A278045.P15761196255726064970

namespace A278045

/-- `log2(gcd(A003726(n+1), A140513(n)))` -/
def P15761196255726064970.Spec : Prop :=
  ∀ n, P15761196255726064970.a n = (A278045 n : ℝ)

end A278045

/-! ## A278045.P7038591754817271268

`val(A003726(n+1)+A000038(n), 2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A278045

/-- `val(A003726(n+1)+A000038(n), 2)` -/
def P7038591754817271268.Spec : Prop :=
  ∀ n, (P7038591754817271268.a n : ℤ) = A278045 n

theorem P7038591754817271268.correct : P7038591754817271268.Spec := by
  intro n
  simp only [A278045]

end A278045

/-! ## A278045.P15665526326981391302

`val(abs(lt[A014082(n), 1]-1)+1, 2)`
-/

namespace A278045.P15665526326981391302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|(SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1| + 1).toNat 2

end

end A278045.P15665526326981391302

namespace A278045

/-- `val(abs(lt[A014082(n), 1]-1)+1, 2)` -/
def P15665526326981391302.Spec : Prop :=
  ∀ n, (P15665526326981391302.a n : ℤ) = A278045 n

end A278045

/-! ## A278045.P14732415887958433751

`1-A088705(A003726(n+1))`
-/

namespace A278045.P14732415887958433751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088705 (A003726 (n + 1)).toNat

end

end A278045.P14732415887958433751

namespace A278045

/-- `1-A088705(A003726(n+1))` -/
def P14732415887958433751.Spec : Prop :=
  ∀ n, P14732415887958433751.a n = A278045 n

end A278045

/-! ## A278045.P11444391451203574541

`A001222(gcd(A135530(n), A278038(n)))`
-/

namespace A278045.P11444391451203574541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A135530 n) (A278038 n))

end

end A278045.P11444391451203574541

namespace A278045

/-- `A001222(gcd(A135530(n), A278038(n)))` -/
def P11444391451203574541.Spec : Prop :=
  ∀ n, P11444391451203574541.a n = A278045 n

end A278045

/-! ## A278045.P3088071157072924226

`val(A003726(n+1)+A000079(n+1), 2)`
-/

namespace A278045.P3088071157072924226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003726 (n + 1) + A000079 (n + 1)).toNat 2

end

end A278045.P3088071157072924226

namespace A278045

/-- `val(A003726(n+1)+A000079(n+1), 2)` -/
def P3088071157072924226.Spec : Prop :=
  ∀ n, (P3088071157072924226.a n : ℤ) = A278045 n

end A278045

/-! ## A278045.P7562733232994075642

`val(A056236(n)+A003726(n+1), 2)`
-/

namespace A278045.P7562733232994075642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A056236 n + A003726 (n + 1)).toNat 2

end

end A278045.P7562733232994075642

namespace A278045

/-- `val(A056236(n)+A003726(n+1), 2)` -/
def P7562733232994075642.Spec : Prop :=
  ∀ n, (P7562733232994075642.a n : ℤ) = A278045 n

end A278045

/-! ## A278045.P16929272740354760218

`val(A278038(n)+A161168(n), 2)`
-/

namespace A278045.P16929272740354760218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278038 n + A161168 n).toNat 2

end

end A278045.P16929272740354760218

namespace A278045

/-- `val(A278038(n)+A161168(n), 2)` -/
def P16929272740354760218.Spec : Prop :=
  ∀ n, (P16929272740354760218.a n : ℤ) = A278045 n

end A278045

/-!
# A278046: Let v = list of denominators of Farey series of order n (see A006843); a(n) = sum of products of adjacent terms of v.

The programs for A278046, there is no canonical definition to state claims against.
-/

/-! ## A278046.P582264924681548221

`∑[A053191(n+1)-A057789(n+1)]`
-/

namespace A278046.P582264924681548221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (n + 1) - A057789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278046.P582264924681548221

/-! ## A278046.P3608775801824628780

`∑[A053818(n+1)+A029578(A053191(n+1))]`
-/

namespace A278046.P3608775801824628780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053818 (n + 1) + A029578 (A053191 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278046.P3608775801824628780

/-!
# A278048: Let v = list of denominators of Farey series of order n (see A006843); let b(n) = Sum 1/(k*k'*(k+k')), where (k,k') are pairs of successive terms of v; a(n) = denominator of b(n).

The programs for A278048, there is no canonical definition to state claims against.
-/

/-! ## A278048.P3551385286876361

`lcm(A046897(A000079(n)), A278561(n+1))`
-/

namespace A278048.P3551385286876361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046897 (A000079 n).toNat) (A278561 (n + 1))

end

end A278048.P3551385286876361

/-! ## A278048.P2753835701742114178

`A038712(A016209(n))*A278561(n+1)`
-/

namespace A278048.P2753835701742114178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A016209 n).toNat * A278561 (n + 1)

end

end A278048.P2753835701742114178

/-!
# A278049: a(n) = 3*(Sum_{k=1..n} phi(k)) - 1, where phi = A000010.

The programs for A278049, the canonical program `A278049.P11985461488246088473` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278049 has offset 1).

The definition of A278049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278049.P14049008702598923898

`3*∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]-1`
-/

namespace A278049.P14049008702598923898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A278049.P14049008702598923898

namespace A278049

/-- `3*∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]-1` -/
def P14049008702598923898.Spec : Prop :=
  ∀ n, P14049008702598923898.a n = (A278049 (n + 1) : ℚ)

end A278049

/-! ## A278049.P11985461488246088473

`∑[A200905(n+1)]-1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A278049

/-- `∑[A200905(n+1)]-1` -/
def P11985461488246088473.Spec : Prop :=
  ∀ n, P11985461488246088473.a n = A278049 (n + 1)

theorem P11985461488246088473.correct : P11985461488246088473.Spec := by
  intro n
  simp only [A278049, Nat.add_sub_cancel]

end A278049

/-! ## A278049.P3909610681898557479

`3*A002088(n+1)-1`
-/

namespace A278049.P3909610681898557479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002088 (n + 1) - 1

end

end A278049.P3909610681898557479

namespace A278049

/-- `3*A002088(n+1)-1` -/
def P3909610681898557479.Spec : Prop :=
  ∀ n, P3909610681898557479.a n = A278049 (n + 1)

end A278049

/-! ## A278049.P13498146406491908621

`3*A015614(n+1)+2`
-/

namespace A278049.P13498146406491908621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A015614 (n + 1) + 2

end

end A278049.P13498146406491908621

namespace A278049

/-- `3*A015614(n+1)+2` -/
def P13498146406491908621.Spec : Prop :=
  ∀ n, P13498146406491908621.a n = A278049 (n + 1)

end A278049

/-! ## A278049.P9939071747437320754

`3*A092249(n+1)-1`
-/

namespace A278049.P9939071747437320754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A092249 (n + 1) - 1

end

end A278049.P9939071747437320754

namespace A278049

/-- `3*A092249(n+1)-1` -/
def P9939071747437320754.Spec : Prop :=
  ∀ n, P9939071747437320754.a n = A278049 (n + 1)

end A278049

/-! ## A278049.P4917451523593694000

`∑[3*A000010(n+1)]-1`
-/

namespace A278049.P4917451523593694000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A278049.P4917451523593694000

namespace A278049

/-- `∑[3*A000010(n+1)]-1` -/
def P4917451523593694000.Spec : Prop :=
  ∀ n, P4917451523593694000.a n = A278049 (n + 1)

theorem P4917451523593694000.correct : P4917451523593694000.Spec := by
  intro n
  simp only [A278049, Nat.add_sub_cancel, A278049.P4917451523593694000.f1, A278049.P4917451523593694000.a, A278049.P11985461488246088473.f1, A278049.P11985461488246088473.a, A000010, A000010.P4673923239450215316.a, A200905, A200905.P4388094907414912323.a, A003557, A003557.P6364735403900941810.a, A121048, A121048.P10222907602682812102.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A278049

/-! ## A278049.P9887080227317925088

`3*(A015613(n+1)+n)+2`
-/

namespace A278049.P9887080227317925088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A015613 (n + 1) + (n : ℤ)) + 2

end

end A278049.P9887080227317925088

namespace A278049

/-- `3*(A015613(n+1)+n)+2` -/
def P9887080227317925088.Spec : Prop :=
  ∀ n, P9887080227317925088.a n = A278049 (n + 1)

end A278049

/-! ## A278049.P13753440748518710314

`∑[3*(A109606(n+1)+1)]-1`
-/

namespace A278049.P13753440748518710314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A109606 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A278049.P13753440748518710314

namespace A278049

/-- `∑[3*(A109606(n+1)+1)]-1` -/
def P13753440748518710314.Spec : Prop :=
  ∀ n, P13753440748518710314.a n = A278049 (n + 1)

theorem P13753440748518710314.correct : P13753440748518710314.Spec := by
  intro n
  simp only [A278049, Nat.add_sub_cancel, A278049.P13753440748518710314.f1, A278049.P13753440748518710314.a, A278049.P11985461488246088473.f1, A278049.P11985461488246088473.a, A109606, A109606.P2415810041766612210.a, A200905, A200905.P4388094907414912323.a, A000010, A000010.P4673923239450215316.a, A121048, A121048.P10222907602682812102.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A278049

/-! ## A278049.P16970025922863942292

`∑[3*(A039649(n+1)-1)]-1`
-/

namespace A278049.P16970025922863942292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A039649 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A278049.P16970025922863942292

namespace A278049

/-- `∑[3*(A039649(n+1)-1)]-1` -/
def P16970025922863942292.Spec : Prop :=
  ∀ n, P16970025922863942292.a n = A278049 (n + 1)

theorem P16970025922863942292.correct : P16970025922863942292.Spec := by
  intro n
  simp only [A278049, Nat.add_sub_cancel, A278049.P16970025922863942292.f1, A278049.P16970025922863942292.a, A278049.P11985461488246088473.f1, A278049.P11985461488246088473.a, A039649, A039649.P16717312505280968063.a, A200905, A200905.P4388094907414912323.a, A000010, A000010.P4673923239450215316.a, A121048, A121048.P10222907602682812102.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A278049

/-! ## A278049.P13847233992070792669

`∑[A022429(A000010(n+1))]+n`
-/

namespace A278049.P13847233992070792669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022429 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A278049.P13847233992070792669

namespace A278049

/-- `∑[A022429(A000010(n+1))]+n` -/
def P13847233992070792669.Spec : Prop :=
  ∀ n, P13847233992070792669.a n = A278049 (n + 1)

end A278049

/-! ## A278049.P14011143733181670715

`A018805(n+1)+A002088(n+1)`
-/

namespace A278049.P14011143733181670715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + A002088 (n + 1)

end

end A278049.P14011143733181670715

namespace A278049

/-- `A018805(n+1)+A002088(n+1)` -/
def P14011143733181670715.Spec : Prop :=
  ∀ n, P14011143733181670715.a n = A278049 (n + 1)

end A278049

/-! ## A278049.P9798706616477575270

`A092249(n+1)+A018805(n+1)`
-/

namespace A278049.P9798706616477575270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) + A018805 (n + 1)

end

end A278049.P9798706616477575270

namespace A278049

/-- `A092249(n+1)+A018805(n+1)` -/
def P9798706616477575270.Spec : Prop :=
  ∀ n, P9798706616477575270.a n = A278049 (n + 1)

end A278049

/-! ## A278049.P3114301573025607922

`A140466(n+1)-A005728(n+1)`
-/

namespace A278049.P3114301573025607922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140466 (n + 1) - A005728 (n + 1)

end

end A278049.P3114301573025607922

namespace A278049

/-- `A140466(n+1)-A005728(n+1)` -/
def P3114301573025607922.Spec : Prop :=
  ∀ n, P3114301573025607922.a n = A278049 (n + 1)

end A278049

/-! ## A278049.P15475788496924500526

`∑[A002246(n+1)-A000010(n+1)]`
-/

namespace A278049.P15475788496924500526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002246 (n + 1) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278049.P15475788496924500526

namespace A278049

/-- `∑[A002246(n+1)-A000010(n+1)]` -/
def P15475788496924500526.Spec : Prop :=
  ∀ n, P15475788496924500526.a n = A278049 (n + 1)

end A278049

/-! ## A278049.P15967793027872005045

`∑[A000010(n+1)*A157532(n+1)]`
-/

namespace A278049.P15967793027872005045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A157532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278049.P15967793027872005045

namespace A278049

/-- `∑[A000010(n+1)*A157532(n+1)]` -/
def P15967793027872005045.Spec : Prop :=
  ∀ n, P15967793027872005045.a n = A278049 (n + 1)

end A278049

/-! ## A278049.P9922816051726060510

`∑[(A057427(n)+2)*A000010(n+1)]`
-/

namespace A278049.P9922816051726060510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 2) * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278049.P9922816051726060510

namespace A278049

/-- `∑[(A057427(n)+2)*A000010(n+1)]` -/
def P9922816051726060510.Spec : Prop :=
  ∀ n, P9922816051726060510.a n = A278049 (n + 1)

end A278049

/-! ## A278049.P12546227342822150825

`A015614(n+1)+A018805(n+1)+1`
-/

namespace A278049.P12546227342822150825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + (A018805 (n + 1) + 1)

end

end A278049.P12546227342822150825

namespace A278049

/-- `A015614(n+1)+A018805(n+1)+1` -/
def P12546227342822150825.Spec : Prop :=
  ∀ n, P12546227342822150825.a n = A278049 (n + 1)

end A278049

/-! ## A278049.P10369198733284733728

`A140466(n+1)-(A002088(n+1)+1)`
-/

namespace A278049.P10369198733284733728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140466 (n + 1) - (A002088 (n + 1) + 1)

end

end A278049.P10369198733284733728

namespace A278049

/-- `A140466(n+1)-(A002088(n+1)+1)` -/
def P10369198733284733728.Spec : Prop :=
  ∀ n, P10369198733284733728.a n = A278049 (n + 1)

end A278049

/-! ## A278049.P14798043844770035859

`A100449(n+1)-(A002088(n+1)+2)`
-/

namespace A278049.P14798043844770035859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 (n + 1) - (A002088 (n + 1) + 2)

end

end A278049.P14798043844770035859

namespace A278049

/-- `A100449(n+1)-(A002088(n+1)+2)` -/
def P14798043844770035859.Spec : Prop :=
  ∀ n, P14798043844770035859.a n = A278049 (n + 1)

end A278049

/-!
# A278050: Let v = list of denominators of Farey series of order n (see A006843); let b(n) = Sum 1/(k+k'), where (k,k') are pairs of successive terms of v; a(n) = numerator of b(n).

The programs for A278050, there is no canonical definition to state claims against.
-/

/-! ## A278050.P7859491036102496929

`A228722(A001831(n)*A296020(n))`
-/

namespace A278050.P7859491036102496929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (A001831 n * A296020 n).toNat

end

end A278050.P7859491036102496929

/-! ## A278050.P7137887254779013902

`A228722(A001831(n)*A238690(n+1))`
-/

namespace A278050.P7137887254779013902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (A001831 n * A238690 (n + 1)).toNat

end

end A278050.P7137887254779013902

/-!
# A278051: Let v = list of denominators of Farey series of order n (see A006843); let b(n) = Sum 1/(k+k'), where (k,k') are pairs of successive terms of v; a(n) = denominator of b(n).

The programs for A278051, there is no canonical definition to state claims against.
-/

/-! ## A278051.P14437567027869801407

`lcm(A002260(A001147(n)), A278561(n+1))`
-/

namespace A278051.P14437567027869801407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002260 (A001147 n).toNat) (A278561 (n + 1))

end

end A278051.P14437567027869801407

/-! ## A278051.P13863544278773197809

`A278148(A001263(3*n+4))*A278561(n+1)`
-/

namespace A278051.P13863544278773197809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278148 (A001263 (3 * n + 4)).toNat * A278561 (n + 1)

end

end A278051.P13863544278773197809

/-!
# A278053: Primes p such that sigma(2^(p+1)) is prime.

The programs for A278053, there is no canonical definition to state claims against.
-/

/-! ## A278053.P2519437723481699142

`A297674(n+1)-2`
-/

namespace A278053.P2519437723481699142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297674 (n + 1) - 2

end

end A278053.P2519437723481699142

/-! ## A278053.P4756879705928864336

`A346645(lt[A085427(n), A135080(n+4)])-2`
-/

namespace A278053.P4756879705928864336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135080 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346645 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) - 2

end

end A278053.P4756879705928864336

/-! ## A278053.P11095847743879657439

`p?[A153798(n+1)]`
-/

namespace A278053.P11095847743879657439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278053.P11095847743879657439

/-! ## A278053.P1296781867179903689

`p?[∑[A134458(n+1)]]`
-/

namespace A278053.P1296781867179903689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134458 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278053.P1296781867179903689

/-! ## A278053.P15752459318404933967

`p?[A019280(n+1)-1]`
-/

namespace A278053.P15752459318404933967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019280 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278053.P15752459318404933967

/-!
# A278054: Primes p of the form sigma(2^(q+1)) for some prime q.

The programs for A278054, there is no canonical definition to state claims against.
-/

/-! ## A278054.P12946523866235056238

`A336719(Δ[round(ϕ*a(n-1))])` with `a(0)=10`
-/

namespace A278054.P12946523866235056238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336719 (f1 (n + 1) - f1 n).toNat

end

end A278054.P12946523866235056238

/-!
# A278055: Relative of Hofstadter Q-sequence: a(1) = 1, a(2) = 2, a(3) = 3, a(4) = 4, a(5) = 5; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) for n > 5.

The programs for A278055, the canonical program `A278055.P3711892257709780562` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278055 has offset 1).

The definition of A278055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` (program `A278055.P3711892257709780562`, by `A278055.P3711892257709780562.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278055.P3711892257709780562

`a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278055

/-- `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` -/
def P3711892257709780562.Spec : Prop :=
  ∀ n, (P3711892257709780562.a n : ℤ) = A278055 (n + 1)

theorem P3711892257709780562.correct : P3711892257709780562.Spec := by
  intro n
  simp only [A278055, Nat.add_sub_cancel]

end A278055

/-! ## A278055.P136841707700313858

`A303219(2*(n+1))/2`
-/

namespace A278055.P136841707700313858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303219 (2 * (n + 1)) : ℚ) / 2

end

end A278055.P136841707700313858

namespace A278055

/-- `A303219(2*(n+1))/2` -/
def P136841707700313858.Spec : Prop :=
  ∀ n, P136841707700313858.a n = (A278055 (n + 1) : ℚ)

end A278055

/-! ## A278055.P4199314691709554067

`∑[A303219(2*n+1)%2]`
-/

namespace A278055.P4199314691709554067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303219 (2 * n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278055.P4199314691709554067

namespace A278055

/-- `∑[A303219(2*n+1)%2]` -/
def P4199314691709554067.Spec : Prop :=
  ∀ n, P4199314691709554067.a n = A278055 (n + 1)

end A278055

/-! ## A278055.P1778989476956600178

`A004526(A303219(2*(n+1)))`
-/

namespace A278055.P1778989476956600178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A303219 (2 * (n + 1))).toNat

end

end A278055.P1778989476956600178

namespace A278055

/-- `A004526(A303219(2*(n+1)))` -/
def P1778989476956600178.Spec : Prop :=
  ∀ n, P1778989476956600178.a n = A278055 (n + 1)

end A278055

/-! ## A278055.P13816612980578583063

`A110654(A303219(2*n+1))`
-/

namespace A278055.P13816612980578583063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A303219 (2 * n + 1)).toNat

end

end A278055.P13816612980578583063

namespace A278055

/-- `A110654(A303219(2*n+1))` -/
def P13816612980578583063.Spec : Prop :=
  ∀ n, P13816612980578583063.a n = A278055 (n + 1)

end A278055

/-! ## A278055.P13092984342602380174

`∑[A303219(2*(n+1))-A303219(2*n+1)]`
-/

namespace A278055.P13092984342602380174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303219 (2 * (n + 1)) - A303219 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278055.P13092984342602380174

namespace A278055

/-- `∑[A303219(2*(n+1))-A303219(2*n+1)]` -/
def P13092984342602380174.Spec : Prop :=
  ∀ n, P13092984342602380174.a n = A278055 (n + 1)

end A278055

/-!
# A278056: Relative of Hofstadter Q-sequence: a(n) = n for 1 <= n <= 4; a(n) = a(n-a(n-1)) + a(n-a(n-2)) for n > 4.

The programs for A278056, the canonical program `A278056.P9875332430685057873` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278056 has offset 1).

The definition of A278056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))` (program `A278056.P9875332430685057873`, by `A278056.P9875332430685057873.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278056.P9875332430685057873

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278056

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P9875332430685057873.Spec : Prop :=
  ∀ n, (P9875332430685057873.a n : ℤ) = A278056 (n + 1)

theorem P9875332430685057873.correct : P9875332430685057873.Spec := by
  intro n
  simp only [A278056, Nat.add_sub_cancel]

end A278056

/-!
# A278057: Relative of Hofstadter Q-sequence: a(n) = n for 1 <= n <= 5; a(n) = a(n-a(n-1)) + a(n-a(n-2)) for n > 5.

The programs for A278057, the canonical program `A278057.P4427767784183965593` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278057 has offset 1).

The definition of A278057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))` (program `A278057.P4427767784183965593`, by `A278057.P4427767784183965593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278057.P4427767784183965593

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278057

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P4427767784183965593.Spec : Prop :=
  ∀ n, (P4427767784183965593.a n : ℤ) = A278057 (n + 1)

theorem P4427767784183965593.correct : P4427767784183965593.Spec := by
  intro n
  simp only [A278057, Nat.add_sub_cancel]

end A278057

/-!
# A278058: Relative of Hofstadter Q-sequence: a(n) = n for 1 <= n <= 6; a(n) = a(n-a(n-1)) + a(n-a(n-2)) for n > 6.

The programs for A278058, the canonical program `A278058.P1225699433556714006` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278058 has offset 1).

The definition of A278058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))` (program `A278058.P1225699433556714006`, by `A278058.P1225699433556714006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278058.P1225699433556714006

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278058

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P1225699433556714006.Spec : Prop :=
  ∀ n, (P1225699433556714006.a n : ℤ) = A278058 (n + 1)

theorem P1225699433556714006.correct : P1225699433556714006.Spec := by
  intro n
  simp only [A278058, Nat.add_sub_cancel]

end A278058

/-!
# A278059: Relative of Hofstadter Q-sequence: a(n) = n for 1 <= n <= 7; a(n) = a(n-a(n-1)) + a(n-a(n-2)) for n > 7.

The programs for A278059, the canonical program `A278059.P6723326280400251582` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278059 has offset 1).

The definition of A278059 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))` (program `A278059.P6723326280400251582`, by `A278059.P6723326280400251582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278059.P6723326280400251582

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278059

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P6723326280400251582.Spec : Prop :=
  ∀ n, (P6723326280400251582.a n : ℤ) = A278059 (n + 1)

theorem P6723326280400251582.correct : P6723326280400251582.Spec := by
  intro n
  simp only [A278059, Nat.add_sub_cancel]

end A278059

/-!
# A278061: Relative of Hofstadter Q-sequence: a(n) = n for 1 <= n <= 9; a(n) = a(n-a(n-1)) + a(n-a(n-2)) for n > 9.

The programs for A278061, the canonical program `A278061.P8486025985691595516` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278061 has offset 1).

The definition of A278061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))` (program `A278061.P8486025985691595516`, by `A278061.P8486025985691595516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278061.P8486025985691595516

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278061

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P8486025985691595516.Spec : Prop :=
  ∀ n, (P8486025985691595516.a n : ℤ) = A278061 (n + 1)

theorem P8486025985691595516.correct : P8486025985691595516.Spec := by
  intro n
  simp only [A278061, Nat.add_sub_cancel]

end A278061

/-!
# A278062: Relative of Hofstadter Q-sequence: a(n) = n for 1 <= n <= 10; a(n) = a(n-a(n-1)) + a(n-a(n-2)) for n > 10.

The programs for A278062, the canonical program `A278062.P11437066646631021109` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278062 has offset 1).

The definition of A278062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))` (program `A278062.P11437066646631021109`, by `A278062.P11437066646631021109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278062.P11437066646631021109

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9, a(9)=10`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278062

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P11437066646631021109.Spec : Prop :=
  ∀ n, (P11437066646631021109.a n : ℤ) = A278062 (n + 1)

theorem P11437066646631021109.correct : P11437066646631021109.Spec := by
  intro n
  simp only [A278062, Nat.add_sub_cancel]

end A278062

/-!
# A278066: Relative of Hofstadter Q-sequence: a(1) = 5, a(2) = 2; thereafter a(n) = a(n-a(n-1)) + a(n-a(n-2)).

The programs for A278066, there is no canonical definition to state claims against.
-/

/-! ## A278066.P1772149044302790495

`A001060(A213177(n)^A266724(n))`
-/

namespace A278066.P1772149044302790495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (SequenceMachineLib.roundAway ((A213177 n : ℚ) ^ (A266724 n : ℤ))).toNat

end

end A278066.P1772149044302790495

/-!
# A278067: Relative of Hofstadter Q-sequence: a(1) = 37, a(2) = 2; thereafter a(n) = a(n-a(n-1)) + a(n-a(n-2)).

The programs for A278067, there is no canonical definition to state claims against.
-/

/-! ## A278067.P18241093832495053781

`p?[a(n-2)-C(n, 37)]` with `a(0)=37, a(1)=2`
-/

namespace A278067.P18241093832495053781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [37, 2] fun n f1 =>
  f1 (n - 2) - (Nat.choose n 37 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278067.P18241093832495053781

/-! ## A278067.P13379510018811113470

`a(n-2)^C(n+1, 37)!` with `a(0)=37, a(1)=2`
-/

namespace A278067.P13379510018811113470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [37, 2] fun n a =>
  a (n - 2) ^ Nat.factorial (Nat.choose (n + 1) 37)

end

end A278067.P13379510018811113470

/-! ## A278067.P1633902146075370079

`A040387(A049453(n+4))-3`
-/

namespace A278067.P1633902146075370079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040387 (A049453 (n + 4)).toNat - 3

end

end A278067.P1633902146075370079

/-! ## A278067.P3550609677480201585

`A072597(3^A247477(3*n+5))`
-/

namespace A278067.P3550609677480201585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072597 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A247477 (3 * n + 5) : ℤ))).toNat

end

end A278067.P3550609677480201585

/-! ## A278067.P6698175469923384614

`A005117(A240993(gcd(n, a(n-1))))` with `a(0)=37`
-/

namespace A278067.P6698175469923384614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [37] fun n a =>
  A005117 (A240993 (Int.gcd (n : ℤ) (a (n - 1)))).toNat

end

end A278067.P6698175469923384614

/-!
# A278068: Relative of Hofstadter Q-sequence: a(1) = 57, a(2) = 2; thereafter a(n) = a(n-a(n-1)) + a(n-a(n-2)).

The programs for A278068, there is no canonical definition to state claims against.
-/

/-! ## A278068.P2770515628403633068

`60-A040818(3*(n+1)²)`
-/

namespace A278068.P2770515628403633068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 - A040818 (3 * (n + 1) ^ 2)

end

end A278068.P2770515628403633068

/-! ## A278068.P9811043759402067950

`a(n-2)%A254311(n+2)²` with `a(0)=57, a(1)=2`
-/

namespace A278068.P9811043759402067950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [57, 2] fun n a =>
  Int.tmod (a (n - 2)) (A254311 (n + 2) ^ 2)

end

end A278068.P9811043759402067950

/-! ## A278068.P7595393479319755315

`A040810(A106648(n))+1`
-/

namespace A278068.P7595393479319755315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040810 (A106648 n).toNat + 1

end

end A278068.P7595393479319755315

/-! ## A278068.P1266307700754164745

`A040810(A000567(n+2))+1`
-/

namespace A278068.P1266307700754164745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040810 (A000567 (n + 2)).toNat + 1

end

end A278068.P1266307700754164745

/-! ## A278068.P16474034980084031267

`A040811(∑[A345667(n+1)])+1`
-/

namespace A278068.P16474034980084031267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040811 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A278068.P16474034980084031267

/-! ## A278068.P2947005828911058435

`A040811(A274170(n+1)-n)+1`
-/

namespace A278068.P2947005828911058435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040811 (A274170 (n + 1) - (n : ℤ)).toNat + 1

end

end A278068.P2947005828911058435

/-! ## A278068.P6200546700780909952

`a(n-2)%A004396(A182205(n))` with `a(0)=57, a(1)=2`
-/

namespace A278068.P6200546700780909952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [57, 2] fun n a =>
  Int.tmod (a (n - 2)) (A004396 (A182205 n).toNat)

end

end A278068.P6200546700780909952

/-! ## A278068.P17143042209085312029

`(A040881(A106648(n))-3)*A001222(A060395(n))`
-/

namespace A278068.P17143042209085312029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040881 (A106648 n).toNat - 3) * A001222 (A060395 n).toNat

end

end A278068.P17143042209085312029

/-! ## A278068.P11247405425807536016

`a(n-2)*A014673(A130903(n+1))` with `a(0)=57, a(1)=2`
-/

namespace A278068.P11247405425807536016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [57, 2] fun n a =>
  a (n - 2) * A014673 (A130903 (n + 1)).toNat

end

end A278068.P11247405425807536016

/-!
# A278069: a(n) = hypergeometric([n, -n], [], 1).

The programs for A278069, the canonical program `A278069.P11052592645625032326` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278069 has offset 0).

The definition of A278069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278069.P11052592645625032326

`((2*n-1)*a(n-2)-8*(1+n*(n-2))*a(n-1))/(2*n-3)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278069

/-- `((2*n-1)*a(n-2)-8*(1+n*(n-2))*a(n-1))/(2*n-3)` -/
def P11052592645625032326.Spec : Prop :=
  ∀ n, P11052592645625032326.a n = (A278069 n : ℚ)

end A278069

/-! ## A278069.P10828520183935852149

`ceil(A336114(n)/A280560(n))`
-/

namespace A278069.P10828520183935852149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A336114 n : ℚ) / (A280560 n : ℚ)⌉

end

end A278069.P10828520183935852149

namespace A278069

/-- `ceil(A336114(n)/A280560(n))` -/
def P10828520183935852149.Spec : Prop :=
  ∀ n, P10828520183935852149.a n = A278069 n

end A278069

/-! ## A278069.P1125083166777466495

`A034947(n²+5)*A060475(2*n²)`
-/

namespace A278069.P1125083166777466495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n ^ 2 + 5) * A060475 (2 * n ^ 2)

end

end A278069.P1125083166777466495

namespace A278069

/-- `A034947(n²+5)*A060475(2*n²)` -/
def P1125083166777466495.Spec : Prop :=
  ∀ n, P1125083166777466495.a n = A278069 n

end A278069

/-! ## A278069.P9893694265688451644

`A033999(n)*A060475(A001105(n))`
-/

namespace A278069.P9893694265688451644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A060475 (A001105 n).toNat

end

end A278069.P9893694265688451644

namespace A278069

/-- `A033999(n)*A060475(A001105(n))` -/
def P9893694265688451644.Spec : Prop :=
  ∀ n, P9893694265688451644.a n = A278069 n

end A278069

/-!
# A278070: a(n) = hypergeometric([n, -n], [], -1).

The programs for A278070, there is no canonical definition to state claims against.
-/

/-! ## A278070.P8354311499930154260

`n*A371028(n)+1`
-/

namespace A278070.P8354311499930154260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A371028 n + 1

end

end A278070.P8354311499930154260

/-! ## A278070.P16389771800653617862

`A113873(abs(1-3*n))`
-/

namespace A278070.P16389771800653617862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113873 |1 - (3 * n : ℤ)|.toNat

end

end A278070.P16389771800653617862

/-! ## A278070.P16371453675618413544

`A006258((n+1)*round(sqrt(n²+1)))`
-/

namespace A278070.P16371453675618413544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006258 ((n + 1 : ℤ) * SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A278070.P16371453675618413544

/-! ## A278070.P9692105200982430106

`A143409(A004273(n²))`
-/

namespace A278070.P9692105200982430106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (A004273 (n ^ 2)).toNat

end

end A278070.P9692105200982430106

/-! ## A278070.P11150121877506550699

`A143409(A061579(2*n²))`
-/

namespace A278070.P11150121877506550699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (A061579 (2 * n ^ 2)).toNat

end

end A278070.P11150121877506550699

/-!
# A278071: Triangle read by rows, coefficients of the polynomials P(n,x) = (-1)^n*hypergeom( [n,-n], [], x), powers in descending order.

The programs for A278071, there is no canonical definition to state claims against.
-/

/-! ## A278071.P13940416274361646924

`A001147(A025581(n))*A204021(n)`
-/

namespace A278071.P13940416274361646924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A025581 n).toNat * A204021 n

end

end A278071.P13940416274361646924

/-! ## A278071.P1593362948973753831

`A021009(n)/A029653(n)*A092392(n)`
-/

namespace A278071.P1593362948973753831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021009 n : ℚ) / (A029653 n : ℚ) * (A092392 n : ℚ)

end

end A278071.P1593362948973753831

/-!
# A278072: Riordan array(1/(1+x), (1-sqrt(1-4*x))/(2*x)).

The programs for A278072, there is no canonical definition to state claims against.
-/

/-! ## A278072.P12449584857521873652

`A168377(A245300(n)+A002262(n))`
-/

namespace A278072.P12449584857521873652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168377 (A245300 n + A002262 n).toNat

end

end A278072.P12449584857521873652

/-!
# A278073: Triangle read by rows, coefficients of the polynomials P(m, n) = Sum_{k=1..n} binomial(m*n, m*k)* P(m, n-k)*z with P(m, 0) = 1 and m = 3.

The programs for A278073, there is no canonical definition to state claims against.
-/

/-! ## A278073.P10957278653338939716

`A233543(n)*A291451(n)`
-/

namespace A278073.P10957278653338939716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A291451 n

end

end A278073.P10957278653338939716

/-! ## A278073.P14662966969245540653

`A002262(n)!*A291451(n)`
-/

namespace A278073.P14662966969245540653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A291451 n

end

end A278073.P14662966969245540653

/-! ## A278073.P7317576089766490052

`A163351(n)!*A291451(n)`
-/

namespace A278073.P7317576089766490052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A163351 n).toNat : ℤ) * A291451 n

end

end A278073.P7317576089766490052

/-! ## A278073.P16596241103304225619

`A166352(n)!*A291451(n)`
-/

namespace A278073.P16596241103304225619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A166352 n).toNat : ℤ) * A291451 n

end

end A278073.P16596241103304225619

/-! ## A278073.P3579880603626829854

`A329221(n)!*A291451(n)`
-/

namespace A278073.P3579880603626829854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A329221 n).toNat : ℤ) * A291451 n

end

end A278073.P3579880603626829854

/-!
# A278074: Triangle read by rows, coefficients of the polynomials P(m, n) = Sum_{k=1..n} binomial(m*n, m*k)* P(m, n-k)*z with P(m, 0) = 1 and m = 4.

The programs for A278074, there is no canonical definition to state claims against.
-/

/-! ## A278074.P3536573698013296672

`A233543(n)*A291452(n)`
-/

namespace A278074.P3536573698013296672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A291452 n

end

end A278074.P3536573698013296672

/-! ## A278074.P11795655895740875144

`A002262(n)!*A291452(n)`
-/

namespace A278074.P11795655895740875144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A291452 n

end

end A278074.P11795655895740875144

/-! ## A278074.P3327805353324930676

`A163351(n)!*A291452(n)`
-/

namespace A278074.P3327805353324930676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A163351 n).toNat : ℤ) * A291452 n

end

end A278074.P3327805353324930676

/-! ## A278074.P1219181190012899908

`A166352(n)!*A291452(n)`
-/

namespace A278074.P1219181190012899908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A166352 n).toNat : ℤ) * A291452 n

end

end A278074.P1219181190012899908

/-! ## A278074.P6544767176264918487

`A329221(n)!*A291452(n)`
-/

namespace A278074.P6544767176264918487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A329221 n).toNat : ℤ) * A291452 n

end

end A278074.P6544767176264918487

/-!
# A278075: Coefficients of the signed Fubini polynomials in ascending order, F_n(x) = Sum_{k=0..n} (-1)^n*Stirling2(n,k)*k!*(-x)^k.

The programs for A278075, there is no canonical definition to state claims against.
-/

/-! ## A278075.P6922783104634905543

`A097807(n)*A131689(n)`
-/

namespace A278075.P6922783104634905543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A131689 n

end

end A278075.P6922783104634905543

/-! ## A278075.P12326854825334657695

`A009531(A099375(n))*A131689(n)`
-/

namespace A278075.P12326854825334657695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A131689 n

end

end A278075.P12326854825334657695

/-! ## A278075.P14141206336528996867

`A062157(A004736(n+1))*A131689(n)`
-/

namespace A278075.P14141206336528996867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A131689 n

end

end A278075.P14141206336528996867

/-! ## A278075.P2291144345356141729

`A033999(A004736(n+1)+1)*A131689(n)`
-/

namespace A278075.P2291144345356141729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004736 (n + 1) + 1).toNat * A131689 n

end

end A278075.P2291144345356141729

/-! ## A278075.P5544192875125355815

`A166350(n+1)/A140756(n+1)*A048993(n)`
-/

namespace A278075.P5544192875125355815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166350 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ) * (A048993 n : ℚ)

end

end A278075.P5544192875125355815

/-! ## A278075.P13685180941709267035

`A048594(n+1)/A028421(n)*A048993(n)`
-/

namespace A278075.P13685180941709267035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048594 (n + 1) : ℚ) / (A028421 n : ℚ) * (A048993 n : ℚ)

end

end A278075.P13685180941709267035

/-! ## A278075.P1612312264329848053

`A090657(n)/A130595(n)`
-/

namespace A278075.P1612312264329848053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 n : ℚ) / (A130595 n : ℚ)

end

end A278075.P1612312264329848053

/-! ## A278075.P5189114695944327396

`A008836(A130321(n))*A131689(n)`
-/

namespace A278075.P5189114695944327396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A131689 n

end

end A278075.P5189114695944327396

/-! ## A278075.P693731381513560895

`A380977(n+1)/A140756(n+1)`
-/

namespace A278075.P693731381513560895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380977 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)

end

end A278075.P693731381513560895

/-!
# A278076: Sums of finite subsequences of A280708.

The programs for A278076, there is no canonical definition to state claims against.
-/

/-! ## A278076.P13605967201174300904

`eq[1, Δ[A196082(n+1)]]`
-/

namespace A278076.P13605967201174300904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278076.P13605967201174300904

/-! ## A278076.P4880641971431029409

`eq[n, A196082(A196082(n+2))]`
-/

namespace A278076.P4880641971431029409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196082 (A196082 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278076.P4880641971431029409

/-! ## A278076.P4280680050068307250

`lt[A237120(n), A319289(A345913(n+4))]`
-/

namespace A278076.P4280680050068307250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319289 (A345913 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278076.P4280680050068307250

/-! ## A278076.P4546217352972660691

`A042948(lt[A346233(n), A005097(n+5)])`
-/

namespace A278076.P4546217352972660691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A278076.P4546217352972660691

/-! ## A278076.P10093507100159287011

`A042948(lt[A346233(n), A047300(n+1)])`
-/

namespace A278076.P10093507100159287011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A278076.P10093507100159287011

/-!
# A278078: a(n) is the number of composite numbers prime(n) dominates.

The programs for A278078, there is no canonical definition to state claims against.
-/

/-! ## A278078.P18380649744020889399

`floor(sqrt(p?[abs(2*n-3)]+1))-2`
-/

namespace A278078.P18380649744020889399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) - 2

end

end A278078.P18380649744020889399

/-! ## A278078.P11695305219400583457

`A338430(p?[xor(1, n)])`
-/

namespace A278078.P11695305219400583457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338430 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A278078.P11695305219400583457

/-! ## A278078.P12969170814697246863

`∑[char[A038107(n+3)]]`
-/

namespace A278078.P12969170814697246863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278078.P12969170814697246863

/-! ## A278078.P9016021648376233346

`∑[A061265(gcd(n, C(2, n)))]`
-/

namespace A278078.P9016021648376233346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061265 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278078.P9016021648376233346

/-! ## A278078.P1556512496256723577

`∑[char[A000720((n+3)²)]]`
-/

namespace A278078.P1556512496256723577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 3) ^ 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278078.P1556512496256723577

/-! ## A278078.P7315745948510393588

`floor(abs(A000006(n+1)-ϕ))`
-/

namespace A278078.P7315745948510393588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A000006 (n + 1) : ℝ) - Real.goldenRatio|⌋

end

end A278078.P7315745948510393588

/-! ## A278078.P17877681068522775039

`floor(abs(2-sqrt(A000040(n+1))))`
-/

namespace A278078.P17877681068522775039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|2 - Real.sqrt (A000040 (n + 1) : ℝ)|⌋

end

end A278078.P17877681068522775039

/-! ## A278078.P2931530453354935702

`A289207(A000006(n+1))`
-/

namespace A278078.P2931530453354935702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A000006 (n + 1)).toNat

end

end A278078.P2931530453354935702

/-! ## A278078.P7252756435940052976

`A338430(A000040(n+1))`
-/

namespace A278078.P7252756435940052976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338430 (A000040 (n + 1)).toNat

end

end A278078.P7252756435940052976

/-! ## A278078.P1779548209253285383

`A338430(A006005(n+1))`
-/

namespace A278078.P1779548209253285383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338430 (A006005 (n + 1)).toNat

end

end A278078.P1779548209253285383

/-!
# A278079: Expansion of e.g.f. (1/3!)*sin^3(x)/cos(x) (coefficients of odd powers only).

The programs for A278079, there is no canonical definition to state claims against.
-/

/-! ## A278079.P18372348588303823203

`abs(A009126(2*n+1)/3)`
-/

namespace A278079.P18372348588303823203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A009126 (2 * n + 1) : ℚ) / 3|

end

end A278079.P18372348588303823203

/-! ## A278079.P4465345677010703686

`A009126(2*n+1)/A174971(n)`
-/

namespace A278079.P4465345677010703686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009126 (2 * n + 1) : ℚ) / (A174971 n : ℚ)

end

end A278079.P4465345677010703686

/-! ## A278079.P15899671140796977256

`(A000182(n+1)-A262710(n))/6`
-/

namespace A278079.P15899671140796977256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000182 (n + 1) - A262710 n : ℚ) / 6

end

end A278079.P15899671140796977256

/-!
# A278080: Expansion of e.g.f. (1/4!)*sin^4(x)/cos(x) (coefficients of even powers only).

The programs for A278080, there is no canonical definition to state claims against.
-/

/-! ## A278080.P1292562455682948089

`A130415(A041459(n))`
-/

namespace A278080.P1292562455682948089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130415 (A041459 n).toNat

end

end A278080.P1292562455682948089

/-!
# A278081: a(n) is 1/12 of the number of primitive quadruples with sum = 0 and sum of squares = 2*m^2, where m = 2*n - 1.

The programs for A278081, there is no canonical definition to state claims against.
-/

/-! ## A278081.P5677060673170199141

`A088965(Δ[n²])`
-/

namespace A278081.P5677060673170199141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088965 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278081.P5677060673170199141

/-! ## A278081.P18095080021914640912

`A089002(Δ[n²])`
-/

namespace A278081.P18095080021914640912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089002 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278081.P18095080021914640912

/-! ## A278081.P16726198195892589649

`A395769(Δ[n²])`
-/

namespace A278081.P16726198195892589649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395769 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278081.P16726198195892589649

/-! ## A278081.P14903291241955165097

`A088965(A016825(n))/2`
-/

namespace A278081.P14903291241955165097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088965 (A016825 n).toNat : ℚ) / 2

end

end A278081.P14903291241955165097

/-! ## A278081.P4262396117180975651

`A088965(2*A005408(n))/2`
-/

namespace A278081.P4262396117180975651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088965 (2 * A005408 n).toNat : ℚ) / 2

end

end A278081.P4262396117180975651

/-! ## A278081.P16492266582045913330

`A089002(2*A005408(n))/2`
-/

namespace A278081.P16492266582045913330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089002 (2 * A005408 n).toNat : ℚ) / 2

end

end A278081.P16492266582045913330

/-! ## A278081.P14988939225954164106

`A029578(A088965(2*n+1)+1)`
-/

namespace A278081.P14988939225954164106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A088965 (2 * n + 1) + 1).toNat

end

end A278081.P14988939225954164106

/-! ## A278081.P12225418170170777771

`filter[A088965(2*n+1), A135528(#)]`
-/

namespace A278081.P12225418170170777771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088965 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A278081.P12225418170170777771

/-! ## A278081.P5018686261900262364

`filter[A089002(2*n+1), A135528(#)]`
-/

namespace A278081.P5018686261900262364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089002 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A278081.P5018686261900262364

/-! ## A278081.P10240894601183168755

`filter[A088965(2*n+1), A266591(#)]`
-/

namespace A278081.P10240894601183168755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088965 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A278081.P10240894601183168755

/-! ## A278081.P11369992429725342998

`filter[A089002(2*n+1), A266591(#)]`
-/

namespace A278081.P11369992429725342998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089002 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A278081.P11369992429725342998

/-! ## A278081.P4851102452646831645

`filter[A088965(2*n+1), A267773(#)]`
-/

namespace A278081.P4851102452646831645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088965 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A278081.P4851102452646831645

/-! ## A278081.P17079768534723113264

`filter[A089002(2*n+1), A267773(#)]`
-/

namespace A278081.P17079768534723113264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089002 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A278081.P17079768534723113264

/-! ## A278081.P3699197881882878143

`filter[A088965(2*n+1), A285384(#)]`
-/

namespace A278081.P3699197881882878143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088965 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285384 (f1 j).toNat = 1) n)

end

end A278081.P3699197881882878143

/-! ## A278081.P12140140695649565060

`filter[A089002(2*n+1), A285384(#)]`
-/

namespace A278081.P12140140695649565060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089002 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285384 (f1 j).toNat = 1) n)

end

end A278081.P12140140695649565060

/-! ## A278081.P14612407268601291525

`filter[A088965(2*n+1), A285518(#)]`
-/

namespace A278081.P14612407268601291525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088965 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285518 (f1 j).toNat = 1) n)

end

end A278081.P14612407268601291525

/-! ## A278081.P17368633360444279297

`filter[A089002(2*n+1), A285518(#)]`
-/

namespace A278081.P17368633360444279297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089002 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285518 (f1 j).toNat = 1) n)

end

end A278081.P17368633360444279297

/-! ## A278081.P2856182061018553118

`filter[A088965(2*n+1), A285599(#)]`
-/

namespace A278081.P2856182061018553118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088965 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285599 (f1 j).toNat = 1) n)

end

end A278081.P2856182061018553118

/-! ## A278081.P13493085707327699619

`filter[A089002(2*n+1), A285599(#)]`
-/

namespace A278081.P13493085707327699619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089002 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285599 (f1 j).toNat = 1) n)

end

end A278081.P13493085707327699619

/-! ## A278081.P13883700110083304132

`filter[A088965(2*n+1), A285668(#)]`
-/

namespace A278081.P13883700110083304132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088965 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285668 (f1 j).toNat = 1) n)

end

end A278081.P13883700110083304132

/-!
# A278083: a(n) is 1/6 of the number of primitive integral quadruples with sum = 2*m and sum of squares = 2*m^2, where m = 2*n-1.

The programs for A278083, the canonical program `A278083.P13856348263400599348` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278083 has offset 1).

The definition of A278083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278083.P13856348263400599348

`A060968(Δ[n²])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A278083

/-- `A060968(Δ[n²])` -/
def P13856348263400599348.Spec : Prop :=
  ∀ n, P13856348263400599348.a n = A278083 (n + 1)

theorem P13856348263400599348.correct : P13856348263400599348.Spec := by
  intro n
  simp only [A278083, Nat.add_sub_cancel]

end A278083

/-! ## A278083.P5710982719783211427

`A086932(Δ[n²])`
-/

namespace A278083.P5710982719783211427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086932 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278083.P5710982719783211427

namespace A278083

/-- `A086932(Δ[n²])` -/
def P5710982719783211427.Spec : Prop :=
  ∀ n, P5710982719783211427.a n = A278083 (n + 1)

end A278083

/-! ## A278083.P1066563752053553812

`A204617(Δ[n²])`
-/

namespace A278083.P1066563752053553812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204617 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278083.P1066563752053553812

namespace A278083

/-- `A204617(Δ[n²])` -/
def P1066563752053553812.Spec : Prop :=
  ∀ n, P1066563752053553812.a n = A278083 (n + 1)

end A278083

/-! ## A278083.P9636438411195525597

`A395768(Δ[n²])`
-/

namespace A278083.P9636438411195525597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395768 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278083.P9636438411195525597

namespace A278083

/-- `A395768(Δ[n²])` -/
def P9636438411195525597.Spec : Prop :=
  ∀ n, P9636438411195525597.a n = A278083 (n + 1)

end A278083

/-! ## A278083.P12909942209544723235

`A096445(4*n+2)`
-/

namespace A278083.P12909942209544723235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096445 (4 * n + 2)

end

end A278083.P12909942209544723235

namespace A278083

/-- `A096445(4*n+2)` -/
def P12909942209544723235.Spec : Prop :=
  ∀ n, P12909942209544723235.a n = A278083 (n + 1)

end A278083

/-! ## A278083.P7508409947041327771

`A049319(n+1)/6`
-/

namespace A278083.P7508409947041327771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049319 (n + 1) : ℚ) / 6

end

end A278083.P7508409947041327771

namespace A278083

/-- `A049319(n+1)/6` -/
def P7508409947041327771.Spec : Prop :=
  ∀ n, P7508409947041327771.a n = (A278083 (n + 1) : ℚ)

end A278083

/-! ## A278083.P8599393620151875321

`A008615(A049319(n+1))`
-/

namespace A278083.P8599393620151875321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A049319 (n + 1)).toNat

end

end A278083.P8599393620151875321

namespace A278083

/-- `A008615(A049319(n+1))` -/
def P8599393620151875321.Spec : Prop :=
  ∀ n, P8599393620151875321.a n = A278083 (n + 1)

end A278083

/-! ## A278083.P10214964693566877777

`A060968(A008586(n)+2)/2`
-/

namespace A278083.P10214964693566877777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060968 (A008586 n + 2).toNat : ℚ) / 2

end

end A278083.P10214964693566877777

namespace A278083

/-- `A060968(A008586(n)+2)/2` -/
def P10214964693566877777.Spec : Prop :=
  ∀ n, P10214964693566877777.a n = (A278083 (n + 1) : ℚ)

end A278083

/-! ## A278083.P7926128084900233416

`A086932(A008586(n)+2)/2`
-/

namespace A278083.P7926128084900233416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086932 (A008586 n + 2).toNat : ℚ) / 2

end

end A278083.P7926128084900233416

namespace A278083

/-- `A086932(A008586(n)+2)/2` -/
def P7926128084900233416.Spec : Prop :=
  ∀ n, P7926128084900233416.a n = (A278083 (n + 1) : ℚ)

end A278083

/-! ## A278083.P16242862400736682528

`A060968(2*A005408(n))/2`
-/

namespace A278083.P16242862400736682528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060968 (2 * A005408 n).toNat : ℚ) / 2

end

end A278083.P16242862400736682528

namespace A278083

/-- `A060968(2*A005408(n))/2` -/
def P16242862400736682528.Spec : Prop :=
  ∀ n, P16242862400736682528.a n = (A278083 (n + 1) : ℚ)

end A278083

/-! ## A278083.P663217558930742582

`A079458(2*n+1)/A037225(n)`
-/

namespace A278083.P663217558930742582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (2 * n + 1) : ℚ) / (A037225 n : ℚ)

end

end A278083.P663217558930742582

namespace A278083

/-- `A079458(2*n+1)/A037225(n)` -/
def P663217558930742582.Spec : Prop :=
  ∀ n, P663217558930742582.a n = (A278083 (n + 1) : ℚ)

end A278083

/-! ## A278083.P8723223716276380582

`filter[A060968(2*n+1), A005171(#)]`
-/

namespace A278083.P8723223716276380582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A278083.P8723223716276380582

namespace A278083

/-- `filter[A060968(2*n+1), A005171(#)]` -/
def P8723223716276380582.Spec : Prop :=
  ∀ n, P8723223716276380582.a n = A278083 (n + 1)

end A278083

/-! ## A278083.P15399693387925394719

`filter[A060968(2*n+1), A014577(#)]`
-/

namespace A278083.P15399693387925394719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A278083.P15399693387925394719

namespace A278083

/-- `filter[A060968(2*n+1), A014577(#)]` -/
def P15399693387925394719.Spec : Prop :=
  ∀ n, P15399693387925394719.a n = A278083 (n + 1)

end A278083

/-! ## A278083.P11398765235165662989

`filter[A086932(2*n+1), A005171(#)]`
-/

namespace A278083.P11398765235165662989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086932 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A278083.P11398765235165662989

namespace A278083

/-- `filter[A086932(2*n+1), A005171(#)]` -/
def P11398765235165662989.Spec : Prop :=
  ∀ n, P11398765235165662989.a n = A278083 (n + 1)

end A278083

/-! ## A278083.P168089212482226012

`filter[A060968(2*n+1), A039963(#)]`
-/

namespace A278083.P168089212482226012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039963 (f1 j).toNat = 1) n)

end

end A278083.P168089212482226012

namespace A278083

/-- `filter[A060968(2*n+1), A039963(#)]` -/
def P168089212482226012.Spec : Prop :=
  ∀ n, P168089212482226012.a n = A278083 (n + 1)

end A278083

/-! ## A278083.P12187476771493462862

`filter[A086932(2*n+1), A014577(#)]`
-/

namespace A278083.P12187476771493462862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086932 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A278083.P12187476771493462862

namespace A278083

/-- `filter[A086932(2*n+1), A014577(#)]` -/
def P12187476771493462862.Spec : Prop :=
  ∀ n, P12187476771493462862.a n = A278083 (n + 1)

end A278083

/-! ## A278083.P14174608939126677324

`filter[A086932(2*n+1), A039963(#)]`
-/

namespace A278083.P14174608939126677324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086932 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039963 (f1 j).toNat = 1) n)

end

end A278083.P14174608939126677324

namespace A278083

/-- `filter[A086932(2*n+1), A039963(#)]` -/
def P14174608939126677324.Spec : Prop :=
  ∀ n, P14174608939126677324.a n = A278083 (n + 1)

end A278083

/-! ## A278083.P8713905351615933245

`filter[A060968(2*n+1), A087049(#)]`
-/

namespace A278083.P8713905351615933245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A278083.P8713905351615933245

namespace A278083

/-- `filter[A060968(2*n+1), A087049(#)]` -/
def P8713905351615933245.Spec : Prop :=
  ∀ n, P8713905351615933245.a n = A278083 (n + 1)

end A278083

/-! ## A278083.P2340293060301831704

`filter[A060968(2*n+1), A093521(#)]`
-/

namespace A278083.P2340293060301831704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A278083.P2340293060301831704

namespace A278083

/-- `filter[A060968(2*n+1), A093521(#)]` -/
def P2340293060301831704.Spec : Prop :=
  ∀ n, P2340293060301831704.a n = A278083 (n + 1)

end A278083

/-! ## A278083.P2773338553507573630

`filter[A060968(2*n+1), A105234(#)]`
-/

namespace A278083.P2773338553507573630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A278083.P2773338553507573630

namespace A278083

/-- `filter[A060968(2*n+1), A105234(#)]` -/
def P2773338553507573630.Spec : Prop :=
  ∀ n, P2773338553507573630.a n = A278083 (n + 1)

end A278083

/-!
# A278084: a(n) is 1/24 of the number of primitive integral quadruples with sum = 2*m and sum of squares = 6*m^2, where m = 2*n-1.

The programs for A278084, there is no canonical definition to state claims against.
-/

/-! ## A278084.P11927623000185215422

`A395775(Δ[n²])`
-/

namespace A278084.P11927623000185215422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395775 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278084.P11927623000185215422

/-! ## A278084.P3483142267576104467

`filter[A395775(2*n+1), A267773(#)]`
-/

namespace A278084.P3483142267576104467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395775 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A278084.P3483142267576104467

/-! ## A278084.P3112615198064686101

`filter[A395775(2*n+1), A285668(#)]`
-/

namespace A278084.P3112615198064686101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395775 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285668 (f1 j).toNat = 1) n)

end

end A278084.P3112615198064686101

/-! ## A278084.P8284289734747839410

`A395775(2*n+1)+A101455(2*n)`
-/

namespace A278084.P8284289734747839410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395775 (2 * n + 1) + A101455 (2 * n)

end

end A278084.P8284289734747839410

/-! ## A278084.P13691421231993589071

`A395775(2*n+1)+A109017(2*n)`
-/

namespace A278084.P13691421231993589071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395775 (2 * n + 1) + A109017 (2 * n)

end

end A278084.P13691421231993589071

/-! ## A278084.P1289492540484181976

`A395775(2*n+1)+A134667(2*n)`
-/

namespace A278084.P1289492540484181976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395775 (2 * n + 1) + A134667 (2 * n)

end

end A278084.P1289492540484181976

/-! ## A278084.P11682113642304915311

`A395775(2*n+1)+A188510(2*n)`
-/

namespace A278084.P11682113642304915311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395775 (2 * n + 1) + A188510 (2 * n)

end

end A278084.P11682113642304915311

/-! ## A278084.P11180170778322473576

`A395775(2*n+1)+A289741(2*n)`
-/

namespace A278084.P11180170778322473576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395775 (2 * n + 1) + A289741 (2 * n)

end

end A278084.P11180170778322473576

/-! ## A278084.P10027265572856283081

`filter[A395775(2*n+1), A289748(#)]`
-/

namespace A278084.P10027265572856283081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395775 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289748 (f1 j).toNat = 1) n)

end

end A278084.P10027265572856283081

/-!
# A278085: 1/4 of the number of primitive integral quadruples with sum = 3*n and sum of squares = 3*n^2.

The programs for A278085, the canonical program `A278085.P490881361197768056` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278085 has offset 1).

The definition of A278085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278085.P490881361197768056

`∑{d}[n+1, A193356(#)*A365428((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A278085

/-- `∑{d}[n+1, A193356(#)*A365428((n+1)/#)]` -/
def P490881361197768056.Spec : Prop :=
  ∀ n, P490881361197768056.a n = A278085 (n + 1)

theorem P490881361197768056.correct : P490881361197768056.Spec := by
  intro n
  simp only [A278085, Nat.add_sub_cancel]

end A278085

/-! ## A278085.P7508738851400460568

`A129576(A132890(n+1)*A274230(n))`
-/

namespace A278085.P7508738851400460568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129576 (A132890 (n + 1) * A274230 n).toNat

end

end A278085.P7508738851400460568

namespace A278085

/-- `A129576(A132890(n+1)*A274230(n))` -/
def P7508738851400460568.Spec : Prop :=
  ∀ n, P7508738851400460568.a n = A278085 (n + 1)

end A278085

/-!
# A278086: 1/12 of the number of integer quadruples with sum = 3*n and sum of squares = 7*n^2.

The programs for A278086, there is no canonical definition to state claims against.
-/

/-! ## A278086.P8719877998831423422

`lcm(A010156(A001519(n)), A319997(n+1))`
-/

namespace A278086.P8719877998831423422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010156 (A001519 n).toNat) (A319997 (n + 1))

end

end A278086.P8719877998831423422

/-!
# A278087: Number of n X n 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0), (-1,1), (0,-1), (0,1) or (1,0), with upper left element zero.

The programs for A278087, there is no canonical definition to state claims against.
-/

/-! ## A278087.P5993397317878111342

`A278094(∑[4*n]+1)`
-/

namespace A278087.P5993397317878111342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278087.P5993397317878111342

/-! ## A278087.P17866513299289447334

`lcm(2, A278094(A001844(n)))`
-/

namespace A278087.P17866513299289447334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A278094 (A001844 n).toNat)

end

end A278087.P17866513299289447334

/-! ## A278087.P462492818995115640

`record[A003982(n)*A278094(n+1)]`
-/

namespace A278087.P462492818995115640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A278094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278087.P462492818995115640

/-! ## A278087.P3945256092969515146

`record[A214505(n)*A278094(n+1)]`
-/

namespace A278087.P3945256092969515146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A278094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278087.P3945256092969515146

/-! ## A278087.P15177273732276084348

`record[lcm(A185917(n+1), A278094(n+1))]`
-/

namespace A278087.P15177273732276084348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A185917 (n + 1)) (A278094 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278087.P15177273732276084348

/-!
# A278088: Number of n X 2 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278088, the canonical program `A278088.P16670035884971470006` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278088 has offset 1).

The definition of A278088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278088.P15210207714560789994

`ogf((-2x-x^2+x^3+x^4)/(-1+x+4x^2+3x^3))`
-/

namespace A278088.P15210207714560789994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, -1, -1] [1, -1, -4, -3] n

end

end A278088.P15210207714560789994

namespace A278088

/-- `ogf((-2x-x^2+x^3+x^4)/(-1+x+4x^2+3x^3))` -/
def P15210207714560789994.Spec : Prop :=
  ∀ n, P15210207714560789994.a n = A278088 (n + 1)

end A278088

/-! ## A278088.P16670035884971470006

`a(n-1)+4*a(n-2)+3*a(n-3)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=10, a(4)=27`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278088

/-- `a(n-1)+4*a(n-2)+3*a(n-3)` -/
def P16670035884971470006.Spec : Prop :=
  ∀ n, (P16670035884971470006.a n : ℤ) = A278088 (n + 1)

theorem P16670035884971470006.correct : P16670035884971470006.Spec := by
  intro n
  simp only [A278088, Nat.add_sub_cancel]

end A278088

/-! ## A278088.P2790174445759212184

`A278094(∑[n+1]+2)`
-/

namespace A278088.P2790174445759212184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278088.P2790174445759212184

namespace A278088

/-- `A278094(∑[n+1]+2)` -/
def P2790174445759212184.Spec : Prop :=
  ∀ n, P2790174445759212184.a n = A278088 (n + 1)

end A278088

/-! ## A278088.P8110024700354386291

`record[A278094(gcd(n+2, A141169(n)))]`
-/

namespace A278088.P8110024700354386291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (Int.gcd (n + 2 : ℤ) (A141169 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278088.P8110024700354386291

namespace A278088

/-- `record[A278094(gcd(n+2, A141169(n)))]` -/
def P8110024700354386291.Spec : Prop :=
  ∀ n, P8110024700354386291.a n = A278088 (n + 1)

end A278088

/-! ## A278088.P12465761681943741413

`record[A278094(A133263(A025480(n)))]`
-/

namespace A278088.P12465761681943741413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (A133263 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278088.P12465761681943741413

namespace A278088

/-- `record[A278094(A133263(A025480(n)))]` -/
def P12465761681943741413.Spec : Prop :=
  ∀ n, P12465761681943741413.a n = A278088 (n + 1)

end A278088

/-!
# A278089: Number of n X 3 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278089, there is no canonical definition to state claims against.
-/

/-! ## A278089.P6604394770310743021

`A278094(∑[n+2]+4)`
-/

namespace A278089.P6604394770310743021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278089.P6604394770310743021

/-! ## A278089.P11031905509790467232

`record[A010054(n)*A278094(n+3)]`
-/

namespace A278089.P11031905509790467232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A278094 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278089.P11031905509790467232

/-! ## A278089.P7737840495492565017

`A178334(n)*A278094(A167614(n+1))`
-/

namespace A278089.P7737840495492565017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A278094 (A167614 (n + 1)).toNat

end

end A278089.P7737840495492565017

/-! ## A278089.P17778691065193303752

`A278094(A167614(n+1))%A057089(n)`
-/

namespace A278089.P17778691065193303752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278094 (A167614 (n + 1)).toNat) (A057089 n)

end

end A278089.P17778691065193303752

/-! ## A278089.P7192636721241122903

`lcm(A033999(n), A278094(A167614(n+1)))`
-/

namespace A278089.P7192636721241122903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A278094 (A167614 (n + 1)).toNat)

end

end A278089.P7192636721241122903

/-!
# A278090: Number of nX4 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278090, there is no canonical definition to state claims against.
-/

/-! ## A278090.P10165567610868229077

`A278094(A374004(n+1))`
-/

namespace A278090.P10165567610868229077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (A374004 (n + 1)).toNat

end

end A278090.P10165567610868229077

/-! ## A278090.P13288980153264387835

`A278094(A141214(n)+7)`
-/

namespace A278090.P13288980153264387835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (A141214 n + 7).toNat

end

end A278090.P13288980153264387835

/-! ## A278090.P15839241211808452273

`A278094(A167614(n+2)+1)`
-/

namespace A278090.P15839241211808452273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (A167614 (n + 2) + 1).toNat

end

end A278090.P15839241211808452273

/-! ## A278090.P13677759846936027121

`A278094(Δ[A264443(n)-n²])`
-/

namespace A278090.P13677759846936027121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (f1 (n + 1) - f1 n).toNat

end

end A278090.P13677759846936027121

/-! ## A278090.P4989956976651947436

`A278094(Δ[A023545(n+1)-n²])`
-/

namespace A278090.P4989956976651947436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (f1 (n + 1) - f1 n).toNat

end

end A278090.P4989956976651947436

/-!
# A278091: Number of nX5 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278091, there is no canonical definition to state claims against.
-/

/-! ## A278091.P7006896593929788355

`A278094(A374005(n+1))`
-/

namespace A278091.P7006896593929788355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (A374005 (n + 1)).toNat

end

end A278091.P7006896593929788355

/-! ## A278091.P17013282520112494547

`A278094(A056000(n)+15)`
-/

namespace A278091.P17013282520112494547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (A056000 n + 15).toNat

end

end A278091.P17013282520112494547

/-! ## A278091.P10232341647055690619

`A278094(eq[6, A004736(n+1)]-2*n)`
-/

namespace A278091.P10232341647055690619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A278091.P10232341647055690619

/-! ## A278091.P3046353282116144260

`A278094(Δ[A264443(n)])`
-/

namespace A278091.P3046353282116144260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (f1 (n + 1) - f1 n).toNat

end

end A278091.P3046353282116144260

/-! ## A278091.P12566503707400411510

`A278094(eq[4, A193592(n)])`
-/

namespace A278091.P12566503707400411510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278091.P12566503707400411510

/-!
# A278092: Number of nX6 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278092, there is no canonical definition to state claims against.
-/

/-! ## A278092.P2650041600684193272

`A278094(A374007(n+1))`
-/

namespace A278092.P2650041600684193272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (A374007 (n + 1)).toNat

end

end A278092.P2650041600684193272

/-! ## A278092.P12857274375945505210

`A278094(eq[7, A131818(n+1)])`
-/

namespace A278092.P12857274375945505210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278092.P12857274375945505210

/-! ## A278092.P6418314572350641220

`A278094(eq[3, A219347(n)])`
-/

namespace A278092.P6418314572350641220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278092.P6418314572350641220

/-! ## A278092.P5049791616071445280

`A278094(eq[5, A193592(n)])`
-/

namespace A278092.P5049791616071445280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278092.P5049791616071445280

/-! ## A278092.P11676086187159475750

`A278094(eq[16, A057728(n+1)])`
-/

namespace A278092.P11676086187159475750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278092.P11676086187159475750

/-!
# A278093: Number of n X 7 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278093, there is no canonical definition to state claims against.
-/

/-! ## A278093.P18386431366162447510

`A278094(A374008(n+1))`
-/

namespace A278093.P18386431366162447510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (A374008 (n + 1)).toNat

end

end A278093.P18386431366162447510

/-! ## A278093.P17666060818888828385

`A278094(eq[8, A131818(n+1)])`
-/

namespace A278093.P17666060818888828385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278093.P17666060818888828385

/-! ## A278093.P18206458191195085362

`A278094(eq[4, A219347(n)])`
-/

namespace A278093.P18206458191195085362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278093.P18206458191195085362

/-! ## A278093.P14208212519583275480

`A278094(eq[6, A193592(n)])`
-/

namespace A278093.P14208212519583275480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278093.P14208212519583275480

/-! ## A278093.P15024110158378166466

`A278094(eq[10, A185782(n+1)])`
-/

namespace A278093.P15024110158378166466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278093.P15024110158378166466

/-!
# A278094: T(n,k)=Number of nXk 0..1 arrays with every element both equal and not equal to some elements at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278094, there is no canonical definition to state claims against.
-/

/-! ## A278094.P7141074885903046846

`and(27, A127944(A168549(n)))`
-/

namespace A278094.P7141074885903046846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 27 (A127944 (A168549 n).toNat)

end

end A278094.P7141074885903046846

/-! ## A278094.P925655756456539955

`A095243(A000032(A007318(n))+1)`
-/

namespace A278094.P925655756456539955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095243 (A000032 (A007318 n).toNat + 1).toNat

end

end A278094.P925655756456539955

/-! ## A278094.P9330666952161389064

`A296082(A342891(n))+A014473(n)`
-/

namespace A278094.P9330666952161389064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296082 (A342891 n).toNat + A014473 n

end

end A278094.P9330666952161389064

/-!
# A278095: Number of n X 2 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278095, there is no canonical definition to state claims against.
-/

/-! ## A278095.P9593547116225730055

`A278099(∑[n+1]+2)`
-/

namespace A278095.P9593547116225730055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278099 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278095.P9593547116225730055

/-! ## A278095.P8311767926180403773

`record[A278099(A278512(n+1))]`
-/

namespace A278095.P8311767926180403773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278099 (A278512 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278095.P8311767926180403773

/-! ## A278095.P8713362149564303745

`record[A278099(n+2)/A008300(n)]`
-/

namespace A278095.P8713362149564303745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278099 (n + 2) : ℚ) / (A008300 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278095.P8713362149564303745

/-! ## A278095.P8591658071459289141

`record[A278099(n+2)/A156584(n)]`
-/

namespace A278095.P8591658071459289141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278099 (n + 2) : ℚ) / (A156584 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278095.P8591658071459289141

/-! ## A278095.P12492050308971071320

`record[gcd(A263764(n+1), A278099(n+1))]`
-/

namespace A278095.P12492050308971071320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A263764 (n + 1)) (A278099 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278095.P12492050308971071320

/-!
# A278096: Number of n X 3 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278096, there is no canonical definition to state claims against.
-/

/-! ## A278096.P9076231569105824585

`A278099(∑[n+2]+4)`
-/

namespace A278096.P9076231569105824585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278099 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278096.P9076231569105824585

/-! ## A278096.P16341310990711957810

`record[A278099(A278512(2*n+1))]`
-/

namespace A278096.P16341310990711957810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278099 (A278512 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278096.P16341310990711957810

/-! ## A278096.P7282709656117789913

`A178334(n)*A278099(A167614(n+1))`
-/

namespace A278096.P7282709656117789913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A278099 (A167614 (n + 1)).toNat

end

end A278096.P7282709656117789913

/-! ## A278096.P12661041586997183630

`lcm(A129104(n), A278099(A167614(n+1)))`
-/

namespace A278096.P12661041586997183630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129104 n) (A278099 (A167614 (n + 1)).toNat)

end

end A278096.P12661041586997183630

/-! ## A278096.P14299262080246609484

`A278099(A167614(n+1))%A257419(n+1)`
-/

namespace A278096.P14299262080246609484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278099 (A167614 (n + 1)).toNat) (A257419 (n + 1))

end

end A278096.P14299262080246609484

/-!
# A278097: Number of nX4 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278097, there is no canonical definition to state claims against.
-/

/-! ## A278097.P400345348752602458

`A278099(A374004(n+1))`
-/

namespace A278097.P400345348752602458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278099 (A374004 (n + 1)).toNat

end

end A278097.P400345348752602458

/-! ## A278097.P3431074937828624164

`A278099(A052905(n)+9)`
-/

namespace A278097.P3431074937828624164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278099 (A052905 n + 9).toNat

end

end A278097.P3431074937828624164

/-! ## A278097.P10375576685525910683

`A278099(A167614(n+2)+1)`
-/

namespace A278097.P10375576685525910683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278099 (A167614 (n + 2) + 1).toNat

end

end A278097.P10375576685525910683

/-! ## A278097.P6664565798371700016

`A278099(eq[5, A131818(n+1)])`
-/

namespace A278097.P6664565798371700016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278097.P6664565798371700016

/-! ## A278097.P3646233325699658265

`A278099(A141214(n+1))`
-/

namespace A278097.P3646233325699658265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278099 (A141214 (n + 1)).toNat

end

end A278097.P3646233325699658265

/-!
# A278098: Number of nX5 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278098, there is no canonical definition to state claims against.
-/

/-! ## A278098.P15218485470060767003

`A278099(A374005(n+1))`
-/

namespace A278098.P15218485470060767003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278099 (A374005 (n + 1)).toNat

end

end A278098.P15218485470060767003

/-! ## A278098.P4870525231683895439

`A278099(A155212(n)+13)`
-/

namespace A278098.P4870525231683895439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278099 (A155212 n + 13).toNat

end

end A278098.P4870525231683895439

/-! ## A278098.P8130784451175918983

`A278099(A056000(n)+15)`
-/

namespace A278098.P8130784451175918983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278099 (A056000 n + 15).toNat

end

end A278098.P8130784451175918983

/-! ## A278098.P14410301691482016373

`A278099(eq[7, A066657(n)])`
-/

namespace A278098.P14410301691482016373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278098.P14410301691482016373

/-! ## A278098.P6588220905905508216

`A278099(eq[6, A131818(n+1)])`
-/

namespace A278098.P6588220905905508216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278098.P6588220905905508216

/-!
# A278099: T(n,k)=Number of nXk 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278099, there is no canonical definition to state claims against.
-/

/-! ## A278099.P15161972046983942077

`A301176(A116391(n))%A156586(n)`
-/

namespace A278099.P15161972046983942077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301176 (A116391 n).toNat) (A156586 n)

end

end A278099.P15161972046983942077

/-! ## A278099.P12062615840340557603

`A059097(A157179(n))`
-/

namespace A278099.P12062615840340557603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059097 (A157179 n).toNat

end

end A278099.P12062615840340557603

/-! ## A278099.P15152782839486426955

`A162733(A059328(n))`
-/

namespace A278099.P15152782839486426955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162733 (A059328 n).toNat

end

end A278099.P15152782839486426955

/-! ## A278099.P13515744996080140567

`A023566(A209330(n))`
-/

namespace A278099.P13515744996080140567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023566 (A209330 n).toNat

end

end A278099.P13515744996080140567

/-! ## A278099.P5832021232360005042

`A205805(A045912(n))`
-/

namespace A278099.P5832021232360005042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205805 (A045912 n).toNat

end

end A278099.P5832021232360005042

