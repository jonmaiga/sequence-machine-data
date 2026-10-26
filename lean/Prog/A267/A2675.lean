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
import Seq.B000.C017
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A267502: Number of cycles of length 3 of autobiographical numbers (A267491 ... A267498) in base n.

The programs for A267502, there is no canonical definition to state claims against.
-/

/-! ## A267502.P6648099964002500838

`3*A029431(A010737(n))`
-/

namespace A267502.P6648099964002500838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A029431 (A010737 n).toNat

end

end A267502.P6648099964002500838

/-! ## A267502.P3047468411289435341

`3*A008679(A174145(n))`
-/

namespace A267502.P3047468411289435341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008679 (A174145 n).toNat

end

end A267502.P3047468411289435341

/-! ## A267502.P10619355437359567847

`3*A106828(A087787(n))`
-/

namespace A267502.P10619355437359567847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A106828 (A087787 n).toNat

end

end A267502.P10619355437359567847

/-! ## A267502.P225767833406160644

`3*A103221(A288678(n))`
-/

namespace A267502.P225767833406160644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A103221 (A288678 n).toNat

end

end A267502.P225767833406160644

/-! ## A267502.P16379554258198308222

`3*A198321(A347493(n))`
-/

namespace A267502.P16379554258198308222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A198321 (A347493 n).toNat

end

end A267502.P16379554258198308222

/-!
# A267503: Primes p such that p-1 is squarefree and all prime divisors of p-1 other than 5 are also in the sequence.

The programs for A267503, there is no canonical definition to state claims against.
-/

/-! ## A267503.P10994793282548599578

`A057459(A326178(n+1))`
-/

namespace A267503.P10994793282548599578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (A326178 (n + 1)).toNat

end

end A267503.P10994793282548599578

/-! ## A267503.P5282912719988935282

`A057459(A008486(n)-A004275(n))`
-/

namespace A267503.P5282912719988935282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (A008486 n - A004275 n).toNat

end

end A267503.P5282912719988935282

/-! ## A267503.P1072159926970477580

`A057459(A049084(p?[A047201(n+1)]))`
-/

namespace A267503.P1072159926970477580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A267503.P1072159926970477580

/-! ## A267503.P6083249487285577551

`p?[A185012(n)+A057459(n+1)]`
-/

namespace A267503.P6083249487285577551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n + A057459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267503.P6083249487285577551

/-! ## A267503.P15634044369512433742

`p?[A057459(n+1)+A000007(A081753(n))]`
-/

namespace A267503.P15634044369512433742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1) + A000007 (A081753 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267503.P15634044369512433742

/-! ## A267503.P15672512855898506475

`∩[A039787(n+1), A057459(n+1)]`
-/

namespace A267503.P15672512855898506475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267503.P15672512855898506475

/-! ## A267503.P7215795628963896666

`record[A057459(n+1)%Δ[A199402(n+1)]]`
-/

namespace A267503.P7215795628963896666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199402 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057459 (n + 1)) (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267503.P7215795628963896666

/-! ## A267503.P3720128941232169604

`p?[A014963(A001750(n+1))*A057459(n+1)]`
-/

namespace A267503.P3720128941232169604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001750 (n + 1)).toNat * A057459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267503.P3720128941232169604

/-! ## A267503.P12321753706814930980

`∩[A057459(n+1), A393860(n+1)]`
-/

namespace A267503.P12321753706814930980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267503.P12321753706814930980

/-! ## A267503.P14519698777567563648

`∩[A045326(n+1), A057459(n+1)]`
-/

namespace A267503.P14519698777567563648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267503.P14519698777567563648

/-! ## A267503.P987098318945213282

`∩[A057459(n+1), A165318(n+1)]`
-/

namespace A267503.P987098318945213282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267503.P987098318945213282

/-! ## A267503.P3526825013528937530

`∩[A057459(n+1), A332555(n+1)]`
-/

namespace A267503.P3526825013528937530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267503.P3526825013528937530

/-! ## A267503.P6620601569431436749

`∩[A049196(n+1), A057459(n+1)]`
-/

namespace A267503.P6620601569431436749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267503.P6620601569431436749

/-! ## A267503.P71678556810853123

`∩[A049149(n+1), A057459(n+1)]`
-/

namespace A267503.P71678556810853123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267503.P71678556810853123

/-! ## A267503.P5525757237830001077

`∩[A057459(n+1), A069579(n+1)]`
-/

namespace A267503.P5525757237830001077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267503.P5525757237830001077

/-! ## A267503.P1970742119196544586

`∩[A057459(n+1), A140409(n+1)]`
-/

namespace A267503.P1970742119196544586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267503.P1970742119196544586

/-! ## A267503.P16658100710561560380

`∩[A040116(n+1), A057459(n+1)]`
-/

namespace A267503.P16658100710561560380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267503.P16658100710561560380

/-! ## A267503.P14927720899516225846

`∩[A045323(n+1), A057459(n+1)]`
-/

namespace A267503.P14927720899516225846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267503.P14927720899516225846

/-! ## A267503.P4692906538983633404

`∩[A057459(n+1), A216277(n+1)]`
-/

namespace A267503.P4692906538983633404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267503.P4692906538983633404

/-! ## A267503.P15187969386758876639

`∩[A057459(n+1), A097987(n+1)]`
-/

namespace A267503.P15187969386758876639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267503.P15187969386758876639

/-!
# A267505: Primes p such that p-1 is squarefree and all prime divisors of p-1 other than 13 are also in the sequence.

The programs for A267505, there is no canonical definition to state claims against.
-/

/-! ## A267505.P14391357508258442651

`p?[A018511(n+1)+1]`
-/

namespace A267505.P14391357508258442651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018511 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267505.P14391357508258442651

/-! ## A267505.P14874268482051564185

`p?[A127315(n+1)+1]`
-/

namespace A267505.P14874268482051564185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127315 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267505.P14874268482051564185

/-!
# A267506: Primes p such that p-1 is squarefree and all prime divisors of p-1 other than 17 are also in the sequence.

The programs for A267506, there is no canonical definition to state claims against.
-/

/-! ## A267506.P3589668364970498898

`p?[A018606(n+1)+1]`
-/

namespace A267506.P3589668364970498898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018606 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267506.P3589668364970498898

/-! ## A267506.P4630040226348242819

`A217884(A066369(n))`
-/

namespace A267506.P4630040226348242819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217884 (A066369 n).toNat

end

end A267506.P4630040226348242819

/-!
# A267507: Prime numbers n such that n-1 is squarefree and all prime divisors of n-1 other than 19 are in the sequence.

The programs for A267507, there is no canonical definition to state claims against.
-/

/-! ## A267507.P10446162101211869594

`A229290(A041569(n))`
-/

namespace A267507.P10446162101211869594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229290 (A041569 n).toNat

end

end A267507.P10446162101211869594

/-!
# A267508: Smallest number "c-equivalent" to n.

The programs for A267508, there is no canonical definition to state claims against.
-/

/-! ## A267508.P3869496921392368164

`A059893(A233569(n+1))`
-/

namespace A267508.P3869496921392368164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A233569 (n + 1)).toNat

end

end A267508.P3869496921392368164

/-! ## A267508.P8668325977247544212

`A233249(A333219(n+2))`
-/

namespace A267508.P8668325977247544212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (A333219 (n + 2)).toNat

end

end A267508.P8668325977247544212

/-! ## A267508.P10811765929355623

`A233249(∏{e}[A057335(n+1), A016114(#)])`
-/

namespace A267508.P10811765929355623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016114 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A267508.P10811765929355623

/-! ## A267508.P16956973519142872768

`A233249(∏{e}[A057335(n+1), A029732(#)])`
-/

namespace A267508.P16956973519142872768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A029732 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A267508.P16956973519142872768

/-! ## A267508.P8202535078464384952

`A358522(A358506(n+2))-1`
-/

namespace A267508.P8202535078464384952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358522 (A358506 (n + 2)).toNat - 1

end

end A267508.P8202535078464384952

/-!
# A267509: Integers whose base-10 representation (Bm,...,B1,B0) is such that the polynomial f(x) = B0 + B1*x + ... + Bm*x^m is reducible over the ring of integers, 0 <= Bi <= 9.

The programs for A267509, there is no canonical definition to state claims against.
-/

/-! ## A267509.P4075500567092337771

`A121719(n+1)%A233374(n+1)`
-/

namespace A267509.P4075500567092337771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121719 (n + 1)) (A233374 (n + 1))

end

end A267509.P4075500567092337771

/-! ## A267509.P240512116367837896

`A121719(A168184(A166873(n+1))+n)`
-/

namespace A267509.P240512116367837896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121719 (A168184 (A166873 (n + 1)).toNat + (n : ℤ)).toNat

end

end A267509.P240512116367837896

/-! ## A267509.P14480006884837173192

`A121719(n+1)%A050278(A355614(n))`
-/

namespace A267509.P14480006884837173192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121719 (n + 1)) (A050278 (A355614 n).toNat)

end

end A267509.P14480006884837173192

/-! ## A267509.P3530923046699842885

`lcm(A121719(n+1), A191898(A351465(2*(n+1))))`
-/

namespace A267509.P3530923046699842885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A121719 (n + 1)) (A191898 (A351465 (2 * (n + 1))).toNat)

end

end A267509.P3530923046699842885

/-! ## A267509.P7077286373971161355

`A000196(A121719(n+1)²)`
-/

namespace A267509.P7077286373971161355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A121719 (n + 1) ^ 2).toNat

end

end A267509.P7077286373971161355

/-!
# A267510: Integers in A267509 such that (B0 + B1 + ... + Bm) is congruent to 0 mod m.

The programs for A267510, there is no canonical definition to state claims against.
-/

/-! ## A267510.P16128162741630952386

`A216455(A121719(n+5))`
-/

namespace A267510.P16128162741630952386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A121719 (n + 5)).toNat

end

end A267510.P16128162741630952386

/-! ## A267510.P1747749120105708524

`A118759(A250041(n+9))`
-/

namespace A267510.P1747749120105708524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A250041 (n + 9)).toNat

end

end A267510.P1747749120105708524

/-! ## A267510.P7502852548662286144

`A000194(A121719(n+5)²)`
-/

namespace A267510.P7502852548662286144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A121719 (n + 5) ^ 2).toNat

end

end A267510.P7502852548662286144

/-! ## A267510.P10410108116263890169

`comp[A078453(n+1)]%A340096(3*n+1)`
-/

namespace A267510.P10410108116263890169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078453 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A340096 (3 * n + 1))

end

end A267510.P10410108116263890169

/-! ## A267510.P16340569713930486704

`A121719(n+5)%A081264(A053251(3*n+2))`
-/

namespace A267510.P16340569713930486704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121719 (n + 5)) (A081264 (A053251 (3 * n + 2)).toNat)

end

end A267510.P16340569713930486704

/-!
# A267511: Binary representation of the n-th iteration of the "Rule 137" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267511, there is no canonical definition to state claims against.
-/

/-! ## A267511.P10530722916753415624

`A007088(A267512(n))`
-/

namespace A267511.P10530722916753415624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267512 n).toNat

end

end A267511.P10530722916753415624

/-! ## A267511.P4308796189382911395

`A185544(2*A267512(n))`
-/

namespace A267511.P4308796189382911395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267512 n).toNat

end

end A267511.P4308796189382911395

/-! ## A267511.P1134116760054132028

`A185544(lcm(2, A267512(n)))`
-/

namespace A267511.P1134116760054132028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A267512 n))

end

end A267511.P1134116760054132028

/-!
# A267512: Decimal representation of the n-th iteration of the "Rule 137" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267512, there is no canonical definition to state claims against.
-/

/-! ## A267512.P7920426057119860134

`A325401(A267646(n)/A107876(n))`
-/

namespace A267512.P7920426057119860134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A267646 n : ℚ) / (A107876 n : ℚ))).toNat

end

end A267512.P7920426057119860134

/-! ## A267512.P7987715143896957686

`A325401(A267646(n)/A219347(n))`
-/

namespace A267512.P7987715143896957686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A267646 n : ℚ) / (A219347 n : ℚ))).toNat

end

end A267512.P7987715143896957686

/-! ## A267512.P5695847466137400240

`A325401(A267646(n)/A080028(n+1))`
-/

namespace A267512.P5695847466137400240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A267646 n : ℚ) / (A080028 (n + 1) : ℚ))).toNat

end

end A267512.P5695847466137400240

/-!
# A267513: Middle column of the "Rule 137" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267513, there is no canonical definition to state claims against.
-/

/-! ## A267513.P1075515718978990939

`A267515(n)%2`
-/

namespace A267513.P1075515718978990939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267515 n) 2

end

end A267513.P1075515718978990939

/-! ## A267513.P2331787646618213611

`A008680(val(A267515(n), 2))`
-/

namespace A267513.P2331787646618213611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (SequenceMachineLib.valuation (A267515 n).toNat 2)

end

end A267513.P2331787646618213611

/-! ## A267513.P15659744476278384864

`A015241(val(A267515(n), 2))`
-/

namespace A267513.P15659744476278384864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015241 (SequenceMachineLib.valuation (A267515 n).toNat 2)

end

end A267513.P15659744476278384864

/-! ## A267513.P12600875092991960726

`A178602(val(A267515(n), 2))`
-/

namespace A267513.P12600875092991960726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178602 (SequenceMachineLib.valuation (A267515 n).toNat 2)

end

end A267513.P12600875092991960726

/-! ## A267513.P10770262823636283834

`and(A055642(A000120(n)), A267515(n))`
-/

namespace A267513.P10770262823636283834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055642 (A000120 n).toNat) (A267515 n)

end

end A267513.P10770262823636283834

/-! ## A267513.P11668376897993078188

`and(A066247(A017341(n)), A267515(n))`
-/

namespace A267513.P11668376897993078188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066247 (A017341 n).toNat) (A267515 n)

end

end A267513.P11668376897993078188

/-! ## A267513.P9855884211749605027

`and(A003557(A037126(n+1)), A267515(n))`
-/

namespace A267513.P9855884211749605027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003557 (A037126 (n + 1)).toNat) (A267515 n)

end

end A267513.P9855884211749605027

/-! ## A267513.P2138578459344019688

`and(A055642(A240672(n+1)), A267515(n))`
-/

namespace A267513.P2138578459344019688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055642 (A240672 (n + 1)).toNat) (A267515 n)

end

end A267513.P2138578459344019688

/-! ## A267513.P9894855285537085471

`and(A189318(n), A267515(n))`
-/

namespace A267513.P9894855285537085471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A189318 n) (A267515 n)

end

end A267513.P9894855285537085471

/-! ## A267513.P4652979347128713979

`and(A204708(n+1), A267515(n))`
-/

namespace A267513.P4652979347128713979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204708 (n + 1)) (A267515 n)

end

end A267513.P4652979347128713979

/-! ## A267513.P3981695732893730922

`and(A267515(n), A323210(n))`
-/

namespace A267513.P3981695732893730922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267515 n) (A323210 n)

end

end A267513.P3981695732893730922

/-! ## A267513.P2848344825120409747

`and(A085601(n), A267515(n))`
-/

namespace A267513.P2848344825120409747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085601 n) (A267515 n)

end

end A267513.P2848344825120409747

/-! ## A267513.P1929346862472396079

`and(A087289(n), A267515(n))`
-/

namespace A267513.P1929346862472396079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087289 n) (A267515 n)

end

end A267513.P1929346862472396079

/-! ## A267513.P11129941130451048144

`and(A092440(n), A267515(n))`
-/

namespace A267513.P11129941130451048144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092440 n) (A267515 n)

end

end A267513.P11129941130451048144

/-! ## A267513.P1339990569042619603

`and(A020527(n), A267515(n))`
-/

namespace A267513.P1339990569042619603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020527 n) (A267515 n)

end

end A267513.P1339990569042619603

/-! ## A267513.P6382623597893331529

`and(A199209(n), A267515(n))`
-/

namespace A267513.P6382623597893331529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A199209 n) (A267515 n)

end

end A267513.P6382623597893331529

/-! ## A267513.P13242176855383851152

`and(A050915(n), A267515(n))`
-/

namespace A267513.P13242176855383851152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050915 n) (A267515 n)

end

end A267513.P13242176855383851152

/-! ## A267513.P2421432859646839230

`A267514(n)%2`
-/

namespace A267513.P2421432859646839230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267514 n) 2

end

end A267513.P2421432859646839230

/-! ## A267513.P4629207051697632627

`A267463(∑[2*n])`
-/

namespace A267513.P4629207051697632627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267513.P4629207051697632627

/-! ## A267513.P17448462515620660325

`A267636(∑[2*n])`
-/

namespace A267513.P17448462515620660325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267636 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267513.P17448462515620660325

/-!
# A267514: Binary representation of the middle column of the "Rule 137" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267514, there is no canonical definition to state claims against.
-/

/-! ## A267514.P10337761216520927702

`A007088(A267515(n))`
-/

namespace A267514.P10337761216520927702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267515 n).toNat

end

end A267514.P10337761216520927702

/-! ## A267514.P17542127075396436620

`A267463(A002378(n))+10*a(n-1)` with `a(0)=1`
-/

namespace A267514.P17542127075396436620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267463 (A002378 n).toNat + 10 * a (n - 1)

end

end A267514.P17542127075396436620

/-! ## A267514.P14257824032033560489

`A007088(floor(sqrt(A147597(n+1))))`
-/

namespace A267514.P14257824032033560489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.sqrt (A147597 (n + 1))).toNat

end

end A267514.P14257824032033560489

/-! ## A267514.P7452562581035497118

`A007088(floor(sqrt(A174317(2*n+1))))`
-/

namespace A267514.P7452562581035497118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.sqrt (A174317 (2 * n + 1))).toNat

end

end A267514.P7452562581035497118

/-! ## A267514.P8938916267625165515

`A007088(floor(sqrt(A247541(floor(2^(n-1))))))`
-/

namespace A267514.P8938916267625165515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.sqrt (A247541 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat)).toNat

end

end A267514.P8938916267625165515

/-!
# A267515: Decimal representation of the middle column of the "Rule 137" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267515, there is no canonical definition to state claims against.
-/

/-! ## A267515.P14590771130795714151

`A267513(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A267515.P14590771130795714151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267513 n + 2 * a (n - 1)

end

end A267515.P14590771130795714151

/-! ## A267515.P3407922295050557147

`or(2*a(n-1), A267463(A002378(n)))` with `a(0)=1`
-/

namespace A267515.P3407922295050557147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A267463 (A002378 n).toNat)

end

end A267515.P3407922295050557147

/-! ## A267515.P16225727618294419566

`floor(sqrt(A247541(floor(2^(n-1)))))`
-/

namespace A267515.P16225727618294419566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A247541 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat)

end

end A267515.P16225727618294419566

/-! ## A267515.P12159350744890437579

`A022841(ceil(2^(n-1)))-floor(acot(n))`
-/

namespace A267515.P12159350744890437579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A267515.P12159350744890437579

/-! ## A267515.P13371534436018742709

`A022841(A011782(n))-char[27*n]`
-/

namespace A267515.P13371534436018742709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 (A011782 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267515.P13371534436018742709

/-!
# A267516: Number of ON (black) cells in the n-th iteration of the "Rule 137" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267516, there is no canonical definition to state claims against.
-/

/-! ## A267516.P14781265327816925985

`Δ[n²]-A267518(n)`
-/

namespace A267516.P14781265327816925985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267518 n

end

end A267516.P14781265327816925985

/-! ## A267516.P7804641965037927633

`abs(A246027(n+1)+n)`
-/

namespace A267516.P7804641965037927633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246027 (n + 1) + (n : ℤ)|

end

end A267516.P7804641965037927633

/-! ## A267516.P3722451627975521558

`abs(A071049(n+1)-1-2*n)`
-/

namespace A267516.P3722451627975521558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071049 (n + 1) - 1 - (2 * n : ℤ)|

end

end A267516.P3722451627975521558

/-! ## A267516.P8561706226138413560

`n+1-A267518(n%(n+1))+n`
-/

namespace A267516.P8561706226138413560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267518 (n % (n + 1)) + (n : ℤ)

end

end A267516.P8561706226138413560

/-! ## A267516.P13881491060961893251

`A005843(n)+1-A267518(n)`
-/

namespace A267516.P13881491060961893251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A267518 n)

end

end A267516.P13881491060961893251

/-! ## A267516.P4958048914080986574

`n+1-(A071049(n+1)%A110267(n)-n)`
-/

namespace A267516.P4958048914080986574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.tmod (A071049 (n + 1)) (A110267 n) - (n : ℤ))

end

end A267516.P4958048914080986574

/-! ## A267516.P12619581785833295436

`A163332(A163332(n+1))+n-A267518(n)`
-/

namespace A267516.P12619581785833295436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163332 (n + 1)).toNat + ((n : ℤ) - A267518 n)

end

end A267516.P12619581785833295436

/-! ## A267516.P1795541233455283948

`A064429(A064429(n+1))+n-A267518(n)`
-/

namespace A267516.P1795541233455283948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A064429 (n + 1)).toNat + ((n : ℤ) - A267518 n)

end

end A267516.P1795541233455283948

/-! ## A267516.P12644334753530645246

`(A246027(n+1)+n)%A106499(a(n-1)+1)` with `a(0)=1`
-/

namespace A267516.P12644334753530645246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A246027 (n + 1) + (n : ℤ)) (A106499 (a (n - 1) + 1).toNat)

end

end A267516.P12644334753530645246

/-! ## A267516.P16008093754338618252

`∑{digits}[A267511(n), #]`
-/

namespace A267516.P16008093754338618252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A267516.P16008093754338618252

/-!
# A267517: Total number of ON (black) cells after n iterations of the "Rule 137" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267517, there is no canonical definition to state claims against.
-/

/-! ## A267517.P12256803557738405409

`∑[A267516(n)]`
-/

namespace A267517.P12256803557738405409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267517.P12256803557738405409

/-! ## A267517.P12222484486244942757

`(n+1)²-A267519(n)`
-/

namespace A267517.P12222484486244942757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267519 n

end

end A267517.P12222484486244942757

/-! ## A267517.P7140151990817719425

`∑[Δ[n²]-A267518(n)]`
-/

namespace A267517.P7140151990817719425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267517.P7140151990817719425

/-! ## A267517.P6022279694754970039

`∑[A246027(n+1)+n]+2`
-/

namespace A267517.P6022279694754970039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246027 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A267517.P6022279694754970039

/-! ## A267517.P4694411808314839825

`A265323(n+1)-2*n`
-/

namespace A267517.P4694411808314839825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265323 (n + 1) - (2 * n : ℤ)

end

end A267517.P4694411808314839825

/-! ## A267517.P2963393168692888555

`∑[A265322(n+1)]-2*n`
-/

namespace A267517.P2963393168692888555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ)

end

end A267517.P2963393168692888555

/-! ## A267517.P16648827227803557714

`∑[∑{digits}[A267511(n), #]]`
-/

namespace A267517.P16648827227803557714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267511 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267517.P16648827227803557714

/-!
# A267518: Number of OFF (white) cells in the n-th iteration of the "Rule 137" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267518, there is no canonical definition to state claims against.
-/

/-! ## A267518.P7105598788815096513

`Δ[n²]-A267516(n)`
-/

namespace A267518.P7105598788815096513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267516 n

end

end A267518.P7105598788815096513

/-! ## A267518.P15007634868870016798

`A071049(n+1)%A081437(n)`
-/

namespace A267518.P15007634868870016798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071049 (n + 1)) (A081437 n)

end

end A267518.P15007634868870016798

/-! ## A267518.P3623980238810719433

`and(1, A000040(n+1))*A071049(n+1)`
-/

namespace A267518.P3623980238810719433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A071049 (n + 1)

end

end A267518.P3623980238810719433

/-! ## A267518.P13001912310371428690

`A071049(A000027(n+1))%A057326(n+1)`
-/

namespace A267518.P13001912310371428690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071049 (A000027 (n + 1)).toNat) (A057326 (n + 1))

end

end A267518.P13001912310371428690

/-! ## A267518.P18396072714608455325

`A071049(n+1)*A340676(A179875(n+1))`
-/

namespace A267518.P18396072714608455325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071049 (n + 1) * A340676 (A179875 (n + 1)).toNat

end

end A267518.P18396072714608455325

/-! ## A267518.P11705996943532128676

`A201916(n+1)%(A071049(n+1)-A201916(n+1))`
-/

namespace A267518.P11705996943532128676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201916 (n + 1)) (A071049 (n + 1) - A201916 (n + 1))

end

end A267518.P11705996943532128676

/-! ## A267518.P10929115257279935002

`and(1, Δ[A285068(n+1)])*A071049(n+1)`
-/

namespace A267518.P10929115257279935002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n) * A071049 (n + 1)

end

end A267518.P10929115257279935002

/-! ## A267518.P10860731093354513747

`(2-A285068(2*n+1))*A071049(n+1)`
-/

namespace A267518.P10860731093354513747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A285068 (2 * n + 1)) * A071049 (n + 1)

end

end A267518.P10860731093354513747

/-!
# A267519: Total number of OFF (white) cells after n iterations of the "Rule 137" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267519, there is no canonical definition to state claims against.
-/

/-! ## A267519.P5331953645702056047

`∑[A267518(n)]`
-/

namespace A267519.P5331953645702056047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267519.P5331953645702056047

/-! ## A267519.P12799752569935021635

`∑[A071049(n+1)]-2`
-/

namespace A267519.P12799752569935021635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A267519.P12799752569935021635

/-! ## A267519.P16789574331570126470

`(n+1)²-A267517(n)`
-/

namespace A267519.P16789574331570126470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267517 n

end

end A267519.P16789574331570126470

/-! ## A267519.P2184740579664439035

`∑[Δ[n²]-A267516(n)]`
-/

namespace A267519.P2184740579664439035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267519.P2184740579664439035

/-! ## A267519.P15225618605398981226

`∑[A071049(n+1)%A081437(n)]`
-/

namespace A267519.P15225618605398981226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071049 (n + 1)) (A081437 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267519.P15225618605398981226

/-! ## A267519.P644027381594039957

`A265321(n+1)-3`
-/

namespace A267519.P644027381594039957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265321 (n + 1) - 3

end

end A267519.P644027381594039957

/-! ## A267519.P8169393338686891746

`A023445(A265321(n+1))`
-/

namespace A267519.P8169393338686891746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A265321 (n + 1)).toNat

end

end A267519.P8169393338686891746

/-!
# A267520: Triangle read by rows giving successive states of cellular automaton generated by "Rule 139" initiated with a single ON (black) cell.

The programs for A267520, the canonical program `A267520.P11008997712786491170` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267520 has offset 0).

The definition of A267520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267520.P11008997712786491170

