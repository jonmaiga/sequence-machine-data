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
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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

/-!
# A085800: Maximal number of zeros in a row of the character table of the symmetric group S_n.

The programs for A085800, there is no canonical definition to state claims against.
-/

/-! ## A085800.P16268643308879003349

`A002265(eq[A347957(n+1), A347970(n)])`
-/

namespace A085800.P16268643308879003349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A085800.P16268643308879003349

/-!
# A085801: Maximum number of nonattacking queens on an n X n toroidal board.

The programs for A085801, the canonical program `A085801.P15903784776120152858` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085801 has offset 1).

The definition of A085801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085801.P15903784776120152858

`C(2, gcd(n+1, (n-2)*(n-3)))+n-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085801

/-- `C(2, gcd(n+1, (n-2)*(n-3)))+n-1` -/
def P15903784776120152858.Spec : Prop :=
  ∀ n, P15903784776120152858.a n = A085801 (n + 1)

theorem P15903784776120152858.correct : P15903784776120152858.Spec := by
  intro n
  simp only [A085801, Nat.add_sub_cancel]

end A085801

/-! ## A085801.P6568133376623367671

`n+1-A277030(gcd(n+1, 11-n))`
-/

namespace A085801.P6568133376623367671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A277030 (Int.gcd (n + 1 : ℤ) (11 - (n : ℤ)))

end

end A085801.P6568133376623367671

namespace A085801

/-- `n+1-A277030(gcd(n+1, 11-n))` -/
def P6568133376623367671.Spec : Prop :=
  ∀ n, P6568133376623367671.a n = A085801 (n + 1)

end A085801

/-! ## A085801.P8150765376581932617

`n-A276516(A000095(A065331(n+1)))`
-/

namespace A085801.P8150765376581932617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276516 (A000095 (A065331 (n + 1)).toNat).toNat

end

end A085801.P8150765376581932617

namespace A085801

/-- `n-A276516(A000095(A065331(n+1)))` -/
def P8150765376581932617.Spec : Prop :=
  ∀ n, P8150765376581932617.a n = A085801 (n + 1)

end A085801

/-! ## A085801.P10078002304185720384

`A057353(A004396(n))+A004396(A267451(n))`
-/

namespace A085801.P10078002304185720384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A004396 n).toNat + A004396 (A267451 n).toNat

end

end A085801.P10078002304185720384

namespace A085801

/-- `A057353(A004396(n))+A004396(A267451(n))` -/
def P10078002304185720384.Spec : Prop :=
  ∀ n, P10078002304185720384.a n = A085801 (n + 1)

end A085801

/-! ## A085801.P4376458872754550948

`A121373(A081320(n+1))+A052928(n)`
-/

namespace A085801.P4376458872754550948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A081320 (n + 1)).toNat + A052928 n

end

end A085801.P4376458872754550948

namespace A085801

/-- `A121373(A081320(n+1))+A052928(n)` -/
def P4376458872754550948.Spec : Prop :=
  ∀ n, P4376458872754550948.a n = A085801 (n + 1)

end A085801

/-! ## A085801.P9945626505317838741

`n+1-A000032(lcm(3, n+1)-(n+1))%3`
-/

namespace A085801.P9945626505317838741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A000032 (Nat.lcm 3 (n + 1) - (n + 1))) 3

end

end A085801.P9945626505317838741

namespace A085801

/-- `n+1-A000032(lcm(3, n+1)-(n+1))%3` -/
def P9945626505317838741.Spec : Prop :=
  ∀ n, P9945626505317838741.a n = A085801 (n + 1)

end A085801

/-! ## A085801.P5588496393998068152

`A293137(A065330(n+1)+A002620(n))`
-/

namespace A085801.P5588496393998068152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A065330 (n + 1) + A002620 n).toNat

end

end A085801.P5588496393998068152

namespace A085801

/-- `A293137(A065330(n+1)+A002620(n))` -/
def P5588496393998068152.Spec : Prop :=
  ∀ n, P5588496393998068152.a n = A085801 (n + 1)

end A085801

/-!
# A085802: Numbers whose sum of digits is a semiprime.

The programs for A085802, the canonical program `A085802.P3665797206482931043` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085802 has offset 1).

The definition of A085802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3549 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085802.P3665797206482931043

`eq[2, ∑{e}[∑{digits}[n+1, #], #]]+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085802

/-- `eq[2, ∑{e}[∑{digits}[n+1, #], #]]+1` -/
def P3665797206482931043.Spec : Prop :=
  ∀ n, (P3665797206482931043.a n : ℤ) = A085802 (n + 1)

theorem P3665797206482931043.correct : P3665797206482931043.Spec := by
  intro n
  simp only [A085802, Nat.add_sub_cancel]

end A085802

/-! ## A085802.P2191404396429847459

`eq[2, ∑{e}[A007953(n), #]]`
-/

namespace A085802.P2191404396429847459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085802.P2191404396429847459

namespace A085802

/-- `eq[2, ∑{e}[A007953(n), #]]` -/
def P2191404396429847459.Spec : Prop :=
  ∀ n, (P2191404396429847459.a n : ℤ) = A085802 (n + 1)

end A085802

/-! ## A085802.P7994753799864419147

`lt[1, A105700(∑{digits}[n, #])]`
-/

namespace A085802.P7994753799864419147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A085802.P7994753799864419147

namespace A085802

/-- `lt[1, A105700(∑{digits}[n, #])]` -/
def P7994753799864419147.Spec : Prop :=
  ∀ n, (P7994753799864419147.a n : ℤ) = A085802 (n + 1)

end A085802

/-! ## A085802.P2349863650420514763

`eq[2, A001222(∑{digits}[n+1, #])]+1`
-/

namespace A085802.P2349863650420514763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085802.P2349863650420514763

namespace A085802

/-- `eq[2, A001222(∑{digits}[n+1, #])]+1` -/
def P2349863650420514763.Spec : Prop :=
  ∀ n, (P2349863650420514763.a n : ℤ) = A085802 (n + 1)

end A085802

/-! ## A085802.P12931425283661734430

`lt[1, A105700(sqrt(A118881(n)))]`
-/

namespace A085802.P12931425283661734430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (SequenceMachineLib.roundAway (Real.sqrt (A118881 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A085802.P12931425283661734430

namespace A085802

/-- `lt[1, A105700(sqrt(A118881(n)))]` -/
def P12931425283661734430.Spec : Prop :=
  ∀ n, (P12931425283661734430.a n : ℤ) = A085802 (n + 1)

end A085802

/-! ## A085802.P17584964530408767704

`eq[2, A226378(sqrt(A118881(n)))]`
-/

namespace A085802.P17584964530408767704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (SequenceMachineLib.roundAway (Real.sqrt (A118881 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085802.P17584964530408767704

namespace A085802

/-- `eq[2, A226378(sqrt(A118881(n)))]` -/
def P17584964530408767704.Spec : Prop :=
  ∀ n, (P17584964530408767704.a n : ℤ) = A085802 (n + 1)

end A085802

/-! ## A085802.P11438026692905354453

`eq[2, A284289(sqrt(A118881(n)))]`
-/

namespace A085802.P11438026692905354453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (SequenceMachineLib.roundAway (Real.sqrt (A118881 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085802.P11438026692905354453

namespace A085802

/-- `eq[2, A284289(sqrt(A118881(n)))]` -/
def P11438026692905354453.Spec : Prop :=
  ∀ n, (P11438026692905354453.a n : ℤ) = A085802 (n + 1)

end A085802

/-! ## A085802.P7968079220801448258

`eq[3, A001222(A004277(∑{digits}[n, #]))]`
-/

namespace A085802.P7968079220801448258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085802.P7968079220801448258

namespace A085802

/-- `eq[3, A001222(A004277(∑{digits}[n, #]))]` -/
def P7968079220801448258.Spec : Prop :=
  ∀ n, (P7968079220801448258.a n : ℤ) = A085802 (n + 1)

end A085802

/-! ## A085802.P17096102182661528118

`eq[2, A001222(A007953(n+1))]+1`
-/

namespace A085802.P17096102182661528118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085802.P17096102182661528118

namespace A085802

/-- `eq[2, A001222(A007953(n+1))]+1` -/
def P17096102182661528118.Spec : Prop :=
  ∀ n, (P17096102182661528118.a n : ℤ) = A085802 (n + 1)

end A085802

/-!
# A085803: Semiprimes whose digits squared sum to a semiprime.

The programs for A085803, the canonical program `A085803.P16502889562760717795` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085803 has offset 1).

The definition of A085803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085803.P8004903704782260126

`filter[A217907(n+1), A064911(#)]`
-/

namespace A085803.P8004903704782260126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A085803.P8004903704782260126

namespace A085803

/-- `filter[A217907(n+1), A064911(#)]` -/
def P8004903704782260126.Spec : Prop :=
  ∀ n, P8004903704782260126.a n = A085803 (n + 1)

end A085803

/-! ## A085803.P16502889562760717795

`∩[A001358(n+1), A217907(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A085803

/-- `∩[A001358(n+1), A217907(n+1)]` -/
def P16502889562760717795.Spec : Prop :=
  ∀ n, (P16502889562760717795.a n : ℤ) = A085803 (n + 1)

theorem P16502889562760717795.correct : P16502889562760717795.Spec := by
  intro n
  simp only [A085803, Nat.add_sub_cancel]

end A085803

/-! ## A085803.P15938297728062856234

`∩[A176540(n+1), A217907(n+1)]`
-/

namespace A085803.P15938297728062856234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085803.P15938297728062856234

namespace A085803

/-- `∩[A176540(n+1), A217907(n+1)]` -/
def P15938297728062856234.Spec : Prop :=
  ∀ n, (P15938297728062856234.a n : ℤ) = A085803 (n + 1)

end A085803

/-! ## A085803.P3641105257701032566

`∩[A186621(n+1)+1, A217907(n+1)]`
-/

namespace A085803.P3641105257701032566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085803.P3641105257701032566

namespace A085803

/-- `∩[A186621(n+1)+1, A217907(n+1)]` -/
def P3641105257701032566.Spec : Prop :=
  ∀ n, (P3641105257701032566.a n : ℤ) = A085803 (n + 1)

end A085803

/-! ## A085803.P16718245158815874475

`∩[A088707(n+1)-1, A217907(n+1)]`
-/

namespace A085803.P16718245158815874475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085803.P16718245158815874475

namespace A085803

/-- `∩[A088707(n+1)-1, A217907(n+1)]` -/
def P16718245158815874475.Spec : Prop :=
  ∀ n, (P16718245158815874475.a n : ℤ) = A085803 (n + 1)

end A085803

/-! ## A085803.P14776523061061902807

`∩[A175708(n+1)+1+n, A217907(n+1)]`
-/

namespace A085803.P14776523061061902807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085803.P14776523061061902807

namespace A085803

/-- `∩[A175708(n+1)+1+n, A217907(n+1)]` -/
def P14776523061061902807.Spec : Prop :=
  ∀ n, (P14776523061061902807.a n : ℤ) = A085803 (n + 1)

end A085803

/-! ## A085803.P15894086499715089089

`∩[A217907(n+1), A065516(n)+a(n-1)]` with `a(0)=4`
-/

namespace A085803.P15894086499715089089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085803.P15894086499715089089

namespace A085803

/-- `∩[A217907(n+1), A065516(n)+a(n-1)]` -/
def P15894086499715089089.Spec : Prop :=
  ∀ n, (P15894086499715089089.a n : ℤ) = A085803 (n + 1)

end A085803

/-! ## A085803.P17940853772357217816

`∩[A217907(n+1), A118717(n)-a(n-1)]` with `a(0)=4`
-/

namespace A085803.P17940853772357217816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A118717 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085803.P17940853772357217816

namespace A085803

/-- `∩[A217907(n+1), A118717(n)-a(n-1)]` -/
def P17940853772357217816.Spec : Prop :=
  ∀ n, (P17940853772357217816.a n : ℤ) = A085803 (n + 1)

end A085803

/-! ## A085803.P2690131543053719642

`∩[A000040(n+1)-A065870(n+1), A217907(n+1)]`
-/

namespace A085803.P2690131543053719642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085803.P2690131543053719642

namespace A085803

/-- `∩[A000040(n+1)-A065870(n+1), A217907(n+1)]` -/
def P2690131543053719642.Spec : Prop :=
  ∀ n, (P2690131543053719642.a n : ℤ) = A085803 (n + 1)

end A085803

/-! ## A085803.P5605133767100472938

`lt[2, A105700(A003132(n))*A105700(n)]`
-/

namespace A085803.P5605133767100472938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A003132 n).toNat * A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A085803.P5605133767100472938

namespace A085803

/-- `lt[2, A105700(A003132(n))*A105700(n)]` -/
def P5605133767100472938.Spec : Prop :=
  ∀ n, (P5605133767100472938.a n : ℤ) = A085803 (n + 1)

end A085803

/-!
# A085807: Permanent of the symmetric n X n matrix A defined by A[i,j] = |i-j| for 1 <= i,j <= n.

The programs for A085807, there is no canonical definition to state claims against.
-/

/-! ## A085807.P18314986583883466114

`A206489(a(n-2)+n)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A085807.P18314986583883466114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A206489 (a (n - 2) + (n : ℤ)).toNat

end

end A085807.P18314986583883466114

/-! ## A085807.P7059897170061847903

`A292942(floor(((abs(1-n)+1)!+1)/e)²)`
-/

namespace A085807.P7059897170061847903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292942 (⌊(Nat.factorial (|1 - (n : ℤ)| + 1).toNat + 1 : ℝ) / Real.exp 1⌋ ^ 2).toNat

end

end A085807.P7059897170061847903

/-!
# A085809: Indices of semiprimes where largest gap occurs. Or, positions of records in A065516.

The programs for A085809, there is no canonical definition to state claims against.
-/

/-! ## A085809.P9488871935195931067

`A123375(A215231(n+1))`
-/

namespace A085809.P9488871935195931067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123375 (A215231 (n + 1)).toNat

end

end A085809.P9488871935195931067

/-! ## A085809.P7602365406317210102

`A123375(A217851(n+1)-A215232(n+1))`
-/

namespace A085809.P7602365406317210102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123375 (A217851 (n + 1) - A215232 (n + 1)).toNat

end

end A085809.P7602365406317210102

/-! ## A085809.P16801704847955628975

`A123375(A217851(n+1)%A215232(n+1))`
-/

namespace A085809.P16801704847955628975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123375 (Int.tmod (A217851 (n + 1)) (A215232 (n + 1))).toNat

end

end A085809.P16801704847955628975

/-! ## A085809.P4549722227030796951

`A072000(A215232(n+1))`
-/

namespace A085809.P4549722227030796951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A215232 (n + 1)).toNat

end

end A085809.P4549722227030796951

/-! ## A085809.P7418970208566771156

`A072000(A217851(n+1)-1)`
-/

namespace A085809.P7418970208566771156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A217851 (n + 1) - 1).toNat

end

end A085809.P7418970208566771156

/-!
# A085810: Number of three-choice paths along a corridor of height 5, starting from the lower side.

The programs for A085810, the canonical program `A085810.P1022814564311812616` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085810 has offset 1).

The definition of A085810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085810.P1022814564311812616

`4*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085810

/-- `4*a(n-1)-3*a(n-2)-a(n-3)` -/
def P1022814564311812616.Spec : Prop :=
  ∀ n, P1022814564311812616.a n = A085810 (n + 1)

theorem P1022814564311812616.correct : P1022814564311812616.Spec := by
  intro n
  simp only [A085810, Nat.add_sub_cancel]

end A085810

/-! ## A085810.P15894337268243082507

`∑[A121449(n)]`
-/

namespace A085810.P15894337268243082507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085810.P15894337268243082507

namespace A085810

/-- `∑[A121449(n)]` -/
def P15894337268243082507.Spec : Prop :=
  ∀ n, P15894337268243082507.a n = A085810 (n + 1)

end A085810

/-! ## A085810.P13632757834514549322

`a(n-1)+A116423(n)+a(n-1)` with `a(0)=1`
-/

namespace A085810.P13632757834514549322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A116423 n + a (n - 1))

end

end A085810.P13632757834514549322

namespace A085810

/-- `a(n-1)+A116423(n)+a(n-1)` -/
def P13632757834514549322.Spec : Prop :=
  ∀ n, P13632757834514549322.a n = A085810 (n + 1)

end A085810

/-! ## A085810.P7508871171713405271

`A215404(n)+abs(A322504(n))`
-/

namespace A085810.P7508871171713405271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215404 n + |A322504 n|

end

end A085810.P7508871171713405271

namespace A085810

/-- `A215404(n)+abs(A322504(n))` -/
def P7508871171713405271.Spec : Prop :=
  ∀ n, P7508871171713405271.a n = A085810 (n + 1)

end A085810

/-! ## A085810.P7260587891784456360

`Δ[abs(A322504(n))]`
-/

namespace A085810.P7260587891784456360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322504 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085810.P7260587891784456360

namespace A085810

/-- `Δ[abs(A322504(n))]` -/
def P7260587891784456360.Spec : Prop :=
  ∀ n, P7260587891784456360.a n = A085810 (n + 1)

end A085810

/-! ## A085810.P15701748446442504243

`Δ[lcm(A020985(n), A322504(n))]`
-/

namespace A085810.P15701748446442504243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A322504 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A085810.P15701748446442504243

namespace A085810

/-- `Δ[lcm(A020985(n), A322504(n))]` -/
def P15701748446442504243.Spec : Prop :=
  ∀ n, P15701748446442504243.a n = A085810 (n + 1)

end A085810

/-! ## A085810.P10499461972445051975

`A136776(n+1)-A215404(n)`
-/

namespace A085810.P10499461972445051975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136776 (n + 1) - A215404 n

end

end A085810.P10499461972445051975

namespace A085810

/-- `A136776(n+1)-A215404(n)` -/
def P10499461972445051975.Spec : Prop :=
  ∀ n, P10499461972445051975.a n = A085810 (n + 1)

end A085810

/-! ## A085810.P10424418300784586784

`abs(A322504(n+1)+A322504(n))`
-/

namespace A085810.P10424418300784586784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322504 (n + 1) + A322504 n|

end

end A085810.P10424418300784586784

namespace A085810

/-- `abs(A322504(n+1)+A322504(n))` -/
def P10424418300784586784.Spec : Prop :=
  ∀ n, P10424418300784586784.a n = A085810 (n + 1)

end A085810

/-! ## A085810.P14765340389136934895

`Δ[A116423(n+1)]-A215404(n)`
-/

namespace A085810.P14765340389136934895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A215404 n

end

end A085810.P14765340389136934895

namespace A085810

/-- `Δ[A116423(n+1)]-A215404(n)` -/
def P14765340389136934895.Spec : Prop :=
  ∀ n, P14765340389136934895.a n = A085810 (n + 1)

end A085810

/-! ## A085810.P1815256140236949019

`A121449(n+1)-A116423(n+1)`
-/

namespace A085810.P1815256140236949019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 (n + 1) - A116423 (n + 1)

end

end A085810.P1815256140236949019

namespace A085810

/-- `A121449(n+1)-A116423(n+1)` -/
def P1815256140236949019.Spec : Prop :=
  ∀ n, P1815256140236949019.a n = A085810 (n + 1)

end A085810

/-! ## A085810.P12417977699592831316

`A116423(n+2)-A215404(n+1)`
-/

namespace A085810.P12417977699592831316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 (n + 2) - A215404 (n + 1)

end

end A085810.P12417977699592831316

namespace A085810

/-- `A116423(n+2)-A215404(n+1)` -/
def P12417977699592831316.Spec : Prop :=
  ∀ n, P12417977699592831316.a n = A085810 (n + 1)

end A085810

/-! ## A085810.P1576961326960521239

`A116423(n+2)-∑[A116423(n+1)]`
-/

namespace A085810.P1576961326960521239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085810.P1576961326960521239

namespace A085810

/-- `A116423(n+2)-∑[A116423(n+1)]` -/
def P1576961326960521239.Spec : Prop :=
  ∀ n, P1576961326960521239.a n = A085810 (n + 1)

end A085810

/-! ## A085810.P4302315144169642820

`A121449(n+1)+A215404(n)-A215404(n+1)`
-/

namespace A085810.P4302315144169642820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 (n + 1) + (A215404 n - A215404 (n + 1))

end

end A085810.P4302315144169642820

namespace A085810

/-- `A121449(n+1)+A215404(n)-A215404(n+1)` -/
def P4302315144169642820.Spec : Prop :=
  ∀ n, P4302315144169642820.a n = A085810 (n + 1)

end A085810

/-! ## A085810.P4120469480107952099

`A121449(n+2)-A136776(n+2)`
-/

namespace A085810.P4120469480107952099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 (n + 2) - A136776 (n + 2)

end

end A085810.P4120469480107952099

namespace A085810

/-- `A121449(n+2)-A136776(n+2)` -/
def P4120469480107952099.Spec : Prop :=
  ∀ n, P4120469480107952099.a n = A085810 (n + 1)

end A085810

/-! ## A085810.P14799155717182978378

`A215404(n+2)-2*A215404(n+1)`
-/

namespace A085810.P14799155717182978378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215404 (n + 2) - 2 * A215404 (n + 1)

end

end A085810.P14799155717182978378

namespace A085810

/-- `A215404(n+2)-2*A215404(n+1)` -/
def P14799155717182978378.Spec : Prop :=
  ∀ n, P14799155717182978378.a n = A085810 (n + 1)

end A085810

/-!
# A085811: Number of partitions of n including 3, but not 1.

The programs for A085811, there is no canonical definition to state claims against.
-/

/-! ## A085811.P2833682050688775760

`A002865(1-(3-n)%(n+1))`
-/

namespace A085811.P2833682050688775760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (1 - Int.tmod (3 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A085811.P2833682050688775760

/-! ## A085811.P11980687806056373631

`A026796(n+1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A085811.P11980687806056373631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A026796 (n + 1) + a (n - 2)

end

end A085811.P11980687806056373631

/-! ## A085811.P16168747507408416082

`A002865(abs(A057427(n)+1+n-2*n))`
-/

namespace A085811.P16168747507408416082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 |A057427 n + 1 + (n : ℤ) - (2 * n : ℤ)|.toNat

end

end A085811.P16168747507408416082

/-! ## A085811.P3078312676611209783

`A002865(n)-A008483(n)`
-/

namespace A085811.P3078312676611209783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A008483 n

end

end A085811.P3078312676611209783

/-! ## A085811.P18126774414197095233

`A002865(n)-A026796(n+3)`
-/

namespace A085811.P18126774414197095233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A026796 (n + 3)

end

end A085811.P18126774414197095233

/-! ## A085811.P9644308857349777618

`A002865(n)-A008484(n)-A026796(n)`
-/

namespace A085811.P9644308857349777618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A008484 n - A026796 n

end

end A085811.P9644308857349777618

/-! ## A085811.P1606074631232110550

`A027337(n)-A027336(n)`
-/

namespace A085811.P1606074631232110550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 n - A027336 n

end

end A085811.P1606074631232110550

/-! ## A085811.P8826369634473114165

`A002865(n+1)+A027337(n)-A027337(n+1)`
-/

namespace A085811.P8826369634473114165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + (A027337 n - A027337 (n + 1))

end

end A085811.P8826369634473114165

/-! ## A085811.P4051119622980989084

`A027338(n+1)-A027337(n+1)`
-/

namespace A085811.P4051119622980989084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) - A027337 (n + 1)

end

end A085811.P4051119622980989084

/-! ## A085811.P4635384559501398895

`A027338(n+1)-(A027336(n)+A002865(n+1))`
-/

namespace A085811.P4635384559501398895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) - (A027336 n + A002865 (n + 1))

end

end A085811.P4635384559501398895

/-! ## A085811.P1913805957690522716

`A027339(n+2)-A027338(n+2)`
-/

namespace A085811.P1913805957690522716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 (n + 2) - A027338 (n + 2)

end

end A085811.P1913805957690522716

/-! ## A085811.P343351864069563088

`A027340(n+3)-A027339(n+3)`
-/

namespace A085811.P343351864069563088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 (n + 3) - A027339 (n + 3)

end

end A085811.P343351864069563088

/-! ## A085811.P14003133321015585768

`A182712(n)-A182712(A289207(n))`
-/

namespace A085811.P14003133321015585768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 n - A182712 (A289207 n).toNat

end

end A085811.P14003133321015585768

/-! ## A085811.P5304035465168468831

`A000041(n+1)-(A181531(n+1)+A000041(n))`
-/

namespace A085811.P5304035465168468831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A181531 (n + 1) + A000041 n)

end

end A085811.P5304035465168468831

/-! ## A085811.P3364958065941359812

`A000041(n+1)-(A229816(n+1)+A008483(n))`
-/

namespace A085811.P3364958065941359812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A229816 (n + 1) + A008483 n)

end

end A085811.P3364958065941359812

/-! ## A085811.P3857854100288379846

`A116598(C(n, 2)+1)`
-/

namespace A085811.P3857854100288379846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (Nat.choose n 2 + 1)

end

end A085811.P3857854100288379846

/-! ## A085811.P17369261477665479852

`A116598(∑[abs(1-n)])`
-/

namespace A085811.P17369261477665479852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085811.P17369261477665479852

/-! ## A085811.P5816069212261462030

`A002865(A292508(A000124(n)-n))`
-/

namespace A085811.P5816069212261462030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A292508 (A000124 n - (n : ℤ)).toNat).toNat

end

end A085811.P5816069212261462030

/-! ## A085811.P16920604924721856982

`A002865(A292622(A000124(n)-n))`
-/

namespace A085811.P16920604924721856982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A292622 (A000124 n - (n : ℤ)).toNat).toNat

end

end A085811.P16920604924721856982

/-! ## A085811.P11007848264789495086

`A116598(∑[n])-A008483(n)`
-/

namespace A085811.P11007848264789495086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (∑ j ∈ Finset.range (n + 1), f1 j) - A008483 n

end

end A085811.P11007848264789495086

/-!
# A085812: Sum(sum(binomial(i,j),i=n..2*n),j=0..n).

The programs for A085812, the canonical program `A085812.P3651475914520651274` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085812 has offset 0).

The definition of A085812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085812.P3651475914520651274

`A114121(n+1)-2^n`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085812

/-- `A114121(n+1)-2^n` -/
def P3651475914520651274.Spec : Prop :=
  ∀ n, P3651475914520651274.a n = A085812 n

theorem P3651475914520651274.correct : P3651475914520651274.Spec := by
  intro n
  simp only [A085812]

end A085812

/-! ## A085812.P14951988064126036919

`A108958(n+1)+4^n`
-/

namespace A085812.P14951988064126036919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108958 (n + 1) + (4 ^ n : ℤ)

end

end A085812.P14951988064126036919

namespace A085812

/-- `A108958(n+1)+4^n` -/
def P14951988064126036919.Spec : Prop :=
  ∀ n, P14951988064126036919.a n = A085812 n

end A085812

/-! ## A085812.P9927022940480531722

`A008549(n)+∏[4-2/(n+1)]-2^n`
-/

namespace A085812.P9927022940480531722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008549 n : ℚ) + (∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℚ))

