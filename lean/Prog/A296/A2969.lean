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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
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
import Seq.Opaque.C025

/-!
# A296902: Numbers whose base-16 digits d(m), d(m-1), ..., d(0) have #(pits) < #(peaks); see Comments.

The programs for A296902, there is no canonical definition to state claims against.
-/

/-! ## A296902.P18314672403663823853

`A296761(n+2)+A257309(A105730(3*(n+1)))`
-/

namespace A296902.P18314672403663823853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296761 (n + 2) + A257309 (A105730 (3 * (n + 1))).toNat

end

end A296902.P18314672403663823853

/-!
# A296905: Numbers whose base-20 digits d(m), d(m-1), ..., d(0) have #(pits) < #(peaks); see Comments.

The programs for A296905, there is no canonical definition to state claims against.
-/

/-! ## A296905.P14812211005144094719

`A296762(A040930(Δ[n^3])+n-3)`
-/

namespace A296905.P14812211005144094719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296762 (A040930 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ) - 3).toNat

end

end A296905.P14812211005144094719

/-! ## A296905.P3860841581336182456

`A296762(A327374(n+5)-1)`
-/

namespace A296905.P3860841581336182456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296762 (A327374 (n + 5) - 1).toNat

end

end A296905.P3860841581336182456

/-!
# A296907: Numbers whose base-60 digits d(m), d(m-1), ..., d(0) have #(pits) > #(peaks); see Comments.

The programs for A296907, there is no canonical definition to state claims against.
-/

/-! ## A296907.P7496053457344079768

`A040870(A002095(n))²+1+n`
-/

namespace A296907.P7496053457344079768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040870 (A002095 n).toNat ^ 2 + 1 + (n : ℤ)

end

end A296907.P7496053457344079768

/-! ## A296907.P7814767572064737561

`A040870(A057335(n))²+1+n`
-/

namespace A296907.P7814767572064737561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040870 (A057335 n).toNat ^ 2 + 1 + (n : ℤ)

end

end A296907.P7814767572064737561

/-! ## A296907.P5357652996538504995

`A040870(A324749(n))²+1+n`
-/

namespace A296907.P5357652996538504995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040870 (A324749 n).toNat ^ 2 + 1 + (n : ℤ)

end

end A296907.P5357652996538504995

/-! ## A296907.P10908721902075028636

`A040870(A324939(n))²+1+n`
-/

namespace A296907.P10908721902075028636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040870 (A324939 n).toNat ^ 2 + 1 + (n : ℤ)

end

end A296907.P10908721902075028636

/-! ## A296907.P16322383241725959501

`A040870(A001263(n+1))²+1+n`
-/

namespace A296907.P16322383241725959501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040870 (A001263 (n + 1)).toNat ^ 2 + 1 + (n : ℤ)

end

end A296907.P16322383241725959501

/-! ## A296907.P14892142795494514427

`A040870(A032533(n+1))²+1+n`
-/

namespace A296907.P14892142795494514427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040870 (A032533 (n + 1)).toNat ^ 2 + 1 + (n : ℤ)

end

end A296907.P14892142795494514427

/-! ## A296907.P16830920387415910055

`A040870(A064987(n+1))²+1+n`
-/

namespace A296907.P16830920387415910055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040870 (A064987 (n + 1)).toNat ^ 2 + 1 + (n : ℤ)

end

end A296907.P16830920387415910055

/-! ## A296907.P942069720680261311

`A040870(A084000(n+1))²+1+n`
-/

namespace A296907.P942069720680261311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040870 (A084000 (n + 1)).toNat ^ 2 + 1 + (n : ℤ)

end

end A296907.P942069720680261311

/-! ## A296907.P5881912291136656676

`A040870(A107805(n+1))²+n+1`
-/

namespace A296907.P5881912291136656676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040870 (A107805 (n + 1)).toNat ^ 2 + (n + 1 : ℤ)

end

end A296907.P5881912291136656676

/-! ## A296907.P12592303490362660687

`A040870(A132789(n+1))²+1+n`
-/

namespace A296907.P12592303490362660687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040870 (A132789 (n + 1)).toNat ^ 2 + 1 + (n : ℤ)

end

end A296907.P12592303490362660687

/-!
# A296909: Partial sums of A296368.

The programs for A296909, the canonical program `A296909.P11852044643886844605` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296909 has offset 0).

The definition of A296909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296909.P11852044643886844605

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=24, a(4)=39, a(5)=59, a(6)=84`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A296909

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P11852044643886844605.Spec : Prop :=
  ∀ n, P11852044643886844605.a n = A296909 n

theorem P11852044643886844605.correct : P11852044643886844605.Spec := by
  intro n
  simp only [A296909]

end A296909

/-! ## A296909.P2386377551485036030

`∑[A296368(n)]`
-/

namespace A296909.P2386377551485036030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296909.P2386377551485036030

namespace A296909

/-- `∑[A296368(n)]` -/
def P2386377551485036030.Spec : Prop :=
  ∀ n, P2386377551485036030.a n = A296909 n

end A296909

/-! ## A296909.P2340573313163575606

`A321019(n)-a(n-1)` with `a(0)=1`
-/

namespace A296909.P2340573313163575606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A321019 n - a (n - 1)

end

end A296909.P2340573313163575606

namespace A296909

/-- `A321019(n)-a(n-1)` -/
def P2340573313163575606.Spec : Prop :=
  ∀ n, P2340573313163575606.a n = A296909 n

end A296909

/-! ## A296909.P15829602581860265985

`∑[∑[6-A051340(a(n-2))]]` with `a(0)=1, a(1)=2`
-/

namespace A296909.P15829602581860265985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  6 - A051340 (f2 (n - 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296909.P15829602581860265985

namespace A296909

/-- `∑[∑[6-A051340(a(n-2))]]` -/
def P15829602581860265985.Spec : Prop :=
  ∀ n, P15829602581860265985.a n = A296909 n

end A296909

/-! ## A296909.P8765653856293289750

`(A321019(n)+A296368(n))/2`
-/

namespace A296909.P8765653856293289750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321019 n + A296368 n : ℚ) / 2

end

end A296909.P8765653856293289750

namespace A296909

/-- `(A321019(n)+A296368(n))/2` -/
def P8765653856293289750.Spec : Prop :=
  ∀ n, P8765653856293289750.a n = (A296909 n : ℚ)

end A296909

/-! ## A296909.P11966396205052125376

`A132209(n)+A238531(n)%2`
-/

namespace A296909.P11966396205052125376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 n + Int.tmod (A238531 n) 2

end

end A296909.P11966396205052125376

namespace A296909

/-- `A132209(n)+A238531(n)%2` -/
def P11966396205052125376.Spec : Prop :=
  ∀ n, P11966396205052125376.a n = A296909 n

end A296909

/-! ## A296909.P7837573550249628460

`A046092(n)-A094215(and(5, a(n-1))+1)` with `a(0)=1`
-/

namespace A296909.P7837573550249628460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046092 n - A094215 (Int.land 5 (a (n - 1)) + 1).toNat

end

end A296909.P7837573550249628460

namespace A296909

/-- `A046092(n)-A094215(and(5, a(n-1))+1)` -/
def P7837573550249628460.Spec : Prop :=
  ∀ n, P7837573550249628460.a n = A296909 n

end A296909

/-! ## A296909.P16716529132304109567

`A053438(n²+n)+char[A053438(n)]`
-/

namespace A296909.P16716529132304109567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (n ^ 2 + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A296909.P16716529132304109567

namespace A296909

/-- `A053438(n²+n)+char[A053438(n)]` -/
def P16716529132304109567.Spec : Prop :=
  ∀ n, P16716529132304109567.a n = A296909 n

end A296909

/-! ## A296909.P2641668461977835370

`A122797(A047452(∑[n+1]))-2*n`
-/

namespace A296909.P2641668461977835370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (A047452 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (2 * n : ℤ)

end

end A296909.P2641668461977835370

namespace A296909

/-- `A122797(A047452(∑[n+1]))-2*n` -/
def P2641668461977835370.Spec : Prop :=
  ∀ n, P2641668461977835370.a n = A296909 n

end A296909

/-!
# A296910: a(0)=1, a(1)=4; thereafter a(n) = 4*n-2*(-1)^n.

The programs for A296910, the canonical program `A296910.P15115940855877380852` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296910 has offset 0).

The definition of A296910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296910.P15115940855877380852

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=14, a(4)=14`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A296910

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P15115940855877380852.Spec : Prop :=
  ∀ n, P15115940855877380852.a n = A296910 n

theorem P15115940855877380852.correct : P15115940855877380852.Spec := by
  intro n
  simp only [A296910]

end A296910

/-! ## A296910.P12299102777884859113

`a(n-2)+8` with `a(0)=1, a(1)=4, a(2)=6, a(3)=14`
-/

namespace A296910.P12299102777884859113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6, 14] fun n a =>
  a (n - 2) + 8

end

end A296910.P12299102777884859113

namespace A296910

/-- `a(n-2)+8` -/
def P12299102777884859113.Spec : Prop :=
  ∀ n, (P12299102777884859113.a n : ℤ) = A296910 n

end A296910

/-! ## A296910.P8401898767306144994

`∑[8-a(n-1)]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=8`
-/

namespace A296910.P8401898767306144994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 8] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296910.P8401898767306144994

namespace A296910

/-- `∑[8-a(n-1)]` -/
def P8401898767306144994.Spec : Prop :=
  ∀ n, P8401898767306144994.a n = A296910 n

end A296910

/-! ## A296910.P10344414920832041975

`∑[A081840(a(n%2))]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A296910.P10344414920832041975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n f1 =>
  A081840 (f1 (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296910.P10344414920832041975

namespace A296910

/-- `∑[A081840(a(n%2))]` -/
def P10344414920832041975.Spec : Prop :=
  ∀ n, P10344414920832041975.a n = A296910 n

end A296910

/-! ## A296910.P13495217818653092961

`A109474(n+1)+(4-n)%(n+1)`
-/

namespace A296910.P13495217818653092961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109474 (n + 1) + Int.tmod (4 - (n : ℤ)) (n + 1 : ℤ)

end

end A296910.P13495217818653092961

namespace A296910

/-- `A109474(n+1)+(4-n)%(n+1)` -/
def P13495217818653092961.Spec : Prop :=
  ∀ n, P13495217818653092961.a n = A296910 n

end A296910

/-! ## A296910.P11332271027423574307

`A008579(n)-A237420(n)`
-/

namespace A296910.P11332271027423574307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A237420 n

end

end A296910.P11332271027423574307

namespace A296910

/-- `A008579(n)-A237420(n)` -/
def P11332271027423574307.Spec : Prop :=
  ∀ n, P11332271027423574307.a n = A296910 n

end A296910

/-! ## A296910.P16375421441753441941

`A008579(n)-2*A142150(n)`
-/

namespace A296910.P16375421441753441941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - 2 * A142150 n

end

end A296910.P16375421441753441941

namespace A296910

/-- `A008579(n)-2*A142150(n)` -/
def P16375421441753441941.Spec : Prop :=
  ∀ n, P16375421441753441941.a n = A296910 n

end A296910

/-! ## A296910.P16864944818749013654

`A008579(n)-n*A059841(n)`
-/

namespace A296910.P16864944818749013654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - (n : ℤ) * A059841 n

end

end A296910.P16864944818749013654

namespace A296910

/-- `A008579(n)-n*A059841(n)` -/
def P16864944818749013654.Spec : Prop :=
  ∀ n, P16864944818749013654.a n = A296910 n

end A296910

/-! ## A296910.P1226372538113913097

`A001057(n)+A008579(n)-abs(A001057(n))`
-/

namespace A296910.P1226372538113913097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + (A008579 n - |A001057 n|)

end

end A296910.P1226372538113913097

namespace A296910

/-- `A001057(n)+A008579(n)-abs(A001057(n))` -/
def P1226372538113913097.Spec : Prop :=
  ∀ n, P1226372538113913097.a n = A296910 n

end A296910

/-! ## A296910.P5591909395245517514

`A062157(n)+A336705(n)+A062157(A289207(n))`
-/

namespace A296910.P5591909395245517514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + (A336705 n + A062157 (A289207 n).toNat)

end

end A296910.P5591909395245517514

namespace A296910

/-- `A062157(n)+A336705(n)+A062157(A289207(n))` -/
def P5591909395245517514.Spec : Prop :=
  ∀ n, P5591909395245517514.a n = A296910 n

end A296910

/-! ## A296910.P11803764976046817142

`A139544(A265283(n))`
-/

namespace A296910.P11803764976046817142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139544 (A265283 n).toNat

end

end A296910.P11803764976046817142

namespace A296910

/-- `A139544(A265283(n))` -/
def P11803764976046817142.Spec : Prop :=
  ∀ n, P11803764976046817142.a n = A296910 n

end A296910

/-! ## A296910.P2010960869954445285

`A008579(n)-n*Δ[A008619(n+1)]`
-/

namespace A296910.P2010960869954445285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A296910.P2010960869954445285

namespace A296910

/-- `A008579(n)-n*Δ[A008619(n+1)]` -/
def P2010960869954445285.Spec : Prop :=
  ∀ n, P2010960869954445285.a n = A296910 n

end A296910

/-! ## A296910.P17223564499904516248

`A163985(n+1)+A163985(A014681(n))`
-/

namespace A296910.P17223564499904516248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (n + 1) + A163985 (A014681 n).toNat

end

end A296910.P17223564499904516248

namespace A296910

/-- `A163985(n+1)+A163985(A014681(n))` -/
def P17223564499904516248.Spec : Prop :=
  ∀ n, P17223564499904516248.a n = A296910 n

end A296910

/-! ## A296910.P15860190071327776429

`A267872(n)+A014681(2*A014681(n))`
-/

namespace A296910.P15860190071327776429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n + A014681 (2 * A014681 n).toNat

end

end A296910.P15860190071327776429

namespace A296910

/-- `A267872(n)+A014681(2*A014681(n))` -/
def P15860190071327776429.Spec : Prop :=
  ∀ n, P15860190071327776429.a n = A296910 n

end A296910

/-! ## A296910.P17662107817339168098

`2*A296368(2*n)-A008458(2*n)`
-/

namespace A296910.P17662107817339168098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296368 (2 * n) - A008458 (2 * n)

end

end A296910.P17662107817339168098

namespace A296910

/-- `2*A296368(2*n)-A008458(2*n)` -/
def P17662107817339168098.Spec : Prop :=
  ∀ n, P17662107817339168098.a n = A296910 n

end A296910

/-! ## A296910.P10695614573815916392

`2*A296368(2*n)-A298028(2*n)`
-/

namespace A296910.P10695614573815916392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296368 (2 * n) - A298028 (2 * n)

end

end A296910.P10695614573815916392

namespace A296910

/-- `2*A296368(2*n)-A298028(2*n)` -/
def P10695614573815916392.Spec : Prop :=
  ∀ n, P10695614573815916392.a n = A296910 n

end A296910

/-! ## A296910.P97532972524564073

`2*A296368(2*n)-A298036(2*n)`
-/

namespace A296910.P97532972524564073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296368 (2 * n) - A298036 (2 * n)

end

end A296910.P97532972524564073

namespace A296910

/-- `2*A296368(2*n)-A298036(2*n)` -/
def P97532972524564073.Spec : Prop :=
  ∀ n, P97532972524564073.a n = A296910 n

end A296910

/-! ## A296910.P5909177636224647126

`A008579(n)-A004526(A088440(2*n))`
-/

namespace A296910.P5909177636224647126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A004526 (A088440 (2 * n)).toNat

end

end A296910.P5909177636224647126

namespace A296910

/-- `A008579(n)-A004526(A088440(2*n))` -/
def P5909177636224647126.Spec : Prop :=
  ∀ n, P5909177636224647126.a n = A296910 n

end A296910

/-!
# A296911: Partial sums of A296910.

The programs for A296911, the canonical program `A296911.P1427626033272851654` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296911 has offset 0).

The definition of A296911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296911.P1427626033272851654

`abs(∑[4*n]-(-1)^n)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A296911

/-- `abs(∑[4*n]-(-1)^n)` -/
def P1427626033272851654.Spec : Prop :=
  ∀ n, P1427626033272851654.a n = A296911 n

theorem P1427626033272851654.correct : P1427626033272851654.Spec := by
  intro n
  simp only [A296911]

end A296911

/-! ## A296911.P17428143356844263628

`∑[a(n-2)+8]` with `a(0)=1, a(1)=4, a(2)=6, a(3)=14`
-/

namespace A296911.P17428143356844263628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6, 14] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296911.P17428143356844263628

namespace A296911

/-- `∑[a(n-2)+8]` -/
def P17428143356844263628.Spec : Prop :=
  ∀ n, (P17428143356844263628.a n : ℤ) = A296911 n

end A296911

/-! ## A296911.P756056581195664679

`(2*n)²-a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A296911.P756056581195664679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((2 * n) ^ 2 : ℤ) - a (n - 1)

end

end A296911.P756056581195664679

namespace A296911

/-- `(2*n)²-a(n-1)` -/
def P756056581195664679.Spec : Prop :=
  ∀ n, P756056581195664679.a n = A296911 n

end A296911

/-! ## A296911.P7953683084773775238

`∑[∑[8-a(n-1)]]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=8`
-/

namespace A296911.P7953683084773775238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 8] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296911.P7953683084773775238

namespace A296911

/-- `∑[∑[8-a(n-1)]]` -/
def P7953683084773775238.Spec : Prop :=
  ∀ n, P7953683084773775238.a n = A296911 n

end A296911

/-! ## A296911.P4631108472845857374

`record[xor(1, n)+n*(2*n-3)]`
-/

namespace A296911.P4631108472845857374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) + (n : ℤ) * ((2 * n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296911.P4631108472845857374

namespace A296911

/-- `record[xor(1, n)+n*(2*n-3)]` -/
def P4631108472845857374.Spec : Prop :=
  ∀ n, P4631108472845857374.a n = A296911 n

end A296911

/-! ## A296911.P4065979870268728635

`floor(n*4*n-a(n-1))` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A296911.P4065979870268728635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (n * (4 * n) : ℤ) - a (n - 1)

end

end A296911.P4065979870268728635

namespace A296911

/-- `floor(n*4*n-a(n-1))` -/
def P4065979870268728635.Spec : Prop :=
  ∀ n, P4065979870268728635.a n = A296911 n

end A296911

/-! ## A296911.P9470544036797918965

`record[2*or(1, n²)-(2*n+1)]`
-/

namespace A296911.P9470544036797918965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 (n ^ 2) : ℤ) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296911.P9470544036797918965

namespace A296911

/-- `record[2*or(1, n²)-(2*n+1)]` -/
def P9470544036797918965.Spec : Prop :=
  ∀ n, P9470544036797918965.a n = A296911 n

end A296911

/-! ## A296911.P6967988823615202044

`record[(n-2+n)²-a(n-1)]` with `a(0)=1`
-/

namespace A296911.P6967988823615202044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 2 + (n : ℤ)) ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296911.P6967988823615202044

namespace A296911

/-- `record[(n-2+n)²-a(n-1)]` -/
def P6967988823615202044.Spec : Prop :=
  ∀ n, P6967988823615202044.a n = A296911 n

end A296911

/-! ## A296911.P6376986112378264155

`record[or(2, n*2*n)-(2*n+1)]`
-/

namespace A296911.P6376986112378264155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (n * (2 * n)) : ℤ) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296911.P6376986112378264155

namespace A296911

/-- `record[or(2, n*2*n)-(2*n+1)]` -/
def P6376986112378264155.Spec : Prop :=
  ∀ n, P6376986112378264155.a n = A296911 n

end A296911

/-! ## A296911.P1503376644947312275

`∑[A296910(n)]`
-/

namespace A296911.P1503376644947312275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296911.P1503376644947312275

namespace A296911

/-- `∑[A296910(n)]` -/
def P1503376644947312275.Spec : Prop :=
  ∀ n, P1503376644947312275.a n = A296911 n

end A296911

/-! ## A296911.P4450557985007099686

`record[A275543(n)-2*n]`
-/

namespace A296911.P4450557985007099686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296911.P4450557985007099686

namespace A296911

/-- `record[A275543(n)-2*n]` -/
def P4450557985007099686.Spec : Prop :=
  ∀ n, P4450557985007099686.a n = A296911 n

end A296911

/-! ## A296911.P16011320609974790671

`∑[∑[A081840(a(n%2))]]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A296911.P16011320609974790671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n f2 =>
  A081840 (f2 (n % 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296911.P16011320609974790671

namespace A296911

/-- `∑[∑[A081840(a(n%2))]]` -/
def P16011320609974790671.Spec : Prop :=
  ∀ n, P16011320609974790671.a n = A296911 n

end A296911

/-! ## A296911.P8471990738647918041

`A165326(n)+A046092(n)`
-/

namespace A296911.P8471990738647918041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n + A046092 n

end

end A296911.P8471990738647918041

namespace A296911

/-- `A165326(n)+A046092(n)` -/
def P8471990738647918041.Spec : Prop :=
  ∀ n, P8471990738647918041.a n = A296911 n

end A296911

/-! ## A296911.P17233559311760460719

`A267182(n)+A139593(n)`
-/

namespace A296911.P17233559311760460719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 n + A139593 n

end

end A296911.P17233559311760460719

namespace A296911

/-- `A267182(n)+A139593(n)` -/
def P17233559311760460719.Spec : Prop :=
  ∀ n, P17233559311760460719.a n = A296911 n

end A296911

/-! ## A296911.P15259809500604732158

`A008580(n)-A110660(n)`
-/

namespace A296911.P15259809500604732158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008580 n - A110660 n

end

end A296911.P15259809500604732158

namespace A296911

/-- `A008580(n)-A110660(n)` -/
def P15259809500604732158.Spec : Prop :=
  ∀ n, P15259809500604732158.a n = A296911 n

end A296911

/-! ## A296911.P689664940200438572

`∑[A008579(n)-A237420(n)]`
-/

namespace A296911.P689664940200438572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296911.P689664940200438572

namespace A296911

/-- `∑[A008579(n)-A237420(n)]` -/
def P689664940200438572.Spec : Prop :=
  ∀ n, P689664940200438572.a n = A296911 n

end A296911

/-! ## A296911.P3211404791456063177

`A097080(n+1)-A040003(n)`
-/

namespace A296911.P3211404791456063177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097080 (n + 1) - A040003 n

end

end A296911.P3211404791456063177

namespace A296911

/-- `A097080(n+1)-A040003(n)` -/
def P3211404791456063177.Spec : Prop :=
  ∀ n, P3211404791456063177.a n = A296911 n

end A296911

/-! ## A296911.P2835803713478168329

`A001844(n)+A165326(n)-1`
-/

namespace A296911.P2835803713478168329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + (A165326 n - 1)

end

end A296911.P2835803713478168329

namespace A296911

/-- `A001844(n)+A165326(n)-1` -/
def P2835803713478168329.Spec : Prop :=
  ∀ n, P2835803713478168329.a n = A296911 n

end A296911

/-! ## A296911.P6858507756581916459

`A062786(n+1)%A202963(n+1)`
-/

namespace A296911.P6858507756581916459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062786 (n + 1)) (A202963 (n + 1))

end

end A296911.P6858507756581916459

namespace A296911

/-- `A062786(n+1)%A202963(n+1)` -/
def P6858507756581916459.Spec : Prop :=
  ∀ n, P6858507756581916459.a n = A296911 n

end A296911

/-!
# A296915: Primes that are not squares mod 163.

The programs for A296915, there is no canonical definition to state claims against.
-/

/-! ## A296915.P8347479104493901504

`p?[lt[A318985(n), 1]]`
-/

namespace A296915.P8347479104493901504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A296915.P8347479104493901504

/-! ## A296915.P66362579488396321

`eq[A068346(n), A318985(n)]`
-/

namespace A296915.P66362579488396321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P66362579488396321

/-! ## A296915.P10333906513592674783

`eq[A072480(n), A318985(n)]`
-/

namespace A296915.P10333906513592674783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P10333906513592674783

/-! ## A296915.P13282016710564642667

`eq[A277894(n), A318985(n)]`
-/

namespace A296915.P13282016710564642667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P13282016710564642667

/-! ## A296915.P2946232885659829257

`eq[A278648(n), A318985(n)]`
-/

namespace A296915.P2946232885659829257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P2946232885659829257

/-! ## A296915.P16590879113947379205

`eq[A318985(n), A338554(n)]`
-/

namespace A296915.P16590879113947379205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P16590879113947379205

/-! ## A296915.P17144524110649657942

`eq[A237053(n)², A318985(n)]`
-/

namespace A296915.P17144524110649657942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P17144524110649657942

/-! ## A296915.P14194997293881102540

`eq[A011615(n)+2, A072721(n)]`
-/

namespace A296915.P14194997293881102540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P14194997293881102540

/-! ## A296915.P5643737211135335741

`eq[A011615(n)+2, A322968(n)]`
-/

namespace A296915.P5643737211135335741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P5643737211135335741

/-! ## A296915.P7286815290308002513

`p?[n*A011615(2*n)]`
-/

namespace A296915.P7286815290308002513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011615 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296915.P7286815290308002513

/-! ## A296915.P9038123944785874482

`eq[A011615(2*n), A072721(n)]`
-/

namespace A296915.P9038123944785874482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P9038123944785874482

/-! ## A296915.P14857033707428645415

`eq[A011615(2*n), A210442(n)]`
-/

namespace A296915.P14857033707428645415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P14857033707428645415

/-! ## A296915.P5905041806175659393

`eq[A011615(2*n), A211110(n)]`
-/

namespace A296915.P5905041806175659393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P5905041806175659393

/-! ## A296915.P5698262407178928130

`eq[A011615(2*n), A284289(n)]`
-/

namespace A296915.P5698262407178928130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P5698262407178928130

/-! ## A296915.P687820546338760447

`eq[A011615(2*n), A322968(n)]`
-/

namespace A296915.P687820546338760447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P687820546338760447

/-! ## A296915.P7864571341000345478

`eq[A318985(n), A393715(n)]`
-/

namespace A296915.P7864571341000345478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393715 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P7864571341000345478

/-! ## A296915.P10425737688419110236

`eq[A318985(n), A340732(n)]`
-/

namespace A296915.P10425737688419110236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296915.P10425737688419110236

/-!
# A296918: List of coefficients of reduced chromatic polynomial of dodecahedron, highest order terms first.

The programs for A296918, there is no canonical definition to state claims against.
-/

/-! ## A296918.P16953463029145863642

`A001786(n)-A307071(A001349(n))`
-/

namespace A296918.P16953463029145863642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001786 n - A307071 (A001349 n).toNat

end

end A296918.P16953463029145863642

/-!
# A296920: Rational primes that decompose in the quadratic field Q(sqrt(-11)).

The programs for A296920, there is no canonical definition to state claims against.
-/

/-! ## A296920.P617819667007026966

`A056874(floor(acot(acot(n))+n+1))`
-/

namespace A296920.P617819667007026966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ)) + (n + 1 : ℝ)⌋.toNat