`1-Δ[A265186(n)]²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A267520

/-- `1-Δ[A265186(n)]²` -/
def P11008997712786491170.Spec : Prop :=
  ∀ n, P11008997712786491170.a n = A267520 n

theorem P11008997712786491170.correct : P11008997712786491170.Spec := by
  intro n
  simp only [A267520]

end A267520

/-! ## A267520.P2078621699206125268

`1-char[A135276(n)+2]`
-/

namespace A267520.P2078621699206125268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267520.P2078621699206125268

namespace A267520

/-- `1-char[A135276(n)+2]` -/
def P2078621699206125268.Spec : Prop :=
  ∀ n, P2078621699206125268.a n = A267520 n

end A267520

/-! ## A267520.P6413862578767672239

`A267533(1-char[3]+n)`
-/

namespace A267520.P6413862578767672239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267533 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A267520.P6413862578767672239

namespace A267520

/-- `A267533(1-char[3]+n)` -/
def P6413862578767672239.Spec : Prop :=
  ∀ n, P6413862578767672239.a n = A267520 n

end A267520

/-! ## A267520.P8739201750600197749

`xor(char[3], A267533(n+1))`
-/

namespace A267520.P8739201750600197749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A267533 (n + 1))

end

end A267520.P8739201750600197749

namespace A267520

/-- `xor(char[3], A267533(n+1))` -/
def P8739201750600197749.Spec : Prop :=
  ∀ n, P8739201750600197749.a n = A267520 n

end A267520

/-! ## A267520.P2396468876497562923

`floor(atan(A053186(n)-1))²`
-/

namespace A267520.P2396468876497562923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A053186 n - 1 : ℝ)⌋ ^ 2

end

end A267520.P2396468876497562923

namespace A267520

/-- `floor(atan(A053186(n)-1))²` -/
def P2396468876497562923.Spec : Prop :=
  ∀ n, P2396468876497562923.a n = A267520 n

end A267520

/-! ## A267520.P15108108875558508792

`A265186(a(n-1)+n)` with `a(0)=1`
-/

namespace A267520.P15108108875558508792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265186 (a (n - 1) + (n : ℤ)).toNat

end

end A267520.P15108108875558508792

namespace A267520

/-- `A265186(a(n-1)+n)` -/
def P15108108875558508792.Spec : Prop :=
  ∀ n, P15108108875558508792.a n = A267520 n

end A267520

/-! ## A267520.P17823073915763236170

`A127282(C(3, n-floor(sqrt(n))²))`
-/

namespace A267520.P17823073915763236170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127282 (Nat.choose 3 ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)).toNat)

end

end A267520.P17823073915763236170

namespace A267520

/-- `A127282(C(3, n-floor(sqrt(n))²))` -/
def P17823073915763236170.Spec : Prop :=
  ∀ n, P17823073915763236170.a n = A267520 n

end A267520

/-! ## A267520.P16648194104318385926

`A267621(a(n-1)-1+n)` with `a(0)=1`
-/

namespace A267520.P16648194104318385926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267621 (a (n - 1) - 1 + (n : ℤ)).toNat

end

end A267520.P16648194104318385926

namespace A267520

/-- `A267621(a(n-1)-1+n)` -/
def P16648194104318385926.Spec : Prop :=
  ∀ n, P16648194104318385926.a n = A267520 n

end A267520

/-! ## A267520.P18011304526610304531

`A267594(a(n-1)+n-2)` with `a(0)=1`
-/

namespace A267520.P18011304526610304531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267594 (a (n - 1) + ((n : ℤ) - 2)).toNat

end

end A267520.P18011304526610304531

namespace A267520

/-- `A267594(a(n-1)+n-2)` -/
def P18011304526610304531.Spec : Prop :=
  ∀ n, P18011304526610304531.a n = A267520 n

end A267520

/-! ## A267520.P12707501897990547382

`A267621(n-(1-a(n-1)))` with `a(0)=1`
-/

namespace A267520.P12707501897990547382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267621 ((n : ℤ) - (1 - a (n - 1))).toNat

end

end A267520.P12707501897990547382

namespace A267520

/-- `A267621(n-(1-a(n-1)))` -/
def P12707501897990547382.Spec : Prop :=
  ∀ n, P12707501897990547382.a n = A267520 n

end A267520

/-! ## A267520.P6489160952819791397

`A267635(a(n-1)+n-2)` with `a(0)=1`
-/

namespace A267520.P6489160952819791397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267635 (a (n - 1) + ((n : ℤ) - 2)).toNat

end

end A267520.P6489160952819791397

namespace A267520

/-- `A267635(a(n-1)+n-2)` -/
def P6489160952819791397.Spec : Prop :=
  ∀ n, P6489160952819791397.a n = A267520 n

end A267520

/-! ## A267520.P17321946015401955239

`A049240(a(n-1)+n-2)` with `a(0)=1, a(1)=1`
-/

namespace A267520.P17321946015401955239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A049240 (a (n - 1) + ((n : ℤ) - 2)).toNat

end

end A267520.P17321946015401955239

namespace A267520

/-- `A049240(a(n-1)+n-2)` -/
def P17321946015401955239.Spec : Prop :=
  ∀ n, P17321946015401955239.a n = A267520 n

end A267520

/-! ## A267520.P3157058241289970980

`A179184(A053186(n))`
-/

namespace A267520.P3157058241289970980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A053186 n).toNat

end

end A267520.P3157058241289970980

namespace A267520

/-- `A179184(A053186(n))` -/
def P3157058241289970980.Spec : Prop :=
  ∀ n, P3157058241289970980.a n = A267520 n

end A267520

/-! ## A267520.P2249250814814575509

`A267537(A053186(n)+1)`
-/

namespace A267520.P2249250814814575509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 (A053186 n + 1).toNat

end

end A267520.P2249250814814575509

namespace A267520

/-- `A267537(A053186(n)+1)` -/
def P2249250814814575509.Spec : Prop :=
  ∀ n, P2249250814814575509.a n = A267520 n

end A267520

/-! ## A267520.P9694333492478086512

`A265186(A265186(n)+n)`
-/

namespace A267520.P9694333492478086512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265186 (A265186 n + (n : ℤ)).toNat

end

end A267520.P9694333492478086512

namespace A267520

/-- `A265186(A265186(n)+n)` -/
def P9694333492478086512.Spec : Prop :=
  ∀ n, P9694333492478086512.a n = A267520 n

end A267520

/-! ## A267520.P11479246881557918265

`A263243(n)*A265186(n)`
-/

namespace A267520.P11479246881557918265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263243 n * A265186 n

end

end A267520.P11479246881557918265

namespace A267520

/-- `A263243(n)*A265186(n)` -/
def P11479246881557918265.Spec : Prop :=
  ∀ n, P11479246881557918265.a n = A267520 n

end A267520

/-! ## A267520.P6963931879255840391

`A265186(n)*A267621(n)`
-/

namespace A267520.P6963931879255840391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265186 n * A267621 n

end

end A267520.P6963931879255840391

namespace A267520

/-- `A265186(n)*A267621(n)` -/
def P6963931879255840391.Spec : Prop :=
  ∀ n, P6963931879255840391.a n = A267520 n

end A267520

/-! ## A267520.P10083005487557975403

`A267621(abs(n-A267621(n)))`
-/

namespace A267520.P10083005487557975403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267621 |(n : ℤ) - A267621 n|.toNat

end

end A267520.P10083005487557975403

namespace A267520

/-- `A267621(abs(n-A267621(n)))` -/
def P10083005487557975403.Spec : Prop :=
  ∀ n, P10083005487557975403.a n = A267520 n

end A267520

/-! ## A267520.P3629433178583969356

`A179184(n-A000196(n)²)`
-/

namespace A267520.P3629433178583969356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 ((n : ℤ) - A000196 n ^ 2).toNat

end

end A267520.P3629433178583969356

namespace A267520

/-- `A179184(n-A000196(n)²)` -/
def P3629433178583969356.Spec : Prop :=
  ∀ n, P3629433178583969356.a n = A267520 n

end A267520

/-! ## A267520.P1947000488108535561

`A267621(A267576(n)-1+n)`
-/

namespace A267520.P1947000488108535561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267621 (A267576 n - 1 + (n : ℤ)).toNat

end

end A267520.P1947000488108535561

namespace A267520

/-- `A267621(A267576(n)-1+n)` -/
def P1947000488108535561.Spec : Prop :=
  ∀ n, P1947000488108535561.a n = A267520 n

end A267520

/-!
# A267522: a(n) = 4*(n + 1)*(n + 2)*(4*n + 3)/3.

The programs for A267522, the canonical program `A267522.P15576368490601279591` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267522 has offset 0).

The definition of A267522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)*(n+2)*(4*n+3)/3` (program `A267522.P4978602542515467783`, by `A267522.P4978602542515467783.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267522.P4978602542515467783

`4*(n+1)*(n+2)*(4*n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A267522.P4978602542515467783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) * (n + 2) * (4 * n + 3) : ℚ) / 3

end

end A267522.P4978602542515467783

namespace A267522

/-- `4*(n+1)*(n+2)*(4*n+3)/3` -/
def P4978602542515467783.Spec : Prop :=
  ∀ n, P4978602542515467783.a n = (A267522 n : ℚ)

theorem P4978602542515467783.correct : P4978602542515467783.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A267522, Nat.add_sub_cancel, A267522.P4978602542515467783.a, A267522.P15576368490601279591.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A267522, Nat.add_sub_cancel, A267522.P4978602542515467783.a, A267522.P15576368490601279591.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A267522

/-! ## A267522.P15576368490601279591

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=8, a(1)=56, a(2)=176, a(3)=400`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267522

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15576368490601279591.Spec : Prop :=
  ∀ n, P15576368490601279591.a n = A267522 n

theorem P15576368490601279591.correct : P15576368490601279591.Spec := by
  intro n
  simp only [A267522]

end A267522

/-! ## A267522.P11977529836176900175

`8*A002412(n+1)`
-/

namespace A267522.P11977529836176900175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002412 (n + 1)

end

end A267522.P11977529836176900175

namespace A267522

/-- `8*A002412(n+1)` -/
def P11977529836176900175.Spec : Prop :=
  ∀ n, P11977529836176900175.a n = A267522 n

end A267522

/-! ## A267522.P2734325584111800540

`4*A268684(n+1)`
-/

namespace A267522.P2734325584111800540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A268684 (n + 1)

end

end A267522.P2734325584111800540

namespace A267522

/-- `4*A268684(n+1)` -/
def P2734325584111800540.Spec : Prop :=
  ∀ n, P2734325584111800540.a n = A267522 n

end A267522

/-! ## A267522.P4902036893812487763

`∑[record[xor(3, n)²-1]]`
-/

namespace A267522.P4902036893812487763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 n ^ 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267522.P4902036893812487763

namespace A267522

/-- `∑[record[xor(3, n)²-1]]` -/
def P4902036893812487763.Spec : Prop :=
  ∀ n, P4902036893812487763.a n = A267522 n

end A267522

/-! ## A267522.P15606350720811294840

`∑[record[xor(1, xor(3, n)²)]]`
-/

namespace A267522.P15606350720811294840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 3 n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267522.P15606350720811294840

namespace A267522

/-- `∑[record[xor(1, xor(3, n)²)]]` -/
def P15606350720811294840.Spec : Prop :=
  ∀ n, (P15606350720811294840.a n : ℤ) = A267522 n

end A267522

/-! ## A267522.P10060095099486098350

`Δ[8*n*C(n+2, 3)]`
-/

namespace A267522.P10060095099486098350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n * Nat.choose (n + 2) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A267522.P10060095099486098350

namespace A267522

/-- `Δ[8*n*C(n+2, 3)]` -/
def P10060095099486098350.Spec : Prop :=
  ∀ n, P10060095099486098350.a n = A267522 n

end A267522

/-! ## A267522.P16569174580006876183

`2*∑[4*∑[a(n-1)+4]]` with `a(0)=1`
-/

namespace A267522.P16569174580006876183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267522.P16569174580006876183

namespace A267522

/-- `2*∑[4*∑[a(n-1)+4]]` -/
def P16569174580006876183.Spec : Prop :=
  ∀ n, (P16569174580006876183.a n : ℤ) = A267522 n

end A267522

/-! ## A267522.P5649667152359350838

`∑[A016838(n)-1]`
-/

namespace A267522.P5649667152359350838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267522.P5649667152359350838

namespace A267522

/-- `∑[A016838(n)-1]` -/
def P5649667152359350838.Spec : Prop :=
  ∀ n, P5649667152359350838.a n = A267522 n

end A267522

/-! ## A267522.P639845335379661688

`∑[A003185(n)+3]`
-/

namespace A267522.P639845335379661688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003185 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267522.P639845335379661688

namespace A267522

/-- `∑[A003185(n)+3]` -/
def P639845335379661688.Spec : Prop :=
  ∀ n, P639845335379661688.a n = A267522 n

end A267522

/-! ## A267522.P3363629102763509805

`∑[A004767(n)²-1]`
-/

namespace A267522.P3363629102763509805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267522.P3363629102763509805

namespace A267522

/-- `∑[A004767(n)²-1]` -/
def P3363629102763509805.Spec : Prop :=
  ∀ n, P3363629102763509805.a n = A267522 n

end A267522

/-! ## A267522.P14341547933745382206

`∑[∑[A305075(n+1)]]`
-/

namespace A267522.P14341547933745382206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305075 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267522.P14341547933745382206

namespace A267522

/-- `∑[∑[A305075(n+1)]]` -/
def P14341547933745382206.Spec : Prop :=
  ∀ n, P14341547933745382206.a n = A267522 n

end A267522

/-! ## A267522.P9329400427681259393

`∑[4*A002939(n+1)]`
-/

namespace A267522.P9329400427681259393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267522.P9329400427681259393

namespace A267522

/-- `∑[4*A002939(n+1)]` -/
def P9329400427681259393.Spec : Prop :=
  ∀ n, P9329400427681259393.a n = A267522 n

end A267522

/-! ## A267522.P6970562417163745582

`4*A014112(2*(n+1))`
-/

namespace A267522.P6970562417163745582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014112 (2 * (n + 1))

end

end A267522.P6970562417163745582

namespace A267522

/-- `4*A014112(2*(n+1))` -/
def P6970562417163745582.Spec : Prop :=
  ∀ n, P6970562417163745582.a n = A267522 n

end A267522

/-! ## A267522.P6427479060929408533

`A154105(n)+A063496(n+1)`
-/

namespace A267522.P6427479060929408533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154105 n + A063496 (n + 1)

end

end A267522.P6427479060929408533

namespace A267522

/-- `A154105(n)+A063496(n+1)` -/
def P6427479060929408533.Spec : Prop :=
  ∀ n, P6427479060929408533.a n = A267522 n

end A267522

/-! ## A267522.P17482844878854876008

`A212668(n+1)-A016754(n)`
-/

namespace A267522.P17482844878854876008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212668 (n + 1) - A016754 n

end

end A267522.P17482844878854876008

namespace A267522

/-- `A212668(n+1)-A016754(n)` -/
def P17482844878854876008.Spec : Prop :=
  ∀ n, P17482844878854876008.a n = A267522 n

end A267522

/-! ## A267522.P16807844355157939978

`A130809(n+3)+A005843(n)*A046092(n+1)`
-/

namespace A267522.P16807844355157939978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130809 (n + 3) + A005843 n * A046092 (n + 1)

end

end A267522.P16807844355157939978

namespace A267522

/-- `A130809(n+3)+A005843(n)*A046092(n+1)` -/
def P16807844355157939978.Spec : Prop :=
  ∀ n, P16807844355157939978.a n = A267522 n

end A267522

/-! ## A267522.P3835377959227197429

`2*Δ[2*n*∑[lcm(n, n+1)]]`
-/

namespace A267522.P3835377959227197429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A267522.P3835377959227197429

namespace A267522

/-- `2*Δ[2*n*∑[lcm(n, n+1)]]` -/
def P3835377959227197429.Spec : Prop :=
  ∀ n, P3835377959227197429.a n = A267522 n

end A267522

/-! ## A267522.P12910301624331311508

`∑[A067239(n+1)]`
-/

namespace A267522.P12910301624331311508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267522.P12910301624331311508

namespace A267522

/-- `∑[A067239(n+1)]` -/
def P12910301624331311508.Spec : Prop :=
  ∀ n, P12910301624331311508.a n = A267522 n

end A267522

/-!
# A267523: Binary representation of the n-th iteration of the "Rule 139" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267523, the canonical program `A267523.P15361989264399579282` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267523 has offset 0).

The definition of A267523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267523.P15361989264399579282

`100^n+floor(100^(n-1)/9)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267523

/-- `100^n+floor(100^(n-1)/9)` -/
def P15361989264399579282.Spec : Prop :=
  ∀ n, P15361989264399579282.a n = A267523 n

theorem P15361989264399579282.correct : P15361989264399579282.Spec := by
  intro n
  simp only [A267523]

end A267523

/-! ## A267523.P1282414905335297749

`A267524(2*n)`
-/

namespace A267523.P1282414905335297749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267524 (2 * n)

end

end A267523.P1282414905335297749

namespace A267523

/-- `A267524(2*n)` -/
def P1282414905335297749.Spec : Prop :=
  ∀ n, P1282414905335297749.a n = A267523 n

end A267523

/-! ## A267523.P14399750565231016166

`record[A267524(n)/A327767(n+1)]`
-/

namespace A267523.P14399750565231016166
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267524 n : ℚ) / (A327767 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267523.P14399750565231016166

namespace A267523

/-- `record[A267524(n)/A327767(n+1)]` -/
def P14399750565231016166.Spec : Prop :=
  ∀ n, P14399750565231016166.a n = (A267523 n : ℚ)

end A267523

/-! ## A267523.P15278460514491310720

`record[gcd(A007814(n+1), A267524(n))]`
-/

namespace A267523.P15278460514491310720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A267524 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267523.P15278460514491310720

namespace A267523

/-- `record[gcd(A007814(n+1), A267524(n))]` -/
def P15278460514491310720.Spec : Prop :=
  ∀ n, (P15278460514491310720.a n : ℤ) = A267523 n

end A267523

/-! ## A267523.P7870556870285810378

`or(A043545(n), A267524(A005843(n)))`
-/

namespace A267523.P7870556870285810378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043545 n) (A267524 (A005843 n).toNat)

end

end A267523.P7870556870285810378

namespace A267523

/-- `or(A043545(n), A267524(A005843(n)))` -/
def P7870556870285810378.Spec : Prop :=
  ∀ n, P7870556870285810378.a n = A267523 n

end A267523

/-! ## A267523.P1039164876745690380

`or(A023604(n+1), A267524(A005843(n)))`
-/

namespace A267523.P1039164876745690380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023604 (n + 1)) (A267524 (A005843 n).toNat)

end

end A267523.P1039164876745690380

namespace A267523

/-- `or(A023604(n+1), A267524(A005843(n)))` -/
def P1039164876745690380.Spec : Prop :=
  ∀ n, P1039164876745690380.a n = A267523 n

end A267523

/-!
# A267524: Binary representation of the middle column of the "Rule 139" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267524, the canonical program `A267524.P17716842328789921782` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267524 has offset 0).

The definition of A267524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267524.P3560943297855823009

`∑[ogf((1-x+x^3)/(1-10x))]`
-/

namespace A267524.P3560943297855823009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 1] [1, -10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267524.P3560943297855823009

namespace A267524

/-- `∑[ogf((1-x+x^3)/(1-10x))]` -/
def P3560943297855823009.Spec : Prop :=
  ∀ n, P3560943297855823009.a n = A267524 n

end A267524

/-! ## A267524.P7513922657178154596

`10*a(n-1)+1-char[2]` with `a(0)=1, a(1)=10`
-/

namespace A267524.P7513922657178154596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  10 * a (n - 1) + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267524.P7513922657178154596

namespace A267524

/-- `10*a(n-1)+1-char[2]` -/
def P7513922657178154596.Spec : Prop :=
  ∀ n, P7513922657178154596.a n = A267524 n

end A267524

/-! ## A267524.P9695895558215067354

`floor(atan(n-1))+10*a(n-1)` with `a(0)=1`
-/

namespace A267524.P9695895558215067354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.arctan ((n : ℤ) - 1 : ℝ)⌋ + 10 * a (n - 1)

end

end A267524.P9695895558215067354

namespace A267524

/-- `floor(atan(n-1))+10*a(n-1)` -/
def P9695895558215067354.Spec : Prop :=
  ∀ n, P9695895558215067354.a n = A267524 n

end A267524

/-! ## A267524.P17716842328789921782

`10*a(n-1)+A326178(n)-n` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A267524

/-- `10*a(n-1)+A326178(n)-n` -/
def P17716842328789921782.Spec : Prop :=
  ∀ n, P17716842328789921782.a n = A267524 n

theorem P17716842328789921782.correct : P17716842328789921782.Spec := by
  intro n
  simp only [A267524]

end A267524

/-! ## A267524.P10573293557030058772

`or(10*a(n-1), A005171(n*5^and(1, n)))` with `a(0)=1`
-/

namespace A267524.P10573293557030058772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A005171 (n * 5 ^ Nat.land 1 n))

end

end A267524.P10573293557030058772

namespace A267524

/-- `or(10*a(n-1), A005171(n*5^and(1, n)))` -/
def P10573293557030058772.Spec : Prop :=
  ∀ n, P10573293557030058772.a n = A267524 n

end A267524

/-! ## A267524.P12331151724851222300

`A047855(floor(n-atan(n)))+A002283(n)`
-/

namespace A267524.P12331151724851222300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat + A002283 n

end

end A267524.P12331151724851222300

namespace A267524

/-- `A047855(floor(n-atan(n)))+A002283(n)` -/
def P12331151724851222300.Spec : Prop :=
  ∀ n, P12331151724851222300.a n = A267524 n

end A267524

/-! ## A267524.P1184467344065451753

`or(10*a(n-1), A145201(A057944(n)))` with `a(0)=1`
-/

namespace A267524.P1184467344065451753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A145201 (A057944 n).toNat)

end

end A267524.P1184467344065451753

namespace A267524

/-- `or(10*a(n-1), A145201(A057944(n)))` -/
def P1184467344065451753.Spec : Prop :=
  ∀ n, P1184467344065451753.a n = A267524 n

end A267524

/-! ## A267524.P9993742448164989243

`A011557(n)+A002275(A289207(n))`
-/

namespace A267524.P9993742448164989243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + A002275 (A289207 n).toNat

end

end A267524.P9993742448164989243

namespace A267524

/-- `A011557(n)+A002275(A289207(n))` -/
def P9993742448164989243.Spec : Prop :=
  ∀ n, P9993742448164989243.a n = A267524 n

end A267524

/-! ## A267524.P14275757809741475401

`A047855(A289207(n))+A002283(n)`
-/

namespace A267524.P14275757809741475401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 (A289207 n).toNat + A002283 n

end

end A267524.P14275757809741475401

namespace A267524

/-- `A047855(A289207(n))+A002283(n)` -/
def P14275757809741475401.Spec : Prop :=
  ∀ n, P14275757809741475401.a n = A267524 n

end A267524

/-! ## A267524.P16334935555076995118

`A002275(A289207(n))+Δ[A002275(n)]`
-/

namespace A267524.P16334935555076995118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A289207 n).toNat + (f1 (n + 1) - f1 n)

end

end A267524.P16334935555076995118

namespace A267524

/-- `A002275(A289207(n))+Δ[A002275(n)]` -/
def P16334935555076995118.Spec : Prop :=
  ∀ n, P16334935555076995118.a n = A267524 n

end A267524

/-!
# A267525: Triangle read by rows giving successive states of cellular automaton generated by "Rule 141" initiated with a single ON (black) cell.

The programs for A267525, the canonical program `A267525.P14697647178311935944` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267525 has offset 0).

The definition of A267525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267525.P14697647178311935944

`A267676(A020703(n+1)-1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A267525

/-- `A267676(A020703(n+1)-1)` -/
def P14697647178311935944.Spec : Prop :=
  ∀ n, P14697647178311935944.a n = A267525 n

theorem P14697647178311935944.correct : P14697647178311935944.Spec := by
  intro n
  simp only [A267525]

end A267525

/-! ## A267525.P795529484832012033

`A267676(A020703(n+2)%A076921(n+2))`
-/

namespace A267525.P795529484832012033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267676 (Int.tmod (A020703 (n + 2)) (A076921 (n + 2))).toNat

end

end A267525.P795529484832012033

namespace A267525

/-- `A267676(A020703(n+2)%A076921(n+2))` -/
def P795529484832012033.Spec : Prop :=
  ∀ n, P795529484832012033.a n = A267525 n

end A267525

/-! ## A267525.P4200157935109382037

`A004530(and(A174857(n+2), A217933(n+1)))`
-/

namespace A267525.P4200157935109382037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (Int.land (A174857 (n + 2)) (A217933 (n + 1))).toNat

end

end A267525.P4200157935109382037

namespace A267525

/-- `A004530(and(A174857(n+2), A217933(n+1)))` -/
def P4200157935109382037.Spec : Prop :=
  ∀ n, P4200157935109382037.a n = A267525 n

end A267525

/-! ## A267525.P2719743032198215455

`A266070(and(A174857(n+2), A217933(n+1)))`
-/

namespace A267525.P2719743032198215455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 (Int.land (A174857 (n + 2)) (A217933 (n + 1))).toNat

end

end A267525.P2719743032198215455

namespace A267525

/-- `A266070(and(A174857(n+2), A217933(n+1)))` -/
def P2719743032198215455.Spec : Prop :=
  ∀ n, P2719743032198215455.a n = A267525 n

end A267525

/-! ## A267525.P5768481584431090872

`A266220(and(A174857(n+2), A217933(n+1)))`
-/

namespace A267525.P5768481584431090872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (Int.land (A174857 (n + 2)) (A217933 (n + 1))).toNat

end

end A267525.P5768481584431090872

namespace A267525

/-- `A266220(and(A174857(n+2), A217933(n+1)))` -/
def P5768481584431090872.Spec : Prop :=
  ∀ n, P5768481584431090872.a n = A267525 n

end A267525

/-!
# A267526: Binary representation of the n-th iteration of the "Rule 141" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267526, there is no canonical definition to state claims against.
-/

/-! ## A267526.P9923659046125184173

`A007088(A267527(n))`
-/

namespace A267526.P9923659046125184173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267527 n).toNat

end

end A267526.P9923659046125184173

/-! ## A267526.P583604334911628326

`A007088(or(A267457(n), A283507(n)))`
-/

namespace A267526.P583604334911628326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A267457 n) (A283507 n)).toNat

end

end A267526.P583604334911628326

/-! ## A267526.P5457493289449843704

`A007088(or(A003945(n)-1, A267457(n)))`
-/

namespace A267526.P5457493289449843704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A003945 n - 1) (A267457 n)).toNat

end

end A267526.P5457493289449843704

/-! ## A267526.P8790710472062187882

`A007088(or(A011782(n)-1, A267457(n)))`
-/

namespace A267526.P8790710472062187882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A011782 n - 1) (A267457 n)).toNat

end

end A267526.P8790710472062187882

/-! ## A267526.P4429852354430931906

`A007088(or(A267457(n), A280995(floor(2^n/3))))`
-/

namespace A267526.P4429852354430931906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A267457 n) (A280995 ⌊(2 ^ n : ℚ) / 3⌋.toNat)).toNat

end

end A267526.P4429852354430931906

/-!
# A267527: Decimal representation of the n-th iteration of the "Rule 141" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267527, the canonical program `A267527.P7260102700822482830` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267527 has offset 0).

The definition of A267527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267527.P7260102700822482830

`3*a(n-1)+14*a(n-2)-48*a(n-3)+32*a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=11, a(4)=87, a(5)=175`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267527

/-- `3*a(n-1)+14*a(n-2)-48*a(n-3)+32*a(n-4)` -/
def P7260102700822482830.Spec : Prop :=
  ∀ n, P7260102700822482830.a n = A267527 n

theorem P7260102700822482830.correct : P7260102700822482830.Spec := by
  intro n
  simp only [A267527]

end A267527

/-! ## A267527.P854572368907863753

`or(A267457(n), A283507(n))`
-/

namespace A267527.P854572368907863753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267457 n) (A283507 n)

end

end A267527.P854572368907863753

namespace A267527

/-- `or(A267457(n), A283507(n))` -/
def P854572368907863753.Spec : Prop :=
  ∀ n, P854572368907863753.a n = A267527 n

end A267527

/-! ## A267527.P12975597005396518001

`or(A003945(n)-1, A267457(n))`
-/

namespace A267527.P12975597005396518001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003945 n - 1) (A267457 n)

end

end A267527.P12975597005396518001

namespace A267527

/-- `or(A003945(n)-1, A267457(n))` -/
def P12975597005396518001.Spec : Prop :=
  ∀ n, P12975597005396518001.a n = A267527 n

end A267527

/-! ## A267527.P16404166337337874840

`or(A011782(n)-1, A267457(n))`
-/

namespace A267527.P16404166337337874840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 n - 1) (A267457 n)

end

end A267527.P16404166337337874840

namespace A267527

/-- `or(A011782(n)-1, A267457(n))` -/
def P16404166337337874840.Spec : Prop :=
  ∀ n, P16404166337337874840.a n = A267527 n

end A267527

/-! ## A267527.P17962056169565961916

`or(A089633(A000124(n)), A267457(n))`
-/

namespace A267527.P17962056169565961916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089633 (A000124 n).toNat) (A267457 n)

end

end A267527.P17962056169565961916

namespace A267527

/-- `or(A089633(A000124(n)), A267457(n))` -/
def P17962056169565961916.Spec : Prop :=
  ∀ n, P17962056169565961916.a n = A267527 n

end A267527

/-!
# A267528: Number of ON (black) cells in the n-th iteration of the "Rule 141" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267528, the canonical program `A267528.P12118995986852470837` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267528 has offset 0).

The definition of A267528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267528.P293062340561486496

`∑[∑[(char[3]-1)^n]]`
-/

namespace A267528.P293062340561486496
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) - 1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267528.P293062340561486496

namespace A267528

/-- `∑[∑[(char[3]-1)^n]]` -/
def P293062340561486496.Spec : Prop :=
  ∀ n, P293062340561486496.a n = A267528 n

end A267528

/-! ## A267528.P12118995986852470837

`3+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267528

/-- `3+a(n-2)` -/
def P12118995986852470837.Spec : Prop :=
  ∀ n, (P12118995986852470837.a n : ℤ) = A267528 n

theorem P12118995986852470837.correct : P12118995986852470837.Spec := by
  intro n
  simp only [A267528]

end A267528

/-! ## A267528.P616274539092009267

`n-ceil(-(a(n-1)/3))` with `a(0)=1`
-/

namespace A267528.P616274539092009267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌈-((a (n - 1) : ℚ) / 3)⌉

end

end A267528.P616274539092009267

namespace A267528

/-- `n-ceil(-(a(n-1)/3))` -/
def P616274539092009267.Spec : Prop :=
  ∀ n, P616274539092009267.a n = A267528 n

end A267528

/-! ## A267528.P11606212409533736541

`ogf((1+x^3+x^4)/(1-x-x^2+x^3))`
-/

namespace A267528.P11606212409533736541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 1, 1] [1, -1, -1, 1] n

end

end A267528.P11606212409533736541

namespace A267528

/-- `ogf((1+x^3+x^4)/(1-x-x^2+x^3))` -/
def P11606212409533736541.Spec : Prop :=
  ∀ n, P11606212409533736541.a n = A267528 n

end A267528

/-! ## A267528.P9245198510679816981

`abs(∑[2/a(n-1)])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A267528.P9245198510679816981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A267528.P9245198510679816981

namespace A267528

/-- `abs(∑[2/a(n-1)])` -/
def P9245198510679816981.Spec : Prop :=
  ∀ n, P9245198510679816981.a n = (A267528 n : ℚ)

end A267528

/-! ## A267528.P1137418820354344295

`n-floor((2-a(n-1))/3)` with `a(0)=1`
-/

namespace A267528.P1137418820354344295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌊(2 - a (n - 1) : ℚ) / 3⌋

end

end A267528.P1137418820354344295

namespace A267528

/-- `n-floor((2-a(n-1))/3)` -/
def P1137418820354344295.Spec : Prop :=
  ∀ n, P1137418820354344295.a n = A267528 n

end A267528

/-! ## A267528.P16164194990408339033

`floor(gcd(2-n, n-2)/2+n)`
-/

namespace A267528.P16164194990408339033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (2 - (n : ℤ)) ((n : ℤ) - 2) : ℚ) / 2 + (n : ℚ)⌋

end

end A267528.P16164194990408339033

namespace A267528

/-- `floor(gcd(2-n, n-2)/2+n)` -/
def P16164194990408339033.Spec : Prop :=
  ∀ n, P16164194990408339033.a n = A267528 n

end A267528

/-! ## A267528.P6037969801863308006

`round(sqrt(a(n-1)*comp[3*n]))` with `a(0)=1`
-/

namespace A267528.P6037969801863308006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (a (n - 1) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) : ℝ))

end

end A267528.P6037969801863308006

namespace A267528

/-- `round(sqrt(a(n-1)*comp[3*n]))` -/
def P6037969801863308006.Spec : Prop :=
  ∀ n, P6037969801863308006.a n = A267528 n

end A267528

/-! ## A267528.P15010211490662065849

`3*n-a(n-1)-4` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A267528.P15010211490662065849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (3 * n : ℤ) - a (n - 1) - 4

end

end A267528.P15010211490662065849

namespace A267528

/-- `3*n-a(n-1)-4` -/
def P15010211490662065849.Spec : Prop :=
  ∀ n, P15010211490662065849.a n = A267528 n

end A267528

/-! ## A267528.P14253370350512504638

`2-(n%2-a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A267528.P14253370350512504638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 - (((n % 2 : ℕ) : ℤ) - a (n - 1))

end

end A267528.P14253370350512504638

namespace A267528

/-- `2-(n%2-a(n-1))` -/
def P14253370350512504638.Spec : Prop :=
  ∀ n, P14253370350512504638.a n = A267528 n

end A267528

/-! ## A267528.P17254129171791167195

`∑[abs(A107393(n))]+1`
-/

namespace A267528.P17254129171791167195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107393 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267528.P17254129171791167195

namespace A267528

/-- `∑[abs(A107393(n))]+1` -/
def P17254129171791167195.Spec : Prop :=
  ∀ n, P17254129171791167195.a n = A267528 n

end A267528

/-! ## A267528.P11895955242370254591

`Δ[n²]-A267530(n)`
-/

namespace A267528.P11895955242370254591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267530 n

end

end A267528.P11895955242370254591

namespace A267528

/-- `Δ[n²]-A267530(n)` -/
def P11895955242370254591.Spec : Prop :=
  ∀ n, P11895955242370254591.a n = A267528 n

end A267528

/-! ## A267528.P8086211009945948247

`floor(A038179(n+1)/2)`
-/

namespace A267528.P8086211009945948247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038179 (n + 1) : ℚ) / 2⌋

end

end A267528.P8086211009945948247

namespace A267528

/-- `floor(A038179(n+1)/2)` -/
def P8086211009945948247.Spec : Prop :=
  ∀ n, P8086211009945948247.a n = A267528 n