end

end A085812.P9927022940480531722

namespace A085812

/-- `A008549(n)+∏[4-2/(n+1)]-2^n` -/
def P9927022940480531722.Spec : Prop :=
  ∀ n, P9927022940480531722.a n = (A085812 n : ℚ)

end A085812

/-! ## A085812.P12027692880715756070

`A020522(n)+A001700(n)`
-/

namespace A085812.P12027692880715756070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 n + A001700 n

end

end A085812.P12027692880715756070

namespace A085812

/-- `A020522(n)+A001700(n)` -/
def P12027692880715756070.Spec : Prop :=
  ∀ n, P12027692880715756070.a n = A085812 n

end A085812

/-! ## A085812.P10648253264735095889

`A020515(n)+A010763(n)`
-/

namespace A085812.P10648253264735095889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020515 n + A010763 n

end

end A085812.P10648253264735095889

namespace A085812

/-- `A020515(n)+A010763(n)` -/
def P10648253264735095889.Spec : Prop :=
  ∀ n, P10648253264735095889.a n = A085812 n

end A085812

/-! ## A085812.P4931881309714856157

`A085781(n)+A008549(n)`
-/

namespace A085812.P4931881309714856157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085781 n + A008549 n

end

end A085812.P4931881309714856157

namespace A085812

/-- `A085781(n)+A008549(n)` -/
def P4931881309714856157.Spec : Prop :=
  ∀ n, P4931881309714856157.a n = A085812 n

end A085812

/-! ## A085812.P15952145407648413582

`A020522(n)+record[A057977(n)]`
-/

namespace A085812.P15952145407648413582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085812.P15952145407648413582

namespace A085812

/-- `A020522(n)+record[A057977(n)]` -/
def P15952145407648413582.Spec : Prop :=
  ∀ n, P15952145407648413582.a n = A085812 n

end A085812

/-! ## A085812.P344455231737871868

`A191993(n+1)+A137786(n)`
-/

namespace A085812.P344455231737871868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191993 (n + 1) + A137786 n

end

end A085812.P344455231737871868

namespace A085812

/-- `A191993(n+1)+A137786(n)` -/
def P344455231737871868.Spec : Prop :=
  ∀ n, P344455231737871868.a n = A085812 n

end A085812

/-! ## A085812.P17195702755000481512

`A001700(n)+2*A006516(n)`
-/

namespace A085812.P17195702755000481512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + 2 * A006516 n

end

end A085812.P17195702755000481512

namespace A085812

/-- `A001700(n)+2*A006516(n)` -/
def P17195702755000481512.Spec : Prop :=
  ∀ n, P17195702755000481512.a n = A085812 n

end A085812

/-! ## A085812.P14767596889911980494

`A014236(2*n)+A001700(n)`
-/

namespace A085812.P14767596889911980494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014236 (2 * n) + A001700 n

end

end A085812.P14767596889911980494

namespace A085812

/-- `A014236(2*n)+A001700(n)` -/
def P14767596889911980494.Spec : Prop :=
  ∀ n, P14767596889911980494.a n = A085812 n

end A085812

/-! ## A085812.P16719817150695379738

`A261682(2*n)-A000225(n)`
-/

namespace A085812.P16719817150695379738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261682 (2 * n) - A000225 n

end

end A085812.P16719817150695379738

namespace A085812

/-- `A261682(2*n)-A000225(n)` -/
def P16719817150695379738.Spec : Prop :=
  ∀ n, P16719817150695379738.a n = A085812 n

end A085812

/-! ## A085812.P1740756062716125603

`xor(A000302(n), A108958(n+1))`
-/

namespace A085812.P1740756062716125603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000302 n) (A108958 (n + 1))

end

end A085812.P1740756062716125603

namespace A085812

/-- `xor(A000302(n), A108958(n+1))` -/
def P1740756062716125603.Spec : Prop :=
  ∀ n, P1740756062716125603.a n = A085812 n

end A085812

/-! ## A085812.P15655199903070839776

`A045678(2*n+1)+A001700(n)`
-/

namespace A085812.P15655199903070839776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045678 (2 * n + 1) + A001700 n

end

end A085812.P15655199903070839776

namespace A085812

/-- `A045678(2*n+1)+A001700(n)` -/
def P15655199903070839776.Spec : Prop :=
  ∀ n, P15655199903070839776.a n = A085812 n

end A085812

/-! ## A085812.P2886833307525946253

`A057977(2*n+1)+A020522(n)`
-/

namespace A085812.P2886833307525946253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n + 1) + A020522 n

end

end A085812.P2886833307525946253

namespace A085812

/-- `A057977(2*n+1)+A020522(n)` -/
def P2886833307525946253.Spec : Prop :=
  ∀ n, P2886833307525946253.a n = A085812 n

end A085812

/-! ## A085812.P11831771220956289188

`A258143(2*n+1)-A000225(n)`
-/

namespace A085812.P11831771220956289188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258143 (2 * n + 1) - A000225 n

end

end A085812.P11831771220956289188

namespace A085812

/-- `A258143(2*n+1)-A000225(n)` -/
def P11831771220956289188.Spec : Prop :=
  ∀ n, P11831771220956289188.a n = A085812 n

end A085812

/-! ## A085812.P17799795809848774035

`A088218(n+1)+2*A007179(2*n)`
-/

namespace A085812.P17799795809848774035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + 2 * A007179 (2 * n)

end

end A085812.P17799795809848774035

namespace A085812

/-- `A088218(n+1)+2*A007179(2*n)` -/
def P17799795809848774035.Spec : Prop :=
  ∀ n, P17799795809848774035.a n = A085812 n

end A085812

/-! ## A085812.P12471157179211594656

`A045678(2*n+1)+A000984(n+1)/2`
-/

namespace A085812.P12471157179211594656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045678 (2 * n + 1) : ℚ) + (A000984 (n + 1) : ℚ) / 2

end

end A085812.P12471157179211594656

namespace A085812

/-- `A045678(2*n+1)+A000984(n+1)/2` -/
def P12471157179211594656.Spec : Prop :=
  ∀ n, P12471157179211594656.a n = (A085812 n : ℚ)

end A085812

/-! ## A085812.P2222576906576399061

`A001405(2*n+1)+2*A007179(2*n)`
-/

namespace A085812.P2222576906576399061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) + 2 * A007179 (2 * n)

end

end A085812.P2222576906576399061

namespace A085812

/-- `A001405(2*n+1)+2*A007179(2*n)` -/
def P2222576906576399061.Spec : Prop :=
  ∀ n, P2222576906576399061.a n = A085812 n

end A085812

/-! ## A085812.P8546891146745483078

`A001700(n)+A000079(n)*A000225(n)`
-/

namespace A085812.P8546891146745483078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + A000079 n * A000225 n

end

end A085812.P8546891146745483078

namespace A085812

/-- `A001700(n)+A000079(n)*A000225(n)` -/
def P8546891146745483078.Spec : Prop :=
  ∀ n, P8546891146745483078.a n = A085812 n

end A085812

/-! ## A085812.P1691812496090264104

`A000984(n+1)+A008549(n)-A000079(n)`
-/

namespace A085812.P1691812496090264104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) + (A008549 n - A000079 n)

end

end A085812.P1691812496090264104

namespace A085812

/-- `A000984(n+1)+A008549(n)-A000079(n)` -/
def P1691812496090264104.Spec : Prop :=
  ∀ n, P1691812496090264104.a n = A085812 n

end A085812

/-!
# A085813: Number of cards that need to be drawn (with replacement) from a deck of n cards to have a 95% or greater chance of seeing each card at least once.

The programs for A085813, there is no canonical definition to state claims against.
-/

/-! ## A085813.P12590570692491710328

`ceil(log2(A113349(n)))+n+1`
-/

namespace A085813.P12590570692491710328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A113349 n : ℝ)⌉ + (n + 1 : ℤ)

end

end A085813.P12590570692491710328

/-! ## A085813.P13170779395171919001

`∑[A072699(A249563(n))]+4*n`
-/

namespace A085813.P13170779395171919001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072699 (A249563 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 * n : ℤ)

end

end A085813.P13170779395171919001

/-! ## A085813.P13617031981717454298

`A070939(A000085(n))+ceil(n*ϕ^3)`
-/

namespace A085813.P13617031981717454298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000085 n).toNat + ⌈(n : ℝ) * Real.goldenRatio ^ 3⌉

end

end A085813.P13617031981717454298

/-! ## A085813.P8028081583929169260

`A313587(n)+A001222(A150305(n))`
-/

namespace A085813.P8028081583929169260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313587 n + A001222 (A150305 n).toNat

end

end A085813.P8028081583929169260

/-! ## A085813.P10299955080071668182

`A022297(3*n+1)-A382732(A031873(n+1)-1)`
-/

namespace A085813.P10299955080071668182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (3 * n + 1) - A382732 (A031873 (n + 1) - 1).toNat

end

end A085813.P10299955080071668182

/-!
# A085814: Even entries (A048967) minus the odd entries (A001316) in row n of Pascal's triangle (A007318).

The programs for A085814, there is no canonical definition to state claims against.
-/

/-! ## A085814.P15781566543225357794

`2^n-2*A088560(n)`
-/

namespace A085814.P15781566543225357794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 2 * A088560 n

end

end A085814.P15781566543225357794

/-! ## A085814.P11687922153302120068

`A000079(n)-(A088560(n)+A088560(n))`
-/

namespace A085814.P11687922153302120068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A088560 n + A088560 n)

end

end A085814.P11687922153302120068

/-! ## A085814.P3082728918216081281

`and(-A088560(n), A000225(n))-A088560(n)`
-/

namespace A085814.P3082728918216081281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A088560 n) (A000225 n) - A088560 n

end

end A085814.P3082728918216081281

/-! ## A085814.P11563049101585215263

`A016116(2*n)-A088560(n)-A088560(n)`
-/

namespace A085814.P11563049101585215263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - A088560 n - A088560 n

end

end A085814.P11563049101585215263

/-! ## A085814.P1598398061915422056

`A088504(n)-A088560(n)`
-/

namespace A085814.P1598398061915422056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088504 n - A088560 n

end

end A085814.P1598398061915422056

/-!
# A085816: Semiprimes such that the sum of the factorials of the digits is also semiprime.

The programs for A085816, the canonical program `A085816.P15401441801455901381` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085816 has offset 1).

The definition of A085816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2461 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085816.P13201160166427780473

`filter[A242868(n+1), A064911(#)]`
-/

namespace A085816.P13201160166427780473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A085816.P13201160166427780473

namespace A085816

/-- `filter[A242868(n+1), A064911(#)]` -/
def P13201160166427780473.Spec : Prop :=
  ∀ n, P13201160166427780473.a n = A085816 (n + 1)

end A085816

/-! ## A085816.P15401441801455901381

`∩[A001358(n+1), A242868(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A085816

/-- `∩[A001358(n+1), A242868(n+1)]` -/
def P15401441801455901381.Spec : Prop :=
  ∀ n, (P15401441801455901381.a n : ℤ) = A085816 (n + 1)

theorem P15401441801455901381.correct : P15401441801455901381.Spec := by
  intro n
  simp only [A085816, Nat.add_sub_cancel]

end A085816

/-! ## A085816.P5875436688207491734

`∩[A176540(n+1), A242868(n+1)]`
-/

namespace A085816.P5875436688207491734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085816.P5875436688207491734

namespace A085816

/-- `∩[A176540(n+1), A242868(n+1)]` -/
def P5875436688207491734.Spec : Prop :=
  ∀ n, (P5875436688207491734.a n : ℤ) = A085816 (n + 1)

end A085816

/-! ## A085816.P11933183502572035476

`record[A179312(A242868(n+2))]`
-/

namespace A085816.P11933183502572035476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A242868 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085816.P11933183502572035476

namespace A085816

/-- `record[A179312(A242868(n+2))]` -/
def P11933183502572035476.Spec : Prop :=
  ∀ n, P11933183502572035476.a n = A085816 (n + 1)

end A085816

/-! ## A085816.P12449473500570871622

`∩[A103607(n+1), A242868(n+2)]`
-/

namespace A085816.P12449473500570871622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242868 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085816.P12449473500570871622

namespace A085816

/-- `∩[A103607(n+1), A242868(n+2)]` -/
def P12449473500570871622.Spec : Prop :=
  ∀ n, (P12449473500570871622.a n : ℤ) = A085816 (n + 1)

end A085816

/-!
# A085817: Start at (2n+1)/4 and iterate the map x -> x*ceiling(x); sequence gives values of n for which the denominators in the orbit drop directly from 4 to 1, bypassing 2.

The programs for A085817, there is no canonical definition to state claims against.
-/

/-! ## A085817.P17771287139500370675

`eq[A073341(n+2), A085785(n+2)]+2`
-/

namespace A085817.P17771287139500370675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073341 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085785 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A085817.P17771287139500370675

/-! ## A085817.P5985694279009347756

`A009056(eq[A073341(n+2), A085785(n+2)])`
-/

namespace A085817.P5985694279009347756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073341 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A085817.P5985694279009347756

/-! ## A085817.P11364644949181153848

`A009056(eq[A074735(2*(n+1)), A085785(n+2)])`
-/

namespace A085817.P11364644949181153848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074735 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A085817.P11364644949181153848

/-!
# A085818: For n > 1: a(n) = p if n = p^e with p prime and e > 1, otherwise a(n) = (n-m)-th prime, where m = number of nonprime prime powers <= n; a(1)=1.

The programs for A085818, there is no canonical definition to state claims against.
-/

/-! ## A085818.P1255283641349397154

`A008578(A085985(n+1)+1)`
-/

namespace A085818.P1255283641349397154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A085985 (n + 1) + 1).toNat

end

end A085818.P1255283641349397154

/-! ## A085818.P13074187130592849289

`A158611(A085985(n+1)+2)`
-/

namespace A085818.P13074187130592849289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A085985 (n + 1) + 2).toNat

end

end A085818.P13074187130592849289

/-! ## A085818.P12088968142664650961

`A001747(A085985(n+1)+1)/2`
-/

namespace A085818.P12088968142664650961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A085985 (n + 1) + 1).toNat : ℚ) / 2

end

end A085818.P12088968142664650961

/-! ## A085818.P15189653657167029826

`A028815(A085985(n+1))-∏{p}[n, A001221(#)]`
-/

namespace A085818.P15189653657167029826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A085985 (n + 1)).toNat - ∏ p ∈ Nat.primeFactors (f1 n), A001221 p

end

end A085818.P15189653657167029826

/-! ## A085818.P16420616059019469721

`A028815(A085985(n+1))-A007318(C(2, n)+1)`
-/

namespace A085818.P16420616059019469721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A085985 (n + 1)).toNat - A007318 (Nat.choose 2 n + 1)

end

end A085818.P16420616059019469721

/-! ## A085818.P8333544399090323937

`A028815(A085985(n+1))-A000041(gcd(n, n+1))`
-/

namespace A085818.P8333544399090323937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A085985 (n + 1)).toNat - A000041 (Nat.gcd n (n + 1))

end

end A085818.P8333544399090323937

/-! ## A085818.P17424916005114501354

`A028815(A085985(n+1))-C(2, A000005(n+2))!`
-/

namespace A085818.P17424916005114501354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A085985 (n + 1)).toNat - (Nat.factorial (Nat.choose 2 (A000005 (n + 2)).toNat) : ℤ)

end

end A085818.P17424916005114501354

/-! ## A085818.P16661001694174703666

`A028815(A085985(n+1))-A014963(12*(n+1))`
-/

namespace A085818.P16661001694174703666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A085985 (n + 1)).toNat - A014963 (12 * (n + 1))

end

end A085818.P16661001694174703666

/-!
# A085819: a(n) = Product_{k<=n} A085818(k).

The programs for A085819, there is no canonical definition to state claims against.
-/

/-! ## A085819.P5987321685906589761

`∏[A085818(n+1)]`
-/

namespace A085819.P5987321685906589761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085819.P5987321685906589761

/-! ## A085819.P2007972201503349623

`∏[A008578(A085985(n+1)+1)]`
-/

namespace A085819.P2007972201503349623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A085985 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085819.P2007972201503349623

/-! ## A085819.P6855610376373950299

`a(A023443(n))*A085818(n+1)` with `a(0)=1`
-/

namespace A085819.P6855610376373950299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 n).toNat * A085818 (n + 1)

end

end A085819.P6855610376373950299

/-! ## A085819.P5747227064863422171

`a(n-1)*A085818(A087156(n+1))` with `a(0)=1`
-/

namespace A085819.P5747227064863422171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A085818 (A087156 (n + 1)).toNat

end

end A085819.P5747227064863422171

/-! ## A085819.P15960327894166258733

`a(n-1)*A085818(A014430(∑[n]))` with `a(0)=1, a(1)=2`
-/

namespace A085819.P15960327894166258733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A085818 (A014430 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A085819.P15960327894166258733

/-!
# A085820: Possible two-digit endings of primes (with leading zeros).

The programs for A085820, there is no canonical definition to state claims against.
-/

/-! ## A085820.P2646175176888941560

`or(1, ceil(n*log2(3)²))`
-/

namespace A085820.P2646175176888941560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈(n : ℝ) * Real.logb 2 (3 : ℝ) ^ 2⌉

end

end A085820.P2646175176888941560

/-! ## A085820.P1016322370532365920

`lt[gcd(10, n)^9, lcm(2, n)]`
-/

namespace A085820.P1016322370532365920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 n ^ 9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085820.P1016322370532365920

/-! ## A085820.P13806348370217187888

`eq[1, gcd(n+50, n%50)]`
-/

namespace A085820.P13806348370217187888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 50) (n % 50)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085820.P13806348370217187888

/-! ## A085820.P7284995303393975414

`comp[∪[5*n, comp[Δ[n²]]]]`
-/

