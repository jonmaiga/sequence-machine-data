import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B011.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A040928: Continued fraction for sqrt(959).

The programs for A040928, the canonical program `A040928.P3484594305526774822` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040928 has offset 0).

The definition of A040928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040928.P3484594305526774822

`a(n-4)` with `a(0)=30, a(1)=1, a(2)=29, a(3)=1, a(4)=60`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040928

/-- `a(n-4)` -/
def P3484594305526774822.Spec : Prop :=
  ∀ n, (P3484594305526774822.a n : ℤ) = A040928 n

theorem P3484594305526774822.correct : P3484594305526774822.Spec := by
  intro n
  simp only [A040928]

end A040928

/-!
# A040931: Continued fraction for sqrt(963).

The programs for A040931, the canonical program `A040931.P4879972020719054931` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040931 has offset 0).

The definition of A040931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040931.P4879972020719054931

`a(n-2)` with `a(0)=31, a(1)=31, a(2)=62`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040931

/-- `a(n-2)` -/
def P4879972020719054931.Spec : Prop :=
  ∀ n, (P4879972020719054931.a n : ℤ) = A040931 n

theorem P4879972020719054931.correct : P4879972020719054931.Spec := by
  intro n
  simp only [A040931]

end A040931

/-!
# A040960: Continued fraction for sqrt(992).

The programs for A040960, the canonical program `A040960.P17555520016820167343` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040960 has offset 0).

The definition of A040960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040960.P17555520016820167343

`a(n-2)` with `a(0)=31, a(1)=2, a(2)=62`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040960

/-- `a(n-2)` -/
def P17555520016820167343.Spec : Prop :=
  ∀ n, (P17555520016820167343.a n : ℤ) = A040960 n

theorem P17555520016820167343.correct : P17555520016820167343.Spec := by
  intro n
  simp only [A040960]

end A040960

/-!
# A040961: Continued fraction for sqrt(993).

The programs for A040961, the canonical program `A040961.P12239413092404773850` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040961 has offset 0).

The definition of A040961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040961.P12239413092404773850

`a(n-6)` with `a(0)=31, a(1)=1, a(2)=1, a(3)=20, a(4)=1, a(5)=1, a(6)=62`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040961

/-- `a(n-6)` -/
def P12239413092404773850.Spec : Prop :=
  ∀ n, (P12239413092404773850.a n : ℤ) = A040961 n

theorem P12239413092404773850.correct : P12239413092404773850.Spec := by
  intro n
  simp only [A040961]

end A040961

/-!
# A040969: Primes p such that x^5 = 12 has no solution mod p.

The programs for A040969, there is no canonical definition to state claims against.
-/

/-! ## A040969.P13541797595703194734

`A030430(∑[A000034(A164196(n))])`
-/

namespace A040969.P13541797595703194734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A164196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A040969.P13541797595703194734

/-! ## A040969.P3942524806032469357

`∩[A145286(n+1), A262831(n+1)]`
-/

namespace A040969.P3942524806032469357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040969.P3942524806032469357

/-! ## A040969.P16804786853627999916

`p?[A066638(6*n+16)-n]`
-/

namespace A040969.P16804786853627999916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066638 (6 * n + 16) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040969.P16804786853627999916

/-! ## A040969.P12547550807858051267

`p?[A242313(comp[∑[n-1]]+3)]`
-/

namespace A040969.P12547550807858051267
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242313 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040969.P12547550807858051267

/-! ## A040969.P3813392283212947347

`A327346(A033621(n+2))`
-/

namespace A040969.P3813392283212947347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327346 (A033621 (n + 2)).toNat

end

end A040969.P3813392283212947347

/-!
# A040970: Primes p such that x^5 = 13 has a solution mod p.

The programs for A040970, there is no canonical definition to state claims against.
-/

/-! ## A040970.P7079586120130196325

`p?[gcd(n+1, A133707(A178899(n+1)+1))+n+1]`
-/

namespace A040970.P7079586120130196325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A133707 (A178899 (n + 1) + 1).toNat) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040970.P7079586120130196325

/-! ## A040970.P8425738417406059808

`p?[A047207(n+1)-A267635(A000217(n))]`
-/

namespace A040970.P8425738417406059808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047207 (n + 1) - A267635 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040970.P8425738417406059808

/-! ## A040970.P6806713714950893191

`p?[A080513(A123621(5*n+3))-90]`
-/

namespace A040970.P6806713714950893191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A123621 (5 * n + 3)).toNat - 90

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040970.P6806713714950893191

/-! ## A040970.P3219772597457125981

`∩[A040179(n+1), A183106(n+1)]`
-/

namespace A040970.P3219772597457125981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040970.P3219772597457125981

/-! ## A040970.P5621623251892628383

`∩[A040986(n+1), A183106(n+1)]`
-/

namespace A040970.P5621623251892628383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040970.P5621623251892628383

/-!
# A040971: Primes p such that x^5 = 13 has no solution mod p.

The programs for A040971, there is no canonical definition to state claims against.
-/

/-! ## A040971.P3437950606976617689

`A030430(lt[A247390(n+4), A247442(n+5)])`
-/

namespace A040971.P3437950606976617689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247390 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247442 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040971.P3437950606976617689

/-! ## A040971.P17154002958145540967

`p?[∑[A165826(A106317(n+1))]]`
-/

