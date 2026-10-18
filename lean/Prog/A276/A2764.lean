import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
# A276400: Denominator of n!/(n^n-n).

The programs for A276400, there is no canonical definition to state claims against.
-/

/-! ## A276400.P6207842662184221421

`A066048((n+2)^(n+1)-1)`
-/

namespace A276400.P6207842662184221421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 ((n + 2) ^ (n + 1) - 1)

end

end A276400.P6207842662184221421

/-!
# A276401: If n mod 3 = 0 then a(n) = 3^(n/3) + 12*n, if n mod 3 = 1 then a(n) = 4*3^((n-4)/3) + 12*n + 51, otherwise a(n) = 2*3^((n-2)/3) + 12*n - 36.

The programs for A276401, the canonical program `A276401.P5167906661896649303` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276401 has offset 3).

The definition of A276401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276401.P5167906661896649303

`4*a(n-3)-3*a(n-6)-72` with `a(0)=39, a(1)=103, a(2)=30, a(3)=81, a(4)=147, a(5)=78`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276401

/-- `4*a(n-3)-3*a(n-6)-72` -/
def P5167906661896649303.Spec : Prop :=
  ∀ n, P5167906661896649303.a n = A276401 (n + 3)

theorem P5167906661896649303.correct : P5167906661896649303.Spec := by
  intro n
  simp only [A276401, Nat.add_sub_cancel]

end A276401

/-!
# A276403: a(n) = if n mod 6 = 0 then 4*3^((n-6)/3) elif n mod 6 = 1 then 2^4*3^((n-10)/3) elif n mod 6 = 2 then 2^3*3^((n-8)/3) elif n mod 6 = 3 then 2^2*3^((n-6)/3) elif n mod 6 = 4 then 2*3^((n-4)/3) otherwise 3^((n-2)/3).

The programs for A276403, the canonical program `A276403.P15293035312014142034` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276403 has offset 8).

The definition of A276403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276403.P15293035312014142034

`9*a(n-6)` with `a(0)=8, a(1)=12, a(2)=18, a(3)=27, a(4)=36, a(5)=48`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276403

/-- `9*a(n-6)` -/
def P15293035312014142034.Spec : Prop :=
  ∀ n, (P15293035312014142034.a n : ℤ) = A276403 (n + 8)

theorem P15293035312014142034.correct : P15293035312014142034.Spec := by
  intro n
  simp only [A276403, Nat.add_sub_cancel]

end A276403

/-!
# A276404: a(n) = A140100(n) - A140098(n).

The programs for A276404, there is no canonical definition to state claims against.
-/

/-! ## A276404.P12576647508726385043

`A140100(n+1)-A140098(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276404.P12576647508726385043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) - A140098 (n + 1)

end

end A276404.P12576647508726385043

/-! ## A276404.P15087704975290619022

`char[A276406(n+1)-1]`
-/

namespace A276404.P15087704975290619022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276406 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276404.P15087704975290619022

/-! ## A276404.P1754107987940420935

`comp[A140101(n)]-A140098(n+1)`
-/

namespace A276404.P1754107987940420935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A140098 (n + 1)

end

end A276404.P1754107987940420935

/-! ## A276404.P11031842685848470933

`A276796(n)+1+n-A140098(n+1)`
-/

namespace A276404.P11031842685848470933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 n + 1 + (n : ℤ) - A140098 (n + 1)

end

end A276404.P11031842685848470933

/-! ## A276404.P652340143676352394

`char[A003144((n+1)*A275926(n+1)+1)-2]`
-/

namespace A276404.P652340143676352394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 ((n + 1 : ℤ) * A275926 (n + 1) + 1).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276404.P652340143676352394

/-! ## A276404.P17743296480054443690

`A275926(A140098(A140098(n+1))+n+2)`
-/

namespace A276404.P17743296480054443690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275926 (A140098 (A140098 (n + 1)).toNat + (n + 2 : ℤ)).toNat

end

end A276404.P17743296480054443690

/-! ## A276404.P3555481574007706208

`A278040(n)-(A278039(n)+A140098(n+1))`
-/

namespace A276404.P3555481574007706208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n - (A278039 n + A140098 (n + 1))

end

end A276404.P3555481574007706208

/-! ## A276404.P12929337773631624867

`A140101(n+1)-(A140102(n+1)+A140098(n+1))`
-/

namespace A276404.P12929337773631624867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (n + 1) - (A140102 (n + 1) + A140098 (n + 1))

end

end A276404.P12929337773631624867

/-! ## A276404.P8116941772934813540

`A140103(n+1)-(A140101(n+1)+A140098(n+1))`
-/

namespace A276404.P8116941772934813540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1) - (A140101 (n + 1) + A140098 (n + 1))

end

end A276404.P8116941772934813540

/-! ## A276404.P4550846130167212278

`A305386(A140098(n+1))`
-/

namespace A276404.P4550846130167212278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305386 (A140098 (n + 1)).toNat

end

end A276404.P4550846130167212278

/-!
# A276406: Positions of 1's in A276404.

The programs for A276406, there is no canonical definition to state claims against.
-/

/-! ## A276406.P8884904773418990840

`eq[1, A276404(n+1)]+1`
-/

namespace A276406.P8884904773418990840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276406.P8884904773418990840

/-! ## A276406.P8194229910514861035

`∑[A276405(2*n+1)+1]`
-/

namespace A276406.P8194229910514861035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276405 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276406.P8194229910514861035

/-! ## A276406.P10845235511795148345

`∑[A276405(n+n+1)]+n+1`
-/

namespace A276406.P10845235511795148345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276405 (n + n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A276406.P10845235511795148345

/-! ## A276406.P12250741755527329991

`A158919(A276407(n+1))`
-/

namespace A276406.P12250741755527329991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 (A276407 (n + 1)).toNat

end

end A276406.P12250741755527329991

/-! ## A276406.P12169584638877753196

`filter[A351631(n+2), A276404(#)]`
-/

namespace A276406.P12169584638877753196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351631 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276404 (f1 j).toNat = 1) n)

end

end A276406.P12169584638877753196

/-! ## A276406.P6160226382035389888

`A158919(eq[1, A275926(n+1)]+1)`
-/

namespace A276406.P6160226382035389888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A276406.P6160226382035389888

/-! ## A276406.P3354959555397328900

`A003144(A276407(n+1)+1)-1`
-/

namespace A276406.P3354959555397328900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (A276407 (n + 1) + 1).toNat - 1

end

end A276406.P3354959555397328900

/-! ## A276406.P18440008794977534045

`filter[A158919(n+1), A276404(#)]`
-/

namespace A276406.P18440008794977534045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276404 (f1 j).toNat = 1) n)

end

end A276406.P18440008794977534045

/-! ## A276406.P14862010806766933189

`filter[A278039(n+1), A276404(#)]`
-/

namespace A276406.P14862010806766933189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276404 (f1 j).toNat = 1) n)

end

end A276406.P14862010806766933189

/-! ## A276406.P6478735504555273419

`filter[A286999(n+1), A276404(#)]`
-/

namespace A276406.P6478735504555273419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276404 (f1 j).toNat = 1) n)

end

end A276406.P6478735504555273419

/-! ## A276406.P3224862051075477095

`filter[A287113(n+1), A276404(#)]`
-/

namespace A276406.P3224862051075477095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276404 (f1 j).toNat = 1) n)

end

end A276406.P3224862051075477095

/-! ## A276406.P18398794630398535606

`filter[A287175(n+1), A276404(#)]`
-/

namespace A276406.P18398794630398535606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276404 (f1 j).toNat = 1) n)

end

end A276406.P18398794630398535606

/-! ## A276406.P2442680156530652661

`filter[A356896(n+2), A276404(#)]`
-/

namespace A276406.P2442680156530652661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356896 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276404 (f1 j).toNat = 1) n)

end

end A276406.P2442680156530652661

/-!
# A276407: Positions of 1's in A275926.

The programs for A276407, there is no canonical definition to state claims against.
-/

/-! ## A276407.P2457234417929006587

`eq[1, A275926(n+1)]+1`
-/

namespace A276407.P2457234417929006587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276407.P2457234417929006587

/-! ## A276407.P2357433923888645513

`A140100(A276406(n+1))-A276406(n+1)`
-/

namespace A276407.P2357433923888645513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (A276406 (n + 1)).toNat - A276406 (n + 1)

end

end A276407.P2357433923888645513

/-! ## A276407.P4490652462893795920

`eq[1, A275926(A028310(n))]`
-/

namespace A276407.P4490652462893795920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275926 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276407.P4490652462893795920

/-! ## A276407.P2032838625928561990

`A020725(eq[1, A275926(n+1)])`
-/

namespace A276407.P2032838625928561990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276407.P2032838625928561990

/-! ## A276407.P17596878569063099541

`A153152(eq[1, A275926(n+1)])`
-/

namespace A276407.P17596878569063099541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276407.P17596878569063099541

/-! ## A276407.P15463158317148003269

`record[A014681(A014681(n+5)*A275926(n+5))]`
-/

namespace A276407.P15463158317148003269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A014681 (n + 5) * A275926 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276407.P15463158317148003269

/-! ## A276407.P4382288166099711455

`A276796(A276406(n+1))`
-/

namespace A276407.P4382288166099711455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A276406 (n + 1)).toNat

end

end A276407.P4382288166099711455

/-! ## A276407.P699030948009308146

`eq[1, A275926(A233583(n+1))]`
-/

namespace A276407.P699030948009308146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275926 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276407.P699030948009308146

/-!
# A276410: Largest determinant of a (real) {0,1}-matrix of order n subject to the restriction that the corresponding 0,1 simplex is acute.

The programs for A276410, there is no canonical definition to state claims against.
-/

/-! ## A276410.P4843387828008209600

`A003432(n)-A045991(A081162(n))`
-/

namespace A276410.P4843387828008209600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003432 n - A045991 (A081162 n).toNat

end

end A276410.P4843387828008209600

/-! ## A276410.P9037835233675533771

`A003432(n)-A028663(A000040(n+1))`
-/

namespace A276410.P9037835233675533771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003432 n - A028663 (A000040 (n + 1)).toNat

end

end A276410.P9037835233675533771

/-! ## A276410.P8463973476845747806

`A003432(n)-A038546(A046601(n+1))`
-/

namespace A276410.P8463973476845747806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003432 n - A038546 (A046601 (n + 1)).toNat

end

end A276410.P8463973476845747806

/-! ## A276410.P4356099984758181020

`A024417(A098011(n+1))*A280953(n)`
-/

namespace A276410.P4356099984758181020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A098011 (n + 1)).toNat * A280953 n

end

end A276410.P4356099984758181020

/-! ## A276410.P6357004412251695172

`A003432(n)-A308854(A347133(n+3))`
-/

namespace A276410.P6357004412251695172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003432 n - A308854 (A347133 (n + 3)).toNat

end

end A276410.P6357004412251695172

/-!
# A276411: Number of acute 0/1 n-simplices formed from vertices of unit n-dimensional cube.

The programs for A276411, there is no canonical definition to state claims against.
-/

/-! ## A276411.P13684152435719874128

`A168201(n*A154117(n))`
-/

namespace A276411.P13684152435719874128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 ((n : ℤ) * A154117 n).toNat

end

end A276411.P13684152435719874128

/-! ## A276411.P15888811244220919845

`A168201(lcm(n, A154117(n)))`
-/

namespace A276411.P15888811244220919845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (Int.lcm (n : ℤ) (A154117 n))

end

end A276411.P15888811244220919845

/-! ## A276411.P7348963388299265378

`A002266(n)+A000196(A109972(n))`
-/

namespace A276411.P7348963388299265378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n + A000196 (A109972 n).toNat

end

end A276411.P7348963388299265378

/-! ## A276411.P8192648317794436902

`A137735(A328431(n))-A057427(n)`
-/

namespace A276411.P8192648317794436902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A328431 n).toNat - A057427 n

end

end A276411.P8192648317794436902

/-! ## A276411.P11752788716656832589

`A008616(A321007(n+4)+A097807(n))`
-/

namespace A276411.P11752788716656832589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A321007 (n + 4) + A097807 n).toNat

end

end A276411.P11752788716656832589

/-!
# A276412: Number of 0/1 n-simplices formed from vertices of unit n-dimensional cube, including degenerate ones.

The programs for A276412, there is no canonical definition to state claims against.
-/

/-! ## A276412.P7101328438235664640

`A039754(A100314(n+1))`
-/

namespace A276412.P7101328438235664640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039754 (A100314 (n + 1)).toNat

end

end A276412.P7101328438235664640

/-! ## A276412.P15568504785179187223

`A276777(∑[n+2])`
-/

namespace A276412.P15568504785179187223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276777 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276412.P15568504785179187223

/-! ## A276412.P17643442262369438543

`A039754(∑[2^(n+1)])`
-/

namespace A276412.P17643442262369438543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039754 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276412.P17643442262369438543

/-! ## A276412.P10760934845762985032

`or(A000035(n), A276777(A000096(n+1)))`
-/

namespace A276412.P10760934845762985032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A276777 (A000096 (n + 1)).toNat)

end

