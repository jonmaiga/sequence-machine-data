import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
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
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

/-!
# A218600: Partial sums of A213709.

The programs for A218600, there is no canonical definition to state claims against.
-/

/-! ## A218600.P7539771331073016279

`A213710(n)-1`
-/

namespace A218600.P7539771331073016279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213710 n - 1

end

end A218600.P7539771331073016279

/-! ## A218600.P13808462314752057018

`∑[A213709(abs(1-n))]-1`
-/

namespace A218600.P13808462314752057018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A218600.P13808462314752057018

/-! ## A218600.P17454372769329681446

`A213709(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A218600.P17454372769329681446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A213709 (n - 1) + a (n - 1)

end

end A218600.P17454372769329681446

/-! ## A218600.P6758011611989733501

`fo[A213712(n)]`
-/

namespace A218600.P6758011611989733501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A218600.P6758011611989733501

/-! ## A218600.P5665903582428646276

`A071542(2^n-1)`
-/

namespace A218600.P5665903582428646276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (2 ^ n - 1)

end

end A218600.P5665903582428646276

/-!
# A218601: After the first zero, integers from 0 to A213709(n)-1 followed by integers from 0 to A213709(n+1)-1, etc.

The programs for A218601, the canonical program `A218601.P8037354091719983160` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218601 has offset 0).

The definition of A218601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8728 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218601.P14586400042732542495

`A218599(A218602(n))`
-/

namespace A218601.P14586400042732542495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218599 (A218602 n).toNat

end

end A218601.P14586400042732542495

namespace A218601

/-- `A218599(A218602(n))` -/
def P14586400042732542495.Spec : Prop :=
  ∀ n, P14586400042732542495.a n = A218601 n

end A218601

/-! ## A218601.P8037354091719983160

`n%A213710(∑[char[A213710(n+1)]])`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A218601

/-- `n%A213710(∑[char[A213710(n+1)]])` -/
def P8037354091719983160.Spec : Prop :=
  ∀ n, P8037354091719983160.a n = A218601 n

theorem P8037354091719983160.correct : P8037354091719983160.Spec := by
  intro n
  simp only [A218601]

end A218601

/-! ## A218601.P12762114166699587275

`n-A218602(A218600(A213711(n)))`
-/

namespace A218601.P12762114166699587275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A218602 (A218600 (A213711 n).toNat).toNat

end

end A218601.P12762114166699587275

namespace A218601

/-- `n-A218602(A218600(A213711(n)))` -/
def P12762114166699587275.Spec : Prop :=
  ∀ n, P12762114166699587275.a n = A218601 n

end A218601

/-! ## A218601.P218114503793754328

`A218600(A213711(n))-A071542(A218616(n))`
-/

namespace A218601.P218114503793754328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218600 (A213711 n).toNat - A071542 (A218616 n).toNat

end

end A218601.P218114503793754328

namespace A218601

/-- `A218600(A213711(n))-A071542(A218616(n))` -/
def P218114503793754328.Spec : Prop :=
  ∀ n, P218114503793754328.a n = A218601 n

end A218601

/-!
# A218602: Simple self-inverse permutation of natural numbers: after zero, list each block of A213709(n) numbers in reverse order, from A218600(n) to A213710(n-1).

The programs for A218602, there is no canonical definition to state claims against.
-/

/-! ## A218602.P17564396408701816857

`A218600(A213711(n))-A218601(n)`
-/

namespace A218602.P17564396408701816857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218600 (A213711 n).toNat - A218601 n

end

end A218602.P17564396408701816857

/-! ## A218602.P8760563401523293208

`A071542(A218616(n))`
-/

namespace A218602.P8760563401523293208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (A218616 n).toNat

end

end A218602.P8760563401523293208

/-! ## A218602.P4822769518579264990

`A218599(n)+n-A218601(n)`
-/

namespace A218602.P4822769518579264990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218599 n + ((n : ℤ) - A218601 n)

end

end A218602.P4822769518579264990

/-! ## A218602.P5865662636805752259

`A269371(A218616(n)%A000328(n))`
-/

namespace A218602.P5865662636805752259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (Int.tmod (A218616 n) (A000328 n)).toNat

end

end A218602.P5865662636805752259

/-!
# A218603: a(n) = A179016(n) - A213708(n).

The programs for A218603, there is no canonical definition to state claims against.
-/

/-! ## A218603.P17842801597541588507

`A179016(n)-A213708(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218603.P17842801597541588507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n - A213708 n

end

end A218603.P17842801597541588507

/-! ## A218603.P17385450226149905853

`A086876(n)-A218604(n)-1`
-/

namespace A218603.P17385450226149905853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086876 n - A218604 n - 1

end

end A218603.P17385450226149905853

/-! ## A218603.P7382600227764067702

`∑[A213712(n)]-A213708(n)`
-/

namespace A218603.P7382600227764067702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A213708 n

end

end A218603.P7382600227764067702

/-! ## A218603.P4832432471869225147

`A086876(n)-(A218604(n)+1)`
-/

namespace A218603.P4832432471869225147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086876 n - (A218604 n + 1)

end

end A218603.P4832432471869225147

/-! ## A218603.P3530378746270707776

`A179016(n)-(comp[A071542(n)+n+1]-n)`
-/

namespace A218603.P3530378746270707776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 n + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A218603.P3530378746270707776

/-! ## A218603.P11336884662167037313

`A173601(n)-(A218604(n)+A213708(n))`
-/

namespace A218603.P11336884662167037313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - (A218604 n + A213708 n)

end

end A218603.P11336884662167037313

/-! ## A218603.P11398656094512005355

`(A179016(n)+A086876(n))%(A173601(n)+1)`
-/

namespace A218603.P11398656094512005355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179016 n + A086876 n) (A173601 n + 1)

end

end A218603.P11398656094512005355

/-! ## A218603.P17423573610489368893

`A005187(A213715(n))-A213708(n)`
-/

namespace A218603.P17423573610489368893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A213715 n).toNat - A213708 n

end

end A218603.P17423573610489368893

/-! ## A218603.P13268038842576110503

`eq[0, A213725(n)]-A213708(n)`
-/

namespace A218603.P13268038842576110503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A213708 n

end

end A218603.P13268038842576110503

/-! ## A218603.P2132742836647706389

`A011371(A213730(n))-A213708(n)`
-/

namespace A218603.P2132742836647706389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A213730 n).toNat - A213708 n

end

end A218603.P2132742836647706389

/-!
# A218604: a(n) = A173601(n) - A179016(n).

The programs for A218604, there is no canonical definition to state claims against.
-/

/-! ## A218604.P10605607156727335390