namespace A040971.P17154002958145540967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (A106317 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040971.P17154002958145540967

/-! ## A040971.P17709109709726452960

`record[A222249(p?[A114011(n+4)])]`
-/

namespace A040971.P17709109709726452960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114011 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040971.P17709109709726452960

/-! ## A040971.P6785818141817914857

`p?[or(A014064(n), A114011(n+4))]`
-/

namespace A040971.P6785818141817914857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014064 n) (A114011 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040971.P6785818141817914857

/-! ## A040971.P5349999955200469708

`∩[A034849(n+1), A242313(n+1)]`
-/

namespace A040971.P5349999955200469708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040971.P5349999955200469708

/-!
# A040972: Primes p such that x^5 = 14 has a solution mod p.

The programs for A040972, there is no canonical definition to state claims against.
-/

/-! ## A040972.P10186107876881788567

`p?[A326536(n+1)%A098727(A326536(n+1))]`
-/

namespace A040972.P10186107876881788567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326536 (n + 1)) (A098727 (A326536 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040972.P10186107876881788567

/-! ## A040972.P6487907894057770248

`p?[record[A194871(2*n+1)]]`
-/

namespace A040972.P6487907894057770248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040972.P6487907894057770248

/-! ## A040972.P17401740294956706639

`p?[gcd(n*A008425(n), A255184(n))]`
-/

namespace A040972.P17401740294956706639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A008425 n) (A255184 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040972.P17401740294956706639

/-! ## A040972.P16720517933458070463

`lt[A038699(n+1), A007376(n)+n]`
-/

namespace A040972.P16720517933458070463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A040972.P16720517933458070463

/-! ## A040972.P7591011194356213436

`p?[A002024(A000124(n)-A007376(n))]`
-/

namespace A040972.P7591011194356213436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000124 n - A007376 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040972.P7591011194356213436

/-!
# A040973: Primes p such that x^5 = 14 has no solution mod p.

The programs for A040973, there is no canonical definition to state claims against.
-/

/-! ## A040973.P13034158713433413352

`p?[A047209(p?[A295282(n+1)])]`
-/

namespace A040973.P13034158713433413352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295282 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040973.P13034158713433413352

/-! ## A040973.P11604325842338018833

`A119816(A352954(n+1))`
-/

namespace A040973.P11604325842338018833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119816 (A352954 (n + 1)).toNat

end

end A040973.P11604325842338018833

/-!
# A040975: Primes p such that x^5 = 15 has no solution mod p.

The programs for A040975, there is no canonical definition to state claims against.
-/

/-! ## A040975.P4626673351782518434

`p?[A016861(A332076(n+1))]`
-/

namespace A040975.P4626673351782518434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A332076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040975.P4626673351782518434

/-! ## A040975.P12430094797163179256

`p?[A008619(10*A332076(n+1))]`
-/

namespace A040975.P12430094797163179256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (10 * A332076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040975.P12430094797163179256

/-! ## A040975.P5574704758550657055

`p?[A332076(n+1)+A042948(A332075(n+1))]`
-/

namespace A040975.P5574704758550657055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332076 (n + 1) + A042948 (A332075 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040975.P5574704758550657055

/-! ## A040975.P15651697549405993624

`A030430(lt[A341868(n), A151728(3*n)])`
-/

namespace A040975.P15651697549405993624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341868 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151728 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040975.P15651697549405993624

/-! ## A040975.P4819953902301411293

`A030430(lt[A025284(n+1), A151728(3*n)])`
-/

namespace A040975.P4819953902301411293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151728 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040975.P4819953902301411293

/-!
# A040976: a(n) = prime(n) - 2.

The programs for A040976, the canonical program `A040976.P11599754272797435513` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040976 has offset 1).

The definition of A040976 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A040976.P11599754272797435513

`A000040(n+1)-2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A040976

/-- `A000040(n+1)-2` -/
def P11599754272797435513.Spec : Prop :=
  ∀ n, P11599754272797435513.a n = A040976 (n + 1)

theorem P11599754272797435513.correct : P11599754272797435513.Spec := by
  intro n
  simp only [A040976, Nat.add_sub_cancel]

end A040976

/-! ## A040976.P14296692773184175490

`p?[round(8*n/7)]-2`
-/

namespace A040976.P14296692773184175490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A040976.P14296692773184175490

namespace A040976

/-- `p?[round(8*n/7)]-2` -/
def P14296692773184175490.Spec : Prop :=
  ∀ n, P14296692773184175490.a n = A040976 (n + 1)

end A040976

/-! ## A040976.P8317292632039467364

`∑[A075526(n)]-1`
-/

namespace A040976.P8317292632039467364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A040976.P8317292632039467364

namespace A040976

/-- `∑[A075526(n)]-1` -/
def P8317292632039467364.Spec : Prop :=
  ∀ n, P8317292632039467364.a n = A040976 (n + 1)

end A040976

/-! ## A040976.P6527334032907336581

`Δ[A007504(n)]-2`
-/

namespace A040976.P6527334032907336581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A040976.P6527334032907336581

namespace A040976

/-- `Δ[A007504(n)]-2` -/
def P6527334032907336581.Spec : Prop :=
  ∀ n, P6527334032907336581.a n = A040976 (n + 1)

end A040976

/-! ## A040976.P16800225905823206573

`A086801(n+1)+1`
-/

namespace A040976.P16800225905823206573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 1

end

end A040976.P16800225905823206573

namespace A040976

/-- `A086801(n+1)+1` -/
def P16800225905823206573.Spec : Prop :=
  ∀ n, P16800225905823206573.a n = A040976 (n + 1)

end A040976

/-! ## A040976.P8186150085360767355

`A006093(n+1)-1`
-/

namespace A040976.P8186150085360767355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 1

end

end A040976.P8186150085360767355

namespace A040976

/-- `A006093(n+1)-1` -/
def P8186150085360767355.Spec : Prop :=
  ∀ n, P8186150085360767355.a n = A040976 (n + 1)

end A040976

/-! ## A040976.P6321805903761757063

`A008864(n+1)-3`
-/

namespace A040976.P6321805903761757063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 3

end

end A040976.P6321805903761757063

namespace A040976

/-- `A008864(n+1)-3` -/
def P6321805903761757063.Spec : Prop :=
  ∀ n, P6321805903761757063.a n = A040976 (n + 1)

end A040976

/-! ## A040976.P8790036797506668353

`A113935(n+1)-5`
-/

namespace A040976.P8790036797506668353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - 5

end

end A040976.P8790036797506668353

namespace A040976

/-- `A113935(n+1)-5` -/
def P8790036797506668353.Spec : Prop :=
  ∀ n, P8790036797506668353.a n = A040976 (n + 1)

end A040976

/-! ## A040976.P10151777421314892219

`A065890(n+1)+n`
-/

namespace A040976.P10151777421314892219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + (n : ℤ)

end

end A040976.P10151777421314892219

namespace A040976

/-- `A065890(n+1)+n` -/
def P10151777421314892219.Spec : Prop :=
  ∀ n, P10151777421314892219.a n = A040976 (n + 1)

end A040976

/-! ## A040976.P17007967711965336683

`sqrt(A001248(n+1))-2`
-/

namespace A040976.P17007967711965336683
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - 2

end

end A040976.P17007967711965336683

namespace A040976

/-- `sqrt(A001248(n+1))-2` -/
def P17007967711965336683.Spec : Prop :=
  ∀ n, P17007967711965336683.a n = (A040976 (n + 1) : ℝ)

end A040976

/-! ## A040976.P11889990367099802791

`∑[A054541(n+1)]-2`
-/

namespace A040976.P11889990367099802791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A040976.P11889990367099802791

namespace A040976

/-- `∑[A054541(n+1)]-2` -/
def P11889990367099802791.Spec : Prop :=
  ∀ n, P11889990367099802791.a n = A040976 (n + 1)

end A040976

/-! ## A040976.P9866080543129286125

`A001748(n+1)/3-2`
-/

namespace A040976.P9866080543129286125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3 - 2

end

end A040976.P9866080543129286125

namespace A040976

/-- `A001748(n+1)/3-2` -/
def P9866080543129286125.Spec : Prop :=
  ∀ n, P9866080543129286125.a n = (A040976 (n + 1) : ℚ)

end A040976

/-! ## A040976.P8245497049255511841

`A001749(n+1)/4-2`
-/

namespace A040976.P8245497049255511841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 4 - 2

end

end A040976.P8245497049255511841

namespace A040976

/-- `A001749(n+1)/4-2` -/
def P8245497049255511841.Spec : Prop :=
  ∀ n, P8245497049255511841.a n = (A040976 (n + 1) : ℚ)

end A040976

/-! ## A040976.P1582235544873668787

`A001750(n+1)/5-2`
-/

namespace A040976.P1582235544873668787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001750 (n + 1) : ℚ) / 5 - 2

end

end A040976.P1582235544873668787

namespace A040976

/-- `A001750(n+1)/5-2` -/
def P1582235544873668787.Spec : Prop :=
  ∀ n, P1582235544873668787.a n = (A040976 (n + 1) : ℚ)

end A040976

/-! ## A040976.P5321324746195586882

`A014688(n+1)-(n+3)`
-/

namespace A040976.P5321324746195586882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (n + 3 : ℤ)

end

end A040976.P5321324746195586882

namespace A040976

/-- `A014688(n+1)-(n+3)` -/
def P5321324746195586882.Spec : Prop :=
  ∀ n, P5321324746195586882.a n = A040976 (n + 1)

end A040976

/-! ## A040976.P2030137823044279105

`∑[A230849(2*n+1)]-1`
-/

namespace A040976.P2030137823044279105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A040976.P2030137823044279105

namespace A040976

/-- `∑[A230849(2*n+1)]-1` -/
def P2030137823044279105.Spec : Prop :=
  ∀ n, P2030137823044279105.a n = A040976 (n + 1)

end A040976

/-! ## A040976.P17488341886853502347

`∑[A230847(n+1)]-(n+3)`
-/

namespace A040976.P17488341886853502347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 3 : ℤ)

end

end A040976.P17488341886853502347

namespace A040976

/-- `∑[A230847(n+1)]-(n+3)` -/
def P17488341886853502347.Spec : Prop :=
  ∀ n, P17488341886853502347.a n = A040976 (n + 1)

end A040976

/-! ## A040976.P7177592071333036652

`Δ[a(n-1)-(2-A000040(n))]` with `a(0)=0`
-/

namespace A040976.P7177592071333036652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (2 - A000040 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A040976.P7177592071333036652

namespace A040976

/-- `Δ[a(n-1)-(2-A000040(n))]` -/
def P7177592071333036652.Spec : Prop :=
  ∀ n, P7177592071333036652.a n = A040976 (n + 1)

end A040976

/-! ## A040976.P12061732951268344420

`A161912(n)+A006218(n)`
-/

namespace A040976.P12061732951268344420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 n + A006218 n

end

end A040976.P12061732951268344420

namespace A040976

/-- `A161912(n)+A006218(n)` -/
def P12061732951268344420.Spec : Prop :=
  ∀ n, P12061732951268344420.a n = A040976 (n + 1)

end A040976

/-! ## A040976.P3996310654200207030

`A023443(n)+A014689(n+1)`
-/

namespace A040976.P3996310654200207030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A014689 (n + 1)

end

end A040976.P3996310654200207030

namespace A040976

/-- `A023443(n)+A014689(n+1)` -/
def P3996310654200207030.Spec : Prop :=
  ∀ n, P3996310654200207030.a n = A040976 (n + 1)

end A040976

/-!
# A040977: a(n) = binomial(n+5,5)*(n+3)/3.

The programs for A040977, the canonical program `A040977.P17094286001024075111` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040977 has offset 0).

The definition of A040977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040977.P17103910301091846667

`(n+1)*(n+2)*(n+3)²*(n+4)*(n+5)/360`
-/

namespace A040977.P17103910301091846667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * ((n + 2) * (n + 3) ^ 2) : ℚ) * ((n + 4 : ℚ) * ((n + 5 : ℚ) / 360))

end

end A040977.P17103910301091846667

namespace A040977

/-- `(n+1)*(n+2)*(n+3)²*(n+4)*(n+5)/360` -/
def P17103910301091846667.Spec : Prop :=
  ∀ n, P17103910301091846667.a n = (A040977 n : ℚ)

end A040977

/-! ## A040977.P17094286001024075111

`A000579(n+5)+A000579(n+6)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A040977

/-- `A000579(n+5)+A000579(n+6)` -/
def P17094286001024075111.Spec : Prop :=
  ∀ n, P17094286001024075111.a n = A040977 n

theorem P17094286001024075111.correct : P17094286001024075111.Spec := by
  intro n
  simp only [A040977]

end A040977

/-! ## A040977.P9674502970522222578

`∑[∑[∑[∑[∑[a(n-1)+2]]]]]` with `a(0)=1`
-/

namespace A040977.P9674502970522222578
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A040977.P9674502970522222578

namespace A040977

/-- `∑[∑[∑[∑[∑[a(n-1)+2]]]]]` -/
def P9674502970522222578.Spec : Prop :=
  ∀ n, (P9674502970522222578.a n : ℤ) = A040977 n

end A040977

/-! ## A040977.P1676393039335992752

`∑[∑[(n+2)*C(n+3, 3)]]/2`
-/

namespace A040977.P1676393039335992752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.choose (n + 3) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A040977.P1676393039335992752

namespace A040977

/-- `∑[∑[(n+2)*C(n+3, 3)]]/2` -/
def P1676393039335992752.Spec : Prop :=
  ∀ n, P1676393039335992752.a n = (A040977 n : ℚ)

end A040977

/-! ## A040977.P6067501744274145837

`∑[A005585(n+1)]`
-/

namespace A040977.P6067501744274145837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A040977.P6067501744274145837

namespace A040977

/-- `∑[A005585(n+1)]` -/
def P6067501744274145837.Spec : Prop :=
  ∀ n, P6067501744274145837.a n = A040977 n

end A040977

/-! ## A040977.P9765853703258957185

`A105946(n)/∑[n+1]`
-/

namespace A040977.P9765853703258957185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105946 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A040977.P9765853703258957185

namespace A040977

/-- `A105946(n)/∑[n+1]` -/
def P9765853703258957185.Spec : Prop :=
  ∀ n, P9765853703258957185.a n = (A040977 n : ℚ)

end A040977

/-! ## A040977.P3554240638000608180

`A323967(n+1)+n*(n+3)`
-/

namespace A040977.P3554240638000608180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323967 (n + 1) + (n * (n + 3) : ℤ)

end

end A040977.P3554240638000608180

namespace A040977

/-- `A323967(n+1)+n*(n+3)` -/
def P3554240638000608180.Spec : Prop :=
  ∀ n, P3554240638000608180.a n = A040977 n

end A040977

/-! ## A040977.P3725496333732048604

`A253943(n+5)-A005584(n+1)`
-/

namespace A040977.P3725496333732048604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253943 (n + 5) - A005584 (n + 1)

end

end A040977.P3725496333732048604

namespace A040977

/-- `A253943(n+5)-A005584(n+1)` -/
def P3725496333732048604.Spec : Prop :=
  ∀ n, P3725496333732048604.a n = A040977 n

end A040977

/-! ## A040977.P7615547862673315812

`A001769(n)+A166189(n)-A001753(n)`
-/

namespace A040977.P7615547862673315812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 n + (A166189 n - A001753 n)

end

end A040977.P7615547862673315812

namespace A040977

/-- `A001769(n)+A166189(n)-A001753(n)` -/
def P7615547862673315812.Spec : Prop :=
  ∀ n, P7615547862673315812.a n = A040977 n

end A040977

/-! ## A040977.P10371229257825844860

`A259181(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A040977.P10371229257825844860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259181 (n + 1) - a (n - 1)

end

end A040977.P10371229257825844860

namespace A040977

/-- `A259181(n+1)-a(n-1)` -/
def P10371229257825844860.Spec : Prop :=
  ∀ n, P10371229257825844860.a n = A040977 n

end A040977

/-! ## A040977.P11801809190397006501

`A006542(n+5)-A051923(n+1)`
-/

namespace A040977.P11801809190397006501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 5) - A051923 (n + 1)

end

end A040977.P11801809190397006501

namespace A040977

/-- `A006542(n+5)-A051923(n+1)` -/
def P11801809190397006501.Spec : Prop :=
  ∀ n, P11801809190397006501.a n = A040977 n

end A040977

/-! ## A040977.P3063146351339931496

`A050486(n+1)-(A050486(n)+A005585(n+2))`
-/

namespace A040977.P3063146351339931496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 (n + 1) - (A050486 n + A005585 (n + 2))

end

end A040977.P3063146351339931496

namespace A040977

/-- `A050486(n+1)-(A050486(n)+A005585(n+2))` -/
def P3063146351339931496.Spec : Prop :=
  ∀ n, P3063146351339931496.a n = A040977 n

end A040977

/-! ## A040977.P8127236527017897698

`∑[∑[A002415(n+2)]]`
-/

namespace A040977.P8127236527017897698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A040977.P8127236527017897698

namespace A040977

/-- `∑[∑[A002415(n+2)]]` -/
def P8127236527017897698.Spec : Prop :=
  ∀ n, P8127236527017897698.a n = A040977 n

end A040977

/-! ## A040977.P16234189988785453791

`2*A005584(n+1)-A253942(n+4)`
-/

namespace A040977.P16234189988785453791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005584 (n + 1) - A253942 (n + 4)

end

end A040977.P16234189988785453791

namespace A040977

/-- `2*A005584(n+1)-A253942(n+4)` -/
def P16234189988785453791.Spec : Prop :=
  ∀ n, P16234189988785453791.a n = A040977 n

end A040977

/-! ## A040977.P4157179779221838223

`A299337(2*n)`
-/

namespace A040977.P4157179779221838223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299337 (2 * n)

end

end A040977.P4157179779221838223

namespace A040977

/-- `A299337(2*n)` -/
def P4157179779221838223.Spec : Prop :=
  ∀ n, P4157179779221838223.a n = A040977 n

end A040977

/-! ## A040977.P499234761137691181

`∑[A177747(2*n)]`
-/

namespace A040977.P499234761137691181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177747 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A040977.P499234761137691181

namespace A040977

/-- `∑[A177747(2*n)]` -/
def P499234761137691181.Spec : Prop :=
  ∀ n, P499234761137691181.a n = A040977 n

end A040977

/-! ## A040977.P9982556628741030466

`A060099(2*n+1)/4`
-/

namespace A040977.P9982556628741030466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060099 (2 * n + 1) : ℚ) / 4

end

end A040977.P9982556628741030466

namespace A040977

/-- `A060099(2*n+1)/4` -/
def P9982556628741030466.Spec : Prop :=
  ∀ n, P9982556628741030466.a n = (A040977 n : ℚ)

end A040977

/-! ## A040977.P4113226544185810673

`∑[∑[A096338(2*n+1)]]`
-/

namespace A040977.P4113226544185810673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A040977.P4113226544185810673

namespace A040977

/-- `∑[∑[A096338(2*n+1)]]` -/
def P4113226544185810673.Spec : Prop :=
  ∀ n, P4113226544185810673.a n = A040977 n

end A040977

/-! ## A040977.P15217819673516287026

`∑[A081284(2*(n+1))]`
-/

namespace A040977.P15217819673516287026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081284 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A040977.P15217819673516287026

namespace A040977

/-- `∑[A081284(2*(n+1))]` -/
def P15217819673516287026.Spec : Prop :=
  ∀ n, P15217819673516287026.a n = A040977 n

end A040977

/-! ## A040977.P16201293309708577554

`∑[record[A213561(n+1)]]`
-/

namespace A040977.P16201293309708577554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213561 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A040977.P16201293309708577554

namespace A040977

/-- `∑[record[A213561(n+1)]]` -/
def P16201293309708577554.Spec : Prop :=
  ∀ n, P16201293309708577554.a n = A040977 n

end A040977

/-!
# A040978: Primes p such that x^5 = 17 has a solution mod p.

The programs for A040978, there is no canonical definition to state claims against.
-/

/-! ## A040978.P7054571805280339964

`p?[A323160(A323163((n+1)²))+n+1]`
-/

namespace A040978.P7054571805280339964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323160 (A323163 ((n + 1) ^ 2)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040978.P7054571805280339964

/-! ## A040978.P8450302350928147585

`record[A006530(n+2)/A323160(A323163((n+1)²))]`
-/

namespace A040978.P8450302350928147585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 2) : ℚ) / (A323160 (A323163 ((n + 1) ^ 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040978.P8450302350928147585

/-! ## A040978.P15186899038926657411

`record[(A000010(n+2)+1)/A323160(A323163((n+1)²))]`
-/

namespace A040978.P15186899038926657411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) + 1 : ℚ) / (A323160 (A323163 ((n + 1) ^ 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040978.P15186899038926657411

/-! ## A040978.P5063310662163858009

`eq[A003415(n), A344880(A229525(n+1))]`
-/

namespace A040978.P5063310662163858009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344880 (A229525 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040978.P5063310662163858009

/-! ## A040978.P12330611457593002955

`p?[A057427(A098736(n))+n]`
-/

namespace A040978.P12330611457593002955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A098736 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040978.P12330611457593002955

/-!
# A040979: Primes p such that x^5 = 17 has no solution mod p.

The programs for A040979, there is no canonical definition to state claims against.
-/

/-! ## A040979.P5732775613889311265

`p?[gcd(n, A146051(n+3))*A004615(n+1)]`
-/

namespace A040979.P5732775613889311265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A146051 (n + 3)) : ℤ) * A004615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040979.P5732775613889311265

/-! ## A040979.P13984888829180731668

`A030430(lt[A153172(3*n+1), A126671(2*(n+2))])`
-/

namespace A040979.P13984888829180731668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153172 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126671 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040979.P13984888829180731668

/-! ## A040979.P9863564667962457484

`A030430(lt[1, A105615(2*(n+1))])`
-/

namespace A040979.P9863564667962457484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105615 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A040979.P9863564667962457484

/-! ## A040979.P11344137888945697553

`A030430(lt[1, A126671(2*(n+2))])`
-/

namespace A040979.P11344137888945697553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126671 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A040979.P11344137888945697553

/-! ## A040979.P7848458674983419803

`A030430(lt[1, A134280(2*n+3)])`
-/

namespace A040979.P7848458674983419803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134280 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A040979.P7848458674983419803

/-!
# A040980: Primes p such that x^5 = 18 has a solution mod p.

The programs for A040980, there is no canonical definition to state claims against.
-/

/-! ## A040980.P9478330834018256257

`A040982(comp[A040964(n)-A000108(n)])`
-/

namespace A040980.P9478330834018256257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040964 n - A000108 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A040980.P9478330834018256257

/-! ## A040980.P6578870743333400181

`A040982(comp[A040964(n)-A041009(n)])`
-/

namespace A040980.P6578870743333400181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040964 n - A041009 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A040980.P6578870743333400181

/-! ## A040980.P4588520044198693615

`A040982(comp[A040964(n)-A128318(n)])`
-/

namespace A040980.P4588520044198693615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040964 n - A128318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A040980.P4588520044198693615

/-! ## A040980.P390991429896526056

`A040982(comp[A040964(n)-A229915(n)])`
-/

namespace A040980.P390991429896526056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040964 n - A229915 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A040980.P390991429896526056

/-! ## A040980.P17116943094506303513

`p?[A002264(A273669(n+1))-A334924(n+1)]`
-/

namespace A040980.P17116943094506303513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A273669 (n + 1)).toNat - A334924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040980.P17116943094506303513

/-!
# A040981: Primes p such that x^5 = 18 has no solution mod p.

The programs for A040981, there is no canonical definition to state claims against.
-/

/-! ## A040981.P4009099647610463488

`p?[A017281(n)*A263111(A016766(n))]`
-/

namespace A040981.P4009099647610463488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n * A263111 (A016766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040981.P4009099647610463488

/-! ## A040981.P1000117439314389396

`p?[A017293(n)-A324510(A008277(n+1))]`
-/

namespace A040981.P1000117439314389396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n - A324510 (A008277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040981.P1000117439314389396

/-! ## A040981.P1711684053353637735

`p?[A102480(lcm(n, A016396(n)))+10*(n+1)]`
-/

namespace A040981.P1711684053353637735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102480 (Int.lcm (n : ℤ) (A016396 n)) + (10 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040981.P1711684053353637735

/-! ## A040981.P7220989921194345510

`∩[A000040(A329135(n+1)), A016861(n)]`
-/

namespace A040981.P7220989921194345510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A329135 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040981.P7220989921194345510

/-!
# A040982: Primes p such that x^5 = 19 has a solution mod p.

The programs for A040982, there is no canonical definition to state claims against.
-/

/-! ## A040982.P17965414525778910974

`p?[(n+1)*A007318(A257303(n+1))]`
-/

namespace A040982.P17965414525778910974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007318 (A257303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040982.P17965414525778910974

/-! ## A040982.P16084714129954480667

`p?[(n+1)%A061681((n+1)*A111707(n))]`
-/

namespace A040982.P16084714129954480667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A061681 ((n + 1 : ℤ) * A111707 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040982.P16084714129954480667

/-!
# A040983: Primes p such that x^5 = 19 has no solution mod p.

The programs for A040983, there is no canonical definition to state claims against.
-/

/-! ## A040983.P2249788196906563974

`p?[A017281(n)*A109390(A085059(n+1))]`
-/

namespace A040983.P2249788196906563974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n * A109390 (A085059 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040983.P2249788196906563974

/-! ## A040983.P4489234884410727850

`p?[(10*n+1)*A088756(n+1)]`
-/

namespace A040983.P4489234884410727850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 1 : ℤ) * A088756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040983.P4489234884410727850

/-! ## A040983.P4674010252914423114

`p?[record[A168459(A236919(n+1))]]`
-/

namespace A040983.P4674010252914423114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168459 (A236919 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040983.P4674010252914423114

/-! ## A040983.P13903515222850196019

`p?[A017281(n)*A077742(n+1)]`
-/

namespace A040983.P13903515222850196019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n * A077742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040983.P13903515222850196019

/-!
# A040984: Primes p such that x^23 = 2 has no solution mod p.

The programs for A040984, there is no canonical definition to state claims against.
-/

/-! ## A040984.P14182555131112943777

`p?[(A215148(n)*A255878(n+1))%A001504(n)]`
-/

namespace A040984.P14182555131112943777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215148 n * A255878 (n + 1)) (A001504 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040984.P14182555131112943777

/-! ## A040984.P9973055750264612347

`p?[A322452(n+1)!*A215148(n)]`
-/

namespace A040984.P9973055750264612347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A322452 (n + 1)).toNat : ℤ) * A215148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040984.P9973055750264612347

/-! ## A040984.P9142166457337364836

`p?[A215148(2*n)*A255878(2*n+1)]`
-/

namespace A040984.P9142166457337364836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (2 * n) * A255878 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040984.P9142166457337364836

/-! ## A040984.P11008595872102219273

`p?[A059841(n)*A255878(n+1)*A215148(n)]`
-/

namespace A040984.P11008595872102219273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A255878 (n + 1) * A215148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040984.P11008595872102219273

/-! ## A040984.P13256715283415341305

`p?[(2-A255878(n+1))*A215148(n)]`
-/

namespace A040984.P13256715283415341305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A255878 (n + 1)) * A215148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040984.P13256715283415341305

/-!
# A040985: Primes p such that x^5 = 20 has no solution mod p.

The programs for A040985, there is no canonical definition to state claims against.
-/

/-! ## A040985.P11408485303873074740

`p?[A016861(n)*A334491(n+1)]`
-/

namespace A040985.P11408485303873074740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A334491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040985.P11408485303873074740

/-! ## A040985.P15844268859859290375

`p?[A306277(n+1)*A334491(n+1)]`
-/

namespace A040985.P15844268859859290375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1) * A334491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040985.P15844268859859290375

/-! ## A040985.P15028308758168633334

`A327346(∑[A209129(n+1)^A004198(n)])`
-/

namespace A040985.P15028308758168633334
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209129 (n + 1) : ℚ) ^ (A004198 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327346 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A040985.P15028308758168633334

/-! ## A040985.P13785695112296120068

`p?[C(n, A112765(n+4))]`
-/

namespace A040985.P13785695112296120068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A112765 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040985.P13785695112296120068

/-! ## A040985.P4768092140225773337

`p?[(5*n+1)%A219595(2*n+1)]`
-/

namespace A040985.P4768092140225773337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * n + 1 : ℤ) (A219595 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040985.P4768092140225773337

/-!
# A040987: Primes p such that x^5 = 21 has no solution mod p.

The programs for A040987, there is no canonical definition to state claims against.
-/

/-! ## A040987.P13170570342873391654

`p?[A047209(A348748(n+3))]`
-/

namespace A040987.P13170570342873391654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (A348748 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040987.P13170570342873391654

/-! ## A040987.P16302831364251574355

`∩[A060254(n+1), A368812(n+1)]`
-/

namespace A040987.P16302831364251574355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040987.P16302831364251574355

/-! ## A040987.P12087246461966552203

`∩[A167915(n+1), A368812(n+1)]`
-/

namespace A040987.P12087246461966552203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040987.P12087246461966552203

/-! ## A040987.P16154115299240773231

`∩[A176902(n+1), A368812(n+1)]`
-/

namespace A040987.P16154115299240773231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040987.P16154115299240773231

/-! ## A040987.P7040970872874696236

`∩[A087749(n+1), A368812(n+1)]`
-/

namespace A040987.P7040970872874696236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040987.P7040970872874696236

/-!
# A040989: Primes p such that x^5 = 22 has no solution mod p.

The programs for A040989, there is no canonical definition to state claims against.
-/

/-! ## A040989.P10637187301324252694

`p?[A017281(A276611(A005586(n)))]`
-/

namespace A040989.P10637187301324252694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A276611 (A005586 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040989.P10637187301324252694

/-! ## A040989.P2134469600718034958

`p?[A016861(n)*A066247(A174019(n+2))]`
-/

namespace A040989.P2134469600718034958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n * A066247 (A174019 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040989.P2134469600718034958

/-! ## A040989.P10010040432648937559

`A059313(A187829(n+1)+1)`
-/

namespace A040989.P10010040432648937559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059313 (A187829 (n + 1) + 1).toNat

end

end A040989.P10010040432648937559

/-! ## A040989.P10517851383172731347

`A059313((n+2)^A008835(n+1))`
-/

namespace A040989.P10517851383172731347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059313 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A040989.P10517851383172731347

/-! ## A040989.P848167084986249675

`A059313(n+2)%A244266(n+1)`
-/

namespace A040989.P848167084986249675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059313 (n + 2)) (A244266 (n + 1))

end

end A040989.P848167084986249675

/-!
# A040990: Primes p such that x^5 = 23 has a solution mod p.

The programs for A040990, there is no canonical definition to state claims against.
-/

/-! ## A040990.P15597770316132110895

`A000040(A243463(n+1)%A339618(3*n+1))`
-/

namespace A040990.P15597770316132110895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A243463 (n + 1)) (A339618 (3 * n + 1))).toNat

end

end A040990.P15597770316132110895

/-! ## A040990.P15345191467043423858

`A000040(lt[A082043(n), A275435(3*n+2)])`
-/

namespace A040990.P15345191467043423858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275435 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040990.P15345191467043423858

/-! ## A040990.P7427256676270967851

`A000040(lt[A376590(3*n+5), A126043(2*(n+2))])`
-/

namespace A040990.P7427256676270967851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376590 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126043 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A040990.P7427256676270967851

/-! ## A040990.P2190546427205463515

`eq[A003415(n), A076259(A242784(n))]`
-/

namespace A040990.P2190546427205463515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (A242784 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040990.P2190546427205463515

/-! ## A040990.P5603099311696932007

`eq[A003415(n), A340101(A367582(n))]`
-/

namespace A040990.P5603099311696932007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 (A367582 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A040990.P5603099311696932007

/-!
# A040991: Primes p such that x^5 = 23 has no solution mod p.

The programs for A040991, there is no canonical definition to state claims against.
-/

/-! ## A040991.P16940243836396258198

`p?[A209229(n)+A114011(n+4)]`
-/

namespace A040991.P16940243836396258198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n + A114011 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040991.P16940243836396258198

/-! ## A040991.P842197598427743667

`A030430(comp[A306994(n+1)-A056445(n+1)])`
-/

namespace A040991.P842197598427743667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306994 (n + 1) - A056445 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A040991.P842197598427743667

/-! ## A040991.P14662249315979753134

`A030430(comp[A109200(n+2)-A001481(n+1)])`
-/

namespace A040991.P14662249315979753134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109200 (n + 2) - A001481 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A040991.P14662249315979753134

/-!
# A040992: Primes p such that x^6 = 2 has a solution mod p.

The programs for A040992, there is no canonical definition to state claims against.
-/

/-! ## A040992.P10598791527805319068

`∩[A038873(n+1), A040028(n+1)]`
-/

namespace A040992.P10598791527805319068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P10598791527805319068

/-! ## A040992.P11118543624302046895

`∩[A040028(n+1), A055673(n+1)]`
-/

namespace A040992.P11118543624302046895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P11118543624302046895

/-! ## A040992.P4284841359556498625

`∩[A040028(n+1), A057126(n+1)]`
-/

namespace A040992.P4284841359556498625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P4284841359556498625

/-! ## A040992.P5196259434966051556

`∩[A040028(n+1), A227144(n+1)]`
-/

namespace A040992.P5196259434966051556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P5196259434966051556

/-! ## A040992.P13245900745459141436

`∩[A035251(n+1), A040028(n+1)]`
-/

namespace A040992.P13245900745459141436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P13245900745459141436

/-! ## A040992.P5894657480727562847

`∩[A040028(n+1), A385723(n+1)]`
-/

namespace A040992.P5894657480727562847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P5894657480727562847

/-! ## A040992.P2270495274644280733

`∩[A038873(n+1), A057760(n+1)]`
-/

namespace A040992.P2270495274644280733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P2270495274644280733

/-! ## A040992.P9883596875577365502

`∩[A040028(n+1), A047526(n+1)]`
-/

namespace A040992.P9883596875577365502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P9883596875577365502

/-! ## A040992.P4927994228899295166

`∩[A040028(n+1), A047527(n+1)]`
-/

namespace A040992.P4927994228899295166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P4927994228899295166

/-! ## A040992.P12050073218994486985

`∩[A040028(n+1), A047541(n+1)]`
-/

namespace A040992.P12050073218994486985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P12050073218994486985

/-! ## A040992.P4859534458222488863

`∩[A040028(n+1), A047554(n+1)]`
-/

namespace A040992.P4859534458222488863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P4859534458222488863

/-! ## A040992.P1329968786007735969

`∩[A040028(n+1), A047476(n+1)-1]`
-/

namespace A040992.P1329968786007735969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P1329968786007735969

/-! ## A040992.P4986748720350485762

`∩[A040028(n+1), A047454(n+1)-2]`
-/

namespace A040992.P4986748720350485762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P4986748720350485762

/-! ## A040992.P7569943513288610206

`∩[A040028(n+1), A066507(n+1)]`
-/

namespace A040992.P7569943513288610206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P7569943513288610206

/-! ## A040992.P986717532801680445

`∩[A040028(n+1), A047512(n+1)]`
-/

namespace A040992.P986717532801680445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P986717532801680445

/-! ## A040992.P14734581940490102839

`∩[A040028(n+1), A047542(n+1)]`
-/

namespace A040992.P14734581940490102839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P14734581940490102839

/-! ## A040992.P18009863648565876433

`∩[A040028(n+1), A047555(n+1)]`
-/

namespace A040992.P18009863648565876433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P18009863648565876433

/-! ## A040992.P12361044044084593798

`∩[A040028(n+1), A047419(n+1)-2]`
-/

namespace A040992.P12361044044084593798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P12361044044084593798

/-! ## A040992.P6474345537809046940

`∩[A040028(n+1), A047453(n+1)-2]`
-/

namespace A040992.P6474345537809046940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P6474345537809046940

/-! ## A040992.P12581613432342318589

`∩[A040028(n+1), A047513(n+1)]`
-/

namespace A040992.P12581613432342318589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040992.P12581613432342318589

/-!
# A040993: Primes p such that x^6 = 2 has no solution mod p.

The programs for A040993, there is no canonical definition to state claims against.
-/

/-! ## A040993.P9468092739370558242

`A046021(A212375(n+1))`
-/

namespace A040993.P9468092739370558242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046021 (A212375 (n + 1)).toNat

end

end A040993.P9468092739370558242

/-! ## A040993.P6677466586044354435

`A212375(n+1)%A320066(n+1)`
-/

namespace A040993.P6677466586044354435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212375 (n + 1)) (A320066 (n + 1))

end

end A040993.P6677466586044354435

/-! ## A040993.P2451580922993125596

`or((A319333(n+1)+1)%2, A212375(n+1))`
-/

namespace A040993.P2451580922993125596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A319333 (n + 1) + 1) 2) (A212375 (n + 1))

end

end A040993.P2451580922993125596

/-! ## A040993.P12443549114971492899

`A028234(∏{digits}[n+1, 2^#])*A212375(n+1)`
-/

namespace A040993.P12443549114971492899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod * A212375 (n + 1)

end

end A040993.P12443549114971492899

/-! ## A040993.P15222034202965697427

`A212375(n+1)+A112765(A112931(n))`
-/

namespace A040993.P15222034202965697427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212375 (n + 1) + A112765 (A112931 n).toNat

end

end A040993.P15222034202965697427

/-! ## A040993.P2624289185988089850

`A001511(A003215(n))*A212375(n+1)`
-/

namespace A040993.P2624289185988089850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003215 n).toNat * A212375 (n + 1)

end

end A040993.P2624289185988089850

/-! ## A040993.P6226841714662360317

`A006530(A131108(n)*A212375(n+1))`
-/

namespace A040993.P6226841714662360317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A131108 n * A212375 (n + 1)).toNat

end

end A040993.P6226841714662360317

/-! ## A040993.P16935375610385097109

`A006530(A134058(n)*A212375(n+1))`
-/

namespace A040993.P16935375610385097109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A134058 n * A212375 (n + 1)).toNat

end

end A040993.P16935375610385097109

/-! ## A040993.P2979412449765617337

`A006530(A212375(n+1)*A333733(n+1))`
-/

namespace A040993.P2979412449765617337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A212375 (n + 1) * A333733 (n + 1)).toNat

end

end A040993.P2979412449765617337

/-! ## A040993.P13578154810853385529

`A006530(A212375(n+1)*A333893(n+1))`
-/

namespace A040993.P13578154810853385529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A212375 (n + 1) * A333893 (n + 1)).toNat