end A276412.P10760934845762985032

/-!
# A276414: Index of the first prime which starts a run of n consecutive primes all congruent to each other mod 3 (or mod 6).

The programs for A276414, there is no canonical definition to state claims against.
-/

/-! ## A276414.P7330944855762000378

`A000720(A054679(n+1))`
-/

namespace A276414.P7330944855762000378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A054679 (n + 1)).toNat

end

end A276414.P7330944855762000378

/-! ## A276414.P1150211665949801522

`A061395(p?[A054679(n+1)])`
-/

namespace A276414.P1150211665949801522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A276414.P1150211665949801522

/-! ## A276414.P226771523739573074

`A066328(p?[A054679(n+1)])`
-/

namespace A276414.P226771523739573074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A276414.P226771523739573074

/-!
# A276416: a(n) = a(n-1)*(1 + a(n-1)/a(n-4)), with a(0) = a(1) = a(2) = a(3) = 1.

The programs for A276416, there is no canonical definition to state claims against.
-/

/-! ## A276416.P25350976018950894

`lcm(a(n-4)+a(n-1), a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A276416.P25350976018950894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  Nat.lcm (a (n - 4) + a (n - 1)) (a (n - 1))

end

end A276416.P25350976018950894

/-! ## A276416.P3077136676974494571

`a(n-1)+a(n-1)²/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A276416.P3077136676974494571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) + a (n - 1) ^ 2 / a (n - 4)

end

end A276416.P3077136676974494571

/-! ## A276416.P13571869702727698806

`a(n-1)*(1+a(n-1)/a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A276416.P13571869702727698806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) * (1 + a (n - 1) / a (n - 4))

end

end A276416.P13571869702727698806

/-! ## A276416.P18167732555778242105

`a(n-1)*A133400(n-1)` with `a(0)=1`
-/

namespace A276416.P18167732555778242105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A133400 (n - 1)

end

end A276416.P18167732555778242105

/-! ## A276416.P10575582455523674692

`∏[A133400(log2(A011782(n)))]`
-/

namespace A276416.P10575582455523674692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133400 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276416.P10575582455523674692

/-!
# A276417: a(n) = least positive k such that (2*n + 1) - 2^k is prime, or 0 if no such k exists.

The programs for A276417, there is no canonical definition to state claims against.
-/

/-! ## A276417.P9156483768708384404

`A252168(n+1)%A096502(n)`
-/

namespace A276417.P9156483768708384404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252168 (n + 1)) (A096502 n)

end

end A276417.P9156483768708384404

/-! ## A276417.P18035552143430209576

`∑{e}[A188903(n), #]`
-/

namespace A276417.P18035552143430209576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A276417.P18035552143430209576

/-! ## A276417.P4138191892420446463

`A032741(A188903(n))`
-/

namespace A276417.P4138191892420446463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A188903 n).toNat

end

end A276417.P4138191892420446463

/-! ## A276417.P15827470497442692165

`A285097(A188903(n)+1)`
-/

namespace A276417.P15827470497442692165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A188903 n + 1).toNat

end

end A276417.P15827470497442692165

/-! ## A276417.P13560990254158319335

`A002487(C(A188903(n), 2))`
-/

namespace A276417.P13560990254158319335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.choose (A188903 n).toNat 2)

end

end A276417.P13560990254158319335

/-! ## A276417.P1192987220190995225

`A000523(or(1, A188903(n)))`
-/

namespace A276417.P1192987220190995225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.lor 1 (A188903 n)).toNat

end

end A276417.P1192987220190995225

/-! ## A276417.P13998244435950484190

`∑{d}[A188903(n), A001221(#)]`
-/

namespace A276417.P13998244435950484190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A276417.P13998244435950484190

/-! ## A276417.P14549496518155880295

`∑{d}[A188903(n), A020951(#)]`
-/

namespace A276417.P14549496518155880295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A020951 d

end

end A276417.P14549496518155880295

/-! ## A276417.P1723188223008485132

`∑{d}[A188903(n), A055396(#)]`
-/

namespace A276417.P1723188223008485132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A276417.P1723188223008485132

/-! ## A276417.P17528826065746197122

`∑{d}[A188903(n), A093879(#)]`
-/

namespace A276417.P17528826065746197122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A093879 d

end

end A276417.P17528826065746197122

/-! ## A276417.P7029052079602121584

`∑{d}[A188903(n), A178226(#)]`
-/

namespace A276417.P7029052079602121584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A178226 d

end

end A276417.P7029052079602121584

/-! ## A276417.P5860206555265375522

`∑{d}[A188903(n), A020639(#)-1]`
-/

namespace A276417.P5860206555265375522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A020639 d - 1)

end

end A276417.P5860206555265375522

/-! ## A276417.P8573515921270869276

`A001222(A123108(2*A188903(n)))`
-/

namespace A276417.P8573515921270869276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A123108 (2 * A188903 n).toNat).toNat

end

end A276417.P8573515921270869276

/-! ## A276417.P15006475903104174644

`∑{d}[A188903(n), A001222(A014963(#))]`
-/

namespace A276417.P15006475903104174644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001222 (A014963 d).toNat

end

end A276417.P15006475903104174644

/-! ## A276417.P2412994713855805856

`∑{d}[A188903(n), A000720(A020639(#))]`
-/

namespace A276417.P2412994713855805856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 (A020639 d).toNat

end

end A276417.P2412994713855805856

/-! ## A276417.P1639960801852443850

`∑{d}[A188903(n), A188903(A056239(#+1))-1]`
-/

namespace A276417.P1639960801852443850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A188903 (A056239 (d + 1)).toNat - 1)

end

end A276417.P1639960801852443850

/-! ## A276417.P5158771228805379558

`A001222(A188903(n)+A123108(A188903(n)))`
-/

namespace A276417.P5158771228805379558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A188903 n + A123108 (A188903 n).toNat).toNat

end

end A276417.P5158771228805379558

/-! ## A276417.P18225712702132430940

`A002487(A188903(n)²-A188903(n))`
-/

namespace A276417.P18225712702132430940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A188903 n ^ 2 - A188903 n).toNat

end

end A276417.P18225712702132430940

/-!
# A276418: Starting a random walk on Z at 0 triangle T(j,k) gives the number of paths of length 2*j returning to 0 exactly k times.

The programs for A276418, the canonical program `A276418.P3941641458234612422` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276418 has offset 0).

The definition of A276418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276418.P9322156994390441377

`A172068(A061885(n))`
-/

namespace A276418.P9322156994390441377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172068 (A061885 n).toNat

end

end A276418.P9322156994390441377

namespace A276418

/-- `A172068(A061885(n))` -/
def P9322156994390441377.Spec : Prop :=
  ∀ n, P9322156994390441377.a n = A276418 n

end A276418

/-! ## A276418.P6333117951500322155

`A172068(A057944(n)+n)`
-/

namespace A276418.P6333117951500322155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172068 (A057944 n + (n : ℤ)).toNat

end

end A276418.P6333117951500322155

namespace A276418

/-- `A172068(A057944(n)+n)` -/
def P6333117951500322155.Spec : Prop :=
  ∀ n, P6333117951500322155.a n = A276418 n

end A276418

/-! ## A276418.P17281078612017016748

`A059268(n)*A092392(n)`
-/

namespace A276418.P17281078612017016748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A092392 n

end

end A276418.P17281078612017016748

namespace A276418

/-- `A059268(n)*A092392(n)` -/
def P17281078612017016748.Spec : Prop :=
  ∀ n, P17281078612017016748.a n = A276418 n

end A276418

/-! ## A276418.P3941641458234612422