`A173601(n)-A179016(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218604.P10605607156727335390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - A179016 n

end

end A218604.P10605607156727335390

/-! ## A218604.P6938916098407495754

`A086876(n)-A218603(n)-1`
-/

namespace A218604.P6938916098407495754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086876 n - A218603 n - 1

end

end A218604.P6938916098407495754

/-! ## A218604.P2291423605058469271

`A173601(n)-∑[A213712(n)]`
-/

namespace A218604.P2291423605058469271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218604.P2291423605058469271

/-! ## A218604.P1301963021701676386

`A086876(n)-(A218603(n)+1)`
-/

namespace A218604.P1301963021701676386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086876 n - (A218603 n + 1)

end

end A218604.P1301963021701676386

/-! ## A218604.P1545154287512477046

`A213708(n+1)-(A179016(n)+1)`
-/

namespace A218604.P1545154287512477046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213708 (n + 1) - (A179016 n + 1)

end

end A218604.P1545154287512477046

/-! ## A218604.P6806477765640024158

`A173601(n)-(A218603(n)+A213708(n))`
-/

namespace A218604.P6806477765640024158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - (A218603 n + A213708 n)

end

end A218604.P6806477765640024158

/-! ## A218604.P14622848428903661352

`Δ[A179016(n)]-(A218603(n+1)+1)`
-/

namespace A218604.P14622848428903661352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A218603 (n + 1) + 1)

end

end A218604.P14622848428903661352

/-! ## A218604.P16271401336763190543

`A173601(n)-A005187(A213715(n))`
-/

namespace A218604.P16271401336763190543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - A005187 (A213715 n).toNat

end

end A218604.P16271401336763190543

/-! ## A218604.P2096254251637644139

`A173601(n)-eq[0, A213725(n)]`
-/

namespace A218604.P2096254251637644139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A218604.P2096254251637644139

/-! ## A218604.P8366578249403606909

`A173601(n)-eq[0, A213727(n)]`
-/

namespace A218604.P8366578249403606909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A218604.P8366578249403606909

/-! ## A218604.P6824036709125985804

`A173601(n)-A011371(A213730(n))`
-/

namespace A218604.P6824036709125985804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - A011371 (A213730 n).toNat

end

end A218604.P6824036709125985804

/-!
# A218605: a(n) = A218607(n-1) + 1.

The programs for A218605, there is no canonical definition to state claims against.
-/

/-! ## A218605.P2597494691452202663

`A218607(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218605.P2597494691452202663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218607 n + 1

end

end A218605.P2597494691452202663

/-! ## A218605.P1866453426332507632

`record[gcd(1+n, A218603(n))]`
-/

namespace A218605.P1866453426332507632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 + n : ℤ) (A218603 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218605.P1866453426332507632

/-! ## A218605.P17238745714347546285

`record[(n+1)/A000326(A218603(n)+1)]`
-/

namespace A218605.P17238745714347546285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000326 (A218603 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218605.P17238745714347546285

/-! ## A218605.P12808935722176973918

`record[n+1-A001096(n)*A218603(n)]`
-/

namespace A218605.P12808935722176973918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001096 n * A218603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218605.P12808935722176973918

/-! ## A218605.P14978391688385882749

`record[n+1-A071542(n*A218603(n))]`
-/

namespace A218605.P14978391688385882749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A071542 ((n : ℤ) * A218603 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218605.P14978391688385882749

/-! ## A218605.P1013499411926072297

`record[n+1-A173601(n)*A218603(n)]`
-/

namespace A218605.P1013499411926072297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A173601 n * A218603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218605.P1013499411926072297

/-! ## A218605.P3150637475622936524

`record[(n+1)/A005898(A218603(n%(n+1)))]`
-/

namespace A218605.P3150637475622936524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A005898 (A218603 (n % (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218605.P3150637475622936524

/-!
# A218606: a(n) = A218608(n-1) + 1.

The programs for A218606, there is no canonical definition to state claims against.
-/

/-! ## A218606.P5107546915804962530

`A218608(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218606.P5107546915804962530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218608 n + 1

end

end A218606.P5107546915804962530

/-! ## A218606.P10042252377872978907

`eq[0, A218604(n)]+1`
-/

namespace A218606.P10042252377872978907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A218606.P10042252377872978907

/-! ## A218606.P10450013973524113272

`record[gcd(n+1, A000120(n)*A218604(n))]`
-/

namespace A218606.P10450013973524113272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000120 n * A218604 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218606.P10450013973524113272

/-! ## A218606.P17239343314571375749

`record[n+1-A000040(n+1)*A218604(n)]`
-/

namespace A218606.P17239343314571375749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A218604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218606.P17239343314571375749

/-! ## A218606.P9457951213521444189

`record[n+1-A124487(n+1)*A218604(n)]`
-/

namespace A218606.P9457951213521444189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A124487 (n + 1) * A218604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218606.P9457951213521444189

/-! ## A218606.P14008370852593153538

`record[n+1-A218604(n)*A330715(n+1)]`
-/

namespace A218606.P14008370852593153538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A218604 n * A330715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218606.P14008370852593153538

/-! ## A218606.P5575969167854852504

`A008619(2*A218608(n))`
-/

namespace A218606.P5575969167854852504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A218608 n).toNat

end

end A218606.P5575969167854852504

/-!
# A218607: The positions of zeros in A218603, i.e., those integers i for which A179016(i) = A213708(i).

The programs for A218607, there is no canonical definition to state claims against.
-/

/-! ## A218607.P8327610959773925848

`A218605(1+n)-1`
-/

namespace A218607.P8327610959773925848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218605 (1 + n) - 1

end

end A218607.P8327610959773925848

/-! ## A218607.P16577811643802117471

`eq[0, A179016(n)-A213708(n)]`
-/

namespace A218607.P16577811643802117471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n - A213708 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218607.P16577811643802117471

/-! ## A218607.P7365398833313830764

`A023443(A218605(1+n))`
-/

namespace A218607.P7365398833313830764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A218605 (1 + n)).toNat

end

end A218607.P7365398833313830764

/-! ## A218607.P3090988488620822722

`eq[0, A218603(n)]`
-/

namespace A218607.P3090988488620822722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218607.P3090988488620822722

/-! ## A218607.P9987467770264836853

`record[n/A005898(A218603(n)²)]`
-/

namespace A218607.P9987467770264836853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A005898 (A218603 n ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218607.P9987467770264836853

/-! ## A218607.P10366465314853777904

`record[gcd(n, A000120(2*A218603(n)))]`
-/

namespace A218607.P10366465314853777904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000120 (2 * A218603 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218607.P10366465314853777904

/-! ## A218607.P417732253738971102

`record[n-A000326(n)*A218603(n)]`
-/

namespace A218607.P417732253738971102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000326 n * A218603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218607.P417732253738971102

/-! ## A218607.P1508747586144757162

`record[n-A001096(n)*A218603(n)]`
-/

namespace A218607.P1508747586144757162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001096 n * A218603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218607.P1508747586144757162

/-! ## A218607.P9975996226223978287

`record[n-A005898(n)*A218603(n)]`
-/

namespace A218607.P9975996226223978287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005898 n * A218603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218607.P9975996226223978287

/-! ## A218607.P475679730203089320

`record[n-A071542(n*A218603(n))]`
-/

namespace A218607.P475679730203089320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071542 ((n : ℤ) * A218603 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218607.P475679730203089320

/-! ## A218607.P873454623285263834

`record[n-A173601(n)*A218603(n)]`
-/

namespace A218607.P873454623285263834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A173601 n * A218603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218607.P873454623285263834

/-!
# A218608: The positions of zeros in A218604, i.e., those integers i for which A179016(i) = A173601(i).

The programs for A218608, there is no canonical definition to state claims against.
-/

/-! ## A218608.P397959413406752393

`A218606(n+1)-1`
-/

namespace A218608.P397959413406752393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218606 (n + 1) - 1

end

end A218608.P397959413406752393

/-! ## A218608.P1977958195343471473

`A023443(A218606(n+1))`
-/

namespace A218608.P1977958195343471473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A218606 (n + 1)).toNat

end

end A218608.P1977958195343471473

/-! ## A218608.P11419929697356113012

`eq[0, A173601(n)-A179016(n)]`
-/

namespace A218608.P11419929697356113012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - A179016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218608.P11419929697356113012

/-! ## A218608.P6931353339488348022

`eq[0, A218604(n)]`
-/

namespace A218608.P6931353339488348022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218608.P6931353339488348022

/-! ## A218608.P8479552900242149679

`record[n-A071542(n*A218604(n))]`
-/

namespace A218608.P8479552900242149679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071542 ((n : ℤ) * A218604 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218608.P8479552900242149679

/-! ## A218608.P11771808915125718778

`record[gcd(n, A000120(n)*A218604(n))]`
-/

namespace A218608.P11771808915125718778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000120 n * A218604 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218608.P11771808915125718778

/-! ## A218608.P16258038234373721660

`record[n-A000040(n+1)*A218604(n)]`
-/

namespace A218608.P16258038234373721660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000040 (n + 1) * A218604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218608.P16258038234373721660

/-! ## A218608.P12462680310614700312

`record[n-A124487(n+1)*A218604(n)]`
-/

namespace A218608.P12462680310614700312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A124487 (n + 1) * A218604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218608.P12462680310614700312

/-! ## A218608.P1912081650995015353

`record[n-A218604(n)*A330715(n+1)]`
-/

namespace A218608.P1912081650995015353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A218604 n * A330715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218608.P1912081650995015353

/-!
# A218609: Distinct values of A218787 in the order of appearance.

The programs for A218609, there is no canonical definition to state claims against.
-/

/-! ## A218609.P17930673637365001616

`A218787(A218611(n+1))`
-/

namespace A218609.P17930673637365001616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218787 (A218611 (n + 1)).toNat

end

end A218609.P17930673637365001616

/-! ## A218609.P6200898927588806733

`A057163(A218610(n+1))`
-/

namespace A218609.P6200898927588806733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A218610 (n + 1)).toNat

end

end A218609.P6200898927588806733

/-!
# A218610: Distinct values of A218788 in the order of appearance.

The programs for A218610, there is no canonical definition to state claims against.
-/

/-! ## A218610.P17344624452384529094

`A218788(A218611(n+1))`
-/

namespace A218610.P17344624452384529094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218788 (A218611 (n + 1)).toNat

end

end A218610.P17344624452384529094

/-! ## A218610.P10603312719545252822

`A057163(A218609(n+1))`
-/

namespace A218610.P10603312719545252822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A218609 (n + 1)).toNat

end

end A218610.P10603312719545252822

/-!
# A218611: Positions in A218787 and A218788 of successive distinct values.

The programs for A218611, there is no canonical definition to state claims against.
-/

/-! ## A218611.P787682244011784761

`A071542(A218612(1+n))-1`
-/

namespace A218611.P787682244011784761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (A218612 (1 + n)).toNat - 1

end

end A218611.P787682244011784761

/-! ## A218611.P15788112260450737762

`log2(1/2)+A071542(A218612(n+1))`
-/

namespace A218611.P15788112260450737762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (A071542 (A218612 (n + 1)).toNat : ℝ)

end

end A218611.P15788112260450737762

/-!
# A218612: Numbers which are the roots of distinct not-previously-encountered side-trees ("tendrils") sprouting from the side of the infinite beanstalk (see A213730).

The programs for A218612, there is no canonical definition to state claims against.
-/

/-! ## A218612.P3839011772444922294

`A213730(A218611(n+1))`
-/

namespace A218612.P3839011772444922294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213730 (A218611 (n + 1)).toNat

end

end A218612.P3839011772444922294

/-!
# A218613: Sizes of distinct new sidetrees ("tendrils", in the order of their appearance) that sprout along (A218787) the infinite trunk of beanstalk (A179016).

The programs for A218613, there is no canonical definition to state claims against.
-/

/-! ## A218613.P13648221382278098841

`A218786(A218611(n+1))`
-/

namespace A218613.P13648221382278098841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218786 (A218611 (n + 1)).toNat

end

end A218613.P13648221382278098841

/-! ## A218613.P7712315492551339435

`A213726(A218612(n+1))-1`
-/

namespace A218613.P7712315492551339435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213726 (A218612 (n + 1)).toNat - 1

end

end A218613.P7712315492551339435

/-!
# A218614: a(n) = binary code (shown here in decimal) of the position of natural number n in the beanstalk-tree A218778.

The programs for A218614, there is no canonical definition to state claims against.
-/

/-! ## A218614.P7573888320230117947

`A054429(A218615(n+1))`
-/

namespace A218614.P7573888320230117947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A218615 (n + 1)).toNat

end

end A218614.P7573888320230117947

/-! ## A218614.P250358067849870388

`A092569(xor(A057427(n), A218615(n+1)))`
-/

namespace A218614.P250358067849870388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (Int.xor (A057427 n) (A218615 (n + 1))).toNat

end

end A218614.P250358067849870388

/-! ## A218614.P11675677173868544889

`A092569(2*A218615(n+1))/2`
-/

namespace A218614.P11675677173868544889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092569 (2 * A218615 (n + 1)).toNat : ℚ) / 2

end

end A218614.P11675677173868544889

/-! ## A218614.P9896511621058099935

`∑[∏[A278567(A001333(n))]]`
-/

namespace A218614.P9896511621058099935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278567 (A001333 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218614.P9896511621058099935

/-! ## A218614.P1487119749663751446

`∑[∏[A239512(A239557(n))]]`
-/

namespace A218614.P1487119749663751446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239512 (A239557 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218614.P1487119749663751446

/-!
# A218615: a(n) = binary code (shown here in decimal) of the position of natural number n in the beanstalk-tree A218776.

The programs for A218615, there is no canonical definition to state claims against.
-/

/-! ## A218615.P10607785350766979078

`A054429(A218614(n+1))`
-/

namespace A218615.P10607785350766979078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A218614 (n + 1)).toNat

end

end A218615.P10607785350766979078

/-!
# A218616: The infinite trunk of beanstalk (A179016) with reversed subsections.

The programs for A218616, there is no canonical definition to state claims against.
-/

/-! ## A218616.P2173720225459494488

`A179016(A218602(n))`
-/

namespace A218616.P2173720225459494488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 (A218602 n).toNat

end

end A218616.P2173720225459494488

/-! ## A218616.P192954773264275090

`A233271(A218602(n))-A233270(n)`
-/

namespace A218616.P192954773264275090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 (A218602 n).toNat - A233270 n

end

end A218616.P192954773264275090

/-! ## A218616.P5065987187505385598

`xor(A086099(A213708(n)), A233271(n))`
-/

namespace A218616.P5065987187505385598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086099 (A213708 n).toNat) (A233271 n)

end

end A218616.P5065987187505385598

/-! ## A218616.P1474199454003653873

`∑{d}[A213730(A218602(n)), A297117(#)]`
-/

namespace A218616.P1474199454003653873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213730 (A218602 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297117 d

end

end A218616.P1474199454003653873

/-! ## A218616.P3885065812908123620

`filter[A092569(n), A213719(#)]`
-/

namespace A218616.P3885065812908123620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A213719 (f1 j).toNat = 1) n)

end

end A218616.P3885065812908123620

/-!
# A218617: Positions in A213728 and A213729 where the next record length run starts.

The programs for A218617, there is no canonical definition to state claims against.
-/

/-! ## A218617.P1657641300986894784

`A218784(A218546(n+1)-1)`
-/

namespace A218617.P1657641300986894784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218784 (A218546 (n + 1) - 1).toNat

end

end A218617.P1657641300986894784

/-!
# A218618: Absolute value of a(n) tells the size of the n-th side-tree ("tendril", A213730(n)) in the binary beanstalk; the sign tells on which side of the infinite trunk (A179016) it is.

The programs for A218618, there is no canonical definition to state claims against.
-/

/-! ## A218618.P18259191013746965105

`Δ[A218789(A028310(n)-1)]`
-/

namespace A218618.P18259191013746965105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P18259191013746965105

/-! ## A218618.P7836547168910343097

`Δ[A218789(A004273(n)-n)]`
-/

namespace A218618.P7836547168910343097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P7836547168910343097

/-! ## A218618.P12684550299308511179

`Δ[A218789(n-A057427(n))]`
-/

namespace A218618.P12684550299308511179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P12684550299308511179

/-! ## A218618.P462841062543717480

`A218789(n)-A218789(A028310(n)-1)`
-/

namespace A218618.P462841062543717480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 n - A218789 (A028310 n - 1).toNat

end

end A218618.P462841062543717480

/-! ## A218618.P7809921291939324654

`A218789(n)-A218789(A004273(n)-n)`
-/

namespace A218618.P7809921291939324654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 n - A218789 (A004273 n - (n : ℤ)).toNat

end

end A218618.P7809921291939324654

/-! ## A218618.P2923246506888419558

`Δ[A218789(A004526(A004273(n)))]`
-/

namespace A218618.P2923246506888419558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P2923246506888419558

/-! ## A218618.P9749754347714046608

`Δ[A218789(A142150(A004275(n)))]`
-/

namespace A218618.P9749754347714046608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 (A142150 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P9749754347714046608

/-! ## A218618.P15678401332573510646

`Δ[A218789(A110659(A111284(n+1)))]`
-/

namespace A218618.P15678401332573510646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 (A110659 (A111284 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P15678401332573510646

/-! ## A218618.P7469663701593299749

`(-1)^A213730(n)*A213727(A213730(n))`
-/

namespace A218618.P7469663701593299749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A213730 n : ℤ) * (A213727 (A213730 n).toNat : ℚ)

end

end A218618.P7469663701593299749

/-! ## A218618.P2748141821083384081

`A218789(n)-A218789(log2(A011782(n)))`
-/

namespace A218618.P2748141821083384081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 n - A218789 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A218618.P2748141821083384081

/-! ## A218618.P12755134948102911128

`Δ[A218789(log2(A011782(n)))]`
-/

namespace A218618.P12755134948102911128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P12755134948102911128

/-! ## A218618.P10726841343294732760

`A218789(n)-A218789(A259361(n²))`
-/

namespace A218618.P10726841343294732760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 n - A218789 (A259361 (n ^ 2)).toNat

end

end A218618.P10726841343294732760

/-! ## A218618.P8660687541771582861

`Δ[A218789(A259361(n²))]`
-/

namespace A218618.P8660687541771582861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P8660687541771582861

/-!
# A218619: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n*A(x)^n/n * Sum_{k=0..2*n} A200536(n,k)^2 * x^k * A(x)^(2*k) ), where A200536(n,k) = [x^k] (1 + 3*x + 2*x^2)^n.

The programs for A218619, there is no canonical definition to state claims against.
-/

/-! ## A218619.P16993333544970930648

`A277886(A187746(n))-n`
-/

namespace A218619.P16993333544970930648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277886 (A187746 n).toNat - (n : ℤ)

end

end A218619.P16993333544970930648

/-!
# A218620: Least number m to appear exactly n times in A095972.

The programs for A218620, there is no canonical definition to state claims against.
-/

/-! ## A218620.P18067119720503972254

`A007954(A060525(n+4)^ceil(abs((1-n)/2)))`
-/

namespace A218620.P18067119720503972254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway ((A060525 (n + 4) : ℚ) ^ (⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ : ℤ))).toNat

end

end A218620.P18067119720503972254

/-!
# A218621: a(n) = unique divisor d of n such that d + (n/d - 1)/2 is minimal and integral.

The programs for A218621, there is no canonical definition to state claims against.
-/

/-! ## A218621.P5918837827820408777

`(n+1)/A261697(∑[A001227(n+1)])`
-/

namespace A218621.P5918837827820408777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A261697 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A218621.P5918837827820408777

/-! ## A218621.P7074527020305625583

`lcm(A327405(n+1), A327514(A074828(n+1)))`
-/

namespace A218621.P7074527020305625583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A327405 (n + 1)) (A327514 (A074828 (n + 1)).toNat)

end

end A218621.P7074527020305625583

/-! ## A218621.P3112735104152581983

`lcm(A166123(A031285(n)), A327405(n+1))`
-/

namespace A218621.P3112735104152581983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166123 (A031285 n).toNat) (A327405 (n + 1))

end

end A218621.P3112735104152581983

/-! ## A218621.P8136541552523987690

`gcd(n+1, A085543(A111045(n+2)))`
-/

namespace A218621.P8136541552523987690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A085543 (A111045 (n + 2)).toNat)

end

end A218621.P8136541552523987690

/-! ## A218621.P6974516803916523005

`gcd(n+1, A152691(A322864(n+1)))`
-/

namespace A218621.P6974516803916523005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A152691 (A322864 (n + 1)).toNat)

end

end A218621.P6974516803916523005

/-!
# A218622: a(n) = A183161(n) (mod 4), n>=0.

The programs for A218622, the canonical program `A218622.P5261897689198646449` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218622 has offset 0).

The definition of A218622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218622.P5261897689198646449

`A001316(A184616(n))%4`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A218622

/-- `A001316(A184616(n))%4` -/
def P5261897689198646449.Spec : Prop :=
  ∀ n, P5261897689198646449.a n = A218622 n

theorem P5261897689198646449.correct : P5261897689198646449.Spec := by
  intro n
  simp only [A218622]

end A218622

/-! ## A218622.P16869380363560681849

`and(3, A001316(A184616(2*n)))`
-/

namespace A218622.P16869380363560681849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A001316 (A184616 (2 * n)).toNat)

end

end A218622.P16869380363560681849

namespace A218622

/-- `and(3, A001316(A184616(2*n)))` -/
def P16869380363560681849.Spec : Prop :=
  ∀ n, P16869380363560681849.a n = A218622 n

end A218622

/-! ## A218622.P8942143319780217495

`and(3, A001316(A184616(n)²))`
-/

namespace A218622.P8942143319780217495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A001316 (A184616 n ^ 2).toNat)

end

end A218622.P8942143319780217495

namespace A218622

/-- `and(3, A001316(A184616(n)²))` -/
def P8942143319780217495.Spec : Prop :=
  ∀ n, P8942143319780217495.a n = A218622 n

end A218622

/-! ## A218622.P12129212979921290604

`and(3, A056040(n-and(n, 3*n)))`
-/

namespace A218622.P12129212979921290604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A056040 (n - Nat.land n (3 * n)))

