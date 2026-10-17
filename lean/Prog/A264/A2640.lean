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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A264000: Number of (n+1) X (3+1) arrays of permutations of 0..n*4+3 with each element having index change (+-,+-) 0,0 1,2 or 1,0.

The programs for A264000, there is no canonical definition to state claims against.
-/

/-! ## A264000.P7151458312210022908

`record[5*a(n-1)+4*a(n-2)-16*a(n-3)]²` with `a(0)=9, a(1)=1, a(2)=9, a(3)=33`
-/

namespace A264000.P7151458312210022908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 1, 9, 33] fun n f1 =>
  5 * f1 (n - 1) + 4 * f1 (n - 2) - 16 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A264000.P7151458312210022908

/-! ## A264000.P14103510814016613461

`A189179(n+2)²`
-/

namespace A264000.P14103510814016613461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189179 (n + 2) ^ 2

end

end A264000.P14103510814016613461

/-! ## A264000.P15152514452424022471

`A264001(n+1)/A264002(n+1)*A264001(n+1)`
-/

namespace A264000.P15152514452424022471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264001 (n + 1) : ℚ) / (A264002 (n + 1) : ℚ) * (A264001 (n + 1) : ℚ)

end

end A264000.P15152514452424022471

/-! ## A264000.P2948253981355986113

`A264001(n+1)²/A264002(n+1)`
-/

namespace A264000.P2948253981355986113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264001 (n + 1) ^ 2 : ℚ) / (A264002 (n + 1) : ℚ)

end

end A264000.P2948253981355986113

/-! ## A264000.P10841501025327072085

`A189186(∑[n+2]+3)²`
-/

namespace A264000.P10841501025327072085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189186 (∑ j ∈ Finset.range (n + 1), f1 j + 3) ^ 2

end

end A264000.P10841501025327072085

/-!
# A264001: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having index change (+-,+-) 0,0 1,2 or 1,0.

The programs for A264001, there is no canonical definition to state claims against.
-/

/-! ## A264001.P126888896388950380

`A189179(n+2)*A189651(n+2)`
-/

namespace A264001.P126888896388950380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189179 (n + 2) * A189651 (n + 2)

end

end A264001.P126888896388950380

/-! ## A264001.P12562906435306078347

`sqrt(A264000(n+1))*sqrt(A264002(n+1))`
-/

namespace A264001.P12562906435306078347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264000 (n + 1) : ℝ) * Real.sqrt (A264002 (n + 1) : ℝ)

end

end A264001.P12562906435306078347

/-! ## A264001.P8096828252405377334

`sqrt(A264000(n+1)*A264002(n+1))`
-/

namespace A264001.P8096828252405377334
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264000 (n + 1) * A264002 (n + 1) : ℝ)

end

end A264001.P8096828252405377334

/-!
# A264002: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having index change (+-,+-) 0,0 1,2 or 1,0.

The programs for A264002, there is no canonical definition to state claims against.
-/

/-! ## A264002.P3108633667814391365

`A189651(n+2)²`
-/

namespace A264002.P3108633667814391365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189651 (n + 2) ^ 2

end

end A264002.P3108633667814391365

/-! ## A264002.P397440963200557894

`A264001(n+1)/A264000(n+1)*A264001(n+1)`
-/

namespace A264002.P397440963200557894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264001 (n + 1) : ℚ) / (A264000 (n + 1) : ℚ) * (A264001 (n + 1) : ℚ)

end

end A264002.P397440963200557894

/-! ## A264002.P6591196831390942799

`A264001(n+1)²/A264000(n+1)`
-/

namespace A264002.P6591196831390942799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264001 (n + 1) ^ 2 : ℚ) / (A264000 (n + 1) : ℚ)

end

end A264002.P6591196831390942799

/-! ## A264002.P13979658936875552208

`A264001(n+1)²/A189179(n+2)²`
-/

namespace A264002.P13979658936875552208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264001 (n + 1) ^ 2 : ℚ) / (A189179 (n + 2) ^ 2 : ℚ)

end

end A264002.P13979658936875552208

/-! ## A264002.P13031330687684702121

`A264001(n+1)²/A189186(∑[n+2]+3)²`
-/

namespace A264002.P13031330687684702121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264001 (n + 1) ^ 2 : ℚ) / (A189186 (∑ j ∈ Finset.range (n + 1), f1 j + 3) ^ 2 : ℚ)

end

end A264002.P13031330687684702121

/-!
# A264003: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 with each element having index change (+-,+-) 0,0 1,2 or 1,0.

The programs for A264003, there is no canonical definition to state claims against.
-/

/-! ## A264003.P6443898603353092229

`A264207(n+1)+A191228(A022185(n))`
-/

namespace A264003.P6443898603353092229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (n + 1) + A191228 (A022185 n).toNat

end

end A264003.P6443898603353092229

/-! ## A264003.P3886937362378976741

`A264207(n+1)+A191228(A022187(n))`
-/

namespace A264003.P3886937362378976741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (n + 1) + A191228 (A022187 n).toNat

end

end A264003.P3886937362378976741

/-! ## A264003.P2768092305639918462

`A264207(n+1)+A077407(A209427(n))`
-/

namespace A264003.P2768092305639918462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (n + 1) + A077407 (A209427 n).toNat

end

end A264003.P2768092305639918462

/-!
# A264004: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 with each element having index change (+-,+-) 0,0 1,2 or 1,0.

The programs for A264004, the canonical program `A264004.P5864894677595507346` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264004 has offset 1).

The definition of A264004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264004.P5864894677595507346

`A006253(A008619(n+1))*A006253(A008619(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A264004

/-- `A006253(A008619(n+1))*A006253(A008619(n))` -/
def P5864894677595507346.Spec : Prop :=
  ∀ n, P5864894677595507346.a n = A264004 (n + 1)

theorem P5864894677595507346.correct : P5864894677595507346.Spec := by
  intro n
  simp only [A264004, Nat.add_sub_cancel]

end A264004

/-! ## A264004.P18208185846977077293

`A264207(∑[n]+1)`
-/

namespace A264004.P18208185846977077293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264004.P18208185846977077293

namespace A264004

/-- `A264207(∑[n]+1)` -/
def P18208185846977077293.Spec : Prop :=
  ∀ n, P18208185846977077293.a n = A264004 (n + 1)

end A264004

/-! ## A264004.P5218225365513966437

`record[A264207(A286245(n+1))]`
-/

namespace A264004.P5218225365513966437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (A286245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264004.P5218225365513966437

namespace A264004

/-- `record[A264207(A286245(n+1))]` -/
def P5218225365513966437.Spec : Prop :=
  ∀ n, P5218225365513966437.a n = A264004 (n + 1)

end A264004

/-! ## A264004.P2961092501521141048

`record[A264207(A000124(∑{digits}[n, #]))]`
-/

namespace A264004.P2961092501521141048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264207 (A000124 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264004.P2961092501521141048

namespace A264004

/-- `record[A264207(A000124(∑{digits}[n, #]))]` -/
def P2961092501521141048.Spec : Prop :=
  ∀ n, P2961092501521141048.a n = A264004 (n + 1)

end A264004

/-! ## A264004.P8063524397124512195

`lcm((-1)^n, A264207(A000124(n)))`
-/

namespace A264004.P8063524397124512195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A264207 (A000124 n).toNat)

end

end A264004.P8063524397124512195

namespace A264004

/-- `lcm((-1)^n, A264207(A000124(n)))` -/
def P8063524397124512195.Spec : Prop :=
  ∀ n, (P8063524397124512195.a n : ℤ) = A264004 (n + 1)

end A264004

/-!
# A264005: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 with each element having index change (+-,+-) 0,0 1,2 or 1,0.

The programs for A264005, there is no canonical definition to state claims against.
-/

/-! ## A264005.P15543596402597493705

`A264003(∑[n+1]+2)`
-/

namespace A264005.P15543596402597493705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264003 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264005.P15543596402597493705

/-! ## A264005.P2079470995719108796

`record[A023531(n)*A264003(n+3)]`
-/

namespace A264005.P2079470995719108796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A264003 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264005.P2079470995719108796

/-! ## A264005.P16887303673419335757

`record[A264003(n+3)/A039817(n+1)]`
-/

namespace A264005.P16887303673419335757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264003 (n + 3) : ℚ) / (A039817 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264005.P16887303673419335757

/-!
# A264006: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having index change (+-,+-) 0,0 1,2 or 1,0.

The programs for A264006, there is no canonical definition to state claims against.
-/

/-! ## A264006.P16261683230929619686

`A264003(∑[n+2]+4)`
-/

namespace A264006.P16261683230929619686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264003 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264006.P16261683230929619686

/-! ## A264006.P3237999004902446836

`A264003(A167614(n+1))+floor(n/10)`
-/

namespace A264006.P3237999004902446836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264003 (A167614 (n + 1)).toNat + ⌊(n : ℚ) / 10⌋

end

end A264006.P3237999004902446836

/-! ## A264006.P6835894471502195177

`A347689(n)+A264003(A167614(n+1))`
-/

namespace A264006.P6835894471502195177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A264003 (A167614 (n + 1)).toNat

end

end A264006.P6835894471502195177

/-! ## A264006.P14837539666135792763

`A047996(n)*A264003(A167614(n+1))`
-/

namespace A264006.P14837539666135792763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A264003 (A167614 (n + 1)).toNat

end

end A264006.P14837539666135792763

/-!
# A264007: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having index change (+-,+-) 0,0 1,2 or 1,0.

The programs for A264007, there is no canonical definition to state claims against.
-/

/-! ## A264007.P15324823786835982071

`A264003(A141214(n)+7)`
-/

namespace A264007.P15324823786835982071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264003 (A141214 n + 7).toNat

end

end A264007.P15324823786835982071

/-! ## A264007.P6955836009771166182

`A264003(A052905(n)+9)`
-/

namespace A264007.P6955836009771166182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264003 (A052905 n + 9).toNat

end

end A264007.P6955836009771166182

/-! ## A264007.P8267667854373240989

`A264003(A055999(n)+10)`
-/

namespace A264007.P8267667854373240989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264003 (A055999 n + 10).toNat

end

end A264007.P8267667854373240989

/-!
# A264008: Index of the smallest Fibonacci number divisible by prime(n)^2.

The programs for A264008, there is no canonical definition to state claims against.
-/

/-! ## A264008.P11740233461121816792

`A000040(n+1)*A001602(n+1)`
-/

namespace A264008.P11740233461121816792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001602 (n + 1)

end

end A264008.P11740233461121816792

/-! ## A264008.P8207959156521955223

`A001602(n+1)*A008578(n+2)`
-/

namespace A264008.P8207959156521955223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1) * A008578 (n + 2)

end

end A264008.P8207959156521955223

/-! ## A264008.P2344507411861532984

`∑[A054541(n+1)]*A001602(n+1)`
-/

namespace A264008.P2344507411861532984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001602 (n + 1)

end

end A264008.P2344507411861532984

/-! ## A264008.P6943122371672698029

`(A006093(n+1)+1)*A001602(n+1)`
-/

namespace A264008.P6943122371672698029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A001602 (n + 1)

end

end A264008.P6943122371672698029

/-! ## A264008.P1603629432696628507

`(A008864(n+1)-1)*A001602(n+1)`
-/

namespace A264008.P1603629432696628507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A001602 (n + 1)

end

end A264008.P1603629432696628507

/-! ## A264008.P14565829721051047985

`(A014692(n+1)+n)*A001602(n+1)`
-/

namespace A264008.P14565829721051047985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) * A001602 (n + 1)

end

end A264008.P14565829721051047985

/-! ## A264008.P16153480171148042813

`record[A000010(n+1)+1]*A001602(n+1)`
-/

namespace A264008.P16153480171148042813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001602 (n + 1)

end

end A264008.P16153480171148042813

/-! ## A264008.P12362744210568816360

`p?[n+1-A006530(n+1)]*A001602(n+1)`
-/

namespace A264008.P12362744210568816360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A001602 (n + 1)

end

end A264008.P12362744210568816360

/-! ## A264008.P4185153849418215784

`p?[(n+1)*A001221(n+1)]*A001602(n+1)`
-/

namespace A264008.P4185153849418215784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A001602 (n + 1)

end

end A264008.P4185153849418215784

/-! ## A264008.P9347658348722435479

`p?[(n+1)*A001222(n+1)]*A001602(n+1)`
-/

namespace A264008.P9347658348722435479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A001602 (n + 1)

end

end A264008.P9347658348722435479

/-! ## A264008.P6180567772128757138

`p?[A167171(n+1)]*A001602(n+1)`
-/

namespace A264008.P6180567772128757138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A001602 (n + 1)

end

end A264008.P6180567772128757138

/-! ## A264008.P16654106058457898115

`record[A093074(n+1)]*A001602(n+1)`
-/

namespace A264008.P16654106058457898115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001602 (n + 1)

end

end A264008.P16654106058457898115

/-! ## A264008.P11914082039489090695

`record[A014963(n+2)]*A001602(n+1)`
-/

namespace A264008.P11914082039489090695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001602 (n + 1)

end

end A264008.P11914082039489090695

/-! ## A264008.P13647373489062909416

`A001177(A182986(n+2))*A182986(n+2)`
-/

namespace A264008.P13647373489062909416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A182986 (n + 2)).toNat * A182986 (n + 2)

end

end A264008.P13647373489062909416

/-! ## A264008.P4295202151244083520

`A001602(n+1)*A039649(A140141(n+1))`
-/

namespace A264008.P4295202151244083520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1) * A039649 (A140141 (n + 1)).toNat

end

end A264008.P4295202151244083520

/-!
# A264009: Table T(i,j) = nonnegative k at which lcm(i+k,j+k) reaches the minimum, read by antidiagonals (i>=1, j>=1).

The programs for A264009, there is no canonical definition to state claims against.
-/

/-! ## A264009.P11890317006363270015

`A000217(A347684(n+1))%A001222(A156046(n))`
-/

namespace A264009.P11890317006363270015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A347684 (n + 1)).toNat) (A001222 (A156046 n).toNat)

end

end A264009.P11890317006363270015

/-! ## A264009.P3687278175838487458

`A296548(n)%A338480(A317815(n+1))`
-/

namespace A264009.P3687278175838487458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296548 n) (A338480 (A317815 (n + 1)).toNat)

end

end A264009.P3687278175838487458

/-! ## A264009.P2907867081666513002

`val(A135678(A086645(n)), 5)`
-/

namespace A264009.P2907867081666513002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A135678 (A086645 n).toNat).toNat 5

end

end A264009.P2907867081666513002

/-! ## A264009.P1737792273460308261

`A061704(A297915(n+1))-1`
-/

namespace A264009.P1737792273460308261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A297915 (n + 1)).toNat - 1

end

end A264009.P1737792273460308261

/-! ## A264009.P5108011400031802319

`A340502(A155494(n))`
-/

namespace A264009.P5108011400031802319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340502 (A155494 n).toNat

end

end A264009.P5108011400031802319

/-!
# A264011: Exponents n such that 2^(2*n+1) - 3*2^n - 1 (A195461) is prime.

The programs for A264011, there is no canonical definition to state claims against.
-/

/-! ## A264011.P834095420435448277

`A270613(n+1)+A066099(A161634(n))`
-/

namespace A264011.P834095420435448277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (n + 1) + A066099 (A161634 n).toNat

end

end A264011.P834095420435448277

/-!
# A264012: Composite numbers n such that gcd(phi(n), n-1) = lambda(n), where lambda(n) = A002322(n).

The programs for A264012, there is no canonical definition to state claims against.
-/

/-! ## A264012.P9123207714311209122

`A002997(eq[1, A264024(n+1)]+1)`
-/

namespace A264012.P9123207714311209122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A264012.P9123207714311209122

/-! ## A264012.P16504220390271711541

`A002997(record[(n+1)/A264024(n+1)])`
-/

namespace A264012.P16504220390271711541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A264024 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A264012.P16504220390271711541

/-! ## A264012.P13809622587924106982

`record[root(A002997(n+1), A264024(n+1))]`
-/

namespace A264012.P13809622587924106982
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002997 (n + 1) : ℝ) ^ (1 / (A264024 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264012.P13809622587924106982

/-! ## A264012.P8999074103457598182

`A002997(record[gcd(n+1, A264024(n+1)+n)])`
-/

namespace A264012.P8999074103457598182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A264024 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A264012.P8999074103457598182

/-! ## A264012.P13875047569620943018

`filter[A262043(n+1), A290098(#)]`
-/

namespace A264012.P13875047569620943018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A264012.P13875047569620943018

/-!
# A264013: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having index change +-(.,.) 0,0 1,2 or 2,2.

The programs for A264013, there is no canonical definition to state claims against.
-/

/-! ## A264013.P15672584237614712652

`A264017(∑[4*n]+1)`
-/

namespace A264013.P15672584237614712652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264013.P15672584237614712652

/-! ## A264013.P15137175985962754329

`record[A264017(Δ[A235355(n)])]`
-/

namespace A264013.P15137175985962754329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264013.P15137175985962754329

/-! ## A264013.P15638136661916680832

`record[A264017(A330613(n+1))]`
-/

namespace A264013.P15638136661916680832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264013.P15638136661916680832

/-! ## A264013.P16898385106307410927

`record[A264017(A286457(n+2))]`
-/

namespace A264013.P16898385106307410927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A286457 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264013.P16898385106307410927

/-!
# A264014: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 1,2 or 2,2.

The programs for A264014, there is no canonical definition to state claims against.
-/

/-! ## A264014.P7556067417036783716

`A264017(A141214(n+1))`
-/

namespace A264014.P7556067417036783716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A141214 (n + 1)).toNat

end

end A264014.P7556067417036783716

/-! ## A264014.P12773239363929539192

`A264017(A155212(n)+5)`
-/

namespace A264014.P12773239363929539192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A155212 n + 5).toNat

