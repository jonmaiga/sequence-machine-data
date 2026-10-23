import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
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
# A365800: Dirichlet inverse of the characteristic function of triangular numbers (A010054).

The programs for A365800, there is no canonical definition to state claims against.
-/

/-! ## A365800.P17280359576687351484

`(∑[A107102(3*(n+1))]-1)%2`
-/

namespace A365800.P17280359576687351484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107102 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 1) 2

end

end A365800.P17280359576687351484

/-! ## A365800.P5450927472419245292

`(-A308264(n+1))^A303814(n)`
-/

namespace A365800.P5450927472419245292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A308264 (n + 1) : ℚ) ^ (A303814 n : ℤ)

end

end A365800.P5450927472419245292

/-! ## A365800.P17360628781402732123

`A000038(n)-A014828(A270882(n+1))`
-/

namespace A365800.P17360628781402732123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A014828 (A270882 (n + 1)).toNat

end

end A365800.P17360628781402732123

/-! ## A365800.P10478980894945271534

`A014016(A283052(n+1)-A014016(n))`
-/

namespace A365800.P10478980894945271534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 (A283052 (n + 1) - A014016 n).toNat

end

end A365800.P10478980894945271534

/-! ## A365800.P14717247551723609476

`A010815(A232149(n+1)-A133573(3*n))`
-/

namespace A365800.P14717247551723609476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A232149 (n + 1) - A133573 (3 * n)).toNat

end

end A365800.P14717247551723609476

/-!
# A365801: Numbers k such that A163511(k) is a cube.

The programs for A365801, there is no canonical definition to state claims against.
-/

/-! ## A365801.P3729297768884826731

`eq[1, A014750(A365805(n))]`
-/

namespace A365801.P3729297768884826731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014750 (A365805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A365801.P3729297768884826731

/-! ## A365801.P2446285842977601392

`eq[A083910(2*n+3), A088689(A365805(n))]`
-/

namespace A365801.P2446285842977601392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088689 (A365805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A365801.P2446285842977601392

/-! ## A365801.P548768793000794072

`eq[1, A050985(A278531(n))]`
-/

namespace A365801.P548768793000794072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A278531 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A365801.P548768793000794072

/-! ## A365801.P9377470145508241946

`eq[1, A010057(A364297(n))]`
-/

namespace A365801.P9377470145508241946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A364297 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A365801.P9377470145508241946

/-! ## A365801.P651736231854926152

`lt[A010057(n+3), A010057(A364297(n))]`
-/

namespace A365801.P651736231854926152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A364297 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A365801.P651736231854926152

/-!
# A365802: Numbers k such that A163511(k) is a fifth power.

The programs for A365802, there is no canonical definition to state claims against.
-/

/-! ## A365802.P13222748137581871403

`eq[0, A117444(A365805(n))]`
-/

namespace A365802.P13222748137581871403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117444 (A365805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A365802.P13222748137581871403

/-! ## A365802.P2213348571923807284

`eq[A344005(n+1)², A171443(n)]`
-/

namespace A365802.P2213348571923807284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A365802.P2213348571923807284

/-!
# A365803: Dirichlet inverse of bijective base-3 reverse of n (A263273).

The programs for A365803, there is no canonical definition to state claims against.
-/

/-! ## A365803.P11873869129728845480

`A365804(n+1)-A263273(n+1)`
-/

namespace A365803.P11873869129728845480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365804 (n + 1) - A263273 (n + 1)

end

end A365803.P11873869129728845480

/-!
# A365804: Sum of bijective base-3 reverse of n (A263273) and its Dirichlet inverse.

The programs for A365804, there is no canonical definition to state claims against.
-/

/-! ## A365804.P6384521089424676595

`A263273(n+1)+A365803(n+1)`
-/

namespace A365804.P6384521089424676595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (n + 1) + A365803 (n + 1)

end

end A365804.P6384521089424676595

/-!
# A365805: a(n) = largest exponent m for which a representation of the form A163511(n) = k^m exists (for some k). a(0) = 0 by convention.

The programs for A365805, the canonical program `A365805.P12560475463864652643` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365805 has offset 0).

The definition of A365805 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365805.P12560475463864652643

`A052409(A163511(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A365805

/-- `A052409(A163511(n))` -/
def P12560475463864652643.Spec : Prop :=
  ∀ n, P12560475463864652643.a n = A365805 n

theorem P12560475463864652643.correct : P12560475463864652643.Spec := by
  intro n
  simp only [A365805]

end A365805

/-! ## A365805.P11089418545485725264

`A366281(A057889(n))`
-/

namespace A365805.P11089418545485725264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366281 (A057889 n).toNat

end

end A365805.P11089418545485725264

namespace A365805

/-- `A366281(A057889(n))` -/
def P11089418545485725264.Spec : Prop :=
  ∀ n, P11089418545485725264.a n = A365805 n

end A365805

/-! ## A365805.P2687762819073526578

`A366281(A333693(n))`
-/

namespace A365805.P2687762819073526578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366281 (A333693 n).toNat

end

end A365805.P2687762819073526578

namespace A365805

/-- `A366281(A333693(n))` -/
def P2687762819073526578.Spec : Prop :=
  ∀ n, P2687762819073526578.a n = A365805 n

end A365805

/-! ## A365805.P18021227790274702048

`A052409(A278531(n))`
-/

namespace A365805.P18021227790274702048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A278531 n).toNat

end

end A365805.P18021227790274702048

namespace A365805

/-- `A052409(A278531(n))` -/
def P18021227790274702048.Spec : Prop :=
  ∀ n, P18021227790274702048.a n = A365805 n

end A365805

/-! ## A365805.P8295803285895914139

`A052409(A364297(n))`
-/

namespace A365805.P8295803285895914139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A364297 n).toNat

end

end A365805.P8295803285895914139

namespace A365805

/-- `A052409(A364297(n))` -/
def P8295803285895914139.Spec : Prop :=
  ∀ n, P8295803285895914139.a n = A365805 n

end A365805

/-! ## A365805.P6390698689269485247

`A052409(A332817(n))`
-/

namespace A365805.P6390698689269485247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A332817 n).toNat

end

end A365805.P6390698689269485247

namespace A365805

/-- `A052409(A332817(n))` -/
def P6390698689269485247.Spec : Prop :=
  ∀ n, P6390698689269485247.a n = A365805 n

end A365805

/-! ## A365805.P4601378045038503712

`A289508(A253565(n))`
-/

namespace A365805.P4601378045038503712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A253565 n).toNat

end

end A365805.P4601378045038503712

namespace A365805

/-- `A289508(A253565(n))` -/
def P4601378045038503712.Spec : Prop :=
  ∀ n, P4601378045038503712.a n = A365805 n

end A365805

/-! ## A365805.P8764164974813438699

`A052409(A332214(n))`
-/

namespace A365805.P8764164974813438699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A332214 n).toNat

end

end A365805.P8764164974813438699

namespace A365805

/-- `A052409(A332214(n))` -/
def P8764164974813438699.Spec : Prop :=
  ∀ n, P8764164974813438699.a n = A365805 n

end A365805

/-!
# A365807: a(n) = 1 if A163511(n) is a square, 0 otherwise.

The programs for A365807, the canonical program `A365807.P7768995048888628650` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365807 has offset 0).

The definition of A365807 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365807.P17040403882932829141

`A059841(A365805(n))`
-/

namespace A365807.P17040403882932829141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A365805 n).toNat

end

end A365807.P17040403882932829141

namespace A365807

/-- `A059841(A365805(n))` -/
def P17040403882932829141.Spec : Prop :=
  ∀ n, P17040403882932829141.a n = A365807 n

end A365807

/-! ## A365807.P7768995048888628650

`A010052(A163511(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A365807

/-- `A010052(A163511(n))` -/
def P7768995048888628650.Spec : Prop :=
  ∀ n, P7768995048888628650.a n = A365807 n

theorem P7768995048888628650.correct : P7768995048888628650.Spec := by
  intro n
  simp only [A365807]

end A365807

/-! ## A365807.P16829010871914490699

`A324183(n)%2`
-/

namespace A365807.P16829010871914490699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324183 n) 2

end

end A365807.P16829010871914490699

namespace A365807

/-- `A324183(n)%2` -/
def P16829010871914490699.Spec : Prop :=
  ∀ n, P16829010871914490699.a n = A365807 n

end A365807

/-! ## A365807.P3678336381927144812

`char[A365808(n+1)]`
-/

namespace A365807.P3678336381927144812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A365807.P3678336381927144812

namespace A365807

/-- `char[A365808(n+1)]` -/
def P3678336381927144812.Spec : Prop :=
  ∀ n, (P3678336381927144812.a n : ℤ) = A365807 n

end A365807

/-! ## A365807.P8838253451463908786

`A085405(A180200(n))`
-/

namespace A365807.P8838253451463908786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 (A180200 n).toNat

end

end A365807.P8838253451463908786

namespace A365807

/-- `A085405(A180200(n))` -/
def P8838253451463908786.Spec : Prop :=
  ∀ n, P8838253451463908786.a n = A365807 n

end A365807

/-! ## A365807.P12561702237998596329

`A000035(A324183(n))`
-/

namespace A365807.P12561702237998596329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A324183 n).toNat

end

end A365807.P12561702237998596329

namespace A365807

/-- `A000035(A324183(n))` -/
def P12561702237998596329.Spec : Prop :=
  ∀ n, P12561702237998596329.a n = A365807 n

end A365807

/-! ## A365807.P1916902413811460353

`A014707(2*A324183(n))`
-/

namespace A365807.P1916902413811460353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (2 * A324183 n).toNat

end

end A365807.P1916902413811460353

namespace A365807

/-- `A014707(2*A324183(n))` -/
def P1916902413811460353.Spec : Prop :=
  ∀ n, P1916902413811460353.a n = A365807 n

end A365807

/-! ## A365807.P1389365212642784947

`A324184(2*n+1)%2`
-/

namespace A365807.P1389365212642784947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324184 (2 * n + 1)) 2

end

end A365807.P1389365212642784947

namespace A365807

/-- `A324184(2*n+1)%2` -/
def P1389365212642784947.Spec : Prop :=
  ∀ n, P1389365212642784947.a n = A365807 n

end A365807

/-! ## A365807.P16176959553643235199

`A324186(2*n+1)%2`
-/

namespace A365807.P16176959553643235199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324186 (2 * n + 1)) 2

end

end A365807.P16176959553643235199

namespace A365807

/-- `A324186(2*n+1)%2` -/
def P16176959553643235199.Spec : Prop :=
  ∀ n, P16176959553643235199.a n = A365807 n

end A365807

/-! ## A365807.P2179507298820128147

`A324188(2*n+1)%2`
-/

namespace A365807.P2179507298820128147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324188 (2 * n + 1)) 2

end

end A365807.P2179507298820128147

namespace A365807

/-- `A324188(2*n+1)%2` -/
def P2179507298820128147.Spec : Prop :=
  ∀ n, P2179507298820128147.a n = A365807 n

end A365807

/-! ## A365807.P16007923790284859975

`A366797(2*n+1)%2`
-/

namespace A365807.P16007923790284859975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366797 (2 * n + 1)) 2

end

end A365807.P16007923790284859975

namespace A365807

/-- `A366797(2*n+1)%2` -/
def P16007923790284859975.Spec : Prop :=
  ∀ n, P16007923790284859975.a n = A365807 n

end A365807

/-! ## A365807.P3901307666939246130

`A037011(A337909(n+1))`
-/

namespace A365807.P3901307666939246130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037011 (A337909 (n + 1)).toNat

end

end A365807.P3901307666939246130

namespace A365807

/-- `A037011(A337909(n+1))` -/
def P3901307666939246130.Spec : Prop :=
  ∀ n, P3901307666939246130.a n = A365807 n

end A365807

/-! ## A365807.P5376438139985259103

`A086747(A004761(n+2))`
-/

namespace A365807.P5376438139985259103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (A004761 (n + 2)).toNat

end

end A365807.P5376438139985259103

namespace A365807

/-- `A086747(A004761(n+2))` -/
def P5376438139985259103.Spec : Prop :=
  ∀ n, P5376438139985259103.a n = A365807 n

end A365807

/-! ## A365807.P10602117921988857411

`A302052(A252755(n))`
-/

namespace A365807.P10602117921988857411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 (A252755 n).toNat

end

end A365807.P10602117921988857411

namespace A365807

/-- `A302052(A252755(n))` -/
def P10602117921988857411.Spec : Prop :=
  ∀ n, P10602117921988857411.a n = A365807 n

end A365807

/-! ## A365807.P14026788498556758684

`C(A292271(2*n+1), 2*n+1)`
-/

namespace A365807.P14026788498556758684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A292271 (2 * n + 1)).toNat (2 * n + 1)

end

end A365807.P14026788498556758684

namespace A365807

/-- `C(A292271(2*n+1), 2*n+1)` -/
def P14026788498556758684.Spec : Prop :=
  ∀ n, (P14026788498556758684.a n : ℤ) = A365807 n

end A365807

/-! ## A365807.P16213541047268454011

`C(A292593(2*n+1), 2*n+1)`
-/

namespace A365807.P16213541047268454011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A292593 (2 * n + 1)).toNat (2 * n + 1)

end

end A365807.P16213541047268454011