end A267528

/-! ## A267528.P10216227577759984139

`floor(acot(n)/acot(A000326(n)))`
-/

namespace A267528.P10216227577759984139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) / SequenceMachineLib.acot (A000326 n : ℝ)⌋

end

end A267528.P10216227577759984139

namespace A267528

/-- `floor(acot(n)/acot(A000326(n)))` -/
def P10216227577759984139.Spec : Prop :=
  ∀ n, P10216227577759984139.a n = A267528 n

end A267528

/-! ## A267528.P16312832674017946715

`abs(char[1]+1-A032766(n))`
-/

namespace A267528.P16312832674017946715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) - A032766 n|

end

end A267528.P16312832674017946715

namespace A267528

/-- `abs(char[1]+1-A032766(n))` -/
def P16312832674017946715.Spec : Prop :=
  ∀ n, P16312832674017946715.a n = A267528 n

end A267528

/-! ## A267528.P9745693137573965532

`floor(A004280(n+1)-n/2)`
-/

namespace A267528.P9745693137573965532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004280 (n + 1) : ℚ) - (n : ℚ) / 2⌋

end

end A267528.P9745693137573965532

namespace A267528

/-- `floor(A004280(n+1)-n/2)` -/
def P9745693137573965532.Spec : Prop :=
  ∀ n, P9745693137573965532.a n = A267528 n

end A267528

/-! ## A267528.P1930083623562456307

`A289207(n)+A008619(n)`
-/

namespace A267528.P1930083623562456307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + A008619 n

end

end A267528.P1930083623562456307

namespace A267528

/-- `A289207(n)+A008619(n)` -/
def P1930083623562456307.Spec : Prop :=
  ∀ n, P1930083623562456307.a n = A267528 n

end A267528

/-! ## A267528.P9776726682013478881

`floor(A056105(n)/A004277(n))`
-/

namespace A267528.P9776726682013478881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056105 n : ℚ) / (A004277 n : ℚ)⌋

end

end A267528.P9776726682013478881

namespace A267528

/-- `floor(A056105(n)/A004277(n))` -/
def P9776726682013478881.Spec : Prop :=
  ∀ n, P9776726682013478881.a n = A267528 n

end A267528

/-! ## A267528.P15333744781022498719

`A004526(n)+A289207(n)+1`
-/

namespace A267528.P15333744781022498719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A289207 n + 1)

end

end A267528.P15333744781022498719

namespace A267528

/-- `A004526(n)+A289207(n)+1` -/
def P15333744781022498719.Spec : Prop :=
  ∀ n, P15333744781022498719.a n = A267528 n

end A267528

/-! ## A267528.P13857871016396341702

`A004280(n+1)-A110654(n)`
-/

namespace A267528.P13857871016396341702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) - A110654 n

end

end A267528.P13857871016396341702

namespace A267528

/-- `A004280(n+1)-A110654(n)` -/
def P13857871016396341702.Spec : Prop :=
  ∀ n, P13857871016396341702.a n = A267528 n

end A267528

/-!
# A267529: Total number of ON (black) cells after n iterations of the "Rule 141" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267529, the canonical program `A267529.P638459973251321294` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267529 has offset 0).

The definition of A267529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267529.P7372206225529612393

`∑[comp[3*n+4]]+1`
-/

namespace A267529.P7372206225529612393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267529.P7372206225529612393

namespace A267529

/-- `∑[comp[3*n+4]]+1` -/
def P7372206225529612393.Spec : Prop :=
  ∀ n, (P7372206225529612393.a n : ℤ) = A267529 n

end A267529

/-! ## A267529.P638459973251321294

`∑[a(n-2)+3]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267529

/-- `∑[a(n-2)+3]` -/
def P638459973251321294.Spec : Prop :=
  ∀ n, (P638459973251321294.a n : ℤ) = A267529 n

theorem P638459973251321294.correct : P638459973251321294.Spec := by
  intro n
  simp only [A267529]

end A267529

/-! ## A267529.P2590178342791918005

`∑[∑[3-a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A267529.P2590178342791918005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267529.P2590178342791918005

namespace A267529

/-- `∑[∑[3-a(n-1)]]` -/
def P2590178342791918005.Spec : Prop :=
  ∀ n, P2590178342791918005.a n = A267529 n

end A267529

/-! ## A267529.P4944375516970348929

`floor(n-1+a(n-1)+n/2)` with `a(0)=1, a(1)=2`
-/

namespace A267529.P4944375516970348929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊((n : ℤ) - 1 : ℚ) + ((a (n - 1) : ℚ) + (n : ℚ) / 2)⌋

end

end A267529.P4944375516970348929

namespace A267529

/-- `floor(n-1+a(n-1)+n/2)` -/
def P4944375516970348929.Spec : Prop :=
  ∀ n, P4944375516970348929.a n = A267529 n

end A267529

/-! ## A267529.P15095396691163935045

`floor(n-(1-a(n-1)-n/2))` with `a(0)=1, a(1)=2`
-/

namespace A267529.P15095396691163935045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(n : ℚ) - ((1 - a (n - 1) : ℚ) - (n : ℚ) / 2)⌋

end

end A267529.P15095396691163935045

namespace A267529

/-- `floor(n-(1-a(n-1)-n/2))` -/
def P15095396691163935045.Spec : Prop :=
  ∀ n, P15095396691163935045.a n = A267529 n

end A267529

/-! ## A267529.P4112184088135719009

`∑[A267528(n)]`
-/

namespace A267529.P4112184088135719009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267529.P4112184088135719009

namespace A267529

/-- `∑[A267528(n)]` -/
def P4112184088135719009.Spec : Prop :=
  ∀ n, P4112184088135719009.a n = A267529 n

theorem P4112184088135719009.correct : P4112184088135719009.Spec := by
  intro n
  simp only [A267529, Nat.add_sub_cancel, A267529.P4112184088135719009.f1, A267529.P4112184088135719009.a, A267529.P638459973251321294.f1, A267529.P638459973251321294.a, A267528, A267528.P12118995986852470837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267529

/-! ## A267529.P3849185807846190769

`∑[∑[abs(A107393(n))]+1]`
-/

namespace A267529.P3849185807846190769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107393 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267529.P3849185807846190769

namespace A267529

/-- `∑[∑[abs(A107393(n))]+1]` -/
def P3849185807846190769.Spec : Prop :=
  ∀ n, P3849185807846190769.a n = A267529 n

end A267529

/-! ## A267529.P14899509602518505471

`(∑[A038179(n+1)]-n)/2`
-/

namespace A267529.P14899509602518505471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 2

end

end A267529.P14899509602518505471

namespace A267529

/-- `(∑[A038179(n+1)]-n)/2` -/
def P14899509602518505471.Spec : Prop :=
  ∀ n, P14899509602518505471.a n = (A267529 n : ℚ)

end A267529

/-! ## A267529.P17592113935432292834

`floor(A089071(n+1)+∑[and(n, -2)/2])`
-/

namespace A267529.P17592113935432292834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089071 (n + 1) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A267529.P17592113935432292834

namespace A267529

/-- `floor(A089071(n+1)+∑[and(n, -2)/2])` -/
def P17592113935432292834.Spec : Prop :=
  ∀ n, P17592113935432292834.a n = A267529 n

end A267529

/-! ## A267529.P16571381164803850262

`∑[A289207(n)+A008619(n)]`
-/

namespace A267529.P16571381164803850262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267529.P16571381164803850262

namespace A267529

/-- `∑[A289207(n)+A008619(n)]` -/
def P16571381164803850262.Spec : Prop :=
  ∀ n, P16571381164803850262.a n = A267529 n

end A267529

/-! ## A267529.P9940024323809712385

`∑[floor(A056105(n)/A004277(n))]`
-/

namespace A267529.P9940024323809712385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056105 n : ℚ) / (A004277 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267529.P9940024323809712385

namespace A267529

/-- `∑[floor(A056105(n)/A004277(n))]` -/
def P9940024323809712385.Spec : Prop :=
  ∀ n, P9940024323809712385.a n = A267529 n

end A267529

/-! ## A267529.P1011279930011254645

`∑[A004526(n)+A289207(n)+1]`
-/

namespace A267529.P1011279930011254645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A289207 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267529.P1011279930011254645

namespace A267529

/-- `∑[A004526(n)+A289207(n)+1]` -/
def P1011279930011254645.Spec : Prop :=
  ∀ n, P1011279930011254645.a n = A267529 n

end A267529

/-! ## A267529.P13777089584281450457

`∑[A004275(n)+1-A110654(n)]`
-/

namespace A267529.P13777089584281450457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + (1 - A110654 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267529.P13777089584281450457

namespace A267529

/-- `∑[A004275(n)+1-A110654(n)]` -/
def P13777089584281450457.Spec : Prop :=
  ∀ n, P13777089584281450457.a n = A267529 n

end A267529

/-! ## A267529.P10146540747487036255

`∑[A004275(n)+2-A080513(n)]`
-/

namespace A267529.P10146540747487036255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + (2 - A080513 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267529.P10146540747487036255

namespace A267529

/-- `∑[A004275(n)+2-A080513(n)]` -/
def P10146540747487036255.Spec : Prop :=
  ∀ n, P10146540747487036255.a n = A267529 n

end A267529

/-! ## A267529.P490349888794620001

`A203292(n+1)%A201347(n+1)`
-/

namespace A267529.P490349888794620001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203292 (n + 1)) (A201347 (n + 1))

end

end A267529.P490349888794620001

namespace A267529

/-- `A203292(n+1)%A201347(n+1)` -/
def P490349888794620001.Spec : Prop :=
  ∀ n, P490349888794620001.a n = A267529 n

end A267529

/-! ## A267529.P13791600032398671243

`floor(A089071(n+1)+sqrt(A030179(n)))`
-/

namespace A267529.P13791600032398671243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089071 (n + 1) : ℝ) + Real.sqrt (A030179 n : ℝ)⌋

end

end A267529.P13791600032398671243

namespace A267529

/-- `floor(A089071(n+1)+sqrt(A030179(n)))` -/
def P13791600032398671243.Spec : Prop :=
  ∀ n, P13791600032398671243.a n = A267529 n

end A267529

/-! ## A267529.P16010142309305494574

`∑[A140106(A028310(n))+A028310(n)]`
-/

namespace A267529.P16010142309305494574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A028310 n).toNat + A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267529.P16010142309305494574

namespace A267529

/-- `∑[A140106(A028310(n))+A028310(n)]` -/
def P16010142309305494574.Spec : Prop :=
  ∀ n, P16010142309305494574.a n = A267529 n

end A267529

/-! ## A267529.P2153086843788865485

`∑[A004274(n+1)-A110654(n)]`
-/

namespace A267529.P2153086843788865485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (n + 1) - A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267529.P2153086843788865485

namespace A267529

/-- `∑[A004274(n+1)-A110654(n)]` -/
def P2153086843788865485.Spec : Prop :=
  ∀ n, P2153086843788865485.a n = A267529 n

end A267529

/-! ## A267529.P9914866000188050835

`∑[A002265(abs(2*(2-n)))+n]`
-/

namespace A267529.P9914866000188050835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 |2 * (2 - (n : ℤ))|.toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267529.P9914866000188050835

namespace A267529

/-- `∑[A002265(abs(2*(2-n)))+n]` -/
def P9914866000188050835.Spec : Prop :=
  ∀ n, P9914866000188050835.a n = A267529 n

end A267529

/-!
# A267530: Number of OFF (white) cells in the n-th iteration of the "Rule 141" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267530, the canonical program `A267530.P3763555436901385216` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267530 has offset 0).

The definition of A267530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267530.P2737816203323860488

`ceil(n/2)+ceil(atan(n))`
-/

namespace A267530.P2737816203323860488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + ⌈Real.arctan (n : ℝ)⌉

end

end A267530.P2737816203323860488

namespace A267530

/-- `ceil(n/2)+ceil(atan(n))` -/
def P2737816203323860488.Spec : Prop :=
  ∀ n, P2737816203323860488.a n = A267530 n

end A267530

/-! ## A267530.P3763555436901385216

`a(n-2)+1` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267530

/-- `a(n-2)+1` -/
def P3763555436901385216.Spec : Prop :=
  ∀ n, (P3763555436901385216.a n : ℤ) = A267530 n

theorem P3763555436901385216.correct : P3763555436901385216.Spec := by
  intro n
  simp only [A267530]

end A267530

/-! ## A267530.P3522435029637963803

`∑[a(gcd(2, n))-1]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A267530.P3522435029637963803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  f1 (Nat.gcd 2 n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267530.P3522435029637963803

namespace A267530

/-- `∑[a(gcd(2, n))-1]` -/
def P3522435029637963803.Spec : Prop :=
  ∀ n, P3522435029637963803.a n = A267530 n

end A267530

/-! ## A267530.P8562886421039864833

`∑[a(n%2)/2]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A267530.P8562886421039864833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  f1 (n % 2) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267530.P8562886421039864833

namespace A267530

/-- `∑[a(n%2)/2]` -/
def P8562886421039864833.Spec : Prop :=
  ∀ n, P8562886421039864833.a n = (A267530 n : ℚ)

end A267530

/-! ## A267530.P14531382472962823259

`∑[1-a(n-1)]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A267530.P14531382472962823259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267530.P14531382472962823259

namespace A267530

/-- `∑[1-a(n-1)]` -/
def P14531382472962823259.Spec : Prop :=
  ∀ n, P14531382472962823259.a n = A267530 n

end A267530

/-! ## A267530.P12713010758257832702

`4-(a(n-1)-n)` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A267530.P12713010758257832702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  4 - (a (n - 1) - (n : ℤ))

end

end A267530.P12713010758257832702

namespace A267530

/-- `4-(a(n-1)-n)` -/
def P12713010758257832702.Spec : Prop :=
  ∀ n, P12713010758257832702.a n = A267530 n

end A267530

/-! ## A267530.P1624352826297996992

`∑[a(2*and(1, n))²]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A267530.P1624352826297996992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  f1 (2 * Nat.land 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267530.P1624352826297996992

namespace A267530

/-- `∑[a(2*and(1, n))²]` -/
def P1624352826297996992.Spec : Prop :=
  ∀ n, (P1624352826297996992.a n : ℤ) = A267530 n

end A267530

/-! ## A267530.P14647984994944734833

`n+1-floor(abs((n-2)/2))`
-/

namespace A267530.P14647984994944734833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊|((n : ℤ) - 2 : ℚ) / 2|⌋

end

end A267530.P14647984994944734833

namespace A267530

/-- `n+1-floor(abs((n-2)/2))` -/
def P14647984994944734833.Spec : Prop :=
  ∀ n, P14647984994944734833.a n = A267530 n

end A267530

/-! ## A267530.P17946624251997053909

`ogf((2x+x^2-x^3-x^4)/(1-x-x^2+x^3))`
-/

namespace A267530.P17946624251997053909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, -1, -1] [1, -1, -1, 1] n

end

end A267530.P17946624251997053909

namespace A267530

/-- `ogf((2x+x^2-x^3-x^4)/(1-x-x^2+x^3))` -/
def P17946624251997053909.Spec : Prop :=
  ∀ n, P17946624251997053909.a n = A267530 n

end A267530

/-! ## A267530.P5238039837625043004

`∑[floor((n+1)/(lcm(2, 1-n)+1))]`
-/

namespace A267530.P5238039837625043004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (Int.lcm 2 (1 - (n : ℤ)) + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267530.P5238039837625043004

namespace A267530

/-- `∑[floor((n+1)/(lcm(2, 1-n)+1))]` -/
def P5238039837625043004.Spec : Prop :=
  ∀ n, P5238039837625043004.a n = A267530 n

end A267530

/-! ## A267530.P10673348729883517910

`round(∑[n+3]/(n+2))%(n+2)`
-/

namespace A267530.P10673348729883517910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ))) (n + 2 : ℤ)

end

end A267530.P10673348729883517910

namespace A267530

/-- `round(∑[n+3]/(n+2))%(n+2)` -/
def P10673348729883517910.Spec : Prop :=
  ∀ n, P10673348729883517910.a n = A267530 n

end A267530

/-! ## A267530.P13523654476495844513

`ceil(A130130(n)+n/2)`
-/

namespace A267530.P13523654476495844513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130130 n : ℚ) + (n : ℚ) / 2⌉

end

end A267530.P13523654476495844513

namespace A267530

/-- `ceil(A130130(n)+n/2)` -/
def P13523654476495844513.Spec : Prop :=
  ∀ n, P13523654476495844513.a n = A267530 n

end A267530

/-! ## A267530.P6663950117100706868

`A179820(n)*A282738(n)`
-/

namespace A267530.P6663950117100706868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179820 n * A282738 n

end

end A267530.P6663950117100706868

namespace A267530

/-- `A179820(n)*A282738(n)` -/
def P6663950117100706868.Spec : Prop :=
  ∀ n, P6663950117100706868.a n = A267530 n

end A267530

/-! ## A267530.P9992708050572731088

`A267460(A265283(n)-1)/2`
-/

namespace A267530.P9992708050572731088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267460 (A265283 n - 1).toNat : ℚ) / 2

end

end A267530.P9992708050572731088

namespace A267530

/-- `A267460(A265283(n)-1)/2` -/
def P9992708050572731088.Spec : Prop :=
  ∀ n, P9992708050572731088.a n = (A267530 n : ℚ)

end A267530

/-! ## A267530.P7526302858768167643

`A266286(A266259(n+1)%A266257(n))`
-/

namespace A267530.P7526302858768167643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266286 (Int.tmod (A266259 (n + 1)) (A266257 n)).toNat

end

end A267530.P7526302858768167643

namespace A267530

/-- `A266286(A266259(n+1)%A266257(n))` -/
def P7526302858768167643.Spec : Prop :=
  ∀ n, P7526302858768167643.a n = A267530 n

end A267530

/-! ## A267530.P7510551803083058476

`Δ[A002620(n)+Δ[A289207(n)²]]`
-/

namespace A267530.P7510551803083058476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267530.P7510551803083058476

namespace A267530

/-- `Δ[A002620(n)+Δ[A289207(n)²]]` -/
def P7510551803083058476.Spec : Prop :=
  ∀ n, P7510551803083058476.a n = A267530 n

end A267530

/-! ## A267530.P12682192129467321356

`A267460(A267460(n))/2`
-/

namespace A267530.P12682192129467321356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267460 (A267460 n).toNat : ℚ) / 2

end

end A267530.P12682192129467321356

namespace A267530

/-- `A267460(A267460(n))/2` -/
def P12682192129467321356.Spec : Prop :=
  ∀ n, P12682192129467321356.a n = (A267530 n : ℚ)

end A267530

/-! ## A267530.P14785161662548537527

`A110654(2*A130130(n)+n)`
-/

namespace A267530.P14785161662548537527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * A130130 n + (n : ℤ)).toNat

end

end A267530.P14785161662548537527

namespace A267530

/-- `A110654(2*A130130(n)+n)` -/
def P14785161662548537527.Spec : Prop :=
  ∀ n, P14785161662548537527.a n = A267530 n

end A267530

/-! ## A267530.P10803614133867055249

`A004526(A265283(A267460(n)))`
-/

namespace A267530.P10803614133867055249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A265283 (A267460 n).toNat).toNat

end

end A267530.P10803614133867055249

namespace A267530

/-- `A004526(A265283(A267460(n)))` -/
def P10803614133867055249.Spec : Prop :=
  ∀ n, P10803614133867055249.a n = A267530 n

end A267530

/-! ## A267530.P9011404598024352891

`A008612(A075683(n+1))`
-/

namespace A267530.P9011404598024352891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A075683 (n + 1)).toNat

end

end A267530.P9011404598024352891

namespace A267530

/-- `A008612(A075683(n+1))` -/
def P9011404598024352891.Spec : Prop :=
  ∀ n, P9011404598024352891.a n = A267530 n

end A267530

/-!
# A267531: Total number of OFF (white) cells after n iterations of the "Rule 141" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267531, the canonical program `A267531.P15992839913543410894` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267531 has offset 0).

The definition of A267531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267531.P5624471319371516580

`∑[ceil(n/2)+ceil(atan(n))]`
-/

namespace A267531.P5624471319371516580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + ⌈Real.arctan (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267531.P5624471319371516580

namespace A267531

/-- `∑[ceil(n/2)+ceil(atan(n))]` -/
def P5624471319371516580.Spec : Prop :=
  ∀ n, P5624471319371516580.a n = A267531 n

end A267531

/-! ## A267531.P15992839913543410894

`∑[a(n-2)+1]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267531

/-- `∑[a(n-2)+1]` -/
def P15992839913543410894.Spec : Prop :=
  ∀ n, (P15992839913543410894.a n : ℤ) = A267531 n

theorem P15992839913543410894.correct : P15992839913543410894.Spec := by
  intro n
  simp only [A267531]

end A267531

/-! ## A267531.P16314455032896452404

`a(n-2)+4+n` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A267531.P16314455032896452404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5] fun n a =>
  a (n - 2) + 4 + n

end

end A267531.P16314455032896452404

namespace A267531

/-- `a(n-2)+4+n` -/
def P16314455032896452404.Spec : Prop :=
  ∀ n, (P16314455032896452404.a n : ℤ) = A267531 n

end A267531

/-! ## A267531.P17474082530878919842

`∑[∑[char[comp[2*(n+2)]]]]-1`
-/

namespace A267531.P17474082530878919842
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A267531.P17474082530878919842

namespace A267531

/-- `∑[∑[char[comp[2*(n+2)]]]]-1` -/
def P17474082530878919842.Spec : Prop :=
  ∀ n, P17474082530878919842.a n = A267531 n

end A267531

/-! ## A267531.P7945423710192986098

`∑[∑[1-a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A267531.P7945423710192986098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267531.P7945423710192986098

namespace A267531

/-- `∑[∑[1-a(n-1)]]` -/
def P7945423710192986098.Spec : Prop :=
  ∀ n, P7945423710192986098.a n = A267531 n

end A267531

/-! ## A267531.P9544343647172220566

`∑[A267530(n)]`
-/

namespace A267531.P9544343647172220566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267531.P9544343647172220566

namespace A267531

/-- `∑[A267530(n)]` -/
def P9544343647172220566.Spec : Prop :=
  ∀ n, P9544343647172220566.a n = A267531 n

theorem P9544343647172220566.correct : P9544343647172220566.Spec := by
  intro n
  simp only [A267531, Nat.add_sub_cancel, A267531.P9544343647172220566.f1, A267531.P9544343647172220566.a, A267531.P15992839913543410894.f1, A267531.P15992839913543410894.a, A267530, A267530.P3763555436901385216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267531

/-! ## A267531.P1383508009547097856

`ceil((A016873(n)+∑[n])*n/(n+1)/2)`
-/

namespace A267531.P1383508009547097856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016873 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) * ((n : ℚ) / (n + 1 : ℚ)) / 2⌉

end

end A267531.P1383508009547097856

namespace A267531

/-- `ceil((A016873(n)+∑[n])*n/(n+1)/2)` -/
def P1383508009547097856.Spec : Prop :=
  ∀ n, P1383508009547097856.a n = A267531 n

end A267531

/-! ## A267531.P11704893157898739400

`A033537(n)%A271937(n)`
-/

namespace A267531.P11704893157898739400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033537 n) (A271937 n)

end

end A267531.P11704893157898739400

namespace A267531

/-- `A033537(n)%A271937(n)` -/
def P11704893157898739400.Spec : Prop :=
  ∀ n, P11704893157898739400.a n = A267531 n

end A267531

/-! ## A267531.P5909929673273451493

`A279895(n)%A102214(n)`
-/

namespace A267531.P5909929673273451493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279895 n) (A102214 n)

end

end A267531.P5909929673273451493

namespace A267531

/-- `A279895(n)%A102214(n)` -/
def P5909929673273451493.Spec : Prop :=
  ∀ n, P5909929673273451493.a n = A267531 n

end A267531

/-! ## A267531.P1496771851550373945

`A028557(n)%A184005(n+1)`
-/

namespace A267531.P1496771851550373945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028557 n) (A184005 (n + 1))

end

end A267531.P1496771851550373945

namespace A267531

/-- `A028557(n)%A184005(n+1)` -/
def P1496771851550373945.Spec : Prop :=
  ∀ n, P1496771851550373945.a n = A267531 n

end A267531

/-! ## A267531.P9950246568100289137

`A092286(n)%A213759(n+1)`
-/

namespace A267531.P9950246568100289137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092286 n) (A213759 (n + 1))

end

end A267531.P9950246568100289137

namespace A267531

/-- `A092286(n)%A213759(n+1)` -/
def P9950246568100289137.Spec : Prop :=
  ∀ n, P9950246568100289137.a n = A267531 n

end A267531

/-! ## A267531.P9234331967536556871

`∑[A266286(A266259(n+1)%A266257(n))]`
-/