end

end A218622.P12129212979921290604

namespace A218622

/-- `and(3, A056040(n-and(n, 3*n)))` -/
def P12129212979921290604.Spec : Prop :=
  ∀ n, P12129212979921290604.a n = A218622 n

end A218622

/-! ## A218622.P1026173731157401619

`A073267(A184616(n)²+2)`
-/

namespace A218622.P1026173731157401619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 (A184616 n ^ 2 + 2).toNat

end

end A218622.P1026173731157401619

namespace A218622

/-- `A073267(A184616(n)²+2)` -/
def P1026173731157401619.Spec : Prop :=
  ∀ n, P1026173731157401619.a n = A218622 n

end A218622

/-! ## A218622.P7348574425966904510

`C(2, A000120((n-and(n, 3*n))²/2))`
-/

namespace A218622.P7348574425966904510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000120 (SequenceMachineLib.roundAway ((((n : ℤ) - (Nat.land n (3 * n) : ℤ)) ^ 2 : ℚ) / 2)).toNat).toNat

end

end A218622.P7348574425966904510

namespace A218622

/-- `C(2, A000120((n-and(n, 3*n))²/2))` -/
def P7348574425966904510.Spec : Prop :=
  ∀ n, (P7348574425966904510.a n : ℤ) = A218622 n

end A218622

/-! ## A218622.P1239445824673612629

`A183161(n)%4`
-/

namespace A218622.P1239445824673612629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183161 n) 4

end

end A218622.P1239445824673612629