end

end A264014.P12773239363929539192

/-! ## A264014.P18174916638788838459

`A264017(A056000(n)+7)`
-/

namespace A264014.P18174916638788838459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A056000 n + 7).toNat

end

end A264014.P18174916638788838459

/-! ## A264014.P15427300746335451924

`A264017(eq[3, A193592(n)])`
-/

namespace A264014.P15427300746335451924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264014.P15427300746335451924

/-! ## A264014.P5287511334807926243

`A264017(Δ[A034857(n+1)])`
-/

namespace A264014.P5287511334807926243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (f1 (n + 1) - f1 n).toNat

end

end A264014.P5287511334807926243

/-!
# A264015: Number of (n+1) X (6+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 1,2 or 2,2.

The programs for A264015, there is no canonical definition to state claims against.
-/

/-! ## A264015.P12472473344690876695

`A264017(A052905(n+3))`
-/

namespace A264015.P12472473344690876695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A052905 (n + 3)).toNat

end

end A264015.P12472473344690876695

/-! ## A264015.P12394355715411404392

`A264017(eq[3, A219347(n)])`
-/

namespace A264015.P12394355715411404392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264015.P12394355715411404392

/-! ## A264015.P4661211040394820209

`A264017(eq[5, A193592(n)])`
-/

namespace A264015.P4661211040394820209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264015.P4661211040394820209

/-! ## A264015.P6179225367854631814

`A264017(A141214(n+3)-2)`
-/

namespace A264015.P6179225367854631814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A141214 (n + 3) - 2).toNat

end

end A264015.P6179225367854631814

/-! ## A264015.P3594843036650468317

`A264017(eq[8, A185782(n+1)])`
-/

namespace A264015.P3594843036650468317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264015.P3594843036650468317

/-!
# A264016: Number of (n+1) X (7+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 1,2 or 2,2.

The programs for A264016, there is no canonical definition to state claims against.
-/

/-! ## A264016.P9568442978640107640

`A264072(n+1)²`
-/

namespace A264016.P9568442978640107640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264072 (n + 1) ^ 2

end

end A264016.P9568442978640107640

/-! ## A264016.P9845595808361512193

`A264072(n+1)^ratio[A000079(n)]`
-/

namespace A264016.P9845595808361512193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264072 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A264016.P9845595808361512193

/-! ## A264016.P3625660315424542634

`A264072(n+1)^A000040(gcd(n, n+1))`
-/

namespace A264016.P3625660315424542634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264072 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A264016.P3625660315424542634

/-! ## A264016.P8517002391474119992

`A264072(n+1)^A000005(A038699(n+1))`
-/

namespace A264016.P8517002391474119992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264072 (n + 1) : ℚ) ^ (A000005 (A038699 (n + 1)).toNat : ℤ)

end

end A264016.P8517002391474119992

/-! ## A264016.P6674002487013551558

`A264072(n+1)^A000005(A049549(n+1))`
-/

namespace A264016.P6674002487013551558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264072 (n + 1) : ℚ) ^ (A000005 (A049549 (n + 1)).toNat : ℤ)

end

end A264016.P6674002487013551558

/-!
# A264018: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,2 or 2,2.

The programs for A264018, the canonical program `A264018.P18250233954322326691` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264018 has offset 1).

The definition of A264018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264018.P18250233954322326691

`4*a(n-1)+4*a(n-3)+a(n-4)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=105`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A264018

/-- `4*a(n-1)+4*a(n-3)+a(n-4)` -/
def P18250233954322326691.Spec : Prop :=
  ∀ n, (P18250233954322326691.a n : ℤ) = A264018 (n + 1)

theorem P18250233954322326691.correct : P18250233954322326691.Spec := by
  intro n
  simp only [A264018, Nat.add_sub_cancel]

end A264018

/-! ## A264018.P13050943075373838383

`A195971(3*n+1)`
-/

namespace A264018.P13050943075373838383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 (3 * n + 1)

end

end A264018.P13050943075373838383

namespace A264018

/-- `A195971(3*n+1)` -/
def P13050943075373838383.Spec : Prop :=
  ∀ n, P13050943075373838383.a n = A264018 (n + 1)

end A264018

/-! ## A264018.P13919901711819154006

`or(1, ∑[A293411(3*n)])`
-/

namespace A264018.P13919901711819154006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293411 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264018.P13919901711819154006

namespace A264018

/-- `or(1, ∑[A293411(3*n)])` -/
def P13919901711819154006.Spec : Prop :=
  ∀ n, P13919901711819154006.a n = A264018 (n + 1)

end A264018

/-! ## A264018.P520894819954665699

`or(1, A097083(3*n+1))`
-/

namespace A264018.P520894819954665699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A097083 (3 * n + 1))

end

end A264018.P520894819954665699

namespace A264018

/-- `or(1, A097083(3*n+1))` -/
def P520894819954665699.Spec : Prop :=
  ∀ n, P520894819954665699.a n = A264018 (n + 1)

end A264018

/-! ## A264018.P9539779043452937888

`Δ[A000045(3*n)-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A264018.P9539779043452937888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000045 (3 * n) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264018.P9539779043452937888

namespace A264018

/-- `Δ[A000045(3*n)-a(n-2)]` -/
def P9539779043452937888.Spec : Prop :=
  ∀ n, P9539779043452937888.a n = A264018 (n + 1)

end A264018

/-! ## A264018.P1708942486631016454

`or(1, A195971(A016777(n)))`
-/

namespace A264018.P1708942486631016454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A195971 (A016777 n).toNat)

end

end A264018.P1708942486631016454

namespace A264018

/-- `or(1, A195971(A016777(n)))` -/
def P1708942486631016454.Spec : Prop :=
  ∀ n, P1708942486631016454.a n = A264018 (n + 1)

end A264018

/-! ## A264018.P13276107384173340778

`A384219(n+1)-A057077(n)`
-/

namespace A264018.P13276107384173340778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384219 (n + 1) - A057077 n

end

end A264018.P13276107384173340778

namespace A264018

/-- `A384219(n+1)-A057077(n)` -/
def P13276107384173340778.Spec : Prop :=
  ∀ n, P13276107384173340778.a n = A264018 (n + 1)

end A264018

/-! ## A264018.P12028475891231978699

`record[A195971(A014682(n+1)-1)]`
-/

namespace A264018.P12028475891231978699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 (A014682 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264018.P12028475891231978699

namespace A264018

/-- `record[A195971(A014682(n+1)-1)]` -/
def P12028475891231978699.Spec : Prop :=
  ∀ n, P12028475891231978699.a n = A264018 (n + 1)

end A264018

/-! ## A264018.P6954762997437447654

`A053602(A016777(n+1))*A053602(A016777(n))`
-/

namespace A264018.P6954762997437447654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A016777 (n + 1)).toNat * A053602 (A016777 n).toNat

end

end A264018.P6954762997437447654

namespace A264018

/-- `A053602(A016777(n+1))*A053602(A016777(n))` -/
def P6954762997437447654.Spec : Prop :=
  ∀ n, P6954762997437447654.a n = A264018 (n + 1)

end A264018

/-! ## A264018.P17473216975930271758

`A006498(3*(n+1))-A006498(3*n+1)`
-/

namespace A264018.P17473216975930271758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (3 * (n + 1)) - A006498 (3 * n + 1)

end

end A264018.P17473216975930271758

namespace A264018

/-- `A006498(3*(n+1))-A006498(3*n+1)` -/
def P17473216975930271758.Spec : Prop :=
  ∀ n, P17473216975930271758.a n = A264018 (n + 1)

end A264018

/-!
# A264019: Number of (4+1) X (n+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 1,2 or 2,2.

The programs for A264019, there is no canonical definition to state claims against.
-/

/-! ## A264019.P8589949191936171668

`A264017(A141214(n)+7)`
-/

namespace A264019.P8589949191936171668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A141214 n + 7).toNat

end

end A264019.P8589949191936171668

/-! ## A264019.P11158844851535951077

`A264017(A052905(n)+9)`
-/

namespace A264019.P11158844851535951077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A052905 n + 9).toNat

end

end A264019.P11158844851535951077

/-! ## A264019.P3692592438807704500

`A264017(A055999(n)+10)`
-/

namespace A264019.P3692592438807704500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A055999 n + 10).toNat

end

end A264019.P3692592438807704500

/-! ## A264019.P17791705490987356704

`A264017(eq[5, A066657(n)])`
-/

namespace A264019.P17791705490987356704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264019.P17791705490987356704

/-! ## A264019.P487365840212138990

`A264017(A167614(n+2)+1)`
-/

namespace A264019.P487365840212138990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A167614 (n + 2) + 1).toNat

end

end A264019.P487365840212138990

/-!
# A264020: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 1,2 or 2,2.

The programs for A264020, there is no canonical definition to state claims against.
-/

/-! ## A264020.P12729763928108990197

`A264017(A155212(n)+13)`
-/

namespace A264020.P12729763928108990197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A155212 n + 13).toNat

end

end A264020.P12729763928108990197

/-! ## A264020.P1522816866578443913

`A264017(A056000(n)+15)`
-/

namespace A264020.P1522816866578443913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A056000 n + 15).toNat

end

end A264020.P1522816866578443913

/-! ## A264020.P10946186157565530433

`A264017(eq[7, A066657(n)])`
-/

namespace A264020.P10946186157565530433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264020.P10946186157565530433

/-! ## A264020.P15147654985081044337

`A264017(A000124(n+4)+4)`
-/

namespace A264020.P15147654985081044337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A000124 (n + 4) + 4).toNat

end

end A264020.P15147654985081044337

/-! ## A264020.P12575384376344528102

`A264017(eq[6, A131818(n+1)])`
-/

namespace A264020.P12575384376344528102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264020.P12575384376344528102

/-!
# A264021: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 1,2 or 2,2.

The programs for A264021, there is no canonical definition to state claims against.
-/

/-! ## A264021.P12603954008886780798

`A264017(A167487(n+4)-1)`
-/

namespace A264021.P12603954008886780798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A167487 (n + 4) - 1).toNat

end

end A264021.P12603954008886780798

/-! ## A264021.P8646647326284670296

`A264017(A052905(n+2)+11)`
-/

namespace A264021.P8646647326284670296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A052905 (n + 2) + 11).toNat

end

end A264021.P8646647326284670296

/-! ## A264021.P16314421046993772887

`A264017(eq[6, A130270(n+1)])`
-/

namespace A264021.P16314421046993772887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264021.P16314421046993772887

/-! ## A264021.P10960046740659512635

`A264017(eq[7, A131818(n+1)])`
-/

namespace A264021.P10960046740659512635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264021.P10960046740659512635

/-! ## A264021.P4599935885454699426

`A264017(eq[5, A144328(n+1)]+1)`
-/

namespace A264021.P4599935885454699426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A264021.P4599935885454699426

/-!
# A264022: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 1,2 or 2,2.

The programs for A264022, there is no canonical definition to state claims against.
-/

/-! ## A264022.P13405553842943804535

`A264017(A056119(n)+28)`
-/

namespace A264022.P13405553842943804535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A056119 n + 28).toNat

end

end A264022.P13405553842943804535

/-! ## A264022.P9361206139213876217

`A264017(eq[11, A066657(n)])`
-/

namespace A264022.P9361206139213876217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264022.P9361206139213876217

/-! ## A264022.P10757480993219270880

`A264017(A000217(n+6)+7)`
-/

namespace A264022.P10757480993219270880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (A000217 (n + 6) + 7).toNat

end

end A264022.P10757480993219270880

/-! ## A264022.P13489046708402127769

`A264017(eq[8, A131818(n+1)])`
-/

namespace A264022.P13489046708402127769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264022.P13489046708402127769

/-! ## A264022.P15549187541541774668

`A264017(eq[5, A144328(n+1)]+n+8)`
-/

namespace A264022.P15549187541541774668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 8))

end

end A264022.P15549187541541774668

/-!
# A264024: a(n) = gcd(phi(k), k-1) / lambda(k), where k is n-th Carmichael number A002997(n) and lambda(k) = A002322(k).

The programs for A264024, there is no canonical definition to state claims against.
-/

/-! ## A264024.P12187046272907281737

`A353801(A002997(n+1))`
-/

namespace A264024.P12187046272907281737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353801 (A002997 (n + 1)).toNat

end

end A264024.P12187046272907281737

/-! ## A264024.P12264588815386363521

`A353801(A323214(n+3))`
-/

namespace A264024.P12264588815386363521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353801 (A323214 (n + 3)).toNat

end

end A264024.P12264588815386363521

/-! ## A264024.P12431050617495561859

`A353801(A081703(n+1)*A141710(n+1))`
-/

namespace A264024.P12431050617495561859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353801 (A081703 (n + 1) * A141710 (n + 1)).toNat

end

end A264024.P12431050617495561859

/-! ## A264024.P1891175144337983786

`A353801(lcm(A081703(n+1), A141710(n+1)))`
-/

namespace A264024.P1891175144337983786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353801 (Int.lcm (A081703 (n + 1)) (A141710 (n + 1)))

end

end A264024.P1891175144337983786

/-! ## A264024.P3592679484387714676

`A353801(∩[A231570(n+1), A231571(n+1)])`
-/

namespace A264024.P3592679484387714676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231571 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353801 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A264024.P3592679484387714676

/-!
# A264026: Expansion of (f(x^3) / f(x))^6 in powers of x where f() is a Ramanujan theta function.

The programs for A264026, there is no canonical definition to state claims against.
-/

/-! ## A264026.P7331298790642860659

`A132107(A016789(n))/9`
-/

namespace A264026.P7331298790642860659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132107 (A016789 n).toNat : ℚ) / 9

end

end A264026.P7331298790642860659

/-! ## A264026.P11117516570757612748

`A033999(n)*A121596(n)`
-/

namespace A264026.P11117516570757612748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A121596 n

end

end A264026.P11117516570757612748

/-! ## A264026.P10074503636165449555

`A121596(n)/A033999(n+2)`
-/

namespace A264026.P10074503636165449555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121596 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A264026.P10074503636165449555

/-! ## A264026.P4944292455662132816

`A121596(n)*A317529(A007947(n+1))`
-/

namespace A264026.P4944292455662132816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121596 n * A317529 (A007947 (n + 1)).toNat

end

end A264026.P4944292455662132816

/-! ## A264026.P13683351648653599356

`A007262(n)/A132107(n)*A121596(n)`
-/

namespace A264026.P13683351648653599356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007262 n : ℚ) / (A132107 n : ℚ) * (A121596 n : ℚ)

end

end A264026.P13683351648653599356

/-!
# A264027: Triangle read by rows: T(n, k) = Sum_{t=k..n-2} (-1)^(t-k)*(n-t)!*binomial(t,k)*binomial(n-2,t).

The programs for A264027, there is no canonical definition to state claims against.
-/

/-! ## A264027.P15121346723536393359

`A000153(A004736(n+1))*A028326(n)`
-/

namespace A264027.P15121346723536393359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000153 (A004736 (n + 1)).toNat * A028326 n

end

end A264027.P15121346723536393359

/-! ## A264027.P13533753521146126884

`A007318(n)*A055790(A004736(n+1))`
-/

namespace A264027.P13533753521146126884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055790 (A004736 (n + 1)).toNat

end

end A264027.P13533753521146126884

/-! ## A264027.P10981949454398368623

`A007318(n)*A055790(A025581(n)+1)`
-/

namespace A264027.P10981949454398368623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055790 (A025581 n + 1).toNat

end

end A264027.P10981949454398368623

/-! ## A264027.P4527859902345472798

`sqrt(A008459(n))*A055790(A025581(n)+1)`
-/

namespace A264027.P4527859902345472798
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A055790 (A025581 n + 1).toNat : ℝ)

end

end A264027.P4527859902345472798

/-! ## A264027.P12666089226510262472

`(A014473(n)+1)*A055790(A004736(n+1))`
-/

namespace A264027.P12666089226510262472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A055790 (A004736 (n + 1)).toNat

end

end A264027.P12666089226510262472

/-! ## A264027.P4320068227124813600

`A007318(n)*A055790(A025669(n+1)+1)`
-/

namespace A264027.P4320068227124813600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055790 (A025669 (n + 1) + 1).toNat

end

end A264027.P4320068227124813600

/-! ## A264027.P4607779066958447006

`Δ[A102363(n)]*A055790(A025669(n+1)+1)`
-/

namespace A264027.P4607779066958447006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A055790 (A025669 (n + 1) + 1).toNat

end

end A264027.P4607779066958447006

/-!
# A264028: Triangle read by rows: T(n, k) = Sum_{t=k..n-3} (-1)^(t-k)*(n-t)!*binomial(t,k)*binomial(n-3,t).

The programs for A264028, there is no canonical definition to state claims against.
-/

/-! ## A264028.P15362626254953660205

`A028326(n)*A090012(A004736(n+1))`
-/

namespace A264028.P15362626254953660205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n * A090012 (A004736 (n + 1)).toNat

end

end A264028.P15362626254953660205

/-!
# A264029: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows lexicographically nondecreasing and columns lexicographically nonincreasing.

The programs for A264029, the canonical program `A264029.P7631594702276918908` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264029 has offset 1).

The definition of A264029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264029.P7631594702276918908

`A119963(eq[0, A172090(n)])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A264029