`A109767(n)/A094587(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A276418

/-- `A109767(n)/A094587(n)` -/
def P3941641458234612422.Spec : Prop :=
  ∀ n, P3941641458234612422.a n = (A276418 n : ℚ)

end A276418

/-! ## A276418.P3950702340852453628

`A172068(eq[0, A079813(n+1)])`
-/

namespace A276418.P3950702340852453628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276418.P3950702340852453628

namespace A276418

/-- `A172068(eq[0, A079813(n+1)])` -/
def P3950702340852453628.Spec : Prop :=
  ∀ n, P3950702340852453628.a n = A276418 n

end A276418

/-! ## A276418.P2959376461111590467

`A036453(n+1)*A164705(n)`
-/

namespace A276418.P2959376461111590467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A164705 n

end

end A276418.P2959376461111590467

namespace A276418

/-- `A036453(n+1)*A164705(n)` -/
def P2959376461111590467.Spec : Prop :=
  ∀ n, P2959376461111590467.a n = A276418 n

end A276418

/-! ## A276418.P17693210779600633065

`A000079(A002262(n))*A092392(n)`
-/

namespace A276418.P17693210779600633065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A092392 n

end

end A276418.P17693210779600633065

namespace A276418

/-- `A000079(A002262(n))*A092392(n)` -/
def P17693210779600633065.Spec : Prop :=
  ∀ n, P17693210779600633065.a n = A276418 n

end A276418

/-! ## A276418.P11016110843409215226

`A172068(eq[A091453(n+1)², A091453(n+1)])`
-/

namespace A276418.P11016110843409215226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172068 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A276418.P11016110843409215226

namespace A276418

/-- `A172068(eq[A091453(n+1)², A091453(n+1)])` -/
def P11016110843409215226.Spec : Prop :=
  ∀ n, P11016110843409215226.a n = A276418 n

end A276418

/-! ## A276418.P10120157725522631050

`A011782(n+1)/A011782(n)*A164705(n)`
-/

namespace A276418.P10120157725522631050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A011782 n : ℚ) * (A164705 n : ℚ)

end

end A276418.P10120157725522631050

namespace A276418

/-- `A011782(n+1)/A011782(n)*A164705(n)` -/
def P10120157725522631050.Spec : Prop :=
  ∀ n, P10120157725522631050.a n = (A276418 n : ℚ)

end A276418

/-!
# A276419: Non-Fibonacci numbers n such that A129761(n) = 1.

The programs for A276419, there is no canonical definition to state claims against.
-/

/-! ## A276419.P16762374628548719841

`A058065(comp[round(ϕ*a(n-1))])` with `a(0)=0, a(1)=1`
-/

namespace A276419.P16762374628548719841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A276419.P16762374628548719841

/-! ## A276419.P15795199805942844453

`∩[floor(ϕ*(n+2))-3, A001690(n+1)]`
-/

namespace A276419.P15795199805942844453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276419.P15795199805942844453

/-! ## A276419.P10227453656800913739

`A058065(comp[a(n-1)+a(n-2)])` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A276419.P10227453656800913739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A276419.P10227453656800913739

/-! ## A276419.P4021938720220868839

`A058065(comp[A000045(n)])`
-/

namespace A276419.P4021938720220868839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A276419.P4021938720220868839

/-! ## A276419.P7269585383463538241

`A058065(comp[A035516(n)])`
-/

namespace A276419.P7269585383463538241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035516 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A276419.P7269585383463538241

/-! ## A276419.P1972261705323276036

`A058065(comp[A035517(n)])`
-/

namespace A276419.P1972261705323276036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A276419.P1972261705323276036

/-! ## A276419.P16543738818869468247

`A058065(comp[A053602(n)])`
-/

namespace A276419.P16543738818869468247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A276419.P16543738818869468247

/-! ## A276419.P1878625978810147467

`A058065(comp[A079977(n)])`
-/

namespace A276419.P1878625978810147467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A276419.P1878625978810147467

/-! ## A276419.P9613900139983242002

`A058065(comp[A098054(n)])`
-/

namespace A276419.P9613900139983242002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A276419.P9613900139983242002

/-!
# A276421: Number of palindromic compositions of n into nonprime numbers.

The programs for A276421, there is no canonical definition to state claims against.
-/

/-! ## A276421.P12850289727362301691

`A139024(A095719(n+1))`
-/

namespace A276421.P12850289727362301691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139024 (A095719 (n + 1)).toNat

end

end A276421.P12850289727362301691

/-! ## A276421.P8990858869817224574

`A162909(∑[A114869(char[3*n]+2*n)])`
-/

namespace A276421.P8990858869817224574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114869 ((if ∃ j, f2 j = n then 1 else 0) + 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162909 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276421.P8990858869817224574

/-!
# A276422: Triangle read by rows: T(n,k) is the number of partitions of n for which the sum of its odd singletons is k (0<=k<=n). A singleton in a partition is a part that occurs exactly once.

The programs for A276422, there is no canonical definition to state claims against.
-/

/-! ## A276422.P14809737248989681974

`A054523(n+1)-A003849(A049858(n))`
-/

namespace A276422.P14809737248989681974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) - A003849 (A049858 n).toNat

end

end A276422.P14809737248989681974

/-! ## A276422.P13719756720479940125

`A054523(n+1)-A073424(A029907(n))`
-/

namespace A276422.P13719756720479940125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) - A073424 (A029907 n).toNat

end

end A276422.P13719756720479940125

/-! ## A276422.P13454667426663992365

`A054523(n+1)-A010054(A214899(n))`
-/

namespace A276422.P13454667426663992365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) - A010054 (A214899 n).toNat

end

end A276422.P13454667426663992365

/-! ## A276422.P16381228285272834464

`and(A052253(A233265(n+1)), A079217(n))`
-/

namespace A276422.P16381228285272834464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052253 (A233265 (n + 1)).toNat) (A079217 n)

end

end A276422.P16381228285272834464

/-! ## A276422.P13198149647704146383

`and(A079221(n), A100430(A130975(n+2)))`
-/

namespace A276422.P13198149647704146383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079221 n) (A100430 (A130975 (n + 2)).toNat)

end

end A276422.P13198149647704146383

/-!
# A276423: Sum of the odd singletons in all partitions of n (n>=0). A singleton in a partition is a part that occurs exactly once.

The programs for A276423, there is no canonical definition to state claims against.
-/

/-! ## A276423.P8738202043604692824

`A103628(n)-A276425(n)`
-/

namespace A276423.P8738202043604692824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103628 n - A276425 n

end

end A276423.P8738202043604692824

/-! ## A276423.P4648111167248670741

`A066186(n)-(A276425(n)+A194544(n))`
-/

namespace A276423.P4648111167248670741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - (A276425 n + A194544 n)

end

end A276423.P4648111167248670741

/-! ## A276423.P16228886155940788506

`A220909(n)/2-A194544(n)-A276425(n)`
-/

namespace A276423.P16228886155940788506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220909 n : ℚ) / 2 - (A194544 n : ℚ) - (A276425 n : ℚ)

end

end A276423.P16228886155940788506

/-! ## A276423.P15275659313122152975

`n*A000041(n)-A194544(n)-A276425(n)`
-/

namespace A276423.P15275659313122152975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 n - A194544 n - A276425 n

end

end A276423.P15275659313122152975

/-! ## A276423.P6529892663687993047

`n*A035363(2*n)-A194544(n)-A276425(n)`
-/

namespace A276423.P6529892663687993047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035363 (2 * n) - A194544 n - A276425 n

end

end A276423.P6529892663687993047

/-! ## A276423.P14821424880306549451

`A066186(n)-A194544(n)-A276425(A028310(n))`
-/

namespace A276423.P14821424880306549451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - A194544 n - A276425 (A028310 n).toNat

end

end A276423.P14821424880306549451

/-! ## A276423.P6954732315593144777

`A103650(n+1)+A000097(n)-A000070(n)-A276425(n)`
-/

namespace A276423.P6954732315593144777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103650 (n + 1) + (A000097 n - A000070 n) - A276425 n

end

end A276423.P6954732315593144777

/-! ## A276423.P9924380101269515206

`A222730(∑[n]+1)-A276425(n)`
-/

namespace A276423.P9924380101269515206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A276425 n

end

end A276423.P9924380101269515206

/-! ## A276423.P16852800114377437141

`abs(A222730(A000124(n))-A276425(n))`
-/

namespace A276423.P16852800114377437141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A222730 (A000124 n).toNat - A276425 n|

end

end A276423.P16852800114377437141

/-! ## A276423.P9163526951041643516

`(A222730(A000124(n))-A276425(n))*A014963(4*n+10)`
-/

namespace A276423.P9163526951041643516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A222730 (A000124 n).toNat - A276425 n) * A014963 (4 * n + 10)

end

end A276423.P9163526951041643516

/-!
# A276424: Triangle read by rows: T(n,k) is the number of partitions of n for which the sum of its even singletons is k (0<=k<=n). A singleton in a partition is a part that occurs exactly once.

The programs for A276424, there is no canonical definition to state claims against.
-/

/-! ## A276424.P10069021606169964590

`A319420(A130125(A061579(n)))`
-/

namespace A276424.P10069021606169964590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (A130125 (A061579 n).toNat).toNat

end

end A276424.P10069021606169964590

/-! ## A276424.P4644681006099117768

`and(A068926(n+1), A132231(A000045(n+2)))`
-/

namespace A276424.P4644681006099117768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068926 (n + 1)) (A132231 (A000045 (n + 2)).toNat)

end

end A276424.P4644681006099117768

/-! ## A276424.P16543101359550192056

`and(A068926(n+1), A072610(A068931(2*n+3)))`
-/

namespace A276424.P16543101359550192056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068926 (n + 1)) (A072610 (A068931 (2 * n + 3)).toNat)

end

end A276424.P16543101359550192056

/-! ## A276424.P1946648598628746085

`A260649(lcm(4, A025626(n+1)))`
-/

namespace A276424.P1946648598628746085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260649 (Int.lcm 4 (A025626 (n + 1)))

end

end A276424.P1946648598628746085

/-! ## A276424.P4165569650169780487

`A068926(xor(n+1, A221240(n+1)))`
-/

namespace A276424.P4165569650169780487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068926 (Int.xor (n + 1 : ℤ) (A221240 (n + 1))).toNat

end

end A276424.P4165569650169780487

/-!
# A276425: Sum of the even singletons in all partitions of n (n>=0). A singleton in a partition is a part that occurs exactly once.

The programs for A276425, there is no canonical definition to state claims against.
-/

/-! ## A276425.P14735895963978167705

`A103628(n)-A276423(n)`
-/

namespace A276425.P14735895963978167705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103628 n - A276423 n

end

end A276425.P14735895963978167705

/-! ## A276425.P12495112550287690230

`A066186(n)-(A276423(n)+A194544(n))`
-/

namespace A276425.P12495112550287690230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - (A276423 n + A194544 n)

end

end A276425.P12495112550287690230

/-! ## A276425.P7065706322394758820

`A220909(n)/2-A194544(n)-A276423(n)`
-/

namespace A276425.P7065706322394758820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220909 n : ℚ) / 2 - (A194544 n : ℚ) - (A276423 n : ℚ)

end

end A276425.P7065706322394758820

/-! ## A276425.P10866387129212727405

`n*A000041(n)-A194544(n)-A276423(n)`
-/

namespace A276425.P10866387129212727405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 n - A194544 n - A276423 n

end

end A276425.P10866387129212727405

/-! ## A276425.P17338053412511243066

`n*A035363(2*n)-A194544(n)-A276423(n)`
-/

namespace A276425.P17338053412511243066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035363 (2 * n) - A194544 n - A276423 n

end

end A276425.P17338053412511243066

/-! ## A276425.P12029387774753072598

`A103650(n+1)+A000097(n)-A000070(n)-A276423(n)`
-/

namespace A276425.P12029387774753072598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103650 (n + 1) + (A000097 n - A000070 n) - A276423 n

end

end A276425.P12029387774753072598

/-! ## A276425.P16339047338244281884

`A222730(∑[n]+1)-A276423(n)`
-/

namespace A276425.P16339047338244281884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A276423 n

end

end A276425.P16339047338244281884

/-!
# A276426: Triangle read by rows: T(n,k) is the number of integer partitions of n having k distinct odd parts (n>=0).

The programs for A276426, there is no canonical definition to state claims against.
-/

/-! ## A276426.P9440776849432774429

`A090661(n+1)%A000005(A077491(n+1))`
-/

namespace A276426.P9440776849432774429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090661 (n + 1)) (A000005 (A077491 (n + 1)).toNat)

end

end A276426.P9440776849432774429

/-!
# A276428: Sum over all partitions of n of the number of distinct parts i of multiplicity i.

The programs for A276428, there is no canonical definition to state claims against.
-/

/-! ## A276428.P14456486073273006028

`A194805(n)-(A277101(n)+A000065(n))`
-/

namespace A276428.P14456486073273006028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194805 n - (A277101 n + A000065 n)

end

end A276428.P14456486073273006028

/-! ## A276428.P16214001518809606246

`A194439(n+1)%A127498(n)-A277101(n)`
-/

namespace A276428.P16214001518809606246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194439 (n + 1)) (A127498 n) - A277101 n

end

end A276428.P16214001518809606246

/-! ## A276428.P18224002994701088171

`(A194439(n+1)-A277101(n))%A233969(n)`
-/

namespace A276428.P18224002994701088171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194439 (n + 1) - A277101 n) (A233969 n)

end

end A276428.P18224002994701088171

/-!
# A276429: Number of partitions of n containing no part i of multiplicity i.

The programs for A276429, there is no canonical definition to state claims against.
-/

/-! ## A276429.P17183678071738489387

`A000041(n)-A392745(n)`
-/

namespace A276429.P17183678071738489387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A392745 n

end

end A276429.P17183678071738489387

/-! ## A276429.P12499706924906489826

`A276427(∑[A328806(n)]-A328806(n))`
-/

namespace A276429.P12499706924906489826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276427 (∑ j ∈ Finset.range (n + 1), f1 j - A328806 n).toNat

end

end A276429.P12499706924906489826

/-! ## A276429.P716125778125951449

`A238343(A000217(n))-A392745(n)`
-/

namespace A276429.P716125778125951449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000217 n).toNat - A392745 n

end

end A276429.P716125778125951449

/-!
# A276430: Triangle read by rows: T(n,k) is the number of partitions of n having k parts that are powers of 2 with positive exponent (n>=0).

The programs for A276430, there is no canonical definition to state claims against.
-/

/-! ## A276430.P13462434289067267669

`A123578(A191528(n)+A078926(A162985(n)))`
-/

namespace A276430.P13462434289067267669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A191528 n + A078926 (A162985 n).toNat).toNat

end

end A276430.P13462434289067267669

/-! ## A276430.P14161032411387110834

`A357859(A109193(n+1))`
-/

namespace A276430.P14161032411387110834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357859 (A109193 (n + 1)).toNat

end

end A276430.P14161032411387110834

/-! ## A276430.P4042796422636757144

`A069010(A350452(n+1)+2)`
-/

namespace A276430.P4042796422636757144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A350452 (n + 1) + 2).toNat

end

end A276430.P4042796422636757144

/-! ## A276430.P17197861093010155616

`A194884(lcm(2, A106489(n+2)))`
-/

namespace A276430.P17197861093010155616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194884 (Int.lcm 2 (A106489 (n + 2)))

end

end A276430.P17197861093010155616

/-! ## A276430.P18279546146814272474

`gcd(A001918(A360889(n)), A070683(n))`
-/

namespace A276430.P18279546146814272474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001918 (A360889 n).toNat) (A070683 n)

end

end A276430.P18279546146814272474

/-!
# A276431: Number of partitions of n containing no parts that are powers of 2 with positive exponent.

The programs for A276431, there is no canonical definition to state claims against.
-/

/-! ## A276431.P6987928017484505921

`∑[A101417(n)]`
-/

namespace A276431.P6987928017484505921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276431.P6987928017484505921

/-! ## A276431.P8376034936160399143

`A101417(A123621(2*n+1))+a(n-1)` with `a(0)=1`
-/

namespace A276431.P8376034936160399143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101417 (A123621 (2 * n + 1)).toNat + a (n - 1)

end

end A276431.P8376034936160399143

/-! ## A276431.P12138720042232229271

`A276430(A002620(n+1))`
-/

namespace A276431.P12138720042232229271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276430 (A002620 (n + 1)).toNat

end

end A276431.P12138720042232229271

/-! ## A276431.P2807425371125177255

`A276430(A076921(n+1))`
-/

namespace A276431.P2807425371125177255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276430 (A076921 (n + 1)).toNat

end

end A276431.P2807425371125177255

/-! ## A276431.P6862562807973985602

`A276430(A182531(n+1))`
-/

namespace A276431.P6862562807973985602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276430 (A182531 (n + 1)).toNat

end

end A276431.P6862562807973985602

/-! ## A276431.P18149828619445801318

`A276430(∑[n]-A002620(n))`
-/

namespace A276431.P18149828619445801318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276430 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002620 n).toNat

end

end A276431.P18149828619445801318

/-! ## A276431.P17910495109144326168

`A276430(record[(n+1)*(2-A276430(n))])`
-/

namespace A276431.P17910495109144326168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A276430 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276430 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A276431.P17910495109144326168

/-! ## A276431.P5734706521950065693

`∑[abs(Δ[A276430(A002620(n))%A022392(n)])]`
-/

namespace A276431.P5734706521950065693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276430 (A002620 n).toNat) (A022392 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276431.P5734706521950065693

/-!
# A276432: Sum of the traces of all plane partitions of n.

The programs for A276432, there is no canonical definition to state claims against.
-/

/-! ## A276432.P3040100464954196715

`floor(sqrt(A227871(5^n-1)))`
-/

namespace A276432.P3040100464954196715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A227871 (5 ^ n - 1))

end

end A276432.P3040100464954196715

/-! ## A276432.P9786230234950095265

`A161205(∑[∑[floor(23^(n/2))]])`
-/

namespace A276432.P9786230234950095265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(23 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276432.P9786230234950095265

/-!
# A276434: Sum over all partitions of n of the number of distinct parts i of multiplicity i+1.

The programs for A276434, there is no canonical definition to state claims against.
-/

/-! ## A276434.P7935873803035953852

`A320278(2*A052931(n))`
-/

namespace A276434.P7935873803035953852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (2 * A052931 n).toNat

end

end A276434.P7935873803035953852

/-! ## A276434.P4996104237212834963

`A320278(A005843(A052931(n)))`
-/

namespace A276434.P4996104237212834963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A005843 (A052931 n).toNat).toNat

end

end A276434.P4996104237212834963

/-! ## A276434.P8054302254820403085

`A320278(A052931(n)+A052931(n))`
-/

namespace A276434.P8054302254820403085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A052931 n + A052931 n).toNat

end

end A276434.P8054302254820403085

/-! ## A276434.P5042280179879299713

`A320278(A052931(n)-(A320278(n)-A052931(n)))`
-/

namespace A276434.P5042280179879299713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A052931 n - (A320278 n - A052931 n)).toNat

end

end A276434.P5042280179879299713

/-! ## A276434.P8899150218493733427

`A048766(A026336(n)-A000213(n))`
-/

namespace A276434.P8899150218493733427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A026336 n - A000213 n).toNat

end

end A276434.P8899150218493733427

/-!
# A276437: Numbers n for which A020639(n) <> A272565(n).

The programs for A276437, there is no canonical definition to state claims against.
-/

/-! ## A276437.P2630234332359778520

`∪[A276447(n+1), A276448(n+1)]`
-/

namespace A276437.P2630234332359778520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A276437.P2630234332359778520

/-! ## A276437.P10282765920243669180

`A065190(comp[A276347(n+1)-1])`
-/

namespace A276437.P10282765920243669180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276347 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A276437.P10282765920243669180

/-! ## A276437.P11590374745976494060

`∩[A065190(2*(n+1)), comp[A276347(n+2)]]`
-/

namespace A276437.P11590374745976494060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276347 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A276437.P11590374745976494060

/-! ## A276437.P6029896139804501040

`A080512(comp[A276347(n+1)-1]+1)`
-/

namespace A276437.P6029896139804501040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276347 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A276437.P6029896139804501040

/-!
# A276438: a(n) = (A274647(n)-A274647(n-1)) / n.

The programs for A276438, there is no canonical definition to state claims against.
-/

/-! ## A276438.P13005973801122322546

`(A274647(n+1)-A274647(n))/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276438.P13005973801122322546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274647 (n + 1) - A274647 n : ℚ) / (n + 1 : ℚ)

