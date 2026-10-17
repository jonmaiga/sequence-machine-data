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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A184423.P3303203828994434715

`A006480(n)*A000984(n)`
-/

namespace A184423.P3303203828994434715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 n * A000984 n

end

end A184423.P3303203828994434715

noncomputable section

/-- A184423: a(n) = (2*n)!*(3*n)!/n!^5.

Offset 0, canonical program `A184423.P3303203828994434715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184423 (n : ℕ) : ℤ :=
  A184423.P3303203828994434715.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186032.P2427232051721781939

`(-1)^A048881(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186032.P2427232051721781939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A048881 n : ℤ)

end

end A186032.P2427232051721781939

noncomputable section

/-- A186032: a(n) = (-1)^A048881(n).

Offset 0, canonical program `A186032.P2427232051721781939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186032 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186032.P2427232051721781939.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186032.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186420.P10304265513462547972

`A002894(n)²`
-/

namespace A186420.P10304265513462547972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002894 n ^ 2

end

end A186420.P10304265513462547972

noncomputable section

/-- A186420: a(n) = binomial(2n,n)^4.

Offset 0, canonical program `A186420.P10304265513462547972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186420 (n : ℕ) : ℤ :=
  A186420.P10304265513462547972.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186420.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192655.P14527991431701777898

`sqrt(A065738(n))`
-/

namespace A192655.P14527991431701777898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065738 n : ℝ)

end

end A192655.P14527991431701777898

noncomputable section

/-- A192655: Floor-Sqrt transform of central binomial coefficients (A000984).

Offset 0, canonical program `A192655.P14527991431701777898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192655 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A192655.P14527991431701777898.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A201208.P11775252334027749297

`A057212(n+1)+1`
-/

namespace A201208.P11775252334027749297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1) + 1

end

end A201208.P11775252334027749297

noncomputable section

/-- A201208: One 1, two 2's, three 1's, four 2's, five 1's, ...

Offset 1, canonical program `A201208.P11775252334027749297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A201208 (n : ℕ) : ℤ :=
  A201208.P11775252334027749297.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A201208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A217800.P17079641980791713083

`A006480(n+1)/((2+n)*(1+2*n)*(3+2*n))`
-/

namespace A217800.P17079641980791713083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 (n + 1) : ℚ) / ((2 + n) * ((1 + 2 * n) * (3 + 2 * n)) : ℚ)

end

end A217800.P17079641980791713083

noncomputable section

/-- A217800: Number of alternating permutations on 2n+1 letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

Offset 0, canonical program `A217800.P17079641980791713083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217800 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A217800.P17079641980791713083.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A225081.P6319409890311663631

`2^(A005811(n+1)-1)`
-/

namespace A225081.P6319409890311663631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005811 (n + 1) - 1 : ℤ)

end

end A225081.P6319409890311663631

noncomputable section

/-- A225081: Gray code variant of A048896.

Offset 0, canonical program `A225081.P6319409890311663631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225081 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225081.P6319409890311663631.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A227169.P12999617952910354842

`3*A135389(n)/((n+2)*(n+3))`
-/

namespace A227169.P12999617952910354842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A135389 n : ℚ) / ((n + 2) * (n + 3) : ℚ)

end

end A227169.P12999617952910354842

noncomputable section

/-- A227169: a(n) = 3*((2*n+2)!)^2 / (n!*(n+1)!*(n+2)!*(n+3)!).

Offset 0, canonical program `A227169.P12999617952910354842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227169 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227169.P12999617952910354842.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228039.P4227557278893953699

`A010060(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228039.P4227557278893953699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n ^ 2)

end

end A228039.P4227557278893953699

noncomputable section

/-- A228039: Thue-Morse sequence along the squares: A010060(n^2).

Offset 0, canonical program `A228039.P4227557278893953699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228039 (n : ℕ) : ℤ :=
  A228039.P4227557278893953699.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228495.P3981489379467428454

`A000035(n)*A010060(n)`
-/

namespace A228495.P3981489379467428454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A010060 n

end

end A228495.P3981489379467428454

noncomputable section

/-- A228495: Characteristic function of the odd odious numbers (A092246).

Offset 0, canonical program `A228495.P3981489379467428454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228495 (n : ℕ) : ℤ :=
  A228495.P3981489379467428454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232243.P16373768799838248871

`A159918(n)-A000120(n)`
-/

namespace A232243.P16373768799838248871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n - A000120 n

end

end A232243.P16373768799838248871

noncomputable section

/-- A232243: a(n) = wt(n^2) - wt(n), where wt(n) = A000120(n) is the binary weight function.

Offset 0, canonical program `A232243.P16373768799838248871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232243 (n : ℕ) : ℤ :=
  A232243.P16373768799838248871.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232245.P5094151863049896055

`A159918(n)+A000120(n)`
-/

namespace A232245.P5094151863049896055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n + A000120 n

end

end A232245.P5094151863049896055

noncomputable section

/-- A232245: Sum of the number of ones in binary representation of n and n^2.

Offset 0, canonical program `A232245.P5094151863049896055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232245 (n : ℕ) : ℤ :=
  A232245.P5094151863049896055.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234016.P16847082992809600842

`a(n-1)+1-A079559(n)` with `a(0)=0`
-/

namespace A234016.P16847082992809600842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A079559 n)

end

end A234016.P16847082992809600842

noncomputable section

/-- A234016: Partial sums of the characteristic function of A055938.

Offset 0, canonical program `A234016.P16847082992809600842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234016 (n : ℕ) : ℤ :=
  A234016.P16847082992809600842.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236840.P5330150570220508668

`n-A005811(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A236840.P5330150570220508668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005811 n

end

end A236840.P5330150570220508668

noncomputable section

/-- A236840: n minus number of runs in the binary expansion of n: a(n) = n - A005811(n).

Offset 0, canonical program `A236840.P5330150570220508668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236840 (n : ℕ) : ℤ :=
  A236840.P5330150570220508668.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240530.P76168564774585467

`2*A028329(n)`
-/

namespace A240530.P76168564774585467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028329 n

end

end A240530.P76168564774585467

noncomputable section

/-- A240530: a(n) = 4*(2*n)! / (n!)^2.

Offset 0, canonical program `A240530.P76168564774585467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240530 (n : ℕ) : ℤ :=
  A240530.P76168564774585467.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240530.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240883.P5378419761383427474

`A046818(n)-1`
-/

namespace A240883.P5378419761383427474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046818 n - 1

end

end A240883.P5378419761383427474

noncomputable section

/-- A240883: Central terms of the triangle in A240857.

Offset 0, canonical program `A240883.P5378419761383427474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240883 (n : ℕ) : ℤ :=
  A240883.P5378419761383427474.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244465.P2424451479601373234

`(-1)^n*A214264(n)`
-/

namespace A244465.P2424451479601373234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A214264 n

end

end A244465.P2424451479601373234

noncomputable section

/-- A244465: Expansion of f(-x^3, -x^5) in powers of x where f() is Ramanujan's two-variable theta function.

Offset 0, canonical program `A244465.P2424451479601373234`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244465 (n : ℕ) : ℤ :=
  A244465.P2424451479601373234.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244525.P10571466511866612896

`(-1)^n*A214263(n)`
-/

namespace A244525.P10571466511866612896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A214263 n

end

end A244525.P10571466511866612896

noncomputable section

/-- A244525: Expansion of f(-x^1, -x^7) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A244525.P10571466511866612896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244525 (n : ℕ) : ℤ :=
  A244525.P10571466511866612896.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254379.P11537696663455735807

`A059841(n)*A010060(n)`
-/

namespace A254379.P11537696663455735807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A010060 n

end

end A254379.P11537696663455735807

noncomputable section

/-- A254379: Characteristic function of the even odious numbers (A128309).

Offset 0, canonical program `A254379.P11537696663455735807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254379 (n : ℕ) : ℤ :=
  A254379.P11537696663455735807.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254379.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254633.P6403475487283811037

`4^n*A172392(n)`
-/

namespace A254633.P6403475487283811037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A172392 n

end

end A254633.P6403475487283811037

noncomputable section

/-- A254633: a(n) = 16^n*[x^n]hypergeometric([3/2, -2*n], [3], -x).

Offset 0, canonical program `A254633.P6403475487283811037`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254633 (n : ℕ) : ℤ :=
  A254633.P6403475487283811037.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261233.P9209519308442447348

`A261232(n)-1`
-/

namespace A261233.P9209519308442447348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261232 n - 1

end

end A261233.P9209519308442447348

noncomputable section

/-- A261233: a(n) = number of steps to reach 0 when starting from k = (3^n)-1 and repeatedly applying the map that replaces k with k - (sum of digits in base-3 representation of k).

Offset 0, canonical program `A261233.P9209519308442447348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261233 (n : ℕ) : ℤ :=
  A261233.P9209519308442447348.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261233.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268553.P1174429533030880570

`A006480(n)²`
-/

namespace A268553.P1174429533030880570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 n ^ 2

end

end A268553.P1174429533030880570

noncomputable section

/-- A268553: Diagonal of the rational function 1/((1 - u v - u w - v w) * (1 - x y - x z - y z)).

Offset 0, canonical program `A268553.P1174429533030880570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268553 (n : ℕ) : ℤ :=
  A268553.P1174429533030880570.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275047.P408053448138579622

`A188662(n)*A000984(n)`
-/

namespace A275047.P408053448138579622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188662 n * A000984 n

end

end A275047.P408053448138579622

noncomputable section

/-- A275047: Diagonal of the rational function 1/(1-(1+w)(xy + xz + yz)) [even-indexed terms only].

Offset 0, canonical program `A275047.P408053448138579622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275047 (n : ℕ) : ℤ :=
  A275047.P408053448138579622.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275047.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275653.P15710549208509813585

`A001448(n)*A005809(n)`
-/

namespace A275653.P15710549208509813585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n * A005809 n

end

end A275653.P15710549208509813585

noncomputable section

/-- A275653: a(n) = binomial(4*n,2*n)*binomial(3*n,2*n).

Offset 0, canonical program `A275653.P15710549208509813585`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275653 (n : ℕ) : ℤ :=
  A275653.P15710549208509813585.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275653.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275655.P17529179874901664694

`A066802(n)*A000984(n)`
-/

namespace A275655.P17529179874901664694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066802 n * A000984 n

end

end A275655.P17529179874901664694

noncomputable section

/-- A275655: a(n) = binomial(6*n,3*n)*binomial(2*n,n).

Offset 0, canonical program `A275655.P17529179874901664694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275655 (n : ℕ) : ℤ :=
  A275655.P17529179874901664694.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181155.P6532656100866929133

`A000069(n+1)+1`
-/

namespace A181155.P6532656100866929133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + 1

end

end A181155.P6532656100866929133

noncomputable section

/-- A181155: Odious numbers (A000069) plus one; complement of A026147.

Offset 1, canonical program `A181155.P6532656100866929133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181155 (n : ℕ) : ℤ :=
  A181155.P6532656100866929133.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186690.P18402101191840386599

`(-1)^n*A002131(n+1)`
-/

namespace A186690.P18402101191840386599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002131 (n + 1)

end

end A186690.P18402101191840386599

noncomputable section

/-- A186690: Expansion of - (1/8) theta_3''(0, q) / theta_3(0, q) in powers of q.

Offset 1, canonical program `A186690.P18402101191840386599`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186690 (n : ℕ) : ℤ :=
  A186690.P18402101191840386599.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186690.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193828.P7698008167923322003

`2*A154293(n+1)`
-/

namespace A193828.P7698008167923322003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154293 (n + 1)

end

end A193828.P7698008167923322003

noncomputable section

/-- A193828: Even generalized pentagonal numbers.

Offset 0, canonical program `A193828.P7698008167923322003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193828 (n : ℕ) : ℤ :=
  A193828.P7698008167923322003.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214560.P494932617173923030

`A023416(n²)`
-/

namespace A214560.P494932617173923030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n ^ 2)

end

end A214560.P494932617173923030

noncomputable section

/-- A214560: Number of 0's in binary expansion of n^2.

Offset 0, canonical program `A214560.P494932617173923030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214560 (n : ℕ) : ℤ :=
  A214560.P494932617173923030.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234011.P632387481214595856

`A000069(n+1)+A000069(n+2)`
-/

namespace A234011.P632387481214595856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + A000069 (n + 2)

end

end A234011.P632387481214595856

noncomputable section

/-- A234011: The sums of 2 consecutive odious numbers (A000069).

Offset 1, canonical program `A234011.P632387481214595856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234011 (n : ℕ) : ℤ :=
  A234011.P632387481214595856.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234011.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257799.P15511006834302166355

`A010060(A233271(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257799.P15511006834302166355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A233271 n).toNat

end

end A257799.P15511006834302166355

noncomputable section

/-- A257799: Parity of binary weight of each term in the infinite trunk of inverted binary beanstalk: a(n) = A010060(A233271(n)).

Offset 0, canonical program `A257799.P15511006834302166355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257799 (n : ℕ) : ℤ :=
  A257799.P15511006834302166355.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257807.P15241754971067141480

`A257800(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A257807.P15241754971067141480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A257800 n + a (n - 1)

end

end A257807.P15241754971067141480

noncomputable section

/-- A257807: a(n) = number of odd numbers in range 0 .. n of A233271, the infinite trunk of inverted binary beanstalk.

Offset 0, canonical program `A257807.P15241754971067141480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257807 (n : ℕ) : ℤ :=
  A257807.P15241754971067141480.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257807.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257808.P5584975749564527316

`1-A257800(n)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A257808.P5584975749564527316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  1 - A257800 n + a (n - 1)

end

end A257808.P5584975749564527316

noncomputable section

/-- A257808: a(n) = number of nonzero even numbers in range 0 .. n of A233271, the infinite trunk of inverted binary beanstalk.

Offset 0, canonical program `A257808.P5584975749564527316`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257808 (n : ℕ) : ℤ :=
  A257808.P5584975749564527316.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257808.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273149.P13038668691077749708

`A053839(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A273149.P13038668691077749708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 n + 1

end

end A273149.P13038668691077749708

noncomputable section

/-- A273149: a(n) = A053839(n)+1.

Offset 0, canonical program `A273149.P13038668691077749708`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273149 (n : ℕ) : ℤ :=
  A273149.P13038668691077749708.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A224977.P2433633673610591437

`A000290(n)-A004159(n)`
-/

namespace A224977.P2433633673610591437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - A004159 n

end

end A224977.P2433633673610591437

noncomputable section

/-- A224977: n^2 minus sum of digits of n^2.

Offset 0, canonical program `A224977.P2433633673610591437`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A224977 (n : ℕ) : ℤ :=
  A224977.P2433633673610591437.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A224977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263132.P11366629162255137699

`A263133(n+1)+1`
-/

namespace A263132.P11366629162255137699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263133 (n + 1) + 1

end

end A263132.P11366629162255137699

noncomputable section

/-- A263132: Positive values of m such that binomial(4*m - 1, m) is odd.

Offset 1, canonical program `A263132.P11366629162255137699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263132 (n : ℕ) : ℤ :=
  A263132.P11366629162255137699.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280185.P338572658367298625

`n-A004090(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280185.P338572658367298625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004090 n

end

end A280185.P338572658367298625

noncomputable section

/-- A280185: a(n) = n - A004090(n), where A004090 is the sum of digits of the Fibonacci numbers A000045.

Offset 0, canonical program `A280185.P338572658367298625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280185 (n : ℕ) : ℤ :=
  A280185.P338572658367298625.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179262.P16510143958199183968

`A079704(n+1)-1`
-/

namespace A179262.P16510143958199183968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) - 1

end

end A179262.P16510143958199183968

noncomputable section

/-- A179262: a(n) = 2*prime(n)^2 - 1.

Offset 1, canonical program `A179262.P16510143958199183968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179262 (n : ℕ) : ℤ :=
  A179262.P16510143958199183968.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179899.P8119244184585946797

`3*eq[0, A101264(n)]`
-/

namespace A179899.P8119244184585946797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179899.P8119244184585946797

noncomputable section

/-- A179899: Integers of the form A179896(n)/A141468(n+1).

Offset 1, canonical program `A179899.P8119244184585946797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179899 (n : ℕ) : ℤ :=
  (A179899.P8119244184585946797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179995.P15855146455058339385

`A101098(n+1)+3*A000584(n)`
-/

namespace A179995.P15855146455058339385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101098 (n + 1) + 3 * A000584 n

end

end A179995.P15855146455058339385

noncomputable section

/-- A179995: Generating function A(5,t)(1+t+t^2)/(1-t)^6, where A(5,t) is an Eulerian polynomial.

Offset 0, canonical program `A179995.P15855146455058339385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179995 (n : ℕ) : ℤ :=
  A179995.P15855146455058339385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180054.P16889925413695154586

`lt[A001316(3*n), 2*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A180054.P16889925413695154586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A180054.P16889925413695154586

noncomputable section

/-- A180054: In binary expansion, number of 1's in 3n is less than in n.

Offset 1, canonical program `A180054.P16889925413695154586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. -/
def A180054 (n : ℕ) : ℤ :=
  (A180054.P16889925413695154586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. -/
def A180054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180055.P17108974151974231138

`lt[A001316(5*n), A001316(n)]`
-/

namespace A180055.P17108974151974231138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180055.P17108974151974231138

noncomputable section

/-- A180055: Numbers k such that in binary expansion, the number of 1's in 5*k is less than the number of 1's in k.

Offset 1, canonical program `A180055.P17108974151974231138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A180055 (n : ℕ) : ℤ :=
  (A180055.P17108974151974231138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A180055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180270.P14286567872583745083

`A219086(n)*A359498(n)`
-/

namespace A180270.P14286567872583745083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n * A359498 n

end

end A180270.P14286567872583745083

noncomputable section

/-- A180270: Integers of the form (k^12 - k^8 - k^4 + 1)/512.

Offset 1, canonical program `A180270.P14286567872583745083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180270 (n : ℕ) : ℤ :=
  A180270.P14286567872583745083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180282.P14445644033502428624

`∑[A025178(n+2)]`
-/

namespace A180282.P14445644033502428624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180282.P14445644033502428624

noncomputable section

/-- A180282: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to 2.

Offset 2, canonical program `A180282.P14445644033502428624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A180282 (n : ℕ) : ℤ :=
  A180282.P14445644033502428624.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A180282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180498.P10268372993952059879

`A120866(2*floor((n+1)/sqrt(5))+n+1)`
-/

namespace A180498.P10268372993952059879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120866 (2 * ⌊(n + 1 : ℝ) / Real.sqrt (5 : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A180498.P10268372993952059879

noncomputable section

/-- A180498: a(n) = n^2 - 5*floor(n/sqrt(5))^2.

Offset 1, canonical program `A180498.P10268372993952059879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A180498 (n : ℕ) : ℤ :=
  A180498.P10268372993952059879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A180498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180662.P5005019183728633200

`A001654(A002262(n))`
-/

namespace A180662.P5005019183728633200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (A002262 n).toNat

end

end A180662.P5005019183728633200

noncomputable section

/-- A180662: The Golden Triangle: T(n,k) = A001654(k) for n>=0 and 0<=k<=n.

Offset 0, canonical program `A180662.P5005019183728633200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180662 (n : ℕ) : ℤ :=
  A180662.P5005019183728633200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180953.P18395862336695284303

`∑[A123384(n)+comp[A066343(n+1)]]`
-/

namespace A180953.P18395862336695284303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066343 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180953.P18395862336695284303

noncomputable section

/-- A180953: The number of terms of the form 2^i*5^j (A003592) less than or equal to 10^n.

Offset 0, canonical program `A180953.P18395862336695284303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4793 terms. -/
def A180953 (n : ℕ) : ℤ :=
  A180953.P18395862336695284303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4793 terms. -/
def A180953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180956.P15729601768828744606

`A046161(A025581(n))`
-/

namespace A180956.P15729601768828744606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (A025581 n).toNat

end

end A180956.P15729601768828744606

noncomputable section

/-- A180956: Triangle read by rows T(n,k) = denominators of A180955/A180956.

Offset 0, canonical program `A180956.P15729601768828744606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180956 (n : ℕ) : ℤ :=
  A180956.P15729601768828744606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181133.P14438950261900882183

`∑[A023531(n)+1]`
-/

namespace A181133.P14438950261900882183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181133.P14438950261900882183

noncomputable section

/-- A181133: a(n) = n + A003056(n).

Offset 1, canonical program `A181133.P14438950261900882183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181133 (n : ℕ) : ℤ :=
  A181133.P14438950261900882183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181149.P3654376808975386202

`A135178(n+1)+A000040(n+1)`
-/

namespace A181149.P3654376808975386202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) + A000040 (n + 1)

end

end A181149.P3654376808975386202

noncomputable section

/-- A181149: a(n) = prime(n)^3 + prime(n)^2 + prime(n).

Offset 1, canonical program `A181149.P3654376808975386202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A135178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181149 (n : ℕ) : ℤ :=
  A181149.P3654376808975386202.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A135178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181149.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181151.P18295787221933732531

`A135178(n+1)+1`
-/

namespace A181151.P18295787221933732531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) + 1

end

end A181151.P18295787221933732531

noncomputable section

/-- A181151: a(n) = prime(n)^3 + prime(n)^2 + 1.

Offset 1, canonical program `A181151.P18295787221933732531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181151 (n : ℕ) : ℤ :=
  A181151.P18295787221933732531.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181618.P16415760494037054447

`6*(A055217(n)-A000244(n))`
-/

namespace A181618.P16415760494037054447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A055217 n - A000244 n)

end

end A181618.P16415760494037054447

noncomputable section

/-- A181618: Number of n-game win/loss/draw series that contain at least one dead game.

Offset 1, canonical program `A181618.P16415760494037054447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A181618 (n : ℕ) : ℤ :=
  A181618.P16415760494037054447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A181618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181768.P15302864392847253434

`A055879(abs(1-2*n))`
-/

namespace A181768.P15302864392847253434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 |1 - (2 * n : ℤ)|.toNat

end

end A181768.P15302864392847253434

noncomputable section

/-- A181768: G.f.: (1/2)*(3 - sqrt((1-5*x)/(1-x))).

Offset 0, canonical program `A181768.P15302864392847253434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A181768 (n : ℕ) : ℤ :=
  A181768.P15302864392847253434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A181768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181923.P5871209756813184297

`Δ[A051349(n)]%2`
-/

namespace A181923.P5871209756813184297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A181923.P5871209756813184297

noncomputable section

/-- A181923: Nonprimes (A018252) mod 2.

Offset 1, canonical program `A181923.P5871209756813184297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181923 (n : ℕ) : ℤ :=
  A181923.P5871209756813184297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182126.P1631624918066832588

`A111071(n+1)%A004139(n+1)`
-/

namespace A182126.P1631624918066832588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111071 (n + 1)) (A004139 (n + 1))

end

end A182126.P1631624918066832588

noncomputable section

/-- A182126: a(n) = prime(n)*prime(n+1) mod prime(n+2).

Offset 1, canonical program `A182126.P1631624918066832588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182126 (n : ℕ) : ℤ :=
  A182126.P1631624918066832588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182174.P2163224199873041348

`A084920(n+1)-n`
-/

namespace A182174.P2163224199873041348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - (n : ℤ)

end

end A182174.P2163224199873041348

noncomputable section

/-- A182174: a(n) = prime(n)^2 - n.

Offset 1, canonical program `A182174.P2163224199873041348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182174 (n : ℕ) : ℤ :=
  A182174.P2163224199873041348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182200.P2957371844516527360

`A166010(n+1)+1`
-/

namespace A182200.P2957371844516527360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) + 1

end

end A182200.P2957371844516527360

noncomputable section

/-- A182200: a(n) = prime(n)^2-3.

Offset 1, canonical program `A182200.P2957371844516527360`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182200 (n : ℕ) : ℤ :=
  A182200.P2957371844516527360.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182200.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182434.P10432546062453886706

`∑[and(A061007(n+1), A101264(2*(n+1)))]`
-/

namespace A182434.P10432546062453886706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061007 (n + 1)) (A101264 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182434.P10432546062453886706

noncomputable section

/-- A182434: Number of primes p < n such that 4*p+1 is also prime.

Offset 1, canonical program `A182434.P10432546062453886706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182434 (n : ℕ) : ℤ :=
  A182434.P10432546062453886706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182555.P4612867072512672630

`A153335(n+1)+A027306(n)`
-/

namespace A182555.P4612867072512672630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153335 (n + 1) + A027306 n

end

end A182555.P4612867072512672630

noncomputable section

/-- A182555: Expansion of g.f. (3-4*x-sqrt(1-4*x^2))/(2*(1-2*x)^2).

Offset 0, canonical program `A182555.P4612867072512672630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A182555 (n : ℕ) : ℤ :=
  A182555.P4612867072512672630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A182555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182614.P10153390122333264557

`A128439(n+1)+1`
-/

namespace A182614.P10153390122333264557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128439 (n + 1) + 1

end

end A182614.P10153390122333264557

noncomputable section

/-- A182614: Least k such that floor(k/r^n)=n, where r = golden ratio = (1+sqrt(5))/2.

Offset 1, canonical program `A182614.P10153390122333264557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A182614 (n : ℕ) : ℤ :=
  A182614.P10153390122333264557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A182614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182769.P18212081707917776745

`A080755(n+1)+n`
-/

namespace A182769.P18212081707917776745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1) + (n : ℤ)

end

end A182769.P18212081707917776745

noncomputable section

/-- A182769: Beatty sequence for (4 + sqrt(2))/2.

Offset 1, canonical program `A182769.P18212081707917776745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182769 (n : ℕ) : ℤ :=
  A182769.P18212081707917776745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182770.P7276823523747679966

`∑[A144611(n)+1]`
-/

namespace A182770.P7276823523747679966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182770.P7276823523747679966

noncomputable section

/-- A182770: Beatty sequence for 3-sqrt(2).

Offset 1, canonical program `A182770.P7276823523747679966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182770 (n : ℕ) : ℤ :=
  A182770.P7276823523747679966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182851.P17505694771049546199

`eq[1, A182850(n+1)%2]+1`
-/

namespace A182851.P17505694771049546199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182850 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182851.P17505694771049546199

noncomputable section

/-- A182851: Numbers k such that A182850(k) is odd.

Offset 1, canonical program `A182851.P17505694771049546199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8228 terms. -/
def A182851 (n : ℕ) : ℤ :=
  (A182851.P17505694771049546199.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8228 terms. -/
def A182851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182852.P6926855867599715632

`eq[A182850(n+1)%2, 0]+1`
-/

namespace A182852.P6926855867599715632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182850 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A182852.P6926855867599715632

noncomputable section

/-- A182852: Numbers k such that A182850(k) is even.

Offset 1, canonical program `A182852.P6926855867599715632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1772 terms. -/
def A182852 (n : ℕ) : ℤ :=
  (A182852.P6926855867599715632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1772 terms. -/
def A182852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183002.P1082009122046195699

`2*(A091627(n+1)-n)`
-/

namespace A183002.P1082009122046195699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A091627 (n + 1) - (n : ℤ))

end

end A183002.P1082009122046195699

noncomputable section

/-- A183002: a(n) is the total number of noncentral divisors in all positive integers <= n.

Offset 1, canonical program `A183002.P1082009122046195699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183002 (n : ℕ) : ℤ :=
  A183002.P1082009122046195699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183126.P13932271397595957484

`record[A160410(A142150(n))+A004273(n)]`
-/

namespace A183126.P13932271397595957484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160410 (A142150 n).toNat + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183126.P13932271397595957484

noncomputable section

/-- A183126: Toothpick sequence with toothpicks connected by their endpoints.

Offset 0, canonical program `A183126.P13932271397595957484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A183126 (n : ℕ) : ℤ :=
  A183126.P13932271397595957484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A183126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183143.P15961995698808160381

`∑[n]-∑[A183142(n+1)]`
-/

namespace A183143.P15961995698808160381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A183143.P15961995698808160381

noncomputable section

/-- A183143: [1/r]+[2/r]+...+[n/r], where r=sqrt(3) and []=floor.

Offset 1, canonical program `A183143.P15961995698808160381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183143 (n : ℕ) : ℤ :=
  A183143.P15961995698808160381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184033.P5643691655713345315

`A184032(n+1)+21`
-/

namespace A184033.P5643691655713345315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184032 (n + 1) + 21

end

end A184033.P5643691655713345315

noncomputable section

/-- A184033: 1/16 the number of (n+1) X 4 0..3 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184033.P5643691655713345315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184033 (n : ℕ) : ℤ :=
  A184033.P5643691655713345315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184041.P17722413965595698240

`A183980(n+3)+1`
-/

namespace A184041.P17722413965595698240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 3) + 1

end

end A184041.P17722413965595698240

noncomputable section

/-- A184041: 1/9 the number of (n+1) X 3 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184041.P17722413965595698240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184041 (n : ℕ) : ℤ :=
  A184041.P17722413965595698240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184045.P13433366339287709500

`A183985(n+3)-5`
-/

namespace A184045.P13433366339287709500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183985 (n + 3) - 5

end

end A184045.P13433366339287709500

noncomputable section

/-- A184045: 1/9 the number of (n+1) X 7 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184045.P13433366339287709500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184045 (n : ℕ) : ℤ :=
  A184045.P13433366339287709500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184362.P12277345138454522326

`(n+1)*Δ[A078616(abs(1-n))]`
-/

namespace A184362.P12277345138454522326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A184362.P12277345138454522326

noncomputable section

/-- A184362: G.f.: eta(x) + x*eta'(x).

Offset 0, canonical program `A184362.P12277345138454522326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A184362 (n : ℕ) : ℤ :=
  A184362.P12277345138454522326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A184362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184363.P2962500136500042189

`∑[A099375(n)]*A009531(A198954(n))`
-/

namespace A184363.P2962500136500042189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009531 (A198954 n).toNat

end

end A184363.P2962500136500042189

noncomputable section

/-- A184363: G.f.: eta(x)^3*(1 + x*eta'(x)/eta(x)), where eta(x) is Dedekind's eta(q) function without the q^(1/24) factor.

Offset 0, canonical program `A184363.P2962500136500042189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A184363 (n : ℕ) : ℤ :=
  A184363.P2962500136500042189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A184363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184365.P16997047362946431375

`(1-n)*Δ[A078616(abs(1-n))]`
-/

namespace A184365.P16997047362946431375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A184365.P16997047362946431375

noncomputable section

/-- A184365: G.f.: eta(x) - x*eta'(x), where eta(x) is Dedekind's eta(q) function without the q^(1/24) factor.

Offset 0, canonical program `A184365.P16997047362946431375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 837 terms. -/
def A184365 (n : ℕ) : ℤ :=
  A184365.P16997047362946431375.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 837 terms. -/
def A184365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184366.P5150101463797216766

`(3-n)/3*A010816(n)`
-/

namespace A184366.P5150101463797216766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ) : ℚ) / 3 * (A010816 n : ℚ)

end

end A184366.P5150101463797216766

noncomputable section

/-- A184366: G.f.: eta(x)^3*(1 - x*eta'(x)/eta(x)), where eta(x) is Dedekind's eta(q) function without the q^(1/24) factor.

Offset 0, canonical program `A184366.P5150101463797216766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A184366 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A184366.P5150101463797216766.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A184366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184517.P11980274228116782345

`A001966(n)+1`
-/

namespace A184517.P11980274228116782345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001966 n + 1

end

end A184517.P11980274228116782345

noncomputable section

/-- A184517: Upper s-Wythoff sequence, where s=4n-2. Complement of A184516.

Offset 1, canonical program `A184517.P11980274228116782345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184517 (n : ℕ) : ℤ :=
  A184517.P11980274228116782345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184585.P1386653981140706094

`floor(A003231(3*n+4)/6)`
-/

namespace A184585.P1386653981140706094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003231 (3 * n + 4) : ℚ) / 6⌋

end

end A184585.P1386653981140706094

noncomputable section

/-- A184585: a(n) = floor(n*s + c*s), where r = sqrt(5), c = 1/3, s = r/(r-1); complement of A184584.

Offset 1, canonical program `A184585.P1386653981140706094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A184585 (n : ℕ) : ℤ :=
  A184585.P1386653981140706094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A184585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184800.P9287086856315659630

`A183142(p?[A054406(n+1)]+1)`
-/

namespace A184800.P9287086856315659630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183142 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A184800.P9287086856315659630

noncomputable section

/-- A184800: Numbers k such that floor(k*s) is prime, where s = (3 + sqrt(3))/2.

Offset 1, canonical program `A184800.P9287086856315659630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. -/
def A184800 (n : ℕ) : ℤ :=
  A184800.P9287086856315659630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. -/
def A184800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184857.P1403224485017277280

`ceil((1-1/e)*p?[A054385(n+1)])`
-/

namespace A184857.P1403224485017277280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - 1 / Real.exp 1) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉

end

end A184857.P1403224485017277280

noncomputable section

/-- A184857: Numbers k such that floor(k*e/(e-1)) is prime.

Offset 1, canonical program `A184857.P1403224485017277280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A184857 (n : ℕ) : ℤ :=
  A184857.P1403224485017277280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A184857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184871.P9235573609580196540

`A000027(A066343(n+1)+A056576(n+1))`
-/

namespace A184871.P9235573609580196540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A066343 (n + 1) + A056576 (n + 1)).toNat

end

end A184871.P9235573609580196540

noncomputable section

/-- A184871: n+floor(ns/r)+floor(nt/r), where r=log(2), s=log(3), t=log(5).

Offset 1, canonical program `A184871.P9235573609580196540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184871 (n : ℕ) : ℤ :=
  A184871.P9235573609580196540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184901.P11583843455299283413

`A003231(n+1)+A001961(n+1)`
-/

namespace A184901.P11583843455299283413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1) + A001961 (n + 1)

end

end A184901.P11583843455299283413

noncomputable section

/-- A184901: n+floor(ns/r)+floor(nt/r), where r=(1+sqrt(5))/2, s=r+1, t=r+2.

Offset 1, canonical program `A184901.P11583843455299283413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184901 (n : ℕ) : ℤ :=
  A184901.P11583843455299283413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184922.P6227196409252368348

`A001952(n+1)-1`
-/

namespace A184922.P6227196409252368348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) - 1

end

end A184922.P6227196409252368348

noncomputable section

/-- A184922: a(n) = n + [rn/t] + [sn/t] + [un/t], where []=floor and r=2^(1/2), s=r+1, t=r+2, u=r+3.

Offset 1, canonical program `A184922.P6227196409252368348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184922 (n : ℕ) : ℤ :=
  A184922.P6227196409252368348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185018.P10903825836336431318

`A053985(C(2, A025581(n)))`
-/

namespace A185018.P10903825836336431318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (Nat.choose 2 (A025581 n).toNat)

end

end A185018.P10903825836336431318

noncomputable section

/-- A185018: Inverse to sequence matrix for natural numbers.

Offset 0, canonical program `A185018.P10903825836336431318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185018 (n : ℕ) : ℤ :=
  A185018.P10903825836336431318.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185080.P13924859602328266380

`A050476(n+1)+A001700(n)-A000108(n+1)`
-/

namespace A185080.P13924859602328266380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050476 (n + 1) + (A001700 n - A000108 (n + 1))

end

end A185080.P13924859602328266380

noncomputable section

/-- A185080: a(n) = 6 * binomial(2*n,n-1) + binomial(2*n-1,n).

Offset 1, canonical program `A185080.P13924859602328266380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A185080 (n : ℕ) : ℤ :=
  A185080.P13924859602328266380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A185080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185113.P5883797355228036697

`(n/2+1)*A069271(n)`
-/

namespace A185113.P5883797355228036697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A069271 n : ℚ)

end

end A185113.P5883797355228036697

noncomputable section

/-- A185113: Number of dissections of a convex (3n+3)-sided polygon into n pentagons and one triangle (up to equivalence).

Offset 0, canonical program `A185113.P5883797355228036697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A185113 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A185113.P5883797355228036697.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A185113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185269.P13063718111534956283

`p?[A005351(n)]`
-/

namespace A185269.P13063718111534956283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185269.P13063718111534956283

noncomputable section

/-- A185269: The subsequence of primes, in order of occurrence, in A005351.

Offset 1, canonical program `A185269.P13063718111534956283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185269 (n : ℕ) : ℤ :=
  A185269.P13063718111534956283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185400.P10088178791459838251

`eq[1, A000120(A062028(n)-A070565(n))]`
-/

namespace A185400.P10088178791459838251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A062028 n - A070565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185400.P10088178791459838251

noncomputable section

/-- A185400: Numbers with property that the digital sum plus the product of the digits is a power of 2.

Offset 1, canonical program `A185400.P10088178791459838251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A185400 (n : ℕ) : ℤ :=
  (A185400.P10088178791459838251.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A185400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185712.P714070859971941151

`∑[A185706(n+1)]`
-/

namespace A185712.P714070859971941151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185712.P714070859971941151

noncomputable section

/-- A185712: a(n) = number of primes <= n that end in 3.

Offset 1, canonical program `A185712.P714070859971941151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185712 (n : ℕ) : ℤ :=
  A185712.P714070859971941151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185714.P14230647716207036197

`∑[A001877((n+1)*A151763(n+1)²)]`
-/

namespace A185714.P14230647716207036197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 ((n + 1 : ℤ) * A151763 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185714.P14230647716207036197

noncomputable section

/-- A185714: a(n) = number of primes <= n that end in 7.

Offset 1, canonical program `A185714.P14230647716207036197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185714 (n : ℕ) : ℤ :=
  A185714.P14230647716207036197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185871.P8543721373781251179

`∑[A198954(A066182(n+1))+2]`
-/

namespace A185871.P8543721373781251179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A066182 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185871.P8543721373781251179

noncomputable section

/-- A185871: (Even,even)-polka dot array in the natural number array A000027, by antidiagonals.

Offset 1, canonical program `A185871.P8543721373781251179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185871 (n : ℕ) : ℤ :=
  A185871.P8543721373781251179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186037.P1859243056867817178

`A057427(n)+val(A257520(n), 2)`
-/

namespace A186037.P1859243056867817178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (SequenceMachineLib.valuation (A257520 n).toNat 2 : ℤ)

end

end A186037.P1859243056867817178

noncomputable section

/-- A186037: a(n) = log_2((1+A002426(n))/numerator((1+A002426(n))/2^n)).

Offset 0, canonical program `A186037.P1859243056867817178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A186037 (n : ℕ) : ℤ :=
  A186037.P1859243056867817178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A186037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186278.P5249949395028030588

`eq[1, A032741(A007953(n)+A004159(n))]`
-/

namespace A186278.P5249949395028030588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007953 n + A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186278.P5249949395028030588

noncomputable section

/-- A186278: Numbers k such that the sum of the digits of k plus the sum of the digits of k^2 is prime.

Offset 1, canonical program `A186278.P5249949395028030588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. -/
def A186278 (n : ℕ) : ℤ :=
  (A186278.P5249949395028030588.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. -/
def A186278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186324.P3622620755982322594

`floor((A182778(n+1)+1)/3)`
-/

namespace A186324.P3622620755982322594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182778 (n + 1) + 1 : ℚ) / 3⌋

end

end A186324.P3622620755982322594

noncomputable section

/-- A186324: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and octagonal numbers. Complement of A186325.

Offset 1, canonical program `A186324.P3622620755982322594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186324 (n : ℕ) : ℤ :=
  A186324.P3622620755982322594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186775.P3396256789162687716

`lt[Δ[A001370(n)], 0]`
-/

namespace A186775.P3396256789162687716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A186775.P3396256789162687716

noncomputable section

/-- A186775: Numbers k such that digitsum(2^k) > digitsum(2^(k+1)).

Offset 1, canonical program `A186775.P3396256789162687716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4919 terms. -/
def A186775 (n : ℕ) : ℤ :=
  (A186775.P3396256789162687716.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4919 terms. -/
def A186775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187038.P18235214902734965343

`abs(Δ[A274575(n)])`
-/

namespace A187038.P18235214902734965343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A187038.P18235214902734965343

noncomputable section

/-- A187038: Row sums of number triangle A187037.

Offset 0, canonical program `A187038.P18235214902734965343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. -/
def A187038 (n : ℕ) : ℤ :=
  A187038.P18235214902734965343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. -/
def A187038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187744.P5382630201904644489

`eq[0, A002262(A007953(n))]`
-/

namespace A187744.P5382630201904644489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P5382630201904644489

noncomputable section

/-- A187744: Numbers whose digital sum is a triangular number.

Offset 1, canonical program `A187744.P5382630201904644489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A187744 (n : ℕ) : ℤ :=
  (A187744.P5382630201904644489.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A187744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187767.P2032594768100003987

`A127804(n)-1`
-/

namespace A187767.P2032594768100003987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127804 n - 1

end

end A187767.P2032594768100003987

noncomputable section

/-- A187767: Number of bicolored cyclic patterns n X n.

Offset 1, canonical program `A187767.P2032594768100003987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A187767 (n : ℕ) : ℤ :=
  A187767.P2032594768100003987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A187767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187915.P10262871046590375420

`A088211(n+1)+A054459(n)`
-/

namespace A187915.P10262871046590375420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088211 (n + 1) + A054459 n

end

end A187915.P10262871046590375420

noncomputable section

/-- A187915: a(n) = (1/2)*((n+2)*P(n-1)+(5*n+1)*P(n)) where P() = A000129 are the Pell numbers.

Offset 1, canonical program `A187915.P10262871046590375420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A187915 (n : ℕ) : ℤ :=
  A187915.P10262871046590375420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A187915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187917.P7491758766845615620

`A054459(n)-A054447(n)`
-/

namespace A187917.P7491758766845615620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054459 n - A054447 n

end

end A187917.P7491758766845615620

noncomputable section

/-- A187917: a(n) = (1/4)*(5*(n-1)*P(n)+n*P(n-1)) where P() are the Pell numbers A000129.

Offset 1, canonical program `A187917.P7491758766845615620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A187917 (n : ℕ) : ℤ :=
  A187917.P7491758766845615620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A187917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187950.P15956467656923818799

`A005614(A187944(n+1)+n+2)`
-/

namespace A187950.P15956467656923818799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A187944 (n + 1) + (n + 2 : ℤ)).toNat

end

end A187950.P15956467656923818799

noncomputable section

/-- A187950: [nr+kr] - [nr] - [kr], where r = (1+sqrt(5))/2, k = 4, [.]=floor.

Offset 1, canonical program `A187950.P15956467656923818799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187950 (n : ℕ) : ℤ :=
  A187950.P15956467656923818799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187968.P16318789548881380579

`A097508(A008619(n))+1+n`
-/

namespace A187968.P16318789548881380579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A008619 n).toNat + 1 + (n : ℤ)

end

end A187968.P16318789548881380579

noncomputable section

/-- A187968: Positions of 1 in A187967; complement (conjectured) of A098021.

Offset 1, canonical program `A187968.P16318789548881380579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187968 (n : ℕ) : ℤ :=
  A187968.P16318789548881380579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187969.P12336969182246334688

`A159684(2*A144611(n)+n)`
-/

namespace A187969.P12336969182246334688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (2 * A144611 n + (n : ℤ)).toNat

end

end A187969.P12336969182246334688

noncomputable section

/-- A187969: a(n) = [nr+kr]-[nr]-[kr], where r=sqrt(2), k=3, [ ]=floor.

Offset 1, canonical program `A187969.P12336969182246334688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187969 (n : ℕ) : ℤ :=
  A187969.P12336969182246334688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188042.P9269258026017260983

`comp[A187971(n+1)+2]+1`
-/

namespace A188042.P9269258026017260983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188042.P9269258026017260983

noncomputable section

/-- A188042: Positions of 0 in A188041; complement of A188043.

Offset 1, canonical program `A188042.P9269258026017260983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188042 (n : ℕ) : ℤ :=
  (A188042.P9269258026017260983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188070.P187749389523668513

`abs(A054406(n+1)-n)`
-/

namespace A188070.P187749389523668513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054406 (n + 1) - (n : ℤ)|

end

end A188070.P187749389523668513

noncomputable section

/-- A188070: Positions of 1 in A188068; complement of A188069.

Offset 1, canonical program `A188070.P187749389523668513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188070 (n : ℕ) : ℤ :=
  A188070.P187749389523668513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188075.P9684796969811370760

`4*A188069(n+1)-n`
-/

namespace A188075.P9684796969811370760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A188069 (n + 1) - (n : ℤ)

end

end A188075.P9684796969811370760

noncomputable section

/-- A188075: Positions of 0 in the zero-one sequence [n*r]-[4*r]-[n*r-4*r], where r=sqrt(3), n>=1.

Offset 1, canonical program `A188075.P9684796969811370760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188075 (n : ℕ) : ℤ :=
  A188075.P9684796969811370760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188192.P16228618120579595901

`A188189(a(n-3)+n)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A188192.P16228618120579595901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A188189 (a (n - 3) + (n : ℤ)).toNat

end

end A188192.P16228618120579595901

noncomputable section

/-- A188192: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(5), k=3, [ ]=floor.

Offset 1, canonical program `A188192.P16228618120579595901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188192 (n : ℕ) : ℤ :=
  A188192.P16228618120579595901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188297.P11306489375432585574

`A144611(A049472(n))`
-/

namespace A188297.P11306489375432585574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (A049472 n).toNat

end

end A188297.P11306489375432585574

noncomputable section

/-- A188297: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=2, [ ]=floor.

Offset 1, canonical program `A188297.P11306489375432585574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188297 (n : ℕ) : ℤ :=
  A188297.P11306489375432585574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188299.P18032753301951108986

`abs(or(1, A001952(n+1))-n)`
-/

namespace A188299.P18032753301951108986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (A001952 (n + 1)) - (n : ℤ)|

end

end A188299.P18032753301951108986

noncomputable section

/-- A188299: Positions of 1 in A188297; complement of A188298.

Offset 1, canonical program `A188299.P18032753301951108986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188299 (n : ℕ) : ℤ :=
  A188299.P18032753301951108986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188301.P7448140245845181984

`A097508(A002264(n))+1+n`
-/

namespace A188301.P7448140245845181984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A002264 n).toNat + 1 + (n : ℤ)

end

end A188301.P7448140245845181984

noncomputable section

/-- A188301: Positions of 0 in A188300; complement of A188302.

Offset 1, canonical program `A188301.P7448140245845181984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188301 (n : ℕ) : ℤ :=
  A188301.P7448140245845181984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188372.P2678500880219119319

`comp[A001952(n+1)*A188038(n+1)]`
-/

namespace A188372.P2678500880219119319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) * A188038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188372.P2678500880219119319

noncomputable section

/-- A188372: Positions of 0 in A188371; complement of A188373.

Offset 1, canonical program `A188372.P2678500880219119319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188372 (n : ℕ) : ℤ :=
  (A188372.P2678500880219119319.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188373.P2149775903743235880

`A110654(n)+3*A188040(n+1)`
-/

namespace A188373.P2149775903743235880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + 3 * A188040 (n + 1)

end

end A188373.P2149775903743235880

noncomputable section

/-- A188373: Positions of 1 in A188371; complement of A188372.

Offset 1, canonical program `A188373.P2149775903743235880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188373 (n : ℕ) : ℤ :=
  A188373.P2149775903743235880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188375.P6173527389077920320

`A087057(floor(n/2)+1)+n`
-/

namespace A188375.P6173527389077920320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (⌊(n : ℚ) / 2⌋ + 1).toNat + (n : ℤ)

end

end A188375.P6173527389077920320

noncomputable section

/-- A188375: Positions of 0 in A188374; complement of A188376.

Offset 1, canonical program `A188375.P6173527389077920320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188375 (n : ℕ) : ℤ :=
  A188375.P6173527389077920320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188397.P1006503134452683607

`comp[A188396(n+1)-1]+1`
-/

namespace A188397.P1006503134452683607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188397.P1006503134452683607

noncomputable section

/-- A188397: Positions of 1 in A188395; complement of A188396.

Offset 1, canonical program `A188397.P1006503134452683607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188397 (n : ℕ) : ℤ :=
  (A188397.P1006503134452683607.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188436.P14332046805831665438

`val(A110006(n+1), 4)`
-/

namespace A188436.P14332046805831665438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A110006 (n + 1)).toNat 4

end

end A188436.P14332046805831665438

noncomputable section

/-- A188436: [3r]-[nr]-[3r-nr], where r=(1+sqrt(5))/2 and [.]=floor.

Offset 1, canonical program `A188436.P14332046805831665438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188436 (n : ℕ) : ℤ :=
  (A188436.P14332046805831665438.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188557.P4941890526069849708

`A188556(n+1)+A008859(n)`
-/

namespace A188557.P4941890526069849708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188556 (n + 1) + A008859 n

end

end A188557.P4941890526069849708

noncomputable section

/-- A188557: Number of 6 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

Offset 1, canonical program `A188557.P4941890526069849708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188557 (n : ℕ) : ℤ :=
  A188557.P4941890526069849708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188678.P4832632837348918629

`abs(1-∑[A179848(n)])`
-/

namespace A188678.P4832632837348918629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A188678.P4832632837348918629

noncomputable section

/-- A188678: Alternate partial sums of binomial(3*n,n)/(2*n+1).

Offset 0, canonical program `A188678.P4832632837348918629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A188678 (n : ℕ) : ℤ :=
  A188678.P4832632837348918629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A188678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188860.P1930130511050451117

`A081113(round(sqrt(n²+1)))+floor(3^(n-1))`
-/

namespace A188860.P1930130511050451117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081113 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A188860.P1930130511050451117

noncomputable section

/-- A188860: Number of n X n binary arrays without the pattern 0 1 diagonally, vertically or antidiagonally.

Offset 0, canonical program `A188860.P1930130511050451117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A188860 (n : ℕ) : ℤ :=
  A188860.P1930130511050451117.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A188860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189367.P16965249900403055335

`A171970(n+1)+A003152(n+1)`
-/

namespace A189367.P16965249900403055335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (n + 1) + A003152 (n + 1)

end

end A189367.P16965249900403055335

noncomputable section

/-- A189367: a(n) = n + [n*s/r] + [n*t/r]; r=2, s=sqrt(2), t=sqrt(3).

Offset 1, canonical program `A189367.P16965249900403055335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189367 (n : ℕ) : ℤ :=
  A189367.P16965249900403055335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189370.P5402769015482224256

`A000027(A001961(n+1)+A001952(n+1))`
-/

namespace A189370.P5402769015482224256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001961 (n + 1) + A001952 (n + 1)).toNat

end

end A189370.P5402769015482224256

noncomputable section

/-- A189370: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sqrt(2), t=sqrt(5).

Offset 1, canonical program `A189370.P5402769015482224256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189370 (n : ℕ) : ℤ :=
  A189370.P5402769015482224256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189381.P18028180637681123898

`A000027(A187393(n+1)+A003151(n+1))`
-/

namespace A189381.P18028180637681123898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A187393 (n + 1) + A003151 (n + 1)).toNat

end

end A189381.P18028180637681123898

noncomputable section

/-- A189381: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=-1+sqrt(2), t=1+sqrt(2).

Offset 1, canonical program `A189381.P18028180637681123898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189381 (n : ℕ) : ℤ :=
  A189381.P18028180637681123898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189459.P2271332110478919261

`A137803(n+1)+A001952(n+1)`
-/

namespace A189459.P2271332110478919261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1) + A001952 (n + 1)

end

end A189459.P2271332110478919261

noncomputable section

/-- A189459: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=1+sqrt(2), t=1/2+sqrt(2).

Offset 1, canonical program `A189459.P2271332110478919261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189459 (n : ℕ) : ℤ :=
  A189459.P2271332110478919261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189462.P12762323558477115791

`floor((A003231(n+1)+n)/2)`
-/

namespace A189462.P12762323558477115791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003231 (n + 1) + (n : ℤ) : ℚ) / 2⌋

end

end A189462.P12762323558477115791

noncomputable section

/-- A189462: n+[nr/t]+[ns/t]; r=2, s=sqrt(5), t=1+sqrt(5).

Offset 1, canonical program `A189462.P12762323558477115791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189462 (n : ℕ) : ℤ :=
  A189462.P12762323558477115791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189469.P17983922004304105366

`A189361(n+1)+2*(n+1)`
-/

namespace A189469.P17983922004304105366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189361 (n + 1) + (2 * (n + 1) : ℤ)

end

end A189469.P17983922004304105366

noncomputable section

/-- A189469: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=1+sqrt(2), t=1+sqrt(3).

Offset 1, canonical program `A189469.P17983922004304105366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189469 (n : ℕ) : ℤ :=
  A189469.P17983922004304105366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189520.P1730264741793748391

`A189403(n+1)+2*(n+1)`
-/

namespace A189520.P1730264741793748391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (n + 1) + (2 * (n + 1) : ℤ)

end

end A189520.P1730264741793748391

noncomputable section

/-- A189520: n+[nr/t]+[ns/t]; r=1, s=1/e, t=1/(e+1).

Offset 1, canonical program `A189520.P1730264741793748391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189520 (n : ℕ) : ℤ :=
  A189520.P1730264741793748391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189521.P17554504455868007450

`A054385(n+1)+∑[char[A000572(n+1)]]`
-/

namespace A189521.P17554504455868007450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000572 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A189521.P17554504455868007450

noncomputable section

/-- A189521: n+[ns/r]+[nt/r]; r=1, s=1/(e-1), t=1/(e+1).

Offset 1, canonical program `A189521.P17554504455868007450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189521 (n : ℕ) : ℤ :=
  A189521.P17554504455868007450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189523.P484942665720503072

`A054385(2*(n+1))+A000572(n+1)`
-/

namespace A189523.P484942665720503072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (2 * (n + 1)) + A000572 (n + 1)

end

end A189523.P484942665720503072

noncomputable section

/-- A189523: n+[nr/t]+[ns/t]; r=1, s=1/(e-1), t=1/(e+1).

Offset 1, canonical program `A189523.P484942665720503072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189523 (n : ℕ) : ℤ :=
  A189523.P484942665720503072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A189523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189524.P6943957719285187626

`floor(A054406(n+1)+A003151(n+1)/2)`
-/

namespace A189524.P6943957719285187626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054406 (n + 1) : ℚ) + (A003151 (n + 1) : ℚ) / 2⌋

end

end A189524.P6943957719285187626

noncomputable section

/-- A189524: a(n) = n + [n*s/r] + [n*t/r]; r=2, s=1+sqrt(2), t=1+sqrt(3).

Offset 1, canonical program `A189524.P6943957719285187626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189524 (n : ℕ) : ℤ :=
  A189524.P6943957719285187626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189640.P14910625713861930897

`A080846(a(a(n-1))+n)` with `a(0)=0`
-/

namespace A189640.P14910625713861930897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A080846 (a (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A189640.P14910625713861930897

noncomputable section

/-- A189640: Fixed point of the morphism 0->001, 1->101.

Offset 1, canonical program `A189640.P14910625713861930897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189640 (n : ℕ) : ℤ :=
  A189640.P14910625713861930897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189673.P730405193398399512

`a(1-A080846(n))` with `a(0)=0, a(1)=1`
-/

namespace A189673.P730405193398399512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (1 - A080846 n).toNat

end

end A189673.P730405193398399512

noncomputable section

/-- A189673: Fixed point of the morphism 0->010, 1->110.

Offset 1, canonical program `A189673.P730405193398399512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189673 (n : ℕ) : ℤ :=
  (A189673.P730405193398399512.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189769.P5701703840364148688

`2*A085374(n)`
-/

namespace A189769.P5701703840364148688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085374 n

end

end A189769.P5701703840364148688

noncomputable section

/-- A189769: Number of one-sided prudent walks from (0,0) to (n,n), with 3+n east steps, 3 west steps and n north steps.

Offset 1, canonical program `A189769.P5701703840364148688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A189769 (n : ℕ) : ℤ :=
  A189769.P5701703840364148688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A189769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189770.P292981471477749817

`2*A085375(n)`
-/

namespace A189770.P292981471477749817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085375 n

end

end A189770.P292981471477749817

noncomputable section

/-- A189770: Number of one-sided prudent walks from (0,0) to (n,n), with 4+n east steps, 4 west steps and n north steps.

Offset 1, canonical program `A189770.P292981471477749817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A189770 (n : ℕ) : ℤ :=
  A189770.P292981471477749817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A189770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190053.P264198172571938352

`A186539(n+1)+A004526(A171970(n+1))`
-/

namespace A190053.P264198172571938352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A004526 (A171970 (n + 1)).toNat

end

end A190053.P264198172571938352

noncomputable section

/-- A190053: a(n) = n + [n*s/r] + [n*t/r]; r=2, s=sin(Pi/3), t=csc(Pi/3).

Offset 1, canonical program `A190053.P264198172571938352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190053 (n : ℕ) : ℤ :=
  A190053.P264198172571938352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190058.P17496650737982553346

`A065033(A190008(n+1)-A047293(n+1))+A047293(n+1)`
-/

namespace A190058.P17496650737982553346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A190008 (n + 1) - A047293 (n + 1)).toNat + A047293 (n + 1)

end

end A190058.P17496650737982553346

noncomputable section

/-- A190058: a(n) = n + [n*r/t] + [n*s/t]; r=1/2, s=sin(Pi/3), t=csc(Pi/3).

Offset 1, canonical program `A190058.P17496650737982553346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190058 (n : ℕ) : ℤ :=
  A190058.P17496650737982553346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190081.P8852999749129432937

`A108598(n+1)+A004526(A188222(n+1))`
-/

namespace A190081.P8852999749129432937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1) + A004526 (A188222 (n + 1)).toNat

end

end A190081.P8852999749129432937

noncomputable section

/-- A190081: n + [n*r/t] + [n*s/t]; r=1, s=cos(Pi/5), t=sec(Pi/5).

Offset 1, canonical program `A190081.P8852999749129432937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7639 terms. -/
def A190081 (n : ℕ) : ℤ :=
  A190081.P8852999749129432937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7639 terms. -/
def A190081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190242.P4648809166227740719

`A187385(n+1)%A189361(n+1)`
-/

namespace A190242.P4648809166227740719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187385 (n + 1)) (A189361 (n + 1))

end

end A190242.P4648809166227740719

noncomputable section

/-- A190242: a(n) = [n*u+n*v]-[n*u]-[n*v], where u=sqrt(2), v=sqrt(3), and []=floor.

Offset 1, canonical program `A190242.P4648809166227740719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190242 (n : ℕ) : ℤ :=
  A190242.P4648809166227740719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190333.P409286629517067536

`A190057(n+1)-(n+1)`
-/

namespace A190333.P409286629517067536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190057 (n + 1) - (n + 1 : ℤ)

end

end A190333.P409286629517067536

noncomputable section

/-- A190333: n + [n*r/s] + [n*t/s]; r=1, s=sqrt(3), t=1/s.

Offset 1, canonical program `A190333.P409286629517067536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190333 (n : ℕ) : ℤ :=
  A190333.P409286629517067536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190334.P13384121023064821590

`A182778(n+1)+1+n`
-/

namespace A190334.P13384121023064821590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182778 (n + 1) + 1 + (n : ℤ)

end

end A190334.P13384121023064821590

noncomputable section

/-- A190334: a(n) = n + floor(n*r/t) + floor(n*s/t) where r=1, s=sqrt(3), t=1/s.

Offset 1, canonical program `A190334.P13384121023064821590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190334 (n : ℕ) : ℤ :=
  A190334.P13384121023064821590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190335.P8871768036239732935

`floor(A187971(n+1)/2)`
-/

namespace A190335.P8871768036239732935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187971 (n + 1) : ℚ) / 2⌋

end

end A190335.P8871768036239732935

noncomputable section

/-- A190335: a(n) = n + [n*s/r] + [n*t/r]; r=2, s=sqrt(2), t=1/s.

Offset 1, canonical program `A190335.P8871768036239732935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190335 (n : ℕ) : ℤ :=
  A190335.P8871768036239732935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190336.P11872428746183197603

`floor(A098021(n+1)/2)`
-/

namespace A190336.P11872428746183197603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098021 (n + 1) : ℚ) / 2⌋

end

end A190336.P11872428746183197603

noncomputable section

/-- A190336: a(n) = n + [n*r/s] + [n*t/s]; r=2, s=sqrt(2), t=1/s.

Offset 1, canonical program `A190336.P11872428746183197603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190336 (n : ℕ) : ℤ :=
  A190336.P11872428746183197603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190445.P4769469917337469391

`A190427(2*(n+1))+2*A078588(n+1)`
-/

namespace A190445.P4769469917337469391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (2 * (n + 1)) + 2 * A078588 (n + 1)

end

end A190445.P4769469917337469391

noncomputable section

/-- A190445: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(golden ratio,4,1) and []=floor.

Offset 1, canonical program `A190445.P4769469917337469391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190445 (n : ℕ) : ℤ :=
  A190445.P4769469917337469391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190453.P12819835385222772038

`eq[1, A190451(n+1)]+1`
-/

namespace A190453.P12819835385222772038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190453.P12819835385222772038

noncomputable section

/-- A190453: Positions of 1 in A190451.

Offset 1, canonical program `A190453.P12819835385222772038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190453 (n : ℕ) : ℤ :=
  (A190453.P12819835385222772038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190454.P17304671988381641284

`eq[2, A190451(n+1)]+1`
-/

namespace A190454.P17304671988381641284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190454.P17304671988381641284

noncomputable section

/-- A190454: Positions of 2 in A190451.

Offset 1, canonical program `A190454.P17304671988381641284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A190454 (n : ℕ) : ℤ :=
  (A190454.P17304671988381641284.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A190454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190457.P15557048138221621682

`A190451(n+1)+A005614(A016813(n+1))`
-/

namespace A190457.P15557048138221621682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190451 (n + 1) + A005614 (A016813 (n + 1)).toNat

end

end A190457.P15557048138221621682

noncomputable section

/-- A190457: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(golden ratio,4,3) and []=floor.

Offset 1, canonical program `A190457.P15557048138221621682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2736 terms. -/
def A190457 (n : ℕ) : ℤ :=
  A190457.P15557048138221621682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2736 terms. -/
def A190457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190483.P4919599938302249087

`A159684(2*n+1)+A083035(2*(n+1))`
-/

namespace A190483.P4919599938302249087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (2 * n + 1) + A083035 (2 * (n + 1))

end

end A190483.P4919599938302249087

noncomputable section

/-- A190483: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),2,1) and []=floor.

Offset 1, canonical program `A190483.P4919599938302249087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190483 (n : ℕ) : ℤ :=
  A190483.P4919599938302249087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190484.P14590028091312245075

`record[A026253(n+1)]`
-/

namespace A190484.P14590028091312245075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190484.P14590028091312245075

noncomputable section

/-- A190484: Positions of 0 in A190483.

Offset 1, canonical program `A190484.P14590028091312245075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7072 terms. -/
def A190484 (n : ℕ) : ℤ :=
  A190484.P14590028091312245075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7072 terms. -/
def A190484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190485.P2994477708944207843

`∪[A086377(n+1), A186222(n+1)]`
-/

namespace A190485.P2994477708944207843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190485.P2994477708944207843

noncomputable section

/-- A190485: Positions of 1 in A190483.

Offset 1, canonical program `A190485.P2994477708944207843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190485 (n : ℕ) : ℤ :=
  (A190485.P2994477708944207843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190496.P5879933832106738858

`A001952(3*n+5)%(A001952(n+1)+2)`
-/

namespace A190496.P5879933832106738858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001952 (3 * n + 5)) (A001952 (n + 1) + 2)

end

end A190496.P5879933832106738858

noncomputable section

/-- A190496: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),3,2) and []=floor.

Offset 1, canonical program `A190496.P5879933832106738858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190496 (n : ℕ) : ℤ :=
  A190496.P5879933832106738858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190504.P10591363179372633885

`A001950(2*(n+1))+A005206(3*n+2)+A005206(n)`
-/

namespace A190504.P10591363179372633885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * (n + 1)) + (A005206 (3 * n + 2) + A005206 n)

end

end A190504.P10591363179372633885

noncomputable section

/-- A190504: a(n) = n+[n*s/r]+[n*t/r]+[n*u/r]; r=golden ratio, s=r+1, t=r+2, u=r+3.

Offset 1, canonical program `A190504.P10591363179372633885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190504 (n : ℕ) : ℤ :=
  A190504.P10591363179372633885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190549.P7991738838946935118

`(A001952(4*n+5)-3)%A001952(n+1)`
-/

namespace A190549.P7991738838946935118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001952 (4 * n + 5) - 3) (A001952 (n + 1))

end

end A190549.P7991738838946935118

noncomputable section

/-- A190549: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),4,1) and []=floor.

Offset 1, canonical program `A190549.P7991738838946935118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190549 (n : ℕ) : ℤ :=
  A190549.P7991738838946935118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190558.P2224212627330716451

`eq[3, val(A121488(2*n+1), 2)]`
-/

namespace A190558.P2224212627330716451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A121488 (2 * n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190558.P2224212627330716451

noncomputable section

/-- A190558: Positions of 2 in A190555.

Offset 1, canonical program `A190558.P2224212627330716451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A190558 (n : ℕ) : ℤ :=
  (A190558.P2224212627330716451.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A190558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190677.P8681336031986812165

`lt[A190676(n+1), 1]+1`
-/

namespace A190677.P8681336031986812165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190676 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A190677.P8681336031986812165

noncomputable section

/-- A190677: Positions of 0 in A190676.

Offset 1, canonical program `A190677.P8681336031986812165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190677 (n : ℕ) : ℤ :=
  (A190677.P8681336031986812165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190683.P16248676480014471006

`A003512(A016777(n+1))%A188069(n+2)`
-/

namespace A190683.P16248676480014471006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003512 (A016777 (n + 1)).toNat) (A188069 (n + 2))

end

end A190683.P16248676480014471006

noncomputable section

/-- A190683: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),3,1) and [ ]=floor.

Offset 1, canonical program `A190683.P16248676480014471006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190683 (n : ℕ) : ℤ :=
  A190683.P16248676480014471006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190706.P9832586445051373020

`eq[1, A190704(n+1)]+1`
-/

namespace A190706.P9832586445051373020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190706.P9832586445051373020

noncomputable section

/-- A190706: Positions of 1 in A190704.

Offset 1, canonical program `A190706.P9832586445051373020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190706 (n : ℕ) : ℤ :=
  (A190706.P9832586445051373020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190707.P3032653202596194504

`eq[2, A190704(n+1)]+1`
-/

namespace A190707.P3032653202596194504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190707.P3032653202596194504

noncomputable section

/-- A190707: Positions of 2 in A190704.

Offset 1, canonical program `A190707.P3032653202596194504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190707 (n : ℕ) : ℤ :=
  (A190707.P3032653202596194504.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190709.P10181155941524366987

`eq[4, A190704(A000007(n)+n)]`
-/

namespace A190709.P10181155941524366987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190709.P10181155941524366987

noncomputable section

/-- A190709: Positions of 4 in A190704.

Offset 1, canonical program `A190709.P10181155941524366987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1161 terms. -/
def A190709 (n : ℕ) : ℤ :=
  (A190709.P10181155941524366987.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1161 terms. -/
def A190709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190763.P13290202251909608768

`ceil(sqrt(2)*A190486(n+1))`
-/

namespace A190763.P13290202251909608768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (A190486 (n + 1) : ℝ)⌉

end

end A190763.P13290202251909608768

noncomputable section

/-- A190763: Positions of 0 in A190762.

Offset 1, canonical program `A190763.P13290202251909608768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190763 (n : ℕ) : ℤ :=
  A190763.P13290202251909608768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190770.P3244118001186615245

`A080755(3*n+4)-A016789(A003152(n+1))`
-/

namespace A190770.P3244118001186615245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (3 * n + 4) - A016789 (A003152 (n + 1)).toNat

end

end A190770.P3244118001186615245

noncomputable section

/-- A190770: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(1/2),3,1) and [ ]=floor.

Offset 1, canonical program `A190770.P3244118001186615245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190770 (n : ℕ) : ℤ :=
  A190770.P3244118001186615245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190777.P13810788968244427247

`eq[1, A190775(n+1)]+1`
-/

namespace A190777.P13810788968244427247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190777.P13810788968244427247

noncomputable section

/-- A190777: Positions of 1 in A190775.

Offset 1, canonical program `A190777.P13810788968244427247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190777 (n : ℕ) : ℤ :=
  (A190777.P13810788968244427247.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190778.P17050714014051518169

`eq[2, A190775(n+1)]+1`
-/

namespace A190778.P17050714014051518169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190778.P17050714014051518169

noncomputable section

/-- A190778: Positions of 2 in A190775.

Offset 1, canonical program `A190778.P17050714014051518169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A190778 (n : ℕ) : ℤ :=
  (A190778.P17050714014051518169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A190778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190993.P8554082118388520746

`A000045(n)-A263727(n)`
-/

namespace A190993.P8554082118388520746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A263727 n

end

end A190993.P8554082118388520746

noncomputable section

/-- A190993: Square excess of Fibonacci numbers.

Offset 0, canonical program `A190993.P8554082118388520746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A190993 (n : ℕ) : ℤ :=
  A190993.P8554082118388520746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A190993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191110.P14908163695247419265

`2*A153775(n+1)-1`
-/

namespace A191110.P14908163695247419265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153775 (n + 1) - 1

end

end A191110.P14908163695247419265

noncomputable section

/-- A191110: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x and 3x+2 are in a.

Offset 1, canonical program `A191110.P14908163695247419265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191110 (n : ℕ) : ℤ :=
  A191110.P14908163695247419265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191307.P5108314988491942072

`∑[A037955(n)]`
-/

namespace A191307.P5108314988491942072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191307.P5108314988491942072

noncomputable section

/-- A191307: Sum of the heights of the first peaks in all dispersed Dyck paths of length n (i.e., in Motzkin paths of length n with no (1,0)-steps at positive heights).

Offset 0, canonical program `A191307.P5108314988491942072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A191307 (n : ℕ) : ℤ :=
  A191307.P5108314988491942072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A191307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191309.P18243075712559101294

`A000034(n)*A139262(A004526(n))`
-/

namespace A191309.P18243075712559101294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A139262 (A004526 n).toNat

end

end A191309.P18243075712559101294

noncomputable section

/-- A191309: Number of peaks at height >= 2 in all dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0) steps at positive heights).

Offset 0, canonical program `A191309.P18243075712559101294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191309 (n : ℕ) : ℤ :=
  A191309.P18243075712559101294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191336.P3483189818635209172

`A000035(A022838(n+1))+A000035(A054406(n+1))`
-/

namespace A191336.P3483189818635209172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A022838 (n + 1)).toNat + A000035 (A054406 (n + 1)).toNat

end

end A191336.P3483189818635209172

noncomputable section

/-- A191336: (A022838 mod 2)+(A054406 mod 2).

Offset 1, canonical program `A191336.P3483189818635209172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. -/
def A191336 (n : ℕ) : ℤ :=
  A191336.P3483189818635209172.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. -/
def A191336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191380.P14959086145490964009

`eq[0, A191340(n+1)]+1`
-/

namespace A191380.P14959086145490964009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191380.P14959086145490964009

noncomputable section

/-- A191380: Positions of 0 in A191340.

Offset 1, canonical program `A191380.P14959086145490964009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A191380 (n : ℕ) : ℤ :=
  (A191380.P14959086145490964009.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A191380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191381.P10898136946303278485

`eq[1, A191340(n+1)]+1`
-/

namespace A191381.P10898136946303278485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191381.P10898136946303278485

noncomputable section

/-- A191381: Positions of 1 in A191340.

Offset 1, canonical program `A191381.P10898136946303278485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A191381 (n : ℕ) : ℤ :=
  (A191381.P10898136946303278485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A191381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191382.P1751492391094146324

`lt[1, A191340(n+1)]+1`
-/

namespace A191382.P1751492391094146324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191382.P1751492391094146324

noncomputable section

/-- A191382: Positions of 2 in A191340.

Offset 1, canonical program `A191382.P1751492391094146324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A191382 (n : ℕ) : ℤ :=
  (A191382.P1751492391094146324.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A191382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191396.P7229870374882606009

`A191394(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A191396.P7229870374882606009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A191394 n + a (n - 2)

end

end A191396.P7229870374882606009

noncomputable section

/-- A191396: Sum of the heights of the base pyramids in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0)-steps at positive heights). A base pyramid is a factor of the form U^j D^j (j>0), starting at the horizontal axis. Here U=(1,1) and D=(1,-1).

Offset 0, canonical program `A191396.P7229870374882606009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A191396 (n : ℕ) : ℤ :=
  A191396.P7229870374882606009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A191396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191472.P13543047471222290453

`A001043(n+1)-2*A096379(n+1)`
-/

namespace A191472.P13543047471222290453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - 2 * A096379 (n + 1)

end

end A191472.P13543047471222290453

noncomputable section

/-- A191472: a(n) = 2*prime(n+2) - prime(n+1) - prime(n).

Offset 1, canonical program `A191472.P13543047471222290453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191472 (n : ℕ) : ℤ :=
  A191472.P13543047471222290453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191590.P14029697644500156998

`A030007(n+2)+2*A030004(n+2)`
-/

namespace A191590.P14029697644500156998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030007 (n + 2) + 2 * A030004 (n + 2)

end

end A191590.P14029697644500156998

noncomputable section

/-- A191590: a(n) is the genus of the modular curve associated to the principal congruence subgroup of level p(n), where p(n) is the n-th prime number.

Offset 2, canonical program `A191590.P14029697644500156998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191590 (n : ℕ) : ℤ :=
  A191590.P14029697644500156998.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191782.P9524612472546296102

`∑[abs(Δ[A026010(n)])]`
-/

namespace A191782.P9524612472546296102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191782.P9524612472546296102

noncomputable section

/-- A191782: Sum of the lengths of the first ascents in all n-length left factors of Dyck paths.

Offset 1, canonical program `A191782.P9524612472546296102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A191782 (n : ℕ) : ℤ :=
  A191782.P9524612472546296102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A191782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191836.P5700790045255042442

`∏[A143731(n+1)+ceil((n+1)/∏{p}[n+1, (n+1)/#])]`
-/

namespace A191836.P5700790045255042442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) + ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191836.P5700790045255042442

noncomputable section

/-- A191836: The slowest growing sequence that satisfies: a(1) = 1, a(n) is a multiple of n and a(n-1), and a(n) > a(n-1).

Offset 1, canonical program `A191836.P5700790045255042442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A191836 (n : ℕ) : ℤ :=
  A191836.P5700790045255042442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A191836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192120.P16297704775261001352

`record[A137688(n)-A001018(A025581(n))]`
-/

namespace A192120.P16297704775261001352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A001018 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192120.P16297704775261001352

noncomputable section

/-- A192120: Monotonic ordering of nonnegative differences 2^i - 8^j, for 40 >=i >= 0, j >= 0.

Offset 1, canonical program `A192120.P16297704775261001352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A192120 (n : ℕ) : ℤ :=
  A192120.P16297704775261001352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A192120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192167.P5054254474188894599

`record[A137688(n)²-A001018(A025581(n))]`
-/

namespace A192167.P5054254474188894599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 - A001018 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192167.P5054254474188894599

noncomputable section

/-- A192167: Monotonic ordering of nonnegative differences 4^i-8^j, for 40>= i>=0, j>=0.

Offset 1, canonical program `A192167.P5054254474188894599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A192167 (n : ℕ) : ℤ :=
  A192167.P5054254474188894599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A192167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192306.P16180315663506534326

`2*A122491(n+2)`
-/

namespace A192306.P16180315663506534326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122491 (n + 2)

end

end A192306.P16180315663506534326

noncomputable section

/-- A192306: 1-sequence of reduction of (2n) by x^2 -> x+1.

Offset 1, canonical program `A192306.P16180315663506534326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A192306 (n : ℕ) : ℤ :=
  A192306.P16180315663506534326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A192306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193350.P7605107557020847514

`A062069(n+1)-A193349(n+1)`
-/

namespace A193350.P7605107557020847514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (n + 1) - A193349 (n + 1)

end

end A193350.P7605107557020847514

noncomputable section

/-- A193350: Sum of even divisors of tau(n).

Offset 1, canonical program `A193350.P7605107557020847514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062069, A193349, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193350 (n : ℕ) : ℤ :=
  A193350.P7605107557020847514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062069, A193349, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193350.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193592.P7249153181096996018

`A002262(A056943(n))+1`
-/

namespace A193592.P7249153181096996018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A056943 n).toNat + 1

end

end A193592.P7249153181096996018

noncomputable section

/-- A193592: Triangle read by rows having n-th row 1, n, n-1, n-2,..., 2, 1 for n>=0.

Offset 0, canonical program `A193592.P7249153181096996018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193592 (n : ℕ) : ℤ :=
  A193592.P7249153181096996018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193912.P17477318446375195437

`∑[A193911(n+1)]`
-/

namespace A193912.P17477318446375195437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193912.P17477318446375195437

noncomputable section

/-- A193912: Partial sums of A193911.

Offset 1, canonical program `A193912.P17477318446375195437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 654 terms. -/
def A193912 (n : ℕ) : ℤ :=
  A193912.P17477318446375195437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 654 terms. -/
def A193912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194082.P14594225591884525649

`A171970(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A194082.P14594225591884525649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A171970 (n + 1) + a (n - 1)

end

end A194082.P14594225591884525649

noncomputable section

/-- A194082: a(n) = Sum_{k=1..n} floor(sqrt(3)*k/2).

Offset 1, canonical program `A194082.P14594225591884525649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194082 (n : ℕ) : ℤ :=
  A194082.P14594225591884525649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194126.P8549741617855437289

`abs(1-∑[A001950(n+1)])`
-/

namespace A194126.P8549741617855437289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A194126.P8549741617855437289

noncomputable section

/-- A194126: -1+A088207.

Offset 1, canonical program `A194126.P8549741617855437289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194126 (n : ℕ) : ℤ :=
  A194126.P8549741617855437289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194138.P1802011036160146576

`A194102(n+1)+∑[n+1]`
-/

namespace A194138.P1802011036160146576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194102 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194138.P1802011036160146576

noncomputable section

/-- A194138: a(n) = Sum_{j=1..n} floor(j*(1+sqrt(2))), n-th partial sum of Beatty sequence for 1+sqrt(2).

Offset 1, canonical program `A194138.P1802011036160146576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194138 (n : ℕ) : ℤ :=
  A194138.P1802011036160146576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194139.P15118620267476663729

`and(∑[A001952(n+1)], -1)`
-/

namespace A194139.P15118620267476663729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A194139.P15118620267476663729

noncomputable section

/-- A194139: a(n) = Sum_{j=1..n} floor(j*(2+sqrt(2))); n-th partial sum of Beatty sequence for 2+sqrt(2).

Offset 0, canonical program `A194139.P15118620267476663729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194139 (n : ℕ) : ℤ :=
  A194139.P15118620267476663729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194141.P4532975986403058293

`A194140(n+1)+∑[n+1]`
-/

namespace A194141.P4532975986403058293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194140 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194141.P4532975986403058293

noncomputable section

/-- A194141: Sum{floor(j*(2+sqrt(3))) : 1<=j<=n}; n-th partial sum of Beatty sequence for 2+sqrt(3).

Offset 1, canonical program `A194141.P4532975986403058293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194141 (n : ℕ) : ℤ :=
  A194141.P4532975986403058293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194144.P17823940702748119438

`A194110(n+1)-∑[n+1]`
-/

namespace A194144.P17823940702748119438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194110 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194144.P17823940702748119438

noncomputable section

/-- A194144: Sum{floor(j*(-1+sqrt(5))) : 1<=j<=n}; n-th partial sum of Beatty sequence for -1+sqrt(5).

Offset 1, canonical program `A194144.P17823940702748119438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194144 (n : ℕ) : ℤ :=
  A194144.P17823940702748119438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194148.P6171851851729030861

`∑[A137803(n+1)]`
-/

namespace A194148.P6171851851729030861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194148.P6171851851729030861

noncomputable section

/-- A194148: Sum_{j=1..n} floor(j*(1/2 + sqrt(2))); n-th partial sum of Beatty sequence for 1/2 + sqrt(2).

Offset 1, canonical program `A194148.P6171851851729030861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194148 (n : ℕ) : ℤ :=
  A194148.P6171851851729030861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194151.P5431600877886687202

`ceil(A190511(n+1)/2)`
-/

namespace A194151.P5431600877886687202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190511 (n + 1) : ℚ) / 2⌉

end

end A194151.P5431600877886687202

noncomputable section

/-- A194151: Beatty sequence for (1/2)*sqrt(5); complement of A194152.

Offset 1, canonical program `A194151.P5431600877886687202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194151 (n : ℕ) : ℤ :=
  A194151.P5431600877886687202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194195.P697157208742840349

`A004737(n+1)+A004739(n+1)*A079813(n+1)`
-/

namespace A194195.P697157208742840349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) + A004739 (n + 1) * A079813 (n + 1)

end

end A194195.P697157208742840349

noncomputable section

/-- A194195: First inverse function (numbers of rows) for pairing function A060734.

Offset 1, canonical program `A194195.P697157208742840349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194195 (n : ℕ) : ℤ :=
  A194195.P697157208742840349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194404.P6698143406103776618

`lt[A057428(n)+A005653(A008619(n)), n]`
-/

namespace A194404.P6698143406103776618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A005653 (A008619 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A194404.P6698143406103776618

noncomputable section

/-- A194404: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=(1+sqrt(5))/2 and < > denotes fractional part.

Offset 1, canonical program `A194404.P6698143406103776618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. -/
def A194404 (n : ℕ) : ℤ :=
  (A194404.P6698143406103776618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. -/
def A194404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194588.P2938280453957278802

`A189912(n-1)-a(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194588.P2938280453957278802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189912 (n - 1) - a (n - 1)

end

end A194588.P2938280453957278802

noncomputable section

/-- A194588: a(n) = A189912(n-1)-a(n-1) for n>0, a(0) = 1; extended Riordan numbers.

Offset 0, canonical program `A194588.P2938280453957278802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194588 (n : ℕ) : ℤ :=
  A194588.P2938280453957278802.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194588.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194740.P1783803332448557360

`A194739(n+1)+1`
-/

namespace A194740.P1783803332448557360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194739 (n + 1) + 1

end

end A194740.P1783803332448557360

noncomputable section

/-- A194740: Number of k such that {-k*sqrt(3)} < {-n*sqrt(3)}, where { } = fractional part.

Offset 1, canonical program `A194740.P1783803332448557360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194740 (n : ℕ) : ℤ :=
  A194740.P1783803332448557360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194742.P14049241962855359563

`n+1-(n*A194110(n+1))%(n+2)`
-/

namespace A194742.P14049241962855359563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod ((n : ℤ) * A194110 (n + 1)) (n + 2 : ℤ)

end

end A194742.P14049241962855359563

noncomputable section

/-- A194742: Number of k such that {k*sqrt(5)} < {n*sqrt(5)}, where { } = fractional part.

Offset 1, canonical program `A194742.P14049241962855359563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194742 (n : ℕ) : ℤ :=
  A194742.P14049241962855359563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194752.P8535250005586994287

`A194751(n+1)+1`
-/

namespace A194752.P8535250005586994287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194751 (n + 1) + 1

end

end A194752.P8535250005586994287

noncomputable section

/-- A194752: Number of k such that {-k*e} < {-n*e}, where { } = fractional part.

Offset 1, canonical program `A194752.P8535250005586994287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194752 (n : ℕ) : ℤ :=
  A194752.P8535250005586994287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194813.P15364618294108284325

`∑[1-(A001966(n)+A001468(n))%2]`
-/

namespace A194813.P15364618294108284325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A001966 n + A001468 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194813.P15364618294108284325

noncomputable section

/-- A194813: Number of integers k in [1,n] such that {n*r + k*r} < {n*r - k*r}, where { } = fractional part and r = (1+sqrt(5))/2 (the golden ratio).

Offset 1, canonical program `A194813.P15364618294108284325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194813 (n : ℕ) : ℤ :=
  A194813.P15364618294108284325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194847.P15779347047936523882

`A056556(n)+2`
-/

namespace A194847.P15779347047936523882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n + 2

end

end A194847.P15779347047936523882

noncomputable section

/-- A194847: Write n = C(i,3)+C(j,2)+C(k,1) with i>j>k>=0; sequence gives i values.

Offset 0, canonical program `A194847.P15779347047936523882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194847 (n : ℕ) : ℤ :=
  A194847.P15779347047936523882.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194883.P13313094170097831058

`A000120(eq[2, A023416(A006257(n))])`
-/

namespace A194883.P13313094170097831058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194883.P13313094170097831058

noncomputable section

/-- A194883: Write n = C(i,4)+C(j,3)+C(k,2)+C(l,1) with i>j>k>l>=0; sequence gives j values.

Offset 0, canonical program `A194883.P13313094170097831058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A194883 (n : ℕ) : ℤ :=
  A194883.P13313094170097831058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A194883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196748.P1291725474753101285

`∩[A058185(n+1), A196747(n+1)]`
-/

namespace A196748.P1291725474753101285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196748.P1291725474753101285

noncomputable section

/-- A196748: Numbers k such that 3 and 5 do not divide swing(k) = A056040(k).

Offset 1, canonical program `A196748.P1291725474753101285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A196748 (n : ℕ) : ℤ :=
  (A196748.P1291725474753101285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A196748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197125.P18255023952800122517

`∩[A028839(n+1), A175396(n+1)]`
-/

namespace A197125.P18255023952800122517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A197125.P18255023952800122517

noncomputable section

/-- A197125: Numbers such that sum of digits and sum of the square of digits are both a square.

Offset 1, canonical program `A197125.P18255023952800122517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A197125 (n : ℕ) : ℤ :=
  (A197125.P18255023952800122517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A197125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199015.P4609584876450057430

`∑[A008441(n)]`
-/

namespace A199015.P4609584876450057430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199015.P4609584876450057430

noncomputable section

/-- A199015: G.f.: 1/(1-x) * Product_{n>=1} (1 - x^(2*n))^2/(1 - x^(2*n-1))^2.

Offset 0, canonical program `A199015.P4609584876450057430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199015 (n : ℕ) : ℤ :=
  A199015.P4609584876450057430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199339.P3756374579669110308

`∑[A033999(A007605(n+1))]`
-/

namespace A199339.P3756374579669110308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A007605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199339.P3756374579669110308

noncomputable section

/-- A199339: a(n) = number of primes with an even digit sum among the first n primes minus the number with an odd digit sum.

Offset 1, canonical program `A199339.P3756374579669110308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199339 (n : ℕ) : ℤ :=
  A199339.P3756374579669110308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200244.P5861281741457501030

`A059841(A014499(n+1))`
-/

namespace A200244.P5861281741457501030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A014499 (n + 1)).toNat

end

end A200244.P5861281741457501030

noncomputable section

/-- A200244: a(n)=1 iff binary weight of n-th prime is even.

Offset 1, canonical program `A200244.P5861281741457501030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200244 (n : ℕ) : ℤ :=
  A200244.P5861281741457501030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200259.P8572923408309876952

`lt[0, val(A007605(n+1), 2)]+1`
-/

namespace A200259.P8572923408309876952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007605 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A200259.P8572923408309876952

noncomputable section

/-- A200259: Numbers k such that k-th prime has an even digit sum.

Offset 1, canonical program `A200259.P8572923408309876952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4925 terms. -/
def A200259 (n : ℕ) : ℤ :=
  (A200259.P8572923408309876952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4925 terms. -/
def A200259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200261.P2236305596718294823

`A059841(A007605(n+1))`
-/

namespace A200261.P2236305596718294823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A007605 (n + 1)).toNat

end

end A200261.P2236305596718294823

noncomputable section

/-- A200261: a(n) = 1 iff n-th prime has an even digit sum.

Offset 1, canonical program `A200261.P2236305596718294823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200261 (n : ℕ) : ℤ :=
  A200261.P2236305596718294823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201125.P10161186220591709827

`A056007(Δ[n²])`
-/

namespace A201125.P10161186220591709827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056007 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A201125.P10161186220591709827

noncomputable section

/-- A201125: Differences between odd powers of 2 and the next smaller square.

Offset 1, canonical program `A201125.P10161186220591709827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A201125 (n : ℕ) : ℤ :=
  A201125.P10161186220591709827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A201125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201462.P13807279662606650267

`1+lt[1, A109848(n+1)]`
-/

namespace A201462.P13807279662606650267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109848 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A201462.P13807279662606650267

noncomputable section

/-- A201462: Numbers that are not coprime to their 9's complement.

Offset 1, canonical program `A201462.P13807279662606650267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3955 terms. -/
def A201462 (n : ℕ) : ℤ :=
  (A201462.P13807279662606650267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3955 terms. -/
def A201462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202089.P7430434944876183357

`eq[A004159(n+1), A004159(n)]`
-/

namespace A202089.P7430434944876183357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202089.P7430434944876183357

noncomputable section

/-- A202089: Numbers n such that n^2 and (n+1)^2 have same digit sum.

Offset 1, canonical program `A202089.P7430434944876183357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A202089 (n : ℕ) : ℤ :=
  (A202089.P7430434944876183357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A202089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202394.P10766434799180443179

`A010816(n)*A089812(n)`
-/

namespace A202394.P10766434799180443179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A089812 n

end

end A202394.P10766434799180443179

noncomputable section

/-- A202394: Expansion of f(-x)^3 + 9 * x * f(-x^9)^3 in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A202394.P10766434799180443179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A202394 (n : ℕ) : ℤ :=
  A202394.P10766434799180443179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A202394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204143.P7169083616238944113

`A010783(n+1)*A010783(A038722(n+1))`
-/

namespace A204143.P7169083616238944113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1) * A010783 (A038722 (n + 1)).toNat

end

end A204143.P7169083616238944113

noncomputable section

/-- A204143: Symmetric matrix based on f(i,j)=max(ceiling(i/j),ceiling(j/i)), by antidiagonals.

Offset 1, canonical program `A204143.P7169083616238944113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204143 (n : ℕ) : ℤ :=
  A204143.P7169083616238944113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204175.P4096975912672246987

`1-A204171(n+1)`
-/

namespace A204175.P4096975912672246987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A204171 (n + 1)

end

end A204175.P4096975912672246987

noncomputable section

/-- A204175: Symmetric matrix based on f(i,j)=(1 if max(i,j) is even, and 0 otherwise), by antidiagonals.

Offset 1, canonical program `A204175.P4096975912672246987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204175 (n : ℕ) : ℤ :=
  A204175.P4096975912672246987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204177.P4715536723901757887

`abs(A185917(n+1))`
-/

namespace A204177.P4715536723901757887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185917 (n + 1)|

end

end A204177.P4715536723901757887

noncomputable section

/-- A204177: Symmetric matrix based on f(i,j)=(1 if i=1 or j=1 or i=j, and 0 otherwise), by antidiagonals.

Offset 1, canonical program `A204177.P4715536723901757887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204177 (n : ℕ) : ℤ :=
  A204177.P4715536723901757887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204181.P7402957696718526263

`and(A099375(n), A185917(n+1))`
-/

namespace A204181.P7402957696718526263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099375 n) (A185917 (n + 1))

end

end A204181.P7402957696718526263

noncomputable section

/-- A204181: Symmetric matrix based on f(i,j) defined by f(i,1)=f(1,j)=1; f(i,i)= 2i-1; f(i,j)=0 otherwise; by antidiagonals.

Offset 1, canonical program `A204181.P7402957696718526263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204181 (n : ℕ) : ℤ :=
  A204181.P7402957696718526263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204221.P16762614138165113717

`A154293(n+1)+A152749(A004526(n))`
-/

namespace A204221.P16762614138165113717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154293 (n + 1) + A152749 (A004526 n).toNat

end

end A204221.P16762614138165113717

noncomputable section

/-- A204221: Integers of the form (N^2 - 1) / 15.

Offset 0, canonical program `A204221.P16762614138165113717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204221 (n : ℕ) : ℤ :=
  A204221.P16762614138165113717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204253.P4184580073073620583

`∑[A089812(n)]+2`
-/

namespace A204253.P4184580073073620583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A204253.P4184580073073620583

noncomputable section

/-- A204253: Symmetric matrix given by f(i,j)=1+[(i+j) mod 3].

Offset 1, canonical program `A204253.P4184580073073620583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204253 (n : ℕ) : ℤ :=
  A204253.P4184580073073620583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204263.P7060640148051898808

`∑[A089812(n)]+1`
-/

namespace A204263.P7060640148051898808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A204263.P7060640148051898808

noncomputable section

/-- A204263: Symmetric matrix: f(i,j)=(i+j mod 3), by antidiagonals.

Offset 1, canonical program `A204263.P7060640148051898808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204263 (n : ℕ) : ℤ :=
  A204263.P7060640148051898808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204433.P16829346633461525554

`1-∑[A089812(n)]`
-/

namespace A204433.P16829346633461525554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204433.P16829346633461525554

noncomputable section

/-- A204433: Symmetric matrix: f(i,j) = (2*i + 2*j + 2) mod 3, by antidiagonals.

Offset 1, canonical program `A204433.P16829346633461525554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204433 (n : ℕ) : ℤ :=
  A204433.P16829346633461525554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204439.P6813168725087554525

`abs(∑[A089812(n)])`
-/

namespace A204439.P6813168725087554525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A204439.P6813168725087554525

noncomputable section

/-- A204439: Symmetric matrix: f(i,j)=((i+j+2)^2 mod 3), by (constant) antidiagonals.

Offset 1, canonical program `A204439.P6813168725087554525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204439 (n : ℕ) : ℤ :=
  A204439.P6813168725087554525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205008.P13998729903812751376

`A000984(A002024(n+1))-A000984(A002262(n))`
-/

namespace A205008.P13998729903812751376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A002024 (n + 1)).toNat - A000984 (A002262 n).toNat

end

end A205008.P13998729903812751376

noncomputable section

/-- A205008: Ordered differences of central binomial coefficients.

Offset 1, canonical program `A205008.P13998729903812751376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205008 (n : ℕ) : ℤ :=
  A205008.P13998729903812751376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205120.P6059773044546605763

`A087323(A002024(n+1))-A087323(A002262(n))`
-/

namespace A205120.P6059773044546605763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 (A002024 (n + 1)).toNat - A087323 (A002262 n).toNat

end

end A205120.P6059773044546605763

noncomputable section

/-- A205120: Ordered differences of distinct numbers k*(2^(k-1)).

Offset 1, canonical program `A205120.P6059773044546605763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205120 (n : ℕ) : ℤ :=
  A205120.P6059773044546605763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205384.P6115785948312690780

`A001700(A002024(n+1))-A001700(A002262(n))`
-/

namespace A205384.P6115785948312690780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (A002024 (n + 1)).toNat - A001700 (A002262 n).toNat

end

end A205384.P6115785948312690780

noncomputable section

/-- A205384: Ordered differences of numbers s(j)=(1/2)C(2j,j).

Offset 1, canonical program `A205384.P6115785948312690780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205384 (n : ℕ) : ℤ :=
  A205384.P6115785948312690780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205565.P12968844545537805874

`ceil(A120880(n)/2)`
-/

namespace A205565.P12968844545537805874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120880 n : ℚ) / 2⌉

end

end A205565.P12968844545537805874

noncomputable section

/-- A205565: Number of ways of writing n = u + v with u <= v, and u,v having in ternary representation no 3.

Offset 0, canonical program `A205565.P12968844545537805874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205565 (n : ℕ) : ℤ :=
  A205565.P12968844545537805874.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205592.P7792590669953959238

`Δ[A205591(n+1)]`
-/

namespace A205592.P7792590669953959238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205592.P7792590669953959238

noncomputable section

/-- A205592: a(2) = 1, a(3k) = a(3k+1) = a(2k), a(3k+2) = 2a(2k+1) for k >= 1.

Offset 2, canonical program `A205592.P7792590669953959238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A205592 (n : ℕ) : ℤ :=
  A205592.P7792590669953959238.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A205592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205955.P11019694915119694483

`(A000040(n+1)-A096379(n+1))*A000040(n+1)`
-/

namespace A205955.P11019694915119694483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A096379 (n + 1)) * A000040 (n + 1)

end

end A205955.P11019694915119694483

noncomputable section

/-- A205955: a(n) = prime(n) * (prime(n+2) - prime(n+1)).

Offset 1, canonical program `A205955.P11019694915119694483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205955 (n : ℕ) : ℤ :=
  A205955.P11019694915119694483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206258.P18417572546255986747

`4*∑[A140434(n+1)]+1`
-/

namespace A206258.P18417572546255986747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A206258.P18417572546255986747

noncomputable section

/-- A206258: 1/8 the number of 2 X 2 -n..n arrays with a 2 X 2 -n..n inverse, i.e., with determinant +-1.

Offset 1, canonical program `A206258.P18417572546255986747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206258 (n : ℕ) : ℤ :=
  A206258.P18417572546255986747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206297.P14886430242369453730

`A140434(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A206297.P14886430242369453730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A140434 n + a (n - 1)

end

end A206297.P14886430242369453730

noncomputable section

/-- A206297: Position of n in the canonical bijection from the positive integers to the positive rational numbers.

Offset 1, canonical program `A206297.P14886430242369453730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206297 (n : ℕ) : ℤ :=
  A206297.P14886430242369453730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206350.P761280235204802101

`A140434(n)+a(n-1)` with `a(0)=1`
-/

namespace A206350.P761280235204802101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140434 n + a (n - 1)

end

end A206350.P761280235204802101

noncomputable section

/-- A206350: Position of 1/n in the canonical bijection from the positive integers to the positive rational numbers.

Offset 1, canonical program `A206350.P761280235204802101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206350 (n : ℕ) : ℤ :=
  A206350.P761280235204802101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206475.P1877464860005906929

`A206369(n+2)-A206369(n+1)`
-/

namespace A206475.P1877464860005906929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (n + 2) - A206369 (n + 1)

end

end A206475.P1877464860005906929

noncomputable section

/-- A206475: First differences of A206369.

Offset 1, canonical program `A206475.P1877464860005906929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206369, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206475 (n : ℕ) : ℤ :=
  A206475.P1877464860005906929.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206369, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206475.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206603.P3063521816794991771

`A001787(n)-A189391(n)`
-/

namespace A206603.P3063521816794991771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - A189391 n

end

end A206603.P3063521816794991771

noncomputable section

/-- A206603: Maximal apex value of an addition triangle whose base is a permutation of {k-n/2, k=0..n}.

Offset 0, canonical program `A206603.P3063521816794991771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206603 (n : ℕ) : ℤ :=
  A206603.P3063521816794991771.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206903.P14115896034849611859

`A042968(A194979(n+1))+n`
-/

namespace A206903.P14115896034849611859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (A194979 (n + 1)).toNat + (n : ℤ)

end

end A206903.P14115896034849611859

noncomputable section

/-- A206903: n+[ns/r]+[nt/r], where []=floor, r=3, s=sqrt(3), t=1/s.

Offset 1, canonical program `A206903.P14115896034849611859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206903 (n : ℕ) : ℤ :=
  A206903.P14115896034849611859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206904.P11521771030836579152

`A180123(n+1)-floor((2*n+1)/3)`
-/

namespace A206904.P11521771030836579152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1) - ⌊(2 * n + 1 : ℚ) / 3⌋

end

end A206904.P11521771030836579152

noncomputable section

/-- A206904: n+[nr/s]+[nt/s], where []=floor, r=3, s=sqrt(3), t=1/s.

Offset 1, canonical program `A206904.P11521771030836579152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206904 (n : ℕ) : ℤ :=
  A206904.P11521771030836579152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207260.P2392531188077543405

`and(1, A025581(n))+A002262(n)²`
-/

namespace A207260.P2392531188077543405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A025581 n) + A002262 n ^ 2

end

end A207260.P2392531188077543405

noncomputable section

/-- A207260: Triangle read by rows: T(n,k) = k^2 + (1-(-1)^(n-k))/2.

Offset 0, canonical program `A207260.P2392531188077543405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207260 (n : ℕ) : ℤ :=
  A207260.P2392531188077543405.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207336.P18036934043084586186

`A001651(A181709(n+1))`
-/

namespace A207336.P18036934043084586186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A181709 (n + 1)).toNat

end

end A207336.P18036934043084586186

noncomputable section

/-- A207336: One half of smallest positive nontrivial even solution of the congruence x^2 == 1 (mod A001748(n+2)), n>=1.

Offset 1, canonical program `A207336.P18036934043084586186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A207336 (n : ℕ) : ℤ :=
  A207336.P18036934043084586186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A207336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207992.P2814114464240705401

`∩[A207990(n+1), A207991(n+1)]`
-/

namespace A207992.P2814114464240705401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207992.P2814114464240705401

noncomputable section

/-- A207992: Primes p of the form p = prime(n) + prime(n+1) - 5 and p = prime(k) + prime(k+1) + 5.

Offset 1, canonical program `A207992.P2814114464240705401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A207992 (n : ℕ) : ℤ :=
  (A207992.P2814114464240705401.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A207992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209727.P8910992822076776989

`A052955(A002262(n))+A052955(A025581(n))`
-/

namespace A209727.P8910992822076776989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A002262 n).toNat + A052955 (A025581 n).toNat

end

end A209727.P8910992822076776989

noncomputable section

/-- A209727: T(n,k) = 1/4 the number of (n+1) X (k+1) 0..2 arrays with every 2 X 2 subblock having distinct clockwise edge differences.

Offset 1, canonical program `A209727.P8910992822076776989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1512 terms. -/
def A209727 (n : ℕ) : ℤ :=
  A209727.P8910992822076776989.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1512 terms. -/
def A209727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209921.P1460614472512575037

`record[A209662(n+1)]`
-/

namespace A209921.P1460614472512575037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209921.P1460614472512575037

noncomputable section

/-- A209921: Position of positive values in A209661 and A209662.

Offset 1, canonical program `A209921.P1460614472512575037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5101 terms. -/
def A209921 (n : ℕ) : ℤ :=
  A209921.P1460614472512575037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5101 terms. -/
def A209921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209932.P1013292124690884436

`lt[A209929(n+1), 1]+1`
-/

namespace A209932.P1013292124690884436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209929 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A209932.P1013292124690884436

noncomputable section

/-- A209932: Numbers k such that smallest digit of all divisors of k is 0.

Offset 1, canonical program `A209932.P1013292124690884436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8243 terms. -/
def A209932 (n : ℕ) : ℤ :=
  (A209932.P1013292124690884436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8243 terms. -/
def A209932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210341.P7767828685371879568

`A053602(A099375(n))^A002262(n)`
-/

namespace A210341.P7767828685371879568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053602 (A099375 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A210341.P7767828685371879568

noncomputable section

/-- A210341: Triangle generated by T(n,k) = Fibonacci(n-k+2)^k.

Offset 0, canonical program `A210341.P7767828685371879568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1009 terms. -/
def A210341 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A210341.P7767828685371879568.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1009 terms. -/
def A210341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210551.P10369202010321151337

`C(A128076(n+1), A002262(n)+1)`
-/

namespace A210551.P10369202010321151337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A128076 (n + 1)).toNat (A002262 n + 1).toNat

end

end A210551.P10369202010321151337

noncomputable section

/-- A210551: Triangle of coefficients of polynomials v(n,x) jointly generated with A172431; see the Formula section.

Offset 1, canonical program `A210551.P10369202010321151337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210551 (n : ℕ) : ℤ :=
  (A210551.P10369202010321151337.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210619.P17701669326897386950

`∑[A000045(A099375(n))*A035214(n)]`
-/

namespace A210619.P17701669326897386950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A099375 n).toNat * A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210619.P17701669326897386950

noncomputable section

/-- A210619: Triangle of numbers with n 1's and n 0's in their representation in base of Fibonacci numbers (A014417).

Offset 1, canonical program `A210619.P17701669326897386950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210619 (n : ℕ) : ℤ :=
  A210619.P17701669326897386950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210628.P787028128316081024

`(-1)^n*A097331(n)`
-/

namespace A210628.P787028128316081024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A097331 n

end

end A210628.P787028128316081024

noncomputable section

/-- A210628: Expansion of (-1 + 2*x + sqrt( 1 - 4*x^2)) / (2*x) in powers of x.

Offset 0, canonical program `A210628.P787028128316081024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210628 (n : ℕ) : ℤ :=
  A210628.P787028128316081024.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210628.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211173.P7488017100782827256

`A101264(n)*A266303(n)`
-/

namespace A211173.P7488017100782827256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n * A266303 n

end

end A211173.P7488017100782827256

noncomputable section

/-- A211173: a(n) = (2n)!^n (modulo 2n+1).

Offset 0, canonical program `A211173.P7488017100782827256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211173 (n : ℕ) : ℤ :=
  A211173.P7488017100782827256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211273.P13713686683909964253

`A091627(2*(n+1))-n`
-/

namespace A211273.P13713686683909964253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091627 (2 * (n + 1)) - (n : ℤ)

end

end A211273.P13713686683909964253

noncomputable section

/-- A211273: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211273.P13713686683909964253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A211273 (n : ℕ) : ℤ :=
  A211273.P13713686683909964253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A211273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211280.P11515842632403342583

`xor(-A210497(n+1), -2)`
-/

namespace A211280.P11515842632403342583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A210497 (n + 1)) (-2)

end

end A211280.P11515842632403342583

noncomputable section

/-- A211280: Numerator of prime(n+1) - prime(n)/2.

Offset 1, canonical program `A211280.P11515842632403342583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211280 (n : ℕ) : ℤ :=
  A211280.P11515842632403342583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211394.P13528720192958301099

`∑[1-A010816(n)]+1`
-/

namespace A211394.P13528720192958301099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A211394.P13528720192958301099

noncomputable section

/-- A211394: T(n,k) = (k+n)*(k+n-1)/2-(k+n-1)*(-1)^(k+n)-k+2; n , k > 0, read by antidiagonals.

Offset 1, canonical program `A211394.P13528720192958301099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211394 (n : ℕ) : ℤ :=
  A211394.P13528720192958301099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212314.P11095941826537081414

`eq[A000120(n), A130724(A192085(n))]`
-/

namespace A212314.P11095941826537081414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (A192085 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212314.P11095941826537081414

noncomputable section

/-- A212314: Numbers m such that B(m^3) = 3*B(m), where B(m) is the binary weight of m (A000120).

Offset 1, canonical program `A212314.P11095941826537081414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A212314 (n : ℕ) : ℤ :=
  (A212314.P11095941826537081414.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A212314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212670.P14722103620791162701

`2*A212669(n+1)-A212668(n+1)`
-/

namespace A212670.P14722103620791162701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212669 (n + 1) - A212668 (n + 1)

end

end A212670.P14722103620791162701

noncomputable section

/-- A212670: a(n) = 1/15*(128*n^5 + 320*n^4 + 80*n^3 - 200*n^2 + 92*n - 15).

Offset 1, canonical program `A212670.P14722103620791162701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212670 (n : ℕ) : ℤ :=
  A212670.P14722103620791162701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212690.P220314655135149710

`n²²-A212689(n)`
-/

namespace A212690.P220314655135149710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212689 n

end

end A212690.P220314655135149710

noncomputable section

/-- A212690: Number of (w,x,y,z) with all terms in {1,...,n} and 2|w-x| <= n+|y-z|.

Offset 0, canonical program `A212690.P220314655135149710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212690 (n : ℕ) : ℤ :=
  A212690.P220314655135149710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212730.P8897697622710183952

`A055217(Δ[n²])`
-/

namespace A212730.P8897697622710183952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055217 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A212730.P8897697622710183952

noncomputable section

/-- A212730: Number of 0..2 arrays of length 2*n with sum less than 2*n in any length 2n subsequence (=less than 50% duty cycle).

Offset 1, canonical program `A212730.P8897697622710183952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A212730 (n : ℕ) : ℤ :=
  A212730.P8897697622710183952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A212730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213120.P16163402423445463555

`A000984(n)+8*A008549(n)`
-/

namespace A213120.P16163402423445463555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 8 * A008549 n

end

end A213120.P16163402423445463555

noncomputable section

/-- A213120: Number of binary arrays of length 2*n+2 with fewer than n ones in any length 2n subsequence (=less than 50% duty cycle).

Offset 1, canonical program `A213120.P16163402423445463555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A213120 (n : ℕ) : ℤ :=
  A213120.P16163402423445463555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A213120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213577.P16976482993610206875

`A023860(Δ[n²])`
-/

namespace A213577.P16976482993610206875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A213577.P16976482993610206875

noncomputable section

/-- A213577: Principal diagonal of the convolution array A213576.

Offset 1, canonical program `A213577.P16976482993610206875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A213577 (n : ℕ) : ℤ :=
  A213577.P16976482993610206875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A213577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213707.P7878863599904127051

`n+A213706(n)`
-/

namespace A213707.P7878863599904127051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A213706 n

end

end A213707.P7878863599904127051

noncomputable section

/-- A213707: Positions of zeros in A218254.

Offset 0, canonical program `A213707.P7878863599904127051`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213707 (n : ℕ) : ℤ :=
  A213707.P7878863599904127051.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213711.P10909222957996312783

`∑[char[A213710(n)]]`
-/

namespace A213711.P10909222957996312783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213710 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213711.P10909222957996312783

noncomputable section

/-- A213711: a(n) = minimal k for which A218600(k) >= n.

Offset 0, canonical program `A213711.P10909222957996312783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8728 terms. -/
def A213711 (n : ℕ) : ℤ :=
  (A213711.P10909222957996312783.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8728 terms. -/
def A213711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213714.P736048023233046129

`A079559(n)*(A046699(n+2)-1)`
-/

namespace A213714.P736048023233046129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n * (A046699 (n + 2) - 1)

end

end A213714.P736048023233046129

noncomputable section

/-- A213714: Inverse function for injection A005187.

Offset 0, canonical program `A213714.P736048023233046129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046699, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213714 (n : ℕ) : ℤ :=
  A213714.P736048023233046129.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046699, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213722.P18332226970150710010

`A011782(n)-A213709(n)`
-/

namespace A213722.P18332226970150710010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A213709 n

end

end A213722.P18332226970150710010

noncomputable section

/-- A213722: a(n) = number of terms in A213717 whose magnitude is in range [(2^n)-1,(2^(n+1))-2] (or equally, in range [(2^n),(2^(n+1))-1]).

Offset 0, canonical program `A213722.P18332226970150710010`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213722 (n : ℕ) : ℤ :=
  A213722.P18332226970150710010.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213722.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213724.P12963400970453454858

`Δ[(∑[A079559(abs(1-n))]-1)²]`
-/

namespace A213724.P12963400970453454858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213724.P12963400970453454858

noncomputable section

/-- A213724: Largest natural number x such that x = n + A000120(x), or zero if no such number exists.

Offset 0, canonical program `A213724.P12963400970453454858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A213724 (n : ℕ) : ℤ :=
  A213724.P12963400970453454858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A213724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213766.P16960842637779880189

`A023860(2*(n+1))-A099920(n)`
-/

namespace A213766.P16960842637779880189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (2 * (n + 1)) - A099920 n

end

end A213766.P16960842637779880189

noncomputable section

/-- A213766: Principal diagonal of the convolution array A213765.

Offset 1, canonical program `A213766.P16960842637779880189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A213766 (n : ℕ) : ℤ :=
  A213766.P16960842637779880189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A213766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213902.P8697298374266597207

`A004523(A100820(n+1))`
-/

namespace A213902.P8697298374266597207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A100820 (n + 1)).toNat

end

end A213902.P8697298374266597207

noncomputable section

/-- A213902: Number of integers of the form 6*k+1 and 6*k-1 between prime(n) and prime(n+1).

Offset 1, canonical program `A213902.P8697298374266597207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A213902 (n : ℕ) : ℤ :=
  A213902.P8697298374266597207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A213902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214585.P2727886227339530422

`eq[1, A214054(n+1)]+1`
-/

namespace A214585.P2727886227339530422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214585.P2727886227339530422

noncomputable section

/-- A214585: Numbers k such that gcd(k!!+1,k-1) > 1.

Offset 1, canonical program `A214585.P2727886227339530422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4300 terms. -/
def A214585 (n : ℕ) : ℤ :=
  (A214585.P2727886227339530422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4300 terms. -/
def A214585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214586.P4542991298950632381

`lt[1, A214054(n+1)]+1`
-/

namespace A214586.P4542991298950632381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A214586.P4542991298950632381

noncomputable section

/-- A214586: Numbers k such that gcd(k!!+1,k-1) = 1.

Offset 1, canonical program `A214586.P4542991298950632381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3655 terms. -/
def A214586 (n : ℕ) : ℤ :=
  (A214586.P4542991298950632381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3655 terms. -/
def A214586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214711.P10925273728456051061

`eq[2, A214710(n+1)]+1`
-/

namespace A214711.P10925273728456051061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214711.P10925273728456051061

noncomputable section

/-- A214711: Positions of 2 in A214710.

Offset 1, canonical program `A214711.P10925273728456051061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A214711 (n : ℕ) : ℤ :=
  (A214711.P10925273728456051061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A214711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215027.P10198509170446300710

`A127421(n)-a(n-1)` with `a(0)=0`
-/

namespace A215027.P10198509170446300710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A127421 n - a (n - 1)

end

end A215027.P10198509170446300710

noncomputable section

/-- A215027: a(n+1) = (concatenation of n and n+1) - a(n), a(0) = 0.

Offset 0, canonical program `A215027.P10198509170446300710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215027 (n : ℕ) : ℤ :=
  A215027.P10198509170446300710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215028.P4106407671865329416

`2-(a(n-1)-(A111708(n)+A004273(n)))` with `a(0)=1`
-/

namespace A215028.P4106407671865329416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) - (A111708 n + A004273 n))

end

end A215028.P4106407671865329416

noncomputable section

/-- A215028: a(1) = 1; for n >= 1, a(n+1) = (concatenation of n+1 and n) - a(n).

Offset 1, canonical program `A215028.P4106407671865329416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215028 (n : ℕ) : ℤ :=
  A215028.P4106407671865329416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215202.P9003233885417552104

`A128227(eq[A048152(n+1), A128227(n)])`
-/

namespace A215202.P9003233885417552104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215202.P9003233885417552104

noncomputable section

/-- A215202: Irregular triangle in which n-th row gives m in 1, ..., n-1 such that m^2 == m (mod n).

Offset 2, canonical program `A215202.P9003233885417552104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A215202 (n : ℕ) : ℤ :=
  A215202.P9003233885417552104.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A215202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215247.P1141580706699768703

`A342281(n)+Δ[n²]`
-/

namespace A215247.P1141580706699768703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342281 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A215247.P1141580706699768703

noncomputable section

/-- A215247: A Beatty sequence: a(n) = floor((n-1/2)*(2 + 2*sqrt(2))).

Offset 1, canonical program `A215247.P1141580706699768703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215247 (n : ℕ) : ℤ :=
  A215247.P1141580706699768703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215532.P800191333380892609

`a(A002262(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A215532.P800191333380892609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A002262 (n - 1)).toNat

end

end A215532.P800191333380892609

noncomputable section

/-- A215532: The limit of the string "0, 1" under the operation 'append first k terms, increment k' with k=2 initially.

Offset 0, canonical program `A215532.P800191333380892609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215532 (n : ℕ) : ℤ :=
  (A215532.P800191333380892609.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215713.P3588067354417912298

`A000079(n+1)²/A006519(A016777(n+2))`
-/

namespace A215713.P3588067354417912298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) ^ 2 : ℚ) / (A006519 (A016777 (n + 2)).toNat : ℚ)

end

end A215713.P3588067354417912298

noncomputable section

/-- A215713: Denominator of sum(i=1..n, 3*i/4^i).

Offset 1, canonical program `A215713.P3588067354417912298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A215713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A215713.P3588067354417912298.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A215713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215919.P8935457946255315504

`Δ[A215917(n)%A123891(n)]`
-/

namespace A215919.P8935457946255315504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215917 n) (A123891 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215919.P8935457946255315504

noncomputable section

/-- A215919: a(n) = -3*a(n-1) + a(n-3), with a(0)=0, a(1)=-3, a(2)=12.

Offset 0, canonical program `A215919.P8935457946255315504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A215919 (n : ℕ) : ℤ :=
  A215919.P8935457946255315504.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A215919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216126.P17812320918836418919

`A000351(n)%A017512(A010816(3*n+2))`
-/

namespace A216126.P17812320918836418919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n) (A017512 (A010816 (3 * n + 2)).toNat)

end

end A216126.P17812320918836418919

noncomputable section

/-- A216126: a(n) = 5^n mod 10000.

Offset 0, canonical program `A216126.P17812320918836418919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A216126 (n : ℕ) : ℤ :=
  A216126.P17812320918836418919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A216126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216318.P9466305550885392496

`ceil(A028270(n)/2)-A000108(n)`
-/

namespace A216318.P9466305550885392496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028270 n : ℚ) / 2⌉ - A000108 n

end

end A216318.P9466305550885392496

noncomputable section

/-- A216318: Number of peaks in all Dyck n-paths after changing each valley to a peak by the transform DU -> UD.

Offset 0, canonical program `A216318.P9466305550885392496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A216318 (n : ℕ) : ℤ :=
  A216318.P9466305550885392496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A216318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216676.P8042148901367579546

`dr(A388539(n+1))`
-/

namespace A216676.P8042148901367579546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A388539 (n + 1))

end

end A216676.P8042148901367579546

noncomputable section

/-- A216676: Digital roots of squares of Fibonacci numbers.

Offset 1, canonical program `A216676.P8042148901367579546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216676 (n : ℕ) : ℤ :=
  (A216676.P8042148901367579546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216699.P2293991450571384298

`dr(A004090(n)²*A004090(n))`
-/

namespace A216699.P2293991450571384298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004090 n ^ 2 * A004090 n)

end

end A216699.P2293991450571384298

noncomputable section

/-- A216699: Digital root of cubes of Fibonacci numbers.

Offset 0, canonical program `A216699.P2293991450571384298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216699 (n : ℕ) : ℤ :=
  (A216699.P2293991450571384298.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216754.P14933782455688842539

`dr(A388539(n)²)`
-/

namespace A216754.P14933782455688842539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A388539 n ^ 2)

end

end A216754.P14933782455688842539

noncomputable section

/-- A216754: Digital root of fourth power of Fibonacci numbers.

Offset 0, canonical program `A216754.P14933782455688842539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216754 (n : ℕ) : ℤ :=
  (A216754.P14933782455688842539.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217219.P6754064516663132838

`6*A045833(n)`
-/

namespace A217219.P6754064516663132838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A045833 n

end

end A217219.P6754064516663132838

noncomputable section

/-- A217219: Theta series of planar hexagonal net (honeycomb) with respect to deep hole.

Offset 0, canonical program `A217219.P6754064516663132838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217219 (n : ℕ) : ℤ :=
  A217219.P6754064516663132838.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217219.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217324.P16963141297751962891

`record[A005817(n)-A001006(n)%A002426(n)]`
-/

namespace A217324.P16963141297751962891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005817 n - Int.tmod (A001006 n) (A002426 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217324.P16963141297751962891

noncomputable section

/-- A217324: Number of self-inverse permutations in S_n with longest increasing subsequence of length 4.

Offset 4, canonical program `A217324.P16963141297751962891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A217324 (n : ℕ) : ℤ :=
  A217324.P16963141297751962891.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A217324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217570.P4492516139347858203

`A002262(n)+A052938(A131507(n))²`
-/

namespace A217570.P4492516139347858203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A052938 (A131507 n).toNat ^ 2

end

end A217570.P4492516139347858203

noncomputable section

/-- A217570: Numbers n such that floor(sqrt(n)) = floor(n/(floor(sqrt(n))-1))-1.

Offset 1, canonical program `A217570.P4492516139347858203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217570 (n : ℕ) : ℤ :=
  A217570.P4492516139347858203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218265.P4459247732749169675

`A000085(n+5)-A005817(n+5)`
-/

namespace A218265.P4459247732749169675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 5) - A005817 (n + 5)

end

end A218265.P4459247732749169675

noncomputable section

/-- A218265: Number of standard Young tableaux of n cells and height >= 5.

Offset 5, canonical program `A218265.P4459247732749169675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A218265 (n : ℕ) : ℤ :=
  A218265.P4459247732749169675.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A218265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218601.P8037354091719983160

`n%A213710(∑[char[A213710(n+1)]])`
-/

namespace A218601.P8037354091719983160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213710 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A213710 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A218601.P8037354091719983160

noncomputable section

/-- A218601: After the first zero, integers from 0 to A213709(n)-1 followed by integers from 0 to A213709(n+1)-1, etc.

Offset 0, canonical program `A218601.P8037354091719983160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8728 terms. -/
def A218601 (n : ℕ) : ℤ :=
  A218601.P8037354091719983160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8728 terms. -/
def A218601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219637.P9877023548532234555

`A003622(n+1)-A143299(n+1)`
-/

namespace A219637.P9877023548532234555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) - A143299 (n + 1)

end

end A219637.P9877023548532234555

noncomputable section

/-- A219637: Numbers that occur twice in A219641.

Offset 1, canonical program `A219637.P9877023548532234555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219637 (n : ℕ) : ℤ :=
  A219637.P9877023548532234555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220104.P13357652405321892040

`A056556(A004526(n))+1`
-/

namespace A220104.P13357652405321892040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A004526 n).toNat + 1

end

end A220104.P13357652405321892040

noncomputable section

/-- A220104: k appears k*(k+1) times.

Offset 1, canonical program `A220104.P13357652405321892040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220104 (n : ℕ) : ℤ :=
  A220104.P13357652405321892040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220116.P3171378606926799839

`eq[A063787(n+1), A143299(n+1)]`
-/

namespace A220116.P3171378606926799839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220116.P3171378606926799839

noncomputable section

/-- A220116: Numbers k such that the number of 1's in binary expansion of k equals the number of terms in Zeckendorf representation of k.

Offset 1, canonical program `A220116.P3171378606926799839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1689 terms. -/
def A220116 (n : ℕ) : ℤ :=
  (A220116.P3171378606926799839.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1689 terms. -/
def A220116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220956.P10026391978281080309

`A051924(n+1)%(n+1)²-(n+3)`
-/

namespace A220956.P10026391978281080309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051924 (n + 1)) ((n + 1) ^ 2 : ℤ) - (n + 3 : ℤ)

end

end A220956.P10026391978281080309

noncomputable section

/-- A220956: (Binomial(2n, n) - binomial(2n - 2, n - 1)) (mod n^2) - n - 2.

Offset 1, canonical program `A220956.P10026391978281080309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A220956 (n : ℕ) : ℤ :=
  A220956.P10026391978281080309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A220956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221056.P8997916471508641174

`eq[1, A061265(n+1)+1]+1`
-/

namespace A221056.P8997916471508641174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061265 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A221056.P8997916471508641174

noncomputable section

/-- A221056: Numbers k such that there is no square between prime(k) and prime(k+1).

Offset 1, canonical program `A221056.P8997916471508641174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9678 terms. -/
def A221056 (n : ℕ) : ℤ :=
  (A221056.P8997916471508641174.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9678 terms. -/
def A221056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221876.P9289461571212111972

`A045623(A025581(n))`
-/

namespace A221876.P9289461571212111972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (A025581 n).toNat

end

end A221876.P9289461571212111972

noncomputable section

/-- A221876: T(n,k) is the number of order-preserving full contraction mappings (of an n-chain) with exactly k fixed points.

Offset 1, canonical program `A221876.P9289461571212111972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221876 (n : ℕ) : ℤ :=
  A221876.P9289461571212111972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224339.P1284918053879070552

`(3*A065764(n+1))%A195585(n+1)`
-/

namespace A224339.P1284918053879070552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A065764 (n + 1)) (A195585 (n + 1))

end

end A224339.P1284918053879070552

noncomputable section

/-- A224339: Absolute difference between sum of odd divisors of n^2 and sum of even divisors of n^2.

Offset 1, canonical program `A224339.P1284918053879070552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224339 (n : ℕ) : ℤ :=
  A224339.P1284918053879070552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224363.P1517019116254697631

`p?[A061265(n+1)+A000040(n+1)]`
-/

namespace A224363.P1517019116254697631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061265 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224363.P1517019116254697631

noncomputable section

/-- A224363: Primes p such that there are no squares between p and the prime following p.

Offset 1, canonical program `A224363.P1517019116254697631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9678 terms. -/
def A224363 (n : ℕ) : ℤ :=
  A224363.P1517019116254697631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9678 terms. -/
def A224363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225014.P12267725668881702781

`∑[∑[A225013(n+1)]]+1`
-/

namespace A225014.P12267725668881702781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225013 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225014.P12267725668881702781

noncomputable section

/-- A225014: Number of 7Xn 0..1 arrays with rows unimodal and columns nondecreasing.

Offset 1, canonical program `A225014.P12267725668881702781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225014 (n : ℕ) : ℤ :=
  A225014.P12267725668881702781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225043.P4505780884932607696

`C(A003056(n), A002262(n))%A002024(n+1)`
-/

namespace A225043.P4505780884932607696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A003056 n).toNat (A002262 n).toNat : ℤ) (A002024 (n + 1))

end

end A225043.P4505780884932607696

noncomputable section

/-- A225043: Pascal's triangle with row n reduced modulo n+1.

Offset 0, canonical program `A225043.P4505780884932607696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225043 (n : ℕ) : ℤ :=
  A225043.P4505780884932607696.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225050.P13836911429540854211

`A005809(n)+A000846(n)`
-/

namespace A225050.P13836911429540854211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n + A000846 n

end

end A225050.P13836911429540854211

noncomputable section

/-- A225050: Number of shortest paths from one vertex of a cube (side = n units) to farthest vertex, along the grid on 3 surfaces meeting at another vertex.

Offset 0, canonical program `A225050.P13836911429540854211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A225050 (n : ℕ) : ℤ :=
  A225050.P13836911429540854211.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A225050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225222.P12882070343994640497

`p?[lt[A023416(n), A145037(n)]]`
-/

namespace A225222.P12882070343994640497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A225222.P12882070343994640497

noncomputable section

/-- A225222: Primes with more than twice as many 1's as 0's in binary.

Offset 1, canonical program `A225222.P12882070343994640497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A225222 (n : ℕ) : ℤ :=
  (A225222.P12882070343994640497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A225222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225541.P14151932172831400690

`∑[char[A058749(n+1)]]`
-/

namespace A225541.P14151932172831400690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058749 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225541.P14151932172831400690

noncomputable section

/-- A225541: Floor(W(n)) where W is the Lambert W function.

Offset 0, canonical program `A225541.P14151932172831400690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225541 (n : ℕ) : ℤ :=
  (A225541.P14151932172831400690.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225816.P10294105972052185568

`A025581(n)!^A002262(n)`
-/

namespace A225816.P10294105972052185568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A225816.P10294105972052185568

noncomputable section

/-- A225816: Square array A(n,k) = (k!)^n, n>=0, k>=0, read by antidiagonals.

Offset 0, canonical program `A225816.P10294105972052185568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A225816 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A225816.P10294105972052185568.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A225816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225954.P13746598503051587470

`Δ[A158525(n+11)]%15`
-/

namespace A225954.P13746598503051587470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158525 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 15

end

end A225954.P13746598503051587470

noncomputable section

/-- A225954: A primitive sequence of order n = 2 generated by f(x) = x^2 - (4*x + 13) over Z/(3*5) (see below).

Offset 0, canonical program `A225954.P13746598503051587470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A225954 (n : ℕ) : ℤ :=
  A225954.P13746598503051587470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A225954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226008.P11268386641324381222

`A225975(n)²`
-/

namespace A226008.P11268386641324381222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 n ^ 2

end

end A226008.P11268386641324381222

noncomputable section

/-- A226008: a(0) = 0; for n>0, a(n) = denominator(1/4 - 4/n^2).

Offset 0, canonical program `A226008.P11268386641324381222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226008 (n : ℕ) : ℤ :=
  A226008.P11268386641324381222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226060.P13014276364689543860

`A213709(n+1)-A213709(n)`
-/

namespace A226060.P13014276364689543860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 (n + 1) - A213709 n

end

end A226060.P13014276364689543860

noncomputable section

/-- A226060: First differences of A213709.

Offset 0, canonical program `A226060.P13014276364689543860`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226060 (n : ℕ) : ℤ :=
  A226060.P13014276364689543860.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226060.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226567.P14814399466170142573

`eq[A003982(n), A101264(n)]`
-/

namespace A226567.P14814399466170142573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226567.P14814399466170142573

noncomputable section

/-- A226567: Numbers k such that 2*k+1 is neither a square nor a prime.

Offset 1, canonical program `A226567.P14814399466170142573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226567 (n : ℕ) : ℤ :=
  (A226567.P14814399466170142573.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226721.P17856605481448909484

`1+A066344(n+1)`
-/

namespace A226721.P17856605481448909484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A066344 (n + 1)

end

end A226721.P17856605481448909484

noncomputable section

/-- A226721: Position of 2^n in the joint ranking of all the numbers 2^j for j>=0 and 5^k for k>=1; complement of A123384.

Offset 1, canonical program `A226721.P17856605481448909484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226721 (n : ℕ) : ℤ :=
  A226721.P17856605481448909484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226722.P14657880171830940678

`A156301(n)+A066344(A028310(n))`
-/

namespace A226722.P14657880171830940678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n + A066344 (A028310 n).toNat

end

end A226722.P14657880171830940678

noncomputable section

/-- A226722: Positions of the numbers 2^n, for n >=0, in the joint ranking of all the numbers 2^h, 3^k, 5^k, for h >= 0, k >= 1.

Offset 1, canonical program `A226722.P14657880171830940678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A226722 (n : ℕ) : ℤ :=
  A226722.P14657880171830940678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A226722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226895.P9533121574335622783

`Δ[A226894(n+1)]`
-/

namespace A226895.P9533121574335622783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226895.P9533121574335622783

noncomputable section

/-- A226895: Difference sequence for A226894.

Offset 1, canonical program `A226895.P9533121574335622783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226895 (n : ℕ) : ℤ :=
  A226895.P9533121574335622783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226996.P1446342238526676326

`A226994(n)+1-A226995(n)`
-/

namespace A226996.P1446342238526676326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 n + (1 - A226995 n)

end

end A226996.P1446342238526676326

noncomputable section

/-- A226996: Number of lattice paths from (0,0) to (n,n) consisting of steps U=(1,1), H=(1,0) and S=(0,1) such that the first step leaving and the last step joining the diagonal (if any) is an H step.

Offset 0, canonical program `A226996.P1446342238526676326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A226996 (n : ℕ) : ℤ :=
  A226996.P1446342238526676326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A226996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227252.P15475645311993057881

`record[A059174(n)+1-2*n]`
-/

namespace A227252.P15475645311993057881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 n + (1 - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227252.P15475645311993057881

noncomputable section

/-- A227252: Number of n X 2 binary arrays indicating whether each 2 X 2 subblock of a larger binary array has lexicographically nondecreasing rows and columns, for some larger (n+1) X 3 binary array with rows and columns of the latter in lexicographically nondecreasing order.

Offset 1, canonical program `A227252.P15475645311993057881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227252 (n : ℕ) : ℤ :=
  A227252.P15475645311993057881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227471.P1173354223507232729

`1+A023512(n+1)`
-/

namespace A227471.P1173354223507232729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A023512 (n + 1)

end

end A227471.P1173354223507232729

noncomputable section

/-- A227471: Position of first 0 in the binary representation of prime(n), starting the count of positions at 1 for the least significant bit.

Offset 1, canonical program `A227471.P1173354223507232729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227471 (n : ℕ) : ℤ :=
  A227471.P1173354223507232729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227726.P7304249674244244616

`A025174(n)+A005809(n)`
-/

namespace A227726.P7304249674244244616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 n + A005809 n

end

end A227726.P7304249674244244616

noncomputable section

/-- A227726: a(n) = [x^n] (1 + x)/(1 - x)^(2*n+1).

Offset 0, canonical program `A227726.P7304249674244244616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A227726 (n : ℕ) : ℤ :=
  A227726.P7304249674244244616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A227726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227737.P16611216507253860611

`a(n-A005811(a(n-1)))+1` with `a(0)=1`
-/

namespace A227737.P16611216507253860611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A005811 (a (n - 1))).toNat + 1

end

end A227737.P16611216507253860611

noncomputable section

/-- A227737: n occurs as many times as there are runs in binary representation of n.

Offset 1, canonical program `A227737.P16611216507253860611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227737 (n : ℕ) : ℤ :=
  (A227737.P16611216507253860611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227872.P9091759505244018972

`∑{d}[n+1, A010060(#)]`
-/

namespace A227872.P9091759505244018972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010060 d

end

end A227872.P9091759505244018972

noncomputable section

/-- A227872: Number of odious divisors (A000069) of n.

Offset 1, canonical program `A227872.P9091759505244018972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227872 (n : ℕ) : ℤ :=
  A227872.P9091759505244018972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227873.P5669908514505112701

`∑{d}[n+1, #*A010060(#)]`
-/

namespace A227873.P5669908514505112701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010060 d

end

end A227873.P5669908514505112701

noncomputable section

/-- A227873: Sum of odious divisors of n. See A000069 for odious numbers.

Offset 1, canonical program `A227873.P5669908514505112701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227873 (n : ℕ) : ℤ :=
  A227873.P5669908514505112701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227982.P6866240745655209750

`lt[A039653(n), A053246(n+1)]+1`
-/

namespace A227982.P6866240745655209750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A227982.P6866240745655209750

noncomputable section

/-- A227982: Numbers n such that sigma(n+1) - sigma(n-1) > sigma(n); where sigma(n) = A000203(n) = sum of the divisors of n.

Offset 1, canonical program `A227982.P6866240745655209750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A227982 (n : ℕ) : ℤ :=
  (A227982.P6866240745655209750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A227982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227991.P607222595589635829

`3^A227990(n+1)`
-/

namespace A227991.P607222595589635829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A227990 (n + 1) : ℤ)

end

end A227991.P607222595589635829

noncomputable section

/-- A227991: Highest power of 3 dividing prime(n)+1.

Offset 1, canonical program `A227991.P607222595589635829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227990, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227991.P607222595589635829.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227990, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228179.P8496173092229865919

`A128227(eq[1, A048152(n+1)])`
-/

namespace A228179.P8496173092229865919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228179.P8496173092229865919

noncomputable section

/-- A228179: Irregular table where the n-th row consists of the square roots of 1 in Z_n.

Offset 2, canonical program `A228179.P8496173092229865919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A228179 (n : ℕ) : ℤ :=
  A228179.P8496173092229865919.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. -/
def A228179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228180.P57070728468080363

`A131428(n)-abs(∑[A115140(n)])`
-/

namespace A228180.P57070728468080363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A228180.P57070728468080363

noncomputable section

/-- A228180: The number of single edges on the boundary of ordered trees with n edges.

Offset 0, canonical program `A228180.P57070728468080363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A228180 (n : ℕ) : ℤ :=
  A228180.P57070728468080363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A228180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228294.P8313310365846261537

`A060885(n)-1`
-/

namespace A228294.P8313310365846261537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060885 n - 1

end

end A228294.P8313310365846261537

noncomputable section

/-- A228294: a(n) = Sum_{k=1..10} n^k.

Offset 0, canonical program `A228294.P8313310365846261537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228294 (n : ℕ) : ℤ :=
  A228294.P8313310365846261537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228343.P4320931973267472568

`Δ[A143955(n)+2*a(n-1)]` with `a(0)=1`
-/

namespace A228343.P4320931973267472568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A143955 n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228343.P4320931973267472568

noncomputable section

/-- A228343: The number of ordered trees with bicolored single edges on the boundary.

Offset 0, canonical program `A228343.P4320931973267472568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228343 (n : ℕ) : ℤ :=
  A228343.P4320931973267472568.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228404.P6042679917404451421

`A026012(n)+A000108(n)%A106640(n)`
-/

namespace A228404.P6042679917404451421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + Int.tmod (A000108 n) (A106640 n)

end

end A228404.P6042679917404451421

noncomputable section

/-- A228404: The number of complete binary trees with bicolored twigs. A twig is a vertex with one child on the boundary and the other child having no descendants.

Offset 0, canonical program `A228404.P6042679917404451421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228404 (n : ℕ) : ℤ :=
  A228404.P6042679917404451421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A228404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228524.P1716319160841031381

`A045891(A025581(n))`
-/

namespace A228524.P1716319160841031381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (A025581 n).toNat

end

end A228524.P1716319160841031381

noncomputable section

/-- A228524: Triangle read by rows: T(n,k) = total number of occurrences of parts k in the n-th section of the set of compositions (ordered partitions) of any integer >= n.

Offset 1, canonical program `A228524.P1716319160841031381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228524 (n : ℕ) : ℤ :=
  A228524.P1716319160841031381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228628.P1311672402623493656

`A160668(n+1)-1`
-/

namespace A228628.P1311672402623493656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1) - 1

end

end A228628.P1311672402623493656

noncomputable section

/-- A228628: 9's complement of prime(n).

Offset 1, canonical program `A228628.P1311672402623493656`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160668, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228628 (n : ℕ) : ℤ :=
  A228628.P1311672402623493656.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160668, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228628.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228669.P4523925343726764388

`A001281(A131694(n+2))`
-/

namespace A228669.P4523925343726764388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A131694 (n + 2)).toNat

end

end A228669.P4523925343726764388

noncomputable section

/-- A228669: Numbers k for which sum{prime(2*k) - prime(2*k-1)} is prime.

Offset 1, canonical program `A228669.P4523925343726764388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228669 (n : ℕ) : ℤ :=
  A228669.P4523925343726764388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229058.P11987760245482579737

`p?[eq[25, A004159(n)]]`
-/

namespace A229058.P11987760245482579737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A229058.P11987760245482579737

noncomputable section

/-- A229058: Primes p where the digital sum of p^2 is equal to 25.

Offset 1, canonical program `A229058.P11987760245482579737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A229058 (n : ℕ) : ℤ :=
  (A229058.P11987760245482579737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A229058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229067.P4043255727745089421

`A000040(n+1)+A145445(n+1)`
-/

namespace A229067.P4043255727745089421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A145445 (n + 1)

end

end A229067.P4043255727745089421

noncomputable section

/-- A229067: Sum of n-th prime and next perfect square.

Offset 1, canonical program `A229067.P4043255727745089421`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A145445, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A229067 (n : ℕ) : ℤ :=
  A229067.P4043255727745089421.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A145445, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A229067.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229118.P1401755231789062438

`A053188(∑[n+1])`
-/

namespace A229118.P1401755231789062438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229118.P1401755231789062438

noncomputable section

/-- A229118: Distance from the n-th triangular number to the nearest square.

Offset 1, canonical program `A229118.P1401755231789062438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A229118 (n : ℕ) : ℤ :=
  A229118.P1401755231789062438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A229118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229497.P2706809178029199216

`A000040(n+1)*A145445(n+1)`
-/

namespace A229497.P2706809178029199216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A145445 (n + 1)

end

end A229497.P2706809178029199216

noncomputable section

/-- A229497: Product between n-th prime and next perfect square.

Offset 1, canonical program `A229497.P2706809178029199216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A145445, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A229497 (n : ℕ) : ℤ :=
  A229497.P2706809178029199216.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A145445, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A229497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229527.P13631613153917723795

`A062028(a(n-1))+1` with `a(0)=1`
-/

namespace A229527.P13631613153917723795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062028 (a (n - 1)).toNat + 1

end

end A229527.P13631613153917723795

noncomputable section

/-- A229527: Start with 1, skip (sum of digits of n) numbers, accept next number.

Offset 1, canonical program `A229527.P13631613153917723795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A229527 (n : ℕ) : ℤ :=
  A229527.P13631613153917723795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A229527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229745.P14115202747241148810

`n-A011371(A092391(n))`
-/

namespace A229745.P14115202747241148810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 (A092391 n).toNat

end

end A229745.P14115202747241148810

noncomputable section

/-- A229745: a(n) = wt(n+wt(n))-wt(n), where wt(n) is the binary weight of n, A000120(n).

Offset 0, canonical program `A229745.P14115202747241148810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A229745 (n : ℕ) : ℤ :=
  A229745.P14115202747241148810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A229745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230227.P15280561907443236401

`p?[2*A153134(n+1)+1]`
-/

namespace A230227.P15280561907443236401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153134 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230227.P15280561907443236401

noncomputable section

/-- A230227: Primes p with 3*p - 10 also prime.

Offset 1, canonical program `A230227.P15280561907443236401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A230227 (n : ℕ) : ℤ :=
  A230227.P15280561907443236401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A230227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231482.P13578622432860794418

`(n+1)*∑[A086871(n)]`
-/

namespace A231482.P13578622432860794418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231482.P13578622432860794418

noncomputable section

/-- A231482: The number of nonlinear normal modes for a fully resonant Hamiltonian system with n degrees of freedom.

Offset 1, canonical program `A231482.P13578622432860794418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A231482 (n : ℕ) : ℤ :=
  A231482.P13578622432860794418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A231482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232533.P1925257348327096795

`∑[A057661(n+1)]`
-/

namespace A232533.P1925257348327096795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232533.P1925257348327096795

noncomputable section

/-- A232533: a(n) = Sum_{i=1...n} Sum_{j=1..i} lcm(i,j)/i.

Offset 1, canonical program `A232533.P1925257348327096795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232533 (n : ℕ) : ℤ :=
  A232533.P1925257348327096795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232625.P6713494132729002429

`A225975(A026741(n+1))`
-/

namespace A232625.P6713494132729002429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A026741 (n + 1)).toNat

end

end A232625.P6713494132729002429

noncomputable section

/-- A232625: Denominators of abs(n-8)/(2*n), n >= 1.

Offset 1, canonical program `A232625.P6713494132729002429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232625 (n : ℕ) : ℤ :=
  A232625.P6713494132729002429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232637.P12071579404626627302

`A001969(A000069(n+1)-n)+A000069(n+1)`
-/

namespace A232637.P12071579404626627302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (A000069 (n + 1) - (n : ℤ)).toNat + A000069 (n + 1)

end

end A232637.P12071579404626627302

noncomputable section

/-- A232637: Odious numbers of order 2: a(n) = A000069(A000069(n)).

Offset 1, canonical program `A232637.P12071579404626627302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232637 (n : ℕ) : ℤ :=
  A232637.P12071579404626627302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233543.P15139316813997982793

`A002262(n)!`
-/

namespace A233543.P15139316813997982793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002262 n).toNat

end

end A233543.P15139316813997982793

noncomputable section

/-- A233543: Triangle read by rows: T(n,k) = k!.

Offset 0, canonical program `A233543.P15139316813997982793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A233543 (n : ℕ) : ℤ :=
  (A233543.P15139316813997982793.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A233543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234218.P2067863749200831996

`p?[n*A000035(A192085(n))]`
-/

namespace A234218.P2067863749200831996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 (A192085 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234218.P2067863749200831996

noncomputable section

/-- A234218: Primes whose cubes are odious.

Offset 1, canonical program `A234218.P2067863749200831996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A234218 (n : ℕ) : ℤ :=
  A234218.P2067863749200831996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A234218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234973.P16340142227347976092

`p?[A034961(n+1)+6]`
-/

namespace A234973.P16340142227347976092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234973.P16340142227347976092

noncomputable section

/-- A234973: Primes that are 6 plus the sum of three consecutive primes.

Offset 1, canonical program `A234973.P16340142227347976092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A234973 (n : ℕ) : ℤ :=
  A234973.P16340142227347976092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A234973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235204.P8837262474928507807

`round(A087057(n+1)²/2)`
-/

namespace A235204.P8837262474928507807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087057 (n + 1) ^ 2 : ℚ) / 2)

end

end A235204.P8837262474928507807

noncomputable section

/-- A235204: Number of integer lattice points inside the square ABCD with side length n>0 with A(0|0), B(n*sqrt(2)/2| n*sqrt(2)/2), C(0| n*sqrt(2)) and D(-n*sqrt(2)/2| n*sqrt(2)/2).

Offset 1, canonical program `A235204.P8837262474928507807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A235204 (n : ℕ) : ℤ :=
  A235204.P8837262474928507807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A235204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235227.P8259672704330077809

`∩[A028838(n+1), A017245(n)]`
-/

namespace A235227.P8259672704330077809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P8259672704330077809

noncomputable section

/-- A235227: Numbers whose sum of digits is 16.

Offset 1, canonical program `A235227.P8259672704330077809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3675 terms. -/
def A235227 (n : ℕ) : ℤ :=
  (A235227.P8259672704330077809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3675 terms. -/
def A235227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235879.P1504288234909662281

`A183626(n+1)+A305155(n)+1`
-/

namespace A235879.P1504288234909662281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183626 (n + 1) + (A305155 n + 1)

end

end A235879.P1504288234909662281

noncomputable section

/-- A235879: Number of (n+1) X (3+1) 0..2 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

Offset 1, canonical program `A235879.P1504288234909662281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A235879 (n : ℕ) : ℤ :=
  A235879.P1504288234909662281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A235879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236186.P5484807995005540986

`A049296(n+2)`
-/

namespace A236186.P5484807995005540986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049296 (n + 2)

end

end A236186.P5484807995005540986

noncomputable section

/-- A236186: Differences between terms of compacting Eratosthenes sieve for prime(5) = 11.

Offset 1, canonical program `A236186.P5484807995005540986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236186 (n : ℕ) : ℤ :=
  A236186.P5484807995005540986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236959.P8210719319419253962

`gcd(A006093(n+1), A127919(n+1))`
-/

namespace A236959.P8210719319419253962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006093 (n + 1)) (A127919 (n + 1))

end

end A236959.P8210719319419253962

noncomputable section

/-- A236959: Number of nonzero cubic residues modulo the n-th prime.

Offset 1, canonical program `A236959.P8210719319419253962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236959 (n : ℕ) : ℤ :=
  (A236959.P8210719319419253962.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237587.P9425086099865115615

`A099375(n)²`
-/

namespace A237587.P9425086099865115615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n ^ 2

end

end A237587.P9425086099865115615

noncomputable section

/-- A237587: Triangle read by rows in which row n lists the first n odd squares in decreasing order.

Offset 1, canonical program `A237587.P9425086099865115615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237587 (n : ℕ) : ℤ :=
  A237587.P9425086099865115615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237622.P7177384520578188316

`n*A276666(n)+1`
-/

namespace A237622.P7177384520578188316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276666 n + 1

end

end A237622.P7177384520578188316

noncomputable section

/-- A237622: Interpolation polynomial through n points (0,1), (1,1), ..., (n-2,1) and (n-1,n) evaluated at 2n, a(0)=1.

Offset 0, canonical program `A237622.P7177384520578188316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A237622 (n : ℕ) : ℤ :=
  A237622.P7177384520578188316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A237622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238015.P2345716481472357313

`ceil(A001316(n)/8)`
-/

namespace A238015.P2345716481472357313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001316 n : ℚ) / 8⌉

end

end A238015.P2345716481472357313

noncomputable section

/-- A238015: Denominator of (2*n+1)!*8*Bernoulli(2*n,1/2).

Offset 0, canonical program `A238015.P2345716481472357313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. -/
def A238015 (n : ℕ) : ℤ :=
  A238015.P2345716481472357313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. -/
def A238015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238533.P17719701383286130883

`(n+1)*A189393(n+1)`
-/

namespace A238533.P17719701383286130883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189393 (n + 1)

end

end A238533.P17719701383286130883

noncomputable section

/-- A238533: Number of solutions to gcd(x^2 + y^2 + z^2 + t^2 + h^2, n) = 1 with x,y,z,t,h in [0,n-1].

Offset 1, canonical program `A238533.P17719701383286130883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238533 (n : ℕ) : ℤ :=
  A238533.P17719701383286130883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239636.P9315992942707104834

`2*A014689(n+1)-1`
-/

namespace A239636.P9315992942707104834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014689 (n + 1) - 1

end

end A239636.P9315992942707104834

noncomputable section

/-- A239636: Distance between the two occurrences of n-th prime in A082500.

Offset 1, canonical program `A239636.P9315992942707104834`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239636 (n : ℕ) : ℤ :=
  A239636.P9315992942707104834.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239636.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239878.P11535011503669925246

`eq[A004159(n+1)-A004159(n), 1]`
-/

namespace A239878.P11535011503669925246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n + 1) - A004159 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A239878.P11535011503669925246

noncomputable section

/-- A239878: Numbers k with digit_sum(k*k) + 1 = digit_sum((k+1)*(k+1)).

Offset 1, canonical program `A239878.P11535011503669925246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. -/
def A239878 (n : ℕ) : ℤ :=
  (A239878.P11535011503669925246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. -/
def A239878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239937.P16644113360716350106

`lt[Δ[A004159(n)], 0]`
-/

namespace A239937.P16644113360716350106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A239937.P16644113360716350106

noncomputable section

/-- A239937: Numbers k such that digsum(k^2) > digsum((k+1)^2).

Offset 1, canonical program `A239937.P16644113360716350106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4651 terms. -/
def A239937 (n : ℕ) : ℤ :=
  (A239937.P16644113360716350106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4651 terms. -/
def A239937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240117.P7257571435940234037

`round((A138986(n+5)/3+1)/2)`
-/

namespace A240117.P7257571435940234037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A138986 (n + 5) : ℚ) / 3 + 1) / 2)

end

end A240117.P7257571435940234037

noncomputable section

/-- A240117: Schoenheim lower bound L(n,6,2).

Offset 6, canonical program `A240117.P7257571435940234037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A240117 (n : ℕ) : ℤ :=
  A240117.P7257571435940234037.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A240117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240752.P13928168084248478848

`Δ[A004159(n)]`
-/

namespace A240752.P13928168084248478848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240752.P13928168084248478848

noncomputable section

/-- A240752: First differences of digit sums of squares, cf. A004159.

Offset 1, canonical program `A240752.P13928168084248478848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240752 (n : ℕ) : ℤ :=
  A240752.P13928168084248478848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240879.P14005581407535111882

`A114121(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A240879.P14005581407535111882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114121 n + 4 * a (n - 1)

end

end A240879.P14005581407535111882

noncomputable section

/-- A240879: Self-convolution of Sum(binomial(2*n, i), i=0..n).

Offset 0, canonical program `A240879.P14005581407535111882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A240879 (n : ℕ) : ℤ :=
  A240879.P14005581407535111882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A240879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241524.P1056954697449867720

`A002697(n)+A002457(n)`
-/

namespace A241524.P1056954697449867720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + A002457 n

end

end A241524.P1056954697449867720

noncomputable section

/-- A241524: a(n) = 4^n*(n/4 + binomial(n+1/2, 1/2)).

Offset 0, canonical program `A241524.P1056954697449867720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A241524 (n : ℕ) : ℤ :=
  A241524.P1056954697449867720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A241524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241621.P17795635083322010053

`A108670(n+1)+A107891(n)`
-/

namespace A241621.P17795635083322010053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108670 (n + 1) + A107891 n

end

end A241621.P17795635083322010053

noncomputable section

/-- A241621: Number of length 6+2 0..n arrays with no consecutive three elements summing to more than n.

Offset 1, canonical program `A241621.P17795635083322010053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A241621 (n : ℕ) : ℤ :=
  A241621.P17795635083322010053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A241621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241891.P9479106235604816941

`A241682(n)+A176742(n)²`
-/

namespace A241891.P9479106235604816941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241682 n + A176742 n ^ 2

end

end A241891.P9479106235604816941

noncomputable section

/-- A241891: Total number of unit squares appearing in the Thue-Morse sequence of logical matrices (1, 0 version) after n stages.

Offset 0, canonical program `A241891.P9479106235604816941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241891 (n : ℕ) : ℤ :=
  A241891.P9479106235604816941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242388.P9019270962361867903

`A000079(A002262(n))*A002024(n+1)+1`
-/

namespace A242388.P9019270962361867903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A002024 (n + 1) + 1

end

end A242388.P9019270962361867903

noncomputable section

/-- A242388: Triangle read by rows: T(n,k) = n*2^(k-1) + 1, 1 <= k <= n.

Offset 1, canonical program `A242388.P9019270962361867903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242388 (n : ℕ) : ℤ :=
  A242388.P9019270962361867903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242408.P5047545838099332547

`comp[A242407(n+1)]`
-/

namespace A242408.P5047545838099332547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242408.P5047545838099332547

noncomputable section

/-- A242408: Numbers such that in ternary representation at least one pair of adjacent digits has a sum greater than 2.

Offset 1, canonical program `A242408.P5047545838099332547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242408 (n : ℕ) : ℤ :=
  (A242408.P5047545838099332547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242482.P4940555900676613198

`eq[1, A242481(n+1)]+1`
-/

namespace A242482.P4940555900676613198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242482.P4940555900676613198

noncomputable section

/-- A242482: Numbers n such that A242481(n) = ((n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n) / n = 1.

Offset 1, canonical program `A242482.P4940555900676613198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. -/
def A242482 (n : ℕ) : ℤ :=
  (A242482.P4940555900676613198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. -/
def A242482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242586.P10140578431717822349

`A026378(n)+a(n-1)` with `a(0)=1`
-/

namespace A242586.P10140578431717822349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026378 n + a (n - 1)

end

end A242586.P10140578431717822349

noncomputable section

/-- A242586: Expansion of 1/(2*sqrt(1-x))*(1/sqrt(1-x)+1/(sqrt(1-5*x))).

Offset 0, canonical program `A242586.P10140578431717822349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A242586 (n : ℕ) : ℤ :=
  A242586.P10140578431717822349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A242586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242962.P14535489765730197107

`∑{d}[n+1, #]%(A080572(n)+1)`
-/

namespace A242962.P14535489765730197107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A080572 n + 1)

end

end A242962.P14535489765730197107

noncomputable section

/-- A242962: a(1) = a(2) = 0; for n >= 3: a(n) = (n*(n+1)/2) mod antisigma(n) = A000217(n) mod A024816(n).

Offset 1, canonical program `A242962.P14535489765730197107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242962 (n : ℕ) : ℤ :=
  A242962.P14535489765730197107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243619.P16873152795867746307

`p?[A243615(n+1)]`
-/

namespace A243619.P16873152795867746307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243619.P16873152795867746307

noncomputable section

/-- A243619: Prime numbers n whose digital sum equals the number of bits in its binary expansion.

Offset 1, canonical program `A243619.P16873152795867746307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A243619 (n : ℕ) : ℤ :=
  A243619.P16873152795867746307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A243619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243769.P6858132266747449837

`A030078(n+1)%A106587(n+1)`
-/

namespace A243769.P6858132266747449837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030078 (n + 1)) (A106587 (n + 1))

end

end A243769.P6858132266747449837

noncomputable section

/-- A243769: a(n) = prime(n)^3 mod (n^2 + prime(n)^2).

Offset 1, canonical program `A243769.P6858132266747449837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243769 (n : ℕ) : ℤ :=
  A243769.P6858132266747449837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244041.P9196953694922478811

`∑{digits}[A024631(n), #]`
-/

namespace A244041.P9196953694922478811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A244041.P9196953694922478811

noncomputable section

/-- A244041: Sum of digits of n written in fractional base 4/3.

Offset 0, canonical program `A244041.P9196953694922478811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244041 (n : ℕ) : ℤ :=
  (A244041.P9196953694922478811.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244215.P17054345626323859306

`A244160(n)-A244160(n-A081290(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244215.P17054345626323859306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 n - A244160 ((n : ℤ) - A081290 n).toNat

end

end A244215.P17054345626323859306

noncomputable section

/-- A244215: a(0)=0, and for n>=1, if n is the k-th Catalan number (A000108(k)), a(n) = k, otherwise the difference of the indices of the two largest Catalan numbers whose sum is less than or equal to n: a(n) = A244160(n) - A244160(n-A081290(n)).

Offset 0, canonical program `A244215.P17054345626323859306`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081290, A244160, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244215 (n : ℕ) : ℤ :=
  A244215.P17054345626323859306.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081290, A244160, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A244215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244222.P5228230116540986536

`record[n*(1-A244221(n))]`
-/

namespace A244222.P5228230116540986536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A244221 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244222.P5228230116540986536

noncomputable section

/-- A244222: Numbers k which have even representation in Greedy Catalan Base, i.e., where A014418(k) ends with zero.

Offset 0, canonical program `A244222.P5228230116540986536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5763 terms. -/
def A244222 (n : ℕ) : ℤ :=
  A244222.P5228230116540986536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5763 terms. -/
def A244222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244224.P3371671429758605766

`∑[1-A244221(n)]`
-/

namespace A244224.P3371671429758605766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A244221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244224.P3371671429758605766

noncomputable section

/-- A244224: a(n) = Number of nonnegative integers 0 <= k <= n, which have an even representation in Greedy Catalan Base (A014418).

Offset 0, canonical program `A244224.P3371671429758605766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244224 (n : ℕ) : ℤ :=
  A244224.P3371671429758605766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244612.P11826543552525463929

`A106665(n)*A244611(n+1)`
-/

namespace A244612.P11826543552525463929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106665 n * A244611 (n + 1)

end

end A244612.P11826543552525463929

noncomputable section

/-- A244612: a(n) = 1 if n is a square, -1 if n is six times a square, 0 if n < 1.

Offset 1, canonical program `A244612.P11826543552525463929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244612 (n : ℕ) : ℤ :=
  A244612.P11826543552525463929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244796.P13926753291426621653

`A008328(n+1)-1`
-/

namespace A244796.P13926753291426621653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008328 (n + 1) - 1

end

end A244796.P13926753291426621653

noncomputable section

/-- A244796: Number of moduli m such that (prime(n) mod m) = 1.

Offset 1, canonical program `A244796.P13926753291426621653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244796 (n : ℕ) : ℤ :=
  A244796.P13926753291426621653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244887.P16582301542853436473

`A002457(n+2)-A002694(n+4)`
-/

namespace A244887.P16582301542853436473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 2) - A002694 (n + 4)

end

end A244887.P16582301542853436473

noncomputable section

/-- A244887: Third column of triangle in A234950.

Offset 2, canonical program `A244887.P16582301542853436473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A244887 (n : ℕ) : ℤ :=
  A244887.P16582301542853436473.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A244887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244941.P15006314446011111513

`∑[A049472(A026251(n+1))+n+2]+1`
-/

namespace A244941.P15006314446011111513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A026251 (n + 1)).toNat + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A244941.P15006314446011111513

noncomputable section

/-- A244941: Number of length 2 0..n arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

Offset 1, canonical program `A244941.P15006314446011111513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A244941 (n : ℕ) : ℤ :=
  A244941.P15006314446011111513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A244941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245574.P5854510550737387433

`lcm(ceil(n/98), A057536(n))`
-/

namespace A245574.P5854510550737387433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(n : ℚ) / 98⌉ (A057536 n)

end

end A245574.P5854510550737387433

noncomputable section

/-- A245574: Minimal coin changing sequence for denominations 1, 2, 5, 10, 20 and 50 cents.

Offset 0, canonical program `A245574.P5854510550737387433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245574 (n : ℕ) : ℤ :=
  (A245574.P5854510550737387433.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246130.P5225269862296720290

`(2*(A099908(n+1)+n))%(n+1)`
-/

namespace A246130.P5225269862296720290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A099908 (n + 1) + (n : ℤ))) (n + 1 : ℤ)

end

end A246130.P5225269862296720290

noncomputable section

/-- A246130: Binomial(2n,n)-2 mod n.

Offset 1, canonical program `A246130.P5225269862296720290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246130 (n : ℕ) : ℤ :=
  A246130.P5225269862296720290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246134.P13188671410029875057

`(∑[A051924(n+1)]-1)%((n+1)^4)`
-/

namespace A246134.P13188671410029875057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 1) ((n + 1) ^ 4 : ℤ)

end

end A246134.P13188671410029875057

noncomputable section

/-- A246134: Binomial(2n, n) - 2 mod n^4.

Offset 1, canonical program `A246134.P13188671410029875057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A246134 (n : ℕ) : ℤ :=
  A246134.P13188671410029875057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A246134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246414.P8392572628755399728

`∩[A246410(n+1), A246413(n+1)-1]`
-/

namespace A246414.P8392572628755399728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246414.P8392572628755399728

noncomputable section

/-- A246414: Positive integers k satisfying csc(k) < csc(k+1) > csc(k+2).

Offset 1, canonical program `A246414.P8392572628755399728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A246414 (n : ℕ) : ℤ :=
  (A246414.P8392572628755399728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A246414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246432.P7367098291756528111

`A120588(n)*A260196(n)`
-/

namespace A246432.P7367098291756528111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A260196 n

end

end A246432.P7367098291756528111

noncomputable section

/-- A246432: Convolution inverse of A001700.

Offset 0, canonical program `A246432.P7367098291756528111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A246432 (n : ℕ) : ℤ :=
  A246432.P7367098291756528111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A246432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246437.P8274867833887097828

`A257520(n)-n%2`
-/

namespace A246437.P8274867833887097828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n - ((n % 2 : ℕ) : ℤ)

end

end A246437.P8274867833887097828

noncomputable section

/-- A246437: Expansion of (1/2)*(1/(x+1)+1/(sqrt(-3*x^2-2*x+1))).

Offset 0, canonical program `A246437.P8274867833887097828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A246437 (n : ℕ) : ℤ :=
  A246437.P8274867833887097828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A246437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246575.P17700213826678581396

`∑[A078616(abs(1-n))]`
-/

namespace A246575.P17700213826678581396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246575.P17700213826678581396

noncomputable section

/-- A246575: Expansion of (Product_{r>=1} (1-x^r))*x^(k^2) / Product_{i=1..k} (1-x^i)^2 with k=1.

Offset 0, canonical program `A246575.P17700213826678581396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246575 (n : ℕ) : ℤ :=
  A246575.P17700213826678581396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246932.P11770710802471160899

`A031336(5*(n+1))`
-/

namespace A246932.P11770710802471160899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (5 * (n + 1))

end

end A246932.P11770710802471160899

noncomputable section

/-- A246932: a(n) = prime(15*n).

Offset 1, canonical program `A246932.P11770710802471160899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A246932 (n : ℕ) : ℤ :=
  A246932.P11770710802471160899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A246932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247517.P9623815378169510703

`∏{e}[n+1, A101098(#+1)]`
-/

namespace A247517.P9623815378169510703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A101098 (Nat.factorization (f1 n) p + 1)

end

end A247517.P9623815378169510703

noncomputable section

/-- A247517: Card{(x,y,z,t,u): 1<=x,y,z,t,u<=n, gcd(x,y,z,t,u)=1, lcm(x,y,z,t,u)=n}.

Offset 1, canonical program `A247517.P9623815378169510703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247517 (n : ℕ) : ℤ :=
  A247517.P9623815378169510703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247681.P16071207118859784125

`A161705(A153400(n+1))`
-/

namespace A247681.P16071207118859784125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (A153400 (n + 1)).toNat

end

end A247681.P16071207118859784125

noncomputable section

/-- A247681: Odd nonprimes congruent to 1 modulo 9.

Offset 1, canonical program `A247681.P16071207118859784125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7283 terms. -/
def A247681 (n : ℕ) : ℤ :=
  A247681.P16071207118859784125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7283 terms. -/
def A247681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248170.P13308943850553376554

`sqrt(A246934(n+1))`
-/

namespace A248170.P13308943850553376554
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246934 (n + 1) : ℝ)

end

end A248170.P13308943850553376554

noncomputable section

/-- A248170: Nonnegative integer whose square is the closest square to prime(n).

Offset 1, canonical program `A248170.P13308943850553376554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248170 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A248170.P13308943850553376554.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248183.P9609418635540790916

`floor(sqrt(A194920(n+1)+A000982(n)))`
-/

namespace A248183.P9609418635540790916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A194920 (n + 1) + A000982 n)

end

end A248183.P9609418635540790916

noncomputable section

/-- A248183: Least k such that 1/4 - Sum_{h = 1..k} 1/(h*(h+1)*(h+2)) < 1/n^2.

Offset 1, canonical program `A248183.P9609418635540790916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A248183 (n : ℕ) : ℤ :=
  A248183.P9609418635540790916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A248183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248367.P14823438803111161390

`∩[A156104(n+1)-2, A156104(n+1)]`
-/

namespace A248367.P14823438803111161390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248367.P14823438803111161390

noncomputable section

/-- A248367: Initial members of prime quadruples (n, n+2, n+36, n+38).

Offset 1, canonical program `A248367.P14823438803111161390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A248367 (n : ℕ) : ℤ :=
  (A248367.P14823438803111161390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A248367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248422.P13301175043225490051

`A127421(2*n+3)-1`
-/

namespace A248422.P13301175043225490051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (2 * n + 3) - 1

end

end A248422.P13301175043225490051

noncomputable section

/-- A248422: Even integers concatenated with themselves.

Offset 1, canonical program `A248422.P13301175043225490051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248422 (n : ℕ) : ℤ :=
  A248422.P13301175043225490051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248808.P11257078540313990282

`A084346(n+1)-(A000267(n)+1)`
-/

namespace A248808.P11257078540313990282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084346 (n + 1) - (A000267 n + 1)

end

end A248808.P11257078540313990282

noncomputable section

/-- A248808: Irregular triangle read by rows: row n gives golden ratio base representation of Fibonacci number F_n.

Offset 1, canonical program `A248808.P11257078540313990282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A248808 (n : ℕ) : ℤ :=
  A248808.P11257078540313990282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A248808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249037.P6663428575612269827

`∑[A059841(A249036(n+1))]`
-/

namespace A249037.P6663428575612269827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A249036 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249037.P6663428575612269827

noncomputable section

/-- A249037: Number of even terms in first n terms of A249036.

Offset 1, canonical program `A249037.P6663428575612269827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249037 (n : ℕ) : ℤ :=
  A249037.P6663428575612269827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249038.P8201411425765856461

`∑[A249036(n+1)%2]`
-/

namespace A249038.P8201411425765856461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249036 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249038.P8201411425765856461

noncomputable section

/-- A249038: Number of odd terms in first n terms of A249036.

Offset 1, canonical program `A249038.P8201411425765856461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249038 (n : ℕ) : ℤ :=
  A249038.P8201411425765856461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249043.P15231578259827823311

`A062028(a(n-1))` with `a(0)=42`
-/

namespace A249043.P15231578259827823311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [42] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A249043.P15231578259827823311

noncomputable section

/-- A249043: a(1) = 42; a(n+1) = a(n) + sum of decimal digits of a(n).

Offset 1, canonical program `A249043.P15231578259827823311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 582 terms. -/
def A249043 (n : ℕ) : ℤ :=
  A249043.P15231578259827823311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 582 terms. -/
def A249043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249166.P4963763552087285521

`floor(A235497(2*n+1)/2)+n+1`
-/

namespace A249166.P4963763552087285521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A235497 (2 * n + 1) : ℚ) / 2⌋ + (n + 1 : ℤ)

end

end A249166.P4963763552087285521

noncomputable section

/-- A249166: Odd integers concatenated with themselves.

Offset 1, canonical program `A249166.P4963763552087285521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A249166 (n : ℕ) : ℤ :=
  A249166.P4963763552087285521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A249166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249308.P11744014540350760347

`2^n*A128014(n)`
-/

namespace A249308.P11744014540350760347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A128014 n

end

end A249308.P11744014540350760347

noncomputable section

/-- A249308: Central terms of triangle A249307.

Offset 0, canonical program `A249308.P11744014540350760347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A249308 (n : ℕ) : ℤ :=
  A249308.P11744014540350760347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A249308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249720.P520286733806873807

`2*A249719(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249720.P520286733806873807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249719 (n + 1)

end

end A249720.P520286733806873807

noncomputable section

/-- A249720: a(n) = 2 * A249719(n).

Offset 1, canonical program `A249720.P520286733806873807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249719, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249720 (n : ℕ) : ℤ :=
  A249720.P520286733806873807.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249719, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A251364.P456730405745834131

`A024675(n+1)-A001414(A024675(n+1))`
-/

namespace A251364.P456730405745834131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A001414 (A024675 (n + 1)).toNat

end

end A251364.P456730405745834131

noncomputable section

/-- A251364: Difference between average of two consecutive odd primes and the sum of all prime factors of the average.

Offset 1, canonical program `A251364.P456730405745834131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. -/
def A251364 (n : ℕ) : ℤ :=
  A251364.P456730405745834131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. -/
def A251364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251708.P2113703706727638287

`A251707(n+1)-A001592(n)`
-/

namespace A251708.P2113703706727638287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251707 (n + 1) - A001592 n

end

end A251708.P2113703706727638287

noncomputable section

/-- A251708: 6-step Fibonacci sequence starting with (0,0,1,0,0,0).

Offset 0, canonical program `A251708.P2113703706727638287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251708 (n : ℕ) : ℤ :=
  A251708.P2113703706727638287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251712.P6674266782435870888

`A251711(n+1)-A122189(n)`
-/

namespace A251712.P6674266782435870888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251711 (n + 1) - A122189 n

end

end A251712.P6674266782435870888

noncomputable section

/-- A251712: 7-step Fibonacci sequence starting with (0,0,0,1,0,0,0).

Offset 0, canonical program `A251712.P6674266782435870888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251712 (n : ℕ) : ℤ :=
  A251712.P6674266782435870888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251742.P7292228339883376358

`A251741(n+1)-A079262(n)`
-/

namespace A251742.P7292228339883376358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251741 (n + 1) - A079262 n

end

end A251742.P7292228339883376358

noncomputable section

/-- A251742: 8-step Fibonacci sequence starting with 0,0,0,1,0,0,0,0.

Offset 0, canonical program `A251742.P7292228339883376358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251742 (n : ℕ) : ℤ :=
  A251742.P7292228339883376358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251748.P1350453629097894107

`A251747(n+1)-A104144(n)`
-/

namespace A251748.P1350453629097894107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251747 (n + 1) - A104144 n

end

end A251748.P1350453629097894107

noncomputable section

/-- A251748: 9-step Fibonacci sequence starting with 0,0,0,0,0,1,0,0,0.

Offset 0, canonical program `A251748.P1350453629097894107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251748 (n : ℕ) : ℤ :=
  A251748.P1350453629097894107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253157.P13407665018278730026

`A253156(n+1)+A124512(A004139(n+1))`
-/

namespace A253157.P13407665018278730026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253156 (n + 1) + A124512 (A004139 (n + 1)).toNat

end

end A253157.P13407665018278730026

noncomputable section

/-- A253157: Number of (n+1) X (6+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

Offset 1, canonical program `A253157.P13407665018278730026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253157 (n : ℕ) : ℤ :=
  A253157.P13407665018278730026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253243.P16913495343360513967

`A123530(2*n)`
-/

namespace A253243.P16913495343360513967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123530 (2 * n)

end

end A253243.P16913495343360513967

noncomputable section

/-- A253243: Expansion of phi(-x^2) * psi(x^3) * chi(x^3) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A253243.P16913495343360513967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253243 (n : ℕ) : ℤ :=
  A253243.P16913495343360513967.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253433.P18384616751291201725

`A253432(n+1)+A124512(p?[A014681(n)])`
-/

namespace A253433.P18384616751291201725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253432 (n + 1) + A124512 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A253433.P18384616751291201725

noncomputable section

/-- A253433: Number of (n+1) X (6+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

Offset 1, canonical program `A253433.P18384616751291201725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253433 (n : ℕ) : ℤ :=
  A253433.P18384616751291201725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253515.P13457922378749465889

`A130829(n+1)-A074294(n+1)`
-/

namespace A253515.P13457922378749465889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130829 (n + 1) - A074294 (n + 1)

end

end A253515.P13457922378749465889

noncomputable section

/-- A253515: Count down from 2*k to 1, then from 2*(k+1) to 1 and so on.

Offset 1, canonical program `A253515.P13457922378749465889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074294, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253515 (n : ℕ) : ℤ :=
  A253515.P13457922378749465889.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074294, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253708.P8469064889741060914

`∑[A175114(n+1)-(A117216(n+1)+n+1)]`
-/

namespace A253708.P8469064889741060914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175114 (n + 1) - (A117216 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253708.P8469064889741060914

noncomputable section

/-- A253708: Numbers c(n) whose squares are equal to the sums of consecutive cubed integers b^3 + (b+1)^3 + ... + (b+M-1)^3 = c^2, for a first term b(n) being an odd squared integer (A016754).

Offset 1, canonical program `A253708.P8469064889741060914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A253708 (n : ℕ) : ℤ :=
  A253708.P8469064889741060914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A253708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253742.P9928295030245127996

`9*A222993(n+1)`
-/

namespace A253742.P9928295030245127996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A222993 (n + 1)

end

end A253742.P9928295030245127996

noncomputable section

/-- A253742: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

Offset 1, canonical program `A253742.P9928295030245127996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A253742 (n : ℕ) : ℤ :=
  A253742.P9928295030245127996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A253742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253970.P10693384126688661835

`A000040(eq[1, A079998(A011974(n+1))])`
-/

namespace A253970.P10693384126688661835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A011974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253970.P10693384126688661835

noncomputable section

/-- A253970: Primes p such that p + nextprime(p) is divisible by 5.

Offset 1, canonical program `A253970.P10693384126688661835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A253970 (n : ℕ) : ℤ :=
  A253970.P10693384126688661835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A253970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253973.P8343327783554958465

`A000040(eq[9, dr(A011974(n+1))])`
-/

namespace A253973.P8343327783554958465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A011974 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A253973.P8343327783554958465

noncomputable section

/-- A253973: Primes p such that p + nextprime(p) is divisible by 9.

Offset 1, canonical program `A253973.P8343327783554958465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A253973 (n : ℕ) : ℤ :=
  A253973.P8343327783554958465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A253973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254147.P9685819170958152587

`A254146(n)+A001556(n)`
-/

namespace A254147.P9685819170958152587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254146 n + A001556 n

end

end A254147.P9685819170958152587

noncomputable section

/-- A254147: a(n) = 1*9^n + 2*8^n + 3*7^n + 4*6^n + 5*5^n + 6*4^n + 7*3^n + 8*2^n + 9*1^n.

Offset 0, canonical program `A254147.P9685819170958152587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A254147 (n : ℕ) : ℤ :=
  A254147.P9685819170958152587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A254147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254466.P1393730528840118816

`A254465(n)+A254464(n)`
-/

namespace A254466.P1393730528840118816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254465 n + A254464 n

end

end A254466.P1393730528840118816

noncomputable section

/-- A254466: a(n) = 56*2^n + 20*4^n + 35*3^n + 4*6^n + 10*5^n + 7^n + 84.

Offset 0, canonical program `A254466.P1393730528840118816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254466 (n : ℕ) : ℤ :=
  A254466.P1393730528840118816.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254520.P17296200500547138719

`∑{d}[n+1, A048250(#)*A063445((n+1)/#)]`
-/

namespace A254520.P17296200500547138719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254520.P17296200500547138719

noncomputable section

/-- A254520: Möbius transform of A034676.

Offset 1, canonical program `A254520.P17296200500547138719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254520 (n : ℕ) : ℤ :=
  A254520.P17296200500547138719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254708.P15475653326016787145

`A266755(n)+A254707(n)`
-/

namespace A254708.P15475653326016787145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n + A254707 n

end

end A254708.P15475653326016787145

noncomputable section

/-- A254708: Expansion of (1 + 2*x^2) / (1 - 2*x^2 - x^3 + 2*x^5 + 2*x^6 - x^8 - 2*x^9 + x^11) in powers of x.

Offset 0, canonical program `A254708.P15475653326016787145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254708 (n : ℕ) : ℤ :=
  A254708.P15475653326016787145.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255005.P10936210896201179594

`A007605(n+1)+A053666(n+1)`
-/

namespace A255005.P10936210896201179594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) + A053666 (n + 1)

end

end A255005.P10936210896201179594

noncomputable section

/-- A255005: a(n) = the digit sum of prime(n) + the digit product of prime(n).

Offset 1, canonical program `A255005.P10936210896201179594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A053666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255005 (n : ℕ) : ℤ :=
  A255005.P10936210896201179594.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A053666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255226.P4162017514556172731

`A255225(n+1)+27`
-/

namespace A255226.P4162017514556172731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + 27

end

end A255226.P4162017514556172731

noncomputable section

/-- A255226: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

Offset 1, canonical program `A255226.P4162017514556172731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255226 (n : ℕ) : ℤ :=
  A255226.P4162017514556172731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255227.P9716855678432011050

`A255225(n+1)+66`
-/

namespace A255227.P9716855678432011050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + 66

end

end A255227.P9716855678432011050

noncomputable section

/-- A255227: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

Offset 1, canonical program `A255227.P9716855678432011050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255227 (n : ℕ) : ℤ :=
  A255227.P9716855678432011050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255346.P13039647980767050582

`filter[A080765(n+1), A143731(#)]`
-/

namespace A255346.P13039647980767050582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A255346.P13039647980767050582

noncomputable section

/-- A255346: Numbers k such that k and k+1 both have at least two distinct prime factors.

Offset 1, canonical program `A255346.P13039647980767050582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A255346 (n : ℕ) : ℤ :=
  A255346.P13039647980767050582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A255346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255764.P9577008536080855973

`∑[A255743(n+1)]`
-/

namespace A255764.P9577008536080855973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255764.P9577008536080855973

noncomputable section

/-- A255764: Partial sums of A255743.

Offset 1, canonical program `A255764.P9577008536080855973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255764 (n : ℕ) : ℤ :=
  A255764.P9577008536080855973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255765.P11578663823581225176

`∑[A255744(n+1)]`
-/

namespace A255765.P11578663823581225176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255765.P11578663823581225176

noncomputable section

/-- A255765: Partial sums of A255744.

Offset 1, canonical program `A255765.P11578663823581225176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255765 (n : ℕ) : ℤ :=
  A255765.P11578663823581225176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255887.P1885334426485951398

`round(1/A089309(p?[xor(1, n)+1]))`
-/

namespace A255887.P1885334426485951398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A089309 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ))

end

end A255887.P1885334426485951398

noncomputable section

/-- A255887: a(n) = 1 if the n-th prime is the sum of three squares, otherwise a(n) = 0.

Offset 1, canonical program `A255887.P1885334426485951398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A255887 (n : ℕ) : ℤ :=
  A255887.P1885334426485951398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A255887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256698.P10084946441943223524

`eq[0, 1-a(A025581(n-1))]` with `a(0)=1`
-/

namespace A256698.P10084946441943223524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (A025581 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256698.P10084946441943223524

noncomputable section

/-- A256698: Numbers with positive triangular trace.

Offset 1, canonical program `A256698.P10084946441943223524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256698 (n : ℕ) : ℤ :=
  (A256698.P10084946441943223524.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256699.P8613917048069733691

`eq[2, gcd(6, A182321(n))]`
-/

namespace A256699.P8613917048069733691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A182321 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256699.P8613917048069733691

noncomputable section

/-- A256699: Numbers with negative triangular trace.

Offset 1, canonical program `A256699.P8613917048069733691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A256699 (n : ℕ) : ℤ :=
  (A256699.P8613917048069733691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A256699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256702.P6496352478846748862

`A256701(n+1)-(n+1)`
-/

namespace A256702.P6496352478846748862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256701 (n + 1) - (n + 1 : ℤ)

end

end A256702.P6496352478846748862

noncomputable section

/-- A256702: Nonpositive part of the minimal alternating binary representation of n (defined at A256696).

Offset 1, canonical program `A256702.P6496352478846748862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256702 (n : ℕ) : ℤ :=
  A256702.P6496352478846748862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A256702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256736.P12741595308557860683

`A088680(n+1)-1`
-/

namespace A256736.P12741595308557860683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) - 1

end

end A256736.P12741595308557860683

noncomputable section

/-- A256736: Number of composites lying between successive pairs of primes, beginning with pair (3,5). Bisection of A046933.

Offset 1, canonical program `A256736.P12741595308557860683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256736 (n : ℕ) : ℤ :=
  A256736.P12741595308557860683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256737.P6811670045123415095

`A078584(n+1)-1`
-/

namespace A256737.P6811670045123415095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078584 (n + 1) - 1

end

end A256737.P6811670045123415095

noncomputable section

/-- A256737: Number of composites lying between successive pairs of primes, beginning with pair (2,3). Bisection of A046933.

Offset 1, canonical program `A256737.P6811670045123415095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256737 (n : ℕ) : ℤ :=
  A256737.P6811670045123415095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257444.P1880484331838550698

`A255225(n+1)+A019428(A008574(n))`
-/

namespace A257444.P1880484331838550698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + A019428 (A008574 n).toNat

end

end A257444.P1880484331838550698

noncomputable section

/-- A257444: Number of (n+2) X (5+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 1 and no column sum 1.

Offset 1, canonical program `A257444.P1880484331838550698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A257444 (n : ℕ) : ℤ :=
  A257444.P1880484331838550698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A257444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257567.P4532601609499404014

`val(A061725(n+1), 3)`
-/

namespace A257567.P4532601609499404014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061725 (n + 1)).toNat 3

end

end A257567.P4532601609499404014

noncomputable section

/-- A257567: a(n) is the largest exponent k such that 3^k divides (prime(n)^2 + 2).

Offset 1, canonical program `A257567.P4532601609499404014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257567 (n : ℕ) : ℤ :=
  (A257567.P4532601609499404014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257900.P5839440756912760088

`A107751(n)*A113652(n+1)`
-/

namespace A257900.P5839440756912760088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107751 n * A113652 (n + 1)

end

end A257900.P5839440756912760088

noncomputable section

/-- A257900: Expansion of 1/2 - (phi(-q)^2 + phi(-q^9)^2) / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A257900.P5839440756912760088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257900 (n : ℕ) : ℤ :=
  A257900.P5839440756912760088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258211.P3873874455253473199

`2*A053850(n+1)`
-/

namespace A258211.P3873874455253473199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053850 (n + 1)

end

end A258211.P3873874455253473199

noncomputable section

/-- A258211: Nonsquarefree numbers of the form 4*k + 2.

Offset 1, canonical program `A258211.P3873874455253473199`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258211 (n : ℕ) : ℤ :=
  A258211.P3873874455253473199.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053850, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258277.P14490946904607176595

`(-1)^n*A122865(n)`
-/

namespace A258277.P14490946904607176595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122865 n

end

end A258277.P14490946904607176595

noncomputable section

/-- A258277: Expansion of chi(-q) * phi(-q^3) * psi(q^3) in powers of q where chi(), phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A258277.P14490946904607176595`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258277 (n : ℕ) : ℤ :=
  A258277.P14490946904607176595.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258277.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258278.P13033127775777485449

`(-1)^n*A122856(n)`
-/

namespace A258278.P13033127775777485449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122856 n

end

end A258278.P13033127775777485449

noncomputable section

/-- A258278: Expansion of f(-x, -x^5)^2 in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A258278.P13033127775777485449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122856, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258278 (n : ℕ) : ℤ :=
  A258278.P13033127775777485449.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122856, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258278.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258632.P10910427713438509506

`2-A092695(n+2)+n`
-/

namespace A258632.P10910427713438509506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A092695 (n + 2) + (n : ℤ)

end

end A258632.P10910427713438509506

noncomputable section

/-- A258632: Number of length 1 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5 or 7.

Offset 1, canonical program `A258632.P10910427713438509506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A258632 (n : ℕ) : ℤ :=
  A258632.P10910427713438509506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A258632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258703.P3600225149108496667

`-floor((3-A087057(n+1))/2)`
-/

namespace A258703.P3600225149108496667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(3 - A087057 (n + 1) : ℚ) / 2⌋

end

end A258703.P3600225149108496667

noncomputable section

/-- A258703: a(n) = floor(n/sqrt(2) - 1/2).

Offset 1, canonical program `A258703.P3600225149108496667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258703 (n : ℕ) : ℤ :=
  A258703.P3600225149108496667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258938.P11786850421693522442

`lt[n², n*A139374(n)]`
-/

namespace A258938.P11786850421693522442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A139374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258938.P11786850421693522442

noncomputable section

/-- A258938: Index of the Lucas numbers in A258740.

Offset 1, canonical program `A258938.P11786850421693522442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A258938 (n : ℕ) : ℤ :=
  (A258938.P11786850421693522442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A258938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259624.P17320192781786384517

`∪[A061489(n+1), A258085(n+1)]`
-/

namespace A259624.P17320192781786384517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259624.P17320192781786384517

noncomputable section

/-- A259624: Strictly increasing list of F - 1, F, and F + 1, where F = A000045, the Fibonacci numbers.

Offset 1, canonical program `A259624.P17320192781786384517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1432 terms. -/
def A259624 (n : ℕ) : ℤ :=
  (A259624.P17320192781786384517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1432 terms. -/
def A259624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259627.P17875211191962559022

`∪[A259625(n+1), A259626(n+1)]`
-/

namespace A259627.P17875211191962559022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259627.P17875211191962559022

noncomputable section

/-- A259627: List of numbers L - 1, L, and L+1, where L = A000032, the Lucas numbers, sorted into increasing order and duplicates removed.

Offset 1, canonical program `A259627.P17875211191962559022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A259627 (n : ℕ) : ℤ :=
  (A259627.P17875211191962559022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A259627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259728.P15786736245011630451

`eq[∑{digits}[n, #], A004092(2*n)]`
-/

namespace A259728.P15786736245011630451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A259728.P15786736245011630451

noncomputable section

/-- A259728: Sum of digits of a(n) equals the sum of digits of 4*a(n).

Offset 1, canonical program `A259728.P15786736245011630451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 899 terms. -/
def A259728 (n : ℕ) : ℤ :=
  (A259728.P15786736245011630451.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 899 terms. -/
def A259728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259942.P4163868911876891632

`lt[A224787(abs(1-n)+1), n]`
-/

namespace A259942.P4163868911876891632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A259942.P4163868911876891632

noncomputable section

/-- A259942: Numbers that are larger than or equal to the sum of the cubes of their prime factors (with multiplicity).

Offset 1, canonical program `A259942.P4163868911876891632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A259942 (n : ℕ) : ℤ :=
  (A259942.P4163868911876891632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A259942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260458.P8030264566610905607

`∏{p}[n+1, #]*A006519(∑[A004526(n+1)]+1)`
-/

namespace A260458.P8030264566610905607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A006519 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

end

end A260458.P8030264566610905607

noncomputable section

/-- A260458: Limit of gcd(PP(n) - k, PP(n) + k) as k -> oo, where PP(n) is the product of the first n primes.

Offset 1, canonical program `A260458.P8030264566610905607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A260458 (n : ℕ) : ℤ :=
  A260458.P8030264566610905607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A260458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260477.P5696824646865594787

`eq[A159918(n+2), A159918(n+3)]+2`
-/

namespace A260477.P5696824646865594787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A260477.P5696824646865594787

noncomputable section

/-- A260477: Numbers n where n^2 is an anagram of (n+1)^2 in base 2.

Offset 1, canonical program `A260477.P5696824646865594787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A260477 (n : ℕ) : ℤ :=
  (A260477.P5696824646865594787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. -/
def A260477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260683.P1450554479988976395

`A081603(A000079(n))`
-/

namespace A260683.P1450554479988976395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A000079 n).toNat

end

end A260683.P1450554479988976395

noncomputable section

/-- A260683: Number of 2's in the expansion of 2^n in base 3.

Offset 0, canonical program `A260683.P1450554479988976395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081603, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260683 (n : ℕ) : ℤ :=
  A260683.P1450554479988976395.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081603, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260706.P10237371612471039830

`A193832(n)+a(n-1)` with `a(0)=0`
-/

namespace A260706.P10237371612471039830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A193832 n + a (n - 1)

end

end A260706.P10237371612471039830

noncomputable section

/-- A260706: Row sums of A260672.

Offset 0, canonical program `A260706.P10237371612471039830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260706 (n : ℕ) : ℤ :=
  A260706.P10237371612471039830.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261366.P6028586896546902556

`(n*A001316(abs(1-n)))%(n+1)`
-/

namespace A261366.P6028586896546902556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A001316 |1 - (n : ℤ)|.toNat) (n + 1 : ℤ)

end

end A261366.P6028586896546902556

noncomputable section

/-- A261366: a(n) = number of even terms in row n of triangle A261363.

Offset 0, canonical program `A261366.P6028586896546902556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261366 (n : ℕ) : ℤ :=
  A261366.P6028586896546902556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261456.P17740723349919891104

`p?[A005408(n)*A043545(A004092(n))]`
-/

namespace A261456.P17740723349919891104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A043545 (A004092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261456.P17740723349919891104

noncomputable section

/-- A261456: Prime numbers whose sum of digits is not a power of 2.

Offset 1, canonical program `A261456.P17740723349919891104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A261456 (n : ℕ) : ℤ :=
  A261456.P17740723349919891104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A261456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262285.P681803494404622073

`p?[A004759(n+1)]`
-/

namespace A262285.P681803494404622073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262285.P681803494404622073

noncomputable section

/-- A262285: Primes whose binary expansion begins 111.

Offset 1, canonical program `A262285.P681803494404622073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1021 terms. -/
def A262285 (n : ℕ) : ℤ :=
  A262285.P681803494404622073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1021 terms. -/
def A262285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262543.P13500433892424337736

`2*(A141351(n)-1)`
-/

namespace A262543.P13500433892424337736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A141351 n - 1)

end

end A262543.P13500433892424337736

noncomputable section

/-- A262543: Number of rooted asymmetrical polyenoids of type U_n* having n edges.

Offset 1, canonical program `A262543.P13500433892424337736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A262543 (n : ℕ) : ℤ :=
  A262543.P13500433892424337736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A262543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263170.P14666049739135252444

`∑[A000040(n+1)]^3-A098999(n+1)`
-/

namespace A263170.P14666049739135252444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 - A098999 (n + 1)

end

end A263170.P14666049739135252444

noncomputable section

/-- A263170: a(n) = (Sum_{k=1..n} prime(k))^3 - (Sum_{k=1..n} prime(k)^3).

Offset 1, canonical program `A263170.P14666049739135252444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263170 (n : ℕ) : ℤ :=
  A263170.P14666049739135252444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265610.P12741386361720664927

`A029651(n)-A005807(n)`
-/

namespace A265610.P12741386361720664927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n - A005807 n

end

end A265610.P12741386361720664927

noncomputable section

/-- A265610: a(n) = rf(n, n+2)/(n+2)! - rf(n, n)/n!, rf the rising factorial A265609.

Offset 0, canonical program `A265610.P12741386361720664927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A265610 (n : ℕ) : ℤ :=
  A265610.P12741386361720664927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A265610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265918.P10701562963152787022

`A070939(n)%(A048881(n)+1)`
-/

namespace A265918.P10701562963152787022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 n) (A048881 n + 1)

end

end A265918.P10701562963152787022

noncomputable section

/-- A265918: a(n) = A070939(n) mod A000120(n), where A070939(n) is the binary length of n and A000120(n) is the binary weight of n.

Offset 1, canonical program `A265918.P10701562963152787022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265918 (n : ℕ) : ℤ :=
  A265918.P10701562963152787022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266348.P13843108852213909738

`A004001(n+2)-A266341(A053644(n+1))`
-/

namespace A266348.P13843108852213909738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 2) - A266341 (A053644 (n + 1)).toNat

end

end A266348.P13843108852213909738

noncomputable section

/-- A266348: a(1) = 1; for n > 1, a(n) = A004001(n+1) - A072376(n).

Offset 1, canonical program `A266348.P13843108852213909738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A266348 (n : ℕ) : ℤ :=
  A266348.P13843108852213909738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A266348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266666.P7815966118144532855

`(A137735(n)%2)²`
-/

namespace A266666.P7815966118144532855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137735 n) 2 ^ 2

end

end A266666.P7815966118144532855

noncomputable section

/-- A266666: Triangle read by rows giving successive states of cellular automaton generated by "Rule 51" initiated with a single ON (black) cell.

Offset 0, canonical program `A266666.P7815966118144532855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266666 (n : ℕ) : ℤ :=
  A266666.P7815966118144532855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266744.P6598350087135451720

`∑[A029245(n)]`
-/

namespace A266744.P6598350087135451720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266744.P6598350087135451720

noncomputable section

/-- A266744: G.f.: 1/((1-t^4)*(1-t)*(1-t^3)*(1-t^5)*(1-t^7)).

Offset 0, canonical program `A266744.P6598350087135451720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266744 (n : ℕ) : ℤ :=
  A266744.P6598350087135451720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266754.P13841617243074620179

`(1-A070886(n))^n`
-/

namespace A266754.P13841617243074620179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A070886 n) ^ n

end

end A266754.P13841617243074620179

noncomputable section

/-- A266754: Triangle read by rows giving successive states of cellular automaton generated by "Rule 165" initiated with a single ON (black) cell.

Offset 0, canonical program `A266754.P13841617243074620179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266754 (n : ℕ) : ℤ :=
  A266754.P13841617243074620179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266974.P14409623839037846258

`or(A266298(n), A266843(n))`
-/

namespace A266974.P14409623839037846258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266298 n) (A266843 n)

end

end A266974.P14409623839037846258

noncomputable section

/-- A266974: Triangle read by rows giving successive states of cellular automaton generated by "Rule 78" initiated with a single ON (black) cell.

Offset 0, canonical program `A266974.P14409623839037846258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266974 (n : ℕ) : ℤ :=
  A266974.P14409623839037846258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267053.P13468712992979904889

`and(3, A005210(A053188(n)+2+n)²)`
-/

namespace A267053.P13468712992979904889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A005210 (A053188 n + 2 + (n : ℤ)).toNat ^ 2)

end

end A267053.P13468712992979904889

noncomputable section

/-- A267053: Triangle read by rows giving successive states of cellular automaton generated by "Rule 93" initiated with a single ON (black) cell.

Offset 0, canonical program `A267053.P13468712992979904889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267053 (n : ℕ) : ℤ :=
  A267053.P13468712992979904889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267087.P5748870241869351687

`A267084(n+1)+2*A060620(n+1)`
-/

namespace A267087.P5748870241869351687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1) + 2 * A060620 (n + 1)

end

end A267087.P5748870241869351687

noncomputable section

/-- A267087: a(n) = ceiling(A007504(n)/n) + floor(A007504(n)/n).

Offset 1, canonical program `A267087.P5748870241869351687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267087 (n : ℕ) : ℤ :=
  A267087.P5748870241869351687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267097.P13453783086901025802

`∑[A098033(n+1)]-1`
-/

namespace A267097.P13453783086901025802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A267097.P13453783086901025802

noncomputable section

/-- A267097: a(n) = number of 4k+1 primes among first n primes; least monotonic left inverse of A080147.

Offset 1, canonical program `A267097.P13453783086901025802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267097 (n : ℕ) : ℤ :=
  A267097.P13453783086901025802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267103.P17435425389033218484

`A087686(A266109(n+1)+1)`
-/

namespace A267103.P17435425389033218484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (A266109 (n + 1) + 1).toNat

end

end A267103.P17435425389033218484

noncomputable section

/-- A267103: Row 3 of A265903; numbers that occur exactly three times in A004001.

Offset 1, canonical program `A267103.P17435425389033218484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. -/
def A267103 (n : ℕ) : ℤ :=
  A267103.P17435425389033218484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. -/
def A267103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267133.P9958612139705332851

`A151763(n+1)+C(n, n²)`
-/

namespace A267133.P9958612139705332851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

end

end A267133.P9958612139705332851

noncomputable section

/-- A267133: a(n) = (1/n)(2/n)(3/n)...((n-1)/n) where (k/n) is the Kronecker symbol, n >= 1.

Offset 1, canonical program `A267133.P9958612139705332851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267133 (n : ℕ) : ℤ :=
  A267133.P9958612139705332851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267247.P4603199812040826951

`A000007(n)+record[A219843(n)]`
-/

namespace A267247.P4603199812040826951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267247.P4603199812040826951

noncomputable section

/-- A267247: Decimal representation of the n-th iteration of the "Rule 165" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267247.P4603199812040826951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267247 (n : ℕ) : ℤ :=
  A267247.P4603199812040826951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267272.P2548666978376878626

`A267034(n-C(n, C(2, n)))`
-/

namespace A267272.P2548666978376878626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (n - Nat.choose n (Nat.choose 2 n))

end

end A267272.P2548666978376878626

noncomputable section

/-- A267272: Triangle read by rows giving successive states of cellular automaton generated by "Rule 117" initiated with a single ON (black) cell.

Offset 0, canonical program `A267272.P2548666978376878626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267272 (n : ℕ) : ℤ :=
  A267272.P2548666978376878626.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267430.P7614672471199093547

`eq[0, A105700(A004159(n)²)]²`
-/

namespace A267430.P7614672471199093547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004159 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A267430.P7614672471199093547

noncomputable section

/-- A267430: Squares whose digit sum is not a prime.

Offset 1, canonical program `A267430.P7614672471199093547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7395 terms. -/
def A267430 (n : ℕ) : ℤ :=
  (A267430.P7614672471199093547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7395 terms. -/
def A267430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267609.P8591642076610455746

`record[or(1, A219843(n)/2)]`
-/

namespace A267609.P8591642076610455746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((A219843 n : ℚ) / 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267609.P8591642076610455746

noncomputable section

/-- A267609: Decimal representation of the n-th iteration of the "Rule 182" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267609.P8591642076610455746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267609 (n : ℕ) : ℤ :=
  A267609.P8591642076610455746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267687.P10819127517150831275

`and(1, A265359(n+1)+and(n, A000267(n+1)))`
-/

namespace A267687.P10819127517150831275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A265359 (n + 1) + Int.land (n : ℤ) (A000267 (n + 1)))

end

end A267687.P10819127517150831275

noncomputable section

/-- A267687: Triangle read by rows giving successive states of cellular automaton generated by "Rule 199" initiated with a single ON (black) cell.

Offset 0, canonical program `A267687.P10819127517150831275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267687 (n : ℕ) : ℤ :=
  A267687.P10819127517150831275.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267813.P16093651698011700365

`A267773(n+1)`
-/

namespace A267813.P16093651698011700365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267773 (n + 1)

end

end A267813.P16093651698011700365

noncomputable section

/-- A267813: Triangle read by rows giving successive states of cellular automaton generated by "Rule 219" initiated with a single ON (black) cell.

Offset 0, canonical program `A267813.P16093651698011700365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267813 (n : ℕ) : ℤ :=
  A267813.P16093651698011700365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268128.P3789248238406704639

`(A000123(n)-A001316(n))/2`
-/

namespace A268128.P3789248238406704639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 n - A001316 n : ℚ) / 2

end

end A268128.P3789248238406704639

noncomputable section

/-- A268128: a(n) = (A000123(n) - A001316)/2.

Offset 0, canonical program `A268128.P3789248238406704639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268128 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268128.P3789248238406704639.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268135.P792278026408180777

`eq[0, A007953(n+1)%A004159(n+1)]+1`
-/

namespace A268135.P792278026408180777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (n + 1)) (A004159 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268135.P792278026408180777

noncomputable section

/-- A268135: Numbers n such that the digit sum of n^2 is a divisor of the digit sum of n.

Offset 1, canonical program `A268135.P792278026408180777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A268135 (n : ℕ) : ℤ :=
  (A268135.P792278026408180777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. -/
def A268135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268328.P13273210723323809643

`∩[A024675(n+1), A008706(n+2)]/5`
-/

namespace A268328.P13273210723323809643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 5

end

end A268328.P13273210723323809643

noncomputable section

/-- A268328: Integers of the form (prime(m) + prime(m+1))/10 for some m.

Offset 1, canonical program `A268328.P13273210723323809643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268328 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268328.P13273210723323809643.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268329.P14268697526507854789

`2*A000344(n+2)`
-/

namespace A268329.P14268697526507854789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000344 (n + 2)

end

end A268329.P14268697526507854789

noncomputable section

/-- A268329: Expansion of (1 - sqrt(1 - 4*x))^5/16.

Offset 5, canonical program `A268329.P14268697526507854789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268329 (n : ℕ) : ℤ :=
  A268329.P14268697526507854789.a (n - 5)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268329.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268370.P12788103030648664107

`∑[A000344(n+3)-A099376(n)]`
-/

namespace A268370.P12788103030648664107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 3) - A099376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268370.P12788103030648664107

noncomputable section

/-- A268370: Number of North-East lattice paths from (0,0) to (n,n) that have exactly three east steps below the subdiagonal y = x-1.

Offset 4, canonical program `A268370.P12788103030648664107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A268370 (n : ℕ) : ℤ :=
  A268370.P12788103030648664107.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A268370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268732.P7253333164487900378

`∑[A124315(n+1)]`
-/

namespace A268732.P7253333164487900378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268732.P7253333164487900378

noncomputable section

/-- A268732: Sum of the numbers of divisors of gcd(x,y) with x*y <= n.

Offset 1, canonical program `A268732.P7253333164487900378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268732 (n : ℕ) : ℤ :=
  A268732.P7253333164487900378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269027.P11463476603679121488

`A010060(A005351(n))`
-/

namespace A269027.P11463476603679121488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A005351 n).toNat

end

end A269027.P11463476603679121488

noncomputable section

/-- A269027: Parity of the number of 1's in A039724(n).

Offset 0, canonical program `A269027.P11463476603679121488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269027 (n : ℕ) : ℤ :=
  A269027.P11463476603679121488.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269027.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269528.P15804477055261084594

`and(1, A264596(2*A005351(n)))`
-/

namespace A269528.P15804477055261084594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A264596 (2 * A005351 n).toNat)

end

end A269528.P15804477055261084594

noncomputable section

/-- A269528: Parity of number of runs of 1's in negabinary representation of n.

Offset 0, canonical program `A269528.P15804477055261084594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A269528 (n : ℕ) : ℤ :=
  A269528.P15804477055261084594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A269528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269850.P6987586977767832841

`1-A269849(n+1)+n`
-/

namespace A269850.P6987586977767832841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A269849 (n + 1) + (n : ℤ)

end

end A269850.P6987586977767832841

noncomputable section

/-- A269850: a(n) = number of integers k <= n for which prime(k+1)-prime(k) is a multiple of three.

Offset 1, canonical program `A269850.P6987586977767832841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269850 (n : ℕ) : ℤ :=
  A269850.P6987586977767832841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270106.P18066099386289680719

`∑[A000079(A056792(2*n))]`
-/

namespace A270106.P18066099386289680719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056792 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270106.P18066099386289680719

noncomputable section

/-- A270106: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270106.P18066099386289680719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A270106 (n : ℕ) : ℤ :=
  A270106.P18066099386289680719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A270106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270107.P28231735696589533

`Δ[A000079(A056792(2*n))]`
-/

namespace A270107.P28231735696589533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056792 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270107.P28231735696589533

noncomputable section

/-- A270107: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 84", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270107.P28231735696589533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4634 terms. -/
def A270107 (n : ℕ) : ℤ :=
  A270107.P28231735696589533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4634 terms. -/
def A270107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270299.P14931526767613465720

`88*A236206(n+1)`
-/

namespace A270299.P14931526767613465720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  88 * A236206 (n + 1)

end

end A270299.P14931526767613465720

noncomputable section

/-- A270299: Numbers which are representable as a sum of eleven but no fewer consecutive nonnegative integers.

Offset 1, canonical program `A270299.P14931526767613465720`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236206, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270299 (n : ℕ) : ℤ :=
  A270299.P14931526767613465720.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236206, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270440.P8383876616977072034

`round(sqrt(A028329(n)))+1`
-/

namespace A270440.P8383876616977072034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A028329 n : ℝ)) + 1

end

end A270440.P8383876616977072034

noncomputable section

/-- A270440: Least k such that binomial(k, 2) >= binomial(2*n, n).

Offset 0, canonical program `A270440.P8383876616977072034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A270440 (n : ℕ) : ℤ :=
  A270440.P8383876616977072034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A270440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270774.P9173378272536170861

`(A005706(n)-A194459(n))/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A270774.P9173378272536170861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005706 n - A194459 n : ℚ) / 5

end

end A270774.P9173378272536170861

noncomputable section

/-- A270774: a(n) = (A005706(n) - A194459(n))/5.

Offset 0, canonical program `A270774.P9173378272536170861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270774 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A270774.P9173378272536170861.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270774.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270803.P9719610015116545739

`and(A151666(ceil(n/2)), A251720(n+1))`
-/

namespace A270803.P9719610015116545739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151666 ⌈(n : ℚ) / 2⌉.toNat) (A251720 (n + 1))

end

end A270803.P9719610015116545739

noncomputable section

/-- A270803: Formal inverse of Thue-Morse sequence A010060.

Offset 0, canonical program `A270803.P9719610015116545739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270803 (n : ℕ) : ℤ :=
  A270803.P9719610015116545739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270828.P4533327443574597261

`∑[A011974(2*n+1)]%A000040(n+1)`
-/

namespace A270828.P4533327443574597261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A270828.P4533327443574597261

noncomputable section

/-- A270828: a(n) = (Sum_{k=1..2n-1} prime(k)) mod prime(n).

Offset 1, canonical program `A270828.P4533327443574597261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A270828 (n : ℕ) : ℤ :=
  A270828.P4533327443574597261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A270828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271043.P14262682976509013838

`p?[A067790(n+1)]`
-/

namespace A271043.P14262682976509013838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271043.P14262682976509013838

noncomputable section

/-- A271043: Primes p such that p and prime(p) end with the same digit.

Offset 1, canonical program `A271043.P14262682976509013838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A271043 (n : ℕ) : ℤ :=
  A271043.P14262682976509013838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A271043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271823.P6491372009511408679

`A115140(n)+A077587(abs(1-n))`
-/

namespace A271823.P6491372009511408679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n + A077587 |1 - (n : ℤ)|.toNat

end

end A271823.P6491372009511408679

noncomputable section

/-- A271823: a(n) = binomial(2*n-4,n-1)*(n+3)/n.

Offset 1, canonical program `A271823.P6491372009511408679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A271823 (n : ℕ) : ℤ :=
  A271823.P6491372009511408679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A271823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271999.P7167033125042987843

`A018227(n+1)-A033999(A159461(n+1))`
-/

namespace A271999.P7167033125042987843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1) - A033999 (A159461 (n + 1)).toNat

end

end A271999.P7167033125042987843

noncomputable section

/-- A271999: Halogen sequence: a(n) = A018227(n)-1.

Offset 1, canonical program `A271999.P7167033125042987843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271999 (n : ℕ) : ℤ :=
  A271999.P7167033125042987843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272211.P17519105524056241919

`A272173(n+1)-A000203(n+1)`
-/

namespace A272211.P17519105524056241919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272173 (n + 1) - A000203 (n + 1)

end

end A272211.P17519105524056241919

noncomputable section

/-- A272211: Product of n-th prime and the sum of the divisors of n.

Offset 1, canonical program `A272211.P17519105524056241919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A272173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272211 (n : ℕ) : ℤ :=
  A272211.P17519105524056241919.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A272173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272514.P2917555472459059865

`A258143(n+3)-A001405(n+3)`
-/

namespace A272514.P2917555472459059865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258143 (n + 3) - A001405 (n + 3)

end

end A272514.P2917555472459059865

noncomputable section

/-- A272514: Number of set partitions of [n] into two blocks with distinct sizes.

Offset 3, canonical program `A272514.P2917555472459059865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A272514 (n : ℕ) : ℤ :=
  A272514.P2917555472459059865.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A272514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272756.P7505850742485616259

`ceil(A123753(A033156(n+1))/A123753(n))`
-/

namespace A272756.P7505850742485616259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123753 (A033156 (n + 1)).toNat : ℚ) / (A123753 n : ℚ)⌉

end

end A272756.P7505850742485616259

noncomputable section

/-- A272756: a(n) is the least k such that k > A070939(n * k).

Offset 1, canonical program `A272756.P7505850742485616259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A272756 (n : ℕ) : ℤ :=
  A272756.P7505850742485616259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. -/
def A272756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272900.P12902754051628015523

`A008967(4*n+5)`
-/

namespace A272900.P12902754051628015523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008967 (4 * n + 5)

end

end A272900.P12902754051628015523

noncomputable section

/-- A272900: Fibonacci-products fractal sequence.

Offset 1, canonical program `A272900.P12902754051628015523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272900 (n : ℕ) : ℤ :=
  A272900.P12902754051628015523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272902.P2391986581813364604

`eq[0, A101264(3*n)]+1`
-/

namespace A272902.P2391986581813364604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272902.P2391986581813364604

noncomputable section

/-- A272902: Numbers k such that 6*k - 5 is not prime.

Offset 1, canonical program `A272902.P2391986581813364604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272902 (n : ℕ) : ℤ :=
  (A272902.P2391986581813364604.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272928.P5031657854594105114

`∑[floor(A160410(n)/3)]`
-/

namespace A272928.P5031657854594105114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160410 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272928.P5031657854594105114

noncomputable section

/-- A272928: Partial sums of A147562.

Offset 0, canonical program `A272928.P5031657854594105114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3808 terms. -/
def A272928 (n : ℕ) : ℤ :=
  A272928.P5031657854594105114.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3808 terms. -/
def A272928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273019.P13210225163452937065

`A005717(2*n+1)-A099252(n)`
-/

namespace A273019.P13210225163452937065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (2 * n + 1) - A099252 n

end

end A273019.P13210225163452937065

noncomputable section

/-- A273019: a(n) = hypergeom([-2*n-1, 1/2], [2], 4) + (2*n+1)*hypergeom([-n+1/2, -n], [2], 4).

Offset 0, canonical program `A273019.P13210225163452937065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A273019 (n : ℕ) : ℤ :=
  A273019.P13210225163452937065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A273019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273129.P1966559582175092992

`1-A171587(n+1)`
-/

namespace A273129.P1966559582175092992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A171587 (n + 1)

end

end A273129.P1966559582175092992

noncomputable section

/-- A273129: The Rote-Fibonacci infinite sequence.

Offset 0, canonical program `A273129.P1966559582175092992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6765 terms. -/
def A273129 (n : ℕ) : ℤ :=
  A273129.P1966559582175092992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6765 terms. -/
def A273129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273159.P2710656007498216518

`eq[0, A118881(n)%7]`
-/

namespace A273159.P2710656007498216518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118881 n) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273159.P2710656007498216518

noncomputable section

/-- A273159: Numbers whose digit sum is divisible by 7.

Offset 1, canonical program `A273159.P2710656007498216518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1422 terms. -/
def A273159 (n : ℕ) : ℤ :=
  (A273159.P2710656007498216518.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1422 terms. -/
def A273159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273514.P15425265425330946745

`floor(A120880(2*n)/2)`
-/

namespace A273514.P15425265425330946745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120880 (2 * n) : ℚ) / 2⌋

end

end A273514.P15425265425330946745

noncomputable section

/-- A273514: a(n) is the number of arithmetic progressions m < n < p (three numbers in arithmetic progression) such that m and p contain no 2's in their ternary representation.

Offset 0, canonical program `A273514.P15425265425330946745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A273514 (n : ℕ) : ℤ :=
  A273514.P15425265425330946745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A273514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273577.P15347930587704899884

`A069894(n)-or(1, A102376(n))`
-/

namespace A273577.P15347930587704899884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - Int.lor 1 (A102376 n)

end

end A273577.P15347930587704899884

noncomputable section

/-- A273577: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 803", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273577.P15347930587704899884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2919 terms. -/
def A273577 (n : ℕ) : ℤ :=
  A273577.P15347930587704899884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2919 terms. -/
def A273577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274034.P6668103445242214746

`eq[0, A101436(n+1)]+1`
-/

namespace A274034.P6668103445242214746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274034.P6668103445242214746

noncomputable section

/-- A274034: Numbers whose exponents in their prime power factorizations are not primes.

Offset 1, canonical program `A274034.P6668103445242214746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6511 terms. -/
def A274034 (n : ℕ) : ℤ :=
  (A274034.P6668103445242214746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6511 terms. -/
def A274034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274093.P3378925896752465146

`a(n-1)-A010816(n-1)` with `a(0)=0`
-/

namespace A274093.P3378925896752465146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A010816 (n - 1)

end

end A274093.P3378925896752465146

noncomputable section

/-- A274093: a(0)=0; thereafter (-1)^n*n appears n times.

Offset 0, canonical program `A274093.P3378925896752465146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274093 (n : ℕ) : ℤ :=
  A274093.P3378925896752465146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274179.P14958537973323220496

`A023531(A017005(n))`
-/

namespace A274179.P14958537973323220496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A017005 n).toNat

end

end A274179.P14958537973323220496

noncomputable section

/-- A274179: Expansion of f(x^1, x^6) in powers of x where f() is Ramanujan's general theta function.

Offset 0, canonical program `A274179.P14958537973323220496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274179 (n : ℕ) : ℤ :=
  A274179.P14958537973323220496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275059.P1792862244400861378

`floor(sqrt(p?[A264724(n+1)]))`
-/

namespace A275059.P1792862244400861378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275059.P1792862244400861378

noncomputable section

/-- A275059: Numbers n such that A000010(n) + n^2 is a prime.

Offset 1, canonical program `A275059.P1792862244400861378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A275059 (n : ℕ) : ℤ :=
  A275059.P1792862244400861378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A275059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275206.P3060918531879445442

`Δ[(4-6/(n+1))*a(n-1)]%A007595(n+1)` with `a(0)=1`
-/

namespace A275206.P3060918531879445442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) (A007595 (n + 1))

end

end A275206.P3060918531879445442

noncomputable section

/-- A275206: Expansion of (A(x)^2 - A(x^2))/2 where A(x) = A000108(x) - 1.

Offset 0, canonical program `A275206.P3060918531879445442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A275206 (n : ℕ) : ℤ :=
  A275206.P3060918531879445442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A275206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275222.P2051820910365035933

`A196630(n+2)-A057428(n)`
-/

namespace A275222.P2051820910365035933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196630 (n + 2) - A057428 n

end

end A275222.P2051820910365035933

noncomputable section

/-- A275222: Number of n X 2 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,0) and new values introduced in order 0..2.

Offset 1, canonical program `A275222.P2051820910365035933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A275222 (n : ℕ) : ℤ :=
  A275222.P2051820910365035933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A275222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275238.P2529277380881640300

`xor(1, n*(A178914(n)+1+n))`
-/

namespace A275238.P2529277380881640300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * (A178914 n + 1 + (n : ℤ)))

end

end A275238.P2529277380881640300

noncomputable section

/-- A275238: a(n) = n*(10^floor(log_10(n)+1) + 1) + (-1)^n.

Offset 0, canonical program `A275238.P2529277380881640300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275238 (n : ℕ) : ℤ :=
  A275238.P2529277380881640300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275289.P10625359432271309099

`A026165(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A275289.P10625359432271309099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026165 n + a (n - 2)

end

end A275289.P10625359432271309099

noncomputable section

/-- A275289: Number of set partitions of [n] with symmetric block size list of length three.

Offset 3, canonical program `A275289.P10625359432271309099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A275289 (n : ℕ) : ℤ :=
  A275289.P10625359432271309099.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A275289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275630.P2300392837964216121

`lcm(A077063(n+1), A077066(n+1))`
-/

namespace A275630.P2300392837964216121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077063 (n + 1)) (A077066 (n + 1))

end

end A275630.P2300392837964216121

noncomputable section

/-- A275630: a(n) = product of distinct primes dividing prime(n)^2 - 1.

Offset 1, canonical program `A275630.P2300392837964216121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275630 (n : ℕ) : ℤ :=
  (A275630.P2300392837964216121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275988.P2515707421048682127

`A031336(n+1)-A000040(n+1)`
-/

namespace A275988.P2515707421048682127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) - A000040 (n + 1)

end

end A275988.P2515707421048682127

noncomputable section

/-- A275988: a(n) = prime(3n) - prime(n).

Offset 1, canonical program `A275988.P2515707421048682127`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A031336, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275988 (n : ℕ) : ℤ :=
  A275988.P2515707421048682127.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A031336, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276000.P16396236457092608332

`A184985(n+1)+A175856(n+1)`
-/

namespace A276000.P16396236457092608332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (n + 1) + A175856 (n + 1)

end

end A276000.P16396236457092608332

noncomputable section

/-- A276000: Least k such that n! divides phi(k!) (k > 0).

Offset 1, canonical program `A276000.P16396236457092608332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276000 (n : ℕ) : ℤ :=
  A276000.P16396236457092608332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276134.P17715433807570833748

`∑{digits}[A007091(n), A192085(A192085(#))]`
-/

namespace A276134.P17715433807570833748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A192085 (A192085 x).toNat).sum

end

end A276134.P17715433807570833748

noncomputable section

/-- A276134: a(5n) = a(n), a(5n+1) = a(5n+2) = a(5n+3) = a(5n+4) = a(n) + 1, a(0) = 0.

Offset 0, canonical program `A276134.P17715433807570833748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276134 (n : ℕ) : ℤ :=
  A276134.P17715433807570833748.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276150.P11723566750596417578

`1+a(n-A260188(n))` with `a(0)=0`
-/

namespace A276150.P11723566750596417578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ((n : ℤ) - A260188 n).toNat

end

end A276150.P11723566750596417578

noncomputable section

/-- A276150: Sum of digits when n is written in primorial base (A049345); minimal number of primorials (A002110) that add to n.

Offset 0, canonical program `A276150.P11723566750596417578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276150 (n : ℕ) : ℤ :=
  (A276150.P11723566750596417578.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276158.P15647600386181717088

`A004736(n+1)*A008458(A002262(n))`
-/

namespace A276158.P15647600386181717088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A008458 (A002262 n).toNat

end

end A276158.P15647600386181717088

noncomputable section

/-- A276158: Triangle read by rows: T(n,k) = 6*k*(n + 1 - k) for 0 < k <= n; for k = 0, T(n,0) = n + 1.

Offset 0, canonical program `A276158.P15647600386181717088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276158 (n : ℕ) : ℤ :=
  A276158.P15647600386181717088.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276189.P219610882621668333

`A004736(n+1)*A005914(A002262(n))`
-/

namespace A276189.P219610882621668333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A005914 (A002262 n).toNat

end

end A276189.P219610882621668333

noncomputable section

/-- A276189: Triangle read by rows: T(n,k) = 2*(6*k^2 + 1)*(n + 1 - k) for 0 < k <= n; for k = 0, T(n,0) = n + 1.

Offset 0, canonical program `A276189.P219610882621668333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276189 (n : ℕ) : ℤ :=
  A276189.P219610882621668333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276389.P3834930374717209442

`eq[0, A027868(n)-A090621(n)]`
-/

namespace A276389.P3834930374717209442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n - A090621 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276389.P3834930374717209442

noncomputable section

/-- A276389: Numbers n such that n! ends in the same number of 0's in both base 10 and base 16.

Offset 1, canonical program `A276389.P3834930374717209442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3069 terms. -/
def A276389 (n : ℕ) : ℤ :=
  (A276389.P3834930374717209442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3069 terms. -/
def A276389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276397.P8421453054304162173

`A188590(n+1)-3`
-/

namespace A276397.P8421453054304162173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188590 (n + 1) - 3

end

end A276397.P8421453054304162173

noncomputable section

/-- A276397: Trajectory of 0 under the morphism 0 -> 001, 1 -> 0010.

Offset 0, canonical program `A276397.P8421453054304162173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276397 (n : ℕ) : ℤ :=
  A276397.P8421453054304162173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276561.P15739790464828978968

`floor(A091931(n+2)/2)`
-/

namespace A276561.P15739790464828978968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091931 (n + 2) : ℚ) / 2⌋

end

end A276561.P15739790464828978968

noncomputable section

/-- A276561: For n-th odd prime prime(n) in binary form, a(n) is the decimal value of the bits in between the most significant and least significant bits which are both 1. Since there are no middle bits for odd_prime(1) = 3 = (11)_2, a(1) = 0.

Offset 1, canonical program `A276561.P15739790464828978968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A276561 (n : ℕ) : ℤ :=
  A276561.P15739790464828978968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A276561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276621.P8554351487063663393

`∑[char[A261232(n)]]`
-/

namespace A276621.P8554351487063663393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261232 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276621.P8554351487063663393

noncomputable section

/-- A276621: After a(0)=0, each n occurs A261234(n-1) times.

Offset 0, canonical program `A276621.P8554351487063663393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6251 terms. -/
def A276621 (n : ℕ) : ℤ :=
  (A276621.P8554351487063663393.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6251 terms. -/
def A276621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276963.P164865024294200041

`Δ[(1-A066872(n+1))²]`
-/

namespace A276963.P164865024294200041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A066872 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P164865024294200041

noncomputable section

/-- A276963: a(n) = prime(n+1)^4 - prime(n)^4.

Offset 1, canonical program `A276963.P164865024294200041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276963 (n : ℕ) : ℤ :=
  A276963.P164865024294200041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277149.P7769864639982086180

`A197879(A001954(2*13*n))`
-/

namespace A277149.P7769864639982086180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (A001954 (2 * (13 * n))).toNat

end

end A277149.P7769864639982086180

noncomputable section

/-- A277149: Lexicographically least sequence of nonnegative integers that avoids 9/5-powers.

Offset 0, canonical program `A277149.P7769864639982086180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A277149 (n : ℕ) : ℤ :=
  A277149.P7769864639982086180.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A277149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277584.P4075816236948862761

`A025174(n)²`
-/

namespace A277584.P4075816236948862761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 n ^ 2

end

end A277584.P4075816236948862761

noncomputable section

/-- A277584: a(n) = binomial(3*n-1, n-1)^2.

Offset 0, canonical program `A277584.P4075816236948862761`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277584 (n : ℕ) : ℤ :=
  A277584.P4075816236948862761.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025174, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277627.P6584579301111323018

`C(A181940(n), A025581(A080036(n)))`
-/

namespace A277627.P6584579301111323018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A181940 n).toNat (A025581 (A080036 n).toNat).toNat

end

end A277627.P6584579301111323018

noncomputable section

/-- A277627: Square array read by antidiagonals downwards: T(n,k), n>=0, k>=0, in which column 0 is equal to A057427: 0, 1, 1, 1, ..., and for k > 0 column k lists two zeros followed by the partial sums of column k-1.

Offset 0, canonical program `A277627.P6584579301111323018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A277627 (n : ℕ) : ℤ :=
  (A277627.P6584579301111323018.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A277627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277808.P3177376890003780937

`A091090(n)*A092436(n+1)`
-/

namespace A277808.P3177376890003780937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n * A092436 (n + 1)

end

end A277808.P3177376890003780937

noncomputable section

/-- A277808: a(n) = number of iterations of map k -> A003188(A006068(k)/2) that are required (when starting from k = n) until k is an odious number.

Offset 1, canonical program `A277808.P3177376890003780937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277808 (n : ℕ) : ℤ :=
  A277808.P3177376890003780937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278049.P11985461488246088473

`∑[A200905(n+1)]-1`
-/

namespace A278049.P11985461488246088473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A278049.P11985461488246088473

noncomputable section

/-- A278049: a(n) = 3*(Sum_{k=1..n} phi(k)) - 1, where phi = A000010.

Offset 1, canonical program `A278049.P11985461488246088473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278049 (n : ℕ) : ℤ :=
  A278049.P11985461488246088473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278741.P14531857081843335100

`A061286(n+1)+1`
-/

namespace A278741.P14531857081843335100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061286 (n + 1) + 1

end

end A278741.P14531857081843335100

noncomputable section

/-- A278741: Odd numbers k such that tau(k-1) is a prime.

Offset 1, canonical program `A278741.P14531857081843335100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278741 (n : ℕ) : ℤ :=
  A278741.P14531857081843335100.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278741.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279209.P393407883981076372

`A090996(A035327(n))`
-/

namespace A279209.P393407883981076372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A035327 n).toNat

end

end A279209.P393407883981076372

noncomputable section

/-- A279209: Length of first run of 0's in binary expansion of n.

Offset 0, canonical program `A279209.P393407883981076372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279209 (n : ℕ) : ℤ :=
  A279209.P393407883981076372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279210.P556875708574037845

`A090996(A087734(n))`
-/

namespace A279210.P556875708574037845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A087734 n).toNat

end

end A279210.P556875708574037845

noncomputable section

/-- A279210: Length of second run of 1's in binary expansion of n.

Offset 0, canonical program `A279210.P556875708574037845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279210 (n : ℕ) : ℤ :=
  A279210.P556875708574037845.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279768.P17710633787375653040

`eq[16, A004092(A008574(n))]`
-/

namespace A279768.P17710633787375653040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279768.P17710633787375653040

noncomputable section

/-- A279768: Numbers n such that the sum of digits of 8n equals 16.

Offset 1, canonical program `A279768.P17710633787375653040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A279768 (n : ℕ) : ℤ :=
  (A279768.P17710633787375653040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A279768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279776.P15208621051592746473

`eq[12, A004092(3*n)]`
-/

namespace A279776.P15208621051592746473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279776.P15208621051592746473

noncomputable section

/-- A279776: Numbers n such that the sum of digits of 6n equals 12.

Offset 1, canonical program `A279776.P15208621051592746473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 415 terms. -/
def A279776 (n : ℕ) : ℤ :=
  (A279776.P15208621051592746473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 415 terms. -/
def A279776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279984.P16893894406181977355

`A278029(A000040(n+1))`
-/

namespace A279984.P16893894406181977355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (A000040 (n + 1)).toNat

end

end A279984.P16893894406181977355

noncomputable section

/-- A279984: Positions of the prime numbers in the sequence of numbers that are not perfect powers (A007916).

Offset 1, canonical program `A279984.P16893894406181977355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A279984 (n : ℕ) : ℤ :=
  A279984.P16893894406181977355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A279984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280514.P1420355641287953879

`A246104(n+1)-(n+2)`
-/

namespace A280514.P1420355641287953879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (n + 1) - (n + 2 : ℤ)

end

end A280514.P1420355641287953879

noncomputable section

/-- A280514: Index sequence of the reverse block-fractal sequence A003849.

Offset 1, canonical program `A280514.P1420355641287953879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280514 (n : ℕ) : ℤ :=
  A280514.P1420355641287953879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280580.P3824912328366219957

`A000108(A025581(n))*A086645(n)`
-/

namespace A280580.P3824912328366219957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A025581 n).toNat * A086645 n

end

end A280580.P3824912328366219957

noncomputable section

/-- A280580: Triangle read by rows: T(n,k) = binomial(2*n,2*k)*binomial(2*n-2*k,n-k)/(n+1-k) for 0<=k<=n.

Offset 0, canonical program `A280580.P3824912328366219957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6136 terms. -/
def A280580 (n : ℕ) : ℤ :=
  A280580.P3824912328366219957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6136 terms. -/
def A280580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280891.P1764150059183000184

`A000245(n)+∑[A026012(n)]`
-/

namespace A280891.P1764150059183000184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280891.P1764150059183000184

noncomputable section

/-- A280891: Number of certain noncrossing set partitions.

Offset 1, canonical program `A280891.P1764150059183000184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A280891 (n : ℕ) : ℤ :=
  A280891.P1764150059183000184.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A280891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179699.P1483605779152392052

`A178739(n+1)²`
-/

namespace A179699.P1483605779152392052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178739 (n + 1) ^ 2

end

end A179699.P1483605779152392052

noncomputable section

/-- A179699: Numbers of the form p^8*q^2 where p and q are distinct primes.

Offset 1, canonical program `A179699.P1483605779152392052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179699 (n : ℕ) : ℤ :=
  A179699.P1483605779152392052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179873.P6758897971303959353

`A004396(A179871(n+1))`
-/

namespace A179873.P6758897971303959353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A179871 (n + 1)).toNat

end

end A179873.P6758897971303959353

noncomputable section

/-- A179873: Corresponding values of antiharmonic means B(h) to numbers h from A179871 (numbers h such that antiharmonic mean of the numbers k < h such that gcd(k, h) = 1 is an integer).

Offset 1, canonical program `A179873.P6758897971303959353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A179873 (n : ℕ) : ℤ :=
  A179873.P6758897971303959353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. -/
def A179873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179891.P781335319700463557

`filter[A179872(n+1), A066247(#)]`
-/

namespace A179891.P781335319700463557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A179891.P781335319700463557

noncomputable section

/-- A179891: Composites h such that antiharmonic mean B(h) of the numbers k < h such that gcd(k, h) = 1 is not integer.

Offset 1, canonical program `A179891.P781335319700463557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9236 terms. -/
def A179891 (n : ℕ) : ℤ :=
  A179891.P781335319700463557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9236 terms. -/
def A179891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179893.P13809526715996495286

`3*A005097(n+1)`
-/

namespace A179893.P13809526715996495286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005097 (n + 1)

end

end A179893.P13809526715996495286

noncomputable section

/-- A179893: a(n) = 3/2 * (prime(n)-1).

Offset 2, canonical program `A179893.P13809526715996495286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179893 (n : ℕ) : ℤ :=
  A179893.P13809526715996495286.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180060.P8050149905770766405

`A000079(n+1-A082494(n+1))%(n+1)`
-/

namespace A180060.P8050149905770766405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 ((n + 1 : ℤ) - A082494 (n + 1)).toNat) (n + 1 : ℤ)

end

end A180060.P8050149905770766405

noncomputable section

/-- A180060: a(n) = 2^(2^n mod n) mod n.

Offset 1, canonical program `A180060.P8050149905770766405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. -/
def A180060 (n : ℕ) : ℤ :=
  A180060.P8050149905770766405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. -/
def A180060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180117.P7084962965851303768

`∩[A014612(n+1)-2, A014612(n+1)]`
-/

namespace A180117.P7084962965851303768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180117.P7084962965851303768

noncomputable section

/-- A180117: Numbers n such that n and n+2 are both divisible by exactly 3 primes (counted with multiplicity).

Offset 1, canonical program `A180117.P7084962965851303768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A180117 (n : ℕ) : ℤ :=
  (A180117.P7084962965851303768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A180117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180266.P9271125515567740913

`(A115140(n)-A002420(n))*A160457(n)`
-/

namespace A180266.P9271125515567740913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115140 n - A002420 n) * A160457 n

end

end A180266.P9271125515567740913

noncomputable section

/-- A180266: a(0) = 0; a(n) = C(2*n-2,n-1)*(n^2-2*n+2)/n for n >= 1.

Offset 0, canonical program `A180266.P9271125515567740913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A180266 (n : ℕ) : ℤ :=
  A180266.P9271125515567740913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A180266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180364.P12544978778859971724

`Δ[n²*A002002(n)]`
-/

namespace A180364.P12544978778859971724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180364.P12544978778859971724

noncomputable section

/-- A180364: a(n) = sum_{k=0..n} C(n,k)*C(n+k,k)*(2*k+1)^2, where C(m,k) denotes the binomial coefficient m!/(k!*(m-k)!).

Offset 0, canonical program `A180364.P12544978778859971724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A180364 (n : ℕ) : ℤ :=
  A180364.P12544978778859971724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A180364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181326.P4111225017154132152

`A181296(n)-a(n-1)` with `a(0)=0`
-/

namespace A181326.P4111225017154132152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A181296 n - a (n - 1)

end

end A181326.P4111225017154132152

noncomputable section

/-- A181326: Number of columns with an odd sum in all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 0, canonical program `A181326.P4111225017154132152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181326 (n : ℕ) : ℤ :=
  A181326.P4111225017154132152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181337.P8014274062187864923

`A181305(n)+A181300(n)`
-/

namespace A181337.P8014274062187864923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 n + A181300 n

end

end A181337.P8014274062187864923

noncomputable section

/-- A181337: Number of even entries in the top rows of all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 0, canonical program `A181337.P8014274062187864923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181337 (n : ℕ) : ℤ :=
  A181337.P8014274062187864923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181435.P17617308443401127913

`xor(A063524(n), A181434(n+1))`
-/

namespace A181435.P17617308443401127913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A181434 (n + 1))

end

end A181435.P17617308443401127913

noncomputable section

/-- A181435: First column in matrix inverse of a mixed convolution of A052906.

Offset 1, canonical program `A181435.P17617308443401127913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. -/
def A181435 (n : ℕ) : ℤ :=
  A181435.P17617308443401127913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. -/
def A181435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182004.P11314887941871430139

`A008441(n)*A226162(2*n+3)`
-/

namespace A182004.P11314887941871430139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n * A226162 (2 * n + 3)

end

end A182004.P11314887941871430139

noncomputable section

/-- A182004: Expansion of q^(-1/4) * (eta(q^4) * eta(q^25) + eta(q) * eta(q^100))^2 / (eta(q^2) * eta(q^50)) in powers of q.

Offset 0, canonical program `A182004.P11314887941871430139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A182004 (n : ℕ) : ℤ :=
  A182004.P11314887941871430139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A182004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182093.P17307292128728891994

`∑[A005590(n)]`
-/

namespace A182093.P17307292128728891994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182093.P17307292128728891994

noncomputable section

/-- A182093: Partial sums of A005590.

Offset 0, canonical program `A182093.P17307292128728891994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182093 (n : ℕ) : ℤ :=
  A182093.P17307292128728891994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182145.P14347110186623288046

`xor(A001223(n+1), A001223(n+2))`
-/

namespace A182145.P14347110186623288046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001223 (n + 1)) (A001223 (n + 2))

end

end A182145.P14347110186623288046

noncomputable section

/-- A182145: XOR(d1,d2), where d1 and d2 are the difference between consecutive primes given in binary.

Offset 1, canonical program `A182145.P14347110186623288046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182145 (n : ℕ) : ℤ :=
  A182145.P14347110186623288046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182626.P6575455807757680894

`or(1, A002002(n)*A033999(n))`
-/

namespace A182626.P6575455807757680894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002002 n * A033999 n)

end

end A182626.P6575455807757680894

noncomputable section

/-- A182626: a(n) = Hypergeometric([-n, n], [1], 2).

Offset 0, canonical program `A182626.P6575455807757680894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A182626 (n : ℕ) : ℤ :=
  A182626.P6575455807757680894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A182626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182853.P12567971007581339213

`eq[1, A354353(n+1)]+1`
-/

namespace A182853.P12567971007581339213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182853.P12567971007581339213

noncomputable section

/-- A182853: Squarefree composite integers and powers of squarefree composite integers.

Offset 1, canonical program `A182853.P12567971007581339213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182853 (n : ℕ) : ℤ :=
  (A182853.P12567971007581339213.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182860.P17887238774705945877

`∏{e}[∏{e}[n+1, A008578(#+1)], #+1]`
-/

namespace A182860.P17887238774705945877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A008578 (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A182860.P17887238774705945877

noncomputable section

/-- A182860: Number of distinct prime signatures represented among the unitary divisors of n.

Offset 1, canonical program `A182860.P17887238774705945877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182860 (n : ℕ) : ℤ :=
  (A182860.P17887238774705945877.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184778.P8996054944129193767

`record[(n+1)*A010051(A003151(n+1)+n+1)]`
-/

namespace A184778.P8996054944129193767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A003151 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184778.P8996054944129193767

noncomputable section

/-- A184778: Numbers k such that 2k + floor(k*sqrt(2)) is prime.

Offset 1, canonical program `A184778.P8996054944129193767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. -/
def A184778 (n : ℕ) : ℤ :=
  A184778.P8996054944129193767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. -/
def A184778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184803.P11425205424734953809

`record[(n+1)*A010051(A022839(n+1))]`
-/

namespace A184803.P11425205424734953809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A022839 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184803.P11425205424734953809

noncomputable section

/-- A184803: Numbers k such that floor(k*sqrt(5)) is prime.

Offset 1, canonical program `A184803.P11425205424734953809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1097 terms. -/
def A184803 (n : ℕ) : ℤ :=
  A184803.P11425205424734953809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1097 terms. -/
def A184803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185271.P9882110103991236612

`A055025(n+2)-A055025(n+1)`
-/

namespace A185271.P9882110103991236612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 2) - A055025 (n + 1)

end

end A185271.P9882110103991236612

noncomputable section

/-- A185271: Differences between consecutive norms of Gaussian primes.

Offset 1, canonical program `A185271.P9882110103991236612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185271 (n : ℕ) : ℤ :=
  A185271.P9882110103991236612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185271.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185300.P2066547640795483324

`eq[1, ∑{e}[A061762(n), #]]`
-/

namespace A185300.P2066547640795483324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185300.P2066547640795483324

noncomputable section

/-- A185300: Numbers k such that (sum of the decimal digits of k) + (product of the decimal digits of k) is prime.

Offset 1, canonical program `A185300.P2066547640795483324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A185300 (n : ℕ) : ℤ :=
  (A185300.P2066547640795483324.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A185300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185705.P1369373421699612504

`A010051(n+1)*A079998(n)`
-/

namespace A185705.P1369373421699612504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A079998 n

end

end A185705.P1369373421699612504

noncomputable section

/-- A185705: Characteristic function of positive numbers that are primes ending in 1.

Offset 1, canonical program `A185705.P1369373421699612504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185705 (n : ℕ) : ℤ :=
  A185705.P1369373421699612504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185708.P3037980791462570158

`and(A008496(n), A010051(n+1))`
-/

namespace A185708.P3037980791462570158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008496 n) (A010051 (n + 1))

end

end A185708.P3037980791462570158

noncomputable section

/-- A185708: Characteristic function of positive numbers that are primes ending in 7.

Offset 1, canonical program `A185708.P3037980791462570158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185708 (n : ℕ) : ℤ :=
  A185708.P3037980791462570158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185934.P5020716041999348457

`filter[A258578(n+1), A070563(#)]`
-/

namespace A185934.P5020716041999348457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A185934.P5020716041999348457

noncomputable section

/-- A185934: Lesser of two consecutive primes which both equal 1 (mod 3).

Offset 1, canonical program `A185934.P5020716041999348457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185934 (n : ℕ) : ℤ :=
  A185934.P5020716041999348457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186035.P7318932329708112188

`(-1)^A186034(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186035.P7318932329708112188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A186034 n : ℤ)

end

end A186035.P7318932329708112188

noncomputable section

/-- A186035: a(n) = (-1)^A186034(n).

Offset 0, canonical program `A186035.P7318932329708112188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186035 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186035.P7318932329708112188.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186035.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186227.P15814989772072999567

`eq[char[A186228(n+1)], A000007(n)]`
-/

namespace A186227.P15814989772072999567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186228 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A186227.P15814989772072999567

noncomputable section

/-- A186227: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and heptagonal numbers. Complement of A186228.

Offset 1, canonical program `A186227.P15814989772072999567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6909 terms. -/
def A186227 (n : ℕ) : ℤ :=
  (A186227.P15814989772072999567.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6909 terms. -/
def A186227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186315.P16986293479875845827

`floor((A190337(n+1)+n+2)/4)`
-/

namespace A186315.P16986293479875845827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190337 (n + 1) + (n + 2 : ℤ) : ℚ) / 4⌋

end

end A186315.P16986293479875845827

noncomputable section

/-- A186315: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and hexagonal numbers. Complement of A186316.

Offset 1, canonical program `A186315.P16986293479875845827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186315 (n : ℕ) : ℤ :=
  A186315.P16986293479875845827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186343.P11545071070651969370

`A004526(A184623(2*n+1))-n`
-/

namespace A186343.P11545071070651969370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184623 (2 * n + 1)).toNat - (n : ℤ)

end

end A186343.P11545071070651969370

noncomputable section

/-- A186343: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the octagonal numbers. Complement of A186342.

Offset 1, canonical program `A186343.P11545071070651969370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. -/
def A186343 (n : ℕ) : ℤ :=
  A186343.P11545071070651969370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. -/
def A186343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186697.P1665573472131375262

`A246104(p?[a(n-1)+2]-1)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A186697.P1665573472131375262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A186697.P1665573472131375262

noncomputable section

/-- A186697: Next Fibonacci number after n-th prime number.

Offset 1, canonical program `A186697.P1665573472131375262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. -/
def A186697 (n : ℕ) : ℤ :=
  A186697.P1665573472131375262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. -/
def A186697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187485.P15679807272875871827

`A307295(n)-1`
-/

namespace A187485.P15679807272875871827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n - 1

end

end A187485.P15679807272875871827

noncomputable section

/-- A187485: Positions of 0's in A123740; complement of A003623.

Offset 1, canonical program `A187485.P15679807272875871827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187485 (n : ℕ) : ℤ :=
  A187485.P15679807272875871827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187500.P11324648320385359507

`A187502(n+3)-(A187502(n)+A187501(n))`
-/

namespace A187500.P11324648320385359507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187502 (n + 3) - (A187502 n + A187501 n)

end

end A187500.P11324648320385359507

noncomputable section

/-- A187500: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-2,0,1,2}, n=3*r+p_i, and define a(-2)=0. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,2,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(x^2-1) with x=2*cos(Pi/9).

Offset 0, canonical program `A187500.P11324648320385359507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. -/
def A187500 (n : ℕ) : ℤ :=
  A187500.P11324648320385359507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. -/
def A187500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187576.P17089044639270244333

`eq[1, A003842(ceil(xor(1, n)/2))]`
-/

namespace A187576.P17089044639270244333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187576.P17089044639270244333

noncomputable section

/-- A187576: Rank transform of the sequence 2*floor((n-1)/2); complement of A187577.

Offset 1, canonical program `A187576.P17089044639270244333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187576 (n : ℕ) : ℤ :=
  (A187576.P17089044639270244333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187581.P17957234280026754368

`xor(1, A137709(n+1))`
-/

namespace A187581.P17957234280026754368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A137709 (n + 1))

end

end A187581.P17957234280026754368

noncomputable section

/-- A187581: Complement of A187580.

Offset 1, canonical program `A187581.P17957234280026754368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187581 (n : ℕ) : ℤ :=
  A187581.P17957234280026754368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187951.P5704434848721015730

`comp[A188468(n+1)-4]`
-/

namespace A187951.P5704434848721015730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187951.P5704434848721015730

noncomputable section

/-- A187951: Positions of 0 in A187950; complement of A187952.

Offset 1, canonical program `A187951.P5704434848721015730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187951 (n : ℕ) : ℤ :=
  (A187951.P5704434848721015730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187970.P445449769979314014

`comp[A187971(n+1)-1]+1`
-/

namespace A187970.P445449769979314014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187970.P445449769979314014

noncomputable section

/-- A187970: Positions of 0 in A187969; complement of A187971.

Offset 1, canonical program `A187970.P445449769979314014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187970 (n : ℕ) : ℤ :=
  (A187970.P445449769979314014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187975.P2328125019044732713

`A188383(n+1)+A098021(n+1)`
-/

namespace A187975.P2328125019044732713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188383 (n + 1) + A098021 (n + 1)

end

end A187975.P2328125019044732713

noncomputable section

/-- A187975: Positions of 1 in the zero-one sequence given by s(n)=[nr+5r]-[nr]-[5r], where r=sqrt(2), n>=1, [ ]=floor.

Offset 1, canonical program `A187975.P2328125019044732713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187975 (n : ℕ) : ℤ :=
  A187975.P2328125019044732713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188018.P1779164048503098880

`A188468(n+1)+A188010(n+1)`
-/

namespace A188018.P1779164048503098880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1) + A188010 (n + 1)

end

end A188018.P1779164048503098880

noncomputable section

/-- A188018: Positions of 0 in A188017; complement of A188019.

Offset 1, canonical program `A188018.P1779164048503098880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188018 (n : ℕ) : ℤ :=
  A188018.P1779164048503098880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188045.P18393744390427798970

`2*A188298(n+1)-A004526(n)`
-/

namespace A188045.P18393744390427798970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188298 (n + 1) - A004526 n

end

end A188045.P18393744390427798970

noncomputable section

/-- A188045: Positions of 0 in A188044; complement of A188046.

Offset 1, canonical program `A188045.P18393744390427798970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188045 (n : ℕ) : ℤ :=
  A188045.P18393744390427798970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188082.P14647801940553537570

`char[A003511(n+1)-1]`
-/

namespace A188082.P14647801940553537570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188082.P14647801940553537570

noncomputable section

/-- A188082: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=1, [ ]=floor.

Offset 1, canonical program `A188082.P14647801940553537570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188082 (n : ℕ) : ℤ :=
  (A188082.P14647801940553537570.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188083.P8593130762785517257

`A144612(A138466(n+1))`
-/

namespace A188083.P8593130762785517257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144612 (A138466 (n + 1)).toNat

end

end A188083.P8593130762785517257

noncomputable section

/-- A188083: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=2, [ ]=floor.

Offset 1, canonical program `A188083.P8593130762785517257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188083 (n : ℕ) : ℤ :=
  A188083.P8593130762785517257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188088.P12262049233856946859

`abs(3-A188074(n+1))`
-/

namespace A188088.P12262049233856946859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A188074 (n + 1)|

end

end A188088.P12262049233856946859

noncomputable section

/-- A188088: Positions of 1 in A188086; complement of A188087.

Offset 1, canonical program `A188088.P12262049233856946859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188088 (n : ℕ) : ℤ :=
  A188088.P12262049233856946859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188257.P11681210939291988659

`A188260(a(n-1)+n)` with `a(0)=0`
-/

namespace A188257.P11681210939291988659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A188260 (a (n - 1) + (n : ℤ)).toNat

end

end A188257.P11681210939291988659

noncomputable section

/-- A188257: [nr+kr]-[nr]-[kr], where r=sqrt(5), k=2, [ ]=floor.

Offset 1, canonical program `A188257.P11681210939291988659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188257 (n : ℕ) : ℤ :=
  A188257.P11681210939291988659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188395.P9222550659096500199

`A080764(n*A288997(n+1))`
-/

namespace A188395.P9222550659096500199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 ((n : ℤ) * A288997 (n + 1)).toNat

end

end A188395.P9222550659096500199

noncomputable section

/-- A188395: a(n) = [n*r +k*r]-[n*r]-[k*r], where r=1/sqrt(2), k=4, [ ]=floor.

Offset 1, canonical program `A188395.P9222550659096500199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188395 (n : ℕ) : ℤ :=
  A188395.P9222550659096500199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188469.P6655427290535897228

`floor(ϕ*A188013(n+1))`
-/

namespace A188469.P6655427290535897228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A188013 (n + 1) : ℝ)⌋

end

end A188469.P6655427290535897228

noncomputable section

/-- A188469: Positions of 1 in A188467; complement of A188468.

Offset 1, canonical program `A188469.P6655427290535897228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188469 (n : ℕ) : ℤ :=
  A188469.P6655427290535897228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188472.P12778231603659369171

`A005614(n)*A188014(A019446(n+1))`
-/

namespace A188472.P12778231603659369171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n * A188014 (A019446 (n + 1)).toNat

end

end A188472.P12778231603659369171

noncomputable section

/-- A188472: a(n) = [6r]-[nr]-[6r-nr], where r=(1+sqrt(5))/2 and []=floor.

Offset 1, canonical program `A188472.P12778231603659369171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188472 (n : ℕ) : ℤ :=
  A188472.P12778231603659369171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189023.P3066450030052913835

`A189021(A062378(n+1))`
-/

namespace A189023.P3066450030052913835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (A062378 (n + 1)).toNat

end

end A189023.P3066450030052913835

noncomputable section

/-- A189023: Apostol's fourth-order Mobius (Moebius) function mu_4(n).

Offset 1, canonical program `A189023.P3066450030052913835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189023 (n : ℕ) : ℤ :=
  A189023.P3066450030052913835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189390.P722462694232908460

`n*2^n-A189391(n)`
-/

namespace A189390.P722462694232908460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * 2 ^ n : ℤ) - A189391 n

end

end A189390.P722462694232908460

noncomputable section

/-- A189390: The maximum possible value for the apex of a triangle of numbers whose base consists of a permutation of the numbers 0 to n, and each number in a higher row is the sum of the two numbers directly below it.

Offset 0, canonical program `A189390.P722462694232908460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189390 (n : ℕ) : ℤ :=
  A189390.P722462694232908460.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189401.P4880423856562258179

`A189400(n+1)+A189403(n+1)-A189399(n+1)`
-/

namespace A189401.P4880423856562258179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189400 (n + 1) + (A189403 (n + 1) - A189399 (n + 1))

end

end A189401.P4880423856562258179

noncomputable section

/-- A189401: n+[nr/t]+[ns/t]; r=1, s=sqrt(e), t=e.

Offset 1, canonical program `A189401.P4880423856562258179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189401 (n : ℕ) : ℤ :=
  A189401.P4880423856562258179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189468.P11565838239148070851

`A016885(n)-A330184(n+1)`
-/

namespace A189468.P11565838239148070851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A330184 (n + 1)

end

end A189468.P11565838239148070851

noncomputable section

/-- A189468: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=1+sqrt(2), t=1/2+sqrt(2).

Offset 1, canonical program `A189468.P11565838239148070851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189468 (n : ℕ) : ℤ :=
  A189468.P11565838239148070851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189522.P15652800251320976758

`A189403(n+1)+A292665(n+1)-A292647(n+1)`
-/

namespace A189522.P15652800251320976758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (n + 1) + (A292665 (n + 1) - A292647 (n + 1))

end

end A189522.P15652800251320976758

noncomputable section

/-- A189522: n+[nr/s]+[nt/s]; r=1, s=1/(e-1), t=1/(e+1).

Offset 1, canonical program `A189522.P15652800251320976758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189522 (n : ℕ) : ℤ :=
  A189522.P15652800251320976758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189634.P909356562777891474

`A287529(n+1)+2-A287528(n+1)²`
-/

namespace A189634.P909356562777891474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287529 (n + 1) + (2 - A287528 (n + 1) ^ 2)

end

end A189634.P909356562777891474

noncomputable section

/-- A189634: Positions of 1 in A189632; complement of A189633.

Offset 1, canonical program `A189634.P909356562777891474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189634 (n : ℕ) : ℤ :=
  A189634.P909356562777891474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189725.P7436048816723822181

`A320928(n+1)+1`
-/

namespace A189725.P7436048816723822181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320928 (n + 1) + 1

end

end A189725.P7436048816723822181

noncomputable section

/-- A189725: Positions of 1 in A189723; complement of A189724.

Offset 1, canonical program `A189725.P7436048816723822181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189725 (n : ℕ) : ℤ :=
  A189725.P7436048816723822181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189729.P3541793079639853341

`comp[A189728(n+1)-1]+1`
-/

namespace A189729.P3541793079639853341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189728 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189729.P3541793079639853341

noncomputable section

/-- A189729: Positions of 1 in A189727; complement of A189728.

Offset 1, canonical program `A189729.P3541793079639853341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189729 (n : ℕ) : ℤ :=
  (A189729.P3541793079639853341.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189816.P3550546103248011916

`A215879(n)%2`
-/

namespace A189816.P3550546103248011916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215879 n) 2

end

end A189816.P3550546103248011916

noncomputable section

/-- A189816: a(3*k-2)=0, a(3*k-1)=1-a(k), a(3*k)=1-a(k); k>0, a(1)=0.

Offset 1, canonical program `A189816.P3550546103248011916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189816 (n : ℕ) : ℤ :=
  A189816.P3550546103248011916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189883.P14118951556328521303

`A047928(A069977(n+1)+2)`
-/

namespace A189883.P14118951556328521303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047928 (A069977 (n + 1) + 2).toNat

end

end A189883.P14118951556328521303

noncomputable section

/-- A189883: Numbers k such that the square part of k is one greater than the squarefree part of k.

Offset 1, canonical program `A189883.P14118951556328521303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189883 (n : ℕ) : ℤ :=
  A189883.P14118951556328521303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190054.P17436923950915406882

`A194979(4*(n+1))+A047282(n+1)`
-/

namespace A190054.P17436923950915406882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (4 * (n + 1)) + A047282 (n + 1)

end

end A190054.P17436923950915406882

noncomputable section

/-- A190054: a(n) = n + [n*r/s] + [n*t/s]; r=2, s=sin(Pi/3), t=csc(Pi/3).

Offset 1, canonical program `A190054.P17436923950915406882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190054 (n : ℕ) : ℤ :=
  A190054.P17436923950915406882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A190054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190245.P9074609946370719498

`1-A197879(A190487(n+1)+n)`
-/

namespace A190245.P9074609946370719498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A197879 (A190487 (n + 1) + (n : ℤ)).toNat

end

end A190245.P9074609946370719498

noncomputable section

/-- A190245: a(n) = [nu+nv]-[nu]-[nv], where u=sqrt(2), v=2u, and []=floor.

Offset 1, canonical program `A190245.P9074609946370719498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190245 (n : ℕ) : ℤ :=
  A190245.P9074609946370719498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190365.P12889499009282395275

`A277645(n+1)+A171974(n+1)`
-/

namespace A190365.P12889499009282395275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277645 (n + 1) + A171974 (n + 1)

end

end A190365.P12889499009282395275

noncomputable section

/-- A190365: n + [n*r/s] + [n*t/s] + [n*u/s]; r=sqrt(2), s=1/r, t=sqrt(3), u=1/t.

Offset 1, canonical program `A190365.P12889499009282395275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190365 (n : ℕ) : ℤ :=
  A190365.P12889499009282395275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190367.P16292922155972823339

`A277645(n+1)+A184809(n+1)`
-/

namespace A190367.P16292922155972823339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277645 (n + 1) + A184809 (n + 1)

end

end A190367.P16292922155972823339

noncomputable section

/-- A190367: n + [n*r/u] + [n*s/u] + [n*t/u]; r=sqrt(2), s=1/r, t=sqrt(3), u=1/t.

Offset 1, canonical program `A190367.P16292922155972823339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190367 (n : ℕ) : ℤ :=
  A190367.P16292922155972823339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190491.P14507808460934527920

`A190775(2*(n+1))`
-/

namespace A190491.P14507808460934527920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (2 * (n + 1))

end

end A190491.P14507808460934527920

noncomputable section

/-- A190491: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),3,1) and []=floor.

Offset 1, canonical program `A190491.P14507808460934527920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190491 (n : ℕ) : ℤ :=
  A190491.P14507808460934527920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190608.P4668530059990785910

`Δ[A132196(n)]*A190610(n+1)`
-/

namespace A190608.P4668530059990785910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A190610 (n + 1)

end

end A190608.P4668530059990785910

noncomputable section

/-- A190608: a(1)=a(2)=1; thereafter a(n) = 2*(a(ceiling(n/2))-a(floor(n/2))).

Offset 1, canonical program `A190608.P4668530059990785910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190608 (n : ℕ) : ℤ :=
  A190608.P4668530059990785910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190671.P5074073965687265744

`∪[A188069(n+1), A190696(n+1)]`
-/

namespace A190671.P5074073965687265744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190671.P5074073965687265744

noncomputable section

/-- A190671: Positions of 1 in A190669; complement of A190670.

Offset 1, canonical program `A190671.P5074073965687265744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190671 (n : ℕ) : ℤ :=
  (A190671.P5074073965687265744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190672.P969204813514763096

`round(sqrt(A190704(n+1)))`
-/

namespace A190672.P969204813514763096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A190704 (n + 1) : ℝ))

end

end A190672.P969204813514763096

noncomputable section

/-- A190672: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),2,1) and [ ]=floor.

Offset 1, canonical program `A190672.P969204813514763096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190672 (n : ℕ) : ℤ :=
  A190672.P969204813514763096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190673.P14157910734428056466

`A003512(A190670(n+1))`
-/

namespace A190673.P14157910734428056466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (A190670 (n + 1)).toNat

end

end A190673.P14157910734428056466

noncomputable section

/-- A190673: Positions of 0 in A190672.

Offset 1, canonical program `A190673.P14157910734428056466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190673 (n : ℕ) : ℤ :=
  A190673.P14157910734428056466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190675.P10535900529426331608

`∪[A188069(n+1), A190708(n+1)]`
-/

namespace A190675.P10535900529426331608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P10535900529426331608

noncomputable section

/-- A190675: Positions of 2 in A190672.

Offset 1, canonical program `A190675.P10535900529426331608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190675 (n : ℕ) : ℤ :=
  (A190675.P10535900529426331608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190774.P847097764927375794

`∩[A184623(n+1), A083051(n)]`
-/

namespace A190774.P847097764927375794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P847097764927375794

noncomputable section

/-- A190774: Positions of 3 in A190770.

Offset 1, canonical program `A190774.P847097764927375794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8048 terms. -/
def A190774 (n : ℕ) : ℤ :=
  (A190774.P847097764927375794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8048 terms. -/
def A190774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190906.P11254801162106217556

`A048883(A332497(n)-A000035(n))`
-/

namespace A190906.P11254801162106217556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A332497 n - A000035 n).toNat

end

end A190906.P11254801162106217556

noncomputable section

/-- A190906: a(n) = gcd(n! / floor(n/2)!^2, 3^n).

Offset 0, canonical program `A190906.P11254801162106217556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A190906 (n : ℕ) : ℤ :=
  A190906.P11254801162106217556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A190906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191026.P14743048384192298842

`p?[eq[2, A035155(n+1)]+1]`
-/

namespace A191026.P14743048384192298842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035155 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191026.P14743048384192298842

noncomputable section

/-- A191026: Primes p that have Jacobi symbol (p|35) = 1.

Offset 1, canonical program `A191026.P14743048384192298842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A191026 (n : ℕ) : ℤ :=
  (A191026.P14743048384192298842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A191026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191029.P9038524740072031153

`p?[eq[2, A035151(n+1)]+1]`
-/

namespace A191029.P9038524740072031153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035151 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191029.P9038524740072031153

noncomputable section

/-- A191029: Primes p with Jacobi symbol (p|39) = 1.

Offset 1, canonical program `A191029.P9038524740072031153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A191029 (n : ℕ) : ℤ :=
  (A191029.P9038524740072031153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A191029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191068.P6506479572961148821

`p?[(n+1)*(1-A035155(n+1))]`
-/

namespace A191068.P6506479572961148821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A035155 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191068.P6506479572961148821

noncomputable section

/-- A191068: Primes p that have Kronecker symbol (p|35) = -1.

Offset 1, canonical program `A191068.P6506479572961148821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. -/
def A191068 (n : ℕ) : ℤ :=
  A191068.P6506479572961148821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. -/
def A191068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191070.P10123948899731297363

`p?[(n+1)*(1-A035151(n+1))]`
-/

namespace A191070.P10123948899731297363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A035151 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191070.P10123948899731297363

noncomputable section

/-- A191070: Primes p that have Kronecker symbol (p|39) = -1.

Offset 1, canonical program `A191070.P10123948899731297363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. -/
def A191070 (n : ℕ) : ℤ :=
  A191070.P10123948899731297363.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. -/
def A191070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191194.P9228674649673219148

`eq[char[A191202(n+1)], A010051(3*(n+1))]`
-/

namespace A191194.P9228674649673219148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191202 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A191194.P9228674649673219148

noncomputable section

/-- A191194: Positions of 0 in A191188; complement of A191202.

Offset 1, canonical program `A191194.P9228674649673219148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A191194 (n : ℕ) : ℤ :=
  (A191194.P9228674649673219148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A191194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191790.P8584163521288311520

`A086905(n)-char[2*n]`
-/

namespace A191790.P8584163521288311520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086905 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A191790.P8584163521288311520

noncomputable section

/-- A191790: Number of base pyramids in all length n left factors of Dyck paths.

Offset 0, canonical program `A191790.P8584163521288311520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A191790 (n : ℕ) : ℤ :=
  A191790.P8584163521288311520.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A191790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192450.P13811939200402364126

`∪[A059267(n+1), A187811(n+1)]`
-/

namespace A192450.P13811939200402364126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192450.P13811939200402364126

noncomputable section

/-- A192450: Numbers k such that -1 is not a square mod k.

Offset 1, canonical program `A192450.P13811939200402364126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192450 (n : ℕ) : ℤ :=
  (A192450.P13811939200402364126.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192868.P10087640679497259836

`A108144(n+1)-2`
-/

namespace A192868.P10087640679497259836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108144 (n + 1) - 2

end

end A192868.P10087640679497259836

noncomputable section

/-- A192868: Thin numbers: odd numbers k > 1 such that k+1 is a prime times a power of two.

Offset 1, canonical program `A192868.P10087640679497259836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192868 (n : ℕ) : ℤ :=
  A192868.P10087640679497259836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193337.P12592637914248796100

`A000203(A000203(n+1)/A082903(n+1))`
-/

namespace A193337.P12592637914248796100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A082903 (n + 1) : ℚ))).toNat

end

end A193337.P12592637914248796100

noncomputable section

/-- A193337: Sum of odd divisors of sigma(n).

Offset 1, canonical program `A193337.P12592637914248796100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193337 (n : ℕ) : ℤ :=
  A193337.P12592637914248796100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193383.P14072576358167787959

`∑[-A193382(n+1)]`
-/

namespace A193383.P14072576358167787959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A193382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193383.P14072576358167787959

noncomputable section

/-- A193383: G.f. is the imaginary part of the function C(x) that satisfies: C(x) = 1 + x/C(I*x).

Offset 2, canonical program `A193383.P14072576358167787959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A193383 (n : ℕ) : ℤ :=
  A193383.P14072576358167787959.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A193383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193426.P7960739282691465682

`A131719(2*n)*A261884(2*(n+1))`
-/

namespace A193426.P7960739282691465682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131719 (2 * n) * A261884 (2 * (n + 1))

end

end A193426.P7960739282691465682

noncomputable section

/-- A193426: Expansion of (a(q^2) + a(q^3) - 2*a(q^6)) / 6 in powers of q where a() is a cubic AGM function.

Offset 1, canonical program `A193426.P7960739282691465682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A193426 (n : ℕ) : ℤ :=
  A193426.P7960739282691465682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A193426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193511.P8678682823205615366

`A146076(A252736(n+1)+1)`
-/

namespace A193511.P8678682823205615366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A252736 (n + 1) + 1).toNat

end

end A193511.P8678682823205615366

noncomputable section

/-- A193511: a(n) = Sum of even divisors of Omega(n), a(1) = 0.

Offset 1, canonical program `A193511.P8678682823205615366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193511 (n : ℕ) : ℤ :=
  A193511.P8678682823205615366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193633.P1618108498816010154

`A086645(A292564(n))`
-/

namespace A193633.P1618108498816010154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 (A292564 n).toNat

end

end A193633.P1618108498816010154

noncomputable section

/-- A193633: Triangle: T(n,k)=C(4n,2k), 0<=k<=n.

Offset 0, canonical program `A193633.P1618108498816010154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A193633 (n : ℕ) : ℤ :=
  A193633.P1618108498816010154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A193633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194371.P12996466738484531238

`record[(n+1)%A190670(A008619(n))]`
-/

namespace A194371.P12996466738484531238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A190670 (A008619 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194371.P12996466738484531238

noncomputable section

/-- A194371: Numbers m such that Sum_{k=1..m} ( - ) < 0, where r=sqrt(3) and fractional part is denoted by < >.

Offset 1, canonical program `A194371.P12996466738484531238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194371 (n : ℕ) : ℤ :=
  A194371.P12996466738484531238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194373.P2131192760433905498

`lt[A190670(A008619(n))-n, 1]`
-/

namespace A194373.P2131192760433905498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190670 (A008619 n).toNat - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A194373.P2131192760433905498

noncomputable section

/-- A194373: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=sqrt(3) and < > denotes fractional part.

Offset 1, canonical program `A194373.P2131192760433905498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194373 (n : ℕ) : ℤ :=
  (A194373.P2131192760433905498.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A194373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194581.P13119146017149971246

`p?[A024675(n+1)-A001223(n+1)]`
-/

namespace A194581.P13119146017149971246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194581.P13119146017149971246

noncomputable section

/-- A194581: Primes prime(k) of the form (2*prime(k-1) + prime(k+1))/3.

Offset 1, canonical program `A194581.P13119146017149971246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 747 terms. -/
def A194581 (n : ℕ) : ℤ :=
  A194581.P13119146017149971246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 747 terms. -/
def A194581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194736.P10753671586819030676

`1-A194737(n+1)+n`
-/

namespace A194736.P10753671586819030676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194737 (n + 1) + (n : ℤ)

end

end A194736.P10753671586819030676

noncomputable section

/-- A194736: Number of k such that {-k*sqrt(2)} < {-n*sqrt(2)}, where { } = fractional part.

Offset 1, canonical program `A194736.P10753671586819030676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194736 (n : ℕ) : ℤ :=
  A194736.P10753671586819030676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194881.P8978723486251652137

`A372621(n+1)+1`
-/

namespace A194881.P8978723486251652137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372621 (n + 1) + 1

end

end A194881.P8978723486251652137

noncomputable section

/-- A194881: A number of sum-free sets related to fractional parts of multiples of a rational number in the range 1/3 to 2/3.

Offset 1, canonical program `A194881.P8978723486251652137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194881 (n : ℕ) : ℤ :=
  A194881.P8978723486251652137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195065.P14907772542944478463

`lt[n, A036044(n)]`
-/

namespace A195065.P14907772542944478463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195065.P14907772542944478463

noncomputable section

/-- A195065: Numbers n such that BCR(n) is greater than n, where BCR = binary-complement-and-reverse = A036044.

Offset 1, canonical program `A195065.P14907772542944478463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. -/
def A195065 (n : ℕ) : ℤ :=
  (A195065.P14907772542944478463.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. -/
def A195065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196678.P16059566375343936770

`A069271(n+1)-A002293(n+1)`
-/

namespace A196678.P16059566375343936770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069271 (n + 1) - A002293 (n + 1)

end

end A196678.P16059566375343936770

noncomputable section

/-- A196678: a(n) = 5*binomial(4*n+5,n)/(4*n+5).

Offset 0, canonical program `A196678.P16059566375343936770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A196678 (n : ℕ) : ℤ :=
  A196678.P16059566375343936770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A196678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197637.P7917936694828647143

`comp[A197636(n+1)+n-1]-n`
-/

namespace A197637.P7917936694828647143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A197637.P7917936694828647143

noncomputable section

/-- A197637: Number of non-Wilson primes <= n.

Offset 1, canonical program `A197637.P7917936694828647143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197637 (n : ℕ) : ℤ :=
  A197637.P7917936694828647143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199427.P16032660571928218146

`∑[A110655(Δ[A103579(n+1)])]`
-/

namespace A199427.P16032660571928218146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103579 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199427.P16032660571928218146

noncomputable section

/-- A199427: Numbers n such that 4n+1 and 8n+3 are prime.

Offset 1, canonical program `A199427.P16032660571928218146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A199427 (n : ℕ) : ℤ :=
  A199427.P16032660571928218146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A199427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199805.P3565271180669152033

`(A199929(n)+A199927(n))/3`
-/

namespace A199805.P3565271180669152033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199929 n + A199927 n : ℚ) / 3

end

end A199805.P3565271180669152033

noncomputable section

/-- A199805: G.f.: 1/(1 + x + 5*x^2 - x^3 + x^4).

Offset 0, canonical program `A199805.P3565271180669152033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A199805 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A199805.P3565271180669152033.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A199805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200810.P3059771621700014501

`p?[a(A032741(n+1))+n*A010051(n+1)]` with `a(0)=1, a(1)=1`
-/

namespace A200810.P3059771621700014501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (A032741 (n + 1)).toNat + (n : ℤ) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200810.P3059771621700014501

noncomputable section

/-- A200810: Iterate k -> d(k) until an odd prime is reached.

Offset 3, canonical program `A200810.P3059771621700014501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A200810 (n : ℕ) : ℤ :=
  A200810.P3059771621700014501.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A200810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204232.P14925845568226415786

`eq[1, ∑{e}[A030101(n), #]]`
-/

namespace A204232.P14925845568226415786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204232.P14925845568226415786

noncomputable section

/-- A204232: Numbers whose binary reversal is prime.

Offset 1, canonical program `A204232.P14925845568226415786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A204232 (n : ℕ) : ℤ :=
  (A204232.P14925845568226415786.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A204232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204342.P2124445064722088541

`A050468(2*n+1)`
-/

namespace A204342.P2124445064722088541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050468 (2 * n + 1)

end

end A204342.P2124445064722088541

noncomputable section

/-- A204342: a(n) = (-1)^n * Sum_{2*m + 1 | 2*n + 1} (-1)^m (2*m + 1)^4.

Offset 0, canonical program `A204342.P2124445064722088541`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204342 (n : ℕ) : ℤ :=
  A204342.P2124445064722088541.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A205099.P16915794968075742101

`A204823(n+1)-A005100(n+1)`
-/

namespace A205099.P16915794968075742101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) - A005100 (n + 1)

end

end A205099.P16915794968075742101

noncomputable section

/-- A205099: Sum of proper divisors (A001065) of deficient numbers (A005100).

Offset 1, canonical program `A205099.P16915794968075742101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, A204823, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A205099 (n : ℕ) : ℤ :=
  A205099.P16915794968075742101.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, A204823, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A205099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A205510.P11813062267428190125

`A000120(xor(A005097(n+1), A102781(n+1)))`
-/

namespace A205510.P11813062267428190125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A005097 (n + 1)) (A102781 (n + 1))).toNat

end

end A205510.P11813062267428190125

noncomputable section

/-- A205510: Binary Hamming distance between prime(n) and prime(n+1).

Offset 1, canonical program `A205510.P11813062267428190125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1899 terms. -/
def A205510 (n : ℕ) : ℤ :=
  A205510.P11813062267428190125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1899 terms. -/
def A205510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206527.P17662321040219862947

`A020338(3^n)`
-/

namespace A206527.P17662321040219862947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (3 ^ n)

end

end A206527.P17662321040219862947

noncomputable section

/-- A206527: 3^n concatenated with itself.

Offset 0, canonical program `A206527.P17662321040219862947`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206527 (n : ℕ) : ℤ :=
  A206527.P17662321040219862947.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206527.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206528.P3167642556267065851

`A020338(5^n)`
-/

namespace A206528.P3167642556267065851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (5 ^ n)

end

end A206528.P3167642556267065851

noncomputable section

/-- A206528: 5^n concatenated with itself.

Offset 0, canonical program `A206528.P3167642556267065851`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206528 (n : ℕ) : ℤ :=
  A206528.P3167642556267065851.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206529.P17804462601865261922

`A020338(7^n)`
-/

namespace A206529.P17804462601865261922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (7 ^ n)

end

end A206529.P17804462601865261922

noncomputable section

/-- A206529: 7^n concatenated with itself.

Offset 0, canonical program `A206529.P17804462601865261922`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206529 (n : ℕ) : ℤ :=
  A206529.P17804462601865261922.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A208895.P1713684876106652713

`∑{d}[n+1, A001158(#)*A327278((n+1)/#)]`
-/

namespace A208895.P1713684876106652713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A208895.P1713684876106652713

noncomputable section

/-- A208895: Number of non-congruent solutions to x^2 + y^2 + z^2 + t^2 == 1 (mod n).

Offset 1, canonical program `A208895.P1713684876106652713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208895 (n : ℕ) : ℤ :=
  A208895.P1713684876106652713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209802.P15698415580135976079

`∑[A166234(n+1)]`
-/

namespace A209802.P15698415580135976079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209802.P15698415580135976079

noncomputable section

/-- A209802: Partial sums of exponential Möbius function, A166234.

Offset 1, canonical program `A209802.P15698415580135976079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209802 (n : ℕ) : ℤ :=
  A209802.P15698415580135976079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209871.P15896444725466817106

`∩[A038187(n+1), A253205(n+1)]`
-/

namespace A209871.P15896444725466817106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209871.P15896444725466817106

noncomputable section

/-- A209871: Quasi-Niven (or Quasi-Harshad) numbers: numbers that divided by the sum of their digits leave 1 as remainder.

Offset 1, canonical program `A209871.P15896444725466817106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. -/
def A209871 (n : ℕ) : ℤ :=
  (A209871.P15896444725466817106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. -/
def A209871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210068.P12843734911801841323

`∑[∑[A001993(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A210068.P12843734911801841323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A001993 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210068.P12843734911801841323

noncomputable section

/-- A210068: Expansion of 1/((1-x)^2*(1-x^2)^3*(1-x^3)^2*(1-x^4)).

Offset 0, canonical program `A210068.P12843734911801841323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210068 (n : ℕ) : ℤ :=
  A210068.P12843734911801841323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210189.P11192886446134679088

`A011782(A122197(n+1))*A210039(n+1)`
-/

namespace A210189.P11192886446134679088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A122197 (n + 1)).toNat * A210039 (n + 1)

end

end A210189.P11192886446134679088

noncomputable section

/-- A210189: Triangle of coefficients of polynomials u(n,x) jointly generated with A210190; see the Formula section.

Offset 1, canonical program `A210189.P11192886446134679088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210189 (n : ℕ) : ℤ :=
  A210189.P11192886446134679088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210198.P1741042711181140859

`A207538(n+2)-Δ[A000267(n)]`
-/

namespace A210198.P1741042711181140859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207538 (n + 2) - (f1 (n + 1) - f1 n)

end

end A210198.P1741042711181140859

noncomputable section

/-- A210198: Triangle of coefficients of polynomials v(n,x) jointly generated with A210197; see the Formula section.

Offset 1, canonical program `A210198.P1741042711181140859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210198 (n : ℕ) : ℤ :=
  A210198.P1741042711181140859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210490.P759080343209305434

`∪[(n+1)², A005117(n+1)]`
-/

namespace A210490.P759080343209305434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210490.P759080343209305434

noncomputable section

/-- A210490: Union of positive squares (A000290 \ {0}) and squarefree numbers (A005117).

Offset 1, canonical program `A210490.P759080343209305434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210490 (n : ℕ) : ℤ :=
  (A210490.P759080343209305434.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210994.P14985166472289145165

`comp[A007422(n+2)-1]+1`
-/

namespace A210994.P14985166472289145165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A210994.P14985166472289145165

noncomputable section

/-- A210994: Numbers k such that A000005(k) != 4.

Offset 1, canonical program `A210994.P14985166472289145165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210994 (n : ℕ) : ℤ :=
  (A210994.P14985166472289145165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211431.P6606073131395030940

`Δ[n²]+2*A031876(2*n)`
-/

namespace A211431.P6606073131395030940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2 * A031876 (2 * n)

end

end A211431.P6606073131395030940

noncomputable section

/-- A211431: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^3+(x+y)^2=0.

Offset 0, canonical program `A211431.P6606073131395030940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 597 terms. -/
def A211431 (n : ℕ) : ℤ :=
  A211431.P6606073131395030940.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 597 terms. -/
def A211431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211517.P17636450596556737059

`A031876(2*n)-A005843(A031876(n))`
-/

namespace A211517.P17636450596556737059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031876 (2 * n) - A005843 (A031876 n).toNat

end

end A211517.P17636450596556737059

noncomputable section

/-- A211517: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^3=(x+y)^2.

Offset 0, canonical program `A211517.P17636450596556737059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1007 terms. -/
def A211517 (n : ℕ) : ℤ :=
  A211517.P17636450596556737059.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1007 terms. -/
def A211517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212508.P16126103335911313118

`A212503(n)+A212505(n)-A212511(n)`
-/

namespace A212508.P16126103335911313118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212503 n + (A212505 n - A212511 n)

end

end A212508.P16126103335911313118

noncomputable section

/-- A212508: Number of (w,x,y,z) with all terms in {1,...,n} and w

Offset 0, canonical program `A212508.P16126103335911313118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3430 terms. -/
def A212508 (n : ℕ) : ℤ :=
  A212508.P16126103335911313118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3430 terms. -/
def A212508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212563.P15478231082037985725

`A212562(n)+A212561(n)`
-/

namespace A212563.P15478231082037985725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212562 n + A212561 n

end

end A212563.P15478231082037985725

noncomputable section

/-- A212563: Number of (w,x,y,z) with all terms in {1,...,n} and w+x<=2y+2z.

Offset 0, canonical program `A212563.P15478231082037985725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212563 (n : ℕ) : ℤ :=
  A212563.P15478231082037985725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212572.P15356776701281447964

`A212571(n)+A212570(n)`
-/

namespace A212572.P15356776701281447964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212571 n + A212570 n

end

end A212572.P15356776701281447964

noncomputable section

/-- A212572: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x| <= |x-y| + |y-z|.

Offset 0, canonical program `A212572.P15356776701281447964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212572 (n : ℕ) : ℤ :=
  A212572.P15356776701281447964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212793.P4153428830166235404

`abs(A053864(n+1))`
-/

namespace A212793.P4153428830166235404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053864 (n + 1)|

end

end A212793.P4153428830166235404

noncomputable section

/-- A212793: Characteristic function of cubefree numbers, A004709.

Offset 1, canonical program `A212793.P4153428830166235404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212793 (n : ℕ) : ℤ :=
  A212793.P4153428830166235404.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A213392.P13729878407923535789

`A213393(n)+A092076(n)`
-/

namespace A213392.P13729878407923535789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213393 n + A092076 n

end

end A213392.P13729878407923535789

noncomputable section

/-- A213392: Number of (w,x,y) with all terms in {0,...,n} and 2*max(w,x,y) >= 3*min(w,x,y).

Offset 0, canonical program `A213392.P13729878407923535789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213393, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213392 (n : ℕ) : ℤ :=
  A213392.P13729878407923535789.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213393, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214282.P16569207800241017915

`A037952(n)+A051920(n)-A006481(n+1)`
-/

namespace A214282.P16569207800241017915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n + (A051920 n - A006481 (n + 1))

end

end A214282.P16569207800241017915

noncomputable section

/-- A214282: Largest Euler characteristic of a downset on an n-dimensional cube.

Offset 1, canonical program `A214282.P16569207800241017915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A214282 (n : ℕ) : ℤ :=
  A214282.P16569207800241017915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A214282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214295.P5465842352113574582

`A244611(n+1)%A036584(n)`
-/

namespace A214295.P5465842352113574582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244611 (n + 1)) (A036584 n)

end

end A214295.P5465842352113574582

noncomputable section

/-- A214295: a(n) = 1 if n is a square, -1 if n is three times a square, 0 otherwise.

Offset 1, canonical program `A214295.P5465842352113574582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214295 (n : ℕ) : ℤ :=
  A214295.P5465842352113574582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214318.P2534198729933058842

`2*a(n-1)+A003842(n)` with `a(0)=1`
-/

namespace A214318.P2534198729933058842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A003842 n

end

end A214318.P2534198729933058842

noncomputable section

/-- A214318: Replace the word A214317(n) with its position in A007931.

Offset 1, canonical program `A214318.P2534198729933058842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214318 (n : ℕ) : ℤ :=
  A214318.P2534198729933058842.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003842, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214318.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214606.P10900771240327443616

`gcd(A082495(n+1)+n, n+1)`
-/

namespace A214606.P10900771240327443616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082495 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A214606.P10900771240327443616

noncomputable section

/-- A214606: a(n) = gcd(n, 2^n - 2).

Offset 1, canonical program `A214606.P10900771240327443616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214606 (n : ℕ) : ℤ :=
  (A214606.P10900771240327443616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215102.P5571390027592218489

`∪[A141852(n+1), A214888(n+1)]`
-/

namespace A215102.P5571390027592218489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215102.P5571390027592218489

noncomputable section

/-- A215102: Primes congruent to {2, 3, 5} mod 11.

Offset 1, canonical program `A215102.P5571390027592218489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215102 (n : ℕ) : ℤ :=
  (A215102.P5571390027592218489.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215134.P14482187140007417676

`∪[A141849(n+1), A214888(n+1)]`
-/

namespace A215134.P14482187140007417676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215134.P14482187140007417676

noncomputable section

/-- A215134: Primes congruent to {1, 2, 3} mod 11.

Offset 1, canonical program `A215134.P14482187140007417676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215134 (n : ℕ) : ℤ :=
  (A215134.P14482187140007417676.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215156.P6693637782986479371

`∪[A138629(n+1), A215104(n+1)]`
-/

namespace A215156.P6693637782986479371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215156.P6693637782986479371

noncomputable section

/-- A215156: Primes congruent to {2, 3, 5, 7} mod 17.

Offset 1, canonical program `A215156.P6693637782986479371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215156 (n : ℕ) : ℤ :=
  (A215156.P6693637782986479371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215157.P6095938818374201116

`∪[A141872(n+1), A215105(n+1)]`
-/

namespace A215157.P6095938818374201116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215157.P6095938818374201116

noncomputable section

/-- A215157: Primes congruent to {2, 3, 5, 7} mod 19.

Offset 1, canonical program `A215157.P6095938818374201116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215157 (n : ℕ) : ℤ :=
  (A215157.P6095938818374201116.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215210.P12415954493624348144

`∪[A141854(n+1), A215167(n+1)]`
-/

namespace A215210.P12415954493624348144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215210.P12415954493624348144

noncomputable section

/-- A215210: Primes congruent to {2, 5, 7} mod 11.

Offset 1, canonical program `A215210.P12415954493624348144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215210 (n : ℕ) : ℤ :=
  (A215210.P12415954493624348144.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215211.P16553425419217108754

`∪[A102732(n+1), A215207(n+1)]`
-/

namespace A215211.P16553425419217108754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215211.P16553425419217108754

noncomputable section

/-- A215211: Primes congruent to {2, 5, 7} mod 13.

Offset 1, canonical program `A215211.P16553425419217108754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215211 (n : ℕ) : ℤ :=
  (A215211.P16553425419217108754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215212.P3163214217033629190

`∪[A138629(n+1), A215169(n+1)]`
-/

namespace A215212.P3163214217033629190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215212.P3163214217033629190

noncomputable section

/-- A215212: Primes congruent to {2, 5, 7} mod 17.

Offset 1, canonical program `A215212.P3163214217033629190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215212 (n : ℕ) : ℤ :=
  (A215212.P3163214217033629190.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215213.P7586956025202272390

`∪[A102851(n+1), A215209(n+1)]`
-/

namespace A215213.P7586956025202272390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215213.P7586956025202272390

noncomputable section

/-- A215213: Primes congruent to {2, 5, 7} mod 19.

Offset 1, canonical program `A215213.P7586956025202272390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215213 (n : ℕ) : ℤ :=
  (A215213.P7586956025202272390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215260.P2192226197169425689

`round(∑[log(A008578(n+1))])`
-/

namespace A215260.P2192226197169425689
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A008578 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215260.P2192226197169425689

noncomputable section

/-- A215260: Nearest integer to log(A002110(n)).

Offset 0, canonical program `A215260.P2192226197169425689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215260 (n : ℕ) : ℤ :=
  A215260.P2192226197169425689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215279.P11091986200909952141

`∪[A141851(n+1), A214888(n+1)]`
-/

namespace A215279.P11091986200909952141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P11091986200909952141

noncomputable section

/-- A215279: Primes congruent to {2, 3, 4} mod 11.

Offset 1, canonical program `A215279.P11091986200909952141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215279 (n : ℕ) : ℤ :=
  (A215279.P11091986200909952141.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215305.P11149716039746470790

`∪[A141870(n+1), A215154(n+1)]`
-/

namespace A215305.P11149716039746470790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215305.P11149716039746470790

noncomputable section

/-- A215305: Primes congruent to {1, 2, 3, 4} mod 19.

Offset 1, canonical program `A215305.P11149716039746470790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215305 (n : ℕ) : ℤ :=
  (A215305.P11149716039746470790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215308.P9063674107072396088

`∪[A129484(n+1), A215104(n+1)]`
-/

namespace A215308.P9063674107072396088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215308.P9063674107072396088

noncomputable section

/-- A215308: Primes congruent to {1, 2, 3, 5} mod 17.

Offset 1, canonical program `A215308.P9063674107072396088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215308 (n : ℕ) : ℤ :=
  (A215308.P9063674107072396088.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215309.P9097329543681950437

`∪[A102851(n+1), A215154(n+1)]`
-/

namespace A215309.P9097329543681950437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215309.P9097329543681950437

noncomputable section

/-- A215309: Primes congruent to {1, 2, 3, 5} mod 19.

Offset 1, canonical program `A215309.P9097329543681950437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215309 (n : ℕ) : ℤ :=
  (A215309.P9097329543681950437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215312.P10401023248749367399

`∪[A138623(n+1), A215304(n+1)]`
-/

namespace A215312.P10401023248749367399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P10401023248749367399

noncomputable section

/-- A215312: Primes congruent to {1, 2, 3, 4, 5} mod 17.

Offset 1, canonical program `A215312.P10401023248749367399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215312 (n : ℕ) : ℤ :=
  (A215312.P10401023248749367399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215317.P13650566873263467834

`∪[A102851(n+1), A215282(n+1)]`
-/

namespace A215317.P13650566873263467834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215317.P13650566873263467834

noncomputable section

/-- A215317: Primes congruent to {2, 3, 4, 5} mod 19.

Offset 1, canonical program `A215317.P13650566873263467834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215317 (n : ℕ) : ℤ :=
  (A215317.P13650566873263467834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215324.P2756159153333768749

`∪[A140545(n+1), A215304(n+1)]`
-/

namespace A215324.P2756159153333768749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P2756159153333768749

noncomputable section

/-- A215324: Primes congruent to {1, 2, 3, 4, 6} mod 17.

Offset 1, canonical program `A215324.P2756159153333768749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215324 (n : ℕ) : ℤ :=
  (A215324.P2756159153333768749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215351.P11878786393599793784

`∪[A093350(n+1), A215280(n+1)]`
-/

namespace A215351.P11878786393599793784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215351.P11878786393599793784

noncomputable section

/-- A215351: Primes congruent to {2, 3, 4, 6} mod 13.

Offset 1, canonical program `A215351.P11878786393599793784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215351 (n : ℕ) : ℤ :=
  (A215351.P11878786393599793784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215353.P7904200068461373245

`∪[A141871(n+1), A215282(n+1)]`
-/

namespace A215353.P7904200068461373245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215353.P7904200068461373245

noncomputable section

/-- A215353: Primes congruent to {2, 3, 4, 6} mod 19.

Offset 1, canonical program `A215353.P7904200068461373245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215353 (n : ℕ) : ℤ :=
  (A215353.P7904200068461373245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215384.P2905744902112368946

`∪[A140545(n+1), A215153(n+1)]`
-/

namespace A215384.P2905744902112368946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215384.P2905744902112368946

noncomputable section

/-- A215384: Primes congruent to {1, 2, 3, 6} mod 17.

Offset 1, canonical program `A215384.P2905744902112368946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215384 (n : ℕ) : ℤ :=
  (A215384.P2905744902112368946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215385.P6170897729525375825

`∪[A141871(n+1), A215154(n+1)]`
-/

namespace A215385.P6170897729525375825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215385.P6170897729525375825

noncomputable section

/-- A215385: Primes congruent to {1, 2, 3, 6} mod 19.

Offset 1, canonical program `A215385.P6170897729525375825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215385 (n : ℕ) : ℤ :=
  (A215385.P6170897729525375825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215386.P6364758896401244281

`∪[A141853(n+1), A214888(n+1)]`
-/

namespace A215386.P6364758896401244281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215386.P6364758896401244281

noncomputable section

/-- A215386: Primes congruent to {2, 3, 6} mod 11.

Offset 1, canonical program `A215386.P6364758896401244281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215386 (n : ℕ) : ℤ :=
  (A215386.P6364758896401244281.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215523.P5248230795343589178

`A005097(∑[A091237(n+1)])`
-/

namespace A215523.P5248230795343589178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A215523.P5248230795343589178

noncomputable section

/-- A215523: Slowest increasing sequence of alternate-parity integers m such that 2m+1 is prime.

Offset 1, canonical program `A215523.P5248230795343589178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215523 (n : ℕ) : ℤ :=
  A215523.P5248230795343589178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A215523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216101.P10600526339822882131

`p?[floor(sqrt(A152530(n+2)))]`
-/

namespace A216101.P10600526339822882131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A152530 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216101.P10600526339822882131

noncomputable section

/-- A216101: Primes which are the integer harmonic mean of the previous prime and the following prime.

Offset 1, canonical program `A216101.P10600526339822882131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216101 (n : ℕ) : ℤ :=
  A216101.P10600526339822882131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216124.P18024191600111702472

`p?[floor(sqrt(A152530(n+1)))+1]`
-/

namespace A216124.P18024191600111702472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A152530 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216124.P18024191600111702472

noncomputable section

/-- A216124: Primes which are the nearest integer to the geometric mean of the previous prime and the following prime.

Offset 1, canonical program `A216124.P18024191600111702472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A216124 (n : ℕ) : ℤ :=
  A216124.P18024191600111702472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A216124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216637.P16074414252254142737

`A329355(3*(n+1))%8`
-/

namespace A216637.P16074414252254142737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329355 (3 * (n + 1))) 8

end

end A216637.P16074414252254142737

noncomputable section

/-- A216637: Kolakoski sequence by 3-words.

Offset 1, canonical program `A216637.P16074414252254142737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A216637 (n : ℕ) : ℤ :=
  A216637.P16074414252254142737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A216637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216997.P2574361776485171840

`∩[8*n, A273188(n+2)]`
-/

namespace A216997.P2574361776485171840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216997.P2574361776485171840

noncomputable section

/-- A216997: Multiples of 8 that have a digit sum which is a multiple of 8.

Offset 1, canonical program `A216997.P2574361776485171840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A216997 (n : ℕ) : ℤ :=
  (A216997.P2574361776485171840.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A216997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217564.P832865562934600438

`A079952(n+2)-A079952(n+1)`
-/

namespace A217564.P832865562934600438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079952 (n + 2) - A079952 (n + 1)

end

end A217564.P832865562934600438

noncomputable section

/-- A217564: Number of primes between prime(n)/2 and prime(n+1)/2.

Offset 1, canonical program `A217564.P832865562934600438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217564 (n : ℕ) : ℤ :=
  A217564.P832865562934600438.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217587.P11225916945597616311

`∩[A073102(n+1), A093359(n+1)]`
-/

namespace A217587.P11225916945597616311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217587.P11225916945597616311

noncomputable section

/-- A217587: Primes p of the form 420k + 1 for some k.

Offset 1, canonical program `A217587.P11225916945597616311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A217587 (n : ℕ) : ℤ :=
  (A217587.P11225916945597616311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A217587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217917.P6413253404485104331

`∑[A001223(∑[n+2]-1)]`
-/

namespace A217917.P6413253404485104331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217917.P6413253404485104331

noncomputable section

/-- A217917: Odd numbers that appear in sequence A217916.

Offset 1, canonical program `A217917.P6413253404485104331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A217917 (n : ℕ) : ℤ :=
  A217917.P6413253404485104331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A217917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217920.P8141071150989026145

`A001223(abs(1-∑[n])+1)`
-/

namespace A217920.P8141071150989026145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (|1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| + 1).toNat

end

end A217920.P8141071150989026145

noncomputable section

/-- A217920: Column 1 of A217916 (when formed into a number triangle).

Offset 1, canonical program `A217920.P8141071150989026145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A217920 (n : ℕ) : ℤ :=
  A217920.P8141071150989026145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A217920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218075.P1902989878547894807

`2^A001223(n+1)`
-/

namespace A218075.P1902989878547894807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A218075.P1902989878547894807

noncomputable section

/-- A218075: a(n) = 2^(prime(n+1) - prime(n)).

Offset 1, canonical program `A218075.P1902989878547894807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218075 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A218075.P1902989878547894807.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218460.P14858959770545242725

`A000040(n+1)^A001223(n+1)`
-/

namespace A218460.P14858959770545242725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A218460.P14858959770545242725

noncomputable section

/-- A218460: a(n) = prime(n)^(prime(n + 1) - prime(n)).

Offset 1, canonical program `A218460.P14858959770545242725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A218460 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A218460.P14858959770545242725.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A218460.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218567.P2187862195306331309

`A218506(n+6)-A117143(n+6)`
-/

namespace A218567.P2187862195306331309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218506 (n + 6) - A117143 (n + 6)

end

end A218567.P2187862195306331309

noncomputable section

/-- A218567: Number of partitions p of n such that max(p)-min(p) = 4.

Offset 6, canonical program `A218567.P2187862195306331309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A218567 (n : ℕ) : ℤ :=
  A218567.P2187862195306331309.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A218567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219636.P17854170644708396736

`A307295(n)-2`
-/

namespace A219636.P17854170644708396736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n - 2

end

end A219636.P17854170644708396736

noncomputable section

/-- A219636: Complement of A035336.

Offset 1, canonical program `A219636.P17854170644708396736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219636 (n : ℕ) : ℤ :=
  A219636.P17854170644708396736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220968.P10713292117237987633

`eq[1, A030229(n+1)%2]+1`
-/

namespace A220968.P10713292117237987633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030229 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A220968.P10713292117237987633

noncomputable section

/-- A220968: Positions in A030229 where odd terms occur.

Offset 1, canonical program `A220968.P10713292117237987633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6650 terms. -/
def A220968 (n : ℕ) : ℤ :=
  (A220968.P10713292117237987633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6650 terms. -/
def A220968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220969.P3764813406142439732

`eq[0, A030229(n+2)%2]+2`
-/

namespace A220969.P3764813406142439732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030229 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A220969.P3764813406142439732

noncomputable section

/-- A220969: Positions in A030229 where even terms occur.

Offset 1, canonical program `A220969.P3764813406142439732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3350 terms. -/
def A220969 (n : ℕ) : ℤ :=
  (A220969.P3764813406142439732.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3350 terms. -/
def A220969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222416.P10129870324317811238

`A008475(C(a(n-2), n)+n+1)` with `a(0)=1, a(1)=2`
-/

namespace A222416.P10129870324317811238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008475 (Nat.choose (a (n - 2)).toNat n + n + 1)

end

end A222416.P10129870324317811238

noncomputable section

/-- A222416: If n = Product (p_j^k_j) then a(n) = Sum (p_j^k_j) (a(1) = 1 by convention).

Offset 1, canonical program `A222416.P10129870324317811238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222416 (n : ℕ) : ℤ :=
  A222416.P10129870324317811238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224770.P4749613609057412326

`A020725(eq[4, A000089(n+1)])`
-/

namespace A224770.P4749613609057412326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224770.P4749613609057412326

noncomputable section

/-- A224770: Numbers that are the primitive sum of two squares in exactly two ways.

Offset 1, canonical program `A224770.P4749613609057412326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 615 terms. -/
def A224770 (n : ℕ) : ℤ :=
  A224770.P4749613609057412326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 615 terms. -/
def A224770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224915.P15850589756246024201

`(A001196(n)-n)/2`
-/

namespace A224915.P15850589756246024201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 n - (n : ℤ) : ℚ) / 2

end

end A224915.P15850589756246024201

noncomputable section

/-- A224915: a(n) = Sum_{k=0..n} n XOR k where XOR is the bitwise logical exclusive-or operator.

Offset 0, canonical program `A224915.P15850589756246024201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224915 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A224915.P15850589756246024201.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A224915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224924.P9265397642440561853

`∑[6*A213673(n)+n]`
-/

namespace A224924.P9265397642440561853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A213673 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224924.P9265397642440561853

noncomputable section

/-- A224924: Sum_{i=0..n} Sum_{j=0..n} (i AND j), where AND is the binary logical AND operator.

Offset 0, canonical program `A224924.P9265397642440561853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A224924 (n : ℕ) : ℤ :=
  A224924.P9265397642440561853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A224924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225585.P4488776854350769885

`A129787(n+1)-1`
-/

namespace A225585.P4488776854350769885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129787 (n + 1) - 1

end

end A225585.P4488776854350769885

noncomputable section

/-- A225585: Floor((3^n-1)/n).

Offset 1, canonical program `A225585.P4488776854350769885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A225585 (n : ℕ) : ℤ :=
  A225585.P4488776854350769885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A225585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225822.P16967575723394986569

`2*A131323(n+1)+1`
-/

namespace A225822.P16967575723394986569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131323 (n + 1) + 1

end

end A225822.P16967575723394986569

noncomputable section

/-- A225822: Lesser of adjacent odd numbers with different parity of binary weight and both isolated from odd numbers of same parity of binary weight.

Offset 1, canonical program `A225822.P16967575723394986569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131323, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225822 (n : ℕ) : ℤ :=
  A225822.P16967575723394986569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131323, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A225822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A225948.P11567398781708977786

`(A225975(n)-A106609(n+4))*A106609(n+4)`
-/

namespace A225948.P11567398781708977786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A225975 n - A106609 (n + 4)) * A106609 (n + 4)

end

end A225948.P11567398781708977786

noncomputable section

/-- A225948: a(0) = -1; for n>0, a(n) = numerator(1/4 - 4/n^2).

Offset 0, canonical program `A225948.P11567398781708977786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A225948 (n : ℕ) : ℤ :=
  A225948.P11567398781708977786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A225948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226025.P10601113510136016391

`lt[2, A325937(n+1)]+1`
-/

namespace A226025.P10601113510136016391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A226025.P10601113510136016391

noncomputable section

/-- A226025: Odd composite numbers that are not squares of primes.

Offset 1, canonical program `A226025.P10601113510136016391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226025 (n : ℕ) : ℤ :=
  (A226025.P10601113510136016391.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226221.P11528123328965652543

`eq[A036987(A082495(n+1)), A036987(n)]+1`
-/

namespace A226221.P11528123328965652543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A082495 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226221.P11528123328965652543

noncomputable section

/-- A226221: Numbers n such that 2^n mod n is not a power of 2.

Offset 1, canonical program `A226221.P11528123328965652543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5594 terms. -/
def A226221 (n : ℕ) : ℤ :=
  (A226221.P11528123328965652543.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5594 terms. -/
def A226221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227095.P16618635948200259415

`eq[9, A173528(n+1)]`
-/

namespace A227095.P16618635948200259415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227095.P16618635948200259415

noncomputable section

/-- A227095: Numbers whose base-8 sum of digits is 8.

Offset 1, canonical program `A227095.P16618635948200259415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A227095 (n : ℕ) : ℤ :=
  (A227095.P16618635948200259415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A227095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227182.P3655183784156601540

`A006527(A227177(n))-A227179(n)`
-/

namespace A227182.P3655183784156601540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (A227177 n).toNat - A227179 n

end

end A227182.P3655183784156601540

noncomputable section

/-- A227182: Simple self-inverse permutation of natural numbers: List each block of n^2 - n + 1 numbers from ((n-1)^3 + 2*(n-1))/3 + 1 to (n^3 + 2*n)/3 in reverse order.

Offset 0, canonical program `A227182.P3655183784156601540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227177, A227179, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227182 (n : ℕ) : ℤ :=
  A227182.P3655183784156601540.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227177, A227179, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227182.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227501.P13056102669558752893

`(n%3)!*A227128(n+1)`
-/

namespace A227501.P13056102669558752893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 3) : ℤ) * A227128 (n + 1)

end

end A227501.P13056102669558752893

noncomputable section

/-- A227501: Number of non-congruent solutions of x^2 - xy + y^2 == 1 (mod n).

Offset 1, canonical program `A227501.P13056102669558752893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227501 (n : ℕ) : ℤ :=
  A227501.P13056102669558752893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227625.P4004230417441754442

`A010051(n+1)*A257075(n)`
-/

namespace A227625.P4004230417441754442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A257075 n

end

end A227625.P4004230417441754442

noncomputable section

/-- A227625: Indicator sequence of primes p > 3: k = p mod 6, if k = 5 then a(n) = -1, if k = 1 then a(n) = 1 else a(n) = 0, a(2) = -1, a(3) = 1.

Offset 1, canonical program `A227625.P4004230417441754442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. -/
def A227625 (n : ℕ) : ℤ :=
  A227625.P4004230417441754442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. -/
def A227625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227869.P7864650989961761614

`A128471(comp[A158573(n+1)])`
-/

namespace A227869.P7864650989961761614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158573 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A227869.P7864650989961761614

noncomputable section

/-- A227869: Composite numbers congruent to 7 (mod 30).

Offset 1, canonical program `A227869.P7864650989961761614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. -/
def A227869 (n : ℕ) : ℤ :=
  A227869.P7864650989961761614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. -/
def A227869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227992.P16096606270884194142

`and(A132679(n+1)-1, A179888(n+1))`
-/

namespace A227992.P16096606270884194142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132679 (n + 1) - 1) (A179888 (n + 1))

end

end A227992.P16096606270884194142

noncomputable section

/-- A227992: Numbers m such that the continuants of their binary representations defined in A072347 equal 1.

Offset 1, canonical program `A227992.P16096606270884194142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A227992 (n : ℕ) : ℤ :=
  A227992.P16096606270884194142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A227992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228102.P7143956737170160369

`eq[1, ∑{e}[A063960(2*n+1), #]]`
-/

namespace A228102.P7143956737170160369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228102.P7143956737170160369

noncomputable section

/-- A228102: Numbers n such that sum of all primes <=n is prime.

Offset 1, canonical program `A228102.P7143956737170160369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A228102 (n : ℕ) : ℤ :=
  (A228102.P7143956737170160369.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A228102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228391.P7579944260834308347

`A248198(n+1)-A008975(A000096(n))`
-/

namespace A228391.P7579944260834308347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) - A008975 (A000096 n).toNat

end

end A228391.P7579944260834308347

noncomputable section

/-- A228391: Volume of elliptic cone (rounded down) with semi-minor axis = height = n and semi-major axis = 3*n/2.

Offset 1, canonical program `A228391.P7579944260834308347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A228391 (n : ℕ) : ℤ :=
  A228391.P7579944260834308347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A228391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229064.P12986880071610748840

`A084400(eq[2, A084400(n+2)-A084400(n+1)]+1)`
-/

namespace A229064.P12986880071610748840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2) - A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229064.P12986880071610748840

noncomputable section

/-- A229064: Lesser of Fermi-Dirac twin primes: both a(n)(>=5) and a(n)+2 are in A050376.

Offset 1, canonical program `A229064.P12986880071610748840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1291 terms. -/
def A229064 (n : ℕ) : ℤ :=
  A229064.P12986880071610748840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1291 terms. -/
def A229064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230078.P11379375135510385140

`comp[2*C(A008475(n+1), n)]`
-/

namespace A230078.P11379375135510385140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A008475 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A230078.P11379375135510385140

noncomputable section

/-- A230078: Complement of A138929: positive integers not of the form 2*p^k, k >= 0, p a prime (also 2).

Offset 1, canonical program `A230078.P11379375135510385140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230078 (n : ℕ) : ℤ :=
  (A230078.P11379375135510385140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230102.P14819412051623608779

`A230099(a(n-1))` with `a(0)=1`
-/

namespace A230102.P14819412051623608779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230099 (a (n - 1)).toNat

end

end A230102.P14819412051623608779

noncomputable section

/-- A230102: a(0)=1; thereafter a(n+1) = a(n) + (product of digits of a(n)).

Offset 0, canonical program `A230102.P14819412051623608779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230102 (n : ℕ) : ℤ :=
  A230102.P14819412051623608779.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230124.P9922372933548285315

`∩[A001969(n+1), A005117(n+1)]`
-/

namespace A230124.P9922372933548285315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230124.P9922372933548285315

noncomputable section

/-- A230124: Squarefree evil numbers.

Offset 1, canonical program `A230124.P9922372933548285315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4842 terms. -/
def A230124 (n : ℕ) : ℤ :=
  (A230124.P9922372933548285315.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4842 terms. -/
def A230124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230201.P13558916642779101662

`record[and(n+2, A295304(n+2))]`
-/

namespace A230201.P13558916642779101662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (A295304 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230201.P13558916642779101662

noncomputable section

/-- A230201: Numbers k such that sigma(phi(k)) < k.

Offset 1, canonical program `A230201.P13558916642779101662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230201 (n : ℕ) : ℤ :=
  A230201.P13558916642779101662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230403.P10181876793047725075

`A055881(n+1)-1`
-/

namespace A230403.P10181876793047725075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (n + 1) - 1

end

end A230403.P10181876793047725075

noncomputable section

/-- A230403: a(n) = the largest k such that (k+1)! divides n; the number of trailing zeros in the factorial base representation of n (A007623(n)).

Offset 1, canonical program `A230403.P10181876793047725075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230403 (n : ℕ) : ℤ :=
  A230403.P10181876793047725075.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230549.P16464128658147844203

`A103517(A230550(n+2))-n²`
-/

namespace A230549.P16464128658147844203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A230550 (n + 2)).toNat - (n ^ 2 : ℤ)

end

end A230549.P16464128658147844203

noncomputable section

/-- A230549: Coins left after packing twin hearts patterns into n X n coins.

Offset 2, canonical program `A230549.P16464128658147844203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A230549 (n : ℕ) : ℤ :=
  A230549.P16464128658147844203.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A230549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230849.P4568427976746247957

`A001223(gcd(n, ceil(abs((1-n)/2))))`
-/

namespace A230849.P4568427976746247957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (Int.gcd (n : ℤ) ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉)

end

end A230849.P4568427976746247957

noncomputable section

/-- A230849: A075526 and A000012 interleaved.

Offset 1, canonical program `A230849.P4568427976746247957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230849 (n : ℕ) : ℤ :=
  A230849.P4568427976746247957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231086.P15220536245985747541

`A005101(eq[2, A125115(n+1)]+1)`
-/

namespace A231086.P15220536245985747541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231086.P15220536245985747541

noncomputable section

/-- A231086: Initial members of abundant twins, i.e., values of k such that (k, k+2) are both abundant numbers.

Offset 1, canonical program `A231086.P15220536245985747541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A231086 (n : ℕ) : ℤ :=
  A231086.P15220536245985747541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A231086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231550.P13029068904856309270

`A229763(n)+2*A292944(n)`
-/

namespace A231550.P13029068904856309270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n + 2 * A292944 n

end

end A231550.P13029068904856309270

noncomputable section

/-- A231550: Permutation of nonnegative integers: for each bit[i] in the binary representation, except the most and the least significant bits, set bit[i] = bit[i] XOR bit[i-1], where bit[i-1] is the less significant bit, XOR is the binary logical exclusive or operator.

Offset 0, canonical program `A231550.P13029068904856309270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A231550 (n : ℕ) : ℤ :=
  A231550.P13029068904856309270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A231550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231587.P4482613944097138198

`eq[1, A010051(A001065(∑{d}[n+1, #])+1)]+1`
-/

namespace A231587.P4482613944097138198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001065 (∑ d ∈ Nat.divisors (f3 n), d) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231587.P4482613944097138198

noncomputable section

/-- A231587: Numbers k such that sigma(sigma(k)) - sigma(k) + 1 is prime.

Offset 1, canonical program `A231587.P4482613944097138198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A231587 (n : ℕ) : ℤ :=
  (A231587.P4482613944097138198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. -/
def A231587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231624.P3333891316420223626

`A005100(eq[A125238(n+2), A125238(n+1)]+1)`
-/

namespace A231624.P3333891316420223626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125238 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A231624.P3333891316420223626

noncomputable section

/-- A231624: Smallest sets of 3 consecutive deficient numbers in arithmetic progression. The initial deficient number is listed.

Offset 1, canonical program `A231624.P3333891316420223626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A231624 (n : ℕ) : ℤ :=
  A231624.P3333891316420223626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A231624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231682.P14854101076037231145

`∑[(A173528(n+1)-1)^3]`
-/

namespace A231682.P14854101076037231145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173528 (n + 1) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231682.P14854101076037231145

noncomputable section

/-- A231682: a(n) = Sum_{i=0..n} digsum_8(i)^3, where digsum_8(i) = A053829(i).

Offset 0, canonical program `A231682.P14854101076037231145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231682 (n : ℕ) : ℤ :=
  A231682.P14854101076037231145.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232485.P5428179291815119424

`A230099(a(n-1))` with `a(0)=3`
-/

namespace A232485.P5428179291815119424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A230099 (a (n - 1)).toNat

end

end A232485.P5428179291815119424

noncomputable section

/-- A232485: a(1) = 3; thereafter a(n+1) = a(n) + product of digits of a(n).

Offset 1, canonical program `A232485.P5428179291815119424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232485 (n : ℕ) : ℤ :=
  A232485.P5428179291815119424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232709.P8146322751901021874

`eq[A010879(A007954(n)), A053837(n)]`
-/

namespace A232709.P8146322751901021874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232709.P8146322751901021874

noncomputable section

/-- A232709: Nonnegative integers such that the sum of digits mod 10 equals the product of digits mod 10.

Offset 1, canonical program `A232709.P8146322751901021874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A232709 (n : ℕ) : ℤ :=
  (A232709.P8146322751901021874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A232709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232741.P5104032373726736522

`record[(n+1)/A055881(xor(n+1, A055881(n+1))+1)]`
-/

namespace A232741.P5104032373726736522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055881 (Int.xor (n + 1 : ℤ) (A055881 (n + 1)) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232741.P5104032373726736522

noncomputable section

/-- A232741: Numbers n for which the largest m such that (m-1)! divides n is a prime.

Offset 1, canonical program `A232741.P5104032373726736522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8748 terms. -/
def A232741 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A232741.P5104032373726736522.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8748 terms. -/
def A232741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232744.P13120240317739843502

`record[and(1, A055881(n+1))*(n+1)]`
-/

namespace A232744.P13120240317739843502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055881 (n + 1)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232744.P13120240317739843502

noncomputable section

/-- A232744: Numbers k for which the largest m such that m! divides k is odd.

Offset 1, canonical program `A232744.P13120240317739843502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6372 terms. -/
def A232744 (n : ℕ) : ℤ :=
  A232744.P13120240317739843502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6372 terms. -/
def A232744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233658.P10215787861184337224

`A002293(n+2)-A006632(n+2)`
-/

namespace A233658.P10215787861184337224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 (n + 2) - A006632 (n + 2)

end

end A233658.P10215787861184337224

noncomputable section

/-- A233658: a(n) = 7*binomial(4*n + 7, n)/(4*n + 7).

Offset 0, canonical program `A233658.P10215787861184337224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A233658 (n : ℕ) : ℤ :=
  A233658.P10215787861184337224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A233658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234716.P16236947480037307532

`floor(n/2)-A060715(A028310(n))`
-/

namespace A234716.P16236947480037307532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - A060715 (A028310 n).toNat

end

end A234716.P16236947480037307532

noncomputable section

/-- A234716: Number of odd composite integers k, such that n-1 < k < 2n-2.

Offset 1, canonical program `A234716.P16236947480037307532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234716 (n : ℕ) : ℤ :=
  A234716.P16236947480037307532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235050.P8647976439226390156

`∪[A000040(n+1), A281292(n+1)]`
-/

namespace A235050.P8647976439226390156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P8647976439226390156

noncomputable section

/-- A235050: Squarefree numbers such that none of their prime factors share common 1-bits in the same bit-position of their binary representations.

Offset 1, canonical program `A235050.P8647976439226390156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235050 (n : ℕ) : ℤ :=
  (A235050.P8647976439226390156.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235151.P14554492218157200321

`∩[A268620(n+1), A017197(n)]`
-/

namespace A235151.P14554492218157200321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235151.P14554492218157200321

noncomputable section

/-- A235151: Numbers whose sum of digits is 12.

Offset 1, canonical program `A235151.P14554492218157200321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. -/
def A235151 (n : ℕ) : ℤ :=
  (A235151.P14554492218157200321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. -/
def A235151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235536.P17712812136090816936

`A002293(2*n)`
-/

namespace A235536.P17712812136090816936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 (2 * n)

end

end A235536.P17712812136090816936

noncomputable section

/-- A235536: a(n) = binomial(8*n, 2*n) / (6*n + 1).

Offset 0, canonical program `A235536.P17712812136090816936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002293, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235536 (n : ℕ) : ℤ :=
  A235536.P17712812136090816936.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002293, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236187.P5518244365376147795

`Δ[A008365(n+2)]`
-/

namespace A236187.P5518244365376147795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236187.P5518244365376147795

noncomputable section

/-- A236187: Differences between terms of compacting Eratosthenes sieve for prime(6) = 13.

Offset 1, canonical program `A236187.P5518244365376147795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A236187 (n : ℕ) : ℤ :=
  A236187.P5518244365376147795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A236187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236333.P4796533297437747585

`A080425(n)+A109595(n+1)/A008620(n)`
-/

namespace A236333.P4796533297437747585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080425 n : ℚ) + (A109595 (n + 1) : ℚ) / (A008620 n : ℚ)

end

end A236333.P4796533297437747585

noncomputable section

/-- A236333: The (n-2)-th (n>=3) triple of terms gives coefficients of double trinomial P_n(x) = ((n-2)^2*x^2 + n*x + 2)/2 (see comment).

Offset 3, canonical program `A236333.P4796533297437747585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236333 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236333.P4796533297437747585.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236346.P11164933767683975448

`abs(1-Δ[A057050(n+1)])+1`
-/

namespace A236346.P11164933767683975448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n)| + 1

end

end A236346.P11164933767683975448

noncomputable section

/-- A236346: Manhattan distances between n^2 and (n+1)^2 in a left-aligned triangle with next M natural numbers in row M: 1, 2 3, 4 5 6, 7 8 9 10, etc.

Offset 1, canonical program `A236346.P11164933767683975448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236346 (n : ℕ) : ℤ :=
  A236346.P11164933767683975448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237447.P14909047409678941906

`A237448(A038722(n+1))`
-/

namespace A237447.P14909047409678941906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237448 (A038722 (n + 1)).toNat

end

end A237447.P14909047409678941906

noncomputable section

/-- A237447: Infinite square array: row 1 is the positive integers 1, 2, 3, ..., and on any subsequent row n, n is moved to the front: n, 1, ..., n-1, n+1, n+2, ...

Offset 1, canonical program `A237447.P14909047409678941906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237447 (n : ℕ) : ℤ :=
  A237447.P14909047409678941906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237452.P4723187971781084873

`floor((A064866(n+1)-1)/A074279(n+1))`
-/

namespace A237452.P4723187971781084873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064866 (n + 1) - 1 : ℚ) / (A074279 (n + 1) : ℚ)⌋

end

end A237452.P4723187971781084873

noncomputable section

/-- A237452: Zero-based row index to irregular tables organized as successively larger square matrices.

Offset 1, canonical program `A237452.P4723187971781084873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064866, A074279, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A237452 (n : ℕ) : ℤ :=
  A237452.P4723187971781084873.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064866, A074279, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A237452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A237719.P13944446607882022738

`eq[A000035(n), A242481(n+1)]+1`
-/

namespace A237719.P13944446607882022738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A237719.P13944446607882022738

noncomputable section

/-- A237719: Numbers n such that k(n) = (n(n+1)/2 mod n) = (antisigma(n) mod n) + (sigma(n) mod n).

Offset 1, canonical program `A237719.P13944446607882022738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1756 terms. -/
def A237719 (n : ℕ) : ℤ :=
  (A237719.P13944446607882022738.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1756 terms. -/
def A237719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237990.P9896644272104752625

`filter[A099861(n+1), A121262(#)]`
-/

namespace A237990.P9896644272104752625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A237990.P9896644272104752625

noncomputable section

/-- A237990: Numbers m such that the numbers of primes, even positive integers and odd positive integers less than or equal to m are all even.

Offset 1, canonical program `A237990.P9896644272104752625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2781 terms. -/
def A237990 (n : ℕ) : ℤ :=
  A237990.P9896644272104752625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2781 terms. -/
def A237990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239091.P6341556871755184229

`A061168(n+1)-A011371(n+1)+A000523(n+1)`
-/

namespace A239091.P6341556871755184229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (n + 1) - A011371 (n + 1) + A000523 (n + 1)

end

end A239091.P6341556871755184229

noncomputable section

/-- A239091: Prefix overlap of dictionary consisting of binary expansions of 0 through n.

Offset 1, canonical program `A239091.P6341556871755184229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, A061168, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239091 (n : ℕ) : ℤ :=
  A239091.P6341556871755184229.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, A061168, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239114.P2088922880744114725

`val(A014076(n+1)+1, 2)`
-/

namespace A239114.P2088922880744114725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014076 (n + 1) + 1).toNat 2

end

end A239114.P2088922880744114725

noncomputable section

/-- A239114: Exponent of 2 in prime factorization (i.e., 2-adic valuation) of odd nonprimes A014076(n) + 1.

Offset 1, canonical program `A239114.P2088922880744114725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239114 (n : ℕ) : ℤ :=
  (A239114.P2088922880744114725.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239186.P14905263038245322427

`A239056(n+1)-A239059(n+1)`
-/

namespace A239186.P14905263038245322427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - A239059 (n + 1)

end

end A239186.P14905263038245322427

noncomputable section

/-- A239186: Sum of the largest two parts in the partitions of 4n into 4 parts with smallest part equal to 1.

Offset 1, canonical program `A239186.P14905263038245322427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239186 (n : ℕ) : ℤ :=
  A239186.P14905263038245322427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239289.P2942217961056571404

`comp[A014612(n+1)-1]+1`
-/

namespace A239289.P2942217961056571404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A239289.P2942217961056571404

noncomputable section

/-- A239289: Numbers that are not the product of three (not necessarily distinct) primes.

Offset 1, canonical program `A239289.P2942217961056571404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239289 (n : ℕ) : ℤ :=
  (A239289.P2942217961056571404.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239453.P10419208607055236630

`Δ[A057977(n+1)]+A077957(n)²`
-/

namespace A239453.P10419208607055236630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A077957 n ^ 2

end

end A239453.P10419208607055236630

noncomputable section

/-- A239453: Convolution of the generalized Catalan numbers A057977 with themselves.

Offset 0, canonical program `A239453.P10419208607055236630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A239453 (n : ℕ) : ℤ :=
  A239453.P10419208607055236630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A239453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239734.P8539231742677177354

`∩[A023232(n+1), A023235(n+1)]`
-/

namespace A239734.P8539231742677177354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239734.P8539231742677177354

noncomputable section

/-- A239734: Primes p such that 8p+9 and 9p+8 are both prime.

Offset 1, canonical program `A239734.P8539231742677177354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239734 (n : ℕ) : ℤ :=
  (A239734.P8539231742677177354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240388.P11621996562073166528

`A002487(3*n)/2`
-/

namespace A240388.P11621996562073166528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (3 * n) : ℚ) / 2

end

end A240388.P11621996562073166528

noncomputable section

/-- A240388: A sequence related to the Stern sequence s(n) (A002487), defined by w(n) = s(3n)/2.

Offset 0, canonical program `A240388.P11621996562073166528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A240388.P11621996562073166528.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240558.P15701210074794565359

`2^n*A057977(n)`
-/

namespace A240558.P15701210074794565359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A057977 n

end

end A240558.P15701210074794565359

noncomputable section

/-- A240558: a(n) = 2^n*n!/((floor(n/2)+1)*floor(n/2)!^2).

Offset 0, canonical program `A240558.P15701210074794565359`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240558 (n : ℕ) : ℤ :=
  A240558.P15701210074794565359.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240603.P623960276540613334

`A005117(n+1)+A005117(n+2)`
-/

namespace A240603.P623960276540613334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + A005117 (n + 2)

end

end A240603.P623960276540613334

noncomputable section

/-- A240603: Numbers that are the sum of two successive squarefree numbers.

Offset 1, canonical program `A240603.P623960276540613334`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240603 (n : ℕ) : ℤ :=
  A240603.P623960276540613334.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240877.P3561136259224989296

`a(n-1)+A046151(n)+1` with `a(0)=1`
-/

namespace A240877.P3561136259224989296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A046151 n + 1)

end

end A240877.P3561136259224989296

noncomputable section

/-- A240877: Sum of the denominators of the Farey series of order n (A006843).

Offset 0, canonical program `A240877.P3561136259224989296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240877 (n : ℕ) : ℤ :=
  A240877.P3561136259224989296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240914.P651125426119913968

`record[A051544(n+3)*A072505(n+3)]`
-/

namespace A240914.P651125426119913968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051544 (n + 3) * A072505 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240914.P651125426119913968

noncomputable section

/-- A240914: Semiprimes of the form S(n) + T(n) where S(n) and T(n) are the n-th square and the n-th triangular numbers.

Offset 1, canonical program `A240914.P651125426119913968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A240914 (n : ℕ) : ℤ :=
  A240914.P651125426119913968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A240914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242252.P7500226852341842309

`A370482(A001223(n+1)-1)`
-/

namespace A242252.P7500226852341842309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 (A001223 (n + 1) - 1).toNat

end

end A242252.P7500226852341842309

noncomputable section

/-- A242252: Start with n-th odd prime, and repeatedly subtract the greatest prime until either 0 or 1 remains. (The result is the "primes-greedy residue" of the n-th odd prime, which is "primes-greedy summable" if its residue = 0, as at A242255; see Comments.)

Offset 1, canonical program `A242252.P7500226852341842309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A242252 (n : ℕ) : ℤ :=
  A242252.P7500226852341842309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A242252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242493.P13645807901721560258

`∑[A341642(n+1)]`
-/

namespace A242493.P13645807901721560258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242493.P13645807901721560258

noncomputable section

/-- A242493: a(n) is the number of not-sqrt-smooth numbers ("jagged" numbers) not exceeding n. This is the counting function of A064052.

Offset 1, canonical program `A242493.P13645807901721560258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242493 (n : ℕ) : ℤ :=
  A242493.P13645807901721560258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243111.P6016306481035327470

`A000217(A057062(n+1))-A000040(n+1)`
-/

namespace A243111.P6016306481035327470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A057062 (n + 1)).toNat - A000040 (n + 1)

end

end A243111.P6016306481035327470

noncomputable section

/-- A243111: Difference between the smallest triangular number >= n-th prime and the n-th prime.

Offset 1, canonical program `A243111.P6016306481035327470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243111 (n : ℕ) : ℤ :=
  A243111.P6016306481035327470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243515.P1271760465107560758

`A099265(n+1)+2`
-/

namespace A243515.P1271760465107560758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099265 (n + 1) + 2

end

end A243515.P1271760465107560758

noncomputable section

/-- A243515: Number of length n+2 0..6 arrays with no three elements in a row with pattern aba or abb (with a!=b) and new values 0..6 introduced in 0..6 order.

Offset 1, canonical program `A243515.P1271760465107560758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A243515 (n : ℕ) : ℤ :=
  A243515.P1271760465107560758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A243515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243586.P11937443837050676484

`p?[n*A010051(A007953(n)+3)]`
-/

namespace A243586.P11937443837050676484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (A007953 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243586.P11937443837050676484

noncomputable section

/-- A243586: Primes p such that sum of digits + 3 is prime.

Offset 1, canonical program `A243586.P11937443837050676484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A243586 (n : ℕ) : ℤ :=
  A243586.P11937443837050676484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A243586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243617.P13077696560610616016

`∩[A052382(n+1), A243615(n+1)]`
-/

namespace A243617.P13077696560610616016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243617.P13077696560610616016

noncomputable section

/-- A243617: Numbers whose sum of digits equals the number of bits in its binary expansion. No zeros allowed in the digital expansion.

Offset 1, canonical program `A243617.P13077696560610616016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A243617 (n : ℕ) : ℤ :=
  (A243617.P13077696560610616016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A243617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243621.P1145434379709672563

`∩[A010784(n+1), A243615(n+1)]`
-/

namespace A243621.P1145434379709672563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243621.P1145434379709672563

noncomputable section

/-- A243621: Numbers whose digital sum equals the number of bits in its binary expansion. Repeated digits in decimal expansion are not allowed.

Offset 1, canonical program `A243621.P1145434379709672563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A243621 (n : ℕ) : ℤ :=
  (A243621.P1145434379709672563.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A243621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244219.P3223793585254741010

`record[A110654(n+1)*A244221(A110654(n))]`
-/

namespace A244219.P3223793585254741010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) * A244221 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244219.P3223793585254741010

noncomputable section

/-- A244219: The starting points of runs of consecutive terms with the same parity in A014418 (n represented in Greedy Catalan Base).

Offset 0, canonical program `A244219.P3223793585254741010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4122 terms. -/
def A244219 (n : ℕ) : ℤ :=
  A244219.P3223793585254741010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4122 terms. -/
def A244219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244220.P6843507714044978338

`1-A244221(n)`
-/

namespace A244220.P6843507714044978338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A244221 n

end

end A244220.P6843507714044978338

noncomputable section

/-- A244220: Binary complement of Greedy Catalan Base reduced modulo 2: a(n) = 1 - (A014418(n) modulo 2).

Offset 0, canonical program `A244220.P6843507714044978338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244220 (n : ℕ) : ℤ :=
  A244220.P6843507714044978338.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244220.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244317.P585579045267430053

`∑[char[A294790(n)]]`
-/

namespace A244317.P585579045267430053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294790 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244317.P585579045267430053

noncomputable section

/-- A244317: n occurs A014138(n) times.

Offset 0, canonical program `A244317.P585579045267430053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244317 (n : ℕ) : ℤ :=
  (A244317.P585579045267430053.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244320.P4637654026684033109

`n-A014420(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244320.P4637654026684033109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A014420 n

end

end A244320.P4637654026684033109

noncomputable section

/-- A244320: a(n) = n - A014420(n).

Offset 0, canonical program `A244320.P4637654026684033109`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244320 (n : ℕ) : ℤ :=
  A244320.P4637654026684033109.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244320.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244479.P847924530899818169

`A244478(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244479.P847924530899818169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244478 n : ℚ) / 2

end

end A244479.P847924530899818169

noncomputable section

/-- A244479: A244478(n)/2.

Offset 0, canonical program `A244479.P847924530899818169`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244479 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244479.P847924530899818169.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244479.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244669.P10899017682964738725

`∑{d}[n+1, #]/A306682(n+1)`
-/

namespace A244669.P10899017682964738725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A306682 (n + 1) : ℚ)

end

end A244669.P10899017682964738725

noncomputable section

/-- A244669: Denominators of (product of divisors of n / sum of divisors of n).

Offset 1, canonical program `A244669.P10899017682964738725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244669 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244669.P10899017682964738725.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244737.P1957845354810666174

`lt[A005097(n+1)%5, 2]+2`
-/

namespace A244737.P1957845354810666174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005097 (n + 1)) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A244737.P1957845354810666174

noncomputable section

/-- A244737: Numbers k such that (prime(k) mod 5) is odd.

Offset 1, canonical program `A244737.P1957845354810666174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A244737 (n : ℕ) : ℤ :=
  (A244737.P1957845354810666174.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A244737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244748.P4413186087165087777

`eq[1, A053000(A007954(n))]`
-/

namespace A244748.P4413186087165087777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244748.P4413186087165087777

noncomputable section

/-- A244748: Numbers k such that (product of digits of k)^2 + 1 is prime.

Offset 1, canonical program `A244748.P4413186087165087777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2021 terms. -/
def A244748 (n : ℕ) : ℤ :=
  (A244748.P4413186087165087777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2021 terms. -/
def A244748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244779.P12372990209683995036

`eq[1, gcd(7, A065959(n+1))]+1`
-/

namespace A244779.P12372990209683995036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A065959 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A244779.P12372990209683995036

noncomputable section

/-- A244779: Positive numbers primitively represented by the binary quadratic form (1, 1, 2).

Offset 1, canonical program `A244779.P12372990209683995036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2013 terms. -/
def A244779 (n : ℕ) : ℤ :=
  (A244779.P12372990209683995036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2013 terms. -/
def A244779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244964.P3595985512889717253

`∑{d}[n+1, A080995(#)]`
-/

namespace A244964.P3595985512889717253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080995 d

end

end A244964.P3595985512889717253

noncomputable section

/-- A244964: Number of distinct generalized pentagonal numbers dividing n.

Offset 1, canonical program `A244964.P3595985512889717253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244964 (n : ℕ) : ℤ :=
  A244964.P3595985512889717253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245196.P10632712264817359951

`∑{e}[A090996(A322015(n)), #]`
-/

namespace A245196.P10632712264817359951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A322015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A245196.P10632712264817359951

noncomputable section

/-- A245196: Write n>=1 as either n=2^k-2^r with 0 <= r <= k-1, in which case a(2^k-2^r)=wt(k-r-1), or as n=2^k-2^r+j with 2 <= r <= k-1, 1 <= j < 2^r-1, in which case a(2^k-2^r+j)=a(j)*wt(k-r-1) (where wt(i) = A000120(i)).

Offset 1, canonical program `A245196.P10632712264817359951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245196 (n : ℕ) : ℤ :=
  (A245196.P10632712264817359951.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245497.P12322924336071086064

`2*(A055684(n+3)+1)²`
-/

namespace A245497.P12322924336071086064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A055684 (n + 3) + 1) ^ 2

end

end A245497.P12322924336071086064

noncomputable section

/-- A245497: a(n) = phi(n)^2/2, where phi(n) = A000010(n), the Euler totient function.

Offset 3, canonical program `A245497.P12322924336071086064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245497 (n : ℕ) : ℤ :=
  A245497.P12322924336071086064.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245685.P1437960620465361428

`A247159(n+2)/2`
-/

namespace A245685.P1437960620465361428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247159 (n + 2) : ℚ) / 2

end

end A245685.P1437960620465361428

noncomputable section

/-- A245685: Sigma(2p)/2, for odd primes p.

Offset 1, canonical program `A245685.P1437960620465361428`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245685 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245685.P1437960620465361428.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245685.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246295.P13667216619548819936

`A246294(n+1)-1`
-/

namespace A246295.P13667216619548819936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246294 (n + 1) - 1

end

end A246295.P13667216619548819936

noncomputable section

/-- A246295: Numbers k such that sin(k) < sin(k+1) < sin(k+2) > sin(k+3).

Offset 1, canonical program `A246295.P13667216619548819936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246295 (n : ℕ) : ℤ :=
  A246295.P13667216619548819936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246298.P9002022701830639785

`A246297(n+1)-1`
-/

namespace A246298.P9002022701830639785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246297 (n + 1) - 1

end

end A246298.P9002022701830639785

noncomputable section

/-- A246298: Numbers k such that sin(k) > sin(k+1) > sin(k+2) < sin(k+3).

Offset 1, canonical program `A246298.P9002022701830639785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246298 (n : ℕ) : ℤ :=
  A246298.P9002022701830639785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246411.P12957659941039480171

`∩[A246410(n+1)-1, A246413(n+1)]`
-/

namespace A246411.P12957659941039480171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246410 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246411.P12957659941039480171

noncomputable section

/-- A246411: Positive integers k satisfying csc(k) > csc(k+1) < csc(k+2).

Offset 1, canonical program `A246411.P12957659941039480171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A246411 (n : ℕ) : ℤ :=
  (A246411.P12957659941039480171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9549 terms. -/
def A246411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246412.P12923232252521658891

`∩[A246413(n+1)-1, A246413(n+1)]`
-/

namespace A246412.P12923232252521658891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246412.P12923232252521658891

noncomputable section

/-- A246412: Positive integers k satisfying csc(k) > csc(k+1) > csc(k+2) < csc(k+3).

Offset 1, canonical program `A246412.P12923232252521658891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A246412 (n : ℕ) : ℤ :=
  (A246412.P12923232252521658891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A246412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246659.P12015513086948377768

`A132885(A054925(n+2)-1)`
-/

namespace A246659.P12015513086948377768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132885 (A054925 (n + 2) - 1).toNat

end

end A246659.P12015513086948377768

noncomputable section

/-- A246659: a(n) = binomial(n-h,h)*hypergeometric([h-n/2,h-(n-1)/2],[1],4), h = floor(n/4).

Offset 0, canonical program `A246659.P12015513086948377768`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246659 (n : ℕ) : ℤ :=
  A246659.P12015513086948377768.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246800.P15521848702718216754

`A247984(2*(n+1))`
-/

namespace A246800.P15521848702718216754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247984 (2 * (n + 1))

end

end A246800.P15521848702718216754

noncomputable section

/-- A246800: Even-indexed terms of A247984, a sequence motivated by generalized quadrangles.

Offset 1, canonical program `A246800.P15521848702718216754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A246800 (n : ℕ) : ℤ :=
  A246800.P15521848702718216754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A246800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247425.P17381508495483219201

`A005206(A003259(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A247425.P17381508495483219201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003259 (n + 1)).toNat

end

end A247425.P17381508495483219201

noncomputable section

/-- A247425: A005206(A003259(n)).

Offset 1, canonical program `A247425.P17381508495483219201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247425 (n : ℕ) : ℤ :=
  A247425.P17381508495483219201.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247898.P765327756351924158

`Δ[A247678(n+1)]`
-/

namespace A247898.P765327756351924158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247898.P765327756351924158

noncomputable section

/-- A247898: First differences of A247678.

Offset 1, canonical program `A247898.P765327756351924158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247898 (n : ℕ) : ℤ :=
  A247898.P765327756351924158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248038.P16100474791484475395

`A020338(3*(n+1))`
-/

namespace A248038.P16100474791484475395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (3 * (n + 1))

end

end A248038.P16100474791484475395

noncomputable section

/-- A248038: 3n concatenated with itself.

Offset 1, canonical program `A248038.P16100474791484475395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A248038 (n : ℕ) : ℤ :=
  A248038.P16100474791484475395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A248038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248565.P6743472506241932522

`comp[A248567(n+1)+n]+1`
-/

namespace A248565.P6743472506241932522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248567 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248565.P6743472506241932522

noncomputable section

/-- A248565: Least k such that log(4/3) - sum{1/(h*4^h), h = 1..k} < 1/8^n.

Offset 1, canonical program `A248565.P6743472506241932522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A248565 (n : ℕ) : ℤ :=
  (A248565.P6743472506241932522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A248565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248566.P11564736642265823741

`record[A008611(A006369(n)+A000523(n+1))]`
-/

namespace A248566.P11564736642265823741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A006369 n + A000523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248566.P11564736642265823741

noncomputable section

/-- A248566: Numbers k such that A248565(k+1) = A248565(k) + 1.

Offset 1, canonical program `A248566.P11564736642265823741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248566 (n : ℕ) : ℤ :=
  A248566.P11564736642265823741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249032.P14324740470958142197

`Δ[A075326(n)]`
-/

namespace A249032.P14324740470958142197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249032.P14324740470958142197

noncomputable section

/-- A249032: First differences of A075326.

Offset 0, canonical program `A249032.P14324740470958142197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249032 (n : ℕ) : ℤ :=
  A249032.P14324740470958142197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249063.P16107972138955542777

`floor(∑[A010051(n+1)]*cos(n+1))`
-/

namespace A249063.P16107972138955542777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) * Real.cos (n + 1 : ℝ)⌋

end

end A249063.P16107972138955542777

noncomputable section

/-- A249063: a(n) = floor(cos(n)*PrimePi(n)).

Offset 1, canonical program `A249063.P16107972138955542777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249063 (n : ℕ) : ℤ :=
  A249063.P16107972138955542777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249121.P5600374421228380133

`n-A061762(n)`
-/

namespace A249121.P5600374421228380133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A061762 n

end

end A249121.P5600374421228380133

noncomputable section

/-- A249121: a(n) = n - (sum of digits of n) - (product of digits of n).

Offset 0, canonical program `A249121.P5600374421228380133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249121 (n : ℕ) : ℤ :=
  A249121.P5600374421228380133.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249121.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249355.P15441713476855167026

`A230775(a(n-3)+1)+A010051(n+2)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A249355.P15441713476855167026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A230775 (a (n - 3) + 1).toNat + A010051 (n + 2)

end

end A249355.P15441713476855167026

noncomputable section

/-- A249355: Remainder of n!+2 divided by n+2.

Offset 0, canonical program `A249355.P15441713476855167026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249355 (n : ℕ) : ℤ :=
  A249355.P15441713476855167026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249424.P5276109729741823829

`2*A249428(n+1)+1`
-/

namespace A249424.P5276109729741823829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249428 (n + 1) + 1

end

end A249424.P5276109729741823829

noncomputable section

/-- A249424: Odd integers n such that A249151(n) = (n-1)/2.

Offset 1, canonical program `A249424.P5276109729741823829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A249424 (n : ℕ) : ℤ :=
  A249424.P5276109729741823829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A249424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250428.P396647338487410522

`sqrt(A250427(n+1)*A250429(n+1))`
-/

namespace A250428.P396647338487410522
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250427 (n + 1) * A250429 (n + 1) : ℝ)

end

end A250428.P396647338487410522

noncomputable section

/-- A250428: Number of (n+1)X(4+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250428.P396647338487410522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250428 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A250428.P396647338487410522.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250430.P15424429207822931623

`sqrt(A250429(n+1)*A250431(n+1))`
-/

namespace A250430.P15424429207822931623
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250429 (n + 1) * A250431 (n + 1) : ℝ)

end

end A250430.P15424429207822931623

noncomputable section

/-- A250430: Number of (n+1)X(6+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250430.P15424429207822931623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250430 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A250430.P15424429207822931623.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253721.P2198442329802579597

`A010879(A014612(n+1))`
-/

namespace A253721.P2198442329802579597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A014612 (n + 1)).toNat

end

end A253721.P2198442329802579597

noncomputable section

/-- A253721: Triprimes modulo 10.

Offset 1, canonical program `A253721.P2198442329802579597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253721 (n : ℕ) : ℤ :=
  A253721.P2198442329802579597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255000.P2134887111885202521

`A000040(n+A001223(n+1)+1)`
-/

namespace A255000.P2134887111885202521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n : ℤ) + A001223 (n + 1) + 1).toNat

end

end A255000.P2134887111885202521

noncomputable section

/-- A255000: Prime(n + d(n)), with d(n) = prime(n+1) - prime(n), for n >= 1.

Offset 1, canonical program `A255000.P2134887111885202521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255000 (n : ℕ) : ℤ :=
  A255000.P2134887111885202521.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255000.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255361.P8441760194462435338

`floor(A348665(n+1)/∏{e}[n+1, #+1])`
-/

namespace A255361.P8441760194462435338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348665 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ)⌋

end

end A255361.P8441760194462435338

noncomputable section

/-- A255361: Number of ways n can be represented as x*y+x+y where x>=y>1.

Offset 0, canonical program `A255361.P8441760194462435338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3301 terms. -/
def A255361 (n : ℕ) : ℤ :=
  A255361.P8441760194462435338.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3301 terms. -/
def A255361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255564.P8935569486323325449

`p?[A010051(A014499(n+1))+A000040(n+1)]`
-/

namespace A255564.P8935569486323325449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A014499 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255564.P8935569486323325449

noncomputable section

/-- A255564: Primes having in binary representation a nonprime number of 1's.

Offset 1, canonical program `A255564.P8935569486323325449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A255564 (n : ℕ) : ℤ :=
  A255564.P8935569486323325449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A255564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255646.P5317724431047081380

`A046316(n+1)%10`
-/

namespace A255646.P5317724431047081380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046316 (n + 1)) 10

end

end A255646.P5317724431047081380

noncomputable section

/-- A255646: Odd triprimes modulo 10.

Offset 1, canonical program `A255646.P5317724431047081380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255646 (n : ℕ) : ℤ :=
  A255646.P5317724431047081380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255849.P18420982419730115799

`A080995(A080995(A180446(n))+n)`
-/

namespace A255849.P18420982419730115799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (A080995 (A180446 n).toNat + (n : ℤ)).toNat

end

end A255849.P18420982419730115799

noncomputable section

/-- A255849: Characteristic function of pentagonal numbers.

Offset 0, canonical program `A255849.P18420982419730115799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255849 (n : ℕ) : ℤ :=
  A255849.P18420982419730115799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256077.P10462771814391243740

`A002275(A000523(n+2))`
-/

namespace A256077.P10462771814391243740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A000523 (n + 2)).toNat

end

end A256077.P10462771814391243740

noncomputable section

/-- A256077: Repeat 2^d times the repunit A002275(d); d = 1, 2, 3...

Offset 1, canonical program `A256077.P10462771814391243740`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256077 (n : ℕ) : ℤ :=
  A256077.P10462771814391243740.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256605.P11334752825439384772

`A003418(n+3)/A007917(n+2)`
-/

namespace A256605.P11334752825439384772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 3) : ℚ) / (A007917 (n + 2) : ℚ)

end

end A256605.P11334752825439384772

noncomputable section

/-- A256605: Least k such that n+1 is the n-th divisor of k.

Offset 2, canonical program `A256605.P11334752825439384772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A256605 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256605.P11334752825439384772.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A256605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256690.P103638891413910646

`∏{e}[n+1, A004130(#)]`
-/

namespace A256690.P103638891413910646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A004130 (Nat.factorization (f1 n) p)

end

end A256690.P103638891413910646

noncomputable section

/-- A256690: From fourth root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose fourth power is zeta function; sequence gives numerator of b(n).

Offset 1, canonical program `A256690.P103638891413910646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256690 (n : ℕ) : ℤ :=
  A256690.P103638891413910646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257231.P13727271294226121657

`((n+1)*(n+1))%A000040(∑[A010051(n+1)]+1)`
-/

namespace A257231.P13727271294226121657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) * (n + 1) : ℤ) (A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat)

end

end A257231.P13727271294226121657

noncomputable section

/-- A257231: a(n) = n^2 mod p where p is the least prime greater than n.

Offset 1, canonical program `A257231.P13727271294226121657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257231 (n : ℕ) : ℤ :=
  A257231.P13727271294226121657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257346.P9480988822245406268

`lt[A035162(n+1), 1]+1`
-/

namespace A257346.P9480988822245406268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A257346.P9480988822245406268

noncomputable section

/-- A257346: Numbers not of the form x^2+xy+2y^2.

Offset 1, canonical program `A257346.P9480988822245406268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A257346 (n : ℕ) : ℤ :=
  (A257346.P9480988822245406268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A257346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257832.P15250859016171194730

`∩[(n+1)*A005117(n+1), A005117(n+1)]`
-/

namespace A257832.P15250859016171194730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257832.P15250859016171194730

noncomputable section

/-- A257832: Squarefree numbers that are k*A005117(k) for some k.

Offset 1, canonical program `A257832.P15250859016171194730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A257832 (n : ℕ) : ℤ :=
  (A257832.P15250859016171194730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A257832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258599.P9587233461388836766

`A348018(A000040(n+1))`
-/

namespace A258599.P9587233461388836766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (A000040 (n + 1)).toNat

end

end A258599.P9587233461388836766

noncomputable section

/-- A258599: a(n) is the index m such that A001694(m) = prime(n)^2.

Offset 1, canonical program `A258599.P9587233461388836766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258599 (n : ℕ) : ℤ :=
  A258599.P9587233461388836766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258976.P4357151660865668430

`eq[1, A053000(A000203(n+1))]+1`
-/

namespace A258976.P4357151660865668430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258976.P4357151660865668430

noncomputable section

/-- A258976: Numbers n such that 1 + sigma(n)^2 is prime.

Offset 1, canonical program `A258976.P4357151660865668430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A258976 (n : ℕ) : ℤ :=
  (A258976.P4357151660865668430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A258976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259029.P359648338578640876

`∑[A259024(n+1)]`
-/

namespace A259029.P359648338578640876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259029.P359648338578640876

noncomputable section

/-- A259029: Partial sums of A259024.

Offset 1, canonical program `A259029.P359648338578640876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259029 (n : ℕ) : ℤ :=
  A259029.P359648338578640876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259318.P16819074734522568974

`9*A133111(2*n+1)`
-/

namespace A259318.P16819074734522568974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A133111 (2 * n + 1)

end

end A259318.P16819074734522568974

noncomputable section

/-- A259318: a(n) = A259109(n)*A006331(n) - A259108(n)^2.

Offset 0, canonical program `A259318.P16819074734522568974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A259318 (n : ℕ) : ℤ :=
  A259318.P16819074734522568974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A259318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259408.P373491290013901960

`A014688(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A259408.P373491290013901960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A014688 (a (n - 1)).toNat

end

end A259408.P373491290013901960

noncomputable section

/-- A259408: a(1) = 1 thereafter a(n) = Sum_{m=1..n-1} prime(a(m)).

Offset 1, canonical program `A259408.P373491290013901960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259408 (n : ℕ) : ℤ :=
  A259408.P373491290013901960.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259977.P9407932662562410903

`∏{e}[A005381(n+1), #+1]-2`
-/

namespace A259977.P9407932662562410903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - 2

end

end A259977.P9407932662562410903

noncomputable section

/-- A259977: Number of proper divisors of A005381(n).

Offset 1, canonical program `A259977.P9407932662562410903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A259977 (n : ℕ) : ℤ :=
  A259977.P9407932662562410903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A259977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260187.P12900667191599328450

`(n+1)%A260188(n+1)`
-/

namespace A260187.P12900667191599328450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A260188 (n + 1))

end

end A260187.P12900667191599328450

noncomputable section

/-- A260187: a(n) = n modulo the greatest primorial <= n.

Offset 1, canonical program `A260187.P12900667191599328450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260187 (n : ℕ) : ℤ :=
  A260187.P12900667191599328450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261179.P18166660369402713705

`A002487(A000040(n+1))`
-/

namespace A261179.P18166660369402713705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000040 (n + 1)).toNat

end

end A261179.P18166660369402713705

noncomputable section

/-- A261179: a(n) is the prime(n)-th term of Stern-Brocot sequence, A002487.

Offset 1, canonical program `A261179.P18166660369402713705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002487, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261179 (n : ℕ) : ℤ :=
  A261179.P18166660369402713705.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002487, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261179.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261189.P8766923628387180142

`∩[A039116(n+1), A052413(n+1)]`
-/

namespace A261189.P8766923628387180142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261189.P8766923628387180142

noncomputable section

/-- A261189: Integers such that no subsequence of decimal representation is divisible by 5.

Offset 1, canonical program `A261189.P8766923628387180142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A261189 (n : ℕ) : ℤ :=
  (A261189.P8766923628387180142.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A261189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261196.P10747703722125685864

`A002420(n)*2^n*(-1)^(n*(n+1)/2)`
-/

namespace A261196.P10747703722125685864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002420 n * (2 ^ n : ℤ) : ℝ) * (-1 : ℝ) ^ ((n : ℚ) * ((n + 1 : ℚ) / 2) : ℝ)

end

end A261196.P10747703722125685864

noncomputable section

/-- A261196: Expansion of sqrt(8*x + sqrt(1 + 64*x^2)).

Offset 0, canonical program `A261196.P10747703722125685864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261196 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A261196.P10747703722125685864.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261273.P13419199438936783095

`A002487(A008864(n+1))`
-/

namespace A261273.P13419199438936783095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A008864 (n + 1)).toNat

end

end A261273.P13419199438936783095

noncomputable section

/-- A261273: a(n) is the (prime(n)+1)-th term of Stern-Brocot sequence, A002487.

Offset 1, canonical program `A261273.P13419199438936783095`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261273 (n : ℕ) : ℤ :=
  A261273.P13419199438936783095.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261273.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261465.P5878718986034780619

`A036689(n+2)+A001223(n+1)`
-/

namespace A261465.P5878718986034780619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 2) + A001223 (n + 1)

end

end A261465.P5878718986034780619

noncomputable section

/-- A261465: a(n) = prime(n+1)^2 - prime(n).

Offset 1, canonical program `A261465.P5878718986034780619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A036689, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261465 (n : ℕ) : ℤ :=
  A261465.P5878718986034780619.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A036689, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261470.P15751200643723974198

`A001223(n+3)-A001223(n+1)`
-/

namespace A261470.P15751200643723974198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 3) - A001223 (n + 1)

end

end A261470.P15751200643723974198

noncomputable section

/-- A261470: a(n) = prime(n+3) - prime(n+2) - prime(n+1) + prime(n).

Offset 1, canonical program `A261470.P15751200643723974198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261470 (n : ℕ) : ℤ :=
  A261470.P15751200643723974198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261969.P5982450597750301384

`A078615(n+1)/gcd(A078615(n+1), A304768(n+1))`
-/

namespace A261969.P5982450597750301384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078615 (n + 1) : ℚ) / (Int.gcd (A078615 (n + 1)) (A304768 (n + 1)) : ℚ)

end

end A261969.P5982450597750301384

noncomputable section

/-- A261969: Product of primes dividing n with maximum multiplicity.

Offset 1, canonical program `A261969.P5982450597750301384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261969 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A261969.P5982450597750301384.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262198.P508349440457690952

`lt[A262190(n), A055642(n)]`
-/

namespace A262198.P508349440457690952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262198.P508349440457690952

noncomputable section

/-- A262198: Numbers such that the number of distinct palindromes contained as substring in their decimal representation differs from the length thereof.

Offset 1, canonical program `A262198.P508349440457690952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A262198 (n : ℕ) : ℤ :=
  (A262198.P508349440457690952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A262198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262780.P16622817894387421388

`(1-and(2, n))*A033762(n)`
-/

namespace A262780.P16622817894387421388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A033762 n

end

end A262780.P16622817894387421388

noncomputable section

/-- A262780: Expansion of phi(-x^6) * psi(x^4) + x * phi(-x^2) * psi(x^12) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A262780.P16622817894387421388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262780 (n : ℕ) : ℤ :=
  A262780.P16622817894387421388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264091.P17815593426725919287

`abs(A097948(n+1))*A020695(n)`
-/

namespace A264091.P17815593426725919287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097948 (n + 1)| * A020695 n

end

end A264091.P17815593426725919287

noncomputable section

/-- A264091: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,1 or 2,-2.

Offset 1, canonical program `A264091.P17815593426725919287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A264091 (n : ℕ) : ℤ :=
  A264091.P17815593426725919287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A264091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265204.P5438525566981879451

`∑[abs(Δ[A054585(n)])]`
-/

namespace A265204.P5438525566981879451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265204.P5438525566981879451

noncomputable section

/-- A265204: Sum of phi(i) over squarefree numbers i <= n.

Offset 1, canonical program `A265204.P5438525566981879451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265204 (n : ℕ) : ℤ :=
  A265204.P5438525566981879451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265409.P1403475869823103822

`A265410(n+2)-1`
-/

namespace A265409.P1403475869823103822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265410 (n + 2) - 1

end

end A265409.P1403475869823103822

noncomputable section

/-- A265409: a(n) = index to the nearest inner neighbor in Ulam-style square-spirals using zero-based indexing.

Offset 1, canonical program `A265409.P1403475869823103822`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265409 (n : ℕ) : ℤ :=
  A265409.P1403475869823103822.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A265409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A266216.P13454128615488846391

`A266155(A113638(n))`
-/

namespace A266216.P13454128615488846391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266155 (A113638 n).toNat

end

end A266216.P13454128615488846391

noncomputable section

/-- A266216: Triangle read by rows giving successive states of cellular automaton generated by "Rule 7" initiated with a single ON (black) cell.

Offset 0, canonical program `A266216.P13454128615488846391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266216 (n : ℕ) : ℤ :=
  A266216.P13454128615488846391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266284.P1267948026619733313

`A266980(n)-Δ[A266980(A052928(n))]`
-/

namespace A266284.P1267948026619733313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266980 (A052928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266980 n - (f1 (n + 1) - f1 n)

end

end A266284.P1267948026619733313

noncomputable section

/-- A266284: Decimal representation of the n-th iteration of the "Rule 13" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266284.P1267948026619733313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266284 (n : ℕ) : ℤ :=
  A266284.P1267948026619733313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266516.P4933571818406255111

`or(A051049(n), A266176(n))`
-/

namespace A266516.P4933571818406255111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A266176 n)

end

end A266516.P4933571818406255111

noncomputable section

/-- A266516: Decimal representation of the n-th iteration of the "Rule 29" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266516.P4933571818406255111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266516 (n : ℕ) : ℤ :=
  A266516.P4933571818406255111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267044.P17562880071829113964

`A267538(n)-a(n-1)` with `a(0)=1`
-/

namespace A267044.P17562880071829113964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267538 n - a (n - 1)

end

end A267044.P17562880071829113964

noncomputable section

/-- A267044: Binary representation of the middle column of the "Rule 91" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267044.P17562880071829113964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267044 (n : ℕ) : ℤ :=
  A267044.P17562880071829113964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267067.P6649657315045138186

`p?[A056913(n+1)+2]`
-/

namespace A267067.P6649657315045138186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267067.P6649657315045138186

noncomputable section

/-- A267067: Primes p such that mu(p-2) = 1; that is, p-2 is squarefree and has an even number of prime factors, where mu is the Moebius function (A008683).

Offset 1, canonical program `A267067.P6649657315045138186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1902 terms. -/
def A267067 (n : ℕ) : ℤ :=
  A267067.P6649657315045138186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1902 terms. -/
def A267067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267576.P1331191262355786054

`A267605((2*n)%(n+2))`
-/

namespace A267576.P1331191262355786054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267605 (2 * n % (n + 2))

end

end A267576.P1331191262355786054

noncomputable section

/-- A267576: Triangle read by rows giving successive states of cellular automaton generated by "Rule 167" initiated with a single ON (black) cell.

Offset 0, canonical program `A267576.P1331191262355786054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267576 (n : ℕ) : ℤ :=
  A267576.P1331191262355786054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267845.P5263829636429714484

`and(1, A189827(n+2)%A097922(n)+1)`
-/

namespace A267845.P5263829636429714484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (A189827 (n + 2)) (A097922 n) + 1)

end

end A267845.P5263829636429714484

noncomputable section

/-- A267845: Triangle read by rows giving successive states of cellular automaton generated by "Rule 227" initiated with a single ON (black) cell.

Offset 0, canonical program `A267845.P5263829636429714484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267845 (n : ℕ) : ℤ :=
  A267845.P5263829636429714484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268066.P13943974798166471358

`filter[A016742(n+1), A322980(#)]`
-/

namespace A268066.P13943974798166471358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P13943974798166471358

noncomputable section

/-- A268066: Even numbers coprime to the number of their divisors.

Offset 1, canonical program `A268066.P13943974798166471358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A268066 (n : ℕ) : ℤ :=
  A268066.P13943974798166471358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A268066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268353.P6659771023226482719

`val(A080076(n+1)-1, 2)`
-/

namespace A268353.P6659771023226482719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A080076 (n + 1) - 1).toNat 2

end

end A268353.P6659771023226482719

noncomputable section

/-- A268353: a(n) is the exponent of 2 corresponding to the n-th Proth prime.

Offset 1, canonical program `A268353.P6659771023226482719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268353 (n : ℕ) : ℤ :=
  (A268353.P6659771023226482719.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268443.P9208057385295223950

`(A005705(n)-A268444(n))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268443.P9208057385295223950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005705 n - A268444 n : ℚ) / 4

end

end A268443.P9208057385295223950

noncomputable section

/-- A268443: a(n) = (A005705(n) - A268444(n))/4.

Offset 0, canonical program `A268443.P9208057385295223950`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268443 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268443.P9208057385295223950.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268443.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268476.P10167548556957758468

`p?[A043727(n+1)]`
-/

namespace A268476.P10167548556957758468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268476.P10167548556957758468

noncomputable section

/-- A268476: Balanced evil primes: primes with an even number of runs of 1's in their binary expansion.

Offset 1, canonical program `A268476.P10167548556957758468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2058 terms. -/
def A268476 (n : ℕ) : ℤ :=
  A268476.P10167548556957758468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2058 terms. -/
def A268476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269345.P4206844201345878076

`A061673(n+1)-1`
-/

namespace A269345.P4206844201345878076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1) - 1

end

end A269345.P4206844201345878076

noncomputable section

/-- A269345: Smaller of two consecutive odd numbers that are composites.

Offset 1, canonical program `A269345.P4206844201345878076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269345 (n : ℕ) : ℤ :=
  A269345.P4206844201345878076.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061673, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269346.P749959525114442858

`A016755(lt[2, A121842(2*n+1)])`
-/

namespace A269346.P749959525114442858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A269346.P749959525114442858

noncomputable section

/-- A269346: Perfect cubes that are not the difference of two primes.

Offset 1, canonical program `A269346.P749959525114442858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4480 terms. -/
def A269346 (n : ℕ) : ℤ :=
  A269346.P749959525114442858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4480 terms. -/
def A269346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269362.P8803330186499929129

`A269849(n+7)-6`
-/

namespace A269362.P8803330186499929129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269849 (n + 7) - 6

end

end A269362.P8803330186499929129

noncomputable section

/-- A269362: Least monotonic left inverse of A269389.

Offset 1, canonical program `A269362.P8803330186499929129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269362 (n : ℕ) : ℤ :=
  A269362.P8803330186499929129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270189.P472065122293905227

`lt[0, A001223(n+1)%3]+1`
-/

namespace A270189.P472065122293905227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A270189.P472065122293905227

noncomputable section

/-- A270189: Numbers n for which (prime(n+1)-prime(n)) is not a multiple of three.

Offset 1, canonical program `A270189.P472065122293905227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270189 (n : ℕ) : ℤ :=
  (A270189.P472065122293905227.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270192.P15087363916483575460

`lt[1, A001223(n+1)%3]+1`
-/

namespace A270192.P15087363916483575460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A270192.P15087363916483575460

noncomputable section

/-- A270192: Numbers n for which (prime(n+1)-prime(n)) mod 3 = 2.

Offset 1, canonical program `A270192.P15087363916483575460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270192 (n : ℕ) : ℤ :=
  (A270192.P15087363916483575460.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272231.P17031280439130465035

`round((n+2)/∑[A010051(n+2)])`
-/

namespace A272231.P17031280439130465035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A272231.P17031280439130465035

noncomputable section

/-- A272231: a(n) = round(n / pi(n)) = round(n / A000720(n)) where round(x) rounds up.

Offset 2, canonical program `A272231.P17031280439130465035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272231 (n : ℕ) : ℤ :=
  A272231.P17031280439130465035.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272441.P11204430094904168973

`filter[A380788(n+1), A010051(#)]`
-/

namespace A272441.P11204430094904168973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A272441.P11204430094904168973

noncomputable section

/-- A272441: Primes with a prime number of binary digits.

Offset 1, canonical program `A272441.P11204430094904168973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1052 terms. -/
def A272441 (n : ℕ) : ℤ :=
  A272441.P11204430094904168973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1052 terms. -/
def A272441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272476.P12077626384774782464

`(n+3)%(A007918(n)+3)+n`
-/

namespace A272476.P12077626384774782464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A007918 n + 3) + (n : ℤ)

end

end A272476.P12077626384774782464

noncomputable section

/-- A272476: a(n) = n if n is prime, a(n) = 2*n+3 otherwise.

Offset 0, canonical program `A272476.P12077626384774782464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272476 (n : ℕ) : ℤ :=
  A272476.P12077626384774782464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272799.P16823547657693806826

`(A069977(n+1)+1)/2`
-/

namespace A272799.P16823547657693806826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069977 (n + 1) + 1 : ℚ) / 2

end

end A272799.P16823547657693806826

noncomputable section

/-- A272799: Numbers k such that 2*k - 1 and 2*k + 1 are squarefree.

Offset 1, canonical program `A272799.P16823547657693806826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272799 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A272799.P16823547657693806826.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272799.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272898.P8267313110356408480

`eq[0, A272896(n)]`
-/

namespace A272898.P8267313110356408480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272898.P8267313110356408480

noncomputable section

/-- A272898: Numbers k such that 2^k has equal numbers of odd and even decimal digits.

Offset 1, canonical program `A272898.P8267313110356408480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A272898 (n : ℕ) : ℤ :=
  (A272898.P8267313110356408480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A272898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274224.P8691790841403696657

`lcm(A273972(A052928(n)), A274473(n))`
-/

namespace A274224.P8691790841403696657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A273972 (A052928 n).toNat) (A274473 n)

end

end A274224.P8691790841403696657

noncomputable section

/-- A274224: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A274224.P8691790841403696657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A274224 (n : ℕ) : ℤ :=
  (A274224.P8691790841403696657.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A274224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274263.P9426455071173877905

`floor(A001223(n+2)/A001223(n+1))`
-/

namespace A274263.P9426455071173877905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001223 (n + 2) : ℚ) / (A001223 (n + 1) : ℚ)⌋

end

end A274263.P9426455071173877905

noncomputable section

/-- A274263: Integer part of the ratio of consecutive prime gaps.

Offset 1, canonical program `A274263.P9426455071173877905`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274263 (n : ℕ) : ℤ :=
  A274263.P9426455071173877905.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274515.P13101901733059160930

`A002487(A065361(n)+1)`
-/

namespace A274515.P13101901733059160930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A065361 n + 1).toNat

end

end A274515.P13101901733059160930

noncomputable section

/-- A274515: a(n) is the number of times that the value of ternary n when read as hyperbinary occurs in the set of hyperbinary representations.

Offset 0, canonical program `A274515.P13101901733059160930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274515 (n : ℕ) : ℤ :=
  A274515.P13101901733059160930.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274546.P10366663639167439236

`filter[A005117(n+1), A011558(#)]`
-/

namespace A274546.P10366663639167439236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A274546.P10366663639167439236

noncomputable section

/-- A274546: Numbers m such that 5*m is squarefree.

Offset 1, canonical program `A274546.P10366663639167439236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8332 terms. -/
def A274546 (n : ℕ) : ℤ :=
  A274546.P10366663639167439236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8332 terms. -/
def A274546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274611.P10471680084800426065

`(n+1)/A053165(n+1)*A053165(2*(n+1))`
-/

namespace A274611.P10471680084800426065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053165 (n + 1) : ℚ) * (A053165 (2 * (n + 1)) : ℚ)

end

end A274611.P10471680084800426065

noncomputable section

/-- A274611: a(n) = n/8 if A007814(n) == 3 (mod 4), else a(n) = 2*n.

Offset 1, canonical program `A274611.P10471680084800426065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A274611 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A274611.P10471680084800426065.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A274611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274828.P10579815518661466708

`floor(∑[(-1)^n/A001223(n+1)])`
-/

namespace A274828.P10579815518661466708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) / (A001223 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A274828.P10579815518661466708

noncomputable section

/-- A274828: Integer part of the alternating n-th partial sum of the reciprocals of the successive prime gaps.

Offset 1, canonical program `A274828.P10579815518661466708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274828 (n : ℕ) : ℤ :=
  A274828.P10579815518661466708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275329.P1318522631389672065

`A057977(n)*A008619(n+2)`
-/

namespace A275329.P1318522631389672065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A008619 (n + 2)

end

end A275329.P1318522631389672065

noncomputable section

/-- A275329: a(n) = (2+[n/2])*n!/((1+[n/2])*[n/2]!^2).

Offset 0, canonical program `A275329.P1318522631389672065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275329 (n : ℕ) : ℤ :=
  A275329.P1318522631389672065.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275329.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275392.P15222088404269922783

`A000073(A278045(n+1)+3)`
-/

namespace A275392.P15222088404269922783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A278045 (n + 1) + 3).toNat

end

end A275392.P15222088404269922783

noncomputable section

/-- A275392: Smallest term in the tribonacci Zeckendorf representation of n.

Offset 1, canonical program `A275392.P15222088404269922783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A275392 (n : ℕ) : ℤ :=
  A275392.P15222088404269922783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A275392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275770.P3960562547820392168

`∩[A003627(n+1), A068497(n+1)]`
-/

namespace A275770.P3960562547820392168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275770.P3960562547820392168

noncomputable section

/-- A275770: Primes p == 5 (mod 6) that are not Sophie Germain primes.

Offset 1, canonical program `A275770.P3960562547820392168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5012 terms. -/
def A275770 (n : ℕ) : ℤ :=
  (A275770.P3960562547820392168.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5012 terms. -/
def A275770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276309.P8818592185255775317

`floor(A001223(n+3)/A001223(n+1))`
-/

namespace A276309.P8818592185255775317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001223 (n + 3) : ℚ) / (A001223 (n + 1) : ℚ)⌋

end

end A276309.P8818592185255775317

noncomputable section

/-- A276309: Integer part of the ratio of alternate consecutive prime gaps.

Offset 1, canonical program `A276309.P8818592185255775317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276309 (n : ℕ) : ℤ :=
  A276309.P8818592185255775317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276577.P15427546300831290763

`A255415(n+1)%11`
-/

namespace A276577.P15427546300831290763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255415 (n + 1)) 11

end

end A276577.P15427546300831290763

noncomputable section

/-- A276577: Row 5 of A276580: a(n) = A255415(n) modulo 11.

Offset 1, canonical program `A276577.P15427546300831290763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276577 (n : ℕ) : ℤ :=
  A276577.P15427546300831290763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276812.P2217875081262429176

`A031131(n+1)%A001223(n+1)`
-/

namespace A276812.P2217875081262429176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031131 (n + 1)) (A001223 (n + 1))

end

end A276812.P2217875081262429176

noncomputable section

/-- A276812: Prime gap residues mod previous prime gap.

Offset 1, canonical program `A276812.P2217875081262429176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276812 (n : ℕ) : ℤ :=
  A276812.P2217875081262429176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276936.P4504177896743748025

`eq[char[A325130(n+1)], A000007(n)]`
-/

namespace A276936.P4504177896743748025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276936.P4504177896743748025

noncomputable section

/-- A276936: Numbers m with at least one distinct prime factor prime(k) such that prime(k)^k divides, but prime(k)^(k+1) does not divide m.

Offset 1, canonical program `A276936.P4504177896743748025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3103 terms. -/
def A276936 (n : ℕ) : ℤ :=
  (A276936.P4504177896743748025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3103 terms. -/
def A276936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277934.P4622125546588062441

`and(A281217(n), A282388(n))`
-/

namespace A277934.P4622125546588062441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281217 n) (A282388 n)

end

end A277934.P4622125546588062441

noncomputable section

/-- A277934: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 6", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277934.P4622125546588062441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A277934 (n : ℕ) : ℤ :=
  A277934.P4622125546588062441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A277934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278354.P2699865306502681676

`A265359(A080037(n)-1)-A265359(n+1)`
-/

namespace A278354.P2699865306502681676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A080037 n - 1).toNat - A265359 (n + 1)

end

end A278354.P2699865306502681676

noncomputable section

/-- A278354: Number of neighbors of each new term in a square spiral.

Offset 1, canonical program `A278354.P2699865306502681676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9802 terms. -/
def A278354 (n : ℕ) : ℤ :=
  A278354.P2699865306502681676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9802 terms. -/
def A278354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278545.P6824174565856992994

`A318460(a(1-A103451(n))+1)` with `a(0)=3`
-/

namespace A278545.P6824174565856992994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A318460 (a (1 - A103451 n).toNat + 1).toNat

end

end A278545.P6824174565856992994

noncomputable section

/-- A278545: Number of neighbors of the n-th term in a full square array read by antidiagonals.

Offset 1, canonical program `A278545.P6824174565856992994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278545 (n : ℕ) : ℤ :=
  A278545.P6824174565856992994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278907.P17364321886829146193

`gcd(C(2, 2*n+1), Δ[A257531(n+1)])`
-/

namespace A278907.P17364321886829146193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (2 * n + 1) : ℤ) (f1 (n + 1) - f1 n)

end

end A278907.P17364321886829146193

noncomputable section

/-- A278907: a(n) = floor((n*2^(n+1)+2)/(2*n-(-1)^n+3)) - floor((n*2^(n+1)-2)/(2*n-(-1)^n+3)).

Offset 0, canonical program `A278907.P17364321886829146193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278907 (n : ℕ) : ℤ :=
  (A278907.P17364321886829146193.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278959.P17833903646216685810

`A068670(∑[char[p?[round(8*n/7)]+1]])`
-/

namespace A278959.P17833903646216685810
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278959.P17833903646216685810

noncomputable section

/-- A278959: Length of the string that is generated by the concatenation of all the prime numbers < n.

Offset 0, canonical program `A278959.P17833903646216685810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278959 (n : ℕ) : ℤ :=
  A278959.P17833903646216685810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278997.P18380770767987263801

`A189716(n+1)-1`
-/

namespace A278997.P18380770767987263801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1) - 1

end

end A278997.P18380770767987263801

noncomputable section

/-- A278997: Numbers of the form (3h+2)*3^(2k)-1 or (3h+1)*3^(2k+1)-1 for h,k in N.

Offset 1, canonical program `A278997.P18380770767987263801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278997 (n : ℕ) : ℤ :=
  A278997.P18380770767987263801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279456.P8910636171519638710

`∩[A028260(n+1), A030230(n+1)]`
-/

namespace A279456.P8910636171519638710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279456.P8910636171519638710

noncomputable section

/-- A279456: Numbers k such that number of distinct primes dividing k is odd and number of prime divisors (counted with multiplicity) of k is even.

Offset 1, canonical program `A279456.P8910636171519638710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. -/
def A279456 (n : ℕ) : ℤ :=
  (A279456.P8910636171519638710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. -/
def A279456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279877.P16277548362096035639

`A279879(n)+A282415(n)-A282417(n)`
-/

namespace A279877.P16277548362096035639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279879 n + (A282415 n - A282417 n)

end

end A279877.P16277548362096035639

noncomputable section

/-- A279877: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A279877.P16277548362096035639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A279877 (n : ℕ) : ℤ :=
  A279877.P16277548362096035639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A279877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280046.P8165045859776700570

`and(A003188(n), A057215(A004526(3*(n+1))))`
-/

namespace A280046.P8165045859776700570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003188 n) (A057215 (A004526 (3 * (n + 1))).toNat)

end

end A280046.P8165045859776700570

noncomputable section

/-- A280046: Image of A053838 under the morphism 0 -> 0000, 1 -> 0100, 2 -> 0110.

Offset 0, canonical program `A280046.P8165045859776700570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A280046 (n : ℕ) : ℤ :=
  A280046.P8165045859776700570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A280046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280114.P2386266783669017223

`∑[A175317(n+1)]`
-/

namespace A280114.P2386266783669017223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280114.P2386266783669017223

noncomputable section

/-- A280114: Partial sums of A175317 (Sum_{d|n} pod(d)).

Offset 1, canonical program `A280114.P2386266783669017223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A280114 (n : ℕ) : ℤ :=
  A280114.P2386266783669017223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A280114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280266.P6389486118769418393

`p?[A008578(n+1)*A013632(A048448(n))]`
-/

namespace A280266.P6389486118769418393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A013632 (A048448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280266.P6389486118769418393

noncomputable section

/-- A280266: Primes such that the previous prime plus the next prime plus 1 is also prime.

Offset 1, canonical program `A280266.P6389486118769418393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A280266 (n : ℕ) : ℤ :=
  A280266.P6389486118769418393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A280266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280870.P3114633600401885937

`lcm(A048448(n+2), A048448(n+3))/A048448(n+3)`
-/

namespace A280870.P3114633600401885937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A048448 (n + 2)) (A048448 (n + 3)) : ℚ) / (A048448 (n + 3) : ℚ)

end

end A280870.P3114633600401885937

noncomputable section

/-- A280870: Numerator of the mediant of prime(n) / prime(n+1) and prime(n+2) / prime(n+3).

Offset 1, canonical program `A280870.P3114633600401885937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280870 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A280870.P3114633600401885937.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280871.P12402160092927728937

`lcm(A048448(n+2), A048448(n+3))/A048448(n+2)`
-/

namespace A280871.P12402160092927728937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A048448 (n + 2)) (A048448 (n + 3)) : ℚ) / (A048448 (n + 2) : ℚ)

end

end A280871.P12402160092927728937

noncomputable section

/-- A280871: Denominator of the mediant of prime(n) / prime(n+1) and prime(n+2) / prime(n+3).

Offset 1, canonical program `A280871.P12402160092927728937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280871 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A280871.P12402160092927728937.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179336.P4367121721092430186

`A000040(eq[1, gcd(19, A109066(n+1))]+1)`
-/

namespace A179336.P4367121721092430186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 19 (A109066 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A179336.P4367121721092430186

noncomputable section

/-- A179336: Primes containing at least one prime digit in base 10.

Offset 1, canonical program `A179336.P4367121721092430186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9309 terms. -/
def A179336 (n : ℕ) : ℤ :=
  A179336.P4367121721092430186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9309 terms. -/
def A179336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181290.P6424768068439069294

`A181300(n)+A181296(n)`
-/

namespace A181290.P6424768068439069294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n + A181296 n

end

end A181290.P6424768068439069294

noncomputable section

/-- A181290: The sum of the lengths of the 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n. The length of the 2-composition is the number of columns.

Offset 0, canonical program `A181290.P6424768068439069294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181290 (n : ℕ) : ℤ :=
  A181290.P6424768068439069294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181780.P1093225155761129335

`∩[A002808(n+1), A280199(n+1)]`
-/

namespace A181780.P1093225155761129335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P1093225155761129335

noncomputable section

/-- A181780: Numbers n which are Fermat pseudoprimes to some base b, 2 <= b <= n-2.

Offset 1, canonical program `A181780.P1093225155761129335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181780 (n : ℕ) : ℤ :=
  (A181780.P1093225155761129335.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184812.P6220005435936590522

`A194146(n+1)+A004526(A187396(n+1))`
-/

namespace A184812.P6220005435936590522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194146 (n + 1) + A004526 (A187396 (n + 1)).toNat

end

end A184812.P6220005435936590522

noncomputable section

/-- A184812: n+floor(ns/r)+floor(nt/r), where r=sqrt(2), s=sqrt(3), t=sqrt(5).

Offset 1, canonical program `A184812.P6220005435936590522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8603 terms. -/
def A184812 (n : ℕ) : ℤ :=
  A184812.P6220005435936590522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8603 terms. -/
def A184812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184997.P5003667817694060681

`A002472((∑[n]-1)%(n+1)+1)`
-/

namespace A184997.P5003667817694060681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A184997.P5003667817694060681

noncomputable section

/-- A184997: Number of distinct remainders that are possible when a safe prime p is divided by n (for p > 2*n+1).

Offset 1, canonical program `A184997.P5003667817694060681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184997 (n : ℕ) : ℤ :=
  A184997.P5003667817694060681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185013.P16152479727158586121

`A179184(n)-A185114(n)`
-/

namespace A185013.P16152479727158586121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n - A185114 n

end

end A185013.P16152479727158586121

noncomputable section

/-- A185013: Characteristic function of {3}.

Offset 0, canonical program `A185013.P16152479727158586121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179184, A185114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185013 (n : ℕ) : ℤ :=
  A185013.P16152479727158586121.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179184, A185114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185014.P14310411706898602348

`A185114(n)-A185115(n)`
-/

namespace A185014.P14310411706898602348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 n - A185115 n

end

end A185014.P14310411706898602348

noncomputable section

/-- A185014: Characteristic function of four.

Offset 0, canonical program `A185014.P14310411706898602348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185114, A185115, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185014 (n : ℕ) : ℤ :=
  A185014.P14310411706898602348.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185114, A185115, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186235.P7235591364071035020

`A294473(n+2)+A294473(n+3)-A294139(n+2)`
-/

namespace A186235.P7235591364071035020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294473 (n + 2) + (A294473 (n + 3) - A294139 (n + 2))

end

end A186235.P7235591364071035020

noncomputable section

/-- A186235: Total Wiener index of double-star trees with n nodes.

Offset 4, canonical program `A186235.P7235591364071035020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A186235 (n : ℕ) : ℤ :=
  A186235.P7235591364071035020.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A186235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187059.P4673971385048971106

`2*A000788(n)-A249154(n)`
-/

namespace A187059.P4673971385048971106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000788 n - A249154 n

end

end A187059.P4673971385048971106

noncomputable section

/-- A187059: The exponent of highest power of 2 dividing the product of the elements of the n-th row of Pascal's triangle (A001142).

Offset 0, canonical program `A187059.P4673971385048971106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187059 (n : ℕ) : ℤ :=
  A187059.P4673971385048971106.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A188011.P12941502559468805709

`A188014(A014675(n)+n)`
-/

namespace A188011.P12941502559468805709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A014675 n + (n : ℤ)).toNat

end

end A188011.P12941502559468805709

noncomputable section

/-- A188011: a(n) = floor(n*r) - floor(n*r-k*r) - floor(k*r), where r=(1+sqrt(5))/2, k=3.

Offset 1, canonical program `A188011.P12941502559468805709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188011 (n : ℕ) : ℤ :=
  A188011.P12941502559468805709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188016.P8834039496715161497

`2*A188435(n+1)-A110654(n)`
-/

namespace A188016.P8834039496715161497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188435 (n + 1) - A110654 n

end

end A188016.P8834039496715161497

noncomputable section

/-- A188016: Positions of 1 in A188014; complement of A188015.

Offset 1, canonical program `A188016.P8834039496715161497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188016 (n : ℕ) : ℤ :=
  A188016.P8834039496715161497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189707.P8858125208000123597

`comp[A189708(n+1)-1]+1`
-/

namespace A189707.P8858125208000123597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189708 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189707.P8858125208000123597

noncomputable section

/-- A189707: Positions of 0 in A189706; complement of A189708.

Offset 1, canonical program `A189707.P8858125208000123597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189707 (n : ℕ) : ℤ :=
  (A189707.P8858125208000123597.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190641.P9957446413890152593

`eq[1, A359466(n+1)]+1`
-/

namespace A190641.P9957446413890152593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190641.P9957446413890152593

noncomputable section

/-- A190641: Numbers having exactly one non-unitary prime factor.

Offset 1, canonical program `A190641.P9957446413890152593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190641 (n : ℕ) : ℤ :=
  (A190641.P9957446413890152593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202097.P9792887605728792110

`sqrt(A202096(n+1)*A202098(n+1))`
-/

namespace A202097.P9792887605728792110
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202096 (n + 1) * A202098 (n + 1) : ℝ)

end

end A202097.P9792887605728792110

noncomputable section

/-- A202097: Number of (n+2) X 7 binary arrays avoiding patterns 001 and 011 in rows and columns.

Offset 1, canonical program `A202097.P9792887605728792110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202097 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A202097.P9792887605728792110.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203444.P8004498472754597362

`lt[0, char[A001615(n+1)]]`
-/

namespace A203444.P8004498472754597362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A203444.P8004498472754597362

noncomputable section

/-- A203444: Numbers in range of Dedekind Psi function: A001615.

Offset 1, canonical program `A203444.P8004498472754597362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2154 terms. -/
def A203444 (n : ℕ) : ℤ :=
  (A203444.P8004498472754597362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2154 terms. -/
def A203444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204993.P9458464966889589479

`A014695(A007913(n+1))²*A007913(n+1)`
-/

namespace A204993.P9458464966889589479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A007913 (n + 1)).toNat ^ 2 * A007913 (n + 1)

end

end A204993.P9458464966889589479

noncomputable section

/-- A204993: Negative of the discriminant of quadratic field Q(sqrt(-n)).

Offset 1, canonical program `A204993.P9458464966889589479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204993 (n : ℕ) : ℤ :=
  A204993.P9458464966889589479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207946.P1343383528588518597

`A207249(n+1)/A206981(n+1)*A207250(n+1)`
-/

namespace A207946.P1343383528588518597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207249 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207250 (n + 1) : ℚ)

end

end A207946.P1343383528588518597

noncomputable section

/-- A207946: Number of nX5 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

Offset 1, canonical program `A207946.P1343383528588518597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A207946 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207946.P1343383528588518597.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A207946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208115.P15927855600313523114

`sqrt(A208114(n+1)*A208116(n+1))`
-/

namespace A208115.P15927855600313523114
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A208114 (n + 1) * A208116 (n + 1) : ℝ)

end

end A208115.P15927855600313523114

noncomputable section

/-- A208115: Number of n X 5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

Offset 1, canonical program `A208115.P15927855600313523114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208115 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208115.P15927855600313523114.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210849.P10752492383084115412

`(A048899(n)²+1)/5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A210849.P10752492383084115412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048899 n ^ 2 + 1 : ℚ) / (5 ^ n : ℚ)

end

end A210849.P10752492383084115412

noncomputable section

/-- A210849: a(n) = (A048899(n)^2 + 1)/5^n, n >= 0.

Offset 0, canonical program `A210849.P10752492383084115412`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210849 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A210849.P10752492383084115412.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A210849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211484.P16708190854633799120

`∩[A030231(n+1), A366762(n+1)]`
-/

namespace A211484.P16708190854633799120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211484.P16708190854633799120

noncomputable section

/-- A211484: Numbers for which the canonical prime factorization contains only an even number of exponents, all of which are congruent to 1 modulo 3.

Offset 1, canonical program `A211484.P16708190854633799120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A211484 (n : ℕ) : ℤ :=
  (A211484.P16708190854633799120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A211484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215103.P15709415160951109386

`∪[A100202(n+1), A215168(n+1)]`
-/

namespace A215103.P15709415160951109386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215103.P15709415160951109386

noncomputable section

/-- A215103: Primes congruent to {2, 3, 5} mod 13.

Offset 1, canonical program `A215103.P15709415160951109386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215103 (n : ℕ) : ℤ :=
  (A215103.P15709415160951109386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215135.P664234046293665165

`∪[A100202(n+1), A215391(n+1)]`
-/

namespace A215135.P664234046293665165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215135.P664234046293665165

noncomputable section

/-- A215135: Primes congruent to {1, 2, 3} mod 13.

Offset 1, canonical program `A215135.P664234046293665165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215135 (n : ℕ) : ℤ :=
  (A215135.P664234046293665165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215319.P9914766944936450930

`∪[A215131(n+1), A215391(n+1)]`
-/

namespace A215319.P9914766944936450930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215319.P9914766944936450930

noncomputable section

/-- A215319: Primes congruent to {1, 2, 3, 5, 6} mod 13.

Offset 1, canonical program `A215319.P9914766944936450930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215319 (n : ℕ) : ℤ :=
  (A215319.P9914766944936450930.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221865.P10154145289672600813

`eq[A055671(n), A060278(n+2)]`
-/

namespace A221865.P10154145289672600813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060278 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221865.P10154145289672600813

noncomputable section

/-- A221865: The nonprimes k such that k + 2 is either a prime or a semiprime.

Offset 1, canonical program `A221865.P10154145289672600813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3221 terms. -/
def A221865 (n : ℕ) : ℤ :=
  (A221865.P10154145289672600813.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3221 terms. -/
def A221865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222637.P13679431788888405413

`A007913(A000522(n))`
-/

namespace A222637.P13679431788888405413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000522 n).toNat

end

end A222637.P13679431788888405413

noncomputable section

/-- A222637: Squarefree part of the total number of arrangements of a set with n elements.

Offset 0, canonical program `A222637.P13679431788888405413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222637 (n : ℕ) : ℤ :=
  A222637.P13679431788888405413.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A222637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226165.P14809637293415994692

`A007913(A077425(n+1))`
-/

namespace A226165.P14809637293415994692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A077425 (n + 1)).toNat

end

end A226165.P14809637293415994692

noncomputable section

/-- A226165: Squarefree part of A077425(n) (numbers 4*k+1, k>=0, not a square).

Offset 1, canonical program `A226165.P14809637293415994692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226165 (n : ℕ) : ℤ :=
  A226165.P14809637293415994692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226217.P16285020928925633820

`p?[A007913(A000040(n+1)*A077648(n+1))]`
-/

namespace A226217.P16285020928925633820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000040 (n + 1) * A077648 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226217.P16285020928925633820

noncomputable section

/-- A226217: Primes whose first digit is a square.

Offset 1, canonical program `A226217.P16285020928925633820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. -/
def A226217 (n : ℕ) : ℤ :=
  A226217.P16285020928925633820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. -/
def A226217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226693.P1469923415629545988

`A007913(A079896(n+1))`
-/

namespace A226693.P1469923415629545988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A079896 (n + 1)).toNat

end

end A226693.P1469923415629545988

noncomputable section

/-- A226693: Squarefree parts of A079896(n), n>= 1.

Offset 1, canonical program `A226693.P1469923415629545988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226693 (n : ℕ) : ℤ :=
  A226693.P1469923415629545988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228359.P12401264959366660209

`eq[0, A055671(A061601(n))]+1`
-/

namespace A228359.P12401264959366660209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A228359.P12401264959366660209

noncomputable section

/-- A228359: Numbers m whose 10's complement is not prime, i.e., 10^k-m, where k is the number of digits of m, is not prime.

Offset 1, canonical program `A228359.P12401264959366660209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228359 (n : ℕ) : ℤ :=
  (A228359.P12401264959366660209.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229125.P17586178144269697586

`eq[1, A054024(A007913(n+2))]+2`
-/

namespace A229125.P17586178144269697586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A007913 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A229125.P17586178144269697586

noncomputable section

/-- A229125: Numbers of the form p * m^2, where p is prime and m > 0: union of A228056 and A000040.

Offset 1, canonical program `A229125.P17586178144269697586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229125 (n : ℕ) : ℤ :=
  (A229125.P17586178144269697586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229143.P13243434220709827465

`∑{d}[n+1, A117188(#-1)*A259024((n+1)/#)]`
-/

namespace A229143.P13243434220709827465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117188 (d - 1) * A259024 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A229143.P13243434220709827465

noncomputable section

/-- A229143: Expansion of (b(q^3) - b(q)) / 3 in powers of q where b() is a cubic AGM theta function.

Offset 1, canonical program `A229143.P13243434220709827465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229143 (n : ℕ) : ℤ :=
  A229143.P13243434220709827465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230048.P9001472186708211094

`record[A007913(A000069(n+1))]`
-/

namespace A230048.P9001472186708211094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000069 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230048.P9001472186708211094

noncomputable section

/-- A230048: Squarefree odious numbers.

Offset 1, canonical program `A230048.P9001472186708211094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6253 terms. -/
def A230048 (n : ℕ) : ℤ :=
  A230048.P9001472186708211094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6253 terms. -/
def A230048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230293.P6138807695865852207

`∑[A230294(2*(n+1))-A230294(2*n+1)]`
-/

namespace A230293.P6138807695865852207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230294 (2 * (n + 1)) - A230294 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230293.P6138807695865852207

noncomputable section

/-- A230293: a(n) = Sum_{i=1..n} d(8*i+1) - Sum_{i=1..n} d(4*i+1), where d(n) = A000005(n).

Offset 1, canonical program `A230293.P6138807695865852207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A230293 (n : ℕ) : ℤ :=
  A230293.P6138807695865852207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A230293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232096.P12065407412472529929

`∑{d}[∑[n+1], A316341(#)]`
-/

namespace A232096.P12065407412472529929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316341 d

end

end A232096.P12065407412472529929

noncomputable section

/-- A232096: a(n) = largest m such that m! divides 1+2+...+n; a(n) = A055881(A000217(n)).

Offset 1, canonical program `A232096.P12065407412472529929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 361 terms. -/
def A232096 (n : ℕ) : ℤ :=
  A232096.P12065407412472529929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 361 terms. -/
def A232096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233348.P14961469874671804838

`ceil(A289413(n+2)/3)`
-/

namespace A233348.P14961469874671804838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289413 (n + 2) : ℚ) / 3⌉

end

end A233348.P14961469874671804838

noncomputable section

/-- A233348: Numbers n such that 3*n+2 and 3*n-2 are both prime for n multiple of 5 (A008587).

Offset 1, canonical program `A233348.P14961469874671804838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A233348 (n : ℕ) : ℤ :=
  A233348.P14961469874671804838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A233348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234638.P1618051015318160246

`lt[A007913(A000203(n+1)), 3]+1`
-/

namespace A234638.P1618051015318160246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A234638.P1618051015318160246

noncomputable section

/-- A234638: Numbers n for which sigma(sigma(n)) is odd.

Offset 1, canonical program `A234638.P1618051015318160246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. -/
def A234638 (n : ℕ) : ℤ :=
  (A234638.P1618051015318160246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. -/
def A234638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235394.P10443878114079601900

`p?[A004682(n+1)]`
-/

namespace A235394.P10443878114079601900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235394.P10443878114079601900

noncomputable section

/-- A235394: Primes whose decimal representation is a valid number in base 8 and interpreted as such is again a prime.

Offset 1, canonical program `A235394.P10443878114079601900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. -/
def A235394 (n : ℕ) : ℤ :=
  A235394.P10443878114079601900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. -/
def A235394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235395.P5398117862764279832

`p?[A004683(n+1)]`
-/

namespace A235395.P5398117862764279832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235395.P5398117862764279832

noncomputable section

/-- A235395: Primes whose decimal representation is a valid number in base 9 and interpreted as such is again a prime.

Offset 1, canonical program `A235395.P5398117862764279832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. -/
def A235395 (n : ℕ) : ℤ :=
  A235395.P5398117862764279832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. -/
def A235395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235698.P16093469187567191101

`a(n-1)+A054054(a(n-1))+1` with `a(0)=0`
-/

namespace A235698.P16093469187567191101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A054054 (a (n - 1)).toNat + 1)

end

end A235698.P16093469187567191101

noncomputable section

/-- A235698: a(n+1) = a(n) + (smallest digit of a(n)) + 1, a(0)=0.

Offset 0, canonical program `A235698.P16093469187567191101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4592 terms. -/
def A235698 (n : ℕ) : ℤ :=
  A235698.P16093469187567191101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4592 terms. -/
def A235698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237989.P12319660110514710715

`∩[A377994(n+1), A016825(n)]`
-/

namespace A237989.P12319660110514710715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237989.P12319660110514710715

noncomputable section

/-- A237989: Numbers m such that the numbers of primes, even positive integers and odd positive integers less than or equal to m are all odd.

Offset 1, canonical program `A237989.P12319660110514710715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A237989 (n : ℕ) : ℤ :=
  (A237989.P12319660110514710715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A237989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240689.P7296709912588250351

`A038800(A000040(n+1))`
-/

namespace A240689.P7296709912588250351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (A000040 (n + 1)).toNat

end

end A240689.P7296709912588250351

noncomputable section

/-- A240689: The number of values of the digit k for which prime(n)*10+k is prime.

Offset 1, canonical program `A240689.P7296709912588250351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A240689 (n : ℕ) : ℤ :=
  A240689.P7296709912588250351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A240689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243128.P17897595652621250645

`filter[A389634(n+1), A323239(#)]`
-/

namespace A243128.P17897595652621250645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A243128.P17897595652621250645

noncomputable section

/-- A243128: Squarefree numbers k such that 4k <= sum of squarefree divisors of 4k.

Offset 1, canonical program `A243128.P17897595652621250645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. -/
def A243128 (n : ℕ) : ℤ :=
  A243128.P17897595652621250645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. -/
def A243128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244963.P8812478636684031312

`A000203(n+1)-A001615(n+1)`
-/

namespace A244963.P8812478636684031312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A001615 (n + 1)

end

end A244963.P8812478636684031312

noncomputable section

/-- A244963: a(n) = sigma(n) - n * Product_{p|n, p prime} (1 + 1/p).

Offset 1, canonical program `A244963.P8812478636684031312`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244963 (n : ℕ) : ℤ :=
  A244963.P8812478636684031312.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244963.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245365.P4902612867877700399

`A000326(A114439(n+1))`
-/

namespace A245365.P4902612867877700399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A114439 (n + 1)).toNat

end

end A245365.P4902612867877700399

noncomputable section

/-- A245365: Semiprimes of the form n*(3*n-1)/2.

Offset 1, canonical program `A245365.P4902612867877700399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A245365 (n : ℕ) : ℤ :=
  A245365.P4902612867877700399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A245365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255805.P14998431550882228973

`lt[0, A309959(n)]`
-/

namespace A255805.P14998431550882228973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255805.P14998431550882228973

noncomputable section

/-- A255805: Numbers with no zeros in base-8 representation.

Offset 1, canonical program `A255805.P14998431550882228973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A255805 (n : ℕ) : ℤ :=
  (A255805.P14998431550882228973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A255805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256944.P11403239477205446670

`A257282(n+1)²`
-/

namespace A256944.P11403239477205446670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 1) ^ 2

end

end A256944.P11403239477205446670

noncomputable section

/-- A256944: Squares which are not the sums of two consecutive nonsquares.

Offset 1, canonical program `A256944.P11403239477205446670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257282, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256944 (n : ℕ) : ℤ :=
  A256944.P11403239477205446670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257282, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258410.P8287264255903413337

`A031448(n+2)-1`
-/

namespace A258410.P8287264255903413337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031448 (n + 2) - 1

end

end A258410.P8287264255903413337

noncomputable section

/-- A258410: Nonnegative integers with an equal number of occurrences of all digits in bijective base-2 numeration.

Offset 1, canonical program `A258410.P8287264255903413337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258410 (n : ℕ) : ℤ :=
  A258410.P8287264255903413337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258775.P1042665196751657827

`eq[1, A289356(A000203(n+1))]+1`
-/

namespace A258775.P1042665196751657827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258775.P1042665196751657827

noncomputable section

/-- A258775: Numbers n such that 1 + sigma(n)+ sigma(n)^2 is prime.

Offset 1, canonical program `A258775.P1042665196751657827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 712 terms. -/
def A258775 (n : ℕ) : ℤ :=
  (A258775.P1042665196751657827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 712 terms. -/
def A258775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259022.P10610587729386923475

`A259024(2*n+1)`
-/

namespace A259022.P10610587729386923475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259024 (2 * n + 1)

end

end A259022.P10610587729386923475

noncomputable section

/-- A259022: Period 9 sequence [ 1, -1, -1, 1, 0, -1, 1, 1, -1, ...].

Offset 0, canonical program `A259022.P10610587729386923475`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259024, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259022 (n : ℕ) : ℤ :=
  A259022.P10610587729386923475.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259024, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259030.P661161244229555766

`A080891(A259445(n+1)+A065883(3*(n+1)))`
-/

namespace A259030.P661161244229555766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (A259445 (n + 1) + A065883 (3 * (n + 1))).toNat

end

end A259030.P661161244229555766

noncomputable section

/-- A259030: a(n) is multiplicative with a(2^e) = -(1 - (-1)^e) / 2 if e > 0, a(p^e) = Kronecker(5, p)^e if p > 2.

Offset 1, canonical program `A259030.P661161244229555766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A259030 (n : ℕ) : ℤ :=
  A259030.P661161244229555766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A259030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259185.P964314148643136700

`eq[1, A289356(A039653(n))]`
-/

namespace A259185.P964314148643136700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259185.P964314148643136700

noncomputable section

/-- A259185: Numbers n such that 1 - sigma(n) + sigma(n)^2 is prime.

Offset 1, canonical program `A259185.P964314148643136700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A259185 (n : ℕ) : ℤ :=
  (A259185.P964314148643136700.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A259185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259775.P2988660272303760513

`A029644(A184676(n+2))`
-/

namespace A259775.P2988660272303760513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 (A184676 (n + 2)).toNat

end

end A259775.P2988660272303760513

noncomputable section

/-- A259775: Stepped path in P(k,n) array of k-th partial sums of squares (A000290).

Offset 1, canonical program `A259775.P2988660272303760513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A259775 (n : ℕ) : ℤ :=
  A259775.P2988660272303760513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A259775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259936.P5139569933053793896

`A305150(∏{p}[n+1, #])`
-/

namespace A259936.P5139569933053793896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305150 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A259936.P5139569933053793896

noncomputable section

/-- A259936: Number of ways to express the integer n as a product of its unitary divisors (A034444).

Offset 1, canonical program `A259936.P5139569933053793896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259936 (n : ℕ) : ℤ :=
  A259936.P5139569933053793896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264387.P2910925617492252044

`(A039956(n+1)-2)/4`
-/

namespace A264387.P2910925617492252044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039956 (n + 1) - 2 : ℚ) / 4

end

end A264387.P2910925617492252044

noncomputable section

/-- A264387: 2*(1+2*a(n)) is the n-th even squarefree number A039956(n), n >= 1.

Offset 1, canonical program `A264387.P2910925617492252044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264387 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A264387.P2910925617492252044.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265721.P16975176845016475372

`and(A266176(n), A266668(n))`
-/

namespace A265721.P16975176845016475372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266176 n) (A266668 n)

end

end A265721.P16975176845016475372

noncomputable section

/-- A265721: Decimal representation of the n-th iteration of the "Rule 1" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A265721.P16975176845016475372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A265721 (n : ℕ) : ℤ :=
  A265721.P16975176845016475372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A265721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268922.P7597364741946538744

`(2*A048899(n))%A000351(n)`
-/

namespace A268922.P7597364741946538744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A048899 n) (A000351 n)

end

end A268922.P7597364741946538744

noncomputable section

/-- A268922: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-4). These are the 1 mod 5 numbers, except for n = 0.

Offset 0, canonical program `A268922.P7597364741946538744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A268922 (n : ℕ) : ℤ :=
  A268922.P7597364741946538744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A268922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271859.P17621566559710261846

`∑[and(2, -A312927(n+1))]-n`
-/

namespace A271859.P17621566559710261846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-A312927 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A271859.P17621566559710261846

noncomputable section

/-- A271859: Six steps forward, five steps back.

Offset 0, canonical program `A271859.P17621566559710261846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A271859 (n : ℕ) : ℤ :=
  A271859.P17621566559710261846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A271859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273929.P9327079910848474256

`eq[n, A007913(or(4, n))]`
-/

namespace A273929.P9327079910848474256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.lor 4 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273929.P9327079910848474256

noncomputable section

/-- A273929: Numbers that are congruent to {5, 6, 7} mod 8 and are squarefree.

Offset 1, canonical program `A273929.P9327079910848474256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273929 (n : ℕ) : ℤ :=
  (A273929.P9327079910848474256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274141.P9075115195362516254

`eq[1, A294619(A336551(n+1))]+1`
-/

namespace A274141.P9075115195362516254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 (A336551 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274141.P9075115195362516254

noncomputable section

/-- A274141: Positive numbers divisible by 3^3 or by the square of some other prime.

Offset 1, canonical program `A274141.P9075115195362516254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274141 (n : ℕ) : ℤ :=
  (A274141.P9075115195362516254.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277549.P6170443303380261541

`eq[1, and(3, A007913(n+1))]+1`
-/

namespace A277549.P6170443303380261541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A007913 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277549.P6170443303380261541

noncomputable section

/-- A277549: Numbers k such that k/4^m == 1 (mod 4), where 4^m is the greatest power of 4 that divides k.

Offset 1, canonical program `A277549.P6170443303380261541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277549 (n : ℕ) : ℤ :=
  (A277549.P6170443303380261541.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278615.P1388989089013917215

`A271893(n)+A271894(n)+A271895(n)`
-/

namespace A278615.P1388989089013917215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271893 n + A271894 n + A271895 n

end

end A278615.P1388989089013917215

noncomputable section

/-- A278615: Sum of terms in level n of TRIP - Stern sequence associated with permutation triple (e,13,23).

Offset 0, canonical program `A278615.P1388989089013917215`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A271893, A271894, A271895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278615 (n : ℕ) : ℤ :=
  A278615.P1388989089013917215.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A271893, A271894, A271895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278615.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279071.P17899804211645114015

`∪[A023162(n+1), A023173(n+1)]`
-/

namespace A279071.P17899804211645114015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279071.P17899804211645114015

noncomputable section

/-- A279071: Numbers k such that Fibonacci(k) == +-1 (mod k).

Offset 1, canonical program `A279071.P17899804211645114015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279071 (n : ℕ) : ℤ :=
  (A279071.P17899804211645114015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279457.P2488202562983807817

`∩[A026422(n+1), A030230(n+1)]`
-/

namespace A279457.P2488202562983807817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279457.P2488202562983807817

noncomputable section

/-- A279457: Numbers k such that number of distinct primes dividing k is odd and number of prime divisors (counted with multiplicity) of k is odd.

Offset 1, canonical program `A279457.P2488202562983807817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7355 terms. -/
def A279457 (n : ℕ) : ℤ :=
  (A279457.P2488202562983807817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7355 terms. -/
def A279457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180746.P15395400586110658836

`∑[eq[0, A046080(n+1)]+1]`
-/

namespace A180746.P15395400586110658836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180746.P15395400586110658836

noncomputable section

/-- A180746: Partial sums of A004144.

Offset 1, canonical program `A180746.P15395400586110658836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6789 terms. -/
def A180746 (n : ℕ) : ℤ :=
  (A180746.P15395400586110658836.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6789 terms. -/
def A180746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183100.P18299511243728987249

`A183098(n+1)+1`
-/

namespace A183100.P18299511243728987249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183098 (n + 1) + 1

end

end A183100.P18299511243728987249

noncomputable section

/-- A183100: a(n) is the sum of divisors d of n which are either 1 or of the form Product_{i} (p_i^e_i) where at least one e_i = 1.

Offset 1, canonical program `A183100.P18299511243728987249`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183100 (n : ℕ) : ℤ :=
  A183100.P18299511243728987249.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183103.P15947555032237724278

`A007955(n+1)/A183102(n+1)`
-/

namespace A183103.P15947555032237724278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A183102 (n + 1) : ℚ)

end

end A183103.P15947555032237724278

noncomputable section

/-- A183103: a(n) = product of non-powerful divisors d of n.

Offset 1, canonical program `A183103.P15947555032237724278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A183102, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183103 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183103.P15947555032237724278.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A183102, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183299.P11168409399824116378

`A000037(n+1)-1`
-/

namespace A183299.P11168409399824116378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1) - 1

end

end A183299.P11168409399824116378

noncomputable section

/-- A183299: Complement of A005563.

Offset 1, canonical program `A183299.P11168409399824116378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183299 (n : ℕ) : ℤ :=
  A183299.P11168409399824116378.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184616.P11536552118196738147

`A184615(n)-n`
-/

namespace A184616.P11536552118196738147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184615 n - (n : ℤ)

end

end A184616.P11536552118196738147

noncomputable section

/-- A184616: Negated negative parts of the nonadjacent forms.

Offset 0, canonical program `A184616.P11536552118196738147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184616 (n : ℕ) : ℤ :=
  A184616.P11536552118196738147.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184616.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185670.P7671735460308608982

`A100613(n+1)-A063985(n+1)`
-/

namespace A185670.P7671735460308608982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100613 (n + 1) - A063985 (n + 1)

end

end A185670.P7671735460308608982

noncomputable section

/-- A185670: Number of pairs (x,y) with 1 <= x < y <= n with at least one common factor.

Offset 1, canonical program `A185670.P7671735460308608982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063985, A100613, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185670 (n : ℕ) : ℤ :=
  A185670.P7671735460308608982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063985, A100613, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A194579.P6279070803059388328

`eq[1, A010051(A023890(n+1))]+1`
-/

namespace A194579.P6279070803059388328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A023890 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A194579.P6279070803059388328

noncomputable section

/-- A194579: Numbers whose sum of the their nonprime divisors is prime.

Offset 1, canonical program `A194579.P6279070803059388328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A194579 (n : ℕ) : ℤ :=
  (A194579.P6279070803059388328.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A194579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196872.P11700309351671591619

`A000037(a(A103128(n)-1)²)` with `a(0)=1`
-/

namespace A196872.P11700309351671591619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000037 (a (A103128 n - 1).toNat ^ 2).toNat

end

end A196872.P11700309351671591619

noncomputable section

/-- A196872: A007018(n) repeated A007018(n) times.

Offset 0, canonical program `A196872.P11700309351671591619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1353 terms. -/
def A196872 (n : ℕ) : ℤ :=
  A196872.P11700309351671591619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1353 terms. -/
def A196872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198192.P297267374256015153

`n*A000120(n)-A073642(n)`
-/

namespace A198192.P297267374256015153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 n - A073642 n

end

end A198192.P297267374256015153

noncomputable section

/-- A198192: Replace 2^k in the binary representation of n with n-k (i.e. if n = 2^a + 2^b + 2^c + ... then a(n) = (n-a) + (n-b) + (n-c) + ...).

Offset 0, canonical program `A198192.P297267374256015153`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A198192 (n : ℕ) : ℤ :=
  A198192.P297267374256015153.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A198192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A198772.P17358713934612375480

`eq[1, A088534(n)]`
-/

namespace A198772.P17358713934612375480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198772.P17358713934612375480

noncomputable section

/-- A198772: Numbers having exactly one representation by the quadratic form x^2 + xy + y^2 with 0 <= x <= y.

Offset 1, canonical program `A198772.P17358713934612375480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1602 terms. -/
def A198772 (n : ℕ) : ℤ :=
  (A198772.P17358713934612375480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1602 terms. -/
def A198772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198773.P9580269409749445234

`eq[2, A088534(n)]`
-/

namespace A198773.P9580269409749445234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198773.P9580269409749445234

noncomputable section

/-- A198773: Numbers having exactly two representations by the quadratic form x^2+xy+y^2 with 0<=x<=y.

Offset 1, canonical program `A198773.P9580269409749445234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A198773 (n : ℕ) : ℤ :=
  (A198773.P9580269409749445234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A198773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205098.P10471539786565330894

`A204822(n+1)-A005101(n+1)`
-/

namespace A205098.P10471539786565330894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A005101 (n + 1)

end

end A205098.P10471539786565330894

noncomputable section

/-- A205098: Sum of proper divisors (A001065) of abundant numbers (A005101).

Offset 1, canonical program `A205098.P10471539786565330894`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A204822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A205098 (n : ℕ) : ℤ :=
  A205098.P10471539786565330894.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A204822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A205098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209922.P13829106373828721409

`eq[1, and(1, A046080(n+1))]+1`
-/

namespace A209922.P13829106373828721409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046080 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209922.P13829106373828721409

noncomputable section

/-- A209922: Position of negative values in A209661 and A209662.

Offset 1, canonical program `A209922.P13829106373828721409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9853 terms. -/
def A209922 (n : ℕ) : ℤ :=
  (A209922.P13829106373828721409.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9853 terms. -/
def A209922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213649.P8547143096557772554

`A000720(A145445(n+1))-n`
-/

namespace A213649.P8547143096557772554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A145445 (n + 1)).toNat - (n : ℤ)

end

end A213649.P8547143096557772554

noncomputable section

/-- A213649: Smallest k such that there exists a square between prime(n) and prime(n+k).

Offset 1, canonical program `A213649.P8547143096557772554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A213649 (n : ℕ) : ℤ :=
  A213649.P8547143096557772554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A213649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216607.P4106284041166377357

`(A167268(n+1)-2)/4`
-/

namespace A216607.P4106284041166377357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167268 (n + 1) - 2 : ℚ) / 4

end

end A216607.P4106284041166377357

noncomputable section

/-- A216607: The sequence used to represent partition binary diagram as an array.

Offset 1, canonical program `A216607.P4106284041166377357`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167268, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216607 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216607.P4106284041166377357.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167268, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216607.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217575.P8898210276207211588

`A063657(n+1)-1`
-/

namespace A217575.P8898210276207211588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1) - 1

end

end A217575.P8898210276207211588

noncomputable section

/-- A217575: Numbers n such that floor(sqrt(n)) = floor(n/floor(sqrt(n)))-1.

Offset 1, canonical program `A217575.P8898210276207211588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063657, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217575 (n : ℕ) : ℤ :=
  A217575.P8898210276207211588.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063657, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A221280.P2827351552118637345

`eq[A066829(n+2), A066829(n+1)]+1`
-/

namespace A221280.P2827351552118637345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A221280.P2827351552118637345

noncomputable section

/-- A221280: Numbers m such that lambda(m) = lambda(m+1), where lambda(n) = A008836(n) is the Liouville function.

Offset 1, canonical program `A221280.P2827351552118637345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221280 (n : ℕ) : ℤ :=
  (A221280.P2827351552118637345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226590.P8032106787844506352

`A182627(n+1)-A093653(n+1)`
-/

namespace A226590.P8032106787844506352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182627 (n + 1) - A093653 (n + 1)

end

end A226590.P8032106787844506352

noncomputable section

/-- A226590: Total number of 0's in binary expansion of all divisors of n.

Offset 1, canonical program `A226590.P8032106787844506352`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093653, A182627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A226590 (n : ℕ) : ℤ :=
  A226590.P8032106787844506352.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093653, A182627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A226590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227696.P2497490565356281867

`(-1)^n*A033687(n)`
-/

namespace A227696.P2497490565356281867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A033687 n

end

end A227696.P2497490565356281867

noncomputable section

/-- A227696: Expansion of f(x^3)^3 / f(x) in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A227696.P2497490565356281867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227696 (n : ℕ) : ℤ :=
  A227696.P2497490565356281867.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227696.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228372.P12115013803354651000

`A006218(A002808(n+1))-2*A002808(n+1)+1`
-/

namespace A228372.P12115013803354651000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A002808 (n + 1)).toNat - 2 * A002808 (n + 1) + 1

end

end A228372.P12115013803354651000

noncomputable section

/-- A228372: Number of nontrivial divisors in the first n composites.

Offset 1, canonical program `A228372.P12115013803354651000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A006218, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228372 (n : ℕ) : ℤ :=
  A228372.P12115013803354651000.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A006218, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A228372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230877.P5743359450081405431

`A000120(n)*A070939(n)-A073642(n)`
-/

namespace A230877.P5743359450081405431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A070939 n - A073642 n

end

end A230877.P5743359450081405431

noncomputable section

/-- A230877: If n = Sum_{i=0..m} c(i)*2^i, c(i) = 0 or 1, then a(n) = Sum_{i=0..m} (m+1-i)*c(i).

Offset 0, canonical program `A230877.P5743359450081405431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A230877 (n : ℕ) : ℤ :=
  A230877.P5743359450081405431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A230877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233931.P3085312143408834757

`A011371(n)-A233905(n)`
-/

namespace A233931.P3085312143408834757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A233905 n

end

end A233931.P3085312143408834757

noncomputable section

/-- A233931: a(2n) = a(n) + n, a(2n+1) = a(n), with a(0)=0.

Offset 0, canonical program `A233931.P3085312143408834757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233931 (n : ℕ) : ℤ :=
  A233931.P3085312143408834757.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233905, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A233931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236677.P5108655105669203284

`(1-a(A000523(n)))*a(A053645(n))` with `a(0)=1, a(1)=0`
-/

namespace A236677.P5108655105669203284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (1 - a (A000523 n).toNat) * a (A053645 n).toNat

end

end A236677.P5108655105669203284

noncomputable section

/-- A236677: a(0)=1; for n>0, a(n) = (1-a(floor(log_2(n)))) * a(n-msb(n)); characteristic function of A079599.

Offset 0, canonical program `A236677.P5108655105669203284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, A053645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A236677 (n : ℕ) : ℤ :=
  A236677.P5108655105669203284.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, A053645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A236677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243499.P13821279400790425584

`(1+A023416(n))*a(A053645(n))` with `a(0)=1`
-/

namespace A243499.P13821279400790425584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 + A023416 n) * a (A053645 n).toNat

end

end A243499.P13821279400790425584

noncomputable section

/-- A243499: Product of parts of integer partitions as enumerated in the table A125106.

Offset 0, canonical program `A243499.P13821279400790425584`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243499 (n : ℕ) : ℤ :=
  A243499.P13821279400790425584.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244741.P4318009301390436834

`∪[A049509(n+1), A016817(n)]`
-/

namespace A244741.P4318009301390436834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244741.P4318009301390436834

noncomputable section

/-- A244741: Numbers k such that (prime(k) mod 5) == 2 (mod 3).

Offset 1, canonical program `A244741.P4318009301390436834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244741 (n : ℕ) : ℤ :=
  (A244741.P4318009301390436834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245773.P11491610189230660149

`A064987(n+1)-A245484(n+1)`
-/

namespace A245773.P11491610189230660149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1) - A245484 (n + 1)

end

end A245773.P11491610189230660149

noncomputable section

/-- A245773: a(n) = n*sigma(n) - Sum_{(d

Offset 1, canonical program `A245773.P11491610189230660149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, A245484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245773 (n : ℕ) : ℤ :=
  A245773.P11491610189230660149.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, A245484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248057.P14508397276911672393

`A157971(n+1)+1`
-/

namespace A248057.P14508397276911672393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157971 (n + 1) + 1

end

end A248057.P14508397276911672393

noncomputable section

/-- A248057: Positions of 1,1 in the Thue-Morse sequence (A010060).

Offset 1, canonical program `A248057.P14508397276911672393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248057 (n : ℕ) : ℤ :=
  A248057.P14508397276911672393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249566.P7379888211326183224

`eq[4, A182134(n+1)]+1`
-/

namespace A249566.P7379888211326183224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249566.P7379888211326183224

noncomputable section

/-- A249566: Numbers n such that A182134(n) = 4, i.e., there exist exactly four primes p with prime(n) < p < prime(n)^(1+1/n).

Offset 1, canonical program `A249566.P7379888211326183224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A249566 (n : ℕ) : ℤ :=
  (A249566.P7379888211326183224.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A249566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252596.P10033558872996091197

`A008578(A000720(a(n-1)+1)+a(n-1)%3+1)` with `a(0)=5`
-/

namespace A252596.P10033558872996091197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A008578 (A000720 (a (n - 1) + 1).toNat + Int.tmod (a (n - 1)) 3 + 1).toNat

end

end A252596.P10033558872996091197

noncomputable section

/-- A252596: Let a(n-1)=p and k=pi(p); then a(n)=prime(k+mod(p,3)).

Offset 1, canonical program `A252596.P10033558872996091197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6204 terms. -/
def A252596 (n : ℕ) : ℤ :=
  A252596.P10033558872996091197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6204 terms. -/
def A252596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256452.P9976460767317744789

`1+2*A046080(n+1)`
-/

namespace A256452.P9976460767317744789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A046080 (n + 1)

end

end A256452.P9976460767317744789

noncomputable section

/-- A256452: Number of integer solutions to n^2 = x^2 + y^2 with x>0, y>=0.

Offset 1, canonical program `A256452.P9976460767317744789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256452 (n : ℕ) : ℤ :=
  A256452.P9976460767317744789.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260299.P3373541649294797026

`A000720(A260298(n+1))`
-/

namespace A260299.P3373541649294797026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A260298 (n + 1)).toNat

end

end A260299.P3373541649294797026

noncomputable section

/-- A260299: Numbers k such that hyperfactorial(prime(k)-1) == 1 (mod prime(k)).

Offset 1, canonical program `A260299.P3373541649294797026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A260299 (n : ℕ) : ℤ :=
  A260299.P3373541649294797026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A260299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263086.P10455314351694714214

`A263084(n+1)+A263085(n+1)`
-/

namespace A263086.P10455314351694714214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263084 (n + 1) + A263085 (n + 1)

end

end A263086.P10455314351694714214

noncomputable section

/-- A263086: Partial sums of A099777, where A099777(n) gives the number of divisors of n-th even number.

Offset 1, canonical program `A263086.P10455314351694714214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A263084, A263085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A263086 (n : ℕ) : ℤ :=
  A263086.P10455314351694714214.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A263084, A263085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A263086.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269399.P17209248092647305028

`eq[3, gcd(3, A001223(n+6))]`
-/

namespace A269399.P17209248092647305028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A001223 (n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269399.P17209248092647305028

noncomputable section

/-- A269399: Numbers n for which prime(n+7)-prime(n+6) is a multiple of three.

Offset 1, canonical program `A269399.P17209248092647305028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269399 (n : ℕ) : ℤ :=
  (A269399.P17209248092647305028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179941.P10165421184791566737

`A000005(n+1)-A000038(A096582(n+1))`
-/

namespace A179941.P10165421184791566737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000038 (A096582 (n + 1)).toNat

end

end A179941.P10165421184791566737

noncomputable section

/-- A179941: Number of times n appears in a 100 X 100 multiplication table.

Offset 1, canonical program `A179941.P10165421184791566737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A179941 (n : ℕ) : ℤ :=
  A179941.P10165421184791566737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A179941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180633.P2164913276918581847

`1+a(A000010(n)-1)` with `a(0)=0, a(1)=1`
-/

namespace A180633.P2164913276918581847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A000010 n - 1).toNat

end

end A180633.P2164913276918581847

noncomputable section

/-- A180633: a(n) is the number of iterations of function f(x) = phi(x)-1 needed before zero is reached, when starting from the initial value x = n.

Offset 0, canonical program `A180633.P2164913276918581847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180633 (n : ℕ) : ℤ :=
  (A180633.P2164913276918581847.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180633.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180636.P9143062899493612538

`∩[A343107(n+1), A343110(n+1)]`
-/

namespace A180636.P9143062899493612538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180636.P9143062899493612538

noncomputable section

/-- A180636: Positive integers that are divisible by neither 8k-1 nor 8k+1, for all k > 0.

Offset 1, canonical program `A180636.P9143062899493612538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3002 terms. -/
def A180636 (n : ℕ) : ℤ :=
  (A180636.P9143062899493612538.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3002 terms. -/
def A180636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180643.P1113260082687038800

`eq[1, A053000(A000010(n+1))]+1`
-/

namespace A180643.P1113260082687038800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180643.P1113260082687038800

noncomputable section

/-- A180643: Numbers n such that 1+phi(n)^2 is prime. Phi is the Euler totient function.

Offset 1, canonical program `A180643.P1113260082687038800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2006 terms. -/
def A180643 (n : ℕ) : ℤ :=
  (A180643.P1113260082687038800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2006 terms. -/
def A180643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182816.P15538426458893494896

`∏{p}[n+1, gcd(n, A000010(#))+1]`
-/

namespace A182816.P15538426458893494896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Int.gcd (n : ℤ) (A000010 p) + 1)

end

end A182816.P15538426458893494896

noncomputable section

/-- A182816: Number of values b in Z/nZ such that b^n = b.

Offset 1, canonical program `A182816.P15538426458893494896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182816 (n : ℕ) : ℤ :=
  (A182816.P15538426458893494896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182859.P12166969725301177304

`lt[A262684(n+1), 1]+1`
-/

namespace A182859.P12166969725301177304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262684 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A182859.P12166969725301177304

noncomputable section

/-- A182859: Numbers n such that A036459(n) is even.

Offset 1, canonical program `A182859.P12166969725301177304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182859 (n : ℕ) : ℤ :=
  (A182859.P12166969725301177304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183093.P17608197149960352927

`A000005(n+1)-A005361(n+1)`
-/

namespace A183093.P17608197149960352927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A005361 (n + 1)

end

end A183093.P17608197149960352927

noncomputable section

/-- A183093: a(n) = number of divisors d of n such that d > 1 and if d = Product_(i) (p_i^e_i) then e_i = 1 for at least one i.

Offset 1, canonical program `A183093.P17608197149960352927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183093 (n : ℕ) : ℤ :=
  A183093.P17608197149960352927.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184389.P17134985288461301427

`A000217(A000005(n+1))`
-/

namespace A184389.P17134985288461301427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (n + 1)).toNat

end

end A184389.P17134985288461301427

noncomputable section

/-- A184389: a(n) = Sum_{k=1..tau(n)} k, where tau is the number of divisors of n (A000005).

Offset 1, canonical program `A184389.P17134985288461301427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184389 (n : ℕ) : ℤ :=
  A184389.P17134985288461301427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184856.P17031283218585029754

`A000040(A184858(n+1))`
-/

namespace A184856.P17031283218585029754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184858 (n + 1)).toNat

end

end A184856.P17031283218585029754

noncomputable section

/-- A184856: Primes of the form floor(k*e/(e-1)).

Offset 1, canonical program `A184856.P17031283218585029754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6292 terms. -/
def A184856 (n : ℕ) : ℤ :=
  A184856.P17031283218585029754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6292 terms. -/
def A184856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186749.P3371590493743021003

`A000010(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+4)`
-/

namespace A186749.P3371590493743021003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 4)).toNat

end

end A186749.P3371590493743021003

noncomputable section

/-- A186749: a(n) = phi(n - phi(n) + 3).

Offset 1, canonical program `A186749.P3371590493743021003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186749 (n : ℕ) : ℤ :=
  A186749.P3371590493743021003.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187039.P14886503455944151269

`eq[A055076(n+1), A056624(n+1)]+1`
-/

namespace A187039.P14886503455944151269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A187039.P14886503455944151269

noncomputable section

/-- A187039: Numbers that have equal counts of even and odd exponents of primes in their factorization.

Offset 1, canonical program `A187039.P14886503455944151269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1068 terms. -/
def A187039 (n : ℕ) : ℤ :=
  (A187039.P14886503455944151269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1068 terms. -/
def A187039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188540.P8000585226121098714

`eq[2*A000005(n+1), A000005(n+3)]+1`
-/

namespace A188540.P8000585226121098714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A188540.P8000585226121098714

noncomputable section

/-- A188540: Numbers k such that d(k+2) = 2*d(k) where d(k) is the number of divisors of k (A000005).

Offset 1, canonical program `A188540.P8000585226121098714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5494 terms. -/
def A188540 (n : ℕ) : ℤ :=
  (A188540.P8000585226121098714.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5494 terms. -/
def A188540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190503.P4853042845525181551

`eq[1, A000203(n+1)%A000203(A000010(n+1))+1]+1`
-/

namespace A190503.P4853042845525181551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000203 (A000010 (n + 1)).toNat) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190503.P4853042845525181551

noncomputable section

/-- A190503: Numbers k such that sigma(phi(k)) divides sigma(k).

Offset 1, canonical program `A190503.P4853042845525181551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 681 terms. -/
def A190503 (n : ℕ) : ℤ :=
  (A190503.P4853042845525181551.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 681 terms. -/
def A190503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193432.P15803049534732017682

`A000005(A002522(n))`
-/

namespace A193432.P15803049534732017682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002522 n).toNat

end

end A193432.P15803049534732017682

noncomputable section

/-- A193432: Number of divisors of n^2 + 1.

Offset 0, canonical program `A193432.P15803049534732017682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193432 (n : ℕ) : ℤ :=
  A193432.P15803049534732017682.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193432.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193562.P320638825937170034

`A000005(A002523(n))`
-/

namespace A193562.P320638825937170034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002523 n).toNat

end

end A193562.P320638825937170034

noncomputable section

/-- A193562: Number of divisors of n^4+1.

Offset 0, canonical program `A193562.P320638825937170034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193562 (n : ℕ) : ℤ :=
  A193562.P320638825937170034.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193773.P5335748704601439126

`ceil(A000005(2*n+1)/2)`
-/

namespace A193773.P5335748704601439126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (2 * n + 1) : ℚ) / 2⌉

end

end A193773.P5335748704601439126

noncomputable section

/-- A193773: Number of ways to write n as 2*x*y - x - y with 1 <= x <= y.

Offset 0, canonical program `A193773.P5335748704601439126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193773 (n : ℕ) : ℤ :=
  A193773.P5335748704601439126.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A196524.P17782809021198449445

`A048691(n+1)*A000010(n+1)`
-/

namespace A196524.P17782809021198449445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) * A000010 (n + 1)

end

end A196524.P17782809021198449445

noncomputable section

/-- A196524: a(n) = phi(n)*tau(n^2).

Offset 1, canonical program `A196524.P17782809021198449445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048691, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A196524 (n : ℕ) : ℤ :=
  A196524.P17782809021198449445.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048691, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A196524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197218.P5916423780579939464

`A000010(A000032(n))`
-/

namespace A197218.P5916423780579939464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000032 n).toNat

end

end A197218.P5916423780579939464

noncomputable section

/-- A197218: a(n) = phi(Lucas(n)).

Offset 0, canonical program `A197218.P5916423780579939464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197218 (n : ℕ) : ℤ :=
  A197218.P5916423780579939464.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197218.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197219.P1176045312080678236

`A000032(floor(A000010(n)+a(n-1))-a(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A197219.P1176045312080678236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000032 (A000010 n + a (n - 1) - a (n - 1)).toNat

end

end A197219.P1176045312080678236

noncomputable section

/-- A197219: a(0) = 2, a(n) = Lucas(phi(n)) for n > 0.

Offset 0, canonical program `A197219.P1176045312080678236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A197219 (n : ℕ) : ℤ :=
  A197219.P1176045312080678236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A197219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206626.P17427154198684155407

`A206329(n+1)-A206462(n+1)`
-/

namespace A206626.P17427154198684155407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206329 (n + 1) - A206462 (n + 1)

end

end A206626.P17427154198684155407

noncomputable section

/-- A206626: Primes p such that p + previousprime(p) is a squarefree number.

Offset 1, canonical program `A206626.P17427154198684155407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206329, A206462, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A206626 (n : ℕ) : ℤ :=
  A206626.P17427154198684155407.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206329, A206462, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A206626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209974.P4619457533679587758

`a(n-1)+2*A126246(n)-A000010(n)` with `a(0)=0, a(1)=0`
-/

namespace A209974.P4619457533679587758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + 2 * A126246 n - A000010 n

end

end A209974.P4619457533679587758

noncomputable section

/-- A209974: a(n) = A209973(n)/4.

Offset 0, canonical program `A209974.P4619457533679587758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A126246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A209974 (n : ℕ) : ℤ :=
  A209974.P4619457533679587758.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A126246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A209974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A210845.P13189797381442615972

`lt[A003557(A000010(2*(n+1))), 3]+1`
-/

namespace A210845.P13189797381442615972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000010 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A210845.P13189797381442615972

noncomputable section

/-- A210845: Values n for which A055034(n) is squarefree.

Offset 1, canonical program `A210845.P13189797381442615972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1410 terms. -/
def A210845 (n : ℕ) : ℤ :=
  (A210845.P13189797381442615972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1410 terms. -/
def A210845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211262.P15561464354873054007

`A004526(A000005(3*(n+1)))-A000034(n)`
-/

namespace A211262.P15561464354873054007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (3 * (n + 1))).toNat - A000034 n

end

end A211262.P15561464354873054007

noncomputable section

/-- A211262: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211262.P15561464354873054007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211262 (n : ℕ) : ℤ :=
  A211262.P15561464354873054007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211337.P18010796566095735436

`eq[1, A000005(n+1)%3]+1`
-/

namespace A211337.P18010796566095735436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A211337.P18010796566095735436

noncomputable section

/-- A211337: Numbers k for which the number of divisors, tau(k), is congruent to 1 modulo 3.

Offset 1, canonical program `A211337.P18010796566095735436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211337 (n : ℕ) : ℤ :=
  (A211337.P18010796566095735436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211338.P17217578141647606892

`lt[(A000005(n+1)+1)%3, 1]+1`
-/

namespace A211338.P17217578141647606892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1) + 1) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A211338.P17217578141647606892

noncomputable section

/-- A211338: Numbers k for which the number of divisors, tau(k), is congruent to 2 modulo 3.

Offset 1, canonical program `A211338.P17217578141647606892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211338 (n : ℕ) : ℤ :=
  (A211338.P17217578141647606892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214287.P11295175971518832110

`p?[A000010(n+1)-1]`
-/

namespace A214287.P11295175971518832110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P11295175971518832110

noncomputable section

/-- A214287: Primes of the form phi(n)-1 sorted by increasing n, where phi is the Euler totient function.

Offset 1, canonical program `A214287.P11295175971518832110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214287 (n : ℕ) : ℤ :=
  A214287.P11295175971518832110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214288.P3436294397742324961

`p?[A000010(n+1)+1]`
-/

namespace A214288.P3436294397742324961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214288.P3436294397742324961

noncomputable section

/-- A214288: Primes of the form phi(n)+1 sorted by increasing n, where phi is the Euler totient function.

Offset 1, canonical program `A214288.P3436294397742324961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214288 (n : ℕ) : ℤ :=
  A214288.P3436294397742324961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216677.P14396045950144953032

`∏{e}[n+1, A002265(#*A000005(n+1))]`
-/

namespace A216677.P14396045950144953032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A002265 ((Nat.factorization (f1 n) p : ℤ) * A000005 (n + 1)).toNat

end

end A216677.P14396045950144953032

noncomputable section

/-- A216677: Number of squares s^2 that divide the product of the divisors of n, such that rad(s) = rad(n), where rad(n) = A007947.

Offset 1, canonical program `A216677.P14396045950144953032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216677 (n : ℕ) : ℤ :=
  A216677.P14396045950144953032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216836.P6437354700397976852

`eq[0, A000010(n+1)%A007953(n+1)]+1`
-/

namespace A216836.P6437354700397976852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A007953 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216836.P6437354700397976852

noncomputable section

/-- A216836: Numbers n such that sum of decimal digits of n divides phi(n).

Offset 1, canonical program `A216836.P6437354700397976852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2688 terms. -/
def A216836 (n : ℕ) : ℤ :=
  (A216836.P6437354700397976852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2688 terms. -/
def A216836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216864.P15328208277546371652

`∏{e}[n+1, A008621(#*A000005(n+1))]`
-/

namespace A216864.P15328208277546371652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008621 ((Nat.factorization (f1 n) p : ℤ) * A000005 (n + 1)).toNat

end

end A216864.P15328208277546371652

noncomputable section

/-- A216864: Number of squares that divide the product of divisors of n.

Offset 1, canonical program `A216864.P15328208277546371652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216864 (n : ℕ) : ℤ :=
  A216864.P15328208277546371652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217139.P16840314535765683681

`eq[A000010(C(3, n)+n), A000010(n+12)]`
-/

namespace A217139.P16840314535765683681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 3 n + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217139.P16840314535765683681

noncomputable section

/-- A217139: Numbers n such that phi(n) = phi(n+12), with Euler's totient function phi = A000010.

Offset 1, canonical program `A217139.P16840314535765683681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 543 terms. -/
def A217139 (n : ℕ) : ℤ :=
  (A217139.P16840314535765683681.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 543 terms. -/
def A217139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217442.P11818262742147486345

`lt[(n+1)%A000005(A006093(n+1)), 1]+1`
-/

namespace A217442.P11818262742147486345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000005 (A006093 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A217442.P11818262742147486345

noncomputable section

/-- A217442: Numbers n such that d(prime(n) - 1) | n, where d(k) is the number of divisors of k.

Offset 1, canonical program `A217442.P11818262742147486345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 803 terms. -/
def A217442 (n : ℕ) : ℤ :=
  (A217442.P11818262742147486345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 803 terms. -/
def A217442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225530.P14142544683776780979

`A000010(C(2, n²)+n)`
-/

namespace A225530.P14142544683776780979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 2 (n ^ 2) + n)

end

end A225530.P14142544683776780979

noncomputable section

/-- A225530: Number of ordered pairs (i,j) with i,j >= 0, i + j = n and gcd(i,j) <= 1.

Offset 0, canonical program `A225530.P14142544683776780979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A225530 (n : ℕ) : ℤ :=
  A225530.P14142544683776780979.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A225530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226385.P8581291142238122846

`lt[A336551(A000010(n+1)), A336551(n+1)]+1`
-/

namespace A226385.P8581291142238122846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A226385.P8581291142238122846

noncomputable section

/-- A226385: Numbers n such that rad(phi(n)) > phi(rad(n)), where rad(n) is the squarefree kernel of n, and phi is Euler's totient function.

Offset 1, canonical program `A226385.P8581291142238122846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A226385 (n : ℕ) : ℤ :=
  (A226385.P8581291142238122846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A226385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226586.P1032371712486698964

`A152677(n+3)-A000010(A028982(n+3))`
-/

namespace A226586.P1032371712486698964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152677 (n + 3) - A000010 (A028982 (n + 3)).toNat

end

end A226586.P1032371712486698964

noncomputable section

/-- A226586: Odd values of sigma(n) - phi(n) in the order of appearance and with repetition.

Offset 1, canonical program `A226586.P1032371712486698964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 537 terms. -/
def A226586 (n : ℕ) : ℤ :=
  A226586.P1032371712486698964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 537 terms. -/
def A226586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227874.P3056215725130656370

`eq[A000005(n+2)+2, A000005(n+1)]+1`
-/

namespace A227874.P3056215725130656370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A227874.P3056215725130656370

noncomputable section

/-- A227874: Numbers n such that tau(n+1) - tau(n) = -2, where tau(n) = the number of divisors of n (A000005).

Offset 1, canonical program `A227874.P3056215725130656370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A227874 (n : ℕ) : ℤ :=
  (A227874.P3056215725130656370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A227874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229253.P10040121674296205229

`A001787(A000005(n+1))`
-/

namespace A229253.P10040121674296205229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A000005 (n + 1)).toNat

end

end A229253.P10040121674296205229

noncomputable section

/-- A229253: Total number of elements of nonempty subsets of divisors of n.

Offset 1, canonical program `A229253.P10040121674296205229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229253 (n : ℕ) : ℤ :=
  A229253.P10040121674296205229.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229253.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A231099.P2171262129548700046

`p?[A000010(A000203(n+1))+A295302(n+1)+1+n]`
-/

namespace A231099.P2171262129548700046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat + (A295302 (n + 1) + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231099.P2171262129548700046

noncomputable section

/-- A231099: Primes expressible as phi(sigma(n)) + sigma(phi(n)), in order of their occurrence.

Offset 1, canonical program `A231099.P2171262129548700046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A231099 (n : ℕ) : ℤ :=
  A231099.P2171262129548700046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A231099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233541.P8613134617587554925

`A000203(n+1)+A000010(n+1)+A000005(n+1)`
-/

namespace A233541.P8613134617587554925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000010 (n + 1) + A000005 (n + 1)

end

end A233541.P8613134617587554925

noncomputable section

/-- A233541: a(n) = sigma(n) + phi(n) + d(n).

Offset 1, canonical program `A233541.P8613134617587554925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A233541 (n : ℕ) : ℤ :=
  A233541.P8613134617587554925.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A233541.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236285.P7829773990434493690

`A000005(n+1)^A000203(n+1)`
-/

namespace A236285.P7829773990434493690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A000203 (n + 1) : ℤ)

end

end A236285.P7829773990434493690

noncomputable section

/-- A236285: a(n) = tau(n)^sigma(n), where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

Offset 1, canonical program `A236285.P7829773990434493690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236285 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236285.P7829773990434493690.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236285.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236286.P5783426394669148059

`A000005(n+1)^A001065(n+1)`
-/

namespace A236286.P5783426394669148059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A001065 (n + 1) : ℤ)

end

end A236286.P5783426394669148059

noncomputable section

/-- A236286: a(n) = tau(n)^sigma(n) / tau(n)^n, where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

Offset 1, canonical program `A236286.P5783426394669148059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001065, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A236286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236286.P5783426394669148059.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001065, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A236286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236287.P8329458404916216592

`A000203(n+1)^A000005(n+1)`
-/

namespace A236287.P8329458404916216592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A236287.P8329458404916216592

noncomputable section

/-- A236287: a(n) = sigma(n)^tau(n), where tau(n) = A000005(n) = the number of divisors of n and sigma(n) = A000203(n) = the sum of divisors of n.

Offset 1, canonical program `A236287.P8329458404916216592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236287 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A236287.P8329458404916216592.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238952.P6937701478012677279

`A007425(n+1)-A000005(n+1)`
-/

namespace A238952.P6937701478012677279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) - A000005 (n + 1)

end

end A238952.P6937701478012677279

noncomputable section

/-- A238952: The size (the number of arcs) in the transitive closure of divisor lattice D(n).

Offset 1, canonical program `A238952.P6937701478012677279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007425, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A238952 (n : ℕ) : ℤ :=
  A238952.P6937701478012677279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007425, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A238952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246916.P16965770001564161991

`A000203(n+1)*A001710(A000005(n+1)+1)`
-/

namespace A246916.P16965770001564161991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001710 (A000005 (n + 1) + 1).toNat

end

end A246916.P16965770001564161991

noncomputable section

/-- A246916: Sum of the cumulative sums of all the permutations of divisors of number n.

Offset 1, canonical program `A246916.P16965770001564161991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246916 (n : ℕ) : ℤ :=
  A246916.P16965770001564161991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246916.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247947.P7835137061017546066

`filter[A031969(n+1), A353480(#)]`
-/

namespace A247947.P7835137061017546066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A247947.P7835137061017546066

noncomputable section

/-- A247947: Four-digit odd semiprimes with all digits distinct.

Offset 1, canonical program `A247947.P7835137061017546066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 863 terms. -/
def A247947 (n : ℕ) : ℤ :=
  A247947.P7835137061017546066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 863 terms. -/
def A247947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248577.P10884066776821242186

`A000005(n+1)*A001221(n+1)`
-/

namespace A248577.P10884066776821242186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A001221 (n + 1)

end

end A248577.P10884066776821242186

noncomputable section

/-- A248577: Product of the number of divisors of n and the number of distinct prime divisors of n; i.e., tau(n) * omega(n).

Offset 1, canonical program `A248577.P10884066776821242186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A248577 (n : ℕ) : ℤ :=
  A248577.P10884066776821242186.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A248577.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248662.P15236440755590100314

`lt[A001414(n+1), A000005(n+1)]+1`
-/

namespace A248662.P15236440755590100314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A248662.P15236440755590100314

noncomputable section

/-- A248662: Numbers with the property: tau(n) > sopfr(n), or A000005(n) > A001414(n).

Offset 1, canonical program `A248662.P15236440755590100314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A248662 (n : ℕ) : ℤ :=
  (A248662.P15236440755590100314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A248662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248957.P4310709929373967986

`A007053(2*n)-A007053(n)`
-/

namespace A248957.P4310709929373967986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (2 * n) - A007053 n

end

end A248957.P4310709929373967986

noncomputable section

/-- A248957: a(n) = PrimePi(4^n) - PrimePi(2^n).

Offset 0, canonical program `A248957.P4310709929373967986`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248957 (n : ℕ) : ℤ :=
  A248957.P4310709929373967986.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249353.P10664740351747725873

`A000010(n+1)+A051027(n+1)`
-/

namespace A249353.P10664740351747725873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A051027 (n + 1)

end

end A249353.P10664740351747725873

noncomputable section

/-- A249353: a(n) = phi(n) + sigma(sigma(n)).

Offset 1, canonical program `A249353.P10664740351747725873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051027, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249353 (n : ℕ) : ℤ :=
  A249353.P10664740351747725873.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051027, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249353.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A250094.P12324605883810777152

`eq[0, A348510(n+1)]+1`
-/

namespace A250094.P12324605883810777152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A250094.P12324605883810777152

noncomputable section

/-- A250094: Positive integers k such that the numerator of the harmonic mean of the divisors of k is equal to k.

Offset 1, canonical program `A250094.P12324605883810777152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8109 terms. -/
def A250094 (n : ℕ) : ℤ :=
  (A250094.P12324605883810777152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8109 terms. -/
def A250094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255385.P15739975789967617263

`A000203(n+1)+A000010(n+1)-A000005(n+1)`
-/

namespace A255385.P15739975789967617263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000010 (n + 1) - A000005 (n + 1)

end

end A255385.P15739975789967617263

noncomputable section

/-- A255385: a(n) = sigma(n) + phi(n) - tau(n).

Offset 1, canonical program `A255385.P15739975789967617263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255385 (n : ℕ) : ℤ :=
  A255385.P15739975789967617263.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256293.P2541555998451652213

`A004488(A171960(n))`
-/

namespace A256293.P2541555998451652213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A171960 n).toNat

end

end A256293.P2541555998451652213

noncomputable section

/-- A256293: Apply the transformation 0 -> 1 -> 2 -> 0 to the digits of n written in base 3, then convert back to base 10.

Offset 0, canonical program `A256293.P2541555998451652213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256293 (n : ℕ) : ℤ :=
  A256293.P2541555998451652213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260256.P436292535346818829

`eq[A000005(n+1), A000005(n+5)]+3`
-/

namespace A260256.P436292535346818829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A260256.P436292535346818829

noncomputable section

/-- A260256: Numbers m such that tau(m + 2) = tau(m - 2) where tau(k) = A000005(k).

Offset 1, canonical program `A260256.P436292535346818829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. -/
def A260256 (n : ℕ) : ℤ :=
  (A260256.P436292535346818829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. -/
def A260256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260455.P9893475964516076535

`1-A260456(n+1)`
-/

namespace A260455.P9893475964516076535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A260456 (n + 1)

end

end A260455.P9893475964516076535

noncomputable section

/-- A260455: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = 0 and midword sequence (1,null,1,null,1,null,...); see Comments.

Offset 1, canonical program `A260455.P9893475964516076535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260455 (n : ℕ) : ℤ :=
  A260455.P9893475964516076535.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261872.P10858790068857773858

`A010874(A000010(n+1))`
-/

namespace A261872.P10858790068857773858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A000010 (n + 1)).toNat

end

end A261872.P10858790068857773858

noncomputable section

/-- A261872: a(n) = phi(n) mod 5, where phi is the Euler totient function.

Offset 1, canonical program `A261872.P10858790068857773858`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261872 (n : ℕ) : ℤ :=
  A261872.P10858790068857773858.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261872.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262095.P10827467733905052003

`A000005(n+1)-A086971(n+1)`
-/

namespace A262095.P10827467733905052003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A086971 (n + 1)

end

end A262095.P10827467733905052003

noncomputable section

/-- A262095: Number of non-semiprime divisors of n.

Offset 1, canonical program `A262095.P10827467733905052003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262095 (n : ℕ) : ℤ :=
  A262095.P10827467733905052003.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272377.P3912786864071120039

`A000005(A000032(n))`
-/

namespace A272377.P3912786864071120039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000032 n).toNat

end

end A272377.P3912786864071120039

noncomputable section

/-- A272377: Number of positive divisors of A000032(n).

Offset 0, canonical program `A272377.P3912786864071120039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272377 (n : ℕ) : ℤ :=
  A272377.P3912786864071120039.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272377.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272872.P7782579486698380684

`lt[(n+2)%A000005(n+1), 1]+1`
-/

namespace A272872.P7782579486698380684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A272872.P7782579486698380684

noncomputable section

/-- A272872: Numbers k such that k+1 is divisible by number of divisors of k.

Offset 1, canonical program `A272872.P7782579486698380684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272872 (n : ℕ) : ℤ :=
  (A272872.P7782579486698380684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276503.P3868539189465671820

`eq[A000010(n+11), A000010(n+1)]+1`
-/

namespace A276503.P3868539189465671820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276503.P3868539189465671820

noncomputable section

/-- A276503: Numbers n such that phi(n) = phi(n+10), with Euler's totient function phi = A000010.

Offset 1, canonical program `A276503.P3868539189465671820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A276503 (n : ℕ) : ℤ :=
  (A276503.P3868539189465671820.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A276503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278042.P17948730681649741485

`∑{digits}[A278038(n), 1-#]`
-/

namespace A278042.P17948730681649741485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A278042.P17948730681649741485

noncomputable section

/-- A278042: Number of 0's in tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A278042.P17948730681649741485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278042 (n : ℕ) : ℤ :=
  A278042.P17948730681649741485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280684.P9106054054311635424

`∏{e}[n+1, A008619(#*A000005(n+1))]`
-/

namespace A280684.P9106054054311635424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008619 ((Nat.factorization (f1 n) p : ℤ) * A000005 (n + 1)).toNat

end

end A280684.P9106054054311635424

noncomputable section

/-- A280684: a(n) = number of divisors of the product of the divisors of n.

Offset 1, canonical program `A280684.P9106054054311635424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280684 (n : ℕ) : ℤ :=
  A280684.P9106054054311635424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280877.P16270623710386896264

`lt[A000010(A028310(n)), A256502(n+1)]`
-/

namespace A280877.P16270623710386896264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280877.P16270623710386896264

noncomputable section

/-- A280877: Occurrences of decrease of the probability density P(a(n)) of coprime numbers k,m, satisfying 1 <= k <= a(n) and 1 <= m <= a(n); i.e., P(a(n)) < P(a(n)-1).

Offset 1, canonical program `A280877.P16270623710386896264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. -/
def A280877 (n : ℕ) : ℤ :=
  (A280877.P16270623710386896264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. -/
def A280877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187794.P17499645583050046868

`A000203(n+1)-(A187795(n+1)+A187793(n+1))`
-/

namespace A187794.P17499645583050046868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A187795 (n + 1) + A187793 (n + 1))

end

end A187794.P17499645583050046868

noncomputable section

/-- A187794: Sum of the perfect divisors of n.

Offset 1, canonical program `A187794.P17499645583050046868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187794 (n : ℕ) : ℤ :=
  A187794.P17499645583050046868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198471.P1128838665379452486

`lt[n+1, A294886(n+1)]+1`
-/

namespace A198471.P1128838665379452486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A198471.P1128838665379452486

noncomputable section

/-- A198471: Abundant numbers that are smaller than the sum of their deficient divisors.

Offset 1, canonical program `A198471.P1128838665379452486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A198471 (n : ℕ) : ℤ :=
  (A198471.P1128838665379452486.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A198471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241418.P4866723597683486828

`Δ[A053838(A128173(n))]`
-/

namespace A241418.P4866723597683486828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (A128173 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241418.P4866723597683486828

noncomputable section

/-- A241418: First differences of Arshon's sequence, cf. A099054.

Offset 0, canonical program `A241418.P4866723597683486828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A241418 (n : ℕ) : ℤ :=
  A241418.P4866723597683486828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A241418.provenance : SequenceMachineLib.Provenance := .conjectured