namespace A085820.P7284995303393975414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f5 (n + 1) : ℤ) - (f5 n : ℤ)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A085820.P7284995303393975414

/-! ## A085820.P9125837127685886987

`2*floor(sqrt(∑[π*n]))+1`
-/

namespace A085820.P9125837127685886987
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.pi * (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)⌋ + 1

end

end A085820.P9125837127685886987

/-!
# A085821: Smallest prime > A085820(n) ending with A085820(n).

The programs for A085821, there is no canonical definition to state claims against.
-/

/-! ## A085821.P2779524818691748347

`p?[A098954(n+5)]`
-/

namespace A085821.P2779524818691748347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098954 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085821.P2779524818691748347

/-!
# A085823: Numbers in which all substrings are primes.

The programs for A085823, there is no canonical definition to state claims against.
-/

/-! ## A085823.P5784084584242323245

`p?[A024776(n+1)]`
-/

namespace A085823.P5784084584242323245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085823.P5784084584242323245

/-! ## A085823.P1526198810324491838

`A211682(comp[10*n])`
-/

namespace A085823.P1526198810324491838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211682 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A085823.P1526198810324491838

/-! ## A085823.P10347109562344363498

`A211681(comp[(3*n)²])`
-/

namespace A085823.P10347109562344363498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211681 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A085823.P10347109562344363498

/-! ## A085823.P16910514076886923981

`A211682(n+1)%456`
-/

namespace A085823.P16910514076886923981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211682 (n + 1)) 456

end

end A085823.P16910514076886923981

/-! ## A085823.P11563570638988817223

`A284060(n+1)%456`
-/

namespace A085823.P11563570638988817223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284060 (n + 1)) 456

end

end A085823.P11563570638988817223

/-!
# A085824: Numbers n such that the smallest prime containing exactly n 0's (A037053) requires only two nonzero digits.

The programs for A085824, there is no canonical definition to state claims against.
-/

/-! ## A085824.P1469420505524098091

`lt[1, n*A321281(n+1)]`
-/

namespace A085824.P1469420505524098091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A321281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A085824.P1469420505524098091

/-! ## A085824.P15993292005816545704

`eq[0, A015070(A321281(n+1))]`
-/

namespace A085824.P15993292005816545704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015070 (A321281 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085824.P15993292005816545704

/-! ## A085824.P9242186504143098726

`eq[1, A054977(n*A321281(n+1))]`
-/

namespace A085824.P9242186504143098726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 ((n : ℤ) * A321281 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085824.P9242186504143098726

/-! ## A085824.P15722170229657370158

`eq[1, A158388(n*A321281(n+1))]`
-/

namespace A085824.P15722170229657370158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 ((n : ℤ) * A321281 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085824.P15722170229657370158

/-! ## A085824.P830079480926924137

`eq[A000007(A321281(n+1)), A000007(n)]`
-/

namespace A085824.P830079480926924137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A321281 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085824.P830079480926924137

/-! ## A085824.P16364942942576561786

`eq[A000038(A321281(n+1)), A000038(n)]`
-/

namespace A085824.P16364942942576561786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A321281 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085824.P16364942942576561786

/-! ## A085824.P4304088478596511746

`eq[A054977(A321281(n+1)), A054977(n)]`
-/

namespace A085824.P4304088478596511746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A321281 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085824.P4304088478596511746

/-! ## A085824.P8278172239400935003

`eq[A158388(A321281(n+1)), A158388(n)]`
-/

namespace A085824.P8278172239400935003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A321281 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085824.P8278172239400935003

/-!
# A085826: Continued fraction expansion of number defined in A085825.

The programs for A085826, there is no canonical definition to state claims against.
-/

/-! ## A085826.P7326754220944940642

`gcd(A016825(A051748(n+1)), A171971(n+1))`
-/

namespace A085826.P7326754220944940642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016825 (A051748 (n + 1)).toNat) (A171971 (n + 1))

end

end A085826.P7326754220944940642

/-! ## A085826.P8297588995286698495

`gcd(A057820(A251100(n+1)), A262931(n+2))`
-/

namespace A085826.P8297588995286698495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057820 (A251100 (n + 1)).toNat) (A262931 (n + 2))

end

end A085826.P8297588995286698495

/-!
# A085827: Increasing partial quotients of number defined in A085825 and A085826.

The programs for A085827, there is no canonical definition to state claims against.
-/

/-! ## A085827.P10307670508286032209

`record[A085826(n)]`
-/

namespace A085827.P10307670508286032209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085827.P10307670508286032209

/-!
# A085828: Lesser number n of a pair such that neither n nor n+1 contain the digit zero in bases 3 to 10.

The programs for A085828, there is no canonical definition to state claims against.
-/

/-! ## A085828.P17494469908495731494

`∩[A085509(n+1)-1, A085509(n+1)]`
-/

namespace A085828.P17494469908495731494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085509 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085828.P17494469908495731494

/-! ## A085828.P5681345838187635523

`A085509(eq[1, A085509(n+2)-A085509(n+1)]+1)`
-/

namespace A085828.P5681345838187635523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085509 (n + 2) - A085509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A085828.P5681345838187635523

/-!
# A085829: a(n) = least k such that the average number of divisors of {1..k} is >= n.

The programs for A085829, there is no canonical definition to state claims against.
-/

/-! ## A085829.P17381918752716726561

`A085567(n+1)-A129251(A047889(n))`
-/

namespace A085829.P17381918752716726561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085567 (n + 1) - A129251 (A047889 n).toNat

end

end A085829.P17381918752716726561

/-! ## A085829.P362850150555056616

`A085567(n+1)-A186734(A011782(n))`
-/

namespace A085829.P362850150555056616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085567 (n + 1) - A186734 (A011782 n).toNat

end

end A085829.P362850150555056616

/-! ## A085829.P8201606257240000368

`A085567(n+1)-A262900(A082151(n))`
-/

namespace A085829.P8201606257240000368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085567 (n + 1) - A262900 (A082151 n).toNat

end

end A085829.P8201606257240000368

/-! ## A085829.P17725417314225288318

`A085567(n+1)-A353525(A284858(n))`
-/

namespace A085829.P17725417314225288318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085567 (n + 1) - A353525 (A284858 n).toNat

end

end A085829.P17725417314225288318

/-!
# A085830: Least number k such that (10^n)^k < k!.

The programs for A085830, there is no canonical definition to state claims against.
-/

/-! ## A085830.P1431566151739599709

`A065027(10^n)`
-/

namespace A085830.P1431566151739599709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065027 (10 ^ n)

end

end A085830.P1431566151739599709

/-!
# A085831: a(n) = Sum_{k=1..2^n} d(k) where d(n) = number of divisors of n (A000005).

The programs for A085831, there is no canonical definition to state claims against.
-/

/-! ## A085831.P4171489632747171868

`a(n-1)+A153876(n)+1` with `a(0)=1`
-/

namespace A085831.P4171489632747171868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A153876 n + 1)

end

end A085831.P4171489632747171868

/-! ## A085831.P112336481926862876

`∑[A153876(round(sqrt(n²+1)))]+n`
-/

namespace A085831.P112336481926862876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153876 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A085831.P112336481926862876

/-! ## A085831.P13938073081896969180

`∑[A153876(A028310(n))+1]-1`
-/

namespace A085831.P13938073081896969180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153876 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A085831.P13938073081896969180

/-! ## A085831.P14404576294810051657

`A260196(n+2)+∑[A153876(A028310(n))+1]`
-/

namespace A085831.P14404576294810051657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153876 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085831.P14404576294810051657

/-! ## A085831.P6710814204378387324

`∑[A153876(n+1)+1]-A153876(n+1)`
-/

namespace A085831.P6710814204378387324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153876 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A153876 (n + 1)

end

end A085831.P6710814204378387324

/-!
# A085832: Smallest prime p such that both (p-1)/2^(2n-1) and 2^(2n-1)*p+1 are primes.

The programs for A085832, there is no canonical definition to state claims against.
-/

/-! ## A085832.P2208848573635640777

`A085956(4^n)`
-/

namespace A085832.P2208848573635640777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085956 (4 ^ n)

end

end A085832.P2208848573635640777

/-! ## A085832.P5985561268173007329

`A086362(A002450(n))`
-/

namespace A085832.P5985561268173007329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086362 (A002450 n).toNat

end

end A085832.P5985561268173007329

/-!
# A085833: Start at (2n+1)/4 and iterate the map x -> x*ceiling(x); sequence gives values of n for which the denominators in the orbit go from 4 to 2, instead of dropping directly to 1.

The programs for A085833, there is no canonical definition to state claims against.
-/

/-! ## A085833.P5497836927091133577

`comp[A085817(n+1)-2]+2`
-/

namespace A085833.P5497836927091133577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085817 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A085833.P5497836927091133577

/-!
# A085834: Initial terms of rows in table A085612.

The programs for A085834, there is no canonical definition to state claims against.
-/

/-! ## A085834.P6888346475257779542

`A085612(∑[n]+1)`
-/

namespace A085834.P6888346475257779542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085612 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A085834.P6888346475257779542

/-! ## A085834.P1823910300011859414

`and(-1, A085612(A000124(n)))`
-/

namespace A085834.P1823910300011859414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A085612 (A000124 n).toNat)

end

end A085834.P1823910300011859414

/-! ## A085834.P1036417934694753112

`record[A010054(n)*A085612(n+1)]`
-/

namespace A085834.P1036417934694753112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A085612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085834.P1036417934694753112

/-! ## A085834.P7092584730714334475

`A085612(A000124(n))%A288511(n)`
-/

namespace A085834.P7092584730714334475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085612 (A000124 n).toNat) (A288511 n)

end

end A085834.P7092584730714334475

/-! ## A085834.P14308506134976901193

`∑{d}[A085612(A000124(n)), A000010(#)]`
-/

namespace A085834.P14308506134976901193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085612 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A085834.P14308506134976901193

/-!
# A085836: Final terms of rows of A085612.

The programs for A085836, there is no canonical definition to state claims against.
-/

/-! ## A085836.P7775499786647097943

`A085612(∑[n+1])`
-/

namespace A085836.P7775499786647097943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085612 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085836.P7775499786647097943

/-! ## A085836.P14606511283794210981

`A374214(2*(n+1))+A085612(A000217(n+1))`
-/

namespace A085836.P14606511283794210981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374214 (2 * (n + 1)) + A085612 (A000217 (n + 1)).toNat

end

end A085836.P14606511283794210981

/-! ## A085836.P3355043027048630587

`(floor(A003849(n)/6)+1)*A085612(A000217(n+1))`
-/

namespace A085836.P3355043027048630587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(A003849 n : ℚ) / 6⌋ + 1) * A085612 (A000217 (n + 1)).toNat

end

end A085836.P3355043027048630587

/-! ## A085836.P2418177147523142744

`(floor(A053692(n)/6)+1)*A085612(A000217(n+1))`
-/

namespace A085836.P2418177147523142744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(A053692 n : ℚ) / 6⌋ + 1) * A085612 (A000217 (n + 1)).toNat

end

end A085836.P2418177147523142744

/-! ## A085836.P12472340358144753682

`(floor(A325490(n)/6)+1)*A085612(A000217(n+1))`
-/

namespace A085836.P12472340358144753682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(A325490 n : ℚ) / 6⌋ + 1) * A085612 (A000217 (n + 1)).toNat

end

end A085836.P12472340358144753682

/-! ## A085836.P3248808191087854437

`(floor(A284256(n+1)/6)+1)*A085612(A000217(n+1))`
-/

namespace A085836.P3248808191087854437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(A284256 (n + 1) : ℚ) / 6⌋ + 1) * A085612 (A000217 (n + 1)).toNat

end

end A085836.P3248808191087854437

/-! ## A085836.P9324560766578152785

`A085612(A000217(n+1))%A036724(n+4)`
-/

namespace A085836.P9324560766578152785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085612 (A000217 (n + 1)).toNat) (A036724 (n + 4))

end

end A085836.P9324560766578152785

/-!
# A085837: Denominators of unit fractions having non-terminating decimal expansions.

The programs for A085837, the canonical program `A085837.P7572885255925857249` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085837 has offset 1).

The definition of A085837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085837.P7572885255925857249

`lt[1, floor((n+1)/2^val(n+1, 2))/5^val(n+1, 5)]+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085837

/-- `lt[1, floor((n+1)/2^val(n+1, 2))/5^val(n+1, 5)]+1` -/
def P7572885255925857249.Spec : Prop :=
  ∀ n, (P7572885255925857249.a n : ℤ) = A085837 (n + 1)

theorem P7572885255925857249.correct : P7572885255925857249.Spec := by
  intro n
  simp only [A085837, Nat.add_sub_cancel]

end A085837

/-! ## A085837.P11176021432250372251

`comp[A158911(n+1)]+1`
-/

namespace A085837.P11176021432250372251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A085837.P11176021432250372251

namespace A085837

/-- `comp[A158911(n+1)]+1` -/
def P11176021432250372251.Spec : Prop :=
  ∀ n, (P11176021432250372251.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P3254662513366459552

`comp[A227070(n+1)-1]`
-/

namespace A085837.P3254662513366459552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227070 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A085837.P3254662513366459552

namespace A085837

/-- `comp[A227070(n+1)-1]` -/
def P3254662513366459552.Spec : Prop :=
  ∀ n, (P3254662513366459552.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P17004359912230402070

`comp[C(A132741(n+1), n)]`
-/

namespace A085837.P17004359912230402070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A132741 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A085837.P17004359912230402070

namespace A085837

/-- `comp[C(A132741(n+1), n)]` -/
def P17004359912230402070.Spec : Prop :=
  ∀ n, (P17004359912230402070.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P2292561354682047258

`comp[A003592(n+1)-1]+1`
-/

namespace A085837.P2292561354682047258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A085837.P2292561354682047258

namespace A085837

/-- `comp[A003592(n+1)-1]+1` -/
def P2292561354682047258.Spec : Prop :=
  ∀ n, (P2292561354682047258.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P15571857102693332185

`comp[eq[1, A077196(n+1)]]+1`
-/

namespace A085837.P15571857102693332185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A085837.P15571857102693332185

namespace A085837

/-- `comp[eq[1, A077196(n+1)]]+1` -/
def P15571857102693332185.Spec : Prop :=
  ∀ n, (P15571857102693332185.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P14783634391752606364

`comp[A132741(n+2)%or(1, comp[3*n]+n)]`
-/

namespace A085837.P14783634391752606364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132741 (n + 2)) (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A085837.P14783634391752606364

namespace A085837

/-- `comp[A132741(n+2)%or(1, comp[3*n]+n)]` -/
def P14783634391752606364.Spec : Prop :=
  ∀ n, (P14783634391752606364.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P6558113638439500054

`comp[A132741(n+4)%A270710(n)]`
-/

namespace A085837.P6558113638439500054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132741 (n + 4)) (A270710 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A085837.P6558113638439500054

namespace A085837

/-- `comp[A132741(n+4)%A270710(n)]` -/
def P6558113638439500054.Spec : Prop :=
  ∀ n, (P6558113638439500054.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P10602729361412538429

`∪[A068191(n+1), A187811(n+1)]`
-/

namespace A085837.P10602729361412538429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085837.P10602729361412538429

namespace A085837

/-- `∪[A068191(n+1), A187811(n+1)]` -/
def P10602729361412538429.Spec : Prop :=
  ∀ n, (P10602729361412538429.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P17899360733971161894

`∪[A031193(n+1), A279622(n+1)]`
-/

namespace A085837.P17899360733971161894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085837.P17899360733971161894

namespace A085837

/-- `∪[A031193(n+1), A279622(n+1)]` -/
def P17899360733971161894.Spec : Prop :=
  ∀ n, (P17899360733971161894.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P2308110731991662899

`∪[A085126(n+1), A279622(n+1)]`
-/

namespace A085837.P2308110731991662899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085837.P2308110731991662899

namespace A085837

/-- `∪[A085126(n+1), A279622(n+1)]` -/
def P2308110731991662899.Spec : Prop :=
  ∀ n, (P2308110731991662899.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P14792073526649264774

`∪[A187811(n+1), A279622(n+1)]`
-/

namespace A085837.P14792073526649264774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085837.P14792073526649264774

namespace A085837

/-- `∪[A187811(n+1), A279622(n+1)]` -/
def P14792073526649264774.Spec : Prop :=
  ∀ n, (P14792073526649264774.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P13793635075968206267

`∪[A201462(n+1), A279622(n+1)]`
-/

namespace A085837.P13793635075968206267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085837.P13793635075968206267

namespace A085837

/-- `∪[A201462(n+1), A279622(n+1)]` -/
def P13793635075968206267.Spec : Prop :=
  ∀ n, (P13793635075968206267.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P15635510628317495027

`∪[A230193(n+1), A279622(n+1)]`
-/

namespace A085837.P15635510628317495027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085837.P15635510628317495027

namespace A085837

/-- `∪[A230193(n+1), A279622(n+1)]` -/
def P15635510628317495027.Spec : Prop :=
  ∀ n, (P15635510628317495027.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P6354186024181285993

`∪[A230215(n+1), A279622(n+1)]`
-/

namespace A085837.P6354186024181285993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085837.P6354186024181285993

namespace A085837

/-- `∪[A230215(n+1), A279622(n+1)]` -/
def P6354186024181285993.Spec : Prop :=
  ∀ n, (P6354186024181285993.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P3549575203614112510

`lt[10, ∏{p}[5*n, #]]`
-/

namespace A085837.P3549575203614112510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085837.P3549575203614112510

namespace A085837

/-- `lt[10, ∏{p}[5*n, #]]` -/
def P3549575203614112510.Spec : Prop :=
  ∀ n, (P3549575203614112510.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P3395939645429694141

`lt[A227071(n+1), n]`
-/

namespace A085837.P3395939645429694141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227071 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A085837.P3395939645429694141

namespace A085837

/-- `lt[A227071(n+1), n]` -/
def P3395939645429694141.Spec : Prop :=
  ∀ n, (P3395939645429694141.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P1957035437821504621

`lt[1, A132740(n+1)]+1`
-/

namespace A085837.P1957035437821504621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A085837.P1957035437821504621

namespace A085837

/-- `lt[1, A132740(n+1)]+1` -/
def P1957035437821504621.Spec : Prop :=
  ∀ n, (P1957035437821504621.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P17265689149191284957

`lt[2, A001221(10*(n+1))]+1`
-/

namespace A085837.P17265689149191284957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (10 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A085837.P17265689149191284957

namespace A085837

/-- `lt[2, A001221(10*(n+1))]+1` -/
def P17265689149191284957.Spec : Prop :=
  ∀ n, (P17265689149191284957.a n : ℤ) = A085837 (n + 1)

end A085837

/-! ## A085837.P7937612308810542765

`eq[1, A007318(a(A051626(n)))]` with `a(0)=4`
-/

namespace A085837.P7937612308810542765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A051626 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085837.P7937612308810542765

namespace A085837

/-- `eq[1, A007318(a(A051626(n)))]` -/
def P7937612308810542765.Spec : Prop :=
  ∀ n, (P7937612308810542765.a n : ℤ) = A085837 (n + 1)

end A085837

/-!
# A085838: Triangle T(n,k) read by rows; given by [0,1,0,1,0,1,0,1,...] DELTA [1,1,1,2,1,3,1,4,1,5,1,6,...], where DELTA is Deléham's operator defined in A084938.

The programs for A085838, there is no canonical definition to state claims against.
-/

/-! ## A085838.P15296472545487334194

`A089870(A086810(n)+A025437(n))`
-/

namespace A085838.P15296472545487334194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (A086810 n + A025437 n).toNat

end

end A085838.P15296472545487334194

/-! ## A085838.P16362013602562942615

`A089870(or(A025437(n), A086810(n)))`
-/

namespace A085838.P16362013602562942615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (Int.lor (A025437 n) (A086810 n)).toNat

end

end A085838.P16362013602562942615

/-! ## A085838.P11897520652498568887

`A089870(xor(A025437(n), A086810(n)))`
-/

namespace A085838.P11897520652498568887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (Int.xor (A025437 n) (A086810 n)).toNat

end

end A085838.P11897520652498568887

/-! ## A085838.P4245486401855938242

`A089870(or(A046080(n+1), A086810(n)))`
-/

namespace A085838.P4245486401855938242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (Int.lor (A046080 (n + 1)) (A086810 n)).toNat

end

end A085838.P4245486401855938242

/-! ## A085838.P11191670435236887160

`A086810(n)+A038189(floor((n/10)^n))`
-/

namespace A085838.P11191670435236887160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n + A038189 ⌊((n : ℚ) / 10) ^ n⌋.toNat

end

end A085838.P11191670435236887160

/-!
# A085839: a(0)=1, a(1)=3, a(n) = floor((Pi + 1/Pi)*a(n-1) - a(n-2)).

The programs for A085839, the canonical program `A085839.P11294222464140753470` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085839 has offset 0).

The definition of A085839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085839.P11294222464140753470

`floor((π+1/π)*a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085839

/-- `floor((π+1/π)*a(n-1)-a(n-2))` -/
def P11294222464140753470.Spec : Prop :=
  ∀ n, P11294222464140753470.a n = A085839 n

theorem P11294222464140753470.correct : P11294222464140753470.Spec := by
  intro n
  simp only [A085839]

end A085839

/-! ## A085839.P9772453645354952097

`A134915(n)-A137579(A271488(n))`
-/

namespace A085839.P9772453645354952097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134915 n - A137579 (A271488 n).toNat

end

end A085839.P9772453645354952097

namespace A085839

/-- `A134915(n)-A137579(A271488(n))` -/
def P9772453645354952097.Spec : Prop :=
  ∀ n, P9772453645354952097.a n = A085839 n

end A085839

/-! ## A085839.P227090477466154117

`A134915(n)-A025469(n²²)`
-/

namespace A085839.P227090477466154117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134915 n - A025469 ((n ^ 2) ^ 2)

end

end A085839.P227090477466154117

namespace A085839

/-- `A134915(n)-A025469(n²²)` -/
def P227090477466154117.Spec : Prop :=
  ∀ n, P227090477466154117.a n = A085839 n

end A085839

/-! ## A085839.P13218405319396894241

`A000027(A134915(n)-A107846(n))`
-/

namespace A085839.P13218405319396894241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A134915 n - A107846 n).toNat

end

end A085839.P13218405319396894241

namespace A085839

/-- `A000027(A134915(n)-A107846(n))` -/
def P13218405319396894241.Spec : Prop :=
  ∀ n, P13218405319396894241.a n = A085839 n

end A085839

/-! ## A085839.P4114952375482806743

`A134915(n)-A185284(A175868(n))`
-/

namespace A085839.P4114952375482806743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134915 n - A185284 (A175868 n).toNat

end

end A085839.P4114952375482806743

namespace A085839

/-- `A134915(n)-A185284(A175868(n))` -/
def P4114952375482806743.Spec : Prop :=
  ∀ n, P4114952375482806743.a n = A085839 n

end A085839

/-!
# A085840: Triangle read by rows: T(n,m) = 4^m * (2*n+1)! / ( (2*n - 2*m + 1)! * (2*m)! ), row n has n+1 terms.

The programs for A085840, the canonical program `A085840.P17865219254584702468` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085840 has offset 0).

The definition of A085840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5738 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085840.P17865219254584702468

`A059268(n)²*A091042(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A085840

/-- `A059268(n)²*A091042(n)` -/
def P17865219254584702468.Spec : Prop :=
  ∀ n, P17865219254584702468.a n = A085840 n

theorem P17865219254584702468.correct : P17865219254584702468.Spec := by
  intro n
  simp only [A085840]

end A085840

/-! ## A085840.P10294005212463639174

`A013609(A168038(n)+2*n)`
-/

namespace A085840.P10294005212463639174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A168038 n + (2 * n : ℤ)).toNat

end

end A085840.P10294005212463639174

namespace A085840

/-- `A013609(A168038(n)+2*n)` -/
def P10294005212463639174.Spec : Prop :=
  ∀ n, P10294005212463639174.a n = A085840 n

end A085840

/-! ## A085840.P3294495764091848286

`A013609(A168038(n)+n+n)`
-/

namespace A085840.P3294495764091848286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A168038 n + (n : ℤ) + (n : ℤ)).toNat

end

end A085840.P3294495764091848286

namespace A085840

/-- `A013609(A168038(n)+n+n)` -/
def P3294495764091848286.Spec : Prop :=
  ∀ n, P3294495764091848286.a n = A085840 n

end A085840

/-! ## A085840.P7373471322426884777

`A208913(A185869(n+1))`
-/

namespace A085840.P7373471322426884777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208913 (A185869 (n + 1)).toNat

end

end A085840.P7373471322426884777

namespace A085840

/-- `A208913(A185869(n+1))` -/
def P7373471322426884777.Spec : Prop :=
  ∀ n, P7373471322426884777.a n = A085840 n

end A085840

/-! ## A085840.P13276441760397515929

`A013609(A185869(n+1)-1)`
-/

namespace A085840.P13276441760397515929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A185869 (n + 1) - 1).toNat

end

end A085840.P13276441760397515929

namespace A085840

/-- `A013609(A185869(n+1)-1)` -/
def P13276441760397515929.Spec : Prop :=
  ∀ n, P13276441760397515929.a n = A085840 n

end A085840

/-! ## A085840.P14413563322015118810

`A013609(∑[A198954(n)]+2*n)`
-/

namespace A085840.P14413563322015118810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)).toNat

end

end A085840.P14413563322015118810

namespace A085840

/-- `A013609(∑[A198954(n)]+2*n)` -/
def P14413563322015118810.Spec : Prop :=
  ∀ n, P14413563322015118810.a n = A085840 n

end A085840

/-! ## A085840.P10100248780665026397

`A013609(A093995(n+1)+2*n)`
-/

namespace A085840.P10100248780665026397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A093995 (n + 1) + (2 * n : ℤ)).toNat