namespace A365807

/-- `C(A292593(2*n+1), 2*n+1)` -/
def P16213541047268454011.Spec : Prop :=
  ∀ n, (P16213541047268454011.a n : ℤ) = A365807 n

end A365807

/-! ## A365807.P14341714160860269393

`A000007(A292274(2*n+1))`
-/

namespace A365807.P14341714160860269393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A292274 (2 * n + 1)).toNat

end

end A365807.P14341714160860269393

namespace A365807

/-- `A000007(A292274(2*n+1))` -/
def P14341714160860269393.Spec : Prop :=
  ∀ n, P14341714160860269393.a n = A365807 n

end A365807

/-! ## A365807.P8703690441253040769

`A086747(lt[A342697(2*n), A229762(2*n)])`
-/

namespace A365807.P8703690441253040769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229762 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A365807.P8703690441253040769

namespace A365807

/-- `A086747(lt[A342697(2*n), A229762(2*n)])` -/
def P8703690441253040769.Spec : Prop :=
  ∀ n, P8703690441253040769.a n = A365807 n

end A365807

/-! ## A365807.P9667100188217418372

`A086747(A318934(n+1))`
-/

namespace A365807.P9667100188217418372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (A318934 (n + 1)).toNat

end

end A365807.P9667100188217418372

namespace A365807

/-- `A086747(A318934(n+1))` -/
def P9667100188217418372.Spec : Prop :=
  ∀ n, P9667100188217418372.a n = A365807 n

end A365807

/-!
# A365808: Numbers k such that A163511(k) is a square.

The programs for A365808, the canonical program `A365808.P18059643760552441775` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365808 has offset 1).

The definition of A365808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1597 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365808.P18059643760552441775

`eq[1, A365807(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A365808

/-- `eq[1, A365807(n)]` -/
def P18059643760552441775.Spec : Prop :=
  ∀ n, (P18059643760552441775.a n : ℤ) = A365808 (n + 1)

theorem P18059643760552441775.correct : P18059643760552441775.Spec := by
  intro n
  simp only [A365808, Nat.add_sub_cancel]

end A365808

/-! ## A365808.P15010289253828727547

`eq[0, A332998(2*n+1)]`
-/

namespace A365808.P15010289253828727547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A365808.P15010289253828727547

namespace A365808

/-- `eq[0, A332998(2*n+1)]` -/
def P15010289253828727547.Spec : Prop :=
  ∀ n, (P15010289253828727547.a n : ℤ) = A365808 (n + 1)

end A365808

/-! ## A365808.P9974135184582227620

`filter[A174438(n+1), A365807(#)]`
-/

namespace A365808.P9974135184582227620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P9974135184582227620

namespace A365808

/-- `filter[A174438(n+1), A365807(#)]` -/
def P9974135184582227620.Spec : Prop :=
  ∀ n, P9974135184582227620.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P12322554923273789637

`filter[A059009(n), A365807(#)]`
-/

namespace A365808.P12322554923273789637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P12322554923273789637

namespace A365808

/-- `filter[A059009(n), A365807(#)]` -/
def P12322554923273789637.Spec : Prop :=
  ∀ n, P12322554923273789637.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P2195482635479427621

`filter[A047267(n+1), A365807(#)]`
-/

namespace A365808.P2195482635479427621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P2195482635479427621

namespace A365808

/-- `filter[A047267(n+1), A365807(#)]` -/
def P2195482635479427621.Spec : Prop :=
  ∀ n, P2195482635479427621.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P8391934482936363073

`filter[A004761(n+1), A365807(#)]`
-/

namespace A365808.P8391934482936363073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P8391934482936363073

namespace A365808

/-- `filter[A004761(n+1), A365807(#)]` -/
def P8391934482936363073.Spec : Prop :=
  ∀ n, P8391934482936363073.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P17151792201355274872

`filter[A340615(n), A365807(#)]`
-/

namespace A365808.P17151792201355274872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P17151792201355274872

namespace A365808

/-- `filter[A340615(n), A365807(#)]` -/
def P17151792201355274872.Spec : Prop :=
  ∀ n, P17151792201355274872.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P17649551885750536969

`filter[A083028(n+1), A365807(#)]`
-/

namespace A365808.P17649551885750536969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P17649551885750536969

namespace A365808

/-- `filter[A083028(n+1), A365807(#)]` -/
def P17649551885750536969.Spec : Prop :=
  ∀ n, P17649551885750536969.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P1236251722868860697

`filter[A072756(n), A365807(#)]`
-/

namespace A365808.P1236251722868860697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P1236251722868860697

namespace A365808

/-- `filter[A072756(n), A365807(#)]` -/
def P1236251722868860697.Spec : Prop :=
  ∀ n, P1236251722868860697.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P1405791565605656988

`filter[A007494(n), A365807(#)]`
-/

namespace A365808.P1405791565605656988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P1405791565605656988

namespace A365808

/-- `filter[A007494(n), A365807(#)]` -/
def P1405791565605656988.Spec : Prop :=
  ∀ n, P1405791565605656988.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P11304993881424366748

`filter[A028966(n), A365807(#)]`
-/

namespace A365808.P11304993881424366748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P11304993881424366748

namespace A365808

/-- `filter[A028966(n), A365807(#)]` -/
def P11304993881424366748.Spec : Prop :=
  ∀ n, P11304993881424366748.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P3090236681612171933

`filter[A342131(n), A365807(#)]`
-/

namespace A365808.P3090236681612171933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P3090236681612171933

namespace A365808

/-- `filter[A342131(n), A365807(#)]` -/
def P3090236681612171933.Spec : Prop :=
  ∀ n, P3090236681612171933.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P6444264154862548748

`filter[A045751(n+1), A365807(#)]`
-/

namespace A365808.P6444264154862548748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P6444264154862548748

namespace A365808

/-- `filter[A045751(n+1), A365807(#)]` -/
def P6444264154862548748.Spec : Prop :=
  ∀ n, P6444264154862548748.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P1127987792395478174

`filter[A047262(n+1), A365807(#)]`
-/

namespace A365808.P1127987792395478174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P1127987792395478174

namespace A365808

/-- `filter[A047262(n+1), A365807(#)]` -/
def P1127987792395478174.Spec : Prop :=
  ∀ n, P1127987792395478174.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P12050645556082058805

`filter[A047269(n+1), A365807(#)]`
-/

namespace A365808.P12050645556082058805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P12050645556082058805

namespace A365808

/-- `filter[A047269(n+1), A365807(#)]` -/
def P12050645556082058805.Spec : Prop :=
  ∀ n, P12050645556082058805.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P7041539669137680612

`filter[A153275(n+1), A365807(#)]`
-/

namespace A365808.P7041539669137680612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P7041539669137680612

namespace A365808

/-- `filter[A153275(n+1), A365807(#)]` -/
def P7041539669137680612.Spec : Prop :=
  ∀ n, P7041539669137680612.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P14986352109898744514

`filter[A155941(n+1), A365807(#)]`
-/

namespace A365808.P14986352109898744514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P14986352109898744514

namespace A365808

/-- `filter[A155941(n+1), A365807(#)]` -/
def P14986352109898744514.Spec : Prop :=
  ∀ n, P14986352109898744514.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P7963251515347204305

`filter[A002517(n), A365807(#)]`
-/

namespace A365808.P7963251515347204305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P7963251515347204305

namespace A365808

/-- `filter[A002517(n), A365807(#)]` -/
def P7963251515347204305.Spec : Prop :=
  ∀ n, P7963251515347204305.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P12903144421380273641

`filter[A004442(n), A365807(#)]`
-/

namespace A365808.P12903144421380273641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P12903144421380273641

namespace A365808

/-- `filter[A004442(n), A365807(#)]` -/
def P12903144421380273641.Spec : Prop :=
  ∀ n, P12903144421380273641.a n = A365808 (n + 1)

end A365808

/-! ## A365808.P17526822318632323906

`filter[A014681(n), A365807(#)]`
-/

namespace A365808.P17526822318632323906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365807 (f1 j).toNat = 1) n)

end

end A365808.P17526822318632323906

namespace A365808

/-- `filter[A014681(n), A365807(#)]` -/
def P17526822318632323906.Spec : Prop :=
  ∀ n, P17526822318632323906.a n = A365808 (n + 1)

end A365808

/-!
# A365809: Odd numbers k such that A163511(k) is a square.

The programs for A365809, the canonical program `A365809.P17161418660075754806` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365809 has offset 1).

The definition of A365809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365809.P17161418660075754806

`3*A247648(n+1)+2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A365809

/-- `3*A247648(n+1)+2` -/
def P17161418660075754806.Spec : Prop :=
  ∀ n, P17161418660075754806.a n = A365809 (n + 1)

theorem P17161418660075754806.correct : P17161418660075754806.Spec := by
  intro n
  simp only [A365809, Nat.add_sub_cancel]

end A365809

/-! ## A365809.P14781560988996632402

`3*(2*A052499(n)-1)+2`
-/

namespace A365809.P14781560988996632402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A052499 n - 1) + 2

end

end A365809.P14781560988996632402

namespace A365809

/-- `3*(2*A052499(n)-1)+2` -/
def P14781560988996632402.Spec : Prop :=
  ∀ n, P14781560988996632402.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P6637214760591171816

`A052499(n)+A380358(n+1)+A052499(n)`
-/

namespace A365809.P6637214760591171816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 n + (A380358 (n + 1) + A052499 n)

end

end A365809.P6637214760591171816

namespace A365809

/-- `A052499(n)+A380358(n+1)+A052499(n)` -/
def P6637214760591171816.Spec : Prop :=
  ∀ n, P6637214760591171816.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P10086958522148319374

`A380358(n+1)+A365808(n+2)-A003754(n+1)`
-/

namespace A365809.P10086958522148319374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380358 (n + 1) + (A365808 (n + 2) - A003754 (n + 1))

end

end A365809.P10086958522148319374

namespace A365809

/-- `A380358(n+1)+A365808(n+2)-A003754(n+1)` -/
def P10086958522148319374.Spec : Prop :=
  ∀ n, P10086958522148319374.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P1816904694156371112

`A365808(A099267(n+2))`
-/

namespace A365809.P1816904694156371112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (A099267 (n + 2)).toNat

end

end A365809.P1816904694156371112

namespace A365809

/-- `A365808(A099267(n+2))` -/
def P1816904694156371112.Spec : Prop :=
  ∀ n, P1816904694156371112.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P5715749329129080157

`A365808(A189662(n+2))`
-/

namespace A365809.P5715749329129080157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (A189662 (n + 2)).toNat

end

end A365809.P5715749329129080157

namespace A365809

/-- `A365808(A189662(n+2))` -/
def P5715749329129080157.Spec : Prop :=
  ∀ n, P5715749329129080157.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P13472330222452641357

`filter[A365808(n+2), A355450(#)]`
-/

namespace A365809.P13472330222452641357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A365809.P13472330222452641357

namespace A365809

/-- `filter[A365808(n+2), A355450(#)]` -/
def P13472330222452641357.Spec : Prop :=
  ∀ n, P13472330222452641357.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P17365552160654086324

`filter[A365808(n+2), A373156(#)]`
-/

namespace A365809.P17365552160654086324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A365809.P17365552160654086324

namespace A365809

/-- `filter[A365808(n+2), A373156(#)]` -/
def P17365552160654086324.Spec : Prop :=
  ∀ n, P17365552160654086324.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P81899222738622642

`filter[A365808(n+2), A374134(#)]`
-/

namespace A365809.P81899222738622642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A365809.P81899222738622642

namespace A365809

/-- `filter[A365808(n+2), A374134(#)]` -/
def P81899222738622642.Spec : Prop :=
  ∀ n, P81899222738622642.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P16692571151521595791

`filter[A365808(n+2), A379952(#)]`
-/

namespace A365809.P16692571151521595791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A365809.P16692571151521595791

namespace A365809

/-- `filter[A365808(n+2), A379952(#)]` -/
def P16692571151521595791.Spec : Prop :=
  ∀ n, P16692571151521595791.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P2077231452319096770

`filter[A365808(n+1), A354354(#)]`
-/

namespace A365809.P2077231452319096770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A365809.P2077231452319096770

namespace A365809

/-- `filter[A365808(n+1), A354354(#)]` -/
def P2077231452319096770.Spec : Prop :=
  ∀ n, P2077231452319096770.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P7189708322746730055

`filter[A365808(n+2), A039982(#)]`
-/

namespace A365809.P7189708322746730055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A365809.P7189708322746730055

namespace A365809

/-- `filter[A365808(n+2), A039982(#)]` -/
def P7189708322746730055.Spec : Prop :=
  ∀ n, P7189708322746730055.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P9060484152181150868

`filter[A365808(n+2), A093719(#)]`
-/

namespace A365809.P9060484152181150868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A365809.P9060484152181150868

namespace A365809

/-- `filter[A365808(n+2), A093719(#)]` -/
def P9060484152181150868.Spec : Prop :=
  ∀ n, P9060484152181150868.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P5746686474041467083

`filter[A365808(n+2), A320106(#)]`
-/

namespace A365809.P5746686474041467083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A365809.P5746686474041467083

namespace A365809

/-- `filter[A365808(n+2), A320106(#)]` -/
def P5746686474041467083.Spec : Prop :=
  ∀ n, P5746686474041467083.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P7246642889123586680

`filter[A365808(n+2), A323158(#)]`
-/

namespace A365809.P7246642889123586680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A365809.P7246642889123586680

namespace A365809

/-- `filter[A365808(n+2), A323158(#)]` -/
def P7246642889123586680.Spec : Prop :=
  ∀ n, P7246642889123586680.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P6780652496464233469

`filter[A365808(n+2), A324908(#)]`
-/

namespace A365809.P6780652496464233469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A365809.P6780652496464233469

namespace A365809

/-- `filter[A365808(n+2), A324908(#)]` -/
def P6780652496464233469.Spec : Prop :=
  ∀ n, P6780652496464233469.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P12042218186110751904

`filter[A365808(n+2), A369653(#)]`
-/

namespace A365809.P12042218186110751904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j).toNat = 1) n)