namespace A267531.P9234331967536556871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266286 (Int.tmod (A266259 (n + 1)) (A266257 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267531.P9234331967536556871

namespace A267531

/-- `∑[A266286(A266259(n+1)%A266257(n))]` -/
def P9234331967536556871.Spec : Prop :=
  ∀ n, P9234331967536556871.a n = A267531 n

end A267531

/-! ## A267531.P9145353790091472675

`∑[A267460(A267460(n))/2]`
-/

namespace A267531.P9145353790091472675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267460 (A267460 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267531.P9145353790091472675

namespace A267531

/-- `∑[A267460(A267460(n))/2]` -/
def P9145353790091472675.Spec : Prop :=
  ∀ n, P9145353790091472675.a n = (A267531 n : ℚ)

end A267531

/-! ## A267531.P14609091384471973277

`record[Δ[A008804(n)-n²]]`
-/

namespace A267531.P14609091384471973277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267531.P14609091384471973277

namespace A267531

/-- `record[Δ[A008804(n)-n²]]` -/
def P14609091384471973277.Spec : Prop :=
  ∀ n, P14609091384471973277.a n = A267531 n

end A267531

/-! ## A267531.P8550564357769043877

`record[A008733(n)-A053438(n)]`
-/

namespace A267531.P8550564357769043877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 n - A053438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267531.P8550564357769043877

namespace A267531

/-- `record[A008733(n)-A053438(n)]` -/
def P8550564357769043877.Spec : Prop :=
  ∀ n, P8550564357769043877.a n = A267531 n

end A267531

/-! ## A267531.P8549926649289129002

`record[A008797(n)-A053438(n)]`
-/

namespace A267531.P8549926649289129002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 n - A053438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267531.P8549926649289129002

namespace A267531

/-- `record[A008797(n)-A053438(n)]` -/
def P8549926649289129002.Spec : Prop :=
  ∀ n, P8549926649289129002.a n = A267531 n

end A267531

/-! ## A267531.P3192604148792355515

`∑[∑[A001222(and(31*2^n+1, n+2)+1)]]`
-/

namespace A267531.P3192604148792355515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.land (31 * 2 ^ n + 1) (n + 2) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267531.P3192604148792355515

namespace A267531

/-- `∑[∑[A001222(and(31*2^n+1, n+2)+1)]]` -/
def P3192604148792355515.Spec : Prop :=
  ∀ n, P3192604148792355515.a n = A267531 n

end A267531

/-! ## A267531.P61994753748131940

`A289207(∑[A008619(n+1)]+n)`
-/

namespace A267531.P61994753748131940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A267531.P61994753748131940

namespace A267531

/-- `A289207(∑[A008619(n+1)]+n)` -/
def P61994753748131940.Spec : Prop :=
  ∀ n, P61994753748131940.a n = A267531 n

end A267531

/-!
# A267532: Number of words on {1,1,2,2,...,n,n} with longest increasing subsequence of length < n.

The programs for A267532, there is no canonical definition to state claims against.
-/

/-! ## A267532.P13589217026962113128

`A000680(n)-A006902(n)`
-/

namespace A267532.P13589217026962113128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 n - A006902 n

end

end A267532.P13589217026962113128

/-! ## A267532.P16613793451824376049

`A010050(n)/A000079(n)-A006902(n)`
-/

namespace A267532.P16613793451824376049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010050 n : ℚ) / (A000079 n : ℚ) - (A006902 n : ℚ)

end

end A267532.P16613793451824376049

/-! ## A267532.P8499492804361019534

`A269129(∑[n+3])`
-/

namespace A267532.P8499492804361019534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267532.P8499492804361019534

/-! ## A267532.P16186506014373309983

`A000680(n)-A267480(∑[n]+n)`
-/

namespace A267532.P16186506014373309983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 n - A267480 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A267532.P16186506014373309983

/-! ## A267532.P8804690931415084439

`A269129(A141214(n))+A011734(n)`
-/

namespace A267532.P8804690931415084439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269129 (A141214 n).toNat + A011734 n

end

end A267532.P8804690931415084439

/-!
# A267533: Triangle read by rows giving successive states of cellular automaton generated by "Rule 143" initiated with a single ON (black) cell.

The programs for A267533, the canonical program `A267533.P12377575930394932186` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267533 has offset 0).

The definition of A267533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267533.P9216720979433691170

`floor(atan(xor(3, n-A048760(n))))`
-/

namespace A267533.P9216720979433691170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (Int.xor 3 ((n : ℤ) - A048760 n) : ℝ)⌋

end

end A267533.P9216720979433691170

namespace A267533

/-- `floor(atan(xor(3, n-A048760(n))))` -/
def P9216720979433691170.Spec : Prop :=
  ∀ n, P9216720979433691170.a n = A267533 n

end A267533

/-! ## A267533.P3329998732492608714

`A267612(n-1-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A267533.P3329998732492608714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A267612 ((n : ℤ) - 1 - a (n - 1)).toNat

end

end A267533.P3329998732492608714

namespace A267533

/-- `A267612(n-1-a(n-1))` -/
def P3329998732492608714.Spec : Prop :=
  ∀ n, P3329998732492608714.a n = A267533 n

end A267533

/-! ## A267533.P2446293395805231224

`A267537(A053186(n))`
-/

namespace A267533.P2446293395805231224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 (A053186 n).toNat

end

end A267533.P2446293395805231224

namespace A267533

/-- `A267537(A053186(n))` -/
def P2446293395805231224.Spec : Prop :=
  ∀ n, P2446293395805231224.a n = A267533 n

end A267533

/-! ## A267533.P12377575930394932186

`A152822(C(5, A053186(n)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A267533

/-- `A152822(C(5, A053186(n)))` -/
def P12377575930394932186.Spec : Prop :=
  ∀ n, P12377575930394932186.a n = A267533 n

theorem P12377575930394932186.correct : P12377575930394932186.Spec := by
  intro n
  simp only [A267533]

end A267533

/-! ## A267533.P8279383915550522240

`A071795(A071797(n+1))%2`
-/

namespace A267533.P8279383915550522240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071795 (A071797 (n + 1)).toNat) 2

end

end A267533.P8279383915550522240

namespace A267533

/-- `A071795(A071797(n+1))%2` -/
def P8279383915550522240.Spec : Prop :=
  ∀ n, P8279383915550522240.a n = A267533 n

end A267533

/-! ## A267533.P11890033339269864345

`A267621(n-floor(A071797(n+1)/2))`
-/

namespace A267533.P11890033339269864345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267621 ((n : ℤ) - ⌊(A071797 (n + 1) : ℚ) / 2⌋).toNat

end

end A267533.P11890033339269864345

namespace A267533

/-- `A267621(n-floor(A071797(n+1)/2))` -/
def P11890033339269864345.Spec : Prop :=
  ∀ n, P11890033339269864345.a n = A267533 n

end A267533

/-! ## A267533.P16162509116293681395

`A008683(5*A112823(2*(A053186(n)+1)))`
-/

namespace A267533.P16162509116293681395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (5 * A112823 (2 * (A053186 n + 1)).toNat).toNat

end

end A267533.P16162509116293681395

namespace A267533

/-- `A008683(5*A112823(2*(A053186(n)+1)))` -/
def P16162509116293681395.Spec : Prop :=
  ∀ n, P16162509116293681395.a n = A267533 n

end A267533

/-! ## A267533.P1998294861661411712

`A267520(n-A267520(n+2))`
-/

namespace A267533.P1998294861661411712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267520 ((n : ℤ) - A267520 (n + 2)).toNat

end

end A267533.P1998294861661411712

namespace A267533

/-- `A267520(n-A267520(n+2))` -/
def P1998294861661411712.Spec : Prop :=
  ∀ n, P1998294861661411712.a n = A267533 n

end A267533

/-! ## A267533.P16308188984409876813

`char[n+1-A143051(A143051(n+1))+n]`
-/

namespace A267533.P16308188984409876813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A143051 (A143051 (n + 1)).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267533.P16308188984409876813

namespace A267533

/-- `char[n+1-A143051(A143051(n+1))+n]` -/
def P16308188984409876813.Spec : Prop :=
  ∀ n, (P16308188984409876813.a n : ℤ) = A267533 n

end A267533

/-! ## A267533.P4247099911307874095

`A267537(A272188(n))`
-/

namespace A267533.P4247099911307874095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 (A272188 n).toNat

end

end A267533.P4247099911307874095

namespace A267533

/-- `A267537(A272188(n))` -/
def P4247099911307874095.Spec : Prop :=
  ∀ n, P4247099911307874095.a n = A267533 n

end A267533

/-!
# A267534: Indices of Lucas numbers that are not of the form x^2 + y^2 + z^2 where x, y and z are integers.

The programs for A267534, the canonical program `A267534.P16814268007716727649` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267534 has offset 1).

The definition of A267534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267534.P16814268007716727649

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=4, a(1)=8, a(2)=11, a(3)=16, a(4)=20, a(5)=21, a(6)=23, a(7)=28`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267534

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P16814268007716727649.Spec : Prop :=
  ∀ n, P16814268007716727649.a n = A267534 (n + 1)

theorem P16814268007716727649.correct : P16814268007716727649.Spec := by
  intro n
  simp only [A267534, Nat.add_sub_cancel]

end A267534

/-! ## A267534.P12350120761927785420

`record[A047271(n+3)-A327832(n+1)]`
-/

namespace A267534.P12350120761927785420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047271 (n + 3) - A327832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267534.P12350120761927785420

namespace A267534

/-- `record[A047271(n+3)-A327832(n+1)]` -/
def P12350120761927785420.Spec : Prop :=
  ∀ n, P12350120761927785420.a n = A267534 (n + 1)

end A267534

/-! ## A267534.P10429792930254405217

`lt[3, A118487(n+1)]`
-/

namespace A267534.P10429792930254405217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267534.P10429792930254405217

namespace A267534

/-- `lt[3, A118487(n+1)]` -/
def P10429792930254405217.Spec : Prop :=
  ∀ n, (P10429792930254405217.a n : ℤ) = A267534 (n + 1)

end A267534

/-! ## A267534.P15967268159950120858

`eq[4, A118487(A000027(n+1))]`
-/

namespace A267534.P15967268159950120858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118487 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267534.P15967268159950120858

namespace A267534

/-- `eq[4, A118487(A000027(n+1))]` -/
def P15967268159950120858.Spec : Prop :=
  ∀ n, (P15967268159950120858.a n : ℤ) = A267534 (n + 1)

end A267534

/-! ## A267534.P16513275499270177466

`eq[4, A118487(A028310(n+1))]`
-/

namespace A267534.P16513275499270177466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118487 (A028310 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267534.P16513275499270177466

namespace A267534

/-- `eq[4, A118487(A028310(n+1))]` -/
def P16513275499270177466.Spec : Prop :=
  ∀ n, (P16513275499270177466.a n : ℤ) = A267534 (n + 1)

end A267534

/-!
# A267535: Binary representation of the n-th iteration of the "Rule 143" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267535, there is no canonical definition to state claims against.
-/

/-! ## A267535.P3185330301707068062

`A267538(2*n)`
-/

namespace A267535.P3185330301707068062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267538 (2 * n)

end

end A267535.P3185330301707068062

/-! ## A267535.P1428913800525261039

`record[A267538(n+1)^(n%2)]`
-/

namespace A267535.P1428913800525261039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267538 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267535.P1428913800525261039

/-! ## A267535.P18003705247727444537

`record[A267538(n+1)^val(A020639(n+1), 2)]`
-/

namespace A267535.P18003705247727444537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267538 (n + 1) ^ SequenceMachineLib.valuation (A020639 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267535.P18003705247727444537

/-! ## A267535.P5353320836061901969

`gcd(A000038(n), A267538(A004277(n)))`
-/

namespace A267535.P5353320836061901969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A267538 (A004277 n).toNat)

end

end A267535.P5353320836061901969

/-! ## A267535.P16345480814115801270

`and(A153881(n+1), A267538(A004277(n)))`
-/

namespace A267535.P16345480814115801270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A267538 (A004277 n).toNat)

end

end A267535.P16345480814115801270

/-!
# A267536: Decimal representation of the n-th iteration of the "Rule 143" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267536, the canonical program `A267536.P14189286089373550704` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267536 has offset 0).

The definition of A267536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267536.P6326937901712420587

`ogf((1+x-x^2+2x^3)/(1-5x+4x^2))`
-/

namespace A267536.P6326937901712420587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 2] [1, -5, 4] n

end

end A267536.P6326937901712420587

namespace A267536

/-- `ogf((1+x-x^2+2x^3)/(1-5x+4x^2))` -/
def P6326937901712420587.Spec : Prop :=
  ∀ n, P6326937901712420587.a n = A267536 n

end A267536

/-! ## A267536.P8405030441859382765

`lcm(4, a(n-1))+3` with `a(0)=1, a(1)=6, a(2)=25`
-/

namespace A267536.P8405030441859382765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 25] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 3

end

end A267536.P8405030441859382765

namespace A267536

/-- `lcm(4, a(n-1))+3` -/
def P8405030441859382765.Spec : Prop :=
  ∀ n, (P8405030441859382765.a n : ℤ) = A267536 n

end A267536

/-! ## A267536.P14189286089373550704

`5*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=6, a(2)=25, a(3)=103`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267536

/-- `5*a(n-1)-4*a(n-2)` -/
def P14189286089373550704.Spec : Prop :=
  ∀ n, P14189286089373550704.a n = A267536 n

theorem P14189286089373550704.correct : P14189286089373550704.Spec := by
  intro n
  simp only [A267536]

end A267536

/-! ## A267536.P15490317141630563773

`A267539(2*n)`
-/

namespace A267536.P15490317141630563773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267539 (2 * n)

end

end A267536.P15490317141630563773

namespace A267536

/-- `A267539(2*n)` -/
def P15490317141630563773.Spec : Prop :=
  ∀ n, P15490317141630563773.a n = A267536 n

end A267536

/-! ## A267536.P15347019400396927837

`record[A267539(A014681(n))]`
-/

namespace A267536.P15347019400396927837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267539 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267536.P15347019400396927837

namespace A267536

/-- `record[A267539(A014681(n))]` -/
def P15347019400396927837.Spec : Prop :=
  ∀ n, P15347019400396927837.a n = A267536 n

end A267536

/-! ## A267536.P13592090795787199915

`record[A267539(A153733(n))]`
-/

namespace A267536.P13592090795787199915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267539 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267536.P13592090795787199915

namespace A267536

/-- `record[A267539(A153733(n))]` -/
def P13592090795787199915.Spec : Prop :=
  ∀ n, P13592090795787199915.a n = A267536 n

end A267536

/-! ## A267536.P5518305106890560368

`record[A279634(n)+A078485(n)]`
-/

namespace A267536.P5518305106890560368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279634 n + A078485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267536.P5518305106890560368

namespace A267536

/-- `record[A279634(n)+A078485(n)]` -/
def P5518305106890560368.Spec : Prop :=
  ∀ n, P5518305106890560368.a n = A267536 n

end A267536

/-! ## A267536.P14167227837709520599

`record[A267539(n)/A010685(n)]`
-/

namespace A267536.P14167227837709520599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267539 n : ℚ) / (A010685 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267536.P14167227837709520599

namespace A267536

/-- `record[A267539(n)/A010685(n)]` -/
def P14167227837709520599.Spec : Prop :=
  ∀ n, P14167227837709520599.a n = (A267536 n : ℚ)

end A267536

/-! ## A267536.P7611937242052611196

`A266613(2*n)+A002450(n)`
-/

namespace A267536.P7611937242052611196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266613 (2 * n) + A002450 n

end

end A267536.P7611937242052611196

namespace A267536

/-- `A266613(2*n)+A002450(n)` -/
def P7611937242052611196.Spec : Prop :=
  ∀ n, P7611937242052611196.a n = A267536 n

end A267536

/-! ## A267536.P10936881061852487956

`record[gcd(A183063(n+1), A267539(n))]`
-/

namespace A267536.P10936881061852487956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183063 (n + 1)) (A267539 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267536.P10936881061852487956

namespace A267536

/-- `record[gcd(A183063(n+1), A267539(n))]` -/
def P10936881061852487956.Spec : Prop :=
  ∀ n, (P10936881061852487956.a n : ℤ) = A267536 n

end A267536

/-! ## A267536.P8640273680408793339

`A266613(2*n)+A001045(2*n)`
-/

namespace A267536.P8640273680408793339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266613 (2 * n) + A001045 (2 * n)

end

end A267536.P8640273680408793339

namespace A267536

/-- `A266613(2*n)+A001045(2*n)` -/
def P8640273680408793339.Spec : Prop :=
  ∀ n, P8640273680408793339.a n = A267536 n

end A267536

/-! ## A267536.P15187256355770520692

`A279634(2*n)+A078485(2*n)`
-/

namespace A267536.P15187256355770520692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279634 (2 * n) + A078485 (2 * n)

end

end A267536.P15187256355770520692

namespace A267536

/-- `A279634(2*n)+A078485(2*n)` -/
def P15187256355770520692.Spec : Prop :=
  ∀ n, P15187256355770520692.a n = A267536 n

end A267536

/-! ## A267536.P14333331635739474604

`A267880(2*n)+A166444(2*n)`
-/

namespace A267536.P14333331635739474604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267880 (2 * n) + A166444 (2 * n)

end

end A267536.P14333331635739474604

namespace A267536

/-- `A267880(2*n)+A166444(2*n)` -/
def P14333331635739474604.Spec : Prop :=
  ∀ n, P14333331635739474604.a n = A267536 n

end A267536

/-! ## A267536.P6321926802858566042

`or(A161115(n+1), A267539(n+n))`
-/

namespace A267536.P6321926802858566042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161115 (n + 1)) (A267539 (n + n))

end

end A267536.P6321926802858566042

namespace A267536

/-- `or(A161115(n+1), A267539(n+n))` -/
def P6321926802858566042.Spec : Prop :=
  ∀ n, P6321926802858566042.a n = A267536 n

end A267536

/-! ## A267536.P1053737441602839703

`A266613(2*n)+A000975(2*n)/2`
-/

namespace A267536.P1053737441602839703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266613 (2 * n) : ℚ) + (A000975 (2 * n) : ℚ) / 2

end

end A267536.P1053737441602839703

namespace A267536

/-- `A266613(2*n)+A000975(2*n)/2` -/
def P1053737441602839703.Spec : Prop :=
  ∀ n, P1053737441602839703.a n = (A267536 n : ℚ)

end A267536

/-! ## A267536.P16253749288737175322

`record[A267539(n)/A267539(A183063(n+1)²)]`
-/

namespace A267536.P16253749288737175322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267539 n : ℚ) / (A267539 (A183063 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267536.P16253749288737175322

namespace A267536

/-- `record[A267539(n)/A267539(A183063(n+1)²)]` -/
def P16253749288737175322.Spec : Prop :=
  ∀ n, P16253749288737175322.a n = (A267536 n : ℚ)

end A267536

/-! ## A267536.P12098096862937465768

`A267880(2*n)+and(A266721(2*n+1), A266721(2*n))`
-/

namespace A267536.P12098096862937465768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267880 (2 * n) + Int.land (A266721 (2 * n + 1)) (A266721 (2 * n))

end

end A267536.P12098096862937465768

namespace A267536

/-- `A267880(2*n)+and(A266721(2*n+1), A266721(2*n))` -/
def P12098096862937465768.Spec : Prop :=
  ∀ n, P12098096862937465768.a n = A267536 n

end A267536

/-! ## A267536.P7537589822743713296

`A000225(2*n+1)+A098011(2*n+1)-A098011(2*(n+1))`
-/

namespace A267536.P7537589822743713296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 1) + (A098011 (2 * n + 1) - A098011 (2 * (n + 1)))

end

end A267536.P7537589822743713296

namespace A267536

/-- `A000225(2*n+1)+A098011(2*n+1)-A098011(2*(n+1))` -/
def P7537589822743713296.Spec : Prop :=
  ∀ n, P7537589822743713296.a n = A267536 n

end A267536

/-! ## A267536.P11580910757671626191

`A267539(n+n)%A267539(n+1)²`
-/

namespace A267536.P11580910757671626191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267539 (n + n)) (A267539 (n + 1) ^ 2)

end

end A267536.P11580910757671626191

namespace A267536

/-- `A267539(n+n)%A267539(n+1)²` -/
def P11580910757671626191.Spec : Prop :=
  ∀ n, P11580910757671626191.a n = A267536 n

end A267536

/-! ## A267536.P15867996083040753496

`or(A219410(n+1), A267539(n+n))`
-/

namespace A267536.P15867996083040753496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A219410 (n + 1)) (A267539 (n + n))

end

end A267536.P15867996083040753496

namespace A267536

/-- `or(A219410(n+1), A267539(n+n))` -/
def P15867996083040753496.Spec : Prop :=
  ∀ n, P15867996083040753496.a n = A267536 n

end A267536

/-!
# A267537: Middle column of the "Rule 143" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267537, the canonical program `A267537.P15624730352777430251` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267537 has offset 0).

The definition of A267537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267537.P15624730352777430251

`ceil(cos(C(5, n)))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267537

/-- `ceil(cos(C(5, n)))` -/
def P15624730352777430251.Spec : Prop :=
  ∀ n, P15624730352777430251.a n = A267537 n

theorem P15624730352777430251.correct : P15624730352777430251.Spec := by
  intro n
  simp only [A267537]

end A267537

/-!
# A267538: Binary representation of the middle column of the "Rule 143" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267538, the canonical program `A267538.P10229037407533658569` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267538 has offset 0).

The definition of A267538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267538.P10229037407533658569

`or(10*a(n-1), A086694(A053644(n)))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A267538

/-- `or(10*a(n-1), A086694(A053644(n)))` -/
def P10229037407533658569.Spec : Prop :=
  ∀ n, P10229037407533658569.a n = A267538 n

theorem P10229037407533658569.correct : P10229037407533658569.Spec := by
  intro n
  simp only [A267538]

end A267538

/-! ## A267538.P9443568771485188449

`or(10*a(n-1), A323239(A180101(n+1)))` with `a(0)=1`
-/

namespace A267538.P9443568771485188449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A323239 (A180101 (n + 1)).toNat)

end

end A267538.P9443568771485188449

namespace A267538

/-- `or(10*a(n-1), A323239(A180101(n+1)))` -/
def P9443568771485188449.Spec : Prop :=
  ∀ n, P9443568771485188449.a n = A267538 n

end A267538

/-! ## A267538.P4128826770891178292

`or(10*a(n-1), A000035(A055773(n)))` with `a(0)=1`
-/

namespace A267538.P4128826770891178292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A000035 (A055773 n).toNat)

end

end A267538.P4128826770891178292

namespace A267538

/-- `or(10*a(n-1), A000035(A055773(n)))` -/
def P4128826770891178292.Spec : Prop :=
  ∀ n, P4128826770891178292.a n = A267538 n

end A267538

/-!
# A267539: Decimal representation of the middle column of the "Rule 143" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267539, the canonical program `A267539.P1135055343231722033` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267539 has offset 0).

The definition of A267539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267539.P2455554242722905473

`ogf((1-x^2+x^4)/(1-3x+2x^2))`
-/

namespace A267539.P2455554242722905473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 0, 1] [1, -3, 2] n

end

end A267539.P2455554242722905473

namespace A267539

/-- `ogf((1-x^2+x^4)/(1-3x+2x^2))` -/
def P2455554242722905473.Spec : Prop :=
  ∀ n, P2455554242722905473.a n = A267539 n

end A267539

/-! ## A267539.P12099739360345400773

`2*a(n-1)+1-char[3]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A267539.P12099739360345400773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  2 * a (n - 1) + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267539.P12099739360345400773

namespace A267539

/-- `2*a(n-1)+1-char[3]` -/
def P12099739360345400773.Spec : Prop :=
  ∀ n, P12099739360345400773.a n = A267539 n

end A267539

/-! ## A267539.P5981459731369491206

`(3%n)%2+2*a(n-1)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A267539.P5981459731369491206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  3 % n % 2 + 2 * a (n - 1)

end

end A267539.P5981459731369491206

namespace A267539

/-- `(3%n)%2+2*a(n-1)` -/
def P5981459731369491206.Spec : Prop :=
  ∀ n, (P5981459731369491206.a n : ℤ) = A267539 n

end A267539

/-! ## A267539.P14000693649407544841

`a(n-1)+a(n-1)+n%a(n-2)/n` with `a(0)=1, a(1)=3`
-/

namespace A267539.P14000693649407544841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ) / (n : ℚ))

end

end A267539.P14000693649407544841

namespace A267539

/-- `a(n-1)+a(n-1)+n%a(n-2)/n` -/
def P14000693649407544841.Spec : Prop :=
  ∀ n, P14000693649407544841.a n = (A267539 n : ℚ)

end A267539

/-! ## A267539.P12263200229081370550

`a(n-1)+A267537(n)+a(n-1)` with `a(0)=1`
-/

namespace A267539.P12263200229081370550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A267537 n + a (n - 1))

end

end A267539.P12263200229081370550

namespace A267539

/-- `a(n-1)+A267537(n)+a(n-1)` -/
def P12263200229081370550.Spec : Prop :=
  ∀ n, P12263200229081370550.a n = A267539 n

end A267539

/-! ## A267539.P6415365127024514302

`A267880(n)+A166444(n)`
-/

namespace A267539.P6415365127024514302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267880 n + A166444 n

end

end A267539.P6415365127024514302

namespace A267539

/-- `A267880(n)+A166444(n)` -/
def P6415365127024514302.Spec : Prop :=
  ∀ n, P6415365127024514302.a n = A267539 n

end A267539

/-! ## A267539.P16712938966510473479

`A000035(A239585(n+2))+2*a(n-1)` with `a(0)=1`
-/

namespace A267539.P16712938966510473479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000035 (A239585 (n + 2)).toNat + 2 * a (n - 1)

end

end A267539.P16712938966510473479

namespace A267539

/-- `A000035(A239585(n+2))+2*a(n-1)` -/
def P16712938966510473479.Spec : Prop :=
  ∀ n, P16712938966510473479.a n = A267539 n

end A267539

/-! ## A267539.P1135055343231722033

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=12, a(4)=25`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267539

/-- `3*a(n-1)-2*a(n-2)` -/
def P1135055343231722033.Spec : Prop :=
  ∀ n, P1135055343231722033.a n = A267539 n

theorem P1135055343231722033.correct : P1135055343231722033.Spec := by
  intro n
  simp only [A267539]

end A267539

/-! ## A267539.P5106552060944901799

`A267589(n+1)-2^n`
-/

namespace A267539.P5106552060944901799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267589 (n + 1) - (2 ^ n : ℤ)

end

end A267539.P5106552060944901799

namespace A267539

/-- `A267589(n+1)-2^n` -/
def P5106552060944901799.Spec : Prop :=
  ∀ n, P5106552060944901799.a n = A267539 n

end A267539

/-! ## A267539.P2244498086354579146

`A288936(A000124(n)+1)+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A267539.P2244498086354579146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288936 (A000124 n + 1).toNat + (a (n - 1) + a (n - 1))

end

end A267539.P2244498086354579146

namespace A267539

/-- `A288936(A000124(n)+1)+a(n-1)+a(n-1)` -/
def P2244498086354579146.Spec : Prop :=
  ∀ n, P2244498086354579146.a n = A267539 n

end A267539

/-!
# A267540: Primes p such that p (mod 3) = p (mod 5).

The programs for A267540, there is no canonical definition to state claims against.
-/

/-! ## A267540.P11464728733742644295

`p?[∑[dr(∑[abs(1-n)])]]`
-/

namespace A267540.P11464728733742644295
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A267540.P11464728733742644295

/-! ## A267540.P1468278188503912308

`p?[a(n-2)+15]` with `a(0)=1, a(1)=2`
-/

namespace A267540.P1468278188503912308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A267540.P1468278188503912308

/-! ## A267540.P11674653964765112943

`p?[12*floor(n/3)+n]`
-/

namespace A267540.P11674653964765112943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ⌊(n : ℚ) / 3⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267540.P11674653964765112943

/-! ## A267540.P3884750805553792640

`∪[p?[3*5*n+2], p?[30*n+1]]`
-/

namespace A267540.P3884750805553792640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (5 * n) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A267540.P3884750805553792640

/-! ## A267540.P13923630238700028831

`record[A074399(15*n+1)]`
-/

namespace A267540.P13923630238700028831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (15 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267540.P13923630238700028831

/-! ## A267540.P5769721518727992551

`eq[A003415(n), A014024(n)]`
-/

namespace A267540.P5769721518727992551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267540.P5769721518727992551

/-! ## A267540.P16910011270709755863

`eq[A014024(n), A018783(n)]`
-/

namespace A267540.P16910011270709755863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267540.P16910011270709755863

/-! ## A267540.P1404710158554068401

`eq[A014024(n), A032741(n)]`
-/

namespace A267540.P1404710158554068401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267540.P1404710158554068401

/-! ## A267540.P12658003563202314394

`eq[A014024(n), A167866(n)]`
-/

namespace A267540.P12658003563202314394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267540.P12658003563202314394

/-!
# A267541: Expansion of (2 + 4*x + x^2 + x^3 + 2*x^4 + x^5)/(1 - x - x^5 + x^6).

The programs for A267541, the canonical program `A267541.P2227607126503277384` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267541 has offset 0).

The definition of A267541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+4x+x^2+x^3+2x^4+x^5)/(1-x-x^5+x^6))` (program `A267541.P2227607126503277384`, by `A267541.P2227607126503277384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267541.P2227607126503277384

`ogf((2+4x+x^2+x^3+2x^4+x^5)/(1-x-x^5+x^6))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267541

/-- `ogf((2+4x+x^2+x^3+2x^4+x^5)/(1-x-x^5+x^6))` -/
def P2227607126503277384.Spec : Prop :=
  ∀ n, P2227607126503277384.a n = A267541 n

theorem P2227607126503277384.correct : P2227607126503277384.Spec := by
  intro n
  simp only [A267541]

end A267541

/-! ## A267541.P1721000467105277118

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=2, a(1)=6, a(2)=7, a(3)=8, a(4)=10, a(5)=13`
-/

namespace A267541.P1721000467105277118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 7, 8, 10, 13] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A267541.P1721000467105277118

namespace A267541

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P1721000467105277118.Spec : Prop :=
  ∀ n, P1721000467105277118.a n = A267541 n

end A267541

/-! ## A267541.P1375367195931617760

`∑[floor(a(n-5))]` with `a(0)=2, a(1)=4, a(2)=1, a(3)=1, a(4)=2, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A267541.P1375367195931617760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 1, 1, 2, 3] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267541.P1375367195931617760

namespace A267541

/-- `∑[floor(a(n-5))]` -/
def P1375367195931617760.Spec : Prop :=
  ∀ n, (P1375367195931617760.a n : ℤ) = A267541 n

end A267541

/-! ## A267541.P11391984188316025496

`∪[A088225(n+1), A017509(n)]`
-/

namespace A267541.P11391984188316025496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267541.P11391984188316025496

namespace A267541

/-- `∪[A088225(n+1), A017509(n)]` -/
def P11391984188316025496.Spec : Prop :=
  ∀ n, (P11391984188316025496.a n : ℤ) = A267541 n

end A267541

/-! ## A267541.P3468625588432362290

`lt[A011582(n)+n, n]`
-/

namespace A267541.P3468625588432362290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 n + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A267541.P3468625588432362290

namespace A267541

/-- `lt[A011582(n)+n, n]` -/
def P3468625588432362290.Spec : Prop :=
  ∀ n, (P3468625588432362290.a n : ℤ) = A267541 n

end A267541

/-! ## A267541.P2397862808403571305

`eq[A011582(n), A260196(n)]`
-/

namespace A267541.P2397862808403571305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267541.P2397862808403571305

namespace A267541

/-- `eq[A011582(n), A260196(n)]` -/
def P2397862808403571305.Spec : Prop :=
  ∀ n, (P2397862808403571305.a n : ℤ) = A267541 n

end A267541

/-! ## A267541.P18041865633102292777

`eq[A011582(2*n), A329684(n+1)]`
-/

namespace A267541.P18041865633102292777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267541.P18041865633102292777

namespace A267541

/-- `eq[A011582(2*n), A329684(n+1)]` -/
def P18041865633102292777.Spec : Prop :=
  ∀ n, (P18041865633102292777.a n : ℤ) = A267541 n

end A267541

/-! ## A267541.P901457798440607250

`eq[A070596(2*n), A329684(n+1)]`
-/

namespace A267541.P901457798440607250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070596 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267541.P901457798440607250

namespace A267541

/-- `eq[A070596(2*n), A329684(n+1)]` -/
def P901457798440607250.Spec : Prop :=
  ∀ n, (P901457798440607250.a n : ℤ) = A267541 n

end A267541

/-! ## A267541.P6076337835700301085

`eq[A329684(2*n)², A070596(2*n)]`
-/

namespace A267541.P6076337835700301085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070596 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267541.P6076337835700301085

namespace A267541

/-- `eq[A329684(2*n)², A070596(2*n)]` -/
def P6076337835700301085.Spec : Prop :=
  ∀ n, (P6076337835700301085.a n : ℤ) = A267541 n

end A267541

/-!
# A267544: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its north, west or southeast neighbor modulo n and the upper left element equal to 0.

The programs for A267544, there is no canonical definition to state claims against.
-/

/-! ## A267544.P11163761462060069991

`A267546(∑[n+2])`
-/

namespace A267544.P11163761462060069991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267546 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267544.P11163761462060069991

/-! ## A267544.P17183878094268410106

`lcm((-1)^n, A267546(A000096(n+1)))`
-/

namespace A267544.P17183878094268410106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A267546 (A000096 (n + 1)).toNat)

end

end A267544.P17183878094268410106

/-! ## A267544.P6682779367691565847

`A267546(A000096(n+1))+A235145(n)`
-/

namespace A267544.P6682779367691565847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267546 (A000096 (n + 1)).toNat + A235145 n

end

end A267544.P6682779367691565847

/-! ## A267544.P12069355762570571239

`A267546(A000096(n+1))/A175782(n)`
-/

namespace A267544.P12069355762570571239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267546 (A000096 (n + 1)).toNat : ℚ) / (A175782 n : ℚ)

end

end A267544.P12069355762570571239

/-!
# A267545: Number of nX3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its north, west or southeast neighbor modulo n and the upper left element equal to 0.

The programs for A267545, there is no canonical definition to state claims against.
-/

/-! ## A267545.P6321933353480154898

`A267546(∑[n+3]+1)`
-/

namespace A267545.P6321933353480154898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267546 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267545.P6321933353480154898

/-! ## A267545.P6558228857897719510

`or(A033183(n), A267546(A034856(n+2)))`
-/

namespace A267545.P6558228857897719510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033183 n) (A267546 (A034856 (n + 2)).toNat)

end

end A267545.P6558228857897719510

/-! ## A267545.P4430834352317378456

`or(A056170(n+1), A267546(A034856(n+2)))`
-/

namespace A267545.P4430834352317378456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056170 (n + 1)) (A267546 (A034856 (n + 2)).toNat)

end

end A267545.P4430834352317378456

/-!
# A267546: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element 1 greater than its north, west or southeast neighbor modulo n and the upper left element equal to 0.

The programs for A267546, there is no canonical definition to state claims against.
-/

/-! ## A267546.P12380025330810832802

`A174210(A266886(n+1))`
-/

namespace A267546.P12380025330810832802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174210 (A266886 (n + 1)).toNat

end

end A267546.P12380025330810832802

/-! ## A267546.P2828401787661697727

`A025209(A266886(n+1)+3)`
-/

namespace A267546.P2828401787661697727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025209 (A266886 (n + 1) + 3).toNat

end

end A267546.P2828401787661697727

/-! ## A267546.P3289728807645070601

`∑{d}[A266886(n+1), A118168(#)]`
-/

namespace A267546.P3289728807645070601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A118168 d

end

end A267546.P3289728807645070601

/-! ## A267546.P16810369245786825636

`A326462(A266886(n+1))+A266632(n+1)`
-/

namespace A267546.P16810369245786825636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326462 (A266886 (n + 1)).toNat + A266632 (n + 1)

end

end A267546.P16810369245786825636

/-! ## A267546.P92762515043937626

`A000196(A266291(n+1)^A004605(2*(n+1)))`
-/

namespace A267546.P92762515043937626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A266291 (n + 1) : ℚ) ^ (A004605 (2 * (n + 1)) : ℤ))).toNat

end

end A267546.P92762515043937626

/-!
# A267547: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its north, west or southeast neighbor modulo 4 and the upper left element equal to 0.

The programs for A267547, there is no canonical definition to state claims against.
-/

/-! ## A267547.P5869830168239874621

`A267546(A141214(n)+7)`
-/

namespace A267547.P5869830168239874621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267546 (A141214 n + 7).toNat

end

end A267547.P5869830168239874621

/-! ## A267547.P7654437142852810424

`A267546(A052905(n)+9)`
-/

namespace A267547.P7654437142852810424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267546 (A052905 n + 9).toNat

end

