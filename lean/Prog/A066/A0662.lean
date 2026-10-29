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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
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
# A066200: a(1) = 1; for n > 1, a(n) = a(n-1)-(n+2) if this is positive and has not already appeared, otherwise a(n) = a(n-1)+(n+2).

The programs for A066200, there is no canonical definition to state claims against.
-/

/-! ## A066200.P8422353752099672318

`A066201(∑[n+5]+5)`
-/

namespace A066200.P8422353752099672318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066201 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A066200.P8422353752099672318

/-! ## A066200.P9838719956601118151

`or(char[1], A066201(A052905(n+2)))`
-/

namespace A066200.P9838719956601118151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A066201 (A052905 (n + 2)).toNat)

end

end A066200.P9838719956601118151

/-! ## A066200.P5350519336136061973

`A066201(A052905(n+2))%A268581(n)`
-/

namespace A066200.P5350519336136061973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066201 (A052905 (n + 2)).toNat) (A268581 n)

end

end A066200.P5350519336136061973

/-! ## A066200.P2349988593166917717

`A000034(2*n)*A066201(A052905(n+2))`
-/

namespace A066200.P2349988593166917717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A066201 (A052905 (n + 2)).toNat

end

end A066200.P2349988593166917717

/-! ## A066200.P9186610542370335487

`A007318(C(2, n))*A066201(A052905(n+2))`
-/

namespace A066200.P9186610542370335487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A066201 (A052905 (n + 2)).toNat

end

end A066200.P9186610542370335487

/-! ## A066200.P16002284465021100410

`A066201(A052905(n+2))+A008683(9*(n+1))`
-/

namespace A066200.P16002284465021100410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066201 (A052905 (n + 2)).toNat + A008683 (9 * (n + 1))

end

end A066200.P16002284465021100410

/-! ## A066200.P14462897642765178011

`A014963(8*n+6)*A066201(A052905(n+2))`
-/

namespace A066200.P14462897642765178011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 6) * A066201 (A052905 (n + 2)).toNat

end

end A066200.P14462897642765178011

/-! ## A066200.P14124478992974816565

`A000041(C(2, n+2))*A066201(A052905(n+2))`
-/

namespace A066200.P14124478992974816565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A066201 (A052905 (n + 2)).toNat

end

end A066200.P14124478992974816565

/-! ## A066200.P6064044689682665786

`A000045(gcd(n, n+1))*A066201(A052905(n+2))`
-/

namespace A066200.P6064044689682665786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A066201 (A052905 (n + 2)).toNat

end

end A066200.P6064044689682665786

/-! ## A066200.P6798556088110527383

`A033999(2*n+1)²*A066201(A052905(n+2))`
-/

namespace A066200.P6798556088110527383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) ^ 2 * A066201 (A052905 (n + 2)).toNat

end

end A066200.P6798556088110527383

/-! ## A066200.P7499097561166694901

`A020639(2*(n+1))+A066201(A052905(n+2))-2`
-/

namespace A066200.P7499097561166694901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (A066201 (A052905 (n + 2)).toNat - 2)

end

end A066200.P7499097561166694901

/-! ## A066200.P1674783023924610501

`A001222(A140566(n+1))*A066201(A052905(n+2))`
-/

namespace A066200.P1674783023924610501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A140566 (n + 1)).toNat * A066201 (A052905 (n + 2)).toNat

end

end A066200.P1674783023924610501

/-!
# A066201: Array read by antidiagonals upwards: for n-th row (n>=0), T(n,0) = 1; for k > 0, T(n,k) = T(n,k-1)-(n+k-1) if this is positive and has not already appeared in this row, otherwise T(n,k) = T(n,k-1)+(n+k-1).

The programs for A066201, there is no canonical definition to state claims against.
-/

/-! ## A066201.P1284040362633316204

`and(A256077(A014476(n+1)), A303273(n))`
-/

namespace A066201.P1284040362633316204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256077 (A014476 (n + 1)).toNat) (A303273 n)

end

end A066201.P1284040362633316204

/-! ## A066201.P11566120897184561934

`A010887(A087401(n)%A072847(n+1))`
-/

namespace A066201.P11566120897184561934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010887 (Int.tmod (A087401 n) (A072847 (n + 1))).toNat

end

end A066201.P11566120897184561934

/-! ## A066201.P12178587411296709814

`and(A007522(A269052(n+1)), A303273(n))`
-/

namespace A066201.P12178587411296709814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007522 (A269052 (n + 1)).toNat) (A303273 n)

end

end A066201.P12178587411296709814

/-! ## A066201.P14791829458649502313

`A318809(A168625(n))+and(7, A087401(n))`
-/

namespace A066201.P14791829458649502313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (A168625 n).toNat + Int.land 7 (A087401 n)

end

end A066201.P14791829458649502313

/-! ## A066201.P10584257723239738938

`A038203(A335997(n))`
-/

namespace A066201.P10584257723239738938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038203 (A335997 n).toNat

end

end A066201.P10584257723239738938

/-!
# A066202: Array T(n,k) (n>=1, k>=1) read by antidiagonals: T(n,n) = 1 for all n; fill in array above diagonal by symmetry; for row n, starting at diagonal T(n,n)=1, for k > n, T(n,k) = T(n,k-1)-(k-1) if this is positive and has not already appeared in this row, otherwise T(n,k) = T(n,k-1)+(k-1).

The programs for A066202, there is no canonical definition to state claims against.
-/

/-! ## A066202.P3769522850973388867

`A027420(n)-A093354(A098361(n))`
-/

namespace A066202.P3769522850973388867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027420 n - A093354 (A098361 n).toNat

end

end A066202.P3769522850973388867

/-! ## A066202.P2830505214950990142

`A027420(n)%A179436(A097610(A029552(n)))`
-/

namespace A066202.P2830505214950990142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027420 n) (A179436 (A097610 (A029552 n).toNat).toNat)

end

end A066202.P2830505214950990142

/-! ## A066202.P6932712805095160308

`A027420(n)%A062241(A004086(n))`
-/

namespace A066202.P6932712805095160308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027420 n) (A062241 (A004086 n).toNat)

end

end A066202.P6932712805095160308

/-!
# A066203: a(1) = 2; a(2) = 1; for n > 2, a(n) = a(n-1)-(n-1) if this is positive and has not already appeared in the sequence, otherwise a(n) = a(n-1)+(n-1).

The programs for A066203, there is no canonical definition to state claims against.
-/

/-! ## A066203.P3114165515718214108

`A066202(∑[n+1]+2)`
-/

namespace A066203.P3114165515718214108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066202 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A066203.P3114165515718214108

/-! ## A066203.P5330223344847098810

`A284258(A000040(n+1))+A066202(A374084(n+1))`
-/

namespace A066203.P5330223344847098810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (A000040 (n + 1)).toNat + A066202 (A374084 (n + 1)).toNat

end

end A066203.P5330223344847098810

/-! ## A066203.P4137377208557297166

`A326291(A000120(n+1))+A066202(A374084(n+1))`
-/

namespace A066203.P4137377208557297166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A000120 (n + 1)).toNat + A066202 (A374084 (n + 1)).toNat

end

end A066203.P4137377208557297166

/-! ## A066203.P14576269480860964472

`A326291(A001227(n+1))+A066202(A374084(n+1))`
-/

namespace A066203.P14576269480860964472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A001227 (n + 1)).toNat + A066202 (A374084 (n + 1)).toNat

end

end A066203.P14576269480860964472

/-! ## A066203.P11674605687346098907

`A326291(A003056(n+1))+A066202(A374084(n+1))`
-/

namespace A066203.P11674605687346098907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A003056 (n + 1)).toNat + A066202 (A374084 (n + 1)).toNat

end

end A066203.P11674605687346098907

/-! ## A066203.P2806384401849492925

`A326291(A066202(n+1))+A066202(A374084(n+1))`
-/

namespace A066203.P2806384401849492925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A066202 (n + 1)).toNat + A066202 (A374084 (n + 1)).toNat

end

end A066203.P2806384401849492925

/-!
# A066204: a(1) = 4; a(2) = 3; a(3) = 1; for n > 3, a(n) = a(n-1)-(n-1) if this is positive and has not already appeared in the sequence, otherwise a(n) = a(n-1)+(n-1).

The programs for A066204, there is no canonical definition to state claims against.
-/

/-! ## A066204.P3218506015707826807

`A066202(A167614(n+1))`
-/

namespace A066204.P3218506015707826807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066202 (A167614 (n + 1)).toNat

end

end A066204.P3218506015707826807

/-! ## A066204.P2122795631429482159

`A066202(A373663(n+1))`
-/

namespace A066204.P2122795631429482159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066202 (A373663 (n + 1)).toNat

end

end A066204.P2122795631429482159

/-! ## A066204.P13647202795995717391

`A066202(A167499(n)+n)`
-/

namespace A066204.P13647202795995717391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066202 (A167499 n + (n : ℤ)).toNat

end

end A066204.P13647202795995717391

/-! ## A066204.P5638464156469394223

`A066202(A134869(n+2)+2)`
-/

namespace A066204.P5638464156469394223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066202 (A134869 (n + 2) + 2).toNat

end

end A066204.P5638464156469394223

/-! ## A066204.P15188063562383874947

`A066202(A000217(n+2)+3)`
-/

namespace A066204.P15188063562383874947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066202 (A000217 (n + 2) + 3).toNat

end

end A066204.P15188063562383874947

/-! ## A066204.P7202405755136875039

`A066202(A034856(n+2))`
-/

namespace A066204.P7202405755136875039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066202 (A034856 (n + 2)).toNat

end

end A066204.P7202405755136875039

/-!
# A066205: a(n) = Product_{k=1..n} prime(2k-1), where prime(k) is k-th prime.

The programs for A066205, the canonical program `A066205.P17265765237187996149` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066205 has offset 1).

The definition of A066205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066205.P17265765237187996149

`a(n-1)*A000040(2*(n+1)-1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066205

/-- `a(n-1)*A000040(2*(n+1)-1)` -/
def P17265765237187996149.Spec : Prop :=
  ∀ n, P17265765237187996149.a n = A066205 (n + 1)

theorem P17265765237187996149.correct : P17265765237187996149.Spec := by
  intro n
  simp only [A066205, Nat.add_sub_cancel]

end A066205

/-! ## A066205.P13453545704551255838

`A079078(Δ[n²])`
-/

namespace A066205.P13453545704551255838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079078 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066205.P13453545704551255838

namespace A066205

/-- `A079078(Δ[n²])` -/
def P13453545704551255838.Spec : Prop :=
  ∀ n, P13453545704551255838.a n = A066205 (n + 1)

end A066205

/-! ## A066205.P10979696649642305743

`∏[A031368(n+1)]`
-/

namespace A066205.P10979696649642305743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066205.P10979696649642305743

namespace A066205

/-- `∏[A031368(n+1)]` -/
def P10979696649642305743.Spec : Prop :=
  ∀ n, P10979696649642305743.a n = A066205 (n + 1)

end A066205

/-! ## A066205.P9796936298791038612

`∏[A000040(Δ[n²])]`
-/

namespace A066205.P9796936298791038612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066205.P9796936298791038612

namespace A066205

/-- `∏[A000040(Δ[n²])]` -/
def P9796936298791038612.Spec : Prop :=
  ∀ n, P9796936298791038612.a n = A066205 (n + 1)

end A066205

/-! ## A066205.P6178845795004614669

`∏[Δ[A355726(2*n)]]`
-/

namespace A066205.P6178845795004614669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355726 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066205.P6178845795004614669

namespace A066205

/-- `∏[Δ[A355726(2*n)]]` -/
def P6178845795004614669.Spec : Prop :=
  ∀ n, P6178845795004614669.a n = A066205 (n + 1)

end A066205

/-!
# A066206: a(n) = Product_{k=1..n} prime(2k), where prime(k) is the k-th prime.

The programs for A066206, the canonical program `A066206.P6457606216093489544` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066206 has offset 1).

The definition of A066206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066206.P6457606216093489544

`a(n-1)*A000040(2*(n+1))` with `a(0)=3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066206

/-- `a(n-1)*A000040(2*(n+1))` -/
def P6457606216093489544.Spec : Prop :=
  ∀ n, P6457606216093489544.a n = A066206 (n + 1)

theorem P6457606216093489544.correct : P6457606216093489544.Spec := by
  intro n
  simp only [A066206, Nat.add_sub_cancel]

end A066206

/-! ## A066206.P9288828848314513319

`∏[A031215(n+1)]`
-/

namespace A066206.P9288828848314513319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066206.P9288828848314513319

namespace A066206

/-- `∏[A031215(n+1)]` -/
def P9288828848314513319.Spec : Prop :=
  ∀ n, P9288828848314513319.a n = A066206 (n + 1)

end A066206

/-! ## A066206.P9348924252079594175

`A079078(2*(n+1))`
-/

namespace A066206.P9348924252079594175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079078 (2 * (n + 1))

end

end A066206.P9348924252079594175

namespace A066206

/-- `A079078(2*(n+1))` -/
def P9348924252079594175.Spec : Prop :=
  ∀ n, P9348924252079594175.a n = A066206 (n + 1)

end A066206

/-! ## A066206.P16644731686656821276

`∏[A051600(∑[n+1])]`
-/

namespace A066206.P16644731686656821276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051600 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066206.P16644731686656821276

namespace A066206

/-- `∏[A051600(∑[n+1])]` -/
def P16644731686656821276.Spec : Prop :=
  ∀ n, P16644731686656821276.a n = A066206 (n + 1)

end A066206

/-! ## A066206.P15889000225640901412

`∏[Δ[A073738(2*n)]]`
-/

namespace A066206.P15889000225640901412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073738 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066206.P15889000225640901412

namespace A066206

/-- `∏[Δ[A073738(2*n)]]` -/
def P15889000225640901412.Spec : Prop :=
  ∀ n, P15889000225640901412.a n = A066206 (n + 1)

end A066206

/-!
# A066207: All primes that divide n are of the form prime(2k), where prime(k) is k-th prime.

The programs for A066207, there is no canonical definition to state claims against.
-/

/-! ## A066207.P15309407218764678323

`sqrt(A352141(n+1))`
-/

namespace A066207.P15309407218764678323
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A352141 (n + 1) : ℝ)

end

end A066207.P15309407218764678323

/-! ## A066207.P13792493447969937747

`filter[A300789(n+1), A335909(#)]`
-/

namespace A066207.P13792493447969937747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A335909 (f1 j).toNat = 1) n)

end

end A066207.P13792493447969937747

/-! ## A066207.P4378490736604972393

`lt[A353372(3*(n+1))+1, 3]+1`
-/

namespace A066207.P4378490736604972393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353372 (3 * (n + 1)) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066207.P4378490736604972393

/-! ## A066207.P8119284916376670679

`filter[A344413(n+1), A335909(#)]`
-/

namespace A066207.P8119284916376670679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A335909 (f1 j).toNat = 1) n)

end

end A066207.P8119284916376670679

/-! ## A066207.P15475197177639482150

`eq[0, A257991(n+1)]+1`
-/

namespace A066207.P15475197177639482150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066207.P15475197177639482150

/-! ## A066207.P4782722614490502534

`lt[A344908(n+1), 1]+1`
-/

namespace A066207.P4782722614490502534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066207.P4782722614490502534

/-! ## A066207.P698485065377734287

`eq[2, gcd(2, A289508(n+1))]+1`
-/

namespace A066207.P698485065377734287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A289508 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066207.P698485065377734287

/-! ## A066207.P2535986075152273442

`eq[1, A007947(A344908(n+1)+1)]+1`
-/

namespace A066207.P2535986075152273442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A344908 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066207.P2535986075152273442

/-! ## A066207.P536407115578067492

`eq[1, A020639(A344908(n+1)+1)]+1`
-/

namespace A066207.P536407115578067492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A344908 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066207.P536407115578067492

/-! ## A066207.P17318163457882325643

`eq[A001222(n+1), A257992(n+1)]+1`
-/

namespace A066207.P17318163457882325643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066207.P17318163457882325643

/-! ## A066207.P14078019263043045710

`filter[A300061(n+1), A335909(#)]`
-/

namespace A066207.P14078019263043045710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A335909 (f1 j).toNat = 1) n)

end

end A066207.P14078019263043045710

/-! ## A066207.P8926337459043130069

`filter[A244990(n+1), A335909(#)]`
-/

namespace A066207.P8926337459043130069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A335909 (f1 j).toNat = 1) n)

end

end A066207.P8926337459043130069

/-! ## A066207.P6319878648260050098

`record[A374611(n+1)]`
-/

namespace A066207.P6319878648260050098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066207.P6319878648260050098

/-! ## A066207.P10282798456729955947

`A374611(A066208(n+1))`
-/

namespace A066207.P10282798456729955947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374611 (A066208 (n + 1)).toNat

end

end A066207.P10282798456729955947

/-! ## A066207.P5993433758254454748

`record[A248101(n+1)]`
-/

namespace A066207.P5993433758254454748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066207.P5993433758254454748

/-! ## A066207.P9467193586104500529

`eq[1, A247503(n+1)]+1`
-/

namespace A066207.P9467193586104500529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066207.P9467193586104500529

/-! ## A066207.P9862337449381916604

`lt[A324966(n+1), 1]+1`
-/

namespace A066207.P9862337449381916604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066207.P9862337449381916604

/-! ## A066207.P16417975146248792529

`lt[A319521(n+1), 2]+1`
-/

namespace A066207.P16417975146248792529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066207.P16417975146248792529

/-! ## A066207.P16204017112769481111

`filter[2*n+1, A247503(#)]`
-/

namespace A066207.P16204017112769481111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A247503 (f1 j) = 1) n)

end

end A066207.P16204017112769481111

/-! ## A066207.P10286901571588705658

`filter[2*n+1, A319521(#)]`
-/

namespace A066207.P10286901571588705658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319521 (f1 j) = 1) n)

end

end A066207.P10286901571588705658

/-!
# A066208: All primes that divide n are of the form prime(2k-1), where prime(k) is k-th prime.

The programs for A066208, the canonical program `A066208.P16602124900019423257` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066208 has offset 1).

The definition of A066208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7387 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066208.P3847523682693547444

`sqrt(A351979(n+1))`
-/

namespace A066208.P3847523682693547444
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A351979 (n + 1) : ℝ)

end

end A066208.P3847523682693547444

namespace A066208

/-- `sqrt(A351979(n+1))` -/
def P3847523682693547444.Spec : Prop :=
  ∀ n, P3847523682693547444.a n = (A066208 (n + 1) : ℝ)

end A066208

/-! ## A066208.P16602124900019423257

`eq[1, A353372(2*(n+1))]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066208

/-- `eq[1, A353372(2*(n+1))]+1` -/
def P16602124900019423257.Spec : Prop :=
  ∀ n, (P16602124900019423257.a n : ℤ) = A066208 (n + 1)

theorem P16602124900019423257.correct : P16602124900019423257.Spec := by
  intro n
  simp only [A066208, Nat.add_sub_cancel]

end A066208

/-! ## A066208.P8012427234297506523

`eq[0, A344931(n+1)]+1`
-/

namespace A066208.P8012427234297506523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066208.P8012427234297506523

namespace A066208

/-- `eq[0, A344931(n+1)]+1` -/
def P8012427234297506523.Spec : Prop :=
  ∀ n, (P8012427234297506523.a n : ℤ) = A066208 (n + 1)

end A066208

/-! ## A066208.P9909743574050590444

`lt[A257992(n+1), 1]+1`
-/

namespace A066208.P9909743574050590444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066208.P9909743574050590444

namespace A066208

/-- `lt[A257992(n+1), 1]+1` -/
def P9909743574050590444.Spec : Prop :=
  ∀ n, (P9909743574050590444.a n : ℤ) = A066208 (n + 1)

end A066208

/-! ## A066208.P11928013258979869845

`record[A247503(n+1)]`
-/

namespace A066208.P11928013258979869845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066208.P11928013258979869845

namespace A066208

/-- `record[A247503(n+1)]` -/
def P11928013258979869845.Spec : Prop :=
  ∀ n, P11928013258979869845.a n = A066208 (n + 1)

end A066208

/-! ## A066208.P15433646484489940988

`eq[1, A248101(n+1)]+1`
-/

namespace A066208.P15433646484489940988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066208.P15433646484489940988

namespace A066208

/-- `eq[1, A248101(n+1)]+1` -/
def P15433646484489940988.Spec : Prop :=
  ∀ n, (P15433646484489940988.a n : ℤ) = A066208 (n + 1)

end A066208

/-! ## A066208.P8359994814696694048

`eq[1, A319522(n+1)]+1`
-/

namespace A066208.P8359994814696694048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066208.P8359994814696694048

namespace A066208

/-- `eq[1, A319522(n+1)]+1` -/
def P8359994814696694048.Spec : Prop :=
  ∀ n, (P8359994814696694048.a n : ℤ) = A066208 (n + 1)

end A066208

/-! ## A066208.P18215037960514977332

`lt[A324967(n+1), 1]+1`
-/

namespace A066208.P18215037960514977332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324967 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066208.P18215037960514977332

namespace A066208

/-- `lt[A324967(n+1), 1]+1` -/
def P18215037960514977332.Spec : Prop :=
  ∀ n, (P18215037960514977332.a n : ℤ) = A066208 (n + 1)

end A066208

/-! ## A066208.P9440309791901613495

`eq[1, A290103(n+1)%2]+1`
-/

namespace A066208.P9440309791901613495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066208.P9440309791901613495

namespace A066208

/-- `eq[1, A290103(n+1)%2]+1` -/
def P9440309791901613495.Spec : Prop :=
  ∀ n, (P9440309791901613495.a n : ℤ) = A066208 (n + 1)

end A066208

/-! ## A066208.P16999828089856834823

`eq[1, ((A156061(n+1)-1)²+1)%2]+1`
-/

namespace A066208.P16999828089856834823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A156061 (n + 1) - 1) ^ 2 + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066208.P16999828089856834823

namespace A066208

/-- `eq[1, ((A156061(n+1)-1)²+1)%2]+1` -/
def P16999828089856834823.Spec : Prop :=
  ∀ n, (P16999828089856834823.a n : ℤ) = A066208 (n + 1)

end A066208

/-! ## A066208.P9256815236033860217

`eq[n, A247503(A004277(n)-n)]`
-/

namespace A066208.P9256815236033860217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066208.P9256815236033860217

namespace A066208

/-- `eq[n, A247503(A004277(n)-n)]` -/
def P9256815236033860217.Spec : Prop :=
  ∀ n, (P9256815236033860217.a n : ℤ) = A066208 (n + 1)

end A066208

/-! ## A066208.P11882955574553797805

`eq[2, A010673(A003963(n+1))]+1`
-/

namespace A066208.P11882955574553797805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066208.P11882955574553797805

namespace A066208

/-- `eq[2, A010673(A003963(n+1))]+1` -/
def P11882955574553797805.Spec : Prop :=
  ∀ n, (P11882955574553797805.a n : ℤ) = A066208 (n + 1)

end A066208

/-! ## A066208.P18110597840083065251

`A247503(lt[n, A247503(n+1)]+1)`
-/

namespace A066208.P18110597840083065251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A066208.P18110597840083065251

namespace A066208

/-- `A247503(lt[n, A247503(n+1)]+1)` -/
def P18110597840083065251.Spec : Prop :=
  ∀ n, P18110597840083065251.a n = A066208 (n + 1)

end A066208

/-! ## A066208.P2997349934056049711

`lt[2, A171977(A003963(n+1)+1)]+1`
-/

namespace A066208.P2997349934056049711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (A003963 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066208.P2997349934056049711

namespace A066208

/-- `lt[2, A171977(A003963(n+1)+1)]+1` -/
def P2997349934056049711.Spec : Prop :=
  ∀ n, (P2997349934056049711.a n : ℤ) = A066208 (n + 1)

end A066208

/-! ## A066208.P15943090026910948385

`eq[A000005(n+1), A000005(A247503(n+1))]+1`
-/

namespace A066208.P15943090026910948385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A247503 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066208.P15943090026910948385

namespace A066208

/-- `eq[A000005(n+1), A000005(A247503(n+1))]+1` -/
def P15943090026910948385.Spec : Prop :=
  ∀ n, (P15943090026910948385.a n : ℤ) = A066208 (n + 1)

end A066208

/-! ## A066208.P16390383267904892276

`eq[A001222(n+1), A001222(A247503(n+1))]+1`
-/

namespace A066208.P16390383267904892276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A247503 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066208.P16390383267904892276

namespace A066208

/-- `eq[A001222(n+1), A001222(A247503(n+1))]+1` -/
def P16390383267904892276.Spec : Prop :=
  ∀ n, (P16390383267904892276.a n : ℤ) = A066208 (n + 1)

end A066208

/-! ## A066208.P3730534771923927397

`eq[1, char[A319525(n+1)]]`
-/

namespace A066208.P3730534771923927397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319525 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066208.P3730534771923927397

namespace A066208

/-- `eq[1, char[A319525(n+1)]]` -/
def P3730534771923927397.Spec : Prop :=
  ∀ n, (P3730534771923927397.a n : ℤ) = A066208 (n + 1)

end A066208

/-! ## A066208.P685149692681890334

`eq[1, A257992(A004277(n)+n)]`
-/

namespace A066208.P685149692681890334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A004277 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066208.P685149692681890334

namespace A066208

/-- `eq[1, A257992(A004277(n)+n)]` -/
def P685149692681890334.Spec : Prop :=
  ∀ n, (P685149692681890334.a n : ℤ) = A066208 (n + 1)

end A066208

/-! ## A066208.P4090378953101225620

`A374611(A066207(n+1))`
-/

namespace A066208.P4090378953101225620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374611 (A066207 (n + 1)).toNat

end

end A066208.P4090378953101225620

namespace A066208

/-- `A374611(A066207(n+1))` -/
def P4090378953101225620.Spec : Prop :=
  ∀ n, P4090378953101225620.a n = A066208 (n + 1)

end A066208

/-! ## A066208.P4997962448832441808

`A374611(record[A374611(n+1)])`
-/

namespace A066208.P4997962448832441808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374611 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066208.P4997962448832441808

namespace A066208

/-- `A374611(record[A374611(n+1)])` -/
def P4997962448832441808.Spec : Prop :=
  ∀ n, P4997962448832441808.a n = A066208 (n + 1)

end A066208

/-!
# A066209: A053041(n)-10^(n-1).

The programs for A066209, the canonical program `A066209.P1765855322789560175` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066209 has offset 1).

The definition of A066209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066209.P1765855322789560175

`A053041(n+1)-10^n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066209

/-- `A053041(n+1)-10^n` -/
def P1765855322789560175.Spec : Prop :=
  ∀ n, P1765855322789560175.a n = A066209 (n + 1)

theorem P1765855322789560175.correct : P1765855322789560175.Spec := by
  intro n
  simp only [A066209, Nat.add_sub_cancel]

end A066209

/-! ## A066209.P16131703820621944842

`(n*A056968(n+1))%(n+1)`
-/

namespace A066209.P16131703820621944842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A056968 (n + 1)) (n + 1 : ℤ)

end

end A066209.P16131703820621944842

namespace A066209