end

end A365809.P12042218186110751904

namespace A365809

/-- `filter[A365808(n+2), A369653(#)]` -/
def P12042218186110751904.Spec : Prop :=
  ∀ n, P12042218186110751904.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P17996634056440358743

`filter[A365808(n+3), A098725(#)]`
-/

namespace A365809.P17996634056440358743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A365809.P17996634056440358743

namespace A365809

/-- `filter[A365808(n+3), A098725(#)]` -/
def P17996634056440358743.Spec : Prop :=
  ∀ n, P17996634056440358743.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P8118271998113696822

`filter[A365808(n+3), A166486(#)]`
-/

namespace A365809.P8118271998113696822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A365809.P8118271998113696822

namespace A365809

/-- `filter[A365808(n+3), A166486(#)]` -/
def P8118271998113696822.Spec : Prop :=
  ∀ n, P8118271998113696822.a n = A365809 (n + 1)

end A365809

/-! ## A365809.P13577874641276797856

`filter[A365808(n+3), A341625(#)]`
-/

namespace A365809.P13577874641276797856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A365809.P13577874641276797856

namespace A365809

/-- `filter[A365808(n+3), A341625(#)]` -/
def P13577874641276797856.Spec : Prop :=
  ∀ n, P13577874641276797856.a n = A365809 (n + 1)

end A365809

/-!
# A365810: Squareferee numbers ordered factorization-wise by Blue code: a(n) = A019565(A193231(n)).

The programs for A365810, there is no canonical definition to state claims against.
-/

/-! ## A365810.P11802022765436061462

`A019565(A193231(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365810.P11802022765436061462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A193231 n).toNat

end

end A365810.P11802022765436061462

/-! ## A365810.P14245044435959005062

`A334205(A019565(n))`
-/

namespace A365810.P14245044435959005062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334205 (A019565 n).toNat

end

end A365810.P14245044435959005062

/-! ## A365810.P17653394109752220640

`A302033(A234613(n))`
-/

namespace A365810.P17653394109752220640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (A234613 n).toNat

end

end A365810.P17653394109752220640

/-! ## A365810.P10901687223212446608

`A284003(A234612(n))`
-/

namespace A365810.P10901687223212446608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A234612 n).toNat

end

end A365810.P10901687223212446608

/-! ## A365810.P1983647141539829328

`A019565(xor(n, A280507(n)))`
-/

namespace A365810.P1983647141539829328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.xor (n : ℤ) (A280507 n)).toNat

end

end A365810.P1983647141539829328

/-! ## A365810.P16150309255800805852

`A302033(A234612(A003188(A003188(n))))`
-/

namespace A365810.P16150309255800805852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (A234612 (A003188 (A003188 n).toNat).toNat).toNat

end

end A365810.P16150309255800805852

/-! ## A365810.P11794695126589369484

`A332462(A366263(n))`
-/

namespace A365810.P11794695126589369484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (A366263 n).toNat

end

end A365810.P11794695126589369484

/-! ## A365810.P9602696441836181301

`A303778(A303776(A193231(A303776(A303775(n)))))`
-/

namespace A365810.P9602696441836181301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 (A303776 (A193231 (A303776 (A303775 n).toNat).toNat).toNat).toNat

end

end A365810.P9602696441836181301

/-!
# A365813: Numbers which form a prime by appending a 3-digit number and form no primes by appending 1 digit or 2 digits.

The programs for A365813, there is no canonical definition to state claims against.
-/

/-! ## A365813.P3508757611828008700

`∩[A091089(n+1), A181098(n+1)]`
-/

namespace A365813.P3508757611828008700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365813.P3508757611828008700

/-!
# A365816: G.f. A(x) satisfies: A(x) = x * (1 + A(x))^3 / (1 - 3 * A(x)).

The programs for A365816, there is no canonical definition to state claims against.
-/

/-! ## A365816.P5153490492170769700

`A275495(A052698(n)+1)`
-/

namespace A365816.P5153490492170769700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275495 (A052698 n + 1).toNat

end

end A365816.P5153490492170769700

/-!
# A365817: G.f. A(x) satisfies: A(x) = x * (1 + A(x))^3 / (1 - 4 * A(x)).

The programs for A365817, there is no canonical definition to state claims against.
-/

/-! ## A365817.P9904484723223834267

`A050292(A001813(n)-1)`
-/

namespace A365817.P9904484723223834267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (A001813 n - 1).toNat

end

end A365817.P9904484723223834267

/-!
# A365818: G.f. A(x) satisfies: A(x) = x * (1 + A(x))^3 / (1 - 5 * A(x)).

The programs for A365818, there is no canonical definition to state claims against.
-/

/-! ## A365818.P16097449560444317308

`A235486(A100886(n²))`
-/

namespace A365818.P16097449560444317308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235486 (A100886 (n ^ 2)).toNat

end

end A365818.P16097449560444317308

/-!
# A365820: Numbers with three or more digits such that every three consecutive digits are a nonzero square.

The programs for A365820, there is no canonical definition to state claims against.
-/

/-! ## A365820.P8820040885172773885

`A120327((n+10)²)`
-/

namespace A365820.P8820040885172773885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 ((n + 10) ^ 2)

end

end A365820.P8820040885172773885

/-! ## A365820.P5253334239381825877

`A257022((n+10)²)`
-/

namespace A365820.P5253334239381825877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 ((n + 10) ^ 2)

end

end A365820.P5253334239381825877

/-! ## A365820.P12925149434740653151

`A233583((n+10)²+1)`
-/

namespace A365820.P12925149434740653151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 ((n + 10) ^ 2 + 1)

end

end A365820.P12925149434740653151

/-! ## A365820.P4412220179937363502

`record[(A325195(n+1)+10)²]`
-/

namespace A365820.P4412220179937363502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A325195 (n + 1) + 10) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365820.P4412220179937363502

/-! ## A365820.P2491511784834163769

`(n+10)²%A332429(n+2)`
-/

namespace A365820.P2491511784834163769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 10) ^ 2 : ℤ) (A332429 (n + 2))

end

end A365820.P2491511784834163769

/-!
# A365821: Total number of partitions of [n-s] whose block minima sum to s, summed over all s.

The programs for A365821, there is no canonical definition to state claims against.
-/

/-! ## A365821.P17594199019837343416

`A001190(A351870(n)+A134824(n+1))`
-/

namespace A365821.P17594199019837343416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (A351870 n + A134824 (n + 1)).toNat

end

end A365821.P17594199019837343416

/-!
# A365822: List the positive integers but erase commas between terms if the digits just before and just after the comma have the same parity.

The programs for A365822, there is no canonical definition to state claims against.
-/

/-! ## A365822.P139257239245310721

`A070594(A087027(n+1))`
-/

namespace A365822.P139257239245310721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070594 (A087027 (n + 1)).toNat

end

end A365822.P139257239245310721

/-! ## A365822.P4135263693787086980

`A391854(A061805(n+2))`
-/

namespace A365822.P4135263693787086980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (A061805 (n + 2)).toNat

end

end A365822.P4135263693787086980

/-! ## A365822.P4419527619869363995

`A333126(A191872(n+2))`
-/

namespace A365822.P4419527619869363995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333126 (A191872 (n + 2)).toNat

end

end A365822.P4419527619869363995

/-! ## A365822.P17457328950898926953

`A307498(A133377(n+3))`
-/

namespace A365822.P17457328950898926953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307498 (A133377 (n + 3)).toNat

end

end A365822.P17457328950898926953

/-! ## A365822.P17993650067630769538

`A259974(A287020(n))+n`
-/

namespace A365822.P17993650067630769538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259974 (A287020 n).toNat + (n : ℤ)

end

end A365822.P17993650067630769538

/-!
# A365823: Decimal expansion of 2*(2 + sqrt(2)).

The programs for A365823, there is no canonical definition to state claims against.
-/

/-! ## A365823.P2914178272291763581

`A090488(n)+A000038(n)`
-/

namespace A365823.P2914178272291763581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) + A000038 n

end

end A365823.P2914178272291763581

/-! ## A365823.P16568720023983611480

`A156035(n)+A000007(n)`
-/

namespace A365823.P16568720023983611480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 (n + 1) + A000007 n

end

end A365823.P16568720023983611480

/-! ## A365823.P83281923354962124

`A010466(n)+A000038(n)²`
-/

namespace A365823.P83281923354962124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 (n + 1) + A000038 n ^ 2

end

end A365823.P83281923354962124

/-! ## A365823.P17914554316437147628

`A090488(n)+2*A000007(n)`
-/

namespace A365823.P17914554316437147628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) + 2 * A000007 n

end

end A365823.P17914554316437147628

/-! ## A365823.P4442910227892823787

`2*A090488(n)-A010466(n)`
-/

namespace A365823.P4442910227892823787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090488 (n + 1) - A010466 (n + 1)

end

end A365823.P4442910227892823787

/-! ## A365823.P11948760804093504860

`A156035(n)+A000038(n)/2`
-/

namespace A365823.P11948760804093504860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156035 (n + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A365823.P11948760804093504860

/-! ## A365823.P13500653872164517763

`2*A156035(n)-A090488(n)`
-/

namespace A365823.P13500653872164517763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156035 (n + 1) - A090488 (n + 1)

end

end A365823.P13500653872164517763

/-! ## A365823.P6555612259301801411

`A209229(2*n+1)+A156035(n)`
-/

namespace A365823.P6555612259301801411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1) + A156035 (n + 1)

end

end A365823.P6555612259301801411

/-! ## A365823.P6105964048641663857

`A090488(n)+C(2, A000203(n+1))`
-/

namespace A365823.P6105964048641663857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) + (Nat.choose 2 (A000203 (n + 1)).toNat : ℤ)

end

end A365823.P6105964048641663857

/-! ## A365823.P15294785414174207910

`A090488(n)+C(2, A124508(n+1))`
-/

namespace A365823.P15294785414174207910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) + (Nat.choose 2 (A124508 (n + 1)).toNat : ℤ)

end

end A365823.P15294785414174207910

/-! ## A365823.P2693759724294257840

`A090488(n)+C(2, A134869(n+1))`
-/

namespace A365823.P2693759724294257840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) + (Nat.choose 2 (A134869 (n + 1)).toNat : ℤ)

end

end A365823.P2693759724294257840

/-! ## A365823.P15120424283676914417

`A156035(n)+A008683(A008574(n))`
-/

namespace A365823.P15120424283676914417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 (n + 1) + A008683 (A008574 n).toNat

end

end A365823.P15120424283676914417

/-! ## A365823.P11472271110985139329

`A010466(n)-A210067(n+1)*A210067(n)`
-/

namespace A365823.P11472271110985139329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 (n + 1) - A210067 (n + 1) * A210067 n

end

end A365823.P11472271110985139329

/-! ## A365823.P16830217925328211279

`A000034(A124508(n+1))*A086178(n)`
-/

namespace A365823.P16830217925328211279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A124508 (n + 1)).toNat * A086178 (n + 1)

end

end A365823.P16830217925328211279

/-! ## A365823.P4023162866433759447

`or(A000038(n²), A090488(n))`
-/

namespace A365823.P4023162866433759447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (n ^ 2)) (A090488 (n + 1))

end

end A365823.P4023162866433759447

/-!
# A365824: a(n) = a(n-1) + 5*a(n-2), for n >= 0, with a(0) = 1 and a(1) = 0.

The programs for A365824, the canonical program `A365824.P7791578248549038231` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365824 has offset 0).

The definition of A365824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+5*a(n-2)` (program `A365824.P7791578248549038231`, by `A365824.P7791578248549038231.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A365824.P7791578248549038231

`a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A365824

/-- `a(n-1)+5*a(n-2)` -/
def P7791578248549038231.Spec : Prop :=
  ∀ n, (P7791578248549038231.a n : ℤ) = A365824 n

theorem P7791578248549038231.correct : P7791578248549038231.Spec := by
  intro n
  simp only [A365824]

end A365824

/-! ## A365824.P16100157516206264121

`ogf((-1+x)/(-1+x+5x^2))`
-/

namespace A365824.P16100157516206264121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, -5] n

end

end A365824.P16100157516206264121

namespace A365824

/-- `ogf((-1+x)/(-1+x+5x^2))` -/
def P16100157516206264121.Spec : Prop :=
  ∀ n, P16100157516206264121.a n = A365824 n

end A365824

/-! ## A365824.P16364828599612361261

