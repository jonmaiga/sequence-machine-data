import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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

/-!
# A040100: Primes p such that x^4 = 2 has no solution mod p.

The programs for A040100, there is no canonical definition to state claims against.
-/

/-! ## A040100.P10943700057136294552

`∪[A003629(n+1), p?[A293394(n+1)]]`
-/

namespace A040100.P10943700057136294552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040100.P10943700057136294552

/-! ## A040100.P2883303418971586081

`p?[∪[A270699(n+1), A293394(n+1)]]`
-/

namespace A040100.P2883303418971586081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040100.P2883303418971586081

/-! ## A040100.P7606622768594346856

`∪[A042999(n+2), p?[A293394(n+1)]]`
-/

namespace A040100.P7606622768594346856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040100.P7606622768594346856

/-! ## A040100.P8689154752550455295

`A014662(A110303(n+1))%A141214(n)²`
-/

namespace A040100.P8689154752550455295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014662 (A110303 (n + 1)).toNat) (A141214 n ^ 2)

end

end A040100.P8689154752550455295

/-! ## A040100.P1439943947499979191

`p?[A014662(A110303(n+1))]%A280983(n+1)`
-/

namespace A040100.P1439943947499979191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014662 (A110303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A280983 (n + 1))

end

end A040100.P1439943947499979191

/-!
# A040101: Primes p such that x^4 = 3 has a solution mod p.

The programs for A040101, there is no canonical definition to state claims against.
-/

/-! ## A040101.P17652245229026938939

`A045317(n+1)%A066722(n+1)`
-/

namespace A040101.P17652245229026938939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045317 (n + 1)) (A066722 (n + 1))

end

end A040101.P17652245229026938939

/-! ## A040101.P23234294565766860

`∩[A045317(n+1), A088450(n+1)]`
-/

namespace A040101.P23234294565766860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040101.P23234294565766860

/-! ## A040101.P5273867958926932082

`∩[A045317(n+1), A106317(n+1)]`
-/

namespace A040101.P5273867958926932082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040101.P5273867958926932082

/-! ## A040101.P6496122205782310692

`∩[A045317(n+1), A236105(n+1)]`
-/

namespace A040101.P6496122205782310692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040101.P6496122205782310692

/-! ## A040101.P4704365380491473747

`∩[A045317(n+1), A285304(n+1)]`
-/

namespace A040101.P4704365380491473747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040101.P4704365380491473747

/-!
# A040102: Primes p such that x^4 = 3 has no solution mod p.

The programs for A040102, there is no canonical definition to state claims against.
-/

/-! ## A040102.P14177695538955815500

`A301918(A192218(n+2))`
-/

namespace A040102.P14177695538955815500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301918 (A192218 (n + 2)).toNat

end

end A040102.P14177695538955815500

/-! ## A040102.P9882977107453903380

`A301918(A160546(n+2)+1)`
-/

namespace A040102.P9882977107453903380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301918 (A160546 (n + 2) + 1).toNat

end

end A040102.P9882977107453903380

/-! ## A040102.P6723660973090398620

`p?[A301918(n+1)%A123193(A081706(n+1))]`
-/

namespace A040102.P6723660973090398620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301918 (n + 1)) (A123193 (A081706 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040102.P6723660973090398620

/-! ## A040102.P1526786152646867061

`record[A045318(n+1)-A151933(A301917(n+1))]`
-/

namespace A040102.P1526786152646867061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045318 (n + 1) - A151933 (A301917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040102.P1526786152646867061

/-!
# A040104: First ten consecutive primes which are emirps.

The programs for A040104, there is no canonical definition to state claims against.
-/

/-! ## A040104.P8978301852496091644

`A166385(n+36)`
-/

namespace A040104.P8978301852496091644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166385 (n + 36)

end

end A040104.P8978301852496091644

/-! ## A040104.P13120504062139641206

`A006567(n+50)`
-/

namespace A040104.P13120504062139641206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 50)

end

end A040104.P13120504062139641206

/-! ## A040104.P17621534856769284774

`A045707(n+53)`
-/

namespace A040104.P17621534856769284774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 53)

end

end A040104.P17621534856769284774

/-! ## A040104.P6859888802630535728

`A007500(n+70)`
-/

namespace A040104.P6859888802630535728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 70)

end

end A040104.P6859888802630535728

/-! ## A040104.P9340685009765889866

`A059497(n+82)`
-/

namespace A040104.P9340685009765889866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059497 (n + 82)

end

end A040104.P9340685009765889866

/-!
# A040105: Primes p such that x^4 = 5 has a solution mod p.

The programs for A040105, there is no canonical definition to state claims against.
-/

/-! ## A040105.P221491895389455727

`p?[A052414(n+1)*A138066(n+1)]`
-/

namespace A040105.P221491895389455727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1) * A138066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040105.P221491895389455727

/-!
# A040106: Primes p such that x^4 = 5 has no solution mod p.

The programs for A040106, there is no canonical definition to state claims against.
-/

/-! ## A040106.P8837796404451445247

`∪[A097957(n+1), A107218(n+1)]`
-/

namespace A040106.P8837796404451445247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040106.P8837796404451445247

/-! ## A040106.P7660510873004863949

`p?[A003059(∑[A314995(n)])]`
-/

namespace A040106.P7660510873004863949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314995 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040106.P7660510873004863949

/-! ## A040106.P7076568765652266110

`p?[A259361(∑[A182778(n+1)])]`
-/

namespace A040106.P7076568765652266110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182778 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040106.P7076568765652266110

/-! ## A040106.P10004964830077698618

`p?[A000196(A026923(A017017(n)))]`
-/

namespace A040106.P10004964830077698618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A026923 (A017017 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040106.P10004964830077698618

/-! ## A040106.P16515933569712875826

`∩[A192503(n+1), A232779(n)]`
-/

namespace A040106.P16515933569712875826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040106.P16515933569712875826

/-!
# A040107: Primes p such that x^4 = 6 has a solution mod p.

The programs for A040107, there is no canonical definition to state claims against.
-/

/-! ## A040107.P1426671278972375206

`p?[∑[A001511(A059344(n))]]`
-/

namespace A040107.P1426671278972375206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A059344 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040107.P1426671278972375206

/-! ## A040107.P8213114932008228136

`p?[∑[A213173(A238881(n+1))]]`
-/

namespace A040107.P8213114932008228136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 (A238881 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040107.P8213114932008228136

/-! ## A040107.P1452406177271116954

`∩[A038876(n+1), A371968(n+1)]`
-/

namespace A040107.P1452406177271116954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040107.P1452406177271116954

/-! ## A040107.P3501762286863944413

`∩[A371968(n+1), A391371(n+1)]`
-/

namespace A040107.P3501762286863944413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040107.P3501762286863944413

/-!
# A040108: Primes p such that x^4 = 6 has no solution mod p.

The programs for A040108, there is no canonical definition to state claims against.
-/

/-! ## A040108.P11400275012465319721

`p?[A330180(n+1)+A014963(A165335(n+1))]`
-/

namespace A040108.P11400275012465319721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330180 (n + 1) + A014963 (A165335 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040108.P11400275012465319721

/-! ## A040108.P839825863784466097

`A000040(lt[A331922(n), A331922(3*n)])`
-/

namespace A040108.P839825863784466097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331922 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331922 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040108.P839825863784466097

/-! ## A040108.P9871627991058278065

`A300271(A243768(n+2))`
-/

namespace A040108.P9871627991058278065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300271 (A243768 (n + 2)).toNat

end

end A040108.P9871627991058278065

/-! ## A040108.P867653045983666117

`∩[A174048(n+1), A381767(n+1)]`
-/

namespace A040108.P867653045983666117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040108.P867653045983666117

/-!
# A040111: Continued fraction for sqrt(123).

The programs for A040111, the canonical program `A040111.P2254291714557805719` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040111 has offset 0).

The definition of A040111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040111.P2254291714557805719

`a(n-2)` with `a(0)=11, a(1)=11, a(2)=22`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040111

/-- `a(n-2)` -/
def P2254291714557805719.Spec : Prop :=
  ∀ n, (P2254291714557805719.a n : ℤ) = A040111 n

theorem P2254291714557805719.correct : P2254291714557805719.Spec := by
  intro n
  simp only [A040111]

end A040111

/-!
# A040112: Primes p such that x^4 = 7 has a solution mod p.

The programs for A040112, there is no canonical definition to state claims against.
-/

/-! ## A040112.P7692588196175021430

`A038878(∑[A274835(n)!!])`
-/

namespace A040112.P7692588196175021430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (A274835 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A040112.P7692588196175021430

/-! ## A040112.P9164180839929709677

`A038878(∑[A326474(n)!])`
-/

namespace A040112.P9164180839929709677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A326474 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A040112.P9164180839929709677

/-!
# A040113: Primes p such that x^4 = 7 has no solution mod p.

The programs for A040113, there is no canonical definition to state claims against.
-/

/-! ## A040113.P2819010907989239310

`A200997(A253644(n+1)+A004767(n))`
-/

namespace A040113.P2819010907989239310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200997 (A253644 (n + 1) + A004767 n).toNat

end

end A040113.P2819010907989239310

/-! ## A040113.P12205372063614489907

`p?[A179180(Δ[A141214(n)])]`
-/

namespace A040113.P12205372063614489907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179180 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040113.P12205372063614489907

/-! ## A040113.P12767269887365787372

`∩[A231369(n+1), A396082(n+1)]`
-/

namespace A040113.P12767269887365787372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040113.P12767269887365787372

/-! ## A040113.P7196134489959820575

`p?[A179180(n+4)]%A179139(n+1)`
-/

namespace A040113.P7196134489959820575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179180 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A179139 (n + 1))

end

end A040113.P7196134489959820575

/-! ## A040113.P15565156225742621784

`A200997(A184581(n+1)+A064896(n+1))`
-/

namespace A040113.P15565156225742621784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200997 (A184581 (n + 1) + A064896 (n + 1)).toNat

end

end A040113.P15565156225742621784

/-!
# A040114: List of absolute values of differences between digits of 10, 11, 12, ..., listed digit by digit.

The programs for A040114, there is no canonical definition to state claims against.
-/

/-! ## A040114.P6554112037259751265

`A007376(A080465(n))+A000038((n+1)²)`
-/

namespace A040114.P6554112037259751265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A080465 (n + 10)).toNat + A000038 ((n + 1) ^ 2)

end

end A040114.P6554112037259751265

/-! ## A040114.P8836324449822000860

`A007376(A080465(n))-A071322((n+1)²)`
-/

namespace A040114.P8836324449822000860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A080465 (n + 10)).toNat - A071322 ((n + 1) ^ 2)

end

end A040114.P8836324449822000860

/-! ## A040114.P6083716323262315441

`lcm(A007376(A080465(n)), A033999((n+1)²))`
-/

namespace A040114.P6083716323262315441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007376 (A080465 (n + 10)).toNat) (A033999 ((n + 1) ^ 2))

end

end A040114.P6083716323262315441

/-! ## A040114.P250211412940193426

`A007376(A080465(n))+A000007(A002522(n))`
-/

namespace A040114.P250211412940193426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A080465 (n + 10)).toNat + A000007 (A002522 n).toNat

end

end A040114.P250211412940193426

/-! ## A040114.P2466176269751669980

`A007376(A080465(n))+A000007(A014206(n))`
-/

namespace A040114.P2466176269751669980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A080465 (n + 10)).toNat + A000007 (A014206 n).toNat

end

end A040114.P2466176269751669980

/-! ## A040114.P9447381470122744079

`A007376(A080465(n))*A056753(A002378(n))`
-/

namespace A040114.P9447381470122744079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A080465 (n + 10)).toNat * A056753 (A002378 n).toNat

end

end A040114.P9447381470122744079

/-! ## A040114.P1591632125803159676

`A007376(A080465(n))+A000007(A007434(n+1))`
-/

namespace A040114.P1591632125803159676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A080465 (n + 10)).toNat + A000007 (A007434 (n + 1)).toNat

end

end A040114.P1591632125803159676

/-! ## A040114.P1243832913935600345

`A007376(A080465(n))*A285621(A000290(n+1))`
-/