end

end A276438.P13005973801122322546

/-! ## A276438.P5838352228180554886

`Δ[A276439(n)]`
-/

namespace A276438.P5838352228180554886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276438.P5838352228180554886

/-! ## A276438.P17170616628564363681

`Δ[A274647(n)]/(n+1)`
-/

namespace A276438.P17170616628564363681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274647 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A276438.P17170616628564363681

/-! ## A276438.P7778241528196675176

`A276439(n+1)-A276439(n)`
-/

namespace A276438.P7778241528196675176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276439 (n + 1) - A276439 n

end

end A276438.P7778241528196675176

/-! ## A276438.P17925262829712828789

`(Δ[A274647(n)]-n)%A233583(n+1)`
-/

namespace A276438.P17925262829712828789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - (n : ℤ)) (A233583 (n + 1))

end

end A276438.P17925262829712828789

/-!
# A276439: Partial sums of A276438.

The programs for A276439, there is no canonical definition to state claims against.
-/

/-! ## A276439.P17728508816652100638

`A276438(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A276439.P17728508816652100638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A276438 n + a (n - 1)

end

end A276439.P17728508816652100638

/-! ## A276439.P8069502905531889023

`∑[A276438(A028310(n))]-1`
-/

namespace A276439.P8069502905531889023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276438 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A276439.P8069502905531889023

/-! ## A276439.P14046983682195313055

`∑[A276438(n+1)]-A276438(n+1)`
-/

namespace A276439.P14046983682195313055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A276438 (n + 1)

end

end A276439.P14046983682195313055

/-! ## A276439.P11022706716652257350

`∑[A276438(A233583(n+1))]-1`
-/

namespace A276439.P11022706716652257350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276438 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A276439.P11022706716652257350

/-! ## A276439.P10307106623581946787

`A002837(∑[A276438(A233583(n+1))])`
-/

namespace A276439.P10307106623581946787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276438 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276439.P10307106623581946787

/-! ## A276439.P12002867172961915546

`∑[A057427(n)*A276438(A233583(n+1))]`
-/

namespace A276439.P12002867172961915546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A276438 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276439.P12002867172961915546

/-! ## A276439.P13524098548786506015

`∑[A000040(n+1)%2*A276438(A233583(n+1))]`
-/

namespace A276439.P13524098548786506015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A276438 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276439.P13524098548786506015

/-!
# A276440: a(n) = greatest ludic number (A003309) that divides n.

The programs for A276440, there is no canonical definition to state claims against.
-/

/-! ## A276440.P1858242642955780400

`A006530(A133900(n+1))^A331508(A331508(n))`
-/

namespace A276440.P1858242642955780400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (A133900 (n + 1)).toNat : ℚ) ^ (A331508 (A331508 n).toNat : ℤ)

end

end A276440.P1858242642955780400

/-! ## A276440.P3866207806048408631

`A006530(n+1)%p?[A194086(n)]`
-/

namespace A276440.P3866207806048408631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A276440.P3866207806048408631

/-! ## A276440.P7187761832154862846

`A006530(gcd(n+1, A335287(n+1)))`
-/

namespace A276440.P7187761832154862846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (n + 1 : ℤ) (A335287 (n + 1)))

end

end A276440.P7187761832154862846

/-! ## A276440.P2325867009899335907

`A006530((n+1)%A339133(3*n+5))`
-/

namespace A276440.P2325867009899335907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (n + 1 : ℤ) (A339133 (3 * n + 5))).toNat

end

end A276440.P2325867009899335907

/-! ## A276440.P8461932319645834165

`∏{d}[A006530(2*n-(n-1)), #]%p?[A194086(n)]`
-/

namespace A276440.P8461932319645834165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A276440.P8461932319645834165

/-!
# A276441: Permutation of natural numbers: a(1) = 1, a(A087686(1+n)) = 1 + 2*a(n), a(A088359(n)) = 2*a(n), where A088359 & A087686 = numbers that occur only once & more than once in A004001.

The programs for A276441, there is no canonical definition to state claims against.
-/

/-! ## A276441.P3473919415264534995

`A006068(A276443(n+1))`
-/

namespace A276441.P3473919415264534995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A276443 (n + 1)).toNat

end

end A276441.P3473919415264534995

/-! ## A276441.P2402362809920823994

`A054429(A267111(n+1))`
-/

namespace A276441.P2402362809920823994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A267111 (n + 1)).toNat

end

end A276441.P2402362809920823994

/-! ## A276441.P13153389364363381779

`A233277(A276343(n+1))`
-/

namespace A276441.P13153389364363381779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233277 (A276343 (n + 1)).toNat

end

end A276441.P13153389364363381779

/-! ## A276441.P13146901804988536287

`A233275(A276345(n+1))`
-/

namespace A276441.P13146901804988536287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (A276345 (n + 1)).toNat

end

end A276441.P13146901804988536287

/-! ## A276441.P8497453828603629799

`A233279(A276445(n+1))`
-/

namespace A276441.P8497453828603629799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A276445 (n + 1)).toNat

end

end A276441.P8497453828603629799

/-! ## A276441.P14581591211764686918

`xor(A092323(n+1), A267111(n+1))`
-/

namespace A276441.P14581591211764686918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A092323 (n + 1)) (A267111 (n + 1))

end

end A276441.P14581591211764686918

/-! ## A276441.P16951769536677644725

`A267111(A276344(A276345(A276343(A276344(n+1)))))`
-/

namespace A276441.P16951769536677644725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267111 (A276344 (A276345 (A276343 (A276344 (n + 1)).toNat).toNat).toNat).toNat

end

end A276441.P16951769536677644725

/-! ## A276441.P3623931142309524480

`A267111(A276346(A276343(A276345(A276346(n+1)))))`
-/

namespace A276441.P3623931142309524480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267111 (A276346 (A276343 (A276345 (A276346 (n + 1)).toNat).toNat).toNat).toNat

end

end A276441.P3623931142309524480

/-! ## A276441.P1118846160402664219

`A267111(A276446(A276443(A276445(A276446(n+1)))))`
-/

namespace A276441.P1118846160402664219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267111 (A276446 (A276443 (A276445 (A276446 (n + 1)).toNat).toNat).toNat).toNat

end

end A276441.P1118846160402664219

/-! ## A276441.P5997468602259452466

`A252754(A269851(n+1))`
-/

namespace A276441.P5997468602259452466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A269851 (n + 1)).toNat

end

end A276441.P5997468602259452466

/-!
# A276442: Permutation of natural numbers: a(1) = 1; a(2n) = A088359(a(n)), a(2n+1) = A087686(1+a(n)), where A088359 & A087686 = numbers that occur only once & more than once in A004001.

The programs for A276442, there is no canonical definition to state claims against.
-/

/-! ## A276442.P10775359742083661084

`A276444(A003188(n+1))`
-/

namespace A276442.P10775359742083661084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276444 (A003188 (n + 1)).toNat

end

end A276442.P10775359742083661084

/-! ## A276442.P2031263121626903775

`A267112(A054429(n+1))`
-/

namespace A276442.P2031263121626903775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (A054429 (n + 1)).toNat

end

end A276442.P2031263121626903775

/-! ## A276442.P12306319891561165741

`A276346(A233276(n+1))`
-/

namespace A276442.P12306319891561165741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276346 (A233276 (n + 1)).toNat

end

end A276442.P12306319891561165741

/-! ## A276442.P6941737819973659886

`A276344(A233278(n+1))`
-/

namespace A276442.P6941737819973659886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276344 (A233278 (n + 1)).toNat

end

end A276442.P6941737819973659886

/-! ## A276442.P8167453466800049644

`A276446(A233280(n+1))`
-/

namespace A276442.P8167453466800049644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (A233280 (n + 1)).toNat

end

end A276442.P8167453466800049644

/-! ## A276442.P10174636639811289932

`A267112(A276441(A267112(n+1)))`
-/

namespace A276442.P10174636639811289932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (A276441 (A267112 (n + 1)).toNat).toNat

end

end A276442.P10174636639811289932

/-! ## A276442.P8982394651467287974

`A276346(A276343(A267112(A276344(A276343(n+1)))))`
-/

namespace A276442.P8982394651467287974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276346 (A276343 (A267112 (A276344 (A276343 (n + 1)).toNat).toNat).toNat).toNat

end

end A276442.P8982394651467287974

/-! ## A276442.P6643699750633073721

`A276344(A276345(A267112(A276346(A276345(n+1)))))`
-/

namespace A276442.P6643699750633073721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276344 (A276345 (A267112 (A276346 (A276345 (n + 1)).toNat).toNat).toNat).toNat

end

end A276442.P6643699750633073721

/-! ## A276442.P1323575822213422514

`A276446(A276443(A267112(A276444(A276443(n+1)))))`
-/

namespace A276442.P1323575822213422514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (A276443 (A267112 (A276444 (A276443 (n + 1)).toNat).toNat).toNat).toNat

end

end A276442.P1323575822213422514

/-! ## A276442.P15283003634927524200

`A276444(A276445(A267112(A276446(A276445(n+1)))))`
-/

namespace A276442.P15283003634927524200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276444 (A276445 (A267112 (A276446 (A276445 (n + 1)).toNat).toNat).toNat).toNat

end

end A276442.P15283003634927524200

/-! ## A276442.P8982347407403081731

`A276444(A276445(A267112(A115384(2*n+1))))`
-/

namespace A276442.P8982347407403081731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276444 (A276445 (A267112 (A115384 (2 * n + 1)).toNat).toNat).toNat

end

end A276442.P8982347407403081731

/-! ## A276442.P17991363143855133822

`A276346(A233278(A054429(A267110(A088359(n+1)))))`
-/

namespace A276442.P17991363143855133822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276346 (A233278 (A054429 (A267110 (A088359 (n + 1)).toNat).toNat).toNat).toNat

end

end A276442.P17991363143855133822

/-!
# A276443: Permutation of natural numbers: a(1) = 1, a(A087686(n)) = A000069(1+a(n-1)), a(A088359(n)) = A001969(1+a(n)), where A088359 & A087686 = numbers that occur only once & more than once in A004001, and A000069 & A001969 are odious & evil numbers.

The programs for A276443, there is no canonical definition to state claims against.
-/

/-! ## A276443.P1833140844678732756

`A003188(A276441(n+1))`
-/

namespace A276443.P1833140844678732756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A276441 (n + 1)).toNat

end

end A276443.P1833140844678732756

/-! ## A276443.P17342054863655675501

`A063946(A276445(n+1))`
-/

namespace A276443.P17342054863655675501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A276445 (n + 1)).toNat

end

end A276443.P17342054863655675501

/-! ## A276443.P999142916142711483

`A233280(A267111(n+1))`
-/

namespace A276443.P999142916142711483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A267111 (n + 1)).toNat

end

end A276443.P999142916142711483

/-! ## A276443.P5828445989995907327

`A003188(A233277(A276343(n+1)))`
-/

namespace A276443.P5828445989995907327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A233277 (A276343 (n + 1)).toNat).toNat

end

end A276443.P5828445989995907327

/-! ## A276443.P337578000047037141

`A276445(A276344(A276345(n+1)))`
-/