end

end A296920.P617819667007026966

/-! ## A296920.P6104610845966019626

`A056874(A326178(n+1))`
-/

namespace A296920.P6104610845966019626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (A326178 (n + 1)).toNat

end

end A296920.P6104610845966019626

/-! ## A296920.P11815922190980290239

`∩[A056874(n+1), A106118(n+1)]`
-/

namespace A296920.P11815922190980290239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296920.P11815922190980290239

/-! ## A296920.P17325576655864796611

`∩[A106118(n+1), A341785(n+1)]`
-/

namespace A296920.P17325576655864796611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296920.P17325576655864796611

/-! ## A296920.P472194680185455957

`∩[A035247(n+1), A106118(n+1)]`
-/

namespace A296920.P472194680185455957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296920.P472194680185455957

/-! ## A296920.P7091492823263949141

`p?[A035247(n+1)%A035255(n+1)]`
-/

namespace A296920.P7091492823263949141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035247 (n + 1)) (A035255 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296920.P7091492823263949141

/-! ## A296920.P11541328538428189194

`p?[2*A267541(n)-11]`
-/

namespace A296920.P11541328538428189194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267541 n - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296920.P11541328538428189194

/-! ## A296920.P12020883910227766254

`p?[A267755(n)]`
-/

namespace A296920.P12020883910227766254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296920.P12020883910227766254

/-! ## A296920.P668603002533365836

`filter[A267755(n), A010051(#)]`
-/

namespace A296920.P668603002533365836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A296920.P668603002533365836

/-! ## A296920.P2629291243840200881

`record[A020639(A267755(n+1))]`
-/

namespace A296920.P2629291243840200881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A267755 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296920.P2629291243840200881

/-! ## A296920.P11252198714876886009

`∩[A000040(n+1), A267755(n)]`
-/

namespace A296920.P11252198714876886009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296920.P11252198714876886009

/-! ## A296920.P18345145530315205274

`∩[A056874(n+1), A267755(n)]`
-/

namespace A296920.P18345145530315205274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296920.P18345145530315205274

/-! ## A296920.P17919015262132197216

`∩[A065091(n+1), A267755(n)]`
-/

namespace A296920.P17919015262132197216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296920.P17919015262132197216

/-! ## A296920.P1598922609490817531

`∩[A065396(n+1), A267755(n)]`
-/

namespace A296920.P1598922609490817531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296920.P1598922609490817531

/-! ## A296920.P11972957697656379788

`∩[A106118(n+1), A267755(n)]`
-/

namespace A296920.P11972957697656379788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296920.P11972957697656379788

/-! ## A296920.P7450985323459069808

`∩[A116974(n+1), A267755(n)]`
-/

namespace A296920.P7450985323459069808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296920.P7450985323459069808

/-! ## A296920.P4261398431560954356

`∩[A182986(n+1), A267755(n)]`
-/

namespace A296920.P4261398431560954356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296920.P4261398431560954356

/-! ## A296920.P2202951768347302579

`∩[A056874(n+1), A204454(n+1)]`
-/

namespace A296920.P2202951768347302579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296920.P2202951768347302579

/-! ## A296920.P16766269838780917941

`∩[A176165(n+1), A267755(n)]`
-/

namespace A296920.P16766269838780917941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296920.P16766269838780917941

/-! ## A296920.P1199900842258829156

`p?[A279194(n+1)+1]`
-/

namespace A296920.P1199900842258829156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279194 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296920.P1199900842258829156

/-!
# A296921: Rational primes that decompose in the field Q(sqrt(-163)).

The programs for A296921, there is no canonical definition to state claims against.
-/

/-! ## A296921.P14702664118882472728

`p?[A257362(n+1)+char[11]]`
-/

namespace A296921.P14702664118882472728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257362 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296921.P14702664118882472728

/-! ## A296921.P16781951166728135380

`p?[lt[2, A318985(n)]]`
-/

namespace A296921.P16781951166728135380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A296921.P16781951166728135380

/-! ## A296921.P4457864216454545966

`p?[n*A011615(n)]`
-/

namespace A296921.P4457864216454545966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296921.P4457864216454545966

/-! ## A296921.P18046798756886157338

`eq[A011615(n), A072721(n)]`
-/

namespace A296921.P18046798756886157338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296921.P18046798756886157338

/-! ## A296921.P9021453982299393953

`eq[A011615(n), A210442(n)]`
-/

namespace A296921.P9021453982299393953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296921.P9021453982299393953

/-! ## A296921.P17606663674622737599

`eq[A011615(n), A211110(n)]`
-/

namespace A296921.P17606663674622737599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296921.P17606663674622737599

/-! ## A296921.P335084997672453988

`eq[A011615(n), A284289(n)]`
-/

namespace A296921.P335084997672453988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296921.P335084997672453988

/-! ## A296921.P7211643234392878956

`eq[A011615(n), A322968(n)]`
-/

namespace A296921.P7211643234392878956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296921.P7211643234392878956

/-! ## A296921.P13559996943466443485

`eq[A011615(n), A331885(n)]`
-/

namespace A296921.P13559996943466443485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296921.P13559996943466443485

/-!
# A296922: Primes p such that Legendre(-5,p) = 0 or 1.

The programs for A296922, the canonical program `A296922.P1686285599133092748` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296922 has offset 1).

The definition of A296922 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240920, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A296922.P1686285599133092748

`A240920(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A296922

/-- `A240920(n+2)` -/
def P1686285599133092748.Spec : Prop :=
  ∀ n, P1686285599133092748.a n = A296922 (n + 1)

theorem P1686285599133092748.correct : P1686285599133092748.Spec := by
  intro n
  simp only [A296922, Nat.add_sub_cancel]

end A296922

/-! ## A296922.P9921154940181876609

`p?[4*n+2-(2*n+1)%10]`
-/

namespace A296922.P9921154940181876609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) - (((2 * n + 1) % 10 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296922.P9921154940181876609

namespace A296922

/-- `p?[4*n+2-(2*n+1)%10]` -/
def P9921154940181876609.Spec : Prop :=
  ∀ n, P9921154940181876609.a n = A296922 (n + 1)

end A296922

/-! ## A296922.P11124965359840208109

`∪[A107151(n+1), A139513(n+1)]`
-/

namespace A296922.P11124965359840208109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296922.P11124965359840208109

namespace A296922

/-- `∪[A107151(n+1), A139513(n+1)]` -/
def P11124965359840208109.Spec : Prop :=
  ∀ n, (P11124965359840208109.a n : ℤ) = A296922 (n + 1)

end A296922

/-! ## A296922.P4795584167246410601

`p?[A091727(n+2)]`
-/

namespace A296922.P4795584167246410601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296922.P4795584167246410601

namespace A296922

/-- `p?[A091727(n+2)]` -/
def P4795584167246410601.Spec : Prop :=
  ∀ n, P4795584167246410601.a n = A296922 (n + 1)

end A296922

/-! ## A296922.P14353053587532488437

`p?[floor(20*(n+1)/11)]`
-/

namespace A296922.P14353053587532488437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊20 * ((n + 1 : ℚ) / 11)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296922.P14353053587532488437

namespace A296922

/-- `p?[floor(20*(n+1)/11)]` -/
def P14353053587532488437.Spec : Prop :=
  ∀ n, P14353053587532488437.a n = A296922 (n + 1)

end A296922

/-! ## A296922.P11810364143769935473

`∩[A065091(n+1), A091727(n+1)]`
-/

namespace A296922.P11810364143769935473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296922.P11810364143769935473

namespace A296922

/-- `∩[A065091(n+1), A091727(n+1)]` -/
def P11810364143769935473.Spec : Prop :=
  ∀ n, (P11810364143769935473.a n : ℤ) = A296922 (n + 1)

end A296922

/-! ## A296922.P3533440845204104929

`∩[A006005(n+1), A091727(n+1)]`
-/

namespace A296922.P3533440845204104929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296922.P3533440845204104929

namespace A296922

/-- `∩[A006005(n+1), A091727(n+1)]` -/
def P3533440845204104929.Spec : Prop :=
  ∀ n, (P3533440845204104929.a n : ℤ) = A296922 (n + 1)

end A296922

/-! ## A296922.P8104033599593128462

`∩[A091727(n+1), A000040(n+2)]`
-/

namespace A296922.P8104033599593128462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296922.P8104033599593128462

namespace A296922

/-- `∩[A091727(n+1), A000040(n+2)]` -/
def P8104033599593128462.Spec : Prop :=
  ∀ n, (P8104033599593128462.a n : ℤ) = A296922 (n + 1)

end A296922

/-! ## A296922.P95541209393592515

`∩[A161346(n+1), A091727(n+1)]`
-/

namespace A296922.P95541209393592515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296922.P95541209393592515

namespace A296922

/-- `∩[A161346(n+1), A091727(n+1)]` -/
def P95541209393592515.Spec : Prop :=
  ∀ n, (P95541209393592515.a n : ℤ) = A296922 (n + 1)

end A296922

/-! ## A296922.P16254939000625719271

`∩[A091727(n+1), A140826(n+1)]`
-/

namespace A296922.P16254939000625719271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296922.P16254939000625719271

namespace A296922

/-- `∩[A091727(n+1), A140826(n+1)]` -/
def P16254939000625719271.Spec : Prop :=
  ∀ n, (P16254939000625719271.a n : ℤ) = A296922 (n + 1)

end A296922

/-! ## A296922.P8525257325536989318

`∩[A064728(n+1), A091727(n+1)]`
-/

namespace A296922.P8525257325536989318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296922.P8525257325536989318

namespace A296922

/-- `∩[A064728(n+1), A091727(n+1)]` -/
def P8525257325536989318.Spec : Prop :=
  ∀ n, (P8525257325536989318.a n : ℤ) = A296922 (n + 1)

end A296922

/-! ## A296922.P6921344140990011864

`∩[A066542(n+1), A091727(n+1)]`
-/

namespace A296922.P6921344140990011864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296922.P6921344140990011864

namespace A296922

/-- `∩[A066542(n+1), A091727(n+1)]` -/
def P6921344140990011864.Spec : Prop :=
  ∀ n, (P6921344140990011864.a n : ℤ) = A296922 (n + 1)

end A296922

/-! ## A296922.P18064511288906724977

`∩[A075763(n+1), A091727(n+1)]`
-/

namespace A296922.P18064511288906724977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296922.P18064511288906724977

namespace A296922

/-- `∩[A075763(n+1), A091727(n+1)]` -/
def P18064511288906724977.Spec : Prop :=
  ∀ n, (P18064511288906724977.a n : ℤ) = A296922 (n + 1)

end A296922

/-! ## A296922.P1027832189595855008

`∩[A091727(n+1), A117346(n+1)]`
-/

namespace A296922.P1027832189595855008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296922.P1027832189595855008

namespace A296922

/-- `∩[A091727(n+1), A117346(n+1)]` -/
def P1027832189595855008.Spec : Prop :=
  ∀ n, (P1027832189595855008.a n : ℤ) = A296922 (n + 1)

end A296922

/-! ## A296922.P14341687346558975844

`∩[A091727(n+2), A260442(n)]`
-/

namespace A296922.P14341687346558975844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296922.P14341687346558975844

namespace A296922

/-- `∩[A091727(n+2), A260442(n)]` -/
def P14341687346558975844.Spec : Prop :=
  ∀ n, (P14341687346558975844.a n : ℤ) = A296922 (n + 1)

end A296922

/-! ## A296922.P3608000039483680972

`filter[A091727(n+1), A324903(#)]`
-/

namespace A296922.P3608000039483680972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A296922.P3608000039483680972

namespace A296922

/-- `filter[A091727(n+1), A324903(#)]` -/
def P3608000039483680972.Spec : Prop :=
  ∀ n, P3608000039483680972.a n = A296922 (n + 1)

end A296922

/-! ## A296922.P387218138290630001

`filter[A091727(n+1), A358770(#)]`
-/

namespace A296922.P387218138290630001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A296922.P387218138290630001

namespace A296922

/-- `filter[A091727(n+1), A358770(#)]` -/
def P387218138290630001.Spec : Prop :=
  ∀ n, P387218138290630001.a n = A296922 (n + 1)

end A296922

/-! ## A296922.P6938183282627055107

`filter[A091727(n+1), A359590(#)]`
-/

namespace A296922.P6938183282627055107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A296922.P6938183282627055107

namespace A296922

/-- `filter[A091727(n+1), A359590(#)]` -/
def P6938183282627055107.Spec : Prop :=
  ∀ n, P6938183282627055107.a n = A296922 (n + 1)

end A296922

/-! ## A296922.P12898110835406925213

`filter[A091727(n+1), A359592(#)]`
-/

namespace A296922.P12898110835406925213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A296922.P12898110835406925213

namespace A296922

/-- `filter[A091727(n+1), A359592(#)]` -/
def P12898110835406925213.Spec : Prop :=
  ∀ n, P12898110835406925213.a n = A296922 (n + 1)

end A296922

/-! ## A296922.P8728968201857634769

`filter[A091727(n+1), A373141(#)]`
-/

namespace A296922.P8728968201857634769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A296922.P8728968201857634769

namespace A296922

/-- `filter[A091727(n+1), A373141(#)]` -/
def P8728968201857634769.Spec : Prop :=
  ∀ n, P8728968201857634769.a n = A296922 (n + 1)

end A296922

/-!
# A296923: Primes p such that Legendre(-5,p) = -1.

The programs for A296923, the canonical program `A296923.P6490900541001492370` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296923 has offset 1).

The definition of A296923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296923.P4597185135629843911

`∪[A003626(n+1), A006686(n+1)]`
-/

namespace A296923.P4597185135629843911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296923.P4597185135629843911

namespace A296923

/-- `∪[A003626(n+1), A006686(n+1)]` -/
def P4597185135629843911.Spec : Prop :=
  ∀ n, (P4597185135629843911.a n : ℤ) = A296923 (n + 1)

end A296923

/-! ## A296923.P8515635845619738224

`∪[A003626(n+1), A007352(n+1)]`
-/

namespace A296923.P8515635845619738224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296923.P8515635845619738224

namespace A296923

/-- `∪[A003626(n+1), A007352(n+1)]` -/
def P8515635845619738224.Spec : Prop :=
  ∀ n, (P8515635845619738224.a n : ℤ) = A296923 (n + 1)

end A296923

/-! ## A296923.P6490900541001492370

`∪[A003626(n+1), A122487(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A296923

/-- `∪[A003626(n+1), A122487(n+1)]` -/
def P6490900541001492370.Spec : Prop :=
  ∀ n, (P6490900541001492370.a n : ℤ) = A296923 (n + 1)

theorem P6490900541001492370.correct : P6490900541001492370.Spec := by
  intro n
  simp only [A296923, Nat.add_sub_cancel]

end A296923

/-! ## A296923.P9944614781170823200

`∪[A003626(n+1), A139844(n+1)]`
-/

namespace A296923.P9944614781170823200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296923.P9944614781170823200

namespace A296923

/-- `∪[A003626(n+1), A139844(n+1)]` -/
def P9944614781170823200.Spec : Prop :=
  ∀ n, (P9944614781170823200.a n : ℤ) = A296923 (n + 1)

end A296923

/-! ## A296923.P6200811769608658906

`p?[and(1, floor(n/5))+2*n]`
-/

namespace A296923.P6200811769608658906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(n : ℚ) / 5⌋ + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296923.P6200811769608658906

namespace A296923

/-- `p?[and(1, floor(n/5))+2*n]` -/
def P6200811769608658906.Spec : Prop :=
  ∀ n, P6200811769608658906.a n = A296923 (n + 1)

end A296923

/-! ## A296923.P12996748373331899739

`p?[n*gcd(2, floor(n/10))]`
-/

namespace A296923.P12996748373331899739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd 2 ⌊(n : ℚ) / 10⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A296923.P12996748373331899739

namespace A296923

/-- `p?[n*gcd(2, floor(n/10))]` -/
def P12996748373331899739.Spec : Prop :=
  ∀ n, (P12996748373331899739.a n : ℤ) = A296923 (n + 1)

end A296923

/-! ## A296923.P8109249475941932399

`p?[n-a(n-2)%10]` with `a(0)=4, a(1)=6`
-/

namespace A296923.P8109249475941932399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  (n : ℤ) - Int.tmod (f1 (n - 2)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296923.P8109249475941932399

namespace A296923

/-- `p?[n-a(n-2)%10]` -/
def P8109249475941932399.Spec : Prop :=
  ∀ n, P8109249475941932399.a n = A296923 (n + 1)

end A296923

/-! ## A296923.P11034203847212084633

`record[A020639(2*n+10-n%10)]`
-/

namespace A296923.P11034203847212084633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((2 * n : ℤ) + (10 - ((n % 10 : ℕ) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296923.P11034203847212084633

namespace A296923

/-- `record[A020639(2*n+10-n%10)]` -/
def P11034203847212084633.Spec : Prop :=
  ∀ n, P11034203847212084633.a n = A296923 (n + 1)

end A296923

/-! ## A296923.P2264904392187991134

`p?[A131452(n+1)+A042968(A131380(n+1))]`
-/

namespace A296923.P2264904392187991134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 (n + 1) + A042968 (A131380 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296923.P2264904392187991134

namespace A296923

/-- `p?[A131452(n+1)+A042968(A131380(n+1))]` -/
def P2264904392187991134.Spec : Prop :=
  ∀ n, P2264904392187991134.a n = A296923 (n + 1)

end A296923

/-! ## A296923.P6555653135434134518

`p?[A067251(2*(n+1))]`
-/

namespace A296923.P6555653135434134518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296923.P6555653135434134518

namespace A296923

/-- `p?[A067251(2*(n+1))]` -/
def P6555653135434134518.Spec : Prop :=
  ∀ n, P6555653135434134518.a n = A296923 (n + 1)

end A296923

/-! ## A296923.P18286205664259746455

`p?[A342851(2*n+1)]`
-/

namespace A296923.P18286205664259746455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296923.P18286205664259746455

namespace A296923

/-- `p?[A342851(2*n+1)]` -/
def P18286205664259746455.Spec : Prop :=
  ∀ n, P18286205664259746455.a n = A296923 (n + 1)

end A296923

/-! ## A296923.P11590058898956733361

`filter[A067251(2*(n+1)), A010051(#)]`
-/

namespace A296923.P11590058898956733361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A296923.P11590058898956733361

namespace A296923

/-- `filter[A067251(2*(n+1)), A010051(#)]` -/
def P11590058898956733361.Spec : Prop :=
  ∀ n, P11590058898956733361.a n = A296923 (n + 1)

end A296923

/-! ## A296923.P12973171770874691707

`p?[A002264(A002264(2*n+1))+2*(n+1)]`
-/

namespace A296923.P12973171770874691707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (2 * n + 1)).toNat + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296923.P12973171770874691707

namespace A296923

/-- `p?[A002264(A002264(2*n+1))+2*(n+1)]` -/
def P12973171770874691707.Spec : Prop :=
  ∀ n, P12973171770874691707.a n = A296923 (n + 1)

end A296923

/-! ## A296923.P12069123807985237375

`p?[A005843(n+1)+A002264(A002264(2*n+1))]`
-/

namespace A296923.P12069123807985237375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A002264 (A002264 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296923.P12069123807985237375

namespace A296923

/-- `p?[A005843(n+1)+A002264(A002264(2*n+1))]` -/
def P12069123807985237375.Spec : Prop :=
  ∀ n, P12069123807985237375.a n = A296923 (n + 1)

end A296923

/-! ## A296923.P2122069177253026324

`p?[n*A144607(n)]`
-/

namespace A296923.P2122069177253026324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A144607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296923.P2122069177253026324

namespace A296923

/-- `p?[n*A144607(n)]` -/
def P2122069177253026324.Spec : Prop :=
  ∀ n, P2122069177253026324.a n = A296923 (n + 1)

end A296923

/-! ## A296923.P2414091818315315656

`p?[eq[0, A226162(n)+1]]`
-/

namespace A296923.P2414091818315315656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226162 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A296923.P2414091818315315656

namespace A296923

/-- `p?[eq[0, A226162(n)+1]]` -/
def P2414091818315315656.Spec : Prop :=
  ∀ n, (P2414091818315315656.a n : ℤ) = A296923 (n + 1)

end A296923

/-! ## A296923.P7946613496146674767

`p?[n*(A124233(n)+1)]`
-/

namespace A296923.P7946613496146674767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A124233 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296923.P7946613496146674767

namespace A296923

/-- `p?[n*(A124233(n)+1)]` -/
def P7946613496146674767.Spec : Prop :=
  ∀ n, P7946613496146674767.a n = A296923 (n + 1)

end A296923

/-! ## A296923.P7912551810603745373

`filter[A130008(n), A144607(#)]`
-/

namespace A296923.P7912551810603745373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144607 (f1 j).toNat = 1) n)

end

end A296923.P7912551810603745373

namespace A296923

/-- `filter[A130008(n), A144607(#)]` -/
def P7912551810603745373.Spec : Prop :=
  ∀ n, P7912551810603745373.a n = A296923 (n + 1)

end A296923

/-! ## A296923.P16095616357689332834

`eq[A143862(n), A144607(n)]`
-/

namespace A296923.P16095616357689332834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144607 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296923.P16095616357689332834

namespace A296923

/-- `eq[A143862(n), A144607(n)]` -/
def P16095616357689332834.Spec : Prop :=
  ∀ n, (P16095616357689332834.a n : ℤ) = A296923 (n + 1)

end A296923

/-! ## A296923.P5449993327852199023

`eq[A144607(n), A223135(n)]`
-/

namespace A296923.P5449993327852199023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144607 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296923.P5449993327852199023

namespace A296923

/-- `eq[A144607(n), A223135(n)]` -/
def P5449993327852199023.Spec : Prop :=
  ∀ n, (P5449993327852199023.a n : ℤ) = A296923 (n + 1)

end A296923

/-!
# A296924: Primes p such that Legendre(-6,p) = 0 or 1.

The programs for A296924, the canonical program `A296924.P3946104846121365816` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296924 has offset 1).

The definition of A296924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296924.P3946104846121365816