end

end A085840.P10100248780665026397

namespace A085840

/-- `A013609(A093995(n+1)+2*n)` -/
def P10100248780665026397.Spec : Prop :=
  ∀ n, P10100248780665026397.a n = A085840 n

end A085840

/-! ## A085840.P530305769312247381

`A013609(A038722(n+1)+3*n)`
-/

namespace A085840.P530305769312247381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A038722 (n + 1) + (3 * n : ℤ)).toNat

end

end A085840.P530305769312247381

namespace A085840

/-- `A013609(A038722(n+1)+3*n)` -/
def P530305769312247381.Spec : Prop :=
  ∀ n, P530305769312247381.a n = A085840 n

end A085840

/-! ## A085840.P15410364778271631843

`A013609(3*n+A061579(n)+1)`
-/

namespace A085840.P15410364778271631843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 ((3 * n : ℤ) + (A061579 n + 1)).toNat

end

end A085840.P15410364778271631843

namespace A085840

/-- `A013609(3*n+A061579(n)+1)` -/
def P15410364778271631843.Spec : Prop :=
  ∀ n, P15410364778271631843.a n = A085840 n

end A085840

/-! ## A085840.P3043880201577625229

`A013609(A093995(n+1)+n+n)`
-/

namespace A085840.P3043880201577625229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A093995 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A085840.P3043880201577625229

namespace A085840

/-- `A013609(A093995(n+1)+n+n)` -/
def P3043880201577625229.Spec : Prop :=
  ∀ n, P3043880201577625229.a n = A085840 n

end A085840

/-! ## A085840.P5718599842489366964

`A013609(A002024(n+1)²+2*n)`
-/

namespace A085840.P5718599842489366964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A002024 (n + 1) ^ 2 + (2 * n : ℤ)).toNat

end

end A085840.P5718599842489366964

namespace A085840

/-- `A013609(A002024(n+1)²+2*n)` -/
def P5718599842489366964.Spec : Prop :=
  ∀ n, P5718599842489366964.a n = A085840 n

end A085840

/-! ## A085840.P17798549619717587361

`A013609(A061579(n)+A016777(n))`
-/

namespace A085840.P17798549619717587361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A061579 n + A016777 n).toNat

end

end A085840.P17798549619717587361

namespace A085840

/-- `A013609(A061579(n)+A016777(n))` -/
def P17798549619717587361.Spec : Prop :=
  ∀ n, P17798549619717587361.a n = A085840 n

end A085840

/-! ## A085840.P2130272545832701297

`A013609(A005843(n)+A002024(n+1)²)`
-/

namespace A085840.P2130272545832701297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A005843 n + A002024 (n + 1) ^ 2).toNat

end

end A085840.P2130272545832701297

namespace A085840

/-- `A013609(A005843(n)+A002024(n+1)²)` -/
def P2130272545832701297.Spec : Prop :=
  ∀ n, P2130272545832701297.a n = A085840 n

end A085840

/-!
# A085841: Triangle: row #n has n+1 terms. T(n,m) = 4^m (2n+1)! / ( (2n-2m)! (2m+1)! ).

The programs for A085841, the canonical program `A085841.P18023952470375575868` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085841 has offset 0).

The definition of A085841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085841.P18023952470375575868

`A229032(A292564(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A085841

/-- `A229032(A292564(n))` -/
def P18023952470375575868.Spec : Prop :=
  ∀ n, P18023952470375575868.a n = A085841 n

theorem P18023952470375575868.correct : P18023952470375575868.Spec := by
  intro n
  simp only [A085841]

end A085841

/-! ## A085841.P9410989140775578854

`A208914((1-round(sqrt(2*(n+1))))²+2*n+1)`
-/

namespace A085841.P9410989140775578854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208914 ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A085841.P9410989140775578854

namespace A085841

/-- `A208914((1-round(sqrt(2*(n+1))))²+2*n+1)` -/
def P9410989140775578854.Spec : Prop :=
  ∀ n, P9410989140775578854.a n = A085841 n

end A085841

/-! ## A085841.P6916676219744531299

`A082137(record[xor(1, n)+round(sqrt(n+1))²])`
-/

namespace A085841.P6916676219744531299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085841.P6916676219744531299

namespace A085841

/-- `A082137(record[xor(1, n)+round(sqrt(n+1))²])` -/
def P6916676219744531299.Spec : Prop :=
  ∀ n, P6916676219744531299.a n = A085841 n

end A085841

/-! ## A085841.P8125919607495958132

`A082137(2*n+∑[char[∑[n]]]²+1)`
-/

namespace A085841.P8125919607495958132
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 (2 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1))

end

end A085841.P8125919607495958132

namespace A085841

/-- `A082137(2*n+∑[char[∑[n]]]²+1)` -/
def P8125919607495958132.Spec : Prop :=
  ∀ n, P8125919607495958132.a n = A085841 n

end A085841

/-! ## A085841.P9313265156244043757

`A182059(record[xor(1, n)+round(sqrt(n+1))²])/2`
-/

namespace A085841.P9313265156244043757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182059 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A085841.P9313265156244043757

namespace A085841

/-- `A182059(record[xor(1, n)+round(sqrt(n+1))²])/2` -/
def P9313265156244043757.Spec : Prop :=
  ∀ n, P9313265156244043757.a n = (A085841 n : ℚ)

end A085841

/-! ## A085841.P5091926380273025917

`A208914(2*n+∑[char[∑[n]]]²+2)/2`
-/

namespace A085841.P5091926380273025917
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208914 (2 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2)) : ℚ) / 2

end

end A085841.P5091926380273025917

namespace A085841

/-- `A208914(2*n+∑[char[∑[n]]]²+2)/2` -/
def P5091926380273025917.Spec : Prop :=
  ∀ n, P5091926380273025917.a n = (A085841 n : ℚ)

end A085841

/-!
# A085842: Numbers k whose divisors (apart from 1 and k) sum to a prime.

The programs for A085842, there is no canonical definition to state claims against.
-/

/-! ## A085842.P8719587490335779431

`eq[2, A153024(n+1)]+1`
-/

namespace A085842.P8719587490335779431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085842.P8719587490335779431

/-! ## A085842.P4893808480504508640

`eq[2, A153024(A028310(n))]`
-/

namespace A085842.P4893808480504508640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153024 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085842.P4893808480504508640

/-! ## A085842.P4185717116159516338

`A065475(eq[2, A153024(n+1)])`
-/

namespace A085842.P4185717116159516338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085842.P4185717116159516338

/-! ## A085842.P1067977816668916460

`eq[A048050(n+1), A153023(n+1)]+1`
-/

namespace A085842.P1067977816668916460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A085842.P1067977816668916460

/-! ## A085842.P6579757082016740329

`eq[2, A153024(A065033(2*n))]`
-/

namespace A085842.P6579757082016740329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153024 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085842.P6579757082016740329

/-! ## A085842.P3360750443757216157

`eq[1, A032741(A048050(n+1))]+1`
-/

namespace A085842.P3360750443757216157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A048050 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085842.P3360750443757216157

/-! ## A085842.P17366712831738595876

`eq[2, A153024(A233583(n+1))]`
-/

namespace A085842.P17366712831738595876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153024 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085842.P17366712831738595876

/-!
# A085852: Triangle T(n, k) read by rows; given by [0, 1, 0, 2, 0, 3, 0, 4, ...] DELTA [1, 0, 2, 0, 2, 0, 3, 0, 2, 0, 4, 0, 2, 0, ...] (A000005 interspersed with 0's) where DELTA is Deléham's operator defined in A084938.

The programs for A085852, there is no canonical definition to state claims against.
-/

/-! ## A085852.P2683196166637478835

`A123125(n)-A033886(A208673(n))²`
-/

namespace A085852.P2683196166637478835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 n - A033886 (A208673 n).toNat ^ 2

end

end A085852.P2683196166637478835

/-! ## A085852.P17179566675128534884

`A072620(A123125(n)^A307907(n+2))`
-/

namespace A085852.P17179566675128534884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072620 (SequenceMachineLib.roundAway ((A123125 n : ℚ) ^ (A307907 (n + 2) : ℤ))).toNat

end

end A085852.P17179566675128534884

/-! ## A085852.P10818013661656123228

`A072620(A123125(n))%A177829(A029015(n))`
-/

namespace A085852.P10818013661656123228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072620 (A123125 n).toNat) (A177829 (A029015 n).toNat)

end

end A085852.P10818013661656123228

/-! ## A085852.P515348433322694287

`A072620(A123125(n)%A128656(n+1))`
-/

namespace A085852.P515348433322694287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072620 (Int.tmod (A123125 n) (A128656 (n + 1))).toNat

end

end A085852.P515348433322694287

/-! ## A085852.P4684521924986397954

`A123125(n)-A184955(A099375(2*n+1))`
-/

namespace A085852.P4684521924986397954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 n - A184955 (A099375 (2 * n + 1)).toNat

end

end A085852.P4684521924986397954

/-!
# A085853: Triangle T(n, k) read by rows; given by [1, 1, 1, 1, 1, 1, 1, 1, ...] DELTA [1, 0, 2, 0, 2, 0, 3, 0, 2, 0, 4, 0, 2, 0, ...] (A000005 interspersed with 0's) where DELTA is Deléham's operator defined in A084938.

The programs for A085853, there is no canonical definition to state claims against.
-/

/-! ## A085853.P1270130831816508455

`A157235(A157211(n))+A039599(n)`
-/

namespace A085853.P1270130831816508455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157235 (A157211 n).toNat + A039599 n

end

end A085853.P1270130831816508455

/-! ## A085853.P14653532263343736399

`A003003(lcm(A021009(n), A220054(n)))`
-/

namespace A085853.P14653532263343736399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (Int.lcm (A021009 n) (A220054 n))

end

end A085853.P14653532263343736399

/-! ## A085853.P3656288432481839052

`A236972(A321331(n)/A002260(n+1))+A039599(n)`
-/

namespace A085853.P3656288432481839052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236972 (SequenceMachineLib.roundAway ((A321331 n : ℚ) / (A002260 (n + 1) : ℚ))).toNat + A039599 n

end

end A085853.P3656288432481839052

/-! ## A085853.P16347599236802560334

`A236972(A321331(n)/(A002262(n)+1))+A039599(n)`
-/

namespace A085853.P16347599236802560334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236972 (SequenceMachineLib.roundAway ((A321331 n : ℚ) / (A002262 n + 1 : ℚ))).toNat + A039599 n

end

end A085853.P16347599236802560334

/-! ## A085853.P2485617892458248848

`A236972(A075499(n+1)/A130321(n)²)+A039599(n)`
-/

namespace A085853.P2485617892458248848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236972 (SequenceMachineLib.roundAway ((A075499 (n + 1) : ℚ) / (A130321 n ^ 2 : ℚ))).toNat + A039599 n

end

end A085853.P2485617892458248848

/-!
# A085854: Number of 0's in decimal expansion of Fibonacci(n).

The programs for A085854, the canonical program `A085854.P7554941538200685592` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085854 has offset 0).

The definition of A085854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085854.P18045208510425938258

`∑{digits}[A000045(n), floor(acot(#))]`
-/

namespace A085854.P18045208510425938258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => ⌊SequenceMachineLib.acot (x : ℝ)⌋).sum

end

end A085854.P18045208510425938258

namespace A085854

/-- `∑{digits}[A000045(n), floor(acot(#))]` -/
def P18045208510425938258.Spec : Prop :=
  ∀ n, P18045208510425938258.a n = A085854 n

end A085854

/-! ## A085854.P7554941538200685592

`∑{digits}[A000045(n), A000007(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085854

/-- `∑{digits}[A000045(n), A000007(#)]` -/
def P7554941538200685592.Spec : Prop :=
  ∀ n, P7554941538200685592.a n = A085854 n

theorem P7554941538200685592.correct : P7554941538200685592.Spec := by
  intro n
  simp only [A085854]

end A085854

/-! ## A085854.P16496311943163167050

`∑{digits}[A000045(n), A017909(#)]`
-/

namespace A085854.P16496311943163167050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A017909 x).sum

end

end A085854.P16496311943163167050

namespace A085854

/-- `∑{digits}[A000045(n), A017909(#)]` -/
def P16496311943163167050.Spec : Prop :=
  ∀ n, P16496311943163167050.a n = A085854 n

end A085854

/-! ## A085854.P224237399701507914

`∑{digits}[A000045(n), A055641(#)]`
-/

namespace A085854.P224237399701507914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055641 x).sum

end

end A085854.P224237399701507914

namespace A085854

/-- `∑{digits}[A000045(n), A055641(#)]` -/
def P224237399701507914.Spec : Prop :=
  ∀ n, P224237399701507914.a n = A085854 n

end A085854

/-! ## A085854.P328408360541041246

`∑{digits}[A000045(n), A321448(#)]`
-/

namespace A085854.P328408360541041246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A321448 x).sum

end

end A085854.P328408360541041246

namespace A085854

/-- `∑{digits}[A000045(n), A321448(#)]` -/
def P328408360541041246.Spec : Prop :=
  ∀ n, P328408360541041246.a n = A085854 n

end A085854

/-! ## A085854.P6081826145524182524

`∑{digits}[A000045(n), A340998(#)]`
-/

namespace A085854.P6081826145524182524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A340998 (x + 140)).sum

end

end A085854.P6081826145524182524

namespace A085854

/-- `∑{digits}[A000045(n), A340998(#)]` -/
def P6081826145524182524.Spec : Prop :=
  ∀ n, P6081826145524182524.a n = A085854 n

end A085854

/-! ## A085854.P11511048081683135745

`∑{digits}[A000045(n), A178333(#+1)]`
-/

namespace A085854.P11511048081683135745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178333 (x + 1)).sum

end

end A085854.P11511048081683135745

namespace A085854

/-- `∑{digits}[A000045(n), A178333(#+1)]` -/
def P11511048081683135745.Spec : Prop :=
  ∀ n, P11511048081683135745.a n = A085854 n

end A085854

/-! ## A085854.P809846873325648887

`∑{digits}[A236191(n), A178333(#+1)]`
-/

namespace A085854.P809846873325648887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178333 (x + 1)).sum

end

end A085854.P809846873325648887

namespace A085854

/-- `∑{digits}[A236191(n), A178333(#+1)]` -/
def P809846873325648887.Spec : Prop :=
  ∀ n, P809846873325648887.a n = A085854 n

end A085854

/-! ## A085854.P12317661386991017724

`∑{digits}[A000045(n), and(1, A000302(#))]`
-/

namespace A085854.P12317661386991017724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.land 1 (A000302 x)).sum

end

end A085854.P12317661386991017724

namespace A085854

/-- `∑{digits}[A000045(n), and(1, A000302(#))]` -/
def P12317661386991017724.Spec : Prop :=
  ∀ n, P12317661386991017724.a n = A085854 n

end A085854

/-! ## A085854.P9625482888223214449

`∑{digits}[A000045(n), C(2, A005563(#))]`
-/

namespace A085854.P9625482888223214449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose 2 (A005563 x).toNat).sum

end

end A085854.P9625482888223214449

namespace A085854

/-- `∑{digits}[A000045(n), C(2, A005563(#))]` -/
def P9625482888223214449.Spec : Prop :=
  ∀ n, (P9625482888223214449.a n : ℤ) = A085854 n

end A085854

/-! ## A085854.P7047854830950112836

`∑{digits}[A000045(n), C(2, A046092(#))]`
-/

namespace A085854.P7047854830950112836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose 2 (A046092 x).toNat).sum

end

end A085854.P7047854830950112836

namespace A085854

/-- `∑{digits}[A000045(n), C(2, A046092(#))]` -/
def P7047854830950112836.Spec : Prop :=
  ∀ n, (P7047854830950112836.a n : ℤ) = A085854 n

end A085854

/-! ## A085854.P12573594968464283023

`∑{digits}[A000045(n), and(1, A052910(#))]`
-/

namespace A085854.P12573594968464283023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.land 1 (A052910 x)).sum

end

end A085854.P12573594968464283023

namespace A085854

/-- `∑{digits}[A000045(n), and(1, A052910(#))]` -/
def P12573594968464283023.Spec : Prop :=
  ∀ n, P12573594968464283023.a n = A085854 n

end A085854

/-! ## A085854.P9140416817361301997

`∑{digits}[A000045(n), A014669(A000045(#)²)]`
-/

namespace A085854.P9140416817361301997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014669 (A000045 x ^ 2).toNat).sum

end

end A085854.P9140416817361301997

namespace A085854

/-- `∑{digits}[A000045(n), A014669(A000045(#)²)]` -/
def P9140416817361301997.Spec : Prop :=
  ∀ n, P9140416817361301997.a n = A085854 n

end A085854

/-! ## A085854.P474645119065444661

`∑{digits}[A000045(n), A014669(A000040(#+1))]`
-/

namespace A085854.P474645119065444661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014669 (A000040 (x + 1)).toNat).sum

end

end A085854.P474645119065444661

namespace A085854

/-- `∑{digits}[A000045(n), A014669(A000040(#+1))]` -/
def P474645119065444661.Spec : Prop :=
  ∀ n, P474645119065444661.a n = A085854 n

end A085854

/-!
# A085855: Number of 1's in decimal expansion of Fibonacci(n).

The programs for A085855, the canonical program `A085855.P13874846491996111652` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085855 has offset 0).

The definition of A085855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085855.P13874846491996111652

`∑{digits}[A000045(n), C(C(2, #), 2)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085855

/-- `∑{digits}[A000045(n), C(C(2, #), 2)]` -/
def P13874846491996111652.Spec : Prop :=
  ∀ n, (P13874846491996111652.a n : ℤ) = A085855 n

theorem P13874846491996111652.correct : P13874846491996111652.Spec := by
  intro n
  simp only [A085855]

end A085855

/-! ## A085855.P16144803274407268111

`∑{digits}[A000045(n), A178333(#)]`
-/

namespace A085855.P16144803274407268111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178333 x).sum

end

end A085855.P16144803274407268111

namespace A085855

/-- `∑{digits}[A000045(n), A178333(#)]` -/
def P16144803274407268111.Spec : Prop :=
  ∀ n, P16144803274407268111.a n = A085855 n

end A085855

/-! ## A085855.P6848376551991625632

`∑{digits}[A236191(n), A178333(#)]`
-/

namespace A085855.P6848376551991625632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178333 x).sum

end

end A085855.P6848376551991625632

namespace A085855

/-- `∑{digits}[A236191(n), A178333(#)]` -/
def P6848376551991625632.Spec : Prop :=
  ∀ n, P6848376551991625632.a n = A085855 n

end A085855

/-! ## A085855.P10862975001396451061

`∑{digits}[A236191(n), A251766(#)]`
-/

namespace A085855.P10862975001396451061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A251766 x).sum

end

end A085855.P10862975001396451061

namespace A085855

/-- `∑{digits}[A236191(n), A251766(#)]` -/
def P10862975001396451061.Spec : Prop :=
  ∀ n, P10862975001396451061.a n = A085855 n

end A085855

/-! ## A085855.P14733566590696922374