/-- `A119963(eq[0, A172090(n)])` -/
def P7631594702276918908.Spec : Prop :=
  ∀ n, P7631594702276918908.a n = A264029 (n + 1)

theorem P7631594702276918908.correct : P7631594702276918908.Spec := by
  intro n
  simp only [A264029, Nat.add_sub_cancel]

end A264029

/-! ## A264029.P13233225927395367672

`A119963(lt[1, A047996(n)])`
-/

namespace A264029.P13233225927395367672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A264029.P13233225927395367672

namespace A264029

/-- `A119963(lt[1, A047996(n)])` -/
def P13233225927395367672.Spec : Prop :=
  ∀ n, P13233225927395367672.a n = A264029 (n + 1)

end A264029

/-! ## A264029.P15640163615855070050

`A119963(lt[1, A049639(n)])`
-/

namespace A264029.P15640163615855070050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A264029.P15640163615855070050

namespace A264029

/-- `A119963(lt[1, A049639(n)])` -/
def P15640163615855070050.Spec : Prop :=
  ∀ n, P15640163615855070050.a n = A264029 (n + 1)

end A264029

/-! ## A264029.P8484268203500466577

`A119963(lt[1, A049704(n)])`
-/

namespace A264029.P8484268203500466577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A264029.P8484268203500466577

namespace A264029

/-- `A119963(lt[1, A049704(n)])` -/
def P8484268203500466577.Spec : Prop :=
  ∀ n, P8484268203500466577.a n = A264029 (n + 1)

end A264029

/-! ## A264029.P6929251305050685254

`A119963(lt[1, A052307(n)])`
-/

namespace A264029.P6929251305050685254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A264029.P6929251305050685254

namespace A264029

/-- `A119963(lt[1, A052307(n)])` -/
def P6929251305050685254.Spec : Prop :=
  ∀ n, P6929251305050685254.a n = A264029 (n + 1)

end A264029

/-! ## A264029.P15393869622077290953

`A119963(lt[1, A057790(n)])`
-/

namespace A264029.P15393869622077290953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A264029.P15393869622077290953

namespace A264029

/-- `A119963(lt[1, A057790(n)])` -/
def P15393869622077290953.Spec : Prop :=
  ∀ n, P15393869622077290953.a n = A264029 (n + 1)

end A264029

/-! ## A264029.P1709232404276617889

`A119963(lt[1, A067059(n)])`
-/

namespace A264029.P1709232404276617889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A264029.P1709232404276617889

namespace A264029

/-- `A119963(lt[1, A067059(n)])` -/
def P1709232404276617889.Spec : Prop :=
  ∀ n, P1709232404276617889.a n = A264029 (n + 1)

end A264029

/-! ## A264029.P4602442298008889646

`A119963(lt[1, A119326(n)])`
-/

namespace A264029.P4602442298008889646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A264029.P4602442298008889646

namespace A264029

/-- `A119963(lt[1, A119326(n)])` -/
def P4602442298008889646.Spec : Prop :=
  ∀ n, P4602442298008889646.a n = A264029 (n + 1)

end A264029

/-! ## A264029.P10204039207729287755

`A119963(lt[1, A119963(n)])`
-/

namespace A264029.P10204039207729287755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A264029.P10204039207729287755

namespace A264029

/-- `A119963(lt[1, A119963(n)])` -/
def P10204039207729287755.Spec : Prop :=
  ∀ n, P10204039207729287755.a n = A264029 (n + 1)

end A264029

/-! ## A264029.P12012287976322958340

`A119963(eq[2, 2%A119963(n)²])`
-/

namespace A264029.P12012287976322958340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A119963 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264029.P12012287976322958340

namespace A264029

/-- `A119963(eq[2, 2%A119963(n)²])` -/
def P12012287976322958340.Spec : Prop :=
  ∀ n, P12012287976322958340.a n = A264029 (n + 1)

end A264029

/-! ## A264029.P10542348260468600481

`A119963(eq[1, ceil(2/A119963(n))])`
-/

namespace A264029.P10542348260468600481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A119963 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264029.P10542348260468600481

namespace A264029

/-- `A119963(eq[1, ceil(2/A119963(n))])` -/
def P10542348260468600481.Spec : Prop :=
  ∀ n, P10542348260468600481.a n = A264029 (n + 1)

end A264029

/-! ## A264029.P649623553024838771

`A119963(comp[n*(2-A119963(n))])`
-/

namespace A264029.P649623553024838771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A119963 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A264029.P649623553024838771

namespace A264029

/-- `A119963(comp[n*(2-A119963(n))])` -/
def P649623553024838771.Spec : Prop :=
  ∀ n, P649623553024838771.a n = A264029 (n + 1)

end A264029

/-! ## A264029.P8805201791348879279

`A036234(p?[A008578(A119963(n))])`
-/

namespace A264029.P8805201791348879279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A119963 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A264029.P8805201791348879279

namespace A264029

/-- `A036234(p?[A008578(A119963(n))])` -/
def P8805201791348879279.Spec : Prop :=
  ∀ n, P8805201791348879279.a n = A264029 (n + 1)

end A264029

/-!
# A264030: Primes p such that A203069(p) is also prime.

The programs for A264030, there is no canonical definition to state claims against.
-/

/-! ## A264030.P1861878773683636797

`p?[A249918(p?[A203069(n+1)])]`
-/

namespace A264030.P1861878773683636797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203069 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249918 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264030.P1861878773683636797

/-! ## A264030.P6200088643010379265

`p?[A249918(p?[2*A346611(n+1)+n+1])]`
-/

namespace A264030.P6200088643010379265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A346611 (n + 1) + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249918 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264030.P6200088643010379265

/-! ## A264030.P13257832522592974223

`p?[∑[2-A088592(2*n+5)]]`
-/

namespace A264030.P13257832522592974223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A088592 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264030.P13257832522592974223

/-! ## A264030.P14207985263178106369

`p?[A249918(p?[A329450(n)])]`
-/

namespace A264030.P14207985263178106369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329450 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249918 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264030.P14207985263178106369

/-! ## A264030.P3327991545564842754

`∩[A039113(n+1), A376206(n+1)]`
-/

namespace A264030.P3327991545564842754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264030.P3327991545564842754

/-!
# A264031: Minimum of the sum r + s of the coefficients of a linear combination of consecutive squares r*k^2 + s*(k+1)^2 equals to n, with r, s and k >=0.

The programs for A264031, there is no canonical definition to state claims against.
-/

/-! ## A264031.P10708383994491269007

`gcd(A053737(A187829(n+1)), A281477(n+1))`
-/

namespace A264031.P10708383994491269007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053737 (A187829 (n + 1)).toNat) (A281477 (n + 1))

end

end A264031.P10708383994491269007

/-! ## A264031.P7254459354251747783

`A110657(n)-A033999(A214326(n+1))`
-/

namespace A264031.P7254459354251747783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 n - A033999 (A214326 (n + 1)).toNat

end

end A264031.P7254459354251747783

/-! ## A264031.P8487239159259829903

`A110657(n)-A033999(A214679(n+1))`
-/

namespace A264031.P8487239159259829903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 n - A033999 (A214679 (n + 1)).toNat

end

end A264031.P8487239159259829903

/-! ## A264031.P11781700495548605742

`A103270(A214925(n+1))+A002828(n+1)`
-/

namespace A264031.P11781700495548605742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103270 (A214925 (n + 1)).toNat + A002828 (n + 1)

end

end A264031.P11781700495548605742

/-!
# A264032: Triangle read by rows: T(n,k) (n>=0, k>=n+1) is the number of integer partitions of n containing exactly k partitions.

The programs for A264032, there is no canonical definition to state claims against.
-/

/-! ## A264032.P15868671783392254083

`A000377(∑[A000032(A296141(n+1))])`
-/

namespace A264032.P15868671783392254083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A296141 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A264032.P15868671783392254083

/-! ## A264032.P912830926004844215

`and(A008619(A122893(n)), A173493(n+1))`
-/

namespace A264032.P912830926004844215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008619 (A122893 n).toNat) (A173493 (n + 1))

end

end A264032.P912830926004844215

/-! ## A264032.P7538247969669249810

`A067742(A001223(n+1)*A057562(2*n+1))`
-/

namespace A264032.P7538247969669249810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A001223 (n + 1) * A057562 (2 * n + 1)).toNat

end

end A264032.P7538247969669249810

/-!
# A264033: Triangle read by rows: T(n,k) (n>=0, 0<=k<=A130519(n+1)) is the number of integer partitions of n having k pairs of different size.

The programs for A264033, there is no canonical definition to state claims against.
-/

/-! ## A264033.P3046931451417977602

`gcd(A211100(A057567(n+4)), A225323(3*n+4))`
-/

namespace A264033.P3046931451417977602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211100 (A057567 (n + 4)).toNat) (A225323 (3 * n + 4))

end

end A264033.P3046931451417977602

/-! ## A264033.P9173542531092351103

`A134023(A045780(n+3))`
-/

namespace A264033.P9173542531092351103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134023 (A045780 (n + 3)).toNat

end

end A264033.P9173542531092351103

/-! ## A264033.P960498145718281978

`A082647(A007477(n)+comp[∑[n]])`
-/

namespace A264033.P960498145718281978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (A007477 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A264033.P960498145718281978

/-! ## A264033.P13294650662203301074

`A300410(A191723(n+1)+A001739(n))`
-/

namespace A264033.P13294650662203301074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300410 (A191723 (n + 1) + A001739 n).toNat

end

end A264033.P13294650662203301074

/-! ## A264033.P8199764596745099905

`gcd(A121041(A014150(n+1)), A155643(n))`
-/

namespace A264033.P8199764596745099905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121041 (A014150 (n + 1)).toNat) (A155643 n)

end

end A264033.P8199764596745099905

/-!
# A264036: Stirling transform of A077957 (aerated powers of 2).

The programs for A264036, there is no canonical definition to state claims against.
-/

/-! ## A264036.P12614454350680753271

`A357681(∑[n+3])`
-/

namespace A264036.P12614454350680753271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357681 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264036.P12614454350680753271

/-! ## A264036.P2780957067226222323

`A177477(n)-A285966(A003149(n))`
-/

namespace A264036.P2780957067226222323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177477 n - A285966 (A003149 n).toNat

end

end A264036.P2780957067226222323

/-! ## A264036.P9702723099576718239

`A078008(n)*A374687(A259384(n+1))`
-/

namespace A264036.P9702723099576718239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n * A374687 (A259384 (n + 1)).toNat

end

end A264036.P9702723099576718239

/-!
# A264037: Stirling transform of A077957 (aerated powers of 2) with 0 prepended [0, 1, 0, 2, 0, 4, 0, 8, ...].

The programs for A264037, there is no canonical definition to state claims against.
-/

/-! ## A264037.P6573823884657926814

`A008617(A192232(2*(n+1))+A121352(n))`
-/

namespace A264037.P6573823884657926814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A192232 (2 * (n + 1)) + A121352 n).toNat

end

end A264037.P6573823884657926814

/-! ## A264037.P52970001433569221

`A008617(A219044(n+1)+A192232(2*(n+1)))`
-/

namespace A264037.P52970001433569221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A219044 (n + 1) + A192232 (2 * (n + 1))).toNat

end

end A264037.P52970001433569221

/-!
# A264038: Convolution of Lucas and Jacobsthal numbers.

The programs for A264038, the canonical program `A264038.P9507820309913421679` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264038 has offset 0).

The definition of A264038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264038.P9507820309913421679

`A014551(n+1)-A000032(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A264038

/-- `A014551(n+1)-A000032(n+1)` -/
def P9507820309913421679.Spec : Prop :=
  ∀ n, P9507820309913421679.a n = A264038 n

theorem P9507820309913421679.correct : P9507820309913421679.Spec := by
  intro n
  simp only [A264038]

end A264038

/-! ## A264038.P1660780603587135587

`2*a(n-1)+2*a(n-2)-3*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=10`
-/

namespace A264038.P1660780603587135587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 10] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 3 * a (n - 3) - 2 * a (n - 4)

end

end A264038.P1660780603587135587

namespace A264038

/-- `2*a(n-1)+2*a(n-2)-3*a(n-3)-2*a(n-4)` -/
def P1660780603587135587.Spec : Prop :=
  ∀ n, P1660780603587135587.a n = A264038 n

end A264038

/-! ## A264038.P2136982908114073367

`2^(n+1)-A098600(n+1)`
-/

namespace A264038.P2136982908114073367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A098600 (n + 1)

end

end A264038.P2136982908114073367

namespace A264038

/-- `2^(n+1)-A098600(n+1)` -/
def P2136982908114073367.Spec : Prop :=
  ∀ n, P2136982908114073367.a n = A264038 n

end A264038

/-! ## A264038.P10461693660193663301

`2^(n+1)-A181716(n+2)`
-/

namespace A264038.P10461693660193663301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A181716 (n + 2)

end

end A264038.P10461693660193663301

namespace A264038

/-- `2^(n+1)-A181716(n+2)` -/
def P10461693660193663301.Spec : Prop :=
  ∀ n, P10461693660193663301.a n = A264038 n

end A264038

/-! ## A264038.P3764506884115059561

`∑{d}[n+1, #*A065491(#-1)]`
-/

namespace A264038.P3764506884115059561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A065491 (d - 1)

end

end A264038.P3764506884115059561

namespace A264038

/-- `∑{d}[n+1, #*A065491(#-1)]` -/
def P3764506884115059561.Spec : Prop :=
  ∀ n, P3764506884115059561.a n = A264038 n

end A264038

/-! ## A264038.P12755653636800535038

`A377728(n)+A074331(n)`
-/

namespace A264038.P12755653636800535038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377728 n + A074331 n

end

end A264038.P12755653636800535038

namespace A264038

/-- `A377728(n)+A074331(n)` -/
def P12755653636800535038.Spec : Prop :=
  ∀ n, P12755653636800535038.a n = A264038 n

end A264038

/-! ## A264038.P12601776925137432714

`A062510(n)-A227200(n)`
-/

namespace A264038.P12601776925137432714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 n - A227200 n

end

end A264038.P12601776925137432714

namespace A264038

/-- `A062510(n)-A227200(n)` -/
def P12601776925137432714.Spec : Prop :=
  ∀ n, P12601776925137432714.a n = A264038 n

end A264038

/-! ## A264038.P10952695284250169299

`A027934(n+1)-A008346(n)`
-/

namespace A264038.P10952695284250169299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 (n + 1) - A008346 n

end

end A264038.P10952695284250169299

namespace A264038

/-- `A027934(n+1)-A008346(n)` -/
def P10952695284250169299.Spec : Prop :=
  ∀ n, P10952695284250169299.a n = A264038 n

end A264038

/-! ## A264038.P12310511504100611588

`A098600(n)-A227200(n+1)`
-/

namespace A264038.P12310511504100611588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 n - A227200 (n + 1)

end

end A264038.P12310511504100611588

namespace A264038

/-- `A098600(n)-A227200(n+1)` -/
def P12310511504100611588.Spec : Prop :=
  ∀ n, P12310511504100611588.a n = A264038 n

end A264038

/-! ## A264038.P15921829623800585636

`A141023(n+1)-A301653(n)`
-/

namespace A264038.P15921829623800585636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141023 (n + 1) - A301653 n

end

end A264038.P15921829623800585636

namespace A264038

/-- `A141023(n+1)-A301653(n)` -/
def P15921829623800585636.Spec : Prop :=
  ∀ n, P15921829623800585636.a n = A264038 n

end A264038

/-! ## A264038.P7275245137272645248

`xor(A000204(n+1), A284353(n))`
-/

namespace A264038.P7275245137272645248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000204 (n + 1)) (A284353 n)

end

end A264038.P7275245137272645248

namespace A264038

/-- `xor(A000204(n+1), A284353(n))` -/
def P7275245137272645248.Spec : Prop :=
  ∀ n, P7275245137272645248.a n = A264038 n

end A264038

/-! ## A264038.P739592638645729236

`A000225(n+1)-A001350(n+1)`
-/

namespace A264038.P739592638645729236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A001350 (n + 1)

end

end A264038.P739592638645729236

namespace A264038