`∪[A033199(n+1), A084865(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A296924

/-- `∪[A033199(n+1), A084865(n+1)]` -/
def P3946104846121365816.Spec : Prop :=
  ∀ n, (P3946104846121365816.a n : ℤ) = A296924 (n + 1)

theorem P3946104846121365816.correct : P3946104846121365816.Spec := by
  intro n
  simp only [A296924, Nat.add_sub_cancel]

end A296924

/-! ## A296924.P14901184913027585818

`∪[A056899(n+1), A157437(n+1)]`
-/

namespace A296924.P14901184913027585818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P14901184913027585818

namespace A296924

/-- `∪[A056899(n+1), A157437(n+1)]` -/
def P14901184913027585818.Spec : Prop :=
  ∀ n, (P14901184913027585818.a n : ℤ) = A296924 (n + 1)

end A296924

/-! ## A296924.P7465955063560834817

`∪[A084865(n+1), A157437(n+1)]`
-/

namespace A296924.P7465955063560834817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P7465955063560834817

namespace A296924

/-- `∪[A084865(n+1), A157437(n+1)]` -/
def P7465955063560834817.Spec : Prop :=
  ∀ n, (P7465955063560834817.a n : ℤ) = A296924 (n + 1)

end A296924

/-! ## A296924.P9447171252099435271

`∪[A089359(n+1), A157437(n+1)]`
-/

namespace A296924.P9447171252099435271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P9447171252099435271

namespace A296924

/-- `∪[A089359(n+1), A157437(n+1)]` -/
def P9447171252099435271.Spec : Prop :=
  ∀ n, (P9447171252099435271.a n : ℤ) = A296924 (n + 1)

end A296924

/-! ## A296924.P8184879895986601752

`∪[A208361(n+1), A157437(n+1)]`
-/

namespace A296924.P8184879895986601752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P8184879895986601752

namespace A296924

/-- `∪[A208361(n+1), A157437(n+1)]` -/
def P8184879895986601752.Spec : Prop :=
  ∀ n, (P8184879895986601752.a n : ℤ) = A296924 (n + 1)

end A296924

/-! ## A296924.P1774802892605633941

`p?[A391366(n+1)]`
-/

namespace A296924.P1774802892605633941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296924.P1774802892605633941

namespace A296924

/-- `p?[A391366(n+1)]` -/
def P1774802892605633941.Spec : Prop :=
  ∀ n, P1774802892605633941.a n = A296924 (n + 1)

end A296924

/-! ## A296924.P17000804409113878922

`p?[2*n-n%12]`
-/

namespace A296924.P17000804409113878922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n % 12 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296924.P17000804409113878922

namespace A296924

/-- `p?[2*n-n%12]` -/
def P17000804409113878922.Spec : Prop :=
  ∀ n, P17000804409113878922.a n = A296924 (n + 1)

end A296924

/-! ## A296924.P10189330519138290689

`∩[A000040(n+1), A391366(n+1)]`
-/

namespace A296924.P10189330519138290689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P10189330519138290689

namespace A296924

/-- `∩[A000040(n+1), A391366(n+1)]` -/
def P10189330519138290689.Spec : Prop :=
  ∀ n, (P10189330519138290689.a n : ℤ) = A296924 (n + 1)

end A296924

/-! ## A296924.P6161942544971538451

`∩[A008578(n+1), A391366(n+1)]`
-/

namespace A296924.P6161942544971538451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P6161942544971538451

namespace A296924

/-- `∩[A008578(n+1), A391366(n+1)]` -/
def P6161942544971538451.Spec : Prop :=
  ∀ n, (P6161942544971538451.a n : ℤ) = A296924 (n + 1)

end A296924

/-! ## A296924.P2916805382936213883

`∩[A046022(n+1), A391366(n+1)]`
-/

namespace A296924.P2916805382936213883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P2916805382936213883

namespace A296924

/-- `∩[A046022(n+1), A391366(n+1)]` -/
def P2916805382936213883.Spec : Prop :=
  ∀ n, (P2916805382936213883.a n : ℤ) = A296924 (n + 1)

end A296924

/-! ## A296924.P9483329668603563028

`∩[A033946(n+1), A391366(n+1)]`
-/

namespace A296924.P9483329668603563028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P9483329668603563028

namespace A296924

/-- `∩[A033946(n+1), A391366(n+1)]` -/
def P9483329668603563028.Spec : Prop :=
  ∀ n, (P9483329668603563028.a n : ℤ) = A296924 (n + 1)

end A296924

/-! ## A296924.P2507213593990600573

`∩[A051948(n+1), A391366(n+1)]`
-/

namespace A296924.P2507213593990600573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P2507213593990600573

namespace A296924

/-- `∩[A051948(n+1), A391366(n+1)]` -/
def P2507213593990600573.Spec : Prop :=
  ∀ n, (P2507213593990600573.a n : ℤ) = A296924 (n + 1)

end A296924

/-! ## A296924.P8179817886884473815

`∩[A053813(n+1), A391366(n+1)]`
-/

namespace A296924.P8179817886884473815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P8179817886884473815

namespace A296924

/-- `∩[A053813(n+1), A391366(n+1)]` -/
def P8179817886884473815.Spec : Prop :=
  ∀ n, (P8179817886884473815.a n : ℤ) = A296924 (n + 1)

end A296924

/-! ## A296924.P5942690483224785061

`∩[A053577(n+1), A391366(n+1)]`
-/

namespace A296924.P5942690483224785061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P5942690483224785061

namespace A296924

/-- `∩[A053577(n+1), A391366(n+1)]` -/
def P5942690483224785061.Spec : Prop :=
  ∀ n, (P5942690483224785061.a n : ℤ) = A296924 (n + 1)

end A296924

/-! ## A296924.P13993038826090974301

`∩[A015919(n+1), A391366(n+1)]`
-/

namespace A296924.P13993038826090974301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P13993038826090974301

namespace A296924

/-- `∩[A015919(n+1), A391366(n+1)]` -/
def P13993038826090974301.Spec : Prop :=
  ∀ n, (P13993038826090974301.a n : ℤ) = A296924 (n + 1)

end A296924

/-! ## A296924.P8275086148426626350

`∩[A391366(n+1), A260442(n)]`
-/

namespace A296924.P8275086148426626350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P8275086148426626350

namespace A296924

/-- `∩[A391366(n+1), A260442(n)]` -/
def P8275086148426626350.Spec : Prop :=
  ∀ n, (P8275086148426626350.a n : ℤ) = A296924 (n + 1)

end A296924

/-! ## A296924.P9106412453240716755

`filter[A391366(n+1), A008966(#)]`
-/

namespace A296924.P9106412453240716755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A296924.P9106412453240716755

namespace A296924

/-- `filter[A391366(n+1), A008966(#)]` -/
def P9106412453240716755.Spec : Prop :=
  ∀ n, P9106412453240716755.a n = A296924 (n + 1)

end A296924

/-! ## A296924.P7117109767718416638

`filter[A391366(n+1), A010051(#)]`
-/

namespace A296924.P7117109767718416638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A296924.P7117109767718416638

namespace A296924

/-- `filter[A391366(n+1), A010051(#)]` -/
def P7117109767718416638.Spec : Prop :=
  ∀ n, P7117109767718416638.a n = A296924 (n + 1)

end A296924

/-! ## A296924.P12799081361468895323

`filter[A391366(n+1), A066829(#)]`
-/

namespace A296924.P12799081361468895323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A296924.P12799081361468895323

namespace A296924

/-- `filter[A391366(n+1), A066829(#)]` -/
def P12799081361468895323.Spec : Prop :=
  ∀ n, P12799081361468895323.a n = A296924 (n + 1)

end A296924

/-! ## A296924.P10801479237364250392

`∩[A045745(n+1), A391366(n+1)]`
-/

namespace A296924.P10801479237364250392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P10801479237364250392

namespace A296924

/-- `∩[A045745(n+1), A391366(n+1)]` -/
def P10801479237364250392.Spec : Prop :=
  ∀ n, (P10801479237364250392.a n : ℤ) = A296924 (n + 1)

end A296924

/-!
# A296925: Inert rational primes in the field Q(sqrt(-10)).

The programs for A296925, the canonical program `A296925.P9706483772686857562` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296925 has offset 1).

The definition of A296925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296925.P9706483772686857562

`p?[xor(A047415(n+1), A131670(n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A296925

/-- `p?[xor(A047415(n+1), A131670(n))]` -/
def P9706483772686857562.Spec : Prop :=
  ∀ n, P9706483772686857562.a n = A296925 (n + 1)

theorem P9706483772686857562.correct : P9706483772686857562.Spec := by
  intro n
  simp only [A296925, Nat.add_sub_cancel]

end A296925

/-! ## A296925.P5262311029281992112

`p?[A004275(n)-A000034(A008616(n))]`
-/

namespace A296925.P5262311029281992112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n - A000034 (A008616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296925.P5262311029281992112

namespace A296925

/-- `p?[A004275(n)-A000034(A008616(n))]` -/
def P5262311029281992112.Spec : Prop :=
  ∀ n, P5262311029281992112.a n = A296925 (n + 1)

end A296925

/-! ## A296925.P10610043076205342931

`p?[A058992(n+1)-A000034(A008616(n))]`
-/

namespace A296925.P10610043076205342931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 1) - A000034 (A008616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296925.P10610043076205342931

namespace A296925

/-- `p?[A058992(n+1)-A000034(A008616(n))]` -/
def P10610043076205342931.Spec : Prop :=
  ∀ n, P10610043076205342931.a n = A296925 (n + 1)

end A296925

/-! ## A296925.P6115374424890589942

`eq[A260148(n), A388072(n)]`
-/

namespace A296925.P6115374424890589942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388072 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296925.P6115374424890589942

namespace A296925

/-- `eq[A260148(n), A388072(n)]` -/
def P6115374424890589942.Spec : Prop :=
  ∀ n, (P6115374424890589942.a n : ℤ) = A296925 (n + 1)

end A296925

/-! ## A296925.P12983784705410260155

`p?[gcd(A014973(n+1), A035180(n+1))]`
-/

namespace A296925.P12983784705410260155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014973 (n + 1)) (A035180 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A296925.P12983784705410260155

namespace A296925

/-- `p?[gcd(A014973(n+1), A035180(n+1))]` -/
def P12983784705410260155.Spec : Prop :=
  ∀ n, (P12983784705410260155.a n : ℤ) = A296925 (n + 1)

end A296925

/-! ## A296925.P10757831711394976998

`p?[gcd(A100994(n+1), A163819(n+1))]`
-/

namespace A296925.P10757831711394976998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100994 (n + 1)) (A163819 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A296925.P10757831711394976998

namespace A296925

/-- `p?[gcd(A100994(n+1), A163819(n+1))]` -/
def P10757831711394976998.Spec : Prop :=
  ∀ n, (P10757831711394976998.a n : ℤ) = A296925 (n + 1)

end A296925

/-! ## A296925.P12973681834955448877

`p?[n*(A010134(n)-2)*A046978(n)]`
-/

namespace A296925.P12973681834955448877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010134 n - 2) * A046978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296925.P12973681834955448877

namespace A296925

/-- `p?[n*(A010134(n)-2)*A046978(n)]` -/
def P12973681834955448877.Spec : Prop :=
  ∀ n, P12973681834955448877.a n = A296925 (n + 1)

end A296925

/-! ## A296925.P14939176898052029033

`p?[gcd(n+1, A163819(A061006(n+1)+1))]`
-/

namespace A296925.P14939176898052029033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A163819 (A061006 (n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A296925.P14939176898052029033

namespace A296925

/-- `p?[gcd(n+1, A163819(A061006(n+1)+1))]` -/
def P14939176898052029033.Spec : Prop :=
  ∀ n, (P14939176898052029033.a n : ℤ) = A296925 (n + 1)

end A296925

/-! ## A296925.P5401799343267414157

`p?[(n+1)*A145979(A163819(n+1)²)]`
-/

namespace A296925.P5401799343267414157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A145979 (A163819 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296925.P5401799343267414157

namespace A296925

/-- `p?[(n+1)*A145979(A163819(n+1)²)]` -/
def P5401799343267414157.Spec : Prop :=
  ∀ n, P5401799343267414157.a n = A296925 (n + 1)

end A296925

/-! ## A296925.P9202975004118074302

`p?[eq[A317641(2*n), A317641(n)]]`
-/

namespace A296925.P9202975004118074302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A296925.P9202975004118074302

namespace A296925

/-- `p?[eq[A317641(2*n), A317641(n)]]` -/
def P9202975004118074302.Spec : Prop :=
  ∀ n, (P9202975004118074302.a n : ℤ) = A296925 (n + 1)

end A296925

/-!
# A296926: Rational primes that decompose in the field Q(sqrt(-13)).

The programs for A296926, there is no canonical definition to state claims against.
-/

/-! ## A296926.P16407537108893898588

`A296928(floor(atan(∑[n])+n+1))`
-/

namespace A296926.P16407537108893898588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 ⌊Real.arctan ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n + 1 : ℝ)⌋.toNat

end

end A296926.P16407537108893898588

/-! ## A296926.P17344931537441472156

`A296928(floor(3/acot(n))-comp[2*n+3])`
-/

namespace A296926.P17344931537441472156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A296926.P17344931537441472156

/-! ## A296926.P17490369315172898978

`A296928(floor(2*n/(or(1, n+1)+1)+n)+1)`
-/

namespace A296926.P17490369315172898978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (⌊(2 * n : ℚ) / (Nat.lor 1 (n + 1) + 1 : ℚ) + (n : ℚ)⌋ + 1).toNat

end

end A296926.P17490369315172898978

/-! ## A296926.P14534524529420809775

`A296928(floor(2*n/(xor(1, n+1)+1)+n)+1)`
-/

namespace A296926.P14534524529420809775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (⌊(2 * n : ℚ) / (Nat.xor 1 (n + 1) + 1 : ℚ) + (n : ℚ)⌋ + 1).toNat

end

end A296926.P14534524529420809775

/-! ## A296926.P17974042746988992389

`A296928(floor(sqrt(A028884(n))))`
-/

namespace A296926.P17974042746988992389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (Int.sqrt (A028884 n)).toNat

end

end A296926.P17974042746988992389

/-! ## A296926.P14841848805180758940

`A296928(A184985(n+1)+1)`
-/

namespace A296926.P14841848805180758940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (A184985 (n + 1) + 1).toNat

end

end A296926.P14841848805180758940

/-! ## A296926.P10186599724645326360

`p?[A296928(n+1)+char[2]]`
-/

namespace A296926.P10186599724645326360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296926.P10186599724645326360

/-! ## A296926.P14043702999162101333

`A296928(A326178(n+1))`
-/

namespace A296926.P14043702999162101333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (A326178 (n + 1)).toNat

end

end A296926.P14043702999162101333

/-! ## A296926.P15965043882449695714

`record[A296928(A282738(n))]`
-/

namespace A296926.P15965043882449695714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (A282738 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296926.P15965043882449695714

/-! ## A296926.P15220105152379127547

`∩[A197636(n+1), A296928(n+1)]`
-/

namespace A296926.P15220105152379127547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296926.P15220105152379127547

/-! ## A296926.P4886220385548634448

`∩[A216495(n+1), A296928(n+1)]`
-/

namespace A296926.P4886220385548634448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296926.P4886220385548634448

/-! ## A296926.P513040678413144567

`∩[A035245(n+1), A197636(n+1)]`
-/

namespace A296926.P513040678413144567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296926.P513040678413144567

/-! ## A296926.P8418392462838980392

`∩[A035245(n+1), A216495(n+1)]`
-/

namespace A296926.P8418392462838980392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296926.P8418392462838980392

/-! ## A296926.P5843516184634269034

`∩[A296928(n+1), A332572(n+1)]`
-/

namespace A296926.P5843516184634269034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296926.P5843516184634269034

/-! ## A296926.P16410888581173215901

`∩[A296928(n+1), A336370(n+1)]`
-/

namespace A296926.P16410888581173215901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296926.P16410888581173215901

/-! ## A296926.P16554352381234314795

`∩[A204457(n+1), A296928(n+1)]`
-/

namespace A296926.P16554352381234314795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296926.P16554352381234314795

/-! ## A296926.P10792018480964268768

`∩[A296928(n+1), A201471(n+3)]`
-/

namespace A296926.P10792018480964268768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201471 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296926.P10792018480964268768

/-! ## A296926.P628769579107431699

`∩[A229973(n+1), A296928(n+1)]`
-/

namespace A296926.P628769579107431699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296926.P628769579107431699

/-! ## A296926.P18302602232702370685

`∩[A113763(n+1), A296928(n+1)]`
-/

namespace A296926.P18302602232702370685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296926.P18302602232702370685

/-! ## A296926.P7923722448096645579

`∩[A183298(n+1), A296928(n+1)]`
-/

namespace A296926.P7923722448096645579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296926.P7923722448096645579

/-!
# A296927: Inert rational primes in the field Q(sqrt(-13)).

The programs for A296927, the canonical program `A296927.P16389215036078374289` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296927 has offset 1).

The definition of A296927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296927.P7193516721091369180

`p?[a(A035177(n))*A028310(n)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A296927.P7193516721091369180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (A035177 n).toNat * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296927.P7193516721091369180

namespace A296927

/-- `p?[a(A035177(n))*A028310(n)]` -/
def P7193516721091369180.Spec : Prop :=
  ∀ n, P7193516721091369180.a n = A296927 (n + 1)

end A296927

/-! ## A296927.P16389215036078374289

`p?[A009001(n)*A011583(2*n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A296927

/-- `p?[A009001(n)*A011583(2*n)]` -/
def P16389215036078374289.Spec : Prop :=
  ∀ n, P16389215036078374289.a n = A296927 (n + 1)

theorem P16389215036078374289.correct : P16389215036078374289.Spec := by
  intro n
  simp only [A296927, Nat.add_sub_cancel]

end A296927

/-! ## A296927.P8441945731731735430

`A105885(A087051(n)+2)`
-/

namespace A296927.P8441945731731735430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105885 (A087051 n + 2).toNat

end

end A296927.P8441945731731735430

namespace A296927

/-- `A105885(A087051(n)+2)` -/
def P8441945731731735430.Spec : Prop :=
  ∀ n, P8441945731731735430.a n = A296927 (n + 1)

end A296927

/-! ## A296927.P6002949782276021879

`A118759(A105885(n+2))`
-/

namespace A296927.P6002949782276021879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A105885 (n + 2)).toNat

end

end A296927.P6002949782276021879

namespace A296927

/-- `A118759(A105885(n+2))` -/
def P6002949782276021879.Spec : Prop :=
  ∀ n, P6002949782276021879.a n = A296927 (n + 1)

end A296927

/-! ## A296927.P2349922930822041987

`A122197(A105885(n+2)²)`
-/

namespace A296927.P2349922930822041987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (A105885 (n + 2) ^ 2).toNat

end

end A296927.P2349922930822041987

namespace A296927

/-- `A122197(A105885(n+2)²)` -/
def P2349922930822041987.Spec : Prop :=
  ∀ n, P2349922930822041987.a n = A296927 (n + 1)

end A296927

/-!
# A296928: Primes p such that Legendre(-13,p) = 0 or 1.

The programs for A296928, there is no canonical definition to state claims against.
-/

/-! ## A296928.P17462255827288109230

`∪[A107159(n+1), A296926(n+1)]`
-/

namespace A296928.P17462255827288109230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296928.P17462255827288109230

/-! ## A296928.P4435140563951504785

`p?[A035245(n+1)]`
-/

namespace A296928.P4435140563951504785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296928.P4435140563951504785

/-! ## A296928.P9001008612630155618

`p?[record[A035245(A324347(n))]]`
-/

namespace A296928.P9001008612630155618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296928.P9001008612630155618

/-! ## A296928.P2883176487058917391

`p?[record[A035245(A349315(n))]]`
-/

namespace A296928.P2883176487058917391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296928.P2883176487058917391

/-! ## A296928.P15076965947598111912

`record[A006530(A035245(n+3))]`
-/

namespace A296928.P15076965947598111912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035245 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296928.P15076965947598111912

/-! ## A296928.P3694394583445985085

`filter[A035245(n+1), A010051(#)]`
-/

namespace A296928.P3694394583445985085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A296928.P3694394583445985085

/-! ## A296928.P269795835975486208

`filter[A035245(n+2), A380467(#)]`
-/

namespace A296928.P269795835975486208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A296928.P269795835975486208

/-! ## A296928.P814206766206957983

`∩[A000040(n+1), A035245(n+1)]`
-/

namespace A296928.P814206766206957983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296928.P814206766206957983

/-! ## A296928.P17899143577722913005

`∩[A004139(n+1), A035245(n+1)]`
-/

namespace A296928.P17899143577722913005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296928.P17899143577722913005

/-! ## A296928.P15343749468168923523

`∩[A035245(n+1), A045319(n+1)]`
-/

namespace A296928.P15343749468168923523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296928.P15343749468168923523

/-! ## A296928.P3253228745609731810

`∩[A035245(n+1), A045344(n+1)]`
-/

namespace A296928.P3253228745609731810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296928.P3253228745609731810

/-! ## A296928.P4580272552741429982

`∩[A035245(n+1), A065091(n+1)]`
-/

namespace A296928.P4580272552741429982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296928.P4580272552741429982

/-! ## A296928.P6577261708448441316

`∩[A035245(n+1), A085118(n+1)]`
-/

namespace A296928.P6577261708448441316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296928.P6577261708448441316

/-! ## A296928.P7663593266315817141

`∩[A035245(n+1), A116974(n+1)]`
-/

namespace A296928.P7663593266315817141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296928.P7663593266315817141

/-! ## A296928.P15735009528437516742

`∩[A035245(n+1), A182986(n+1)]`
-/

namespace A296928.P15735009528437516742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296928.P15735009528437516742

/-! ## A296928.P3351078317087255921

`∩[A035245(n+1), A215848(n+1)]`
-/

namespace A296928.P3351078317087255921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296928.P3351078317087255921

/-! ## A296928.P14016840934582185805

`p?[record[A035245(A133310(n))]]`
-/

namespace A296928.P14016840934582185805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296928.P14016840934582185805

/-! ## A296928.P9568638810684331801

`filter[A035245(n+1), A171387(#)]`
-/

namespace A296928.P9568638810684331801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A296928.P9568638810684331801

/-! ## A296928.P7159335105672151802

`filter[A035245(n+2), A080339(#)]`
-/

namespace A296928.P7159335105672151802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A296928.P7159335105672151802

/-! ## A296928.P12462830252718334546

`filter[A035245(n+2), A080545(#)]`
-/

namespace A296928.P12462830252718334546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035245 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A296928.P12462830252718334546

/-!
# A296929: Rational primes that decompose in the field Q(sqrt(-17)).

The programs for A296929, there is no canonical definition to state claims against.
-/

/-! ## A296929.P15943018384879820318

`A296931(round(sqrt(A028878(n))))`
-/

namespace A296929.P15943018384879820318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296931 (SequenceMachineLib.roundAway (Real.sqrt (A028878 n : ℝ))).toNat

end

end A296929.P15943018384879820318

/-! ## A296929.P767060996180973992

`∩[A204458(n+1), A296931(n+1)]`
-/

namespace A296929.P767060996180973992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296929.P767060996180973992

/-! ## A296929.P1901103742547543227

`record[A106618(A296931(n+2))]`
-/

namespace A296929.P1901103742547543227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A296931 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296929.P1901103742547543227

/-! ## A296929.P120437999916492819

`p?[A106618(p?[A296931(n+2)])]`
-/

namespace A296929.P120437999916492819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296931 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296929.P120437999916492819

/-! ## A296929.P752675011155829311

`p?[A004442(eq[2, A035173(n+1)])]`
-/

namespace A296929.P752675011155829311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035173 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296929.P752675011155829311

/-! ## A296929.P10138102521803583310

`p?[(A035173(n+1)-1)*A004442(n)]`
-/

namespace A296929.P10138102521803583310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035173 (n + 1) - 1) * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296929.P10138102521803583310

/-! ## A296929.P7188120327199633567

`p?[(A035173(n+1)-1)*A131738(n)]`
-/

namespace A296929.P7188120327199633567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035173 (n + 1) - 1) * A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296929.P7188120327199633567

/-! ## A296929.P440796131417138177

`p?[A057427(n)+eq[2, A035173(n+1)]]`
-/

namespace A296929.P440796131417138177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035173 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296929.P440796131417138177

/-! ## A296929.P2140981782160818097

`A004442(eq[2, A325966(n+1)+A035173(n+1)])`
-/

namespace A296929.P2140981782160818097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325966 (n + 1) + A035173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296929.P2140981782160818097

/-!
# A296930: Inert rational primes in the field Q(sqrt(-17)).

The programs for A296930, there is no canonical definition to state claims against.
-/

/-! ## A296930.P8737995028356863063

`p?[(1-A035173(n+1))*(n+1)]`
-/

namespace A296930.P8737995028356863063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035173 (n + 1)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296930.P8737995028356863063

/-! ## A296930.P6375015495028787047

`p?[(A035173(n+1)+1)*A131738(n)]`
-/

namespace A296930.P6375015495028787047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035173 (n + 1) + 1) * A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296930.P6375015495028787047

/-! ## A296930.P17547821555146783113

`eq[A016035(n+1), A035173(n+1)]+1`
-/

namespace A296930.P17547821555146783113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296930.P17547821555146783113

/-! ## A296930.P10685348984654277469

`eq[A035173(n+1), A325966(n+1)]+1`
-/

namespace A296930.P10685348984654277469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296930.P10685348984654277469

/-! ## A296930.P6243048632660862416

`p?[A131738(n)+A030101(A035173(n+1))]`
-/

namespace A296930.P6243048632660862416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n + A030101 (A035173 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296930.P6243048632660862416

/-! ## A296930.P8468902118517721312

`p?[A004442(A035173(n+1))*A004442(n)]`
-/

namespace A296930.P8468902118517721312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A035173 (n + 1)).toNat * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296930.P8468902118517721312

/-! ## A296930.P8222853481525013924

`A020725(eq[A016035(n+1), A035173(n+1)])`
-/

namespace A296930.P8222853481525013924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A296930.P8222853481525013924

/-! ## A296930.P17926590441814969890

`A004442(eq[A035173(n+1), A325966(n+1)])`
-/

namespace A296930.P17926590441814969890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A296930.P17926590441814969890

/-!
# A296931: Primes p such that Legendre(-17,p) = 0 or 1.

The programs for A296931, there is no canonical definition to state claims against.
-/

/-! ## A296931.P394324229675853142

`p?[(n+1)*A030101(A035173(n+1))]`
-/

namespace A296931.P394324229675853142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A030101 (A035173 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296931.P394324229675853142

/-! ## A296931.P8389933017726062041

`p?[A000027(n+1)*A000045(A035173(n+1))]`
-/

namespace A296931.P8389933017726062041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A000045 (A035173 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296931.P8389933017726062041

/-! ## A296931.P15440274858001856254

`p?[A000045(A035173(n+1))*A008619(2*n)]`
-/

namespace A296931.P15440274858001856254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A035173 (n + 1)).toNat * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296931.P15440274858001856254

/-! ## A296931.P8024135494681109628

`p?[A000045(A035173(n+1))*A028242(2*n)]`
-/

namespace A296931.P8024135494681109628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A035173 (n + 1)).toNat * A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296931.P8024135494681109628

/-!
# A296932: Primes p such that Legendre(-23,p) = 0 or 1.

The programs for A296932, there is no canonical definition to state claims against.
-/

/-! ## A296932.P1973379941771495361

`∪[A033217(n+1), A106867(n+1)]`
-/

namespace A296932.P1973379941771495361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296932.P1973379941771495361

/-! ## A296932.P10032361602811390234

`∪[A033217(n+1), A191021(n+1)]`
-/

namespace A296932.P10032361602811390234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296932.P10032361602811390234

/-! ## A296932.P7876240982620298608

`∪[A087527(n+1), A191021(n+1)]`
-/

namespace A296932.P7876240982620298608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296932.P7876240982620298608

/-! ## A296932.P6996378418382579674

`∪[A107177(n+1), A191021(n+1)]`
-/

namespace A296932.P6996378418382579674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296932.P6996378418382579674

/-! ## A296932.P2491422679706456688

`p?[A035240(n+1)]`
-/

namespace A296932.P2491422679706456688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296932.P2491422679706456688

/-! ## A296932.P4519253898174144028

`record[A006530(A035240(n+2))]`
-/

namespace A296932.P4519253898174144028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035240 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296932.P4519253898174144028

/-! ## A296932.P16648482745619237494

`filter[A035240(n+1), A010051(#)]`
-/

namespace A296932.P16648482745619237494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A296932.P16648482745619237494

/-! ## A296932.P7236749435805894255

`∩[A000040(n+1), A035240(n+1)]`
-/

namespace A296932.P7236749435805894255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296932.P7236749435805894255

/-! ## A296932.P10534477953726568377

`∩[A035240(n+1), A045319(n+1)]`
-/

namespace A296932.P10534477953726568377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296932.P10534477953726568377

/-! ## A296932.P1752388182218861915

`∩[A035240(n+1), A182986(n+1)]`
-/

namespace A296932.P1752388182218861915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296932.P1752388182218861915

/-! ## A296932.P18135609517434507655

`p?[comp[A278579(n+1)]]`
-/

namespace A296932.P18135609517434507655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A296932.P18135609517434507655

/-! ## A296932.P8122174790692288713

`filter[A035240(n+2), A080339(#)]`
-/

namespace A296932.P8122174790692288713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A296932.P8122174790692288713

/-! ## A296932.P16292371499285386151

`p?[lt[1, A028930(2*n)]]`
-/

namespace A296932.P16292371499285386151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A296932.P16292371499285386151

/-! ## A296932.P9152834678017430038

`p?[n*A284203(A028930(2*n)+1)]`
-/

namespace A296932.P9152834678017430038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284203 (A028930 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296932.P9152834678017430038

/-! ## A296932.P12975219677287631463

`p?[A181762(n*A057427(A028930(n)))]`
-/

namespace A296932.P12975219677287631463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181762 ((n : ℤ) * A057427 (A028930 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296932.P12975219677287631463

/-! ## A296932.P16757117302613822131

`eq[A032741(n), A057427(A028930(2*n))]`
-/

namespace A296932.P16757117302613822131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A028930 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296932.P16757117302613822131

/-! ## A296932.P13810543798939162672

`eq[n*A000120(A028930(2*n)), A007918(n)]`
-/

namespace A296932.P13810543798939162672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 (A028930 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296932.P13810543798939162672

/-! ## A296932.P12424937924933051873

`∩[A035240(n+1), A240960(n+1)]`
-/

namespace A296932.P12424937924933051873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296932.P12424937924933051873

/-! ## A296932.P15188204076848425501

`p?[(n+1)%(A028930(A008574(n+1))+n)]`
-/

namespace A296932.P15188204076848425501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A028930 (A008574 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296932.P15188204076848425501

/-!
# A296933: Primes p such that Legendre(3,p) = 0 or 1.

The programs for A296933, the canonical program `A296933.P2665369001161112257` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296933 has offset 1).

The definition of A296933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296933.P2665369001161112257

`or(1, p?[xor(2, 3*n)])`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A296933

/-- `or(1, p?[xor(2, 3*n)])` -/
def P2665369001161112257.Spec : Prop :=
  ∀ n, (P2665369001161112257.a n : ℤ) = A296933 (n + 1)

theorem P2665369001161112257.correct : P2665369001161112257.Spec := by
  intro n
  simp only [A296933, Nat.add_sub_cancel]

end A296933

/-! ## A296933.P15503766775330861224

`p?[floor(12*n/5)-1]`
-/

namespace A296933.P15503766775330861224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊12 * ((n : ℚ) / 5)⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296933.P15503766775330861224

namespace A296933

/-- `p?[floor(12*n/5)-1]` -/
def P15503766775330861224.Spec : Prop :=
  ∀ n, P15503766775330861224.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P4919310430362663638

`∪[A097933(n+1), A094319(n)]`
-/

namespace A296933.P4919310430362663638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094319 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296933.P4919310430362663638

namespace A296933

/-- `∪[A097933(n+1), A094319(n)]` -/
def P4919310430362663638.Spec : Prop :=
  ∀ n, (P4919310430362663638.a n : ℤ) = A296933 (n + 1)

end A296933

/-! ## A296933.P18189034596247741172

`A038874(n+2)`
-/

namespace A296933.P18189034596247741172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 2)

end

end A296933.P18189034596247741172

namespace A296933

/-- `A038874(n+2)` -/
def P18189034596247741172.Spec : Prop :=
  ∀ n, P18189034596247741172.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P2980574689076113043

`filter[A391369(n+1), A324903(#)]`
-/

namespace A296933.P2980574689076113043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A296933.P2980574689076113043

namespace A296933

/-- `filter[A391369(n+1), A324903(#)]` -/
def P2980574689076113043.Spec : Prop :=
  ∀ n, P2980574689076113043.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P16440959258015531305

`filter[A391369(n+1), A358770(#)]`
-/

namespace A296933.P16440959258015531305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A296933.P16440959258015531305

namespace A296933

/-- `filter[A391369(n+1), A358770(#)]` -/
def P16440959258015531305.Spec : Prop :=
  ∀ n, P16440959258015531305.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P16700558082649987966

`filter[A391369(n+1), A359590(#)]`
-/

namespace A296933.P16700558082649987966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A296933.P16700558082649987966

namespace A296933

/-- `filter[A391369(n+1), A359590(#)]` -/
def P16700558082649987966.Spec : Prop :=
  ∀ n, P16700558082649987966.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P6815044314674979675

`filter[A391369(n+1), A359592(#)]`
-/

namespace A296933.P6815044314674979675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A296933.P6815044314674979675

namespace A296933

/-- `filter[A391369(n+1), A359592(#)]` -/
def P6815044314674979675.Spec : Prop :=
  ∀ n, P6815044314674979675.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P16231438022651297564

`filter[A391369(n+1), A373141(#)]`
-/

namespace A296933.P16231438022651297564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A296933.P16231438022651297564

namespace A296933

/-- `filter[A391369(n+1), A373141(#)]` -/
def P16231438022651297564.Spec : Prop :=
  ∀ n, P16231438022651297564.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P7250610762091070768

`filter[A391369(n+1), A379969(#)]`
-/

namespace A296933.P7250610762091070768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A296933.P7250610762091070768

namespace A296933

/-- `filter[A391369(n+1), A379969(#)]` -/
def P7250610762091070768.Spec : Prop :=
  ∀ n, P7250610762091070768.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P16348346821097332143

`filter[A391369(n+2), A008966(#)]`
-/

namespace A296933.P16348346821097332143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A296933.P16348346821097332143

namespace A296933

/-- `filter[A391369(n+2), A008966(#)]` -/
def P16348346821097332143.Spec : Prop :=
  ∀ n, P16348346821097332143.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P12986070897809659986

`filter[A391369(n+2), A010051(#)]`
-/

namespace A296933.P12986070897809659986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A296933.P12986070897809659986

namespace A296933

/-- `filter[A391369(n+2), A010051(#)]` -/
def P12986070897809659986.Spec : Prop :=
  ∀ n, P12986070897809659986.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P9213397001281994477

`filter[A391369(n+2), A066829(#)]`
-/

namespace A296933.P9213397001281994477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A296933.P9213397001281994477

namespace A296933

/-- `filter[A391369(n+2), A066829(#)]` -/
def P9213397001281994477.Spec : Prop :=
  ∀ n, P9213397001281994477.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P11666946924196855111

`filter[A391369(n+1), A257531(#)]`
-/

namespace A296933.P11666946924196855111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A296933.P11666946924196855111

namespace A296933

/-- `filter[A391369(n+1), A257531(#)]` -/
def P11666946924196855111.Spec : Prop :=
  ∀ n, P11666946924196855111.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P11032702236558432960

`filter[A391369(n+1), A262684(#)]`
-/

namespace A296933.P11032702236558432960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A296933.P11032702236558432960

namespace A296933

/-- `filter[A391369(n+1), A262684(#)]` -/
def P11032702236558432960.Spec : Prop :=
  ∀ n, P11032702236558432960.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P2160812006771717161

`filter[A391369(n+1), A323158(#)]`
-/

namespace A296933.P2160812006771717161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A296933.P2160812006771717161

namespace A296933

/-- `filter[A391369(n+1), A323158(#)]` -/
def P2160812006771717161.Spec : Prop :=
  ∀ n, P2160812006771717161.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P14595708065399631413

`filter[A391369(n+1), A323239(#)]`
-/

namespace A296933.P14595708065399631413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A296933.P14595708065399631413

namespace A296933

/-- `filter[A391369(n+1), A323239(#)]` -/
def P14595708065399631413.Spec : Prop :=
  ∀ n, P14595708065399631413.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P8139819083444008812

`filter[A391369(n+1), A324908(#)]`
-/

namespace A296933.P8139819083444008812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A296933.P8139819083444008812

namespace A296933

/-- `filter[A391369(n+1), A324908(#)]` -/
def P8139819083444008812.Spec : Prop :=
  ∀ n, P8139819083444008812.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P12614508776102442862

`filter[A391369(n+1), A348327(#)]`
-/

namespace A296933.P12614508776102442862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A296933.P12614508776102442862

namespace A296933

/-- `filter[A391369(n+1), A348327(#)]` -/
def P12614508776102442862.Spec : Prop :=
  ∀ n, P12614508776102442862.a n = A296933 (n + 1)

end A296933

/-! ## A296933.P13695237451524910865

`filter[A391369(n+1), A353558(#)]`
-/

namespace A296933.P13695237451524910865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A296933.P13695237451524910865

namespace A296933

/-- `filter[A391369(n+1), A353558(#)]` -/
def P13695237451524910865.Spec : Prop :=
  ∀ n, P13695237451524910865.a n = A296933 (n + 1)

end A296933

/-!
# A296934: Rational primes that decompose in the field Q(sqrt(7)).

The programs for A296934, there is no canonical definition to state claims against.
-/

/-! ## A296934.P6309019759500375633

`A038878(n+3-C(2, n+2))`
-/

namespace A296934.P6309019759500375633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 3 - Nat.choose 2 (n + 2))

end

end A296934.P6309019759500375633

/-! ## A296934.P548823015672634589

`p?[C(2, C(2, n))*A038878(n+1)]`
-/

namespace A296934.P548823015672634589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (Nat.choose 2 n) : ℤ) * A038878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296934.P548823015672634589

/-! ## A296934.P3539173837473167987

`∩[A038878(n+1), A065396(n+1)]`
-/

namespace A296934.P3539173837473167987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296934.P3539173837473167987

/-! ## A296934.P1415489830301301679

`∩[A065396(n+1), A262932(n+1)]`
-/

namespace A296934.P1415489830301301679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296934.P1415489830301301679

/-! ## A296934.P10205661579828338392

`∩[A038878(n+1), A133621(n+1)]`
-/

namespace A296934.P10205661579828338392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296934.P10205661579828338392

/-! ## A296934.P11215655950867954339

`∩[A038878(n+1), A235583(n+1)]`
-/

namespace A296934.P11215655950867954339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296934.P11215655950867954339

/-! ## A296934.P12384333323888907255

`p?[A047481(n+1)+A008620(n)]`
-/

namespace A296934.P12384333323888907255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047481 (n + 1) + A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296934.P12384333323888907255

/-! ## A296934.P9503076212520688152

`∩[A038878(n+1), A162699(n+1)]`
-/

namespace A296934.P9503076212520688152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296934.P9503076212520688152

/-! ## A296934.P1990198122183162768

`p?[A074230(n+3)]`
-/

namespace A296934.P1990198122183162768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074230 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296934.P1990198122183162768

/-! ## A296934.P3379071670438505025

`record[A006530(A074230(n+5))]`
-/

namespace A296934.P3379071670438505025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074230 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296934.P3379071670438505025

/-! ## A296934.P8332399011446256090

`filter[A074230(n+3), A010051(#)]`
-/

namespace A296934.P8332399011446256090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074230 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A296934.P8332399011446256090

/-! ## A296934.P4085766130160999952

`∩[A004139(n+1), A074230(n+1)]`
-/

namespace A296934.P4085766130160999952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296934.P4085766130160999952

/-! ## A296934.P8444758110920958280

`∩[A065091(n+1), A074230(n+1)]`
-/

namespace A296934.P8444758110920958280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296934.P8444758110920958280

/-! ## A296934.P2569965679731753225

`∩[A065396(n+1), A074230(n+1)]`
-/

namespace A296934.P2569965679731753225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296934.P2569965679731753225

/-! ## A296934.P6885379926443686648

`∩[A038878(n+1), A299231(n+1)]`
-/

namespace A296934.P6885379926443686648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296934.P6885379926443686648

/-! ## A296934.P18199643947863532928

`∩[A038878(n+1), A073258(n+1)]`
-/

namespace A296934.P18199643947863532928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296934.P18199643947863532928

/-! ## A296934.P6881045294540282950

`∩[A038878(n+1), A326310(n+1)]`
-/

namespace A296934.P6881045294540282950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296934.P6881045294540282950

/-! ## A296934.P14874262308335323869

`∩[A038878(n+1), A335155(n+1)]`
-/

namespace A296934.P14874262308335323869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296934.P14874262308335323869

/-! ## A296934.P13466465204419807216

`∩[A038878(n+1), A036558(n)]`
-/

namespace A296934.P13466465204419807216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036558 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296934.P13466465204419807216

/-! ## A296934.P7765346026623362153

`∩[A038878(n+1), A183294(n+1)]`
-/

namespace A296934.P7765346026623362153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296934.P7765346026623362153

/-!
# A296935: Rational primes that decompose in the field Q(sqrt(11)).

The programs for A296935, there is no canonical definition to state claims against.
-/

/-! ## A296935.P9343684596686286685

`A038881(floor(atan(n)+n)+1)`
-/

namespace A296935.P9343684596686286685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (⌊Real.arctan (n : ℝ) + (n : ℝ)⌋ + 1).toNat

end

end A296935.P9343684596686286685

/-! ## A296935.P1023939000018684843

`A038881(n+2-C(n, n²))`
-/

namespace A296935.P1023939000018684843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 2 - Nat.choose n (n ^ 2))

end

end A296935.P1023939000018684843

/-! ## A296935.P2913448665135027019

`A038881(A326178(n+1))`
-/

namespace A296935.P2913448665135027019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (A326178 (n + 1)).toNat

end

end A296935.P2913448665135027019

/-! ## A296935.P6325678643287835091

`A038881(floor(sqrt(A028884(n))))`
-/

namespace A296935.P6325678643287835091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (Int.sqrt (A028884 n)).toNat

end

end A296935.P6325678643287835091

/-! ## A296935.P3756403012352490509

`A038881(A157928(n)+1+n)`
-/

namespace A296935.P3756403012352490509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (A157928 n + 1 + (n : ℤ)).toNat

end

end A296935.P3756403012352490509

/-! ## A296935.P2101563420586636463

`p?[A038881(n+1)-A166926(n)]`
-/

namespace A296935.P2101563420586636463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1) - A166926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296935.P2101563420586636463