`∑{digits}[A000045(n), A045840(#+2)]`
-/

namespace A085855.P14733566590696922374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A045840 (x + 2)).sum

end

end A085855.P14733566590696922374

namespace A085855

/-- `∑{digits}[A000045(n), A045840(#+2)]` -/
def P14733566590696922374.Spec : Prop :=
  ∀ n, P14733566590696922374.a n = A085855 n

end A085855

/-! ## A085855.P15683026762394009717

`∑{digits}[A236191(n), A316864(#+2)]`
-/

namespace A085855.P15683026762394009717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316864 (x + 2)).sum

end

end A085855.P15683026762394009717

namespace A085855

/-- `∑{digits}[A236191(n), A316864(#+2)]` -/
def P15683026762394009717.Spec : Prop :=
  ∀ n, P15683026762394009717.a n = A085855 n

end A085855

/-! ## A085855.P15531385427204489075

`∑{digits}[A000045(n), A132440(#²²)]`
-/

namespace A085855.P15531385427204489075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A132440 ((x ^ 2) ^ 2)).sum

end

end A085855.P15531385427204489075

namespace A085855

/-- `∑{digits}[A000045(n), A132440(#²²)]` -/
def P15531385427204489075.Spec : Prop :=
  ∀ n, P15531385427204489075.a n = A085855 n

end A085855

/-! ## A085855.P17848362775350332777

`∑{digits}[A000045(n), and(#, A162884(#+1)²)]`
-/

namespace A085855.P17848362775350332777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.land (x : ℤ) (A162884 (x + 1) ^ 2)).sum

end

end A085855.P17848362775350332777

namespace A085855

/-- `∑{digits}[A000045(n), and(#, A162884(#+1)²)]` -/
def P17848362775350332777.Spec : Prop :=
  ∀ n, P17848362775350332777.a n = A085855 n

end A085855

/-! ## A085855.P9451403303745470036

`∑{digits}[A000045(n), A000007(A030000(#))]`
-/

namespace A085855.P9451403303745470036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 (A030000 x).toNat).sum

end

end A085855.P9451403303745470036

namespace A085855

/-- `∑{digits}[A000045(n), A000007(A030000(#))]` -/
def P9451403303745470036.Spec : Prop :=
  ∀ n, P9451403303745470036.a n = A085855 n

end A085855

/-! ## A085855.P10889278526823934891

`∑{digits}[A000045(n), A000007(A062520(#))]`
-/

namespace A085855.P10889278526823934891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 (A062520 x).toNat).sum

end

end A085855.P10889278526823934891

namespace A085855

/-- `∑{digits}[A000045(n), A000007(A062520(#))]` -/
def P10889278526823934891.Spec : Prop :=
  ∀ n, P10889278526823934891.a n = A085855 n

end A085855

/-! ## A085855.P5588147894445796709

`∑{digits}[A000045(n), A000071(A129708(#²)+1)]`
-/

namespace A085855.P5588147894445796709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000071 (A129708 (x ^ 2) + 1).toNat).sum

end

end A085855.P5588147894445796709

namespace A085855

/-- `∑{digits}[A000045(n), A000071(A129708(#²)+1)]` -/
def P5588147894445796709.Spec : Prop :=
  ∀ n, P5588147894445796709.a n = A085855 n

end A085855

/-!
# A085856: Number of 2's in decimal expansion of Fibonacci(n).

The programs for A085856, the canonical program `A085856.P15661587018022403811` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085856 has offset 0).

The definition of A085856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085856.P10059195224322782939

`∑{digits}[A000045(n), A045840(#+1)]`
-/

namespace A085856.P10059195224322782939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A045840 (x + 1)).sum

end

end A085856.P10059195224322782939

namespace A085856

/-- `∑{digits}[A000045(n), A045840(#+1)]` -/
def P10059195224322782939.Spec : Prop :=
  ∀ n, P10059195224322782939.a n = A085856 n

end A085856

/-! ## A085856.P7421765509273193436

`∑{digits}[A236191(n), A160753(#+1)]`
-/

namespace A085856.P7421765509273193436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A160753 (x + 1)).sum

end

end A085856.P7421765509273193436

namespace A085856

/-- `∑{digits}[A236191(n), A160753(#+1)]` -/
def P7421765509273193436.Spec : Prop :=
  ∀ n, P7421765509273193436.a n = A085856 n

end A085856

/-! ## A085856.P3390685472762972438

`∑{digits}[A236191(n), A316864(#+1)]`
-/

namespace A085856.P3390685472762972438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316864 (x + 1)).sum

end

end A085856.P3390685472762972438

namespace A085856

/-- `∑{digits}[A236191(n), A316864(#+1)]` -/
def P3390685472762972438.Spec : Prop :=
  ∀ n, P3390685472762972438.a n = A085856 n

end A085856

/-! ## A085856.P688847129566818194

`∑{digits}[A000045(n), A331902(#+2)]`
-/

namespace A085856.P688847129566818194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A331902 (x + 2)).sum

end

end A085856.P688847129566818194

namespace A085856

/-- `∑{digits}[A000045(n), A331902(#+2)]` -/
def P688847129566818194.Spec : Prop :=
  ∀ n, P688847129566818194.a n = A085856 n

end A085856

/-! ## A085856.P5886914167679939314

`∑{digits}[A000045(n), floor(#/A156464(#+1))]`
-/

namespace A085856.P5886914167679939314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => ⌊(x : ℚ) / (A156464 (x + 1) : ℚ)⌋).sum

end

end A085856.P5886914167679939314

namespace A085856

/-- `∑{digits}[A000045(n), floor(#/A156464(#+1))]` -/
def P5886914167679939314.Spec : Prop :=
  ∀ n, P5886914167679939314.a n = A085856 n

end A085856

/-! ## A085856.P15013960144115282245

`∑{digits}[A000045(n), A130125(A227571(#))]`
-/

namespace A085856.P15013960144115282245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A130125 (A227571 x).toNat).sum

end

end A085856.P15013960144115282245

namespace A085856

/-- `∑{digits}[A000045(n), A130125(A227571(#))]` -/
def P15013960144115282245.Spec : Prop :=
  ∀ n, P15013960144115282245.a n = A085856 n

end A085856

/-! ## A085856.P8045353655461298701

`∑{digits}[A000045(n), 2-A214304(A000700(#))]`
-/

namespace A085856.P8045353655461298701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 - A214304 (A000700 x).toNat).sum

end

end A085856.P8045353655461298701

namespace A085856

/-- `∑{digits}[A000045(n), 2-A214304(A000700(#))]` -/
def P8045353655461298701.Spec : Prop :=
  ∀ n, P8045353655461298701.a n = A085856 n

end A085856

/-! ## A085856.P2460380596674198921

`∑{digits}[A000045(n), A209229(#-A209229(#))]`
-/

namespace A085856.P2460380596674198921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A209229 ((x : ℤ) - A209229 x).toNat).sum

end

end A085856.P2460380596674198921

namespace A085856

/-- `∑{digits}[A000045(n), A209229(#-A209229(#))]` -/
def P2460380596674198921.Spec : Prop :=
  ∀ n, P2460380596674198921.a n = A085856 n

end A085856

/-! ## A085856.P15661587018022403811

`∑{digits}[A000045(n), A002726(A002726(2*#+1)+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085856

/-- `∑{digits}[A000045(n), A002726(A002726(2*#+1)+1)]` -/
def P15661587018022403811.Spec : Prop :=
  ∀ n, P15661587018022403811.a n = A085856 n

theorem P15661587018022403811.correct : P15661587018022403811.Spec := by
  intro n
  simp only [A085856]

end A085856

/-!
# A085857: Number of 3's in decimal expansion of Fibonacci(n).

The programs for A085857, the canonical program `A085857.P7015236969866212170` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085857 has offset 0).

The definition of A085857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085857.P4224598781633492061

`∑{digits}[A000045(n), A025456(#)]`
-/

namespace A085857.P4224598781633492061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025456 x).sum

end

end A085857.P4224598781633492061

namespace A085857

/-- `∑{digits}[A000045(n), A025456(#)]` -/
def P4224598781633492061.Spec : Prop :=
  ∀ n, P4224598781633492061.a n = A085857 n

end A085857

/-! ## A085857.P7621786839409871604

`∑{digits}[A000045(n), A045840(#)]`
-/

namespace A085857.P7621786839409871604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A045840 x).sum

end

end A085857.P7621786839409871604

namespace A085857

/-- `∑{digits}[A000045(n), A045840(#)]` -/
def P7621786839409871604.Spec : Prop :=
  ∀ n, P7621786839409871604.a n = A085857 n

end A085857

/-! ## A085857.P9354056519840166798

`∑{digits}[A236191(n), A160753(#)]`
-/

namespace A085857.P9354056519840166798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A160753 x).sum

end

end A085857.P9354056519840166798

namespace A085857

/-- `∑{digits}[A236191(n), A160753(#)]` -/
def P9354056519840166798.Spec : Prop :=
  ∀ n, P9354056519840166798.a n = A085857 n

end A085857

/-! ## A085857.P14414642133282705028

`∑{digits}[A236191(n), A316864(#)]`
-/

namespace A085857.P14414642133282705028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316864 x).sum

end

end A085857.P14414642133282705028

namespace A085857

/-- `∑{digits}[A236191(n), A316864(#)]` -/
def P14414642133282705028.Spec : Prop :=
  ∀ n, P14414642133282705028.a n = A085857 n

end A085857

/-! ## A085857.P7015236969866212170

`∑{digits}[A000045(n), A004198(#+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A085857

/-- `∑{digits}[A000045(n), A004198(#+1)]` -/
def P7015236969866212170.Spec : Prop :=
  ∀ n, P7015236969866212170.a n = A085857 n

theorem P7015236969866212170.correct : P7015236969866212170.Spec := by
  intro n
  simp only [A085857]

end A085857

/-! ## A085857.P13913778783490236174

`∑{digits}[A000045(n), A331902(#+1)]`
-/

namespace A085857.P13913778783490236174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A331902 (x + 1)).sum

end

end A085857.P13913778783490236174

namespace A085857

/-- `∑{digits}[A000045(n), A331902(#+1)]` -/
def P13913778783490236174.Spec : Prop :=
  ∀ n, P13913778783490236174.a n = A085857 n

end A085857

/-! ## A085857.P8491385200381662467

`∑{digits}[A000045(n), A011723(#²²)]`
-/

namespace A085857.P8491385200381662467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011723 ((x ^ 2) ^ 2)).sum

end

end A085857.P8491385200381662467

namespace A085857

/-- `∑{digits}[A000045(n), A011723(#²²)]` -/
def P8491385200381662467.Spec : Prop :=
  ∀ n, P8491385200381662467.a n = A085857 n

end A085857

/-! ## A085857.P1385931435379435443

`∑{digits}[A000045(n), A059648(A000045(#))]`
-/

namespace A085857.P1385931435379435443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059648 (A000045 x).toNat).sum

end

end A085857.P1385931435379435443

namespace A085857

/-- `∑{digits}[A000045(n), A059648(A000045(#))]` -/
def P1385931435379435443.Spec : Prop :=
  ∀ n, P1385931435379435443.a n = A085857 n

end A085857

/-! ## A085857.P1328477688759632375

`∑{digits}[A000045(n), A321448(A047203(#+9))]`
-/

namespace A085857.P1328477688759632375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A321448 (A047203 (x + 9)).toNat).sum

end

end A085857.P1328477688759632375

namespace A085857

/-- `∑{digits}[A000045(n), A321448(A047203(#+9))]` -/
def P1328477688759632375.Spec : Prop :=
  ∀ n, P1328477688759632375.a n = A085857 n

end A085857

/-! ## A085857.P2868275557104072465

`∑{digits}[A000045(n), A049430(A007318(#+1)+1)]`
-/

namespace A085857.P2868275557104072465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A049430 (A007318 (x + 1) + 1).toNat).sum

end

end A085857.P2868275557104072465

namespace A085857

/-- `∑{digits}[A000045(n), A049430(A007318(#+1)+1)]` -/
def P2868275557104072465.Spec : Prop :=
  ∀ n, P2868275557104072465.a n = A085857 n

end A085857

/-! ## A085857.P7264048687702682631

`∑{digits}[A000045(n), A111616(A246207(#)+1)-1]`
-/

namespace A085857.P7264048687702682631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A111616 (A246207 x + 1).toNat - 1).sum

end

end A085857.P7264048687702682631

namespace A085857

/-- `∑{digits}[A000045(n), A111616(A246207(#)+1)-1]` -/
def P7264048687702682631.Spec : Prop :=
  ∀ n, P7264048687702682631.a n = A085857 n

end A085857

/-! ## A085857.P11090496073356693459

`∑{digits}[A000045(n), A029372(A004736(2*#+1))]`
-/

namespace A085857.P11090496073356693459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A029372 (A004736 (2 * x + 1)).toNat).sum

end

end A085857.P11090496073356693459

namespace A085857

/-- `∑{digits}[A000045(n), A029372(A004736(2*#+1))]` -/
def P11090496073356693459.Spec : Prop :=
  ∀ n, P11090496073356693459.a n = A085857 n

end A085857

/-! ## A085857.P15738262873017111826

`∑{digits}[A000045(n), A248639(#)%A167600(#+1)]`
-/

namespace A085857.P15738262873017111826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.tmod (A248639 x) (A167600 (x + 1))).sum

end

end A085857.P15738262873017111826

namespace A085857

/-- `∑{digits}[A000045(n), A248639(#)%A167600(#+1)]` -/
def P15738262873017111826.Spec : Prop :=
  ∀ n, P15738262873017111826.a n = A085857 n

end A085857

/-!
# A085858: Number of 4's in decimal expansion of Fibonacci(n).

The programs for A085858, the canonical program `A085858.P17719422220940736004` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085858 has offset 0).

The definition of A085858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085858.P17719422220940736004

`∑{digits}[A000045(n), val(#+2, 6)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085858

/-- `∑{digits}[A000045(n), val(#+2, 6)]` -/
def P17719422220940736004.Spec : Prop :=
  ∀ n, (P17719422220940736004.a n : ℤ) = A085858 n

theorem P17719422220940736004.correct : P17719422220940736004.Spec := by
  intro n
  simp only [A085858]

end A085858

/-! ## A085858.P11865023502685689686

`∑{digits}[A000045(n), A004198(#)]`
-/

namespace A085858.P11865023502685689686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004198 x).sum

end

end A085858.P11865023502685689686

namespace A085858

/-- `∑{digits}[A000045(n), A004198(#)]` -/
def P11865023502685689686.Spec : Prop :=
  ∀ n, P11865023502685689686.a n = A085858 n

end A085858

/-! ## A085858.P795805377783905786

`∑{digits}[A000045(n), A331902(#)]`
-/

namespace A085858.P795805377783905786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A331902 x).sum

end

end A085858.P795805377783905786

namespace A085858

/-- `∑{digits}[A000045(n), A331902(#)]` -/
def P795805377783905786.Spec : Prop :=
  ∀ n, P795805377783905786.a n = A085858 n

end A085858

/-! ## A085858.P11210027020228719315

`∑{digits}[A000045(n), A186746(#+2)]`
-/

namespace A085858.P11210027020228719315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A186746 (x + 2)).sum

end

end A085858.P11210027020228719315

namespace A085858

/-- `∑{digits}[A000045(n), A186746(#+2)]` -/
def P11210027020228719315.Spec : Prop :=
  ∀ n, P11210027020228719315.a n = A085858 n

end A085858

/-! ## A085858.P14342488721630505408

`∑{digits}[A236191(n), A011686(#+2)]`
-/

namespace A085858.P14342488721630505408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011686 (x + 2)).sum

end

end A085858.P14342488721630505408

namespace A085858

/-- `∑{digits}[A236191(n), A011686(#+2)]` -/
def P14342488721630505408.Spec : Prop :=
  ∀ n, P14342488721630505408.a n = A085858 n

end A085858

/-! ## A085858.P7206222334923499026

`∑{digits}[A000045(n), and(1, A225975(#))]`
-/

namespace A085858.P7206222334923499026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.land 1 (A225975 x)).sum

end

end A085858.P7206222334923499026

namespace A085858

/-- `∑{digits}[A000045(n), and(1, A225975(#))]` -/
def P7206222334923499026.Spec : Prop :=
  ∀ n, P7206222334923499026.a n = A085858 n

end A085858

/-! ## A085858.P11490638523097955375

`∑{digits}[A000045(n), A014669(A007318(#))]`
-/

namespace A085858.P11490638523097955375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014669 (A007318 x).toNat).sum

end

end A085858.P11490638523097955375

namespace A085858

/-- `∑{digits}[A000045(n), A014669(A007318(#))]` -/
def P11490638523097955375.Spec : Prop :=
  ∀ n, P11490638523097955375.a n = A085858 n

end A085858

/-! ## A085858.P14055425893013780023

`∑{digits}[A000045(n), A025456(A000045(#))]`
-/

namespace A085858.P14055425893013780023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025456 (A000045 x).toNat).sum

end

end A085858.P14055425893013780023

namespace A085858

/-- `∑{digits}[A000045(n), A025456(A000045(#))]` -/
def P14055425893013780023.Spec : Prop :=
  ∀ n, P14055425893013780023.a n = A085858 n

end A085858

/-! ## A085858.P3028680738283962041

`∑{digits}[A000045(n), 1-A164057(A022167(#))]`
-/

namespace A085858.P3028680738283962041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A164057 (A022167 x).toNat).sum

end

end A085858.P3028680738283962041

namespace A085858

/-- `∑{digits}[A000045(n), 1-A164057(A022167(#))]` -/
def P3028680738283962041.Spec : Prop :=
  ∀ n, P3028680738283962041.a n = A085858 n

end A085858

/-! ## A085858.P17329763337462022897

`∑{digits}[A000045(n), A164057(A022167(#)+3)]`
-/

namespace A085858.P17329763337462022897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A164057 (A022167 x + 3).toNat).sum

end

end A085858.P17329763337462022897

namespace A085858

/-- `∑{digits}[A000045(n), A164057(A022167(#)+3)]` -/
def P17329763337462022897.Spec : Prop :=
  ∀ n, P17329763337462022897.a n = A085858 n

end A085858

/-! ## A085858.P7835914842396500450

`∑{digits}[Δ[A000045(n+1)], and(1, 6%(#+1))]`
-/

namespace A085858.P7835914842396500450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.land 1 (6 % (x + 1))).sum

end

end A085858.P7835914842396500450

namespace A085858

/-- `∑{digits}[Δ[A000045(n+1)], and(1, 6%(#+1))]` -/
def P7835914842396500450.Spec : Prop :=
  ∀ n, (P7835914842396500450.a n : ℤ) = A085858 n

end A085858

/-! ## A085858.P17583894467495545349

`∑{digits}[A022093(n), A251763(#)]`
-/

namespace A085858.P17583894467495545349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A251763 x).sum

end

end A085858.P17583894467495545349

namespace A085858

/-- `∑{digits}[A022093(n), A251763(#)]` -/
def P17583894467495545349.Spec : Prop :=
  ∀ n, P17583894467495545349.a n = A085858 n

end A085858

/-!
# A085859: Number of 5's in decimal expansion of Fibonacci(n).

The programs for A085859, the canonical program `A085859.P1868171469195014030` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085859 has offset 0).

The definition of A085859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085859.P1868171469195014030

`∑{digits}[A000045(n), val(#+1, 6)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085859

/-- `∑{digits}[A000045(n), val(#+1, 6)]` -/
def P1868171469195014030.Spec : Prop :=
  ∀ n, (P1868171469195014030.a n : ℤ) = A085859 n

theorem P1868171469195014030.correct : P1868171469195014030.Spec := by
  intro n
  simp only [A085859]

end A085859

/-! ## A085859.P7939737463629169837

`∑{digits}[A000045(n), A025436(#)]`
-/

namespace A085859.P7939737463629169837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025436 x).sum

end

end A085859.P7939737463629169837

namespace A085859

/-- `∑{digits}[A000045(n), A025436(#)]` -/
def P7939737463629169837.Spec : Prop :=
  ∀ n, P7939737463629169837.a n = A085859 n

end A085859

/-! ## A085859.P558209046819636563

`∑{digits}[A000045(n), A025441(#)]`
-/

namespace A085859.P558209046819636563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025441 x).sum

end

end A085859.P558209046819636563

namespace A085859

/-- `∑{digits}[A000045(n), A025441(#)]` -/
def P558209046819636563.Spec : Prop :=
  ∀ n, P558209046819636563.a n = A085859 n

end A085859

/-! ## A085859.P14003067445776946847

`∑{digits}[A000045(n), A186746(#+1)]`
-/

namespace A085859.P14003067445776946847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A186746 (x + 1)).sum

end

end A085859.P14003067445776946847

namespace A085859

/-- `∑{digits}[A000045(n), A186746(#+1)]` -/
def P14003067445776946847.Spec : Prop :=
  ∀ n, P14003067445776946847.a n = A085859 n

end A085859

/-! ## A085859.P17467168000778689986

`∑{digits}[A236191(n), A011686(#+1)]`
-/

namespace A085859.P17467168000778689986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011686 (x + 1)).sum

end

end A085859.P17467168000778689986

namespace A085859

/-- `∑{digits}[A236191(n), A011686(#+1)]` -/
def P17467168000778689986.Spec : Prop :=
  ∀ n, P17467168000778689986.a n = A085859 n

end A085859

/-! ## A085859.P10348068525066166902

`∑{digits}[A236191(n), A085862(#+1)]`
-/

namespace A085859.P10348068525066166902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A085862 (x + 1)).sum

end

end A085859.P10348068525066166902

namespace A085859

/-- `∑{digits}[A236191(n), A085862(#+1)]` -/
def P10348068525066166902.Spec : Prop :=
  ∀ n, P10348068525066166902.a n = A085859 n

end A085859

/-! ## A085859.P13167971455182934215

`∑{digits}[A000045(n), A293162(#+2)]`
-/

namespace A085859.P13167971455182934215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A293162 (x + 2)).sum

end

end A085859.P13167971455182934215

namespace A085859

/-- `∑{digits}[A000045(n), A293162(#+2)]` -/
def P13167971455182934215.Spec : Prop :=
  ∀ n, P13167971455182934215.a n = A085859 n

end A085859

/-! ## A085859.P13381250782504882084

`∑{digits}[A000045(n), A025456(2*#)]`
-/

namespace A085859.P13381250782504882084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025456 (2 * x)).sum

end

end A085859.P13381250782504882084