/-- `A000225(n+1)-A001350(n+1)` -/
def P739592638645729236.Spec : Prop :=
  ∀ n, P739592638645729236.a n = A264038 n

end A264038

/-! ## A264038.P8491179610004841603

`A014551(n+1)-A000204(n+1)`
-/

namespace A264038.P8491179610004841603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 1) - A000204 (n + 1)

end

end A264038.P8491179610004841603

namespace A264038

/-- `A014551(n+1)-A000204(n+1)` -/
def P8491179610004841603.Spec : Prop :=
  ∀ n, P8491179610004841603.a n = A264038 n

end A264038

/-! ## A264038.P17689531232015974208

`A000051(n+1)-A020878(n+1)`
-/

namespace A264038.P17689531232015974208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - A020878 (n + 1)

end

end A264038.P17689531232015974208

namespace A264038

/-- `A000051(n+1)-A020878(n+1)` -/
def P17689531232015974208.Spec : Prop :=
  ∀ n, P17689531232015974208.a n = A264038 n

end A264038

/-! ## A264038.P4269071960790699657

`∑[A000079(n)]-A098600(n+1)+1`
-/

namespace A264038.P4269071960790699657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098600 (n + 1) + 1

end

end A264038.P4269071960790699657

namespace A264038

/-- `∑[A000079(n)]-A098600(n+1)+1` -/
def P4269071960790699657.Spec : Prop :=
  ∀ n, P4269071960790699657.a n = A264038 n

end A264038

/-! ## A264038.P17321784213489913515

`∑[A171559(n)]-A098600(n+1)-1`
-/

namespace A264038.P17321784213489913515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098600 (n + 1) - 1

end

end A264038.P17321784213489913515

namespace A264038

/-- `∑[A171559(n)]-A098600(n+1)-1` -/
def P17321784213489913515.Spec : Prop :=
  ∀ n, P17321784213489913515.a n = A264038 n

end A264038

/-! ## A264038.P11416812327497750499

`A000079(n+1)-(A001350(n+1)+1)`
-/

namespace A264038.P11416812327497750499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A001350 (n + 1) + 1)

end

end A264038.P11416812327497750499

namespace A264038

/-- `A000079(n+1)-(A001350(n+1)+1)` -/
def P11416812327497750499.Spec : Prop :=
  ∀ n, P11416812327497750499.a n = A264038 n

end A264038

/-! ## A264038.P6148025777565656887

`A052531(n+1)-(A014217(n+1)+1)`
-/

namespace A264038.P6148025777565656887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052531 (n + 1) - (A014217 (n + 1) + 1)

end

end A264038.P6148025777565656887

namespace A264038

/-- `A052531(n+1)-(A014217(n+1)+1)` -/
def P6148025777565656887.Spec : Prop :=
  ∀ n, P6148025777565656887.a n = A264038 n

end A264038

/-! ## A264038.P8496712715590229872

`A051049(n+1)+1-A062724(n+1)`
-/

namespace A264038.P8496712715590229872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (n + 1) + (1 - A062724 (n + 1))

end

end A264038.P8496712715590229872

namespace A264038

/-- `A051049(n+1)+1-A062724(n+1)` -/
def P8496712715590229872.Spec : Prop :=
  ∀ n, P8496712715590229872.a n = A264038 n

end A264038

/-!
# A264039: Number of "POISONED" cells after n stages of the "Ulam-Warburton" two-dimensional cellular automaton.

The programs for A264039, there is no canonical definition to state claims against.
-/

/-! ## A264039.P14824477243763716099

`∑[A260490(n)]`
-/

namespace A264039.P14824477243763716099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264039.P14824477243763716099

/-! ## A264039.P7307686585143588852

`A260490(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A264039.P7307686585143588852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A260490 n + a (A023443 n).toNat

end

end A264039.P7307686585143588852

/-! ## A264039.P8520770296760397975

`a(n-1)+A260490(n)%A147562(n)` with `a(0)=0`
-/

namespace A264039.P8520770296760397975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A260490 n) (A147562 n)

end

end A264039.P8520770296760397975

/-! ## A264039.P15884972974070169159

`A260490(n)+a(n-1)%A151723(n)` with `a(0)=0`
-/

namespace A264039.P15884972974070169159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A260490 n + Int.tmod (a (n - 1)) (A151723 n)

end

end A264039.P15884972974070169159

/-! ## A264039.P17482948461727879692

`a(n-1)+A135561(n+1)*A260490(n)` with `a(0)=0`
-/

namespace A264039.P17482948461727879692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A135561 (n + 1) * A260490 n

end

end A264039.P17482948461727879692

/-! ## A264039.P6947431445928206373

`(A260490(n)+a(n-1))%A255366(n+1)` with `a(0)=0`
-/

namespace A264039.P6947431445928206373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A260490 n + a (n - 1)) (A255366 (n + 1))

end

end A264039.P6947431445928206373

/-! ## A264039.P5881021818589466597

`a(n-1)+A260490(n)^A001399(C(3, n))` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A264039.P5881021818589466597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 4] fun n a =>
  a (n - 1) + (A260490 n : ℚ) ^ (A001399 (Nat.choose 3 n) : ℤ)

end

end A264039.P5881021818589466597

/-! ## A264039.P4289280056119850996

`(A260490(n)+a(n-1))%A335796(n)` with `a(0)=0`
-/

namespace A264039.P4289280056119850996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A260490 n + a (n - 1)) (A335796 n)

end

end A264039.P4289280056119850996

/-! ## A264039.P11786002428745789136

`floor(A260490(n)+a(n-1))%A335794(n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A264039.P11786002428745789136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A260490 n + a (n - 1)) (A335794 n)

end

end A264039.P11786002428745789136

/-!
# A264040: 

The programs for A264040, there is no canonical definition to state claims against.
-/

/-! ## A264040.P5423112593396170179

`ceil((n+1)²!/2)`
-/

namespace A264040.P5423112593396170179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A264040.P5423112593396170179

/-! ## A264040.P6328038668626706290

`round((n+1)²!/2)`
-/

namespace A264040.P6328038668626706290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial ((n + 1) ^ 2) : ℚ) / 2)

end

end A264040.P6328038668626706290

/-! ## A264040.P4491702445546026124

`lcm(2, (n+1)²!)/2`
-/

namespace A264040.P4491702445546026124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.factorial ((n + 1) ^ 2)) : ℚ) / 2

end

end A264040.P4491702445546026124

/-! ## A264040.P11610375040503224821

`floor(((n+1)²!+1)/2)`
-/

namespace A264040.P11610375040503224821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial ((n + 1) ^ 2) + 1 : ℚ) / 2⌋

end

end A264040.P11610375040503224821

/-!
# A264041: a(n) is the maximum number of diagonals that can be placed in an n X n grid made up of 1 X 1 unit squares when diagonals are placed in the unit squares in such a way that no two diagonals may cross or intersect at an endpoint.

The programs for A264041, the canonical program `A264041.P7534745598401413815` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264041 has offset 1).

The definition of A264041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264041.P7534745598401413815

`floor((n+2)*∑[gcd(2, n)]/3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A264041

/-- `floor((n+2)*∑[gcd(2, n)]/3)` -/
def P7534745598401413815.Spec : Prop :=
  ∀ n, P7534745598401413815.a n = A264041 (n + 1)

theorem P7534745598401413815.correct : P7534745598401413815.Spec := by
  intro n
  simp only [A264041, Nat.add_sub_cancel]

end A264041

/-! ## A264041.P4198091574884905824

`∑[comp[4*n]]-floor(n*floor((n-1)/2)/3)`
-/

namespace A264041.P4198091574884905824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊((n : ℤ) * ⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℚ) / 3⌋

end

end A264041.P4198091574884905824

namespace A264041

/-- `∑[comp[4*n]]-floor(n*floor((n-1)/2)/3)` -/
def P4198091574884905824.Spec : Prop :=
  ∀ n, P4198091574884905824.a n = A264041 (n + 1)

end A264041

/-! ## A264041.P5822321207549879626

`∑[A260307(n)]`
-/

namespace A264041.P5822321207549879626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264041.P5822321207549879626

namespace A264041

/-- `∑[A260307(n)]` -/
def P5822321207549879626.Spec : Prop :=
  ∀ n, P5822321207549879626.a n = A264041 (n + 1)

end A264041

/-! ## A264041.P1370903949414572031

`∪[A014105(n+1), A264938(n+1)]`
-/

namespace A264041.P1370903949414572031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264041.P1370903949414572031

namespace A264041

/-- `∪[A014105(n+1), A264938(n+1)]` -/
def P1370903949414572031.Spec : Prop :=
  ∀ n, (P1370903949414572031.a n : ℤ) = A264041 (n + 1)

end A264041

/-! ## A264041.P6740604623714982049

`A260708(n+1)`
-/

namespace A264041.P6740604623714982049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260708 (n + 1)

end

end A264041.P6740604623714982049

namespace A264041

/-- `A260708(n+1)` -/
def P6740604623714982049.Spec : Prop :=
  ∀ n, P6740604623714982049.a n = A264041 (n + 1)

end A264041

/-! ## A264041.P12590221475928597928

`∑[abs(Δ[A260708(n)])]`
-/

namespace A264041.P12590221475928597928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260708 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264041.P12590221475928597928

namespace A264041

/-- `∑[abs(Δ[A260708(n)])]` -/
def P12590221475928597928.Spec : Prop :=
  ∀ n, P12590221475928597928.a n = A264041 (n + 1)

end A264041

/-! ## A264041.P16794567612947818157

`record[A260708(abs(1-n))]`
-/

namespace A264041.P16794567612947818157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260708 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264041.P16794567612947818157

namespace A264041

/-- `record[A260708(abs(1-n))]` -/
def P16794567612947818157.Spec : Prop :=
  ∀ n, P16794567612947818157.a n = A264041 (n + 1)

end A264041

/-! ## A264041.P15175142013221862628

`filter[A260708(n), A023532(#)]`
-/

namespace A264041.P15175142013221862628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A264041.P15175142013221862628

namespace A264041

/-- `filter[A260708(n), A023532(#)]` -/
def P15175142013221862628.Spec : Prop :=
  ∀ n, P15175142013221862628.a n = A264041 (n + 1)

end A264041

/-! ## A264041.P9840146414536227713

`∩[A260708(n), A337843(n)]`
-/

namespace A264041.P9840146414536227713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260708 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264041.P9840146414536227713

namespace A264041

/-- `∩[A260708(n), A337843(n)]` -/
def P9840146414536227713.Spec : Prop :=
  ∀ n, (P9840146414536227713.a n : ℤ) = A264041 (n + 1)

end A264041

/-! ## A264041.P13193667780185276904

`A065033(A265228(n+1)+(n+1)²)`
-/

namespace A264041.P13193667780185276904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A265228 (n + 1) + ((n + 1) ^ 2 : ℤ)).toNat

end

end A264041.P13193667780185276904

namespace A264041

/-- `A065033(A265228(n+1)+(n+1)²)` -/
def P13193667780185276904.Spec : Prop :=
  ∀ n, P13193667780185276904.a n = A264041 (n + 1)

end A264041

/-!
# A264042: Prime numbers adjacent to Catalan numbers (A000108).

The programs for A264042, there is no canonical definition to state claims against.
-/

/-! ## A264042.P13031192666821943653

`p?[abs(1-A129996(n))]`
-/

namespace A264042.P13031192666821943653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A129996 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264042.P13031192666821943653

/-! ## A264042.P6969782466377265968

`p?[abs(Δ[A090192(n)]+1)]`
-/

namespace A264042.P6969782466377265968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264042.P6969782466377265968

/-! ## A264042.P15364843867021477772

`p?[and(2, n)+A208355(n)-1]`
-/

namespace A264042.P15364843867021477772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℤ) + (A208355 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264042.P15364843867021477772

/-! ## A264042.P8370604363999687177

`p?[abs(1-Δ[A126120(n+1)])]`
-/

namespace A264042.P8370604363999687177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f2 (n + 1) - f2 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264042.P8370604363999687177

/-! ## A264042.P18443751683970178236

`p?[abs(1-Δ[A105523(n+3)])]`
-/

namespace A264042.P18443751683970178236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f2 (n + 1) - f2 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A264042.P18443751683970178236

/-!
# A264043: Numbers n such that n and n+3 are consecutive semiprimes.

The programs for A264043, the canonical program `A264043.P15713331483502650701` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264043 has offset 1).

The definition of A264043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2659 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264043.P15713331483502650701

`A001358(eq[3, A001358(n+2)-A001358(n+1)]+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A264043

/-- `A001358(eq[3, A001358(n+2)-A001358(n+1)]+1)` -/
def P15713331483502650701.Spec : Prop :=
  ∀ n, P15713331483502650701.a n = A264043 (n + 1)

theorem P15713331483502650701.correct : P15713331483502650701.Spec := by
  intro n
  simp only [A264043, Nat.add_sub_cancel]

end A264043

/-! ## A264043.P9660598940593051832

`A001358(eq[3, A001358(n+2)%A001358(n+1)]+1)`
-/

namespace A264043.P9660598940593051832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 2)) (A001358 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A264043.P9660598940593051832

namespace A264043

/-- `A001358(eq[3, A001358(n+2)%A001358(n+1)]+1)` -/
def P9660598940593051832.Spec : Prop :=
  ∀ n, P9660598940593051832.a n = A264043 (n + 1)

end A264043

/-! ## A264043.P15084440621666216800

`A001358(eq[3, A065516(n+1)]+1)`
-/

namespace A264043.P15084440621666216800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A264043.P15084440621666216800

namespace A264043

/-- `A001358(eq[3, A065516(n+1)]+1)` -/
def P15084440621666216800.Spec : Prop :=
  ∀ n, P15084440621666216800.a n = A264043 (n + 1)

end A264043

/-! ## A264043.P4985675511866519995

`A001358(eq[3, Δ[A001358(n+1)]]+1)`
-/

namespace A264043.P4985675511866519995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A264043.P4985675511866519995

namespace A264043

/-- `A001358(eq[3, Δ[A001358(n+1)]]+1)` -/
def P4985675511866519995.Spec : Prop :=
  ∀ n, P4985675511866519995.a n = A264043 (n + 1)

theorem P4985675511866519995.correct : P4985675511866519995.Spec := by
  intro n
  simp only [A264043, Nat.add_sub_cancel, A264043.P4985675511866519995.f1, A264043.P4985675511866519995.f3, A264043.P4985675511866519995.f2, A264043.P4985675511866519995.a, A264043.P15713331483502650701.f1, A264043.P15713331483502650701.f2, A264043.P15713331483502650701.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A264043

/-! ## A264043.P8254507791724839008

`A186621(eq[3, A065516(n+1)]+1)+1`
-/

namespace A264043.P8254507791724839008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A264043.P8254507791724839008

namespace A264043

/-- `A186621(eq[3, A065516(n+1)]+1)+1` -/
def P8254507791724839008.Spec : Prop :=
  ∀ n, P8254507791724839008.a n = A264043 (n + 1)

end A264043

/-!
# A264044: Numbers n such that n and n+4 are consecutive semiprimes.

The programs for A264044, the canonical program `A264044.P3644257460516515542` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264044 has offset 1).

The definition of A264044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2948 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264044.P3644257460516515542

`A001358(eq[4, A001358(n+2)-A001358(n+1)]+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A264044

/-- `A001358(eq[4, A001358(n+2)-A001358(n+1)]+1)` -/
def P3644257460516515542.Spec : Prop :=
  ∀ n, P3644257460516515542.a n = A264044 (n + 1)

theorem P3644257460516515542.correct : P3644257460516515542.Spec := by
  intro n
  simp only [A264044, Nat.add_sub_cancel]

end A264044

/-! ## A264044.P7411419202130186937

`A001358(eq[4, A001358(n+2)%A001358(n+1)]+1)`
-/

namespace A264044.P7411419202130186937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 2)) (A001358 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A264044.P7411419202130186937

namespace A264044

/-- `A001358(eq[4, A001358(n+2)%A001358(n+1)]+1)` -/
def P7411419202130186937.Spec : Prop :=
  ∀ n, P7411419202130186937.a n = A264044 (n + 1)

end A264044

/-! ## A264044.P15836670954401957195

`A001358(eq[4, A065516(n+1)]+1)`
-/

namespace A264044.P15836670954401957195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A264044.P15836670954401957195

namespace A264044

/-- `A001358(eq[4, A065516(n+1)]+1)` -/
def P15836670954401957195.Spec : Prop :=
  ∀ n, P15836670954401957195.a n = A264044 (n + 1)

end A264044

/-! ## A264044.P1110101995968943833

`A186621(eq[4, A065516(n+1)]+1)+1`
-/

namespace A264044.P1110101995968943833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A264044.P1110101995968943833

namespace A264044

/-- `A186621(eq[4, A065516(n+1)]+1)+1` -/
def P1110101995968943833.Spec : Prop :=
  ∀ n, P1110101995968943833.a n = A264044 (n + 1)

end A264044

/-! ## A264044.P11184285496694897530

`∩[A175648(n+1), A272307(n+1)]`
-/

namespace A264044.P11184285496694897530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264044.P11184285496694897530

namespace A264044

/-- `∩[A175648(n+1), A272307(n+1)]` -/
def P11184285496694897530.Spec : Prop :=
  ∀ n, (P11184285496694897530.a n : ℤ) = A264044 (n + 1)

end A264044

/-!
# A264045: Numbers n such that n and n+5 are consecutive semiprimes.

The programs for A264045, the canonical program `A264045.P3139960365443262214` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264045 has offset 1).