/-! ## A296935.P4008861941260479915

`A038881(n+2)-A166926(n+1)`
-/

namespace A296935.P4008861941260479915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 2) - A166926 (n + 1)

end

end A296935.P4008861941260479915

/-! ## A296935.P14219052648871390097

`∩[A038881(n+1), A108719(n+1)]`
-/

namespace A296935.P14219052648871390097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296935.P14219052648871390097

/-! ## A296935.P6618721430507285833

`∩[A035255(n+1), A108719(n+1)]`
-/

namespace A296935.P6618721430507285833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296935.P6618721430507285833

/-! ## A296935.P10291254172582617554

`∩[A038881(n+1), A236204(n+1)]`
-/

namespace A296935.P10291254172582617554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296935.P10291254172582617554

/-! ## A296935.P15923201193358844938

`∩[A038881(n+1), A204454(n+1)]`
-/

namespace A296935.P15923201193358844938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296935.P15923201193358844938

/-! ## A296935.P11636107190548952390

`∩[A038881(n+1), A229968(n+1)]`
-/

namespace A296935.P11636107190548952390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296935.P11636107190548952390

/-! ## A296935.P7240048112075808680

`∩[A038881(n+1), A192817(n+1)]`
-/

namespace A296935.P7240048112075808680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296935.P7240048112075808680

/-! ## A296935.P6060188190381912840

`∩[A038881(n+1), A075493(n+1)]`
-/

namespace A296935.P6060188190381912840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296935.P6060188190381912840

/-! ## A296935.P9699163418981975019

`∩[A038881(n+1), A160542(n+1)]`
-/

namespace A296935.P9699163418981975019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296935.P9699163418981975019

/-! ## A296935.P798291702874114963

`∩[A038881(n+1), A390504(n+1)]`
-/

namespace A296935.P798291702874114963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296935.P798291702874114963

/-! ## A296935.P15675357075104946766

`∩[A038881(n+1), A183295(n+1)]`
-/

namespace A296935.P15675357075104946766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296935.P15675357075104946766

/-! ## A296935.P11894329680222769403

`∩[A038881(n+1), A183223(n+1)]`
-/

namespace A296935.P11894329680222769403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296935.P11894329680222769403

/-! ## A296935.P1046168396878401956

`∩[A038881(n+1), A183297(n+1)]`
-/

namespace A296935.P1046168396878401956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296935.P1046168396878401956

/-!
# A296936: Inert rational primes in the field Q(sqrt(11)).

The programs for A296936, there is no canonical definition to state claims against.
-/

/-! ## A296936.P3791966488029150754

`A038882(n+2)`
-/

namespace A296936.P3791966488029150754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 2)

end

end A296936.P3791966488029150754

/-! ## A296936.P17279416478286400352

`record[A038882(A001281(A004277(n)))]`
-/

namespace A296936.P17279416478286400352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296936.P17279416478286400352

/-! ## A296936.P11562268435938594603

`p?[A000265(A038882(A028310(n)))]`
-/

namespace A296936.P11562268435938594603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A038882 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296936.P11562268435938594603

/-! ## A296936.P15217206165039185950

`p?[(1-A035193(n+1))*A004442(n)]`
-/

namespace A296936.P15217206165039185950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035193 (n + 1)) * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296936.P15217206165039185950

/-! ## A296936.P9630167618122519333

`p?[2*n+1-A106617(A035193(2*n+1))]`
-/

namespace A296936.P9630167618122519333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A106617 (A035193 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296936.P9630167618122519333

/-! ## A296936.P3522660883610681407

`p?[A004442(A035193(n+1))*A004442(n)]`
-/

namespace A296936.P3522660883610681407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A035193 (n + 1)).toNat * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296936.P3522660883610681407

/-! ## A296936.P16843187582103304167

`record[A038882(A000267(A004442(n)))]`
-/

namespace A296936.P16843187582103304167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (A000267 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296936.P16843187582103304167

/-!
# A296937: Rational primes that decompose in the field Q(sqrt(13)).

The programs for A296937, there is no canonical definition to state claims against.
-/

/-! ## A296937.P8358632190947830986

`A038883((n+2)^(n²%(n+1)))`
-/

namespace A296937.P8358632190947830986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 ((n + 2) ^ (n ^ 2 % (n + 1)))

end

end A296937.P8358632190947830986

/-! ## A296937.P7066169427904675728

`A038883(A065475(n+1))`
-/

namespace A296937.P7066169427904675728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (A065475 (n + 1)).toNat

end

end A296937.P7066169427904675728

/-! ## A296937.P14009311225928901353

`A038883(A181440(n+2))`
-/

namespace A296937.P14009311225928901353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (A181440 (n + 2)).toNat

end

end A296937.P14009311225928901353

/-! ## A296937.P7341816024174827068

`A038883(A184985(n+2))`
-/

namespace A296937.P7341816024174827068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (A184985 (n + 2)).toNat

end

end A296937.P7341816024174827068

/-! ## A296937.P2119032870464383262

`A038883(ceil(sqrt(A028387(n))))`
-/

namespace A296937.P2119032870464383262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 ⌈Real.sqrt (A028387 n : ℝ)⌉.toNat

end

end A296937.P2119032870464383262

/-! ## A296937.P5488271448523911079

`A038883(2-A000007(n)+n)`
-/

namespace A296937.P5488271448523911079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (2 - A000007 n + (n : ℤ)).toNat

end

end A296937.P5488271448523911079

/-! ## A296937.P12705413940942105899

`A038883(2-(A000007(n)-n))`
-/

namespace A296937.P12705413940942105899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (2 - (A000007 n - (n : ℤ))).toNat

end

end A296937.P12705413940942105899

/-! ## A296937.P14721306708493164368

`record[A038883(n+1)%A007521(n+1)]`
-/

namespace A296937.P14721306708493164368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038883 (n + 1)) (A007521 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296937.P14721306708493164368

/-! ## A296937.P3172541577627630860

`p?[A000034(C(2, n+1))*A038883(n+1)]`
-/

namespace A296937.P3172541577627630860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Nat.choose 2 (n + 1)) * A038883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296937.P3172541577627630860

/-! ## A296937.P16715412560003037782

`p?[A270997(n+1)]`
-/

namespace A296937.P16715412560003037782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296937.P16715412560003037782

/-! ## A296937.P10210154378693524673

`∩[A038883(n+1), A270997(n+1)]`
-/

namespace A296937.P10210154378693524673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296937.P10210154378693524673

/-! ## A296937.P6293034964336823314

`A038883(ceil(ratio[A000041(n)]+n))`
-/

namespace A296937.P6293034964336823314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)⌉.toNat

end

end A296937.P6293034964336823314

/-! ## A296937.P12850692698250769181

`A038883(A052938(A004273(n)))`
-/

namespace A296937.P12850692698250769181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (A052938 (A004273 n).toNat).toNat

end

end A296937.P12850692698250769181

/-! ## A296937.P15655450374235172061

`∩[A000040(n+1), A270997(n+1)]`
-/

namespace A296937.P15655450374235172061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296937.P15655450374235172061

/-! ## A296937.P8223425369215222836

`∩[A004139(n+1), A270997(n+1)]`
-/

namespace A296937.P8223425369215222836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296937.P8223425369215222836

/-! ## A296937.P14215264890931141584

`∩[A045319(n+1), A270997(n+1)]`
-/

namespace A296937.P14215264890931141584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296937.P14215264890931141584

/-! ## A296937.P18400208180598680852

`∩[A065091(n+1), A270997(n+1)]`
-/

namespace A296937.P18400208180598680852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296937.P18400208180598680852

/-! ## A296937.P10775152350658975220

`∩[A051948(n+1), A270997(n+1)]`
-/

namespace A296937.P10775152350658975220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296937.P10775152350658975220

/-! ## A296937.P15535622034393532567

`∩[A161346(n+1), A270997(n+1)]`
-/

namespace A296937.P15535622034393532567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296937.P15535622034393532567

/-!
# A296938: Rational primes that decompose in the field Q(sqrt(17)).

The programs for A296938, there is no canonical definition to state claims against.
-/

/-! ## A296938.P15309593823776022048

`A038889(A326178(n+1))`
-/

namespace A296938.P15309593823776022048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (A326178 (n + 1)).toNat

end

end A296938.P15309593823776022048

/-! ## A296938.P5910239809748499923

`A038889(floor(sqrt(A028884(n))))`
-/

namespace A296938.P5910239809748499923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (Int.sqrt (A028884 n)).toNat

end

end A296938.P5910239809748499923

/-! ## A296938.P6215569555647549796

`A038889(A157928(n)+1+n)`
-/

namespace A296938.P6215569555647549796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (A157928 n + 1 + (n : ℤ)).toNat

end

end A296938.P6215569555647549796

/-! ## A296938.P5856954188523376251

`p?[n*(n²%17)%3]`
-/

namespace A296938.P5856954188523376251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 % 17 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A296938.P5856954188523376251

/-! ## A296938.P1135390053857578373

`A038889(A008624(A273315(n)/2))`
-/

namespace A296938.P1135390053857578373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (A008624 (SequenceMachineLib.roundAway ((A273315 n : ℚ) / 2)).toNat).toNat

end

end A296938.P1135390053857578373

/-! ## A296938.P1554854362565819283

`∩[A038889(n+1), A160543(n+1)]`
-/

namespace A296938.P1554854362565819283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296938.P1554854362565819283

/-! ## A296938.P10793890040279586663

`p?[n*A040225(n)]`
-/

namespace A296938.P10793890040279586663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296938.P10793890040279586663

/-! ## A296938.P14249578143869919665

`eq[A018783(n), A040225(n)]`
-/

namespace A296938.P14249578143869919665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296938.P14249578143869919665

/-! ## A296938.P129002620541602821

`eq[A011584(n), A072721(n)]`
-/

namespace A296938.P129002620541602821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296938.P129002620541602821

/-! ## A296938.P4146093142595937553

`eq[A040225(n), A105700(n)]`
-/

namespace A296938.P4146093142595937553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296938.P4146093142595937553

/-! ## A296938.P8045728769585998747

`eq[A011584(n), A210442(n)]`
-/

namespace A296938.P8045728769585998747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296938.P8045728769585998747

/-! ## A296938.P16825741577339449027

`eq[A011584(n), A211110(n)]`
-/

namespace A296938.P16825741577339449027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296938.P16825741577339449027