namespace A085859

/-- `∑{digits}[A000045(n), A025456(2*#)]` -/
def P13381250782504882084.Spec : Prop :=
  ∀ n, P13381250782504882084.a n = A085859 n

end A085859

/-! ## A085859.P1969791933062625343

`∑{digits}[A000045(n), A321448(#+9)]`
-/

namespace A085859.P1969791933062625343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A321448 (x + 9)).sum

end

end A085859.P1969791933062625343

namespace A085859

/-- `∑{digits}[A000045(n), A321448(#+9)]` -/
def P1969791933062625343.Spec : Prop :=
  ∀ n, P1969791933062625343.a n = A085859 n

end A085859

/-! ## A085859.P7140966387844510309

`∑{digits}[A000045(n), A234017(A234017(#))]`
-/

namespace A085859.P7140966387844510309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A234017 (A234017 x).toNat).sum

end

end A085859.P7140966387844510309

namespace A085859

/-- `∑{digits}[A000045(n), A234017(A234017(#))]` -/
def P7140966387844510309.Spec : Prop :=
  ∀ n, P7140966387844510309.a n = A085859 n

end A085859

/-! ## A085859.P4544798276108891807

`∑{digits}[A000045(n), A075053(A075053(#²))]`
-/

namespace A085859.P4544798276108891807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A075053 (A075053 (x ^ 2)).toNat).sum

end

end A085859.P4544798276108891807

namespace A085859

/-- `∑{digits}[A000045(n), A075053(A075053(#²))]` -/
def P4544798276108891807.Spec : Prop :=
  ∀ n, P4544798276108891807.a n = A085859 n

end A085859

/-! ## A085859.P16075837698335202153

`∑{digits}[A000045(n), A000073(A027052(#+2))]`
-/

namespace A085859.P16075837698335202153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000073 (A027052 (x + 2)).toNat).sum

end

end A085859.P16075837698335202153

namespace A085859

/-- `∑{digits}[A000045(n), A000073(A027052(#+2))]` -/
def P16075837698335202153.Spec : Prop :=
  ∀ n, P16075837698335202153.a n = A085859 n

end A085859

/-! ## A085859.P9304144737981273555

`∑{digits}[A000045(n), 1-A100224(A100224(#))]`
-/

namespace A085859.P9304144737981273555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A100224 (A100224 x).toNat).sum

end

end A085859.P9304144737981273555

namespace A085859

/-- `∑{digits}[A000045(n), 1-A100224(A100224(#))]` -/
def P9304144737981273555.Spec : Prop :=
  ∀ n, P9304144737981273555.a n = A085859 n

end A085859

/-! ## A085859.P934963716246842373

`∑{digits}[A000045(n), A285162(A216913(#+1)+#+1)]`
-/

namespace A085859.P934963716246842373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A285162 (A216913 (x + 1) + (x : ℤ) + 1).toNat).sum

end

end A085859.P934963716246842373

namespace A085859

/-- `∑{digits}[A000045(n), A285162(A216913(#+1)+#+1)]` -/
def P934963716246842373.Spec : Prop :=
  ∀ n, P934963716246842373.a n = A085859 n

end A085859

/-!
# A085860: Number of 6's in decimal expansion of Fibonacci(n).

The programs for A085860, the canonical program `A085860.P17709780043344454738` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085860 has offset 0).

The definition of A085860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085860.P4901785224067964645

`∑{digits}[A000045(n), A186746(#)]`
-/

namespace A085860.P4901785224067964645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A186746 x).sum

end

end A085860.P4901785224067964645

namespace A085860

/-- `∑{digits}[A000045(n), A186746(#)]` -/
def P4901785224067964645.Spec : Prop :=
  ∀ n, P4901785224067964645.a n = A085860 n

end A085860

/-! ## A085860.P4184902360832700615

`∑{digits}[A236191(n), A011686(#)]`
-/

namespace A085860.P4184902360832700615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011686 x).sum

end

end A085860.P4184902360832700615

namespace A085860

/-- `∑{digits}[A236191(n), A011686(#)]` -/
def P4184902360832700615.Spec : Prop :=
  ∀ n, P4184902360832700615.a n = A085860 n

end A085860

/-! ## A085860.P2003906877386043529

`∑{digits}[A236191(n), A085862(#)]`
-/

namespace A085860.P2003906877386043529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A085862 x).sum

end

end A085860.P2003906877386043529

namespace A085860

/-- `∑{digits}[A236191(n), A085862(#)]` -/
def P2003906877386043529.Spec : Prop :=
  ∀ n, P2003906877386043529.a n = A085860 n

end A085860

/-! ## A085860.P5354251828918907479

`∑{digits}[A236191(n), A316864(#²)]`
-/

namespace A085860.P5354251828918907479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316864 (x ^ 2)).sum

end

end A085860.P5354251828918907479

namespace A085860

/-- `∑{digits}[A236191(n), A316864(#²)]` -/
def P5354251828918907479.Spec : Prop :=
  ∀ n, P5354251828918907479.a n = A085860 n

end A085860

/-! ## A085860.P11542435109715095348

`∑{digits}[A000045(n), A135133(#+1)]`
-/

namespace A085860.P11542435109715095348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A135133 (x + 1)).sum

end

end A085860.P11542435109715095348

namespace A085860

/-- `∑{digits}[A000045(n), A135133(#+1)]` -/
def P11542435109715095348.Spec : Prop :=
  ∀ n, P11542435109715095348.a n = A085860 n

end A085860

/-! ## A085860.P17709780043344454738

`∑{digits}[A000045(n), A293162(#+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A085860

/-- `∑{digits}[A000045(n), A293162(#+1)]` -/
def P17709780043344454738.Spec : Prop :=
  ∀ n, P17709780043344454738.a n = A085860 n

theorem P17709780043344454738.correct : P17709780043344454738.Spec := by
  intro n
  simp only [A085860]

end A085860

/-! ## A085860.P4860694171575682435

`∑{digits}[A000045(n), A253638(#+2)]`
-/

namespace A085860.P4860694171575682435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A253638 (x + 2)).sum

end

end A085860.P4860694171575682435

namespace A085860

/-- `∑{digits}[A000045(n), A253638(#+2)]` -/
def P4860694171575682435.Spec : Prop :=
  ∀ n, P4860694171575682435.a n = A085860 n

end A085860

/-! ## A085860.P14887414477624126172

`∑{digits}[A236191(n), A258997(#+2)]`
-/

namespace A085860.P14887414477624126172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A258997 (x + 2)).sum

end

end A085860.P14887414477624126172

namespace A085860

/-- `∑{digits}[A236191(n), A258997(#+2)]` -/
def P14887414477624126172.Spec : Prop :=
  ∀ n, P14887414477624126172.a n = A085860 n

end A085860

/-! ## A085860.P14769008755473503734

`∑{digits}[A000045(n), val(A000032(#), 6)]`
-/

namespace A085860.P14769008755473503734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => SequenceMachineLib.valuation (A000032 x).toNat 6).sum

end

end A085860.P14769008755473503734

namespace A085860

/-- `∑{digits}[A000045(n), val(A000032(#), 6)]` -/
def P14769008755473503734.Spec : Prop :=
  ∀ n, (P14769008755473503734.a n : ℤ) = A085860 n

end A085860

/-! ## A085860.P10952050212987230848

`∑{digits}[A000045(n), A316869(A000045(#))]`
-/

namespace A085860.P10952050212987230848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316869 (A000045 x).toNat).sum

end

end A085860.P10952050212987230848

namespace A085860

/-- `∑{digits}[A000045(n), A316869(A000045(#))]` -/
def P10952050212987230848.Spec : Prop :=
  ∀ n, P10952050212987230848.a n = A085860 n

end A085860

/-! ## A085860.P3524190294864230451

`∑{digits}[A000045(n), A029372(A004736(#+1))]`
-/

namespace A085860.P3524190294864230451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A029372 (A004736 (x + 1)).toNat).sum

end

end A085860.P3524190294864230451

namespace A085860

/-- `∑{digits}[A000045(n), A029372(A004736(#+1))]` -/
def P3524190294864230451.Spec : Prop :=
  ∀ n, P3524190294864230451.a n = A085860 n

end A085860

/-! ## A085860.P12196043155127694082

`∑{digits}[A000045(n), A321448(A039578(#+1)+2)]`
-/

namespace A085860.P12196043155127694082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A321448 (A039578 (x + 1) + 2).toNat).sum

end

end A085860.P12196043155127694082

namespace A085860

/-- `∑{digits}[A000045(n), A321448(A039578(#+1)+2)]` -/
def P12196043155127694082.Spec : Prop :=
  ∀ n, P12196043155127694082.a n = A085860 n

end A085860

/-! ## A085860.P3181983430844798741

`∑{digits}[A000045(n), 1-A286563(A284856(#+1)+1)]`
-/

namespace A085860.P3181983430844798741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A286563 (A284856 (x + 1) + 1).toNat).sum

end

end A085860.P3181983430844798741

namespace A085860

/-- `∑{digits}[A000045(n), 1-A286563(A284856(#+1)+1)]` -/
def P3181983430844798741.Spec : Prop :=
  ∀ n, P3181983430844798741.a n = A085860 n

end A085860

/-! ## A085860.P10644004623366299681

`∑{digits}[A000045(n), A285162(A285162(#+1)+#+1)]`
-/

namespace A085860.P10644004623366299681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A285162 (A285162 (x + 1) + (x : ℤ) + 1).toNat).sum

end

end A085860.P10644004623366299681

namespace A085860

/-- `∑{digits}[A000045(n), A285162(A285162(#+1)+#+1)]` -/
def P10644004623366299681.Spec : Prop :=
  ∀ n, P10644004623366299681.a n = A085860 n

end A085860

/-!
# A085861: Number of 7's in decimal expansion of Fibonacci(n).

The programs for A085861, the canonical program `A085861.P2818835720903400278` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085861 has offset 0).

The definition of A085861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085861.P1814147406520523987

`∑{digits}[A000045(n), A011721(#)]`
-/

namespace A085861.P1814147406520523987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011721 x).sum

end

end A085861.P1814147406520523987

namespace A085861

/-- `∑{digits}[A000045(n), A011721(#)]` -/
def P1814147406520523987.Spec : Prop :=
  ∀ n, P1814147406520523987.a n = A085861 n

end A085861

/-! ## A085861.P2734639673255757802

`∑{digits}[A000045(n), A135133(#)]`
-/

namespace A085861.P2734639673255757802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A135133 x).sum

end

end A085861.P2734639673255757802

namespace A085861

/-- `∑{digits}[A000045(n), A135133(#)]` -/
def P2734639673255757802.Spec : Prop :=
  ∀ n, P2734639673255757802.a n = A085861 n

end A085861

/-! ## A085861.P10840157037563506418

`∑{digits}[A000045(n), A251760(#)]`
-/

namespace A085861.P10840157037563506418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A251760 x).sum

end

end A085861.P10840157037563506418

namespace A085861

/-- `∑{digits}[A000045(n), A251760(#)]` -/
def P10840157037563506418.Spec : Prop :=
  ∀ n, P10840157037563506418.a n = A085861 n

end A085861

/-! ## A085861.P2818835720903400278

`∑{digits}[A000045(n), A293162(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A085861

/-- `∑{digits}[A000045(n), A293162(#)]` -/
def P2818835720903400278.Spec : Prop :=
  ∀ n, P2818835720903400278.a n = A085861 n

theorem P2818835720903400278.correct : P2818835720903400278.Spec := by
  intro n
  simp only [A085861]

end A085861

/-! ## A085861.P13858334273510362192

`∑{digits}[A000045(n), A253638(#+1)]`
-/

namespace A085861.P13858334273510362192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A253638 (x + 1)).sum

end

end A085861.P13858334273510362192

namespace A085861

/-- `∑{digits}[A000045(n), A253638(#+1)]` -/
def P13858334273510362192.Spec : Prop :=
  ∀ n, P13858334273510362192.a n = A085861 n

end A085861

/-! ## A085861.P7384226166347933791

`∑{digits}[A000045(n), A316869(#+1)]`
-/

namespace A085861.P7384226166347933791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316869 (x + 1)).sum

end

end A085861.P7384226166347933791

namespace A085861

/-- `∑{digits}[A000045(n), A316869(#+1)]` -/
def P7384226166347933791.Spec : Prop :=
  ∀ n, P7384226166347933791.a n = A085861 n

end A085861

/-! ## A085861.P18079334039097046085

`∑{digits}[A236191(n), A258997(#+1)]`
-/

namespace A085861.P18079334039097046085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A258997 (x + 1)).sum

end

end A085861.P18079334039097046085

namespace A085861

/-- `∑{digits}[A236191(n), A258997(#+1)]` -/
def P18079334039097046085.Spec : Prop :=
  ∀ n, P18079334039097046085.a n = A085861 n

end A085861

/-! ## A085861.P7178839075351298230

`∑{digits}[A000045(n), A011723(#+2)]`
-/

namespace A085861.P7178839075351298230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011723 (x + 2)).sum

end

end A085861.P7178839075351298230

namespace A085861

/-- `∑{digits}[A000045(n), A011723(#+2)]` -/
def P7178839075351298230.Spec : Prop :=
  ∀ n, P7178839075351298230.a n = A085861 n

end A085861

/-! ## A085861.P16444985889883427521

`∑{digits}[A000045(n), A102683(#+2)]`
-/

namespace A085861.P16444985889883427521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A102683 (x + 2)).sum

end

end A085861.P16444985889883427521

namespace A085861

/-- `∑{digits}[A000045(n), A102683(#+2)]` -/
def P16444985889883427521.Spec : Prop :=
  ∀ n, P16444985889883427521.a n = A085861 n

end A085861

/-! ## A085861.P12920038250932580064

`∑{digits}[A236191(n), A085858(#+2)]`
-/

namespace A085861.P12920038250932580064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A085858 (x + 2)).sum

end

end A085861.P12920038250932580064

namespace A085861

/-- `∑{digits}[A236191(n), A085858(#+2)]` -/
def P12920038250932580064.Spec : Prop :=
  ∀ n, P12920038250932580064.a n = A085861 n

end A085861

/-! ## A085861.P648834457402607848

`∑{digits}[A000045(n), A325135(#+2)]`
-/

namespace A085861.P648834457402607848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A325135 (x + 2)).sum

end

end A085861.P648834457402607848

namespace A085861

/-- `∑{digits}[A000045(n), A325135(#+2)]` -/
def P648834457402607848.Spec : Prop :=
  ∀ n, P648834457402607848.a n = A085861 n

end A085861

/-! ## A085861.P18214655749921165144

`∑{digits}[A000045(n), A025437(2*#)]`
-/

namespace A085861.P18214655749921165144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025437 (2 * x)).sum

end

end A085861.P18214655749921165144

namespace A085861

/-- `∑{digits}[A000045(n), A025437(2*#)]` -/
def P18214655749921165144.Spec : Prop :=
  ∀ n, P18214655749921165144.a n = A085861 n

end A085861

/-! ## A085861.P5860293534342169202

`∑{digits}[A000045(n), and(#, A285162(#+1))]`
-/

namespace A085861.P5860293534342169202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.land (x : ℤ) (A285162 (x + 1))).sum

end

end A085861.P5860293534342169202

namespace A085861

/-- `∑{digits}[A000045(n), and(#, A285162(#+1))]` -/
def P5860293534342169202.Spec : Prop :=
  ∀ n, P5860293534342169202.a n = A085861 n

end A085861

/-! ## A085861.P10543715355771041915

`∑{digits}[A000045(n), A004198(A000045(#))]`
-/

namespace A085861.P10543715355771041915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004198 (A000045 x).toNat).sum

end

end A085861.P10543715355771041915

namespace A085861

/-- `∑{digits}[A000045(n), A004198(A000045(#))]` -/
def P10543715355771041915.Spec : Prop :=
  ∀ n, P10543715355771041915.a n = A085861 n

end A085861

/-! ## A085861.P8371852591319140112

`∑{digits}[A000045(n), A006478(A000120(#))]`
-/

namespace A085861.P8371852591319140112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006478 (A000120 x).toNat).sum

end

end A085861.P8371852591319140112

namespace A085861

/-- `∑{digits}[A000045(n), A006478(A000120(#))]` -/
def P8371852591319140112.Spec : Prop :=
  ∀ n, P8371852591319140112.a n = A085861 n

end A085861

/-! ## A085861.P13795042554013150505

`∑{digits}[A000045(n), A000073(A027052(#))]`
-/

namespace A085861.P13795042554013150505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000073 (A027052 x).toNat).sum

end

end A085861.P13795042554013150505

namespace A085861

/-- `∑{digits}[A000045(n), A000073(A027052(#))]` -/
def P13795042554013150505.Spec : Prop :=
  ∀ n, P13795042554013150505.a n = A085861 n

end A085861

/-! ## A085861.P6345776190597769828

`∑{digits}[A000045(n), A083741(A004524(#))]`
-/

namespace A085861.P6345776190597769828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A083741 (A004524 x).toNat).sum

end

end A085861.P6345776190597769828

namespace A085861

/-- `∑{digits}[A000045(n), A083741(A004524(#))]` -/
def P6345776190597769828.Spec : Prop :=
  ∀ n, P6345776190597769828.a n = A085861 n

end A085861

/-! ## A085861.P3906459923278485896

`∑{digits}[A000045(n), A090418(A000045(#)²)]`
-/

namespace A085861.P3906459923278485896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A090418 (A000045 x ^ 2).toNat).sum

end

end A085861.P3906459923278485896

namespace A085861

/-- `∑{digits}[A000045(n), A090418(A000045(#)²)]` -/
def P3906459923278485896.Spec : Prop :=
  ∀ n, P3906459923278485896.a n = A085861 n

end A085861

/-! ## A085861.P12187953064971453166

`∑{digits}[A000045(n), A321448(A039578(#+1))]`
-/

namespace A085861.P12187953064971453166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A321448 (A039578 (x + 1)).toNat).sum

end

end A085861.P12187953064971453166

namespace A085861

/-- `∑{digits}[A000045(n), A321448(A039578(#+1))]` -/
def P12187953064971453166.Spec : Prop :=
  ∀ n, P12187953064971453166.a n = A085861 n

end A085861

/-! ## A085861.P15884695376390478804

`∑{digits}[A000045(n), A000045(A046665(#+#+1))]`
-/

namespace A085861.P15884695376390478804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 (A046665 (x + x + 1)).toNat).sum

end

end A085861.P15884695376390478804

namespace A085861

/-- `∑{digits}[A000045(n), A000045(A046665(#+#+1))]` -/
def P15884695376390478804.Spec : Prop :=
  ∀ n, P15884695376390478804.a n = A085861 n

end A085861

/-!
# A085862: Number of 8's in decimal expansion of Fibonacci(n).

The programs for A085862, the canonical program `A085862.P8203223765781139278` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085862 has offset 0).

The definition of A085862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085862.P13949480143798612022

`∑{digits}[A000045(n), A251759(#)]`
-/

namespace A085862.P13949480143798612022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A251759 x).sum

end

end A085862.P13949480143798612022

namespace A085862

/-- `∑{digits}[A000045(n), A251759(#)]` -/
def P13949480143798612022.Spec : Prop :=
  ∀ n, P13949480143798612022.a n = A085862 n

end A085862

/-! ## A085862.P6726235722783725226

`∑{digits}[A000045(n), A253638(#)]`
-/

namespace A085862.P6726235722783725226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A253638 x).sum

end

end A085862.P6726235722783725226

namespace A085862

/-- `∑{digits}[A000045(n), A253638(#)]` -/
def P6726235722783725226.Spec : Prop :=
  ∀ n, P6726235722783725226.a n = A085862 n

end A085862

/-! ## A085862.P11900804926029138600

`∑{digits}[A000045(n), A316869(#)]`
-/

namespace A085862.P11900804926029138600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316869 x).sum

end

end A085862.P11900804926029138600

namespace A085862

/-- `∑{digits}[A000045(n), A316869(#)]` -/
def P11900804926029138600.Spec : Prop :=
  ∀ n, P11900804926029138600.a n = A085862 n

end A085862

/-! ## A085862.P16438100713792568213

`∑{digits}[A236191(n), A251759(#)]`
-/

namespace A085862.P16438100713792568213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A251759 x).sum

end

end A085862.P16438100713792568213

namespace A085862

/-- `∑{digits}[A236191(n), A251759(#)]` -/
def P16438100713792568213.Spec : Prop :=
  ∀ n, P16438100713792568213.a n = A085862 n

end A085862

/-! ## A085862.P11704231129991138464

`∑{digits}[A236191(n), A258997(#)]`
-/

namespace A085862.P11704231129991138464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A258997 x).sum

end

end A085862.P11704231129991138464

namespace A085862

/-- `∑{digits}[A236191(n), A258997(#)]` -/
def P11704231129991138464.Spec : Prop :=
  ∀ n, P11704231129991138464.a n = A085862 n

end A085862

/-! ## A085862.P9845247353424458368

`∑{digits}[A000045(n), A011723(#+1)]`
-/

namespace A085862.P9845247353424458368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011723 (x + 1)).sum

end

end A085862.P9845247353424458368

namespace A085862

/-- `∑{digits}[A000045(n), A011723(#+1)]` -/
def P9845247353424458368.Spec : Prop :=
  ∀ n, P9845247353424458368.a n = A085862 n

end A085862

/-! ## A085862.P6284789961594186580

`∑{digits}[A000045(n), A102683(#+1)]`
-/

namespace A085862.P6284789961594186580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A102683 (x + 1)).sum

end

end A085862.P6284789961594186580

namespace A085862

/-- `∑{digits}[A000045(n), A102683(#+1)]` -/
def P6284789961594186580.Spec : Prop :=
  ∀ n, P6284789961594186580.a n = A085862 n

end A085862

/-! ## A085862.P431580239943050193

`∑{digits}[A236191(n), A085858(#+1)]`
-/

namespace A085862.P431580239943050193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A085858 (x + 1)).sum

end

end A085862.P431580239943050193

namespace A085862

/-- `∑{digits}[A236191(n), A085858(#+1)]` -/
def P431580239943050193.Spec : Prop :=
  ∀ n, P431580239943050193.a n = A085862 n

end A085862

/-! ## A085862.P6840686719396211212

`∑{digits}[A000045(n), A325135(#+1)]`
-/

namespace A085862.P6840686719396211212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A325135 (x + 1)).sum

end

end A085862.P6840686719396211212

namespace A085862