/-- `(n*A056968(n+1))%(n+1)` -/
def P16131703820621944842.Spec : Prop :=
  ∀ n, P16131703820621944842.a n = A066209 (n + 1)

end A066209

/-! ## A066209.P17876788719174575763

`(1-10^n)%(n+1)+n`
-/

namespace A066209.P17876788719174575763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (10 ^ n : ℤ)) (n + 1 : ℤ) + (n : ℤ)

end

end A066209.P17876788719174575763

namespace A066209

/-- `(1-10^n)%(n+1)+n` -/
def P17876788719174575763.Spec : Prop :=
  ∀ n, P17876788719174575763.a n = A066209 (n + 1)

end A066209

/-! ## A066209.P7719918869693536927

`n-A002283(n)%(n+1)`
-/

namespace A066209.P7719918869693536927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A002283 n) (n + 1 : ℤ)

end

end A066209.P7719918869693536927

namespace A066209

/-- `n-A002283(n)%(n+1)` -/
def P7719918869693536927.Spec : Prop :=
  ∀ n, P7719918869693536927.a n = A066209 (n + 1)

end A066209

/-! ## A066209.P8220834879897861923

`n-A024118(n)%(n+1)`
-/

namespace A066209.P8220834879897861923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A024118 n) (n + 1 : ℤ)

end

end A066209.P8220834879897861923

namespace A066209

/-- `n-A024118(n)%(n+1)` -/
def P8220834879897861923.Spec : Prop :=
  ∀ n, P8220834879897861923.a n = A066209 (n + 1)

end A066209

/-! ## A066209.P13250372918538501681

`abs((A011557(n)-1)%(n+1)-n)`
-/

namespace A066209.P13250372918538501681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A011557 n - 1) (n + 1 : ℤ) - (n : ℤ)|

end

end A066209.P13250372918538501681

namespace A066209

/-- `abs((A011557(n)-1)%(n+1)-n)` -/
def P13250372918538501681.Spec : Prop :=
  ∀ n, P13250372918538501681.a n = A066209 (n + 1)

end A066209

/-! ## A066209.P4496333233766199478

`A023443(n+1-A024120(n)%(n+1))`
-/

namespace A066209.P4496333233766199478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n + 1 : ℤ) - Int.tmod (A024120 n) (n + 1 : ℤ)).toNat

end

end A066209.P4496333233766199478

namespace A066209

/-- `A023443(n+1-A024120(n)%(n+1))` -/
def P4496333233766199478.Spec : Prop :=
  ∀ n, P4496333233766199478.a n = A066209 (n + 1)

end A066209

/-! ## A066209.P7965223757545379088

`A023443(n)-A023443(A024120(n)%(n+1))`
-/

namespace A066209.P7965223757545379088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n - A023443 (Int.tmod (A024120 n) (n + 1 : ℤ)).toNat

end

end A066209.P7965223757545379088

namespace A066209

/-- `A023443(n)-A023443(A024120(n)%(n+1))` -/
def P7965223757545379088.Spec : Prop :=
  ∀ n, P7965223757545379088.a n = A066209 (n + 1)

end A066209

/-! ## A066209.P16513179124558791679

`(n*10^n)%(n+1)`
-/

namespace A066209.P16513179124558791679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 10 ^ n % (n + 1)

end

end A066209.P16513179124558791679

namespace A066209

/-- `(n*10^n)%(n+1)` -/
def P16513179124558791679.Spec : Prop :=
  ∀ n, (P16513179124558791679.a n : ℤ) = A066209 (n + 1)

end A066209

/-! ## A066209.P7842935141663244930

`abs((1-A064748(n))%(n+1))`
-/

namespace A066209.P7842935141663244930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (1 - A064748 n) (n + 1 : ℤ)|

end

end A066209.P7842935141663244930

namespace A066209

/-- `abs((1-A064748(n))%(n+1))` -/
def P7842935141663244930.Spec : Prop :=
  ∀ n, P7842935141663244930.a n = A066209 (n + 1)

end A066209

/-!
# A066210: a(n) = ((2*n)^(2*n+2) - 1)/(4*n^2 - 1).

The programs for A066210, the canonical program `A066210.P12054575185968295704` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066210 has offset 0).

The definition of A066210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066210.P12054575185968295704

`((2*n)^(2*n+2)-1)/(4*n²-1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066210

/-- `((2*n)^(2*n+2)-1)/(4*n²-1)` -/
def P12054575185968295704.Spec : Prop :=
  ∀ n, P12054575185968295704.a n = (A066210 n : ℚ)

end A066210

/-! ## A066210.P5546172168889848275

`A128542(n)+A000312(2*n)`
-/

namespace A066210.P5546172168889848275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128542 n + A000312 (2 * n)

end

end A066210.P5546172168889848275

namespace A066210

/-- `A128542(n)+A000312(2*n)` -/
def P5546172168889848275.Spec : Prop :=
  ∀ n, P5546172168889848275.a n = A066210 n

end A066210

/-! ## A066210.P4484193960364926503

`A059848(A077591(n+1))`
-/

namespace A066210.P4484193960364926503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059848 (A077591 (n + 1)).toNat

end

end A066210.P4484193960364926503

namespace A066210

/-- `A059848(A077591(n+1))` -/
def P4484193960364926503.Spec : Prop :=
  ∀ n, P4484193960364926503.a n = A066210 n

end A066210

/-! ## A066210.P12414226099916948139

`A059848(A035008(n)+2)`
-/

namespace A066210.P12414226099916948139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059848 (A035008 n + 2).toNat

end

end A066210.P12414226099916948139

namespace A066210

/-- `A059848(A035008(n)+2)` -/
def P12414226099916948139.Spec : Prop :=
  ∀ n, P12414226099916948139.a n = A066210 n

end A066210

/-!
# A066211: a(n) = Sum_{j=0..n} (2*n)!/(2*n-j)!.

The programs for A066211, the canonical program `A066211.P3650434280499079803` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066211 has offset 0).

The definition of A066211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066211.P3650434280499079803

`∑{#}[n, (2*n)!/(2*n-#)!]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066211

/-- `∑{#}[n, (2*n)!/(2*n-#)!]` -/
def P3650434280499079803.Spec : Prop :=
  ∀ n, P3650434280499079803.a n = (A066211 n : ℚ)

end A066211

/-! ## A066211.P6022854619256877180

`A347667(∑[4*n])`
-/

namespace A066211.P6022854619256877180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347667 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066211.P6022854619256877180

namespace A066211

/-- `A347667(∑[4*n])` -/
def P6022854619256877180.Spec : Prop :=
  ∀ n, P6022854619256877180.a n = A066211 n

end A066211

/-! ## A066211.P7111566419984144789

`record[gcd(A347667(n), A347682(n+1))]`
-/

namespace A066211.P7111566419984144789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A347667 n) (A347682 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066211.P7111566419984144789

namespace A066211

/-- `record[gcd(A347667(n), A347682(n+1))]` -/
def P7111566419984144789.Spec : Prop :=
  ∀ n, (P7111566419984144789.a n : ℤ) = A066211 n

end A066211

/-!
# A066212: A measure of how close the golden ratio is to rational numbers.

The programs for A066212, the canonical program `A066212.P1530386117387948120` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066212 has offset 1).

The definition of A066212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066212.P1530386117387948120

`round(1/(ϕ-round(ϕ*(n+1))/(n+1)))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066212

/-- `round(1/(ϕ-round(ϕ*(n+1))/(n+1)))` -/
def P1530386117387948120.Spec : Prop :=
  ∀ n, P1530386117387948120.a n = A066212 (n + 1)

theorem P1530386117387948120.correct : P1530386117387948120.Spec := by
  intro n
  simp only [A066212, Nat.add_sub_cancel]

end A066212

/-!
# A066213: Numbers which are sums of squares of some subset of divisors.

The programs for A066213, there is no canonical definition to state claims against.
-/

/-! ## A066213.P18319789003898599161

`∪[(n+1)², A066214(n+1)]`
-/

namespace A066213.P18319789003898599161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066213.P18319789003898599161

/-! ## A066213.P2756509106632302641

`eq[log2(A274880(n)), A055641(n)]`
-/

namespace A066213.P2756509106632302641
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A274880 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A066213.P2756509106632302641

/-! ## A066213.P12237293541373571664

`lt[A274880(n), A001223(n+1)]`
-/

namespace A066213.P12237293541373571664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066213.P12237293541373571664

/-! ## A066213.P11617752736419835551

`eq[A274880(n), A317905(n+2)]`
-/

namespace A066213.P11617752736419835551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317905 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066213.P11617752736419835551

/-!
# A066214: Nonsquare numbers which are sums of squares of some subset of divisors.

The programs for A066214, there is no canonical definition to state claims against.
-/

/-! ## A066214.P12571702658539490466

`filter[A066213(n+1), A049240(#)]`
-/

namespace A066214.P12571702658539490466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A066214.P12571702658539490466

/-! ## A066214.P3218769395401052323

`∩[A007624(n+1), A066213(n+1)]`
-/

namespace A066214.P3218769395401052323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066214.P3218769395401052323

/-! ## A066214.P8421544823167736654

`∩[A066213(n+1), A089229(n+1)]`
-/

namespace A066214.P8421544823167736654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066214.P8421544823167736654

/-! ## A066214.P12755097012139756251

`∩[A066213(n+1), A174805(n)]`
-/

namespace A066214.P12755097012139756251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174805 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066214.P12755097012139756251

/-! ## A066214.P16355393340645877636

`∩[A000037(n+1), A066213(n+1)]`
-/

namespace A066214.P16355393340645877636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066214.P16355393340645877636

/-! ## A066214.P7534241692483351055

`filter[A066213(n+1), A267594(#)]`
-/

namespace A066214.P7534241692483351055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A066214.P7534241692483351055

/-! ## A066214.P8376274136745202638

`filter[A066213(n+1), A267612(#)]`
-/

namespace A066214.P8376274136745202638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267612 (f1 j).toNat = 1) n)

end

end A066214.P8376274136745202638

/-! ## A066214.P9012848047518183464

`filter[A066213(n+1), A267635(#)]`
-/

namespace A066214.P9012848047518183464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A066214.P9012848047518183464

/-!
# A066215: Numbers which are sums of cubes of some subset of divisors.

The programs for A066215, there is no canonical definition to state claims against.
-/

/-! ## A066215.P172890967798143680

`A166447(A135572(n+1)%A103008(2*(n+2)))`
-/

namespace A066215.P172890967798143680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166447 (Int.tmod (A135572 (n + 1)) (A103008 (2 * (n + 2)))).toNat

end

end A066215.P172890967798143680

/-! ## A066215.P14056019894407348456

`A121294(A135572(n+1))`
-/

namespace A066215.P14056019894407348456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121294 (A135572 (n + 1)).toNat

end

end A066215.P14056019894407348456

/-! ## A066215.P10143956879684168039

`A121294(A337103(n+1))`
-/

namespace A066215.P10143956879684168039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121294 (A337103 (n + 1)).toNat

end

end A066215.P10143956879684168039

/-!
# A066216: Noncube numbers which are sums of cubes of some subset of divisors.

The programs for A066216, there is no canonical definition to state claims against.
-/

/-! ## A066216.P7345434078876745232

`∑[A092517(A075928(n+1)²)]`
-/

namespace A066216.P7345434078876745232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (A075928 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066216.P7345434078876745232

/-!
# A066218: Numbers k such that sigma(k) = Sum_{j|k, j<k} sigma(j).

The programs for A066218, there is no canonical definition to state claims against.
-/

/-! ## A066218.P18101057647479372288

`A238765(∑[A342335(n)])`
-/

namespace A066218.P18101057647479372288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238765 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066218.P18101057647479372288

/-! ## A066218.P2386077584006877662

`A238765(A077949(n)+n)`
-/

namespace A066218.P2386077584006877662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238765 (A077949 n + (n : ℤ)).toNat

end

end A066218.P2386077584006877662

/-!
# A066219: Numbers n such that |phi(n+1)-phi(n)| = |d(n+1)-d(n)|, where phi is Euler's totient function and d(n) = number of divisors of n.

The programs for A066219, there is no canonical definition to state claims against.
-/

/-! ## A066219.P7979442147766468025

`∪[A063069(n+1), A259496(n+1)]`
-/

namespace A066219.P7979442147766468025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066219.P7979442147766468025

/-!
# A066220: Least k > 0 such that t^k = 1 mod (prime(n) - t) for 0 < t < prime(n).

The programs for A066220, there is no canonical definition to state claims against.
-/

/-! ## A066220.P7101116238801766853

`lcm(A000009(n), A028310(A333992(n+1)))`
-/

namespace A066220.P7101116238801766853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000009 n) (A028310 (A333992 (n + 1)).toNat)

end

end A066220.P7101116238801766853

/-! ## A066220.P1020545338990531468

`A307616(A070754(n+1))`
-/

namespace A066220.P1020545338990531468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307616 (A070754 (n + 1)).toNat

end

end A066220.P1020545338990531468

/-! ## A066220.P9625056455250143300

`A307616(A178604(n+1))`
-/

namespace A066220.P9625056455250143300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307616 (A178604 (n + 1)).toNat

end

end A066220.P9625056455250143300

/-! ## A066220.P5905584841144067513

`A307616(A249749(n+1))`
-/

namespace A066220.P5905584841144067513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307616 (A249749 (n + 1)).toNat

end

end A066220.P5905584841144067513

/-!
# A066221: Bisection of A001189.

The programs for A066221, there is no canonical definition to state claims against.
-/

/-! ## A066221.P7153270135001108652

`A066224(n)-1`
-/

namespace A066221.P7153270135001108652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066224 n - 1

end

end A066221.P7153270135001108652

/-! ## A066221.P5698772848240613002

`A001189(Δ[n²])`
-/

namespace A066221.P5698772848240613002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066221.P5698772848240613002

/-! ## A066221.P1203020009004458743

`A000085(Δ[n²])-1`
-/

namespace A066221.P1203020009004458743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A066221.P1203020009004458743

/-! ## A066221.P15318439983356263740

`A378100(Δ[n²])-1`
-/

namespace A066221.P15318439983356263740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378100 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A066221.P15318439983356263740

/-! ## A066221.P12669352614004486837

`abs(1-A000085(2*n+1))`
-/

namespace A066221.P12669352614004486837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000085 (2 * n + 1)|

end

end A066221.P12669352614004486837

/-! ## A066221.P14490870175357988160

`A099020(∑[4*n+1])-1`
-/

namespace A066221.P14490870175357988160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A066221.P14490870175357988160

/-! ## A066221.P4584103361959057400

`record[(A000085(n)-1)*n%2]`
-/

namespace A066221.P4584103361959057400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000085 n - 1) * ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066221.P4584103361959057400

/-! ## A066221.P14898517218152756099

`record[A001189(and(n, n+1)+1)]`
-/

namespace A066221.P14898517218152756099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 (Nat.land n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066221.P14898517218152756099

/-! ## A066221.P9862817311853481449

`lcm(2*n+1, A001189(2*n+1))`
-/

namespace A066221.P9862817311853481449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A001189 (2 * n + 1))

end

end A066221.P9862817311853481449

/-! ## A066221.P9988598037366757390

`A070895(A000384(n+1))-1`
-/

namespace A066221.P9988598037366757390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 (A000384 (n + 1)).toNat - 1

end

end A066221.P9988598037366757390

/-!
# A066222: Bisection of A001189.

The programs for A066222, there is no canonical definition to state claims against.
-/

/-! ## A066222.P18118004463995074472

`∑[abs(Δ[A066223(n)])]`
-/

namespace A066222.P18118004463995074472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066223 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066222.P18118004463995074472

/-! ## A066222.P16349966246021435307

`A066223(n+1)-1`
-/

namespace A066222.P16349966246021435307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066223 (n + 1) - 1

end

end A066222.P16349966246021435307

/-! ## A066222.P16445023726560674922

`A001189(2*(n+1))`
-/

namespace A066222.P16445023726560674922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 (2 * (n + 1))

end

end A066222.P16445023726560674922

/-! ## A066222.P10005192403892542900

`∑[abs(Δ[A000085(2*n)])]`
-/

namespace A066222.P10005192403892542900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066222.P10005192403892542900

/-! ## A066222.P101804519052440406

`A000085(2*(n+1))-1`
-/

namespace A066222.P101804519052440406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (2 * (n + 1)) - 1

end

end A066222.P101804519052440406

/-! ## A066222.P7861575321518293452

`A099020(∑[4*n+3])-1`
-/

namespace A066222.P7861575321518293452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A066222.P7861575321518293452

/-! ## A066222.P14777428304397680474

`2*A001475(2*n+1)-1`
-/

namespace A066222.P14777428304397680474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001475 (2 * n + 1) - 1

end

end A066222.P14777428304397680474

/-! ## A066222.P17301895606633829844

`record[A066223(ceil(abs((1-n)/2)))-1]`
-/

namespace A066222.P17301895606633829844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066223 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066222.P17301895606633829844

/-! ## A066222.P17669834344264361307

`or(1, A001189(A004277(n+1)))`
-/

namespace A066222.P17669834344264361307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001189 (A004277 (n + 1)).toNat)

end

end A066222.P17669834344264361307

/-! ## A066222.P9941535635766939416

`record[gcd(A001189(n+1), A027656(n))]`
-/

namespace A066222.P9941535635766939416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001189 (n + 1)) (A027656 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066222.P9941535635766939416

/-!
# A066223: Bisection of A000085.

The programs for A066223, the canonical program `A066223.P12088294527735748308` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066223 has offset 0).

The definition of A066223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066223.P12088294527735748308

`(4*n-2)*a(n-1)-2*(n-1)*(2*n-3)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066223

/-- `(4*n-2)*a(n-1)-2*(n-1)*(2*n-3)*a(n-2)` -/
def P12088294527735748308.Spec : Prop :=
  ∀ n, P12088294527735748308.a n = A066223 n

theorem P12088294527735748308.correct : P12088294527735748308.Spec := by
  intro n
  simp only [A066223]

end A066223

/-! ## A066223.P7088371144646854823

`A000085(2*n)`
-/

namespace A066223.P7088371144646854823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (2 * n)

end

end A066223.P7088371144646854823

namespace A066223

/-- `A000085(2*n)` -/
def P7088371144646854823.Spec : Prop :=
  ∀ n, P7088371144646854823.a n = A066223 n

end A066223

/-! ## A066223.P331158094359591500

`A070895(n*Δ[n²])`
-/

namespace A066223.P331158094359591500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A066223.P331158094359591500

namespace A066223

/-- `A070895(n*Δ[n²])` -/
def P331158094359591500.Spec : Prop :=
  ∀ n, P331158094359591500.a n = A066223 n

end A066223

/-! ## A066223.P856006209976919722

`A099020(n*Δ[n²])`
-/

namespace A066223.P856006209976919722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A066223.P856006209976919722

namespace A066223

/-- `A099020(n*Δ[n²])` -/
def P856006209976919722.Spec : Prop :=
  ∀ n, P856006209976919722.a n = A066223 n

end A066223

/-! ## A066223.P15431734668137755639

`record[A000085(n)/(-1)^n]`
-/

namespace A066223.P15431734668137755639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066223.P15431734668137755639

namespace A066223

/-- `record[A000085(n)/(-1)^n]` -/
def P15431734668137755639.Spec : Prop :=
  ∀ n, P15431734668137755639.a n = (A066223 n : ℚ)

end A066223

/-! ## A066223.P6788411932610186710

`record[A000085((n-1)^(n%2))]`
-/

namespace A066223.P6788411932610186710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066223.P6788411932610186710

namespace A066223

/-- `record[A000085((n-1)^(n%2))]` -/
def P6788411932610186710.Spec : Prop :=
  ∀ n, P6788411932610186710.a n = A066223 n

end A066223

/-! ## A066223.P10580576599393264595

`A001189(comp[2*(n+1)]+1)+1`
-/

namespace A066223.P10580576599393264595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1

end

end A066223.P10580576599393264595

namespace A066223

/-- `A001189(comp[2*(n+1)]+1)+1` -/
def P10580576599393264595.Spec : Prop :=
  ∀ n, P10580576599393264595.a n = A066223 n

end A066223

/-! ## A066223.P16418409909906002233

`record[A000085(A014681(n))]`
-/

namespace A066223.P16418409909906002233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066223.P16418409909906002233

namespace A066223

/-- `record[A000085(A014681(n))]` -/
def P16418409909906002233.Spec : Prop :=
  ∀ n, P16418409909906002233.a n = A066223 n

end A066223

/-! ## A066223.P564832832907808864

`record[root(A000085(n), A000034(n))]`
-/

namespace A066223.P564832832907808864
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000085 n : ℝ) ^ (1 / (A000034 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066223.P564832832907808864

namespace A066223

/-- `record[root(A000085(n), A000034(n))]` -/
def P564832832907808864.Spec : Prop :=
  ∀ n, P564832832907808864.a n = (A066223 n : ℝ)

end A066223

/-! ## A066223.P2829947224322607450

`A293808(A133263(2*n)-1)`
-/

namespace A066223.P2829947224322607450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A133263 (2 * n) - 1).toNat

end

end A066223.P2829947224322607450

namespace A066223

/-- `A293808(A133263(2*n)-1)` -/
def P2829947224322607450.Spec : Prop :=
  ∀ n, P2829947224322607450.a n = A066223 n

end A066223

/-!
# A066224: Bisection of A000085.

The programs for A066224, there is no canonical definition to state claims against.
-/

/-! ## A066224.P10801975585930522534

`A066221(n)+1`
-/

namespace A066224.P10801975585930522534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066221 n + 1

end

end A066224.P10801975585930522534

/-! ## A066224.P7752974220209749700

`A000085(Δ[n²])`
-/

namespace A066224.P7752974220209749700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066224.P7752974220209749700

/-! ## A066224.P17631555135524766155

`A378100(Δ[n²])`
-/

namespace A066224.P17631555135524766155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378100 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066224.P17631555135524766155

/-! ## A066224.P7039238269926808264

`record[A000085(xor(1, n))]`
-/

namespace A066224.P7039238269926808264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066224.P7039238269926808264

/-! ## A066224.P9922988974405094014

`A001189(Δ[n²])+1`
-/

namespace A066224.P9922988974405094014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A066224.P9922988974405094014

/-! ## A066224.P9406611338634461330

`record[A000085(n*n%2)]`
-/

namespace A066224.P9406611338634461330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066224.P9406611338634461330

/-! ## A066224.P3748791949097595394

`A070895((n+1)*Δ[n²])`
-/

namespace A066224.P3748791949097595394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A066224.P3748791949097595394

/-! ## A066224.P5383603829330783646

`A099020((n+1)*Δ[n²])`
-/

namespace A066224.P5383603829330783646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A066224.P5383603829330783646

/-! ## A066224.P15532309406243507303

`root(A000085(2*n+1), 2)²`
-/

namespace A066224.P15532309406243507303
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000085 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A066224.P15532309406243507303

/-! ## A066224.P18258058808063561278

`record[A000085(A014681(n)+1)]`
-/

namespace A066224.P18258058808063561278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066224.P18258058808063561278

/-!
# A066225: Covering numbers C(n,n-4,n-5).

The programs for A066225, there is no canonical definition to state claims against.
-/

/-! ## A066225.P13949858317538420115

`∑[∑[A269596(A329732(3*n+2))]+2]`
-/

namespace A066225.P13949858317538420115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269596 (A329732 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066225.P13949858317538420115

/-! ## A066225.P5832155321428406029

`A033547(n+1)+Δ[A006530((n+1)!)]`
-/

namespace A066225.P5832155321428406029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 (n + 1) + (f1 (n + 1) - f1 n)

end

end A066225.P5832155321428406029

/-!
# A066227: Number of digits in Mersenne primes with a prime number of digits.

The programs for A066227, there is no canonical definition to state claims against.
-/

/-! ## A066227.P1543217091324493277

`record[p?[a(n-2)+(n+1)²]]` with `a(0)=2, a(1)=3, a(2)=2`
-/

namespace A066227.P1543217091324493277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2] fun n f2 =>
  f2 (n - 2) + (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066227.P1543217091324493277

/-!
# A066228: The EulerPhi(sigma(EulerPhi))-perfect numbers, where the f-perfect numbers for an arithmetical function f are defined in A066218.

The programs for A066228, there is no canonical definition to state claims against.
-/

/-! ## A066228.P5459514764478969711

`A102110(ceil(ϕ*a(n-2)))` with `a(0)=2, a(1)=4`
-/

namespace A066228.P5459514764478969711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  A102110 ⌈Real.goldenRatio * (a (n - 2) : ℝ)⌉.toNat

end

end A066228.P5459514764478969711

/-!
# A066231: Numbers k such that phi(k) = phi(k-1) - phi(k-2).

The programs for A066231, there is no canonical definition to state claims against.
-/

/-! ## A066231.P15500207637659160938

`A067701(n+1)+1`
-/

namespace A066231.P15500207637659160938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067701 (n + 1) + 1

end

end A066231.P15500207637659160938

/-! ## A066231.P12316507557632889775

`A092486(A067701(n+1))`
-/

namespace A066231.P12316507557632889775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A067701 (n + 1)).toNat

end

end A066231.P12316507557632889775

/-! ## A066231.P4052929205083975214

`A014681(A067701(n+1))`
-/

namespace A066231.P4052929205083975214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A067701 (n + 1)).toNat

end

end A066231.P4052929205083975214

/-!
# A066232: Numbers k such that phi(k) = phi(k-2) - phi(k-1).

The programs for A066232, there is no canonical definition to state claims against.
-/

/-! ## A066232.P4754425025367323565

`A197112(n+1)+2`
-/

namespace A066232.P4754425025367323565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197112 (n + 1) + 2

end

end A066232.P4754425025367323565

/-! ## A066232.P6029030638420071698

`A220160(n+1)+1`
-/

namespace A066232.P6029030638420071698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220160 (n + 1) + 1

end

end A066232.P6029030638420071698

/-! ## A066232.P11012548108581586943

`or(1, A220160(-xor(n, -1)))`
-/

namespace A066232.P11012548108581586943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A220160 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A066232.P11012548108581586943

/-! ## A066232.P16519111113374562591

`record[or(1, A220160(A152271(n)))]`
-/

namespace A066232.P16519111113374562591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A220160 (A152271 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066232.P16519111113374562591

/-! ## A066232.P16897903372183131426

`or(1, A220160(A008611(3*n)))`
-/

namespace A066232.P16897903372183131426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A220160 (A008611 (3 * n)).toNat)

end

end A066232.P16897903372183131426

/-! ## A066232.P2508347833802763297

`xor(1, A220160(A008619(2*n)))`
-/

namespace A066232.P2508347833802763297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A220160 (A008619 (2 * n)).toNat)

end

end A066232.P2508347833802763297

/-! ## A066232.P5858704059184221088

`or(1, A220160(A152271(Δ[n²])))`
-/

namespace A066232.P5858704059184221088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A220160 (A152271 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat)

end

end A066232.P5858704059184221088

/-! ## A066232.P4187513656604011169

`xor(A045698(n)!, A220160(-xor(n, -1)))`
-/

namespace A066232.P4187513656604011169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A045698 n).toNat : ℤ) (A220160 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A066232.P4187513656604011169

/-! ## A066232.P7227411018691596884

`xor(A007318(1-(-1)^n), A220160(-xor(n, -1)))`
-/

namespace A066232.P7227411018691596884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (1 - (-1) ^ n).toNat) (A220160 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A066232.P7227411018691596884

/-!
# A066233: Numbers k such that the sum of digits of k^k is a prime.

The programs for A066233, there is no canonical definition to state claims against.
-/

/-! ## A066233.P11200255406664585781

`eq[1, A001222(A066588(n))]`
-/

namespace A066233.P11200255406664585781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066588 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066233.P11200255406664585781

/-! ## A066233.P16812309410489574392

`lt[A167499(n), A020639(A066588(n))²]`
-/

namespace A066233.P16812309410489574392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A066588 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066233.P16812309410489574392

/-! ## A066233.P935145294870988467

`lt[A036537(n+1), A020639(A066588(n))]`
-/

namespace A066233.P935145294870988467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A066588 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066233.P935145294870988467

/-! ## A066233.P15263531123263386628

`lt[A054429(n+1), A020639(A066588(n))]`
-/

namespace A066233.P15263531123263386628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A066588 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066233.P15263531123263386628

/-! ## A066233.P7308979772073190606

`lt[A235199(n)+1, A020639(A066588(n+1))]+1`
-/

namespace A066233.P7308979772073190606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A066588 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066233.P7308979772073190606

/-! ## A066233.P5561961086823474003

`(lt[n+1, A020639(A066588(n+1))]+1)%A167499(n+4)`
-/

namespace A066233.P5561961086823474003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A066588 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) (A167499 (n + 4))

end

end A066233.P5561961086823474003

/-! ## A066233.P14373554551074797164

`eq[1, A238949(A066588(A233583(n+1)))]`
-/

namespace A066233.P14373554551074797164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (A066588 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066233.P14373554551074797164

/-!
# A066234: Theta series of GH39, an extremal unimodular 39-dimensional lattice.

The programs for A066234, there is no canonical definition to state claims against.
-/

/-! ## A066234.P702408529135156780

`A023927((2*n-a(n-1))²)` with `a(0)=1`
-/

namespace A066234.P702408529135156780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023927 (((2 * n : ℤ) - a (n - 1)) ^ 2).toNat

end

end A066234.P702408529135156780

/-!
# A066235: Numbers k such that the sum of digits of k! is a square.

The programs for A066235, there is no canonical definition to state claims against.
-/

/-! ## A066235.P7479879442027738407

`eq[1, A007913(A004152(n))]`
-/

namespace A066235.P7479879442027738407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A004152 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066235.P7479879442027738407

/-! ## A066235.P15328215954438826732

`lt[A010052(n), A000122(A004152(n))]`
-/

namespace A066235.P15328215954438826732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A004152 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066235.P15328215954438826732

/-! ## A066235.P14608781343207014613

`lt[A023969(n), A000122(A004152(n))]`
-/

namespace A066235.P14608781343207014613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A004152 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066235.P14608781343207014613

/-! ## A066235.P9397092364081270495

`lt[A280130(n+4), A000122(A004152(n))]`
-/

namespace A066235.P9397092364081270495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280130 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A004152 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066235.P9397092364081270495

/-!
# A066236: Numbers k such that the sum of digits of k^k is a square.

The programs for A066236, there is no canonical definition to state claims against.
-/

/-! ## A066236.P6148102828468269744

`eq[1, A007913(A066588(n))]`
-/

namespace A066236.P6148102828468269744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A066588 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066236.P6148102828468269744

/-! ## A066236.P12002649520556005197

`lt[A070109(n+1), A000122(A066588(n))]`
-/

namespace A066236.P12002649520556005197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A066588 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066236.P12002649520556005197

/-! ## A066236.P17633257756182975774

`lt[A342004(n+1), A000122(A066588(n))]`
-/

namespace A066236.P17633257756182975774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A066588 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066236.P17633257756182975774

/-! ## A066236.P15519418991534235002

`eq[A053186(A066588(n)), A378008(3*n+4)]`
-/

namespace A066236.P15519418991534235002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A066588 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378008 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066236.P15519418991534235002

/-!
# A066237: First differences give A052849.

The programs for A066237, the canonical program `A066237.P1106044645368667877` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066237 has offset 1).

The definition of A066237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066237.P1106044645368667877

`(n+1)*a(n-1)-n*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066237