/-! ## A296938.P3935174251206515890

`eq[A040225(n), A210442(n)]`
-/

namespace A296938.P3935174251206515890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296938.P3935174251206515890

/-! ## A296938.P15963041551086879035

`eq[A011584(n), A284289(n)]`
-/

namespace A296938.P15963041551086879035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296938.P15963041551086879035

/-! ## A296938.P3669654868813699034

`eq[A011584(n), A322968(n)]`
-/

namespace A296938.P3669654868813699034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296938.P3669654868813699034

/-! ## A296938.P8674049999984214535

`eq[A011584(n), A053989(n+1)]`
-/

namespace A296938.P8674049999984214535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296938.P8674049999984214535

/-! ## A296938.P5131769274574288345

`eq[A011584(n), A231820(n+1)]`
-/

namespace A296938.P5131769274574288345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296938.P5131769274574288345

/-! ## A296938.P11366036505065423600

`∩[A038889(n+1), A377306(n+1)]`
-/

namespace A296938.P11366036505065423600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296938.P11366036505065423600

/-! ## A296938.P6931336735918323417

`eq[A035199(n+2), A046523(n+2)]+2`
-/

namespace A296938.P6931336735918323417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A296938.P6931336735918323417

/-! ## A296938.P337301837880743642

`p?[(A035199(n+1)-1)*A000026(n+1)]`
-/

namespace A296938.P337301837880743642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035199 (n + 1) - 1) * A000026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296938.P337301837880743642

/-!
# A296939: Expansion of e.g.f. sec(x*tan(x/2)) (even powers only).

The programs for A296939, there is no canonical definition to state claims against.
-/

/-! ## A296939.P5635769807851515531

`A260841(a(n-1))` with `a(0)=1, a(1)=0, a(2)=3, a(3)=15`
-/

namespace A296939.P5635769807851515531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 15] fun n a =>
  A260841 (a (n - 1)).toNat

end

end A296939.P5635769807851515531

/-!
# A296940: Expansion of e.g.f. sech(x*tan(x/2)) (even powers only).

The programs for A296940, there is no canonical definition to state claims against.
-/

/-! ## A296940.P10312708820741191598

`A134243(A007716(n))-A064929(n)`
-/

namespace A296940.P10312708820741191598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134243 (A007716 n).toNat - A064929 n

end

end A296940.P10312708820741191598

/-!
# A296943: Number of bisymmetric and quasitrivial operations on an arbitrary n-element set.

The programs for A296943, there is no canonical definition to state claims against.
-/

/-! ## A296943.P6678187452196350666

`2+n*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A296943.P6678187452196350666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 + n * a (n - 1)

end

end A296943.P6678187452196350666

/-! ## A296943.P4916401187505507821

`2-ceil(-n*a(n-1))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A296943.P4916401187505507821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - (-((n : ℤ) * a (n - 1)))

end

end A296943.P4916401187505507821

/-! ## A296943.P777466899835791168

`-xor(n*a(n-1), -2)` with `a(0)=0, a(1)=1`
-/

namespace A296943.P777466899835791168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  -Int.xor ((n : ℤ) * a (n - 1)) (-2)

end

end A296943.P777466899835791168

/-! ## A296943.P6039677546608346883

`a(n-1)/tan(acot(n))+2` with `a(0)=0, a(1)=1`
-/

namespace A296943.P6039677546608346883
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ)) + 2

end

end A296943.P6039677546608346883

/-! ## A296943.P5388810287148265445

`a(n-1)/cot(atan(n))+2` with `a(0)=0, a(1)=1`
-/

namespace A296943.P5388810287148265445
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (n : ℝ)) + 2

end

end A296943.P5388810287148265445

/-! ## A296943.P6573306969474703823

`a(n-1)/n^(-1)+2` with `a(0)=0, a(1)=1`
-/

namespace A296943.P6573306969474703823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + 2

end

end A296943.P6573306969474703823

/-! ## A296943.P2721574181570268627

`2-a(n-1)*tan(-atan(n))` with `a(0)=0, a(1)=1`
-/

namespace A296943.P2721574181570268627
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - a (n - 1) * Real.tan (-Real.arctan (n : ℝ))

end

end A296943.P2721574181570268627

/-! ## A296943.P5666162498646766374

`4-(4/2-n*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A296943.P5666162498646766374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 - ((4 : ℚ) / 2 - (n : ℚ) * a (n - 1))

end

end A296943.P5666162498646766374

/-! ## A296943.P8684507734852400591

`2-(n*(1-a(n-1))-n)` with `a(0)=0, a(1)=1`
-/

namespace A296943.P8684507734852400591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - ((n : ℤ) * (1 - a (n - 1)) - (n : ℤ))

end

end A296943.P8684507734852400591

/-! ## A296943.P6756224327098413582

`floor(n*a(floor(n²/(n+1))))+2` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A296943.P6756224327098413582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat + 2

end

end A296943.P6756224327098413582

/-!
# A296944: Expansion of (2*x*exp(x)-3)/(1-x).

The programs for A296944, there is no canonical definition to state claims against.
-/

/-! ## A296944.P5553162030167698775

`n*(a(n-1)+2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296944.P5553162030167698775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  n * (a (n - 1) + 2)

end

end A296944.P5553162030167698775

/-! ## A296944.P1133838006227528266

`(a(n-1)+2)/n^(-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296944.P1133838006227528266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (a (n - 1) + 2) / (n : ℚ) ^ (-1 : ℤ)

end

end A296944.P1133838006227528266

/-! ## A296944.P16736770021240565106

`n*(2-(a(n-1)-2*a(n-1)))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296944.P16736770021240565106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (n : ℤ) * (2 - (a (n - 1) - 2 * a (n - 1)))

end

end A296944.P16736770021240565106

/-! ## A296944.P710301576930593896

`lcm(n, 2-A296943(n))`
-/

namespace A296944.P710301576930593896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (2 - A296943 n)

end

end A296944.P710301576930593896

/-! ## A296944.P1955471298499227673

`A296943(n)-2%A000079(n)`
-/

namespace A296944.P1955471298499227673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296943 n - Int.tmod 2 (A000079 n)

end

end A296944.P1955471298499227673

/-! ## A296944.P15358072360465335828

`abs(A166680(n)%A033540(n+1))`
-/

namespace A296944.P15358072360465335828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A166680 n) (A033540 (n + 1))|

end

end A296944.P15358072360465335828

/-! ## A296944.P17609453474819017737

`(5*A007526(n))%A033540(n+1)`
-/

namespace A296944.P17609453474819017737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A007526 n) (A033540 (n + 1))

end

end A296944.P17609453474819017737

/-!
# A296945: Number of n X n 0..1 arrays with each 1 adjacent to 1, 3 or 5 king-move neighboring 1's.

The programs for A296945, there is no canonical definition to state claims against.
-/

/-! ## A296945.P17244876774263383164

`A296952(∑[4*n]+1)`
-/

namespace A296945.P17244876774263383164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296945.P17244876774263383164

/-! ## A296945.P18214328741385662582

`record[gcd(A114327(n), A296952(n+1))]`
-/

namespace A296945.P18214328741385662582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A296952 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296945.P18214328741385662582

/-! ## A296945.P12637948012091304028

`gcd(A000038(n), A296952(A001844(n)))`
-/

namespace A296945.P12637948012091304028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A296952 (A001844 n).toNat)

end

end A296945.P12637948012091304028

/-! ## A296945.P15663422728935212514

`or(A000007(n), A296952(A001844(n)))`
-/

namespace A296945.P15663422728935212514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A296952 (A001844 n).toNat)

end

end A296945.P15663422728935212514

/-! ## A296945.P3322922758090938460

`or(A225639(n), A296952(A001844(n)))`
-/

namespace A296945.P3322922758090938460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A225639 n) (A296952 (A001844 n).toNat)

end

end A296945.P3322922758090938460

/-!
# A296946: Number of n X 2 0..1 arrays with each 1 adjacent to 1, 3 or 5 king-move neighboring 1s.

The programs for A296946, the canonical program `A296946.P6771642535972107607` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296946 has offset 1).

The definition of A296946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296946.P6771642535972107607

`2*a(n-1)+8*a(n-3)-12*a(n-4)` with `a(0)=2, a(1)=8, a(2)=16, a(3)=36`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A296946

/-- `2*a(n-1)+8*a(n-3)-12*a(n-4)` -/
def P6771642535972107607.Spec : Prop :=
  ∀ n, P6771642535972107607.a n = A296946 (n + 1)

theorem P6771642535972107607.correct : P6771642535972107607.Spec := by
  intro n
  simp only [A296946, Nat.add_sub_cancel]

end A296946

/-! ## A296946.P3095837308539276655

`A296952(∑[n+1]+2)`
-/

namespace A296946.P3095837308539276655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296946.P3095837308539276655

namespace A296946

/-- `A296952(∑[n+1]+2)` -/
def P3095837308539276655.Spec : Prop :=
  ∀ n, P3095837308539276655.a n = A296946 (n + 1)

end A296946

/-! ## A296946.P3714117842739759450

`record[A296952(A133263(A008611(n)))]`
-/

namespace A296946.P3714117842739759450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296946.P3714117842739759450

namespace A296946

/-- `record[A296952(A133263(A008611(n)))]` -/
def P3714117842739759450.Spec : Prop :=
  ∀ n, P3714117842739759450.a n = A296946 (n + 1)

end A296946

/-! ## A296946.P5790271562672109221

`A007318(A000217(n+5))*A296952(A000096(n)+3)`
-/

namespace A296946.P5790271562672109221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 5)).toNat * A296952 (A000096 n + 3).toNat

end

end A296946.P5790271562672109221

namespace A296946

/-- `A007318(A000217(n+5))*A296952(A000096(n)+3)` -/
def P5790271562672109221.Spec : Prop :=
  ∀ n, P5790271562672109221.a n = A296946 (n + 1)

end A296946

/-! ## A296946.P11448841192577597171

`record[A296952(n+2)/A214984(n+3)]`
-/

namespace A296946.P11448841192577597171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296952 (n + 2) : ℚ) / (A214984 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296946.P11448841192577597171

namespace A296946

/-- `record[A296952(n+2)/A214984(n+3)]` -/
def P11448841192577597171.Spec : Prop :=
  ∀ n, P11448841192577597171.a n = (A296946 (n + 1) : ℚ)

end A296946

/-!
# A296947: Number of n X 3 0..1 arrays with each 1 adjacent to 1, 3 or 5 king-move neighboring 1s.

The programs for A296947, there is no canonical definition to state claims against.
-/

/-! ## A296947.P8319345362483374531

`A296952(∑[n+2]+4)`
-/

namespace A296947.P8319345362483374531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296947.P8319345362483374531

/-! ## A296947.P16885674976730949409

`A296952(A167614(n+1))+A185284(n)`
-/

namespace A296947.P16885674976730949409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A167614 (n + 1)).toNat + A185284 n

end

end A296947.P16885674976730949409

/-! ## A296947.P6445251472659385332

`A296952(A167614(n+1))%A017009(n)`
-/

namespace A296947.P6445251472659385332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296952 (A167614 (n + 1)).toNat) (A017009 n)

end

end A296947.P6445251472659385332

/-! ## A296947.P4215726127781718607

`lcm(A033999(n), A296952(A167614(n+1)))`
-/

namespace A296947.P4215726127781718607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A296952 (A167614 (n + 1)).toNat)

end

end A296947.P4215726127781718607

/-! ## A296947.P14527301989170509019

`or(A000007(n), A296952(A167614(n+1)))`
-/

namespace A296947.P14527301989170509019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A296952 (A167614 (n + 1)).toNat)

end

end A296947.P14527301989170509019

/-!
# A296948: Number of n X 4 0..1 arrays with each 1 adjacent to 1, 3 or 5 king-move neighboring 1s.

The programs for A296948, there is no canonical definition to state claims against.
-/

/-! ## A296948.P2084465728295288327

`A296952(A141214(n)+7)`
-/

namespace A296948.P2084465728295288327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A141214 n + 7).toNat

end

end A296948.P2084465728295288327

/-! ## A296948.P4430114583432459707

`A296952(A052905(n)+9)`
-/

namespace A296948.P4430114583432459707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A052905 n + 9).toNat

end

end A296948.P4430114583432459707

/-! ## A296948.P8694240371672969362

`A296952(A055999(n)+10)`
-/

namespace A296948.P8694240371672969362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A055999 n + 10).toNat

end

end A296948.P8694240371672969362

/-! ## A296948.P7408620391547410692

`A296952(A167614(n+2)+1)`
-/

namespace A296948.P7408620391547410692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A167614 (n + 2) + 1).toNat

end

end A296948.P7408620391547410692

/-! ## A296948.P9007268047288241210

`A296952(A034856(n+2)+6)`
-/

namespace A296948.P9007268047288241210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A034856 (n + 2) + 6).toNat

end

end A296948.P9007268047288241210

/-!
# A296949: Number of nX5 0..1 arrays with each 1 adjacent to 1, 3 or 5 king-move neighboring 1s.

The programs for A296949, there is no canonical definition to state claims against.
-/

/-! ## A296949.P4912167838243834853

`A296952(A167499(n+3))`
-/

namespace A296949.P4912167838243834853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A167499 (n + 3)).toNat

end

end A296949.P4912167838243834853

/-! ## A296949.P313669674362746062

`A296952(A167614(n+3)+2)`
-/

namespace A296949.P313669674362746062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A167614 (n + 3) + 2).toNat

end

end A296949.P313669674362746062

/-! ## A296949.P6836149348421347052

`A296952(A000217(n+4)+5)`
-/

namespace A296949.P6836149348421347052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A000217 (n + 4) + 5).toNat

end

end A296949.P6836149348421347052

/-! ## A296949.P6052530609589427149

`A296952(A055998(n+2)+8)`
-/

namespace A296949.P6052530609589427149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A055998 (n + 2) + 8).toNat

end

end A296949.P6052530609589427149

/-! ## A296949.P17354493870140111856

`A296952(A161680(n+5)+5)`
-/

namespace A296949.P17354493870140111856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A161680 (n + 5) + 5).toNat

end

end A296949.P17354493870140111856

/-!
# A296950: Number of nX6 0..1 arrays with each 1 adjacent to 1, 3 or 5 king-move neighboring 1s.

The programs for A296950, there is no canonical definition to state claims against.
-/

/-! ## A296950.P16451539850883469295

`A296952(A056115(n)+21)`
-/

namespace A296950.P16451539850883469295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A056115 n + 21).toNat

end

end A296950.P16451539850883469295

/-! ## A296950.P2365985535948178285

`A296952(A141214(n+2)+9)`
-/

namespace A296950.P2365985535948178285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A141214 (n + 2) + 9).toNat

end

end A296950.P2365985535948178285

/-! ## A296950.P7318933153703644066

`A296952(eq[7, A131818(n+1)])`
-/

namespace A296950.P7318933153703644066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296950.P7318933153703644066

/-! ## A296950.P9237045368609917995

`A296952(A374007(n+1))`
-/

namespace A296950.P9237045368609917995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A374007 (n + 1)).toNat

end

end A296950.P9237045368609917995

/-! ## A296950.P6820979045571048393

`A296952(eq[3, A219347(n)])`
-/

namespace A296950.P6820979045571048393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296950.P6820979045571048393

/-!
# A296951: Number of nX7 0..1 arrays with each 1 adjacent to 1, 3 or 5 king-move neighboring 1s.

The programs for A296951, there is no canonical definition to state claims against.
-/

/-! ## A296951.P12750547879985424617

`A296952(A055999(n+3)+13)`
-/

namespace A296951.P12750547879985424617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A055999 (n + 3) + 13).toNat

end

end A296951.P12750547879985424617

/-! ## A296951.P12893922599288109669

`A296952(eq[8, A131818(n+1)])`
-/

namespace A296951.P12893922599288109669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296951.P12893922599288109669

/-! ## A296951.P15327855228899656731

`A296952(A374008(n+1))`
-/

namespace A296951.P15327855228899656731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (A374008 (n + 1)).toNat

end

end A296951.P15327855228899656731

/-! ## A296951.P1363853615953338651

`A296952(eq[4, A219347(n)])`
-/

namespace A296951.P1363853615953338651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296951.P1363853615953338651

/-! ## A296951.P2398942126482262736

`A296952(eq[6, A193592(n)])`
-/

namespace A296951.P2398942126482262736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296952 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296951.P2398942126482262736

/-!
# A296952: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 1, 3 or 5 king-move neighboring 1s.

The programs for A296952, there is no canonical definition to state claims against.
-/

/-! ## A296952.P4153696058716278003

`A322847(A295943(n+1))`
-/

namespace A296952.P4153696058716278003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 (A295943 (n + 1)).toNat

end

end A296952.P4153696058716278003

/-! ## A296952.P9445705560813266160

`A295943(A187829(n+1))+A004526(A300175(n+1))`
-/

namespace A296952.P9445705560813266160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A187829 (n + 1)).toNat + A004526 (A300175 (n + 1)).toNat

end

end A296952.P9445705560813266160

/-! ## A296952.P10766431099347747835

`A007095(A295943(n+1))%A137994(n+2)`
-/

namespace A296952.P10766431099347747835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A295943 (n + 1)).toNat) (A137994 (n + 2))

end

end A296952.P10766431099347747835

/-! ## A296952.P5518848124593495203

`A171397(A295943(n+1))%A193831(2*n+1)`
-/

namespace A296952.P5518848124593495203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171397 (A295943 (n + 1)).toNat) (A193831 (2 * n + 1))

end

end A296952.P5518848124593495203

/-! ## A296952.P14984363621577609223

`A065039(A295943(n+1))%A229958(3*n+5)`
-/

namespace A296952.P14984363621577609223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065039 (A295943 (n + 1)).toNat) (A229958 (3 * n + 5))

end

end A296952.P14984363621577609223

/-!
# A296953: Number of bisymmetric, quasitrivial, and order-preserving binary operations on the n-element set {1,...,n}.

The programs for A296953, the canonical program `A296953.P363088643308766720` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296953 has offset 0).

The definition of A296953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296953.P363088643308766720

`3*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A296953

/-- `3*a(n-1)-2*a(n-2)` -/
def P363088643308766720.Spec : Prop :=
  ∀ n, P363088643308766720.a n = A296953 n

theorem P363088643308766720.correct : P363088643308766720.Spec := by
  intro n
  simp only [A296953]

end A296953

/-! ## A296953.P12409272778132314365

`∑[floor(3*2^(n-2))]`
-/

namespace A296953.P12409272778132314365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296953.P12409272778132314365

namespace A296953

/-- `∑[floor(3*2^(n-2))]` -/
def P12409272778132314365.Spec : Prop :=
  ∀ n, P12409272778132314365.a n = A296953 n

end A296953

/-! ## A296953.P2461830747608377919

`(1+a(n-1))*2` with `a(0)=0, a(1)=1`
-/

namespace A296953.P2461830747608377919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 + a (n - 1)) * 2

end

end A296953.P2461830747608377919

namespace A296953

/-- `(1+a(n-1))*2` -/
def P2461830747608377919.Spec : Prop :=
  ∀ n, (P2461830747608377919.a n : ℤ) = A296953 n

end A296953

/-! ## A296953.P10290304144202074825

`lcm(2, a(n-1)+1)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A296953.P10290304144202074825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  Nat.lcm 2 (a (n - 1) + 1)

end

end A296953.P10290304144202074825

namespace A296953

/-- `lcm(2, a(n-1)+1)` -/
def P10290304144202074825.Spec : Prop :=
  ∀ n, (P10290304144202074825.a n : ℤ) = A296953 n

end A296953

/-! ## A296953.P15825584143222165035

`2*or(1, a(n-1))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A296953.P15825584143222165035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  2 * Nat.lor 1 (a (n - 1))

end

end A296953.P15825584143222165035

namespace A296953

/-- `2*or(1, a(n-1))` -/
def P15825584143222165035.Spec : Prop :=
  ∀ n, (P15825584143222165035.a n : ℤ) = A296953 n

end A296953

/-! ## A296953.P2207596909967702830

`2*xor(1, a(n-1))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A296953.P2207596909967702830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  2 * Nat.xor 1 (a (n - 1))

end

end A296953.P2207596909967702830

namespace A296953

/-- `2*xor(1, a(n-1))` -/
def P2207596909967702830.Spec : Prop :=
  ∀ n, (P2207596909967702830.a n : ℤ) = A296953 n

end A296953

/-! ## A296953.P2537837381952024538

`floor(∑[2*a(n-1)])` with `a(0)=0, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A296953.P2537837381952024538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296953.P2537837381952024538

namespace A296953

/-- `floor(∑[2*a(n-1)])` -/
def P2537837381952024538.Spec : Prop :=
  ∀ n, (P2537837381952024538.a n : ℤ) = A296953 n

end A296953

/-! ## A296953.P2469559085348036641

`4-2*(1-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A296953.P2469559085348036641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 - 2 * (1 - a (n - 1))

end

end A296953.P2469559085348036641

namespace A296953

/-- `4-2*(1-a(n-1))` -/
def P2469559085348036641.Spec : Prop :=
  ∀ n, P2469559085348036641.a n = A296953 n

end A296953

/-! ## A296953.P1262613291188023158

`a(n-1)+a(n-1)+2` with `a(0)=0, a(1)=1`
-/

namespace A296953.P1262613291188023158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A296953.P1262613291188023158

namespace A296953

/-- `a(n-1)+a(n-1)+2` -/
def P1262613291188023158.Spec : Prop :=
  ∀ n, (P1262613291188023158.a n : ℤ) = A296953 n

end A296953

/-! ## A296953.P13104000733069634969

`2-a(n-1)/(1/2-1)` with `a(0)=0, a(1)=1`
-/

namespace A296953.P13104000733069634969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A296953.P13104000733069634969

namespace A296953

/-- `2-a(n-1)/(1/2-1)` -/
def P13104000733069634969.Spec : Prop :=
  ∀ n, P13104000733069634969.a n = (A296953 n : ℚ)

end A296953

/-! ## A296953.P4688728778060488757

`3-floor(1-a(n-1)-a(n-1))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A296953.P4688728778060488757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 - (1 - a (n - 1) - a (n - 1))

end

end A296953.P4688728778060488757

namespace A296953

/-- `3-floor(1-a(n-1)-a(n-1))` -/
def P4688728778060488757.Spec : Prop :=
  ∀ n, P4688728778060488757.a n = A296953 n

end A296953

/-! ## A296953.P8775213607066044420

`a(n-1)-((n-2)%n-a(n-1)-n)` with `a(0)=0`
-/

namespace A296953.P8775213607066044420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (Int.tmod ((n : ℤ) - 2) (n : ℤ) - a (n - 1) - (n : ℤ))

end

end A296953.P8775213607066044420

namespace A296953

/-- `a(n-1)-((n-2)%n-a(n-1)-n)` -/
def P8775213607066044420.Spec : Prop :=
  ∀ n, P8775213607066044420.a n = A296953 n

end A296953

/-! ## A296953.P14208531156300970487

`a(n-1)-(gcd(3, a(n-1))-3-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A296953.P14208531156300970487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - ((Int.gcd 3 (a (n - 1)) : ℤ) - 3 - a (n - 1))

end

end A296953.P14208531156300970487

namespace A296953

/-- `a(n-1)-(gcd(3, a(n-1))-3-a(n-1))` -/
def P14208531156300970487.Spec : Prop :=
  ∀ n, P14208531156300970487.a n = A296953 n

end A296953

/-! ## A296953.P15225908888754681511

`A083329(n)-1`
-/

namespace A296953.P15225908888754681511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n - 1

end

end A296953.P15225908888754681511

namespace A296953

/-- `A083329(n)-1` -/
def P15225908888754681511.Spec : Prop :=
  ∀ n, P15225908888754681511.a n = A296953 n

end A296953

/-! ## A296953.P13471353371850864078

`A042950(n)-2`
-/

namespace A296953.P13471353371850864078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - 2

end

end A296953.P13471353371850864078

namespace A296953

/-- `A042950(n)-2` -/
def P13471353371850864078.Spec : Prop :=
  ∀ n, P13471353371850864078.a n = A296953 n

end A296953

/-! ## A296953.P17851096125233609901

`A266550(n+2)-1`
-/

namespace A296953.P17851096125233609901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2) - 1

end

end A296953.P17851096125233609901

namespace A296953

/-- `A266550(n+2)-1` -/
def P17851096125233609901.Spec : Prop :=
  ∀ n, P17851096125233609901.a n = A296953 n

end A296953

/-! ## A296953.P6883930024386679100

`A098011(n+3)-2`
-/

namespace A296953.P6883930024386679100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 3) - 2

end

end A296953.P6883930024386679100

namespace A296953

/-- `A098011(n+3)-2` -/
def P6883930024386679100.Spec : Prop :=
  ∀ n, P6883930024386679100.a n = A296953 n

end A296953

/-! ## A296953.P14088185091505251382

`A003073(3*n)-1`
-/

namespace A296953.P14088185091505251382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003073 (3 * n) - 1

end

end A296953.P14088185091505251382

namespace A296953

/-- `A003073(3*n)-1` -/
def P14088185091505251382.Spec : Prop :=
  ∀ n, P14088185091505251382.a n = A296953 n

end A296953

/-! ## A296953.P6128061347078828105

`2^n-A122958(n)`
-/

namespace A296953.P6128061347078828105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A122958 n

end

end A296953.P6128061347078828105

namespace A296953

/-- `2^n-A122958(n)` -/
def P6128061347078828105.Spec : Prop :=
  ∀ n, P6128061347078828105.a n = A296953 n

end A296953