end

end A040993.P13578154810853385529

/-!
# A040994: Primes p such that x^6 = 3 has a solution mod p.

The programs for A040994, there is no canonical definition to state claims against.
-/

/-! ## A040994.P6662727491637053790

`∩[A038874(n+1), A040036(n+1)]`
-/

namespace A040994.P6662727491637053790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040994.P6662727491637053790

/-! ## A040994.P17727269964419445705

`∩[A040036(n+1), A391369(n+1)]`
-/

namespace A040994.P17727269964419445705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040994.P17727269964419445705

/-! ## A040994.P8774871833366324057

`∩[A040036(n+1), A057125(n+1)]`
-/

namespace A040994.P8774871833366324057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040994.P8774871833366324057

/-! ## A040994.P15469326130955169254

`∩[A040036(n+1), A060469(n+1)]`
-/

namespace A040994.P15469326130955169254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040994.P15469326130955169254

/-! ## A040994.P3364819566903046819

`∩[A040036(n+1), A151988(n)]`
-/

namespace A040994.P3364819566903046819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040994.P3364819566903046819

/-!
# A040995: Primes p such that x^6 = 3 has no solution mod p.

The programs for A040995, there is no canonical definition to state claims against.
-/

/-! ## A040995.P1316480811722632864

`∪[A003630(n+1), A040038(n+1)]`
-/