namespace A040114.P1243832913935600345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A080465 (n + 10)).toNat * A285621 (A000290 (n + 1)).toNat

end

end A040114.P1243832913935600345

/-! ## A040114.P6435068477774357257

`A010879(A110727(n))`
-/

namespace A040114.P6435068477774357257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A110727 (n + 10)).toNat

end

end A040114.P6435068477774357257

/-! ## A040114.P4675206600076284785

`A037904(A073731(n))`
-/

namespace A040114.P4675206600076284785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A073731 (n + 10)).toNat

end

end A040114.P4675206600076284785

/-!
# A040115: Concatenate absolute values of differences between adjacent digits of n.

The programs for A040115, the canonical program `A040115.P18270072698268688053` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040115 has offset 0).

The definition of A040115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040115.P6276554587835406518

`A051903(2^A347689(n))-A064834(A053616(2*n))`
-/

namespace A040115.P6276554587835406518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A347689 n : ℤ))).toNat - A064834 (A053616 (2 * n)).toNat

end

end A040115.P6276554587835406518

namespace A040115

/-- `A051903(2^A347689(n))-A064834(A053616(2*n))` -/
def P6276554587835406518.Spec : Prop :=
  ∀ n, P6276554587835406518.a n = A040115 n

end A040115

/-! ## A040115.P5715225622234547919

`A347689(n)-A276689((1-n)²)-A064834(A053616(2*n))`
-/

namespace A040115.P5715225622234547919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n - A276689 ((1 - (n : ℤ)) ^ 2).toNat - A064834 (A053616 (2 * n)).toNat

end

end A040115.P5715225622234547919

namespace A040115

/-- `A347689(n)-A276689((1-n)²)-A064834(A053616(2*n))` -/
def P5715225622234547919.Spec : Prop :=
  ∀ n, P5715225622234547919.a n = A040115 n

end A040115

/-! ## A040115.P9619731964914936584

`A064834(n)^(comp[98-11*n]%gcd(11, n))!`
-/

namespace A040115.P9619731964914936584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  98 - (11 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n ^ Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % Nat.gcd 11 n)

end

end A040115.P9619731964914936584

namespace A040115

/-- `A064834(n)^(comp[98-11*n]%gcd(11, n))!` -/
def P9619731964914936584.Spec : Prop :=
  ∀ n, P9619731964914936584.a n = A040115 n

end A040115

/-! ## A040115.P10470596542650178842

`A064834(A056143(n))`
-/

namespace A040115.P10470596542650178842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A056143 n).toNat

end

end A040115.P10470596542650178842

namespace A040115

/-- `A064834(A056143(n))` -/
def P10470596542650178842.Spec : Prop :=
  ∀ n, P10470596542650178842.a n = A040115 n

end A040115

/-! ## A040115.P9831162153393873316

`A347689(A118759(n))`
-/

namespace A040115.P9831162153393873316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (A118759 n).toNat

end

end A040115.P9831162153393873316

namespace A040115

/-- `A347689(A118759(n))` -/
def P9831162153393873316.Spec : Prop :=
  ∀ n, P9831162153393873316.a n = A040115 n

end A040115

/-! ## A040115.P14171660273091546275

`A064834(A000194(n²))`
-/

namespace A040115.P14171660273091546275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A000194 (n ^ 2)).toNat

end

end A040115.P14171660273091546275

namespace A040115

/-- `A064834(A000194(n²))` -/
def P14171660273091546275.Spec : Prop :=
  ∀ n, P14171660273091546275.a n = A040115 n

end A040115

/-! ## A040115.P16328940740584923917

`A064834(A064876(n²))`
-/

namespace A040115.P16328940740584923917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A064876 (n ^ 2)).toNat

end

end A040115.P16328940740584923917

namespace A040115

/-- `A064834(A064876(n²))` -/
def P16328940740584923917.Spec : Prop :=
  ∀ n, P16328940740584923917.a n = A040115 n

end A040115

/-! ## A040115.P13681550422427259125

`dr(A283001(A056142(n)))`
-/

namespace A040115.P13681550422427259125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A283001 (A056142 n).toNat)

end

end A040115.P13681550422427259125

namespace A040115

/-- `dr(A283001(A056142(n)))` -/
def P13681550422427259125.Spec : Prop :=
  ∀ n, (P13681550422427259125.a n : ℤ) = A040115 n

end A040115

/-! ## A040115.P4349164425206695988

`A001222(3^A151950(n))`
-/

namespace A040115.P4349164425206695988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A151950 n : ℤ))).toNat

end

end A040115.P4349164425206695988

namespace A040115

/-- `A001222(3^A151950(n))` -/
def P4349164425206695988.Spec : Prop :=
  ∀ n, P4349164425206695988.a n = A040115 n

end A040115

/-! ## A040115.P11346168341777364461

`A064834(lcm(n, A118759(n)))`
-/

namespace A040115.P11346168341777364461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (Int.lcm (n : ℤ) (A118759 n))

end

end A040115.P11346168341777364461

namespace A040115

/-- `A064834(lcm(n, A118759(n)))` -/
def P11346168341777364461.Spec : Prop :=
  ∀ n, P11346168341777364461.a n = A040115 n

end A040115

/-! ## A040115.P2673753317522414984

`A064834(A000196(n²+1))`
-/

namespace A040115.P2673753317522414984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A000196 (n ^ 2 + 1)).toNat

end

end A040115.P2673753317522414984

namespace A040115

/-- `A064834(A000196(n²+1))` -/
def P2673753317522414984.Spec : Prop :=
  ∀ n, P2673753317522414984.a n = A040115 n

end A040115

/-! ## A040115.P18270072698268688053