/-!
# A296954: Expansion of x*(1 - x + 4*x^2) / ((1 - x)*(1 - 2*x)).

The programs for A296954, the canonical program `A296954.P17632642471241481529` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296954 has offset 0).

The definition of A296954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296954.P17632642471241481529

`3*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=8`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A296954

/-- `3*a(n-1)-2*a(n-2)` -/
def P17632642471241481529.Spec : Prop :=
  ∀ n, P17632642471241481529.a n = A296954 n

theorem P17632642471241481529.correct : P17632642471241481529.Spec := by
  intro n
  simp only [A296954]

end A296954

/-! ## A296954.P1689418371097686396

`2*(a(n-1)+2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296954.P1689418371097686396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * (a (n - 1) + 2)

end

end A296954.P1689418371097686396

namespace A296954

/-- `2*(a(n-1)+2)` -/
def P1689418371097686396.Spec : Prop :=
  ∀ n, (P1689418371097686396.a n : ℤ) = A296954 n

end A296954

/-! ## A296954.P7997773548916220186

`∑[2*a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=6`
-/

namespace A296954.P7997773548916220186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 6] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296954.P7997773548916220186

namespace A296954

/-- `∑[2*a(n-1)]` -/
def P7997773548916220186.Spec : Prop :=
  ∀ n, (P7997773548916220186.a n : ℤ) = A296954 n

end A296954

/-! ## A296954.P5847765853756519445

`a(n-1)+a(n-1)+4` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296954.P5847765853756519445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + 4)

end

end A296954.P5847765853756519445

namespace A296954

/-- `a(n-1)+a(n-1)+4` -/
def P5847765853756519445.Spec : Prop :=
  ∀ n, (P5847765853756519445.a n : ℤ) = A296954 n

end A296954

/-! ## A296954.P3876239712548938733

`abs(2-ceil(2^(n-1)))+2^n-2`
-/

namespace A296954.P3876239712548938733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉| + ((2 ^ n : ℤ) - 2)

end

end A296954.P3876239712548938733

namespace A296954

/-- `abs(2-ceil(2^(n-1)))+2^n-2` -/
def P3876239712548938733.Spec : Prop :=
  ∀ n, P3876239712548938733.a n = A296954 n

end A296954

/-! ## A296954.P11171881836857218580

`abs(2-abs(2-A082505(n)))`
-/

namespace A296954.P11171881836857218580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |2 - A082505 n|)|

end

end A296954.P11171881836857218580

namespace A296954

/-- `abs(2-abs(2-A082505(n)))` -/
def P11171881836857218580.Spec : Prop :=
  ∀ n, P11171881836857218580.a n = A296954 n

end A296954

/-! ## A296954.P15127485320422232470

`abs(1-abs(2-A266550(n+2)))`
-/

namespace A296954.P15127485320422232470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |2 - A266550 (n + 2)|)|

end

end A296954.P15127485320422232470

namespace A296954

/-- `abs(1-abs(2-A266550(n+2)))` -/
def P15127485320422232470.Spec : Prop :=
  ∀ n, P15127485320422232470.a n = A296954 n

end A296954

/-! ## A296954.P11349149239878428356

`and(A101622(n), A192033(n))`
-/

namespace A296954.P11349149239878428356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101622 n) (A192033 n)

end

end A296954.P11349149239878428356

namespace A296954

/-- `and(A101622(n), A192033(n))` -/
def P11349149239878428356.Spec : Prop :=
  ∀ n, P11349149239878428356.a n = A296954 n

end A296954

/-! ## A296954.P2392587606009222929

`A057427(n)*A131128(n-A057427(n))`
-/

namespace A296954.P2392587606009222929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A131128 ((n : ℤ) - A057427 n).toNat

end

end A296954.P2392587606009222929

namespace A296954

/-- `A057427(n)*A131128(n-A057427(n))` -/
def P2392587606009222929.Spec : Prop :=
  ∀ n, P2392587606009222929.a n = A296954 n

end A296954

/-! ## A296954.P16390484474537898881

`A053209(n)%A132477(n)`
-/

namespace A296954.P16390484474537898881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053209 n) (A132477 n)

end

end A296954.P16390484474537898881

namespace A296954

/-- `A053209(n)%A132477(n)` -/
def P16390484474537898881.Spec : Prop :=
  ∀ n, P16390484474537898881.a n = A296954 n

end A296954

/-! ## A296954.P1186662581612180319

`and(A053208(n), A101622(n))`
-/

namespace A296954.P1186662581612180319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053208 n) (A101622 n)

end

end A296954.P1186662581612180319

namespace A296954

/-- `and(A053208(n), A101622(n))` -/
def P1186662581612180319.Spec : Prop :=
  ∀ n, P1186662581612180319.a n = A296954 n

end A296954

/-! ## A296954.P17301324757626556906

`and(A053208(n), A192033(n))`
-/

namespace A296954.P17301324757626556906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053208 n) (A192033 n)

end

end A296954.P17301324757626556906

namespace A296954

/-- `and(A053208(n), A192033(n))` -/
def P17301324757626556906.Spec : Prop :=
  ∀ n, P17301324757626556906.a n = A296954 n

end A296954

/-! ## A296954.P4615145808811459467

`and(A053208(n), A284353(n))`
-/

namespace A296954.P4615145808811459467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053208 n) (A284353 n)

end

end A296954.P4615145808811459467

namespace A296954

/-- `and(A053208(n), A284353(n))` -/
def P4615145808811459467.Spec : Prop :=
  ∀ n, P4615145808811459467.a n = A296954 n

end A296954

/-! ## A296954.P12575250978849358324

`A139697(n+1)%A083329(n)`
-/

namespace A296954.P12575250978849358324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139697 (n + 1)) (A083329 n)

end

end A296954.P12575250978849358324

namespace A296954

/-- `A139697(n+1)%A083329(n)` -/
def P12575250978849358324.Spec : Prop :=
  ∀ n, P12575250978849358324.a n = A296954 n

end A296954

/-! ## A296954.P10812773086883055697

`A074494(n+1)%A005183(n)`
-/

namespace A296954.P10812773086883055697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074494 (n + 1)) (A005183 n)

end

end A296954.P10812773086883055697

namespace A296954

/-- `A074494(n+1)%A005183(n)` -/
def P10812773086883055697.Spec : Prop :=
  ∀ n, P10812773086883055697.a n = A296954 n

end A296954

/-! ## A296954.P13733986429901235349

`xor(3, A266550(n+2))%A052542(n)`
-/

namespace A296954.P13733986429901235349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 3 (A266550 (n + 2))) (A052542 n)

end

end A296954.P13733986429901235349

namespace A296954

/-- `xor(3, A266550(n+2))%A052542(n)` -/
def P13733986429901235349.Spec : Prop :=
  ∀ n, P13733986429901235349.a n = A296954 n

end A296954

/-! ## A296954.P8535469979553476709

`A257273(n)%A039301(n)`
-/

namespace A296954.P8535469979553476709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257273 n) (A039301 n)

end

end A296954.P8535469979553476709

namespace A296954

/-- `A257273(n)%A039301(n)` -/
def P8535469979553476709.Spec : Prop :=
  ∀ n, P8535469979553476709.a n = A296954 n

end A296954

/-!
# A296955: Sum of the smaller parts of the partitions of n into two distinct parts such that the smaller part divides the larger.

The programs for A296955, the canonical program `A296955.P12925484425908854093` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296955 has offset 1).

The definition of A296955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296955.P12925484425908854093

`A000203(n+1)-A080512(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A296955

/-- `A000203(n+1)-A080512(n+1)` -/
def P12925484425908854093.Spec : Prop :=
  ∀ n, P12925484425908854093.a n = A296955 (n + 1)

theorem P12925484425908854093.correct : P12925484425908854093.Spec := by
  intro n
  simp only [A296955, Nat.add_sub_cancel]

end A296955

/-! ## A296955.P15310956011551508629

`∑{d}[n+1, #%A026741(n+1)]`
-/

namespace A296955.P15310956011551508629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (A026741 (n + 1))

end

end A296955.P15310956011551508629

namespace A296955

/-- `∑{d}[n+1, #%A026741(n+1)]` -/
def P15310956011551508629.Spec : Prop :=
  ∀ n, P15310956011551508629.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P536100462698122792

`A001065(n+1)-∑[n]%(n+1)`
-/

namespace A296955.P536100462698122792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)

end

end A296955.P536100462698122792

namespace A296955

/-- `A001065(n+1)-∑[n]%(n+1)` -/
def P536100462698122792.Spec : Prop :=
  ∀ n, P536100462698122792.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P18425144483609079106

`lcm(2, n+1)/2-A033879(n+1)`
-/

namespace A296955.P18425144483609079106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℚ) / 2 - (A033879 (n + 1) : ℚ)

end

end A296955.P18425144483609079106

namespace A296955

/-- `lcm(2, n+1)/2-A033879(n+1)` -/
def P18425144483609079106.Spec : Prop :=
  ∀ n, P18425144483609079106.a n = (A296955 (n + 1) : ℚ)

end A296955

/-! ## A296955.P14742636420810034740

`∑{d}[n+1, #*A157928((n+1)/#-1)]`
-/

namespace A296955.P14742636420810034740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A157928 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A296955.P14742636420810034740

namespace A296955

/-- `∑{d}[n+1, #*A157928((n+1)/#-1)]` -/
def P14742636420810034740.Spec : Prop :=
  ∀ n, P14742636420810034740.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P18373161136907938577

`A001065(n+1)+∑[A130472(n)]`
-/

namespace A296955.P18373161136907938577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296955.P18373161136907938577

namespace A296955

/-- `A001065(n+1)+∑[A130472(n)]` -/
def P18373161136907938577.Spec : Prop :=
  ∀ n, P18373161136907938577.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P9975555894288108333

`A001065(n+1)-∑[A001057(n)]`
-/

namespace A296955.P9975555894288108333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296955.P9975555894288108333

namespace A296955

/-- `A001065(n+1)-∑[A001057(n)]` -/
def P9975555894288108333.Spec : Prop :=
  ∀ n, P9975555894288108333.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P3474343212727521155

`A033880(n+1)+A026741(n+1)`
-/

namespace A296955.P3474343212727521155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + A026741 (n + 1)

end

end A296955.P3474343212727521155

namespace A296955

/-- `A033880(n+1)+A026741(n+1)` -/
def P3474343212727521155.Spec : Prop :=
  ∀ n, P3474343212727521155.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P7091486697854291816

`A237588(n+1)+A065423(n+1)`
-/

namespace A296955.P7091486697854291816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + A065423 (n + 1)

end

end A296955.P7091486697854291816

namespace A296955

/-- `A237588(n+1)+A065423(n+1)` -/
def P7091486697854291816.Spec : Prop :=
  ∀ n, P7091486697854291816.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P18304627623167272150

`A007503(n+1)-A062553(n+1)`
-/

namespace A296955.P18304627623167272150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A062553 (n + 1)

end

end A296955.P18304627623167272150

namespace A296955

/-- `A007503(n+1)-A062553(n+1)` -/
def P18304627623167272150.Spec : Prop :=
  ∀ n, P18304627623167272150.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P17381365075388889471

`A065423(n+1)-A235796(n+1)`
-/

namespace A296955.P17381365075388889471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (n + 1) - A235796 (n + 1)

end

end A296955.P17381365075388889471

namespace A296955

/-- `A065423(n+1)-A235796(n+1)` -/
def P17381365075388889471.Spec : Prop :=
  ∀ n, P17381365075388889471.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P5327464536623496354

`A000203(n+1)-∑[A001057(n)+1]`
-/

namespace A296955.P5327464536623496354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296955.P5327464536623496354

namespace A296955

/-- `A000203(n+1)-∑[A001057(n)+1]` -/
def P5327464536623496354.Spec : Prop :=
  ∀ n, P5327464536623496354.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P9810896801305856040

`A026741(n+1)+A237588(n+1)-1`
-/

namespace A296955.P9810896801305856040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + (A237588 (n + 1) - 1)

end

end A296955.P9810896801305856040

namespace A296955

/-- `A026741(n+1)+A237588(n+1)-1` -/
def P9810896801305856040.Spec : Prop :=
  ∀ n, P9810896801305856040.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P1951922864462360239

`∑{d}[n+1, A000010(#)*A023645((n+1)/#)]`
-/

namespace A296955.P1951922864462360239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A023645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296955.P1951922864462360239

namespace A296955

/-- `∑{d}[n+1, A000010(#)*A023645((n+1)/#)]` -/
def P1951922864462360239.Spec : Prop :=
  ∀ n, P1951922864462360239.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P15220231515145470030

`A026741(n+1)+A039653(n+1)-(2*n+1)`
-/

namespace A296955.P15220231515145470030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + (A039653 (n + 1) - (2 * n + 1 : ℤ))

end

end A296955.P15220231515145470030

namespace A296955

/-- `A026741(n+1)+A039653(n+1)-(2*n+1)` -/
def P15220231515145470030.Spec : Prop :=
  ∀ n, P15220231515145470030.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P7436833339359526295

`A001065(n+1)+A002620(n)-A008794(n+1)`
-/

namespace A296955.P7436833339359526295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A002620 n - A008794 (n + 1))

end

end A296955.P7436833339359526295

namespace A296955

/-- `A001065(n+1)+A002620(n)-A008794(n+1)` -/
def P7436833339359526295.Spec : Prop :=
  ∀ n, P7436833339359526295.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P16720632986967961750

`A257644(n+1)-(A257644(n)+A062553(n+1))`
-/

namespace A296955.P16720632986967961750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257644 (n + 1) - (A257644 n + A062553 (n + 1))

end

end A296955.P16720632986967961750

namespace A296955

/-- `A257644(n+1)-(A257644(n)+A062553(n+1))` -/
def P16720632986967961750.Spec : Prop :=
  ∀ n, P16720632986967961750.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P17713281451342052034

`A000203(n+1)-A000082(n+1)/A159634(n+1)`
-/

namespace A296955.P17713281451342052034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) - (A000082 (n + 1) : ℚ) / (A159634 (n + 1) : ℚ)

end

end A296955.P17713281451342052034

namespace A296955

/-- `A000203(n+1)-A000082(n+1)/A159634(n+1)` -/
def P17713281451342052034.Spec : Prop :=
  ∀ n, P17713281451342052034.a n = (A296955 (n + 1) : ℚ)

end A296955

/-! ## A296955.P388425033736686609

`∑{d}[n+1, #*A179184((n+1)/#)]`
-/

namespace A296955.P388425033736686609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A179184 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296955.P388425033736686609

namespace A296955

/-- `∑{d}[n+1, #*A179184((n+1)/#)]` -/
def P388425033736686609.Spec : Prop :=
  ∀ n, P388425033736686609.a n = A296955 (n + 1)

end A296955

/-! ## A296955.P1552218181540799287

`Δ[A001318(n)]-(2*n+2-∑{d}[n+1, #])`
-/

namespace A296955.P1552218181540799287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)))

end

end A296955.P1552218181540799287

namespace A296955

/-- `Δ[A001318(n)]-(2*n+2-∑{d}[n+1, #])` -/
def P1552218181540799287.Spec : Prop :=
  ∀ n, P1552218181540799287.a n = A296955 (n + 1)

end A296955

/-!
# A296956: Number of n X n 0..1 arrays with each 1 adjacent to 2, 3 or 5 king-move neighboring 1's.

The programs for A296956, there is no canonical definition to state claims against.
-/

/-! ## A296956.P13900305068975220263

`A296963(∑[4*n]+1)`
-/

namespace A296956.P13900305068975220263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296956.P13900305068975220263

/-! ## A296956.P11358961615752005606

`record[gcd(A114327(n), A296963(n+1))]`
-/

namespace A296956.P11358961615752005606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A296963 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296956.P11358961615752005606

/-! ## A296956.P15859280195699595881

`A296963(A001844(n))+A025444(n)`
-/

namespace A296956.P15859280195699595881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (A001844 n).toNat + A025444 n

end

end A296956.P15859280195699595881

/-! ## A296956.P13399841037955171243

`or(A037800(n), A296963(A001844(n)))`
-/

namespace A296956.P13399841037955171243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037800 n) (A296963 (A001844 n).toNat)

end

end A296956.P13399841037955171243

/-! ## A296956.P2546880036064302325

`A296963(A001844(n))+A239705(n+1)`
-/

namespace A296956.P2546880036064302325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (A001844 n).toNat + A239705 (n + 1)

end

end A296956.P2546880036064302325

/-!
# A296957: Number of n X 2 0..1 arrays with each 1 adjacent to 2, 3 or 5 king-move neighboring 1s.

The programs for A296957, the canonical program `A296957.P11821694890497639354` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296957 has offset 1).

The definition of A296957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296957.P11821694890497639354

`4*a(n-1)-5*a(n-2)+11*a(n-3)-18*a(n-4)+4*a(n-5)` with `a(0)=1, a(1)=6, a(2)=16, a(3)=31, a(4)=96`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A296957

/-- `4*a(n-1)-5*a(n-2)+11*a(n-3)-18*a(n-4)+4*a(n-5)` -/
def P11821694890497639354.Spec : Prop :=
  ∀ n, P11821694890497639354.a n = A296957 (n + 1)

theorem P11821694890497639354.correct : P11821694890497639354.Spec := by
  intro n
  simp only [A296957, Nat.add_sub_cancel]

end A296957

/-! ## A296957.P12247148221932223216

`record[ratio[A296963(n+1)]]`
-/

namespace A296957.P12247148221932223216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296957.P12247148221932223216

namespace A296957

/-- `record[ratio[A296963(n+1)]]` -/
def P12247148221932223216.Spec : Prop :=
  ∀ n, P12247148221932223216.a n = (A296957 (n + 1) : ℚ)

end A296957

/-! ## A296957.P10349846987642586419

`A296963(∑[n+1]+2)`
-/

namespace A296957.P10349846987642586419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296957.P10349846987642586419

namespace A296957

/-- `A296963(∑[n+1]+2)` -/
def P10349846987642586419.Spec : Prop :=
  ∀ n, P10349846987642586419.a n = A296957 (n + 1)

end A296957

/-! ## A296957.P10479812114059499664

`record[root(A296963(n+1), A257462(n))]`
-/

namespace A296957.P10479812114059499664
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A296963 (n + 1) : ℝ) ^ (1 / (A257462 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296957.P10479812114059499664

namespace A296957

/-- `record[root(A296963(n+1), A257462(n))]` -/
def P10479812114059499664.Spec : Prop :=
  ∀ n, P10479812114059499664.a n = (A296957 (n + 1) : ℝ)

end A296957

/-! ## A296957.P14135220578611048334

`A296963(A133263(n+1))%A217091(n+1)`
-/

namespace A296957.P14135220578611048334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296963 (A133263 (n + 1)).toNat) (A217091 (n + 1))

end

end A296957.P14135220578611048334

namespace A296957

/-- `A296963(A133263(n+1))%A217091(n+1)` -/
def P14135220578611048334.Spec : Prop :=
  ∀ n, P14135220578611048334.a n = A296957 (n + 1)

end A296957

/-!
# A296958: Number of nX3 0..1 arrays with each 1 adjacent to 2, 3 or 5 king-move neighboring 1s.

The programs for A296958, there is no canonical definition to state claims against.
-/

/-! ## A296958.P11442307110709064286

`A296963(∑[n+2]+4)`
-/

namespace A296958.P11442307110709064286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296958.P11442307110709064286

/-! ## A296958.P5661952187995895212

`A291149(n)*A296963(A167614(n+1))`
-/

namespace A296958.P5661952187995895212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 n * A296963 (A167614 (n + 1)).toNat

end

end A296958.P5661952187995895212

/-! ## A296958.P514516921519719627

`or(A000007(n), A296963(A167614(n+1)))`
-/

namespace A296958.P514516921519719627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A296963 (A167614 (n + 1)).toNat)

end

end A296958.P514516921519719627

/-! ## A296958.P8793208497560367111

`A296963(A167614(n+1))%A228575(n+1)`
-/

namespace A296958.P8793208497560367111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296963 (A167614 (n + 1)).toNat) (A228575 (n + 1))

end

end A296958.P8793208497560367111

/-! ## A296958.P17957700355902836499

`lcm(A153881(n+1), A296963(A167614(n+1)))`
-/

namespace A296958.P17957700355902836499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153881 (n + 1)) (A296963 (A167614 (n + 1)).toNat)

end

end A296958.P17957700355902836499

/-!
# A296959: Number of nX4 0..1 arrays with each 1 adjacent to 2, 3 or 5 king-move neighboring 1s.

The programs for A296959, there is no canonical definition to state claims against.
-/

/-! ## A296959.P5884890333206999006

`A296963(A374004(n+1))`
-/

namespace A296959.P5884890333206999006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (A374004 (n + 1)).toNat

end

end A296959.P5884890333206999006

/-! ## A296959.P13106283021369463638

`A296963(A141214(n)+7)`
-/

namespace A296959.P13106283021369463638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (A141214 n + 7).toNat

end

end A296959.P13106283021369463638

/-! ## A296959.P16457017374859492641

`A296963(A052905(n)+9)`
-/

namespace A296959.P16457017374859492641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (A052905 n + 9).toNat

end

end A296959.P16457017374859492641

/-! ## A296959.P11604504017104973322

`A296963(A055999(n)+10)`
-/

namespace A296959.P11604504017104973322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (A055999 n + 10).toNat

end

end A296959.P11604504017104973322

/-! ## A296959.P6857956471836663707

`A296963(Δ[A008778(n)]+6)`
-/

namespace A296959.P6857956471836663707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (f1 (n + 1) - f1 n + 6).toNat

end

end A296959.P6857956471836663707

/-!
# A296960: Number of nX5 0..1 arrays with each 1 adjacent to 2, 3 or 5 king-move neighboring 1s.

The programs for A296960, there is no canonical definition to state claims against.
-/

/-! ## A296960.P2743719474567772400

`A296963(A374005(n+1))`
-/

namespace A296960.P2743719474567772400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (A374005 (n + 1)).toNat

end

end A296960.P2743719474567772400

/-! ## A296960.P6366644044106244867

`A296963(A167499(n+3))`
-/

namespace A296960.P6366644044106244867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (A167499 (n + 3)).toNat

end

end A296960.P6366644044106244867

/-! ## A296960.P12511543080291897577

`A296963(A155212(n)+13)`
-/

namespace A296960.P12511543080291897577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (A155212 n + 13).toNat

end

end A296960.P12511543080291897577

/-! ## A296960.P5585591368079044227

`A296963(A056000(n)+15)`
-/

namespace A296960.P5585591368079044227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (A056000 n + 15).toNat

end

end A296960.P5585591368079044227

/-! ## A296960.P14066705392111535173

`A296963(eq[7, A066657(n)])`
-/

namespace A296960.P14066705392111535173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296960.P14066705392111535173

/-!
# A296961: Number of nX6 0..1 arrays with each 1 adjacent to 2, 3 or 5 king-move neighboring 1s.

The programs for A296961, there is no canonical definition to state claims against.
-/

/-! ## A296961.P16525573868950829227

`A296963(A374007(n+1))`
-/

namespace A296961.P16525573868950829227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (A374007 (n + 1)).toNat

end

end A296961.P16525573868950829227

/-! ## A296961.P11346951223663019491

`A296963(A000124(n+5)+5)`
-/

namespace A296961.P11346951223663019491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (A000124 (n + 5) + 5).toNat

end

end A296961.P11346951223663019491

/-! ## A296961.P10870723370848239623

`A296963(eq[7, A131818(n+1)])`
-/

namespace A296961.P10870723370848239623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296961.P10870723370848239623

/-! ## A296961.P8596084854174684479

`A296963(eq[3, A219347(n)])`
-/

namespace A296961.P8596084854174684479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296961.P8596084854174684479

/-! ## A296961.P3527201651592094161

`A296963(eq[5, A152157(n)])`
-/

namespace A296961.P3527201651592094161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296961.P3527201651592094161

/-!
# A296962: Number of nX7 0..1 arrays with each 1 adjacent to 2, 3 or 5 king-move neighboring 1s.

The programs for A296962, there is no canonical definition to state claims against.
-/

/-! ## A296962.P8526918255638357990

`A296963(A374008(n+1))`
-/

namespace A296962.P8526918255638357990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (A374008 (n + 1)).toNat

end

end A296962.P8526918255638357990

/-! ## A296962.P3567137476283809288

`A296963(eq[11, A066657(n)])`
-/

namespace A296962.P3567137476283809288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296962.P3567137476283809288

/-! ## A296962.P3387361356265881069

`A296963(eq[8, A131818(n+1)])`
-/

namespace A296962.P3387361356265881069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296962.P3387361356265881069

/-! ## A296962.P9279751462041866098

`A296963(eq[4, A219347(n)])`
-/

namespace A296962.P9279751462041866098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296962.P9279751462041866098

/-! ## A296962.P11053740537840911659

`A296963(eq[6, A193592(n)])`
-/

namespace A296962.P11053740537840911659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296962.P11053740537840911659

/-!
# A296963: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 2, 3 or 5 king-move neighboring 1s.

The programs for A296963, there is no canonical definition to state claims against.
-/

/-! ## A296963.P10816108270394813194

`A061071(A022180(n))`
-/

namespace A296963.P10816108270394813194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A022180 n).toNat

end

end A296963.P10816108270394813194

/-! ## A296963.P10701366977220510216

`A055572(A086645(n))`
-/

namespace A296963.P10701366977220510216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A086645 n).toNat

end

end A296963.P10701366977220510216

/-! ## A296963.P431635022533513330

`A003003(A181543(n))`
-/

namespace A296963.P431635022533513330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A181543 n).toNat

end

end A296963.P431635022533513330