namespace A218622

/-- `A183161(n)%4` -/
def P1239445824673612629.Spec : Prop :=
  ∀ n, P1239445824673612629.a n = A218622 n

end A218622

/-! ## A218622.P5563251006785081816

`A219197(2*n)%4`
-/

namespace A218622.P5563251006785081816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219197 (2 * n)) 4

end

end A218622.P5563251006785081816

namespace A218622

/-- `A219197(2*n)%4` -/
def P5563251006785081816.Spec : Prop :=
  ∀ n, P5563251006785081816.a n = A218622 n

end A218622

/-!
# A218623: Number of partitions of n+2 with largest inscribed rectangle having area <= n.

The programs for A218623, there is no canonical definition to state claims against.
-/

/-! ## A218623.P14636431900768810746

`A144300(n+2)-A115723(∑[n+2])`
-/

namespace A218623.P14636431900768810746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144300 (n + 2) - A115723 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218623.P14636431900768810746

/-! ## A218623.P11279860423951201091

`A182114(∑[n+3])`
-/

namespace A218623.P11279860423951201091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218623.P11279860423951201091

/-!
# A218624: Number of partitions of n+3 with largest inscribed rectangle having area <= n.

The programs for A218624, there is no canonical definition to state claims against.
-/

/-! ## A218624.P13231535362390612308

`A218623(n+1)-A115723(∑[n+3]+1)`
-/

namespace A218624.P13231535362390612308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218623 (n + 1) - A115723 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218624.P13231535362390612308

/-! ## A218624.P5802387512469886095

`A182114(2+∑[n+4])`
-/

namespace A218624.P5802387512469886095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218624.P5802387512469886095

/-!
# A218625: Number of partitions of n+4 with largest inscribed rectangle having area <= n.

The programs for A218625, there is no canonical definition to state claims against.
-/

/-! ## A218625.P8055737469996042342

`A182114(∑[n+5]+5)`
-/

namespace A218625.P8055737469996042342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A218625.P8055737469996042342

/-! ## A218625.P18073855280033480171

`A182114(eq[4, A025581(n)])%A005810(n)`
-/

namespace A218625.P18073855280033480171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A005810 n)

end

end A218625.P18073855280033480171

/-!
# A218626: Number of partitions of n+5 with largest inscribed rectangle having area <= n.

The programs for A218626, there is no canonical definition to state claims against.
-/

/-! ## A218626.P16482030629755049731

`A182114(A055999(3+n))`
-/

namespace A218626.P16482030629755049731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A055999 (3 + n)).toNat

end

end A218626.P16482030629755049731

/-! ## A218626.P13142956309689073885

`A227962(A174612(n))`
-/

namespace A218626.P13142956309689073885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227962 (A174612 n).toNat

end

end A218626.P13142956309689073885

/-!
# A218627: Number of partitions of n+6 with largest inscribed rectangle having area <= n.

The programs for A218627, there is no canonical definition to state claims against.
-/

/-! ## A218627.P12239682208000192142

`A182114(A056121(n)+21)`
-/

namespace A218627.P12239682208000192142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A056121 n + 21).toNat

end

end A218627.P12239682208000192142

/-! ## A218627.P17906396256483501709

`A356920(A189978(n+2))`
-/

namespace A218627.P17906396256483501709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356920 (A189978 (n + 2)).toNat

end

end A218627.P17906396256483501709

/-!
# A218628: Number of partitions of n+7 with largest inscribed rectangle having area <= n.

The programs for A218628, there is no canonical definition to state claims against.
-/

/-! ## A218628.P2504480837312280751

`A182114(A155212(n+4))`
-/

namespace A218628.P2504480837312280751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A155212 (n + 4)).toNat

end

end A218628.P2504480837312280751

/-! ## A218628.P2464524473847467838

`A352493(A018064(n))`
-/

namespace A218628.P2464524473847467838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352493 (A018064 n).toNat

end

end A218628.P2464524473847467838

/-! ## A218628.P5818863454727098205

`A123577(A246983(n))`
-/

namespace A218628.P5818863454727098205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123577 (A246983 n).toNat

end

end A218628.P5818863454727098205

/-! ## A218628.P8988285118878581687

`A351908(A173197(n))`
-/

namespace A218628.P8988285118878581687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (A173197 n).toNat

end

end A218628.P8988285118878581687

/-! ## A218628.P10714866276113608198

`A307825(A350662(n))`
-/

namespace A218628.P10714866276113608198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307825 (A350662 n).toNat

end

end A218628.P10714866276113608198

/-!
# A218629: Number of partitions of n+8 with largest inscribed rectangle having area <= n.

The programs for A218629, there is no canonical definition to state claims against.
-/

/-! ## A218629.P3635523099090468136

`A182114(A055999(n+6)-3)`
-/

namespace A218629.P3635523099090468136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A055999 (n + 6) - 3).toNat

end

end A218629.P3635523099090468136

/-! ## A218629.P2273872989131213806

`A182114(eq[8, A025581(n)])`
-/

namespace A218629.P2273872989131213806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218629.P2273872989131213806

/-!
# A218630: Number of partitions of n+9 with largest inscribed rectangle having area <= n.

The programs for A218630, there is no canonical definition to state claims against.
-/

/-! ## A218630.P18184445032563681811

`A182114(eq[8, A116598(n)])`
-/

namespace A218630.P18184445032563681811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218630.P18184445032563681811

/-! ## A218630.P8341434693385467324

`A125984(C(n+1, 8))`
-/

namespace A218630.P8341434693385467324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125984 (Nat.choose (n + 1) 8)

end

end A218630.P8341434693385467324

/-! ## A218630.P13351709233301724243

`A122324(C(n+2, 9))`
-/

namespace A218630.P13351709233301724243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122324 (Nat.choose (n + 2) 9)

end

end A218630.P13351709233301724243

/-! ## A218630.P11513162113227220689

`A127378(A035040(n+1))`
-/

namespace A218630.P11513162113227220689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127378 (A035040 (n + 1)).toNat

end

end A218630.P11513162113227220689

/-! ## A218630.P2708094770657632458

`A111449(A120646(n+1))`
-/

namespace A218630.P2708094770657632458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111449 (A120646 (n + 1)).toNat

end

end A218630.P2708094770657632458

/-!
# A218631: Number of partitions of n+10 with largest inscribed rectangle having area <= n.

The programs for A218631, there is no canonical definition to state claims against.
-/

/-! ## A218631.P2687482315092591871

`A182114(eq[21, A099375(n)])`
-/

namespace A218631.P2687482315092591871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218631.P2687482315092591871

/-! ## A218631.P12752867855472843988

`A182114(eq[10, A025581(n)])`
-/

namespace A218631.P12752867855472843988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218631.P12752867855472843988

/-! ## A218631.P11952409172938672915

`A236074(A042047(n))`
-/

namespace A218631.P11952409172938672915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236074 (A042047 n).toNat

end

end A218631.P11952409172938672915

/-! ## A218631.P14770527154137220179

`A248333(A218630(n))`
-/

namespace A218631.P14770527154137220179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A218630 n).toNat

end

end A218631.P14770527154137220179

/-! ## A218631.P14000933698526294069

`A268584(A215067(n))`
-/

namespace A218631.P14000933698526294069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268584 (A215067 n).toNat

end

end A218631.P14000933698526294069

/-!
# A218632: Hilltop maps: number of n X n binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 n X n array.

The programs for A218632, there is no canonical definition to state claims against.
-/

/-! ## A218632.P4100088283947779657

`A218638(∑[4*n]+1)`
-/

namespace A218632.P4100088283947779657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218632.P4100088283947779657

/-! ## A218632.P14480344916147646479

`record[A218638(A272267(n+1))]`
-/

namespace A218632.P14480344916147646479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218632.P14480344916147646479

/-!
# A218633: Hilltop maps: number of nX3 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 nX3 array.

The programs for A218633, there is no canonical definition to state claims against.
-/

/-! ## A218633.P3800280110809363739

`A218638(∑[n+3]+1)`
-/

namespace A218633.P3800280110809363739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218633.P3800280110809363739

/-! ## A218633.P9750564459610163095

`record[A218638(A198464(n+1))]`
-/

namespace A218633.P9750564459610163095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218633.P9750564459610163095

/-!
# A218634: Hilltop maps: number of nX4 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 nX4 array.

The programs for A218634, there is no canonical definition to state claims against.
-/

/-! ## A218634.P16752525550467278350

`A218638(A141214(n+1))`
-/

namespace A218634.P16752525550467278350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A141214 (n + 1)).toNat

end

end A218634.P16752525550467278350

/-!
# A218635: Hilltop maps: number of nX5 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 nX5 array.

The programs for A218635, there is no canonical definition to state claims against.
-/

/-! ## A218635.P12218110829176204200

`A218638(eq[2, A092921(n)])`
-/

namespace A218635.P12218110829176204200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218635.P12218110829176204200

/-!
# A218636: Hilltop maps: number of nX6 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 nX6 array.

The programs for A218636, there is no canonical definition to state claims against.
-/

/-! ## A218636.P8358090006818410652

`A218638(A052905(n+3))`
-/

namespace A218636.P8358090006818410652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A052905 (n + 3)).toNat

end

end A218636.P8358090006818410652

/-!
# A218637: Hilltop maps: number of nX7 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 nX7 array.

The programs for A218637, there is no canonical definition to state claims against.
-/

/-! ## A218637.P1890875861786833352

`A218638(A055999(n+4))`
-/

namespace A218637.P1890875861786833352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A055999 (n + 4)).toNat

end

end A218637.P1890875861786833352

/-!
# A218638: T(n,k)=Hilltop maps: number of nXk binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 nXk array.

The programs for A218638, there is no canonical definition to state claims against.
-/

/-! ## A218638.P16761546530428090041

`A218242(n+1)^A183134(A004086(n))`
-/

namespace A218638.P16761546530428090041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218242 (n + 1) : ℚ) ^ (A183134 (A004086 n).toNat : ℤ)

end

end A218638.P16761546530428090041

/-! ## A218638.P7838828778228162957

`A218242(n+1)%A001105(A337410(n+1))`
-/