namespace A040995.P1316480811722632864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040995.P1316480811722632864

/-! ## A040995.P15681400714189651046

`p?[A137735(∑[A032352(n+1)])]`
-/

namespace A040995.P15681400714189651046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040995.P15681400714189651046

/-! ## A040995.P12968059877396492468

`p?[(round(sqrt(((n+1)/(n/(n+1))^n)²+1))-n)%A168247(n+1)]`
-/

namespace A040995.P12968059877396492468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (((n + 1 : ℚ) / ((n : ℚ) / (n + 1 : ℚ)) ^ n) ^ 2 + 1 : ℝ)) - (n : ℤ)) (A168247 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040995.P12968059877396492468

/-! ## A040995.P1084993030586524372

`p?[A213908(n+1)%A102828(n)]`
-/

namespace A040995.P1084993030586524372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213908 (n + 1)) (A102828 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040995.P1084993030586524372

/-! ## A040995.P6912493358357671732

`∩[A115232(n+1), A213908(n+1)]`
-/

namespace A040995.P6912493358357671732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040995.P6912493358357671732

/-!
# A040996: Maximum number of distinct functions at the bottom of a Boolean (or Binary) Decision Diagram (or BDD) with negation by pointer complementation.

The programs for A040996, the canonical program `A040996.P13164513695994852623` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040996 has offset 0).