/-! ## A296963.P15799694433857594068

`A061071(A156581(n))`
-/

namespace A296963.P15799694433857594068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A156581 n).toNat

end

end A296963.P15799694433857594068

/-! ## A296963.P4483837159049880783

`A087066(A143007(n))`
-/

namespace A296963.P4483837159049880783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087066 (A143007 n).toNat

end

end A296963.P4483837159049880783

/-!
# A296964: Expansion of e.g.f. (exp(x)-x)*x/(1-x).

The programs for A296964, there is no canonical definition to state claims against.
-/

/-! ## A296964.P10664532848388724617

`n*(1+a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296964.P10664532848388724617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  n * (1 + a (n - 1))

end

end A296964.P10664532848388724617

/-! ## A296964.P15776434632975790874

`char[1]+floor((e-1)*n!)-1`
-/

namespace A296964.P15776434632975790874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (⌊(Real.exp 1 - 1) * (Nat.factorial n : ℝ)⌋ - 1)

end

end A296964.P15776434632975790874

/-! ## A296964.P5712033721666493346

`n*a(xor(-1, -n))+n` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296964.P5712033721666493346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  n * a (Int.xor (-1) (-(n : ℤ))).toNat + n

end

end A296964.P5712033721666493346

/-! ## A296964.P12842242015854686248

`(a(n-1)+1)/n^(-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296964.P12842242015854686248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (a (n - 1) + 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A296964.P12842242015854686248

/-! ## A296964.P17974112998059942594

`2*n-n*(1-a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296964.P17974112998059942594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (2 * n : ℤ) - (n : ℤ) * (1 - a (n - 1))

end

end A296964.P17974112998059942594

/-! ## A296964.P2761293462801215432

`A038157(n)+n`
-/

namespace A296964.P2761293462801215432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038157 n + (n : ℤ)

end

end A296964.P2761293462801215432

/-! ## A296964.P2029690522287085666

`A038156(n)+char[1]`
-/

namespace A296964.P2029690522287085666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038156 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296964.P2029690522287085666

/-! ## A296964.P14029126207678156409

`2*A038158(n)+n`
-/

namespace A296964.P14029126207678156409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038158 n + (n : ℤ)

end

end A296964.P14029126207678156409

/-! ## A296964.P13612721543833931306

`char[A166554(n)]-A166554(n)`
-/

namespace A296964.P13612721543833931306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166554 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A166554 n

end

end A296964.P13612721543833931306

/-!
# A296965: Expansion of x*(1 - x + 2*x^2) / ((1 - x)*(1 - 2*x)).

The programs for A296965, the canonical program `A296965.P4256649214953596418` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296965 has offset 0).

The definition of A296965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296965.P4256649214953596418

`3*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A296965

/-- `3*a(n-1)-2*a(n-2)` -/
def P4256649214953596418.Spec : Prop :=
  ∀ n, P4256649214953596418.a n = A296965 n

theorem P4256649214953596418.correct : P4256649214953596418.Spec := by
  intro n
  simp only [A296965]

end A296965

/-! ## A296965.P15298511307459184250

`floor(2^n-acot(acot(n)))`
-/

namespace A296965.P15298511307459184250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) - SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌋

end

end A296965.P15298511307459184250

namespace A296965

/-- `floor(2^n-acot(acot(n)))` -/
def P15298511307459184250.Spec : Prop :=
  ∀ n, P15298511307459184250.a n = A296965 n

end A296965

/-! ## A296965.P426678727066537247

`2^n-ceil(acot(acot(n)))`
-/

namespace A296965.P426678727066537247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌉

end

end A296965.P426678727066537247

namespace A296965

/-- `2^n-ceil(acot(acot(n)))` -/
def P426678727066537247.Spec : Prop :=
  ∀ n, P426678727066537247.a n = A296965 n

end A296965

/-! ## A296965.P2372982064390849983

`lcm(2, a(n-1)+1)` with `a(0)=0, a(1)=1`
-/

namespace A296965.P2372982064390849983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lcm 2 (a (n - 1) + 1)

end

end A296965.P2372982064390849983

namespace A296965

/-- `lcm(2, a(n-1)+1)` -/
def P2372982064390849983.Spec : Prop :=
  ∀ n, (P2372982064390849983.a n : ℤ) = A296965 n

end A296965

/-! ## A296965.P6758579467810095007

`2*or(1, a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A296965.P6758579467810095007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * Nat.lor 1 (a (n - 1))

end

end A296965.P6758579467810095007

namespace A296965

/-- `2*or(1, a(n-1))` -/
def P6758579467810095007.Spec : Prop :=
  ∀ n, (P6758579467810095007.a n : ℤ) = A296965 n

end A296965

/-! ## A296965.P13446377458937395809

`2^n-(2%(n+1))!`
-/

namespace A296965.P13446377458937395809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.factorial (2 % (n + 1)) : ℤ)

end

end A296965.P13446377458937395809

namespace A296965

/-- `2^n-(2%(n+1))!` -/
def P13446377458937395809.Spec : Prop :=
  ∀ n, P13446377458937395809.a n = A296965 n

end A296965

/-! ## A296965.P15856811598084218406

`floor(2^(n-2^(1-n)))`
-/

namespace A296965.P15856811598084218406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((n : ℚ) - (2 : ℚ) ^ (1 - (n : ℤ) : ℤ) : ℝ)⌋

end

end A296965.P15856811598084218406

namespace A296965

/-- `floor(2^(n-2^(1-n)))` -/
def P15856811598084218406.Spec : Prop :=
  ∀ n, P15856811598084218406.a n = A296965 n

end A296965

/-! ## A296965.P16073795755536782805

`round(2^n-atan(n+1)²)`
-/

namespace A296965.P16073795755536782805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) - Real.arctan (n + 1 : ℝ) ^ 2)

end

end A296965.P16073795755536782805

namespace A296965

/-- `round(2^n-atan(n+1)²)` -/
def P16073795755536782805.Spec : Prop :=
  ∀ n, P16073795755536782805.a n = A296965 n

end A296965

/-! ## A296965.P9021543831129399526

`2*(a(n-1)+1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296965.P9021543831129399526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * (a (n - 1) + 1)

end

end A296965.P9021543831129399526

namespace A296965

/-- `2*(a(n-1)+1)` -/
def P9021543831129399526.Spec : Prop :=
  ∀ n, (P9021543831129399526.a n : ℤ) = A296965 n

end A296965

/-! ## A296965.P18387078706908554763

`2*xor(1, a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296965.P18387078706908554763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * Nat.xor 1 (a (n - 1))

end

end A296965.P18387078706908554763

namespace A296965

/-- `2*xor(1, a(n-1))` -/
def P18387078706908554763.Spec : Prop :=
  ∀ n, (P18387078706908554763.a n : ℤ) = A296965 n

end A296965

/-! ## A296965.P13223407518638015818

`∑[2*a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A296965.P13223407518638015818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296965.P13223407518638015818

namespace A296965

/-- `∑[2*a(n-1)]` -/
def P13223407518638015818.Spec : Prop :=
  ∀ n, (P13223407518638015818.a n : ℤ) = A296965 n

end A296965

/-! ## A296965.P13047622186176877300

`4-2*(1-a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296965.P13047622186176877300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  4 - 2 * (1 - a (n - 1))

end

end A296965.P13047622186176877300

namespace A296965

/-- `4-2*(1-a(n-1))` -/
def P13047622186176877300.Spec : Prop :=
  ∀ n, P13047622186176877300.a n = A296965 n

end A296965

/-! ## A296965.P3731751991254380845

`a(n-1)+2^(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296965.P3731751991254380845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A296965.P3731751991254380845

namespace A296965

/-- `a(n-1)+2^(n-1)` -/
def P3731751991254380845.Spec : Prop :=
  ∀ n, P3731751991254380845.a n = (A296965 n : ℚ)

end A296965

/-! ## A296965.P8664716679007070473

`or(2^(n-1), a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296965.P8664716679007070473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1))

end

end A296965.P8664716679007070473

namespace A296965

/-- `or(2^(n-1), a(n-1))` -/
def P8664716679007070473.Spec : Prop :=
  ∀ n, P8664716679007070473.a n = A296965 n

end A296965

/-! ## A296965.P11568784861051957912

`xor(2^(n-1), a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296965.P11568784861051957912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1))

end

end A296965.P11568784861051957912

namespace A296965

/-- `xor(2^(n-1), a(n-1))` -/
def P11568784861051957912.Spec : Prop :=
  ∀ n, P11568784861051957912.a n = A296965 n

end A296965

/-! ## A296965.P15318222302227024271

`a(n-1)+a(n-1)+2` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296965.P15318222302227024271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + a (n - 1) + 2

end

end A296965.P15318222302227024271

namespace A296965

/-- `a(n-1)+a(n-1)+2` -/
def P15318222302227024271.Spec : Prop :=
  ∀ n, (P15318222302227024271.a n : ℤ) = A296965 n

end A296965

/-! ## A296965.P6469798331277317522

`2-a(n-1)/(1/2-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A296965.P6469798331277317522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A296965.P6469798331277317522

namespace A296965

/-- `2-a(n-1)/(1/2-1)` -/
def P6469798331277317522.Spec : Prop :=
  ∀ n, P6469798331277317522.a n = (A296965 n : ℚ)

end A296965

/-! ## A296965.P16077442386752893550

`record[xor(1, A077896(n))]`
-/

namespace A296965.P16077442386752893550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A077896 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296965.P16077442386752893550

namespace A296965

/-- `record[xor(1, A077896(n))]` -/
def P16077442386752893550.Spec : Prop :=
  ∀ n, P16077442386752893550.a n = A296965 n

end A296965

/-! ## A296965.P1603267238630744169

`A244750(n+2)-2`
-/

namespace A296965.P1603267238630744169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244750 (n + 2) - 2

end

end A296965.P1603267238630744169

namespace A296965

/-- `A244750(n+2)-2` -/
def P1603267238630744169.Spec : Prop :=
  ∀ n, P1603267238630744169.a n = A296965 n

end A296965

/-!
# A296966: Sum of all the parts in the partitions of n into two distinct parts such that the smaller part divides the larger.

The programs for A296966, the canonical program `A296966.P18250778610313653592` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296966 has offset 1).

The definition of A296966 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023645, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A296966.P18250778610313653592

`(n+1)*A023645(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A296966

/-- `(n+1)*A023645(n+1)` -/
def P18250778610313653592.Spec : Prop :=
  ∀ n, P18250778610313653592.a n = A296966 (n + 1)

theorem P18250778610313653592.correct : P18250778610313653592.Spec := by
  intro n
  simp only [A296966, Nat.add_sub_cancel]

end A296966

/-! ## A296966.P16124235306564920797

`∑{d}[n+1, (n+1)*floor(atan(sqrt(#)))]`
-/

namespace A296966.P16124235306564920797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * ⌊Real.arctan (Real.sqrt (d : ℝ))⌋

end

end A296966.P16124235306564920797

namespace A296966

/-- `∑{d}[n+1, (n+1)*floor(atan(sqrt(#)))]` -/
def P16124235306564920797.Spec : Prop :=
  ∀ n, P16124235306564920797.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P4487506512606906518

`(n+1)/2*∑{d}[n+1, 2%#]`
-/

namespace A296966.P4487506512606906518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * ((∑ d ∈ Nat.divisors (f1 n), 2 % d : ℕ) : ℚ)

end

end A296966.P4487506512606906518

namespace A296966

/-- `(n+1)/2*∑{d}[n+1, 2%#]` -/
def P4487506512606906518.Spec : Prop :=
  ∀ n, P4487506512606906518.a n = (A296966 (n + 1) : ℚ)

end A296966

/-! ## A296966.P9775252376771555649

`A303873(n+1)/(n+1)`
-/

namespace A296966.P9775252376771555649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303873 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A296966.P9775252376771555649

namespace A296966

/-- `A303873(n+1)/(n+1)` -/
def P9775252376771555649.Spec : Prop :=
  ∀ n, P9775252376771555649.a n = (A296966 (n + 1) : ℚ)

end A296966

/-! ## A296966.P3635594998605577125

`A303972(n+1)/(n+1)²`
-/

namespace A296966.P3635594998605577125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303972 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A296966.P3635594998605577125

namespace A296966

/-- `A303972(n+1)/(n+1)²` -/
def P3635594998605577125.Spec : Prop :=
  ∀ n, P3635594998605577125.a n = (A296966 (n + 1) : ℚ)

end A296966

/-! ## A296966.P16694339420233570831

`(n+1)*(A076984(n+1)-1)`
-/

namespace A296966.P16694339420233570831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A076984 (n + 1) - 1)

end

end A296966.P16694339420233570831

namespace A296966

/-- `(n+1)*(A076984(n+1)-1)` -/
def P16694339420233570831.Spec : Prop :=
  ∀ n, P16694339420233570831.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P3215289359851215893

`(n+1)*(A062558(n+1)-2)`
-/

namespace A296966.P3215289359851215893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A062558 (n + 1) - 2)

end

end A296966.P3215289359851215893

namespace A296966

/-- `(n+1)*(A062558(n+1)-2)` -/
def P3215289359851215893.Spec : Prop :=
  ∀ n, P3215289359851215893.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P12223943076420936760

`(n+1)*(A000005(n+1)-1-n%2)`
-/

namespace A296966.P12223943076420936760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000005 (n + 1) - 1 - ((n % 2 : ℕ) : ℤ))

end

end A296966.P12223943076420936760

namespace A296966

/-- `(n+1)*(A000005(n+1)-1-n%2)` -/
def P12223943076420936760.Spec : Prop :=
  ∀ n, P12223943076420936760.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P15563495805287279419

`(n+1)*(A032741(n+1)-val(n²+1, 2))`
-/

namespace A296966.P15563495805287279419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A032741 (n + 1) - (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ))

end

end A296966.P15563495805287279419

namespace A296966

/-- `(n+1)*(A032741(n+1)-val(n²+1, 2))` -/
def P15563495805287279419.Spec : Prop :=
  ∀ n, P15563495805287279419.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P9705572461479768208

`A303972(n+1)%A045896(n)`
-/

namespace A296966.P9705572461479768208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303972 (n + 1)) (A045896 n)

end

end A296966.P9705572461479768208

namespace A296966

/-- `A303972(n+1)%A045896(n)` -/
def P9705572461479768208.Spec : Prop :=
  ∀ n, P9705572461479768208.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P16815289522590049456

`A183207(n+1)-A069553(n+1)`
-/

namespace A296966.P16815289522590049456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183207 (n + 1) - A069553 (n + 1)

end

end A296966.P16815289522590049456

namespace A296966

/-- `A183207(n+1)-A069553(n+1)` -/
def P16815289522590049456.Spec : Prop :=
  ∀ n, P16815289522590049456.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P7141154477708122522

`(n+1)*A023444(A062558(n+1))`
-/

namespace A296966.P7141154477708122522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023444 (A062558 (n + 1)).toNat

end

end A296966.P7141154477708122522

namespace A296966

/-- `(n+1)*A023444(A062558(n+1))` -/
def P7141154477708122522.Spec : Prop :=
  ∀ n, P7141154477708122522.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P2799782118251510807

`(n+1)*A003056(A337363(n+1))`
-/

namespace A296966.P2799782118251510807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003056 (A337363 (n + 1)).toNat

end

end A296966.P2799782118251510807

namespace A296966

/-- `(n+1)*A003056(A337363(n+1))` -/
def P2799782118251510807.Spec : Prop :=
  ∀ n, P2799782118251510807.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P16140477479647766027

`(n+1)*A003056(A348665(n+1))`
-/

namespace A296966.P16140477479647766027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003056 (A348665 (n + 1)).toNat

end

end A296966.P16140477479647766027

namespace A296966

/-- `(n+1)*A003056(A348665(n+1))` -/
def P16140477479647766027.Spec : Prop :=
  ∀ n, P16140477479647766027.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P11471468293648364633

`(n+1)*A052146(A337362(n+1))`
-/

namespace A296966.P11471468293648364633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052146 (A337362 (n + 1)).toNat

end

end A296966.P11471468293648364633

namespace A296966

/-- `(n+1)*A052146(A337362(n+1))` -/
def P11471468293648364633.Spec : Prop :=
  ∀ n, P11471468293648364633.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P10941586468113341808

`A303873(n+1)%A060798(n+1)`
-/

namespace A296966.P10941586468113341808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303873 (n + 1)) (A060798 (n + 1))

end

end A296966.P10941586468113341808

namespace A296966

/-- `A303873(n+1)%A060798(n+1)` -/
def P10941586468113341808.Spec : Prop :=
  ∀ n, P10941586468113341808.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P6326722457999609169

`(n+1)*(A000005(n+1)-A000032(and(1, n-1)))`
-/

namespace A296966.P6326722457999609169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000005 (n + 1) - A000032 (Int.land 1 ((n : ℤ) - 1)).toNat)

end

end A296966.P6326722457999609169

namespace A296966

/-- `(n+1)*(A000005(n+1)-A000032(and(1, n-1)))` -/
def P6326722457999609169.Spec : Prop :=
  ∀ n, P6326722457999609169.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P10164447204727851380

`(n+1)*(Δ[A006218(n)]-A010124(3*n+2))`
-/

namespace A296966.P10164447204727851380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n - A010124 (3 * n + 2))

end

end A296966.P10164447204727851380

namespace A296966

/-- `(n+1)*(Δ[A006218(n)]-A010124(3*n+2))` -/
def P10164447204727851380.Spec : Prop :=
  ∀ n, P10164447204727851380.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P3257261111326836821

`A023645(A080513(2*n))*A080513(2*n)`
-/

namespace A296966.P3257261111326836821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (A080513 (2 * n)).toNat * A080513 (2 * n)

end

end A296966.P3257261111326836821

namespace A296966

/-- `A023645(A080513(2*n))*A080513(2*n)` -/
def P3257261111326836821.Spec : Prop :=
  ∀ n, P3257261111326836821.a n = A296966 (n + 1)

end A296966

/-! ## A296966.P7795037302026595610

`(n+1)*A321014(A003961(n+1))`
-/

namespace A296966.P7795037302026595610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A321014 (A003961 (n + 1)).toNat

end

end A296966.P7795037302026595610

namespace A296966

/-- `(n+1)*A321014(A003961(n+1))` -/
def P7795037302026595610.Spec : Prop :=
  ∀ n, P7795037302026595610.a n = A296966 (n + 1)

end A296966

/-!
# A296967: Number of n X n 0..1 arrays with each 1 adjacent to 2, 4 or 5 king-move neighboring 1's.

The programs for A296967, there is no canonical definition to state claims against.
-/

/-! ## A296967.P15117287965595925510

`A296974(∑[4*n]+1)`
-/

namespace A296967.P15117287965595925510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296967.P15117287965595925510

/-! ## A296967.P3880410072687274156

`record[A296974(A152271(n²))]`
-/

namespace A296967.P3880410072687274156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296967.P3880410072687274156

/-! ## A296967.P9014212449598974261

`and(-1, A296974(A001844(n)))`
-/

namespace A296967.P9014212449598974261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A296974 (A001844 n).toNat)

end

end A296967.P9014212449598974261

/-! ## A296967.P849244404621359885

`record[A296974(A330613(n+1))]`
-/

namespace A296967.P849244404621359885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296967.P849244404621359885

/-! ## A296967.P7871143294732571248

`record[A003982(n)*A296974(n+1)]`
-/

namespace A296967.P7871143294732571248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296967.P7871143294732571248

/-!
# A296968: Number of n X 2 0..1 arrays with each 1 adjacent to 2, 4 or 5 king-move neighboring 1s.

The programs for A296968, the canonical program `A296968.P6703771667017337249` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296968 has offset 1).

The definition of A296968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296968.P6703771667017337249

`2*a(n-1)-a(n-2)+6*a(n-3)-4*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=21, a(4)=59`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A296968

/-- `2*a(n-1)-a(n-2)+6*a(n-3)-4*a(n-4)+2*a(n-5)` -/
def P6703771667017337249.Spec : Prop :=
  ∀ n, P6703771667017337249.a n = A296968 (n + 1)

theorem P6703771667017337249.correct : P6703771667017337249.Spec := by
  intro n
  simp only [A296968, Nat.add_sub_cancel]

end A296968

/-! ## A296968.P13277778389342389801

`record[ratio[A296974(n+1)]]`
-/

namespace A296968.P13277778389342389801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296968.P13277778389342389801

namespace A296968

/-- `record[ratio[A296974(n+1)]]` -/
def P13277778389342389801.Spec : Prop :=
  ∀ n, P13277778389342389801.a n = (A296968 (n + 1) : ℚ)

end A296968

/-! ## A296968.P11833261020701955811

`A296974(∑[n+1]+2)`
-/

namespace A296968.P11833261020701955811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296968.P11833261020701955811

namespace A296968

/-- `A296974(∑[n+1]+2)` -/
def P11833261020701955811.Spec : Prop :=
  ∀ n, P11833261020701955811.a n = A296968 (n + 1)

end A296968

/-! ## A296968.P13747400677973747852

`record[A296974(n+1)/A029847(n)]`
-/

namespace A296968.P13747400677973747852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296974 (n + 1) : ℚ) / (A029847 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296968.P13747400677973747852

namespace A296968

/-- `record[A296974(n+1)/A029847(n)]` -/
def P13747400677973747852.Spec : Prop :=
  ∀ n, P13747400677973747852.a n = (A296968 (n + 1) : ℚ)

end A296968

/-! ## A296968.P7338160379910571832

`record[root(A296974(n+1), A047996(n))]`
-/

namespace A296968.P7338160379910571832
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A296974 (n + 1) : ℝ) ^ (1 / (A047996 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296968.P7338160379910571832

namespace A296968

/-- `record[root(A296974(n+1), A047996(n))]` -/
def P7338160379910571832.Spec : Prop :=
  ∀ n, P7338160379910571832.a n = (A296968 (n + 1) : ℝ)

end A296968

/-!
# A296969: Number of nX3 0..1 arrays with each 1 adjacent to 2, 4 or 5 king-move neighboring 1s.

The programs for A296969, there is no canonical definition to state claims against.
-/

/-! ## A296969.P1915567713603897832

`A296974(∑[n+2]+4)`
-/

namespace A296969.P1915567713603897832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296969.P1915567713603897832

/-! ## A296969.P17862942742083223626

`A296974(A167614(n+1))+A243832(n)`
-/

namespace A296969.P17862942742083223626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A167614 (n + 1)).toNat + A243832 n

end

end A296969.P17862942742083223626

/-! ## A296969.P15098264927507358927

`A296974(A167614(n+1))+A243836(n)`
-/

namespace A296969.P15098264927507358927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A167614 (n + 1)).toNat + A243836 n

end

end A296969.P15098264927507358927

/-! ## A296969.P932783416205762149

`gcd(A000038(n), A296974(A167614(n+1)))`
-/

namespace A296969.P932783416205762149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A296974 (A167614 (n + 1)).toNat)

end

end A296969.P932783416205762149

/-! ## A296969.P16598609199994694387

`lcm(A242179(n), A296974(A167614(n+1)))`
-/

namespace A296969.P16598609199994694387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A242179 n) (A296974 (A167614 (n + 1)).toNat)

end

end A296969.P16598609199994694387

/-!
# A296970: Number of nX4 0..1 arrays with each 1 adjacent to 2, 4 or 5 king-move neighboring 1s.

The programs for A296970, there is no canonical definition to state claims against.
-/

/-! ## A296970.P15615434952797835171

`A296974(A374004(n+1))`
-/

namespace A296970.P15615434952797835171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A374004 (n + 1)).toNat

end

end A296970.P15615434952797835171

/-! ## A296970.P8526396676400912118

`A296974(A141214(n)+7)`
-/

namespace A296970.P8526396676400912118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A141214 n + 7).toNat

end

end A296970.P8526396676400912118

/-! ## A296970.P16420390116787065165

`A296974(A052905(n)+9)`
-/

namespace A296970.P16420390116787065165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A052905 n + 9).toNat

end

end A296970.P16420390116787065165

/-! ## A296970.P8650292979159420011

`A296974(A055999(n)+10)`
-/

namespace A296970.P8650292979159420011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A055999 n + 10).toNat

end

end A296970.P8650292979159420011

/-! ## A296970.P15720224225687158307

`A296974(A167614(n+2)+1)`
-/

namespace A296970.P15720224225687158307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A167614 (n + 2) + 1).toNat

end

end A296970.P15720224225687158307

/-!
# A296971: Number of nX5 0..1 arrays with each 1 adjacent to 2, 4 or 5 king-move neighboring 1s.

The programs for A296971, there is no canonical definition to state claims against.
-/

/-! ## A296971.P14692114304756583309

`A296974(A374005(n+1))`
-/

namespace A296971.P14692114304756583309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A374005 (n + 1)).toNat

end

end A296971.P14692114304756583309

/-! ## A296971.P11486406971029896916

`A296974(A167499(n+3))`
-/

namespace A296971.P11486406971029896916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A167499 (n + 3)).toNat

end

end A296971.P11486406971029896916

/-! ## A296971.P13088151467386537063

`A296974(A155212(n)+13)`
-/

namespace A296971.P13088151467386537063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A155212 n + 13).toNat

end

end A296971.P13088151467386537063

/-! ## A296971.P2321365735660684406

`A296974(A056000(n)+15)`
-/

namespace A296971.P2321365735660684406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A056000 n + 15).toNat

end

end A296971.P2321365735660684406

/-! ## A296971.P12181229230412097139

`A296974(eq[7, A066657(n)])`
-/

namespace A296971.P12181229230412097139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296971.P12181229230412097139