`5-(5*(1-a(n-2))-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A365824.P16364828599612361261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  5 - (5 * (1 - a (n - 2)) - a (n - 1))

end

end A365824.P16364828599612361261

namespace A365824

/-- `5-(5*(1-a(n-2))-a(n-1))` -/
def P16364828599612361261.Spec : Prop :=
  ∀ n, P16364828599612361261.a n = A365824 n

end A365824

/-! ## A365824.P4743468850026806033

`A189732(n)-a(n-1)` with `a(0)=1`
-/

namespace A365824.P4743468850026806033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189732 n - a (n - 1)

end

end A365824.P4743468850026806033

namespace A365824

/-- `A189732(n)-a(n-1)` -/
def P4743468850026806033.Spec : Prop :=
  ∀ n, P4743468850026806033.a n = A365824 n

end A365824

/-! ## A365824.P9545609723402423631

`A342610(∑[2^(n-2)-a(n-1)])` with `a(0)=1, a(1)=-1`
-/

namespace A365824.P9545609723402423631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342610 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A365824.P9545609723402423631

namespace A365824

/-- `A342610(∑[2^(n-2)-a(n-1)])` -/
def P9545609723402423631.Spec : Prop :=
  ∀ n, P9545609723402423631.a n = A365824 n

end A365824

/-!
# A365825: Number of integer partitions of n that are not of length 2 and do not contain n/2.

The programs for A365825, there is no canonical definition to state claims against.
-/

/-! ## A365825.P11958954645592445670

`A086543(n)+1-ceil(n/2)`
-/

namespace A365825.P11958954645592445670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 n + 1 - ⌈(n : ℚ) / 2⌉

end

end A365825.P11958954645592445670

/-! ## A365825.P10149564597785691372

`A086543(n)-(n-A008619(n))`
-/

namespace A365825.P10149564597785691372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 n - ((n : ℤ) - A008619 n)

end

end A365825.P10149564597785691372

/-! ## A365825.P18022660642867628459

`abs(A086543(n)-A110654(n))+1`
-/

namespace A365825.P18022660642867628459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086543 n - A110654 n| + 1

end

end A365825.P18022660642867628459

/-! ## A365825.P11073521988249852572

`A058984(n)-A000065(A142150(n))`
-/

namespace A365825.P11073521988249852572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 n - A000065 (A142150 n).toNat

end

end A365825.P11073521988249852572

/-! ## A365825.P2812600135458933064

`A365827(n)+A006477(n)`
-/

namespace A365825.P2812600135458933064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365827 n + A006477 n

end

end A365825.P2812600135458933064

/-! ## A365825.P7371960938933779756

`A000041(n)-A238628(A028310(n))`
-/

namespace A365825.P7371960938933779756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A238628 (A028310 n).toNat

end

end A365825.P7371960938933779756

/-!
# A365826: Number of strict integer partitions of n that are not of length 2 and do not contain n/2.

The programs for A365826, there is no canonical definition to state claims against.
-/

/-! ## A365826.P18305731862151331728

`A000009(n)-A365659(n)`
-/

namespace A365826.P18305731862151331728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A365659 n

end

end A365826.P18305731862151331728

/-!
# A365827: Number of strict integer partitions of n whose length is not 2.

The programs for A365827, there is no canonical definition to state claims against.
-/

/-! ## A365827.P9658165731369699259

`A000009(n)-floor(abs(1-n)/2)`
-/

namespace A365827.P9658165731369699259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - ⌊(|1 - (n : ℤ)| : ℚ) / 2⌋

end

end A365827.P9658165731369699259

/-! ## A365827.P9182083668475544372

`A052839(n)-A110654(n)`
-/

namespace A365827.P9182083668475544372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - A110654 n

end

end A365827.P9182083668475544372

/-! ## A365827.P1185183885363175371

`A052839(n)+1-A080513(n)`
-/

namespace A365827.P1185183885363175371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n + (1 - A080513 n)

end

end A365827.P1185183885363175371

/-! ## A365827.P6360917248103958277

`A111133(n)+2-A065033(n)`
-/

namespace A365827.P6360917248103958277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (2 - A065033 n)

end

end A365827.P6360917248103958277

/-! ## A365827.P16373624951820775129

`A052839(n)-A002265(2*(n+1))`
-/

namespace A365827.P16373624951820775129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - A002265 (2 * (n + 1))

end

end A365827.P16373624951820775129

/-! ## A365827.P17357735557743901242

`A365825(n)-A006477(n)`
-/

namespace A365827.P17357735557743901242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365825 n - A006477 n

end

end A365827.P17357735557743901242

/-!
# A365828: Number of strict integer partitions of 2n not containing n.

The programs for A365828, there is no canonical definition to state claims against.
-/

/-! ## A365828.P16055043544782098675

`A000009(2*n)-A000009(n)+1`
-/

namespace A365828.P16055043544782098675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) - A000009 n + 1

end

end A365828.P16055043544782098675

/-! ## A365828.P7123995105965219882

`A035294(n)-A111133(n)`
-/

namespace A365828.P7123995105965219882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 n - A111133 n

end

end A365828.P7123995105965219882

/-! ## A365828.P12065677390926856911

`A035294(n)+1-A000009(n)`
-/

namespace A365828.P12065677390926856911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 n + (1 - A000009 n)

end

end A365828.P12065677390926856911

/-! ## A365828.P9384751603756444153

`A000009(2*n)-A111133(n)`
-/

namespace A365828.P9384751603756444153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) - A111133 n

end

end A365828.P9384751603756444153

/-! ## A365828.P5199830509167344240

`A081360(2*n)-A111133(n)`
-/

namespace A365828.P5199830509167344240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (2 * n) - A111133 n

end

end A365828.P5199830509167344240

/-!
# A365829: Squarefree non-semiprimes.

The programs for A365829, the canonical program `A365829.P2680897813873898775` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365829 has offset 1).

The definition of A365829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4722 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365829.P10492403147080196199

`filter[A319237(n+1), A008966(#)]`
-/

namespace A365829.P10492403147080196199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A365829.P10492403147080196199

namespace A365829

/-- `filter[A319237(n+1), A008966(#)]` -/
def P10492403147080196199.Spec : Prop :=
  ∀ n, P10492403147080196199.a n = A365829 (n + 1)

end A365829

/-! ## A365829.P12392354683859303755

`record[A007947(A100959(n+1))]`
-/

namespace A365829.P12392354683859303755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A100959 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365829.P12392354683859303755

namespace A365829

/-- `record[A007947(A100959(n+1))]` -/
def P12392354683859303755.Spec : Prop :=
  ∀ n, P12392354683859303755.a n = A365829 (n + 1)

end A365829

/-! ## A365829.P18040699277713958072

`filter[A100959(n+1), A008966(#)]`
-/

namespace A365829.P18040699277713958072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A365829.P18040699277713958072

namespace A365829

/-- `filter[A100959(n+1), A008966(#)]` -/
def P18040699277713958072.Spec : Prop :=
  ∀ n, P18040699277713958072.a n = A365829 (n + 1)

end A365829

/-! ## A365829.P1307426574395165510

`∩[A005117(n+1), A100959(n+1)]`
-/

namespace A365829.P1307426574395165510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365829.P1307426574395165510

namespace A365829

/-- `∩[A005117(n+1), A100959(n+1)]` -/
def P1307426574395165510.Spec : Prop :=
  ∀ n, (P1307426574395165510.a n : ℤ) = A365829 (n + 1)

end A365829

/-! ## A365829.P6000018593371663677

`filter[A210994(n+1), A008966(#)]`
-/

namespace A365829.P6000018593371663677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A365829.P6000018593371663677

namespace A365829

/-- `filter[A210994(n+1), A008966(#)]` -/
def P6000018593371663677.Spec : Prop :=
  ∀ n, P6000018593371663677.a n = A365829 (n + 1)

end A365829

/-! ## A365829.P2680897813873898775

`record[A007913(A246716(n+1))]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A365829

/-- `record[A007913(A246716(n+1))]` -/
def P2680897813873898775.Spec : Prop :=
  ∀ n, P2680897813873898775.a n = A365829 (n + 1)

theorem P2680897813873898775.correct : P2680897813873898775.Spec := by
  intro n
  simp only [A365829, Nat.add_sub_cancel]

end A365829

/-! ## A365829.P17657335829378006277

`filter[A246716(n+1), A008966(#)]`
-/

namespace A365829.P17657335829378006277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A365829.P17657335829378006277

namespace A365829

/-- `filter[A246716(n+1), A008966(#)]` -/
def P17657335829378006277.Spec : Prop :=
  ∀ n, P17657335829378006277.a n = A365829 (n + 1)

end A365829

/-! ## A365829.P4451007975037244417

`record[A007913(n+1)-A174956(n+1)]`
-/

namespace A365829.P4451007975037244417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) - A174956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365829.P4451007975037244417

namespace A365829

/-- `record[A007913(n+1)-A174956(n+1)]` -/
def P4451007975037244417.Spec : Prop :=
  ∀ n, P4451007975037244417.a n = A365829 (n + 1)

end A365829

/-! ## A365829.P14255605131636310362

`record[A007947(n+1)-A174956(n+1)]`
-/

namespace A365829.P14255605131636310362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - A174956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365829.P14255605131636310362

namespace A365829

/-- `record[A007947(n+1)-A174956(n+1)]` -/
def P14255605131636310362.Spec : Prop :=
  ∀ n, P14255605131636310362.a n = A365829 (n + 1)

end A365829

/-! ## A365829.P15531397217033125824

`record[lcm(A007947(n+1), A114592(n+1))]`
-/

namespace A365829.P15531397217033125824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 1)) (A114592 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365829.P15531397217033125824

namespace A365829

/-- `record[lcm(A007947(n+1), A114592(n+1))]` -/
def P15531397217033125824.Spec : Prop :=
  ∀ n, (P15531397217033125824.a n : ℤ) = A365829 (n + 1)

end A365829

/-! ## A365829.P14457826455738543908

`filter[A215261(2*n+1), A008966(#)]`
-/

namespace A365829.P14457826455738543908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215261 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A365829.P14457826455738543908

namespace A365829

/-- `filter[A215261(2*n+1), A008966(#)]` -/
def P14457826455738543908.Spec : Prop :=
  ∀ n, P14457826455738543908.a n = A365829 (n + 1)

end A365829

/-!
# A365831: Number of incomplete strict integer partitions of n, meaning not every number from 0 to n is the sum of some submultiset.

The programs for A365831, there is no canonical definition to state claims against.
-/

/-! ## A365831.P18091323190429989363

`A000009(n)-A188431(n)`
-/

namespace A365831.P18091323190429989363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A188431 n

end

end A365831.P18091323190429989363

/-! ## A365831.P11178037242406656634

`∑[A087897(n)]-A188431(n)`
-/

namespace A365831.P11178037242406656634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A188431 n

end

end A365831.P11178037242406656634

/-! ## A365831.P14127365245270076010

`ceil(A333147(n)/2)-A188431(n)`
-/

namespace A365831.P14127365245270076010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 n : ℚ) / 2⌉ - A188431 n

end

end A365831.P14127365245270076010

/-! ## A365831.P15336209287651180313

`A364916(A000217(n))-A188431(n)`
-/

namespace A365831.P15336209287651180313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A000217 n).toNat - A188431 n

end

end A365831.P15336209287651180313

/-! ## A365831.P5270633677726800907

`A290216(A034856(n+1))-A188431(n)`
-/

namespace A365831.P5270633677726800907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290216 (A034856 (n + 1)).toNat - A188431 n

end

end A365831.P5270633677726800907

/-! ## A365831.P361639095527635589

`A052839(n)-(A188431(n)+A057427(n))`
-/

namespace A365831.P361639095527635589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A188431 n + A057427 n)

end

end A365831.P361639095527635589

/-! ## A365831.P3999934340171695383

`A367214(n)+A367215(n)-A188431(n)`
-/

namespace A365831.P3999934340171695383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367214 n + (A367215 n - A188431 n)

end

end A365831.P3999934340171695383

/-! ## A365831.P5602158579227033087

`A000009(n)-(A326021(n+1)-Δ[A326021(n+1)])`
-/

namespace A365831.P5602158579227033087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A326021 (n + 1) - (f1 (n + 1) - f1 n))

end

end A365831.P5602158579227033087

/-!
# A365832: Triangle read by rows where T(n,k) is the number of strict integer partitions of n with k distinct sums of nonempty subsets.

The programs for A365832, there is no canonical definition to state claims against.
-/

/-! ## A365832.P11897719285467530907

`A365545(∑[2*n]%comp[∑[n]])`
-/

namespace A365832.P11897719285467530907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365545 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A365832.P11897719285467530907

/-! ## A365832.P7981116524207358083

`A365545(∑[char[∑[n]]]²-(n+1))`
-/

namespace A365832.P7981116524207358083
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365545 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A365832.P7981116524207358083

/-! ## A365832.P1582673584379273624

`and(A181498(n+1), A335833(n+1))`
-/

namespace A365832.P1582673584379273624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181498 (n + 1)) (A335833 (n + 1))

end

end A365832.P1582673584379273624

/-! ## A365832.P17438110477097119242

`and(A181498(n+1), A360985(n+1))`
-/

namespace A365832.P17438110477097119242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181498 (n + 1)) (A360985 (n + 1))

end

end A365832.P17438110477097119242