end A267547.P7654437142852810424

/-! ## A267547.P461989479183855170

`A267546(A055999(n)+10)`
-/

namespace A267547.P461989479183855170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267546 (A055999 n + 10).toNat

end

end A267547.P461989479183855170

/-!
# A267548: Number of 5Xn arrays containing n copies of 0..5-1 with no element 1 greater than its north, west or southeast neighbor modulo 5 and the upper left element equal to 0.

The programs for A267548, there is no canonical definition to state claims against.
-/

/-! ## A267548.P13525577660425825409

`A267546(A167499(n+3))`
-/

namespace A267548.P13525577660425825409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267546 (A167499 (n + 3)).toNat

end

end A267548.P13525577660425825409

/-! ## A267548.P16711784742180153239

`A267546(A077169(n+5))`
-/

namespace A267548.P16711784742180153239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267546 (A077169 (n + 5)).toNat

end

end A267548.P16711784742180153239

/-!
# A267549: Primes prime(k) such that floor( (prime(k)/k)^2 ) <= prime(k+1) - prime(k).

The programs for A267549, there is no canonical definition to state claims against.
-/

/-! ## A267549.P16104168091495990911

`A124147(n+2)`
-/

namespace A267549.P16104168091495990911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124147 (n + 2)

end

end A267549.P16104168091495990911

/-!
# A267550: Primes p such that p (mod 3) = p (mod 5) = p (mod 7).

The programs for A267550, the canonical program `A267550.P16883701701440491471` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267550 has offset 1).

The definition of A267550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267550.P16883701701440491471

`p?[3-(a(n-1)-5*21*n)]` with `a(0)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267550

/-- `p?[3-(a(n-1)-5*21*n)]` -/
def P16883701701440491471.Spec : Prop :=
  ∀ n, P16883701701440491471.a n = A267550 (n + 1)

theorem P16883701701440491471.correct : P16883701701440491471.Spec := by
  intro n
  simp only [A267550, Nat.add_sub_cancel]

end A267550

/-! ## A267550.P9531757376686996275

`p?[A063118(7*n+1)]`
-/

namespace A267550.P9531757376686996275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (7 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267550.P9531757376686996275

namespace A267550

/-- `p?[A063118(7*n+1)]` -/
def P9531757376686996275.Spec : Prop :=
  ∀ n, P9531757376686996275.a n = A267550 (n + 1)

end A267550

/-! ## A267550.P2628600600895224417

`p?[A175629(n)+A063118(n+1)]`
-/

namespace A267550.P2628600600895224417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 n + A063118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267550.P2628600600895224417

namespace A267550

/-- `p?[A175629(n)+A063118(n+1)]` -/
def P2628600600895224417.Spec : Prop :=
  ∀ n, P2628600600895224417.a n = A267550 (n + 1)

end A267550

/-! ## A267550.P14865045796002317001

`∩[A063118(n+1), A216145(n+1)]`
-/

namespace A267550.P14865045796002317001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267550.P14865045796002317001

namespace A267550

/-- `∩[A063118(n+1), A216145(n+1)]` -/
def P14865045796002317001.Spec : Prop :=
  ∀ n, (P14865045796002317001.a n : ℤ) = A267550 (n + 1)

end A267550

/-! ## A267550.P18333020461922940629

`record[A020639(A063118(A168337(n+1)))]`
-/

namespace A267550.P18333020461922940629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063118 (A168337 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267550.P18333020461922940629

namespace A267550

/-- `record[A020639(A063118(A168337(n+1)))]` -/
def P18333020461922940629.Spec : Prop :=
  ∀ n, P18333020461922940629.a n = A267550 (n + 1)

end A267550

/-! ## A267550.P14995666342615157793

`p?[A070644(n)+A063097(n+1)]`
-/

namespace A267550.P14995666342615157793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070644 n + A063097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267550.P14995666342615157793

namespace A267550

/-- `p?[A070644(n)+A063097(n+1)]` -/
def P14995666342615157793.Spec : Prop :=
  ∀ n, P14995666342615157793.a n = A267550 (n + 1)

end A267550

/-! ## A267550.P1849095450274756826

`∩[A216145(n+1), A267711(n+1)]`
-/

namespace A267550.P1849095450274756826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267550.P1849095450274756826

namespace A267550

/-- `∩[A216145(n+1), A267711(n+1)]` -/
def P1849095450274756826.Spec : Prop :=
  ∀ n, (P1849095450274756826.a n : ℤ) = A267550 (n + 1)

end A267550

/-!
# A267551: Lucas numbers written backwards.

The programs for A267551, there is no canonical definition to state claims against.
-/

/-! ## A267551.P11321827134348401934

`A004086(A000032(n))`
-/

namespace A267551.P11321827134348401934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000032 n).toNat

end

end A267551.P11321827134348401934

/-! ## A267551.P5127596680687155034

`A004086(abs(floor((-ϕ)^n)+1))`
-/

namespace A267551.P5127596680687155034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 |⌊(-Real.goldenRatio) ^ n⌋ + 1|.toNat

end

end A267551.P5127596680687155034

/-! ## A267551.P3284445092306999418

`and(-1, A004086(A329723(n+2)))`
-/

namespace A267551.P3284445092306999418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A004086 (A329723 (n + 2)).toNat)

end

end A267551.P3284445092306999418

/-! ## A267551.P2226459589305819635

`and(-1, A004086(A303427(2*n)))`
-/

namespace A267551.P2226459589305819635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A004086 (A303427 (2 * n)).toNat)

end

end A267551.P2226459589305819635

/-! ## A267551.P777851506489204964

`A004086(abs(A061084(n+1)))%A244323(n)`
-/

namespace A267551.P777851506489204964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 |A061084 (n + 1)|.toNat) (A244323 n)

end

end A267551.P777851506489204964

/-!
# A267552: Number of n X n arrays containing n copies of 0..n-1 with every element equal to or 1 greater than any north or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267552, there is no canonical definition to state claims against.
-/

/-! ## A267552.P2858366875888419949

`A267553(∑[4*n]+1)`
-/

namespace A267552.P2858366875888419949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267552.P2858366875888419949

/-! ## A267552.P15408420578852663920

`A267562(∑[4*n]+1)`
-/

namespace A267552.P15408420578852663920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267552.P15408420578852663920

/-! ## A267552.P16582663092405261670

`record[A267562(A008619(n²))]`
-/

namespace A267552.P16582663092405261670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A008619 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267552.P16582663092405261670

/-! ## A267552.P7125145634114940238

`record[A267553(∑[A266981(n)])]`
-/

namespace A267552.P7125145634114940238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267552.P7125145634114940238

/-! ## A267552.P14073196591676101333

`and(-1, A267553(A001844(n)))`
-/

namespace A267552.P14073196591676101333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A267553 (A001844 n).toNat)

end

end A267552.P14073196591676101333

/-!
# A267553: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to or 1 greater than any north or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267553, there is no canonical definition to state claims against.
-/

/-! ## A267553.P13165713695864503835

`A267392(n+1)+A186745(A306100(n)%A174919(2*n))`
-/

namespace A267553.P13165713695864503835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (n + 1) + A186745 (Int.tmod (A306100 n) (A174919 (2 * n))).toNat

end

end A267553.P13165713695864503835

/-! ## A267553.P5475351625485606284

`A267392(n+1)+A186745(A306100(n))`
-/

namespace A267553.P5475351625485606284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (n + 1) + A186745 (A306100 n).toNat

end

end A267553.P5475351625485606284

/-! ## A267553.P5272965813097896704

`gcd(A008459(n)!, A267562(n+1))`
-/

namespace A267553.P5272965813097896704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A008459 n).toNat : ℤ) (A267562 (n + 1))

end

end A267553.P5272965813097896704

/-! ## A267553.P4739118716165869875

`A285006(a(n-1))+A267392(n+1)` with `a(0)=1`
-/

namespace A267553.P4739118716165869875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285006 (a (n - 1)).toNat + A267392 (n + 1)

end

end A267553.P4739118716165869875

/-! ## A267553.P6418102530380719021

`A267392(n+1)+A007814(A157149(n))`
-/

namespace A267553.P6418102530380719021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (n + 1) + A007814 (A157149 n).toNat

end

end A267553.P6418102530380719021

/-!
# A267554: Number of nX(n+1) arrays of permutations of n+1 copies of 0..n-1 with every element equal to or 1 greater than any north or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267554, there is no canonical definition to state claims against.
-/

/-! ## A267554.P13982227165044184921

`A267553(2*(n+1)²)`
-/

namespace A267554.P13982227165044184921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (2 * (n + 1) ^ 2)

end

end A267554.P13982227165044184921

/-! ## A267554.P6000382998076605045

`record[A267553(∑[2*n^(n%2)-1])]`
-/

namespace A267554.P6000382998076605045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ (n % 2) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267554.P6000382998076605045

/-! ## A267554.P13456466783079328444

`record[A267553(A053439(n))]`
-/

namespace A267554.P13456466783079328444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A053439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267554.P13456466783079328444

/-! ## A267554.P1407996442474810644

`record[A267553(A275009(n))]`
-/

namespace A267554.P1407996442474810644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A275009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267554.P1407996442474810644

/-! ## A267554.P17272606360156575914

`record[A267553(∑[A266072(n)])]`
-/

namespace A267554.P17272606360156575914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267554.P17272606360156575914

/-!
# A267555: Number of nX(n+2) arrays of permutations of n+2 copies of 0..n-1 with every element equal to or 1 greater than any north or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267555, there is no canonical definition to state claims against.
-/

/-! ## A267555.P18095123639322940322

`A267553(∑[4*(n+1)])`
-/

namespace A267555.P18095123639322940322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267555.P18095123639322940322

/-! ## A267555.P5875780182804973498

`record[A267553(A182455(n))]`
-/

namespace A267555.P5875780182804973498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A182455 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267555.P5875780182804973498

/-! ## A267555.P10761789219146525210

`record[A267553(A241496(n))]`
-/

namespace A267555.P10761789219146525210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A241496 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267555.P10761789219146525210

/-! ## A267555.P7180696782820435836

`record[A267553(A265225(n))]`
-/

namespace A267555.P7180696782820435836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267555.P7180696782820435836

/-!
# A267556: Number of nX(n+3) arrays of permutations of n+3 copies of 0..n-1 with every element equal to or 1 greater than any north or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267556, there is no canonical definition to state claims against.
-/

/-! ## A267556.P1718849863653697392

`record[A267553(A266448(n))]`
-/

namespace A267556.P1718849863653697392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A266448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267556.P1718849863653697392

/-! ## A267556.P7000786068454295554

`A267553(A268581(n)+2)`
-/

namespace A267556.P7000786068454295554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A268581 n + 2).toNat

end

end A267556.P7000786068454295554

/-! ## A267556.P3526068842579354432

`A267553(A161532(n)+6)`
-/

namespace A267556.P3526068842579354432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A161532 n + 6).toNat

end

end A267556.P3526068842579354432

/-! ## A267556.P14533849589517488079

`A267553(eq[9, A249900(n)])`
-/

namespace A267556.P14533849589517488079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267556.P14533849589517488079

/-!
# A267557: Number of nX(n+4) arrays of permutations of n+4 copies of 0..n-1 with every element equal to or 1 greater than any north or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267557, there is no canonical definition to state claims against.
-/

/-! ## A267557.P11762134902222706642

`A267553(A142463(n+2))`
-/

namespace A267557.P11762134902222706642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A142463 (n + 2)).toNat

end

end A267557.P11762134902222706642

/-! ## A267557.P8850633934089545430

`A267553(eq[7, A249900(n)])`
-/

namespace A267557.P8850633934089545430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267557.P8850633934089545430

/-! ## A267557.P6821346311486189763

`A267553(Δ[A143941(n+1)])`
-/

namespace A267557.P6821346311486189763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (f1 (n + 1) - f1 n).toNat

end

end A267557.P6821346311486189763

/-!
# A267558: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any north or northeast neighbors modulo 4 and the upper left element equal to 0.

The programs for A267558, there is no canonical definition to state claims against.
-/

/-! ## A267558.P17823108175943803218

`A267553(∑[n+3]+7)`
-/

namespace A267558.P17823108175943803218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267558.P17823108175943803218

/-! ## A267558.P15824376731175033102

`A267553(A052905(n)+9)+char[18]`
-/

namespace A267558.P15824376731175033102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267558.P15824376731175033102

/-! ## A267558.P2702512118937561561

`record[gcd(A267553(n+2), A293293(n))]`
-/

namespace A267558.P2702512118937561561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A267553 (n + 2)) (A293293 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267558.P2702512118937561561

/-! ## A267558.P4087827060712776747

`A267553(A167614(n+2)+1)+char[17]`
-/

namespace A267558.P4087827060712776747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267558.P4087827060712776747

/-! ## A267558.P15196618970060973488

`A267553(A052905(n)+9)%A077444(n+1)`
-/

namespace A267558.P15196618970060973488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267553 (A052905 n + 9).toNat) (A077444 (n + 1))

end

end A267558.P15196618970060973488

/-!
# A267559: Number of 5Xn arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any north or northeast neighbors modulo 5 and the upper left element equal to 0.

The programs for A267559, there is no canonical definition to state claims against.
-/

/-! ## A267559.P3269254606890443681

`A267553(∑[n+4]+11)`
-/

namespace A267559.P3269254606890443681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A267559.P3269254606890443681

/-! ## A267559.P7415705248391731038

`A267553(A167499(n+3))+A059841(2*n+1)`
-/

namespace A267559.P7415705248391731038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A167499 (n + 3)).toNat + A059841 (2 * n + 1)

end

end A267559.P7415705248391731038

/-! ## A267559.P8821852526151060048

`A267553(A167499(n+3))/A124625(2*(n+2))`
-/

namespace A267559.P8821852526151060048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267553 (A167499 (n + 3)).toNat : ℚ) / (A124625 (2 * (n + 2)) : ℚ)

end

end A267559.P8821852526151060048

/-!
# A267560: Number of 6Xn arrays containing n copies of 0..6-1 with every element equal to or 1 greater than any north or northeast neighbors modulo 6 and the upper left element equal to 0.

The programs for A267560, there is no canonical definition to state claims against.
-/

/-! ## A267560.P8815143801747075233

`A267553(∑[n+5]+16)`
-/

namespace A267560.P8815143801747075233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A267560.P8815143801747075233

/-! ## A267560.P557941639064731843

`A267553(A167614(n+4)+3)+A209229(3*(n+1))`
-/

namespace A267560.P557941639064731843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A167614 (n + 4) + 3).toNat + A209229 (3 * (n + 1))

end

end A267560.P557941639064731843

/-! ## A267560.P18053800542588626299

`A267553(A167614(n+4)+3)+A007814(2*n+3)`
-/

namespace A267560.P18053800542588626299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A167614 (n + 4) + 3).toNat + A007814 (2 * n + 3)

end

end A267560.P18053800542588626299

/-!
# A267561: Number of 7Xn arrays containing n copies of 0..7-1 with every element equal to or 1 greater than any north or northeast neighbors modulo 7 and the upper left element equal to 0.

The programs for A267561, there is no canonical definition to state claims against.
-/

/-! ## A267561.P1651611980639500918

`A267553(A167487(n+5))`
-/

namespace A267561.P1651611980639500918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A167487 (n + 5)).toNat

end

end A267561.P1651611980639500918

/-! ## A267561.P6205985164703122965

`A267553(A056119(n)+28)`
-/

namespace A267561.P6205985164703122965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A056119 n + 28).toNat

end

end A267561.P6205985164703122965

/-! ## A267561.P11785868266596307067

`A267553(eq[11, A066657(n)])`
-/

namespace A267561.P11785868266596307067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267561.P11785868266596307067

/-! ## A267561.P10691654751493975320

`A267553(A166136(n+5)+1)`
-/

namespace A267561.P10691654751493975320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A166136 (n + 5) + 1).toNat

end

end A267561.P10691654751493975320

/-! ## A267561.P3732284223770645874

`A267553(A167614(n+5)+4)`
-/

namespace A267561.P3732284223770645874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A167614 (n + 5) + 4).toNat

end

end A267561.P3732284223770645874

/-!
# A267562: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to or 1 greater than any west or southwest neighbors modulo n and the upper left element equal to 0.

The programs for A267562, there is no canonical definition to state claims against.
-/

/-! ## A267562.P2916140662915013404

`A121698(A229243(n))*A267425(n+1)`
-/

namespace A267562.P2916140662915013404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121698 (A229243 n).toNat * A267425 (n + 1)

end

end A267562.P2916140662915013404

/-! ## A267562.P1188919905779791945

`A267425(A390761(n+1))`
-/

namespace A267562.P1188919905779791945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A390761 (n + 1)).toNat

end

end A267562.P1188919905779791945

/-! ## A267562.P11425046793854350643

`A267425(A004885(n+2))`
-/

namespace A267562.P11425046793854350643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A004885 (n + 2)).toNat

end

end A267562.P11425046793854350643

/-! ## A267562.P13113044360103342644

`A267425(A004896(n+2))`
-/

namespace A267562.P13113044360103342644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A004896 (n + 2)).toNat

end

end A267562.P13113044360103342644

/-! ## A267562.P16897279167719849315

`A267425(A004907(n+2))`
-/

namespace A267562.P16897279167719849315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A004907 (n + 2)).toNat

end

end A267562.P16897279167719849315

/-!
# A267563: Number of (n+1)Xn arrays containing n copies of 0..n+1-1 with every element equal to or 1 greater than any west or southwest neighbors modulo n and the upper left element equal to 0.

The programs for A267563, there is no canonical definition to state claims against.
-/

/-! ## A267563.P15007468605008157068

`A267562(2*(n+1)²+1)`
-/

namespace A267563.P15007468605008157068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (2 * (n + 1) ^ 2 + 1)

end

end A267563.P15007468605008157068

/-! ## A267563.P16215395777400944698

`A267562(A058331(n+1))%A017510(n)`
-/

namespace A267563.P16215395777400944698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267562 (A058331 (n + 1)).toNat) (A017510 n)

end

end A267563.P16215395777400944698

/-! ## A267563.P8502887954301318948

`A229243(n)*A267562(A080827(2*(n+1)))`
-/

namespace A267563.P8502887954301318948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229243 n * A267562 (A080827 (2 * (n + 1))).toNat

end

end A267563.P8502887954301318948

/-! ## A267563.P9632347713183186622

`or(A186745(n), A267562(A080827(2*(n+1))))`
-/

namespace A267563.P9632347713183186622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186745 n) (A267562 (A080827 (2 * (n + 1))).toNat)

end

end A267563.P9632347713183186622

/-!
# A267564: Number of nX(n+1) arrays of permutations of n+1 copies of 0..n-1 with every element equal to or 1 greater than any west or southwest neighbors modulo n and the upper left element equal to 0.

The programs for A267564, there is no canonical definition to state claims against.
-/

/-! ## A267564.P4003912733635019248

`A267562(2*(n+1)²)`
-/

namespace A267564.P4003912733635019248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (2 * (n + 1) ^ 2)

end

end A267564.P4003912733635019248

/-! ## A267564.P5476886828612564816

`record[A267562(A053439(n))]`
-/

namespace A267564.P5476886828612564816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A053439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267564.P5476886828612564816

/-! ## A267564.P16914619747732723501

`record[A267562(A275009(n))]`
-/

namespace A267564.P16914619747732723501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A275009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267564.P16914619747732723501

/-! ## A267564.P14937507791158372490

`record[A267562(∑[A266072(n)])]`
-/

namespace A267564.P14937507791158372490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267564.P14937507791158372490

/-!
# A267565: Number of nX(n+2) arrays of permutations of n+2 copies of 0..n-1 with every element equal to or 1 greater than any west or southwest neighbors modulo n and the upper left element equal to 0.

The programs for A267565, there is no canonical definition to state claims against.
-/

/-! ## A267565.P9224984900521305758

`A267562(∑[4*(n+1)])`
-/

namespace A267565.P9224984900521305758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267565.P9224984900521305758

/-! ## A267565.P2300416322613475348

`record[A267562(A241496(n))]`
-/

namespace A267565.P2300416322613475348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A241496 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267565.P2300416322613475348

/-! ## A267565.P1108185162937669827

`record[A267562(A121728(n+1))]`
-/

namespace A267565.P1108185162937669827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A121728 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267565.P1108185162937669827

/-! ## A267565.P15324430784497534032

`record[A267562(A156678(n+1))]`
-/

namespace A267565.P15324430784497534032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A156678 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267565.P15324430784497534032

/-!
# A267566: Number of nX(n+3) arrays of permutations of n+3 copies of 0..n-1 with every element equal to or 1 greater than any west or southwest neighbors modulo n and the upper left element equal to 0.

The programs for A267566, there is no canonical definition to state claims against.
-/

/-! ## A267566.P2101437402817213386

`record[A267562(A266448(n))]`
-/

namespace A267566.P2101437402817213386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A266448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267566.P2101437402817213386

/-! ## A267566.P12111939994724356661

`A267562(A268581(n)+2)`
-/

namespace A267566.P12111939994724356661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A268581 n + 2).toNat

end

end A267566.P12111939994724356661

/-! ## A267566.P11673737973998685209

`A267562(A161532(n)+6)`
-/

namespace A267566.P11673737973998685209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A161532 n + 6).toNat

end

end A267566.P11673737973998685209

/-! ## A267566.P5479276119951078487

`A267562(eq[9, A249900(n)])`
-/

namespace A267566.P5479276119951078487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267566.P5479276119951078487

/-!
# A267567: Number of nX(n+4) arrays of permutations of n+4 copies of 0..n-1 with every element equal to or 1 greater than any west or southwest neighbors modulo n and the upper left element equal to 0.

The programs for A267567, there is no canonical definition to state claims against.
-/

/-! ## A267567.P16780562604912502276

`A267562(eq[7, A249900(n)])`
-/

namespace A267567.P16780562604912502276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267567.P16780562604912502276

/-! ## A267567.P13293702577984803474

`A267562(Δ[A143941(n+1)])`
-/

namespace A267567.P13293702577984803474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (f1 (n + 1) - f1 n).toNat

end

end A267567.P13293702577984803474

/-! ## A267567.P2520103717692317242

`A267562(A090288(n+1)+1)`
-/

namespace A267567.P2520103717692317242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A090288 (n + 1) + 1).toNat

end

end A267567.P2520103717692317242

/-!
# A267568: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any west or southwest neighbors modulo 4 and the upper left element equal to 0.

The programs for A267568, there is no canonical definition to state claims against.
-/

/-! ## A267568.P3070739259291640045

`A267562(∑[n+3]+7)`
-/

namespace A267568.P3070739259291640045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267568.P3070739259291640045

/-! ## A267568.P6886738103100737811

`A267562(A000217(n+3)+4)+char[16]`
-/

namespace A267568.P6886738103100737811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267568.P6886738103100737811

/-! ## A267568.P10159639900239150419

`A267562(A034856(n+2)+6)+char[17]`
-/

namespace A267568.P10159639900239150419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A034856 (n + 2) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267568.P10159639900239150419

/-! ## A267568.P8623432249087192437

`A007318(C(2, n))*A267562(A000217(n+3)+4)`
-/

namespace A267568.P8623432249087192437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A267562 (A000217 (n + 3) + 4).toNat

end

end A267568.P8623432249087192437

/-! ## A267568.P12143346310572303370

`A007318(C(n, 2))*A267562(A034856(n+2)+6)`
-/

namespace A267568.P12143346310572303370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A267562 (A034856 (n + 2) + 6).toNat

end

end A267568.P12143346310572303370

/-!
# A267569: Number of 5Xn arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any west or southwest neighbors modulo 5 and the upper left element equal to 0.

The programs for A267569, there is no canonical definition to state claims against.
-/

/-! ## A267569.P16280983058170985406

`A267562(A167499(n+3))`
-/

namespace A267569.P16280983058170985406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A167499 (n + 3)).toNat

end

end A267569.P16280983058170985406

/-! ## A267569.P15735882463964255217

`A267562(A155212(n)+13)`
-/

namespace A267569.P15735882463964255217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A155212 n + 13).toNat

end

end A267569.P15735882463964255217

/-! ## A267569.P10506557475558776875

`A267562(A056000(n)+15)`
-/

namespace A267569.P10506557475558776875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A056000 n + 15).toNat

end

end A267569.P10506557475558776875

/-! ## A267569.P2428999745539662110

`A267562(eq[7, A066657(n)])`
-/

namespace A267569.P2428999745539662110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267569.P2428999745539662110

/-! ## A267569.P2625081134113705683

`A267562(A166136(n+3)-1)`
-/

namespace A267569.P2625081134113705683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A166136 (n + 3) - 1).toNat

end

end A267569.P2625081134113705683

/-!
# A267570: Number of 6 X n arrays containing n copies of 0..6-1 with every element equal to or 1 greater than any west or southwest neighbors modulo 6 and the upper left element equal to 0.

The programs for A267570, there is no canonical definition to state claims against.
-/

/-! ## A267570.P5165279265320280503

`A267562(A166136(n+4))`
-/

namespace A267570.P5165279265320280503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A166136 (n + 4)).toNat

end

end A267570.P5165279265320280503

/-! ## A267570.P8741460828031547703

`A267562(A056115(n)+21)`
-/

namespace A267570.P8741460828031547703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A056115 n + 21).toNat

end

end A267570.P8741460828031547703

/-! ## A267570.P7172543303364435971

`A267562(A167499(n+4)+1)`
-/

namespace A267570.P7172543303364435971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A167499 (n + 4) + 1).toNat

end

end A267570.P7172543303364435971

/-! ## A267570.P8645738958434192946

`A267562(A167487(n+4)-1)`
-/

namespace A267570.P8645738958434192946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A167487 (n + 4) - 1).toNat

end

end A267570.P8645738958434192946

/-! ## A267570.P17894663110555645877

`A267562(A167614(n+4)+3)`
-/

namespace A267570.P17894663110555645877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A167614 (n + 4) + 3).toNat

end

end A267570.P17894663110555645877

/-!
# A267571: Number of 7Xn arrays containing n copies of 0..7-1 with every element equal to or 1 greater than any west or southwest neighbors modulo 7 and the upper left element equal to 0.

The programs for A267571, there is no canonical definition to state claims against.
-/

/-! ## A267571.P2432183889832594752

`A267562(A167487(n+5))`
-/

namespace A267571.P2432183889832594752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A167487 (n + 5)).toNat

end

end A267571.P2432183889832594752

/-! ## A267571.P6195740204118341367

`A267562(A056119(n)+28)`
-/

namespace A267571.P6195740204118341367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A056119 n + 28).toNat

end

end A267571.P6195740204118341367

/-! ## A267571.P1520521500989537631

`A267562(eq[11, A066657(n)])`
-/

namespace A267571.P1520521500989537631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267571.P1520521500989537631

/-! ## A267571.P8704906391522036532

`A267562(A166136(n+5)+1)`
-/

namespace A267571.P8704906391522036532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A166136 (n + 5) + 1).toNat

end

end A267571.P8704906391522036532

/-! ## A267571.P13218206704078967749

`A267562(A167499(n+5)+2)`
-/

namespace A267571.P13218206704078967749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (A167499 (n + 5) + 2).toNat

end

end A267571.P13218206704078967749

/-!
# A267573: a(n) = prime(n) + (prime(n) mod 4).

The programs for A267573, the canonical program `A267573.P5530432348318331570` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267573 has offset 1).

The definition of A267573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+A000040(n+1)%4` (program `A267573.P5530432348318331570`, by `A267573.P5530432348318331570.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267573.P14663366683955841848

`A000040(n+1)+A039702(n+1)`
-/

namespace A267573.P14663366683955841848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A039702 (n + 1)

end

end A267573.P14663366683955841848

namespace A267573

/-- `A000040(n+1)+A039702(n+1)` -/
def P14663366683955841848.Spec : Prop :=
  ∀ n, P14663366683955841848.a n = A267573 (n + 1)

end A267573

/-! ## A267573.P5530432348318331570

`A000040(n+1)+A000040(n+1)%4`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A267573

/-- `A000040(n+1)+A000040(n+1)%4` -/
def P5530432348318331570.Spec : Prop :=
  ∀ n, P5530432348318331570.a n = A267573 (n + 1)

theorem P5530432348318331570.correct : P5530432348318331570.Spec := by
  intro n
  simp only [A267573, Nat.add_sub_cancel]

end A267573

/-! ## A267573.P3907690350024704479

`A083220(A000040(n+1))`
-/

namespace A267573.P3907690350024704479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083220 (A000040 (n + 1)).toNat

end

end A267573.P3907690350024704479

namespace A267573

/-- `A083220(A000040(n+1))` -/
def P3907690350024704479.Spec : Prop :=
  ∀ n, P3907690350024704479.a n = A267573 (n + 1)

end A267573

/-! ## A267573.P18389896065855001239

`A076342(n+1)+2`
-/

namespace A267573.P18389896065855001239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076342 (n + 1) + 2

end

end A267573.P18389896065855001239

namespace A267573

/-- `A076342(n+1)+2` -/
def P18389896065855001239.Spec : Prop :=
  ∀ n, P18389896065855001239.a n = A267573 (n + 1)

theorem P18389896065855001239.correct : P18389896065855001239.Spec := by
  intro n
  simp only [A267573, Nat.add_sub_cancel, A267573.P18389896065855001239.a, A267573.P5530432348318331570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A076342, A076342.P17182392044292318344.a, A070750, A070750.P13196581040963341553.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267573

/-! ## A267573.P15815613069197626640

`A039702(n+1)+Δ[A007504(n)]`
-/

namespace A267573.P15815613069197626640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) + (f1 (n + 1) - f1 n)

end

end A267573.P15815613069197626640

namespace A267573

/-- `A039702(n+1)+Δ[A007504(n)]` -/
def P15815613069197626640.Spec : Prop :=
  ∀ n, P15815613069197626640.a n = A267573 (n + 1)

end A267573

/-! ## A267573.P10905499487509024203

`A075520(n+1)-A001748(n+1)`
-/

namespace A267573.P10905499487509024203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1) - A001748 (n + 1)

end

end A267573.P10905499487509024203

namespace A267573

/-- `A075520(n+1)-A001748(n+1)` -/
def P10905499487509024203.Spec : Prop :=
  ∀ n, P10905499487509024203.a n = A267573 (n + 1)

theorem P10905499487509024203.correct : P10905499487509024203.Spec := by
  intro n
  simp only [A267573, Nat.add_sub_cancel, A267573.P10905499487509024203.a, A267573.P5530432348318331570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, A075520, A075520.P6843216313764235666.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267573

/-! ## A267573.P10237416349444631934

`A052147(n+1)-A070750(n+1)`
-/

namespace A267573.P10237416349444631934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - A070750 (n + 1)

end

end A267573.P10237416349444631934

namespace A267573

/-- `A052147(n+1)-A070750(n+1)` -/
def P10237416349444631934.Spec : Prop :=
  ∀ n, P10237416349444631934.a n = A267573 (n + 1)

theorem P10237416349444631934.correct : P10237416349444631934.Spec := by
  intro n
  simp only [A267573, Nat.add_sub_cancel, A267573.P10237416349444631934.a, A267573.P5530432348318331570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, A070750, A070750.P13196581040963341553.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267573

/-! ## A267573.P14782489906600137081

`A089241(n+1)-A082542(n+1)`
-/

namespace A267573.P14782489906600137081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - A082542 (n + 1)

end

end A267573.P14782489906600137081

namespace A267573

/-- `A089241(n+1)-A082542(n+1)` -/
def P14782489906600137081.Spec : Prop :=
  ∀ n, P14782489906600137081.a n = A267573 (n + 1)

theorem P14782489906600137081.correct : P14782489906600137081.Spec := by
  intro n
  simp only [A267573, Nat.add_sub_cancel, A267573.P14782489906600137081.a, A267573.P5530432348318331570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A082542, A082542.P17184651886074543973.a, A089241, A089241.P14705987553220613803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267573

/-! ## A267573.P9826958577811354475

`A006093(n+1)+A039702(n+1)+1`
-/

namespace A267573.P9826958577811354475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A039702 (n + 1) + 1)

end

end A267573.P9826958577811354475

namespace A267573

/-- `A006093(n+1)+A039702(n+1)+1` -/
def P9826958577811354475.Spec : Prop :=
  ∀ n, P9826958577811354475.a n = A267573 (n + 1)

theorem P9826958577811354475.correct : P9826958577811354475.Spec := by
  intro n
  simp only [A267573, Nat.add_sub_cancel, A267573.P9826958577811354475.a, A267573.P5530432348318331570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267573

/-! ## A267573.P1057442916268579951

`A039702(n+1)+A040976(n+1)+2`
-/

namespace A267573.P1057442916268579951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) + (A040976 (n + 1) + 2)

end

end A267573.P1057442916268579951

namespace A267573

/-- `A039702(n+1)+A040976(n+1)+2` -/
def P1057442916268579951.Spec : Prop :=
  ∀ n, P1057442916268579951.a n = A267573 (n + 1)

theorem P1057442916268579951.correct : P1057442916268579951.Spec := by
  intro n
  simp only [A267573, Nat.add_sub_cancel, A267573.P1057442916268579951.a, A267573.P5530432348318331570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039702, A039702.P9525350324369181383.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267573

/-! ## A267573.P10197827729935026352

`A000040(n+1)+2-A070750(n+1)`
-/

namespace A267573.P10197827729935026352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (2 - A070750 (n + 1))

end

end A267573.P10197827729935026352

namespace A267573

/-- `A000040(n+1)+2-A070750(n+1)` -/
def P10197827729935026352.Spec : Prop :=
  ∀ n, P10197827729935026352.a n = A267573 (n + 1)

theorem P10197827729935026352.correct : P10197827729935026352.Spec := by
  intro n
  simp only [A267573, Nat.add_sub_cancel, A267573.P10197827729935026352.a, A267573.P5530432348318331570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070750, A070750.P13196581040963341553.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267573

/-! ## A267573.P5545417244992011650

`A039702(n+1)+A052147(n+1)-2`
-/

namespace A267573.P5545417244992011650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) + (A052147 (n + 1) - 2)

end

end A267573.P5545417244992011650

namespace A267573

/-- `A039702(n+1)+A052147(n+1)-2` -/
def P5545417244992011650.Spec : Prop :=
  ∀ n, P5545417244992011650.a n = A267573 (n + 1)

theorem P5545417244992011650.correct : P5545417244992011650.Spec := by
  intro n
  simp only [A267573, Nat.add_sub_cancel, A267573.P5545417244992011650.a, A267573.P5530432348318331570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039702, A039702.P9525350324369181383.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267573

/-! ## A267573.P304110882789025242

`A100484(n+1)+2-A082542(n+1)`
-/

namespace A267573.P304110882789025242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + (2 - A082542 (n + 1))

end

end A267573.P304110882789025242

namespace A267573

/-- `A100484(n+1)+2-A082542(n+1)` -/
def P304110882789025242.Spec : Prop :=
  ∀ n, P304110882789025242.a n = A267573 (n + 1)

theorem P304110882789025242.correct : P304110882789025242.Spec := by
  intro n
  simp only [A267573, Nat.add_sub_cancel, A267573.P304110882789025242.a, A267573.P5530432348318331570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A082542, A082542.P17184651886074543973.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267573

/-! ## A267573.P12693999481321444805

`A039702(n+1)+A100484(n+1)/2`
-/

namespace A267573.P12693999481321444805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039702 (n + 1) : ℚ) + (A100484 (n + 1) : ℚ) / 2

end

end A267573.P12693999481321444805

namespace A267573

/-- `A039702(n+1)+A100484(n+1)/2` -/
def P12693999481321444805.Spec : Prop :=
  ∀ n, P12693999481321444805.a n = (A267573 (n + 1) : ℚ)

theorem P12693999481321444805.correct : P12693999481321444805.Spec := by
  intro n
  simp only [A267573, Nat.add_sub_cancel, A267573.P12693999481321444805.a, A267573.P5530432348318331570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039702, A039702.P9525350324369181383.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267573

/-! ## A267573.P4010123816518455097

`A360323(n+1)/A006093(n+1)+2`
-/

namespace A267573.P4010123816518455097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360323 (n + 1) : ℚ) / (A006093 (n + 1) : ℚ) + 2

end

end A267573.P4010123816518455097

namespace A267573

/-- `A360323(n+1)/A006093(n+1)+2` -/
def P4010123816518455097.Spec : Prop :=
  ∀ n, P4010123816518455097.a n = (A267573 (n + 1) : ℚ)

end A267573

/-! ## A267573.P17015287880694669934

`A000040(n+1)+A075520(n+1)-A001749(n+1)`
-/

namespace A267573.P17015287880694669934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A075520 (n + 1) - A001749 (n + 1))

end

end A267573.P17015287880694669934

namespace A267573

/-- `A000040(n+1)+A075520(n+1)-A001749(n+1)` -/
def P17015287880694669934.Spec : Prop :=
  ∀ n, P17015287880694669934.a n = A267573 (n + 1)

theorem P17015287880694669934.correct : P17015287880694669934.Spec := by
  intro n
  simp only [A267573, Nat.add_sub_cancel, A267573.P17015287880694669934.a, A267573.P5530432348318331570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, A075520, A075520.P6843216313764235666.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267573

/-! ## A267573.P14726141654358958489

`A039702(n+1)+A082542(n+1)-A070750(n+1)`
-/

namespace A267573.P14726141654358958489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) + (A082542 (n + 1) - A070750 (n + 1))

end

end A267573.P14726141654358958489

namespace A267573

/-- `A039702(n+1)+A082542(n+1)-A070750(n+1)` -/
def P14726141654358958489.Spec : Prop :=
  ∀ n, P14726141654358958489.a n = A267573 (n + 1)

theorem P14726141654358958489.correct : P14726141654358958489.Spec := by
  intro n
  simp only [A267573, Nat.add_sub_cancel, A267573.P14726141654358958489.a, A267573.P5530432348318331570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039702, A039702.P9525350324369181383.a, A070750, A070750.P13196581040963341553.a, A082542, A082542.P17184651886074543973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267573

/-! ## A267573.P12443714588568071296

`A367013(A027883(n+1))+2`
-/

namespace A267573.P12443714588568071296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367013 (A027883 (n + 1)).toNat + 2

end

end A267573.P12443714588568071296

namespace A267573

/-- `A367013(A027883(n+1))+2` -/
def P12443714588568071296.Spec : Prop :=
  ∀ n, P12443714588568071296.a n = A267573 (n + 1)

end A267573

/-! ## A267573.P3933150092459799877

`A039702(n+1)+record[A006530(n+2)]`
-/

namespace A267573.P3933150092459799877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267573.P3933150092459799877

namespace A267573

/-- `A039702(n+1)+record[A006530(n+2)]` -/
def P3933150092459799877.Spec : Prop :=
  ∀ n, P3933150092459799877.a n = A267573 (n + 1)

end A267573

/-! ## A267573.P4630191091191157740

`A039702(n+1)+p?[A039698(n+1)]`
-/

namespace A267573.P4630191091191157740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267573.P4630191091191157740

namespace A267573

/-- `A039702(n+1)+p?[A039698(n+1)]` -/
def P4630191091191157740.Spec : Prop :=
  ∀ n, P4630191091191157740.a n = A267573 (n + 1)

end A267573

/-!
# A267574: Number of nontrivial prime powers p^k (k>1) less than 10^n.

The programs for A267574, there is no canonical definition to state claims against.
-/

/-! ## A267574.P195350275291768640

`∑[A303220(n+1)]`
-/

namespace A267574.P195350275291768640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267574.P195350275291768640

/-! ## A267574.P12057344416298527794

`∑[abs(Δ[A076048(n)])]`
-/

namespace A267574.P12057344416298527794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076048 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267574.P12057344416298527794

/-! ## A267574.P7891022583407092439

`A076048(n+1)-1`
-/

namespace A267574.P7891022583407092439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076048 (n + 1) - 1

end

end A267574.P7891022583407092439

/-! ## A267574.P838617934380849295

`A280193(or(1, n))+A076048(n+1)`
-/

namespace A267574.P838617934380849295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (Nat.lor 1 n) + A076048 (n + 1)

end

end A267574.P838617934380849295

/-! ## A267574.P4623866083565081440

`A280193(2*n+1)+A076048(n+1)`
-/

namespace A267574.P4623866083565081440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A076048 (n + 1)

end

end A267574.P4623866083565081440

/-!
# A267576: Triangle read by rows giving successive states of cellular automaton generated by "Rule 167" initiated with a single ON (black) cell.

The programs for A267576, the canonical program `A267576.P1331191262355786054` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267576 has offset 0).

The definition of A267576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267576.P1331191262355786054

`A267605((2*n)%(n+2))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A267576

/-- `A267605((2*n)%(n+2))` -/
def P1331191262355786054.Spec : Prop :=
  ∀ n, P1331191262355786054.a n = A267576 n

theorem P1331191262355786054.correct : P1331191262355786054.Spec := by
  intro n
  simp only [A267576]

end A267576

/-! ## A267576.P16619850029366223346

`A267605((n-2)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A267576.P16619850029366223346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A267605 (((n : ℤ) - 2) * a (n - 1)).toNat

end

end A267576.P16619850029366223346

namespace A267576

/-- `A267605((n-2)*a(n-1))` -/
def P16619850029366223346.Spec : Prop :=
  ∀ n, P16619850029366223346.a n = A267576 n

end A267576

/-! ## A267576.P12020644129092248039

`A267605(A289207(n))`
-/

namespace A267576.P12020644129092248039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (A289207 n).toNat

end

end A267576.P12020644129092248039

namespace A267576

/-- `A267605(A289207(n))` -/
def P12020644129092248039.Spec : Prop :=
  ∀ n, P12020644129092248039.a n = A267576 n

end A267576

/-! ## A267576.P11490896864983891623

`A267605(A004275(n)-n)`
-/

namespace A267576.P11490896864983891623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (A004275 n - (n : ℤ)).toNat

end

end A267576.P11490896864983891623

namespace A267576

/-- `A267605(A004275(n)-n)` -/
def P11490896864983891623.Spec : Prop :=
  ∀ n, P11490896864983891623.a n = A267576 n

end A267576

/-! ## A267576.P13807195099792388457

`A267605(A020703(n+1)-1)`
-/

namespace A267576.P13807195099792388457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (A020703 (n + 1) - 1).toNat

end

end A267576.P13807195099792388457

namespace A267576

/-- `A267605(A020703(n+1)-1)` -/
def P13807195099792388457.Spec : Prop :=
  ∀ n, P13807195099792388457.a n = A267576 n

end A267576

/-! ## A267576.P17378506366203311621

`A267605(A004280(n+1)-(n+1))`
-/

namespace A267576.P17378506366203311621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (A004280 (n + 1) - (n + 1 : ℤ)).toNat

end

end A267576.P17378506366203311621

namespace A267576

/-- `A267605(A004280(n+1)-(n+1))` -/
def P17378506366203311621.Spec : Prop :=
  ∀ n, P17378506366203311621.a n = A267576 n

end A267576

/-! ## A267576.P3625486180617119982

`A267605(n+1-3%A019567(n+1))`
-/

namespace A267576.P3625486180617119982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 ((n + 1 : ℤ) - Int.tmod 3 (A019567 (n + 1))).toNat

end

end A267576.P3625486180617119982

namespace A267576

/-- `A267605(n+1-3%A019567(n+1))` -/
def P3625486180617119982.Spec : Prop :=
  ∀ n, P3625486180617119982.a n = A267576 n

end A267576

/-! ## A267576.P17516722968241950593

`A267605(A005843(n)-A267530(A004273(n)))`
-/

namespace A267576.P17516722968241950593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (A005843 n - A267530 (A004273 n).toNat).toNat

end

end A267576.P17516722968241950593

namespace A267576

/-- `A267605(A005843(n)-A267530(A004273(n)))` -/
def P17516722968241950593.Spec : Prop :=
  ∀ n, P17516722968241950593.a n = A267576 n

end A267576

/-! ## A267576.P7788501495653159128

`A267605(A233583(n+1)-2)`
-/

namespace A267576.P7788501495653159128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (A233583 (n + 1) - 2).toNat

end

end A267576.P7788501495653159128

namespace A267576

/-- `A267605(A233583(n+1)-2)` -/
def P7788501495653159128.Spec : Prop :=
  ∀ n, P7788501495653159128.a n = A267576 n

end A267576

/-! ## A267576.P8615895359988045222

`and(1, A306607(A078446(n+1)))`
-/

namespace A267576.P8615895359988045222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A306607 (A078446 (n + 1)).toNat)

end

end A267576.P8615895359988045222

namespace A267576

/-- `and(1, A306607(A078446(n+1)))` -/
def P8615895359988045222.Spec : Prop :=
  ∀ n, P8615895359988045222.a n = A267576 n

end A267576

/-! ## A267576.P12197726298547825652

`A267605(A003987(A167614(n+1)))`
-/

namespace A267576.P12197726298547825652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (A003987 (A167614 (n + 1)).toNat).toNat

end

end A267576.P12197726298547825652

namespace A267576

/-- `A267605(A003987(A167614(n+1)))` -/
def P12197726298547825652.Spec : Prop :=
  ∀ n, P12197726298547825652.a n = A267576 n

end A267576

/-!
# A267577: Binary representation of the n-th iteration of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267577, there is no canonical definition to state claims against.
-/

/-! ## A267577.P15705604081738787805

`A007088(A267578(n))`
-/

namespace A267577.P15705604081738787805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267578 n).toNat

end

end A267577.P15705604081738787805

/-! ## A267577.P2062953450732607647

`A185544(2*A267578(n))`
-/

namespace A267577.P2062953450732607647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267578 n).toNat

end

end A267577.P2062953450732607647

/-!
# A267578: Decimal representation of the n-th iteration of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267578, there is no canonical definition to state claims against.
-/

/-! ## A267578.P12794447058545070258

`record[A059990(n+2)-A100745(n)]`
-/

namespace A267578.P12794447058545070258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059990 (n + 2) - A100745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267578.P12794447058545070258

/-! ## A267578.P15454811325231309740

`A341916(A234613(4^n))`
-/

namespace A267578.P15454811325231309740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A234613 (4 ^ n)).toNat

end

end A267578.P15454811325231309740

/-!
# A267579: Middle column of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267579, the canonical program `A267579.P16785665873315857385` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267579 has offset 0).

The definition of A267579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267579.P7851710349639032958

`char[comp[∏[gcd(2, n)]]]`
-/

namespace A267579.P7851710349639032958
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267579.P7851710349639032958

namespace A267579

/-- `char[comp[∏[gcd(2, n)]]]` -/
def P7851710349639032958.Spec : Prop :=
  ∀ n, (P7851710349639032958.a n : ℤ) = A267579 n

end A267579

/-! ## A267579.P10634847122805595394

`char[comp[2^(n+1)]]`
-/

namespace A267579.P10634847122805595394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267579.P10634847122805595394

namespace A267579

/-- `char[comp[2^(n+1)]]` -/
def P10634847122805595394.Spec : Prop :=
  ∀ n, (P10634847122805595394.a n : ℤ) = A267579 n

end A267579

/-! ## A267579.P16785665873315857385

`a(∑[n]%n)` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267579

/-- `a(∑[n]%n)` -/
def P16785665873315857385.Spec : Prop :=
  ∀ n, (P16785665873315857385.a n : ℤ) = A267579 n

theorem P16785665873315857385.correct : P16785665873315857385.Spec := by
  intro n
  simp only [A267579]

end A267579

/-! ## A267579.P17684368129298864876

`xor(1, char[2^(n+1)])`
-/

namespace A267579.P17684368129298864876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A267579.P17684368129298864876

namespace A267579

/-- `xor(1, char[2^(n+1)])` -/
def P17684368129298864876.Spec : Prop :=
  ∀ n, (P17684368129298864876.a n : ℤ) = A267579 n

end A267579

/-! ## A267579.P7620915048943856450

`(1-C(2, ∏{p}[n, #]))²`
-/

namespace A267579.P7620915048943856450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)) ^ 2

end

end A267579.P7620915048943856450

namespace A267579

/-- `(1-C(2, ∏{p}[n, #]))²` -/
def P7620915048943856450.Spec : Prop :=
  ∀ n, P7620915048943856450.a n = A267579 n

end A267579

/-! ## A267579.P2908324075275687785

`floor(cos(char[2^(n+1)]))`
-/

namespace A267579.P2908324075275687785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A267579.P2908324075275687785

namespace A267579

/-- `floor(cos(char[2^(n+1)]))` -/
def P2908324075275687785.Spec : Prop :=
  ∀ n, P2908324075275687785.a n = A267579 n

end A267579

/-! ## A267579.P2877497384756044641

`floor(acos(char[2^(n+1)]))`
-/

namespace A267579.P2877497384756044641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A267579.P2877497384756044641

namespace A267579

/-- `floor(acos(char[2^(n+1)]))` -/
def P2877497384756044641.Spec : Prop :=
  ∀ n, P2877497384756044641.a n = A267579 n

end A267579

/-! ## A267579.P18058603244261036175

`floor(acot(char[2^(n+1)]))`
-/

namespace A267579.P18058603244261036175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A267579.P18058603244261036175

namespace A267579

/-- `floor(acot(char[2^(n+1)]))` -/
def P18058603244261036175.Spec : Prop :=
  ∀ n, P18058603244261036175.a n = A267579 n

end A267579

/-! ## A267579.P14010459787114390542

`sin(acos(char[2^(n+1)]))`
-/

namespace A267579.P14010459787114390542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A267579.P14010459787114390542

namespace A267579

/-- `sin(acos(char[2^(n+1)]))` -/
def P14010459787114390542.Spec : Prop :=
  ∀ n, P14010459787114390542.a n = (A267579 n : ℝ)

end A267579

/-! ## A267579.P12284963046046344061

`cos(asin(char[2^(n+1)]))`
-/

namespace A267579.P12284963046046344061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A267579.P12284963046046344061

namespace A267579

/-- `cos(asin(char[2^(n+1)]))` -/
def P12284963046046344061.Spec : Prop :=
  ∀ n, P12284963046046344061.a n = (A267579 n : ℝ)

end A267579

/-! ## A267579.P7353515765591879769

`dr(1-char[2^(n+1)])`
-/

namespace A267579.P7353515765591879769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A267579.P7353515765591879769

namespace A267579

/-- `dr(1-char[2^(n+1)])` -/
def P7353515765591879769.Spec : Prop :=
  ∀ n, (P7353515765591879769.a n : ℤ) = A267579 n

end A267579

/-! ## A267579.P3081643645785705698

`(char[2^(n+1)]+1)%2`
-/

namespace A267579.P3081643645785705698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) % 2

end

end A267579.P3081643645785705698

namespace A267579

/-- `(char[2^(n+1)]+1)%2` -/
def P3081643645785705698.Spec : Prop :=
  ∀ n, (P3081643645785705698.a n : ℤ) = A267579 n

end A267579

/-! ## A267579.P7799159093352957013

`val(char[2^(n+1)]+2, 2)`
-/

namespace A267579.P7799159093352957013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((if ∃ j, f1 j = n then 1 else 0) + 2) 2

end

end A267579.P7799159093352957013

namespace A267579

/-- `val(char[2^(n+1)]+2, 2)` -/
def P7799159093352957013.Spec : Prop :=
  ∀ n, (P7799159093352957013.a n : ℤ) = A267579 n

end A267579

/-! ## A267579.P16246038477612436992

`and(1, char[2^(n+1)]+1)`
-/

namespace A267579.P16246038477612436992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A267579.P16246038477612436992

namespace A267579

/-- `and(1, char[2^(n+1)]+1)` -/
def P16246038477612436992.Spec : Prop :=
  ∀ n, (P16246038477612436992.a n : ℤ) = A267579 n

end A267579

/-! ## A267579.P15532073723837975773

`C(2, char[2^(n+1)]+2)`
-/

namespace A267579.P15532073723837975773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((if ∃ j, f1 j = n then 1 else 0) + 2)

end

end A267579.P15532073723837975773

namespace A267579

/-- `C(2, char[2^(n+1)]+2)` -/
def P15532073723837975773.Spec : Prop :=
  ∀ n, (P15532073723837975773.a n : ℤ) = A267579 n

end A267579

/-! ## A267579.P9816501900135238456

`1-char[2*a(n-1)]` with `a(0)=2`
-/

namespace A267579.P9816501900135238456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267579.P9816501900135238456

namespace A267579

/-- `1-char[2*a(n-1)]` -/
def P9816501900135238456.Spec : Prop :=
  ∀ n, P9816501900135238456.a n = A267579 n

end A267579

/-! ## A267579.P1094262429910208460

`3-or(2, char[2^(n+1)])`
-/

namespace A267579.P1094262429910208460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.lor 2 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A267579.P1094262429910208460

namespace A267579

/-- `3-or(2, char[2^(n+1)])` -/
def P1094262429910208460.Spec : Prop :=
  ∀ n, P1094262429910208460.a n = A267579 n

end A267579

/-! ## A267579.P15430843207582016621

`round((and(n, n-1)+1)/(n+1))`
-/

namespace A267579.P15430843207582016621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (n : ℤ) ((n : ℤ) - 1) + 1 : ℚ) / (n + 1 : ℚ))