namespace A218638.P7838828778228162957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218242 (n + 1)) (A001105 (A337410 (n + 1)).toNat)

end

end A218638.P7838828778228162957

/-! ## A218638.P14949212211278782949

`A218242((n+1)^A250484(n))`
-/

namespace A218638.P14949212211278782949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A250484 n : ℤ))).toNat

end

end A218638.P14949212211278782949

/-!
# A218639: Hilltop maps: number of 4Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 4Xn array.

The programs for A218639, there is no canonical definition to state claims against.
-/

/-! ## A218639.P219962594527964887

`A218638(A141214(n)+7)`
-/

namespace A218639.P219962594527964887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A141214 n + 7).toNat

end

end A218639.P219962594527964887

/-!
# A218640: Hilltop maps: number of 5Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 5Xn array.

The programs for A218640, there is no canonical definition to state claims against.
-/

/-! ## A218640.P6846991188722996701

`A218638(A167499(n+3))`
-/

namespace A218640.P6846991188722996701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A167499 (n + 3)).toNat

end

end A218640.P6846991188722996701

/-!
# A218641: Hilltop maps: number of 6Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 6Xn array.

The programs for A218641, there is no canonical definition to state claims against.
-/

/-! ## A218641.P15970329113812206610

`A218638(A167614(n+4)+3)`
-/

namespace A218641.P15970329113812206610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A167614 (n + 4) + 3).toNat

end

end A218641.P15970329113812206610

/-!
# A218642: Hilltop maps: number of 7Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 7Xn array.

The programs for A218642, there is no canonical definition to state claims against.
-/

/-! ## A218642.P7203597142053677449

`A218638(A056119(n)+28)`
-/

namespace A218642.P7203597142053677449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A056119 n + 28).toNat

end

end A218642.P7203597142053677449

/-!
# A218644: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..3 n X n array.

The programs for A218644, there is no canonical definition to state claims against.
-/

/-! ## A218644.P10613374111805985637

`A218651(∑[4*n]+1)`
-/

namespace A218644.P10613374111805985637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218644.P10613374111805985637

/-! ## A218644.P6185187162496504731

`record[A218651(abs(A069480(n+1)))]`
-/

namespace A218644.P6185187162496504731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 |A069480 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218644.P6185187162496504731

/-! ## A218644.P10402648486334647791

`record[A003982(n)*A218651(n+1)]`
-/

namespace A218644.P10402648486334647791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A218651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218644.P10402648486334647791

/-!
# A218645: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..3 n X 2 array.

The programs for A218645, the canonical program `A218645.P2916607212053192610` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218645 has offset 1).

The definition of A218645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218645.P2916607212053192610

`ogf((4+8x+6x^2-14x^4-4x^5+2x^6+2x^7)/(1-2x-7x^2-12x^3-14x^4-7x^5+2x^6+3x^7+x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218645

/-- `ogf((4+8x+6x^2-14x^4-4x^5+2x^6+2x^7)/(1-2x-7x^2-12x^3-14x^4-7x^5+2x^6+3x^7+x^8))` -/
def P2916607212053192610.Spec : Prop :=
  ∀ n, P2916607212053192610.a n = A218645 (n + 1)

theorem P2916607212053192610.correct : P2916607212053192610.Spec := by
  intro n
  simp only [A218645, Nat.add_sub_cancel]

end A218645

/-! ## A218645.P1169970507674317000

`A218651(∑[n+1]+2)`
-/

namespace A218645.P1169970507674317000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218645.P1169970507674317000

namespace A218645

/-- `A218651(∑[n+1]+2)` -/
def P1169970507674317000.Spec : Prop :=
  ∀ n, P1169970507674317000.a n = A218645 (n + 1)

end A218645

/-! ## A218645.P40301750003665179

`record[gcd(A177975(n+2), A218651(n+3))]`
-/

namespace A218645.P40301750003665179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A177975 (n + 2)) (A218651 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218645.P40301750003665179

namespace A218645

/-- `record[gcd(A177975(n+2), A218651(n+3))]` -/
def P40301750003665179.Spec : Prop :=
  ∀ n, (P40301750003665179.a n : ℤ) = A218645 (n + 1)

end A218645

/-! ## A218645.P18413780375467071402

`record[A218651(record[A185180(n+1)])]`
-/

namespace A218645.P18413780375467071402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218645.P18413780375467071402

namespace A218645

/-- `record[A218651(record[A185180(n+1)])]` -/
def P18413780375467071402.Spec : Prop :=
  ∀ n, P18413780375467071402.a n = A218645 (n + 1)

end A218645

/-! ## A218645.P14479599074460979621

`record[A129186(n)*A218651(n+1)]`
-/

namespace A218645.P14479599074460979621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A218651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218645.P14479599074460979621

namespace A218645

/-- `record[A129186(n)*A218651(n+1)]` -/
def P14479599074460979621.Spec : Prop :=
  ∀ n, P14479599074460979621.a n = A218645 (n + 1)

end A218645

/-!
# A218646: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..3 nX3 array.

The programs for A218646, there is no canonical definition to state claims against.
-/

/-! ## A218646.P6376907382740087992

`A218651(∑[n+2]+4)`
-/

namespace A218646.P6376907382740087992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218646.P6376907382740087992

/-!
# A218647: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..3 nX4 array.

The programs for A218647, there is no canonical definition to state claims against.
-/

/-! ## A218647.P3378819520830575789

`A218651(A374004(n+1))`
-/

namespace A218647.P3378819520830575789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A374004 (n + 1)).toNat

end

end A218647.P3378819520830575789

/-! ## A218647.P1498318766555037275

`A218651(A141214(n+1))`
-/

namespace A218647.P1498318766555037275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A141214 (n + 1)).toNat

end

end A218647.P1498318766555037275

/-!
# A218648: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..3 nX5 array.

The programs for A218648, there is no canonical definition to state claims against.
-/

/-! ## A218648.P3991160121904346046

`A218651(A374005(n+1))`
-/

namespace A218648.P3991160121904346046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A374005 (n + 1)).toNat

end

end A218648.P3991160121904346046

/-! ## A218648.P13482141324728033993

`A218651(Δ[A264443(n)])`
-/

namespace A218648.P13482141324728033993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (f1 (n + 1) - f1 n).toNat

end

end A218648.P13482141324728033993

/-!
# A218649: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..3 nX6 array.

The programs for A218649, there is no canonical definition to state claims against.
-/

/-! ## A218649.P2909199272349812104

`A218651(A374007(n+1))`
-/

namespace A218649.P2909199272349812104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A374007 (n + 1)).toNat

end

end A218649.P2909199272349812104

/-!
# A218650: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..3 nX7 array.

The programs for A218650, there is no canonical definition to state claims against.
-/

/-! ## A218650.P13681895235642999756

`A218651(A374008(n+1))`
-/

namespace A218650.P13681895235642999756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A374008 (n + 1)).toNat

end

end A218650.P13681895235642999756

/-!
# A218652: E.g.f. satisfies: A(x) = x + log(1 + A(x)^2).

The programs for A218652, there is no canonical definition to state claims against.
-/

/-! ## A218652.P1411464538156631338

`(n+1)*A218653(n)`
-/

namespace A218652.P1411464538156631338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A218653 n

end

end A218652.P1411464538156631338

/-! ## A218652.P13920928424932271492

`A218653(n)*A277813(comp[xor(n, 2*n)])`
-/

namespace A218652.P13920928424932271492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218653 n * A277813 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A218652.P13920928424932271492

/-! ## A218652.P7900635416285769647

`A218653(n)*A322630(ceil(or(1, 2*n)²/8))`
-/

namespace A218652.P7900635416285769647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218653 n * A322630 ⌈(Nat.lor 1 (2 * n) ^ 2 : ℚ) / 8⌉.toNat

end

end A218652.P7900635416285769647

/-! ## A218652.P10433865283599083843

`A218653(n)*A322630(ceil(xor(1, 2*n)²/8))`
-/

namespace A218652.P10433865283599083843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218653 n * A322630 ⌈(Nat.xor 1 (2 * n) ^ 2 : ℚ) / 8⌉.toNat

end

end A218652.P10433865283599083843

/-! ## A218652.P15960367998398651469

`A218653(n)*A324293(A000079(n))`
-/

namespace A218652.P15960367998398651469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218653 n * A324293 (A000079 n).toNat

end

end A218652.P15960367998398651469

/-!
# A218653: E.g.f. A(x) satisfies A(x) = 1 + log(1 + x^2*A(x)^2)/x.

The programs for A218653, there is no canonical definition to state claims against.
-/

/-! ## A218653.P755491638091327672

`A218652(n+1)/(n+1)`
-/

namespace A218653.P755491638091327672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218652 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A218653.P755491638091327672

/-!
# A218654: Number of ways to write n as x+y with 0<x<=y and x^2+3xy+y^2 prime.

The programs for A218654, there is no canonical definition to state claims against.
-/

/-! ## A218654.P3537354865133248838

`A001221(A058766(n)+A011631(n))`
-/

namespace A218654.P3537354865133248838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A058766 n + A011631 n).toNat

end

end A218654.P3537354865133248838

/-! ## A218654.P7352667549411483563

`A211272(A007093(n)+A001104(n+1))`
-/

namespace A218654.P7352667549411483563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (A007093 n + A001104 (n + 1)).toNat

end

end A218654.P7352667549411483563

/-! ## A218654.P4183877013970275733

`A279060(A102371(n+1)-A008619(n))`
-/

namespace A218654.P4183877013970275733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A102371 (n + 1) - A008619 n).toNat

end

end A218654.P4183877013970275733

/-!
# A218656: Number of ways to write 2n+1 as x+y with 0 < x < y and x^4 + y^4 prime.

The programs for A218656, there is no canonical definition to state claims against.
-/

/-! ## A218656.P3329860758461134340

`A053735(A315834(n)^A136711(n))`
-/

namespace A218656.P3329860758461134340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (SequenceMachineLib.roundAway ((A315834 n : ℚ) ^ (A136711 n : ℤ))).toNat

end

end A218656.P3329860758461134340

/-! ## A218656.P11127873941758896894

`A122632(xor(4, A131189(n+1)))`
-/

namespace A218656.P11127873941758896894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122632 (Int.xor 4 (A131189 (n + 1))).toNat

end

end A218656.P11127873941758896894

/-!
# A218657: Number of n X 2 binary arrays with every 0 a king-move neighbor to some 1.

The programs for A218657, the canonical program `A218657.P17859511460360803181` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218657 has offset 1).

The definition of A218657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218657.P10135196592217052610

`ogf((3+6x+3x^2)/(1-3x-3x^2-3x^3))`
-/

namespace A218657.P10135196592217052610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, 3] [1, -3, -3, -3] n

end

end A218657.P10135196592217052610

namespace A218657

/-- `ogf((3+6x+3x^2)/(1-3x-3x^2-3x^3))` -/
def P10135196592217052610.Spec : Prop :=
  ∀ n, P10135196592217052610.a n = A218657 (n + 1)

end A218657

/-! ## A218657.P17859511460360803181

`3*a(n-1)+3*a(n-2)+3*a(n-3)` with `a(0)=3, a(1)=15, a(2)=57`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218657

/-- `3*a(n-1)+3*a(n-2)+3*a(n-3)` -/
def P17859511460360803181.Spec : Prop :=
  ∀ n, (P17859511460360803181.a n : ℤ) = A218657 (n + 1)

theorem P17859511460360803181.correct : P17859511460360803181.Spec := by
  intro n
  simp only [A218657, Nat.add_sub_cancel]

end A218657

/-! ## A218657.P5293372062621038319

`A077836(n+1)+A077836(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A218657.P5293372062621038319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A077836 (n + 1) + A077836 (n + 1) - a (n - 1)

end

end A218657.P5293372062621038319

namespace A218657

/-- `A077836(n+1)+A077836(n+1)-a(n-1)` -/
def P5293372062621038319.Spec : Prop :=
  ∀ n, P5293372062621038319.a n = A218657 (n + 1)

end A218657

/-! ## A218657.P14259627750960541938

`sqrt(A218659(n+1))`
-/

namespace A218657.P14259627750960541938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A218659 (n + 1) : ℝ)