/-! ## A365832.P5700245491429255817

`A134108(A057987(n+1)*A355276(n+1))`
-/

namespace A365832.P5700245491429255817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A057987 (n + 1) * A355276 (n + 1)).toNat

end

end A365832.P5700245491429255817

/-!
# A365835: For each cell of a polyomino let b be the number of cells that are in the same row or in the same column (including itself). Cells beyond gaps do not count. a(n) is the sum of the b values of all cells of all free polyominoes with n cells.

The programs for A365835, there is no canonical definition to state claims against.
-/

/-! ## A365835.P11011057262538168389

`A326972(n)²%338`
-/

namespace A365835.P11011057262538168389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326972 n ^ 2) 338

end

end A365835.P11011057262538168389

/-!
# A365836: a(1)=1; thereafter extend the sequence by appending its nonincreasing run transform, recompute the nonincreasing run transform, append it, and so on.

The programs for A365836, there is no canonical definition to state claims against.
-/

/-! ## A365836.P3001078977616569799

`A304092(A206701(n))`
-/

namespace A365836.P3001078977616569799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (A206701 n).toNat

end

end A365836.P3001078977616569799

/-! ## A365836.P975491179898885567

`A079729(3*n+5)-A151669(A062113(n))`
-/

namespace A365836.P975491179898885567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079729 (3 * n + 5) - A151669 (A062113 n).toNat

end

end A365836.P975491179898885567

/-! ## A365836.P5875379602618822513

`A005678(C(A028310(2*n+1), A008648(n)))`
-/

namespace A365836.P5875379602618822513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005678 (Nat.choose (A028310 (2 * n + 1)).toNat (A008648 n).toNat)

end

end A365836.P5875379602618822513

/-! ## A365836.P5426222859010191898

`A079729(3*n+5)%A055642(A272140(n+1))`
-/

namespace A365836.P5426222859010191898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079729 (3 * n + 5)) (A055642 (A272140 (n + 1)).toNat)

end

end A365836.P5426222859010191898

/-! ## A365836.P14718972871027802321

`gcd(A079729(3*n+5), A358513(A000040(n+1)))`
-/

namespace A365836.P14718972871027802321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079729 (3 * n + 5)) (A358513 (A000040 (n + 1)).toNat)

end

end A365836.P14718972871027802321

/-!
# A365837: Largest proper square divisor of n, for n >= 2; a(1) = 1.

The programs for A365837, there is no canonical definition to state claims against.
-/

/-! ## A365837.P13531299638375128515

`A008833(A048671(n+1)*A249419(n+1))`
-/

namespace A365837.P13531299638375128515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A048671 (n + 1) * A249419 (n + 1)).toNat

end

end A365837.P13531299638375128515

/-! ## A365837.P6748870432340254683

`A008833(lcm(A048671(n+1), A249419(n+1)))`
-/

namespace A365837.P6748870432340254683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (Int.lcm (A048671 (n + 1)) (A249419 (n + 1)))

end

end A365837.P6748870432340254683

/-! ## A365837.P3133399589879420107

`A008833(A242219(A294895(A294895(n+1))))`
-/

namespace A365837.P3133399589879420107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A242219 (A294895 (A294895 (n + 1)).toNat).toNat).toNat

end

end A365837.P3133399589879420107

/-! ## A365837.P14513371677409568314

`gcd(A008833(n+1), A372651(n+1))`
-/

namespace A365837.P14513371677409568314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008833 (n + 1)) (A372651 (n + 1))

end

end A365837.P14513371677409568314

/-! ## A365837.P12433739635904079768

`A008833(gcd(n+1, ∏{p}[n+1, (n+1)/#])*A235394(2*n+3))`
-/

namespace A365837.P12433739635904079768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 ((Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) : ℤ) * A235394 (2 * n + 3)).toNat

end

end A365837.P12433739635904079768

/-!
# A365840: Expansion of (1/x) * Series_Reversion( x*(1-x)^4/(1+x)^2 ).

The programs for A365840, there is no canonical definition to state claims against.
-/

/-! ## A365840.P10014079933698640344

`∑[A284752(∑[A176335(n)])]`
-/

namespace A365840.P10014079933698640344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365840.P10014079933698640344

/-!
# A365842: Expansion of (1/x) * Series_Reversion( x*(1-x)^2/(1+x)^3 ).

The programs for A365842, there is no canonical definition to state claims against.
-/

/-! ## A365842.P14723999474405041218

`∑[A000309(n)*A008574(n)]`
-/

namespace A365842.P14723999474405041218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000309 n * A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365842.P14723999474405041218

/-! ## A365842.P4064857461598242423

`A083691(2*n+1)/A299174(A000079(n))`
-/

namespace A365842.P4064857461598242423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083691 (2 * n + 1) : ℚ) / (A299174 (A000079 n).toNat : ℚ)

end

end A365842.P4064857461598242423

/-!
# A365843: Expansion of (1/x) * Series_Reversion( x*(1-x)^3/(1+x)^3 ).

The programs for A365843, there is no canonical definition to state claims against.
-/

/-! ## A365843.P16019306405518270569

`A378238(A034856(n+3)-2)`
-/

namespace A365843.P16019306405518270569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378238 (A034856 (n + 3) - 2).toNat

end

end A365843.P16019306405518270569

/-! ## A365843.P13576296722213918972

`A378238(A000217(n+3)+n)`
-/

namespace A365843.P13576296722213918972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378238 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A365843.P13576296722213918972

/-! ## A365843.P15209629702076678372

`A378238(A008805(2*(n+2))+n)`
-/

namespace A365843.P15209629702076678372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378238 (A008805 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A365843.P15209629702076678372

/-! ## A365843.P7044073616669100413

`A187920(A167614(n+1))`
-/

namespace A365843.P7044073616669100413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187920 (A167614 (n + 1)).toNat

end

end A365843.P7044073616669100413

/-! ## A365843.P14777588554512351635

`A378238(eq[A185014(n+2), A294042(n+3)])`
-/

namespace A365843.P14777588554512351635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378238 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A365843.P14777588554512351635

/-!
# A365844: Expansion of (1/x) * Series_Reversion( x*(1-x)^4/(1+x)^3 ).

The programs for A365844, there is no canonical definition to state claims against.
-/

/-! ## A365844.P15536623675758641929

`A250000(A062252(n+1))+A000984(2*n)`
-/

namespace A365844.P15536623675758641929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250000 (A062252 (n + 1)).toNat + A000984 (2 * n)

end

end A365844.P15536623675758641929

/-!
# A365849: Triangular numbers that are the product of two distinct prime numbers of the form 4*k + 3.

The programs for A365849, there is no canonical definition to state claims against.
-/

/-! ## A365849.P18302352773545603606

`C(A101789(n+1), 2)`
-/

namespace A365849.P18302352773545603606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A101789 (n + 1)).toNat 2

end

end A365849.P18302352773545603606

/-! ## A365849.P16580023449178908035

`C(2*A002515(n+1)+1, 2)`
-/

namespace A365849.P16580023449178908035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A002515 (n + 1) + 1).toNat 2

end

end A365849.P16580023449178908035

/-! ## A365849.P7401531638767295478

`A014105(A002515(n+1))`
-/

namespace A365849.P7401531638767295478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (A002515 (n + 1)).toNat

end

end A365849.P7401531638767295478

/-! ## A365849.P9470571886696048926

`A001841(A101789(n+1))`
-/

namespace A365849.P9470571886696048926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001841 (A101789 (n + 1)).toNat

end

end A365849.P9470571886696048926

/-! ## A365849.P16899733862222760517

`A014105(A374914(n+2))`
-/

namespace A365849.P16899733862222760517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (A374914 (n + 2)).toNat

end

end A365849.P16899733862222760517

/-!
# A365851: The number of divisors of the n-th practical number (A005153).

The programs for A365851, there is no canonical definition to state claims against.
-/

/-! ## A365851.P7662557537981772250

`∏{e}[A005153(n+1), #+1]`
-/

namespace A365851.P7662557537981772250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A365851.P7662557537981772250

/-! ## A365851.P10942189817654579759

`A000005(A005153(n+1))`
-/

namespace A365851.P10942189817654579759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005153 (n + 1)).toNat

end

end A365851.P10942189817654579759

/-! ## A365851.P10534881687495834132

`A000005(eq[A000203(n+1), A119347(n+1)]+1)`
-/

namespace A365851.P10534881687495834132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A365851.P10534881687495834132

/-! ## A365851.P4324763942260363524

`A000005(lt[n, A030057(n+1)]+1)`
-/

namespace A365851.P4324763942260363524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A365851.P4324763942260363524

/-! ## A365851.P1597399757246381349

`∑{d}[A005153(n+1), A057427(#)]`
-/

namespace A365851.P1597399757246381349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A365851.P1597399757246381349

/-!
# A365854: Expansion of (1/x) * Series_Reversion( x*(1+x)^2*(1-x)^3 ).

The programs for A365854, there is no canonical definition to state claims against.
-/

/-! ## A365854.P10772577974304022602

`A130446(A149471(n))`
-/

namespace A365854.P10772577974304022602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A149471 n).toNat

end

end A365854.P10772577974304022602

/-! ## A365854.P9176621272085954132

`A370320(n)+A154121(A143599(n))`
-/

namespace A365854.P9176621272085954132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370320 n + A154121 (A143599 n).toNat

end

end A365854.P9176621272085954132

/-!
# A365855: Expansion of (1/x) * Series_Reversion( x*(1+x)^2*(1-x)^4 ).

The programs for A365855, there is no canonical definition to state claims against.
-/

/-! ## A365855.P16784157536699542426

`A013940(A131786(n))+A000041(n)`
-/

namespace A365855.P16784157536699542426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013940 (A131786 n).toNat + A000041 n

end

end A365855.P16784157536699542426

/-!
# A365856: Expansion of (1/x) * Series_Reversion( x*(1+x)^2*(1-x)^5 ).

The programs for A365856, there is no canonical definition to state claims against.
-/

/-! ## A365856.P17631750945978762492

`A289494(A156577(n))+n`
-/

namespace A365856.P17631750945978762492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A156577 n).toNat + (n : ℤ)

end

end A365856.P17631750945978762492

/-!
# A365857: Number of cyclic compositions of 2*n into odd parts.

The programs for A365857, there is no canonical definition to state claims against.
-/

/-! ## A365857.P7793568458176639549

`(A032198(n+1)+A365859(n+1))/2`
-/

namespace A365857.P7793568458176639549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032198 (n + 1) + A365859 (n + 1) : ℚ) / 2

end

end A365857.P7793568458176639549

/-! ## A365857.P16907715730324159422

`A032189(2*(n+1))`
-/

namespace A365857.P16907715730324159422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032189 (2 * (n + 1))

end

end A365857.P16907715730324159422

/-! ## A365857.P11799512988793182527

`A032190(2*(n+1))`
-/

namespace A365857.P11799512988793182527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032190 (2 * (n + 1))

end

end A365857.P11799512988793182527

/-! ## A365857.P1837952216203550122

`A000358(2*(n+1))-1`
-/

namespace A365857.P1837952216203550122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000358 (2 * (n + 1)) - 1

end

end A365857.P1837952216203550122

/-! ## A365857.P875054065131497568

`A274017(2*(n+1))-2`
-/

namespace A365857.P875054065131497568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274017 (2 * (n + 1)) - 2

end

end A365857.P875054065131497568

/-! ## A365857.P17297705026295571820

`A263659(2*(n+1))-1`
-/

namespace A365857.P17297705026295571820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263659 (2 * (n + 1)) - 1

end

end A365857.P17297705026295571820

/-! ## A365857.P3250979647154814675

`A063686(A084849(n+1))`
-/

namespace A365857.P3250979647154814675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063686 (A084849 (n + 1)).toNat

end

end A365857.P3250979647154814675

/-!
# A365858: Number of cyclic compositions of 2*n-1 into odd parts.

The programs for A365858, there is no canonical definition to state claims against.
-/

/-! ## A365858.P11701780074021579061

`A000358(Δ[n²])`
-/

namespace A365858.P11701780074021579061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000358 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A365858.P11701780074021579061

/-! ## A365858.P13759297865245157606

`A032189(Δ[n²])`
-/

namespace A365858.P13759297865245157606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032189 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A365858.P13759297865245157606

/-! ## A365858.P2352361254821588985

`A365859(Δ[n²])`
-/

namespace A365858.P2352361254821588985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365859 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A365858.P2352361254821588985

/-! ## A365858.P11607541681624973408

`record[A365859(n+1)]`
-/

namespace A365858.P11607541681624973408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365858.P11607541681624973408

/-! ## A365858.P18240270093991539038

`A032190(Δ[n²])+1`
-/

namespace A365858.P18240270093991539038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032190 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A365858.P18240270093991539038

/-! ## A365858.P2459110616810278572

`A274017(Δ[n²])-1`
-/

namespace A365858.P2459110616810278572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274017 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A365858.P2459110616810278572

/-! ## A365858.P8362536643855679731

`∑{d}[Δ[n²], A006206(#)]`
-/

namespace A365858.P8362536643855679731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006206 d

end

end A365858.P8362536643855679731

/-! ## A365858.P1614978794298170297

`∑{d}[2*n+1, A060280(#)]`
-/

namespace A365858.P1614978794298170297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060280 d