/-!
# A296972: Number of nX6 0..1 arrays with each 1 adjacent to 2, 4 or 5 king-move neighboring 1s.

The programs for A296972, there is no canonical definition to state claims against.
-/

/-! ## A296972.P9113393338989721076

`A296974(A374007(n+1))`
-/

namespace A296972.P9113393338989721076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A374007 (n + 1)).toNat

end

end A296972.P9113393338989721076

/-! ## A296972.P2835652162688530942

`A296974(eq[6, A256910(n)])`
-/

namespace A296972.P2835652162688530942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296972.P2835652162688530942

/-! ## A296972.P2695224251801940784

`A296974(A167499(n+4)+1)`
-/

namespace A296972.P2695224251801940784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A167499 (n + 4) + 1).toNat

end

end A296972.P2695224251801940784

/-! ## A296972.P9636564877461837645

`A296974(eq[7, A131818(n+1)])`
-/

namespace A296972.P9636564877461837645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296972.P9636564877461837645

/-! ## A296972.P10421999178788187275

`A296974(Δ[A023545(n+1)]+10)`
-/

namespace A296972.P10421999178788187275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (f1 (n + 1) - f1 n + 10).toNat

end

end A296972.P10421999178788187275

/-!
# A296973: Number of nX7 0..1 arrays with each 1 adjacent to 2, 4 or 5 king-move neighboring 1s.

The programs for A296973, there is no canonical definition to state claims against.
-/

/-! ## A296973.P8008390261688686328

`A296974(A374008(n+1))`
-/

namespace A296973.P8008390261688686328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A374008 (n + 1)).toNat

end

end A296973.P8008390261688686328

/-! ## A296973.P2218776419310548299

`A296974(A056119(n)+28)`
-/

namespace A296973.P2218776419310548299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A056119 n + 28).toNat

end

end A296973.P2218776419310548299

/-! ## A296973.P1137478437000278102

`A296974(eq[11, A066657(n)])`
-/

namespace A296973.P1137478437000278102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296973.P1137478437000278102

/-! ## A296973.P18023366627985507856

`A296974(A167499(n+5)+2)`
-/

namespace A296973.P18023366627985507856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (A167499 (n + 5) + 2).toNat

end

end A296973.P18023366627985507856

/-! ## A296973.P10344108550025107974

`A296974(eq[8, A131818(n+1)])`
-/

namespace A296973.P10344108550025107974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296973.P10344108550025107974

/-!
# A296974: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 2, 4 or 5 king-move neighboring 1s.

The programs for A296974, there is no canonical definition to state claims against.
-/

/-! ## A296974.P8026880520345377792

`A321993(A296039(n+1))`
-/

namespace A296974.P8026880520345377792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (A296039 (n + 1)).toNat

end

end A296974.P8026880520345377792

/-! ## A296974.P647056545915995014

`A335433(A296405(n+1))`
-/

namespace A296974.P647056545915995014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (A296405 (n + 1)).toNat

end

end A296974.P647056545915995014

/-! ## A296974.P14799916760897277508

`A296039(n+1)+A184955(A096765(n))`
-/

namespace A296974.P14799916760897277508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (n + 1) + A184955 (A096765 n).toNat

end

end A296974.P14799916760897277508

/-! ## A296974.P3225464132038224594

`A296039(n+1)+A060356(A283666(n+1))`
-/

namespace A296974.P3225464132038224594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296039 (n + 1) + A060356 (A283666 (n + 1)).toNat

end

end A296974.P3225464132038224594

/-!
# A296975: Number of aperiodic normal sequences of length n.

The programs for A296975, there is no canonical definition to state claims against.
-/

/-! ## A296975.P14622130720173025933

`(n+1)*A060223(n+1)`
-/

namespace A296975.P14622130720173025933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060223 (n + 1)

end

end A296975.P14622130720173025933

/-! ## A296975.P3646464552147699625

`record[A008611(n)*A060223(A008611(n))]`
-/

namespace A296975.P3646464552147699625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A060223 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296975.P3646464552147699625

/-! ## A296975.P6536529587671410650

`record[A008624(n)*A060223(A008624(n))]`
-/

namespace A296975.P6536529587671410650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n * A060223 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296975.P6536529587671410650

/-! ## A296975.P8916335392150203994

`record[A020986(n)*A060223(A020986(n))]`
-/

namespace A296975.P8916335392150203994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 n * A060223 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296975.P8916335392150203994

/-! ## A296975.P4307354146636404722

`(n+1)*A296372(∑[n]+1)`
-/

namespace A296975.P4307354146636404722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A296372 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296975.P4307354146636404722

/-!
# A296976: List of normal Lyndon sequences ordered first by length and then reverse-lexicographically, where a finite sequence is normal if it spans an initial interval of positive integers.

The programs for A296976, there is no canonical definition to state claims against.
-/

/-! ## A296976.P3319806382215951368

`A262988(n+9)+A146205(n)%2`
-/

namespace A296976.P3319806382215951368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (n + 9) + Int.tmod (A146205 n) 2

end

end A296976.P3319806382215951368

/-! ## A296976.P4131119931303790096

`A007949((∑[A278056(n+1)]+3)²+n+1)+1`
-/

namespace A296976.P4131119931303790096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 ((∑ j ∈ Finset.range (n + 1), f1 j + 3) ^ 2 + (n : ℤ) + 1).toNat + 1

end

end A296976.P4131119931303790096

/-! ## A296976.P5953220662000992763

`A156352(A216345(n+1)+A124227(n))`
-/

namespace A296976.P5953220662000992763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156352 (A216345 (n + 1) + A124227 n).toNat

end

end A296976.P5953220662000992763

/-! ## A296976.P4420127452501283239

`A051064(lcm(A009440(n+1), A133613(n)))`
-/

namespace A296976.P4420127452501283239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (Int.lcm (A009440 (n + 1)) (A133613 n))

end

end A296976.P4420127452501283239

/-! ## A296976.P13200619336071521995

`A300410(A065999(2*n+3)+A007088(n))`
-/

namespace A296976.P13200619336071521995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300410 (A065999 (2 * n + 3) + A007088 n).toNat

end

end A296976.P13200619336071521995

/-!
# A296977: List of normal Lyndon sequences ordered first by length and then lexicographically, where a finite sequence is normal if it spans an initial interval of positive integers.

The programs for A296977, there is no canonical definition to state claims against.
-/

/-! ## A296977.P13315775557856853490

`A115582(A255689(n)+A001175(n+4))`
-/

namespace A296977.P13315775557856853490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115582 (A255689 n + A001175 (n + 4)).toNat

end

end A296977.P13315775557856853490

/-! ## A296977.P9398066428475223146

`A190491(A187903(2*n+5)+A000045(n))`
-/

namespace A296977.P9398066428475223146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190491 (A187903 (2 * n + 5) + A000045 n).toNat

end

end A296977.P9398066428475223146

/-! ## A296977.P509534463068724480

`A194987(∏{e}[A053127(n+5), #])`
-/

namespace A296977.P509534463068724480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053127 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194987 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A296977.P509534463068724480

/-! ## A296977.P840077393779934896

`gcd(A015395(n), A332202(A330447(n)))`
-/

namespace A296977.P840077393779934896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015395 n) (A332202 (A330447 n).toNat)

end

end A296977.P840077393779934896

/-! ## A296977.P5235996715234077074

`A055444(A055482(n+1)-A216637(2*(n+1)))`
-/

namespace A296977.P5235996715234077074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055444 (A055482 (n + 1) - A216637 (2 * (n + 1))).toNat

end

end A296977.P5235996715234077074

/-!
# A296978: List of normal sequences ordered first by length and then lexicographically, where a finite sequence is normal if it spans an initial interval of positive integers.

The programs for A296978, there is no canonical definition to state claims against.
-/

/-! ## A296978.P10941138373494743925

`A001221(abs(A323396(3*n+7)-A145388(n+1))+1)`
-/

namespace A296978.P10941138373494743925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (|A323396 (3 * n + 7) - A145388 (n + 1)| + 1).toNat

end

end A296978.P10941138373494743925

/-! ## A296978.P6445375641186535503

`∏{e}[A143988(A102625(n)), #]`
-/

namespace A296978.P6445375641186535503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (A102625 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A296978.P6445375641186535503

/-! ## A296978.P9007063721484852065

`A284259(A071653(3*n+2)+7)`
-/

namespace A296978.P9007063721484852065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (A071653 (3 * n + 2) + 7).toNat

end

end A296978.P9007063721484852065

/-! ## A296978.P9289919078756059983

`A353489(A187100(n+1)+n)+1`
-/

namespace A296978.P9289919078756059983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 (A187100 (n + 1) + (n : ℤ)).toNat + 1

end

end A296978.P9289919078756059983

/-! ## A296978.P2193146060338280802

`A276088(A024318(n+1)+∑[∏{e}[n, #+1]])`
-/

namespace A296978.P2193146060338280802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 (A024318 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A296978.P2193146060338280802

/-!
# A296982: Expansion of e.g.f. arctanh(log(1 + x)).

The programs for A296982, there is no canonical definition to state claims against.
-/

/-! ## A296982.P2227597183400140338

`A009597(n)+A001205(A237914(n))`
-/

namespace A296982.P2227597183400140338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009597 n + A001205 (A237914 n).toNat

end

end A296982.P2227597183400140338

/-!
# A296983: Number of n X n 0..1 arrays with each 1 adjacent to 3, 4 or 5 king-move neighboring 1's.

The programs for A296983, there is no canonical definition to state claims against.
-/

/-! ## A296983.P7221732655497299250

`A296990(∑[4*n]+1)`
-/

namespace A296983.P7221732655497299250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296983.P7221732655497299250

/-! ## A296983.P5645691068890660313

`record[A003982(n)*A296990(n+1)]`
-/

namespace A296983.P5645691068890660313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296983.P5645691068890660313

/-! ## A296983.P7071231670789525472

`record[A214505(n)*A296990(n+1)]`
-/

namespace A296983.P7071231670789525472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A296990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296983.P7071231670789525472

/-! ## A296983.P2998130808272312212

`record[gcd(A114327(n), A296990(n+1))]`
-/

namespace A296983.P2998130808272312212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A296990 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296983.P2998130808272312212

/-! ## A296983.P2098484219181453339

`A279759(n)*A296990(A001844(n))`
-/

namespace A296983.P2098484219181453339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279759 n * A296990 (A001844 n).toNat

end

end A296983.P2098484219181453339

/-!
# A296984: Number of n X 2 0..1 arrays with each 1 adjacent to 3, 4 or 5 king-move neighboring 1s.

The programs for A296984, there is no canonical definition to state claims against.
-/

/-! ## A296984.P3675461116080892729

`record[ratio[A296990(n+1)]]`
-/

namespace A296984.P3675461116080892729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296984.P3675461116080892729

/-! ## A296984.P2179689787946978421

`A296990(∑[n+1]+2)`
-/

namespace A296984.P2179689787946978421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296984.P2179689787946978421

/-! ## A296984.P1610186976938560335

`record[root(A296990(n+1), A047996(n))]`
-/

namespace A296984.P1610186976938560335
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A296990 (n + 1) : ℝ) ^ (1 / (A047996 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296984.P1610186976938560335

/-! ## A296984.P5381851983452320084

`record[A296990(n+1)/A296990(A028310(n))]`
-/

namespace A296984.P5381851983452320084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296990 (n + 1) : ℚ) / (A296990 (A028310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296984.P5381851983452320084

/-! ## A296984.P15273237468944315874

`A000027(A296990(∑[n+2]))`
-/

namespace A296984.P15273237468944315874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A296990 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A296984.P15273237468944315874

/-!
# A296985: Number of nX3 0..1 arrays with each 1 adjacent to 3, 4 or 5 king-move neighboring 1s.

The programs for A296985, there is no canonical definition to state claims against.
-/

/-! ## A296985.P3973066497966739756

`A296990(∑[n+2]+4)`
-/

namespace A296985.P3973066497966739756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296985.P3973066497966739756

/-! ## A296985.P15276350089312786222

`A296990(A167614(n+1))+A025469(n)`
-/

namespace A296985.P15276350089312786222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A167614 (n + 1)).toNat + A025469 n

end

end A296985.P15276350089312786222

/-! ## A296985.P1742559177776032958

`A296990(A167614(n+1))+A178798(n)`
-/

namespace A296985.P1742559177776032958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A167614 (n + 1)).toNat + A178798 n

end

end A296985.P1742559177776032958

/-! ## A296985.P6761917561916278600

`A296990(A167614(n+1))%A017105(n)`
-/

namespace A296985.P6761917561916278600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296990 (A167614 (n + 1)).toNat) (A017105 n)

end

end A296985.P6761917561916278600

/-! ## A296985.P15238428763073486099

`lcm(A083888(n+1), A296990(A167614(n+1)))`
-/

namespace A296985.P15238428763073486099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083888 (n + 1)) (A296990 (A167614 (n + 1)).toNat)

end

end A296985.P15238428763073486099

/-!
# A296986: Number of nX4 0..1 arrays with each 1 adjacent to 3, 4 or 5 king-move neighboring 1s.

The programs for A296986, there is no canonical definition to state claims against.
-/

/-! ## A296986.P11755414249202418697

`A296990(A374004(n+1))`
-/

namespace A296986.P11755414249202418697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A374004 (n + 1)).toNat

end

end A296986.P11755414249202418697

/-! ## A296986.P1311003270502129145

`A296990(A141214(n)+7)`
-/

namespace A296986.P1311003270502129145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A141214 n + 7).toNat

end

end A296986.P1311003270502129145

/-! ## A296986.P10687468045941889221

`A296990(A052905(n)+9)`
-/

namespace A296986.P10687468045941889221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A052905 n + 9).toNat

end

end A296986.P10687468045941889221

/-! ## A296986.P11278941091765302190

`A296990(A055999(n)+10)`
-/

namespace A296986.P11278941091765302190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A055999 n + 10).toNat

end

end A296986.P11278941091765302190

/-! ## A296986.P17318629360044762503

`A296990(A167614(n+2)+1)`
-/

namespace A296986.P17318629360044762503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A167614 (n + 2) + 1).toNat

end

end A296986.P17318629360044762503

/-!
# A296987: Number of nX5 0..1 arrays with each 1 adjacent to 3, 4 or 5 king-move neighboring 1s.

The programs for A296987, there is no canonical definition to state claims against.
-/

/-! ## A296987.P2052865578605879435

`A296990(A374005(n+1))`
-/

namespace A296987.P2052865578605879435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A374005 (n + 1)).toNat

end

end A296987.P2052865578605879435

/-! ## A296987.P18120374718026747592

`A296990(A167499(n+3))`
-/

namespace A296987.P18120374718026747592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A167499 (n + 3)).toNat

end

end A296987.P18120374718026747592

/-! ## A296987.P17092660800424474017

`A296990(A155212(n)+13)`
-/

namespace A296987.P17092660800424474017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A155212 n + 13).toNat

end

end A296987.P17092660800424474017

/-! ## A296987.P4727114930079644401

`A296990(A056000(n)+15)`
-/

namespace A296987.P4727114930079644401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A056000 n + 15).toNat

end

end A296987.P4727114930079644401

/-! ## A296987.P16084109853435109716

`A296990(eq[7, A066657(n)])`
-/

namespace A296987.P16084109853435109716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296987.P16084109853435109716

/-!
# A296988: Number of nX6 0..1 arrays with each 1 adjacent to 3, 4 or 5 king-move neighboring 1s.

The programs for A296988, there is no canonical definition to state claims against.
-/

/-! ## A296988.P13233060635575427149

`A296990(A374007(n+1))`
-/

namespace A296988.P13233060635575427149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A374007 (n + 1)).toNat

end

end A296988.P13233060635575427149

/-! ## A296988.P5938024188610678761

`A296990(A000124(n+5)+5)`
-/

namespace A296988.P5938024188610678761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A000124 (n + 5) + 5).toNat

end

end A296988.P5938024188610678761

/-! ## A296988.P3909511568571836042

`A296990(A027379(n+3)+9)`
-/

namespace A296988.P3909511568571836042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A027379 (n + 3) + 9).toNat

end

end A296988.P3909511568571836042

/-! ## A296988.P2479724759624059634

`A296990(eq[7, A131818(n+1)])`
-/

namespace A296988.P2479724759624059634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296988.P2479724759624059634

/-! ## A296988.P13313290873536713162

`A296990(eq[3, A219347(n)])`
-/

namespace A296988.P13313290873536713162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296988.P13313290873536713162

/-!
# A296989: Number of n X 7 0..1 arrays with each 1 adjacent to 3, 4 or 5 king-move neighboring 1's.

The programs for A296989, there is no canonical definition to state claims against.
-/

/-! ## A296989.P5367113227435242130

`A296990(A374008(n+1))`
-/

namespace A296989.P5367113227435242130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A374008 (n + 1)).toNat

end

end A296989.P5367113227435242130

/-! ## A296989.P7313400088930750627

`A296990(A056119(n)+28)`
-/

namespace A296989.P7313400088930750627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A056119 n + 28).toNat

end

end A296989.P7313400088930750627

/-! ## A296989.P15167073389164469383

`A296990(eq[8, A131818(n+1)])`
-/

namespace A296989.P15167073389164469383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296989.P15167073389164469383

/-! ## A296989.P289604687223712631

`A296990(A055999(n+4))`
-/

namespace A296989.P289604687223712631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (A055999 (n + 4)).toNat

end

end A296989.P289604687223712631

/-! ## A296989.P9938067835491144293

`A296990(eq[4, A219347(n)])`
-/

namespace A296989.P9938067835491144293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296990 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296989.P9938067835491144293

/-!
# A296990: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 3, 4 or 5 king-move neighboring 1s.

The programs for A296990, there is no canonical definition to state claims against.
-/

/-! ## A296990.P10242008596256652798

`A105209(A022171(n))`
-/

namespace A296990.P10242008596256652798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105209 (A022171 n).toNat

end

end A296990.P10242008596256652798

/-! ## A296990.P1539724761155162539

`A033922(A156764(n))`
-/

namespace A296990.P1539724761155162539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 (A156764 n).toNat

end

end A296990.P1539724761155162539

/-! ## A296990.P13656955264040982345

`A092333(A118180(n))`
-/

namespace A296990.P13656955264040982345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092333 (A118180 n).toNat

end

end A296990.P13656955264040982345

/-! ## A296990.P5589110643533110771

`A122921(A118190(n))`
-/

namespace A296990.P5589110643533110771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A118190 n).toNat

end

end A296990.P5589110643533110771

/-! ## A296990.P12491950498361486099

`A227581(A022168(n))`
-/

namespace A296990.P12491950498361486099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227581 (A022168 n).toNat

end

end A296990.P12491950498361486099

/-!
# A296991: Numbers k such that k^2 divides tau(k), where tau(k) = A000594(k) is Ramanujan's tau function.

The programs for A296991, there is no canonical definition to state claims against.
-/

/-! ## A296991.P11290220498371455167

`record[sqrt(gcd((n+1)², A000594(n+1)))]`
-/

namespace A296991.P11290220498371455167
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd ((n + 1) ^ 2 : ℤ) (A000594 (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296991.P11290220498371455167

/-! ## A296991.P7650708933684546176

`record[gcd(A038218(n), A259433(n+1))]`
-/

namespace A296991.P7650708933684546176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038218 n) (A259433 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296991.P7650708933684546176

/-! ## A296991.P16175835016539030307

`or(A277160(ceil(2^(n-1))), A279542(n+1))`
-/

namespace A296991.P16175835016539030307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277160 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A279542 (n + 1))

end

end A296991.P16175835016539030307

/-! ## A296991.P13565952151028710881

`A102683(A002991(n))+A067947(n+1)`
-/

namespace A296991.P13565952151028710881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A002991 n).toNat + A067947 (n + 1)

end

end A296991.P13565952151028710881

/-! ## A296991.P11171859867688243041

`A305821(A126646(n))+A067947(n+1)`
-/

namespace A296991.P11171859867688243041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305821 (A126646 n).toNat + A067947 (n + 1)

end

end A296991.P11171859867688243041

/-!
# A296992: Largest number m such that n^m divides tau(n), where tau(n) = A000594(n) is Ramanujan's tau function.

The programs for A296992, there is no canonical definition to state claims against.
-/

/-! ## A296992.P15644268274430451884

`val(abs(A289833(n+1)), n+2)`
-/

namespace A296992.P15644268274430451884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A289833 (n + 1)|.toNat (n + 2)

end

end A296992.P15644268274430451884

/-! ## A296992.P10917076409641415506

`val(abs(A000594(n+2)), n+2)`
-/

namespace A296992.P10917076409641415506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A000594 (n + 2)|.toNat (n + 2)

end

end A296992.P10917076409641415506

/-! ## A296992.P4102249883163002400

`val(A249688(n+2), (n+2)²)`
-/

namespace A296992.P4102249883163002400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A249688 (n + 2)).toNat ((n + 2) ^ 2)

end

end A296992.P4102249883163002400

/-! ## A296992.P17821866509742671873

`val(A000594(n+2)², A000290(n+2))`
-/

namespace A296992.P17821866509742671873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000594 (n + 2) ^ 2).toNat (A000290 (n + 2)).toNat

end

end A296992.P17821866509742671873

/-! ## A296992.P4379226534209796394

`val(lcm(2, A000594(n+2)), A000027(n+2))`
-/

namespace A296992.P4379226534209796394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lcm 2 (A000594 (n + 2))) (A000027 (n + 2)).toNat

end

end A296992.P4379226534209796394

/-!
# A296993: Numbers k such that k^3 divides tau(k), where tau(k) = A000594(k) is Ramanujan's tau function.

The programs for A296993, there is no canonical definition to state claims against.
-/

/-! ## A296993.P5550788886730780532

`∩[A316225(n+1), A083854(n)]`
-/

namespace A296993.P5550788886730780532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296993.P5550788886730780532

/-! ## A296993.P16139337417916201596

`filter[A316225(n+1), A065333(#)]`
-/

namespace A296993.P16139337417916201596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A296993.P16139337417916201596

/-! ## A296993.P11225158970110376957

`∩[A193498(n+1), A316225(n+1)]`
-/

namespace A296993.P11225158970110376957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296993.P11225158970110376957

/-! ## A296993.P8515021876884768955

`∩[A081061(n+1), A316225(n+1)]`
-/

namespace A296993.P8515021876884768955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296993.P8515021876884768955

/-! ## A296993.P15173260780009047181

`∩[A081306(n+1), A316225(n+1)]`
-/

namespace A296993.P15173260780009047181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296993.P15173260780009047181

/-!
# A296994: Largest number of points that can be selected from an n X n X n triangular point grid so that no selected point is equally distant from two other selected points on a straight line, which is parallel to one side of the grid.

The programs for A296994, there is no canonical definition to state claims against.
-/

/-! ## A296994.P12521539449879574055

`∑[A049115(A061256(n+3)+A053478(n+4))]`
-/

namespace A296994.P12521539449879574055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A061256 (n + 3) + A053478 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296994.P12521539449879574055

/-! ## A296994.P9346394151968111721

`lt[A104616(3*(n+1)), A233390(A006577(2*n+3))]`
-/

namespace A296994.P9346394151968111721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104616 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233390 (A006577 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296994.P9346394151968111721

/-!
# A296996: Number of nonequivalent (mod D_8) ways to place 3 points on an n X n point grid so that no point is equally distant from two other points on the same row or the same column.

The programs for A296996, there is no canonical definition to state claims against.
-/

/-! ## A296996.P14584871420532694761

`A002330(A234868(n))-1`
-/

namespace A296996.P14584871420532694761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A234868 n).toNat - 1

end

end A296996.P14584871420532694761

/-!
# A296997: Number of ways to place 3 points on an n X n point grid so that no point is equally distant from two other points on the same row or the same column.

The programs for A296997, the canonical program `A296997.P8803801217566714357` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296997 has offset 1).

The definition of A296997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296997.P8803801217566714357

`A178208(n+1)-(n+1)*A007590(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A296997

/-- `A178208(n+1)-(n+1)*A007590(n)` -/
def P8803801217566714357.Spec : Prop :=
  ∀ n, P8803801217566714357.a n = A296997 (n + 1)

theorem P8803801217566714357.correct : P8803801217566714357.Spec := by
  intro n
  simp only [A296997, Nat.add_sub_cancel]

end A296997

/-! ## A296997.P17529493345690103202

`A178208(n+1)-A002620(n)*A103517(n)`
-/

namespace A296997.P17529493345690103202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178208 (n + 1) - A002620 n * A103517 n

end

end A296997.P17529493345690103202

namespace A296997

/-- `A178208(n+1)-A002620(n)*A103517(n)` -/
def P17529493345690103202.Spec : Prop :=
  ∀ n, P17529493345690103202.a n = A296997 (n + 1)

end A296997

/-! ## A296997.P5671949694698409890

`A000125(A005563(n))-A317614(n+1)`
-/

namespace A296997.P5671949694698409890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A005563 n).toNat - A317614 (n + 1)

end

end A296997.P5671949694698409890

namespace A296997

/-- `A000125(A005563(n))-A317614(n+1)` -/
def P5671949694698409890.Spec : Prop :=
  ∀ n, P5671949694698409890.a n = A296997 (n + 1)

end A296997

/-!
# A296999: Number of nonequivalent (mod D_8) ways to place 4 points on an n X n point grid so that no point is equally distant from two other points on the same row or the same column.

The programs for A296999, there is no canonical definition to state claims against.
-/

/-! ## A296999.P12273470089266861083

`A053646(A033119(n+1)-A002262(n))`
-/

namespace A296999.P12273470089266861083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A033119 (n + 1) - A002262 n).toNat

end

end A296999.P12273470089266861083