`A037904(A000007(n²)+n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A040115

/-- `A037904(A000007(n²)+n)` -/
def P18270072698268688053.Spec : Prop :=
  ∀ n, P18270072698268688053.a n = A040115 n

theorem P18270072698268688053.correct : P18270072698268688053.Spec := by
  intro n
  simp only [A040115]

end A040115

/-! ## A040115.P3794338143454566873

`A040163(A000007(n²)+n)`
-/

namespace A040115.P3794338143454566873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A000007 (n ^ 2) + (n : ℤ)).toNat

end

end A040115.P3794338143454566873

namespace A040115

/-- `A040163(A000007(n²)+n)` -/
def P3794338143454566873.Spec : Prop :=
  ∀ n, P3794338143454566873.a n = A040115 n

end A040115

/-! ## A040115.P15267491235053572600

`A151950(n)%A058331(n²)`
-/

namespace A040115.P15267491235053572600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151950 n) (A058331 (n ^ 2))

end

end A040115.P15267491235053572600

namespace A040115

/-- `A151950(n)%A058331(n²)` -/
def P15267491235053572600.Spec : Prop :=
  ∀ n, P15267491235053572600.a n = A040115 n

end A040115

/-! ## A040115.P14521727330794563055

`A064834(n)+A000035(A002378(n))`
-/

namespace A040115.P14521727330794563055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n + A000035 (A002378 n).toNat

end

end A040115.P14521727330794563055

namespace A040115

/-- `A064834(n)+A000035(A002378(n))` -/
def P14521727330794563055.Spec : Prop :=
  ∀ n, P14521727330794563055.a n = A040115 n

end A040115

/-! ## A040115.P8918037191518293707

`A064834(n)+A000007(A275238(n))`
-/

namespace A040115.P8918037191518293707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n + A000007 (A275238 n).toNat

end

end A040115.P8918037191518293707

namespace A040115

/-- `A064834(n)+A000007(A275238(n))` -/
def P8918037191518293707.Spec : Prop :=
  ∀ n, P8918037191518293707.a n = A040115 n

end A040115

/-! ## A040115.P16842984495137622035

`A061816(A118759(n)-A265525(n))`
-/

namespace A040115.P16842984495137622035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 (A118759 n - A265525 n).toNat

end

end A040115.P16842984495137622035

namespace A040115

/-- `A061816(A118759(n)-A265525(n))` -/
def P16842984495137622035.Spec : Prop :=
  ∀ n, P16842984495137622035.a n = A040115 n

end A040115

/-! ## A040115.P6124536156650247887

`A057427(A002522(n))*A064834(n)`
-/

namespace A040115.P6124536156650247887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A002522 n).toNat * A064834 n

end

end A040115.P6124536156650247887

namespace A040115

/-- `A057427(A002522(n))*A064834(n)` -/
def P6124536156650247887.Spec : Prop :=
  ∀ n, P6124536156650247887.a n = A040115 n

end A040115

/-! ## A040115.P2436919252879477488

`A064834(n)%A184386(A007947(n+1))`
-/

namespace A040115.P2436919252879477488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064834 n) (A184386 (A007947 (n + 1)).toNat)

end

end A040115.P2436919252879477488

namespace A040115

/-- `A064834(n)%A184386(A007947(n+1))` -/
def P2436919252879477488.Spec : Prop :=
  ∀ n, P2436919252879477488.a n = A040115 n

end A040115

/-!
# A040116: Primes p such that x^4 = 9 has a solution mod p.

The programs for A040116, the canonical program `A040116.P4287387060818922923` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040116 has offset 1).

The definition of A040116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040116.P6997161577095095288

`∪[A002145(n+1), A038874(n+1)]`
-/

namespace A040116.P6997161577095095288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P6997161577095095288

namespace A040116

/-- `∪[A002145(n+1), A038874(n+1)]` -/
def P6997161577095095288.Spec : Prop :=
  ∀ n, (P6997161577095095288.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P8224766214138077467

`∪[A002476(n+1), A038874(n+1)]`
-/

namespace A040116.P8224766214138077467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P8224766214138077467

namespace A040116

/-- `∪[A002476(n+1), A038874(n+1)]` -/
def P8224766214138077467.Spec : Prop :=
  ∀ n, (P8224766214138077467.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P3054990495324016730

`∪[A002476(n+1), A040101(n+1)]`
-/

namespace A040116.P3054990495324016730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P3054990495324016730

namespace A040116

/-- `∪[A002476(n+1), A040101(n+1)]` -/
def P3054990495324016730.Spec : Prop :=
  ∀ n, (P3054990495324016730.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P3596422098468879469

`∪[A002476(n+1), A040124(n+1)]`
-/

namespace A040116.P3596422098468879469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P3596422098468879469

namespace A040116

/-- `∪[A002476(n+1), A040124(n+1)]` -/
def P3596422098468879469.Spec : Prop :=
  ∀ n, (P3596422098468879469.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P6960589572927410949

`∪[A002476(n+1), A040994(n+1)]`
-/

namespace A040116.P6960589572927410949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P6960589572927410949

namespace A040116

/-- `∪[A002476(n+1), A040994(n+1)]` -/
def P6960589572927410949.Spec : Prop :=
  ∀ n, (P6960589572927410949.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P9304933978590596501

`∪[A007645(n+1), A038874(n+1)]`
-/

namespace A040116.P9304933978590596501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P9304933978590596501

namespace A040116

/-- `∪[A007645(n+1), A038874(n+1)]` -/
def P9304933978590596501.Spec : Prop :=
  ∀ n, (P9304933978590596501.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P4287387060818922923

`∪[A002145(n+1), A045331(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A040116

/-- `∪[A002145(n+1), A045331(n+1)]` -/
def P4287387060818922923.Spec : Prop :=
  ∀ n, (P4287387060818922923.a n : ℤ) = A040116 (n + 1)

theorem P4287387060818922923.correct : P4287387060818922923.Spec := by
  intro n
  simp only [A040116, Nat.add_sub_cancel]

end A040116

/-! ## A040116.P9886365809718160495

`∪[A002145(n+1), A045375(n+1)]`
-/

namespace A040116.P9886365809718160495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P9886365809718160495

namespace A040116

/-- `∪[A002145(n+1), A045375(n+1)]` -/
def P9886365809718160495.Spec : Prop :=
  ∀ n, (P9886365809718160495.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P18430103970089922723

`∪[A007645(n+1), A040101(n+1)]`
-/

namespace A040116.P18430103970089922723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P18430103970089922723

namespace A040116

/-- `∪[A007645(n+1), A040101(n+1)]` -/
def P18430103970089922723.Spec : Prop :=
  ∀ n, (P18430103970089922723.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P16940343901845756042

`∪[A007645(n+1), A040124(n+1)]`
-/

namespace A040116.P16940343901845756042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P16940343901845756042

namespace A040116

/-- `∪[A007645(n+1), A040124(n+1)]` -/
def P16940343901845756042.Spec : Prop :=
  ∀ n, (P16940343901845756042.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P4648723376498790520

`∪[A002476(n+1), A045317(n+1)]`
-/

namespace A040116.P4648723376498790520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P4648723376498790520

namespace A040116

/-- `∪[A002476(n+1), A045317(n+1)]` -/
def P4648723376498790520.Spec : Prop :=
  ∀ n, (P4648723376498790520.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P5048555209753629733

`∪[A002476(n+1), A045326(n+1)]`
-/

namespace A040116.P5048555209753629733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P5048555209753629733

namespace A040116

/-- `∪[A002476(n+1), A045326(n+1)]` -/
def P5048555209753629733.Spec : Prop :=
  ∀ n, (P5048555209753629733.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P2369243586484900879

`∪[A007645(n+1), A040994(n+1)]`
-/

namespace A040116.P2369243586484900879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P2369243586484900879

namespace A040116

/-- `∪[A007645(n+1), A040994(n+1)]` -/
def P2369243586484900879.Spec : Prop :=
  ∀ n, (P2369243586484900879.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P7826211051596385951

`∪[A007645(n+1), A045317(n+1)]`
-/

namespace A040116.P7826211051596385951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P7826211051596385951

namespace A040116

/-- `∪[A007645(n+1), A045317(n+1)]` -/
def P7826211051596385951.Spec : Prop :=
  ∀ n, (P7826211051596385951.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P7204566448977991413

`∪[A007645(n+1), A045326(n+1)]`
-/

namespace A040116.P7204566448977991413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P7204566448977991413

namespace A040116

/-- `∪[A007645(n+1), A045326(n+1)]` -/
def P7204566448977991413.Spec : Prop :=
  ∀ n, (P7204566448977991413.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P12099963440430704844

`∪[A038874(n+1), A045326(n+1)]`
-/

namespace A040116.P12099963440430704844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P12099963440430704844

namespace A040116

/-- `∪[A038874(n+1), A045326(n+1)]` -/
def P12099963440430704844.Spec : Prop :=
  ∀ n, (P12099963440430704844.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P8848784758587460481

`∪[A038874(n+1), A045331(n+1)]`
-/

namespace A040116.P8848784758587460481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P8848784758587460481

namespace A040116

/-- `∪[A038874(n+1), A045331(n+1)]` -/
def P8848784758587460481.Spec : Prop :=
  ∀ n, (P8848784758587460481.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P4341009121444476292

`∪[A040101(n+1), A045331(n+1)]`
-/

namespace A040116.P4341009121444476292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P4341009121444476292

namespace A040116

/-- `∪[A040101(n+1), A045331(n+1)]` -/
def P4341009121444476292.Spec : Prop :=
  ∀ n, (P4341009121444476292.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P10983389323371078612

`∪[A040124(n+1), A045331(n+1)]`
-/

namespace A040116.P10983389323371078612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P10983389323371078612

namespace A040116

/-- `∪[A040124(n+1), A045331(n+1)]` -/
def P10983389323371078612.Spec : Prop :=
  ∀ n, (P10983389323371078612.a n : ℤ) = A040116 (n + 1)

end A040116

/-! ## A040116.P11550257269002603371

`∪[A040124(n+1), A045375(n+1)]`
-/

namespace A040116.P11550257269002603371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P11550257269002603371

namespace A040116

/-- `∪[A040124(n+1), A045375(n+1)]` -/
def P11550257269002603371.Spec : Prop :=
  ∀ n, (P11550257269002603371.a n : ℤ) = A040116 (n + 1)

end A040116

/-!
# A040117: Primes congruent to 5 (mod 12). Also primes p such that x^4 = 9 has no solution mod p.

The programs for A040117, the canonical program `A040117.P5220825624674158384` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040117 has offset 1).

The definition of A040117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040117.P5220825624674158384

`p?[12*n+5]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040117

/-- `p?[12*n+5]` -/
def P5220825624674158384.Spec : Prop :=
  ∀ n, (P5220825624674158384.a n : ℤ) = A040117 (n + 1)

theorem P5220825624674158384.correct : P5220825624674158384.Spec := by
  intro n
  simp only [A040117, Nat.add_sub_cancel]

end A040117

/-! ## A040117.P1247849790743402800

`A243183(n+2)`
-/

namespace A040117.P1247849790743402800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 2)

end

end A040117.P1247849790743402800

namespace A040117

/-- `A243183(n+2)` -/
def P1247849790743402800.Spec : Prop :=
  ∀ n, P1247849790743402800.a n = A040117 (n + 1)

end A040117

/-! ## A040117.P13261006419784304287

`∩[A002313(n+1), A007528(n+1)]`
-/

namespace A040117.P13261006419784304287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P13261006419784304287

namespace A040117

/-- `∩[A002313(n+1), A007528(n+1)]` -/
def P13261006419784304287.Spec : Prop :=
  ∀ n, (P13261006419784304287.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P6226471727158531835

`∩[A002144(n+1), A045410(n+1)]`
-/

namespace A040117.P6226471727158531835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P6226471727158531835

namespace A040117

/-- `∩[A002144(n+1), A045410(n+1)]` -/
def P6226471727158531835.Spec : Prop :=
  ∀ n, (P6226471727158531835.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P2875597171927437477

`∩[A002313(n+1), A045410(n+1)]`
-/

namespace A040117.P2875597171927437477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P2875597171927437477

namespace A040117

/-- `∩[A002313(n+1), A045410(n+1)]` -/
def P2875597171927437477.Spec : Prop :=
  ∀ n, (P2875597171927437477.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P16863230480260374988

`∩[A002144(n+1), A003627(n+2)]`
-/

namespace A040117.P16863230480260374988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P16863230480260374988

namespace A040117

/-- `∩[A002144(n+1), A003627(n+2)]` -/
def P16863230480260374988.Spec : Prop :=
  ∀ n, (P16863230480260374988.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P11792783453201137487

`∩[A045309(n+1), A002313(n+2)]`
-/

namespace A040117.P11792783453201137487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P11792783453201137487

namespace A040117

/-- `∩[A045309(n+1), A002313(n+2)]` -/
def P11792783453201137487.Spec : Prop :=
  ∀ n, (P11792783453201137487.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P6308182703831625408

`A045309(eq[1, A045309(n+1)%4]+1)`
-/

namespace A040117.P6308182703831625408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045309 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A040117.P6308182703831625408

namespace A040117

/-- `A045309(eq[1, A045309(n+1)%4]+1)` -/
def P6308182703831625408.Spec : Prop :=
  ∀ n, P6308182703831625408.a n = A040117 (n + 1)

end A040117

/-! ## A040117.P3632668715965458094

`record[∑{p}[2*n+10*n+5, #]]`
-/

namespace A040117.P3632668715965458094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (10 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040117.P3632668715965458094

namespace A040117

/-- `record[∑{p}[2*n+10*n+5, #]]` -/
def P3632668715965458094.Spec : Prop :=
  ∀ n, (P3632668715965458094.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P4407097547394052502

`A017581(A167055(n+1))`
-/

namespace A040117.P4407097547394052502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (A167055 (n + 1)).toNat

end

end A040117.P4407097547394052502

namespace A040117

/-- `A017581(A167055(n+1))` -/
def P4407097547394052502.Spec : Prop :=
  ∀ n, P4407097547394052502.a n = A040117 (n + 1)

end A040117

/-! ## A040117.P14256102542112514390

`∩[A002144(n+1), A017581(n)]`
-/

namespace A040117.P14256102542112514390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P14256102542112514390

namespace A040117

/-- `∩[A002144(n+1), A017581(n)]` -/
def P14256102542112514390.Spec : Prop :=
  ∀ n, (P14256102542112514390.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P14679377816302059130

`∩[A002313(n+1), A017581(n)]`
-/

namespace A040117.P14679377816302059130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P14679377816302059130

namespace A040117

/-- `∩[A002313(n+1), A017581(n)]` -/
def P14679377816302059130.Spec : Prop :=
  ∀ n, (P14679377816302059130.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P7435919415246540651

`∩[A003627(n+1), A017581(n)]`
-/

namespace A040117.P7435919415246540651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P7435919415246540651

namespace A040117

/-- `∩[A003627(n+1), A017581(n)]` -/
def P7435919415246540651.Spec : Prop :=
  ∀ n, (P7435919415246540651.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P440005572576473389

`∩[A003630(n+1), A017581(n)]`
-/

namespace A040117.P440005572576473389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P440005572576473389

namespace A040117

/-- `∩[A003630(n+1), A017581(n)]` -/
def P440005572576473389.Spec : Prop :=
  ∀ n, (P440005572576473389.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P18103637286873850032

`∩[A007528(n+1), A017581(n)]`
-/

namespace A040117.P18103637286873850032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P18103637286873850032

namespace A040117

/-- `∩[A007528(n+1), A017581(n)]` -/
def P18103637286873850032.Spec : Prop :=
  ∀ n, (P18103637286873850032.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P12818250146598777821

`∩[A038875(n+1), A017581(n)]`
-/

namespace A040117.P12818250146598777821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P12818250146598777821

namespace A040117

/-- `∩[A038875(n+1), A017581(n)]` -/
def P12818250146598777821.Spec : Prop :=
  ∀ n, (P12818250146598777821.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P10058144622060098295

`∩[A040028(n+1), A017581(n)]`
-/

namespace A040117.P10058144622060098295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P10058144622060098295

namespace A040117

/-- `∩[A040028(n+1), A017581(n)]` -/
def P10058144622060098295.Spec : Prop :=
  ∀ n, (P10058144622060098295.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P7336584861094024550

`∩[A040044(n+1), A017581(n)]`
-/

namespace A040117.P7336584861094024550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P7336584861094024550

namespace A040117

/-- `∩[A040044(n+1), A017581(n)]` -/
def P7336584861094024550.Spec : Prop :=
  ∀ n, (P7336584861094024550.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P3461368941820090579

`∩[A040049(n+1), A017581(n)]`
-/

namespace A040117.P3461368941820090579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P3461368941820090579

namespace A040117

/-- `∩[A040049(n+1), A017581(n)]` -/
def P3461368941820090579.Spec : Prop :=
  ∀ n, (P3461368941820090579.a n : ℤ) = A040117 (n + 1)

end A040117

/-! ## A040117.P10635654735615799140

`∩[A040054(n+1), A017581(n)]`
-/

namespace A040117.P10635654735615799140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040117.P10635654735615799140

namespace A040117

/-- `∩[A040054(n+1), A017581(n)]` -/
def P10635654735615799140.Spec : Prop :=
  ∀ n, (P10635654735615799140.a n : ℤ) = A040117 (n + 1)

end A040117

/-!
# A040118: Continued fraction for sqrt(130).

The programs for A040118, the canonical program `A040118.P11682736627170675769` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040118 has offset 0).

The definition of A040118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040118.P11682736627170675769

`a(n-3)` with `a(0)=11, a(1)=2, a(2)=2, a(3)=22`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040118

/-- `a(n-3)` -/
def P11682736627170675769.Spec : Prop :=
  ∀ n, (P11682736627170675769.a n : ℤ) = A040118 n

theorem P11682736627170675769.correct : P11682736627170675769.Spec := by
  intro n
  simp only [A040118]

end A040118

/-!
# A040119: Primes p such that x^4 = 10 has a solution mod p.

The programs for A040119, there is no canonical definition to state claims against.
-/

/-! ## A040119.P12660843478443815652

`A088387(A186635(n+1)²)`
-/

namespace A040119.P12660843478443815652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A186635 (n + 1) ^ 2).toNat

end

end A040119.P12660843478443815652

/-! ## A040119.P12244774377541409631

`A262689(A186635(n+1)²)`
-/

namespace A040119.P12244774377541409631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A186635 (n + 1) ^ 2).toNat

end

end A040119.P12244774377541409631

/-! ## A040119.P17905190280240924979

`A327979(A186635(n+1)²)`
-/

namespace A040119.P17905190280240924979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327979 (A186635 (n + 1) ^ 2).toNat

end

end A040119.P17905190280240924979

/-! ## A040119.P1491158098181054659

`A329039(A186635(n+1)²)`
-/

namespace A040119.P1491158098181054659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329039 (A186635 (n + 1) ^ 2).toNat

end

end A040119.P1491158098181054659

/-! ## A040119.P3418278527276657005

`A336643(A186635(n+1)²)`
-/

namespace A040119.P3418278527276657005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A186635 (n + 1) ^ 2).toNat

end

end A040119.P3418278527276657005

/-!
# A040121: Primes p such that x^4 = 10 has no solution mod p.

The programs for A040121, there is no canonical definition to state claims against.
-/

/-! ## A040121.P1001378363174747272

`A008578(lt[A343382(n), A086981(n+1)]+2)`
-/

namespace A040121.P1001378363174747272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A040121.P1001378363174747272

/-! ## A040121.P15005280754365675464

`A028416(comp[A127193(n+1)*A302049(3*n+2)])`
-/

namespace A040121.P15005280754365675464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127193 (n + 1) * A302049 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028416 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A040121.P15005280754365675464

/-! ## A040121.P2411586262959065109

`p?[A028416(n+1)*A319453(A034537(n+1))]`
-/

namespace A040121.P2411586262959065109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028416 (n + 1) * A319453 (A034537 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040121.P2411586262959065109

/-!
# A040122: Primes p such that x^4 = 11 has a solution mod p.

The programs for A040122, there is no canonical definition to state claims against.
-/

/-! ## A040122.P10092442578406665994

`record[p?[A303338(A167614(n+1))]]`
-/

namespace A040122.P10092442578406665994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303338 (A167614 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040122.P10092442578406665994

/-!
# A040123: Primes p such that x^4 = 11 has no solution mod p.

The programs for A040123, there is no canonical definition to state claims against.
-/

/-! ## A040123.P6828599500948823219

`p?[comp[A040122(n+1)]]`
-/

namespace A040123.P6828599500948823219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040123.P6828599500948823219

/-! ## A040123.P1011120890121862794

`p?[A175966(A080036(n))]`
-/

namespace A040123.P1011120890121862794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175966 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040123.P1011120890121862794

/-! ## A040123.P10589098889906340953

`p?[A344291(A087943(n+1))]`
-/

namespace A040123.P10589098889906340953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344291 (A087943 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040123.P10589098889906340953

/-! ## A040123.P10565232210300088390

`p?[n%A022166(A329452(n))]`
-/

namespace A040123.P10565232210300088390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A022166 (A329452 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040123.P10565232210300088390

/-! ## A040123.P14518658514841548497

`∩[A020635(n+1), A175970(n+1)]`
-/

namespace A040123.P14518658514841548497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040123.P14518658514841548497

/-!
# A040124: Primes p such that x^4 = 12 has a solution mod p.

The programs for A040124, there is no canonical definition to state claims against.
-/

/-! ## A040124.P11967241860900537848

`∪[A107142(n+1), A141123(n+1)]`
-/

namespace A040124.P11967241860900537848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040124.P11967241860900537848

/-! ## A040124.P1359362666052895288

`∩[A028805(n+1), A038874(n+1)]`
-/

namespace A040124.P1359362666052895288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040124.P1359362666052895288

/-! ## A040124.P6427513645126685517

`∩[A028805(n+1), A391369(n+1)]`
-/

namespace A040124.P6427513645126685517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040124.P6427513645126685517

/-! ## A040124.P4063544752232124649

`p?[A236998(A237038(n+1)+1)]`
-/

namespace A040124.P4063544752232124649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236998 (A237038 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040124.P4063544752232124649

/-! ## A040124.P3527971357656525525

`∩[A038874(n+1), A189891(n+1)]`
-/

namespace A040124.P3527971357656525525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040124.P3527971357656525525

/-!
# A040125: Primes p such that x^4 = 12 has no solution mod p.

The programs for A040125, there is no canonical definition to state claims against.
-/

/-! ## A040125.P14282190721201320180

`∪[A003630(n+1), A107141(n+1)]`
-/

namespace A040125.P14282190721201320180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040125.P14282190721201320180

/-! ## A040125.P11470719592387525344

`p?[comp[A040124(n+1)]]`
-/

namespace A040125.P11470719592387525344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040125.P11470719592387525344

/-! ## A040125.P658622738741279379

`p?[A140704(n+1)*A228374(n+1)]`
-/

namespace A040125.P658622738741279379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140704 (n + 1) * A228374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040125.P658622738741279379

/-! ## A040125.P11368114028906484017

`record[A348582(A111791(n+1)+4)]`
-/

namespace A040125.P11368114028906484017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348582 (A111791 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040125.P11368114028906484017

/-! ## A040125.P11932975835525813541

`∩[A040995(n+1), A139143(n+1)]`
-/

namespace A040125.P11932975835525813541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040125.P11932975835525813541

/-!
# A040126: Primes p such that x^4 = 13 has a solution mod p.

The programs for A040126, there is no canonical definition to state claims against.
-/

/-! ## A040126.P1606244089145185860

`p?[∑[A189510(A338022(n+1))]]`
-/

namespace A040126.P1606244089145185860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189510 (A338022 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040126.P1606244089145185860

/-! ## A040126.P5743402077073088371

`A000040(eq[A128115(2*(n+1)), A241069(n+1)])`
-/

namespace A040126.P5743402077073088371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A040126.P5743402077073088371

/-!
# A040127: Primes p such that x^4 = 13 has no solution mod p.

The programs for A040127, there is no canonical definition to state claims against.
-/

/-! ## A040127.P10767926267064964884

`p?[comp[A040126(n+1)]]`
-/

namespace A040127.P10767926267064964884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040126 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040127.P10767926267064964884

/-! ## A040127.P6714924377379076731

`A014963(∪[A038884(n+2), A167119(n+5)]²)`
-/

namespace A040127.P6714924377379076731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167119 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2)

end

end A040127.P6714924377379076731

/-! ## A040127.P4497123302997568365

`∩[A276357(n+1), A183869(n)]`
-/

namespace A040127.P4497123302997568365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183869 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040127.P4497123302997568365

/-! ## A040127.P1141916521261465092

`∩[A028791(n+1), A055072(n+1)]`
-/

namespace A040127.P1141916521261465092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040127.P1141916521261465092

/-!
# A040129: Primes p such that x^4 = 14 has no solution mod p.

The programs for A040129, there is no canonical definition to state claims against.
-/

/-! ## A040129.P8873294873459295146

`p?[comp[A040128(n+1)]]`
-/

namespace A040129.P8873294873459295146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040128 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040129.P8873294873459295146

/-! ## A040129.P11503783632372222849

`p?[lt[A346369(n+2), A346422(3*n+4)]]`
-/

namespace A040129.P11503783632372222849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346369 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346422 (3 * n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040129.P11503783632372222849

/-! ## A040129.P13956515305456603551

`record[A006530(A118336(n+3)*A276886(2*(n+2)))]`
-/

namespace A040129.P13956515305456603551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A118336 (n + 3) * A276886 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040129.P13956515305456603551

/-! ## A040129.P462007809993639555

`A008578(lt[A198316(n), A082859(3*n)])`
-/

namespace A040129.P462007809993639555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040129.P462007809993639555

/-! ## A040129.P9636530671951181797

`∩[A020620(n+1), A325428(n+1)]`
-/

namespace A040129.P9636530671951181797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040129.P9636530671951181797

/-!
# A040130: Primes p such that x^4 = 15 has a solution mod p.

The programs for A040130, there is no canonical definition to state claims against.
-/

/-! ## A040130.P17942799936076871343

`A038887(∑[A000188(A280303(n+1))])`
-/

namespace A040130.P17942799936076871343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A280303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A040130.P17942799936076871343

/-! ## A040130.P9575551812272502612

`A038887(A097010(n+1))*A053164(A280303(n+1))`
-/

namespace A040130.P9575551812272502612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (A097010 (n + 1)).toNat * A053164 (A280303 (n + 1)).toNat

end

end A040130.P9575551812272502612

/-! ## A040130.P12975620937274416119

`A038887(A129487(n+1))*A053164(A280303(n+1))`
-/

namespace A040130.P12975620937274416119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (A129487 (n + 1)).toNat * A053164 (A280303 (n + 1)).toNat

end

end A040130.P12975620937274416119

/-! ## A040130.P6605366779835625778

`∩[A038887(n+1), A214432(n+1)]`
-/

namespace A040130.P6605366779835625778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040130.P6605366779835625778

/-! ## A040130.P10706819117228637708

`∩[A038887(n+1), A102800(n+1)]`
-/

namespace A040130.P10706819117228637708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040130.P10706819117228637708

/-!
# A040132: Continued fraction for sqrt(145).

The programs for A040132, there is no canonical definition to state claims against.
-/

/-! ## A040132.P10928366827588364164

`4*A040006(n)`
-/

namespace A040132.P10928366827588364164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A040006 n

end

end A040132.P10928366827588364164

/-!
# A040133: Continued fraction for sqrt(146).

The programs for A040133, the canonical program `A040133.P1277180008717157365` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040133 has offset 0).

The definition of A040133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040133.P1277180008717157365

`a(n-2)` with `a(0)=12, a(1)=12, a(2)=24`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040133

/-- `a(n-2)` -/
def P1277180008717157365.Spec : Prop :=
  ∀ n, (P1277180008717157365.a n : ℤ) = A040133 n

theorem P1277180008717157365.correct : P1277180008717157365.Spec := by
  intro n
  simp only [A040133]

end A040133

/-!
# A040134: Continued fraction for sqrt(147).

The programs for A040134, the canonical program `A040134.P11830348362701484394` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040134 has offset 0).

The definition of A040134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040134.P11830348362701484394

`a(n-2)` with `a(0)=12, a(1)=8, a(2)=24`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040134

/-- `a(n-2)` -/
def P11830348362701484394.Spec : Prop :=
  ∀ n, (P11830348362701484394.a n : ℤ) = A040134 n

theorem P11830348362701484394.correct : P11830348362701484394.Spec := by
  intro n
  simp only [A040134]

end A040134

/-!
# A040135: Continued fraction for sqrt(148).

The programs for A040135, the canonical program `A040135.P13155183913115417606` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040135 has offset 0).

The definition of A040135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040135.P13155183913115417606

`a(n-2)` with `a(0)=12, a(1)=6, a(2)=24`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040135

/-- `a(n-2)` -/
def P13155183913115417606.Spec : Prop :=
  ∀ n, (P13155183913115417606.a n : ℤ) = A040135 n

theorem P13155183913115417606.correct : P13155183913115417606.Spec := by
  intro n
  simp only [A040135]

end A040135

/-!
# A040136: Primes p such that x^4 = 15 has no solution mod p.

The programs for A040136, there is no canonical definition to state claims against.
-/

/-! ## A040136.P3620135451816793887

`p?[comp[A040130(n+1)]]`
-/

namespace A040136.P3620135451816793887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040130 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040136.P3620135451816793887

/-! ## A040136.P3265823309760770591

`A235154(lt[A343609(n), A001221(2*n+1)])`
-/

namespace A040136.P3265823309760770591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040136.P3265823309760770591

/-! ## A040136.P17947525241531674670

`A154363(∑[round(2^(floor(n/4)-1))]+5)`
-/

namespace A040136.P17947525241531674670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 4⌋ - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154363 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A040136.P17947525241531674670

/-! ## A040136.P12672751826211380934

`p?[A025429(n)*A285510(n+1)]`
-/

namespace A040136.P12672751826211380934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n * A285510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040136.P12672751826211380934

/-! ## A040136.P12875101322144825654

`A006530(A216743(n+3)*A355043(n))`
-/

namespace A040136.P12875101322144825654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A216743 (n + 3) * A355043 n).toNat

end

end A040136.P12875101322144825654

/-!
# A040140: Primes p such that x^4 = 17 has no solution mod p.

The programs for A040140, there is no canonical definition to state claims against.
-/

/-! ## A040140.P816227840699977698

`p?[comp[A040138(n+1)]]`
-/

namespace A040140.P816227840699977698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040138 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040140.P816227840699977698

/-! ## A040140.P5245068988157141729

`p?[lt[A073274(A344725(n+1)+2), 2]+1+n]`
-/

namespace A040140.P5245068988157141729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (A344725 (n + 1) + 2).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040140.P5245068988157141729

/-! ## A040140.P18269822192955841059

`p?[A274459(A207858(n+1))*A340610(n+1)]`
-/

namespace A040140.P18269822192955841059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (A207858 (n + 1)).toNat * A340610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040140.P18269822192955841059

/-! ## A040140.P15510737501443937584

`p?[A274459(A207949(n+1))*A340610(n+1)]`
-/

namespace A040140.P15510737501443937584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (A207949 (n + 1)).toNat * A340610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040140.P15510737501443937584

/-! ## A040140.P17800611743951238572

`p?[A161373(A049225(n+1))]`
-/

namespace A040140.P17800611743951238572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161373 (A049225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040140.P17800611743951238572

/-!
# A040141: Primes p such that x^4 = 18 has a solution mod p.

The programs for A040141, there is no canonical definition to state claims against.
-/

/-! ## A040141.P11030076471244678275

`∩[A064953(n+1), A057751(n)]`
-/

namespace A040141.P11030076471244678275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057751 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040141.P11030076471244678275

/-! ## A040141.P2736257084361200479

`p?[eq[0, A151756(n+2)]]`
-/

namespace A040141.P2736257084361200479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151756 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040141.P2736257084361200479

/-! ## A040141.P5533615934696279385

`p?[lt[A151756(n), 1]-2]`
-/

namespace A040141.P5533615934696279385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151756 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040141.P5533615934696279385

/-! ## A040141.P16105487380609905209

`p?[Δ[A002266(A280321(n))]]`
-/

namespace A040141.P16105487380609905209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A280321 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040141.P16105487380609905209

/-! ## A040141.P8426220644716322424

`∩[A001953(n), A057751(n)]`
-/

namespace A040141.P8426220644716322424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057751 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040141.P8426220644716322424

/-!
# A040144: Primes p such that x^4 = 18 has no solution mod p.

The programs for A040144, there is no canonical definition to state claims against.
-/

/-! ## A040144.P15119782213452580973

`p?[A042965(A097218(A062289(n+1)))]`
-/

namespace A040144.P15119782213452580973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A097218 (A062289 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040144.P15119782213452580973

/-! ## A040144.P12909289061308111868

`p?[A348004(2*(n+2))]%A348003(n+5)`
-/

namespace A040144.P12909289061308111868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348004 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A348003 (n + 5))

end

end A040144.P12909289061308111868

/-! ## A040144.P1139093187120084994

`p?[lt[0, A151756(n+2)]]`
-/

namespace A040144.P1139093187120084994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151756 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040144.P1139093187120084994

/-! ## A040144.P7070847211965294918

`p?[lt[0, A151756(n)]-2]`
-/

namespace A040144.P7070847211965294918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151756 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040144.P7070847211965294918

/-! ## A040144.P4916817495448169988

`∩[A059311(n+1), A122546(n+1)]`
-/

namespace A040144.P4916817495448169988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040144.P4916817495448169988

/-!
# A040145: Primes p such that x^4 = 19 has a solution mod p.

The programs for A040145, there is no canonical definition to state claims against.
-/

/-! ## A040145.P16321198151530648972

`A142955(n+1)-A216188(A216174(n))`
-/

namespace A040145.P16321198151530648972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1) - A216188 (A216174 n).toNat

end

end A040145.P16321198151530648972

/-! ## A040145.P8115010923438675413

`A142971(A143057(n+1))+A142955(n+1)`
-/

namespace A040145.P8115010923438675413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142971 (A143057 (n + 1)).toNat + A142955 (n + 1)

end

end A040145.P8115010923438675413

/-! ## A040145.P13909880584753291738

`A142955(n+1)-A000122(A003397(n+1))`
-/

namespace A040145.P13909880584753291738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1) - A000122 (A003397 (n + 1)).toNat

end

end A040145.P13909880584753291738

/-!
# A040146: Primes p such that x^4 = 19 has no solution mod p.

The programs for A040146, there is no canonical definition to state claims against.
-/

/-! ## A040146.P6780787226780215746

`p?[comp[A040145(n+1)]]`
-/

namespace A040146.P6780787226780215746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040146.P6780787226780215746

/-! ## A040146.P10298043843495656483

`p?[A343985(2*(n+2))+1]`
-/

namespace A040146.P10298043843495656483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343985 (2 * (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040146.P10298043843495656483

/-! ## A040146.P12403869501966514601

`∩[A373700(2*n+3), A006093(n+1)]+1`
-/

namespace A040146.P12403869501966514601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373700 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A040146.P12403869501966514601

/-! ## A040146.P2114318564404689440

`A004482(∩[A373700(2*n+3), A006093(n+1)])`
-/

namespace A040146.P2114318564404689440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373700 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A040146.P2114318564404689440

/-! ## A040146.P11235092336764988447

`filter[A086957(n+2), A192490(#)]`
-/

namespace A040146.P11235092336764988447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086957 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192490 (f1 j).toNat = 1) n)

end

end A040146.P11235092336764988447

/-!
# A040147: Primes p such that x^4 = 20 has a solution mod p.

The programs for A040147, there is no canonical definition to state claims against.
-/

/-! ## A040147.P11843949286733284220

`p?[(n+1)*A284346(A284327(n+1))]`
-/

namespace A040147.P11843949286733284220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284346 (A284327 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040147.P11843949286733284220

/-! ## A040147.P16939843571378917846

`p?[C(A035259(n+1), A265892(2*n+1))]`
-/

namespace A040147.P16939843571378917846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035259 (n + 1)).toNat (A265892 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040147.P16939843571378917846

/-! ## A040147.P9607760363045643176

`p?[A271419(or(n, C(3, n))+n²-n)+n]`
-/

namespace A040147.P9607760363045643176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 ((Nat.lor n (Nat.choose 3 n) : ℤ) + ((n ^ 2 : ℤ) - (n : ℤ))).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040147.P9607760363045643176

/-! ## A040147.P3322748896269445592

`A265759(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1+n)^A043537(n+1))`
-/

namespace A040147.P3322748896269445592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265759 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1 + (n : ℚ)) ^ (A043537 (n + 1) : ℤ))).toNat

end

end A040147.P3322748896269445592

/-! ## A040147.P8664471592458502458

`A265759(A087082(n+1)+A000010(n+1))`
-/

namespace A040147.P8664471592458502458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265759 (A087082 (n + 1) + A000010 (n + 1)).toNat

end

end A040147.P8664471592458502458

/-!
# A040148: Primes p such that x^4 = 20 has no solution mod p.

The programs for A040148, there is no canonical definition to state claims against.
-/

/-! ## A040148.P15302990327185366331

`p?[comp[A040147(n+1)]]`
-/

namespace A040148.P15302990327185366331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040148.P15302990327185366331

/-! ## A040148.P12483257577185527535

`p?[lt[n%3, A353636(n²+1)]]`
-/

namespace A040148.P12483257577185527535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n ^ 2 + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040148.P12483257577185527535

/-! ## A040148.P4493426113083548771

`p?[lt[1, A005090(n*or(1, n)+1)]]`
-/

namespace A040148.P4493426113083548771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n * Nat.lor 1 n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040148.P4493426113083548771

/-! ## A040148.P10689409753007655282

`p?[∑[A126860(A322411(n))]]`
-/

namespace A040148.P10689409753007655282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126860 (A322411 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040148.P10689409753007655282

/-!
# A040149: Primes p such that x^4 = 21 has a solution mod p.

The programs for A040149, there is no canonical definition to state claims against.
-/

/-! ## A040149.P16297240998047859952

`p?[∑[A112481(A001316(n))]]`
-/

namespace A040149.P16297240998047859952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112481 (A001316 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040149.P16297240998047859952

/-!
# A040150: Primes p such that x^4 = 21 has no solution mod p.

The programs for A040150, there is no canonical definition to state claims against.
-/

/-! ## A040150.P10016374710027356823

`p?[comp[A040149(n+1)]]`
-/

namespace A040150.P10016374710027356823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040149 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040150.P10016374710027356823

/-! ## A040150.P15794315709253250027

`∩[A216775(n+2), A230313(n+2)+2]`
-/

namespace A040150.P15794315709253250027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216775 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230313 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040150.P15794315709253250027

/-! ## A040150.P17615813755385918338

`lt[A326291(n+2), A075053(A055672(n))]`
-/

namespace A040150.P17615813755385918338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A055672 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A040150.P17615813755385918338

/-! ## A040150.P16717049327015565200

`p?[A219256(record[A219182(n)])]`
-/

namespace A040150.P16717049327015565200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219182 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219256 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040150.P16717049327015565200

/-! ## A040150.P12856989965966463983

`∩[A000040(n+1), A028809(A028765(n+5))]`
-/

namespace A040150.P12856989965966463983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028809 (A028765 (n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040150.P12856989965966463983

/-!
# A040152: Primes p such that x^4 = 22 has a solution mod p.

The programs for A040152, there is no canonical definition to state claims against.
-/

/-! ## A040152.P10426201700871736218

`A038895(A023055(n+1)%A275360(n+2))`
-/

namespace A040152.P10426201700871736218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (Int.tmod (A023055 (n + 1)) (A275360 (n + 2))).toNat

end

end A040152.P10426201700871736218

/-! ## A040152.P13715701196371852383

`p?[∑[A059895(A088314(n))]]`
-/

namespace A040152.P13715701196371852383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059895 (A088314 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040152.P13715701196371852383

/-! ## A040152.P13992272676552541723

`p?[∑[A053373(A087262(n+1))]]`
-/

namespace A040152.P13992272676552541723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053373 (A087262 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040152.P13992272676552541723

/-! ## A040152.P3530613583811009220

`∩[A038895(n+1), A345914(n+1)]`
-/

namespace A040152.P3530613583811009220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040152.P3530613583811009220

/-!
# A040153: Primes p such that x^4 = 22 has no solution mod p.

The programs for A040153, there is no canonical definition to state claims against.
-/

/-! ## A040153.P6456863073308522347

`∩[A081717(n+1), A162706(A162706(n+1)-2)]`
-/

namespace A040153.P6456863073308522347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162706 (A162706 (n + 1) - 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040153.P6456863073308522347

/-! ## A040153.P7787873183734619733

`p?[A225555(n+3)%A110262(n+1)]`
-/

namespace A040153.P7787873183734619733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225555 (n + 3)) (A110262 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040153.P7787873183734619733

/-! ## A040153.P18329456514977192692

`p?[lt[A360572(n+3), A074909(2*n+1)]]`
-/

namespace A040153.P18329456514977192692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360572 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040153.P18329456514977192692

/-! ## A040153.P12891236446166475445

`A000040(lt[A134413(3*n+1), A076474(n+1)])`
-/

namespace A040153.P12891236446166475445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134413 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040153.P12891236446166475445

/-! ## A040153.P5189678159860727843

`A065091(n+5)%A000203(A022007(n+1))`
-/

namespace A040153.P5189678159860727843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 5)) (A000203 (A022007 (n + 1)).toNat)

end

end A040153.P5189678159860727843

/-!
# A040154: Primes p such that x^4 = 23 has a solution mod p.

The programs for A040154, there is no canonical definition to state claims against.
-/

/-! ## A040154.P362474248132874880

`∩[A038897(n+1), A232532(n+1)]`
-/

namespace A040154.P362474248132874880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040154.P362474248132874880

/-! ## A040154.P78290435788821041

`A038897(comp[∑[3*n]+n])%A115764(n+2)`
-/

namespace A040154.P78290435788821041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038897 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A115764 (n + 2))

end

end A040154.P78290435788821041

/-! ## A040154.P1310002265077055184

`A038897(comp[∑[3*n]+n]%A122119(n))`
-/

namespace A040154.P1310002265077055184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A122119 n)).toNat

end

end A040154.P1310002265077055184

/-! ## A040154.P17168092056201792853

`p?[A156247(A156246(n+1))-A156261(n+1)]`
-/

namespace A040154.P17168092056201792853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156247 (A156246 (n + 1)).toNat - A156261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040154.P17168092056201792853

/-! ## A040154.P1536284845523147128

`p?[eq[A028961(n), A033461(n)]]`
-/

namespace A040154.P1536284845523147128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028961 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040154.P1536284845523147128

/-!
# A040157: Continued fraction for sqrt(171).

The programs for A040157, the canonical program `A040157.P3406756614513417255` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040157 has offset 0).

The definition of A040157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040157.P3406756614513417255

`a(n-2)` with `a(0)=13, a(1)=13, a(2)=26`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040157

/-- `a(n-2)` -/
def P3406756614513417255.Spec : Prop :=
  ∀ n, (P3406756614513417255.a n : ℤ) = A040157 n

theorem P3406756614513417255.correct : P3406756614513417255.Spec := by
  intro n
  simp only [A040157]

end A040157

/-!
# A040158: Primes p such that x^4 = 23 has no solution mod p.

The programs for A040158, there is no canonical definition to state claims against.
-/

/-! ## A040158.P16037622578781869402

`A000040(lt[A070991(n+1), A301937(n)])`
-/

namespace A040158.P16037622578781869402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040158.P16037622578781869402

/-! ## A040158.P5193673775345129509

`p?[A259899(A249342(n+1))]`
-/

namespace A040158.P5193673775345129509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A249342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040158.P5193673775345129509

/-! ## A040158.P16342202829253856797

`∩[A131565(n+1), A291282(n+1)]`
-/

namespace A040158.P16342202829253856797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040158.P16342202829253856797

/-! ## A040158.P13032648775543687735

`∩[A291282(n+1), A332108(n+1)]`
-/

namespace A040158.P13032648775543687735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040158.P13032648775543687735

/-! ## A040158.P8439948687853724256

`∩[A291282(n+1), A349536(n+1)]`
-/

namespace A040158.P8439948687853724256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040158.P8439948687853724256

/-!
# A040159: Primes p such that x^5 = 2 has a solution mod p.

The programs for A040159, there is no canonical definition to state claims against.
-/

/-! ## A040159.P17600883498580059558

`p?[A080513(A123621(5*n+3))]`
-/

namespace A040159.P17600883498580059558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A123621 (5 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040159.P17600883498580059558

/-! ## A040159.P17814917814081906343

`A040990(lt[A071090(n+1), A134278(n+1)])`
-/

namespace A040159.P17814917814081906343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040159.P17814917814081906343

/-! ## A040159.P1579698073199268869

`p?[(n+1)*A020639(A007318(A284097(n+1)))]`
-/

namespace A040159.P1579698073199268869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020639 (A007318 (A284097 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040159.P1579698073199268869

/-! ## A040159.P15280539515665288239

`p?[ceil(5*n/4)]%A024770(3*n+2)`
-/

namespace A040159.P15280539515665288239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((n : ℚ) / 4)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A024770 (3 * n + 2))

end

end A040159.P15280539515665288239

/-! ## A040159.P8697707379498016180

`A020639(p?[ceil(5*n/4)]*p?[5*n+1])`
-/

namespace A040159.P8697707379498016180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((n : ℚ) / 4)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)).toNat

end

end A040159.P8697707379498016180

/-!
# A040160: Primes p such that x^5 = 2 has no solution mod p.

The programs for A040160, there is no canonical definition to state claims against.
-/

/-! ## A040160.P1059347305162996411

`A059292(∩[A059313(n+1), A059337(n+1)])`
-/

namespace A040160.P1059347305162996411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059337 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059292 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A040160.P1059347305162996411

/-! ## A040160.P1334214624156943898

`∩[A059642(n+1), A187126(n+1)]`
-/

namespace A040160.P1334214624156943898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040160.P1334214624156943898

/-! ## A040160.P16845976793906594873

`p?[A219946(A219946(n))+5*n]`
-/

namespace A040160.P16845976793906594873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219946 (A219946 n).toNat + (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040160.P16845976793906594873

/-! ## A040160.P1969481221951953029

`∩[A059337(n+1), A368812(n+1)]`
-/

namespace A040160.P1969481221951953029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040160.P1969481221951953029

/-! ## A040160.P742093732273711775

`∩[A059642(n+1), A368812(n+1)]`
-/

namespace A040160.P742093732273711775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040160.P742093732273711775

/-!
# A040161: Primes p such that x^5 = 3 has a solution mod p.

The programs for A040161, there is no canonical definition to state claims against.
-/

/-! ## A040161.P16924428337427347253

`p?[∪[A042991(n+1), A066385(n+7)]]`
-/

namespace A040161.P16924428337427347253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066385 (n + 7)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040161.P16924428337427347253

/-! ## A040161.P10574007992703247161

`p?[gcd(n+1, A016346(A051724(n)))]`
-/

namespace A040161.P10574007992703247161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A016346 (A051724 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040161.P10574007992703247161

/-! ## A040161.P9038623106702549751

`p?[A083928(n+9)+A002265(5*n)+2]`
-/

namespace A040161.P9038623106702549751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083928 (n + 9) + (A002265 (5 * n) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040161.P9038623106702549751

/-! ## A040161.P2005271807469573034

`p?[∪[A317710(3*n+1), A040171(n+1)]]`
-/

namespace A040161.P2005271807469573034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040161.P2005271807469573034

/-! ## A040161.P450271420869143516

`p?[∪[A317710(3*n+1), A040974(n+1)]]`
-/

namespace A040161.P450271420869143516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040161.P450271420869143516

/-!
# A040162: Primes p such that x^5 = 3 has no solution mod p.

The programs for A040162, there is no canonical definition to state claims against.
-/

/-! ## A040162.P7601022743777929455

`A045453(lt[A270010(2*n), A026921(n^3+1)]+1)`
-/

namespace A040162.P7601022743777929455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270010 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026921 (n ^ 3 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A040162.P7601022743777929455

/-! ## A040162.P12484827014114473736

`A030430(A061395(2^((n-1)%(n+1)))+n+1)`
-/

namespace A040162.P12484827014114473736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (A061395 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ))).toNat + (n + 1 : ℤ)).toNat

end

end A040162.P12484827014114473736

/-! ## A040162.P14182523555966903440

`p?[A016861(A105357(A138888(n+1)))]`
-/

namespace A040162.P14182523555966903440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A105357 (A138888 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040162.P14182523555966903440

/-! ## A040162.P9487404322504612554

`∩[A030430(n+1), A105427(n+1)]`
-/

namespace A040162.P9487404322504612554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040162.P9487404322504612554

/-! ## A040162.P16582927596896609795

`∩[A087759(n+1), A368812(n+1)]`
-/

namespace A040162.P16582927596896609795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040162.P16582927596896609795

/-!
# A040163: a(n) is the absolute value of (the first digit of n minus the last digit of n).

The programs for A040163, the canonical program `A040163.P12253691999876221957` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040163 has offset 1).

The definition of A040163 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A040163.P12253691999876221957

`abs(A000030(n+1)-A010879(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A040163

/-- `abs(A000030(n+1)-A010879(n+1))` -/
def P12253691999876221957.Spec : Prop :=
  ∀ n, P12253691999876221957.a n = A040163 (n + 1)

theorem P12253691999876221957.correct : P12253691999876221957.Spec := by
  intro n
  simp only [A040163, Nat.add_sub_cancel]

end A040163

/-! ## A040163.P10987007660512497577

`A037904(A073729(n+1))`
-/

namespace A040163.P10987007660512497577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A073729 (n + 1)).toNat

end

end A040163.P10987007660512497577

namespace A040163

/-- `A037904(A073729(n+1))` -/
def P10987007660512497577.Spec : Prop :=
  ∀ n, P10987007660512497577.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P16068849918859967253

`abs(A037851(n+1)-A037860(n+1))`
-/

namespace A040163.P16068849918859967253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037851 (n + 1) - A037860 (n + 1)|

end

end A040163.P16068849918859967253

namespace A040163

/-- `abs(A037851(n+1)-A037860(n+1))` -/
def P16068849918859967253.Spec : Prop :=
  ∀ n, P16068849918859967253.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P12288231115235897879

`A010879(A338827(n+1))`
-/

namespace A040163.P12288231115235897879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A338827 (n + 1)).toNat

end

end A040163.P12288231115235897879

namespace A040163

/-- `A010879(A338827(n+1))` -/
def P12288231115235897879.Spec : Prop :=
  ∀ n, P12288231115235897879.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P8950931418789465444

`A064834(n+1)*A229341(A067377(3*n+5))`
-/

namespace A040163.P8950931418789465444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (n + 1) * A229341 (A067377 (3 * n + 5)).toNat

end

end A040163.P8950931418789465444

namespace A040163

/-- `A064834(n+1)*A229341(A067377(3*n+5))` -/
def P8950931418789465444.Spec : Prop :=
  ∀ n, P8950931418789465444.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P10035347547875816737

`A064834(n+1)*A229341(A163847(n+1))`
-/

namespace A040163.P10035347547875816737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (n + 1) * A229341 (A163847 (n + 1)).toNat

end

end A040163.P10035347547875816737

namespace A040163

/-- `A064834(n+1)*A229341(A163847(n+1))` -/
def P10035347547875816737.Spec : Prop :=
  ∀ n, P10035347547875816737.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P11911268296070796804

`A064834(n+1)*A109720(A000040(2*n+1))`
-/

namespace A040163.P11911268296070796804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (n + 1) * A109720 (A000040 (2 * n + 1)).toNat

end

end A040163.P11911268296070796804

namespace A040163

/-- `A064834(n+1)*A109720(A000040(2*n+1))` -/
def P11911268296070796804.Spec : Prop :=
  ∀ n, P11911268296070796804.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P13566636316368528297

`A064834(n+1)*A109720(A067377(n+1))`
-/

namespace A040163.P13566636316368528297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (n + 1) * A109720 (A067377 (n + 1)).toNat

end

end A040163.P13566636316368528297

namespace A040163

/-- `A064834(n+1)*A109720(A067377(n+1))` -/
def P13566636316368528297.Spec : Prop :=
  ∀ n, P13566636316368528297.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P16524511872679739762

`A163533(A000217(n)+1)+A064834(n+1)`
-/

namespace A040163.P16524511872679739762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (A000217 n + 1).toNat + A064834 (n + 1)

end

end A040163.P16524511872679739762

namespace A040163

/-- `A163533(A000217(n)+1)+A064834(n+1)` -/
def P16524511872679739762.Spec : Prop :=
  ∀ n, P16524511872679739762.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P10160172529814680235

`A064834(and(1, A005183(n))+n)`
-/

namespace A040163.P10160172529814680235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (Int.land 1 (A005183 n) + (n : ℤ)).toNat

end

end A040163.P10160172529814680235

namespace A040163

/-- `A064834(and(1, A005183(n))+n)` -/
def P10160172529814680235.Spec : Prop :=
  ∀ n, P10160172529814680235.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P17448789048396135531

`A064834(and(1, A057775(n))+n)`
-/

namespace A040163.P17448789048396135531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (Int.land 1 (A057775 n) + (n : ℤ)).toNat

end

end A040163.P17448789048396135531

namespace A040163

/-- `A064834(and(1, A057775(n))+n)` -/
def P17448789048396135531.Spec : Prop :=
  ∀ n, P17448789048396135531.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P2819980629979195114

`A064834(A136687(A002113(n+1)))`
-/

namespace A040163.P2819980629979195114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A136687 (A002113 (n + 1)).toNat).toNat

end

end A040163.P2819980629979195114

namespace A040163

/-- `A064834(A136687(A002113(n+1)))` -/
def P2819980629979195114.Spec : Prop :=
  ∀ n, P2819980629979195114.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P1454281085096690257

`A064834(A131830(∑[n]))`
-/

namespace A040163.P1454281085096690257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A131830 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A040163.P1454281085096690257

namespace A040163

/-- `A064834(A131830(∑[n]))` -/
def P1454281085096690257.Spec : Prop :=
  ∀ n, P1454281085096690257.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P3611984105075867560

`A064834(2-(A014963(∑[n+1])-n))`
-/

namespace A040163.P3611984105075867560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (2 - (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ))).toNat

end

end A040163.P3611984105075867560

namespace A040163

/-- `A064834(2-(A014963(∑[n+1])-n))` -/
def P3611984105075867560.Spec : Prop :=
  ∀ n, P3611984105075867560.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P2921149101375511576

`A064834(A178815(n+1)-1+n)`
-/

namespace A040163.P2921149101375511576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A178815 (n + 1) - 1 + (n : ℤ)).toNat

end

end A040163.P2921149101375511576

namespace A040163

/-- `A064834(A178815(n+1)-1+n)` -/
def P2921149101375511576.Spec : Prop :=
  ∀ n, P2921149101375511576.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P7495335706997337342

`A040997(n+1)%A077168(n)`
-/

namespace A040163.P7495335706997337342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040997 (n + 1)) (A077168 n)

end

end A040163.P7495335706997337342

namespace A040163

/-- `A040997(n+1)%A077168(n)` -/
def P7495335706997337342.Spec : Prop :=
  ∀ n, P7495335706997337342.a n = A040163 (n + 1)

end A040163

/-! ## A040163.P2344104274226801014

`A064834(A267520(n²)+n)`
-/

namespace A040163.P2344104274226801014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A267520 (n ^ 2) + (n : ℤ)).toNat

end

end A040163.P2344104274226801014

namespace A040163

/-- `A064834(A267520(n²)+n)` -/
def P2344104274226801014.Spec : Prop :=
  ∀ n, P2344104274226801014.a n = A040163 (n + 1)

end A040163

/-!
# A040164: |First digit - last digit| for n-th prime.

The programs for A040164, the canonical program `A040164.P3745061718925245902` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040164 has offset 1).

The definition of A040164 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A040163, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A040164.P3745061718925245902

`A040163(A000040(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A040164

/-- `A040163(A000040(n+1))` -/
def P3745061718925245902.Spec : Prop :=
  ∀ n, P3745061718925245902.a n = A040164 (n + 1)

theorem P3745061718925245902.correct : P3745061718925245902.Spec := by
  intro n
  simp only [A040164, Nat.add_sub_cancel]

end A040164

/-! ## A040164.P2081908215813681913

`A037904(A137589(n+1))`
-/

namespace A040164.P2081908215813681913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A137589 (n + 1)).toNat

end

end A040164.P2081908215813681913

namespace A040164

/-- `A037904(A137589(n+1))` -/
def P2081908215813681913.Spec : Prop :=
  ∀ n, P2081908215813681913.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P754690109810138956

`A040163(p?[xor(1, n)])`
-/

namespace A040164.P754690109810138956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A040164.P754690109810138956

namespace A040164

/-- `A040163(p?[xor(1, n)])` -/
def P754690109810138956.Spec : Prop :=
  ∀ n, P754690109810138956.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P15107881033078994113

`A040163(Δ[A007504(n)])`
-/

namespace A040164.P15107881033078994113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (f1 (n + 1) - f1 n).toNat

end

end A040164.P15107881033078994113

namespace A040164

/-- `A040163(Δ[A007504(n)])` -/
def P15107881033078994113.Spec : Prop :=
  ∀ n, P15107881033078994113.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P16277192287568136284

`A040163(A004087(n+1))`
-/

namespace A040164.P16277192287568136284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A004087 (n + 1)).toNat

end

end A040164.P16277192287568136284

namespace A040164

/-- `A040163(A004087(n+1))` -/
def P16277192287568136284.Spec : Prop :=
  ∀ n, P16277192287568136284.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P1825845574776887172

`A040163(A006005(n+1))`
-/

namespace A040164.P1825845574776887172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A006005 (n + 1)).toNat

end

end A040164.P1825845574776887172

namespace A040164

/-- `A040163(A006005(n+1))` -/
def P1825845574776887172.Spec : Prop :=
  ∀ n, P1825845574776887172.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P13384994793545856754

`A040163(A161847(n+1))`
-/

namespace A040164.P13384994793545856754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A161847 (n + 1)).toNat

end

end A040164.P13384994793545856754

namespace A040164

/-- `A040163(A161847(n+1))` -/
def P13384994793545856754.Spec : Prop :=
  ∀ n, P13384994793545856754.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P1102284311732546375

`A040163(A008578(n+2))`
-/

namespace A040164.P1102284311732546375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A008578 (n + 2)).toNat

end

end A040164.P1102284311732546375

namespace A040164

/-- `A040163(A008578(n+2))` -/
def P1102284311732546375.Spec : Prop :=
  ∀ n, P1102284311732546375.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P367472325683130793

`A040163(A075643(n+2))`
-/

namespace A040164.P367472325683130793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A075643 (n + 2)).toNat

end

end A040164.P367472325683130793

namespace A040164

/-- `A040163(A075643(n+2))` -/
def P367472325683130793.Spec : Prop :=
  ∀ n, P367472325683130793.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P1535467090937085267

`A040163(A116974(n+2))`
-/

namespace A040164.P1535467090937085267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A116974 (n + 2)).toNat

end

end A040164.P1535467090937085267

namespace A040164

/-- `A040163(A116974(n+2))` -/
def P1535467090937085267.Spec : Prop :=
  ∀ n, P1535467090937085267.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P18128927676204659997

`A040163(A175787(n+2))`
-/

namespace A040164.P18128927676204659997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A175787 (n + 2)).toNat

end

end A040164.P18128927676204659997

namespace A040164

/-- `A040163(A175787(n+2))` -/
def P18128927676204659997.Spec : Prop :=
  ∀ n, P18128927676204659997.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P8067573075299995885

`A040163(record[A006530(n+2)])`
-/

namespace A040164.P8067573075299995885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A040164.P8067573075299995885

namespace A040164

/-- `A040163(record[A006530(n+2)])` -/
def P8067573075299995885.Spec : Prop :=
  ∀ n, P8067573075299995885.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P7765077354203838689

`A040163(record[A014963(n+2)])`
-/

namespace A040164.P7765077354203838689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A040164.P7765077354203838689

namespace A040164

/-- `A040163(record[A014963(n+2)])` -/
def P7765077354203838689.Spec : Prop :=
  ∀ n, P7765077354203838689.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P3804981965284113171

`A040163(record[A020639(n+2)])`
-/

namespace A040164.P3804981965284113171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A040164.P3804981965284113171

namespace A040164

/-- `A040163(record[A020639(n+2)])` -/
def P3804981965284113171.Spec : Prop :=
  ∀ n, P3804981965284113171.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P9008182567182707346

`A040163(A006093(n+1)+1)`
-/

namespace A040164.P9008182567182707346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A006093 (n + 1) + 1).toNat

end

end A040164.P9008182567182707346

namespace A040164

/-- `A040163(A006093(n+1)+1)` -/
def P9008182567182707346.Spec : Prop :=
  ∀ n, P9008182567182707346.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P9816180393239675550

`A040163(A007504(n+1)-A007504(n))`
-/

namespace A040164.P9816180393239675550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A007504 (n + 1) - A007504 n).toNat

end

end A040164.P9816180393239675550

namespace A040164

/-- `A040163(A007504(n+1)-A007504(n))` -/
def P9816180393239675550.Spec : Prop :=
  ∀ n, P9816180393239675550.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P15191913914538824317

`A037904(A138840(n+1))`
-/

namespace A040164.P15191913914538824317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A138840 (n + 1)).toNat

end

end A040164.P15191913914538824317

namespace A040164

/-- `A037904(A138840(n+1))` -/
def P15191913914538824317.Spec : Prop :=
  ∀ n, P15191913914538824317.a n = A040164 (n + 1)

end A040164

/-! ## A040164.P183738991648236065

`A040163(p?[A060681(n+1)+2])`
-/

namespace A040164.P183738991648236065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A040164.P183738991648236065

namespace A040164

/-- `A040163(p?[A060681(n+1)+2])` -/
def P183738991648236065.Spec : Prop :=
  ∀ n, P183738991648236065.a n = A040164 (n + 1)

end A040164

/-!
# A040165: Primes p such that x^5 = 5 has a solution mod p.

The programs for A040165, there is no canonical definition to state claims against.
-/

/-! ## A040165.P3388693757724234845

`p?[(n+1)*A000009(A070670(n+1))]`
-/

namespace A040165.P3388693757724234845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000009 (A070670 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040165.P3388693757724234845

/-! ## A040165.P5986764208223141454

`p?[(n+1)*A286335(A001343(n))*A252233(n+1)]`
-/

namespace A040165.P5986764208223141454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A286335 (A001343 n).toNat * A252233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040165.P5986764208223141454

/-! ## A040165.P8800375052172541408

`p?[A003968(n+1)*A293377(A001343(n))]`
-/

namespace A040165.P8800375052172541408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) * A293377 (A001343 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040165.P8800375052172541408

/-! ## A040165.P8685057896863110292

`p?[A293377(A001343(n))*A328617(n+1)]`
-/

namespace A040165.P8685057896863110292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293377 (A001343 n).toNat * A328617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040165.P8685057896863110292

/-! ## A040165.P13499481291013294275

`p?[(n+1)*A286335(A001343(n))]`
-/

namespace A040165.P13499481291013294275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A286335 (A001343 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040165.P13499481291013294275

/-!
# A040167: Primes p such that x^5 = 5 has no solution mod p.

The programs for A040167, there is no canonical definition to state claims against.
-/

/-! ## A040167.P8928032644335073439

`A030430(lt[A017904(n), A302242(3*n+2)])`
-/

namespace A040167.P8928032644335073439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040167.P8928032644335073439

/-! ## A040167.P2959726915429749878

`A030430(lt[A017903(n), A302242(3*n+2)])`
-/

namespace A040167.P2959726915429749878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040167.P2959726915429749878

/-! ## A040167.P1657776761466129841

`A030430(lt[A152285(2*(n+1)), A141813(n+1)])`
-/

namespace A040167.P1657776761466129841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152285 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040167.P1657776761466129841

/-! ## A040167.P6536450311656586659

`p?[record[A327723(A052421(n+2))]]`
-/

namespace A040167.P6536450311656586659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327723 (A052421 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040167.P6536450311656586659

/-! ## A040167.P11120673516878689864

`∩[A242313(n+1), A396082(n+1)]`
-/

namespace A040167.P11120673516878689864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040167.P11120673516878689864

/-!
# A040169: Primes p such that x^5 = 6 has a solution mod p.

The programs for A040169, there is no canonical definition to state claims against.
-/

/-! ## A040169.P10364522487530179951

`p?[A236678(A126010(n+1)+n)+n+1]`
-/

namespace A040169.P10364522487530179951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236678 (A126010 (n + 1) + (n : ℤ)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040169.P10364522487530179951

/-! ## A040169.P18073850209262675586

`p?[A033810(A000982(A213637(n+1)))]`
-/

namespace A040169.P18073850209262675586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 (A000982 (A213637 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040169.P18073850209262675586

/-! ## A040169.P13513700298476585340

`record[A136548(A102823(n+2)+A087960(n²))]`
-/

namespace A040169.P13513700298476585340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A102823 (n + 2) + A087960 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040169.P13513700298476585340

/-!
# A040170: Primes p such that x^5 = 6 has no solution mod p.

The programs for A040170, there is no canonical definition to state claims against.
-/

/-! ## A040170.P14692600432446169990

`A030430(A285958(n+1)%A049500(n+3))`
-/

namespace A040170.P14692600432446169990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (Int.tmod (A285958 (n + 1)) (A049500 (n + 3))).toNat

end

end A040170.P14692600432446169990

/-! ## A040170.P2945216308421420314

`A030430(A285958(n+1))%A096762(n+4)`
-/

namespace A040170.P2945216308421420314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030430 (A285958 (n + 1)).toNat) (A096762 (n + 4))

end

end A040170.P2945216308421420314

/-! ## A040170.P16957599037163027070

`A030430(ceil(log(A243850(3*n+4))))`
-/

namespace A040170.P16957599037163027070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 ⌈Real.log (A243850 (3 * n + 4) : ℝ)⌉.toNat

end

end A040170.P16957599037163027070

/-! ## A040170.P15266174372628177779

`A045453(lt[A271341(n), A000265(n+1)])`
-/

namespace A040170.P15266174372628177779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040170.P15266174372628177779

/-! ## A040170.P5127255726820182594

`A030430(lt[A125135(n+5), A072663(n+1)])`
-/

namespace A040170.P5127255726820182594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125135 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040170.P5127255726820182594

/-!
# A040171: Primes p such that x^5 = 7 has a solution mod p.

The programs for A040171, there is no canonical definition to state claims against.
-/

/-! ## A040171.P7981667493129115420

`p?[A040974(n+1)-A034570(n+1)]`
-/

namespace A040171.P7981667493129115420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1) - A034570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040171.P7981667493129115420

/-! ## A040171.P73291867935160921

`p?[A042991(n+1)-A034570(n+1)]`
-/

namespace A040171.P73291867935160921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1) - A034570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040171.P73291867935160921

/-! ## A040171.P4448283729270274617

`A040974(n+1)-A178930(A034577(n+1))`
-/

namespace A040171.P4448283729270274617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1) - A178930 (A034577 (n + 1)).toNat

end

end A040171.P4448283729270274617

/-!
# A040172: Primes p such that x^5 = 7 has no solution mod p.

The programs for A040172, there is no canonical definition to state claims against.
-/

/-! ## A040172.P4752465310643215133

`p?[A306277(A317710(n+1))]`
-/

namespace A040172.P4752465310643215133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (A317710 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040172.P4752465310643215133

/-! ## A040172.P3119960228560408481

`∩[A030430(n+1), A306277(A317710(n+1))]`
-/

namespace A040172.P3119960228560408481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (A317710 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040172.P3119960228560408481

/-! ## A040172.P4048834094493731456

`p?[A003557(A332700(n))+10*n]`
-/

namespace A040172.P4048834094493731456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A332700 n).toNat + (10 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040172.P4048834094493731456

/-! ## A040172.P12260641838472130177

`p?[A008592(n)+A003557(A332700(n))]`
-/

namespace A040172.P12260641838472130177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + A003557 (A332700 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040172.P12260641838472130177

/-! ## A040172.P1187495422992010529

`∩[A100725(n+1), A016861(n)]`
-/

namespace A040172.P1187495422992010529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040172.P1187495422992010529

/-!
# A040173: Numerator of probability that 2 elements of S_n chosen at random (with replacement) generate S_n.

The programs for A040173, there is no canonical definition to state claims against.
-/

/-! ## A040173.P6078342941713897919

`A071605(n+1)/gcd(A071605(n+1), A086502(n+1))`
-/

namespace A040173.P6078342941713897919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071605 (n + 1) : ℚ) / (Int.gcd (A071605 (n + 1)) (A086502 (n + 1)) : ℚ)

end

end A040173.P6078342941713897919

/-! ## A040173.P17663679223726445850

`xor(A001333(n), A329860(A000079(n)))`
-/

namespace A040173.P17663679223726445850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001333 n) (A329860 (A000079 n).toNat)

end

end A040173.P17663679223726445850

/-! ## A040173.P7093057184766260730

`A006530(A135474(n+1)^A000700(n))`
-/

namespace A040173.P7093057184766260730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A135474 (n + 1) : ℚ) ^ (A000700 n : ℤ))).toNat

end

end A040173.P7093057184766260730

/-!
# A040174: Denominator of probability that 2 elements of S_n chosen at random (with replacement) generate S_n.

The programs for A040174, there is no canonical definition to state claims against.
-/

/-! ## A040174.P3104869526550587109

`A038566(3*n+5)*A065428(A063886(n))`
-/

namespace A040174.P3104869526550587109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (3 * n + 5) * A065428 (A063886 n).toNat

end

end A040174.P3104869526550587109

/-! ## A040174.P5225419776736470620

`A135872(a(n-1)+1)` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A040174.P5225419776736470620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2] fun n a =>
  A135872 (a (n - 1) + 1).toNat

end

end A040174.P5225419776736470620

/-!
# A040175: a(n) = n! times probability that an ordered pair of elements of S_n chosen at random (with replacement) generate S_n.

The programs for A040175, there is no canonical definition to state claims against.
-/

/-! ## A040175.P5054428731215382952

`A071605(n+3)/(n+3)!`
-/

namespace A040175.P5054428731215382952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071605 (n + 3) : ℚ) / (Nat.factorial (n + 3) : ℚ)

end

end A040175.P5054428731215382952

/-! ## A040175.P7962431121276692480

`A135474(n+3)/(n+3)`
-/

namespace A040175.P7962431121276692480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135474 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A040175.P7962431121276692480

/-!
# A040177: Primes p such that x^5 = 10 has a solution mod p.

The programs for A040177, there is no canonical definition to state claims against.
-/

/-! ## A040177.P9190928734883318374

`record[A053139(A016389(n)+A008619(2*n+1))]`
-/

namespace A040177.P9190928734883318374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (A016389 n + A008619 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040177.P9190928734883318374

/-! ## A040177.P9441231396173995336

`eq[A032741(n), A131361(A131361(n))]`
-/

namespace A040177.P9441231396173995336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131361 (A131361 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040177.P9441231396173995336

/-! ## A040177.P14073404876565312473

`lt[A024629(A131361(n)), A055671(n)]`
-/

namespace A040177.P14073404876565312473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A131361 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A040177.P14073404876565312473

/-! ## A040177.P1878371568813115770

`lt[A131361(A131361(n)²), A055671(n)]`
-/

namespace A040177.P1878371568813115770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131361 (A131361 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A040177.P1878371568813115770

/-! ## A040177.P6890640170427773337

`A118759(A040184(n+1))`
-/

namespace A040177.P6890640170427773337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A040184 (n + 1)).toNat

end

end A040177.P6890640170427773337

/-!
# A040178: Primes p such that x^5 = 10 has no solution mod p.

The programs for A040178, there is no canonical definition to state claims against.
-/

/-! ## A040178.P4494829185389546372

`p?[A145286(A145353(n+1))]`
-/

namespace A040178.P4494829185389546372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145286 (A145353 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040178.P4494829185389546372

/-! ## A040178.P479771979787251657

`∩[A296520(n+1), a(n-2)+10]` with `a(0)=0, a(1)=1`
-/

namespace A040178.P479771979787251657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296520 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) + 10

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A040178.P479771979787251657

/-! ## A040178.P12497903167582319086

`∩[A172096(n+1), A016861(n)]`
-/

namespace A040178.P12497903167582319086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040178.P12497903167582319086

/-! ## A040178.P439255116345330111

`∩[A296520(n+1), A016861(n)]`
-/

namespace A040178.P439255116345330111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040178.P439255116345330111

/-! ## A040178.P13610242872055487553

`∩[A066500(n+1), A113911(n+1)]`
-/

namespace A040178.P13610242872055487553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040178.P13610242872055487553

/-!
# A040179: Primes p such that x^5 = 11 has a solution mod p.

The programs for A040179, there is no canonical definition to state claims against.
-/

/-! ## A040179.P12817722542934592503

`A040986(n+1)%A115933(n+1)`
-/

namespace A040179.P12817722542934592503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040986 (n + 1)) (A115933 (n + 1))

end

end A040179.P12817722542934592503

/-! ## A040179.P10244407183754756411

`∩[A040986(n+1), A088450(n+1)]`
-/

namespace A040179.P10244407183754756411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040179.P10244407183754756411

/-! ## A040179.P8522018280828145113

`∩[A040986(n+1), A166158(n+1)]`
-/

namespace A040179.P8522018280828145113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040179.P8522018280828145113

/-! ## A040179.P3631137200526445012

`∩[A040986(n+1), A283970(n+1)]`
-/

namespace A040179.P3631137200526445012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040179.P3631137200526445012

/-! ## A040179.P9192874489296084220

`∩[A040986(n+1), A298538(n+1)]`
-/

namespace A040179.P9192874489296084220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040179.P9192874489296084220

/-!
# A040180: Primes p such that x^5 = 11 has no solution mod p.

The programs for A040180, there is no canonical definition to state claims against.
-/

/-! ## A040180.P9617585955797217075

`p?[(10*n+1)%A299458(7*n+3)]`
-/

namespace A040180.P9617585955797217075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 * n + 1 : ℤ) (A299458 (7 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040180.P9617585955797217075

/-! ## A040180.P1427537509024914740

`∩[A145286(n+1), A154319(n+1)]`
-/

namespace A040180.P1427537509024914740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040180.P1427537509024914740

/-! ## A040180.P2931981933312215138

`A040987(lt[A357643(n), A008816(n)])`
-/

namespace A040180.P2931981933312215138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040987 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040180.P2931981933312215138

/-! ## A040180.P6596698589436084494

`A030430(lt[A082984(n+1), A253886(n)])`
-/

namespace A040180.P6596698589436084494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040180.P6596698589436084494

/-!
# A040182: Continued fraction for sqrt(197).

The programs for A040182, there is no canonical definition to state claims against.
-/

/-! ## A040182.P7901566843719008438

`2*A040042(n)`
-/

namespace A040182.P7901566843719008438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040042 n

end

end A040182.P7901566843719008438

/-!
# A040183: Continued fraction for sqrt(198).

The programs for A040183, the canonical program `A040183.P17736113911323239774` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040183 has offset 0).

The definition of A040183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040183.P17736113911323239774

`a(n-2)` with `a(0)=14, a(1)=14, a(2)=28`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040183

/-- `a(n-2)` -/
def P17736113911323239774.Spec : Prop :=
  ∀ n, (P17736113911323239774.a n : ℤ) = A040183 n

theorem P17736113911323239774.correct : P17736113911323239774.Spec := by
  intro n
  simp only [A040183]

end A040183

/-!
# A040184: Primes p such that x^5 = 12 has a solution mod p.

The programs for A040184, there is no canonical definition to state claims against.
-/

/-! ## A040184.P17956769225792580981

`A061340(A040988(n+1))`
-/

namespace A040184.P17956769225792580981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061340 (A040988 (n + 1)).toNat

end

end A040184.P17956769225792580981

/-! ## A040184.P12441286649671912673

`∩[A040988(n+1), A106317(n+1)]`
-/

namespace A040184.P12441286649671912673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040184.P12441286649671912673

/-! ## A040184.P14974374575370415657

`∩[A040988(n+1), A236105(n+1)]`
-/

namespace A040184.P14974374575370415657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040184.P14974374575370415657

/-! ## A040184.P11532529886302759831

`∩[A040988(n+1), A285304(n+1)]`
-/

namespace A040184.P11532529886302759831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040184.P11532529886302759831

/-! ## A040184.P12542795957779724318

`∩[A040988(n+1), A325395(n+1)]`
-/

namespace A040184.P12542795957779724318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040184.P12542795957779724318

/-!
# A040185: Continued fraction for sqrt(200).

The programs for A040185, the canonical program `A040185.P11042023744176492656` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040185 has offset 0).

The definition of A040185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040185.P11042023744176492656

`a(n-2)` with `a(0)=14, a(1)=7, a(2)=28`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040185

/-- `a(n-2)` -/
def P11042023744176492656.Spec : Prop :=
  ∀ n, (P11042023744176492656.a n : ℤ) = A040185 n

theorem P11042023744176492656.correct : P11042023744176492656.Spec := by
  intro n
  simp only [A040185]

end A040185

/-!
# A040187: Continued fraction for sqrt(202).

The programs for A040187, the canonical program `A040187.P16079794214572936351` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040187 has offset 0).

The definition of A040187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040187.P16079794214572936351

`a(n-7)` with `a(0)=14, a(1)=4, a(2)=1, a(3)=2, a(4)=2, a(5)=1, a(6)=4, a(7)=28`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040187

/-- `a(n-7)` -/
def P16079794214572936351.Spec : Prop :=
  ∀ n, (P16079794214572936351.a n : ℤ) = A040187 n

theorem P16079794214572936351.correct : P16079794214572936351.Spec := by
  intro n
  simp only [A040187]

end A040187

/-!
# A040188: Continued fraction for sqrt(203).

The programs for A040188, the canonical program `A040188.P14319406205498971227` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040188 has offset 0).

The definition of A040188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040188.P14319406205498971227

`a(n-2)` with `a(0)=14, a(1)=4, a(2)=28`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040188

/-- `a(n-2)` -/
def P14319406205498971227.Spec : Prop :=
  ∀ n, (P14319406205498971227.a n : ℤ) = A040188 n

theorem P14319406205498971227.correct : P14319406205498971227.Spec := by
  intro n
  simp only [A040188]

end A040188