The definition of A264045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 660 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264045.P3139960365443262214

`A001358(eq[5, A065516(n+1)]+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A264045

/-- `A001358(eq[5, A065516(n+1)]+1)` -/
def P3139960365443262214.Spec : Prop :=
  ∀ n, P3139960365443262214.a n = A264045 (n + 1)

theorem P3139960365443262214.correct : P3139960365443262214.Spec := by
  intro n
  simp only [A264045, Nat.add_sub_cancel]

end A264045

/-! ## A264045.P16345764521369126268

`A186621(eq[5, A065516(n+1)]+1)+1`
-/

namespace A264045.P16345764521369126268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A264045.P16345764521369126268

namespace A264045

/-- `A186621(eq[5, A065516(n+1)]+1)+1` -/
def P16345764521369126268.Spec : Prop :=
  ∀ n, P16345764521369126268.a n = A264045 (n + 1)

end A264045

/-!
# A264046: Numbers k such that k and k+6 are consecutive semiprimes.

The programs for A264046, the canonical program `A264046.P6763448481127490417` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264046 has offset 1).

The definition of A264046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 838 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264046.P6763448481127490417

`A186621(eq[6, A065516(n+1)]+1)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A264046

/-- `A186621(eq[6, A065516(n+1)]+1)+1` -/
def P6763448481127490417.Spec : Prop :=
  ∀ n, P6763448481127490417.a n = A264046 (n + 1)

theorem P6763448481127490417.correct : P6763448481127490417.Spec := by
  intro n
  simp only [A264046, Nat.add_sub_cancel]

end A264046

/-!
# A264048: Triangle read by rows: T(n,k) (n>=1, k>=1) is the number of integer partitions lambda of n such that there are k compositions mu such that the Gelfand-Tsetlin polytope for lambda and mu is integral.

The programs for A264048, there is no canonical definition to state claims against.
-/

/-! ## A264048.P2893720424501587787

`A322585(A286537(n+1)%A109104(n+1))`
-/

namespace A264048.P2893720424501587787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (Int.tmod (A286537 (n + 1)) (A109104 (n + 1))).toNat

end

end A264048.P2893720424501587787

/-! ## A264048.P2173823520938500727

`A322585(A286537(n+1)^A272181(n+1))`
-/

namespace A264048.P2173823520938500727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (SequenceMachineLib.roundAway ((A286537 (n + 1) : ℚ) ^ (A272181 (n + 1) : ℤ))).toNat

end

end A264048.P2173823520938500727

/-! ## A264048.P17912110376964559395

`A344438(A286537(n+1)^A272181(n+1))`
-/

namespace A264048.P17912110376964559395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344438 (SequenceMachineLib.roundAway ((A286537 (n + 1) : ℚ) ^ (A272181 (n + 1) : ℤ))).toNat

end

end A264048.P17912110376964559395

/-! ## A264048.P14986600694790108722

`A322585(A286537(n+1)^A098120(3*n+1))`
-/

namespace A264048.P14986600694790108722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (SequenceMachineLib.roundAway ((A286537 (n + 1) : ℚ) ^ (A098120 (3 * n + 1) : ℤ))).toNat

end

end A264048.P14986600694790108722

/-! ## A264048.P13604089895981508568

`floor(1/∏{e}[n*A195522(n+2), #])`
-/

namespace A264048.P13604089895981508568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A195522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)⌋

end

end A264048.P13604089895981508568

/-!
# A264050: a(n) = least m > 1 such that m + 2^n is prime.

The programs for A264050, there is no canonical definition to state claims against.
-/

/-! ## A264050.P13941418748037203912

`A151800(2^(n+1)+1)-2^(n+1)`
-/

namespace A264050.P13941418748037203912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 ^ (n + 1) + 1) - (2 ^ (n + 1) : ℤ)

end

end A264050.P13941418748037203912

/-! ## A264050.P5745819977435120859

`A000203(A151800(A048578(n)))-A048578(n)`
-/

namespace A264050.P5745819977435120859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A151800 (A048578 n).toNat).toNat - A048578 n

end

end A264050.P5745819977435120859

/-!
# A264051: Triangle read by rows: T(n,k) (n>=0, 0<=k<=A264078(n)) is the number of integer partitions of n having k standard Young tableaux such that no entries i and i+1 appear in the same row.

The programs for A264051, there is no canonical definition to state claims against.
-/

/-! ## A264051.P12110219325840747712

`A162544(n+1)%A058734(n)!`
-/

namespace A264051.P12110219325840747712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162544 (n + 1)) (Nat.factorial (A058734 n).toNat : ℤ)

end

end A264051.P12110219325840747712

/-! ## A264051.P14175293872525573176

`A162545(n+1)%A058734(n)!`
-/

namespace A264051.P14175293872525573176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162545 (n + 1)) (Nat.factorial (A058734 n).toNat : ℤ)

end

end A264051.P14175293872525573176

/-! ## A264051.P7417794442756830613

`A050166(n)%A358372(A067323(n))`
-/

namespace A264051.P7417794442756830613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050166 n) (A358372 (A067323 n).toNat)

end

end A264051.P7417794442756830613

/-! ## A264051.P5883650518416766492

`A075687(n)%A260717(A060426(n+4))`
-/

namespace A264051.P5883650518416766492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075687 n) (A260717 (A060426 (n + 4)).toNat)

end

end A264051.P5883650518416766492

/-! ## A264051.P4570758868441663054

`A124766(and(A084865(n+1), A129519(n)))`
-/

namespace A264051.P4570758868441663054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (Int.land (A084865 (n + 1)) (A129519 n)).toNat

end

end A264051.P4570758868441663054

/-!
# A264053: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

The programs for A264053, there is no canonical definition to state claims against.
-/

/-! ## A264053.P2951724804281612933

`A264059(∑[4*n]+1)`
-/

namespace A264053.P2951724804281612933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264053.P2951724804281612933

/-! ## A264053.P12525651848287941483

`record[A264059(∑[A266981(n)])]`
-/

namespace A264053.P12525651848287941483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264053.P12525651848287941483

/-! ## A264053.P7683375256145815525

`A264059(A001844(n))^ceil(acot(n))`
-/

namespace A264053.P7683375256145815525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264059 (A001844 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A264053.P7683375256145815525

/-!
# A264054: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

The programs for A264054, there is no canonical definition to state claims against.
-/

/-! ## A264054.P3050985151313136823

`A006500(Δ[n²])`
-/

namespace A264054.P3050985151313136823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A264054.P3050985151313136823

/-! ## A264054.P14703417430603468344

`record[A006500(A004442(n))]`
-/

namespace A264054.P14703417430603468344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264054.P14703417430603468344

/-! ## A264054.P3445185411872135272

`record[A006500(A093178(n))]`
-/

namespace A264054.P3445185411872135272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264054.P3445185411872135272

/-! ## A264054.P16510495675067766002

`2*A006500(2*n+1)-A006500(2*n+1)`
-/

namespace A264054.P16510495675067766002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006500 (2 * n + 1) - A006500 (2 * n + 1)

end

end A264054.P16510495675067766002

/-! ## A264054.P7512176840390184005

`2*A000079(n)²-A209399(2*n+1)`
-/

namespace A264054.P7512176840390184005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A209399 (2 * n + 1)

end

end A264054.P7512176840390184005

/-! ## A264054.P7874849117287481564

`A000079(2*n+1)-A209399(2*n+1)`
-/

namespace A264054.P7874849117287481564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A209399 (2 * n + 1)

end

end A264054.P7874849117287481564

/-! ## A264054.P11498487610908024329

`A000051(2*n+1)-(A209399(2*n+1)+1)`
-/

namespace A264054.P11498487610908024329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (2 * n + 1) - (A209399 (2 * n + 1) + 1)

end

end A264054.P11498487610908024329

/-! ## A264054.P6703746467043426557

`A000225(2*n+1)+1-A209399(2*n+1)`
-/

namespace A264054.P6703746467043426557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 1) + (1 - A209399 (2 * n + 1))

end

end A264054.P6703746467043426557

/-! ## A264054.P14841912375259551275

`A164387(2*n+1)+A209400(2*n+1)-A209399(2*n+1)`
-/

namespace A264054.P14841912375259551275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 (2 * n + 1) + (A209400 (2 * n + 1) - A209399 (2 * n + 1))

end

end A264054.P14841912375259551275

/-! ## A264054.P32390039518085374

`sqrt(A264055(n+1))`
-/

namespace A264054.P32390039518085374
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264055 (n + 1) : ℝ)

end

end A264054.P32390039518085374

/-! ## A264054.P14622558015871514330

`sqrt(A208743(2*(2*n+1)))`
-/

namespace A264054.P14622558015871514330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A208743 (2 * (2 * n + 1)) : ℝ)

end

end A264054.P14622558015871514330

/-! ## A264054.P17583844079847277435

`∩[A006500(2*n+1), A006500(n)]`
-/

namespace A264054.P17583844079847277435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264054.P17583844079847277435

/-! ## A264054.P16747922887463638374

`A006500(2*n+1)²/A006500(A004273(n+1))`
-/

namespace A264054.P16747922887463638374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006500 (2 * n + 1) ^ 2 : ℚ) / (A006500 (A004273 (n + 1)).toNat : ℚ)

end

end A264054.P16747922887463638374

/-! ## A264054.P1937434327646471991

`A006500(2*n+1)²/A006500(A004442(2*n))`
-/

namespace A264054.P1937434327646471991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006500 (2 * n + 1) ^ 2 : ℚ) / (A006500 (A004442 (2 * n)).toNat : ℚ)

end

end A264054.P1937434327646471991

/-! ## A264054.P13520032312993124988

`A006500(2*n+1)²/A006500(A093178(2*n+1))`
-/

namespace A264054.P13520032312993124988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006500 (2 * n + 1) ^ 2 : ℚ) / (A006500 (A093178 (2 * n + 1)).toNat : ℚ)

end

end A264054.P13520032312993124988

/-!
# A264055: Number of (n+1) X (3+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

The programs for A264055, there is no canonical definition to state claims against.
-/

/-! ## A264055.P6652115627495244377

`A264054(n+1)²`
-/

namespace A264055.P6652115627495244377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264054 (n + 1) ^ 2

end

end A264055.P6652115627495244377

/-! ## A264055.P2358303637872273879

`A006500(Δ[n²])²`
-/

namespace A264055.P2358303637872273879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A264055.P2358303637872273879

/-! ## A264055.P16692879395067867551

`A208743(4*n+2)`
-/

namespace A264055.P16692879395067867551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208743 (4 * n + 2)

end

end A264055.P16692879395067867551

/-! ## A264055.P14316822438271237045

`A006500(2*n+1)^2`
-/

namespace A264055.P14316822438271237045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 (2 * n + 1) ^ 2

end

end A264055.P14316822438271237045

/-! ## A264055.P5461469808851461829

`record[A006500(A004442(n))²]`
-/

namespace A264055.P5461469808851461829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 (A004442 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264055.P5461469808851461829

/-! ## A264055.P5975014325257496665

`record[A006500(A093178(n))²]`
-/

namespace A264055.P5975014325257496665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 (A093178 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264055.P5975014325257496665

/-! ## A264055.P1254563943849109717

`record[A208743(2*A099375(n))]`
-/

namespace A264055.P1254563943849109717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208743 (2 * A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264055.P1254563943849109717

/-! ## A264055.P3177902057408508049

`(2*A000079(n)²-A209399(2*n+1))²`
-/

namespace A264055.P3177902057408508049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000079 n ^ 2 - A209399 (2 * n + 1)) ^ 2

end

end A264055.P3177902057408508049

/-! ## A264055.P910982255240992006

`record[A208743(A099375(n)+A099375(n))]`
-/

namespace A264055.P910982255240992006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208743 (A099375 n + A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264055.P910982255240992006

/-! ## A264055.P11729455963692332901

`A006500(2*n+1)*A006500(A004273(n+1))`
-/

namespace A264055.P11729455963692332901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 (2 * n + 1) * A006500 (A004273 (n + 1)).toNat

end

end A264055.P11729455963692332901

/-! ## A264055.P4732163598591143746

`A006500(2*n+1)*A006500(A004442(2*n))`
-/

namespace A264055.P4732163598591143746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 (2 * n + 1) * A006500 (A004442 (2 * n)).toNat

end

end A264055.P4732163598591143746

/-! ## A264055.P5780598786245806963

`A006500(2*n+1)*A006500(record[A093178(n+1)])`
-/

namespace A264055.P5780598786245806963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 (2 * n + 1) * A006500 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A264055.P5780598786245806963

/-! ## A264055.P2289399504627221157

`A006500(2*n+1)*A006500(A093178(2*n+1))`
-/

namespace A264055.P2289399504627221157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 (2 * n + 1) * A006500 (A093178 (2 * n + 1)).toNat

end

end A264055.P2289399504627221157

/-! ## A264055.P15025820677081880176

`∩[A006500(2*n+1), A006500(n+1)]*A006500(2*n+1)`
-/

namespace A264055.P15025820677081880176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A006500 (2 * n + 1)

end

end A264055.P15025820677081880176

/-!
# A264056: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

The programs for A264056, there is no canonical definition to state claims against.
-/

/-! ## A264056.P8694860468708719775

`A264054(n+1)/A264143(n+1)*A264057(n+1)`
-/

namespace A264056.P8694860468708719775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264054 (n + 1) : ℚ) / (A264143 (n + 1) : ℚ) * (A264057 (n + 1) : ℚ)

end

end A264056.P8694860468708719775

/-! ## A264056.P2340581618149646318

`A264059(A141214(n+1))`
-/

namespace A264056.P2340581618149646318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (A141214 (n + 1)).toNat

end

end A264056.P2340581618149646318

/-! ## A264056.P10872576410115524697

`A264059(A055998(n+2))`
-/

namespace A264056.P10872576410115524697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (A055998 (n + 2)).toNat

end

end A264056.P10872576410115524697

/-! ## A264056.P1568272831755435007

`A264059(A155212(n)+5)`
-/

namespace A264056.P1568272831755435007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (A155212 n + 5).toNat

end

end A264056.P1568272831755435007

/-! ## A264056.P2908561032723396654

`A264059(A056000(n)+7)`
-/

namespace A264056.P2908561032723396654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (A056000 n + 7).toNat

end

end A264056.P2908561032723396654

/-!
# A264057: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

The programs for A264057, there is no canonical definition to state claims against.
-/

/-! ## A264057.P1654193729645791835

`A264056(n+1)/A264054(n+1)*A264143(n+1)`
-/

namespace A264057.P1654193729645791835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264056 (n + 1) : ℚ) / (A264054 (n + 1) : ℚ) * (A264143 (n + 1) : ℚ)

end

end A264057.P1654193729645791835

/-! ## A264057.P18157102546706600771

`A264059(A052905(n+3))`
-/

namespace A264057.P18157102546706600771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (A052905 (n + 3)).toNat

end

end A264057.P18157102546706600771

/-! ## A264057.P3074394899968024183

`A264059(A056119(n)+16)`
-/

namespace A264057.P3074394899968024183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (A056119 n + 16).toNat

end

end A264057.P3074394899968024183

/-! ## A264057.P13555119360698662977

`A264059(eq[3, A219347(n)])`
-/

namespace A264057.P13555119360698662977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264057.P13555119360698662977

/-!
# A264058: Number of (n+1) X (7+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

The programs for A264058, there is no canonical definition to state claims against.
-/

/-! ## A264058.P10015121809920101460

`A264143(n+1)²`
-/

namespace A264058.P10015121809920101460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264143 (n + 1) ^ 2

end

end A264058.P10015121809920101460

/-! ## A264058.P14712299645041467238

`record[A264143(A133310(n))²]`
-/

namespace A264058.P14712299645041467238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264143 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264058.P14712299645041467238

/-! ## A264058.P7701898458802187828

`A264143(n+1)^A000005(A151800(n))`
-/

namespace A264058.P7701898458802187828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264143 (n + 1) : ℚ) ^ (A000005 (A151800 n).toNat : ℤ)

end

end A264058.P7701898458802187828

/-! ## A264058.P5006353814163910462

`record[A264143(A133310(n))]*A264143(n+1)`
-/

namespace A264058.P5006353814163910462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264143 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A264143 (n + 1)

end

end A264058.P5006353814163910462

/-! ## A264058.P4699522690984069264

`A264143(n+1)^A000005(A006512(n+1))`
-/

namespace A264058.P4699522690984069264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264143 (n + 1) : ℚ) ^ (A000005 (A006512 (n + 1)).toNat : ℤ)

end

end A264058.P4699522690984069264

/-!
# A264060: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