The definition of A040996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A040996.P13164513695994852623

`2^2^n*(2^2^n-1)/2`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A040996

/-- `2^2^n*(2^2^n-1)/2` -/
def P13164513695994852623.Spec : Prop :=
  ∀ n, P13164513695994852623.a n = (A040996 n : ℚ)

end A040996

/-! ## A040996.P10333317501787170078

`C(2^2^n, 2)`
-/

namespace A040996.P10333317501787170078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ 2 ^ n) 2

end

end A040996.P10333317501787170078

namespace A040996

/-- `C(2^2^n, 2)` -/
def P10333317501787170078.Spec : Prop :=
  ∀ n, (P10333317501787170078.a n : ℤ) = A040996 n

end A040996

/-! ## A040996.P12827463490108401109

`Δ[2*a(n-1)²]` with `a(0)=1`
-/

namespace A040996.P12827463490108401109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A040996.P12827463490108401109

namespace A040996

/-- `Δ[2*a(n-1)²]` -/
def P12827463490108401109.Spec : Prop :=
  ∀ n, P12827463490108401109.a n = A040996 n

end A040996

/-! ## A040996.P5022371627485852209

`Δ[a(n-1)²]/2` with `a(0)=2`
-/

namespace A040996.P5022371627485852209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2

end

end A040996.P5022371627485852209