/-- `(n+1)*a(n-1)-n*a(n-2)` -/
def P1106044645368667877.Spec : Prop :=
  ∀ n, P1106044645368667877.a n = A066237 (n + 1)

theorem P1106044645368667877.correct : P1106044645368667877.Spec := by
  intro n
  simp only [A066237, Nat.add_sub_cancel]

end A066237

/-! ## A066237.P13542742994493086720

`2*A003422(n+1)-1`
-/

namespace A066237.P13542742994493086720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003422 (n + 1) - 1

end

end A066237.P13542742994493086720

namespace A066237

/-- `2*A003422(n+1)-1` -/
def P13542742994493086720.Spec : Prop :=
  ∀ n, P13542742994493086720.a n = A066237 (n + 1)

end A066237

/-! ## A066237.P6978951251869882237

`∑[2*n!]-1`
-/

namespace A066237.P6978951251869882237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A066237.P6978951251869882237

namespace A066237

/-- `∑[2*n!]-1` -/
def P6978951251869882237.Spec : Prop :=
  ∀ n, P6978951251869882237.a n = A066237 (n + 1)

end A066237

/-! ## A066237.P5257728796691436275

`∑[n!+n!]-1`
-/

namespace A066237.P5257728796691436275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A066237.P5257728796691436275

namespace A066237

/-- `∑[n!+n!]-1` -/
def P5257728796691436275.Spec : Prop :=
  ∀ n, P5257728796691436275.a n = A066237 (n + 1)

end A066237

/-! ## A066237.P13566351193339771650

`∑[∏[n!%2+n]]`
-/

namespace A066237.P13566351193339771650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066237.P13566351193339771650

namespace A066237

/-- `∑[∏[n!%2+n]]` -/
def P13566351193339771650.Spec : Prop :=
  ∀ n, (P13566351193339771650.a n : ℤ) = A066237 (n + 1)

end A066237

/-! ## A066237.P11063804719216221658

`∑[∏[C(n, n²)+n]]`
-/

namespace A066237.P11063804719216221658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066237.P11063804719216221658

namespace A066237

/-- `∑[∏[C(n, n²)+n]]` -/
def P11063804719216221658.Spec : Prop :=
  ∀ n, (P11063804719216221658.a n : ℤ) = A066237 (n + 1)

end A066237

/-! ## A066237.P12600157906325670539

`∑[n!*ceil(cosh(sin(n)))]`
-/

namespace A066237.P12600157906325670539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌈Real.cosh (Real.sin (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066237.P12600157906325670539

namespace A066237

/-- `∑[n!*ceil(cosh(sin(n)))]` -/
def P12600157906325670539.Spec : Prop :=
  ∀ n, P12600157906325670539.a n = A066237 (n + 1)

end A066237

/-! ## A066237.P2624901404797201747

`∑[n*a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A066237.P2624901404797201747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066237.P2624901404797201747

namespace A066237

/-- `∑[n*a(n-1)]` -/
def P2624901404797201747.Spec : Prop :=
  ∀ n, (P2624901404797201747.a n : ℤ) = A066237 (n + 1)

end A066237

/-! ## A066237.P1842179383943386357

`∑[lcm(n, 2*n!)]+1`
-/

namespace A066237.P1842179383943386357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * Nat.factorial n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A066237.P1842179383943386357

namespace A066237

/-- `∑[lcm(n, 2*n!)]+1` -/
def P1842179383943386357.Spec : Prop :=
  ∀ n, (P1842179383943386357.a n : ℤ) = A066237 (n + 1)

end A066237

/-! ## A066237.P13037296267755761362

`a(n-1)+2*n!` with `a(0)=1`
-/

namespace A066237.P13037296267755761362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * Nat.factorial n

end

end A066237.P13037296267755761362

namespace A066237

/-- `a(n-1)+2*n!` -/
def P13037296267755761362.Spec : Prop :=
  ∀ n, (P13037296267755761362.a n : ℤ) = A066237 (n + 1)

end A066237

/-!
# A066241: 1 + number of anti-divisors of n.

The programs for A066241, there is no canonical definition to state claims against.
-/

/-! ## A066241.P7977572210720840042

`A066272(n+1)+1`
-/

namespace A066241.P7977572210720840042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) + 1

end

end A066241.P7977572210720840042

/-! ## A066241.P11556545317948116335

`A218767(n+1)-A032741(n+1)`
-/

namespace A066241.P11556545317948116335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218767 (n + 1) - A032741 (n + 1)

end

end A066241.P11556545317948116335

/-! ## A066241.P13493165980673312372

`A218767(n+1)-Δ[A006218(n)]+1`
-/

namespace A066241.P13493165980673312372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218767 (n + 1) - (f1 (n + 1) - f1 n) + 1

end

end A066241.P13493165980673312372

/-! ## A066241.P8814310548170043945

`A218767(n+1)-Δ[A054519(n)]+1`
-/

namespace A066241.P8814310548170043945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218767 (n + 1) - (f1 (n + 1) - f1 n) + 1

end

end A066241.P8814310548170043945

/-! ## A066241.P9335391232644074619

`A214270(n+1)+1-Δ[A248517(n)]`
-/

namespace A066241.P9335391232644074619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A066241.P9335391232644074619

/-! ## A066241.P8935585468761714935

`A111775(n+1)+A242029(n+1)+1`
-/

namespace A066241.P8935585468761714935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (n + 1) + (A242029 (n + 1) + 1)

end

end A066241.P8935585468761714935

/-! ## A066241.P10821916043489279583

`A218767(n+1)+1-A000005(n+1)`
-/

namespace A066241.P10821916043489279583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218767 (n + 1) + (1 - A000005 (n + 1))

end

end A066241.P10821916043489279583

/-! ## A066241.P2614583779516449693

`A214270(n+1)+2-A001227(n+1)`
-/

namespace A066241.P2614583779516449693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) + (2 - A001227 (n + 1))

end

end A066241.P2614583779516449693

/-! ## A066241.P263604852449450622

`A214270(n+1)-A023443(Δ[A248517(n)])`
-/

namespace A066241.P263604852449450622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) - A023443 (f1 (n + 1) - f1 n).toNat

end

end A066241.P263604852449450622

/-! ## A066241.P14135455628842458042

`A111775(2*n+1)+Δ[A248517(2*n+1)]`
-/

namespace A066241.P14135455628842458042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A066241.P14135455628842458042

/-!
# A066246: a(n) = 0 unless n is a composite number A002808(k) then a(n) = k.

The programs for A066246, the canonical program `A066246.P11504023463901313022` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066246 has offset 1).

The definition of A066246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066246.P11504023463901313022

`A065855(n+1)*A005171(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A066246

/-- `A065855(n+1)*A005171(n+1)` -/
def P11504023463901313022.Spec : Prop :=
  ∀ n, P11504023463901313022.a n = A066246 (n + 1)

theorem P11504023463901313022.correct : P11504023463901313022.Spec := by
  intro n
  simp only [A066246, Nat.add_sub_cancel]

end A066246

/-! ## A066246.P1646034505578449700

`A239968(n+1)+A010051(n+1)-1`
-/

namespace A066246.P1646034505578449700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (n + 1) + A010051 (n + 1) - 1

end

end A066246.P1646034505578449700

namespace A066246

/-- `A239968(n+1)+A010051(n+1)-1` -/
def P1646034505578449700.Spec : Prop :=
  ∀ n, P1646034505578449700.a n = A066246 (n + 1)

theorem P1646034505578449700.correct : P1646034505578449700.Spec := by
  intro n
  simp only [A066246, Nat.add_sub_cancel, A066246.P1646034505578449700.a, A066246.P11504023463901313022.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A065855, A065855.P16805213270251966039.a, A239968, A239968.P9247355313622841393.a, A062298, A062298.P8226643735375377344.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066246

/-! ## A066246.P1476956477176632419

`(A305800(n+1)-2)%(n+1)`
-/

namespace A066246.P1476956477176632419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305800 (n + 1) - 2) (n + 1 : ℤ)

end

end A066246.P1476956477176632419

namespace A066246

/-- `(A305800(n+1)-2)%(n+1)` -/
def P1476956477176632419.Spec : Prop :=
  ∀ n, P1476956477176632419.a n = A066246 (n + 1)

end A066246

/-! ## A066246.P5093817703480708447

`C(2, n+1)+A305801(n+1)-3`
-/

namespace A066246.P5093817703480708447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 1) : ℤ) + (A305801 (n + 1) - 3)

end

end A066246.P5093817703480708447

namespace A066246

/-- `C(2, n+1)+A305801(n+1)-3` -/
def P5093817703480708447.Spec : Prop :=
  ∀ n, P5093817703480708447.a n = A066246 (n + 1)

end A066246

/-! ## A066246.P9647785099983897318

`A065855(A005451(n+1))`
-/

namespace A066246.P9647785099983897318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A005451 (n + 1)).toNat

end

end A066246.P9647785099983897318

namespace A066246

/-- `A065855(A005451(n+1))` -/
def P9647785099983897318.Spec : Prop :=
  ∀ n, P9647785099983897318.a n = A066246 (n + 1)

end A066246

/-! ## A066246.P17618634374340823266

`A289207(A305800(n+1))`
-/

namespace A066246.P17618634374340823266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A305800 (n + 1)).toNat

end

end A066246.P17618634374340823266

namespace A066246

/-- `A289207(A305800(n+1))` -/
def P17618634374340823266.Spec : Prop :=
  ∀ n, P17618634374340823266.a n = A066246 (n + 1)

end A066246

/-! ## A066246.P17762109434764142005

`A028310(A239968(n+1))-1`
-/

namespace A066246.P17762109434764142005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A239968 (n + 1)).toNat - 1

end

end A066246.P17762109434764142005

namespace A066246

/-- `A028310(A239968(n+1))-1` -/
def P17762109434764142005.Spec : Prop :=
  ∀ n, P17762109434764142005.a n = A066246 (n + 1)

end A066246

/-! ## A066246.P7727448447363496059

`A305801(n+1)-A158799(n)`
-/

namespace A066246.P7727448447363496059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1) - A158799 n

end

end A066246.P7727448447363496059

namespace A066246

/-- `A305801(n+1)-A158799(n)` -/
def P7727448447363496059.Spec : Prop :=
  ∀ n, P7727448447363496059.a n = A066246 (n + 1)

end A066246

/-! ## A066246.P15164126012153818571

`A305800(n+1)-sqrt(A123932(n))`
-/

namespace A066246.P15164126012153818571
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A305800 (n + 1) : ℝ) - Real.sqrt (A123932 n : ℝ)

end

end A066246.P15164126012153818571

namespace A066246

/-- `A305800(n+1)-sqrt(A123932(n))` -/
def P15164126012153818571.Spec : Prop :=
  ∀ n, P15164126012153818571.a n = (A066246 (n + 1) : ℝ)

end A066246

/-! ## A066246.P2061856379632473330

`A066136(n+1)-A049084(n+1)`
-/

namespace A066246.P2061856379632473330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 (n + 1) - A049084 (n + 1)

end

end A066246.P2061856379632473330

namespace A066246

/-- `A066136(n+1)-A049084(n+1)` -/
def P2061856379632473330.Spec : Prop :=
  ∀ n, P2061856379632473330.a n = A066246 (n + 1)

end A066246

/-! ## A066246.P13007183458607720690

`A239968(n+1)-A005171(n+1)`
-/

namespace A066246.P13007183458607720690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (n + 1) - A005171 (n + 1)

end

end A066246.P13007183458607720690

namespace A066246

/-- `A239968(n+1)-A005171(n+1)` -/
def P13007183458607720690.Spec : Prop :=
  ∀ n, P13007183458607720690.a n = A066246 (n + 1)

theorem P13007183458607720690.correct : P13007183458607720690.Spec := by
  intro n
  simp only [A066246, Nat.add_sub_cancel, A066246.P13007183458607720690.a, A066246.P11504023463901313022.a, A005171, A005171.P15860856746370777121.a, A065855, A065855.P16805213270251966039.a, A239968, A239968.P9247355313622841393.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A062298, A062298.P8226643735375377344.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066246

/-! ## A066246.P3359330759450279705

`A305800(n+1)+A057428(n)-1`
-/

namespace A066246.P3359330759450279705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) + (A057428 n - 1)

end

end A066246.P3359330759450279705

namespace A066246

/-- `A305800(n+1)+A057428(n)-1` -/
def P3359330759450279705.Spec : Prop :=
  ∀ n, P3359330759450279705.a n = A066246 (n + 1)

end A066246

/-! ## A066246.P9692247048052230132

`A005171(n+1)*A065855(n+1)`
-/

namespace A066246.P9692247048052230132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A065855 (n + 1)

end

end A066246.P9692247048052230132

namespace A066246

/-- `A005171(n+1)*A065855(n+1)` -/
def P9692247048052230132.Spec : Prop :=
  ∀ n, P9692247048052230132.a n = A066246 (n + 1)

theorem P9692247048052230132.correct : P9692247048052230132.Spec := by
  intro n
  simp only [A066246, Nat.add_sub_cancel, A066246.P9692247048052230132.a, A066246.P11504023463901313022.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A066246

/-! ## A066246.P3864759592567047973

`A005171(n+1)*A066136(n+1)`
-/

namespace A066246.P3864759592567047973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A066136 (n + 1)

end

end A066246.P3864759592567047973

namespace A066246

/-- `A005171(n+1)*A066136(n+1)` -/
def P3864759592567047973.Spec : Prop :=
  ∀ n, P3864759592567047973.a n = A066246 (n + 1)

end A066246

/-! ## A066246.P16856585301809081268

`A065855(n+1)*A066247(n+1)`
-/

namespace A066246.P16856585301809081268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) * A066247 (n + 1)

end

end A066246.P16856585301809081268

namespace A066246

/-- `A065855(n+1)*A066247(n+1)` -/
def P16856585301809081268.Spec : Prop :=
  ∀ n, P16856585301809081268.a n = A066246 (n + 1)

end A066246

/-! ## A066246.P6551575877363773888

`A066136(n+1)*A066247(n+1)`
-/

namespace A066246.P6551575877363773888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 (n + 1) * A066247 (n + 1)

end

end A066246.P6551575877363773888

namespace A066246

/-- `A066136(n+1)*A066247(n+1)` -/
def P6551575877363773888.Spec : Prop :=
  ∀ n, P6551575877363773888.a n = A066246 (n + 1)

end A066246

/-! ## A066246.P3448926680940380498

`A065855((n+1)/A089026(n+1))`
-/

namespace A066246.P3448926680940380498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A089026 (n + 1) : ℚ))).toNat

end

end A066246.P3448926680940380498

namespace A066246

/-- `A065855((n+1)/A089026(n+1))` -/
def P3448926680940380498.Spec : Prop :=
  ∀ n, P3448926680940380498.a n = A066246 (n + 1)

end A066246

/-! ## A066246.P4240139000192981215

`A065855(n+1)%A023890(n+1)`
-/

namespace A066246.P4240139000192981215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065855 (n + 1)) (A023890 (n + 1))

end

end A066246.P4240139000192981215

namespace A066246

/-- `A065855(n+1)%A023890(n+1)` -/
def P4240139000192981215.Spec : Prop :=
  ∀ n, P4240139000192981215.a n = A066246 (n + 1)

end A066246

/-! ## A066246.P1310403538917147598

`A073898(n+1)%A026233(n+1)`
-/

namespace A066246.P1310403538917147598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073898 (n + 1)) (A026233 (n + 1))

end

end A066246.P1310403538917147598

namespace A066246

/-- `A073898(n+1)%A026233(n+1)` -/
def P1310403538917147598.Spec : Prop :=
  ∀ n, P1310403538917147598.a n = A066246 (n + 1)

end A066246

/-!
# A066247: Characteristic function of composite numbers: 1 if n is composite else 0.

The programs for A066247, the canonical program `A066247.P15227533178821378383` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066247 has offset 1).

The definition of A066247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066247.P10442593251675785973

`floor(atan(∑{e}[n+1, #]))`
-/

namespace A066247.P10442593251675785973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)⌋

end

end A066247.P10442593251675785973

namespace A066247

/-- `floor(atan(∑{e}[n+1, #]))` -/
def P10442593251675785973.Spec : Prop :=
  ∀ n, P10442593251675785973.a n = A066247 (n + 1)

end A066247

/-! ## A066247.P1098403788683448780

`char[lt[1, ∑{e}[n+1, #]]]`
-/

namespace A066247.P1098403788683448780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A066247.P1098403788683448780

namespace A066247

/-- `char[lt[1, ∑{e}[n+1, #]]]` -/
def P1098403788683448780.Spec : Prop :=
  ∀ n, (P1098403788683448780.a n : ℤ) = A066247 (n + 1)

end A066247

/-! ## A066247.P8060031677942135697

`floor(tan(tanh(∑{e}[n+1, #])))`
-/

namespace A066247.P8060031677942135697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (Real.tanh ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A066247.P8060031677942135697

namespace A066247

/-- `floor(tan(tanh(∑{e}[n+1, #])))` -/
def P8060031677942135697.Spec : Prop :=
  ∀ n, P8060031677942135697.a n = A066247 (n + 1)

end A066247

/-! ## A066247.P6383845673513327538

`floor(asin(tanh(∑{e}[n+1, #])))`
-/

namespace A066247.P6383845673513327538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin (Real.tanh ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A066247.P6383845673513327538

namespace A066247

/-- `floor(asin(tanh(∑{e}[n+1, #])))` -/
def P6383845673513327538.Spec : Prop :=
  ∀ n, P6383845673513327538.a n = A066247 (n + 1)

end A066247

/-! ## A066247.P17070508160702851678

`floor(atan(∏{e}[n+1, cosh(#)]))`
-/

namespace A066247.P17070508160702851678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (∏ p ∈ Nat.primeFactors (f1 n), Real.cosh (Nat.factorization (f1 n) p : ℝ))⌋

end

end A066247.P17070508160702851678

namespace A066247

/-- `floor(atan(∏{e}[n+1, cosh(#)]))` -/
def P17070508160702851678.Spec : Prop :=
  ∀ n, P17070508160702851678.a n = A066247 (n + 1)

end A066247

/-! ## A066247.P9659966709347318066

`floor(sinh(tanh(∑{e}[n+1, #])))`
-/

namespace A066247.P9659966709347318066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.tanh ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A066247.P9659966709347318066

namespace A066247

/-- `floor(sinh(tanh(∑{e}[n+1, #])))` -/
def P9659966709347318066.Spec : Prop :=
  ∀ n, P9659966709347318066.a n = A066247 (n + 1)

end A066247

/-! ## A066247.P18346804921767630957

`floor(acot(acot(∑{e}[n+1, #])))`
-/

namespace A066247.P18346804921767630957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (SequenceMachineLib.acot ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A066247.P18346804921767630957

namespace A066247

/-- `floor(acot(acot(∑{e}[n+1, #])))` -/
def P18346804921767630957.Spec : Prop :=
  ∀ n, P18346804921767630957.a n = A066247 (n + 1)

end A066247

/-! ## A066247.P2767803374027503889

`floor(acot(∏{e}[n+1, acot(#)]))`
-/

namespace A066247.P2767803374027503889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ))⌋

end

end A066247.P2767803374027503889

namespace A066247

/-- `floor(acot(∏{e}[n+1, acot(#)]))` -/
def P2767803374027503889.Spec : Prop :=
  ∀ n, P2767803374027503889.a n = A066247 (n + 1)

end A066247

/-! ## A066247.P15227533178821378383

`C(n, ∏{p}[n+1, C(#, n)])`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066247

/-- `C(n, ∏{p}[n+1, C(#, n)])` -/
def P15227533178821378383.Spec : Prop :=
  ∀ n, (P15227533178821378383.a n : ℤ) = A066247 (n + 1)

theorem P15227533178821378383.correct : P15227533178821378383.Spec := by
  intro n
  simp only [A066247, Nat.add_sub_cancel]

end A066247

/-! ## A066247.P15530556053763662314

`∑{e}[∑{p}[∑{e}[n+1, #], #], #]`
-/

namespace A066247.P15530556053763662314
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A066247.P15530556053763662314

namespace A066247

/-- `∑{e}[∑{p}[∑{e}[n+1, #], #], #]` -/
def P15530556053763662314.Spec : Prop :=
  ∀ n, (P15530556053763662314.a n : ℤ) = A066247 (n + 1)

end A066247

/-! ## A066247.P6541560333361768795

`gcd(2, ∑{e}[n+1, #]!)-1`
-/

namespace A066247.P6541560333361768795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ) - 1

end

end A066247.P6541560333361768795

namespace A066247

/-- `gcd(2, ∑{e}[n+1, #]!)-1` -/
def P6541560333361768795.Spec : Prop :=
  ∀ n, P6541560333361768795.a n = A066247 (n + 1)

end A066247

/-! ## A066247.P12484592533176391898

`and(1, ∑{e}[n+1, #]!+1)`
-/

namespace A066247.P12484592533176391898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + 1)

end

end A066247.P12484592533176391898

namespace A066247

/-- `and(1, ∑{e}[n+1, #]!+1)` -/
def P12484592533176391898.Spec : Prop :=
  ∀ n, (P12484592533176391898.a n : ℤ) = A066247 (n + 1)

end A066247

/-! ## A066247.P10399080313018243431

`char[lt[n+2, ∑{d}[n+1, #]]]`
-/

namespace A066247.P10399080313018243431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A066247.P10399080313018243431

namespace A066247

/-- `char[lt[n+2, ∑{d}[n+1, #]]]` -/
def P10399080313018243431.Spec : Prop :=
  ∀ n, (P10399080313018243431.a n : ℤ) = A066247 (n + 1)

end A066247

/-! ## A066247.P6903800104427253847

`1-∏{p}[n+1, val(#, n+1)]`
-/

namespace A066247.P6903800104427253847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 1) : ℕ) : ℤ)

end

end A066247.P6903800104427253847

namespace A066247

/-- `1-∏{p}[n+1, val(#, n+1)]` -/
def P6903800104427253847.Spec : Prop :=
  ∀ n, P6903800104427253847.a n = A066247 (n + 1)

end A066247

/-! ## A066247.P15984512176959101956

`1-∏{p}[n+1, floor(#/(n+1))]`
-/

namespace A066247.P15984512176959101956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∏ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

end

end A066247.P15984512176959101956

namespace A066247

/-- `1-∏{p}[n+1, floor(#/(n+1))]` -/
def P15984512176959101956.Spec : Prop :=
  ∀ n, P15984512176959101956.a n = A066247 (n + 1)

end A066247

/-! ## A066247.P532697531207979421

`ceil(2/(n+1)*∑{#}[floor(sqrt(n+1))-2, floor((n+1)/(#+2))-floor(n/(#+2))])`
-/