end

end A218657.P14259627750960541938

namespace A218657

/-- `sqrt(A218659(n+1))` -/
def P14259627750960541938.Spec : Prop :=
  ∀ n, P14259627750960541938.a n = (A218657 (n + 1) : ℝ)

end A218657

/-! ## A218657.P2179348277505901258

`A218663(∑[n+1]+2)`
-/

namespace A218657.P2179348277505901258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218657.P2179348277505901258

namespace A218657

/-- `A218663(∑[n+1]+2)` -/
def P2179348277505901258.Spec : Prop :=
  ∀ n, P2179348277505901258.a n = A218657 (n + 1)

end A218657

/-!
# A218658: Number of n X 3 binary arrays with every 0 a king-move neighbor to some 1.

The programs for A218658, the canonical program `A218658.P3536211676194707720` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218658 has offset 1).

The definition of A218658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218658.P3536211676194707720

`ogf((5+27x+20x^2-10x^3-5x^4-5x^5)/(1-6x-11x^2-26x^3+5x^4+5x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218658

/-- `ogf((5+27x+20x^2-10x^3-5x^4-5x^5)/(1-6x-11x^2-26x^3+5x^4+5x^6))` -/
def P3536211676194707720.Spec : Prop :=
  ∀ n, P3536211676194707720.a n = A218658 (n + 1)

theorem P3536211676194707720.correct : P3536211676194707720.Spec := by
  intro n
  simp only [A218658, Nat.add_sub_cancel]

end A218658

/-! ## A218658.P1699024409727991303

`A218663(∑[n+2]+4)`
-/

namespace A218658.P1699024409727991303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218658.P1699024409727991303

namespace A218658

/-- `A218663(∑[n+2]+4)` -/
def P1699024409727991303.Spec : Prop :=
  ∀ n, P1699024409727991303.a n = A218658 (n + 1)

end A218658

/-!
# A218659: Number of n X 4 binary arrays with every 0 a king-move neighbor to some 1.

The programs for A218659, there is no canonical definition to state claims against.
-/

/-! ## A218659.P12666155405679293116

`ogf((9+117x+144x^2-108x^3-81x^4-81x^5)/(1-12x-45x^2-180x^3+27x^4+81x^6))`
-/

namespace A218659.P12666155405679293116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 117, 144, -108, -81, -81] [1, -12, -45, -180, 27, 0, 81] n

end

end A218659.P12666155405679293116

/-! ## A218659.P2020372349778967674

`A218657(1+n)²`
-/

namespace A218659.P2020372349778967674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218657 (1 + n) ^ 2

end

end A218659.P2020372349778967674

/-! ## A218659.P6591498884881895725

`A218657(n+1)*A218657(n+1)`
-/

namespace A218659.P6591498884881895725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218657 (n + 1) * A218657 (n + 1)

end

end A218659.P6591498884881895725

/-! ## A218659.P2813824427196780041

`A218663(∑[n+1]+2)²`
-/

namespace A218659.P2813824427196780041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A218659.P2813824427196780041

/-! ## A218659.P14107986102796630699

`A218663(A052905(n)+9)`
-/

namespace A218659.P14107986102796630699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A052905 n + 9).toNat

end

end A218659.P14107986102796630699

/-!
# A218660: Number of n X 5 binary arrays with every 0 a king-move neighbor to some 1.

The programs for A218660, there is no canonical definition to state claims against.
-/

/-! ## A218660.P10293999026983297020

`A218663(A167499(n+3))`
-/

namespace A218660.P10293999026983297020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A167499 (n + 3)).toNat

end

end A218660.P10293999026983297020

/-! ## A218660.P7546217923582278750

`A218663(A374005(n+1))`
-/

namespace A218660.P7546217923582278750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A374005 (n + 1)).toNat

end

end A218660.P7546217923582278750

/-!
# A218661: Number of n X 6 binary arrays with every 0 a king-move neighbor to some 1.

The programs for A218661, there is no canonical definition to state claims against.
-/

/-! ## A218661.P17543364718464744257

`A218663(eq[5, col(n)]+1)`
-/

namespace A218661.P17543364718464744257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A218661.P17543364718464744257

/-!
# A218662: Number of n X 7 binary arrays with every 0 a king-move neighbor to some 1.

The programs for A218662, there is no canonical definition to state claims against.
-/

/-! ## A218662.P15853231255039759627

`A218663(eq[11, A066657(n)])`
-/

namespace A218662.P15853231255039759627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218662.P15853231255039759627

/-! ## A218662.P8069989434543379624

`A218663(A374008(n+1))`
-/

namespace A218662.P8069989434543379624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A374008 (n + 1)).toNat

end

end A218662.P8069989434543379624

/-!
# A218663: T(n,k) = number of n X k binary arrays with every 0 a king-move neighbor to some 1, n >= 1, k >= 1, read by antidiagonals.

The programs for A218663, there is no canonical definition to state claims against.
-/

/-! ## A218663.P8374335517194082496

`or(A118180(n), A218426(A070938(n+1)))`
-/

namespace A218663.P8374335517194082496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118180 n) (A218426 (A070938 (n + 1)).toNat)

end

end A218663.P8374335517194082496

/-! ## A218663.P10440889084708300653

`or(A118180(n), A218426(A077739(n+1)))`
-/

namespace A218663.P10440889084708300653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118180 n) (A218426 (A077739 (n + 1)).toNat)

end

end A218663.P10440889084708300653

/-! ## A218663.P3992524522272358376

`or(A154334(n), A218354(A070938(n+1)))`
-/

namespace A218663.P3992524522272358376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154334 n) (A218354 (A070938 (n + 1)).toNat)

end

end A218663.P3992524522272358376

/-! ## A218663.P6305759131776008673

`or(A154334(n), A218354(A077739(n+1)))`
-/

namespace A218663.P6305759131776008673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154334 n) (A218354 (A077739 (n + 1)).toNat)

end

end A218663.P6305759131776008673

/-! ## A218663.P17022902598864723562

`A201625(n+1)+A008836(A000108(n+1))`
-/

namespace A218663.P17022902598864723562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (n + 1) + A008836 (A000108 (n + 1)).toNat

end

end A218663.P17022902598864723562

/-!
# A218665: Numbers k that divide the sum of the first k numbers from Flavius Josephus's sieve (A099074).

The programs for A218665, there is no canonical definition to state claims against.
-/

/-! ## A218665.P3322517455300072342

`lt[A099074(n)%(n+1), 1]+1`
-/

namespace A218665.P3322517455300072342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099074 n) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A218665.P3322517455300072342

/-!
# A218666: Triangular array read by rows: T(n,k) is the number of unlabeled rooted trees with n nodes in which the largest subtree (of the root) has exactly k nodes; n>=2, 1<=k<=n-1.

The programs for A218666, there is no canonical definition to state claims against.
-/

/-! ## A218666.P8630244809105919845

`dr(A003963(A131209(A156564(n))))`
-/

namespace A218666.P8630244809105919845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A003963 (A131209 (A156564 n).toNat).toNat)

end

end A218666.P8630244809105919845

/-! ## A218666.P6575626211793197611

`A316473(A002260(n+1))+A001222(A347811(n))`
-/

namespace A218666.P6575626211793197611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316473 (A002260 (n + 1)).toNat + A001222 (A347811 n).toNat

end

end A218666.P6575626211793197611

/-!
# A218667: O.g.f.: Sum_{n>=0} 1/(1-n*x)^n * x^n/n! * exp(-x/(1-n*x)).

The programs for A218667, there is no canonical definition to state claims against.
-/

/-! ## A218667.P18368271647540906441

`∑{#}[n, (-1)^(n-#)*C(n, #)*A185040(#)]`
-/

namespace A218667.P18368271647540906441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A185040 k : ℚ)

end

end A218667.P18368271647540906441

/-! ## A218667.P14601112735193475850

`A008676(A006095(n)+n²)`
-/

namespace A218667.P14601112735193475850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A006095 n + (n ^ 2 : ℤ)).toNat

end

end A218667.P14601112735193475850

/-! ## A218667.P17502314449504490710

`A228062(A002379(n))-A300660(n)`
-/

namespace A218667.P17502314449504490710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228062 (A002379 n).toNat - A300660 n