end

end A365858.P1614978794298170297

/-! ## A365858.P13366737453270204533

`A316660(2*n+1)+A011655(n+2)`
-/

namespace A365858.P13366737453270204533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316660 (2 * n + 1) + A011655 (n + 2)

end

end A365858.P13366737453270204533

/-! ## A365858.P15114286846221573311

`A322057((2*n+1)*(n+2))`
-/

namespace A365858.P15114286846221573311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322057 ((2 * n + 1) * (n + 2))

end

end A365858.P15114286846221573311

/-!
# A365859: Number of self-dual cyclic n-color compositions.

The programs for A365859, there is no canonical definition to state claims against.
-/

/-! ## A365859.P7072414971746195033

`2*A365857(n+1)-A032198(n+1)`
-/

namespace A365859.P7072414971746195033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A365857 (n + 1) - A032198 (n + 1)

end

end A365859.P7072414971746195033

/-! ## A365859.P6761229006292479151

`A000358((n+1)/2^val(n+1, 2))`
-/

namespace A365859.P6761229006292479151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000358 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A365859.P6761229006292479151

/-! ## A365859.P9723345520826506897

`A274017((n+1)/2^val(n+1, 2))-1`
-/

namespace A365859.P9723345520826506897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274017 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat - 1

end

end A365859.P9723345520826506897

/-! ## A365859.P17969604356645599409

`∑{d}[(n+1)/2^val(n+1, 2), A006206(#)]`
-/

namespace A365859.P17969604356645599409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A006206 d

end

end A365859.P17969604356645599409

/-! ## A365859.P14864108745435468472

`∑{d}[(n+1)/2^val(n+1, 2), A060280(#)]`
-/

namespace A365859.P14864108745435468472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A060280 d

end

end A365859.P14864108745435468472

/-! ## A365859.P6411203717410901832

`A000358(A000265(n+1))`
-/

namespace A365859.P6411203717410901832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000358 (A000265 (n + 1)).toNat

end

end A365859.P6411203717410901832

/-! ## A365859.P2106881842117531136

`A365858(A003602(n+1))`
-/

namespace A365859.P2106881842117531136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365858 (A003602 (n + 1)).toNat

end

end A365859.P2106881842117531136

/-! ## A365859.P14924606764069425875

`A032189(A000265(2*(n+1)))`
-/

namespace A365859.P14924606764069425875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032189 (A000265 (2 * (n + 1))).toNat

end

end A365859.P14924606764069425875

/-!
# A365860: For every cell of a polyomino let c be the number of cells that are in the same row or in the same column (including itself). a(n) is the sum of the c values of all cells of all free polyominoes with n cells.

The programs for A365860, there is no canonical definition to state claims against.
-/

/-! ## A365860.P9121510353190022230

`A130420(A011769(n))`
-/

namespace A365860.P9121510353190022230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130420 (A011769 n).toNat

end

end A365860.P9121510353190022230

/-!
# A365861: a(1) = 4; for n > 1, a(n) is the first semiprime k not yet listed such that |k - a(n-1)| and k + a(n-1) are also semiprimes.

The programs for A365861, there is no canonical definition to state claims against.
-/

/-! ## A365861.P11360614181202073959

`A279791(A271922(n+1))+A217250(2*(n+1))`
-/

namespace A365861.P11360614181202073959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279791 (A271922 (n + 1)).toNat + A217250 (2 * (n + 1))

end

end A365861.P11360614181202073959

/-!
# A365863: a(0) = 1; thereafter a(n) = n*Sum_{k = 0..n-1} binomial(n, k)*(-1)^(1+n+k)*a(k).

The programs for A365863, there is no canonical definition to state claims against.
-/

/-! ## A365863.P15006073960727159242

`A001405(n)*A063928(A378400(n))`
-/

namespace A365863.P15006073960727159242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A063928 (A378400 n).toNat

end

end A365863.P15006073960727159242

/-!
# A365864: Numbers k such that k and k+1 are both divisible by the square of their least prime factor.

The programs for A365864, the canonical program `A365864.P18209421037915333050` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365864 has offset 1).

The definition of A365864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365864.P18209421037915333050