namespace A066247.P532697531207979421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (n + 1) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1).toNat, (⌊(n + 1 : ℚ) / (k + 2 : ℚ)⌋ - ⌊(n : ℚ) / (k + 2 : ℚ)⌋) : ℤ) : ℚ)⌉

end

end A066247.P532697531207979421

namespace A066247

/-- `ceil(2/(n+1)*∑{#}[floor(sqrt(n+1))-2, floor((n+1)/(#+2))-floor(n/(#+2))])` -/
def P532697531207979421.Spec : Prop :=
  ∀ n, P532697531207979421.a n = A066247 (n + 1)

end A066247

/-! ## A066247.P12353742708585979472

`floor(atan(A325765(n)))`
-/

namespace A066247.P12353742708585979472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A325765 n : ℝ)⌋

end

end A066247.P12353742708585979472

namespace A066247

/-- `floor(atan(A325765(n)))` -/
def P12353742708585979472.Spec : Prop :=
  ∀ n, P12353742708585979472.a n = A066247 (n + 1)

end A066247

/-! ## A066247.P6668950809610312871

`char[A072668(n+1)]`
-/

namespace A066247.P6668950809610312871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A066247.P6668950809610312871

namespace A066247

/-- `char[A072668(n+1)]` -/
def P6668950809610312871.Spec : Prop :=
  ∀ n, (P6668950809610312871.a n : ℤ) = A066247 (n + 1)

end A066247

/-! ## A066247.P17155546349014935027

`char[A060462(n+2)]`
-/

namespace A066247.P17155546349014935027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A066247.P17155546349014935027

namespace A066247

/-- `char[A060462(n+2)]` -/
def P17155546349014935027.Spec : Prop :=
  ∀ n, (P17155546349014935027.a n : ℤ) = A066247 (n + 1)

end A066247

/-! ## A066247.P8163499401254171089

`char[A113637(n+3)]`
-/

namespace A066247.P8163499401254171089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113637 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A066247.P8163499401254171089

namespace A066247

/-- `char[A113637(n+3)]` -/
def P8163499401254171089.Spec : Prop :=
  ∀ n, (P8163499401254171089.a n : ℤ) = A066247 (n + 1)

end A066247

/-!
# A066248: a(n) = if n+1 is prime then A049084(n+1)*2 else A066246(n+1)*2 - 1.

The programs for A066248, the canonical program `A066248.P10612536354157230984` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066248 has offset 1).

The definition of A066248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066247, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066248.P10612536354157230984

`A026238(n+2)*2-A066247(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066248

/-- `A026238(n+2)*2-A066247(n+2)` -/
def P10612536354157230984.Spec : Prop :=
  ∀ n, P10612536354157230984.a n = A066248 (n + 1)

theorem P10612536354157230984.correct : P10612536354157230984.Spec := by
  intro n
  simp only [A066248, Nat.add_sub_cancel]

end A066248

/-! ## A066248.P18315352705332672383

`A026238(n+2)+A026238(n+2)-A005171(n+2)`
-/

namespace A066248.P18315352705332672383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (n + 2) + (A026238 (n + 2) - A005171 (n + 2))

end

end A066248.P18315352705332672383

namespace A066248

/-- `A026238(n+2)+A026238(n+2)-A005171(n+2)` -/
def P18315352705332672383.Spec : Prop :=
  ∀ n, P18315352705332672383.a n = A066248 (n + 1)

end A066248

/-! ## A066248.P8708070970608174580

`A073897(n+2)-1`
-/

namespace A066248.P8708070970608174580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073897 (n + 2) - 1

end

end A066248.P8708070970608174580

namespace A066248

/-- `A073897(n+2)-1` -/
def P8708070970608174580.Spec : Prop :=
  ∀ n, P8708070970608174580.a n = A066248 (n + 1)

end A066248

/-! ## A066248.P6569457644508638298

`xor(1, A073898(n+2))-1`
-/

namespace A066248.P6569457644508638298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A073898 (n + 2)) - 1

end

end A066248.P6569457644508638298

namespace A066248

/-- `xor(1, A073898(n+2))-1` -/
def P6569457644508638298.Spec : Prop :=
  ∀ n, P6569457644508638298.a n = A066248 (n + 1)

end A066248

/-! ## A066248.P8989720551569503262

`2*A066136(n+2)-A005171(n+2)`
-/

namespace A066248.P8989720551569503262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066136 (n + 2) - A005171 (n + 2)

end

end A066248.P8989720551569503262

namespace A066248

/-- `2*A066136(n+2)-A005171(n+2)` -/
def P8989720551569503262.Spec : Prop :=
  ∀ n, P8989720551569503262.a n = A066248 (n + 1)

end A066248

/-! ## A066248.P3874586403550828868

`A014681(A066250(n+1))`
-/

namespace A066248.P3874586403550828868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A066250 (n + 1)).toNat

end

end A066248.P3874586403550828868

namespace A066248

/-- `A014681(A066250(n+1))` -/
def P3874586403550828868.Spec : Prop :=
  ∀ n, P3874586403550828868.a n = A066248 (n + 1)

end A066248

/-! ## A066248.P18439456308531587018

`A023443(A073897(n+2))`
-/

namespace A066248.P18439456308531587018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A073897 (n + 2)).toNat

end

end A066248.P18439456308531587018

namespace A066248

/-- `A023443(A073897(n+2))` -/
def P18439456308531587018.Spec : Prop :=
  ∀ n, P18439456308531587018.a n = A066248 (n + 1)

end A066248

/-! ## A066248.P9164820363981520541

`A023444(A073897(n+2)+1)`
-/

namespace A066248.P9164820363981520541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A073897 (n + 2) + 1).toNat

end

end A066248.P9164820363981520541

namespace A066248

/-- `A023444(A073897(n+2)+1)` -/
def P9164820363981520541.Spec : Prop :=
  ∀ n, P9164820363981520541.a n = A066248 (n + 1)

end A066248

/-! ## A066248.P4622185584050112080

`A289207(A073897(n+2)+1)`
-/

namespace A066248.P4622185584050112080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A073897 (n + 2) + 1).toNat

end

end A066248.P4622185584050112080

namespace A066248

/-- `A289207(A073897(n+2)+1)` -/
def P4622185584050112080.Spec : Prop :=
  ∀ n, P4622185584050112080.a n = A066248 (n + 1)

end A066248

/-! ## A066248.P10199001119265680367

`A065190(A073898(n+2))-1`
-/

namespace A066248.P10199001119265680367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A073898 (n + 2)).toNat - 1

end

end A066248.P10199001119265680367

namespace A066248

/-- `A065190(A073898(n+2))-1` -/
def P10199001119265680367.Spec : Prop :=
  ∀ n, P10199001119265680367.a n = A066248 (n + 1)

end A066248

/-! ## A066248.P15938562397081525628

`A066249(A066252(n+1))`
-/

namespace A066248.P15938562397081525628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066249 (A066252 (n + 1)).toNat

end

end A066248.P15938562397081525628

namespace A066248

/-- `A066249(A066252(n+1))` -/
def P15938562397081525628.Spec : Prop :=
  ∀ n, P15938562397081525628.a n = A066248 (n + 1)

end A066248

/-! ## A066248.P218364236713335405

`A260196(A073897(2*(n+1)))+A073897(n+2)`
-/

namespace A066248.P218364236713335405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A073897 (2 * (n + 1))).toNat + A073897 (n + 2)

end

end A066248.P218364236713335405

namespace A066248

/-- `A260196(A073897(2*(n+1)))+A073897(n+2)` -/
def P218364236713335405.Spec : Prop :=
  ∀ n, P218364236713335405.a n = A066248 (n + 1)

end A066248

/-! ## A066248.P1831534628363175936

`A066252(A066249(n+1))`
-/

namespace A066248.P1831534628363175936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066252 (A066249 (n + 1)).toNat

end

end A066248.P1831534628363175936

namespace A066248

/-- `A066252(A066249(n+1))` -/
def P1831534628363175936.Spec : Prop :=
  ∀ n, P1831534628363175936.a n = A066248 (n + 1)

end A066248

/-! ## A066248.P18001434467928768514

`A073898(A026239(n+2))-1`
-/

namespace A066248.P18001434467928768514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (A026239 (n + 2)).toNat - 1

end

end A066248.P18001434467928768514

namespace A066248

/-- `A073898(A026239(n+2))-1` -/
def P18001434467928768514.Spec : Prop :=
  ∀ n, P18001434467928768514.a n = A066248 (n + 1)

end A066248

/-! ## A066248.P383567117526862576

`A002260(C(A073897(n+2), 2))`
-/

namespace A066248.P383567117526862576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Nat.choose (A073897 (n + 2)).toNat 2)

end

end A066248.P383567117526862576

namespace A066248

/-- `A002260(C(A073897(n+2), 2))` -/
def P383567117526862576.Spec : Prop :=
  ∀ n, P383567117526862576.a n = A066248 (n + 1)

end A066248

/-!
# A066249: Inverse permutation to A066248.

The programs for A066249, the canonical program `A066249.P1311895009433369201` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066249 has offset 1).

The definition of A066249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066249.P6681451236733824802

`A129131(n+1)-1`
-/

namespace A066249.P6681451236733824802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129131 (n + 1) - 1

end

end A066249.P6681451236733824802

namespace A066249

/-- `A129131(n+1)-1` -/
def P6681451236733824802.Spec : Prop :=
  ∀ n, P6681451236733824802.a n = A066249 (n + 1)

theorem P6681451236733824802.correct : P6681451236733824802.Spec := by
  intro n
  simp only [A066249, Nat.add_sub_cancel, A066249.P6681451236733824802.a, A066249.P1311895009433369201.a, A067747, A067747.P14118183397394803050.a, A129131, A129131.P6943603048357520983.a, A000035, A000035.P2023072528413494694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A059841, A059841.P7264174615531153985.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066249

/-! ## A066249.P1311895009433369201

`A067747(xor(1, n)+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066249

/-- `A067747(xor(1, n)+1)-1` -/
def P1311895009433369201.Spec : Prop :=
  ∀ n, P1311895009433369201.a n = A066249 (n + 1)

theorem P1311895009433369201.correct : P1311895009433369201.Spec := by
  intro n
  simp only [A066249, Nat.add_sub_cancel]

end A066249

/-! ## A066249.P17309996657324390326

`abs(A129131(Δ[n²]-n)-1)`
-/

namespace A066249.P17309996657324390326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129131 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1|

end

end A066249.P17309996657324390326

namespace A066249

/-- `abs(A129131(Δ[n²]-n)-1)` -/
def P17309996657324390326.Spec : Prop :=
  ∀ n, P17309996657324390326.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P12493079448590929550

`A067747(2*or(1, n)-n)-1`
-/

namespace A066249.P12493079448590929550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * Nat.lor 1 n - n) - 1

end

end A066249.P12493079448590929550

namespace A066249

/-- `A067747(2*or(1, n)-n)-1` -/
def P12493079448590929550.Spec : Prop :=
  ∀ n, P12493079448590929550.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P14589268348865116114

`A066251(A014681(n+1))`
-/

namespace A066249.P14589268348865116114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (A014681 (n + 1)).toNat

end

end A066249.P14589268348865116114

namespace A066249

/-- `A066251(A014681(n+1))` -/
def P14589268348865116114.Spec : Prop :=
  ∀ n, P14589268348865116114.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P18285074337218847456

`A066251(A103889(n+1))`
-/

namespace A066249.P18285074337218847456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (A103889 (n + 1)).toNat

end

end A066249.P18285074337218847456

namespace A066249

/-- `A066251(A103889(n+1))` -/
def P18285074337218847456.Spec : Prop :=
  ∀ n, P18285074337218847456.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P1341731677774590250

`A067747(A004442(n)+1)-1`
-/

namespace A066249.P1341731677774590250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A004442 n + 1).toNat - 1

end

end A066249.P1341731677774590250

namespace A066249

/-- `A067747(A004442(n)+1)-1` -/
def P1341731677774590250.Spec : Prop :=
  ∀ n, P1341731677774590250.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P18010317948750439252

`abs(Δ[A073891(n+1)])-1`
-/

namespace A066249.P18010317948750439252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A066249.P18010317948750439252

namespace A066249

/-- `abs(Δ[A073891(n+1)])-1` -/
def P18010317948750439252.Spec : Prop :=
  ∀ n, P18010317948750439252.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P17504167082351877796

`A073846(xor(1, n+2))-1`
-/

namespace A066249.P17504167082351877796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (Nat.xor 1 (n + 2)) - 1

end

end A066249.P17504167082351877796

namespace A066249

/-- `A073846(xor(1, n+2))-1` -/
def P17504167082351877796.Spec : Prop :=
  ∀ n, P17504167082351877796.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P10642413356280912914

`A073846(1-xor(n, -2))-1`
-/

namespace A066249.P10642413356280912914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (1 - Int.xor (n : ℤ) (-2)).toNat - 1

end

end A066249.P10642413356280912914

namespace A066249

/-- `A073846(1-xor(n, -2))-1` -/
def P10642413356280912914.Spec : Prop :=
  ∀ n, P10642413356280912914.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P7481211007700184997

`A073846(A065190(n+2))-1`
-/

namespace A066249.P7481211007700184997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A065190 (n + 2)).toNat - 1

end

end A066249.P7481211007700184997

namespace A066249

/-- `A073846(A065190(n+2))-1` -/
def P7481211007700184997.Spec : Prop :=
  ∀ n, P7481211007700184997.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P15098487699156652678

`A066253(A066248(n+1))`
-/

namespace A066249.P15098487699156652678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066253 (A066248 (n + 1)).toNat

end

end A066249.P15098487699156652678

namespace A066249

/-- `A066253(A066248(n+1))` -/
def P15098487699156652678.Spec : Prop :=
  ∀ n, P15098487699156652678.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P17594524979315698592

`A023443(A129131(n+1))`
-/

namespace A066249.P17594524979315698592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A129131 (n + 1)).toNat

end

end A066249.P17594524979315698592

namespace A066249

/-- `A023443(A129131(n+1))` -/
def P17594524979315698592.Spec : Prop :=
  ∀ n, P17594524979315698592.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P4842587726348320706

`A023444(A129131(n+1)+1)`
-/

namespace A066249.P4842587726348320706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A129131 (n + 1) + 1).toNat

end

end A066249.P4842587726348320706

namespace A066249

/-- `A023444(A129131(n+1)+1)` -/
def P4842587726348320706.Spec : Prop :=
  ∀ n, P4842587726348320706.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P10685981548610754715

`A289207(A129131(n+1)+1)`
-/

namespace A066249.P10685981548610754715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A129131 (n + 1) + 1).toNat

end

end A066249.P10685981548610754715

namespace A066249

/-- `A289207(A129131(n+1)+1)` -/
def P10685981548610754715.Spec : Prop :=
  ∀ n, P10685981548610754715.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P1526064206254816044

`A026239(A067747(n+1))-1`
-/

namespace A066249.P1526064206254816044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A067747 (n + 1)).toNat - 1

end

end A066249.P1526064206254816044

namespace A066249

/-- `A026239(A067747(n+1))-1` -/
def P1526064206254816044.Spec : Prop :=
  ∀ n, P1526064206254816044.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P368589020494239063

`A026239(A073846(n+2))-1`
-/

namespace A066249.P368589020494239063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A073846 (n + 2)).toNat - 1

end

end A066249.P368589020494239063

namespace A066249

/-- `A026239(A073846(n+2))-1` -/
def P368589020494239063.Spec : Prop :=
  ∀ n, P368589020494239063.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P7772538277929938148

`A066251(A066248(A066251(n+1)))`
-/

namespace A066249.P7772538277929938148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (A066248 (A066251 (n + 1)).toNat).toNat

end

end A066249.P7772538277929938148

namespace A066249

/-- `A066251(A066248(A066251(n+1)))` -/
def P7772538277929938148.Spec : Prop :=
  ∀ n, P7772538277929938148.a n = A066249 (n + 1)

end A066249

/-! ## A066249.P1478078350364248570

`A066255(A066250(A066248(A066255(A066250(n+1)))))`
-/

namespace A066249.P1478078350364248570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066255 (A066250 (A066248 (A066255 (A066250 (n + 1)).toNat).toNat).toNat).toNat

end

end A066249.P1478078350364248570

namespace A066249

/-- `A066255(A066250(A066248(A066255(A066250(n+1)))))` -/
def P1478078350364248570.Spec : Prop :=
  ∀ n, P1478078350364248570.a n = A066249 (n + 1)

end A066249

/-!
# A066250: a(n) = if n+1 is prime then A049084(n+1)*2 - 1 else A066246(n+1)*2.

The programs for A066250, the canonical program `A066250.P6960547078573178582` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066250 has offset 1).

The definition of A066250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066250.P6960547078573178582

`A026238(n+2)*2-A010051(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066250

/-- `A026238(n+2)*2-A010051(n+2)` -/
def P6960547078573178582.Spec : Prop :=
  ∀ n, P6960547078573178582.a n = A066250 (n + 1)

theorem P6960547078573178582.correct : P6960547078573178582.Spec := by
  intro n
  simp only [A066250, Nat.add_sub_cancel]

end A066250

/-! ## A066250.P1448252127205430300

`abs(xor(1, -A066248(n+1)))`
-/

namespace A066250.P1448252127205430300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A066248 (n + 1))|

end

end A066250.P1448252127205430300

namespace A066250

/-- `abs(xor(1, -A066248(n+1)))` -/
def P1448252127205430300.Spec : Prop :=
  ∀ n, P1448252127205430300.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P10098086856237536166

`A073898(n+2)-1`
-/

namespace A066250.P10098086856237536166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (n + 2) - 1

end

end A066250.P10098086856237536166

namespace A066250

/-- `A073898(n+2)-1` -/
def P10098086856237536166.Spec : Prop :=
  ∀ n, P10098086856237536166.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P6477401754201256843

`xor(1, A073897(n+2))-1`
-/

namespace A066250.P6477401754201256843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A073897 (n + 2)) - 1

end

end A066250.P6477401754201256843

namespace A066250

/-- `xor(1, A073897(n+2))-1` -/
def P6477401754201256843.Spec : Prop :=
  ∀ n, P6477401754201256843.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P18336390599148848399

`A026233(n+2)+A066136(n+2)-1`
-/

namespace A066250.P18336390599148848399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 2) + (A066136 (n + 2) - 1)

end

end A066250.P18336390599148848399

namespace A066250

/-- `A026233(n+2)+A066136(n+2)-1` -/
def P18336390599148848399.Spec : Prop :=
  ∀ n, P18336390599148848399.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P2282630700028328071

`2*A066136(n+2)-A010051(n+2)`
-/

namespace A066250.P2282630700028328071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066136 (n + 2) - A010051 (n + 2)

end

end A066250.P2282630700028328071

namespace A066250

/-- `2*A066136(n+2)-A010051(n+2)` -/
def P2282630700028328071.Spec : Prop :=
  ∀ n, P2282630700028328071.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P13453039655121702352

`A004277(A066136(n+2))-A010051(n+2)`
-/

namespace A066250.P13453039655121702352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A066136 (n + 2)).toNat - A010051 (n + 2)

end

end A066250.P13453039655121702352

namespace A066250

/-- `A004277(A066136(n+2))-A010051(n+2)` -/
def P13453039655121702352.Spec : Prop :=
  ∀ n, P13453039655121702352.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P13428232546201863076

`A005843(A066136(n+2))-A080339(n+2)`
-/

namespace A066250.P13428232546201863076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A066136 (n + 2)).toNat - A080339 (n + 2)

end

end A066250.P13428232546201863076

namespace A066250

/-- `A005843(A066136(n+2))-A080339(n+2)` -/
def P13428232546201863076.Spec : Prop :=
  ∀ n, P13428232546201863076.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P2972428852969230113

`A014681(A066248(n+1))`
-/

namespace A066250.P2972428852969230113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A066248 (n + 1)).toNat

end

end A066250.P2972428852969230113

namespace A066250

/-- `A014681(A066248(n+1))` -/
def P2972428852969230113.Spec : Prop :=
  ∀ n, P2972428852969230113.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P6990867538535303022

`A004442(A073897(n+2))-1`
-/

namespace A066250.P6990867538535303022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A073897 (n + 2)).toNat - 1

end

end A066250.P6990867538535303022

namespace A066250

/-- `A004442(A073897(n+2))-1` -/
def P6990867538535303022.Spec : Prop :=
  ∀ n, P6990867538535303022.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P10416203919299369338

`A023443(A073898(n+2))`
-/

namespace A066250.P10416203919299369338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A073898 (n + 2)).toNat

end

end A066250.P10416203919299369338

namespace A066250

/-- `A023443(A073898(n+2))` -/
def P10416203919299369338.Spec : Prop :=
  ∀ n, P10416203919299369338.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P8609421919512903774

`A066251(A066254(n+1))`
-/

namespace A066250.P8609421919512903774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (A066254 (n + 1)).toNat

end

end A066250.P8609421919512903774

namespace A066250

/-- `A066251(A066254(n+1))` -/
def P8609421919512903774.Spec : Prop :=
  ∀ n, P8609421919512903774.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P2386083431701625256

`A260196(A073898(2*(n+1)))+A073898(n+2)`
-/

namespace A066250.P2386083431701625256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A073898 (2 * (n + 1))).toNat + A073898 (n + 2)

end

end A066250.P2386083431701625256

namespace A066250

/-- `A260196(A073898(2*(n+1)))+A073898(n+2)` -/
def P2386083431701625256.Spec : Prop :=
  ∀ n, P2386083431701625256.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P4909276774931247093

`A066254(A066251(n+1))`
-/

namespace A066250.P4909276774931247093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066254 (A066251 (n + 1)).toNat

end

end A066250.P4909276774931247093

namespace A066250

/-- `A066254(A066251(n+1))` -/
def P4909276774931247093.Spec : Prop :=
  ∀ n, P4909276774931247093.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P16529252265618937514

`A066248(A026239(n+2)-1)`
-/

namespace A066250.P16529252265618937514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066248 (A026239 (n + 2) - 1).toNat

end

end A066250.P16529252265618937514

namespace A066250

/-- `A066248(A026239(n+2)-1)` -/
def P16529252265618937514.Spec : Prop :=
  ∀ n, P16529252265618937514.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P13630777863128654772

`A066252(A066249(A066251(A066252(A066249(n+1)))))`
-/

namespace A066250.P13630777863128654772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066252 (A066249 (A066251 (A066252 (A066249 (n + 1)).toNat).toNat).toNat).toNat

end

end A066250.P13630777863128654772

namespace A066250

/-- `A066252(A066249(A066251(A066252(A066249(n+1)))))` -/
def P13630777863128654772.Spec : Prop :=
  ∀ n, P13630777863128654772.a n = A066250 (n + 1)

end A066250

/-! ## A066250.P13565047755932172910

`A267863(A000217(n+1))+A073898(n+2)`
-/

namespace A066250.P13565047755932172910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267863 (A000217 (n + 1)).toNat + A073898 (n + 2)

end

end A066250.P13565047755932172910

namespace A066250

/-- `A267863(A000217(n+1))+A073898(n+2)` -/
def P13565047755932172910.Spec : Prop :=
  ∀ n, P13565047755932172910.a n = A066250 (n + 1)

end A066250

/-!
# A066251: Inverse permutation to A066250.

The programs for A066251, the canonical program `A066251.P7552776329069287313` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066251 has offset 1).

The definition of A066251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066251.P7552776329069287313

`A067747(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066251

/-- `A067747(n+1)-1` -/
def P7552776329069287313.Spec : Prop :=
  ∀ n, P7552776329069287313.a n = A066251 (n + 1)

theorem P7552776329069287313.correct : P7552776329069287313.Spec := by
  intro n
  simp only [A066251, Nat.add_sub_cancel]

end A066251

/-! ## A066251.P7184706889921688973

`A066249(A014681(n+1))`
-/

namespace A066251.P7184706889921688973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066249 (A014681 (n + 1)).toNat

end

end A066251.P7184706889921688973

namespace A066251

/-- `A066249(A014681(n+1))` -/
def P7184706889921688973.Spec : Prop :=
  ∀ n, P7184706889921688973.a n = A066251 (n + 1)

end A066251

/-! ## A066251.P11807766276528295960

`A066249(A103889(n+1))`
-/

namespace A066251.P11807766276528295960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066249 (A103889 (n + 1)).toNat

end

end A066251.P11807766276528295960

namespace A066251

/-- `A066249(A103889(n+1))` -/
def P11807766276528295960.Spec : Prop :=
  ∀ n, P11807766276528295960.a n = A066251 (n + 1)

end A066251

/-! ## A066251.P4664153820978769336

`A073846(n+2)-1`
-/

namespace A066251.P4664153820978769336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 2) - 1

end

end A066251.P4664153820978769336

namespace A066251

/-- `A073846(n+2)-1` -/
def P4664153820978769336.Spec : Prop :=
  ∀ n, P4664153820978769336.a n = A066251 (n + 1)

end A066251

/-! ## A066251.P6119874869913294500

`Δ[A088636(n+1)]-1`
-/

namespace A066251.P6119874869913294500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A066251.P6119874869913294500

namespace A066251

/-- `Δ[A088636(n+1)]-1` -/
def P6119874869913294500.Spec : Prop :=
  ∀ n, P6119874869913294500.a n = A066251 (n + 1)

end A066251

/-! ## A066251.P8130453796311384938

`abs(Δ[A073892(n+1)])-1`
-/

namespace A066251.P8130453796311384938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A066251.P8130453796311384938

namespace A066251

/-- `abs(Δ[A073892(n+1)])-1` -/
def P8130453796311384938.Spec : Prop :=
  ∀ n, P8130453796311384938.a n = A066251 (n + 1)

end A066251

/-! ## A066251.P1425998529473803760

`abs(∑[-Δ[A073846(n+1)]])`
-/

namespace A066251.P1425998529473803760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A066251.P1425998529473803760

namespace A066251

/-- `abs(∑[-Δ[A073846(n+1)]])` -/
def P1425998529473803760.Spec : Prop :=
  ∀ n, P1425998529473803760.a n = A066251 (n + 1)

end A066251

/-! ## A066251.P14686917260504672945

`∑[Δ[A073846(n+1)]%A000040(n+1)]`
-/

namespace A066251.P14686917260504672945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066251.P14686917260504672945

namespace A066251

/-- `∑[Δ[A073846(n+1)]%A000040(n+1)]` -/
def P14686917260504672945.Spec : Prop :=
  ∀ n, P14686917260504672945.a n = A066251 (n + 1)

end A066251

/-! ## A066251.P12879546914597636178

`A066255(A066250(n+1))`
-/

namespace A066251.P12879546914597636178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066255 (A066250 (n + 1)).toNat

end

end A066251.P12879546914597636178

namespace A066251

/-- `A066255(A066250(n+1))` -/
def P12879546914597636178.Spec : Prop :=
  ∀ n, P12879546914597636178.a n = A066251 (n + 1)

end A066251

/-! ## A066251.P13830406992845397370

`A026239(A129131(n+1))-1`
-/

namespace A066251.P13830406992845397370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A129131 (n + 1)).toNat - 1

end

end A066251.P13830406992845397370

namespace A066251

/-- `A026239(A129131(n+1))-1` -/
def P13830406992845397370.Spec : Prop :=
  ∀ n, P13830406992845397370.a n = A066251 (n + 1)