end

end A267579.P15430843207582016621

namespace A267579

/-- `round((and(n, n-1)+1)/(n+1))` -/
def P15430843207582016621.Spec : Prop :=
  ∀ n, P15430843207582016621.a n = A267579 n

end A267579

/-! ## A267579.P4511984393512841654

`a(C(2, and(n+1, n-1)))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A267579.P4511984393512841654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (Nat.choose 2 (Int.land (n + 1 : ℤ) ((n : ℤ) - 1)).toNat)

end

end A267579.P4511984393512841654

namespace A267579

/-- `a(C(2, and(n+1, n-1)))` -/
def P4511984393512841654.Spec : Prop :=
  ∀ n, (P4511984393512841654.a n : ℤ) = A267579 n

end A267579

/-! ## A267579.P18400325098902726290

`a(∑[1-a(n-2)]-1)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A267579.P18400325098902726290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  1 - f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A267579.P18400325098902726290

namespace A267579

/-- `a(∑[1-a(n-2)]-1)` -/
def P18400325098902726290.Spec : Prop :=
  ∀ n, (P18400325098902726290.a n : ℤ) = A267579 n

end A267579

/-!
# A267580: Binary representation of the middle column of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267580, the canonical program `A267580.P12480041897936984409` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267580 has offset 0).

The definition of A267580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267580.P12480041897936984409

`xor(10*a(n-1), A267579(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A267580

/-- `xor(10*a(n-1), A267579(n))` -/
def P12480041897936984409.Spec : Prop :=
  ∀ n, P12480041897936984409.a n = A267580 n

theorem P12480041897936984409.correct : P12480041897936984409.Spec := by
  intro n
  simp only [A267580]

end A267580

/-! ## A267580.P9346257003178228161

`A267442(n-1)+10*a(n-1)` with `a(0)=1`
-/

namespace A267580.P9346257003178228161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267442 (n - 1) + 10 * a (n - 1)

end

end A267580.P9346257003178228161

namespace A267580

/-- `A267442(n-1)+10*a(n-1)` -/
def P9346257003178228161.Spec : Prop :=
  ∀ n, P9346257003178228161.a n = A267580 n

end A267580

/-! ## A267580.P15173271584032975339

`and(1, A014963(n))+10*a(n-1)` with `a(0)=1`
-/

namespace A267580.P15173271584032975339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A014963 n) + 10 * a (n - 1)

end

end A267580.P15173271584032975339

namespace A267580

/-- `and(1, A014963(n))+10*a(n-1)` -/
def P15173271584032975339.Spec : Prop :=
  ∀ n, P15173271584032975339.a n = A267580 n

end A267580

/-! ## A267580.P15940436992144576838

`xor(10*a(n-1), A043545(A014681(n)))` with `a(0)=1`
-/

namespace A267580.P15940436992144576838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A043545 (A014681 n).toNat)

end

end A267580.P15940436992144576838

namespace A267580

/-- `xor(10*a(n-1), A043545(A014681(n)))` -/
def P15940436992144576838.Spec : Prop :=
  ∀ n, P15940436992144576838.a n = A267580 n

end A267580

/-! ## A267580.P4055971997442992414

`A007088(A267581(n))`
-/

namespace A267580.P4055971997442992414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267581 n).toNat

end

end A267580.P4055971997442992414

namespace A267580

/-- `A007088(A267581(n))` -/
def P4055971997442992414.Spec : Prop :=
  ∀ n, P4055971997442992414.a n = A267580 n

end A267580

/-!
# A267581: Decimal representation of the middle column of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267581, the canonical program `A267581.P10230663619374770058` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267581 has offset 0).

The definition of A267581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267581.P10230663619374770058

`A267579(n)+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A267581

/-- `A267579(n)+2*a(n-1)` -/
def P10230663619374770058.Spec : Prop :=
  ∀ n, P10230663619374770058.a n = A267581 n

theorem P10230663619374770058.correct : P10230663619374770058.Spec := by
  intro n
  simp only [A267581]

end A267581

/-! ## A267581.P6916753374545460905

`and(1, A006530(n))+2*a(n-1)` with `a(0)=1`
-/

namespace A267581.P6916753374545460905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A006530 n) + 2 * a (n - 1)

end

end A267581.P6916753374545460905

namespace A267581

/-- `and(1, A006530(n))+2*a(n-1)` -/
def P6916753374545460905.Spec : Prop :=
  ∀ n, P6916753374545460905.a n = A267581 n

end A267581

/-! ## A267581.P4323876757763397753

`and(1, A014963(n))+2*a(n-1)` with `a(0)=1`
-/

namespace A267581.P4323876757763397753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A014963 n) + 2 * a (n - 1)

end

end A267581.P4323876757763397753

namespace A267581

/-- `and(1, A014963(n))+2*a(n-1)` -/
def P4323876757763397753.Spec : Prop :=
  ∀ n, P4323876757763397753.a n = A267581 n

end A267581

/-! ## A267581.P9694414380606523016

`or(2*a(n-1), A060176(A071044(n)+1))` with `a(0)=1`
-/

namespace A267581.P9694414380606523016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A060176 (A071044 n + 1).toNat)

end

end A267581.P9694414380606523016

namespace A267581

/-- `or(2*a(n-1), A060176(A071044(n)+1))` -/
def P9694414380606523016.Spec : Prop :=
  ∀ n, P9694414380606523016.a n = A267581 n

end A267581

/-! ## A267581.P16086833032347995566

`A036987(A048298(n))+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A267581.P16086833032347995566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036987 (A048298 n).toNat + (a (n - 1) + a (n - 1))

end

end A267581.P16086833032347995566

namespace A267581

/-- `A036987(A048298(n))+a(n-1)+a(n-1)` -/
def P16086833032347995566.Spec : Prop :=
  ∀ n, P16086833032347995566.a n = A267581 n

end A267581

/-!
# A267582: Number of ON (black) cells in the n-th iteration of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267582, the canonical program `A267582.P17996107973821825514` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267582 has offset 0).

The definition of A267582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267582.P17996107973821825514

`A048967(floor(n²/(n+1)))+n+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A267582

/-- `A048967(floor(n²/(n+1)))+n+1` -/
def P17996107973821825514.Spec : Prop :=
  ∀ n, P17996107973821825514.a n = A267582 n

theorem P17996107973821825514.correct : P17996107973821825514.Spec := by
  intro n
  simp only [A267582]

end A267582

/-! ## A267582.P13664991380931088577

`A249304(n)+A001316(n)`
-/

namespace A267582.P13664991380931088577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249304 n + A001316 n

end

end A267582.P13664991380931088577

namespace A267582

/-- `A249304(n)+A001316(n)` -/
def P13664991380931088577.Spec : Prop :=
  ∀ n, P13664991380931088577.a n = A267582 n

theorem P13664991380931088577.correct : P13664991380931088577.Spec := by
  intro n
  simp only [A267582, Nat.add_sub_cancel, A267582.P13664991380931088577.a, A267582.P17996107973821825514.a, A001316, A001316.P6850078358198232129.a, A048967, A048967.P3595347913858362397.a, A249304, A249304.P12237902609778404011.a, A000120, A000120.P2816527436160941581.a, A219843, A219843.P18379057056590791838.a, A000225, A000225.P6535533121115206393.a, A001317, A001317.P8261653114070389448.a, A005187, A005187.P3874015513960485494.a, A048724, A048724.P638821554898421701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A267582

/-! ## A267582.P3883300076494368985

`A261366(A028310(n))+n`
-/

namespace A267582.P3883300076494368985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 (A028310 n).toNat + (n : ℤ)

end

end A267582.P3883300076494368985

namespace A267582

/-- `A261366(A028310(n))+n` -/
def P3883300076494368985.Spec : Prop :=
  ∀ n, P3883300076494368985.a n = A267582 n

end A267582

/-! ## A267582.P4532757329165498191

`A261366(A000007(n)+n)+n`
-/

namespace A267582.P4532757329165498191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 (A000007 n + (n : ℤ)).toNat + (n : ℤ)

end

end A267582.P4532757329165498191

namespace A267582

/-- `A261366(A000007(n)+n)+n` -/
def P4532757329165498191.Spec : Prop :=
  ∀ n, P4532757329165498191.a n = A267582 n

end A267582

/-! ## A267582.P13517851423387901110

`A001316(n)+Δ[n²-A173522(n)]`
-/

namespace A267582.P13517851423387901110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A173522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + (f1 (n + 1) - f1 n)

end

end A267582.P13517851423387901110

namespace A267582

/-- `A001316(n)+Δ[n²-A173522(n)]` -/
def P13517851423387901110.Spec : Prop :=
  ∀ n, P13517851423387901110.a n = A267582 n

end A267582

/-! ## A267582.P15112192180347788283

`2*n+A001316(n)-A105321(n)+1`
-/

namespace A267582.P15112192180347788283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A001316 n - A105321 n + 1)