namespace A276443.P337578000047037141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276445 (A276344 (A276345 (n + 1)).toNat).toNat

end

end A276443.P337578000047037141

/-!
# A276444: Permutation of natural numbers: a(1) = 1; a(A001969(1+n)) = A088359(a(n)), a(A000069(1+n)) = A087686(1+a(n)), where A088359 & A087686 = numbers that occur only once & more than once in A004001, and A000069 & A001969 are odious & evil numbers.

The programs for A276444, there is no canonical definition to state claims against.
-/

/-! ## A276444.P3131993529157072431

`A276442(A006068(n+1))`
-/

namespace A276444.P3131993529157072431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276442 (A006068 (n + 1)).toNat

end

end A276444.P3131993529157072431

/-! ## A276444.P7152146369962674439

`A276446(A063946(n+1))`
-/

namespace A276444.P7152146369962674439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (A063946 (n + 1)).toNat

end

end A276444.P7152146369962674439

/-! ## A276444.P11854260491229904663

`A267112(A233279(n+1))`
-/

namespace A276444.P11854260491229904663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (A233279 (n + 1)).toNat

end

end A276444.P11854260491229904663

/-! ## A276444.P14338924416752482567

`A276442(A267111(A276446(n+1)))`
-/

namespace A276444.P14338924416752482567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276442 (A267111 (A276446 (n + 1)).toNat).toNat

end

end A276444.P14338924416752482567

/-! ## A276444.P16786045779737080097

`A276442(A234612(A003188(A234612(n+1))))`
-/

namespace A276444.P16786045779737080097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276442 (A234612 (A003188 (A234612 (n + 1)).toNat).toNat).toNat

end

end A276444.P16786045779737080097

/-! ## A276444.P2737792161674525403

`A276344(A233278(A006068(A233278(A233277(n+1)))))`
-/

namespace A276444.P2737792161674525403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276344 (A233278 (A006068 (A233278 (A233277 (n + 1)).toNat).toNat).toNat).toNat

end

end A276444.P2737792161674525403

/-! ## A276444.P7360827323210379426

`A276446(A276443(A276446(A276441(A276442(n+1)))))`
-/

namespace A276444.P7360827323210379426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (A276443 (A276446 (A276441 (A276442 (n + 1)).toNat).toNat).toNat).toNat

end

end A276444.P7360827323210379426

/-! ## A276444.P16337970799023360988

`A276446(A276443(A276446(A115384(2*n+1))))`
-/

namespace A276444.P16337970799023360988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (A276443 (A276446 (A115384 (2 * n + 1)).toNat).toNat).toNat

end

end A276444.P16337970799023360988

/-!
# A276445: Permutation of natural numbers: a(1) = 1, a(A087686(n)) = A001969(1+a(n-1)), a(A088359(n)) = A000069(1+a(n)), where A088359 & A087686 = numbers that occur only once & more than once in A004001, and A000069 & A001969 are odious & evil numbers.

The programs for A276445, there is no canonical definition to state claims against.
-/

/-! ## A276445.P9903554556516579519

`A003188(A267111(n+1))`
-/

namespace A276445.P9903554556516579519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A267111 (n + 1)).toNat

end

end A276445.P9903554556516579519

/-! ## A276445.P11049907131882074202

`A063946(A276443(n+1))`
-/

namespace A276445.P11049907131882074202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A276443 (n + 1)).toNat

end

end A276445.P11049907131882074202

/-! ## A276445.P2118000977134386432

`A233280(A276441(n+1))`
-/

namespace A276445.P2118000977134386432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A276441 (n + 1)).toNat

end

end A276445.P2118000977134386432

/-! ## A276445.P6376875335027270987

`A276443(A276346(A276343(n+1)))`
-/

namespace A276445.P6376875335027270987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276443 (A276346 (A276343 (n + 1)).toNat).toNat

end

end A276445.P6376875335027270987

/-! ## A276445.P15686139785356315206

`A276443(A276344(A276345(n+1)))`
-/

namespace A276445.P15686139785356315206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276443 (A276344 (A276345 (n + 1)).toNat).toNat

end

end A276445.P15686139785356315206

/-! ## A276445.P7098443177314996826

`A269856(A269851(n+1))`
-/

namespace A276445.P7098443177314996826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269856 (A269851 (n + 1)).toNat

end

end A276445.P7098443177314996826

/-!
# A276446: Permutation of natural numbers: a(1) = 1; a(A000069(1+n)) = A088359(a(n)), a(A001969(1+n)) = A087686(1+a(n)), where A088359 & A087686 = numbers that occur only once & more than once in A004001, and A000069 & A001969 are odious & evil numbers.

The programs for A276446, there is no canonical definition to state claims against.
-/

/-! ## A276446.P9407418707835141818

`A267112(A006068(n+1))`
-/

namespace A276446.P9407418707835141818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (A006068 (n + 1)).toNat

end

end A276446.P9407418707835141818

/-! ## A276446.P15309993255698764445

`A276444(A063946(n+1))`
-/

namespace A276446.P15309993255698764445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276444 (A063946 (n + 1)).toNat

end

end A276446.P15309993255698764445

/-! ## A276446.P17440157046474869065

`A276442(A233279(n+1))`
-/

namespace A276446.P17440157046474869065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276442 (A233279 (n + 1)).toNat

end

end A276446.P17440157046474869065

/-! ## A276446.P8859768661200385010

`A267112(A286546(n+1)+n+1)`
-/

namespace A276446.P8859768661200385010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (A286546 (n + 1) + (n + 1 : ℤ)).toNat

end

end A276446.P8859768661200385010

/-! ## A276446.P6430787515399660455

`A276442(A267111(A276444(n+1)))`
-/

namespace A276446.P6430787515399660455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276442 (A267111 (A276444 (n + 1)).toNat).toNat

end

end A276446.P6430787515399660455

/-! ## A276446.P9520373154963557728

`A276444(A276445(A276444(A276343(A276344(n+1)))))`
-/

namespace A276446.P9520373154963557728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276444 (A276445 (A276444 (A276343 (A276344 (n + 1)).toNat).toNat).toNat).toNat

end

end A276446.P9520373154963557728

/-! ## A276446.P11313887056863016476

`A276444(A276445(A276444(A276444(A276443(n+1)))))`
-/

namespace A276446.P11313887056863016476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276444 (A276445 (A276444 (A276444 (A276443 (n + 1)).toNat).toNat).toNat).toNat

end

end A276446.P11313887056863016476

/-! ## A276446.P10223047087427428291

`A276444(A276445(A276444(A115384(2*n+1))))`
-/

namespace A276446.P10223047087427428291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276444 (A276445 (A276444 (A115384 (2 * n + 1)).toNat).toNat).toNat

end

end A276446.P10223047087427428291

/-! ## A276446.P8913372057630784832

`A267112(A252756(A269855(n+1)))`
-/

namespace A276446.P8913372057630784832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (A252756 (A269855 (n + 1)).toNat).toNat

end

end A276446.P8913372057630784832

/-!
# A276447: Numbers n for which A272565(n) < A020639(n).

The programs for A276447, there is no canonical definition to state claims against.
-/

/-! ## A276447.P15289867856946102064

`lt[A272565(n+1), A020639(n+1)]+1`
-/

namespace A276447.P15289867856946102064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A276447.P15289867856946102064

/-! ## A276447.P13908279122605613036

`∩[A276437(n+1), A318589(n+1)]`
-/

namespace A276447.P13908279122605613036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276447.P13908279122605613036

/-! ## A276447.P9762751938333953653

`∩[A276569(n+1), A318589(n+1)]`
-/

namespace A276447.P9762751938333953653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276447.P9762751938333953653

/-! ## A276447.P9466279696945579665

`∩[A276569(n+1), A337935(n+1)]`
-/

namespace A276447.P9466279696945579665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276447.P9466279696945579665

/-! ## A276447.P13293912572816088313

`∩[A276569(n+1), A378696(n+1)]`
-/

namespace A276447.P13293912572816088313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276447.P13293912572816088313

/-!
# A276448: Numbers n for which A272565(n) > A020639(n).

The programs for A276448, there is no canonical definition to state claims against.
-/

/-! ## A276448.P11376157745062965342

`lt[A020639(n+1), A272565(n+1)]+1`
-/

namespace A276448.P11376157745062965342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A276448.P11376157745062965342

/-! ## A276448.P10773067911366889489

`lt[A074828(n+1), A272565(n+1)]+1`
-/

namespace A276448.P10773067911366889489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A276448.P10773067911366889489

/-! ## A276448.P4683890708963136646

`A061767(lt[A074828(n+1), A272565(n+1)])`
-/

namespace A276448.P4683890708963136646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A276448.P4683890708963136646

/-! ## A276448.P11323338315329704859

`A004442(lt[A074828(n+1), (A271419(n+1)+n)%(n+1)+1])`
-/

namespace A276448.P11323338315329704859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271419 (n + 1) + (n : ℤ)) (n + 1 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A276448.P11323338315329704859

/-! ## A276448.P17617774689258035573

`lt[A020639(n+1), A020639(A269172(n+1))]+1`
-/

namespace A276448.P17617774689258035573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A269172 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A276448.P17617774689258035573

/-!
# A276449: Number of 1-orbits of the cyclic group C_4 for a bi-colored square n X n grid with n squares of one color.

The programs for A276449, the canonical program `A276449.P44379083446101465` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276449 has offset 1).

The definition of A276449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276449.P44379083446101465

`C(A002620(n+1), A001281(∑[n]))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276449

/-- `C(A002620(n+1), A001281(∑[n]))` -/
def P44379083446101465.Spec : Prop :=
  ∀ n, (P44379083446101465.a n : ℤ) = A276449 (n + 1)

theorem P44379083446101465.correct : P44379083446101465.Spec := by
  intro n
  simp only [A276449, Nat.add_sub_cancel]

end A276449

/-! ## A276449.P4484902525469486035

`C(A076921(n+1), A064680(∑[n]))`
-/

namespace A276449.P4484902525469486035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A076921 (n + 1)).toNat (A064680 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A276449.P4484902525469486035

namespace A276449

/-- `C(A076921(n+1), A064680(∑[n]))` -/
def P4484902525469486035.Spec : Prop :=
  ∀ n, (P4484902525469486035.a n : ℤ) = A276449 (n + 1)

end A276449

/-! ## A276449.P6330608259780382144

`C(A076921(n+1), A001281(A000217(n)))`
-/

namespace A276449.P6330608259780382144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A076921 (n + 1)).toNat (A001281 (A000217 n).toNat).toNat

end

end A276449.P6330608259780382144

namespace A276449

/-- `C(A076921(n+1), A001281(A000217(n)))` -/
def P6330608259780382144.Spec : Prop :=
  ∀ n, (P6330608259780382144.a n : ℤ) = A276449 (n + 1)

end A276449

/-! ## A276449.P17434652228323635817

`C(A233036(n+1), A014682(A000217(n)))`
-/

namespace A276449.P17434652228323635817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A233036 (n + 1)).toNat (A014682 (A000217 n).toNat).toNat

end

end A276449.P17434652228323635817

namespace A276449

/-- `C(A233036(n+1), A014682(A000217(n)))` -/
def P17434652228323635817.Spec : Prop :=
  ∀ n, (P17434652228323635817.a n : ℤ) = A276449 (n + 1)

end A276449

/-! ## A276449.P9919719727422321229

`A276454(n+1)-(A276452(n+1)+A276451(n+1))`
-/

namespace A276449.P9919719727422321229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276454 (n + 1) - (A276452 (n + 1) + A276451 (n + 1))

end

end A276449.P9919719727422321229

namespace A276449

/-- `A276454(n+1)-(A276452(n+1)+A276451(n+1))` -/
def P9919719727422321229.Spec : Prop :=
  ∀ n, P9919719727422321229.a n = A276449 (n + 1)

end A276449

/-!
# A276450: Number of points of norm <= n in the bi-truncated cubic honeycomb (3-dimensional lattice, with truncated-octahedral cells).

The programs for A276450, there is no canonical definition to state claims against.
-/

/-! ## A276450.P6546187524083940374

`A276648(A001095(n))`
-/

namespace A276450.P6546187524083940374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276648 (A001095 n).toNat

end

end A276450.P6546187524083940374

/-!
# A276451: Number of 2-orbits of the cyclic group C_4 for a bi-colored square n X n grid with n squares of one color.

The programs for A276451, there is no canonical definition to state claims against.
-/

/-! ## A276451.P17486970667410716862

`A276454(n+1)-(A276452(n+1)+A276449(n+1))`
-/

namespace A276451.P17486970667410716862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276454 (n + 1) - (A276452 (n + 1) + A276449 (n + 1))

end

end A276451.P17486970667410716862

/-! ## A276451.P5025105006470285856

`3*(A114512(2*a(n-2))-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A276451.P5025105006470285856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 * (A114512 (2 * a (n - 2)).toNat - 1)

end

end A276451.P5025105006470285856

/-!
# A276452: Number of 4-orbits of the cyclic group C_4 for a bi-colored square n X n grid with n squares of one color.

The programs for A276452, there is no canonical definition to state claims against.
-/

/-! ## A276452.P12488954697115514397

`A276454(n+1)-(A276451(n+1)+A276449(n+1))`
-/

namespace A276452.P12488954697115514397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276454 (n + 1) - (A276451 (n + 1) + A276449 (n + 1))

end

end A276452.P12488954697115514397

/-!
# A276453: a(n) = (a(n-1)+1)*(a(n-2)+1)*(a(n-3)+1)/a(n-4) with a(0) = a(1) = 1, a(2) = 2, a(3) = 6.

The programs for A276453, the canonical program `A276453.P9955206926902377942` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276453 has offset 0).