end A066251

/-! ## A066251.P17275282136893675133

`A066249(A066250(A066249(n+1)))`
-/

namespace A066251.P17275282136893675133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066249 (A066250 (A066249 (n + 1)).toNat).toNat

end

end A066251.P17275282136893675133

namespace A066251

/-- `A066249(A066250(A066249(n+1)))` -/
def P17275282136893675133.Spec : Prop :=
  ∀ n, P17275282136893675133.a n = A066251 (n + 1)

end A066251

/-! ## A066251.P8874961983108578308

`A023443(A067747(n+1))`
-/

namespace A066251.P8874961983108578308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A067747 (n + 1)).toNat

end

end A066251.P8874961983108578308

namespace A066251

/-- `A023443(A067747(n+1))` -/
def P8874961983108578308.Spec : Prop :=
  ∀ n, P8874961983108578308.a n = A066251 (n + 1)

end A066251

/-! ## A066251.P15099459200494631768

`A023443(A073846(n+2))`
-/

namespace A066251.P15099459200494631768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A073846 (n + 2)).toNat

end

end A066251.P15099459200494631768

namespace A066251

/-- `A023443(A073846(n+2))` -/
def P15099459200494631768.Spec : Prop :=
  ∀ n, P15099459200494631768.a n = A066251 (n + 1)

end A066251

/-! ## A066251.P7345671539470905048

`A023444(A067747(n+1)+1)`
-/

namespace A066251.P7345671539470905048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A067747 (n + 1) + 1).toNat

end

end A066251.P7345671539470905048

namespace A066251

/-- `A023444(A067747(n+1)+1)` -/
def P7345671539470905048.Spec : Prop :=
  ∀ n, P7345671539470905048.a n = A066251 (n + 1)

end A066251

/-! ## A066251.P5471794685422056137

`∑[A014963(8*n+6)*Δ[A073846(n+1)]]`
-/

namespace A066251.P5471794685422056137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 6) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066251.P5471794685422056137

namespace A066251

/-- `∑[A014963(8*n+6)*Δ[A073846(n+1)]]` -/
def P5471794685422056137.Spec : Prop :=
  ∀ n, P5471794685422056137.a n = A066251 (n + 1)

end A066251

/-!
# A066252: a(n) = A066248(A066248(n)).

The programs for A066252, the canonical program `A066252.P8882327947693045390` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066252 has offset 1).

The definition of A066252 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066248, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066252.P8882327947693045390

`A066248(A066248(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A066252

/-- `A066248(A066248(n+1))` -/
def P8882327947693045390.Spec : Prop :=
  ∀ n, P8882327947693045390.a n = A066252 (n + 1)

theorem P8882327947693045390.correct : P8882327947693045390.Spec := by
  intro n
  simp only [A066252, Nat.add_sub_cancel]

end A066252

/-! ## A066252.P11570633216633909996

`A073897(A073897(n+2))-1`
-/

namespace A066252.P11570633216633909996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073897 (A073897 (n + 2)).toNat - 1

end

end A066252.P11570633216633909996

namespace A066252

/-- `A073897(A073897(n+2))-1` -/
def P11570633216633909996.Spec : Prop :=
  ∀ n, P11570633216633909996.a n = A066252 (n + 1)

end A066252

/-! ## A066252.P14223737719035945604

`A260196(n+2)+A073897(A073897(n+2))`
-/

namespace A066252.P14223737719035945604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A073897 (A073897 (n + 2)).toNat

end

end A066252.P14223737719035945604

namespace A066252

/-- `A260196(n+2)+A073897(A073897(n+2))` -/
def P14223737719035945604.Spec : Prop :=
  ∀ n, P14223737719035945604.a n = A066252 (n + 1)

end A066252

/-! ## A066252.P9196078758837156587

`A327274(A000040(3*(n+1)))+A073897(A073897(n+2))+1`
-/

namespace A066252.P9196078758837156587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327274 (A000040 (3 * (n + 1))).toNat + (A073897 (A073897 (n + 2)).toNat + 1)

end

end A066252.P9196078758837156587

namespace A066252

/-- `A327274(A000040(3*(n+1)))+A073897(A073897(n+2))+1` -/
def P9196078758837156587.Spec : Prop :=
  ∀ n, P9196078758837156587.a n = A066252 (n + 1)

end A066252

/-! ## A066252.P5001697554777796792

`A327274(A138642(n+1))+A073897(A073897(n+2))+1`
-/

namespace A066252.P5001697554777796792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327274 (A138642 (n + 1)).toNat + (A073897 (A073897 (n + 2)).toNat + 1)

end

end A066252.P5001697554777796792

namespace A066252

/-- `A327274(A138642(n+1))+A073897(A073897(n+2))+1` -/
def P5001697554777796792.Spec : Prop :=
  ∀ n, P5001697554777796792.a n = A066252 (n + 1)

end A066252

/-! ## A066252.P10633814889812725505

`A327274(A136070(n+1))+A073897(A073897(n+2))+1`
-/

namespace A066252.P10633814889812725505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327274 (A136070 (n + 1)).toNat + (A073897 (A073897 (n + 2)).toNat + 1)

end

end A066252.P10633814889812725505

namespace A066252

/-- `A327274(A136070(n+1))+A073897(A073897(n+2))+1` -/
def P10633814889812725505.Spec : Prop :=
  ∀ n, P10633814889812725505.a n = A066252 (n + 1)

end A066252

/-!
# A066253: a(n) = A066249(A066249(n)).

The programs for A066253, the canonical program `A066253.P2942854054370966981` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066253 has offset 1).

The definition of A066253 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066249, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066253.P2942854054370966981

`A066249(A066249(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066253

/-- `A066249(A066249(n+1))` -/
def P2942854054370966981.Spec : Prop :=
  ∀ n, P2942854054370966981.a n = A066253 (n + 1)

theorem P2942854054370966981.correct : P2942854054370966981.Spec := by
  intro n
  simp only [A066253, Nat.add_sub_cancel]

end A066253

/-! ## A066253.P15162642751313369941

`A129131(A129131(n+1)-1)-1`
-/

namespace A066253.P15162642751313369941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129131 (A129131 (n + 1) - 1).toNat - 1

end

end A066253.P15162642751313369941

namespace A066253

/-- `A129131(A129131(n+1)-1)-1` -/
def P15162642751313369941.Spec : Prop :=
  ∀ n, P15162642751313369941.a n = A066253 (n + 1)

theorem P15162642751313369941.correct : P15162642751313369941.Spec := by
  intro n
  simp only [A066253, Nat.add_sub_cancel, A066253.P15162642751313369941.a, A066253.P2942854054370966981.a, A066249, A066249.P1311895009433369201.a, A129131, A129131.P6943603048357520983.a, A067747, A067747.P14118183397394803050.a, A000035, A000035.P2023072528413494694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A059841, A059841.P7264174615531153985.a, A000005, A000005.P16091521709108585461.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066253

/-! ## A066253.P14635532641842643390

`A066251(A066248(A066255(A066248(A066251(n+1)))))`
-/

namespace A066253.P14635532641842643390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (A066248 (A066255 (A066248 (A066251 (n + 1)).toNat).toNat).toNat).toNat

end

end A066253.P14635532641842643390

namespace A066253

/-- `A066251(A066248(A066255(A066248(A066251(n+1)))))` -/
def P14635532641842643390.Spec : Prop :=
  ∀ n, P14635532641842643390.a n = A066253 (n + 1)

end A066253

/-!
# A066254: a(n) = A066250(A066250(n)).

The programs for A066254, the canonical program `A066254.P14705389908508388282` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066254 has offset 1).

The definition of A066254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066254.P14705389908508388282

`A066250(A066250(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A066254

/-- `A066250(A066250(n+1))` -/
def P14705389908508388282.Spec : Prop :=
  ∀ n, P14705389908508388282.a n = A066254 (n + 1)

theorem P14705389908508388282.correct : P14705389908508388282.Spec := by
  intro n
  simp only [A066254, Nat.add_sub_cancel]

end A066254

/-! ## A066254.P17221824667306580029

`A073898(A073898(n+2))-1`
-/

namespace A066254.P17221824667306580029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (A073898 (n + 2)).toNat - 1

end

end A066254.P17221824667306580029

namespace A066254

/-- `A073898(A073898(n+2))-1` -/
def P17221824667306580029.Spec : Prop :=
  ∀ n, P17221824667306580029.a n = A066254 (n + 1)

end A066254

/-! ## A066254.P3331424017709810875

`A260196(n+2)+A073898(A073898(n+2))`
-/

namespace A066254.P3331424017709810875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A073898 (A073898 (n + 2)).toNat

end

end A066254.P3331424017709810875

namespace A066254

/-- `A260196(n+2)+A073898(A073898(n+2))` -/
def P3331424017709810875.Spec : Prop :=
  ∀ n, P3331424017709810875.a n = A066254 (n + 1)

end A066254

/-! ## A066254.P6180677539390145758

`A066248(A066251(A066252(A066251(A066248(n+1)))))`
-/

namespace A066254.P6180677539390145758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066248 (A066251 (A066252 (A066251 (A066248 (n + 1)).toNat).toNat).toNat).toNat

end

end A066254.P6180677539390145758

namespace A066254

/-- `A066248(A066251(A066252(A066251(A066248(n+1)))))` -/
def P6180677539390145758.Spec : Prop :=
  ∀ n, P6180677539390145758.a n = A066254 (n + 1)

end A066254

/-! ## A066254.P10976779316629991806

`A267863(A000217(2*(n+2)))+A073898(A073898(n+2))`
-/

namespace A066254.P10976779316629991806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267863 (A000217 (2 * (n + 2))).toNat + A073898 (A073898 (n + 2)).toNat

end

end A066254.P10976779316629991806

namespace A066254

/-- `A267863(A000217(2*(n+2)))+A073898(A073898(n+2))` -/
def P10976779316629991806.Spec : Prop :=
  ∀ n, P10976779316629991806.a n = A066254 (n + 1)

end A066254

/-!
# A066255: a(n) = A066251(A066251(n)).

The programs for A066255, the canonical program `A066255.P15448090258535731696` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066255 has offset 1).

The definition of A066255 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066251, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066255.P15448090258535731696

`A066251(A066251(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066255

/-- `A066251(A066251(n+1))` -/
def P15448090258535731696.Spec : Prop :=
  ∀ n, P15448090258535731696.a n = A066255 (n + 1)

theorem P15448090258535731696.correct : P15448090258535731696.Spec := by
  intro n
  simp only [A066255, Nat.add_sub_cancel]

end A066255

/-! ## A066255.P3281692021424614821

`A073846(A067747(n+1))-1`
-/

namespace A066255.P3281692021424614821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A067747 (n + 1)).toNat - 1

end

end A066255.P3281692021424614821

namespace A066255

/-- `A073846(A067747(n+1))-1` -/
def P3281692021424614821.Spec : Prop :=
  ∀ n, P3281692021424614821.a n = A066255 (n + 1)

end A066255

/-! ## A066255.P4667585458201872452

`A073846(A073846(n+2))-1`
-/

namespace A066255.P4667585458201872452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A073846 (n + 2)).toNat - 1

end

end A066255.P4667585458201872452

namespace A066255

/-- `A073846(A073846(n+2))-1` -/
def P4667585458201872452.Spec : Prop :=
  ∀ n, P4667585458201872452.a n = A066255 (n + 1)

end A066255

/-! ## A066255.P15746234103250031236

`A067747(A067747(n+1)-1)-1`
-/

namespace A066255.P15746234103250031236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A067747 (n + 1) - 1).toNat - 1

end

end A066255.P15746234103250031236

namespace A066255

/-- `A067747(A067747(n+1)-1)-1` -/
def P15746234103250031236.Spec : Prop :=
  ∀ n, P15746234103250031236.a n = A066255 (n + 1)

end A066255

/-! ## A066255.P7450543937240750703

`∑[-Δ[-A073846(A073846(n+1))]]`
-/

namespace A066255.P7450543937240750703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A073846 (A073846 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066255.P7450543937240750703

namespace A066255

/-- `∑[-Δ[-A073846(A073846(n+1))]]` -/
def P7450543937240750703.Spec : Prop :=
  ∀ n, P7450543937240750703.a n = A066255 (n + 1)

end A066255

/-!
# A066258: a(n) = Fibonacci(n)^2 * Fibonacci(n+1).

The programs for A066258, the canonical program `A066258.P1402866479795286772` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066258 has offset 0).

The definition of A066258 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)²*A000045(n+1)` (program `A066258.P1402866479795286772`, by `A066258.P1402866479795286772.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066258.P11651328238988510253

`ogf((x-x^2)/(1-3x-6x^2+3x^3+x^4))`
-/

namespace A066258.P11651328238988510253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -3, -6, 3, 1] n

end

end A066258.P11651328238988510253

namespace A066258

/-- `ogf((x-x^2)/(1-3x-6x^2+3x^3+x^4))` -/
def P11651328238988510253.Spec : Prop :=
  ∀ n, P11651328238988510253.a n = A066258 n

end A066258

/-! ## A066258.P15787594772273939232

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=12`
-/

namespace A066258.P15787594772273939232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 12] fun n a =>
  3 * a (n - 1) + 6 * a (n - 2) - 3 * a (n - 3) - a (n - 4)

end

end A066258.P15787594772273939232

namespace A066258

/-- `3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` -/
def P15787594772273939232.Spec : Prop :=
  ∀ n, P15787594772273939232.a n = A066258 n

end A066258

/-! ## A066258.P1402866479795286772

`A000045(n)²*A000045(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066258

/-- `A000045(n)²*A000045(n+1)` -/
def P1402866479795286772.Spec : Prop :=
  ∀ n, P1402866479795286772.a n = A066258 n

theorem P1402866479795286772.correct : P1402866479795286772.Spec := by
  intro n
  simp only [A066258]

end A066258

/-! ## A066258.P16104396269978646804

`1/5*(A000045(3*n+1)-(-1)^n*A000045(n+2))`
-/

namespace A066258.P16104396269978646804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (A000045 (3 * n + 1) - (-1) ^ n * A000045 (n + 2) : ℚ)

end

end A066258.P16104396269978646804

namespace A066258

/-- `1/5*(A000045(3*n+1)-(-1)^n*A000045(n+2))` -/
def P16104396269978646804.Spec : Prop :=
  ∀ n, P16104396269978646804.a n = (A066258 n : ℚ)

end A066258

/-! ## A066258.P12011270872493780325

`A000045(n)*A001654(n)`
-/

namespace A066258.P12011270872493780325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001654 n

end

end A066258.P12011270872493780325

namespace A066258

/-- `A000045(n)*A001654(n)` -/
def P12011270872493780325.Spec : Prop :=
  ∀ n, P12011270872493780325.a n = A066258 n

end A066258

/-! ## A066258.P8359717431356190669

`lcm(A001654(n), A007598(n))`
-/

namespace A066258.P8359717431356190669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001654 n) (A007598 n)

end

end A066258.P8359717431356190669

namespace A066258

/-- `lcm(A001654(n), A007598(n))` -/
def P8359717431356190669.Spec : Prop :=
  ∀ n, (P8359717431356190669.a n : ℤ) = A066258 n

end A066258

/-! ## A066258.P16198596934054945791

`A000045(n)*∑[A007598(n)]`
-/

namespace A066258.P16198596934054945791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066258.P16198596934054945791

namespace A066258

/-- `A000045(n)*∑[A007598(n)]` -/
def P16198596934054945791.Spec : Prop :=
  ∀ n, P16198596934054945791.a n = A066258 n

end A066258

/-! ## A066258.P7146211174791944664

`∑[A212804(n)]*A007598(n)`
-/

namespace A066258.P7146211174791944664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A007598 n

end

end A066258.P7146211174791944664

namespace A066258

/-- `∑[A212804(n)]*A007598(n)` -/
def P7146211174791944664.Spec : Prop :=
  ∀ n, P7146211174791944664.a n = A066258 n

end A066258

/-! ## A066258.P14412368188712450277

`A000045(n+1)*A007598(n)`
-/

namespace A066258.P14412368188712450277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A007598 n

end

end A066258.P14412368188712450277

namespace A066258

/-- `A000045(n+1)*A007598(n)` -/
def P14412368188712450277.Spec : Prop :=
  ∀ n, P14412368188712450277.a n = A066258 n

theorem P14412368188712450277.correct : P14412368188712450277.Spec := by
  intro n
  simp only [A066258, Nat.add_sub_cancel, A066258.P14412368188712450277.a, A066258.P1402866479795286772.a, A000045, A000045.P11838749114346432762.a, A007598, A007598.P12226372241189459830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066258

/-! ## A066258.P16987701577348117076

`A001654(n)*A212804(n+1)`
-/

namespace A066258.P16987701577348117076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n * A212804 (n + 1)

end

end A066258.P16987701577348117076

namespace A066258

/-- `A001654(n)*A212804(n+1)` -/
def P16987701577348117076.Spec : Prop :=
  ∀ n, P16987701577348117076.a n = A066258 n

end A066258

/-! ## A066258.P3866604688190845506

`A001654(n)*A324969(n+1)`
-/

namespace A066258.P3866604688190845506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n * A324969 (n + 1)

end

end A066258.P3866604688190845506

namespace A066258

/-- `A001654(n)*A324969(n+1)` -/
def P3866604688190845506.Spec : Prop :=
  ∀ n, P3866604688190845506.a n = A066258 n

end A066258

/-! ## A066258.P3576920015735509843

`(A001611(n)-1)*A001654(n)`
-/

namespace A066258.P3576920015735509843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A001654 n

end

end A066258.P3576920015735509843

namespace A066258

/-- `(A001611(n)-1)*A001654(n)` -/
def P3576920015735509843.Spec : Prop :=
  ∀ n, P3576920015735509843.a n = A066258 n

end A066258

/-! ## A066258.P2819841676306457315

`A007598(n)*A324969(n+2)`
-/

namespace A066258.P2819841676306457315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A324969 (n + 2)

end

end A066258.P2819841676306457315

namespace A066258

/-- `A007598(n)*A324969(n+2)` -/
def P2819841676306457315.Spec : Prop :=
  ∀ n, P2819841676306457315.a n = A066258 n

end A066258

/-! ## A066258.P14094994767396318128

`A001654(n)*A053602(2*n)`
-/

namespace A066258.P14094994767396318128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n * A053602 (2 * n)

end

end A066258.P14094994767396318128

namespace A066258

/-- `A001654(n)*A053602(2*n)` -/
def P14094994767396318128.Spec : Prop :=
  ∀ n, P14094994767396318128.a n = A066258 n

end A066258

/-! ## A066258.P4496220680124616775

`A000045(n)*A074677(2*n)`
-/

namespace A066258.P4496220680124616775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A074677 (2 * n)

end

end A066258.P4496220680124616775

namespace A066258

/-- `A000045(n)*A074677(2*n)` -/
def P4496220680124616775.Spec : Prop :=
  ∀ n, P4496220680124616775.a n = A066258 n

end A066258

/-! ## A066258.P6833596984135183192

`A001654(n)*A103609(2*n)`
-/

namespace A066258.P6833596984135183192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n * A103609 (2 * n)

end

end A066258.P6833596984135183192

namespace A066258

/-- `A001654(n)*A103609(2*n)` -/
def P6833596984135183192.Spec : Prop :=
  ∀ n, P6833596984135183192.a n = A066258 n

end A066258

/-! ## A066258.P724616557220955662

`(A002062(n)-n)*A001654(n)`
-/

namespace A066258.P724616557220955662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002062 n - (n : ℤ)) * A001654 n

end

end A066258.P724616557220955662

namespace A066258

/-- `(A002062(n)-n)*A001654(n)` -/
def P724616557220955662.Spec : Prop :=
  ∀ n, P724616557220955662.a n = A066258 n

end A066258

/-! ## A066258.P12854990024786863952

`A000045(n)²*∑[A212804(n)]`
-/

namespace A066258.P12854990024786863952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066258.P12854990024786863952

namespace A066258

/-- `A000045(n)²*∑[A212804(n)]` -/
def P12854990024786863952.Spec : Prop :=
  ∀ n, P12854990024786863952.a n = A066258 n

end A066258

/-! ## A066258.P11308558230292349265

`∑[A236191(n)²]*A000045(n)`
-/

namespace A066258.P11308558230292349265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000045 n

end

end A066258.P11308558230292349265

namespace A066258

/-- `∑[A236191(n)²]*A000045(n)` -/
def P11308558230292349265.Spec : Prop :=
  ∀ n, P11308558230292349265.a n = A066258 n

end A066258

/-! ## A066258.P8505705858004434196

`A000045(n)²*record[A053602(n)]`
-/

namespace A066258.P8505705858004434196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066258.P8505705858004434196

namespace A066258

/-- `A000045(n)²*record[A053602(n)]` -/
def P8505705858004434196.Spec : Prop :=
  ∀ n, P8505705858004434196.a n = A066258 n

end A066258

/-!
# A066259: a(n) = Fibonacci(n)*Fibonacci(n+1)^2.

The programs for A066259, the canonical program `A066259.P13369271834066853303` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066259 has offset 1).

The definition of A066259 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000045(n+2)²` (program `A066259.P13369271834066853303`, by `A066259.P13369271834066853303.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066259.P11706963535377269926

`ogf((1+x)/(1-3x-6x^2+3x^3+x^4))`
-/

namespace A066259.P11706963535377269926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -3, -6, 3, 1] n

end

end A066259.P11706963535377269926

namespace A066259

/-- `ogf((1+x)/(1-3x-6x^2+3x^3+x^4))` -/
def P11706963535377269926.Spec : Prop :=
  ∀ n, P11706963535377269926.a n = A066259 (n + 1)

end A066259

/-! ## A066259.P13369271834066853303

`A000045(n+1)*A000045(n+2)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066259

/-- `A000045(n+1)*A000045(n+2)²` -/
def P13369271834066853303.Spec : Prop :=
  ∀ n, P13369271834066853303.a n = A066259 (n + 1)

theorem P13369271834066853303.correct : P13369271834066853303.Spec := by
  intro n
  simp only [A066259, Nat.add_sub_cancel]

end A066259

/-! ## A066259.P9652404755699328890

`1/5*(A000045(3*(n+1)+2)-(-1)^(n+1)*A000045(n))`
-/

namespace A066259.P9652404755699328890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (A000045 (3 * (n + 1) + 2) - (-1) ^ (n + 1) * A000045 n : ℚ)

end

end A066259.P9652404755699328890

namespace A066259

/-- `1/5*(A000045(3*(n+1)+2)-(-1)^(n+1)*A000045(n))` -/
def P9652404755699328890.Spec : Prop :=
  ∀ n, P9652404755699328890.a n = (A066259 (n + 1) : ℚ)

end A066259

/-! ## A066259.P2571196596017325977

`(A000045(n+3)^3-2*A000045(n+1)^3-A000045(n)^3)/6`
-/

namespace A066259.P2571196596017325977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3) ^ 3 - 2 * A000045 (n + 1) ^ 3 - A000045 n ^ 3 : ℚ) / 6

end

end A066259.P2571196596017325977

namespace A066259

/-- `(A000045(n+3)^3-2*A000045(n+1)^3-A000045(n)^3)/6` -/
def P2571196596017325977.Spec : Prop :=
  ∀ n, P2571196596017325977.a n = (A066259 (n + 1) : ℚ)

end A066259

/-! ## A066259.P3806663743552650610

`Δ[A215038(n)]`
-/

namespace A066259.P3806663743552650610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066259.P3806663743552650610

namespace A066259

/-- `Δ[A215038(n)]` -/
def P3806663743552650610.Spec : Prop :=
  ∀ n, P3806663743552650610.a n = A066259 (n + 1)

end A066259

/-! ## A066259.P6162771299733749836

`abs(Δ[Δ[A363753(n)]])`
-/

namespace A066259.P6162771299733749836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363753 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A066259.P6162771299733749836

namespace A066259

/-- `abs(Δ[Δ[A363753(n)]])` -/
def P6162771299733749836.Spec : Prop :=
  ∀ n, P6162771299733749836.a n = A066259 (n + 1)

end A066259

/-! ## A066259.P11504039292790396574

`A122909(n)-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A066259.P11504039292790396574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A122909 n - a (n - 2)

end

end A066259.P11504039292790396574

namespace A066259

/-- `A122909(n)-a(n-2)` -/
def P11504039292790396574.Spec : Prop :=
  ∀ n, P11504039292790396574.a n = A066259 (n + 1)

end A066259

/-! ## A066259.P1100362427045291052

`A006500(A008486(n)-1)`
-/

namespace A066259.P1100362427045291052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 (A008486 n - 1).toNat

end

end A066259.P1100362427045291052

namespace A066259

/-- `A006500(A008486(n)-1)` -/
def P1100362427045291052.Spec : Prop :=
  ∀ n, P1100362427045291052.a n = A066259 (n + 1)

end A066259

/-! ## A066259.P10577553379155114080

`A006500(A004273(n)+n)`
-/

namespace A066259.P10577553379155114080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 (A004273 n + (n : ℤ)).toNat

end

end A066259.P10577553379155114080

namespace A066259

/-- `A006500(A004273(n)+n)` -/
def P10577553379155114080.Spec : Prop :=
  ∀ n, P10577553379155114080.a n = A066259 (n + 1)

end A066259

/-! ## A066259.P1317283367310000807

`A099014(n)+A033887(n)`
-/

namespace A066259.P1317283367310000807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099014 n + A033887 n

end

end A066259.P1317283367310000807

namespace A066259

/-- `A099014(n)+A033887(n)` -/
def P1317283367310000807.Spec : Prop :=
  ∀ n, P1317283367310000807.a n = A066259 (n + 1)

end A066259

/-! ## A066259.P7814334624613475924

`A001655(n)+∑[A066258(n)]`
-/

namespace A066259.P7814334624613475924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001655 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066259.P7814334624613475924

namespace A066259

/-- `A001655(n)+∑[A066258(n)]` -/
def P7814334624613475924.Spec : Prop :=
  ∀ n, P7814334624613475924.a n = A066259 (n + 1)

end A066259

/-! ## A066259.P9795860804050360223

`A099014(n)+Δ[A001076(n)]`
-/

namespace A066259.P9795860804050360223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099014 n + (f1 (n + 1) - f1 n)

end

end A066259.P9795860804050360223

namespace A066259

/-- `A099014(n)+Δ[A001076(n)]` -/
def P9795860804050360223.Spec : Prop :=
  ∀ n, P9795860804050360223.a n = A066259 (n + 1)

end A066259

/-! ## A066259.P16773075328885825095

`A099014(n+1)-A066258(n)`
-/

namespace A066259.P16773075328885825095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099014 (n + 1) - A066258 n

end

end A066259.P16773075328885825095

namespace A066259

/-- `A099014(n+1)-A066258(n)` -/
def P16773075328885825095.Spec : Prop :=
  ∀ n, P16773075328885825095.a n = A066259 (n + 1)

end A066259

/-! ## A066259.P5861411442305716566

`A215038(n+1)-A215038(n)`
-/

namespace A066259.P5861411442305716566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215038 (n + 1) - A215038 n