/-- `∑{digits}[A000045(n), A325135(#+1)]` -/
def P6840686719396211212.Spec : Prop :=
  ∀ n, P6840686719396211212.a n = A085862 n

end A085862

/-! ## A085862.P8203223765781139278

`∑{digits}[A000045(n), A055641(#+2)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085862

/-- `∑{digits}[A000045(n), A055641(#+2)]` -/
def P8203223765781139278.Spec : Prop :=
  ∀ n, P8203223765781139278.a n = A085862 n

theorem P8203223765781139278.correct : P8203223765781139278.Spec := by
  intro n
  simp only [A085862]

end A085862

/-! ## A085862.P2094297766021071584

`∑{digits}[A000045(n), A125688(#+2)]`
-/

namespace A085862.P2094297766021071584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A125688 (x + 2)).sum

end

end A085862.P2094297766021071584

namespace A085862

/-- `∑{digits}[A000045(n), A125688(#+2)]` -/
def P2094297766021071584.Spec : Prop :=
  ∀ n, P2094297766021071584.a n = A085862 n

end A085862

/-! ## A085862.P9200433741973715336

`∑{digits}[A000045(n), A090418((#+1)²)]`
-/

namespace A085862.P9200433741973715336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A090418 ((x + 1) ^ 2)).sum

end

end A085862.P9200433741973715336

namespace A085862

/-- `∑{digits}[A000045(n), A090418((#+1)²)]` -/
def P9200433741973715336.Spec : Prop :=
  ∀ n, P9200433741973715336.a n = A085862 n

end A085862

/-! ## A085862.P9834595888279982708

`∑{digits}[A000045(n), A011721(A000045(#))]`
-/

namespace A085862.P9834595888279982708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011721 (A000045 x).toNat).sum

end

end A085862.P9834595888279982708

namespace A085862

/-- `∑{digits}[A000045(n), A011721(A000045(#))]` -/
def P9834595888279982708.Spec : Prop :=
  ∀ n, P9834595888279982708.a n = A085862 n

end A085862

/-! ## A085862.P13982670781966459590

`∑{digits}[A000045(n), A219491(A000119(#))]`
-/

namespace A085862.P13982670781966459590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A219491 (A000119 x).toNat).sum

end

end A085862.P13982670781966459590

namespace A085862

/-- `∑{digits}[A000045(n), A219491(A000119(#))]` -/
def P13982670781966459590.Spec : Prop :=
  ∀ n, P13982670781966459590.a n = A085862 n

end A085862

/-! ## A085862.P5170088902106111800

`∑{digits}[A000045(n), A025924(A007953(#+1))]`
-/

namespace A085862.P5170088902106111800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025924 (A007953 (x + 1)).toNat).sum

end

end A085862.P5170088902106111800

namespace A085862

/-- `∑{digits}[A000045(n), A025924(A007953(#+1))]` -/
def P5170088902106111800.Spec : Prop :=
  ∀ n, P5170088902106111800.a n = A085862 n

end A085862

/-! ## A085862.P462083228429568387

`∑{digits}[A000045(n), A219491(A219491(#)+1)]`
-/

namespace A085862.P462083228429568387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A219491 (A219491 x + 1).toNat).sum

end

end A085862.P462083228429568387

namespace A085862

/-- `∑{digits}[A000045(n), A219491(A219491(#)+1)]` -/
def P462083228429568387.Spec : Prop :=
  ∀ n, P462083228429568387.a n = A085862 n

end A085862

/-! ## A085862.P13215863709518818197

`∑{digits}[A000045(n), A011856(A020639(#+3))]`
-/

namespace A085862.P13215863709518818197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011856 (A020639 (x + 3)).toNat).sum

end

end A085862.P13215863709518818197

namespace A085862

/-- `∑{digits}[A000045(n), A011856(A020639(#+3))]` -/
def P13215863709518818197.Spec : Prop :=
  ∀ n, P13215863709518818197.a n = A085862 n

end A085862

/-!
# A085863: Number of 9's in decimal expansion of Fibonacci(n).

The programs for A085863, the canonical program `A085863.P14326878376486245491` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085863 has offset 0).

The definition of A085863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085863.P14326878376486245491

`∑{digits}[A000045(n), C(#, 9)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085863

/-- `∑{digits}[A000045(n), C(#, 9)]` -/
def P14326878376486245491.Spec : Prop :=
  ∀ n, (P14326878376486245491.a n : ℤ) = A085863 n

theorem P14326878376486245491.correct : P14326878376486245491.Spec := by
  intro n
  simp only [A085863]

end A085863

/-! ## A085863.P4362832939022628548

`∑{digits}[A000045(n), A011723(#)]`
-/

namespace A085863.P4362832939022628548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011723 x).sum

end

end A085863.P4362832939022628548

namespace A085863

/-- `∑{digits}[A000045(n), A011723(#)]` -/
def P4362832939022628548.Spec : Prop :=
  ∀ n, P4362832939022628548.a n = A085863 n

end A085863

/-! ## A085863.P15742218407947085333

`∑{digits}[A000045(n), A036640(#)]`
-/

namespace A085863.P15742218407947085333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036640 x).sum

end

end A085863.P15742218407947085333

namespace A085863

/-- `∑{digits}[A000045(n), A036640(#)]` -/
def P15742218407947085333.Spec : Prop :=
  ∀ n, P15742218407947085333.a n = A085863 n

end A085863

/-! ## A085863.P8021755925848739500

`∑{digits}[A000045(n), A036647(#)]`
-/

namespace A085863.P8021755925848739500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036647 x).sum

end

end A085863.P8021755925848739500

namespace A085863

/-- `∑{digits}[A000045(n), A036647(#)]` -/
def P8021755925848739500.Spec : Prop :=
  ∀ n, P8021755925848739500.a n = A085863 n

end A085863

/-! ## A085863.P2721498816316312891

`∑{digits}[A000045(n), A102683(#)]`
-/

namespace A085863.P2721498816316312891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A102683 x).sum

end

end A085863.P2721498816316312891

namespace A085863

/-- `∑{digits}[A000045(n), A102683(#)]` -/
def P2721498816316312891.Spec : Prop :=
  ∀ n, P2721498816316312891.a n = A085863 n

end A085863

/-! ## A085863.P5369088955701939513

`∑{digits}[A000045(n), A255379(#)]`
-/

namespace A085863.P5369088955701939513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A255379 x).sum

end

end A085863.P5369088955701939513

namespace A085863

/-- `∑{digits}[A000045(n), A255379(#)]` -/
def P5369088955701939513.Spec : Prop :=
  ∀ n, P5369088955701939513.a n = A085863 n

end A085863

/-! ## A085863.P13347016146404992388

`∑{digits}[A236191(n), A085858(#)]`
-/

namespace A085863.P13347016146404992388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A085858 x).sum

end

end A085863.P13347016146404992388

namespace A085863

/-- `∑{digits}[A236191(n), A085858(#)]` -/
def P13347016146404992388.Spec : Prop :=
  ∀ n, P13347016146404992388.a n = A085863 n

end A085863

/-! ## A085863.P14990542903047405506

`∑{digits}[A236191(n), A326526(#)]`
-/

namespace A085863.P14990542903047405506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A326526 x).sum

end

end A085863.P14990542903047405506

namespace A085863

/-- `∑{digits}[A236191(n), A326526(#)]` -/
def P14990542903047405506.Spec : Prop :=
  ∀ n, P14990542903047405506.a n = A085863 n

end A085863

/-! ## A085863.P15616200989131197048

`∑{digits}[A000045(n), A090418(#²)]`
-/

namespace A085863.P15616200989131197048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A090418 (x ^ 2)).sum

end

end A085863.P15616200989131197048

namespace A085863

/-- `∑{digits}[A000045(n), A090418(#²)]` -/
def P15616200989131197048.Spec : Prop :=
  ∀ n, P15616200989131197048.a n = A085863 n

end A085863

/-! ## A085863.P2174864992669260710

`∑{digits}[A000045(n), A316869(#²)]`
-/

namespace A085863.P2174864992669260710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316869 (x ^ 2)).sum

end

end A085863.P2174864992669260710

namespace A085863

/-- `∑{digits}[A000045(n), A316869(#²)]` -/
def P2174864992669260710.Spec : Prop :=
  ∀ n, P2174864992669260710.a n = A085863 n

end A085863

/-! ## A085863.P10172492755724559846

`∑{digits}[A000045(n), A055641(#+1)]`
-/

namespace A085863.P10172492755724559846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055641 (x + 1)).sum

end

end A085863.P10172492755724559846

namespace A085863

/-- `∑{digits}[A000045(n), A055641(#+1)]` -/
def P10172492755724559846.Spec : Prop :=
  ∀ n, P10172492755724559846.a n = A085863 n

end A085863

/-! ## A085863.P13030785533512724694

`∑{digits}[A000045(n), A125688(#+1)]`
-/

namespace A085863.P13030785533512724694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A125688 (x + 1)).sum

end

end A085863.P13030785533512724694

namespace A085863

/-- `∑{digits}[A000045(n), A125688(#+1)]` -/
def P13030785533512724694.Spec : Prop :=
  ∀ n, P13030785533512724694.a n = A085863 n

end A085863

/-! ## A085863.P10763223334610561558

`∑{digits}[A000045(n), A011856(#+2)]`
-/

namespace A085863.P10763223334610561558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011856 (x + 2)).sum

end

end A085863.P10763223334610561558

namespace A085863

/-- `∑{digits}[A000045(n), A011856(#+2)]` -/
def P10763223334610561558.Spec : Prop :=
  ∀ n, P10763223334610561558.a n = A085863 n

end A085863

/-! ## A085863.P13378731874989950401

`∑{digits}[A000045(n), val(A086988(#+1), 6)]`
-/

namespace A085863.P13378731874989950401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => SequenceMachineLib.valuation (A086988 (x + 1)).toNat 6).sum

end

end A085863.P13378731874989950401

namespace A085863

/-- `∑{digits}[A000045(n), val(A086988(#+1), 6)]` -/
def P13378731874989950401.Spec : Prop :=
  ∀ n, (P13378731874989950401.a n : ℤ) = A085863 n

end A085863

/-! ## A085863.P9138587462606597090

`∑{digits}[A000045(n), A002264(A002264(#))]`
-/

namespace A085863.P9138587462606597090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002264 (A002264 x).toNat).sum

end

end A085863.P9138587462606597090

namespace A085863

/-- `∑{digits}[A000045(n), A002264(A002264(#))]` -/
def P9138587462606597090.Spec : Prop :=
  ∀ n, P9138587462606597090.a n = A085863 n

end A085863

/-! ## A085863.P9679815028733359009

`∑{digits}[A000045(n), A321448(A008578(#+2))]`
-/

namespace A085863.P9679815028733359009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A321448 (A008578 (x + 2)).toNat).sum

end

end A085863.P9679815028733359009

namespace A085863

/-- `∑{digits}[A000045(n), A321448(A008578(#+2))]` -/
def P9679815028733359009.Spec : Prop :=
  ∀ n, P9679815028733359009.a n = A085863 n

end A085863

/-!
# A085864: a(1) = 2, a(n+1) = a(n)*{tau(a(n))}.

The programs for A085864, there is no canonical definition to state claims against.
-/

/-! ## A085864.P16500205773020771234

`a(n-1)*A000005(a(n-1))` with `a(0)=2`
-/

namespace A085864.P16500205773020771234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A000005 (a (n - 1)).toNat

end

end A085864.P16500205773020771234

/-! ## A085864.P8699009059076339784

`a(n-1)*A167447(a(n-1))` with `a(0)=2`
-/

namespace A085864.P8699009059076339784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A167447 (a (n - 1)).toNat

end

end A085864.P8699009059076339784

/-! ## A085864.P6416249121056089616

`a(n-1)*A324392(a(n-1))` with `a(0)=2`
-/

namespace A085864.P6416249121056089616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A324392 (a (n - 1)).toNat

end

end A085864.P6416249121056089616

/-!
# A085865: a(1) = 2, a(n+1) = a(n)*sigma(a(n)), where sigma(n) is the sum of the divisors function.

The programs for A085865, there is no canonical definition to state claims against.
-/

/-! ## A085865.P5136926606164845820

`a(n-1)*A000203(a(n-1))` with `a(0)=2`
-/

namespace A085865.P5136926606164845820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A000203 (a (n - 1)).toNat

end

end A085865.P5136926606164845820

/-!
# A085866: a(1) = 3, a(n+1) = a(n)*phi(a(n)), where phi(n) is Euler's totient function.

The programs for A085866, there is no canonical definition to state claims against.
-/

/-! ## A085866.P13771798609597282332

`a(n-1)²/3` with `a(0)=3, a(1)=6`
-/

namespace A085866.P13771798609597282332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 6] fun n a =>
  a (n - 1) ^ 2 / 3

end

end A085866.P13771798609597282332

/-! ## A085866.P1033882942929175631

`∏[a(n-1)²]` with `a(0)=3, a(1)=2, a(2)=2`
-/

namespace A085866.P1033882942929175631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085866.P1033882942929175631

/-! ## A085866.P16371650712489007552

`a(n-1)^2/3` with `a(0)=3, a(1)=6`
-/

namespace A085866.P16371650712489007552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 6] fun n a =>
  a (n - 1) ^ 2 / 3

end

end A085866.P16371650712489007552

/-! ## A085866.P1566709609218650464

`3*floor(2^2^(n-1))`
-/

namespace A085866.P1566709609218650464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(2 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A085866.P1566709609218650464

/-! ## A085866.P13648133139137034909

`lcm(3, floor(2^2^(n-1)))`
-/

namespace A085866.P13648133139137034909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ⌊(2 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A085866.P13648133139137034909

/-!
# A085867: Smallest nontrivial (not = 10^(n-1)) n-digit 7-smooth number. Or smallest n-digit number > 10^(n-1) with prime divisors < 10.

The programs for A085867, there is no canonical definition to state claims against.
-/

/-! ## A085867.P17944395007415846294

`A002473(A106600(n)+1)`
-/

namespace A085867.P17944395007415846294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (A106600 n + 1).toNat

end

end A085867.P17944395007415846294

/-! ## A085867.P6044134604233344124

`A002473(∑[A085630(n)]+2)`
-/

namespace A085867.P6044134604233344124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A085867.P6044134604233344124

/-! ## A085867.P11573182716644627162

`A086247(A106600(n))+A011557(n)`
-/

namespace A085867.P11573182716644627162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086247 (A106600 n).toNat + A011557 n

end

end A085867.P11573182716644627162

/-!
# A085868: Largest n-digit 7-smooth number. Or largest n-digit number with prime divisors < 10.

The programs for A085868, there is no canonical definition to state claims against.
-/

/-! ## A085868.P5084735616107679071

`A002473(∑[A085630(n+1)])`
-/

namespace A085868.P5084735616107679071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085868.P5084735616107679071

/-! ## A085868.P4290692623319228483

`A002473(A106600(n+1)-1)`
-/

namespace A085868.P4290692623319228483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (A106600 (n + 1) - 1).toNat

end

end A085868.P4290692623319228483

/-!
# A085869: Numbers n such that n and its digit reversal have the same prime signature.

The programs for A085869, there is no canonical definition to state claims against.
-/

/-! ## A085869.P17127208439623272235

`∩[A062895(n+1), comp[A087093(n+1)]]`
-/

namespace A085869.P17127208439623272235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087093 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A085869.P17127208439623272235

/-! ## A085869.P13159812642436534339

`eq[A293514(A004086(n+1)), A293514(n+1)]+1`
-/

namespace A085869.P13159812642436534339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293514 (A004086 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A085869.P13159812642436534339

/-! ## A085869.P947491581574266943

`∩[A062895(n+1), A115661(n+1)]`
-/

namespace A085869.P947491581574266943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085869.P947491581574266943

/-! ## A085869.P5103482637210339807

`eq[A000005((n+1)²), A000005(A004086(n+1)²)]+1`
-/

namespace A085869.P5103482637210339807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004086 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A085869.P5103482637210339807

/-! ## A085869.P16576237540358563103

`A062895(comp[11*n-A232023(n+5)])`
-/

namespace A085869.P16576237540358563103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - A232023 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A085869.P16576237540358563103

/-!
# A085871: a(1) = 2, a(2n) = smallest prime of the form k*a(2n-1) +1, k >1, a(2n+1) = smallest prime of the form r*a(2n)-1, r >1.

The programs for A085871, there is no canonical definition to state claims against.
-/

/-! ## A085871.P1264723118708422330

`A267374(∑[A000364(n)])`
-/

namespace A085871.P1264723118708422330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267374 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085871.P1264723118708422330

/-!
# A085872: a(1) = 2, a(2n) = smallest prime of the form k*a(2n-1) -1, k >1, a(2n+1) = smallest prime of the form r*a(2n)+1, r >1.

The programs for A085872, there is no canonical definition to state claims against.
-/

/-! ## A085872.P8478648851629429608

`p?[round(sqrt(e)*2^n)]`
-/

namespace A085872.P8478648851629429608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.exp 1) * (2 ^ n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085872.P8478648851629429608

/-! ## A085872.P2584788303346771206

`A078668(A053285(n))`
-/

namespace A085872.P2584788303346771206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078668 (A053285 n).toNat

end

end A085872.P2584788303346771206

/-!
# A085873: a(1) = 2; a(n)= smallest prime of the form k*a(n-1) + 1 where k itself is a multiple of n.

The programs for A085873, there is no canonical definition to state claims against.
-/

/-! ## A085873.P5920753745962122402

`record[A070846(a(n-1)*A014963(n))]` with `a(0)=2, a(1)=1`
-/

namespace A085873.P5920753745962122402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  A070846 (f1 (n - 1) * A014963 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085873.P5920753745962122402

/-!
# A085874: a(1) = 2, a(n)= smallest prime of the form k*a(n-1) - 1 where k itself is a multiple of n.

The programs for A085874, there is no canonical definition to state claims against.
-/

/-! ## A085874.P11501059735286513680

`A282049((n+1)*a(n-1))` with `a(0)=2`
-/

namespace A085874.P11501059735286513680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A282049 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A085874.P11501059735286513680

/-! ## A085874.P5464975118616168982

`A038700((n+1)/∏{p}[n+1, (n+1)/#]*a(n-1))` with `a(0)=2`
-/

namespace A085874.P5464975118616168982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A038700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)) * (a (n - 1) : ℚ))).toNat

end

end A085874.P5464975118616168982

/-!
# A085877: Smallest square k^2 == 1 (mod 10^n) where k > 1.

The programs for A085877, there is no canonical definition to state claims against.
-/

/-! ## A085877.P11939065075486949081

`A181539(n+1)²`
-/

namespace A085877.P11939065075486949081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181539 (n + 1) ^ 2

end

end A085877.P11939065075486949081

/-! ## A085877.P16882630699400829693

`A181539(n+1)^A020639(A016958(n))`
-/

namespace A085877.P16882630699400829693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181539 (n + 1) : ℚ) ^ (A020639 (A016958 n).toNat : ℤ)

end

end A085877.P16882630699400829693

/-! ## A085877.P10399109161304169769

`A181539(n+1)^A000005(A033202(n+1))`
-/

namespace A085877.P10399109161304169769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181539 (n + 1) : ℚ) ^ (A000005 (A033202 (n + 1)).toNat : ℤ)

end

end A085877.P10399109161304169769

/-! ## A085877.P3290195372564000767

`A181539(n+1)^A000005(A181561(n+1))`
-/

namespace A085877.P3290195372564000767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181539 (n + 1) : ℚ) ^ (A000005 (A181561 (n + 1)).toNat : ℤ)

end

end A085877.P3290195372564000767

/-!
# A085879: Smallest n-th power k^n == 1 (mod 10), where k>1.

The programs for A085879, there is no canonical definition to state claims against.
-/

/-! ## A085879.P7334297480912974885

`(12-3^(n%2))^gcd(n+1, lcm(2, ∑[n]))`
-/

namespace A085879.P7334297480912974885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 - (3 ^ (n % 2) : ℤ)) ^ Nat.gcd (n + 1) (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A085879.P7334297480912974885

/-! ## A085879.P16332936994934511337

`Δ[A057538(n+1)+n]^(n+1)`
-/

namespace A085879.P16332936994934511337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 1)

end

end A085879.P16332936994934511337

/-! ## A085879.P6398294234573784288

`(A033999(n)+10)^A186646(n+1)`
-/

namespace A085879.P6398294234573784288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 n + 10 : ℚ) ^ (A186646 (n + 1) : ℤ)

end

end A085879.P6398294234573784288

/-!
# A085880: Triangle T(n,k) read by rows: multiply row n of Pascal's triangle (A007318) by the n-th Catalan number (A000108).

The programs for A085880, the canonical program `A085880.P13933320555991114901` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085880 has offset 0).

The definition of A085880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6838 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085880.P13933320555991114901