`∩[A283050(n+1)-1, A283050(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A365864

/-- `∩[A283050(n+1)-1, A283050(n+1)]` -/
def P18209421037915333050.Spec : Prop :=
  ∀ n, (P18209421037915333050.a n : ℤ) = A365864 (n + 1)

theorem P18209421037915333050.correct : P18209421037915333050.Spec := by
  intro n
  simp only [A365864, Nat.add_sub_cancel]

end A365864

/-! ## A365864.P14423052037218608511

`eq[1, A286471((2*n+1-(-1)^((n+1)*(n+2)/2))/2)]`
-/

namespace A365864.P14423052037218608511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (SequenceMachineLib.roundAway (((2 * n : ℝ) + (1 - (-1 : ℝ) ^ ((n + 1 : ℚ) * ((n + 2 : ℚ) / 2) : ℝ))) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A365864.P14423052037218608511

namespace A365864

/-- `eq[1, A286471((2*n+1-(-1)^((n+1)*(n+2)/2))/2)]` -/
def P14423052037218608511.Spec : Prop :=
  ∀ n, (P14423052037218608511.a n : ℤ) = A365864 (n + 1)

end A365864

/-! ## A365864.P2566630656181005848

`eq[A126773(n+1), A319710(A028310(n))]`
-/

namespace A365864.P2566630656181005848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A365864.P2566630656181005848

namespace A365864

/-- `eq[A126773(n+1), A319710(A028310(n))]` -/
def P2566630656181005848.Spec : Prop :=
  ∀ n, (P2566630656181005848.a n : ℤ) = A365864 (n + 1)

end A365864

/-! ## A365864.P1333160645834322742

`eq[A126773(n+1), A319710(A233583(n+1))]`
-/

namespace A365864.P1333160645834322742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A365864.P1333160645834322742

namespace A365864

/-- `eq[A126773(n+1), A319710(A233583(n+1))]` -/
def P1333160645834322742.Spec : Prop :=
  ∀ n, (P1333160645834322742.a n : ℤ) = A365864 (n + 1)

end A365864

/-! ## A365864.P1703505100842155854

`∩[A375399(n+1)-1, A375399(n+1)]`
-/

namespace A365864.P1703505100842155854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375399 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365864.P1703505100842155854

namespace A365864

/-- `∩[A375399(n+1)-1, A375399(n+1)]` -/
def P1703505100842155854.Spec : Prop :=
  ∀ n, (P1703505100842155854.a n : ℤ) = A365864 (n + 1)

end A365864

/-!
# A365865: Starts of runs of 3 consecutive integers that are divisible by the square of their least prime factor.

The programs for A365865, the canonical program `A365865.P7129990262128482870` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365865 has offset 1).

The definition of A365865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365865.P7129990262128482870

`∩[A365864(n+1)-1, A365864(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A365865

/-- `∩[A365864(n+1)-1, A365864(n+1)]` -/
def P7129990262128482870.Spec : Prop :=
  ∀ n, (P7129990262128482870.a n : ℤ) = A365865 (n + 1)

theorem P7129990262128482870.correct : P7129990262128482870.Spec := by
  intro n
  simp only [A365865, Nat.add_sub_cancel]

end A365865

/-! ## A365865.P8673548540229860863

`∩[A365864(n+1), A023443(A365864(n+1))]`
-/

namespace A365865.P8673548540229860863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A365864 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365865.P8673548540229860863

namespace A365865

/-- `∩[A365864(n+1), A023443(A365864(n+1))]` -/
def P8673548540229860863.Spec : Prop :=
  ∀ n, (P8673548540229860863.a n : ℤ) = A365865 (n + 1)

end A365865

/-!
# A365866: Integers that are divisible by the cube of their least prime factor.

The programs for A365866, there is no canonical definition to state claims against.
-/

/-! ## A365866.P12173535455169690107

`lt[2, val(n+1, A020639(abs(1-n)+2))]+1`
-/

namespace A365866.P12173535455169690107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A020639 (|1 - (n : ℤ)| + 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A365866.P12173535455169690107

/-! ## A365866.P6431692053703701740

`lt[2, A067029(n+1)]+1`
-/

namespace A365866.P6431692053703701740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A365866.P6431692053703701740

/-! ## A365866.P8148288842617155547

`lt[2, A067029(A028310(n))]`
-/

namespace A365866.P8148288842617155547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A365866.P8148288842617155547

/-! ## A365866.P10192792359955214546

`A065475(lt[2, A067029(n+1)])`
-/

namespace A365866.P10192792359955214546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A365866.P10192792359955214546

/-! ## A365866.P10026761991017915800

`lt[2, A067029(A233583(n+1))]`
-/

namespace A365866.P10026761991017915800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A365866.P10026761991017915800

/-!
# A365867: Numbers k such that k and k+1 are both divisible by the cube of their least prime factor.

The programs for A365867, there is no canonical definition to state claims against.
-/

/-! ## A365867.P14883380932903169649

`∩[A365866(n+1)-1, A365866(n+1)]`
-/

namespace A365867.P14883380932903169649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365867.P14883380932903169649

/-! ## A365867.P940375257540653210

`A068140(A184522(n+1)%A003216(n+5))`
-/

namespace A365867.P940375257540653210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (Int.tmod (A184522 (n + 1)) (A003216 (n + 5))).toNat

end

end A365867.P940375257540653210

/-!
# A365869: Numbers whose exponent of least prime factor in their prime factorization is even.

The programs for A365869, the canonical program `A365869.P17856574011700522370` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365869 has offset 1).

The definition of A365869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365869.P17634991003833234823

`lt[1, A022717(A067029(n+1))]+1`
-/

namespace A365869.P17634991003833234823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022717 (A067029 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A365869.P17634991003833234823

namespace A365869

/-- `lt[1, A022717(A067029(n+1))]+1` -/
def P17634991003833234823.Spec : Prop :=
  ∀ n, (P17634991003833234823.a n : ℤ) = A365869 (n + 1)

end A365869

/-! ## A365869.P1085056407724903480

`lt[1, A057237(A067029(n+1)+1)]+1`
-/

namespace A365869.P1085056407724903480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A067029 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A365869.P1085056407724903480

namespace A365869

/-- `lt[1, A057237(A067029(n+1)+1)]+1` -/
def P1085056407724903480.Spec : Prop :=
  ∀ n, (P1085056407724903480.a n : ℤ) = A365869 (n + 1)

end A365869

/-! ## A365869.P17856574011700522370

`lt[2, A014963(A067029(n+1)+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A365869

/-- `lt[2, A014963(A067029(n+1)+1)]+1` -/
def P17856574011700522370.Spec : Prop :=
  ∀ n, (P17856574011700522370.a n : ℤ) = A365869 (n + 1)

theorem P17856574011700522370.correct : P17856574011700522370.Spec := by
  intro n
  simp only [A365869, Nat.add_sub_cancel]

end A365869

/-! ## A365869.P12938362740251048531

`lt[A020639(n+1), A223490(n+1)]+1`
-/

namespace A365869.P12938362740251048531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A365869.P12938362740251048531

namespace A365869

/-- `lt[A020639(n+1), A223490(n+1)]+1` -/
def P12938362740251048531.Spec : Prop :=
  ∀ n, (P12938362740251048531.a n : ℤ) = A365869 (n + 1)

end A365869

/-! ## A365869.P6423764871583023647

`lt[val(A067029(n+1)+A000040(n+1), 2), 1]+1`
-/

namespace A365869.P6423764871583023647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067029 (n + 1) + A000040 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A365869.P6423764871583023647

namespace A365869

/-- `lt[val(A067029(n+1)+A000040(n+1), 2), 1]+1` -/
def P6423764871583023647.Spec : Prop :=
  ∀ n, (P6423764871583023647.a n : ℤ) = A365869 (n + 1)

end A365869

/-!
# A365870: Numbers k such that k and k+1 both have an even exponent of least prime factor in their prime factorization.

The programs for A365870, the canonical program `A365870.P6694161055261231779` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365870 has offset 1).

The definition of A365870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1816 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365870.P6694161055261231779

`∩[A365869(n+1)-1, A365869(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A365870

/-- `∩[A365869(n+1)-1, A365869(n+1)]` -/
def P6694161055261231779.Spec : Prop :=
  ∀ n, (P6694161055261231779.a n : ℤ) = A365870 (n + 1)

theorem P6694161055261231779.correct : P6694161055261231779.Spec := by
  intro n
  simp only [A365870, Nat.add_sub_cancel]

end A365870

/-! ## A365870.P15721839914052448125

`∩[A365869(n+1), A233583(A365869(n+1))]`
-/

namespace A365870.P15721839914052448125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A365869 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365870.P15721839914052448125

namespace A365870

/-- `∩[A365869(n+1), A233583(A365869(n+1))]` -/
def P15721839914052448125.Spec : Prop :=
  ∀ n, (P15721839914052448125.a n : ℤ) = A365870 (n + 1)

end A365870

/-! ## A365870.P1469821517975543675

`∩[A316597(n+1), A342187(n+1)]`
-/

namespace A365870.P1469821517975543675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365870.P1469821517975543675

namespace A365870

/-- `∩[A316597(n+1), A342187(n+1)]` -/
def P1469821517975543675.Spec : Prop :=
  ∀ n, (P1469821517975543675.a n : ℤ) = A365870 (n + 1)

end A365870

/-! ## A365870.P8615662970588896642

`∩[A329142(n+1), A342187(n+1)]`
-/

namespace A365870.P8615662970588896642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365870.P8615662970588896642

namespace A365870

/-- `∩[A329142(n+1), A342187(n+1)]` -/
def P8615662970588896642.Spec : Prop :=
  ∀ n, (P8615662970588896642.a n : ℤ) = A365870 (n + 1)

end A365870

/-! ## A365870.P9169164447504946586

`∩[A342187(n+1), A360253(n+1)]`
-/

namespace A365870.P9169164447504946586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365870.P9169164447504946586

namespace A365870

/-- `∩[A342187(n+1), A360253(n+1)]` -/
def P9169164447504946586.Spec : Prop :=
  ∀ n, (P9169164447504946586.a n : ℤ) = A365870 (n + 1)

end A365870

/-!
# A365871: Starts of runs of 3 consecutive integers whose exponent of least prime factor in their prime factorization is even.

The programs for A365871, the canonical program `A365871.P3627370264345146378` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365871 has offset 1).

The definition of A365871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365871.P3627370264345146378

`∩[A365870(n+1)-1, A365870(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A365871

/-- `∩[A365870(n+1)-1, A365870(n+1)]` -/
def P3627370264345146378.Spec : Prop :=
  ∀ n, (P3627370264345146378.a n : ℤ) = A365871 (n + 1)

theorem P3627370264345146378.correct : P3627370264345146378.Spec := by
  intro n
  simp only [A365871, Nat.add_sub_cancel]

end A365871

/-!
# A365872: The "double commas" sequence, a variant of A121805. See the Comments and Example sections for detailed explanations.

The programs for A365872, there is no canonical definition to state claims against.
-/

/-! ## A365872.P16073909723741833811

`A337254(A065959(n+1))`
-/

namespace A365872.P16073909723741833811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337254 (A065959 (n + 1)).toNat

end

end A365872.P16073909723741833811

/-!
# A365873: The "triple commas" sequence, a variant of A121805. See the Comments and Example sections for detailed explanations.

The programs for A365873, there is no canonical definition to state claims against.
-/

/-! ## A365873.P13802916630018953016

`or(A241917(3*n+2), A296610(A178735(2*n)))`
-/

namespace A365873.P13802916630018953016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A241917 (3 * n + 2)) (A296610 (A178735 (2 * n)).toNat)

end

end A365873.P13802916630018953016

/-!
# A365876: a(n) is the number of quadratic equations u*x^2 + v*x + w = 0 with distinct solution sets L != {}, integer coefficients u, v, w and GCD(u, v, w) = 1, where n = abs(u) + abs(v) + abs(w) and the sum of the solutions equals the product of the solutions.

The programs for A365876, there is no canonical definition to state claims against.
-/

/-! ## A365876.P1884805764433892720

`A378068(A333996(n+2))`
-/

namespace A365876.P1884805764433892720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378068 (A333996 (n + 2)).toNat

end

end A365876.P1884805764433892720

/-! ## A365876.P13411402210820299384

`A275024(A127525(n+1))+A088002(n)`
-/

namespace A365876.P13411402210820299384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A127525 (n + 1)).toNat + A088002 n

end

end A365876.P13411402210820299384

/-! ## A365876.P4692204604138282289

`A076649(A283592(n+2))-A210679(n+1)`
-/

namespace A365876.P4692204604138282289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (A283592 (n + 2)).toNat - A210679 (n + 1)

end

end A365876.P4692204604138282289

/-! ## A365876.P16462298494346832558

`A289440(n+2)-A079944(A247125(n+1))`
-/

namespace A365876.P16462298494346832558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (n + 2) - A079944 (A247125 (n + 1)).toNat

end

end A365876.P16462298494346832558

/-! ## A365876.P13982941063039289200

`A328772(n)+A004601(A002622(3*n+1))`
-/

namespace A365876.P13982941063039289200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n + A004601 (A002622 (3 * n + 1)).toNat

end

end A365876.P13982941063039289200

/-!
# A365877: a(n) is the number of quadratic equations u*x^2 + v*x + w = 0 with distinct solution sets L != {} and integer coefficients u, v, w, where n >= abs(u) + abs(v) + abs(w) and the sum of the solutions equals the product of the solutions.

The programs for A365877, there is no canonical definition to state claims against.
-/

/-! ## A365877.P14439843776405899164

`∑[A365876(n+1)]`
-/

namespace A365877.P14439843776405899164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365877.P14439843776405899164

/-! ## A365877.P8475614975776991499

`A365876(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A365877.P8475614975776991499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A365876 (n + 1) + a (A023443 n).toNat

end

end A365877.P8475614975776991499

/-! ## A365877.P5296304023240975595

`or(A189706(A000079(n)), A341123(n+5))`
-/

namespace A365877.P5296304023240975595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189706 (A000079 n).toNat) (A341123 (n + 5))

end

end A365877.P5296304023240975595

/-!
# A365878: Expansion of (1/x) * Series_Reversion( x*(1+x)^3*(1-x)^4 ).

The programs for A365878, there is no canonical definition to state claims against.
-/

/-! ## A365878.P13087351805888381648

`A076499(A149676(n))`
-/

namespace A365878.P13087351805888381648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076499 (A149676 n).toNat

end

end A365878.P13087351805888381648

/-! ## A365878.P13128577543600803109

`A194962(A149805(n))`
-/

namespace A365878.P13128577543600803109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194962 (A149805 n).toNat

end

end A365878.P13128577543600803109

/-!
# A365879: Expansion of (1/x) * Series_Reversion( x*(1+x)^3*(1-x)^5 ).

The programs for A365879, there is no canonical definition to state claims against.
-/

/-! ## A365879.P16422590445913712447

`n*A121541(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A365879.P16422590445913712447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * A121541 (a (n - 1)).toNat

end

end A365879.P16422590445913712447

/-!
# A365880: Expansion of (1/x) * Series_Reversion( x*(1+x)^4*(1-x)^5 ).

The programs for A365880, there is no canonical definition to state claims against.
-/

/-! ## A365880.P12118932061902443348

`A331835(9^∑[∑{e}[n, #]])`
-/

namespace A365880.P12118932061902443348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (9 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A365880.P12118932061902443348

/-!
# A365881: Number of partitions of 2^(2n) into 2^n parts.

The programs for A365881, there is no canonical definition to state claims against.
-/

/-! ## A365881.P7959509751184799489

`A206240(2^n)`
-/

namespace A365881.P7959509751184799489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206240 (2 ^ n)

end

end A365881.P7959509751184799489

/-! ## A365881.P4708105987599849031

`A327483(∑[4*n])`
-/

namespace A365881.P4708105987599849031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327483 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365881.P4708105987599849031

/-!
# A365883: Numbers k whose least prime divisor is equal to its exponent in the prime factorization of k.

The programs for A365883, there is no canonical definition to state claims against.
-/

/-! ## A365883.P7688717515464903741

`eq[A020639(n+1), A067029(n+1)]+1`
-/

namespace A365883.P7688717515464903741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A365883.P7688717515464903741

/-! ## A365883.P3236474002432747030

`A020725(eq[A020639(n+1), A067029(n+1)])`
-/

namespace A365883.P3236474002432747030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A365883.P3236474002432747030

/-! ## A365883.P14058415060456779137

`A065475(eq[A020639(n+1), A067029(n+1)])`
-/

namespace A365883.P14058415060456779137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A365883.P14058415060456779137

/-! ## A365883.P11773186547993158037

`A065475(eq[A067029(n+1), A102457(n+2)])`
-/

namespace A365883.P11773186547993158037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A365883.P11773186547993158037

/-! ## A365883.P13349442439340519794

`filter[A385097(n+1), A369070(#)]`
-/

namespace A365883.P13349442439340519794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A365883.P13349442439340519794

/-!
# A365884: Numbers k such that k and k+1 are both terms of A365883.

The programs for A365884, there is no canonical definition to state claims against.
-/

/-! ## A365884.P9453313849357331530

`∩[A365883(n+1)-1, A365883(n+1)]`
-/

namespace A365884.P9453313849357331530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365883 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365884.P9453313849357331530

/-! ## A365884.P977196990290673863

`A365890(∑[A325753(n)!])`
-/

namespace A365884.P977196990290673863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A325753 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365890 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365884.P977196990290673863

/-! ## A365884.P1628202407458942048

`A365890(lt[A287608(n), A001844(n)])`
-/

namespace A365884.P1628202407458942048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287608 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365890 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A365884.P1628202407458942048

/-!
# A365886: Numbers k whose least prime divisor is smaller than its exponent in the prime factorization of k.

The programs for A365886, there is no canonical definition to state claims against.
-/

/-! ## A365886.P4264920992888890437

`∩[A185359(n+1), A365866(n+1)]`
-/

namespace A365886.P4264920992888890437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365886.P4264920992888890437

/-! ## A365886.P15672614301085710143

`∩[A185359(n+1), A229838(n+1)]`
-/

namespace A365886.P15672614301085710143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365886.P15672614301085710143

/-! ## A365886.P17816736245045247866

`∩[A047486(n+1), A185359(n+1)]`
-/

namespace A365886.P17816736245045247866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365886.P17816736245045247866

/-! ## A365886.P7012070525670927595

`lt[A020639(n+1), A067029(n+1)]+1`
-/

namespace A365886.P7012070525670927595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A365886.P7012070525670927595

/-! ## A365886.P1813184783323989299

`lt[A107286(n), A067029(A028310(n))]`
-/

namespace A365886.P1813184783323989299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A365886.P1813184783323989299

/-!
# A365887: Numbers k such that k and k+1 are both terms of A365886.

The programs for A365887, there is no canonical definition to state claims against.
-/

/-! ## A365887.P8283553172619336489

`∩[A365886(n+1)-1, A365886(n+1)]`
-/

namespace A365887.P8283553172619336489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365886 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365887.P8283553172619336489

/-! ## A365887.P2727569015957930075

`∩[A185359(n+1)-1, A185359(n+1)]`
-/

namespace A365887.P2727569015957930075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185359 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365887.P2727569015957930075

/-!
# A365889: Numbers k whose least prime divisor divides its exponent in the prime factorization of k.

The programs for A365889, the canonical program `A365889.P4165822453483642399` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365889 has offset 1).

The definition of A365889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365889.P4165822453483642399

`filter[A036552(2*n+1), A369070(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A365889

/-- `filter[A036552(2*n+1), A369070(#)]` -/
def P4165822453483642399.Spec : Prop :=
  ∀ n, P4165822453483642399.a n = A365889 (n + 1)

theorem P4165822453483642399.correct : P4165822453483642399.Spec := by
  intro n
  simp only [A365889, Nat.add_sub_cancel]

end A365889

/-! ## A365889.P7339142280801457156

`filter[A177713(n+1), A369070(#)]`
-/

namespace A365889.P7339142280801457156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A365889.P7339142280801457156

namespace A365889

/-- `filter[A177713(n+1), A369070(#)]` -/
def P7339142280801457156.Spec : Prop :=
  ∀ n, P7339142280801457156.a n = A365889 (n + 1)

end A365889

/-! ## A365889.P12183917549188887479

`∩[A177713(n+1), A342090(n+1)]`
-/

namespace A365889.P12183917549188887479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365889.P12183917549188887479

namespace A365889

/-- `∩[A177713(n+1), A342090(n+1)]` -/
def P12183917549188887479.Spec : Prop :=
  ∀ n, (P12183917549188887479.a n : ℤ) = A365889 (n + 1)

end A365889

/-!
# A365890: Numbers k such that k and k+1 are both terms of A365889.

The programs for A365890, the canonical program `A365890.P835409852023182755` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365890 has offset 1).

The definition of A365890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365890.P835409852023182755

`∩[A365889(n+1)-1, A365889(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A365890

/-- `∩[A365889(n+1)-1, A365889(n+1)]` -/
def P835409852023182755.Spec : Prop :=
  ∀ n, (P835409852023182755.a n : ℤ) = A365890 (n + 1)

theorem P835409852023182755.correct : P835409852023182755.Spec := by
  intro n
  simp only [A365890, Nat.add_sub_cancel]

end A365890

/-! ## A365890.P7651180240454472625

`∩[A342090(n+1), A023443(A342090(n+1))]`
-/

namespace A365890.P7651180240454472625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A342090 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365890.P7651180240454472625

namespace A365890

/-- `∩[A342090(n+1), A023443(A342090(n+1))]` -/
def P7651180240454472625.Spec : Prop :=
  ∀ n, (P7651180240454472625.a n : ℤ) = A365890 (n + 1)

end A365890

/-!
# A365892: a(n) is the index of the n-th term of A365876 that includes at least one equation with at least one integer solution.

The programs for A365892, the canonical program `A365892.P14482851802269866717` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365892 has offset 1).

The definition of A365892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365892.P12064266787350902839

`floor(∑[n+1]²/a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A365892.P12064266787350902839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A365892.P12064266787350902839

namespace A365892

/-- `floor(∑[n+1]²/a(n-1))` -/
def P12064266787350902839.Spec : Prop :=
  ∀ n, P12064266787350902839.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P2150429847064808569

`floor(∑[(n+1)^3]/floor(a(n-1)))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A365892.P2150429847064808569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A365892.P2150429847064808569

namespace A365892

/-- `floor(∑[(n+1)^3]/floor(a(n-1)))` -/
def P2150429847064808569.Spec : Prop :=
  ∀ n, P2150429847064808569.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P8782062733111619922

`floor(∑[n+1]/a(n-1)*∑[n+1])` with `a(0)=1, a(1)=4`
-/

namespace A365892.P8782062733111619922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)⌋

end

end A365892.P8782062733111619922

namespace A365892

/-- `floor(∑[n+1]/a(n-1)*∑[n+1])` -/
def P8782062733111619922.Spec : Prop :=
  ∀ n, P8782062733111619922.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P14482851802269866717

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=11, a(4)=20, a(5)=22`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A365892

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P14482851802269866717.Spec : Prop :=
  ∀ n, P14482851802269866717.a n = A365892 (n + 1)

theorem P14482851802269866717.correct : P14482851802269866717.Spec := by
  intro n
  simp only [A365892, Nat.add_sub_cancel]

end A365892

/-! ## A365892.P7013678982182384913

`A133263(n)+A022998(n)`
-/

namespace A365892.P7013678982182384913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n + A022998 n

end

end A365892.P7013678982182384913

namespace A365892

/-- `A133263(n)+A022998(n)` -/
def P7013678982182384913.Spec : Prop :=
  ∀ n, P7013678982182384913.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P4759792993657536632

`A265724(n)+A040001(n)`
-/

namespace A365892.P4759792993657536632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265724 n + A040001 n

end

end A365892.P4759792993657536632

namespace A365892

/-- `A265724(n)+A040001(n)` -/
def P4759792993657536632.Spec : Prop :=
  ∀ n, P4759792993657536632.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P1276192211934701644

`A266725(n)+A114119(n)`
-/

namespace A365892.P1276192211934701644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 n + A114119 n

end

end A365892.P1276192211934701644

namespace A365892

/-- `A266725(n)+A114119(n)` -/
def P1276192211934701644.Spec : Prop :=
  ∀ n, P1276192211934701644.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P1550164644044552073

`A266439(n)+A266438(n)`
-/

namespace A365892.P1550164644044552073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266439 n + A266438 n

end

end A365892.P1550164644044552073

namespace A365892

/-- `A266439(n)+A266438(n)` -/
def P1550164644044552073.Spec : Prop :=
  ∀ n, P1550164644044552073.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P1038984986282689446

`A266977(n)+A266074(n)`
-/

namespace A365892.P1038984986282689446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 n + A266074 n

end

end A365892.P1038984986282689446

namespace A365892

/-- `A266977(n)+A266074(n)` -/
def P1038984986282689446.Spec : Prop :=
  ∀ n, P1038984986282689446.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P8135476534666537310

`A266596(n)+A059855(n+1)`
-/

namespace A365892.P8135476534666537310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266596 n + A059855 (n + 1)

end

end A365892.P8135476534666537310

namespace A365892

/-- `A266596(n)+A059855(n+1)` -/
def P8135476534666537310.Spec : Prop :=
  ∀ n, P8135476534666537310.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P96319153843255807

`A266304(n)+A065475(n+1)`
-/

namespace A365892.P96319153843255807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266304 n + A065475 (n + 1)

end

end A365892.P96319153843255807

namespace A365892

/-- `A266304(n)+A065475(n+1)` -/
def P96319153843255807.Spec : Prop :=
  ∀ n, P96319153843255807.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P7821593864706876539

`A237420(n)+A134869(n+1)`
-/

namespace A365892.P7821593864706876539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n + A134869 (n + 1)

end

end A365892.P7821593864706876539

namespace A365892

/-- `A237420(n)+A134869(n+1)` -/
def P7821593864706876539.Spec : Prop :=
  ∀ n, P7821593864706876539.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P13116832946853157366

`A128153(n)-A274681(n+1)`
-/

namespace A365892.P13116832946853157366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128153 n - A274681 (n + 1)

end

end A365892.P13116832946853157366

namespace A365892

/-- `A128153(n)-A274681(n+1)` -/
def P13116832946853157366.Spec : Prop :=
  ∀ n, P13116832946853157366.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P6213183286520176462

`A133263(n)+n*A040001(n)`
-/

namespace A365892.P6213183286520176462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n + (n : ℤ) * A040001 n

end

end A365892.P6213183286520176462

namespace A365892

/-- `A133263(n)+n*A040001(n)` -/
def P6213183286520176462.Spec : Prop :=
  ∀ n, P6213183286520176462.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P17386298392992558434

`A128918(n+1)+A087156(n+1)`
-/

namespace A365892.P17386298392992558434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128918 (n + 1) + A087156 (n + 1)

end

end A365892.P17386298392992558434

namespace A365892

/-- `A128918(n+1)+A087156(n+1)` -/
def P17386298392992558434.Spec : Prop :=
  ∀ n, P17386298392992558434.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P3245184768437472687

`A225126(n+1)+A080827(n+1)`
-/

namespace A365892.P3245184768437472687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225126 (n + 1) + A080827 (n + 1)

end

end A365892.P3245184768437472687

namespace A365892

/-- `A225126(n+1)+A080827(n+1)` -/
def P3245184768437472687.Spec : Prop :=
  ∀ n, P3245184768437472687.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P11502780342761876588

`A114113(n+1)+A141310(n)-1`
-/

namespace A365892.P11502780342761876588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114113 (n + 1) + (A141310 n - 1)

end

end A365892.P11502780342761876588

namespace A365892

/-- `A114113(n+1)+A141310(n)-1` -/
def P11502780342761876588.Spec : Prop :=
  ∀ n, P11502780342761876588.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P4412439605009476885

`A373662(n+1)-A135528(n+1)`
-/

namespace A365892.P4412439605009476885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373662 (n + 1) - A135528 (n + 1)

end

end A365892.P4412439605009476885

namespace A365892

/-- `A373662(n+1)-A135528(n+1)` -/
def P4412439605009476885.Spec : Prop :=
  ∀ n, P4412439605009476885.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P836663339988124926

`A354008(n+1)+n*A152271(n)`
-/

namespace A365892.P836663339988124926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354008 (n + 1) + (n : ℤ) * A152271 n

end

end A365892.P836663339988124926

namespace A365892

/-- `A354008(n+1)+n*A152271(n)` -/
def P836663339988124926.Spec : Prop :=
  ∀ n, P836663339988124926.a n = A365892 (n + 1)

end A365892

/-! ## A365892.P1122907835960140119

`A266257((n+1)%(2*n+1))`
-/

namespace A365892.P1122907835960140119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266257 ((n + 1) % (2 * n + 1))

end

end A365892.P1122907835960140119

namespace A365892

/-- `A266257((n+1)%(2*n+1))` -/
def P1122907835960140119.Spec : Prop :=
  ∀ n, P1122907835960140119.a n = A365892 (n + 1)

end A365892

/-!
# A365894: Expansion of e.g.f. exp( Sum_{k>=0} x^(3*k+4) / (3*k+4)! ).

The programs for A365894, there is no canonical definition to state claims against.
-/

/-! ## A365894.P12411876643184641920

`A004525(A365913(n))`
-/

namespace A365894.P12411876643184641920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A365913 n).toNat

end

end A365894.P12411876643184641920

/-! ## A365894.P13080408059887643612

`A004526(A365913(n)+1)`
-/

namespace A365894.P13080408059887643612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A365913 n + 1).toNat

end

end A365894.P13080408059887643612

/-! ## A365894.P17911071242829673269

`A110654(A342255(n+1)*A365913(n))`
-/

namespace A365894.P17911071242829673269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A342255 (n + 1) * A365913 n).toNat

end

end A365894.P17911071242829673269

/-! ## A365894.P14707596370120317505

`A110654(A365913(n)^A342255(n+1))`
-/

namespace A365894.P14707596370120317505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway ((A365913 n : ℚ) ^ (A342255 (n + 1) : ℤ))).toNat

end

end A365894.P14707596370120317505

/-! ## A365894.P17741626752140451750

`A110654(A365913(n)+A356982(2*n+3))`
-/

namespace A365894.P17741626752140451750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A365913 n + A356982 (2 * n + 3)).toNat

end

end A365894.P17741626752140451750

/-!
# A365895: Expansion of e.g.f. exp( Sum_{k>=0} x^(5*k+4) / (5*k+4)! ).

The programs for A365895, there is no canonical definition to state claims against.
-/

/-! ## A365895.P12733216657811152338

`A093411(A365914(n))`
-/

namespace A365895.P12733216657811152338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A365914 n).toNat

end

end A365895.P12733216657811152338

/-! ## A365895.P7714510350124882055

`∏{e}[A180164(3*n+2)+n, #!]-1`
-/

namespace A365895.P7714510350124882055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180164 (3 * n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℤ) - 1

end

end A365895.P7714510350124882055

/-! ## A365895.P9508860788098535918

`A166299(A000671(n))`
-/

namespace A365895.P9508860788098535918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166299 (A000671 n).toNat

end

end A365895.P9508860788098535918

/-! ## A365895.P17705422503434290863

`A357136(A006196(n))`
-/

namespace A365895.P17705422503434290863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357136 (A006196 n).toNat

end

end A365895.P17705422503434290863

/-! ## A365895.P7945572130230899044

`A219481(A154956(n))`
-/

namespace A365895.P7945572130230899044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219481 (A154956 n).toNat

end

end A365895.P7945572130230899044

/-!
# A365896: Expansion of e.g.f. exp( Sum_{k>=0} x^(2*k+5) / (2*k+5)! ).

The programs for A365896, there is no canonical definition to state claims against.
-/

/-! ## A365896.P5347449262302988302

`A004525(A365915(n))`
-/

namespace A365896.P5347449262302988302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A365915 n).toNat

end

end A365896.P5347449262302988302

/-! ## A365896.P6310552553207096454

`A004526(A365915(n)+1)`
-/

namespace A365896.P6310552553207096454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A365915 n + 1).toNat

end

end A365896.P6310552553207096454

/-! ## A365896.P6545959370807804110

`A057979(A365915(n)+1)`
-/

namespace A365896.P6545959370807804110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A365915 n + 1).toNat