The programs for A264060, the canonical program `A264060.P9620023887964227685` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264060 has offset 1).

The definition of A264060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264060.P9620023887964227685

`A006498(n+2)^3`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A264060

/-- `A006498(n+2)^3` -/
def P9620023887964227685.Spec : Prop :=
  ∀ n, P9620023887964227685.a n = A264060 (n + 1)

theorem P9620023887964227685.correct : P9620023887964227685.Spec := by
  intro n
  simp only [A264060, Nat.add_sub_cancel]

end A264060

/-! ## A264060.P13264040268240073856

`A074677(n+3)^3`
-/

namespace A264060.P13264040268240073856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 3) ^ 3

end

end A264060.P13264040268240073856

namespace A264060

/-- `A074677(n+3)^3` -/
def P13264040268240073856.Spec : Prop :=
  ∀ n, P13264040268240073856.a n = A264060 (n + 1)

end A264060

/-! ## A264060.P4521996456369015044

`sqrt(A189145(n+2))^3`
-/

namespace A264060.P4521996456369015044
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A189145 (n + 2) : ℝ) ^ 3

end

end A264060.P4521996456369015044

namespace A264060

/-- `sqrt(A189145(n+2))^3` -/
def P4521996456369015044.Spec : Prop :=
  ∀ n, P4521996456369015044.a n = (A264060 (n + 1) : ℝ)

end A264060

/-! ## A264060.P3428260254797729827

`Δ[A097083(n+2)]^3`
-/

namespace A264060.P3428260254797729827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A264060.P3428260254797729827

namespace A264060

/-- `Δ[A097083(n+2)]^3` -/
def P3428260254797729827.Spec : Prop :=
  ∀ n, P3428260254797729827.a n = A264060 (n + 1)

end A264060

/-! ## A264060.P2316160964884068717

`sqrt(A031923(2*n+1))^3`
-/

namespace A264060.P2316160964884068717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A031923 (2 * n + 1) : ℝ) ^ 3

end

end A264060.P2316160964884068717

namespace A264060

/-- `sqrt(A031923(2*n+1))^3` -/
def P2316160964884068717.Spec : Prop :=
  ∀ n, P2316160964884068717.a n = (A264060 (n + 1) : ℝ)

end A264060

/-! ## A264060.P11108166451525304534

`record[A006498(A057979(n))^3]`
-/

namespace A264060.P11108166451525304534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (A057979 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264060.P11108166451525304534

namespace A264060

/-- `record[A006498(A057979(n))^3]` -/
def P11108166451525304534.Spec : Prop :=
  ∀ n, P11108166451525304534.a n = A264060 (n + 1)

end A264060

/-! ## A264060.P11854459922406768176

`(A020695(n)-A006498(n))^3`
-/

namespace A264060.P11854459922406768176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020695 n - A006498 n) ^ 3

end

end A264060.P11854459922406768176

namespace A264060

/-- `(A020695(n)-A006498(n))^3` -/
def P11854459922406768176.Spec : Prop :=
  ∀ n, P11854459922406768176.a n = A264060 (n + 1)

end A264060

/-! ## A264060.P16233550914231302306

`A006498(n+2)*A189145(n+2)`
-/

namespace A264060.P16233550914231302306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (n + 2) * A189145 (n + 2)

end

end A264060.P16233550914231302306

namespace A264060

/-- `A006498(n+2)*A189145(n+2)` -/
def P16233550914231302306.Spec : Prop :=
  ∀ n, P16233550914231302306.a n = A264060 (n + 1)

end A264060

/-! ## A264060.P8705657842268561345

`A006498(n+2)*A031923(2*n+1)`
-/

namespace A264060.P8705657842268561345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (n + 2) * A031923 (2 * n + 1)

end

end A264060.P8705657842268561345

namespace A264060

/-- `A006498(n+2)*A031923(2*n+1)` -/
def P8705657842268561345.Spec : Prop :=
  ∀ n, P8705657842268561345.a n = A264060 (n + 1)

end A264060

/-! ## A264060.P17820001452635253976

`A031923(2*n+1)*A074677(n+3)`
-/

namespace A264060.P17820001452635253976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (2 * n + 1) * A074677 (n + 3)

end

end A264060.P17820001452635253976

namespace A264060

/-- `A031923(2*n+1)*A074677(n+3)` -/
def P17820001452635253976.Spec : Prop :=
  ∀ n, P17820001452635253976.a n = A264060 (n + 1)

end A264060

/-!
# A264061: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

The programs for A264061, there is no canonical definition to state claims against.
-/

/-! ## A264061.P2255656455359238801

`A264059(∑[n+3]+7)`
-/

namespace A264061.P2255656455359238801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264061.P2255656455359238801

/-! ## A264061.P17096680459997818007

`A264059(A055999(n)+10)%A141151(n+4)`
-/

namespace A264061.P17096680459997818007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264059 (A055999 n + 10).toNat) (A141151 (n + 4))

end

end A264061.P17096680459997818007

/-!
# A264062: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

The programs for A264062, there is no canonical definition to state claims against.
-/

/-! ## A264062.P8279814310081637089

`A264059(A167499(n+3))`
-/

namespace A264062.P8279814310081637089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (A167499 (n + 3)).toNat

end

end A264062.P8279814310081637089

/-! ## A264062.P17334860207585017737

`A264059(A155212(n)+13)`
-/

namespace A264062.P17334860207585017737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (A155212 n + 13).toNat

end

end A264062.P17334860207585017737

/-! ## A264062.P16732998276922686117

`A264059(A056000(n)+15)`
-/

namespace A264062.P16732998276922686117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (A056000 n + 15).toNat

end

end A264062.P16732998276922686117

/-! ## A264062.P2942507442012881776

`A264059(eq[7, A066657(n)])`
-/

namespace A264062.P2942507442012881776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264062.P2942507442012881776

/-! ## A264062.P10903464492425566308

`A264059(A000217(n+4)+5)`
-/

namespace A264062.P10903464492425566308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (A000217 (n + 4) + 5).toNat

end

end A264062.P10903464492425566308

/-!
# A264063: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

The programs for A264063, there is no canonical definition to state claims against.
-/

/-! ## A264063.P14111751297698876801

`A264059(eq[6, A256910(n)])`
-/

namespace A264063.P14111751297698876801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264063.P14111751297698876801

/-! ## A264063.P3320928301381161165

`A264059(A167499(n+4)+1)`
-/

namespace A264063.P3320928301381161165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (A167499 (n + 4) + 1).toNat

end

end A264063.P3320928301381161165

/-! ## A264063.P5837323736914082007

`A264059(A000217(n+5)+6)`
-/

namespace A264063.P5837323736914082007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (A000217 (n + 5) + 6).toNat

end

end A264063.P5837323736914082007

/-! ## A264063.P14920368790886504003

`A264059(eq[7, A131818(n+1)])`
-/

namespace A264063.P14920368790886504003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264063.P14920368790886504003

/-! ## A264063.P6129221812223341305

`A264059(eq[A002260(n+1), A186684(n+1)])`
-/

namespace A264063.P6129221812223341305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A264063.P6129221812223341305

/-!
# A264064: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

The programs for A264064, there is no canonical definition to state claims against.
-/

/-! ## A264064.P3855147074285624680

`A264059(C(n+7, 2)+7)`
-/

namespace A264064.P3855147074285624680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (Nat.choose (n + 7) 2 + 7)

end

end A264064.P3855147074285624680

/-! ## A264064.P17226269821768394833

`A264059(A167487(n+5))`
-/

namespace A264064.P17226269821768394833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (A167487 (n + 5)).toNat

end

end A264064.P17226269821768394833

/-! ## A264064.P17818074822808754455

`A264059(A056119(n)+28)`
-/

namespace A264064.P17818074822808754455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264059 (A056119 n + 28).toNat

end

end A264064.P17818074822808754455

/-!
# A264066: Number of (n+1) X (n+1) arrays of permutations of 0..(n+1)^2-1 with each element having index change +-(.,.) 0,0 1,1 or 1,2.

The programs for A264066, there is no canonical definition to state claims against.
-/

/-! ## A264066.P6480440173293835942

`A264071((n+1)²+n²)`
-/

namespace A264066.P6480440173293835942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 ((n + 1) ^ 2 + n ^ 2)

end

end A264066.P6480440173293835942

/-! ## A264066.P4159396093808568409

`record[A264071(A330613(n+1))]`
-/

namespace A264066.P4159396093808568409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264066.P4159396093808568409

/-! ## A264066.P4356824551433061961

`record[A003982(n)*A264071(n+1)]`
-/

namespace A264066.P4356824551433061961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A264071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264066.P4356824551433061961

/-! ## A264066.P17947581183943928072

`A264071(A001844(n))+A230533(n+1)`
-/

namespace A264066.P17947581183943928072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A001844 n).toNat + A230533 (n + 1)

end

end A264066.P17947581183943928072

/-!
# A264067: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 1,1 or 1,2.

The programs for A264067, there is no canonical definition to state claims against.
-/

/-! ## A264067.P14539656286306734110

`A264071(A141214(n+1))`
-/

namespace A264067.P14539656286306734110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A141214 (n + 1)).toNat

end

end A264067.P14539656286306734110

/-! ## A264067.P830408712542645707

`A264071(A056000(n)+7)`
-/

namespace A264067.P830408712542645707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A056000 n + 7).toNat

end

end A264067.P830408712542645707

/-! ## A264067.P16647288004565723406

`A264071(eq[3, A193592(n)])`
-/

namespace A264067.P16647288004565723406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264067.P16647288004565723406

/-! ## A264067.P12847642862905545484

`A264071(ratio[-∏[A141214(n)]])`
-/

namespace A264067.P12847642862905545484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A264067.P12847642862905545484

/-! ## A264067.P6636850778328110232

`A264071(A052905(n+1)+2)`
-/

namespace A264067.P6636850778328110232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A052905 (n + 1) + 2).toNat

end

end A264067.P6636850778328110232

/-!
# A264068: Number of (n+1) X (5+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 1,1 or 1,2.

The programs for A264068, there is no canonical definition to state claims against.
-/

/-! ## A264068.P2515428490193352137

`A264071(Δ[A264443(n)])`
-/

namespace A264068.P2515428490193352137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (f1 (n + 1) - f1 n).toNat

end

end A264068.P2515428490193352137

/-! ## A264068.P8779507370023164453

`A264071(A056115(n)+11)`
-/

namespace A264068.P8779507370023164453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A056115 n + 11).toNat

end

end A264068.P8779507370023164453

/-! ## A264068.P15818370866621712295

`A264071(eq[4, A193592(n)])`
-/

namespace A264068.P15818370866621712295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264068.P15818370866621712295

/-! ## A264068.P18184120919923631847

`A264071(eq[5, A239144(n)])`
-/

namespace A264068.P18184120919923631847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264068.P18184120919923631847

/-! ## A264068.P18052881802122716070

`A264071(Δ[A023545(n+1)])`
-/

namespace A264068.P18052881802122716070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (f1 (n + 1) - f1 n).toNat

end

end A264068.P18052881802122716070

/-!
# A264069: Number of (n+1) X (6+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 1,1 or 1,2.

The programs for A264069, there is no canonical definition to state claims against.
-/

/-! ## A264069.P2242442233802973605

`A264071(A052905(n+3))`
-/

namespace A264069.P2242442233802973605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A052905 (n + 3)).toNat

end

end A264069.P2242442233802973605

/-! ## A264069.P12124697284812196904

`A264071(eq[3, A219347(n)])`
-/

namespace A264069.P12124697284812196904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264069.P12124697284812196904

/-! ## A264069.P3450569559657108761

`A264071(eq[5, A193592(n)])`
-/

namespace A264069.P3450569559657108761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264069.P3450569559657108761

/-! ## A264069.P14273335845288155154

`A264071(A000096(n+5)-4)`
-/

namespace A264069.P14273335845288155154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A000096 (n + 5) - 4).toNat

end

end A264069.P14273335845288155154

/-! ## A264069.P8184169746780959096

`A264071(eq[6, A200370(n+1)])`
-/

namespace A264069.P8184169746780959096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264069.P8184169746780959096

/-!
# A264070: Number of (n+1) X (7+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 1,1 or 1,2.

The programs for A264070, there is no canonical definition to state claims against.
-/

/-! ## A264070.P8457623897941317758

`A264071(eq[6, A193592(n)])`
-/

namespace A264070.P8457623897941317758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264070.P8457623897941317758

/-! ## A264070.P1588789203461578283

`A264071(eq[2, A219347(n)-2])`
-/

namespace A264070.P1588789203461578283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264070.P1588789203461578283

/-!
# A264072: Number of (3+1) X (n+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 1,1 or 1,2.

The programs for A264072, there is no canonical definition to state claims against.
-/

/-! ## A264072.P9316407059600216573

`sqrt(A264016(n+1))`
-/

namespace A264072.P9316407059600216573
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264016 (n + 1) : ℝ)

end

end A264072.P9316407059600216573

/-! ## A264072.P13481864133637237496

`A264071(∑[n+2]+4)`
-/

namespace A264072.P13481864133637237496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264072.P13481864133637237496

/-! ## A264072.P8736234905548309030

`A264071(A167614(n+1))+A185284(n)`
-/

namespace A264072.P8736234905548309030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A167614 (n + 1)).toNat + A185284 n

end

end A264072.P8736234905548309030

/-! ## A264072.P10875657556962011252

`A015550(n)*A264071(A167614(n+1))`
-/

namespace A264072.P10875657556962011252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015550 n * A264071 (A167614 (n + 1)).toNat

end

end A264072.P10875657556962011252

/-! ## A264072.P1544271891107336202

`lcm(A087960(n), A264071(A167614(n+1)))`
-/

namespace A264072.P1544271891107336202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A264071 (A167614 (n + 1)).toNat)

end

end A264072.P1544271891107336202

/-!
# A264073: Number of (4+1) X (n+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 1,1 or 1,2.

The programs for A264073, there is no canonical definition to state claims against.
-/

/-! ## A264073.P4123534448239430542

`A264071(A141214(n)+7)`
-/

namespace A264073.P4123534448239430542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A141214 n + 7).toNat

end

end A264073.P4123534448239430542

/-! ## A264073.P12176956879018428154

`A264071(A052905(n)+9)`
-/

namespace A264073.P12176956879018428154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A052905 n + 9).toNat

end

end A264073.P12176956879018428154

/-! ## A264073.P11571673785401664816

`A264071(A055999(n)+10)`
-/

namespace A264073.P11571673785401664816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A055999 n + 10).toNat

end

end A264073.P11571673785401664816

/-! ## A264073.P7508411453458139175

`A264071(A167614(n+2)+1)`
-/

namespace A264073.P7508411453458139175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A167614 (n + 2) + 1).toNat

end

end A264073.P7508411453458139175

/-! ## A264073.P3971992860275723805

`A264071(eq[5, A131818(n+1)])`
-/

namespace A264073.P3971992860275723805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264073.P3971992860275723805

/-!
# A264074: Number of (5+1) X (n+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 1,1 or 1,2.

The programs for A264074, there is no canonical definition to state claims against.
-/

/-! ## A264074.P2214368384282787610

`A264071(A167499(n+3))`
-/

namespace A264074.P2214368384282787610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A167499 (n + 3)).toNat

end

end A264074.P2214368384282787610

/-! ## A264074.P13546433196659529104

`A264071(A155212(n)+13)`
-/

namespace A264074.P13546433196659529104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A155212 n + 13).toNat

end

end A264074.P13546433196659529104

/-! ## A264074.P6716815273051014059

`A264071(eq[7, A066657(n)])`
-/

namespace A264074.P6716815273051014059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264074.P6716815273051014059

/-! ## A264074.P1988127570840698669

`A264071(A000217(n+4)+5)`
-/

namespace A264074.P1988127570840698669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A000217 (n + 4) + 5).toNat

end

end A264074.P1988127570840698669

/-! ## A264074.P1452429533709478033

`A264071(A046691(n+2)+9)`
-/

namespace A264074.P1452429533709478033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A046691 (n + 2) + 9).toNat

end

end A264074.P1452429533709478033

/-!
# A264075: Number of (6+1) X (n+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 1,1 or 1,2.

The programs for A264075, there is no canonical definition to state claims against.
-/

/-! ## A264075.P12979474653607994331

`A264071(A056115(n)+21)`
-/

namespace A264075.P12979474653607994331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A056115 n + 21).toNat

end

end A264075.P12979474653607994331

/-! ## A264075.P3744253530818065886

`A264071(A167614(n+4)+3)`
-/

namespace A264075.P3744253530818065886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A167614 (n + 4) + 3).toNat

end

end A264075.P3744253530818065886

/-! ## A264075.P4826100919378896679

`A264071(A246172(n+1)+20)`
-/

namespace A264075.P4826100919378896679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (A246172 (n + 1) + 20).toNat

end

end A264075.P4826100919378896679

/-! ## A264075.P15023594013317847466

`A264071(eq[5, A002262(n)]+1)`
-/

namespace A264075.P15023594013317847466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A264075.P15023594013317847466

/-! ## A264075.P4863227362504831743