`A007318(n)*A168256(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A085880

/-- `A007318(n)*A168256(n)` -/
def P13933320555991114901.Spec : Prop :=
  ∀ n, P13933320555991114901.a n = A085880 n

theorem P13933320555991114901.correct : P13933320555991114901.Spec := by
  intro n
  simp only [A085880]

end A085880

/-! ## A085880.P15592163252293115301

`A000108(∑[char[∑[n+1]]])*A007318(n)`
-/

namespace A085880.P15592163252293115301
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (∑ j ∈ Finset.range (n + 1), f1 j) * A007318 n

end

end A085880.P15592163252293115301

namespace A085880

/-- `A000108(∑[char[∑[n+1]]])*A007318(n)` -/
def P15592163252293115301.Spec : Prop :=
  ∀ n, P15592163252293115301.a n = A085880 n

end A085880

/-! ## A085880.P1008015976880998923

`A007318(n)*A028364(A057944(n))`
-/

namespace A085880.P1008015976880998923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A028364 (A057944 n).toNat

end

end A085880.P1008015976880998923

namespace A085880

/-- `A007318(n)*A028364(A057944(n))` -/
def P1008015976880998923.Spec : Prop :=
  ∀ n, P1008015976880998923.a n = A085880 n

end A085880

/-! ## A085880.P4954496959294437143

`A000108(A003056(n))*ceil(A134059(n)/3)`
-/

namespace A085880.P4954496959294437143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A003056 n).toNat * ⌈(A134059 n : ℚ) / 3⌉

end

end A085880.P4954496959294437143

namespace A085880

/-- `A000108(A003056(n))*ceil(A134059(n)/3)` -/
def P4954496959294437143.Spec : Prop :=
  ∀ n, P4954496959294437143.a n = A085880 n

end A085880

/-! ## A085880.P424330408375357950

`A356546(n)/A002024(n+1)`
-/

namespace A085880.P424330408375357950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356546 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A085880.P424330408375357950

namespace A085880

/-- `A356546(n)/A002024(n+1)` -/
def P424330408375357950.Spec : Prop :=
  ∀ n, P424330408375357950.a n = (A085880 n : ℚ)

end A085880

/-! ## A085880.P9577031763147012184

`A000108(A003056(n))/A176346(n)*A176348(n)`
-/

namespace A085880.P9577031763147012184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (A003056 n).toNat : ℚ) / (A176346 n : ℚ) * (A176348 n : ℚ)

end

end A085880.P9577031763147012184

namespace A085880

/-- `A000108(A003056(n))/A176346(n)*A176348(n)` -/
def P9577031763147012184.Spec : Prop :=
  ∀ n, P9577031763147012184.a n = (A085880 n : ℚ)

end A085880

/-! ## A085880.P11209494108319935443

`A007318(n)*A008313(A056942(n))`
-/

namespace A085880.P11209494108319935443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008313 (A056942 n).toNat

end

end A085880.P11209494108319935443

namespace A085880

/-- `A007318(n)*A008313(A056942(n))` -/
def P11209494108319935443.Spec : Prop :=
  ∀ n, P11209494108319935443.a n = A085880 n

end A085880

/-! ## A085880.P1920139602537776621

`A069466(n)/A003506(n+1)`
-/

namespace A085880.P1920139602537776621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A003506 (n + 1) : ℚ)

end

end A085880.P1920139602537776621

namespace A085880

/-- `A069466(n)/A003506(n+1)` -/
def P1920139602537776621.Spec : Prop :=
  ∀ n, P1920139602537776621.a n = (A085880 n : ℚ)

end A085880

/-! ## A085880.P6761099943893108638

`A164961(n)/A130493(n+1)`
-/

namespace A085880.P6761099943893108638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164961 n : ℚ) / (A130493 (n + 1) : ℚ)

end

end A085880.P6761099943893108638

namespace A085880

/-- `A164961(n)/A130493(n+1)` -/
def P6761099943893108638.Spec : Prop :=
  ∀ n, P6761099943893108638.a n = (A085880 n : ℚ)

end A085880

/-!
# A085881: Triangle T(n,k) read by rows: multiply row n of Pascal's triangle (A007318) by A001147(n).

The programs for A085881, the canonical program `A085881.P7222178612221218642` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085881 has offset 0).

The definition of A085881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085881.P16950539744400215925

`A086645(n)*A173424(n)`
-/

namespace A085881.P16950539744400215925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n * A173424 n

end

end A085881.P16950539744400215925

namespace A085881

/-- `A086645(n)*A173424(n)` -/
def P16950539744400215925.Spec : Prop :=
  ∀ n, P16950539744400215925.a n = A085881 n

end A085881

/-! ## A085881.P7222178612221218642

`A001147(A003056(n))*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A085881

/-- `A001147(A003056(n))*A007318(n)` -/
def P7222178612221218642.Spec : Prop :=
  ∀ n, P7222178612221218642.a n = A085881 n

theorem P7222178612221218642.correct : P7222178612221218642.Spec := by
  intro n
  simp only [A085881]

end A085881

/-! ## A085881.P7447794779654589647

`A007318(n)*A176230(A057944(n))`
-/

namespace A085881.P7447794779654589647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A176230 (A057944 n).toNat

end

end A085881.P7447794779654589647

namespace A085881

/-- `A007318(n)*A176230(A057944(n))` -/
def P7447794779654589647.Spec : Prop :=
  ∀ n, P7447794779654589647.a n = A085881 n

end A085881

/-! ## A085881.P9643305071169523962

`A176230(A112367(n))*A176230(n)`
-/

namespace A085881.P9643305071169523962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176230 (A112367 n).toNat * A176230 n

end

end A085881.P9643305071169523962

namespace A085881

/-- `A176230(A112367(n))*A176230(n)` -/
def P9643305071169523962.Spec : Prop :=
  ∀ n, P9643305071169523962.a n = A085881 n

end A085881

/-! ## A085881.P14698799934218420457

`A007318(n)*A100861(A061579(n)+n)`
-/

namespace A085881.P14698799934218420457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A100861 (A061579 n + (n : ℤ)).toNat

end

end A085881.P14698799934218420457

namespace A085881

/-- `A007318(n)*A100861(A061579(n)+n)` -/
def P14698799934218420457.Spec : Prop :=
  ∀ n, P14698799934218420457.a n = A085881 n

end A085881

/-! ## A085881.P7062797821348532380

`A007318(n)*A102625(n+1-A002260(n+1))`
-/

namespace A085881.P7062797821348532380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A102625 ((n + 1 : ℤ) - A002260 (n + 1)).toNat

end

end A085881.P7062797821348532380

namespace A085881

/-- `A007318(n)*A102625(n+1-A002260(n+1))` -/
def P7062797821348532380.Spec : Prop :=
  ∀ n, P7062797821348532380.a n = A085881 n

end A085881

/-! ## A085881.P12124913693610663764

`A172089(A185868(n+1)-1)`
-/

namespace A085881.P12124913693610663764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172089 (A185868 (n + 1) - 1).toNat

end

end A085881.P12124913693610663764

namespace A085881

/-- `A172089(A185868(n+1)-1)` -/
def P12124913693610663764.Spec : Prop :=
  ∀ n, P12124913693610663764.a n = A085881 n

end A085881

/-! ## A085881.P1603338035439961433

`A164961(n)/A137688(n)`
-/

namespace A085881.P1603338035439961433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164961 n : ℚ) / (A137688 n : ℚ)

end

end A085881.P1603338035439961433

namespace A085881

/-- `A164961(n)/A137688(n)` -/
def P1603338035439961433.Spec : Prop :=
  ∀ n, P1603338035439961433.a n = (A085881 n : ℚ)

end A085881

/-!
# A085883: Let r and s be such that r + s = n; a(n) = maximum value of tau(r) + tau(s).

The programs for A085883, there is no canonical definition to state claims against.
-/

/-! ## A085883.P17347304972233954594

`A062571(A026741(n+1)+A007989(n))`
-/

namespace A085883.P17347304972233954594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062571 (A026741 (n + 1) + A007989 n).toNat

end

end A085883.P17347304972233954594

/-! ## A085883.P3546237425108906330

`A339276(A261951(n)*A339328(n+1))`
-/

namespace A085883.P3546237425108906330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (A261951 n * A339328 (n + 1)).toNat

end

end A085883.P3546237425108906330

/-! ## A085883.P17667065989458608103

`A356770(A077342(n+1)+1)`
-/

namespace A085883.P17667065989458608103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356770 (A077342 (n + 1) + 1).toNat

end

end A085883.P17667065989458608103

/-! ## A085883.P2892311897430207694

`A356770(A242474(n+1)+1)`
-/

namespace A085883.P2892311897430207694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356770 (A242474 (n + 1) + 1).toNat

end

end A085883.P2892311897430207694

/-! ## A085883.P5163103264911120954

`A356770(A351374(n+1)+1)`
-/

namespace A085883.P5163103264911120954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356770 (A351374 (n + 1) + 1).toNat

end

end A085883.P5163103264911120954

/-!
# A085885: Let r and s be such that r + s = n; a(n) = maximum value of phi(r) + phi(s).

The programs for A085885, the canonical program `A085885.P6366113576804928038` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085885 has offset 2).

The definition of A085885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085885.P6366113576804928038

`A000010(A056813((n+1)²))+A000010(A175851(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A085885

/-- `A000010(A056813((n+1)²))+A000010(A175851(n+1))` -/
def P6366113576804928038.Spec : Prop :=
  ∀ n, P6366113576804928038.a n = A085885 (n + 2)

theorem P6366113576804928038.correct : P6366113576804928038.Spec := by
  intro n
  simp only [A085885, Nat.add_sub_cancel]

end A085885

/-! ## A085885.P6469046583181492602

`A000010(A195183(∑[n+1]))+A000010(A175851(n+1))`
-/

namespace A085885.P6469046583181492602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A195183 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A000010 (A175851 (n + 1)).toNat

end

end A085885.P6469046583181492602

namespace A085885

/-- `A000010(A195183(∑[n+1]))+A000010(A175851(n+1))` -/
def P6469046583181492602.Spec : Prop :=
  ∀ n, P6469046583181492602.a n = A085885 (n + 2)

end A085885

/-! ## A085885.P5183223546218772411

`A000010(A175851(n+1))+A056813(A003682(n+2))-1`
-/

namespace A085885.P5183223546218772411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A175851 (n + 1)).toNat + (A056813 (A003682 (n + 2)).toNat - 1)

end

end A085885.P5183223546218772411

namespace A085885

/-- `A000010(A175851(n+1))+A056813(A003682(n+2))-1` -/
def P5183223546218772411.Spec : Prop :=
  ∀ n, P5183223546218772411.a n = A085885 (n + 2)

end A085885

/-!
# A085886: Let r and s be such that r + s = n; a(n) = minimum value of phi(r) + phi(s).

The programs for A085886, there is no canonical definition to state claims against.
-/

/-! ## A085886.P10275345106208535541

`A275926(A346124(n+5))+A103469(n+3)`
-/

namespace A085886.P10275345106208535541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275926 (A346124 (n + 5)).toNat + A103469 (n + 3)

end

end A085886.P10275345106208535541

/-!
# A085887: Let r and s be such that r + s = n; a(n) = minimum value of tau(r) + tau(s).

The programs for A085887, there is no canonical definition to state claims against.
-/

/-! ## A085887.P13663905353846848976

`A336476(A336451(n+1))+A323889(A064722(n+1))`
-/

namespace A085887.P13663905353846848976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336476 (A336451 (n + 1)).toNat + A323889 (A064722 (n + 1)).toNat

end

end A085887.P13663905353846848976

/-! ## A085887.P15270687607934762606

`A336476(A336451(n+1))+A000005(A064722(n+1)+1)`
-/

namespace A085887.P15270687607934762606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336476 (A336451 (n + 1)).toNat + A000005 (A064722 (n + 1) + 1).toNat

end

end A085887.P15270687607934762606

/-! ## A085887.P15329335051282573643

`A266755(A175851(n+1))+p?[A306333(n+1)]`
-/

namespace A085887.P15329335051282573643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (A175851 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085887.P15329335051282573643

/-! ## A085887.P11002826032716995510

`A000005(A002092(n+1))+A000005(A175851(n+1))`
-/

namespace A085887.P11002826032716995510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002092 (n + 1)).toNat + A000005 (A175851 (n + 1)).toNat

end

end A085887.P11002826032716995510

/-! ## A085887.P16838765921140837720

`A305716(A250469(n+1))`
-/

namespace A085887.P16838765921140837720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305716 (A250469 (n + 1)).toNat

end

end A085887.P16838765921140837720

/-!
# A085888: Let r and s be such that r + s = n; a(n) = minimum value of sigma(r) + sigma(s).

The programs for A085888, there is no canonical definition to state claims against.
-/

/-! ## A085888.P16956106366220350568

`A105560(A294178(n))+A000005(2^n)`
-/

namespace A085888.P16956106366220350568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A294178 n).toNat + A000005 (2 ^ n)

end

end A085888.P16956106366220350568

/-! ## A085888.P7317736115255623623

`A326194(A083706(n))+2+n`
-/

namespace A085888.P7317736115255623623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326194 (A083706 n).toNat + 2 + (n : ℤ)

end

end A085888.P7317736115255623623

/-! ## A085888.P3935159320417313548

`A095999(A081253(n+1))+2+n`
-/

namespace A085888.P3935159320417313548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095999 (A081253 (n + 1)).toNat + 2 + (n : ℤ)

end

end A085888.P3935159320417313548

/-! ## A085888.P7827520047436995491

`A319138(A196330(n+1))+2+n`
-/

namespace A085888.P7827520047436995491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319138 (A196330 (n + 1)).toNat + 2 + (n : ℤ)

end

end A085888.P7827520047436995491

/-! ## A085888.P13422386450401216773

`A350063(n+1)+A001222(A016116(2*(n+2)))`
-/

namespace A085888.P13422386450401216773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350063 (n + 1) + A001222 (A016116 (2 * (n + 2))).toNat

end

end A085888.P13422386450401216773

/-!
# A085889: 7-smooth numbers (A002473) using digits in increasing order. 9 is followed by a zero.

The programs for A085889, there is no canonical definition to state claims against.
-/

/-! ## A085889.P13973548017522217096

`filter[A059043(n+2), A086299(#)]`
-/

namespace A085889.P13973548017522217096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A085889.P13973548017522217096

/-! ## A085889.P18195713216139081454

`∩[A002473(n+1), A059043(n+1)]`
-/

namespace A085889.P18195713216139081454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085889.P18195713216139081454

/-! ## A085889.P9778450277921726693

`∩[A033620(n+1), A059043(n+1)]`
-/

namespace A085889.P9778450277921726693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085889.P9778450277921726693

/-! ## A085889.P13596244172174737858

`∩[A033637(n+1), A059043(n+1)]`
-/

namespace A085889.P13596244172174737858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085889.P13596244172174737858

/-! ## A085889.P5075546690564927543

`∩[A051038(n+1), A059043(n+1)]`
-/

namespace A085889.P5075546690564927543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085889.P5075546690564927543

/-!
# A085890: 7-smooth numbers (A002473) using digits in descending order. Zero is followed by a 9.

The programs for A085890, there is no canonical definition to state claims against.
-/

/-! ## A085890.P15393124431009480080

`record[A118541(A158699(n))]`
-/

namespace A085890.P15393124431009480080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 (A158699 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085890.P15393124431009480080

/-! ## A085890.P9795662667112802619

`record[A071785(A158699(n+1))]`
-/

namespace A085890.P9795662667112802619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A158699 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085890.P9795662667112802619

/-! ## A085890.P5754333520418840010

`record[A118541(A138142(n+1))]`
-/

namespace A085890.P5754333520418840010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 (A138142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085890.P5754333520418840010

/-! ## A085890.P10557162452194723236

`record[A071785(A138142(n+2))]`
-/

namespace A085890.P10557162452194723236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A138142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085890.P10557162452194723236

/-! ## A085890.P715828905717584607

`filter[A158699(n+1), A086299(#)]`
-/

namespace A085890.P715828905717584607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A085890.P715828905717584607

/-!
# A085892: Group the natural numbers such that the product of the n-th group has n prime divisors: (1), (2), (3,4), (5,6), (7,8,9,10), (11,12,13,14), (15,16,17,18,19,20,21), ... Sequence contains the product of the terms of the groups.

The programs for A085892, there is no canonical definition to state claims against.
-/

/-! ## A085892.P12833617830918344988

`ratio[A104150(A085894(n))]`
-/

namespace A085892.P12833617830918344988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (A085894 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A085892.P12833617830918344988

/-! ## A085892.P7030212406416570723

`record[ratio[A166350(A001646(n))]]`
-/

namespace A085892.P7030212406416570723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A001646 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085892.P7030212406416570723

/-!
# A085893: Group the natural numbers such that the product of the n-th group has n prime divisors. (1), (2), (3,4), (5,6), (7,8,9,10), (11,12,13,14), (15,16,17,18,19,20,21), ... Sequence contains the number of terms in the groups.

The programs for A085893, there is no canonical definition to state claims against.
-/

/-! ## A085893.P4957367496309323262

`Δ[A085894(n)]`
-/

namespace A085893.P4957367496309323262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085893.P4957367496309323262

/-! ## A085893.P2167085653847198658

`A085894(n+1)-A085894(n)`
-/

namespace A085893.P2167085653847198658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085894 (n + 1) - A085894 n

end

end A085893.P2167085653847198658

/-! ## A085893.P8854912483522868231

`record[A085894(abs(1-n))]-A085894(n)`
-/

namespace A085893.P8854912483522868231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085894 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A085894 n

end

end A085893.P8854912483522868231

/-! ## A085893.P18285162844640627131

`A000007(n)+A085894(n+1)%A085894(n)`
-/

namespace A085893.P18285162844640627131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.tmod (A085894 (n + 1)) (A085894 n)

end

end A085893.P18285162844640627131

/-!
# A085894: Group the natural numbers such that the product of the n-th group has n prime divisors. (1), (2), (3,4), (5,6), (7,8,9,10), (11,12,13,14), (15,16,17,18,19,20,21), ... Sequence contains first terms of every group.

The programs for A085894, there is no canonical definition to state claims against.
-/

/-! ## A085894.P6861073106102211164

`∑[A085893(abs(1-n))]`
-/

namespace A085894.P6861073106102211164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085893 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085894.P6861073106102211164

/-! ## A085894.P16170358020561506802

`A085893(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A085894.P16170358020561506802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085893 (n - 1) + a (n - 1)

end

end A085894.P16170358020561506802

/-! ## A085894.P2553659439712419860

`∑[A085893(n)]+1-A085893(n)`
-/

namespace A085894.P2553659439712419860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A085893 n)

end

end A085894.P2553659439712419860

/-! ## A085894.P16850827322860690132

`∑[A049113(A307989(n+1)!)]`
-/

namespace A085894.P16850827322860690132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049113 (Nat.factorial (A307989 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085894.P16850827322860690132

/-! ## A085894.P11649797570171431847

`∑[A140195(record[A008277(n+1)])]`
-/

namespace A085894.P11649797570171431847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140195 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085894.P11649797570171431847

/-!
# A085895: Group the natural numbers such that the product of the n-th group is divisible by 2^n. (1), (2), (3,4), (5,6,7,8), (9,10,11,12,13,14),(15,16,17,18), ... Sequence contains the product of the terms of the groups.

The programs for A085895, there is no canonical definition to state claims against.
-/

/-! ## A085895.P18297704608875131937

`(A085897(n+1)-1)!/(A085897(n)-1)!`
-/

namespace A085895.P18297704608875131937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A085897 (n + 1) - 1).toNat : ℚ) / (Nat.factorial (A085897 n - 1).toNat : ℚ)

end

end A085895.P18297704608875131937

/-! ## A085895.P9027511119688568736

`ratio[A104150(A085897(n))]`
-/

namespace A085895.P9027511119688568736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (A085897 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A085895.P9027511119688568736

/-!
# A085896: Group the natural numbers such that the product of the n-th group is divisible by 2^n. (1), (2), (3,4), (5,6,7,8), (9,10,11,12,13,14), (15,16,17,18), ... Sequence contains the number of terms in each group.

The programs for A085896, there is no canonical definition to state claims against.
-/

/-! ## A085896.P5941577526907370177

`Δ[A085897(n)]`
-/

namespace A085896.P5941577526907370177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085896.P5941577526907370177

/-! ## A085896.P10906037290913584058

`A085897(n+1)-A085897(n)`
-/

namespace A085896.P10906037290913584058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085897 (n + 1) - A085897 n

end

end A085896.P10906037290913584058

/-! ## A085896.P6535234505369809580

`A028310(A085897(n+1)%A085897(n))`
-/

namespace A085896.P6535234505369809580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A085897 (n + 1)) (A085897 n)).toNat

end

end A085896.P6535234505369809580

/-!
# A085897: Group the natural numbers such that the product of the n-th group is divisible by 2^n. (1), (2), (3,4), (5,6,7,8), (9,10,11,12,13,14), (15,16,17,18), ... Sequence contains the first term of the groups.

The programs for A085897, there is no canonical definition to state claims against.
-/

/-! ## A085897.P14647161642637916557

`∑[A085896(abs(1-n))]`
-/

namespace A085897.P14647161642637916557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085896 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085897.P14647161642637916557

/-! ## A085897.P5931941823478836267

`A085896(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A085897.P5931941823478836267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085896 (n - 1) + a (n - 1)

end

end A085897.P5931941823478836267

/-! ## A085897.P15761783599044095001

`∑[A085896(n)]+1-A085896(n)`
-/

namespace A085897.P15761783599044095001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A085896 n)

end

end A085897.P15761783599044095001

/-! ## A085897.P14939884523877292786

`∑[A085896(n-1)%A029945(a(n-1))]` with `a(0)=1`
-/

namespace A085897.P14939884523877292786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (A085896 (n - 1)) (A029945 (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085897.P14939884523877292786

/-! ## A085897.P16415120999970247170

`A085896(n-1)--a(n-1)%A000351(n)` with `a(0)=1`
-/

namespace A085897.P16415120999970247170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085896 (n - 1) - Int.tmod (-a (n - 1)) (A000351 n)

end

end A085897.P16415120999970247170

/-!
# A085898: Group the natural numbers such that the product of the n-th group is divisible by 2^n. (1), (2), (3,4), (5,6,7,8), (9,10,11,12,13,14), (15,16,17,18), ... Sequence contains highest power of 2 that divides the product of the terms of the n-th group. a(n) = k, where A085895(n)/(2^k) is the smallest possible integer. By definition a(n) > or = n.

The programs for A085898, there is no canonical definition to state claims against.
-/

/-! ## A085898.P13923762995505045439

`Δ[A011371(A085897(n)-1)]`
-/

namespace A085898.P13923762995505045439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A085897 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085898.P13923762995505045439

/-! ## A085898.P11445409756498809946

`Δ[A011371(A026741(A085897(n)))]`
-/

namespace A085898.P11445409756498809946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A026741 (A085897 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085898.P11445409756498809946

/-! ## A085898.P10747436647066065788

`Δ[A011371(A085897(n))%A002061(n)]`
-/

namespace A085898.P10747436647066065788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011371 (A085897 n).toNat) (A002061 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085898.P10747436647066065788

/-! ## A085898.P13294661979982815495

`val(A085895(n), 2)`
-/

namespace A085898.P13294661979982815495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A085895 n).toNat 2

end

end A085898.P13294661979982815495

/-! ## A085898.P76624933327739896

`A046810(A342254(n))+n`
-/

namespace A085898.P76624933327739896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A342254 (n + 10)).toNat + (n : ℤ)

end

end A085898.P76624933327739896

/-!
# A085899: a(n) = floor( 2*(1 + n + 2*n^2 + 4*n^3)/(1 + 2*n + n^2)).

The programs for A085899, there is no canonical definition to state claims against.
-/

/-! ## A085899.P7201009555321115975

`floor(2*sqrt(A086863(n+1)))`
-/

namespace A085899.P7201009555321115975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A086863 (n + 1) : ℝ)⌋

end

end A085899.P7201009555321115975