end

end A267582.P15112192180347788283

namespace A267582

/-- `2*n+A001316(n)-A105321(n)+1` -/
def P15112192180347788283.Spec : Prop :=
  ∀ n, P15112192180347788283.a n = A267582 n

theorem P15112192180347788283.correct : P15112192180347788283.Spec := by
  intro n
  simp only [A267582, Nat.add_sub_cancel, A267582.P15112192180347788283.a, A267582.P17996107973821825514.a, A001316, A001316.P6850078358198232129.a, A048967, A048967.P3595347913858362397.a, A105321, A105321.P8001804258587492463.f1, A105321.P8001804258587492463.a, A000120, A000120.P2816527436160941581.a, A219843, A219843.P18379057056590791838.a, A249304, A249304.P12237902609778404011.a, A000225, A000225.P6535533121115206393.a, A001317, A001317.P8261653114070389448.a, A005187, A005187.P3874015513960485494.a, A048724, A048724.P638821554898421701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A267582

/-! ## A267582.P14829757160928430468

`round((2-A001316(record[A006257(n)]))/2)+2*n`
-/

namespace A267582.P14829757160928430468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 - A001316 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2) + (2 * n : ℤ)

end

end A267582.P14829757160928430468

namespace A267582

/-- `round((2-A001316(record[A006257(n)]))/2)+2*n` -/
def P14829757160928430468.Spec : Prop :=
  ∀ n, P14829757160928430468.a n = A267582 n

end A267582

/-! ## A267582.P12714432786374475045

`2*n+1-A004526(A131136(n))`
-/

namespace A267582.P12714432786374475045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A004526 (A131136 n).toNat

end

end A267582.P12714432786374475045

namespace A267582

/-- `2*n+1-A004526(A131136(n))` -/
def P12714432786374475045.Spec : Prop :=
  ∀ n, P12714432786374475045.a n = A267582 n

end A267582

/-! ## A267582.P1518399088304881020

`Δ[n²]-sqrt(A177241(n))`
-/

namespace A267582.P1518399088304881020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) - Real.sqrt (A177241 n : ℝ)

end

end A267582.P1518399088304881020

namespace A267582

/-- `Δ[n²]-sqrt(A177241(n))` -/
def P1518399088304881020.Spec : Prop :=
  ∀ n, P1518399088304881020.a n = (A267582 n : ℝ)

end A267582

/-! ## A267582.P8498401339542809008

`A065033(A261366(2*n))+n`
-/

namespace A267582.P8498401339542809008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A261366 (2 * n)).toNat + (n : ℤ)

end

end A267582.P8498401339542809008

namespace A267582

/-- `A065033(A261366(2*n))+n` -/
def P8498401339542809008.Spec : Prop :=
  ∀ n, P8498401339542809008.a n = A267582 n

end A267582

/-! ## A267582.P13093112051412467037

`A109613(2*n)-A029578(A131136(n))`
-/

namespace A267582.P13093112051412467037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * n) - A029578 (A131136 n).toNat

end

end A267582.P13093112051412467037

namespace A267582

/-- `A109613(2*n)-A029578(A131136(n))` -/
def P13093112051412467037.Spec : Prop :=
  ∀ n, P13093112051412467037.a n = A267582 n

end A267582

/-!
# A267583: Total number of ON (black) cells after n iterations of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267583, the canonical program `A267583.P8325400885467834765` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267583 has offset 0).

The definition of A267583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267583.P8325400885467834765

`∑[A267582(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A267583

/-- `∑[A267582(n)]` -/
def P8325400885467834765.Spec : Prop :=
  ∀ n, P8325400885467834765.a n = A267583 n

theorem P8325400885467834765.correct : P8325400885467834765.Spec := by
  intro n
  simp only [A267583]

end A267583

/-! ## A267583.P13905151172096424163

`(n+1)²-A006046(n)`
-/

namespace A267583.P13905151172096424163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A006046 n

end

end A267583.P13905151172096424163

namespace A267583

/-- `(n+1)²-A006046(n)` -/
def P13905151172096424163.Spec : Prop :=
  ∀ n, P13905151172096424163.a n = A267583 n

end A267583

/-! ## A267583.P15068303483657777758

`∑[A261366(n)+n]+1`
-/

namespace A267583.P15068303483657777758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267583.P15068303483657777758

namespace A267583

/-- `∑[A261366(n)+n]+1` -/
def P15068303483657777758.Spec : Prop :=
  ∀ n, P15068303483657777758.a n = A267583 n

end A267583

/-! ## A267583.P3467738517104429013

`∑[2*n+1-A001316(abs(1-n))]+2`
-/

namespace A267583.P3467738517104429013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A001316 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A267583.P3467738517104429013

namespace A267583

/-- `∑[2*n+1-A001316(abs(1-n))]+2` -/
def P3467738517104429013.Spec : Prop :=
  ∀ n, P3467738517104429013.a n = A267583 n

end A267583

/-! ## A267583.P8147136291081928663

`A171378(n)+A001316(n)`
-/

namespace A267583.P8147136291081928663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171378 n + A001316 n

end

end A267583.P8147136291081928663

namespace A267583

/-- `A171378(n)+A001316(n)` -/
def P8147136291081928663.Spec : Prop :=
  ∀ n, P8147136291081928663.a n = A267583 n

end A267583

/-! ## A267583.P15544942609994554358

`A262867(n)+A038573(n)`
-/

namespace A267583.P15544942609994554358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262867 n + A038573 n

end

end A267583.P15544942609994554358

namespace A267583

/-- `A262867(n)+A038573(n)` -/
def P15544942609994554358.Spec : Prop :=
  ∀ n, P15544942609994554358.a n = A267583 n

end A267583

/-! ## A267583.P14719314982958021049

`∑[A249304(n)+A001316(n)]`
-/

namespace A267583.P14719314982958021049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249304 n + A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267583.P14719314982958021049

namespace A267583

/-- `∑[A249304(n)+A001316(n)]` -/
def P14719314982958021049.Spec : Prop :=
  ∀ n, P14719314982958021049.a n = A267583 n

theorem P14719314982958021049.correct : P14719314982958021049.Spec := by
  intro n
  simp only [A267583, Nat.add_sub_cancel, A267583.P14719314982958021049.f1, A267583.P14719314982958021049.a, A267583.P8325400885467834765.f1, A267583.P8325400885467834765.a, A001316, A001316.P6850078358198232129.a, A249304, A249304.P12237902609778404011.a, A267582, A267582.P17996107973821825514.a, A000120, A000120.P2816527436160941581.a, A048967, A048967.P3595347913858362397.a, A005187, A005187.P3874015513960485494.a, A219843, A219843.P18379057056590791838.a, A000225, A000225.P6535533121115206393.a, A001317, A001317.P8261653114070389448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A267583

/-! ## A267583.P2936260387965003658

`A001316(n)+∑[A048967(n)+n]`
-/

namespace A267583.P2936260387965003658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267583.P2936260387965003658

namespace A267583

/-- `A001316(n)+∑[A048967(n)+n]` -/
def P2936260387965003658.Spec : Prop :=
  ∀ n, P2936260387965003658.a n = A267583 n

end A267583

/-! ## A267583.P8350511624141291380

`∑[n]+A051679(n)+A001316(n)`
-/

namespace A267583.P8350511624141291380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A051679 n + A001316 n)

end

end A267583.P8350511624141291380

namespace A267583

/-- `∑[n]+A051679(n)+A001316(n)` -/
def P8350511624141291380.Spec : Prop :=
  ∀ n, P8350511624141291380.a n = A267583 n

end A267583

/-! ## A267583.P6892046363142359887

`∑[A004277(n)]+n-A006046(n)`
-/

namespace A267583.P6892046363142359887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A006046 n)

end

end A267583.P6892046363142359887

namespace A267583

/-- `∑[A004277(n)]+n-A006046(n)` -/
def P6892046363142359887.Spec : Prop :=
  ∀ n, P6892046363142359887.a n = A267583 n

end A267583

/-! ## A267583.P2090555422857710928

`(n+1)²-(∑[2^A000120(n)]-2^A000120(n))`
-/

namespace A267583.P2090555422857710928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) - (∑ j ∈ Finset.range (n + 1), f1 j - (2 : ℚ) ^ (A000120 n : ℤ))

end

end A267583.P2090555422857710928

namespace A267583

/-- `(n+1)²-(∑[2^A000120(n)]-2^A000120(n))` -/
def P2090555422857710928.Spec : Prop :=
  ∀ n, P2090555422857710928.a n = (A267583 n : ℚ)

end A267583

/-! ## A267583.P2786956657787821946

`A171378(n)+A000079(A000120(n))`
-/

namespace A267583.P2786956657787821946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171378 n + A000079 (A000120 n).toNat

end

end A267583.P2786956657787821946

namespace A267583

/-- `A171378(n)+A000079(A000120(n))` -/
def P2786956657787821946.Spec : Prop :=
  ∀ n, P2786956657787821946.a n = A267583 n

end A267583

/-! ## A267583.P11440643960595241369

`A000217(n+1)+A000217(n)-A006046(n)`
-/

namespace A267583.P11440643960595241369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A006046 n)

end

end A267583.P11440643960595241369

namespace A267583

/-- `A000217(n+1)+A000217(n)-A006046(n)` -/
def P11440643960595241369.Spec : Prop :=
  ∀ n, P11440643960595241369.a n = A267583 n

end A267583

/-! ## A267583.P12566890832402250164

`A006046(n+1)+A171378(n)-A006046(n)`
-/

namespace A267583.P12566890832402250164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (n + 1) + (A171378 n - A006046 n)

end

end A267583.P12566890832402250164

namespace A267583

/-- `A006046(n+1)+A171378(n)-A006046(n)` -/
def P12566890832402250164.Spec : Prop :=
  ∀ n, P12566890832402250164.a n = A267583 n

end A267583

/-! ## A267583.P15189028301856264082

`A171378(n+1)-(A048967(n+1)+A048967(n))`
-/

namespace A267583.P15189028301856264082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171378 (n + 1) - (A048967 (n + 1) + A048967 n)

end

end A267583.P15189028301856264082

namespace A267583

/-- `A171378(n+1)-(A048967(n+1)+A048967(n))` -/
def P15189028301856264082.Spec : Prop :=
  ∀ n, P15189028301856264082.a n = A267583 n

end A267583

/-! ## A267583.P10831060876555915079

`(n+1)²-(∑[2^(n-A011371(n))]-2^A001222(A278222(n)))`
-/

namespace A267583.P10831060876555915079
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A011371 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) - (∑ j ∈ Finset.range (n + 1), f1 j - (2 : ℚ) ^ (A001222 (A278222 n).toNat : ℤ))

end

end A267583.P10831060876555915079

namespace A267583

/-- `(n+1)²-(∑[2^(n-A011371(n))]-2^A001222(A278222(n)))` -/
def P10831060876555915079.Spec : Prop :=
  ∀ n, P10831060876555915079.a n = (A267583 n : ℚ)

end A267583

/-! ## A267583.P10956452344075584240

`(n+1)²-A151842(A151788(n+1)-A151787(n+1))`
-/

namespace A267583.P10956452344075584240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A151842 (A151788 (n + 1) - A151787 (n + 1)).toNat

end

end A267583.P10956452344075584240

namespace A267583

/-- `(n+1)²-A151842(A151788(n+1)-A151787(n+1))` -/
def P10956452344075584240.Spec : Prop :=
  ∀ n, P10956452344075584240.a n = A267583 n

end A267583

/-! ## A267583.P14858237827379135698

`(n+1)²-A223542(∑[n])`
-/

namespace A267583.P14858237827379135698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A223542 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267583.P14858237827379135698

namespace A267583

/-- `(n+1)²-A223542(∑[n])` -/
def P14858237827379135698.Spec : Prop :=
  ∀ n, P14858237827379135698.a n = A267583 n

end A267583

/-!
# A267584: a(0)=1; thereafter a(n) = 2^(1 + number of zeros in binary expansion of n).

The programs for A267584, the canonical program `A267584.P3421928934168092371` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267584 has offset 0).

The definition of A267584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267584.P3421928934168092371

`gcd(2, n)*a(floor(n/2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267584

/-- `gcd(2, n)*a(floor(n/2))` -/
def P3421928934168092371.Spec : Prop :=
  ∀ n, (P3421928934168092371.a n : ℤ) = A267584 n

theorem P3421928934168092371.correct : P3421928934168092371.Spec := by
  intro n
  simp only [A267584]

end A267584

/-! ## A267584.P7392192276434947229

`2^A290251(n)`
-/

namespace A267584.P7392192276434947229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A290251 n : ℤ)

end

end A267584.P7392192276434947229

namespace A267584

/-- `2^A290251(n)` -/
def P7392192276434947229.Spec : Prop :=
  ∀ n, P7392192276434947229.a n = (A267584 n : ℚ)

end A267584

/-! ## A267584.P3942149659822699430

`2*a(A025480(n))` with `a(0)=1`
-/

namespace A267584.P3942149659822699430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (A025480 n).toNat

end

end A267584.P3942149659822699430

namespace A267584

/-- `2*a(A025480(n))` -/
def P3942149659822699430.Spec : Prop :=
  ∀ n, (P3942149659822699430.a n : ℤ) = A267584 n

end A267584

/-! ## A267584.P6659753491032946390

`Δ[n²-A080572(n)]`
-/

namespace A267584.P6659753491032946390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A080572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267584.P6659753491032946390

namespace A267584

/-- `Δ[n²-A080572(n)]` -/
def P6659753491032946390.Spec : Prop :=
  ∀ n, P6659753491032946390.a n = A267584 n

end A267584

/-! ## A267584.P9367991281478287867

`2*a(A030109(n+1))` with `a(0)=1`
-/

namespace A267584.P9367991281478287867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (A030109 (n + 1)).toNat

end

end A267584.P9367991281478287867

namespace A267584

/-- `2*a(A030109(n+1))` -/
def P9367991281478287867.Spec : Prop :=
  ∀ n, (P9367991281478287867.a n : ℤ) = A267584 n

end A267584

/-! ## A267584.P1842161514589611382

`2*a(A003602(n+1)-1)` with `a(0)=1`
-/

namespace A267584.P1842161514589611382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (A003602 (n + 1) - 1).toNat

end

end A267584.P1842161514589611382

namespace A267584

/-- `2*a(A003602(n+1)-1)` -/
def P1842161514589611382.Spec : Prop :=
  ∀ n, (P1842161514589611382.a n : ℤ) = A267584 n

end A267584

/-! ## A267584.P1718340623911100496

`2*a(A049773(n+1)-1)` with `a(0)=1`
-/

namespace A267584.P1718340623911100496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (A049773 (n + 1) - 1).toNat

end

end A267584.P1718340623911100496

namespace A267584

/-- `2*a(A049773(n+1)-1)` -/
def P1718340623911100496.Spec : Prop :=
  ∀ n, (P1718340623911100496.a n : ℤ) = A267584 n

end A267584

/-! ## A267584.P17394003182479086571

`A005843(a(floor(n/(xor(n, n+1)+1))))` with `a(0)=1`
-/

namespace A267584.P17394003182479086571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (a ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat).toNat

end

end A267584.P17394003182479086571

namespace A267584

/-- `A005843(a(floor(n/(xor(n, n+1)+1))))` -/
def P17394003182479086571.Spec : Prop :=
  ∀ n, P17394003182479086571.a n = A267584 n

end A267584

/-! ## A267584.P9191970571699574899

`A001316(A261693(n))`
-/

namespace A267584.P9191970571699574899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A261693 n).toNat

end

end A267584.P9191970571699574899

namespace A267584

/-- `A001316(A261693(n))` -/
def P9191970571699574899.Spec : Prop :=
  ∀ n, P9191970571699574899.a n = A267584 n

end A267584

/-! ## A267584.P18385963099325246950

`A000079(A290251(n))`
-/

namespace A267584.P18385963099325246950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A290251 n).toNat

end

end A267584.P18385963099325246950

namespace A267584

/-- `A000079(A290251(n))` -/
def P18385963099325246950.Spec : Prop :=
  ∀ n, P18385963099325246950.a n = A267584 n

end A267584

/-! ## A267584.P16609934614136314604

`A278531(A073137(n))`
-/

namespace A267584.P16609934614136314604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A073137 n).toNat

end

end A267584.P16609934614136314604

namespace A267584

/-- `A278531(A073137(n))` -/
def P16609934614136314604.Spec : Prop :=
  ∀ n, P16609934614136314604.a n = A267584 n

end A267584

/-! ## A267584.P16945979687591920449

`A060632(A345401(n))`
-/

namespace A267584.P16945979687591920449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A345401 n).toNat

end

end A267584.P16945979687591920449

namespace A267584

/-- `A060632(A345401(n))` -/
def P16945979687591920449.Spec : Prop :=
  ∀ n, P16945979687591920449.a n = A267584 n

end A267584

/-! ## A267584.P2879933531761438888

`A011782(A290251(n)+1)`
-/

namespace A267584.P2879933531761438888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A290251 n + 1).toNat

end

end A267584.P2879933531761438888

namespace A267584

/-- `A011782(A290251(n)+1)` -/
def P2879933531761438888.Spec : Prop :=
  ∀ n, P2879933531761438888.a n = A267584 n

end A267584

/-! ## A267584.P11304257307015767444

`A011782(A290251(2*n))`
-/

namespace A267584.P11304257307015767444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A290251 (2 * n)).toNat

end

end A267584.P11304257307015767444

namespace A267584

/-- `A011782(A290251(2*n))` -/
def P11304257307015767444.Spec : Prop :=
  ∀ n, P11304257307015767444.a n = A267584 n

end A267584

/-! ## A267584.P14661784695338281516

`A004277(a(A025480(n)))` with `a(0)=1`
-/

namespace A267584.P14661784695338281516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004277 (a (A025480 n).toNat).toNat

end

end A267584.P14661784695338281516

namespace A267584

/-- `A004277(a(A025480(n)))` -/
def P14661784695338281516.Spec : Prop :=
  ∀ n, P14661784695338281516.a n = A267584 n

end A267584

/-! ## A267584.P14665261565898808105

`A163511(a(A025480(n)))` with `a(0)=1`
-/

namespace A267584.P14665261565898808105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163511 (a (A025480 n).toNat).toNat

end

end A267584.P14665261565898808105

namespace A267584

/-- `A163511(a(A025480(n)))` -/
def P14665261565898808105.Spec : Prop :=
  ∀ n, P14665261565898808105.a n = A267584 n

end A267584

/-! ## A267584.P8253726215718107490

`A001316(2*n-A006257(2*n))`
-/

namespace A267584.P8253726215718107490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ((2 * n : ℤ) - A006257 (2 * n)).toNat

end

end A267584.P8253726215718107490

namespace A267584

/-- `A001316(2*n-A006257(2*n))` -/
def P8253726215718107490.Spec : Prop :=
  ∀ n, P8253726215718107490.a n = A267584 n

end A267584

/-! ## A267584.P6068780492519309878

`A080100(n)+A080100(n)-A036987(A001316(n))`
-/

namespace A267584.P6068780492519309878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n + (A080100 n - A036987 (A001316 n).toNat)

end

end A267584.P6068780492519309878

namespace A267584

/-- `A080100(n)+A080100(n)-A036987(A001316(n))` -/
def P6068780492519309878.Spec : Prop :=
  ∀ n, P6068780492519309878.a n = A267584 n

end A267584

/-! ## A267584.P14856824180495999868

`A278533(A073138(n))`
-/

namespace A267584.P14856824180495999868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278533 (A073138 n).toNat

end

end A267584.P14856824180495999868

namespace A267584

/-- `A278533(A073138(n))` -/
def P14856824180495999868.Spec : Prop :=
  ∀ n, P14856824180495999868.a n = A267584 n

end A267584

/-!
# A267585: Binary representation of the n-th iteration of the "Rule 169" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267585, there is no canonical definition to state claims against.
-/

/-! ## A267585.P18000818011377950564

`A007088(A267586(n))`
-/

namespace A267585.P18000818011377950564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267586 n).toNat

end

end A267585.P18000818011377950564

/-! ## A267585.P14909618051379990445

`A185544(2*A267586(n))`
-/

namespace A267585.P14909618051379990445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267586 n).toNat

end

end A267585.P14909618051379990445

/-! ## A267585.P17234623953830483828

`A185544(lcm(2, A267586(n)))`
-/

namespace A267585.P17234623953830483828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A267586 n))

end

end A267585.P17234623953830483828

/-! ## A267585.P10604254450125912226

`A305989(A267843(n)/A008307(n+1))`
-/

namespace A267585.P10604254450125912226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A267843 n : ℚ) / (A008307 (n + 1) : ℚ))).toNat

end

end A267585.P10604254450125912226

/-!
# A267586: Decimal representation of the n-th iteration of the "Rule 169" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267586, there is no canonical definition to state claims against.
-/

/-! ## A267586.P1552275782077079982

`A325401(lcm(2, A267843(n))/2)`
-/

namespace A267586.P1552275782077079982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((Int.lcm 2 (A267843 n) : ℚ) / 2)).toNat

end

end A267586.P1552275782077079982

/-! ## A267586.P14194761984872466926

`A030101(A267843(n))`
-/

namespace A267586.P14194761984872466926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A267843 n).toNat

end

end A267586.P14194761984872466926

/-! ## A267586.P11403785993222081871

`A325401(2*A267843(n))`
-/

namespace A267586.P11403785993222081871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A267843 n).toNat

end

end A267586.P11403785993222081871

/-!
# A267587: Middle column of the "Rule 169" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267587, the canonical program `A267587.P14412107745666081386` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267587 has offset 0).

The definition of A267587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267587.P14412107745666081386

`ceil(sin(exp(8-n)))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267587

/-- `ceil(sin(exp(8-n)))` -/
def P14412107745666081386.Spec : Prop :=
  ∀ n, P14412107745666081386.a n = A267587 n

theorem P14412107745666081386.correct : P14412107745666081386.Spec := by
  intro n
  simp only [A267587]

end A267587

/-!
# A267588: Binary representation of the middle column of the "Rule 169" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267588, the canonical program `A267588.P10329583865328879434` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267588 has offset 0).

The definition of A267588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267588.P10329583865328879434

`xor(10*a(n-1), A267587(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A267588

/-- `xor(10*a(n-1), A267587(n))` -/
def P10329583865328879434.Spec : Prop :=
  ∀ n, P10329583865328879434.a n = A267588 n

theorem P10329583865328879434.correct : P10329583865328879434.Spec := by
  intro n
  simp only [A267588]

end A267588

/-! ## A267588.P15482322219702350285

`char[A159076(n+1)]+10*a(n-1)` with `a(0)=1`
-/

namespace A267588.P15482322219702350285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 10 * a (n - 1)

end

end A267588.P15482322219702350285

namespace A267588

/-- `char[A159076(n+1)]+10*a(n-1)` -/
def P15482322219702350285.Spec : Prop :=
  ∀ n, (P15482322219702350285.a n : ℤ) = A267588 n

end A267588

/-! ## A267588.P243288396512686667

`or(10*a(n-1), A023532(A151800(n)))` with `a(0)=1`
-/

namespace A267588.P243288396512686667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A023532 (A151800 n).toNat)

end

end A267588.P243288396512686667

namespace A267588

/-- `or(10*a(n-1), A023532(A151800(n)))` -/
def P243288396512686667.Spec : Prop :=
  ∀ n, P243288396512686667.a n = A267588 n

end A267588

/-! ## A267588.P17082056452402867944

`A263243(A027383(n))+10*a(n-1)` with `a(0)=1`
-/

namespace A267588.P17082056452402867944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263243 (A027383 n).toNat + 10 * a (n - 1)

end

end A267588.P17082056452402867944

namespace A267588

/-- `A263243(A027383(n))+10*a(n-1)` -/
def P17082056452402867944.Spec : Prop :=
  ∀ n, P17082056452402867944.a n = A267588 n

end A267588

/-! ## A267588.P14058264240776419539

`A007088(A267589(n))`
-/

namespace A267588.P14058264240776419539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267589 n).toNat

end

end A267588.P14058264240776419539

namespace A267588

/-- `A007088(A267589(n))` -/
def P14058264240776419539.Spec : Prop :=
  ∀ n, P14058264240776419539.a n = A267588 n

end A267588

/-!
# A267589: Decimal representation of the middle column of the "Rule 169" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267589, the canonical program `A267589.P424284148226810878` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267589 has offset 0).

The definition of A267589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267589.P1086803340198821360

`ogf((1-x+x^2-x^3+x^5)/(1-3x+2x^2))`
-/

namespace A267589.P1086803340198821360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, -1, 0, 1] [1, -3, 2] n

end

end A267589.P1086803340198821360

namespace A267589

/-- `ogf((1-x+x^2-x^3+x^5)/(1-3x+2x^2))` -/
def P1086803340198821360.Spec : Prop :=
  ∀ n, P1086803340198821360.a n = A267589 n

end A267589

/-! ## A267589.P340635126680400477

`(3%n)%2+2*a(n-1)-char[4]` with `a(0)=1`
-/

namespace A267589.P340635126680400477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((3 % n % 2 : ℕ) : ℤ) + 2 * a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267589.P340635126680400477

namespace A267589

/-- `(3%n)%2+2*a(n-1)-char[4]` -/
def P340635126680400477.Spec : Prop :=
  ∀ n, P340635126680400477.a n = A267589 n

end A267589

/-! ## A267589.P14794384547370011243

`2*a(n-1)--1%xor(n, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A267589.P14794384547370011243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - Int.tmod (-1) (Int.xor (n : ℤ) (a (n - 2)))

end

end A267589.P14794384547370011243

namespace A267589

/-- `2*a(n-1)--1%xor(n, a(n-2))` -/
def P14794384547370011243.Spec : Prop :=
  ∀ n, P14794384547370011243.a n = A267589 n

end A267589

/-! ## A267589.P424284148226810878

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10, a(4)=20, a(5)=41`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267589

/-- `3*a(n-1)-2*a(n-2)` -/
def P424284148226810878.Spec : Prop :=
  ∀ n, P424284148226810878.a n = A267589 n

theorem P424284148226810878.correct : P424284148226810878.Spec := by
  intro n
  simp only [A267589]

end A267589

/-! ## A267589.P10633093059191615443

`a(n-1)+A267587(n)+a(n-1)` with `a(0)=1`
-/

namespace A267589.P10633093059191615443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A267587 n + a (n - 1))

end

end A267589.P10633093059191615443

namespace A267589

/-- `a(n-1)+A267587(n)+a(n-1)` -/
def P10633093059191615443.Spec : Prop :=
  ∀ n, P10633093059191615443.a n = A267589 n

end A267589

/-! ## A267589.P11035990681820587602

`A000035(A239585(n+1))+2*a(n-1)` with `a(0)=1`
-/

namespace A267589.P11035990681820587602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000035 (A239585 (n + 1)).toNat + 2 * a (n - 1)

end

end A267589.P11035990681820587602

namespace A267589

/-- `A000035(A239585(n+1))+2*a(n-1)` -/
def P11035990681820587602.Spec : Prop :=
  ∀ n, P11035990681820587602.a n = A267589 n

end A267589

/-! ## A267589.P13110102237445553112

`or(2*a(n-1), A170896(A029309(n+1)))` with `a(0)=1`
-/

namespace A267589.P13110102237445553112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A170896 (A029309 (n + 1)).toNat)

end

end A267589.P13110102237445553112

namespace A267589

/-- `or(2*a(n-1), A170896(A029309(n+1)))` -/
def P13110102237445553112.Spec : Prop :=
  ∀ n, P13110102237445553112.a n = A267589 n

end A267589

/-! ## A267589.P1942470031731637003

`floor(A171389(n)/16)`
-/

namespace A267589.P1942470031731637003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171389 n : ℚ) / 16⌋

end

end A267589.P1942470031731637003

namespace A267589

/-- `floor(A171389(n)/16)` -/
def P1942470031731637003.Spec : Prop :=
  ∀ n, P1942470031731637003.a n = A267589 n

end A267589

/-! ## A267589.P8955052099699136880

`round(A305064(n)/32)`
-/

namespace A267589.P8955052099699136880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A305064 n : ℚ) / 32)

end

end A267589.P8955052099699136880

namespace A267589

/-- `round(A305064(n)/32)` -/
def P8955052099699136880.Spec : Prop :=
  ∀ n, P8955052099699136880.a n = A267589 n

end A267589

/-!
# A267590: Number of ON (black) cells in the n-th iteration of the "Rule 169" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267590, there is no canonical definition to state claims against.
-/

/-! ## A267590.P13248624914443670641

`Δ[n²]-A267592(n)`
-/

namespace A267590.P13248624914443670641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267592 n

end

end A267590.P13248624914443670641

/-! ## A267590.P7822921154758915946

`n+1-A267592(n%(n+1))+n`
-/

namespace A267590.P7822921154758915946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267592 (n % (n + 1)) + (n : ℤ)

end

end A267590.P7822921154758915946

/-! ## A267590.P9356722681742813574

`A005843(n)+1-A267592(n)`
-/

namespace A267590.P9356722681742813574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A267592 n)

end

end A267590.P9356722681742813574

/-! ## A267590.P894504697170697798

`abs(A061019(n+1))+n-A267592(n)`
-/

namespace A267590.P894504697170697798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061019 (n + 1)| + ((n : ℤ) - A267592 n)

end

end A267590.P894504697170697798

/-! ## A267590.P15343898735203495200

`1-(A267592(4*n)-2*n)`
-/

namespace A267590.P15343898735203495200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A267592 (4 * n) - (2 * n : ℤ))

end

end A267590.P15343898735203495200

/-! ## A267590.P16529163102952932287

`∑{digits}[A267585(n), #]`
-/

namespace A267590.P16529163102952932287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A267590.P16529163102952932287

/-! ## A267590.P16679313952487265178

`∑{digits}[A267842(n), #]`
-/

namespace A267590.P16679313952487265178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A267590.P16679313952487265178

/-!
# A267591: Total number of ON (black) cells after n iterations of the "Rule 169" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267591, there is no canonical definition to state claims against.
-/

/-! ## A267591.P12226931114094141814

`∑[A267590(n)]`
-/

namespace A267591.P12226931114094141814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267591.P12226931114094141814

/-! ## A267591.P15360148130344884956

`(n+1)²-A267593(n)`
-/

namespace A267591.P15360148130344884956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267593 n

end

end A267591.P15360148130344884956

/-! ## A267591.P7427178020894779260

`∑[Δ[n²]-A267592(n)]`
-/

namespace A267591.P7427178020894779260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267591.P7427178020894779260

/-! ## A267591.P70178850039988296

`A000217(n+1)+∑[n-A267592(n)]`
-/

namespace A267591.P70178850039988296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A267592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267591.P70178850039988296

/-! ## A267591.P11624835449738798687