end

end A066259.P5861411442305716566

namespace A066259

/-- `A215038(n+1)-A215038(n)` -/
def P5861411442305716566.Spec : Prop :=
  ∀ n, P5861411442305716566.a n = A066259 (n + 1)

end A066259

/-! ## A066259.P5657118331085151231

`record[A096748(n)²*A079977(n)]`
-/

namespace A066259.P5657118331085151231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 n ^ 2 * A079977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066259.P5657118331085151231

namespace A066259

/-- `record[A096748(n)²*A079977(n)]` -/
def P5657118331085151231.Spec : Prop :=
  ∀ n, P5657118331085151231.a n = A066259 (n + 1)

end A066259

/-! ## A066259.P15574134204502087619

`Δ[A020695(n)]*Δ[A064831(n)]`
-/

namespace A066259.P15574134204502087619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A066259.P15574134204502087619

namespace A066259

/-- `Δ[A020695(n)]*Δ[A064831(n)]` -/
def P15574134204502087619.Spec : Prop :=
  ∀ n, P15574134204502087619.a n = A066259 (n + 1)

end A066259

/-! ## A066259.P1699335549806732331

`∑[A066258(n+1)+A066258(n)]`
-/

namespace A066259.P1699335549806732331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066258 (n + 1) + A066258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066259.P1699335549806732331

namespace A066259

/-- `∑[A066258(n+1)+A066258(n)]` -/
def P1699335549806732331.Spec : Prop :=
  ∀ n, P1699335549806732331.a n = A066259 (n + 1)

end A066259

/-! ## A066259.P1352436523224434467

`Δ[A001911(n)]*A001654(n+1)`
-/

namespace A066259.P1352436523224434467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001654 (n + 1)

end

end A066259.P1352436523224434467

namespace A066259

/-- `Δ[A001911(n)]*A001654(n+1)` -/
def P1352436523224434467.Spec : Prop :=
  ∀ n, P1352436523224434467.a n = A066259 (n + 1)

end A066259

/-!
# A066260: In the prime factorization of n replace the k-th prime with the k-th composite number, k > 0.

The programs for A066260, the canonical program `A066260.P9887136193330216052` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066260 has offset 1).

The definition of A066260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066260.P9887136193330216052

`∏{d}[n+1, A026239(A014963(#))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A066260

/-- `∏{d}[n+1, A026239(A014963(#))]` -/
def P9887136193330216052.Spec : Prop :=
  ∀ n, P9887136193330216052.a n = A066260 (n + 1)

theorem P9887136193330216052.correct : P9887136193330216052.Spec := by
  intro n
  simp only [A066260, Nat.add_sub_cancel]

end A066260

/-! ## A066260.P4722496199631246210

`A382265(A003961(n+1))`
-/

namespace A066260.P4722496199631246210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382265 (A003961 (n + 1)).toNat

end

end A066260.P4722496199631246210

namespace A066260

/-- `A382265(A003961(n+1))` -/
def P4722496199631246210.Spec : Prop :=
  ∀ n, P4722496199631246210.a n = A066260 (n + 1)

end A066260

/-! ## A066260.P14992036889330551427

`A382265(A045965(n+1))`
-/

namespace A066260.P14992036889330551427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382265 (A045965 (n + 1)).toNat

end

end A066260.P14992036889330551427

namespace A066260

/-- `A382265(A045965(n+1))` -/
def P14992036889330551427.Spec : Prop :=
  ∀ n, P14992036889330551427.a n = A066260 (n + 1)

end A066260

/-! ## A066260.P17850040638042105948

`∏{e}[A181821(n+1), A002808(#)]`
-/

namespace A066260.P17850040638042105948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002808 (Nat.factorization (f1 n).natAbs p)

end

end A066260.P17850040638042105948

namespace A066260

/-- `∏{e}[A181821(n+1), A002808(#)]` -/
def P17850040638042105948.Spec : Prop :=
  ∀ n, P17850040638042105948.a n = A066260 (n + 1)

end A066260

/-! ## A066260.P189577760461543922

`∏{e}[A304660(n+1), A002808(#)]`
-/

namespace A066260.P189577760461543922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002808 (Nat.factorization (f1 n).natAbs p)

end

end A066260.P189577760461543922

namespace A066260

/-- `∏{e}[A304660(n+1), A002808(#)]` -/
def P189577760461543922.Spec : Prop :=
  ∀ n, P189577760461543922.a n = A066260 (n + 1)

end A066260

/-! ## A066260.P3349727738676939629

`∏{e}[A181821(n+1), A340058(#)]`
-/

namespace A066260.P3349727738676939629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A340058 (Nat.factorization (f1 n).natAbs p)

end

end A066260.P3349727738676939629

namespace A066260

/-- `∏{e}[A181821(n+1), A340058(#)]` -/
def P3349727738676939629.Spec : Prop :=
  ∀ n, P3349727738676939629.a n = A066260 (n + 1)

end A066260

/-! ## A066260.P4954657337054875790

`∏{e}[A181821(n+1), A018252(#+1)]`
-/

namespace A066260.P4954657337054875790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018252 (Nat.factorization (f1 n).natAbs p + 1)

end

end A066260.P4954657337054875790

namespace A066260

/-- `∏{e}[A181821(n+1), A018252(#+1)]` -/
def P4954657337054875790.Spec : Prop :=
  ∀ n, P4954657337054875790.a n = A066260 (n + 1)

end A066260

/-! ## A066260.P14882590891255456701

`∏{e}[A181821(n+1), A026239(A000040(#))]`
-/

namespace A066260.P14882590891255456701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A026239 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A066260.P14882590891255456701

namespace A066260

/-- `∏{e}[A181821(n+1), A026239(A000040(#))]` -/
def P14882590891255456701.Spec : Prop :=
  ∀ n, P14882590891255456701.a n = A066260 (n + 1)

end A066260

/-! ## A066260.P772471292970715688

`A382265(A283980(n+1))`
-/

namespace A066260.P772471292970715688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382265 (A283980 (n + 1)).toNat

end

end A066260.P772471292970715688

namespace A066260

/-- `A382265(A283980(n+1))` -/
def P772471292970715688.Spec : Prop :=
  ∀ n, P772471292970715688.a n = A066260 (n + 1)

end A066260

/-!
# A066261: a(n) = A066260(A066260(n)).

The programs for A066261, the canonical program `A066261.P13449104958247159472` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066261 has offset 1).

The definition of A066261 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066260, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066261.P13449104958247159472

`A066260(A066260(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A066261

/-- `A066260(A066260(n+1))` -/
def P13449104958247159472.Spec : Prop :=
  ∀ n, P13449104958247159472.a n = A066261 (n + 1)

theorem P13449104958247159472.correct : P13449104958247159472.Spec := by
  intro n
  simp only [A066261, Nat.add_sub_cancel]

end A066261

/-! ## A066261.P13842693850340348361

`∏{e}[A068641(n+1), A068631(#)]`
-/

namespace A066261.P13842693850340348361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A068631 (Nat.factorization (f1 n).natAbs p)

end

end A066261.P13842693850340348361

namespace A066261

/-- `∏{e}[A068641(n+1), A068631(#)]` -/
def P13842693850340348361.Spec : Prop :=
  ∀ n, P13842693850340348361.a n = A066261 (n + 1)

end A066261

/-!
# A066262: a(n) = gcd(n, A066260(n)).

The programs for A066262, the canonical program `A066262.P18261934228188747550` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066262 has offset 1).

The definition of A066262 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066260, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066262.P18261934228188747550

`gcd(n+1, A066260(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A066262

/-- `gcd(n+1, A066260(n+1))` -/
def P18261934228188747550.Spec : Prop :=
  ∀ n, (P18261934228188747550.a n : ℤ) = A066262 (n + 1)

theorem P18261934228188747550.correct : P18261934228188747550.Spec := by
  intro n
  simp only [A066262, Nat.add_sub_cancel]

end A066262

/-! ## A066262.P5365644184157351219

`gcd(A066260(n+1), A131738(n))`
-/

namespace A066262.P5365644184157351219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066260 (n + 1)) (A131738 n)

end

end A066262.P5365644184157351219

namespace A066262

/-- `gcd(A066260(n+1), A131738(n))` -/
def P5365644184157351219.Spec : Prop :=
  ∀ n, (P5365644184157351219.a n : ℤ) = A066262 (n + 1)

end A066262

/-! ## A066262.P497089737368548585

`gcd(A000027(n+1), A066261(A026239(n+1)))`
-/

namespace A066262.P497089737368548585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A066261 (A026239 (n + 1)).toNat)

end

end A066262.P497089737368548585

namespace A066262

/-- `gcd(A000027(n+1), A066261(A026239(n+1)))` -/
def P497089737368548585.Spec : Prop :=
  ∀ n, (P497089737368548585.a n : ℤ) = A066262 (n + 1)

end A066262

/-! ## A066262.P15422130102008047413

`gcd(A166636(A242415(n+1)), A284255(n+1))`
-/

namespace A066262.P15422130102008047413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166636 (A242415 (n + 1)).toNat) (A284255 (n + 1))

end

end A066262.P15422130102008047413

namespace A066262

/-- `gcd(A166636(A242415(n+1)), A284255(n+1))` -/
def P15422130102008047413.Spec : Prop :=
  ∀ n, (P15422130102008047413.a n : ℤ) = A066262 (n + 1)

end A066262

/-! ## A066262.P3205136238403618585

`gcd(A166636(n+1), A242415(A242415(n+1)))`
-/

namespace A066262.P3205136238403618585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166636 (n + 1)) (A242415 (A242415 (n + 1)).toNat)

end

end A066262.P3205136238403618585

namespace A066262

/-- `gcd(A166636(n+1), A242415(A242415(n+1)))` -/
def P3205136238403618585.Spec : Prop :=
  ∀ n, (P3205136238403618585.a n : ℤ) = A066262 (n + 1)

end A066262

/-! ## A066262.P3357221794548652055

`gcd(A002260(A001844(n)), A326575(n+1))`
-/

namespace A066262.P3357221794548652055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (A001844 n).toNat) (A326575 (n + 1))

end

end A066262.P3357221794548652055

namespace A066262

/-- `gcd(A002260(A001844(n)), A326575(n+1))` -/
def P3357221794548652055.Spec : Prop :=
  ∀ n, (P3357221794548652055.a n : ℤ) = A066262 (n + 1)

end A066262

/-!
# A066263: Numbers k such that 2^k + 1 has just two distinct prime factors.

The programs for A066263, there is no canonical definition to state claims against.
-/

/-! ## A066263.P17674457705499528814

`eq[2, A046799(n)]`
-/

namespace A066263.P17674457705499528814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066263.P17674457705499528814

/-! ## A066263.P5006101246513348492

`lt[A154955(A046799(n)), A000007(n)]`
-/

namespace A066263.P5006101246513348492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A046799 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066263.P5006101246513348492

/-! ## A066263.P2166097380977423654

`lt[A154955(A046799(n)), A154955(n+1)]`
-/

namespace A066263.P2166097380977423654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A046799 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066263.P2166097380977423654

/-! ## A066263.P11751655446001585080

`eq[2, A322811(A073582(n+1))]`
-/

namespace A066263.P11751655446001585080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A073582 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066263.P11751655446001585080

/-! ## A066263.P1016843206473189246

`eq[2, A322811(A100484(n+1))]`
-/

namespace A066263.P1016843206473189246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A100484 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066263.P1016843206473189246

/-!
# A066264: Number of composites < primorial(p) with all prime factors > p.

The programs for A066264, the canonical program `A066264.P8435436926716988282` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066264 has offset 1).

The definition of A066264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066264.P8435436926716988282

`n+1+A005867(n+1)-A000849(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A066264

/-- `n+1+A005867(n+1)-A000849(n+1)-1` -/
def P8435436926716988282.Spec : Prop :=
  ∀ n, P8435436926716988282.a n = A066264 (n + 1)

theorem P8435436926716988282.correct : P8435436926716988282.Spec := by
  intro n
  simp only [A066264, Nat.add_sub_cancel]

end A066264

/-! ## A066264.P5674700353625963047

`∑[abs(Δ[A048863(n)])]`
-/

namespace A066264.P5674700353625963047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048863 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066264.P5674700353625963047

namespace A066264

/-- `∑[abs(Δ[A048863(n)])]` -/
def P5674700353625963047.Spec : Prop :=
  ∀ n, P5674700353625963047.a n = A066264 (n + 1)

end A066264

/-! ## A066264.P15469712033245075433

`A048863(n+1)-1`
-/

namespace A066264.P15469712033245075433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048863 (n + 1) - 1

end

end A066264.P15469712033245075433

namespace A066264

/-- `A048863(n+1)-1` -/
def P15469712033245075433.Spec : Prop :=
  ∀ n, P15469712033245075433.a n = A066264 (n + 1)

theorem P15469712033245075433.correct : P15469712033245075433.Spec := by
  intro n
  simp only [A066264, Nat.add_sub_cancel, A066264.P15469712033245075433.a, A066264.P8435436926716988282.a, A000849, A000849.P3482926112530532576.a, A005867, A005867.P647413364839099534.a, A048863, A048863.P16974686868926745534.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A002110, A002110.P13704446489392701398.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066264

/-! ## A066264.P7635504639392269719

`∑[Δ[A048863(n)]*A057427(n)]`
-/

namespace A066264.P7635504639392269719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048863 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066264.P7635504639392269719

namespace A066264

/-- `∑[Δ[A048863(n)]*A057427(n)]` -/
def P7635504639392269719.Spec : Prop :=
  ∀ n, P7635504639392269719.a n = A066264 (n + 1)

end A066264

/-! ## A066264.P10336174352886334950

`∑[Δ[A048863(n)]*A178489(n)]`
-/

namespace A066264.P10336174352886334950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048863 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A178489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066264.P10336174352886334950

namespace A066264

/-- `∑[Δ[A048863(n)]*A178489(n)]` -/
def P10336174352886334950.Spec : Prop :=
  ∀ n, P10336174352886334950.a n = A066264 (n + 1)

end A066264

/-!
# A066265: a(n) = number of semiprimes < 10^n.

The programs for A066265, there is no canonical definition to state claims against.
-/

/-! ## A066265.P14137407412224042515

`A036352(C(n, a(n-1))/2+n)` with `a(0)=0, a(1)=3`
-/

namespace A066265.P14137407412224042515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A036352 (SequenceMachineLib.roundAway ((Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ))).toNat

end

end A066265.P14137407412224042515

/-! ## A066265.P15903449334994821816

`∑[A242134(A028310(n))]-3`
-/

namespace A066265.P15903449334994821816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242134 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A066265.P15903449334994821816

/-! ## A066265.P17744784585191568032

`A085770(n)+A220262(n)-char[1]`
-/

namespace A066265.P17744784585191568032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085770 n + (A220262 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A066265.P17744784585191568032

/-! ## A066265.P13160697149119625950

`∑[A242134(n+1)]-A242134(n+1)`
-/

namespace A066265.P13160697149119625950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A242134 (n + 1)

end

end A066265.P13160697149119625950

/-! ## A066265.P5245297098074531801

`A194895(n)+A006880(n)`
-/

namespace A066265.P5245297098074531801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194895 n + A006880 n

end

end A066265.P5245297098074531801

/-!
# A066266: Product of first n primorials + 1.

The programs for A066266, there is no canonical definition to state claims against.
-/

/-! ## A066266.P1967752973546566581

`A006939(n+1)+1`
-/

namespace A066266.P1967752973546566581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006939 (n + 1) + 1

end

end A066266.P1967752973546566581

/-! ## A066266.P549192944986947827

`∏[∏[p?[comp[n²]]]]+1`
-/

namespace A066266.P549192944986947827
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A066266.P549192944986947827

/-! ## A066266.P12534443009880664368

`A066268(n+1)+2`
-/

namespace A066266.P12534443009880664368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066268 (n + 1) + 2

end

end A066266.P12534443009880664368

/-! ## A066266.P5654570679216363053

`A332644(∑[n+1])+1`
-/

namespace A066266.P5654570679216363053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332644 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A066266.P5654570679216363053

/-! ## A066266.P12367442731157787285

`∏[∏[A000040(n+1)]]+1`
-/

namespace A066266.P12367442731157787285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A066266.P12367442731157787285

/-!
# A066268: Product of first n primorials - 1.

The programs for A066268, there is no canonical definition to state claims against.
-/

/-! ## A066268.P16519900325160226290

`A006939(n+1)-1`
-/

namespace A066268.P16519900325160226290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006939 (n + 1) - 1

end

end A066268.P16519900325160226290

/-! ## A066268.P1056437569356514003

`∏[∏[p?[comp[n²]]]]-1`
-/

namespace A066268.P1056437569356514003
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A066268.P1056437569356514003

/-! ## A066268.P8485400331705923174

`∑[abs(Δ[A006939(n)])]`
-/

namespace A066268.P8485400331705923174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006939 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066268.P8485400331705923174

/-! ## A066268.P728521829902005446

`A066266(n+1)-2`
-/

namespace A066268.P728521829902005446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066266 (n + 1) - 2

end

end A066268.P728521829902005446

/-! ## A066268.P717931631013797243

`A332644(∑[n+1])-1`
-/

namespace A066268.P717931631013797243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332644 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A066268.P717931631013797243

/-!
# A066270: Multiples of 24 whose digits also sum to 24.

The programs for A066270, the canonical program `A066270.P16574927822782617413` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066270 has offset 1).

The definition of A066270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066270.P16574927822782617413

`∩[A073763(n+1), A216997(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066270

/-- `∩[A073763(n+1), A216997(n+1)]` -/
def P16574927822782617413.Spec : Prop :=
  ∀ n, (P16574927822782617413.a n : ℤ) = A066270 (n + 1)

theorem P16574927822782617413.correct : P16574927822782617413.Spec := by
  intro n
  simp only [A066270, Nat.add_sub_cancel]

end A066270

/-! ## A066270.P2924928742934358706

`∩[A216997(n+1), A008606(n)]`
-/

namespace A066270.P2924928742934358706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066270.P2924928742934358706

namespace A066270

/-- `∩[A216997(n+1), A008606(n)]` -/
def P2924928742934358706.Spec : Prop :=
  ∀ n, (P2924928742934358706.a n : ℤ) = A066270 (n + 1)

end A066270

/-! ## A066270.P13389930961592675368

`∩[A119651(n+1), A216997(n+1)]`
-/

namespace A066270.P13389930961592675368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066270.P13389930961592675368

namespace A066270

/-- `∩[A119651(n+1), A216997(n+1)]` -/
def P13389930961592675368.Spec : Prop :=
  ∀ n, (P13389930961592675368.a n : ℤ) = A066270 (n + 1)

end A066270

/-! ## A066270.P14751614125643418123

`∩[2*A008594(n), A216997(n+1)]`
-/

namespace A066270.P14751614125643418123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066270.P14751614125643418123

namespace A066270

/-- `∩[2*A008594(n), A216997(n+1)]` -/
def P14751614125643418123.Spec : Prop :=
  ∀ n, (P14751614125643418123.a n : ℤ) = A066270 (n + 1)

end A066270

/-! ## A066270.P13398961601212505509

`∩[A063136(n+1), A216997(n+1)]`
-/

namespace A066270.P13398961601212505509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066270.P13398961601212505509

namespace A066270

/-- `∩[A063136(n+1), A216997(n+1)]` -/
def P13398961601212505509.Spec : Prop :=
  ∀ n, (P13398961601212505509.a n : ℤ) = A066270 (n + 1)

end A066270

/-! ## A066270.P9187274760489313272

`∩[2*A019557(2*n+1), A062753(n+2)]`
-/

namespace A066270.P9187274760489313272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019557 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062753 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066270.P9187274760489313272

namespace A066270

/-- `∩[2*A019557(2*n+1), A062753(n+2)]` -/
def P9187274760489313272.Spec : Prop :=
  ∀ n, (P9187274760489313272.a n : ℤ) = A066270 (n + 1)

end A066270

/-! ## A066270.P17252064917070382091

`∩[A216997(n+1), A008594(n)]`
-/

namespace A066270.P17252064917070382091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066270.P17252064917070382091

namespace A066270

/-- `∩[A216997(n+1), A008594(n)]` -/
def P17252064917070382091.Spec : Prop :=
  ∀ n, (P17252064917070382091.a n : ℤ) = A066270 (n + 1)

end A066270

/-! ## A066270.P5731481366134443829

`filter[A216997(n+1), A182581(#)]`
-/

namespace A066270.P5731481366134443829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182581 (f1 j).toNat = 1) n)

end

end A066270.P5731481366134443829

namespace A066270

/-- `filter[A216997(n+1), A182581(#)]` -/
def P5731481366134443829.Spec : Prop :=
  ∀ n, P5731481366134443829.a n = A066270 (n + 1)

end A066270

/-! ## A066270.P5634089077521333328

`filter[A216997(n+1), A355454(#)]`
-/

namespace A066270.P5634089077521333328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355454 (f1 j).toNat = 1) n)

end

end A066270.P5634089077521333328

namespace A066270

/-- `filter[A216997(n+1), A355454(#)]` -/
def P5634089077521333328.Spec : Prop :=
  ∀ n, P5634089077521333328.a n = A066270 (n + 1)

end A066270

/-! ## A066270.P6015833395260454075

`filter[A216997(n+1), A079979(#)]`
-/

namespace A066270.P6015833395260454075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A066270.P6015833395260454075

namespace A066270

/-- `filter[A216997(n+1), A079979(#)]` -/
def P6015833395260454075.Spec : Prop :=
  ∀ n, P6015833395260454075.a n = A066270 (n + 1)

end A066270

/-! ## A066270.P13461191150877280499

`filter[A216997(n+1), A093719(#)]`
-/

namespace A066270.P13461191150877280499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A066270.P13461191150877280499

namespace A066270

/-- `filter[A216997(n+1), A093719(#)]` -/
def P13461191150877280499.Spec : Prop :=
  ∀ n, P13461191150877280499.a n = A066270 (n + 1)

end A066270

/-! ## A066270.P1039155638120057203

`∩[A062753(n+1), A250120(A016789(n))]`
-/

namespace A066270.P1039155638120057203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A016789 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066270.P1039155638120057203

namespace A066270

/-- `∩[A062753(n+1), A250120(A016789(n))]` -/
def P1039155638120057203.Spec : Prop :=
  ∀ n, (P1039155638120057203.a n : ℤ) = A066270 (n + 1)

end A066270

/-!
# A066271: Numbers n such that A066256(n) = n^2-2*n+2.

The programs for A066271, there is no canonical definition to state claims against.
-/

/-! ## A066271.P12421312602610385587

`record[ceil(sqrt(A066256(n+2)))]`
-/

namespace A066271.P12421312602610385587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A066256 (n + 2) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066271.P12421312602610385587

/-! ## A066271.P5239675206615571870

`eq[A000124(n), A066257(n+2)]+2`
-/

namespace A066271.P5239675206615571870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066257 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A066271.P5239675206615571870

/-! ## A066271.P12320002107132286525

`A002024(record[A066257(n+2)])+1`
-/

namespace A066271.P12320002107132286525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066257 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A066271.P12320002107132286525

/-! ## A066271.P7292149023727528987

`A003057(record[A066257(n+2)+1])`
-/

namespace A066271.P7292149023727528987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066257 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066271.P7292149023727528987

/-! ## A066271.P11967332598456138670

`A007318(record[A066257(n+2)])+2`
-/

namespace A066271.P11967332598456138670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066257 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A066271.P11967332598456138670

/-!
# A066272: Number of anti-divisors of n.

The programs for A066272, there is no canonical definition to state claims against.
-/

/-! ## A066272.P10371005062519406271

`A066241(n+1)-1`
-/

namespace A066272.P10371005062519406271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066241 (n + 1) - 1

end

end A066272.P10371005062519406271

/-! ## A066272.P8467742165220113962

`A023443(A066241(n+1))`
-/

namespace A066272.P8467742165220113962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A066241 (n + 1)).toNat

end

end A066272.P8467742165220113962

/-! ## A066272.P5681282374655320658

`A218767(n+1)-Δ[A006218(n)]`
-/

namespace A066272.P5681282374655320658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218767 (n + 1) - (f1 (n + 1) - f1 n)

end

end A066272.P5681282374655320658

/-! ## A066272.P7141665413134927654

`A218767(n+1)-Δ[A054519(n)]`
-/

namespace A066272.P7141665413134927654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218767 (n + 1) - (f1 (n + 1) - f1 n)

end

end A066272.P7141665413134927654

/-! ## A066272.P4404220127415174585

`A214270(n+1)-Δ[A248517(n)]`
-/

namespace A066272.P4404220127415174585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) - (f1 (n + 1) - f1 n)

end

end A066272.P4404220127415174585

/-! ## A066272.P3891033819457179211

`A242029(n+1)+A111775(n+1)`
-/

namespace A066272.P3891033819457179211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242029 (n + 1) + A111775 (n + 1)

end

end A066272.P3891033819457179211

/-! ## A066272.P14868553842619900022

`A218767(n+1)-A000005(n+1)`
-/

namespace A066272.P14868553842619900022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218767 (n + 1) - A000005 (n + 1)

end

end A066272.P14868553842619900022

/-! ## A066272.P1217887348380543083

`A214270(n+1)+1-A001227(n+1)`
-/

namespace A066272.P1217887348380543083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) + (1 - A001227 (n + 1))

end

end A066272.P1217887348380543083

/-! ## A066272.P14210095775455948913

`A214270(n+1)-A023443(A001227(n+1))`
-/

namespace A066272.P14210095775455948913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) - A023443 (A001227 (n + 1)).toNat

end

end A066272.P14210095775455948913

/-! ## A066272.P14181691555966601078

`A214270(n+1)-A032741(A000265(n+1))`
-/

namespace A066272.P14181691555966601078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) - A032741 (A000265 (n + 1)).toNat

end

end A066272.P14181691555966601078

/-! ## A066272.P17057025268151358502

`A214270(n+1)-A032741(A064989(n+1))`
-/

namespace A066272.P17057025268151358502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) - A032741 (A064989 (n + 1)).toNat

end

end A066272.P17057025268151358502

/-! ## A066272.P580794987150402293

`A111775(2*n+1)+A111775(2*(n+1))+A111775(2*n+3)`
-/

namespace A066272.P580794987150402293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (2 * n + 1) + (A111775 (2 * (n + 1)) + A111775 (2 * n + 3))

end

end A066272.P580794987150402293

/-! ## A066272.P1320525925067151043

`A200748(n)%A066241(n+1)`
-/

namespace A066272.P1320525925067151043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A066241 (n + 1))

end

end A066272.P1320525925067151043

/-! ## A066272.P6633120487140440675

`A083800(n+1)%A066241(n+1)`
-/

namespace A066272.P6633120487140440675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A066241 (n + 1))

end

end A066272.P6633120487140440675

/-! ## A066272.P11388034332412512530

`A070198(n)%A066241(n+1)`
-/

namespace A066272.P11388034332412512530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A066241 (n + 1))

end

end A066272.P11388034332412512530

/-! ## A066272.P4982789403154199643

`A079782(n+1)%A066241(n+1)`
-/