The definition of A276453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276453.P7180270420233827861

`(a(n-1)+1)*(a(n-2)+1)*(a(n-3)+1)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276453.P7180270420233827861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  (a (n - 1) + 1) * ((a (n - 2) + 1) * ((a (n - 3) + 1) / a (n - 4)))

end

end A276453.P7180270420233827861

namespace A276453

/-- `(a(n-1)+1)*(a(n-2)+1)*(a(n-3)+1)/a(n-4)` -/
def P7180270420233827861.Spec : Prop :=
  ∀ n, P7180270420233827861.a n = (A276453 n : ℚ)

end A276453

/-! ## A276453.P9955206926902377942

`A051786(n)*A051786(n+1)*A051786(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276453

/-- `A051786(n)*A051786(n+1)*A051786(n+2)` -/
def P9955206926902377942.Spec : Prop :=
  ∀ n, P9955206926902377942.a n = A276453 n

theorem P9955206926902377942.correct : P9955206926902377942.Spec := by
  intro n
  simp only [A276453]

end A276453

/-!
# A276454: a(n) = A276452(n) + A276451(n) + A276449(n).

The programs for A276454, there is no canonical definition to state claims against.
-/

/-! ## A276454.P4706733668411291138

`A276452(n+1)+A276451(n+1)+A276449(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276454.P4706733668411291138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276452 (n + 1) + A276451 (n + 1) + A276449 (n + 1)

end

end A276454.P4706733668411291138

/-! ## A276454.P9631150070625158541

`A054772(∑[n²+2])`
-/

namespace A276454.P9631150070625158541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276454.P9631150070625158541

/-! ## A276454.P10563110864750056570

`A054772(A000330(n+1))^ceil(n/98)`
-/

namespace A276454.P10563110864750056570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054772 (A000330 (n + 1)).toNat : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

end

end A276454.P10563110864750056570

/-! ## A276454.P15352609318965748875

`A054772(∑[A174452(n+1)])+A000038(n+1)`
-/

namespace A276454.P15352609318965748875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054772 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000038 (n + 1)

end

end A276454.P15352609318965748875

/-! ## A276454.P7075119667564560158

`A054772(A000330(n+1))*A057078(3*(n+1))`
-/

namespace A276454.P7075119667564560158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054772 (A000330 (n + 1)).toNat * A057078 (3 * (n + 1))

end

end A276454.P7075119667564560158

/-!
# A276456: Integers n such that the Klein invariant J((-1+sqrt(-n))/2) is a rational number.

The programs for A276456, there is no canonical definition to state claims against.
-/

/-! ## A276456.P1852808678704569032

`∪[A162857(n+1), A098401(n)]`
-/

namespace A276456.P1852808678704569032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098401 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A276456.P1852808678704569032

/-! ## A276456.P13562374011324671393

`∪[A162857(n+1), A361842(n)]`
-/

namespace A276456.P13562374011324671393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361842 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A276456.P13562374011324671393

/-! ## A276456.P4631058545703944290

`∑[A140434(record[A331188(n+1)])]`
-/

namespace A276456.P4631058545703944290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276456.P4631058545703944290

/-! ## A276456.P15707029069169991039

`∑[A297111(record[A331188(n+1)])]`
-/

namespace A276456.P15707029069169991039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276456.P15707029069169991039

/-! ## A276456.P17916029154063792925

`∑[A000010(record[2*A331188(n+1)])]`
-/

namespace A276456.P17916029154063792925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276456.P17916029154063792925

/-!
# A276457: a(n) is the number of times that a(n-1) appears in the concatenation of all numbers from a(0) to a(n-2), with a(0) = 0.

The programs for A276457, there is no canonical definition to state claims against.
-/

/-! ## A276457.P7104500986575954085

`A309872(n+1)-A309913(A310001(n))`
-/

namespace A276457.P7104500986575954085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309872 (n + 1) - A309913 (A310001 n).toNat

end

end A276457.P7104500986575954085

/-! ## A276457.P13814446131974677247

`A335497(n+1)-A309913(A310001(n))`
-/

namespace A276457.P13814446131974677247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335497 (n + 1) - A309913 (A310001 n).toNat

end

end A276457.P13814446131974677247

/-! ## A276457.P8188144123116717249

`A131232(A309872(n+1))^Δ[A007088(n)]`
-/

namespace A276457.P8188144123116717249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131232 (A309872 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A276457.P8188144123116717249

/-! ## A276457.P10653964872514757728

`A131232(A309872(n+1))%p?[A008288(n)]`
-/

namespace A276457.P10653964872514757728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131232 (A309872 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A276457.P10653964872514757728

/-! ## A276457.P7744776534293798026

`A131232(A309872(n+1))^A134829(n+1)`
-/

namespace A276457.P7744776534293798026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131232 (A309872 (n + 1)).toNat : ℚ) ^ (A134829 (n + 1) : ℤ)

end

end A276457.P7744776534293798026

/-!
# A276460: Numbers k such that for any positive integers a < b, if a * b = k then b - a is a square.

The programs for A276460, there is no canonical definition to state claims against.
-/

/-! ## A276460.P134976919900262587

`eq[A094761(n), A361655(n)]`
-/

namespace A276460.P134976919900262587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276460.P134976919900262587

/-! ## A276460.P12552172242036825249

`eq[A115118(n), A381233(n)]`
-/

namespace A276460.P12552172242036825249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276460.P12552172242036825249

/-! ## A276460.P17042702977386654547

`eq[A027960(n), A279789(n)]`
-/

namespace A276460.P17042702977386654547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279789 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276460.P17042702977386654547

/-! ## A276460.P1448786380653693297

`eq[A054251(n), A316649(n)]`
-/

namespace A276460.P1448786380653693297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276460.P1448786380653693297

/-! ## A276460.P11961950219650356961

`eq[A284463(n), A316649(n)]`
-/

namespace A276460.P11961950219650356961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276460.P11961950219650356961

/-!
# A276461: Prime numbers whose digits are k+1 1's and k 2's for some k >= 1.

The programs for A276461, there is no canonical definition to state claims against.
-/

/-! ## A276461.P13592211139728719376

`p?[ceil(cos(5-n))*A007931(n+1)]`
-/

namespace A276461.P13592211139728719376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (5 - (n : ℤ) : ℝ)⌉ * A007931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276461.P13592211139728719376

/-!
# A276463: Position at which n first appears in A276457, with a(0)=0.

The programs for A276463, there is no canonical definition to state claims against.
-/

/-! ## A276463.P12349401872065928763

`record[round(sqrt(A115350(n+1)))]+n-1`
-/

namespace A276463.P12349401872065928763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A115350 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n : ℤ) - 1)

end

end A276463.P12349401872065928763

/-! ## A276463.P11481118474898169203

`(∏{digits}[n, #]+n)*A319189(2^∑{digits}[n, #%C(n, #)])`
-/

namespace A276463.P11481118474898169203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + n : ℕ) : ℤ) * A319189 (2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % Nat.choose n x).sum)

end

end A276463.P11481118474898169203

/-! ## A276463.P15693012948389299631

`A091009(A041397(n))+2*n`
-/

namespace A276463.P15693012948389299631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (A041397 n).toNat + (2 * n : ℤ)

end

end A276463.P15693012948389299631

/-! ## A276463.P9326858783501271982

`A174386(A174376(n))+2*n`
-/

namespace A276463.P9326858783501271982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174386 (A174376 n).toNat + (2 * n : ℤ)

end

end A276463.P9326858783501271982

/-! ## A276463.P695241117730927470

`2*(A335947(A022167(n))+n)`
-/

namespace A276463.P695241117730927470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A335947 (A022167 n).toNat + (n : ℤ))

end

end A276463.P695241117730927470

/-!
# A276464: Fibbinary Fibonacci numbers.

The programs for A276464, there is no canonical definition to state claims against.
-/

/-! ## A276464.P1729607927975711868

`record[gcd(A000045(n), A318922(n))]`
-/

namespace A276464.P1729607927975711868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 n) (A318922 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276464.P1729607927975711868

/-! ## A276464.P232111276826867419

`A000045(xor(A029288(n), A036561(n)))`
-/

namespace A276464.P232111276826867419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor (A029288 n) (A036561 n)).toNat

end

end A276464.P232111276826867419

/-! ## A276464.P17814437738384083881

`A000045(eq[A063524(n), A318922(n)])`
-/

namespace A276464.P17814437738384083881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A276464.P17814437738384083881

/-! ## A276464.P1079531380324004102

`A000045(A030159(n+1)+A000120(n))`
-/

namespace A276464.P1079531380324004102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A030159 (n + 1) + A000120 n).toNat

end

end A276464.P1079531380324004102

/-! ## A276464.P14224543202223548727

`A000045(A030161(n+1)+A000120(n))`
-/

namespace A276464.P14224543202223548727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A030161 (n + 1) + A000120 n).toNat

end

end A276464.P14224543202223548727

/-!
# A276465: Divisors of 16450.

The programs for A276465, there is no canonical definition to state claims against.
-/

/-! ## A276465.P13732980332898096041

`record[A018406(n+1)%A089241(n+1)]`
-/

namespace A276465.P13732980332898096041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018406 (n + 1)) (A089241 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276465.P13732980332898096041

/-! ## A276465.P8956164481397040953

`A018406(n+1)-A018843(A018393(n+1))`
-/

namespace A276465.P8956164481397040953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018406 (n + 1) - A018843 (A018393 (n + 1)).toNat

end

end A276465.P8956164481397040953

/-! ## A276465.P5421024442190957997

`A018406(n+1)-A018843(A258011(n+1))`
-/

namespace A276465.P5421024442190957997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018406 (n + 1) - A018843 (A258011 (n + 1)).toNat

end

end A276465.P5421024442190957997

/-! ## A276465.P688043408441066288

`record[A064614(A018501(n+1)%A089241(n+1))]`
-/

namespace A276465.P688043408441066288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (Int.tmod (A018501 (n + 1)) (A089241 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276465.P688043408441066288

/-! ## A276465.P15935969760621578296

`A018406(n+1)-A018843(A065188(2*n+1))`
-/

namespace A276465.P15935969760621578296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018406 (n + 1) - A018843 (A065188 (2 * n + 1)).toNat

end

end A276465.P15935969760621578296

/-!
# A276468: Irregular triangular array: T(n,i) = number of partitions of n having crossover index k; see Comments.

The programs for A276468, there is no canonical definition to state claims against.
-/

/-! ## A276468.P11633666173357759641

`A254761(A330685(n+1))`
-/

namespace A276468.P11633666173357759641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254761 (A330685 (n + 1)).toNat

end

end A276468.P11633666173357759641

/-! ## A276468.P5563554471049169949

`A322872(A205716(n+1)+A088578(n))`
-/

namespace A276468.P5563554471049169949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322872 (A205716 (n + 1) + A088578 n).toNat

end

end A276468.P5563554471049169949

/-!
# A276469: Triangle read by rows: T(n,k) = n-th cyclotomic polynomial evaluated at x = k and then reduced mod n.

The programs for A276469, there is no canonical definition to state claims against.
-/

/-! ## A276469.P4370275058080804626

`A165034(xor(A026729(n), A093101(n)))`
-/

namespace A276469.P4370275058080804626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 (Int.xor (A026729 n) (A093101 n)).toNat

end

end A276469.P4370275058080804626

/-! ## A276469.P1455014233949338773

`A196563(A085837(n+1)*A327245(n))`
-/

namespace A276469.P1455014233949338773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A085837 (n + 1) * A327245 n).toNat

end

end A276469.P1455014233949338773

/-! ## A276469.P12099711770445181087

`A074345(A185315(n))%A185317(n+1)`
-/

namespace A276469.P12099711770445181087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074345 (A185315 n).toNat) (A185317 (n + 1))

end

end A276469.P12099711770445181087

/-! ## A276469.P4893678705491068430

`A131809(p?[A007431(n+15)])`
-/

namespace A276469.P4893678705491068430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131809 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A276469.P4893678705491068430

/-! ## A276469.P16584908493139913278

`A016140(n)%A001221(A046528(n+3))`
-/

namespace A276469.P16584908493139913278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016140 n) (A001221 (A046528 (n + 3)).toNat)

end

end A276469.P16584908493139913278

/-!
# A276471: Numbers m of the form 2*k^2 - 61 which are +-1 times a prime.

The programs for A276471, there is no canonical definition to state claims against.
-/

/-! ## A276471.P16684843789890162299

`A058331(n)-A040930(A001405(n))`
-/