end

end A218667.P17502314449504490710

/-!
# A218668: O.g.f.: Sum_{n>=0} 1/(1-n^2*x)^n * x^n/n! * exp(-x/(1-n^2*x)).

The programs for A218668, there is no canonical definition to state claims against.
-/

/-! ## A218668.P3004701620356466522

`A085855(∏[floor((n+1)*root(90, 8))])`
-/

namespace A218668.P3004701620356466522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (90 : ℝ) ^ (1 / (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085855 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218668.P3004701620356466522

/-! ## A218668.P13927796526606684992

`A262038(A304998(n))`
-/

namespace A218668.P13927796526606684992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A304998 n).toNat

end

end A218668.P13927796526606684992

/-!
# A218669: O.g.f.: Sum_{n>=0} 1/(1-n^3*x)^n * x^n/n! * exp(-x/(1-n^3*x)).

The programs for A218669, there is no canonical definition to state claims against.
-/

/-! ## A218669.P10151296117714332555

`A345439(xor(n, A201594(n)))`
-/

namespace A218669.P10151296117714332555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345439 (Int.xor (n : ℤ) (A201594 n)).toNat

end

end A218669.P10151296117714332555

/-! ## A218669.P14283631785080094034

`A103221(A052700(n))+A052715(n)`
-/

namespace A218669.P14283631785080094034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A052700 n).toNat + A052715 n

end

end A218669.P14283631785080094034

/-!
# A218670: O.g.f.: Sum_{n>=0} n^n * (1+n*x)^n * x^n/n! * exp(-n*x*(1+n*x)).

The programs for A218670, there is no canonical definition to state claims against.
-/

/-! ## A218670.P7270075341358778868

`A167661(A162147(n)^A195174(n))`
-/

namespace A218670.P7270075341358778868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 (SequenceMachineLib.roundAway ((A162147 n : ℚ) ^ (A195174 n : ℤ))).toNat

end

end A218670.P7270075341358778868

/-! ## A218670.P11189215950411713096

`A358639(2^(n+1)+3)`
-/

namespace A218670.P11189215950411713096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358639 (2 ^ (n + 1) + 3)

end

end A218670.P11189215950411713096

/-!
# A218671: O.g.f.: Sum_{n>=0} n^(2*n) * (1+n*x)^n * x^n/n! * exp(-n^2*x*(1+n*x)).

The programs for A218671, there is no canonical definition to state claims against.
-/

/-! ## A218671.P4447150175550635734

`A101921((3*n-1)*a(n-1))` with `a(0)=1`
-/

namespace A218671.P4447150175550635734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101921 (((3 * n : ℤ) - 1) * a (n - 1)).toNat

end

end A218671.P4447150175550635734

/-!
# A218672: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n * A(n*x)^n/n! * exp(-n*x*A(n*x)).

The programs for A218672, there is no canonical definition to state claims against.
-/

/-! ## A218672.P5727504537271863104

`A210357(A221864(n)+1)`
-/

namespace A218672.P5727504537271863104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A221864 n + 1).toNat

end

end A218672.P5727504537271863104

/-! ## A218672.P680025400979903115

`A217538(A390182(n)+1)`
-/

namespace A218672.P680025400979903115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (A390182 n + 1).toNat

end

end A218672.P680025400979903115

/-!
# A218673: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n*A(n*x)^(2*n)/n! * exp(-n*x*A(n*x)^2).

The programs for A218673, there is no canonical definition to state claims against.
-/

/-! ## A218673.P11071893026521548969

`A008350(∑[4^n])`
-/

namespace A218673.P11071893026521548969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008350 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218673.P11071893026521548969

/-!
# A218674: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n*A(n*x)^(3*n)/n! * exp(-n*x*A(n*x)^3).

The programs for A218674, there is no canonical definition to state claims against.
-/

/-! ## A218674.P1635866753915531378

`A085745(a(n-2)*n+1)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A218674.P1635866753915531378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A085745 (a (n - 2) * (n : ℤ) + 1).toNat

end

end A218674.P1635866753915531378

/-!
# A218675: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n*A(n*x)^(4*n)/n! * exp(-n*x*A(n*x)^4).

The programs for A218675, there is no canonical definition to state claims against.
-/

/-! ## A218675.P469508127112965592

`ceil(A316784(10^n)/(n+1))`
-/

namespace A218675.P469508127112965592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A316784 (10 ^ n) : ℚ) / (n + 1 : ℚ)⌉

end

end A218675.P469508127112965592

/-!
# A218676: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n*A(n*x)^(5*n)/n! * exp(-n*x*A(n*x)^5).

The programs for A218676, there is no canonical definition to state claims against.
-/

/-! ## A218676.P4625760378487244070

`round(A283050(∑[(2*n)^n]+1)/10)`
-/

namespace A218676.P4625760378487244070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A283050 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 10)

end

end A218676.P4625760378487244070

/-!
# A218677: O.g.f.: Sum_{n>=0} n^n * (1+n*x)^(2*n) * x^n/n! * exp(-n*x*(1+n*x)^2).

The programs for A218677, there is no canonical definition to state claims against.
-/

/-! ## A218677.P6774503448619086919

`ceil(A099952(n+2)*sqrt(3)/2)`
-/

namespace A218677.P6774503448619086919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099952 (n + 2) : ℝ) * Real.sqrt (3 : ℝ) / 2⌉

end

end A218677.P6774503448619086919

/-! ## A218677.P15256954429593113286

`A159477(A000831(n))-n`
-/

namespace A218677.P15256954429593113286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A000831 n).toNat - (n : ℤ)

end

end A218677.P15256954429593113286

/-!
# A218678: O.g.f.: Sum_{n>=0} n^n * (1+n*x)^(3*n) * x^n/n! * exp(-n*x*(1+n*x)^3).

The programs for A218678, there is no canonical definition to state claims against.
-/

/-! ## A218678.P3800653116556519482

`A103221(or(5, A284816(n+1)))`
-/

namespace A218678.P3800653116556519482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor 5 (A284816 (n + 1))).toNat

end

end A218678.P3800653116556519482

/-! ## A218678.P4297555561005212770

`A008615(or(7, A284816(n+1)))`
-/

namespace A218678.P4297555561005212770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.lor 7 (A284816 (n + 1))).toNat

end

end A218678.P4297555561005212770

/-!
# A218679: O.g.f.: Sum_{n>=0} n^n * (1+n*x)^(4*n) * x^n/n! * exp(-n*x*(1+n*x)^4).

The programs for A218679, there is no canonical definition to state claims against.
-/

/-! ## A218679.P11581649166163574492

`A215698(n+1)+A054142(A000110(n))`
-/

namespace A218679.P11581649166163574492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215698 (n + 1) + A054142 (A000110 n).toNat

end

end A218679.P11581649166163574492

/-! ## A218679.P15716937199095901071

`A215698(n+1)+A007318(A278074(n))`
-/

namespace A218679.P15716937199095901071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215698 (n + 1) + A007318 (A278074 n).toNat

end

end A218679.P15716937199095901071

/-!
# A218680: O.g.f.: A(x) = Sum_{n>=0} n^n*x^n/(1-n*x)^(2*n)/n! * exp(-n*x/(1-n*x)^2).

The programs for A218680, there is no canonical definition to state claims against.
-/

/-! ## A218680.P11613315542287979259

`A057361(A000309(n))+1`
-/

namespace A218680.P11613315542287979259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A000309 n).toNat + 1

end

end A218680.P11613315542287979259

/-! ## A218680.P9504408187755469734

`A057354(A192941(n))+1`
-/

namespace A218680.P9504408187755469734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A192941 n).toNat + 1

end

end A218680.P9504408187755469734

/-!
# A218681: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n * A(n^2*x)^n/n! * exp(-n*x*A(n^2*x)).

The programs for A218681, there is no canonical definition to state claims against.
-/

/-! ## A218681.P16949811444967053412

`A351628(n!)`
-/

namespace A218681.P16949811444967053412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351628 (Nat.factorial n)

end

end A218681.P16949811444967053412

/-!
# A218682: E.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n/n! * A(n*x)^n.

The programs for A218682, there is no canonical definition to state claims against.
-/

/-! ## A218682.P6296561837868688526

`n*A132141(n*a(n-1))` with `a(0)=1`
-/

namespace A218682.P6296561837868688526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A132141 ((n : ℤ) * a (n - 1)).toNat

end

end A218682.P6296561837868688526

/-!
# A218683: E.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n/n! * A(n*x).

The programs for A218683, there is no canonical definition to state claims against.
-/

/-! ## A218683.P6312687528589414717

`n*A262378(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A218683.P6312687528589414717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A262378 (a (n - 1) + 1).toNat

end

end A218683.P6312687528589414717

/-!
# A218685: O.g.f.: Sum_{n>=0} (1+n^3*x)^n * x^n/n! * exp(-(1+n^3*x)*x).

The programs for A218685, there is no canonical definition to state claims against.
-/

/-! ## A218685.P1775904196883343355

`A081753(A034726(n+1))`
-/

namespace A218685.P1775904196883343355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A034726 (n + 1)).toNat

end

end A218685.P1775904196883343355

/-! ## A218685.P5830213314379326816

`A003144(A227038(a(n-2)+6))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=6`
-/

namespace A218685.P5830213314379326816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 6] fun n a =>
  A003144 (A227038 (a (n - 2) + 6).toNat).toNat

end

end A218685.P5830213314379326816

/-!
# A218686: O.g.f.: Sum_{n>=0} n^n * (1+n^2*x)^n * x^n/n! * exp(-n*(1+n^2*x)*x).

The programs for A218686, there is no canonical definition to state claims against.
-/

/-! ## A218686.P12259756807066146584

`A123108(A285654(n)+A060882(n))`
-/

namespace A218686.P12259756807066146584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A285654 n + A060882 n).toNat

end

end A218686.P12259756807066146584

/-! ## A218686.P13203704289236453867

`A019446(or(A085295(n), A320733(n)))`
-/

namespace A218686.P13203704289236453867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (Int.lor (A085295 n) (A320733 n)).toNat

end

end A218686.P13203704289236453867