namespace A066272.P4982789403154199643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A066241 (n + 1))

end

end A066272.P4982789403154199643

/-! ## A066272.P11401700911641868330

`A083685(n+1)%A066241(n+1)`
-/

namespace A066272.P11401700911641868330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A066241 (n + 1))

end

end A066272.P11401700911641868330

/-! ## A066272.P12999491589500209361

`A121934(n+1)%A066241(n+1)`
-/

namespace A066272.P12999491589500209361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A066241 (n + 1))

end

end A066272.P12999491589500209361

/-! ## A066272.P7508626017892016584

`A030494(n+1)%A066241(n+1)`
-/

namespace A066272.P7508626017892016584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A066241 (n + 1))

end

end A066272.P7508626017892016584

/-! ## A066272.P38509416021960420

`A072828(n+1)%A066241(n+1)`
-/

namespace A066272.P38509416021960420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A066241 (n + 1))

end

end A066272.P38509416021960420

/-!
# A066274: Number of endofunctions of [n] such that 1 is not a fixed point.

The programs for A066274, the canonical program `A066274.P4127562941293127807` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066274 has offset 1).

The definition of A066274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066274.P4127562941293127807

`n*(n+1)^n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066274

/-- `n*(n+1)^n` -/
def P4127562941293127807.Spec : Prop :=
  ∀ n, (P4127562941293127807.a n : ℤ) = A066274 (n + 1)

theorem P4127562941293127807.correct : P4127562941293127807.Spec := by
  intro n
  simp only [A066274, Nat.add_sub_cancel]

end A066274

/-! ## A066274.P9785975259169834431

`lcm(n, (n+1)^n)`
-/

namespace A066274.P9785975259169834431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 1) ^ n)

end

end A066274.P9785975259169834431

namespace A066274

/-- `lcm(n, (n+1)^n)` -/
def P9785975259169834431.Spec : Prop :=
  ∀ n, (P9785975259169834431.a n : ℤ) = A066274 (n + 1)

end A066274

/-! ## A066274.P12664997179358796002

`∏{digits}[10^n, n+1-#]`
-/

namespace A066274.P12664997179358796002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (n + 1 : ℤ) - (x : ℤ)).prod

end

end A066274.P12664997179358796002

namespace A066274

/-- `∏{digits}[10^n, n+1-#]` -/
def P12664997179358796002.Spec : Prop :=
  ∀ n, P12664997179358796002.a n = A066274 (n + 1)

end A066274

/-! ## A066274.P7511293502813824461

`abs(n*xor(n, -1)^n)`
-/

namespace A066274.P7511293502813824461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.xor (n : ℤ) (-1) ^ n|

end

end A066274.P7511293502813824461

namespace A066274

/-- `abs(n*xor(n, -1)^n)` -/
def P7511293502813824461.Spec : Prop :=
  ∀ n, P7511293502813824461.a n = A066274 (n + 1)

end A066274

/-! ## A066274.P7428242589187083466

`∑{#}[n, C(n, n-#)*n^(n-#)*n]`
-/

namespace A066274.P7428242589187083466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n ((n : ℤ) - (k : ℤ)).toNat : ℚ) * (n : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (n : ℚ)

end

end A066274.P7428242589187083466

namespace A066274

/-- `∑{#}[n, C(n, n-#)*n^(n-#)*n]` -/
def P7428242589187083466.Spec : Prop :=
  ∀ n, P7428242589187083466.a n = (A066274 (n + 1) : ℚ)

end A066274

/-! ## A066274.P15487959434583066981

`(n+1)^((n+1)%(n+1)²)-(n+1)^n`
-/

namespace A066274.P15487959434583066981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ ((n + 1) % (n + 1) ^ 2) : ℤ) - ((n + 1) ^ n : ℤ)

end

end A066274.P15487959434583066981

namespace A066274

/-- `(n+1)^((n+1)%(n+1)²)-(n+1)^n` -/
def P15487959434583066981.Spec : Prop :=
  ∀ n, P15487959434583066981.a n = A066274 (n + 1)

end A066274

/-! ## A066274.P3834685300871446663

`(n+1)^(n+1)+(n+1)^(n+1)/xor(n, -1)`
-/

namespace A066274.P3834685300871446663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℚ) + ((n + 1) ^ (n + 1) : ℚ) / (Int.xor (n : ℤ) (-1) : ℚ)

end

end A066274.P3834685300871446663

namespace A066274

/-- `(n+1)^(n+1)+(n+1)^(n+1)/xor(n, -1)` -/
def P3834685300871446663.Spec : Prop :=
  ∀ n, P3834685300871446663.a n = (A066274 (n + 1) : ℚ)

end A066274

/-! ## A066274.P267886819969480651

`record[A228273(n+3)]`
-/

namespace A066274.P267886819969480651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228273 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066274.P267886819969480651

namespace A066274

/-- `record[A228273(n+3)]` -/
def P267886819969480651.Spec : Prop :=
  ∀ n, P267886819969480651.a n = A066274 (n + 1)

end A066274

/-! ## A066274.P17179281709166245518

`abs(2*A070896(n+1))`
-/

namespace A066274.P17179281709166245518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A070896 (n + 1)|

end

end A066274.P17179281709166245518

namespace A066274

/-- `abs(2*A070896(n+1))` -/
def P17179281709166245518.Spec : Prop :=
  ∀ n, P17179281709166245518.a n = A066274 (n + 1)

end A066274

/-! ## A066274.P13057217065818168968

`abs(n*A213236(n+1))`
-/

namespace A066274.P13057217065818168968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A213236 (n + 1)|

end

end A066274.P13057217065818168968

namespace A066274

/-- `abs(n*A213236(n+1))` -/
def P13057217065818168968.Spec : Prop :=
  ∀ n, P13057217065818168968.a n = A066274 (n + 1)

end A066274

/-!
# A066275: Number of endofunctions of [n] such that some element is fixed, but 1 is not fixed.

The programs for A066275, the canonical program `A066275.P4305811953647676198` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066275 has offset 1).

The definition of A066275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066275.P4305811953647676198

`(n+1)^(n+1)-(n+1)^n-n^(n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A066275

/-- `(n+1)^(n+1)-(n+1)^n-n^(n+1)` -/
def P4305811953647676198.Spec : Prop :=
  ∀ n, P4305811953647676198.a n = A066275 (n + 1)

theorem P4305811953647676198.correct : P4305811953647676198.Spec := by
  intro n
  simp only [A066275, Nat.add_sub_cancel]

end A066275

/-! ## A066275.P604701524502412239

`∑{#}[n-1, C(n, #+1)*n^(n-#)]`
-/

namespace A066275.P604701524502412239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n (k + 1) : ℚ) * (n : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A066275.P604701524502412239

namespace A066275

/-- `∑{#}[n-1, C(n, #+1)*n^(n-#)]` -/
def P604701524502412239.Spec : Prop :=
  ∀ n, P604701524502412239.a n = (A066275 (n + 1) : ℚ)

end A066275

/-!
# A066277: Primes p(m) such that a prime number q exists so that p(m)-q = c(m), the m-th composite number.

The programs for A066277, there is no canonical definition to state claims against.
-/

/-! ## A066277.P9151889068134970095

`A000040(A060253(n+1))`
-/

namespace A066277.P9151889068134970095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A060253 (n + 1)).toNat

end

end A066277.P9151889068134970095

/-! ## A066277.P6453694121206700981

`A008578(A060253(n+1)+1)`
-/

namespace A066277.P6453694121206700981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A060253 (n + 1) + 1).toNat

end

end A066277.P6453694121206700981

/-! ## A066277.P7562946631890494564

`A158611(A060253(n+1)+2)`
-/

namespace A066277.P7562946631890494564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A060253 (n + 1) + 2).toNat

end

end A066277.P7562946631890494564

/-! ## A066277.P10670180310921271302

`∑{d}[A060253(n+1), A007444(#)]`
-/

namespace A066277.P10670180310921271302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A066277.P10670180310921271302

/-! ## A066277.P9325422565132590921

`A008864(A060253(n+1))-A020985(n)²`
-/

namespace A066277.P9325422565132590921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A060253 (n + 1)).toNat - A020985 n ^ 2

end

end A066277.P9325422565132590921

/-! ## A066277.P11910463223702457084

`A008864(A060253(n+1))-A008683(gcd(n, n+2))²`
-/

namespace A066277.P11910463223702457084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A060253 (n + 1)).toNat - A008683 (Nat.gcd n (n + 2)) ^ 2

end

end A066277.P11910463223702457084

/-! ## A066277.P9393073286194467655

`A073846(2*A060253(n+1))`
-/

namespace A066277.P9393073286194467655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A060253 (n + 1)).toNat

end

end A066277.P9393073286194467655

/-! ## A066277.P5442114168186644237

`A207790(2*A060253(n+1))`
-/

namespace A066277.P5442114168186644237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A060253 (n + 1)).toNat

end

end A066277.P5442114168186644237

/-!
# A066278: Least solution to cototient(x) = n!, where cototient(x) = x-phi(x).

The programs for A066278, there is no canonical definition to state claims against.
-/

/-! ## A066278.P6467555986658545896

`A063507((n+1)!)`
-/

namespace A066278.P6467555986658545896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (Nat.factorial (n + 1))

end

end A066278.P6467555986658545896

/-! ## A066278.P744770067321151573

`record[A063507(∏{e}[n, #!])]`
-/

namespace A066278.P744770067321151573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066278.P744770067321151573

/-! ## A066278.P14493460528777368662

`A063507(A033646(n+1))`
-/

namespace A066278.P14493460528777368662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A033646 (n + 1)).toNat

end

end A066278.P14493460528777368662

/-!
# A066279: a(n) = n^n + n + 1.

The programs for A066279, there is no canonical definition to state claims against.
-/

/-! ## A066279.P2359373473487933231

`(n-1)^(n-1)+n-1+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066279.P2359373473487933231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + ((n : ℤ) - 1 : ℚ) + 1

end

end A066279.P2359373473487933231

/-! ## A066279.P17725241922489315545

`floor(A023443(n)^A023443(n)+n)`
-/

namespace A066279.P17725241922489315545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023443 n : ℚ) ^ (A023443 n : ℤ) + (n : ℚ)⌋

end

end A066279.P17725241922489315545

/-! ## A066279.P4962464950568968010

`round(A023443(n)^A023443(n)-A001489(n))`
-/

namespace A066279.P4962464950568968010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023443 n : ℚ) ^ (A023443 n : ℤ) - (A001489 n : ℚ))

end

end A066279.P4962464950568968010

/-! ## A066279.P17750431337252722670

`(A023443(n)^A023443(n)+n)*A000034(2*n)`
-/

namespace A066279.P17750431337252722670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A023443 n : ℚ) ^ (A023443 n : ℤ) + (n : ℚ)) * (A000034 (2 * n) : ℚ)

end

end A066279.P17750431337252722670

/-! ## A066279.P8799291558076923772

`xor(A023443(n)^A023443(n)+n, A008586(n)%2)`
-/

namespace A066279.P8799291558076923772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A023443 n : ℚ) ^ (A023443 n : ℤ) + (n : ℚ))) (Int.tmod (A008586 n) 2)

end

end A066279.P8799291558076923772

/-! ## A066279.P1769192634340717953

`(A023443(n)^A023443(n)+n)^Δ[A067628(n)]²`
-/

namespace A066279.P1769192634340717953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067628 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A023443 n : ℚ) ^ (A023443 n : ℤ) + (n : ℚ)) ^ ((f1 (n + 1) - f1 n) ^ 2 : ℤ)

end

end A066279.P1769192634340717953

/-! ## A066279.P10613204752175549311

`(A023443(n)^A023443(n)+n)*A000041(C(n, n²)!)`
-/

namespace A066279.P10613204752175549311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A023443 n : ℚ) ^ (A023443 n : ℤ) + (n : ℚ)) * (A000041 (Nat.factorial (Nat.choose n (n ^ 2))) : ℚ)

end

end A066279.P10613204752175549311

/-! ## A066279.P4262401942490061579

`(A023443(n)^A023443(n)+n)*A001222(A151800(n))`
-/

namespace A066279.P4262401942490061579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A023443 n : ℚ) ^ (A023443 n : ℤ) + (n : ℚ)) * (A001222 (A151800 n).toNat : ℚ)

end

end A066279.P4262401942490061579

/-! ## A066279.P3981826002859288269

`(A023443(n)^A023443(n)+n)*A008683(A031933(n))²`
-/

namespace A066279.P3981826002859288269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A023443 n : ℚ) ^ (A023443 n : ℤ) + (n : ℚ)) * (A008683 (A031933 n).toNat ^ 2 : ℚ)

end

end A066279.P3981826002859288269

/-!
# A066280: a(n) = 1^n + 2^(n+1) + 3^(n+2).

The programs for A066280, there is no canonical definition to state claims against.
-/

/-! ## A066280.P2309347103726056201

`1+2^n+3^(n+1)`
-/

namespace A066280.P2309347103726056201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 ^ n + 3 ^ (n + 1)

end

end A066280.P2309347103726056201

/-! ## A066280.P8512755609666165853

`1^(n-1)+2^n+3^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066280.P8512755609666165853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (2 ^ n : ℚ) + (3 ^ (n + 1) : ℚ)

end

end A066280.P8512755609666165853

/-! ## A066280.P614454823025157234

`Δ[A267799(n+1)+n]`
-/

namespace A066280.P614454823025157234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267799 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066280.P614454823025157234

/-! ## A066280.P1389484383955666269

`Δ[A036550(n)+A033484(n)]`
-/

namespace A066280.P1389484383955666269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036550 n + A033484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066280.P1389484383955666269

/-! ## A066280.P4840077468943382984

`Δ[A120846(n)+A003462(n)]`
-/

namespace A066280.P4840077468943382984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120846 n + A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066280.P4840077468943382984

/-! ## A066280.P13435196838361536858

`abs(A001550(n)+Δ[A034472(n)])`
-/

namespace A066280.P13435196838361536858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001550 n + (f1 (n + 1) - f1 n)|

end

end A066280.P13435196838361536858

/-! ## A066280.P7732897129439801724

`abs(A034472(n+1)+Δ[A000051(n)])`
-/

namespace A066280.P7732897129439801724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034472 (n + 1) + (f1 (n + 1) - f1 n)|

end

end A066280.P7732897129439801724

/-! ## A066280.P3757001219250120210

`abs(A171270(n+1)+3-A000079(n))`
-/

namespace A066280.P3757001219250120210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171270 (n + 1) + 3 - A000079 n|

end

end A066280.P3757001219250120210

/-! ## A066280.P5018010561702351975

`Δ[A003462(n+1)+A000079(n)+n]`
-/

namespace A066280.P5018010561702351975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) + A000079 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066280.P5018010561702351975

/-! ## A066280.P872448643260097723

`Δ[A005056(n+1)/2+n]`
-/

namespace A066280.P872448643260097723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005056 (n + 1) : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066280.P872448643260097723

/-! ## A066280.P6644071752318128211

`Δ[A007689(n+1)/2+n]`
-/

namespace A066280.P6644071752318128211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007689 (n + 1) : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066280.P6644071752318128211

/-! ## A066280.P16566369476509712823

`(A034472(n+1)+A001550(n+1))/2`
-/

namespace A066280.P16566369476509712823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034472 (n + 1) + A001550 (n + 1) : ℚ) / 2

end

end A066280.P16566369476509712823

/-! ## A066280.P7453405637640709618

`(A115099(n+1)+A000079(n+1))/2`
-/

namespace A066280.P7453405637640709618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115099 (n + 1) + A000079 (n + 1) : ℚ) / 2

end

end A066280.P7453405637640709618

/-! ## A066280.P8390360943814291238

`(A074601(n+1)+2*A000079(n)²)/A000079(n+1)`
-/

namespace A066280.P8390360943814291238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074601 (n + 1) + 2 * A000079 n ^ 2 : ℚ) / (A000079 (n + 1) : ℚ)

end

end A066280.P8390360943814291238

/-! ## A066280.P5483256001090142879

`(A074601(n+1)+A000079(2*n+1))/A000079(n+1)`
-/

namespace A066280.P5483256001090142879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074601 (n + 1) + A000079 (2 * n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A066280.P5483256001090142879

/-!
# A066282: Numbers k such that k = (product of nonzero digits of k) * (sum of digits of k).

The programs for A066282, there is no canonical definition to state claims against.
-/

/-! ## A066282.P6667742813540772825

`A129283(n)*A231666(A000265(n+3))`
-/

namespace A066282.P6667742813540772825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n * A231666 (A000265 (n + 3)).toNat

end

end A066282.P6667742813540772825

/-!
# A066283: Number of 3-dimensional polyominoes (or polycubes) with n cells and rotational symmetry group of order exactly 6.

The programs for A066283, there is no canonical definition to state claims against.
-/

/-! ## A066283.P6206779806868480906

`A376982(n+1)+A376990(n+1)+A376982(n+1)`
-/

namespace A066283.P6206779806868480906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376982 (n + 1) + (A376990 (n + 1) + A376982 (n + 1))

end

end A066283.P6206779806868480906

/-!
# A066284: a(n) = A066135(4*n).

The programs for A066284, there is no canonical definition to state claims against.
-/

/-! ## A066284.P10414773840844394047

`A066135(4*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066284.P10414773840844394047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (4 * (n + 1))

end

end A066284.P10414773840844394047

/-! ## A066284.P4458521867004327864

`filter[A066135(n+1), A011708(#)]`
-/

namespace A066284.P4458521867004327864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011708 (f1 j).toNat = 1) n)

end

end A066284.P4458521867004327864

/-! ## A066284.P16068110873750865663

`filter[A066135(n+1), A051067(#)]`
-/

namespace A066284.P16068110873750865663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051067 (f1 j).toNat = 1) n)

end

end A066284.P16068110873750865663

/-! ## A066284.P3380979206759400315

`filter[A066135(n+1), A123110(#)]`
-/

namespace A066284.P3380979206759400315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A066284.P3380979206759400315

/-! ## A066284.P12946356146673164702

`filter[A066135(n+1), A260552(#)]`
-/

namespace A066284.P12946356146673164702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260552 (f1 j).toNat = 1) n)

end

end A066284.P12946356146673164702

/-! ## A066284.P13394000857734367530

`filter[A066135(n+1), A263243(#)]`
-/

namespace A066284.P13394000857734367530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A263243 (f1 j).toNat = 1) n)

end

end A066284.P13394000857734367530

/-! ## A066284.P8570799691342337756

`filter[A066135(n+1), A263919(#)]`
-/

namespace A066284.P8570799691342337756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A263919 (f1 j).toNat = 1) n)

end

end A066284.P8570799691342337756

/-! ## A066284.P6366329132371597347

`filter[A066135(n+1), A266669(#)]`
-/

namespace A066284.P6366329132371597347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266669 (f1 j).toNat = 1) n)

end

end A066284.P6366329132371597347

/-! ## A066284.P11848580095249968134

`filter[A066135(n+1), A266982(#)]`
-/

namespace A066284.P11848580095249968134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266982 (f1 j).toNat = 1) n)

end

end A066284.P11848580095249968134

/-! ## A066284.P13588245105009239984

`filter[A066135(n+1), A267272(#)]`
-/

namespace A066284.P13588245105009239984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267272 (f1 j).toNat = 1) n)

end

end A066284.P13588245105009239984

/-! ## A066284.P16312919891624066273

`filter[A066135(n+1), A267520(#)]`
-/

namespace A066284.P16312919891624066273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267520 (f1 j).toNat = 1) n)

end

end A066284.P16312919891624066273

/-!
# A066285: a(n) is the minimal difference between primes p and q whose sum is 2n.

The programs for A066285, there is no canonical definition to state claims against.
-/

/-! ## A066285.P16655890471285395188

`2*A047160(n+2)`
-/

namespace A066285.P16655890471285395188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047160 (n + 2)

end

end A066285.P16655890471285395188

/-! ## A066285.P14281437764926985868

`2*(n+2-A112823(n+2))`
-/

namespace A066285.P14281437764926985868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2 : ℤ) - A112823 (n + 2))

end

end A066285.P14281437764926985868

/-! ## A066285.P18386163800946074610

`2*(A234345(n+2)-(n+2))`
-/

namespace A066285.P18386163800946074610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A234345 (n + 2) - (n + 2 : ℤ))

end

end A066285.P18386163800946074610

/-! ## A066285.P9715683381814490130

`A005843(A047160(n+2))`
-/

namespace A066285.P9715683381814490130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047160 (n + 2)).toNat

end

end A066285.P9715683381814490130

/-! ## A066285.P12207933396248033236

`A234345(n+2)-A112823(n+2)`
-/

namespace A066285.P12207933396248033236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234345 (n + 2) - A112823 (n + 2)

end

end A066285.P12207933396248033236

/-! ## A066285.P16140159689270299168

`2*(A047949(n+2)-A112824(n+2))`
-/

namespace A066285.P16140159689270299168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047949 (n + 2) - A112824 (n + 2))

end

end A066285.P16140159689270299168

/-! ## A066285.P14751688003858210394

`A020482(n+2)-(A112824(n+2)+A112823(n+2))`
-/

namespace A066285.P14751688003858210394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2) - (A112824 (n + 2) + A112823 (n + 2))

end

end A066285.P14751688003858210394

/-! ## A066285.P17430106709062273946

`A047160(n+2)+A047160(A047949(n+2)+A020481(n+2))`
-/

namespace A066285.P17430106709062273946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (n + 2) + A047160 (A047949 (n + 2) + A020481 (n + 2)).toNat

end

end A066285.P17430106709062273946

/-! ## A066285.P7064202455548554019

`A047160(A020482(n+2)-A047949(n+2))+A047160(n+2)`
-/

namespace A066285.P7064202455548554019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (A020482 (n + 2) - A047949 (n + 2)).toNat + A047160 (n + 2)

end

end A066285.P7064202455548554019

/-! ## A066285.P14053886336000947013

`A047160(n+2)+A047160(A234345(n+2)-A047160(n+2))`
-/

namespace A066285.P14053886336000947013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (n + 2) + A047160 (A234345 (n + 2) - A047160 (n + 2)).toNat

end

end A066285.P14053886336000947013

/-! ## A066285.P8582424610900889961

`2*A325142(n+2)`
-/

namespace A066285.P8582424610900889961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325142 (n + 2)

end

end A066285.P8582424610900889961

/-! ## A066285.P1386171787360706036

`A005843(A325142(n+2))`
-/

namespace A066285.P1386171787360706036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A325142 (n + 2)).toNat

end

end A066285.P1386171787360706036

/-! ## A066285.P11684870121950286155

`A325142(n+2)+A047160(n+2)`
-/

namespace A066285.P11684870121950286155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (n + 2) + A047160 (n + 2)

end

end A066285.P11684870121950286155

/-! ## A066285.P9223382051648371437

`A164023(2*(n+3))-A355250(2*(n+3))`
-/

namespace A066285.P9223382051648371437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (2 * (n + 3)) - A355250 (2 * (n + 3))

end

end A066285.P9223382051648371437

/-! ## A066285.P4758315099503787534

`A049087(A102084(n+2))`
-/

namespace A066285.P4758315099503787534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (A102084 (n + 2)).toNat

end

end A066285.P4758315099503787534

/-! ## A066285.P10021995045466042139

`A001414(2^A047160(n+2))`
-/

namespace A066285.P10021995045466042139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A047160 (n + 2) : ℤ))).toNat

end

end A066285.P10021995045466042139

/-!
# A066286: For even n>=4, let f(n)=A066285(n/2) be the minimal difference between primes p and q whose sum is n. This sequence contains the successive maxima of f.

The programs for A066286, there is no canonical definition to state claims against.
-/

/-! ## A066286.P6780619387308088547

`2*A155764(n+1)`
-/

namespace A066286.P6780619387308088547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155764 (n + 1)

end

end A066286.P6780619387308088547

/-! ## A066286.P5004712622626182654

`A005843(A155764(n+1))`
-/

namespace A066286.P5004712622626182654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A155764 (n + 1)).toNat

end

end A066286.P5004712622626182654

/-! ## A066286.P16642346659926193435

`A004273(A155764(n+1)+1)-1`
-/

namespace A066286.P16642346659926193435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A155764 (n + 1) + 1).toNat - 1

end

end A066286.P16642346659926193435

/-! ## A066286.P3805805525828746173

`A004277(A155764(n+1)+1)-2`
-/

namespace A066286.P3805805525828746173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A155764 (n + 1) + 1).toNat - 2

end

end A066286.P3805805525828746173

/-! ## A066286.P240666106733931126

`A155764(Δ[n²]-n)+A155764(n+1)`
-/

namespace A066286.P240666106733931126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155764 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + A155764 (n + 1)

end

end A066286.P240666106733931126

/-! ## A066286.P8409366460576081985

`A057427(n)+A004273(A155764(n+1))`
-/

namespace A066286.P8409366460576081985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004273 (A155764 (n + 1)).toNat

end

end A066286.P8409366460576081985

/-! ## A066286.P10506549000569014765

`A155764(n+1)/2^A008683(A020483(n))`
-/

namespace A066286.P10506549000569014765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155764 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A066286.P10506549000569014765

/-! ## A066286.P14465736695147146252

`A004273(A155764(n+1))+∑[n]%A006530(n+2)`
-/

namespace A066286.P14465736695147146252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A155764 (n + 1)).toNat + Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A006530 (n + 2))

end

end A066286.P14465736695147146252

/-! ## A066286.P13405524042402718736

`A155764(n+1)+A155764(n+1)%A000032(n+2)`
-/

namespace A066286.P13405524042402718736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155764 (n + 1) + Int.tmod (A155764 (n + 1)) (A000032 (n + 2))

end

end A066286.P13405524042402718736

/-!
# A066287: Number of 3-dimensional polyominoes (or polycubes) with n cells and rotational symmetry group of order exactly 8.

The programs for A066287, there is no canonical definition to state claims against.
-/

/-! ## A066287.P4167170246185938713

`A007814(2^A376991(n+1))`
-/

namespace A066287.P4167170246185938713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A376991 (n + 1) : ℤ))).toNat

end

end A066287.P4167170246185938713

/-! ## A066287.P14402327662177574847

`A056239(2^A376991(n+1))`
-/

namespace A066287.P14402327662177574847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A376991 (n + 1) : ℤ))).toNat

end

end A066287.P14402327662177574847

/-! ## A066287.P16447454334055538672

`A376991(n+1)%A092328(n+2)`
-/

namespace A066287.P16447454334055538672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376991 (n + 1)) (A092328 (n + 2))

end

end A066287.P16447454334055538672

/-! ## A066287.P1052519532709187146

`A376991(n+1)+A000007(A010786(n))`
-/

namespace A066287.P1052519532709187146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376991 (n + 1) + A000007 (A010786 n).toNat

end

end A066287.P1052519532709187146

/-! ## A066287.P10792942538521078113

`A376991(n+1)+A000007(A094649(n))`
-/

namespace A066287.P10792942538521078113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376991 (n + 1) + A000007 (A094649 n).toNat

end

end A066287.P10792942538521078113

/-!
# A066288: Number of 3-dimensional polyominoes (or polycubes) with n cells and rotational symmetry group of order exactly 24.