namespace A276471.P16684843789890162299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n - A040930 (A001405 n).toNat

end

end A276471.P16684843789890162299

/-! ## A276471.P12026704332352619211

`A056220(n)-A040870(A214727(n))`
-/

namespace A276471.P12026704332352619211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n - A040870 (A214727 n).toNat

end

end A276471.P12026704332352619211

/-! ## A276471.P16830805745726535969

`A056220(n)-A040870(A103599(n+1))`
-/

namespace A276471.P16830805745726535969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n - A040870 (A103599 (n + 1)).toNat

end

end A276471.P16830805745726535969

/-! ## A276471.P4794150858253291823

`A056220(n)-A040870(A110586(n+1))`
-/

namespace A276471.P4794150858253291823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n - A040870 (A110586 (n + 1)).toNat

end

end A276471.P4794150858253291823

/-! ## A276471.P1056598215072359712

`A056220(n)-A040870(A110588(n+1))`
-/

namespace A276471.P1056598215072359712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n - A040870 (A110588 (n + 1)).toNat

end

end A276471.P1056598215072359712

/-!
# A276477: a(n) = a(n-2) + a(n-3) for n >= 3, with a(0) = a(1) = 2, a(2) = 1.

The programs for A276477, the canonical program `A276477.P3135533398953981008` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276477 has offset 0).

The definition of A276477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)` (program `A276477.P3135533398953981008`, by `A276477.P3135533398953981008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A276477.P3135533398953981008

`a(n-2)+a(n-3)` with `a(0)=2, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276477

/-- `a(n-2)+a(n-3)` -/
def P3135533398953981008.Spec : Prop :=
  ∀ n, (P3135533398953981008.a n : ℤ) = A276477 n

theorem P3135533398953981008.correct : P3135533398953981008.Spec := by
  intro n
  simp only [A276477]

end A276477

/-! ## A276477.P5156816313181669553

`ogf((2+2x-x^2)/(1-x^2-x^3))`
-/

namespace A276477.P5156816313181669553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -1] [1, 0, -1, -1] n

end

end A276477.P5156816313181669553

namespace A276477

/-- `ogf((2+2x-x^2)/(1-x^2-x^3))` -/
def P5156816313181669553.Spec : Prop :=
  ∀ n, P5156816313181669553.a n = A276477 n

end A276477

/-! ## A276477.P4814269961989036864

`a(n-2)-floor(-a(n-3))` with `a(0)=2, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A276477.P4814269961989036864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A276477.P4814269961989036864

namespace A276477

/-- `a(n-2)-floor(-a(n-3))` -/
def P4814269961989036864.Spec : Prop :=
  ∀ n, P4814269961989036864.a n = A276477 n

end A276477

/-! ## A276477.P5140654670433405030

`a(n-2)-ceil(-a(n-3))` with `a(0)=2, a(1)=2, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A276477.P5140654670433405030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A276477.P5140654670433405030

namespace A276477

/-- `a(n-2)-ceil(-a(n-3))` -/
def P5140654670433405030.Spec : Prop :=
  ∀ n, P5140654670433405030.a n = A276477 n

end A276477

/-! ## A276477.P1009128355219010452

`abs(Δ[a(n-2)-a(n-3)])` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A276477.P1009128355219010452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A276477.P1009128355219010452

namespace A276477

/-- `abs(Δ[a(n-2)-a(n-3)])` -/
def P1009128355219010452.Spec : Prop :=
  ∀ n, P1009128355219010452.a n = A276477 n

end A276477

/-! ## A276477.P1895675824804249503

`1-floor(1-a(n-2)-a(n-3))` with `a(0)=2, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A276477.P1895675824804249503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n a =>
  1 - (1 - a (n - 2) - a (n - 3))

end

end A276477.P1895675824804249503

namespace A276477

/-- `1-floor(1-a(n-2)-a(n-3))` -/
def P1895675824804249503.Spec : Prop :=
  ∀ n, P1895675824804249503.a n = A276477 n

end A276477

/-! ## A276477.P8930402399490922068

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=2, a(1)=2, a(2)=1, a(3)=4`
-/

namespace A276477.P8930402399490922068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1, 4] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A276477.P8930402399490922068

namespace A276477

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P8930402399490922068.Spec : Prop :=
  ∀ n, P8930402399490922068.a n = A276477 n

end A276477

/-! ## A276477.P6340450846484919134

`A007307(n+1)+A000931(n)`
-/

namespace A276477.P6340450846484919134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (n + 1) + A000931 n

end

end A276477.P6340450846484919134

namespace A276477

/-- `A007307(n+1)+A000931(n)` -/
def P6340450846484919134.Spec : Prop :=
  ∀ n, P6340450846484919134.a n = A276477 n

end A276477

/-! ## A276477.P12590933708382921582

`A141038(n)+A000931(n+2)`
-/

namespace A276477.P12590933708382921582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 n + A000931 (n + 2)

end

end A276477.P12590933708382921582

namespace A276477

/-- `A141038(n)+A000931(n+2)` -/
def P12590933708382921582.Spec : Prop :=
  ∀ n, P12590933708382921582.a n = A276477 n

end A276477

/-! ## A276477.P4004120827254024906

`A228361(n+2)-A133034(n)`
-/

namespace A276477.P4004120827254024906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (n + 2) - A133034 n

end

end A276477.P4004120827254024906

namespace A276477

/-- `A228361(n+2)-A133034(n)` -/
def P4004120827254024906.Spec : Prop :=
  ∀ n, P4004120827254024906.a n = A276477 n

end A276477

/-! ## A276477.P11537121795102388414

`A134816(n+3)-A133034(n)`
-/

namespace A276477.P11537121795102388414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 3) - A133034 n

end

end A276477.P11537121795102388414

namespace A276477

/-- `A134816(n+3)-A133034(n)` -/
def P11537121795102388414.Spec : Prop :=
  ∀ n, P11537121795102388414.a n = A276477 n

end A276477

/-! ## A276477.P16417121946885160231

`A182097(n+4)-Δ[A000931(n)]`
-/

namespace A276477.P16417121946885160231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 4) - (f1 (n + 1) - f1 n)

end

end A276477.P16417121946885160231

namespace A276477

/-- `A182097(n+4)-Δ[A000931(n)]` -/
def P16417121946885160231.Spec : Prop :=
  ∀ n, P16417121946885160231.a n = A276477 n

end A276477

/-! ## A276477.P2264927704050693095

`A276275(n+1)+A000931(n+1)`
-/

namespace A276477.P2264927704050693095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276275 (n + 1) + A000931 (n + 1)

end

end A276477.P2264927704050693095

namespace A276477

/-- `A276275(n+1)+A000931(n+1)` -/
def P2264927704050693095.Spec : Prop :=
  ∀ n, P2264927704050693095.a n = A276477 n

end A276477

/-! ## A276477.P8949963964677118768

`A078027(n+2)+A007307(n+1)`
-/

namespace A276477.P8949963964677118768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 2) + A007307 (n + 1)

end

end A276477.P8949963964677118768

namespace A276477

/-- `A078027(n+2)+A007307(n+1)` -/
def P8949963964677118768.Spec : Prop :=
  ∀ n, P8949963964677118768.a n = A276477 n

end A276477

/-! ## A276477.P8145437458825534835

`A276275(n+1)+A078027(n+3)`
-/

namespace A276477.P8145437458825534835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276275 (n + 1) + A078027 (n + 3)

end

end A276477.P8145437458825534835

namespace A276477

/-- `A276275(n+1)+A078027(n+3)` -/
def P8145437458825534835.Spec : Prop :=
  ∀ n, P8145437458825534835.a n = A276477 n

end A276477

/-! ## A276477.P1521486968730868942

`A276276(n+1)+A127682(2*n+1)`
-/

namespace A276477.P1521486968730868942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276276 (n + 1) + A127682 (2 * n + 1)

end

end A276477.P1521486968730868942

namespace A276477

/-- `A276276(n+1)+A127682(2*n+1)` -/
def P1521486968730868942.Spec : Prop :=
  ∀ n, P1521486968730868942.a n = A276477 n

end A276477

/-! ## A276477.P17960430441146730647

`A134816(n+1)+A276275(n+1)/2`
-/

namespace A276477.P17960430441146730647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134816 (n + 1) : ℚ) + (A276275 (n + 1) : ℚ) / 2

end

end A276477.P17960430441146730647

namespace A276477

/-- `A134816(n+1)+A276275(n+1)/2` -/
def P17960430441146730647.Spec : Prop :=
  ∀ n, P17960430441146730647.a n = (A276477 n : ℚ)

end A276477

/-! ## A276477.P6647825131493691281

`A133034(n+1)+A182097(n)+A134816(n+1)`
-/

namespace A276477.P6647825131493691281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 1) + (A182097 n + A134816 (n + 1))

end

end A276477.P6647825131493691281

namespace A276477

/-- `A133034(n+1)+A182097(n)+A134816(n+1)` -/
def P6647825131493691281.Spec : Prop :=
  ∀ n, P6647825131493691281.a n = A276477 n

end A276477

/-! ## A276477.P390947900123592005

`A133034(n+1)+A134816(n+2)+A000931(n)`
-/

namespace A276477.P390947900123592005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 1) + (A134816 (n + 2) + A000931 n)

end

end A276477.P390947900123592005

namespace A276477

/-- `A133034(n+1)+A134816(n+2)+A000931(n)` -/
def P390947900123592005.Spec : Prop :=
  ∀ n, P390947900123592005.a n = A276477 n

end A276477

/-! ## A276477.P8205071690145873491

`A276275(n+1)+A007307(n)-A182097(n+1)`
-/

namespace A276477.P8205071690145873491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276275 (n + 1) + (A007307 n - A182097 (n + 1))

end

end A276477.P8205071690145873491

namespace A276477

/-- `A276275(n+1)+A007307(n)-A182097(n+1)` -/
def P8205071690145873491.Spec : Prop :=
  ∀ n, P8205071690145873491.a n = A276477 n

end A276477

/-!
# A276479: a(n) = floor(Sum_{d|n} 0.d).

The programs for A276479, there is no canonical definition to state claims against.
-/

/-! ## A276479.P12705533551759862041

`floor(A276466(n+1)/A276467(n+1))`
-/

namespace A276479.P12705533551759862041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276466 (n + 1) : ℚ) / (A276467 (n + 1) : ℚ)⌋

end

end A276479.P12705533551759862041

/-! ## A276479.P12488514627312165406

`A056595(A027748(n+1)^A337541(n+1))`
-/

namespace A276479.P12488514627312165406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (SequenceMachineLib.roundAway ((A027748 (n + 1) : ℚ) ^ (A337541 (n + 1) : ℤ))).toNat

end

end A276479.P12488514627312165406

/-! ## A276479.P9883073447201911132

`A112310(A337541(n+1)%A329710(n+5))`
-/

namespace A276479.P9883073447201911132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (Int.tmod (A337541 (n + 1)) (A329710 (n + 5))).toNat

end

end A276479.P9883073447201911132

/-! ## A276479.P17330383171413530438

`A027193(A337541(n+1))%A107825(2*n+1)`
-/

namespace A276479.P17330383171413530438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027193 (A337541 (n + 1)).toNat) (A107825 (2 * n + 1))

end

end A276479.P17330383171413530438

/-! ## A276479.P5021150447657481161

`ceil(A337541(n+1)/A358379(3*(n+1)))`
-/

namespace A276479.P5021150447657481161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337541 (n + 1) : ℚ) / (A358379 (3 * (n + 1)) : ℚ)⌉

end

end A276479.P5021150447657481161

/-!
# A276480: a(n) = the smallest number k such that floor(Sum_{d|k} 0.d) = n.

The programs for A276480, there is no canonical definition to state claims against.
-/

/-! ## A276480.P5714895517908693568

`A371169(A008033(n))`
-/

namespace A276480.P5714895517908693568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371169 (A008033 n).toNat

end

end A276480.P5714895517908693568

/-! ## A276480.P11762972322792920958

`A282601(A263269(2*n)+10)`
-/

namespace A276480.P11762972322792920958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282601 (A263269 (2 * n) + 10).toNat

end

end A276480.P11762972322792920958

/-!
# A276482: a(n) = 5^n*Gamma(n+1/5)*Gamma(n+1)/Gamma(1/5).

The programs for A276482, the canonical program `A276482.P11782156945687614591` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276482 has offset 0).

The definition of A276482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276482.P11782156945687614591

`A000142(n)*A008548(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276482

/-- `A000142(n)*A008548(n)` -/
def P11782156945687614591.Spec : Prop :=
  ∀ n, P11782156945687614591.a n = A276482 n

theorem P11782156945687614591.correct : P11782156945687614591.Spec := by
  intro n
  simp only [A276482]

end A276482

/-! ## A276482.P6779178553317726457

`(5*n-4)*n*a(n-1)` with `a(0)=1`
-/

namespace A276482.P6779178553317726457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((5 * n : ℤ) - 4) * ((n : ℤ) * a (n - 1))

end

end A276482.P6779178553317726457

namespace A276482

/-- `(5*n-4)*n*a(n-1)` -/
def P6779178553317726457.Spec : Prop :=
  ∀ n, P6779178553317726457.a n = A276482 n

end A276482

/-! ## A276482.P3443212180488999072

`∏[∑[10*n-9]+C(2, n+2)+9]`
-/

namespace A276482.P3443212180488999072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) - 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.choose 2 (n + 2) : ℤ) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276482.P3443212180488999072