/-!
# A218687: O.g.f.: Sum_{n>=0} n^n * (1+n^3*x)^n * x^n/n! * exp(-n*(1+n^3*x)*x).

The programs for A218687, there is no canonical definition to state claims against.
-/

/-! ## A218687.P5889143931981602243

`floor(sqrt(A191872(n^n)))`
-/

namespace A218687.P5889143931981602243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A191872 (n ^ n))

end

end A218687.P5889143931981602243

/-!
# A218688: Number of ways to linearly arrange the trees over all forests on n labeled nodes.

The programs for A218688, there is no canonical definition to state claims against.
-/

/-! ## A218688.P6204690547243625423

`A107878(n)+A098852(3*n+1)`
-/

namespace A218688.P6204690547243625423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107878 n + A098852 (3 * n + 1)

end

end A218688.P6204690547243625423

/-! ## A218688.P16865781146498473067

`A228708(A120588(n))+A107878(n)`
-/

namespace A218688.P16865781146498473067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 (A120588 n).toNat + A107878 n

end

end A218688.P16865781146498473067

/-! ## A218688.P14800239423443927166

`A380986(A005867(n))+A107878(n)`
-/

namespace A218688.P14800239423443927166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380986 (A005867 n).toNat + A107878 n

end

end A218688.P14800239423443927166

/-!
# A218689: a(n) = Sum_{k=0..n} binomial(n,k)^6*binomial(n+k,k)^6.

The programs for A218689, the canonical program `A218689.P4547476478571083135` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218689 has offset 0).

The definition of A218689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)^6*C(n+#, #)^6]` (program `A218689.P4547476478571083135`, by `A218689.P4547476478571083135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218689.P4547476478571083135

`∑{#}[n, C(n, #)^6*C(n+#, #)^6]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218689

/-- `∑{#}[n, C(n, #)^6*C(n+#, #)^6]` -/
def P4547476478571083135.Spec : Prop :=
  ∀ n, (P4547476478571083135.a n : ℤ) = A218689 n

theorem P4547476478571083135.correct : P4547476478571083135.Spec := by
  intro n
  simp only [A218689]

end A218689

/-!
# A218690: Sum_{k=0..n} C(n,k)^4*C(n+k,k)^2.

The programs for A218690, the canonical program `A218690.P1129334621648819196` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218690 has offset 0).

The definition of A218690 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)^4*C(n+#, #)²]` (program `A218690.P1129334621648819196`, by `A218690.P1129334621648819196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218690.P1129334621648819196

`∑{#}[n, C(n, #)^4*C(n+#, #)²]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218690

/-- `∑{#}[n, C(n, #)^4*C(n+#, #)²]` -/
def P1129334621648819196.Spec : Prop :=
  ∀ n, (P1129334621648819196.a n : ℤ) = A218690 n

theorem P1129334621648819196.correct : P1129334621648819196.Spec := by
  intro n
  simp only [A218690]

end A218690

/-!
# A218691: Number of ways to paint some (possibly none or all) of the trees over all forests on n labeled nodes.

The programs for A218691, there is no canonical definition to state claims against.
-/

/-! ## A218691.P223139605377817206

`A178772(A350662(2*n+1)+1)`
-/

namespace A218691.P223139605377817206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (A350662 (2 * n + 1) + 1).toNat

end

end A218691.P223139605377817206

/-! ## A218691.P9715838749323199004

`A004523(A084262(n)+A006605(n))`
-/

namespace A218691.P9715838749323199004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A084262 n + A006605 n).toNat

end

end A218691.P9715838749323199004

/-!
# A218692: Sum_{k=0..n} C(n,k)^6*C(n+k,k)^3.

The programs for A218692, the canonical program `A218692.P13542435287724775465` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218692 has offset 0).

The definition of A218692 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)^6*C(n+#, #)^3]` (program `A218692.P13542435287724775465`, by `A218692.P13542435287724775465.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218692.P13542435287724775465

`∑{#}[n, C(n, #)^6*C(n+#, #)^3]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218692

/-- `∑{#}[n, C(n, #)^6*C(n+#, #)^3]` -/
def P13542435287724775465.Spec : Prop :=
  ∀ n, (P13542435287724775465.a n : ℤ) = A218692 n

theorem P13542435287724775465.correct : P13542435287724775465.Spec := by
  intro n
  simp only [A218692]

end A218692

/-!
# A218693: a(n) = Sum_{k=0..n} C(n,k)*C(n+k,k)^3.

The programs for A218693, the canonical program `A218693.P16447243434769838163` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218693 has offset 0).

The definition of A218693 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*C(n+#, #)^3]` (program `A218693.P16447243434769838163`, by `A218693.P16447243434769838163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218693.P16447243434769838163

`∑{#}[n, C(n, #)*C(n+#, #)^3]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218693

/-- `∑{#}[n, C(n, #)*C(n+#, #)^3]` -/
def P16447243434769838163.Spec : Prop :=
  ∀ n, (P16447243434769838163.a n : ℤ) = A218693 n

theorem P16447243434769838163.correct : P16447243434769838163.Spec := by
  intro n
  simp only [A218693]

end A218693

/-!
# A218695: Square array A(h,k) = (2^h-1)*A(h,k-1) + Sum_{i=1..h-1} binomial(h,h-i)*2^i*A(i,k-1), with A(1,k) = A(h,1) = 1; read by antidiagonals.

The programs for A218695, there is no canonical definition to state claims against.
-/

/-! ## A218695.P9207295044496599853

`A173068(A059922(n))+A004273(A022167(n))`
-/

namespace A218695.P9207295044496599853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 (A059922 n).toNat + A004273 (A022167 n).toNat

end

end A218695.P9207295044496599853

/-! ## A218695.P15249528450027299492

`A173068(A208879(n)²)+A004273(A022167(n))`
-/

namespace A218695.P15249528450027299492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 (A208879 n ^ 2).toNat + A004273 (A022167 n).toNat

end

end A218695.P15249528450027299492

/-! ## A218695.P167252435540923637

`A053738(A157523(n)%A240902(n+1))`
-/

namespace A218695.P167252435540923637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (Int.tmod (A157523 n) (A240902 (n + 1))).toNat

end

end A218695.P167252435540923637

/-! ## A218695.P8214150323392067961

`A082226(A022167(n))`
-/

namespace A218695.P8214150323392067961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082226 (A022167 n).toNat

end

end A218695.P8214150323392067961

/-! ## A218695.P10772538806251118725

`A137451(A056940(n))`
-/

namespace A218695.P10772538806251118725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137451 (A056940 n).toNat

end

end A218695.P10772538806251118725

/-!
# A218696: Number of components over all graphs on n labeled nodes with unicyclic components (graphs counted by A137916).

The programs for A218696, there is no canonical definition to state claims against.
-/

/-! ## A218696.P13398012952470181612

`∑{#}[floor((n+3)/3)-1, A106239(C(n+3, 2)+#+1)*(#+1)]`
-/

namespace A218696.P13398012952470181612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / 3⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A106239 (Nat.choose (n + 3) 2 + (k + 1)) * (k + 1 : ℤ)

end

end A218696.P13398012952470181612

/-!
# A218697: Semiprimes that can be written in the form x^2 + 5*y^2 with x, y > 0.

The programs for A218697, the canonical program `A218697.P15989170104601870858` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218697 has offset 1).

The definition of A218697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218697.P12706533603135559143

`filter[A154778(1+n), A064911(#)]`
-/

namespace A218697.P12706533603135559143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A218697.P12706533603135559143

namespace A218697

/-- `filter[A154778(1+n), A064911(#)]` -/
def P12706533603135559143.Spec : Prop :=
  ∀ n, P12706533603135559143.a n = A218697 (n + 1)

end A218697

/-! ## A218697.P15989170104601870858

`∩[A001358(n+1), A154778(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A218697

/-- `∩[A001358(n+1), A154778(n+1)]` -/
def P15989170104601870858.Spec : Prop :=
  ∀ n, (P15989170104601870858.a n : ℤ) = A218697 (n + 1)

theorem P15989170104601870858.correct : P15989170104601870858.Spec := by
  intro n
  simp only [A218697, Nat.add_sub_cancel]

end A218697

/-! ## A218697.P18065892625780249404

`∩[A154778(n+1), A176540(n+1)]`
-/

namespace A218697.P18065892625780249404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218697.P18065892625780249404

namespace A218697

/-- `∩[A154778(n+1), A176540(n+1)]` -/
def P18065892625780249404.Spec : Prop :=
  ∀ n, (P18065892625780249404.a n : ℤ) = A218697 (n + 1)

end A218697

/-! ## A218697.P1428057634656346617

`record[A179312(A154778(n+1))]`
-/

namespace A218697.P1428057634656346617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A154778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218697.P1428057634656346617

namespace A218697

/-- `record[A179312(A154778(n+1))]` -/
def P1428057634656346617.Spec : Prop :=
  ∀ n, P1428057634656346617.a n = A218697 (n + 1)

end A218697

/-! ## A218697.P6257146900424301727

`eq[A107393(A033718(n)), A226378(n)]`
-/

namespace A218697.P6257146900424301727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A033718 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218697.P6257146900424301727

namespace A218697

/-- `eq[A107393(A033718(n)), A226378(n)]` -/
def P6257146900424301727.Spec : Prop :=
  ∀ n, (P6257146900424301727.a n : ℤ) = A218697 (n + 1)

end A218697

/-! ## A218697.P6538327158578842233

`eq[A077462(n), A317951(A033718(n))]`
-/

namespace A218697.P6538327158578842233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317951 (A033718 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218697.P6538327158578842233

namespace A218697

/-- `eq[A077462(n), A317951(A033718(n))]` -/
def P6538327158578842233.Spec : Prop :=
  ∀ n, (P6538327158578842233.a n : ℤ) = A218697 (n + 1)

end A218697

/-!
# A218699: Number of partitions of n in which any two distinct parts differ by at least 4.

The programs for A218699, there is no canonical definition to state claims against.
-/

/-! ## A218699.P492768183874579987

`A218698(A077169(n)-1+n)`
-/

namespace A218699.P492768183874579987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A077169 n - 1 + (n : ℤ)).toNat

end

end A218699.P492768183874579987