`A264071(eq[7, A131818(n+1)])`
-/

namespace A264075.P4863227362504831743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264075.P4863227362504831743

/-!
# A264076: Number of (7+1) X (n+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 1,1 or 1,2.

The programs for A264076, there is no canonical definition to state claims against.
-/

/-! ## A264076.P10324625789793282596

`A264071(eq[8, A131818(n+1)])`
-/

namespace A264076.P10324625789793282596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264076.P10324625789793282596

/-! ## A264076.P12418686295467226094

`A264071(eq[7, A002260(n+1)]+1)`
-/

namespace A264076.P12418686295467226094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A264076.P12418686295467226094

/-!
# A264078: The maximal number of standard Young tableaux without a succession v, v+1 in a row that a single partition of n can have.

The programs for A264078, there is no canonical definition to state claims against.
-/

/-! ## A264078.P780326731649722607

`A071854(A257386(n+1))`
-/

namespace A264078.P780326731649722607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071854 (A257386 (n + 1)).toNat

end

end A264078.P780326731649722607

/-! ## A264078.P3730798845101665341

`A135660(A351937(n)+2)`
-/

namespace A264078.P3730798845101665341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A351937 n + 2).toNat

end

end A264078.P3730798845101665341

/-! ## A264078.P16114049254796339377

`∑{d}[A253832(n), A103689(#)]`
-/

namespace A264078.P16114049254796339377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A103689 d

end

end A264078.P16114049254796339377

/-! ## A264078.P16586403012736619313

`A112995(∑[A318027(n)-n])`
-/

namespace A264078.P16586403012736619313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318027 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A264078.P16586403012736619313

/-! ## A264078.P8806437437367127485

`A135660(A232215(n)+A111820(n))`
-/

namespace A264078.P8806437437367127485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A232215 n + A111820 n).toNat

end

end A264078.P8806437437367127485

/-!
# A264079: Expansion of b(2)*b(6)/(1 - 2*x + x^3 - x^4 - x^5 + 2*x^6), where b(k) = (1-x^k)/(1-x).

The programs for A264079, the canonical program `A264079.P8381061560601432334` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264079 has offset 0).

The definition of A264079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264079.P8381061560601432334

`2*a(n-1)-a(n-3)+a(n-4)+a(n-5)-2*a(n-6)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=21, a(4)=41, a(5)=79, a(6)=150`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A264079

/-- `2*a(n-1)-a(n-3)+a(n-4)+a(n-5)-2*a(n-6)` -/
def P8381061560601432334.Spec : Prop :=
  ∀ n, P8381061560601432334.a n = A264079 n

theorem P8381061560601432334.correct : P8381061560601432334.Spec := by
  intro n
  simp only [A264079]

end A264079

/-! ## A264079.P5363923670688513238

`∑[A249728(∑[A259273(n)])]`
-/

namespace A264079.P5363923670688513238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264079.P5363923670688513238

namespace A264079

/-- `∑[A249728(∑[A259273(n)])]` -/
def P5363923670688513238.Spec : Prop :=
  ∀ n, P5363923670688513238.a n = A264079 n

end A264079

/-! ## A264079.P10607365702067076261

`∑[A002024(A255299(n))]`
-/

namespace A264079.P10607365702067076261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A255299 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264079.P10607365702067076261

namespace A264079

/-- `∑[A002024(A255299(n))]` -/
def P10607365702067076261.Spec : Prop :=
  ∀ n, P10607365702067076261.a n = A264079 n

end A264079

/-! ## A264079.P5809628854115817684

`∑[A055086(Δ[A005807(n)])]`
-/

namespace A264079.P5809628854115817684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264079.P5809628854115817684

namespace A264079

/-- `∑[A055086(Δ[A005807(n)])]` -/
def P5809628854115817684.Spec : Prop :=
  ∀ n, P5809628854115817684.a n = A264079 n

end A264079

/-!
# A264080: a(n) = 6*F(n)*F(n+1) + (-1)^n, where F = A000045.

The programs for A264080, the canonical program `A264080.P2229784086452861015` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264080 has offset 0).

The definition of A264080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264080.P2229784086452861015

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=13`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A264080

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P2229784086452861015.Spec : Prop :=
  ∀ n, P2229784086452861015.a n = A264080 n

theorem P2229784086452861015.correct : P2229784086452861015.Spec := by
  intro n
  simp only [A264080]

end A264080

/-! ## A264080.P6084312154288234185

`A002878(n)+A001654(n)`
-/

namespace A264080.P6084312154288234185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n + A001654 n

end

end A264080.P6084312154288234185

namespace A264080

/-- `A002878(n)+A001654(n)` -/
def P6084312154288234185.Spec : Prop :=
  ∀ n, P6084312154288234185.a n = A264080 n

end A264080

/-! ## A264080.P5390447688754861746

`or(1, floor(ϕ²*a(n-1)))` with `a(0)=1, a(1)=5`
-/

namespace A264080.P5390447688754861746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  Int.lor 1 ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋

end

end A264080.P5390447688754861746

namespace A264080

/-- `or(1, floor(ϕ²*a(n-1)))` -/
def P5390447688754861746.Spec : Prop :=
  ∀ n, P5390447688754861746.a n = A264080 n

end A264080

/-! ## A264080.P8985755961461588835

`or(1, floor(ϕ*ϕ*a(n-1)))` with `a(0)=1, a(1)=5`
-/

namespace A264080.P8985755961461588835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  Int.lor 1 ⌊Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A264080.P8985755961461588835

namespace A264080

/-- `or(1, floor(ϕ*ϕ*a(n-1)))` -/
def P8985755961461588835.Spec : Prop :=
  ∀ n, P8985755961461588835.a n = A264080 n

end A264080

/-! ## A264080.P1218772667812312634

`∑[2*A099016(n)]-1`
-/

namespace A264080.P1218772667812312634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A264080.P1218772667812312634

namespace A264080

/-- `∑[2*A099016(n)]-1` -/
def P1218772667812312634.Spec : Prop :=
  ∀ n, P1218772667812312634.a n = A264080 n

end A264080

/-! ## A264080.P8460666349299122851

`A099857(n)-a(n-1)` with `a(0)=1`
-/

namespace A264080.P8460666349299122851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099857 n - a (n - 1)

end

end A264080.P8460666349299122851

namespace A264080

/-- `A099857(n)-a(n-1)` -/
def P8460666349299122851.Spec : Prop :=
  ∀ n, P8460666349299122851.a n = A264080 n

end A264080

/-! ## A264080.P4774250773921929017

`round(6*A000032(2*n+1)/5)`
-/

namespace A264080.P4774250773921929017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (6 * ((A000032 (2 * n + 1) : ℚ) / 5))

end

end A264080.P4774250773921929017

namespace A264080

/-- `round(6*A000032(2*n+1)/5)` -/
def P4774250773921929017.Spec : Prop :=
  ∀ n, P4774250773921929017.a n = A264080 n

end A264080

/-! ## A264080.P8553858024579933013

`6*A000045(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A264080.P8553858024579933013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * A000045 (2 * n) - a (n - 1)

end

end A264080.P8553858024579933013

namespace A264080

/-- `6*A000045(2*n)-a(n-1)` -/
def P8553858024579933013.Spec : Prop :=
  ∀ n, P8553858024579933013.a n = A264080 n

end A264080

/-! ## A264080.P6207478590801898045

`A120718(n)+A014742(n)`
-/

namespace A264080.P6207478590801898045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120718 n + A014742 n

end

end A264080.P6207478590801898045

namespace A264080

/-- `A120718(n)+A014742(n)` -/
def P6207478590801898045.Spec : Prop :=
  ∀ n, P6207478590801898045.a n = A264080 n

end A264080

/-! ## A264080.P11048879039775001948

`A192920(n)+A192914(n)`
-/

namespace A264080.P11048879039775001948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192920 n + A192914 n

end

end A264080.P11048879039775001948

namespace A264080

/-- `A192920(n)+A192914(n)` -/
def P11048879039775001948.Spec : Prop :=
  ∀ n, P11048879039775001948.a n = A264080 n

end A264080

/-! ## A264080.P13805954783153328183

`A260259(n)+A215602(n)`
-/

namespace A264080.P13805954783153328183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 n + A215602 n

end

end A264080.P13805954783153328183

namespace A264080

/-- `A260259(n)+A215602(n)` -/
def P13805954783153328183.Spec : Prop :=
  ∀ n, P13805954783153328183.a n = A264080 n

end A264080

/-! ## A264080.P3654676324763710958

`A054492(n)-A192879(n)`
-/

namespace A264080.P3654676324763710958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054492 n - A192879 n

end

end A264080.P3654676324763710958

namespace A264080

/-- `A054492(n)-A192879(n)` -/
def P3654676324763710958.Spec : Prop :=
  ∀ n, P3654676324763710958.a n = A264080 n

end A264080

/-! ## A264080.P17921436392178286685

`A107387(n)+A027941(n+1)`
-/

namespace A264080.P17921436392178286685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107387 n + A027941 (n + 1)

end

end A264080.P17921436392178286685

namespace A264080

/-- `A107387(n)+A027941(n+1)` -/
def P17921436392178286685.Spec : Prop :=
  ∀ n, P17921436392178286685.a n = A264080 n

end A264080

/-! ## A264080.P11158567662190772707

`A014742(n+1)-A099016(n)`
-/

namespace A264080.P11158567662190772707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014742 (n + 1) - A099016 n

end

end A264080.P11158567662190772707

namespace A264080

/-- `A014742(n+1)-A099016(n)` -/
def P11158567662190772707.Spec : Prop :=
  ∀ n, P11158567662190772707.a n = A264080 n

end A264080

/-! ## A264080.P4839282318673683392

`A110035(n+1)-A110034(n)`
-/

namespace A264080.P4839282318673683392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 (n + 1) - A110034 n

end

end A264080.P4839282318673683392

namespace A264080

/-- `A110035(n+1)-A110034(n)` -/
def P4839282318673683392.Spec : Prop :=
  ∀ n, P4839282318673683392.a n = A264080 n

end A264080

/-! ## A264080.P2905238739221707543

`A001654(n+2)-A001519(n)`
-/

namespace A264080.P2905238739221707543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 2) - A001519 n

end

end A264080.P2905238739221707543

namespace A264080

/-- `A001654(n+2)-A001519(n)` -/
def P2905238739221707543.Spec : Prop :=
  ∀ n, P2905238739221707543.a n = A264080 n

end A264080

/-! ## A264080.P5981901587710601418

`A033999(n)+2*A120718(n)`
-/

namespace A264080.P5981901587710601418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 2 * A120718 n

end

end A264080.P5981901587710601418

namespace A264080

/-- `A033999(n)+2*A120718(n)` -/
def P5981901587710601418.Spec : Prop :=
  ∀ n, P5981901587710601418.a n = A264080 n

end A264080

/-!
# A264081: The sum of the 2 X 2 idempotent matrices over Z/nZ is congruent to {{a(n),0}, {0,a(n)}} (mod n).

The programs for A264081, there is no canonical definition to state claims against.
-/

/-! ## A264081.P1656925991003547182

`A001281(A226756(n+1))%(n+1)`
-/

namespace A264081.P1656925991003547182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001281 (A226756 (n + 1)).toNat) (n + 1 : ℤ)

end

end A264081.P1656925991003547182

/-! ## A264081.P9968469152208378191

`A226756(n+1)%A103517(n)/2`
-/

namespace A264081.P9968469152208378191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A226756 (n + 1)) (A103517 n) : ℚ) / 2

end

end A264081.P9968469152208378191

/-! ## A264081.P2633707258944744378

`A001281(A226756(n+1)%A103517(n))`
-/

namespace A264081.P2633707258944744378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.tmod (A226756 (n + 1)) (A103517 n)).toNat

end

end A264081.P2633707258944744378

/-! ## A264081.P1874031815383426814

`A006370(A226756(n+1))%A000027(n+1)`
-/

namespace A264081.P1874031815383426814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006370 (A226756 (n + 1)).toNat) (A000027 (n + 1))

end

end A264081.P1874031815383426814

/-! ## A264081.P4638513561749043478

`A106619(A226756(n+1))%A105811(n+3)`
-/

namespace A264081.P4638513561749043478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106619 (A226756 (n + 1)).toNat) (A105811 (n + 3))

end

end A264081.P4638513561749043478

/-!
# A264082: Total number of inversions in all set partitions of [n].

The programs for A264082, there is no canonical definition to state claims against.
-/

/-! ## A264082.P15615650722000854787

`A114719(A032101(n+1))`
-/

namespace A264082.P15615650722000854787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114719 (A032101 (n + 1)).toNat

end

end A264082.P15615650722000854787

/-! ## A264082.P12430417790166074504

`A114719(A088809(n)+1)`
-/

namespace A264082.P12430417790166074504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114719 (A088809 n + 1).toNat

end

end A264082.P12430417790166074504

/-! ## A264082.P9882905469004902015

`A127426(n)+A081308(A000272(n))`
-/

namespace A264082.P9882905469004902015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127426 n + A081308 (A000272 n).toNat

end

end A264082.P9882905469004902015

/-!
# A264083: Number of orthogonal 3 X 3 matrices over the ring Z/nZ.

The programs for A264083, there is no canonical definition to state claims against.
-/

/-! ## A264083.P16374039974152408598

`A004015(A006975(n)-A339658(n+1))`
-/

namespace A264083.P16374039974152408598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (A006975 n - A339658 (n + 1)).toNat

end

end A264083.P16374039974152408598

/-! ## A264083.P13702328476023319026

`A000056(n+1)*A256980(A064411(n+1))`
-/

namespace A264083.P13702328476023319026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000056 (n + 1) * A256980 (A064411 (n + 1)).toNat

end

end A264083.P13702328476023319026

/-!
# A264084: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

The programs for A264084, there is no canonical definition to state claims against.
-/

/-! ## A264084.P11165358393862986986

`A264090(∑[4*n]+1)`
-/

namespace A264084.P11165358393862986986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264084.P11165358393862986986

/-!
# A264085: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

The programs for A264085, the canonical program `A264085.P7370104754431209918` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264085 has offset 1).

The definition of A264085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264085.P7370104754431209918

`4*a(n-1)+4*a(n-3)+a(n-4)` with `a(0)=9, a(1)=39, a(2)=169, a(3)=715`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A264085

/-- `4*a(n-1)+4*a(n-3)+a(n-4)` -/
def P7370104754431209918.Spec : Prop :=
  ∀ n, (P7370104754431209918.a n : ℤ) = A264085 (n + 1)

theorem P7370104754431209918.correct : P7370104754431209918.Spec := by
  intro n
  simp only [A264085, Nat.add_sub_cancel]

end A264085

/-! ## A264085.P10611398607295369327

`A195971(3*n+5)`
-/

namespace A264085.P10611398607295369327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 (3 * n + 5)

end

end A264085.P10611398607295369327

namespace A264085

/-- `A195971(3*n+5)` -/
def P10611398607295369327.Spec : Prop :=
  ∀ n, P10611398607295369327.a n = A264085 (n + 1)

end A264085

/-! ## A264085.P12294918136934344055

`record[A195971(A014682(n+3))]`
-/