namespace A276482

/-- `∏[∑[10*n-9]+C(2, n+2)+9]` -/
def P3443212180488999072.Spec : Prop :=
  ∀ n, P3443212180488999072.a n = A276482 n

end A276482

/-! ## A276482.P12775845227443907420

`a(n-1)*A051624(n)` with `a(0)=1`
-/

namespace A276482.P12775845227443907420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A051624 n

end

end A276482.P12775845227443907420

namespace A276482

/-- `a(n-1)*A051624(n)` -/
def P12775845227443907420.Spec : Prop :=
  ∀ n, P12775845227443907420.a n = A276482 n

end A276482

/-! ## A276482.P4695183846863305374

`(A190816(n)-1)*a(n-1)` with `a(0)=1`
-/

namespace A276482.P4695183846863305374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A190816 n - 1) * a (n - 1)

end

end A276482.P4695183846863305374

namespace A276482

/-- `(A190816(n)-1)*a(n-1)` -/
def P4695183846863305374.Spec : Prop :=
  ∀ n, P4695183846863305374.a n = A276482 n

end A276482

/-!
# A276485: Numerator of Sum_{k=1..n} 1/k^n.

The programs for A276485, there is no canonical definition to state claims against.
-/

/-! ## A276485.P16436758676300848755

`A322265(2*(n+1)²)`
-/

namespace A276485.P16436758676300848755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322265 (2 * (n + 1) ^ 2)

end

end A276485.P16436758676300848755

/-!
# A276486: a(1)=1, a(2)=2; thereafter, denoting x=a(n-1)+a(n-2), we have a(n)=3x+1 if x is odd, otherwise a(n)=x/2^m where 2^m is the maximal power of 2 dividing x.

The programs for A276486, there is no canonical definition to state claims against.
-/

/-! ## A276486.P4886382173167465086

`A306546(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A276486.P4886382173167465086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A306546 (a (n - 1) + a (n - 2)).toNat

end

end A276486.P4886382173167465086

/-! ## A276486.P8652210617515447534

`A306546(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A276486.P8652210617515447534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A306546 (a (n - 1) - (-a (n - 2))).toNat

end

end A276486.P8652210617515447534

/-! ## A276486.P16002391070764707820

`A306546(1-floor(1-a(n-1)-a(n-2)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A276486.P16002391070764707820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A306546 (1 - (1 - a (n - 1) - a (n - 2))).toNat

end

end A276486.P16002391070764707820

/-!
# A276487: Denominator of Sum_{k=1..n} 1/k^n.

The programs for A276487, there is no canonical definition to state claims against.
-/

/-! ## A276487.P10977267590276502234

`A322266(2*(n+1)²)`
-/

namespace A276487.P10977267590276502234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322266 (2 * (n + 1) ^ 2)

end

end A276487.P10977267590276502234

/-! ## A276487.P10787833716975019933

`A284002(∑[2^n])^(n+1)`
-/

namespace A276487.P10787833716975019933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284002 (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A276487.P10787833716975019933

/-!
# A276488: Numbers k that divide A003714(k).

The programs for A276488, there is no canonical definition to state claims against.
-/

/-! ## A276488.P13153508416221903042

`eq[1, A022341(n)%A008574(n)]`
-/

namespace A276488.P13153508416221903042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022341 n) (A008574 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276488.P13153508416221903042

/-! ## A276488.P16646399439700218034

`eq[1, A048297(n)%A008486(n)]`
-/

namespace A276488.P16646399439700218034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048297 n) (A008486 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276488.P16646399439700218034

/-! ## A276488.P13560554930478707

`eq[n, A028310(gcd(n, A003714(n)))]`
-/

namespace A276488.P13560554930478707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A003714 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276488.P13560554930478707

/-! ## A276488.P2886271858715166117

`eq[n, gcd((A048297(n)-1)/3, A028310(n))]`
-/

namespace A276488.P2886271858715166117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A048297 n - 1 : ℚ) / 3)) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276488.P2886271858715166117

/-! ## A276488.P3741220942106750509

`eq[A003714(n)%A028310(n), A000007(n)]`
-/

namespace A276488.P3741220942106750509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003714 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276488.P3741220942106750509

/-!
# A276489: a(n) = 25^(n+1)*Gamma(n+8/5)/Gamma(3/5).

The programs for A276489, the canonical program `A276489.P17676963671399792317` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276489 has offset 0).

The definition of A276489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276489.P17676963671399792317

`5*(5*n+3)*a(n-1)` with `a(0)=15`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276489

/-- `5*(5*n+3)*a(n-1)` -/
def P17676963671399792317.Spec : Prop :=
  ∀ n, (P17676963671399792317.a n : ℤ) = A276489 n

theorem P17676963671399792317.correct : P17676963671399792317.Spec := by
  intro n
  simp only [A276489]

end A276489

/-! ## A276489.P5829846887950165871

`∏[5*(5*n+3)]`
-/

namespace A276489.P5829846887950165871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (5 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276489.P5829846887950165871

namespace A276489

/-- `∏[5*(5*n+3)]` -/
def P5829846887950165871.Spec : Prop :=
  ∀ n, (P5829846887950165871.a n : ℤ) = A276489 n

end A276489

/-! ## A276489.P17559406465946391338

`abs(∏[Δ[A144312(n)]])`
-/

namespace A276489.P17559406465946391338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144312 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A276489.P17559406465946391338

namespace A276489

/-- `abs(∏[Δ[A144312(n)]])` -/
def P17559406465946391338.Spec : Prop :=
  ∀ n, P17559406465946391338.a n = A276489 n

end A276489

/-! ## A276489.P1534357728849992859

`abs(∏[-A008706(A016885(n))])`
-/

namespace A276489.P1534357728849992859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008706 (A016885 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A276489.P1534357728849992859

namespace A276489

/-- `abs(∏[-A008706(A016885(n))])` -/
def P1534357728849992859.Spec : Prop :=
  ∀ n, P1534357728849992859.a n = A276489 n

end A276489

/-! ## A276489.P6264911717565468260

`A151934(n+1)+∏[Δ[A144312(n)]]`
-/

namespace A276489.P6264911717565468260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144312 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276489.P6264911717565468260

namespace A276489

/-- `A151934(n+1)+∏[Δ[A144312(n)]]` -/
def P6264911717565468260.Spec : Prop :=
  ∀ n, P6264911717565468260.a n = A276489 n

end A276489

/-!
# A276490: Number of paths starting at {n}^n to a border position where one component equals 0 using steps that decrement one component by 1.

The programs for A276490, there is no canonical definition to state claims against.
-/

/-! ## A276490.P9702007668818540048

`A210472(∑[4*n])`
-/

namespace A276490.P9702007668818540048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276490.P9702007668818540048

/-! ## A276490.P17683949929911174870

`A178489(n)*A210472(A046092(n))`
-/

namespace A276490.P17683949929911174870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A210472 (A046092 n).toNat

end

end A276490.P17683949929911174870

/-!
# A276491: Expansion of q*Product_{k>=1} (1-q^(2*k))^2*(1-q^(10*k))^2.

The programs for A276491, there is no canonical definition to state claims against.
-/

/-! ## A276491.P8857163787121892578

`A030205(A142150(n))-A000035(n)`
-/

namespace A276491.P8857163787121892578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030205 (A142150 n).toNat - A000035 n

end

end A276491.P8857163787121892578

/-! ## A276491.P6336327800027263197

`A030205(A004526(n))*A059841(n)`
-/

namespace A276491.P6336327800027263197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030205 (A004526 n).toNat * A059841 n

end

end A276491.P6336327800027263197

/-! ## A276491.P14610709011046909928

`A030205(A173989(n+1))*A059841(n)`
-/

namespace A276491.P14610709011046909928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030205 (A173989 (n + 1)).toNat * A059841 n

end

end A276491.P14610709011046909928

/-! ## A276491.P5228673319450480867

`A000035(n+1)*A030205(A142150(n))`
-/

namespace A276491.P5228673319450480867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A030205 (A142150 n).toNat

end

end A276491.P5228673319450480867

/-! ## A276491.P9036704290276452336

`Δ[A080513(n)]*A030205(A014682(n))`
-/

namespace A276491.P9036704290276452336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A030205 (A014682 n).toNat

end

end A276491.P9036704290276452336

/-! ## A276491.P7649338745393508328

`A030205(A025480(n))%A052552(n)`
-/

namespace A276491.P7649338745393508328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030205 (A025480 n).toNat) (A052552 n)

end

end A276491.P7649338745393508328

/-!
# A276492: Numbers k such that 5*10^k + 59 is prime.

The programs for A276492, there is no canonical definition to state claims against.
-/

/-! ## A276492.P12792087349421666708

`eq[A010674(A047966(n+1)), A258193(n+1)]`
-/

namespace A276492.P12792087349421666708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 (A047966 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276492.P12792087349421666708

/-! ## A276492.P3369968415376486228

`eq[A248625(2*n), A353863(A239930(n+2))]`
-/

namespace A276492.P3369968415376486228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248625 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353863 (A239930 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276492.P3369968415376486228

/-!
# A276497: Number of noncomposites in the reduced residue system of n-th primorial number, A002110(n).

The programs for A276497, there is no canonical definition to state claims against.
-/

/-! ## A276497.P17230358890154859270

`record[ratio[A261215(n)]]-n`
-/

namespace A276497.P17230358890154859270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261215 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℚ)

end

end A276497.P17230358890154859270

/-! ## A276497.P5729019604899662917

`A261215(∑[n+1]+1)-n`
-/

namespace A276497.P5729019604899662917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261215 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n : ℤ)

end

end A276497.P5729019604899662917

/-! ## A276497.P3515476679243240886

`A048862(A004186(n+1))+1`
-/

namespace A276497.P3515476679243240886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048862 (A004186 (n + 1)).toNat + 1

end

end A276497.P3515476679243240886

/-! ## A276497.P12849710866537486941

`A048862(A061497(n+1))+1`
-/

namespace A276497.P12849710866537486941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048862 (A061497 (n + 1)).toNat + 1

end

end A276497.P12849710866537486941

/-! ## A276497.P17055888810422733053

`A048862(A061362(n+2))+1`
-/

namespace A276497.P17055888810422733053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048862 (A061362 (n + 2)).toNat + 1

end

end A276497.P17055888810422733053

/-!
# A276498: Number of trials T of an event that occurs with probability 1-1/n that must be repeated consecutively so that the probability that the event occurs on all T trials (i.e., (1-1/n)^T) is minimally higher than 1/n.

The programs for A276498, the canonical program `A276498.P1552756234221915906` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276498 has offset 2).

The definition of A276498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276498.P1552756234221915906

`round(log(1/(n+2))/log(1-1/(n+2)))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276498

/-- `round(log(1/(n+2))/log(1-1/(n+2)))` -/
def P1552756234221915906.Spec : Prop :=
  ∀ n, P1552756234221915906.a n = A276498 (n + 2)

theorem P1552756234221915906.correct : P1552756234221915906.Spec := by
  intro n
  simp only [A276498, Nat.add_sub_cancel]

end A276498

/-! ## A276498.P11825934501699041444

`floor(log(A241980(n+2)))`
-/

namespace A276498.P11825934501699041444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A241980 (n + 2) : ℝ)⌋

end

end A276498.P11825934501699041444

namespace A276498

/-- `floor(log(A241980(n+2)))` -/
def P11825934501699041444.Spec : Prop :=
  ∀ n, P11825934501699041444.a n = A276498 (n + 2)

end A276498

/-! ## A276498.P1798847756301917308

`floor(∑[log(A361144(2*n+3))])`
-/

namespace A276498.P1798847756301917308
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A361144 (2 * n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A276498.P1798847756301917308

namespace A276498

/-- `floor(∑[log(A361144(2*n+3))])` -/
def P1798847756301917308.Spec : Prop :=
  ∀ n, P1798847756301917308.a n = A276498 (n + 2)

end A276498

/-! ## A276498.P11685244418436200506

`ceil(∑[log2(A095399(2*(n+2)))])`
-/

namespace A276498.P11685244418436200506
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A095399 (2 * (n + 2)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A276498.P11685244418436200506

namespace A276498

/-- `ceil(∑[log2(A095399(2*(n+2)))])` -/
def P11685244418436200506.Spec : Prop :=
  ∀ n, P11685244418436200506.a n = A276498 (n + 2)

end A276498

/-! ## A276498.P768927718921038379

`floor(log(A265130(n+2)))`
-/

namespace A276498.P768927718921038379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A265130 (n + 2) : ℝ)⌋

end

end A276498.P768927718921038379

namespace A276498

/-- `floor(log(A265130(n+2)))` -/
def P768927718921038379.Spec : Prop :=
  ∀ n, P768927718921038379.a n = A276498 (n + 2)

end A276498