namespace A040996

/-- `Δ[a(n-1)²]/2` -/
def P5022371627485852209.Spec : Prop :=
  ∀ n, P5022371627485852209.a n = (A040996 n : ℚ)

end A040996

/-!
# A040997: Absolute value of first digit of n minus sum of other digits of n.

The programs for A040997, the canonical program `A040997.P3657260690685809057` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A040997 has offset 1).

The definition of A040997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A040997.P3657260690685809057

`abs(2*A000030(n+1)-A007953(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A040997

/-- `abs(2*A000030(n+1)-A007953(n+1))` -/
def P3657260690685809057.Spec : Prop :=
  ∀ n, P3657260690685809057.a n = A040997 (n + 1)

theorem P3657260690685809057.correct : P3657260690685809057.Spec := by
  intro n
  simp only [A040997, Nat.add_sub_cancel]

end A040997

/-! ## A040997.P17586784047384119648

`A018851((2*A000030(n+1)-A007953(n+1))²)`
-/

namespace A040997.P17586784047384119648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 ((2 * A000030 (n + 1) - A007953 (n + 1)) ^ 2).toNat

end

end A040997.P17586784047384119648

namespace A040997

/-- `A018851((2*A000030(n+1)-A007953(n+1))²)` -/
def P17586784047384119648.Spec : Prop :=
  ∀ n, P17586784047384119648.a n = A040997 (n + 1)

end A040997

/-! ## A040997.P7756500879391042959

`gcd(2*A000030(n+1)-A007953(n+1), A000038(n))`
-/

namespace A040997.P7756500879391042959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A000030 (n + 1) - A007953 (n + 1)) (A000038 n)

end

end A040997.P7756500879391042959

namespace A040997

/-- `gcd(2*A000030(n+1)-A007953(n+1), A000038(n))` -/
def P7756500879391042959.Spec : Prop :=
  ∀ n, (P7756500879391042959.a n : ℤ) = A040997 (n + 1)

end A040997

/-! ## A040997.P7630357456325102511

`lcm(2*A000030(n+1)-A007953(n+1), A062157(8*n+19))`
-/

namespace A040997.P7630357456325102511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * A000030 (n + 1) - A007953 (n + 1)) (A062157 (8 * n + 19))

end

end A040997.P7630357456325102511

namespace A040997

/-- `lcm(2*A000030(n+1)-A007953(n+1), A062157(8*n+19))` -/
def P7630357456325102511.Spec : Prop :=
  ∀ n, (P7630357456325102511.a n : ℤ) = A040997 (n + 1)

end A040997

/-! ## A040997.P2067404391697137060

`or(A000007(A108773(n)), A241494(n+1))`
-/

namespace A040997.P2067404391697137060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A108773 n).toNat) (A241494 (n + 1))

end

end A040997.P2067404391697137060

namespace A040997

/-- `or(A000007(A108773(n)), A241494(n+1))` -/
def P2067404391697137060.Spec : Prop :=
  ∀ n, P2067404391697137060.a n = A040997 (n + 1)

end A040997

/-! ## A040997.P1103811324292015703

`A241494(n+1)+A010054(A089120(n+1))`
-/

namespace A040997.P1103811324292015703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 (n + 1) + A010054 (A089120 (n + 1)).toNat

end

end A040997.P1103811324292015703

namespace A040997

/-- `A241494(n+1)+A010054(A089120(n+1))` -/
def P1103811324292015703.Spec : Prop :=
  ∀ n, P1103811324292015703.a n = A040997 (n + 1)

end A040997

/-! ## A040997.P6891891212905476153

`A241494(n+1)*A241534(A241488(n+1))`
-/

namespace A040997.P6891891212905476153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 (n + 1) * A241534 (A241488 (n + 1)).toNat

end

end A040997.P6891891212905476153

namespace A040997

/-- `A241494(n+1)*A241534(A241488(n+1))` -/
def P6891891212905476153.Spec : Prop :=
  ∀ n, P6891891212905476153.a n = A040997 (n + 1)

end A040997

/-! ## A040997.P819439128840105281

`A241494(n+1)*A325566(A158350(n+1))`
-/

namespace A040997.P819439128840105281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 (n + 1) * A325566 (A158350 (n + 1)).toNat

end

end A040997.P819439128840105281

namespace A040997

/-- `A241494(n+1)*A325566(A158350(n+1))` -/
def P819439128840105281.Spec : Prop :=
  ∀ n, P819439128840105281.a n = A040997 (n + 1)

end A040997

/-! ## A040997.P17141389313628929848

`A241494(n+1)+A000007(A225085(n+1))`
-/

namespace A040997.P17141389313628929848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 (n + 1) + A000007 (A225085 (n + 1)).toNat

end

end A040997.P17141389313628929848

namespace A040997

/-- `A241494(n+1)+A000007(A225085(n+1))` -/
def P17141389313628929848.Spec : Prop :=
  ∀ n, P17141389313628929848.a n = A040997 (n + 1)

end A040997

/-! ## A040997.P16538879854656254099

`A325801(A031932(n+1))+A241494(n+1)`
-/

namespace A040997.P16538879854656254099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (A031932 (n + 1)).toNat + A241494 (n + 1)

end

end A040997.P16538879854656254099

namespace A040997

/-- `A325801(A031932(n+1))+A241494(n+1)` -/
def P16538879854656254099.Spec : Prop :=
  ∀ n, P16538879854656254099.a n = A040997 (n + 1)

end A040997

/-! ## A040997.P10331297739887217612

`A241494(n+1)+A000038(A115408(n+1))`
-/

namespace A040997.P10331297739887217612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 (n + 1) + A000038 (A115408 (n + 1)).toNat

end

end A040997.P10331297739887217612

namespace A040997

/-- `A241494(n+1)+A000038(A115408(n+1))` -/
def P10331297739887217612.Spec : Prop :=
  ∀ n, P10331297739887217612.a n = A040997 (n + 1)

end A040997

/-! ## A040997.P1975180350809879619

`A241494(n+1)*A303827(A130330(n))`
-/

namespace A040997.P1975180350809879619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 (n + 1) * A303827 (A130330 n).toNat

end

end A040997.P1975180350809879619

namespace A040997

/-- `A241494(n+1)*A303827(A130330(n))` -/
def P1975180350809879619.Spec : Prop :=
  ∀ n, P1975180350809879619.a n = A040997 (n + 1)

end A040997

/-! ## A040997.P9132844699499333602

`A241494(n+1)^A194262(A069289(n+1)+6)`
-/

namespace A040997.P9132844699499333602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241494 (n + 1) : ℚ) ^ (A194262 (A069289 (n + 1) + 6).toNat : ℤ)

end

end A040997.P9132844699499333602

namespace A040997

/-- `A241494(n+1)^A194262(A069289(n+1)+6)` -/
def P9132844699499333602.Spec : Prop :=
  ∀ n, P9132844699499333602.a n = (A040997 (n + 1) : ℚ)

end A040997

/-! ## A040997.P9474487661716091410

`A054055(n+1)-A257297(n+1)/A054055(n+1)`
-/

namespace A040997.P9474487661716091410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054055 (n + 1) : ℚ) - (A257297 (n + 1) : ℚ) / (A054055 (n + 1) : ℚ)

end

end A040997.P9474487661716091410

namespace A040997

/-- `A054055(n+1)-A257297(n+1)/A054055(n+1)` -/
def P9474487661716091410.Spec : Prop :=
  ∀ n, P9474487661716091410.a n = (A040997 (n + 1) : ℚ)

end A040997

/-!
# A040998: Primes p such that x^6 = 5 has a solution mod p.

The programs for A040998, there is no canonical definition to state claims against.
-/

/-! ## A040998.P18409613644900446006

`∩[A040044(n+1), A057762(n+1)]`
-/

namespace A040998.P18409613644900446006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040998.P18409613644900446006

/-! ## A040998.P10319830060893119404

`∩[A035259(n+1), A040044(n+1)]`
-/

namespace A040998.P10319830060893119404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040998.P10319830060893119404

/-! ## A040998.P8149737258805830961

`p?[A047262(A111706(n+1))]`
-/

namespace A040998.P8149737258805830961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (A111706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040998.P8149737258805830961

/-! ## A040998.P6375344818668795839

`p?[∪[A309137(n+1), A330816(n+1)]]`
-/

namespace A040998.P6375344818668795839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309137 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330816 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040998.P6375344818668795839

/-! ## A040998.P3070750188576329387

`∩[A040044(n+1), A047262(A111706(n+1))]`
-/

namespace A040998.P3070750188576329387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (A111706 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A040998.P3070750188576329387

/-!
# A040999: Primes p such that x^6 = 5 has no solution mod p.

The programs for A040999, there is no canonical definition to state claims against.
-/

/-! ## A040999.P10566486461017996172

`∪[A040045(n+1), A097957(n+1)]`
-/

namespace A040999.P10566486461017996172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040999.P10566486461017996172

/-! ## A040999.P16462056830324742274

`p?[or(1, A145266(n+2)+n)]`
-/

namespace A040999.P16462056830324742274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A145266 (n + 2) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040999.P16462056830324742274

/-! ## A040999.P15628184492253974047

`p?[A109613(A145266(n+2)+n)]`
-/

namespace A040999.P15628184492253974047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A145266 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A040999.P15628184492253974047

/-! ## A040999.P12557485290742471744

`record[A006530(or(1, A145266(n+2)+n))]`
-/

namespace A040999.P12557485290742471744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A145266 (n + 2) + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A040999.P12557485290742471744

/-! ## A040999.P6101425190580070058

`p?[∪[A055047(n+1), A233998(n+2)]]`
-/

namespace A040999.P6101425190580070058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233998 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040999.P6101425190580070058