The programs for A066288, there is no canonical definition to state claims against.
-/

/-! ## A066288.P12469325087279138825

`dr(A376971(n+1))`
-/

namespace A066288.P12469325087279138825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A376971 (n + 1))

end

end A066288.P12469325087279138825

/-! ## A066288.P519506532547215681

`A377334(n+1)+char[7]`
-/

namespace A066288.P519506532547215681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377334 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A066288.P519506532547215681

/-! ## A066288.P4751214960923174119

`A284095(floor(n*sqrt(2))+1)`
-/

namespace A066288.P4751214960923174119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284095 (⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1).toNat

end

end A066288.P4751214960923174119

/-! ## A066288.P16100245950850555441

`A280457(floor(n/4)+1+n)`
-/

namespace A066288.P16100245950850555441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280457 (⌊(n : ℚ) / 4⌋ + 1 + (n : ℤ)).toNat

end

end A066288.P16100245950850555441

/-! ## A066288.P16803681309405830421

`∑{digits}[A376971(char[1]+1+n), #]`
-/

namespace A066288.P16803681309405830421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376971 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066288.P16803681309405830421

/-!
# A066289: Numbers k such that k divides DivisorSigma(2*j-1, k) for all j; i.e., all odd-power-sums of divisors of k are divisible by k.

The programs for A066289, there is no canonical definition to state claims against.
-/

/-! ## A066289.P12529586597591338877

`A076231(∑[A056943(n)!])`
-/

namespace A066289.P12529586597591338877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A056943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076231 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066289.P12529586597591338877

/-! ## A066289.P7867484170693599406

`A000027(A076234(n+1))`
-/

namespace A066289.P7867484170693599406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A076234 (n + 1)).toNat

end

end A066289.P7867484170693599406

/-!
# A066290: Numbers m such that DivisorSigma(4*k-2, m) mod m = 0 holds presumably for all k; that is, (4k-2)-power-sums of divisors of m are divisible by m for all k.

The programs for A066290, there is no canonical definition to state claims against.
-/

/-! ## A066290.P10447100068648881500

`record[A179930(A055710(n+1))]`
-/

namespace A066290.P10447100068648881500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179930 (A055710 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066290.P10447100068648881500

/-! ## A066290.P14670640330140802260

`∩[A046762(n+1), A302478(n+1)]`
-/

namespace A066290.P14670640330140802260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066290.P14670640330140802260

/-! ## A066290.P715117180070994320

`∩[A046762(n+1), A245027(n+1)]`
-/

namespace A066290.P715117180070994320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066290.P715117180070994320

/-! ## A066290.P17376467776557129347

`∩[A046762(n+1), A245030(n+1)]`
-/

namespace A066290.P17376467776557129347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066290.P17376467776557129347

/-!
# A066292: Numbers n such that n divides sigma_(2^k)(n), the sum of the 2^k powers of the divisors of n, for all k>1.

The programs for A066292, there is no canonical definition to state claims against.
-/

/-! ## A066292.P16668976212205901347

`filter[A046764(n+1), A188641(#)]`
-/

namespace A066292.P16668976212205901347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A066292.P16668976212205901347

/-!
# A066293: a(n) = A000203(n)^2 - A001157(n) = sigma(n)^2 - sigma_2(n).

The programs for A066293, the canonical program `A066293.P1248160133260108300` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066293 has offset 1).

The definition of A066293 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)²-A001157(n+1)` (program `A066293.P1248160133260108300`, by `A066293.P1248160133260108300.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066293.P5672434294980047512

`A072861(n+1)-A001157(n+1)`
-/

namespace A066293.P5672434294980047512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1) - A001157 (n + 1)

end

end A066293.P5672434294980047512

namespace A066293

/-- `A072861(n+1)-A001157(n+1)` -/
def P5672434294980047512.Spec : Prop :=
  ∀ n, P5672434294980047512.a n = A066293 (n + 1)

end A066293

/-! ## A066293.P1248160133260108300

`A000203(n+1)²-A001157(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066293

/-- `A000203(n+1)²-A001157(n+1)` -/
def P1248160133260108300.Spec : Prop :=
  ∀ n, P1248160133260108300.a n = A066293 (n + 1)

theorem P1248160133260108300.correct : P1248160133260108300.Spec := by
  intro n
  simp only [A066293, Nat.add_sub_cancel]

end A066293

/-! ## A066293.P18369384409214154386

`∑{d}[n+1, #]²-∑{d}[n+1, #²]`
-/

namespace A066293.P18369384409214154386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d) ^ 2 : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ)

end

end A066293.P18369384409214154386

namespace A066293

/-- `∑{d}[n+1, #]²-∑{d}[n+1, #²]` -/
def P18369384409214154386.Spec : Prop :=
  ∀ n, P18369384409214154386.a n = A066293 (n + 1)

theorem P18369384409214154386.correct : P18369384409214154386.Spec := by
  intro n
  simp only [A066293, Nat.add_sub_cancel, A066293.P18369384409214154386.f1, A066293.P18369384409214154386.f2, A066293.P18369384409214154386.a, A066293.P1248160133260108300.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066293

/-! ## A066293.P1370199911645037671

`2*A119616(n+1)`
-/

namespace A066293.P1370199911645037671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119616 (n + 1)

end

end A066293.P1370199911645037671

namespace A066293

/-- `2*A119616(n+1)` -/
def P1370199911645037671.Spec : Prop :=
  ∀ n, P1370199911645037671.a n = A066293 (n + 1)

end A066293

/-! ## A066293.P15033890480314229727

`A066294(n+1)+2*(n+1)`
-/

namespace A066293.P15033890480314229727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066294 (n + 1) + (2 * (n + 1) : ℤ)

end

end A066293.P15033890480314229727

namespace A066293

/-- `A066294(n+1)+2*(n+1)` -/
def P15033890480314229727.Spec : Prop :=
  ∀ n, P15033890480314229727.a n = A066293 (n + 1)

theorem P15033890480314229727.correct : P15033890480314229727.Spec := by
  intro n
  simp only [A066293, Nat.add_sub_cancel, A066293.P15033890480314229727.a, A066293.P1248160133260108300.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A066294, A066294.P3948626955409705385.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066293

/-! ## A066293.P11921691022601885657

`A143348(n+1)²-A001157(n+1)`
-/

namespace A066293.P11921691022601885657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1) ^ 2 - A001157 (n + 1)

end

end A066293.P11921691022601885657

namespace A066293

/-- `A143348(n+1)²-A001157(n+1)` -/
def P11921691022601885657.Spec : Prop :=
  ∀ n, P11921691022601885657.a n = A066293 (n + 1)

end A066293

/-! ## A066293.P8663693013106835746

`2*(A067692(n+1)-A001157(n+1))`
-/

namespace A066293.P8663693013106835746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A067692 (n + 1) - A001157 (n + 1))

end

end A066293.P8663693013106835746

namespace A066293

/-- `2*(A067692(n+1)-A001157(n+1))` -/
def P8663693013106835746.Spec : Prop :=
  ∀ n, P8663693013106835746.a n = A066293 (n + 1)

end A066293

/-! ## A066293.P4106408432023708886

`2*(A072861(n+1)-A067692(n+1))`
-/

namespace A066293.P4106408432023708886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072861 (n + 1) - A067692 (n + 1))

end

end A066293.P4106408432023708886

namespace A066293

/-- `2*(A072861(n+1)-A067692(n+1))` -/
def P4106408432023708886.Spec : Prop :=
  ∀ n, P4106408432023708886.a n = A066293 (n + 1)

end A066293

/-! ## A066293.P6310274769593718949

`2*(A184387(n+1)-A007437(n+1))`
-/

namespace A066293.P6310274769593718949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A184387 (n + 1) - A007437 (n + 1))

end

end A066293.P6310274769593718949

namespace A066293

/-- `2*(A184387(n+1)-A007437(n+1))` -/
def P6310274769593718949.Spec : Prop :=
  ∀ n, P6310274769593718949.a n = A066293 (n + 1)

end A066293

/-! ## A066293.P10358172373595387468

`(1-A088580(n+1))²-A001157(n+1)`
-/

namespace A066293.P10358172373595387468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A088580 (n + 1)) ^ 2 - A001157 (n + 1)

end

end A066293.P10358172373595387468

namespace A066293

/-- `(1-A088580(n+1))²-A001157(n+1)` -/
def P10358172373595387468.Spec : Prop :=
  ∀ n, P10358172373595387468.a n = A066293 (n + 1)

theorem P10358172373595387468.correct : P10358172373595387468.Spec := by
  intro n
  simp only [A066293, Nat.add_sub_cancel, A066293.P10358172373595387468.a, A066293.P1248160133260108300.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066293

/-! ## A066293.P15440847798649904112

`2*(A000203(n+1)²-A067692(n+1))`
-/

namespace A066293.P15440847798649904112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000203 (n + 1) ^ 2 - A067692 (n + 1))

end

end A066293.P15440847798649904112

namespace A066293

/-- `2*(A000203(n+1)²-A067692(n+1))` -/
def P15440847798649904112.Spec : Prop :=
  ∀ n, P15440847798649904112.a n = A066293 (n + 1)

end A066293

/-! ## A066293.P13021905154520277339

`(A074400(n+1)/2)²-A001157(n+1)`
-/

namespace A066293.P13021905154520277339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A074400 (n + 1) : ℚ) / 2) ^ 2 - (A001157 (n + 1) : ℚ)

end

end A066293.P13021905154520277339

namespace A066293

/-- `(A074400(n+1)/2)²-A001157(n+1)` -/
def P13021905154520277339.Spec : Prop :=
  ∀ n, P13021905154520277339.a n = (A066293 (n + 1) : ℚ)

theorem P13021905154520277339.correct : P13021905154520277339.Spec := by
  intro n
  simp only [A066293, Nat.add_sub_cancel, A066293.P13021905154520277339.a, A066293.P1248160133260108300.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066293

/-! ## A066293.P11645381914180310940

`(A001065(n+1)+1+n)²-A001157(n+1)`
-/

namespace A066293.P11645381914180310940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ)) ^ 2 - A001157 (n + 1)

end

end A066293.P11645381914180310940

namespace A066293

/-- `(A001065(n+1)+1+n)²-A001157(n+1)` -/
def P11645381914180310940.Spec : Prop :=
  ∀ n, P11645381914180310940.a n = A066293 (n + 1)

theorem P11645381914180310940.correct : P11645381914180310940.Spec := by
  intro n
  simp only [A066293, Nat.add_sub_cancel, A066293.P11645381914180310940.a, A066293.P1248160133260108300.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066293

/-! ## A066293.P5330964709847039004

`(A155085(n+1)-(n+1))²-A001157(n+1)`
-/

namespace A066293.P5330964709847039004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155085 (n + 1) - (n + 1 : ℤ)) ^ 2 - A001157 (n + 1)

end

end A066293.P5330964709847039004

namespace A066293

/-- `(A155085(n+1)-(n+1))²-A001157(n+1)` -/
def P5330964709847039004.Spec : Prop :=
  ∀ n, P5330964709847039004.a n = A066293 (n + 1)

theorem P5330964709847039004.correct : P5330964709847039004.Spec := by
  intro n
  simp only [A066293, Nat.add_sub_cancel, A066293.P5330964709847039004.a, A066293.P1248160133260108300.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066293

/-! ## A066293.P7848087294843741226

`(A064987(n+1)/(n+1))²-A001157(n+1)`
-/

namespace A066293.P7848087294843741226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2 - (A001157 (n + 1) : ℚ)

end

end A066293.P7848087294843741226

namespace A066293

/-- `(A064987(n+1)/(n+1))²-A001157(n+1)` -/
def P7848087294843741226.Spec : Prop :=
  ∀ n, P7848087294843741226.a n = (A066293 (n + 1) : ℚ)

end A066293

/-! ## A066293.P10868429102201318427

`(A237588(n+1)+Δ[n²])²-A001157(n+1)`
-/

namespace A066293.P10868429102201318427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237588 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2 - A001157 (n + 1)

end

end A066293.P10868429102201318427

namespace A066293

/-- `(A237588(n+1)+Δ[n²])²-A001157(n+1)` -/
def P10868429102201318427.Spec : Prop :=
  ∀ n, P10868429102201318427.a n = A066293 (n + 1)

theorem P10868429102201318427.correct : P10868429102201318427.Spec := by
  intro n
  simp only [A066293, Nat.add_sub_cancel, A066293.P10868429102201318427.f1, A066293.P10868429102201318427.a, A066293.P1248160133260108300.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A237588, A237588.P10590847318200798620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066293

/-! ## A066293.P15295833900730014477

`A067692(n+1)+A119616(n+1)-A001157(n+1)`
-/

namespace A066293.P15295833900730014477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067692 (n + 1) + (A119616 (n + 1) - A001157 (n + 1))

end

end A066293.P15295833900730014477

namespace A066293

/-- `A067692(n+1)+A119616(n+1)-A001157(n+1)` -/
def P15295833900730014477.Spec : Prop :=
  ∀ n, P15295833900730014477.a n = A066293 (n + 1)

end A066293

/-! ## A066293.P1321936157898095237

`A000203(n+1)*A065387(n+1)-A072779(n+1)`
-/

namespace A066293.P1321936157898095237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A065387 (n + 1) - A072779 (n + 1)

end

end A066293.P1321936157898095237

namespace A066293

/-- `A000203(n+1)*A065387(n+1)-A072779(n+1)` -/
def P1321936157898095237.Spec : Prop :=
  ∀ n, P1321936157898095237.a n = A066293 (n + 1)

theorem P1321936157898095237.correct : P1321936157898095237.Spec := by
  intro n
  simp only [A066293, Nat.add_sub_cancel, A066293.P1321936157898095237.a, A066293.P1248160133260108300.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A065387, A065387.P11284875715279330998.a, A072779, A072779.P6312362607993792786.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066293

/-!
# A066294: a(n) = A000203(n)^2 - A001157(n) - 2n = sigma(n)^2 - sigma_2(n) - 2n.

The programs for A066294, the canonical program `A066294.P3948626955409705385` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066294 has offset 1).

The definition of A066294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)²-A001157(n+1)-2*(n+1)` (program `A066294.P3948626955409705385`, by `A066294.P3948626955409705385.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066294.P3948626955409705385

`A000203(n+1)²-A001157(n+1)-2*(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066294

/-- `A000203(n+1)²-A001157(n+1)-2*(n+1)` -/
def P3948626955409705385.Spec : Prop :=
  ∀ n, P3948626955409705385.a n = A066294 (n + 1)

theorem P3948626955409705385.correct : P3948626955409705385.Spec := by
  intro n
  simp only [A066294, Nat.add_sub_cancel]

end A066294

/-! ## A066294.P2977263834050305820

`A066293(n+1)-2*(n+1)`
-/

namespace A066294.P2977263834050305820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066293 (n + 1) - (2 * (n + 1) : ℤ)

end

end A066294.P2977263834050305820

namespace A066294

/-- `A066293(n+1)-2*(n+1)` -/
def P2977263834050305820.Spec : Prop :=
  ∀ n, P2977263834050305820.a n = A066294 (n + 1)

end A066294

/-! ## A066294.P3010685640658371666

`2*(A119616(n+1)-(n+1))`
-/

namespace A066294.P3010685640658371666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A119616 (n + 1) - (n + 1 : ℤ))

end

end A066294.P3010685640658371666

namespace A066294

/-- `2*(A119616(n+1)-(n+1))` -/
def P3010685640658371666.Spec : Prop :=
  ∀ n, P3010685640658371666.a n = A066294 (n + 1)

end A066294

/-! ## A066294.P1887901764496222464

`A066293(n+1)-1-A005408(n)`
-/

namespace A066294.P1887901764496222464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066293 (n + 1) - 1 - A005408 n

end

end A066294.P1887901764496222464

namespace A066294

/-- `A066293(n+1)-1-A005408(n)` -/
def P1887901764496222464.Spec : Prop :=
  ∀ n, P1887901764496222464.a n = A066294 (n + 1)

theorem P1887901764496222464.correct : P1887901764496222464.Spec := by
  intro n
  simp only [A066294, Nat.add_sub_cancel, A066294.P1887901764496222464.a, A066294.P3948626955409705385.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A005408, A005408.P17437947328870227736.a, A066293, A066293.P1248160133260108300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066294

/-! ## A066294.P561153693699843188

`∑[n]+A066293(n+1)-A000096(n+1)`
-/

namespace A066294.P561153693699843188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A066293 (n + 1) - A000096 (n + 1))

end

end A066294.P561153693699843188

namespace A066294

/-- `∑[n]+A066293(n+1)-A000096(n+1)` -/
def P561153693699843188.Spec : Prop :=
  ∀ n, P561153693699843188.a n = A066294 (n + 1)

end A066294

/-! ## A066294.P15772656605280326506

`A066293(n+1)-(n+1)-A000027(n+1)`
-/

namespace A066294.P15772656605280326506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066293 (n + 1) - (n + 1 : ℤ) - A000027 (n + 1)

end

end A066294.P15772656605280326506

namespace A066294

/-- `A066293(n+1)-(n+1)-A000027(n+1)` -/
def P15772656605280326506.Spec : Prop :=
  ∀ n, P15772656605280326506.a n = A066294 (n + 1)

theorem P15772656605280326506.correct : P15772656605280326506.Spec := by
  intro n
  simp only [A066294, Nat.add_sub_cancel, A066294.P15772656605280326506.a, A066294.P3948626955409705385.a, A000027, A000027.P10331202704469894836.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A066293, A066293.P1248160133260108300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066294

/-! ## A066294.P10928044900849671285

`A001478(n+1)+A066293(n+1)+A001478(n+1)`
-/

namespace A066294.P10928044900849671285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A066293 (n + 1) + A001478 (n + 1))

end

end A066294.P10928044900849671285

namespace A066294

/-- `A001478(n+1)+A066293(n+1)+A001478(n+1)` -/
def P10928044900849671285.Spec : Prop :=
  ∀ n, P10928044900849671285.a n = A066294 (n + 1)

theorem P10928044900849671285.correct : P10928044900849671285.Spec := by
  intro n
  simp only [A066294, Nat.add_sub_cancel, A066294.P10928044900849671285.a, A066294.P3948626955409705385.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A001478, A001478.P11279598861711037921.a, A066293, A066293.P1248160133260108300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066294

/-! ## A066294.P14131967809325466295

`A005843(A119616(n+1)-n)-2`
-/

namespace A066294.P14131967809325466295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A119616 (n + 1) - (n : ℤ)).toNat - 2

end

end A066294.P14131967809325466295

namespace A066294

/-- `A005843(A119616(n+1)-n)-2` -/
def P14131967809325466295.Spec : Prop :=
  ∀ n, P14131967809325466295.a n = A066294 (n + 1)

end A066294

/-! ## A066294.P12394945949824959397

`A005408(A119616(n+1))-A005408(n+1)`
-/

namespace A066294.P12394945949824959397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A119616 (n + 1)).toNat - A005408 (n + 1)

end

end A066294.P12394945949824959397

namespace A066294

/-- `A005408(A119616(n+1))-A005408(n+1)` -/
def P12394945949824959397.Spec : Prop :=
  ∀ n, P12394945949824959397.a n = A066294 (n + 1)

end A066294

/-! ## A066294.P5563615505070042469

`A004277(A119616(n+1))-(A004277(n)+2)`
-/

namespace A066294.P5563615505070042469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A119616 (n + 1)).toNat - (A004277 n + 2)

end

end A066294.P5563615505070042469

namespace A066294

/-- `A004277(A119616(n+1))-(A004277(n)+2)` -/
def P5563615505070042469.Spec : Prop :=
  ∀ n, P5563615505070042469.a n = A066294 (n + 1)

end A066294

/-!
# A066295: Number of Abelian groups of order n minus the number of non-Abelian groups of order n.

The programs for A066295, there is no canonical definition to state claims against.
-/

/-! ## A066295.P2114061916497476513

`A000688(n+1)-A060689(n+1)`
-/

namespace A066295.P2114061916497476513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) - A060689 (n + 1)

end

end A066295.P2114061916497476513

/-! ## A066295.P7430488736205189907

`∏{e}[n+1, A000041(#)]-A060689(n+1)`
-/

namespace A066295.P7430488736205189907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p) - A060689 (n + 1)

end

end A066295.P7430488736205189907

/-! ## A066295.P526662885656129618

`∏{e}[n+1, A242699(#)]-A060689(n+1)`
-/

namespace A066295.P526662885656129618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A242699 (Nat.factorization (f1 n) p + 64) - A060689 (n + 1)

end

end A066295.P526662885656129618

/-! ## A066295.P477052989029336210

`∏{e}[n+1, A332746(#)]-A060689(n+1)`
-/

namespace A066295.P477052989029336210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A332746 (Nat.factorization (f1 n) p) - A060689 (n + 1)

end

end A066295.P477052989029336210

/-! ## A066295.P5678123742438966315

`∏{e}[n+1, A341914(#)]-A060689(n+1)`
-/

namespace A066295.P5678123742438966315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A341914 (Nat.factorization (f1 n) p + 55) - A060689 (n + 1)

end

end A066295.P5678123742438966315

/-! ## A066295.P2681291757713830857

`A000688(n+1)+A000688(n+1)-A000001(n+1)`
-/

namespace A066295.P2681291757713830857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) + (A000688 (n + 1) - A000001 (n + 1))

end

end A066295.P2681291757713830857

/-! ## A066295.P8833956198882811831

`A000001(n+1)-(A060689(n+1)+A060689(n+1))`
-/

namespace A066295.P8833956198882811831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1) - (A060689 (n + 1) + A060689 (n + 1))

end

end A066295.P8833956198882811831

/-! ## A066295.P4160763014108047522

`A066060(n+1)-(A088806(n+1)+A060689(n+1))`
-/

namespace A066295.P4160763014108047522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - (A088806 (n + 1) + A060689 (n + 1))

end

end A066295.P4160763014108047522

/-! ## A066295.P7949193072504471642

`A104404(n+1)-(A104488(n+1)+A060689(n+1))`
-/

namespace A066295.P7949193072504471642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (n + 1) - (A104488 (n + 1) + A060689 (n + 1))

end

end A066295.P7949193072504471642

/-! ## A066295.P9106000481953886426

`A238877(Δ[n²])-A060689(n+1)`
-/

namespace A066295.P9106000481953886426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A060689 (n + 1)

end

end A066295.P9106000481953886426

/-! ## A066295.P7809015416658251785

`A000688(n+1)-A238877(2*(n+1))`
-/

namespace A066295.P7809015416658251785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) - A238877 (2 * (n + 1))

end

end A066295.P7809015416658251785

/-! ## A066295.P6328363647550470350

`A238877(2*n+1)-A238877(2*(n+1))`
-/

namespace A066295.P6328363647550470350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (2 * n + 1) - A238877 (2 * (n + 1))

end

end A066295.P6328363647550470350

/-! ## A066295.P7775470067308911045

`A104404(A003961(n+1))-A060689(n+1)`
-/

namespace A066295.P7775470067308911045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (A003961 (n + 1)).toNat - A060689 (n + 1)

end

end A066295.P7775470067308911045

/-! ## A066295.P10321271185448350351

`A104404(A064988(n+1))-A060689(n+1)`
-/

namespace A066295.P10321271185448350351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (A064988 (n + 1)).toNat - A060689 (n + 1)

end

end A066295.P10321271185448350351

/-!
# A066296: a(n) = floor(n^(1/omega(n))).

The programs for A066296, the canonical program `A066296.P301796298145754100` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066296 has offset 2).

The definition of A066296 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+2)^(1/A001221(n+2)))` (program `A066296.P301796298145754100`, by `A066296.P301796298145754100.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066296.P301796298145754100

`floor((n+2)^(1/A001221(n+2)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066296

/-- `floor((n+2)^(1/A001221(n+2)))` -/
def P301796298145754100.Spec : Prop :=
  ∀ n, P301796298145754100.a n = A066296 (n + 2)

theorem P301796298145754100.correct : P301796298145754100.Spec := by
  intro n
  simp only [A066296, Nat.add_sub_cancel]

end A066296

/-! ## A066296.P13748426618787088347

`floor(root(A008620(3*(n+1)), A001221(n+2)))`
-/

namespace A066296.P13748426618787088347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008620 (3 * (n + 1)) : ℝ) ^ (1 / (A001221 (n + 2) : ℝ))⌋

end

end A066296.P13748426618787088347

namespace A066296

/-- `floor(root(A008620(3*(n+1)), A001221(n+2)))` -/
def P13748426618787088347.Spec : Prop :=
  ∀ n, P13748426618787088347.a n = A066296 (n + 2)

end A066296

/-!
# A066298: a(n) = googol (mod n).

The programs for A066298, the canonical program `A066298.P6599813564015518804` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066298 has offset 1).

The definition of A066298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066298.P6599813564015518804

`(A178500(n+1)*A178500(A061601(n)))%(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A066298

/-- `(A178500(n+1)*A178500(A061601(n)))%(n+1)` -/
def P6599813564015518804.Spec : Prop :=
  ∀ n, P6599813564015518804.a n = A066298 (n + 1)

theorem P6599813564015518804.correct : P6599813564015518804.Spec := by
  intro n
  simp only [A066298, Nat.add_sub_cancel]

end A066298

/-! ## A066298.P8698232309552413697

`A067007(n+1)*A228100(A060383(n+1))`
-/

namespace A066298.P8698232309552413697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067007 (n + 1) * A228100 (A060383 (n + 1)).toNat

end

end A066298.P8698232309552413697

namespace A066298

/-- `A067007(n+1)*A228100(A060383(n+1))` -/
def P8698232309552413697.Spec : Prop :=
  ∀ n, P8698232309552413697.a n = A066298 (n + 1)

end A066298

/-! ## A066298.P12640292751912702182

`A056553(A343578(n+1))%(n+1)`
-/

namespace A066298.P12640292751912702182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056553 (A343578 (n + 1)).toNat) (n + 1 : ℤ)

end

end A066298.P12640292751912702182

namespace A066298

/-- `A056553(A343578(n+1))%(n+1)` -/
def P12640292751912702182.Spec : Prop :=
  ∀ n, P12640292751912702182.a n = A066298 (n + 1)

end A066298

/-! ## A066298.P11032653077442263605

`A165831(A260955(n+2))%(n+1)`
-/

namespace A066298.P11032653077442263605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165831 (A260955 (n + 2)).toNat) (n + 1 : ℤ)

end

end A066298.P11032653077442263605

namespace A066298

/-- `A165831(A260955(n+2))%(n+1)` -/
def P11032653077442263605.Spec : Prop :=
  ∀ n, P11032653077442263605.a n = A066298 (n + 1)

end A066298

/-! ## A066298.P17792430779866556251

`A016936(2*n)%A000005(A000079(n))`
-/

namespace A066298.P17792430779866556251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016936 (2 * n)) (A000005 (A000079 n).toNat)

end

end A066298.P17792430779866556251

namespace A066298

/-- `A016936(2*n)%A000005(A000079(n))` -/
def P17792430779866556251.Spec : Prop :=
  ∀ n, P17792430779866556251.a n = A066298 (n + 1)

end A066298