namespace A264085.P12294918136934344055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 (A014682 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264085.P12294918136934344055

namespace A264085

/-- `record[A195971(A014682(n+3))]` -/
def P12294918136934344055.Spec : Prop :=
  ∀ n, P12294918136934344055.a n = A264085 (n + 1)

end A264085

/-! ## A264085.P6966112975523119862

`A264106(n+1)+A056594(n+1)`
-/

namespace A264085.P6966112975523119862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264106 (n + 1) + A056594 (n + 1)

end

end A264085.P6966112975523119862

namespace A264085

/-- `A264106(n+1)+A056594(n+1)` -/
def P6966112975523119862.Spec : Prop :=
  ∀ n, P6966112975523119862.a n = A264085 (n + 1)

end A264085

/-! ## A264085.P619041482008472890

`A015448(n+1)+A264018(n+1)+A048876(n+1)`
-/

namespace A264085.P619041482008472890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 (n + 1) + (A264018 (n + 1) + A048876 (n + 1))

end

end A264085.P619041482008472890

namespace A264085

/-- `A015448(n+1)+A264018(n+1)+A048876(n+1)` -/
def P619041482008472890.Spec : Prop :=
  ∀ n, P619041482008472890.a n = A264085 (n + 1)

end A264085

/-! ## A264085.P12371141504572614923

`A264106(n+1)+A039991(∑[n+2])`
-/

namespace A264085.P12371141504572614923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264106 (n + 1) + A039991 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264085.P12371141504572614923

namespace A264085

/-- `A264106(n+1)+A039991(∑[n+2])` -/
def P12371141504572614923.Spec : Prop :=
  ∀ n, P12371141504572614923.a n = A264085 (n + 1)

end A264085

/-!
# A264086: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

The programs for A264086, there is no canonical definition to state claims against.
-/

/-! ## A264086.P12467191536814834036

`A264090(A141214(n+1))`
-/

namespace A264086.P12467191536814834036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (A141214 (n + 1)).toNat

end

end A264086.P12467191536814834036

/-! ## A264086.P15987666003978168898

`A264090(A055998(n+2))`
-/

namespace A264086.P15987666003978168898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (A055998 (n + 2)).toNat

end

end A264086.P15987666003978168898

/-! ## A264086.P1313519226843628024

`A264090(eq[3, A193592(n)])`
-/

namespace A264086.P1313519226843628024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264086.P1313519226843628024

/-! ## A264086.P15130386612047287857

`A264090(A052905(n+1)+2)`
-/

namespace A264086.P15130386612047287857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (A052905 (n + 1) + 2).toNat

end

end A264086.P15130386612047287857

/-! ## A264086.P7094947138958591754

`A264090(eq[4, A185782(n+1)])`
-/

namespace A264086.P7094947138958591754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264086.P7094947138958591754

/-!
# A264087: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

The programs for A264087, there is no canonical definition to state claims against.
-/

/-! ## A264087.P13334605459072006911

`A264090(A046691(n+3))`
-/

namespace A264087.P13334605459072006911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (A046691 (n + 3)).toNat

end

end A264087.P13334605459072006911

/-! ## A264087.P3873624893450831845

`A264090(eq[4, A193592(n)])`
-/

namespace A264087.P3873624893450831845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264087.P3873624893450831845

/-! ## A264087.P2519374552465513163

`A264090(Δ[A023545(n+1)])`
-/

namespace A264087.P2519374552465513163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (f1 (n + 1) - f1 n).toNat

end

end A264087.P2519374552465513163

/-! ## A264087.P4168465944710546920

`A264090(eq[5, A194921(n+1)])`
-/

namespace A264087.P4168465944710546920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264087.P4168465944710546920

/-! ## A264087.P4090610174250526121

`A264090(eq[6, A185782(n+1)])`
-/

namespace A264087.P4090610174250526121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264087.P4090610174250526121

/-!
# A264088: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

The programs for A264088, there is no canonical definition to state claims against.
-/

/-! ## A264088.P13218085369225146678

`A264090(A052905(n+3))`
-/

namespace A264088.P13218085369225146678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (A052905 (n + 3)).toNat

end

end A264088.P13218085369225146678

/-! ## A264088.P7716148961489612656

`A264090(eq[5, A193592(n)])`
-/

namespace A264088.P7716148961489612656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264088.P7716148961489612656

/-! ## A264088.P10561713142511454520

`A264090(eq[8, A258709(n)])`
-/

namespace A264088.P10561713142511454520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264088.P10561713142511454520

/-! ## A264088.P3522381497660143960

`A264090(eq[8, A185782(n+1)])`
-/

namespace A264088.P3522381497660143960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264088.P3522381497660143960

/-! ## A264088.P3069206965006624120

`A264090(Δ[Δ[A006504(n+1)]])`
-/

namespace A264088.P3069206965006624120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (f1 (n + 1) - f1 n).toNat

end

end A264088.P3069206965006624120

/-!
# A264089: Number of (n+1) X (7+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

The programs for A264089, there is no canonical definition to state claims against.
-/

/-! ## A264089.P12856971683406195592

`A264090(eq[6, A193592(n)])`
-/

namespace A264089.P12856971683406195592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264089.P12856971683406195592

/-! ## A264089.P1378370166139614324

`A264090(eq[10, A185782(n+1)])`
-/

namespace A264089.P1378370166139614324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264089.P1378370166139614324

/-!
# A264091: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

The programs for A264091, the canonical program `A264091.P17815593426725919287` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264091 has offset 1).

The definition of A264091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264091.P17815593426725919287

`abs(A097948(n+1))*A020695(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A264091

/-- `abs(A097948(n+1))*A020695(n)` -/
def P17815593426725919287.Spec : Prop :=
  ∀ n, P17815593426725919287.a n = A264091 (n + 1)

theorem P17815593426725919287.correct : P17815593426725919287.Spec := by
  intro n
  simp only [A264091, Nat.add_sub_cancel]

end A264091

/-! ## A264091.P3038351593703413964

`sqrt(A264092(n+1))*A020695(n)`
-/

namespace A264091.P3038351593703413964
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264092 (n + 1) : ℝ) * (A020695 n : ℝ)

end

end A264091.P3038351593703413964

namespace A264091

/-- `sqrt(A264092(n+1))*A020695(n)` -/
def P3038351593703413964.Spec : Prop :=
  ∀ n, P3038351593703413964.a n = (A264091 (n + 1) : ℝ)

end A264091

/-! ## A264091.P13491623958159607541

`sqrt(A007598(n+3)*A264092(n+1))`
-/

namespace A264091.P13491623958159607541
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 (n + 3) * A264092 (n + 1) : ℝ)

end

end A264091.P13491623958159607541

namespace A264091

/-- `sqrt(A007598(n+3)*A264092(n+1))` -/
def P13491623958159607541.Spec : Prop :=
  ∀ n, P13491623958159607541.a n = (A264091 (n + 1) : ℝ)

end A264091

/-! ## A264091.P11394766722373363232

`A264090(∑[n+1]+2)`
-/

namespace A264091.P11394766722373363232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264091.P11394766722373363232

namespace A264091

/-- `A264090(∑[n+1]+2)` -/
def P11394766722373363232.Spec : Prop :=
  ∀ n, P11394766722373363232.a n = A264091 (n + 1)

end A264091

/-! ## A264091.P15480852976772534645

`record[A264090(A133263(val(n+1, 2)+1))]`
-/

namespace A264091.P15480852976772534645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264091.P15480852976772534645

namespace A264091

/-- `record[A264090(A133263(val(n+1, 2)+1))]` -/
def P15480852976772534645.Spec : Prop :=
  ∀ n, P15480852976772534645.a n = A264091 (n + 1)

end A264091

/-!
# A264092: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

The programs for A264092, there is no canonical definition to state claims against.
-/

/-! ## A264092.P4409611821900183470

`A097948(n+1)²`
-/

namespace A264092.P4409611821900183470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097948 (n + 1) ^ 2

end

end A264092.P4409611821900183470

/-! ## A264092.P7998538323610960125

`record[A097948(A008611(n))²]`
-/

namespace A264092.P7998538323610960125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097948 (A008611 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264092.P7998538323610960125

/-! ## A264092.P12403033662488916206

`record[A097948(A028242(n))²]`
-/

namespace A264092.P12403033662488916206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097948 (A028242 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264092.P12403033662488916206

/-! ## A264092.P9597414623318699055

`record[A097948(A193592(n))²]`
-/

namespace A264092.P9597414623318699055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097948 (A193592 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264092.P9597414623318699055

/-! ## A264092.P3124311759852327773

`(A195531(n+1)-A072335(n))²`
-/

namespace A264092.P3124311759852327773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A195531 (n + 1) - A072335 n) ^ 2

end

end A264092.P3124311759852327773

/-! ## A264092.P12986347222973713989

`(A000035(n+1)-A108946(n+1))²`
-/

namespace A264092.P12986347222973713989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A108946 (n + 1)) ^ 2

end

end A264092.P12986347222973713989

/-! ## A264092.P3626175778752731136

`(A108946(n+1)-A372584(n+1))²`
-/

namespace A264092.P3626175778752731136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108946 (n + 1) - A372584 (n + 1)) ^ 2

end

end A264092.P3626175778752731136

/-! ## A264092.P8152472690912674009

`(2-A000034(n)-A108946(n+1))²`
-/

namespace A264092.P8152472690912674009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000034 n - A108946 (n + 1)) ^ 2

end

end A264092.P8152472690912674009

/-! ## A264092.P17260252288956350927

`(A000034(n+1)+∑[A146983(n+1)])²`
-/

namespace A264092.P17260252288956350927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A264092.P17260252288956350927

/-! ## A264092.P8103173411995006681

`A097948(A028242(2*n))*A097948(n+1)`
-/

namespace A264092.P8103173411995006681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097948 (A028242 (2 * n)).toNat * A097948 (n + 1)

end

end A264092.P8103173411995006681

/-!
# A264093: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

The programs for A264093, there is no canonical definition to state claims against.
-/

/-! ## A264093.P17898412920078161249

`(A195531(n+1)-A072335(n))*A264342(n+1)`
-/

namespace A264093.P17898412920078161249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A195531 (n + 1) - A072335 n) * A264342 (n + 1)

end

end A264093.P17898412920078161249

/-! ## A264093.P6076616448359439952

`sqrt(A264092(n+1))*sqrt(A264094(n+1))`
-/

namespace A264093.P6076616448359439952
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264092 (n + 1) : ℝ) * Real.sqrt (A264094 (n + 1) : ℝ)

end

end A264093.P6076616448359439952

/-! ## A264093.P7788249260076765736

`(A195531(n+1)-A072335(n))*sqrt(A264094(n+1))`
-/

namespace A264093.P7788249260076765736
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A195531 (n + 1) - A072335 n : ℝ) * Real.sqrt (A264094 (n + 1) : ℝ)

end

end A264093.P7788249260076765736

/-! ## A264093.P7382327424834150147

`sqrt(A264092(n+1)*A264094(n+1))`
-/

namespace A264093.P7382327424834150147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264092 (n + 1) * A264094 (n + 1) : ℝ)

end

end A264093.P7382327424834150147

/-! ## A264093.P362698673636707319

`sqrt(A264090(∑[n+2]+4)*A264094(n+1))`
-/

namespace A264093.P362698673636707319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264090 (∑ j ∈ Finset.range (n + 1), f1 j + 4) * A264094 (n + 1) : ℝ)

end

end A264093.P362698673636707319

/-!
# A264094: Number of (5+1) X (n+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

The programs for A264094, there is no canonical definition to state claims against.
-/

/-! ## A264094.P15851701612037513115

`A264342(n+1)²`
-/

namespace A264094.P15851701612037513115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264342 (n + 1) ^ 2

end

end A264094.P15851701612037513115

/-! ## A264094.P13337102745553786687

`A264342(n+1)^A036453(A020715(n))`
-/

namespace A264094.P13337102745553786687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264342 (n + 1) : ℚ) ^ (A036453 (A020715 n).toNat : ℤ)

end

end A264094.P13337102745553786687

/-! ## A264094.P13842274187372232812

`A264342(n+1)^A000005(A054805(n+1))`
-/

namespace A264094.P13842274187372232812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264342 (n + 1) : ℚ) ^ (A000005 (A054805 (n + 1)).toNat : ℤ)

end

end A264094.P13842274187372232812

/-! ## A264094.P2420625668412694255

`A264342(n+1)^A001222(A157352(n+1))`
-/

namespace A264094.P2420625668412694255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264342 (n + 1) : ℚ) ^ (A001222 (A157352 (n + 1)).toNat : ℤ)

end

end A264094.P2420625668412694255

/-! ## A264094.P16278210613399208469

`A264342(n+1)^A036453(A166136(n+1))`
-/

namespace A264094.P16278210613399208469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264342 (n + 1) : ℚ) ^ (A036453 (A166136 (n + 1)).toNat : ℤ)

end

end A264094.P16278210613399208469

/-! ## A264094.P16379075052081325470

`A264093(n+1)/A264092(n+1)*A264093(n+1)`
-/

namespace A264094.P16379075052081325470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264093 (n + 1) : ℚ) / (A264092 (n + 1) : ℚ) * (A264093 (n + 1) : ℚ)

end

end A264094.P16379075052081325470

/-!
# A264095: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

The programs for A264095, there is no canonical definition to state claims against.
-/

/-! ## A264095.P11931568600694092872

`A264342(n+1)*A264343(n+1)`
-/

namespace A264095.P11931568600694092872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264342 (n + 1) * A264343 (n + 1)

end

end A264095.P11931568600694092872

/-! ## A264095.P11922417188003811103

`sqrt(A264094(n+1))*A264343(n+1)`
-/

namespace A264095.P11922417188003811103
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264094 (n + 1) : ℝ) * (A264343 (n + 1) : ℝ)

end

end A264095.P11922417188003811103

/-! ## A264095.P18352408612199477957

`sqrt(A264096(n+1))*A264342(n+1)`
-/

namespace A264095.P18352408612199477957
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264096 (n + 1) : ℝ) * (A264342 (n + 1) : ℝ)

end

end A264095.P18352408612199477957

/-! ## A264095.P1450337956412428330

`sqrt(A264094(n+1))*sqrt(A264096(n+1))`
-/

namespace A264095.P1450337956412428330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264094 (n + 1) : ℝ) * Real.sqrt (A264096 (n + 1) : ℝ)

end

end A264095.P1450337956412428330

/-! ## A264095.P10870458394284675785

`sqrt(A264094(n+1)*A264096(n+1))`
-/

namespace A264095.P10870458394284675785
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264094 (n + 1) * A264096 (n + 1) : ℝ)

end

end A264095.P10870458394284675785

/-!
# A264096: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

The programs for A264096, there is no canonical definition to state claims against.
-/

/-! ## A264096.P17335711671956699166

`A264343(n+1)²`
-/

namespace A264096.P17335711671956699166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264343 (n + 1) ^ 2

end

end A264096.P17335711671956699166

/-! ## A264096.P13978915220058541313

`A264343(n+1)^A036453(A020715(n))`
-/

namespace A264096.P13978915220058541313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264343 (n + 1) : ℚ) ^ (A036453 (A020715 n).toNat : ℤ)

end

end A264096.P13978915220058541313

/-! ## A264096.P8251146208259167801

`A264343(n+1)^A000005(A054805(n+1))`
-/

namespace A264096.P8251146208259167801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264343 (n + 1) : ℚ) ^ (A000005 (A054805 (n + 1)).toNat : ℤ)

end

end A264096.P8251146208259167801

/-! ## A264096.P8222840465990530647

`A264343(n+1)^A036453(A068355(n+1))`
-/

namespace A264096.P8222840465990530647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264343 (n + 1) : ℚ) ^ (A036453 (A068355 (n + 1)).toNat : ℤ)

end

end A264096.P8222840465990530647

/-! ## A264096.P2081303446931842926

`A264343(n+1)^A020639(A264352(n+1))`
-/

namespace A264096.P2081303446931842926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264343 (n + 1) : ℚ) ^ (A020639 (A264352 (n + 1)).toNat : ℤ)

end

end A264096.P2081303446931842926

/-!
# A264097: Smallest odd number k divisible by 3 such that k*2^n-1 is a prime.

The programs for A264097, there is no canonical definition to state claims against.
-/

/-! ## A264097.P11300368638119525524

`3*A210651(A028310(n))`
-/

namespace A264097.P11300368638119525524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A210651 (A028310 n).toNat

end

end A264097.P11300368638119525524

/-! ## A264097.P1720803505145820743

`3*A210651(A065033(2*n))`
-/

namespace A264097.P1720803505145820743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A210651 (A065033 (2 * n)).toNat

end

end A264097.P1720803505145820743

/-! ## A264097.P5724051202738848913

`A294178(A210651(A028310(n)))`
-/

namespace A264097.P5724051202738848913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294178 (A210651 (A028310 n).toNat).toNat

end

end A264097.P5724051202738848913

/-! ## A264097.P243124333495532844

`A008585(A210651(A233583(n+1)))`
-/

namespace A264097.P243124333495532844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A210651 (A233583 (n + 1)).toNat).toNat

end

end A264097.P243124333495532844

/-! ## A264097.P2476797436099661680

`3*A210651(A233583(n+1))%A001043(n+1)`
-/

namespace A264097.P2476797436099661680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod (A210651 (A233583 (n + 1)).toNat) (A001043 (n + 1))

end

end A264097.P2476797436099661680

/-! ## A264097.P1823429479831896015

`and(2, A000290(n))+3*A210651(A233583(n+1))`
-/

namespace A264097.P1823429479831896015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000290 n) + 3 * A210651 (A233583 (n + 1)).toNat

end

end A264097.P1823429479831896015

/-! ## A264097.P17727320124948486441

`(3*A210651(A233583(n+1)))%A179865(n+9)`
-/

namespace A264097.P17727320124948486441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A210651 (A233583 (n + 1)).toNat) (A179865 (n + 9))

end

end A264097.P17727320124948486441

/-!
# A264099: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 363", based on the 5-celled von Neumann neighborhood.

The programs for A264099, there is no canonical definition to state claims against.
-/

/-! ## A264099.P1916131963021556379

`A168269(n+1)²-A270457(n+1)`
-/

namespace A264099.P1916131963021556379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (n + 1) ^ 2 - A270457 (n + 1)

end

end A264099.P1916131963021556379

/-! ## A264099.P1326602988002885487

`A268194(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A264099.P1326602988002885487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268194 (n - 1) + a (n - 1)

end

end A264099.P1326602988002885487

/-! ## A264099.P5139984623716627679

`Δ[A268154(n)]-A268194(n)`
-/

namespace A264099.P5139984623716627679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A268194 n

end

end A264099.P5139984623716627679

/-! ## A264099.P4029697239418527132

`A268154(n+1)-(A268194(n)+A268154(n))`
-/

namespace A264099.P4029697239418527132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268154 (n + 1) - (A268194 n + A268154 n)

end

end A264099.P4029697239418527132