end

end A365896.P6545959370807804110

/-! ## A365896.P13462235717649570005

`A038572(lcm(2, A365915(n)))`
-/

namespace A365896.P13462235717649570005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lcm 2 (A365915 n))

end

end A365896.P13462235717649570005

/-! ## A365896.P6504071955846445832

`A057979(xor(1, A365915(n)))`
-/

namespace A365896.P6504071955846445832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.xor 1 (A365915 n)).toNat

end

end A365896.P6504071955846445832

/-!
# A365897: Expansion of e.g.f. exp( Sum_{k>=0} x^(3*k+5) / (3*k+5)! ).

The programs for A365897, there is no canonical definition to state claims against.
-/

/-! ## A365897.P15354871339403562376

`A004525(A365916(n))`
-/

namespace A365897.P15354871339403562376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A365916 n).toNat

end

end A365897.P15354871339403562376

/-! ## A365897.P1943468131791980596

`A004526(A365916(n)+1)`
-/

namespace A365897.P1943468131791980596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A365916 n + 1).toNat

end

end A365897.P1943468131791980596

/-! ## A365897.P3863495823412924769

`A057979(A365916(n)+1)`
-/

namespace A365897.P3863495823412924769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A365916 n + 1).toNat

end

end A365897.P3863495823412924769

/-! ## A365897.P18154487207993934505

`A245710(A365916(n)+2)`
-/

namespace A365897.P18154487207993934505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 (A365916 n + 2).toNat

end

end A365897.P18154487207993934505

/-! ## A365897.P10791586198988175381

`A026741(lcm(2, A365916(n)))`
-/

namespace A365897.P10791586198988175381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.lcm 2 (A365916 n))

end

end A365897.P10791586198988175381

/-!
# A365898: Expansion of e.g.f. exp( Sum_{k>=0} x^(4*k+5) / (4*k+5)! ).

The programs for A365898, there is no canonical definition to state claims against.
-/

/-! ## A365898.P11121862545727892811

`A004525(A365917(n))`
-/

namespace A365898.P11121862545727892811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A365917 n).toNat

end

end A365898.P11121862545727892811

/-! ## A365898.P16542462157692594501

`A004526(A365917(n)+1)`
-/

namespace A365898.P16542462157692594501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A365917 n + 1).toNat

end

end A365898.P16542462157692594501

/-! ## A365898.P3184517233036752328

`A038572(lcm(2, A365917(n)))`
-/

namespace A365898.P3184517233036752328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lcm 2 (A365917 n))

end

end A365898.P3184517233036752328

/-! ## A365898.P11805316795646632450

`A026741(and(2, n^3)!*A365917(n))`
-/

namespace A365898.P11805316795646632450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((Nat.factorial (Nat.land 2 (n ^ 3)) : ℤ) * A365917 n).toNat

end

end A365898.P11805316795646632450

/-! ## A365898.P9109930613190872494

`A026741(C(A365917(n), and(2, n^3)!))`
-/

namespace A365898.P9109930613190872494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Nat.choose (A365917 n).toNat (Nat.factorial (Nat.land 2 (n ^ 3))))

end

end A365898.P9109930613190872494