`∑[A000007(n+1)-A267592(n)+2*n+1]`
-/

namespace A267591.P11624835449738798687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A267592 n + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267591.P11624835449738798687

/-! ## A267591.P4633523431356925855

`∑[∑{digits}[A267585(n), #]]`
-/

namespace A267591.P4633523431356925855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267585 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267591.P4633523431356925855

/-!
# A267592: Number of OFF (white) cells in the n-th iteration of the "Rule 169" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267592, there is no canonical definition to state claims against.
-/

/-! ## A267592.P3292292834096723648

`Δ[n²]-A267590(n)`
-/

namespace A267592.P3292292834096723648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267590 n

end

end A267592.P3292292834096723648

/-! ## A267592.P1854815619456735727

`n+1-A267590(n%(n+1))+n`
-/

namespace A267592.P1854815619456735727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267590 (n % (n + 1)) + (n : ℤ)

end

end A267592.P1854815619456735727

/-! ## A267592.P2317198462260908889

`abs(A267590(n)-A005408(n))`
-/

namespace A267592.P2317198462260908889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A267590 n - A005408 n|

end

end A267592.P2317198462260908889

/-! ## A267592.P17103586325213476853

`A005843(n)+1-A267590(n)`
-/

namespace A267592.P17103586325213476853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A267590 n)

end

end A267592.P17103586325213476853

/-! ## A267592.P10206006842708220323

`A016777(n)-(A267590(n)+n)`
-/

namespace A267592.P10206006842708220323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (A267590 n + (n : ℤ))

end

end A267592.P10206006842708220323

/-! ## A267592.P15726433946428286963

`A103128(∑[n+1])+n-A267590(n)`
-/

namespace A267592.P15726433946428286963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (∑ j ∈ Finset.range (n + 1), f1 j) + ((n : ℤ) - A267590 n)

end

end A267592.P15726433946428286963

/-! ## A267592.P17897478324962440662

`A002024(A000217(n+1))+n-A267590(n)`
-/

namespace A267592.P17897478324962440662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000217 (n + 1)).toNat + ((n : ℤ) - A267590 n)

end

end A267592.P17897478324962440662

/-!
# A267593: Total number of OFF (white) cells after n iterations of the "Rule 169" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267593, there is no canonical definition to state claims against.
-/

/-! ## A267593.P14578338356785059518

`∑[A267592(n)]`
-/

namespace A267593.P14578338356785059518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267593.P14578338356785059518

/-! ## A267593.P17828058163502542306

`(n+1)²-A267591(n)`
-/

namespace A267593.P17828058163502542306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267591 n

end

end A267593.P17828058163502542306

/-! ## A267593.P6600989471381202602

`∑[Δ[n²]-A267590(n)]`
-/

namespace A267593.P6600989471381202602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267593.P6600989471381202602

/-! ## A267593.P3891461731659378360

`∑[A016777(n)-(A267590(n)+n)]`
-/

namespace A267593.P3891461731659378360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (A267590 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267593.P3891461731659378360

/-! ## A267593.P11969994051989833108

`A267592(4*n)+a(n-1)` with `a(0)=0`
-/

namespace A267593.P11969994051989833108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A267592 (4 * n) + a (n - 1)

end

end A267593.P11969994051989833108

/-!
# A267594: Triangle read by rows giving successive states of cellular automaton generated by "Rule 173" initiated with a single ON (black) cell.

The programs for A267594, the canonical program `A267594.P7838707483284644101` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267594 has offset 0).

The definition of A267594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267594.P5102383551713550385

`char[comp[(n+1)²]-char[2]]`
-/

namespace A267594.P5102383551713550385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267594.P5102383551713550385

namespace A267594

/-- `char[comp[(n+1)²]-char[2]]` -/
def P5102383551713550385.Spec : Prop :=
  ∀ n, (P5102383551713550385.a n : ℤ) = A267594 n

end A267594

/-! ## A267594.P17544178084588514982

`xor(1, char[3]+char[(n+1)²])`
-/

namespace A267594.P17544178084588514982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0))

end

end A267594.P17544178084588514982

namespace A267594

/-- `xor(1, char[3]+char[(n+1)²])` -/
def P17544178084588514982.Spec : Prop :=
  ∀ n, (P17544178084588514982.a n : ℤ) = A267594 n

end A267594

/-! ## A267594.P12799021720884426070

`1-or(char[3], char[(n+1)²])`
-/

namespace A267594.P12799021720884426070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.lor (if ∃ j, f1 j = n then 1 else 0) (if ∃ j, f2 j = n then 1 else 0) : ℤ)

end

end A267594.P12799021720884426070

namespace A267594

/-- `1-or(char[3], char[(n+1)²])` -/
def P12799021720884426070.Spec : Prop :=
  ∀ n, P12799021720884426070.a n = A267594 n

end A267594

/-! ## A267594.P7838707483284644101

`and(a(3%n)+1, ∏{e}[n, #+1]-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267594

/-- `and(a(3%n)+1, ∏{e}[n, #+1]-1)` -/
def P7838707483284644101.Spec : Prop :=
  ∀ n, P7838707483284644101.a n = A267594 n

theorem P7838707483284644101.correct : P7838707483284644101.Spec := by
  intro n
  simp only [A267594]

end A267594

/-! ## A267594.P9768117221516969002

`A267635(char[3]+n)`
-/

namespace A267594.P9768117221516969002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A267594.P9768117221516969002

namespace A267594

/-- `A267635(char[3]+n)` -/
def P9768117221516969002.Spec : Prop :=
  ∀ n, P9768117221516969002.a n = A267594 n

end A267594

/-! ## A267594.P7473133370746947161

`A267635(n)-char[3]`
-/

namespace A267594.P7473133370746947161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267594.P7473133370746947161

namespace A267594

/-- `A267635(n)-char[3]` -/
def P7473133370746947161.Spec : Prop :=
  ∀ n, P7473133370746947161.a n = A267594 n

end A267594

/-! ## A267594.P17490933082090362920

`a(A065803(n))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A267594.P17490933082090362920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0] fun n a =>
  a (A065803 n).toNat

end

end A267594.P17490933082090362920

namespace A267594

/-- `a(A065803(n))` -/
def P17490933082090362920.Spec : Prop :=
  ∀ n, (P17490933082090362920.a n : ℤ) = A267594 n

end A267594

/-! ## A267594.P8027716071130233367

`char[comp[A007318(n)²]]-char[3]`
-/

namespace A267594.P8027716071130233367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267594.P8027716071130233367

namespace A267594

/-- `char[comp[A007318(n)²]]-char[3]` -/
def P8027716071130233367.Spec : Prop :=
  ∀ n, P8027716071130233367.a n = A267594 n

end A267594

/-! ## A267594.P9714819324821291506

`a(A000005(n)%2)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A267594.P9714819324821291506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0] fun n a =>
  a (Int.tmod (A000005 n) 2).toNat

end

end A267594.P9714819324821291506

namespace A267594

/-- `a(A000005(n)%2)` -/
def P9714819324821291506.Spec : Prop :=
  ∀ n, (P9714819324821291506.a n : ℤ) = A267594 n

end A267594

/-! ## A267594.P12011316410685641010

`A267866(n-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A267594.P12011316410685641010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A267866 ((n : ℤ) - a (n - 2)).toNat

end

end A267594.P12011316410685641010

namespace A267594

/-- `A267866(n-a(n-2))` -/
def P12011316410685641010.Spec : Prop :=
  ∀ n, P12011316410685641010.a n = A267594 n

end A267594

/-! ## A267594.P1513685610783964789

`A267848(n-a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A267594.P1513685610783964789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A267848 ((n : ℤ) - a (n - 2)).toNat

end

end A267594.P1513685610783964789

namespace A267594

/-- `A267848(n-a(n-2))` -/
def P1513685610783964789.Spec : Prop :=
  ∀ n, P1513685610783964789.a n = A267594 n

end A267594

/-! ## A267594.P12889887155079371030

`A049240(a(a(n-2))+n)` with `a(0)=1, a(1)=0`
-/

namespace A267594.P12889887155079371030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A049240 (a (a (n - 2)).toNat + (n : ℤ)).toNat

end

end A267594.P12889887155079371030

namespace A267594

/-- `A049240(a(a(n-2))+n)` -/
def P12889887155079371030.Spec : Prop :=
  ∀ n, P12889887155079371030.a n = A267594 n

end A267594

/-! ## A267594.P1878372211762873918

`(char[A061397(3*(n+1))+n²]-1)²`
-/

namespace A267594.P1878372211762873918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (3 * (n + 1)) + (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1) ^ 2

end

end A267594.P1878372211762873918

namespace A267594

/-- `(char[A061397(3*(n+1))+n²]-1)²` -/
def P1878372211762873918.Spec : Prop :=
  ∀ n, P1878372211762873918.a n = A267594 n

end A267594

/-! ## A267594.P6523344233410790749

`A267587(n)*A267635(n)`
-/

namespace A267594.P6523344233410790749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267587 n * A267635 n

end

end A267594.P6523344233410790749

namespace A267594

/-- `A267587(n)*A267635(n)` -/
def P6523344233410790749.Spec : Prop :=
  ∀ n, P6523344233410790749.a n = A267594 n

end A267594

/-! ## A267594.P14864695943782582006

`A267635(n)*A267870(n)`
-/

namespace A267594.P14864695943782582006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n * A267870 n

end

end A267594.P14864695943782582006

namespace A267594

/-- `A267635(n)*A267870(n)` -/
def P14864695943782582006.Spec : Prop :=
  ∀ n, P14864695943782582006.a n = A267594 n

end A267594

/-! ## A267594.P11450901936554611015

`A267635(n)*A267871(n)`
-/

namespace A267594.P11450901936554611015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n * A267871 n

end

end A267594.P11450901936554611015

namespace A267594

/-- `A267635(n)*A267871(n)` -/
def P11450901936554611015.Spec : Prop :=
  ∀ n, P11450901936554611015.a n = A267594 n

end A267594

/-! ## A267594.P15513622371717920409

`and(A004281(n), A267635(n))`
-/

namespace A267594.P15513622371717920409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004281 n) (A267635 n)

end

end A267594.P15513622371717920409

namespace A267594

/-- `and(A004281(n), A267635(n))` -/
def P15513622371717920409.Spec : Prop :=
  ∀ n, P15513622371717920409.a n = A267594 n

end A267594

/-! ## A267594.P7954761619283617996

`and(A027635(n), A267635(n))`
-/

namespace A267594.P7954761619283617996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027635 n) (A267635 n)

end

end A267594.P7954761619283617996

namespace A267594

/-- `and(A027635(n), A267635(n))` -/
def P7954761619283617996.Spec : Prop :=
  ∀ n, P7954761619283617996.a n = A267594 n

end A267594

/-! ## A267594.P18313266786191868683

`and(A042955(n), A267635(n))`
-/

namespace A267594.P18313266786191868683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042955 n) (A267635 n)

end

end A267594.P18313266786191868683

namespace A267594

/-- `and(A042955(n), A267635(n))` -/
def P18313266786191868683.Spec : Prop :=
  ∀ n, P18313266786191868683.a n = A267594 n

end A267594

/-! ## A267594.P6182266707650899330

`and(A130008(n), A267635(n))`
-/

namespace A267594.P6182266707650899330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130008 n) (A267635 n)

end

end A267594.P6182266707650899330

namespace A267594

/-- `and(A130008(n), A267635(n))` -/
def P6182266707650899330.Spec : Prop :=
  ∀ n, P6182266707650899330.a n = A267594 n

end A267594

/-!
# A267595: Binary representation of the n-th iteration of the "Rule 173" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267595, there is no canonical definition to state claims against.
-/

/-! ## A267595.P11209528298733789980

`record[A277926(n)]`
-/

namespace A267595.P11209528298733789980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267595.P11209528298733789980

/-! ## A267595.P5514770148299927909

`record[A277560(n)-char[1]]`
-/

namespace A267595.P5514770148299927909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277560 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267595.P5514770148299927909

/-! ## A267595.P11854829277267494899

`record[A285473(n)-char[1]]`
-/

namespace A267595.P11854829277267494899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285473 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267595.P11854829277267494899

/-! ## A267595.P9103012103526009374

`record[A286672(n)-char[1]]`
-/

namespace A267595.P9103012103526009374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286672 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267595.P9103012103526009374

/-! ## A267595.P1819482260546126065

`record[A286766(n)-char[1]]`
-/

namespace A267595.P1819482260546126065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286766 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267595.P1819482260546126065

/-! ## A267595.P12309468557997253150

`A277926(A004273(n))`
-/

namespace A267595.P12309468557997253150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277926 (A004273 n).toNat

end

end A267595.P12309468557997253150

/-! ## A267595.P1947930741152898593

`A094026(record[A266220(n)])`
-/

namespace A267595.P1947930741152898593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A267595.P1947930741152898593

/-! ## A267595.P9600809200489682546

`A290618(eq[0, A142150(n)])`
-/

namespace A267595.P9600809200489682546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267595.P9600809200489682546

/-! ## A267595.P16410115718296486696

`A277926(floor(log2(A267596(n))))`
-/

namespace A267595.P16410115718296486696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277926 (Nat.log 2 (A267596 n).toNat)

end

end A267595.P16410115718296486696

/-!
# A267596: Decimal representation of the n-th iteration of the "Rule 173" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267596, the canonical program `A267596.P2429364748587465905` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267596 has offset 0).

The definition of A267596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267596.P12919317117638134277

`4^n-ceil(acot(n-1))`
-/

namespace A267596.P12919317117638134277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - ⌈SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)⌉

end

end A267596.P12919317117638134277

namespace A267596

/-- `4^n-ceil(acot(n-1))` -/
def P12919317117638134277.Spec : Prop :=
  ∀ n, P12919317117638134277.a n = A267596 n

end A267596

/-! ## A267596.P2429364748587465905

`ogf((1-3x+9x^2-4x^3)/(1-5x+4x^2))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267596

/-- `ogf((1-3x+9x^2-4x^3)/(1-5x+4x^2))` -/
def P2429364748587465905.Spec : Prop :=
  ∀ n, P2429364748587465905.a n = A267596 n

theorem P2429364748587465905.correct : P2429364748587465905.Spec := by
  intro n
  simp only [A267596]

end A267596

/-! ## A267596.P14416007740838610490

`or(7, 4*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A267596.P14416007740838610490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor 7 (4 * a (n - 1))

end

end A267596.P14416007740838610490

namespace A267596

/-- `or(7, 4*a(n-1))` -/
def P14416007740838610490.Spec : Prop :=
  ∀ n, (P14416007740838610490.a n : ℤ) = A267596 n

end A267596

/-! ## A267596.P15937028912058554928

`xor(3, lcm(12, a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A267596.P15937028912058554928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 3 (Nat.lcm 12 (a (n - 1)))

end

end A267596.P15937028912058554928

namespace A267596

/-- `xor(3, lcm(12, a(n-1)))` -/
def P15937028912058554928.Spec : Prop :=
  ∀ n, (P15937028912058554928.a n : ℤ) = A267596 n

end A267596

/-! ## A267596.P7051457056880951310

`4*a(n-1)+3` with `a(0)=1, a(1)=2, a(2)=15`
-/

namespace A267596.P7051457056880951310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 15] fun n a =>
  4 * a (n - 1) + 3

end

end A267596.P7051457056880951310

namespace A267596

/-- `4*a(n-1)+3` -/
def P7051457056880951310.Spec : Prop :=
  ∀ n, (P7051457056880951310.a n : ℤ) = A267596 n

end A267596

/-! ## A267596.P13966771381606197664

`or(4^n-1, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A267596.P13966771381606197664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor ((4 ^ n : ℤ) - 1) (a (n - 1))

end

end A267596.P13966771381606197664

namespace A267596

/-- `or(4^n-1, a(n-1))` -/
def P13966771381606197664.Spec : Prop :=
  ∀ n, P13966771381606197664.a n = A267596 n

end A267596

/-! ## A267596.P17719022252718825765

`record[Δ[2^and(n, -a(n-1))]]` with `a(0)=1`
-/

namespace A267596.P17719022252718825765
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (2 : ℚ) ^ (Int.land (n : ℤ) (SequenceMachineLib.roundAway (-f2 (n - 1))) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267596.P17719022252718825765

namespace A267596

/-- `record[Δ[2^and(n, -a(n-1))]]` -/
def P17719022252718825765.Spec : Prop :=
  ∀ n, P17719022252718825765.a n = (A267596 n : ℚ)

end A267596

/-! ## A267596.P12325892960056794732

`record[gcd(2, a(n-1))^(n+1)-1]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A267596.P12325892960056794732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  (Int.gcd 2 (f1 (n - 1)) ^ (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267596.P12325892960056794732

namespace A267596

/-- `record[gcd(2, a(n-1))^(n+1)-1]` -/
def P12325892960056794732.Spec : Prop :=
  ∀ n, P12325892960056794732.a n = A267596 n

end A267596

/-! ## A267596.P15789538712087176153

`4^n-a(n-1)/floor(a(n-1))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A267596.P15789538712087176153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (4 ^ n : ℚ) - a (n - 1) / (⌊a (n - 1)⌋ : ℚ)

end

end A267596.P15789538712087176153

namespace A267596

/-- `4^n-a(n-1)/floor(a(n-1))` -/
def P15789538712087176153.Spec : Prop :=
  ∀ n, P15789538712087176153.a n = (A267596 n : ℚ)

end A267596

/-! ## A267596.P9465543955390249572

`record[A277928(n)]`
-/

namespace A267596.P9465543955390249572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267596.P9465543955390249572

namespace A267596

/-- `record[A277928(n)]` -/
def P9465543955390249572.Spec : Prop :=
  ∀ n, P9465543955390249572.a n = A267596 n

end A267596

/-! ## A267596.P10606642198495602258

`record[Δ[A224783(n)]]`
-/

namespace A267596.P10606642198495602258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224783 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267596.P10606642198495602258

namespace A267596

/-- `record[Δ[A224783(n)]]` -/
def P10606642198495602258.Spec : Prop :=
  ∀ n, P10606642198495602258.a n = A267596 n

end A267596

/-! ## A267596.P12706501460387229039

`or(a(n-1), A160156(n))` with `a(0)=1, a(1)=2`
-/

namespace A267596.P12706501460387229039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor (a (n - 1)) (A160156 n)

end

end A267596.P12706501460387229039

namespace A267596

/-- `or(a(n-1), A160156(n))` -/
def P12706501460387229039.Spec : Prop :=
  ∀ n, P12706501460387229039.a n = A267596 n

end A267596

/-! ## A267596.P74913027798935017

`A277928(A004273(n))`
-/

namespace A267596.P74913027798935017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277928 (A004273 n).toNat

end

end A267596.P74913027798935017

namespace A267596

/-- `A277928(A004273(n))` -/
def P74913027798935017.Spec : Prop :=
  ∀ n, P74913027798935017.a n = A267596 n

end A267596

/-! ## A267596.P17277367253334358274

`A159075(n)+A103454(n)`
-/

namespace A267596.P17277367253334358274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A103454 n

end

end A267596.P17277367253334358274

namespace A267596

/-- `A159075(n)+A103454(n)` -/
def P17277367253334358274.Spec : Prop :=
  ∀ n, P17277367253334358274.a n = A267596 n

end A267596

/-! ## A267596.P1246035462468321716

`A103454(n)-A063524(n)`
-/

namespace A267596.P1246035462468321716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103454 n - A063524 n

end

end A267596.P1246035462468321716

namespace A267596

/-- `A103454(n)-A063524(n)` -/
def P1246035462468321716.Spec : Prop :=
  ∀ n, P1246035462468321716.a n = A267596 n

end A267596

/-! ## A267596.P12593750994673602706

`A155543(n)-A373565(n)`
-/

namespace A267596.P12593750994673602706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 n - A373565 n

end

end A267596.P12593750994673602706

namespace A267596

/-- `A155543(n)-A373565(n)` -/
def P12593750994673602706.Spec : Prop :=
  ∀ n, P12593750994673602706.a n = A267596 n

end A267596

/-! ## A267596.P15649751737207090007

`xor(A024038(n), A132411(n))`
-/

namespace A267596.P15649751737207090007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024038 n) (A132411 n)

end

end A267596.P15649751737207090007

namespace A267596

/-- `xor(A024038(n), A132411(n))` -/
def P15649751737207090007.Spec : Prop :=
  ∀ n, P15649751737207090007.a n = A267596 n

end A267596

/-! ## A267596.P4211469207402845595

`xor(A020515(n), A296965(n))`
-/

namespace A267596.P4211469207402845595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020515 n) (A296965 n)

end

end A267596.P4211469207402845595

namespace A267596

/-- `xor(A020515(n), A296965(n))` -/
def P4211469207402845595.Spec : Prop :=
  ∀ n, P4211469207402845595.a n = A267596 n

end A267596

/-! ## A267596.P1231177946940803265

`∩[A048329(n), A290620(n)]`
-/

namespace A267596.P1231177946940803265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290620 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267596.P1231177946940803265

namespace A267596

/-- `∩[A048329(n), A290620(n)]` -/
def P1231177946940803265.Spec : Prop :=
  ∀ n, (P1231177946940803265.a n : ℤ) = A267596 n

end A267596

/-! ## A267596.P11592561195730097804

`∩[A048329(n), A290628(n)]`
-/

namespace A267596.P11592561195730097804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290628 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267596.P11592561195730097804

namespace A267596

/-- `∩[A048329(n), A290628(n)]` -/
def P11592561195730097804.Spec : Prop :=
  ∀ n, (P11592561195730097804.a n : ℤ) = A267596 n

end A267596

/-!
# A267598: Triangle read by rows giving successive states of cellular automaton generated by "Rule 177" initiated with a single ON (black) cell.

The programs for A267598, the canonical program `A267598.P7161317194914824698` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267598 has offset 0).

The definition of A267598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267598.P14138659156476829538

`char[comp[∑[n]-2]+n]`
-/

namespace A267598.P14138659156476829538
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267598.P14138659156476829538

namespace A267598

/-- `char[comp[∑[n]-2]+n]` -/
def P14138659156476829538.Spec : Prop :=
  ∀ n, (P14138659156476829538.a n : ℤ) = A267598 n

end A267598

/-! ## A267598.P2281570584001630283

`floor(sqrt(n+2)+n)%2`
-/

namespace A267598.P2281570584001630283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (n + 2 : ℝ) + (n : ℝ)⌋ 2

end

end A267598.P2281570584001630283

namespace A267598

/-- `floor(sqrt(n+2)+n)%2` -/
def P2281570584001630283.Spec : Prop :=
  ∀ n, P2281570584001630283.a n = A267598 n

end A267598

/-! ## A267598.P18183714530010912045

`and(1, ∑[A267919(n)])`
-/

namespace A267598.P18183714530010912045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267598.P18183714530010912045

namespace A267598

/-- `and(1, ∑[A267919(n)])` -/
def P18183714530010912045.Spec : Prop :=
  ∀ n, P18183714530010912045.a n = A267598 n

end A267598

/-! ## A267598.P7161317194914824698

`and(1, A266253(n)+n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A267598

/-- `and(1, A266253(n)+n)` -/
def P7161317194914824698.Spec : Prop :=
  ∀ n, P7161317194914824698.a n = A267598 n

theorem P7161317194914824698.correct : P7161317194914824698.Spec := by
  intro n
  simp only [A267598]

end A267598

/-! ## A267598.P17123142702830021314

`1-char[A133280(n)-2]`
-/

namespace A267598.P17123142702830021314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267598.P17123142702830021314

namespace A267598

/-- `1-char[A133280(n)-2]` -/
def P17123142702830021314.Spec : Prop :=
  ∀ n, P17123142702830021314.a n = A267598 n

end A267598

/-! ## A267598.P1816442896120729469

`and(1, ∑[A049240(n+2)])`
-/

namespace A267598.P1816442896120729469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267598.P1816442896120729469

namespace A267598

/-- `and(1, ∑[A049240(n+2)])` -/
def P1816442896120729469.Spec : Prop :=
  ∀ n, P1816442896120729469.a n = A267598 n

end A267598

/-! ## A267598.P11434467029609609627

`and(1, ∑[A052409(n+2)])`
-/

namespace A267598.P11434467029609609627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267598.P11434467029609609627

namespace A267598

/-- `and(1, ∑[A052409(n+2)])` -/
def P11434467029609609627.Spec : Prop :=
  ∀ n, P11434467029609609627.a n = A267598 n

end A267598

/-! ## A267598.P10965821301176357407

`A267848(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A267598.P10965821301176357407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267848 (n + 1) - a (n - 1)

end

end A267598.P10965821301176357407

namespace A267598

/-- `A267848(n+1)-a(n-1)` -/
def P10965821301176357407.Spec : Prop :=
  ∀ n, P10965821301176357407.a n = A267598 n

end A267598

/-! ## A267598.P17575721111976343185

`A267866(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A267598.P17575721111976343185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267866 (n + 1) - a (n - 1)

end

end A267598.P17575721111976343185

namespace A267598

/-- `A267866(n+1)-a(n-1)` -/
def P17575721111976343185.Spec : Prop :=
  ∀ n, P17575721111976343185.a n = A267598 n

end A267598

/-! ## A267598.P746400953642298896

`A267922(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A267598.P746400953642298896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267922 (n - 1) - a (n - 1)

end

end A267598.P746400953642298896

namespace A267598

/-- `A267922(n-1)-a(n-1)` -/
def P746400953642298896.Spec : Prop :=
  ∀ n, P746400953642298896.a n = A267598 n

end A267598

/-! ## A267598.P16010663339219485093

`(1-a(n-1))*A267776(n)` with `a(0)=1`
-/

namespace A267598.P16010663339219485093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - a (n - 1)) * A267776 n

end

end A267598.P16010663339219485093

namespace A267598

/-- `(1-a(n-1))*A267776(n)` -/
def P16010663339219485093.Spec : Prop :=
  ∀ n, P16010663339219485093.a n = A267598 n

end A267598

/-! ## A267598.P13016462578642969393

`(1-a(n-1))*A267778(n)` with `a(0)=1`
-/

namespace A267598.P13016462578642969393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - a (n - 1)) * A267778 n

end

end A267598.P13016462578642969393

namespace A267598

/-- `(1-a(n-1))*A267778(n)` -/
def P13016462578642969393.Spec : Prop :=
  ∀ n, P13016462578642969393.a n = A267598 n

end A267598

/-! ## A267598.P12830685775420420516

`abs(char[2*n-A003056(n)-2]-1)`
-/

namespace A267598.P12830685775420420516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A003056 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1|

end

end A267598.P12830685775420420516

namespace A267598

/-- `abs(char[2*n-A003056(n)-2]-1)` -/
def P12830685775420420516.Spec : Prop :=
  ∀ n, P12830685775420420516.a n = A267598 n

end A267598

/-! ## A267598.P14733498168700566853

`and(1, ∑[1-A000005(2*n-(n-2))])`
-/

namespace A267598.P14733498168700566853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000005 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267598.P14733498168700566853

namespace A267598

/-- `and(1, ∑[1-A000005(2*n-(n-2))])` -/
def P14733498168700566853.Spec : Prop :=
  ∀ n, P14733498168700566853.a n = A267598 n

end A267598

/-! ## A267598.P5891134762914332462

`A267776(n-a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A267598.P5891134762914332462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267776 ((n : ℤ) - a (n - 1)).toNat - a (n - 1)

end

end A267598.P5891134762914332462

namespace A267598

/-- `A267776(n-a(n-1))-a(n-1)` -/
def P5891134762914332462.Spec : Prop :=
  ∀ n, P5891134762914332462.a n = A267598 n

end A267598

/-! ## A267598.P13083556829775030977

`A267778(n-a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A267598.P13083556829775030977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267778 ((n : ℤ) - a (n - 1)).toNat - a (n - 1)

end

end A267598.P13083556829775030977

namespace A267598

/-- `A267778(n-a(n-1))-a(n-1)` -/
def P13083556829775030977.Spec : Prop :=
  ∀ n, P13083556829775030977.a n = A267598 n

end A267598

/-! ## A267598.P11239984022734634561

`A000035(A266253(n)+n)`
-/

namespace A267598.P11239984022734634561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A266253 n + (n : ℤ)).toNat

end

end A267598.P11239984022734634561

namespace A267598

/-- `A000035(A266253(n)+n)` -/
def P11239984022734634561.Spec : Prop :=
  ∀ n, P11239984022734634561.a n = A267598 n

end A267598

/-! ## A267598.P448621512610534673

`and(A183570(n), A267776(n))`
-/

namespace A267598.P448621512610534673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A183570 n) (A267776 n)

end

end A267598.P448621512610534673

namespace A267598

/-- `and(A183570(n), A267776(n))` -/
def P448621512610534673.Spec : Prop :=
  ∀ n, P448621512610534673.a n = A267598 n

end A267598

/-! ## A267598.P13077778880497704091

`and(A183570(n), A267778(n))`
-/

namespace A267598.P13077778880497704091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A183570 n) (A267778 n)

end

end A267598.P13077778880497704091

namespace A267598

/-- `and(A183570(n), A267778(n))` -/
def P13077778880497704091.Spec : Prop :=
  ∀ n, P13077778880497704091.a n = A267598 n

end A267598

/-! ## A267598.P17782642319599028881

`and(A183570(n), A267919(n))`
-/

namespace A267598.P17782642319599028881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A183570 n) (A267919 n)

end

end A267598.P17782642319599028881

namespace A267598

/-- `and(A183570(n), A267919(n))` -/
def P17782642319599028881.Spec : Prop :=
  ∀ n, P17782642319599028881.a n = A267598 n

end A267598

/-!
# A267599: Binary representation of the n-th iteration of the "Rule 177" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267599, there is no canonical definition to state claims against.
-/

/-! ## A267599.P15056090122185925988

`a(n-1)+10^(2*n-1)` with `a(0)=1, a(1)=1`
-/

namespace A267599.P15056090122185925988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (10 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)

end

end A267599.P15056090122185925988

/-! ## A267599.P16828197212274414085

`∑[A288698(2*n)]`
-/

namespace A267599.P16828197212274414085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288698 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267599.P16828197212274414085

/-! ## A267599.P5092335566914177953

`A288698(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A267599.P5092335566914177953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288698 (n + n) + a (n - 1)

end

end A267599.P5092335566914177953

/-! ## A267599.P11752976077968913387

`ceil(A267777(n)/11)`
-/

namespace A267599.P11752976077968913387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A267777 n : ℚ) / 11⌉

end

end A267599.P11752976077968913387

/-! ## A267599.P6994932724071598414

`A282801(2*n+1)-9`
-/

namespace A267599.P6994932724071598414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282801 (2 * n + 1) - 9

end

end A267599.P6994932724071598414

/-! ## A267599.P13136068419527175352

`A267923(n)/A267923(n/A028310(n))`
-/

namespace A267599.P13136068419527175352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267923 n : ℚ) / (A267923 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat : ℚ)

end

end A267599.P13136068419527175352

