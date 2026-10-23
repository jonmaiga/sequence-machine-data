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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
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
import Seq.B006.C001
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

/-!
# A130002: Alternating sum along antidiagonals of the array of A129952 and its iterated differences.

The programs for A130002, there is no canonical definition to state claims against.
-/

/-! ## A130002.P239527877816823119

`A333309(∑[A077949(n)]-(n-char[2])+1)-1`
-/

namespace A130002.P239527877816823119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077949 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333309 (∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) + 1).toNat - 1

end

end A130002.P239527877816823119

/-! ## A130002.P17607989054309263456

`A276625(A066062(n))+A008363(n)`
-/

namespace A130002.P17607989054309263456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (A066062 n).toNat + A008363 n

end

end A130002.P17607989054309263456

/-! ## A130002.P2632054824982955996

`A291419(n)-A326676(A172416(n))`
-/

namespace A130002.P2632054824982955996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291419 n - A326676 (A172416 n).toNat

end

end A130002.P2632054824982955996

/-! ## A130002.P6145659303243783528

`A121385(A006093(n+1))+A077550(n)`
-/

namespace A130002.P6145659303243783528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121385 (A006093 (n + 1)).toNat + A077550 n

end

end A130002.P6145659303243783528

/-!
# A130003: a(n) is the smallest positive integer m such that 4^k + m is prime for all k=1,2,...,n.

The programs for A130003, there is no canonical definition to state claims against.
-/

/-! ## A130003.P13760933767325292614

`or(A124794(n+1), A245093(A000248(n)))`
-/

namespace A130003.P13760933767325292614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124794 (n + 1)) (A245093 (A000248 n).toNat)

end

end A130003.P13760933767325292614

/-! ## A130003.P12583300387602211115

`or(A135010(n+1), A245093(A000248(n)))`
-/

namespace A130003.P12583300387602211115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135010 (n + 1)) (A245093 (A000248 n).toNat)

end

end A130003.P12583300387602211115

/-! ## A130003.P15013398952778586640

`or(A225212(n+1), A245093(A000248(n)))`
-/

namespace A130003.P15013398952778586640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A225212 (n + 1)) (A245093 (A000248 n).toNat)

end

end A130003.P15013398952778586640

/-!
# A130005: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+577)^2 = y^2.

The programs for A130005, there is no canonical definition to state claims against.
-/

/-! ## A130005.P8805017876612934991

`A130646(n+1)+A118120(n)-A130608(n+1)`
-/

namespace A130005.P8805017876612934991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130646 (n + 1) + (A118120 n - A130608 (n + 1))

end

end A130005.P8805017876612934991

/-!
# A130006: Prime numbers arising from A050704.

The programs for A130006, there is no canonical definition to state claims against.
-/

/-! ## A130006.P13716542560403378373

`p?[A075255(n+1)]`
-/

namespace A130006.P13716542560403378373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130006.P13716542560403378373

/-! ## A130006.P1535602773469359300

`p?[A145834(n+1)]`
-/

namespace A130006.P1535602773469359300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130006.P1535602773469359300

/-! ## A130006.P12490961025510274669

`p?[1-A001414(n+1)+n]`
-/

namespace A130006.P12490961025510274669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001414 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130006.P12490961025510274669

/-! ## A130006.P6813102220296043673

`p?[2-A036288(n+1)+n]`
-/

namespace A130006.P6813102220296043673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036288 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130006.P6813102220296043673

/-! ## A130006.P8572366113005559473

`p?[n+4-A107463(4*n)]`
-/

namespace A130006.P8572366113005559473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) - A107463 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130006.P8572366113005559473

/-! ## A130006.P17069885847848193960

`p?[2*(n+1)-A075254(n+1)]`
-/

namespace A130006.P17069885847848193960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A075254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130006.P17069885847848193960

/-! ## A130006.P14529447308178727751

`p?[2*n-(n-5)-A001414(2*n-(n-5))]`
-/

namespace A130006.P14529447308178727751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 5) - A001414 ((2 * n : ℤ) - ((n : ℤ) - 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130006.P14529447308178727751

/-! ## A130006.P4513189417114156458

`A075255(A050704(n+1))`
-/

namespace A130006.P4513189417114156458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (A050704 (n + 1)).toNat

end

end A130006.P4513189417114156458

/-! ## A130006.P17334774427405709858

`filter[A145834(n+2), A010051(#)]`
-/

namespace A130006.P17334774427405709858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145834 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A130006.P17334774427405709858

/-!
# A130008: Noncomposite numbers sandwiched between 1's.

The programs for A130008, the canonical program `A130008.P4788618563532273942` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130008 has offset 0).

The definition of A130008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130008.P3575016464621721906

`A181363(n^(n%2))`
-/

namespace A130008.P3575016464621721906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (n ^ (n % 2))

end

end A130008.P3575016464621721906

namespace A130008

/-- `A181363(n^(n%2))` -/
def P3575016464621721906.Spec : Prop :=
  ∀ n, P3575016464621721906.a n = A130008 n

end A130008

/-! ## A130008.P12058727578502796044

`A181363(n^and(1, n))`
-/

namespace A130008.P12058727578502796044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (n ^ Nat.land 1 n)

end

end A130008.P12058727578502796044

namespace A130008

/-- `A181363(n^and(1, n))` -/
def P12058727578502796044.Spec : Prop :=
  ∀ n, P12058727578502796044.a n = A130008 n

end A130008

/-! ## A130008.P11884673719596919683

`A181363(gcd(n, or(1, n)))`
-/

namespace A130008.P11884673719596919683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (Nat.gcd n (Nat.lor 1 n))

end

end A130008.P11884673719596919683

namespace A130008

/-- `A181363(gcd(n, or(1, n)))` -/
def P11884673719596919683.Spec : Prop :=
  ∀ n, P11884673719596919683.a n = A130008 n

end A130008

/-! ## A130008.P4788618563532273942

`A008578(gcd(xor(1, -n), ∑[n]))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A130008

/-- `A008578(gcd(xor(1, -n), ∑[n]))` -/
def P4788618563532273942.Spec : Prop :=
  ∀ n, P4788618563532273942.a n = A130008 n

theorem P4788618563532273942.correct : P4788618563532273942.Spec := by
  intro n
  simp only [A130008]

end A130008

/-! ## A130008.P17377586875038246327

`A008578(gcd(n+1, ceil(n/2)))`
-/

namespace A130008.P17377586875038246327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉)

end

end A130008.P17377586875038246327

namespace A130008

/-- `A008578(gcd(n+1, ceil(n/2)))` -/
def P17377586875038246327.Spec : Prop :=
  ∀ n, P17377586875038246327.a n = A130008 n

end A130008

/-! ## A130008.P328855934104555166

`A008578(ceil((n/2)^and(1, n)))`
-/

namespace A130008.P328855934104555166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ⌈((n : ℚ) / 2) ^ Nat.land 1 n⌉.toNat

end

end A130008.P328855934104555166

namespace A130008

/-- `A008578(ceil((n/2)^and(1, n)))` -/
def P328855934104555166.Spec : Prop :=
  ∀ n, P328855934104555166.a n = A130008 n

end A130008

/-! ## A130008.P16749928988505116055

`A008578(C(ceil(n/2), floor(n/2)))`
-/

namespace A130008.P16749928988505116055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Nat.choose ⌈(n : ℚ) / 2⌉.toNat ⌊(n : ℚ) / 2⌋.toNat)

end

end A130008.P16749928988505116055

namespace A130008

/-- `A008578(C(ceil(n/2), floor(n/2)))` -/
def P16749928988505116055.Spec : Prop :=
  ∀ n, P16749928988505116055.a n = A130008 n

end A130008

/-! ## A130008.P17253516307672534207

`A008578(A152271(n))`
-/

namespace A130008.P17253516307672534207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A152271 n).toNat

end

end A130008.P17253516307672534207

namespace A130008

/-- `A008578(A152271(n))` -/
def P17253516307672534207.Spec : Prop :=
  ∀ n, P17253516307672534207.a n = A130008 n

end A130008

/-! ## A130008.P10347682070179878691

`A181363(A093178(n))`
-/

namespace A130008.P10347682070179878691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (A093178 n).toNat

end

end A130008.P10347682070179878691

namespace A130008

/-- `A181363(A093178(n))` -/
def P10347682070179878691.Spec : Prop :=
  ∀ n, P10347682070179878691.a n = A130008 n

end A130008

/-! ## A130008.P3808803358667434317

`A008578(A133265(n)/2)`
-/

namespace A130008.P3808803358667434317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A130008.P3808803358667434317

namespace A130008

/-- `A008578(A133265(n)/2)` -/
def P3808803358667434317.Spec : Prop :=
  ∀ n, P3808803358667434317.a n = A130008 n

end A130008

/-! ## A130008.P1453050039518933590

`A008578(A026741(n+2)-A030451(n))`
-/

namespace A130008.P1453050039518933590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A026741 (n + 2) - A030451 n).toNat

end

end A130008.P1453050039518933590

namespace A130008

/-- `A008578(A026741(n+2)-A030451(n))` -/
def P1453050039518933590.Spec : Prop :=
  ∀ n, P1453050039518933590.a n = A130008 n

end A130008

/-! ## A130008.P15831762452598342474

`A008578(A057979(n+2))`
-/

namespace A130008.P15831762452598342474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A057979 (n + 2)).toNat

end

end A130008.P15831762452598342474

namespace A130008

/-- `A008578(A057979(n+2))` -/
def P15831762452598342474.Spec : Prop :=
  ∀ n, P15831762452598342474.a n = A130008 n

end A130008

/-! ## A130008.P9748053070239732656

`A181363(A266303(n))`
-/

namespace A130008.P9748053070239732656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (A266303 n).toNat

end

end A130008.P9748053070239732656

namespace A130008

/-- `A181363(A266303(n))` -/
def P9748053070239732656.Spec : Prop :=
  ∀ n, P9748053070239732656.a n = A130008 n

end A130008

/-! ## A130008.P16378077023506833240

`A181363(A266722(n))`
-/

namespace A130008.P16378077023506833240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (A266722 n).toNat

end

end A130008.P16378077023506833240

namespace A130008

/-- `A181363(A266722(n))` -/
def P16378077023506833240.Spec : Prop :=
  ∀ n, P16378077023506833240.a n = A130008 n

end A130008

/-! ## A130008.P9979987620608949453

`A181363(A267354(n+1))`
-/

namespace A130008.P9979987620608949453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (A267354 (n + 1)).toNat

end

end A130008.P9979987620608949453

namespace A130008

/-- `A181363(A267354(n+1))` -/
def P9979987620608949453.Spec : Prop :=
  ∀ n, P9979987620608949453.a n = A130008 n

end A130008

/-! ## A130008.P15833270161347815676

`A318321(a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A130008.P15833270161347815676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A318321 (a (n - 2)).toNat

end

end A130008.P15833270161347815676

namespace A130008

/-- `A318321(a(n-2))` -/
def P15833270161347815676.Spec : Prop :=
  ∀ n, P15833270161347815676.a n = A130008 n

end A130008

/-! ## A130008.P12027527534960214475

`A003961(a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A130008.P12027527534960214475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A003961 (a (n - 2)).toNat

end

end A130008.P12027527534960214475

namespace A130008

/-- `A003961(a(n-2))` -/
def P12027527534960214475.Spec : Prop :=
  ∀ n, P12027527534960214475.a n = A130008 n

end A130008

/-! ## A130008.P1124609248450237349

`A066169(a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A130008.P1124609248450237349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A066169 (a (n - 2)).toNat

end

end A130008.P1124609248450237349

namespace A130008

/-- `A066169(a(n-2))` -/
def P1124609248450237349.Spec : Prop :=
  ∀ n, P1124609248450237349.a n = A130008 n

end A130008

/-! ## A130008.P13847135945400248217

`A112276(a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A130008.P13847135945400248217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A112276 (a (n - 2)).toNat

end

end A130008.P13847135945400248217

namespace A130008

/-- `A112276(a(n-2))` -/
def P13847135945400248217.Spec : Prop :=
  ∀ n, P13847135945400248217.a n = A130008 n

end A130008

/-! ## A130008.P12636111933848704346

`gcd(A162753(n), A224928(n))`
-/

namespace A130008.P12636111933848704346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A162753 n) (A224928 n)

end

end A130008.P12636111933848704346

namespace A130008

/-- `gcd(A162753(n), A224928(n))` -/
def P12636111933848704346.Spec : Prop :=
  ∀ n, (P12636111933848704346.a n : ℤ) = A130008 n

end A130008

/-!
# A130015: Number of isomers for different number of substitutions of hydrogen atoms by deuterium in the boat form of cyclohexane.

The programs for A130015, there is no canonical definition to state claims against.
-/

/-! ## A130015.P9340518817520181447

`A225812(n+15)`
-/

namespace A130015.P9340518817520181447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225812 (n + 15)

end

end A130015.P9340518817520181447

/-! ## A130015.P17122618990720896995

`A226290(n+22)`
-/

namespace A130015.P17122618990720896995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226290 (n + 22)

end

end A130015.P17122618990720896995

/-!
# A130018: Eigensequence of A053121.

The programs for A130018, there is no canonical definition to state claims against.
-/

/-! ## A130018.P3668180762197817970

`A108954(or(A000045(n), A216617(n)))`
-/

namespace A130018.P3668180762197817970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.lor (A000045 n) (A216617 n)).toNat

end

end A130018.P3668180762197817970

/-! ## A130018.P15961456626584409251

`A226190(or(A008612(n), A198951(n)))`
-/

namespace A130018.P15961456626584409251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (Int.lor (A008612 n) (A198951 n)).toNat

end

end A130018.P15961456626584409251

/-! ## A130018.P13542801926804933251

`A226190(or(A198951(n), A288942(n)))`
-/

namespace A130018.P13542801926804933251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (Int.lor (A198951 n) (A288942 n)).toNat

end

end A130018.P13542801926804933251

/-! ## A130018.P10535024327370094523

`A108954(or(A212804(n+1), A216617(n)))`
-/

namespace A130018.P10535024327370094523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.lor (A212804 (n + 1)) (A216617 n)).toNat

end

end A130018.P10535024327370094523

/-! ## A130018.P14472563897705193304

`A108954(or(A001611(n)-1, A216617(n)))`
-/

namespace A130018.P14472563897705193304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.lor (A001611 n - 1) (A216617 n)).toNat

end

end A130018.P14472563897705193304

/-!
# A130019: a(n+2) = 6*a(n+1) + (-11 + n)*a(n) + (6 - 2*n)*a(n-1) for n >= 1.

The programs for A130019, there is no canonical definition to state claims against.
-/

/-! ## A130019.P8724903931484681444

`xor(A004523(A219755(2*n+1)), A219755(n))`
-/

namespace A130019.P8724903931484681444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004523 (A219755 (2 * n + 1)).toNat) (A219755 n)

end

end A130019.P8724903931484681444

/-! ## A130019.P5447249778569106694

`A082996(A323229(n+1))`
-/

namespace A130019.P5447249778569106694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082996 (A323229 (n + 1)).toNat

end

end A130019.P5447249778569106694

/-! ## A130019.P3536422266860795319

`A064458(A363061(n+1))`
-/

namespace A130019.P3536422266860795319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A363061 (n + 1)).toNat

end

end A130019.P3536422266860795319

/-!
# A130020: Triangle T(n,k), 0<=k<=n, read by rows given by [1,0,0,0,0,0,0,...] DELTA [0,1,1,1,1,1,1,...] where DELTA is the operator defined in A084938 .

The programs for A130020, the canonical program `A130020.P3122081554648920852` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130020 has offset 0).

The definition of A130020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130020.P10965398778980975712

`A106566(∑[2*n]%comp[∑[n]])`
-/

namespace A130020.P10965398778980975712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A130020.P10965398778980975712

namespace A130020

/-- `A106566(∑[2*n]%comp[∑[n]])` -/
def P10965398778980975712.Spec : Prop :=
  ∀ n, P10965398778980975712.a n = A130020 n

end A130020

/-! ## A130020.P3561817544657813011

`A106566(∑[char[∑[n]]]²-(n+1))`
-/

namespace A130020.P3561817544657813011
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A130020.P3561817544657813011

namespace A130020

/-- `A106566(∑[char[∑[n]]]²-(n+1))` -/
def P3561817544657813011.Spec : Prop :=
  ∀ n, P3561817544657813011.a n = A130020 n

end A130020

/-! ## A130020.P13733104202521067060

`A096465(n)-A323224(n)`
-/

namespace A130020.P13733104202521067060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 n - A323224 n

end

end A130020.P13733104202521067060

namespace A130020

/-- `A096465(n)-A323224(n)` -/
def P13733104202521067060.Spec : Prop :=
  ∀ n, P13733104202521067060.a n = A130020 n

end A130020

/-! ## A130020.P3122081554648920852

`2*A059481(n)-A046899(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A130020

/-- `2*A059481(n)-A046899(n)` -/
def P3122081554648920852.Spec : Prop :=
  ∀ n, P3122081554648920852.a n = A130020 n

theorem P3122081554648920852.correct : P3122081554648920852.Spec := by
  intro n
  simp only [A130020]

end A130020

/-! ## A130020.P1669272411436414528

`abs(A099039(A061579(n)))`
-/

namespace A130020.P1669272411436414528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099039 (A061579 n).toNat|

end

end A130020.P1669272411436414528

namespace A130020

/-- `abs(A099039(A061579(n)))` -/
def P1669272411436414528.Spec : Prop :=
  ∀ n, P1669272411436414528.a n = A130020 n

end A130020

/-! ## A130020.P9911537242806456836

`abs(A099039(A038722(n+1)-1))`
-/

namespace A130020.P9911537242806456836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099039 (A038722 (n + 1) - 1).toNat|

end

end A130020.P9911537242806456836

namespace A130020

/-- `abs(A099039(A038722(n+1)-1))` -/
def P9911537242806456836.Spec : Prop :=
  ∀ n, P9911537242806456836.a n = A130020 n

end A130020

/-! ## A130020.P14175846128116098082

`A059365(A061579(A000007(n)+n))`
-/

namespace A130020.P14175846128116098082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (A061579 (A000007 n + (n : ℤ)).toNat).toNat

end

end A130020.P14175846128116098082

namespace A130020

/-- `A059365(A061579(A000007(n)+n))` -/
def P14175846128116098082.Spec : Prop :=
  ∀ n, P14175846128116098082.a n = A130020 n

end A130020

/-! ## A130020.P2823738812255928866

`2*A059481(n)-A059481(A007401(n+1))`
-/

namespace A130020.P2823738812255928866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059481 n - A059481 (A007401 (n + 1)).toNat

end

end A130020.P2823738812255928866

namespace A130020

/-- `2*A059481(n)-A059481(A007401(n+1))` -/
def P2823738812255928866.Spec : Prop :=
  ∀ n, P2823738812255928866.a n = A130020 n

end A130020

/-! ## A130020.P4240669196125021182

`A156006(n)-A059365(n)`
-/

namespace A130020.P4240669196125021182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156006 n - A059365 n

end

end A130020.P4240669196125021182

namespace A130020

/-- `A156006(n)-A059365(n)` -/
def P4240669196125021182.Spec : Prop :=
  ∀ n, P4240669196125021182.a n = A130020 n

end A130020

/-! ## A130020.P14766929128770665239

`A080232(A245300(n))`
-/

namespace A130020.P14766929128770665239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080232 (A245300 n).toNat

end

end A130020.P14766929128770665239

namespace A130020

/-- `A080232(A245300(n))` -/
def P14766929128770665239.Spec : Prop :=
  ∀ n, P14766929128770665239.a n = A130020 n

end A130020

/-! ## A130020.P11479012516855768355

`A362787(n)/A371767(n)`
-/

namespace A130020.P11479012516855768355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362787 n : ℚ) / (A371767 n : ℚ)

end

end A130020.P11479012516855768355

namespace A130020

/-- `A362787(n)/A371767(n)` -/
def P11479012516855768355.Spec : Prop :=
  ∀ n, P11479012516855768355.a n = (A130020 n : ℚ)

end A130020

/-!
# A130024: a(1)=1. a(n) = number of earlier terms which don't have 2 or more distinct prime divisors in common with n.

The programs for A130024, there is no canonical definition to state claims against.
-/

/-! ## A130024.P17235359835265773202

`1-A106348(A110981(n+1))+n`
-/

namespace A130024.P17235359835265773202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A106348 (A110981 (n + 1)).toNat + (n : ℤ)

end

end A130024.P17235359835265773202

/-! ## A130024.P10977225288423906779

`A028310(n)-A025466(A050214(n+1))`
-/

namespace A130024.P10977225288423906779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A025466 (A050214 (n + 1)).toNat

end

end A130024.P10977225288423906779

/-! ## A130024.P1103348029987337751

`A028310(n)-A325135(A125911(n+1))`
-/

namespace A130024.P1103348029987337751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A325135 (A125911 (n + 1)).toNat

end

end A130024.P1103348029987337751

/-! ## A130024.P8461958228504681919

`A137734(n²)-A325135(A125911(n+1))`
-/

namespace A130024.P8461958228504681919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (n ^ 2) - A325135 (A125911 (n + 1)).toNat

end

end A130024.P8461958228504681919

/-! ## A130024.P11221039566873479368

`A065033(2*n)-A025466(A050214(n+1))`
-/

namespace A130024.P11221039566873479368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - A025466 (A050214 (n + 1)).toNat

end

end A130024.P11221039566873479368

/-!
# A130025: a(1)=1; a(n) = a(n-1) + (number of terms, from among terms a(1) through a(n-1), which are squarefree).

The programs for A130025, there is no canonical definition to state claims against.
-/

/-! ## A130025.P13716726144283385034

`∑[∑[A086694(A018068(n))]]`
-/

namespace A130025.P13716726144283385034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086694 (A018068 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130025.P13716726144283385034

/-! ## A130025.P7020645858117682688

`∑[∑[A267525(A048328(n))]]`
-/

namespace A130025.P7020645858117682688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267525 (A048328 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130025.P7020645858117682688

/-! ## A130025.P11263556100832404751

`∑[∑[A267687(A280685(n+1))]]`
-/

namespace A130025.P11263556100832404751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267687 (A280685 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130025.P11263556100832404751

/-! ## A130025.P7000381604817552302

`∑[∑[A189215(A186283(n+2))]]`
-/

namespace A130025.P7000381604817552302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189215 (A186283 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130025.P7000381604817552302

/-! ## A130025.P14983694463690651664

`A000196(A070211(3*n+1)+n)`
-/

namespace A130025.P14983694463690651664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A070211 (3 * n + 1) + (n : ℤ)).toNat

end

end A130025.P14983694463690651664

/-!
# A130026: Triangle (n,k) by columns, arithmetic sequences interspersed with k zeros.

The programs for A130026, there is no canonical definition to state claims against.
-/

/-! ## A130026.P5279182185172282783

`A127651(n+1)%(comp[∑[n]]-n)`
-/

namespace A130026.P5279182185172282783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127651 (n + 1)) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A130026.P5279182185172282783

/-! ## A130026.P12343900435267216026

`A114002(n)^log2(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A130026.P12343900435267216026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A114002 n : ℝ) ^ (Real.logb 2 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℝ))

end

end A130026.P12343900435267216026

/-! ## A130026.P14198642064011554642

`(C(comp[∑[n]]-n, 2)-n)*A051731(n+1)`
-/

namespace A130026.P14198642064011554642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A051731 (n + 1)

end

end A130026.P14198642064011554642

/-! ## A130026.P18129440569113156072

`(C(comp[∑[n]]-n, 2)-n)%(A047916(n+1)+1)`
-/

namespace A130026.P18129440569113156072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) (A047916 (n + 1) + 1)

end

end A130026.P18129440569113156072

/-! ## A130026.P15662512680407800861

`C(C(comp[∑[n]]-n, 2)-n, A164306(n+1)²²)`
-/

namespace A130026.P15662512680407800861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat ((A164306 (n + 1) ^ 2) ^ 2).toNat

end

end A130026.P15662512680407800861

/-! ## A130026.P13177536980256670512

`lcm(C(comp[∑[n]]-n, 2)-n, (2^A127093(n+1)-1)%2)`
-/

namespace A130026.P13177536980256670512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) (Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A127093 (n + 1) : ℤ) - 1)) 2)

end

end A130026.P13177536980256670512

/-! ## A130026.P6758538365514676735

`A158906(n+1)*A193592(n)`
-/

namespace A130026.P6758538365514676735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158906 (n + 1) * A193592 n

end

end A130026.P6758538365514676735

/-! ## A130026.P5369102976962148372

`A114002(n)^log2(A004736(n+1))`
-/

namespace A130026.P5369102976962148372
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A114002 n : ℝ) ^ (Real.logb 2 (A004736 (n + 1) : ℝ))

end

end A130026.P5369102976962148372

/-! ## A130026.P2611372131715823738

`A004736(n+1)*A051731(n+1)`
-/

namespace A130026.P2611372131715823738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A051731 (n + 1)

end

end A130026.P2611372131715823738

/-! ## A130026.P11035846696844397617

`(A025581(n)+1)*A051731(n+1)`
-/

namespace A130026.P11035846696844397617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A051731 (n + 1)

end

end A130026.P11035846696844397617

/-!
# A130027: A130026 * A054525.

The programs for A130027, there is no canonical definition to state claims against.
-/

/-! ## A130027.P9509738661324981131

`floor(ratio[A185316(A330964(n))])`
-/

namespace A130027.P9509738661324981131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185316 (A330964 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A130027.P9509738661324981131

/-! ## A130027.P9237226321935376946

`A053398(2^A091613(n+1))`
-/

namespace A130027.P9237226321935376946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053398 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A091613 (n + 1) : ℤ))).toNat

end

end A130027.P9237226321935376946

/-! ## A130027.P16543498028724107919

`A053398(2^A106356(n+1))`
-/

namespace A130027.P16543498028724107919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053398 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A106356 (n + 1) : ℤ))).toNat

end

end A130027.P16543498028724107919

/-! ## A130027.P7808573627517249721

`and(A182703(n+1), A241515(3*(n+1)))`
-/

namespace A130027.P7808573627517249721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A182703 (n + 1)) (A241515 (3 * (n + 1)))

end

end A130027.P7808573627517249721

/-! ## A130027.P17998580088657916668

`A051731(n+1)*A302247(A011782(n))`
-/

namespace A130027.P17998580088657916668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A302247 (A011782 n).toNat

end

end A130027.P17998580088657916668

/-!
# A130028: A129686 * A054523.

The programs for A130028, there is no canonical definition to state claims against.
-/

/-! ## A130028.P11125439132387565584

`A129560(n+1)-A011727(A289943(n+1))`
-/

namespace A130028.P11125439132387565584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129560 (n + 1) - A011727 (A289943 (n + 1)).toNat

end

end A130028.P11125439132387565584

/-! ## A130028.P6710849103556884531

`A129560(n+1)-A055641(A001384(n))`
-/

namespace A130028.P6710849103556884531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129560 (n + 1) - A055641 (A001384 n).toNat

end

end A130028.P6710849103556884531

/-! ## A130028.P12576655855212118824

`A129560(n+1)-A055641(A027466(n))`
-/

namespace A130028.P12576655855212118824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129560 (n + 1) - A055641 (A027466 n).toNat

end

end A130028.P12576655855212118824

/-! ## A130028.P15923372471162877007

`A129560(n+1)-A324417(A286235(n+1))`
-/

namespace A130028.P15923372471162877007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129560 (n + 1) - A324417 (A286235 (n + 1)).toNat

end

end A130028.P15923372471162877007

/-! ## A130028.P17640330066608082933

`A179239(A378849(n))%A378873(n+1)`
-/

namespace A130028.P17640330066608082933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179239 (A378849 n).toNat) (A378873 (n + 1))

end

end A130028.P17640330066608082933

/-!
# A130029: a(n) = Sum_{d|n} phi(n/d) * prime(d).

The programs for A130029, the canonical program `A130029.P14613639189885830569` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130029 has offset 1).

The definition of A130029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130029.P14613639189885830569

`∑{d}[n+1, #*A007444((n+1)/#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A130029

/-- `∑{d}[n+1, #*A007444((n+1)/#)]` -/
def P14613639189885830569.Spec : Prop :=
  ∀ n, P14613639189885830569.a n = A130029 (n + 1)

theorem P14613639189885830569.correct : P14613639189885830569.Spec := by
  intro n
  simp only [A130029, Nat.add_sub_cancel]

end A130029

/-! ## A130029.P3809190372882448389

`∑{d}[n+1, A000040((n+1)/#)*A000010(#)]`
-/

namespace A130029.P3809190372882448389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000010 d

end

end A130029.P3809190372882448389

namespace A130029

/-- `∑{d}[n+1, A000040((n+1)/#)*A000010(#)]` -/
def P3809190372882448389.Spec : Prop :=
  ∀ n, P3809190372882448389.a n = A130029 (n + 1)

end A130029

/-! ## A130029.P15924860526064728058

`∑{d}[n+1, A007431(#)*A007445((n+1)/#)]`
-/

namespace A130029.P15924860526064728058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A007445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130029.P15924860526064728058

namespace A130029

/-- `∑{d}[n+1, A007431(#)*A007445((n+1)/#)]` -/
def P15924860526064728058.Spec : Prop :=
  ∀ n, P15924860526064728058.a n = A130029 (n + 1)

end A130029

/-! ## A130029.P3244693790930300977

`∑{d}[n+1, A029935(#)*A130030((n+1)/#)]`
-/

namespace A130029.P3244693790930300977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A130030 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130029.P3244693790930300977

namespace A130029

/-- `∑{d}[n+1, A029935(#)*A130030((n+1)/#)]` -/
def P3244693790930300977.Spec : Prop :=
  ∀ n, P3244693790930300977.a n = A130029 (n + 1)

end A130029

/-! ## A130029.P6774024895166510696

`∑{d}[n+1, A000203(#)*A361707((n+1)/#)]`
-/

namespace A130029.P6774024895166510696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A361707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130029.P6774024895166510696

namespace A130029

/-- `∑{d}[n+1, A000203(#)*A361707((n+1)/#)]` -/
def P6774024895166510696.Spec : Prop :=
  ∀ n, P6774024895166510696.a n = A130029 (n + 1)

end A130029

/-! ## A130029.P4275046806804790250

`∑{d}[n+1, A007432(#)*A361706((n+1)/#)]`
-/

namespace A130029.P4275046806804790250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A361706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130029.P4275046806804790250

namespace A130029

/-- `∑{d}[n+1, A007432(#)*A361706((n+1)/#)]` -/
def P4275046806804790250.Spec : Prop :=
  ∀ n, P4275046806804790250.a n = A130029 (n + 1)

end A130029

/-!
# A130030: a(n) = Sum_{d|n} (-1)^omega(n/d) * phi(rad(n/d)) * prime(d).

The programs for A130030, the canonical program `A130030.P6469709480114364342` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130030 has offset 1).

The definition of A130030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130030.P8969646732565848695

`∑{d}[n+1, A000040(#)*A023900((n+1)/#)]`
-/

namespace A130030.P8969646732565848695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130030.P8969646732565848695

namespace A130030

/-- `∑{d}[n+1, A000040(#)*A023900((n+1)/#)]` -/
def P8969646732565848695.Spec : Prop :=
  ∀ n, P8969646732565848695.a n = A130030 (n + 1)

end A130030

/-! ## A130030.P6469709480114364342

`∑{d}[n+1, A007445(#)*A055615((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A130030

/-- `∑{d}[n+1, A007445(#)*A055615((n+1)/#)]` -/
def P6469709480114364342.Spec : Prop :=
  ∀ n, P6469709480114364342.a n = A130030 (n + 1)

theorem P6469709480114364342.correct : P6469709480114364342.Spec := by
  intro n
  simp only [A130030, Nat.add_sub_cancel]

end A130030

/-! ## A130030.P1954086635613138448

`∑{d}[n+1, A007444(#)*A130054((n+1)/#)]`
-/

namespace A130030.P1954086635613138448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007444 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130030.P1954086635613138448

namespace A130030

/-- `∑{d}[n+1, A007444(#)*A130054((n+1)/#)]` -/
def P1954086635613138448.Spec : Prop :=
  ∀ n, P1954086635613138448.a n = A130030 (n + 1)

end A130030

/-! ## A130030.P5708789299004749305

`∑{d}[n+1, A046692(#)*A361706((n+1)/#)]`
-/

namespace A130030.P5708789299004749305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A361706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130030.P5708789299004749305

namespace A130030

/-- `∑{d}[n+1, A046692(#)*A361706((n+1)/#)]` -/
def P5708789299004749305.Spec : Prop :=
  ∀ n, P5708789299004749305.a n = A130030 (n + 1)

end A130030

/-! ## A130030.P3711723684338058979

`∑{d}[n+1, A130029(#)*A328641((n+1)/#)]`
-/

namespace A130030.P3711723684338058979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130029 d * A328641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130030.P3711723684338058979

namespace A130030

/-- `∑{d}[n+1, A130029(#)*A328641((n+1)/#)]` -/
def P3711723684338058979.Spec : Prop :=
  ∀ n, P3711723684338058979.a n = A130030 (n + 1)

end A130030

/-!
# A130031: Row sums of triangle A129467.

The programs for A130031, there is no canonical definition to state claims against.
-/

/-! ## A130031.P17415447590859777305

`∏[1-n²+n]`
-/

namespace A130031.P17415447590859777305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130031.P17415447590859777305

/-! ## A130031.P8037696612597705406

`or(1, ∏[1-(n²-n)])`
-/

namespace A130031.P8037696612597705406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A130031.P8037696612597705406

/-! ## A130031.P2654858390067313154

`(1-n²+n)*a(n-1)` with `a(0)=1`
-/

namespace A130031.P2654858390067313154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (n ^ 2 : ℤ) + (n : ℤ)) * a (n - 1)

end

end A130031.P2654858390067313154

/-! ## A130031.P17457712396604102993

`floor((1-(n²-n))*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A130031.P17457712396604102993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - ((n ^ 2 : ℤ) - (n : ℤ))) * a (n - 1)

end

end A130031.P17457712396604102993

/-! ## A130031.P357018401731611567

`(n*(1-n)+1)*floor(a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A130031.P357018401731611567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) * (1 - (n : ℤ)) + 1) * a (n - 1)

end

end A130031.P357018401731611567

/-!
# A130032: Row sums of unsigned triangle A129467.

The programs for A130032, there is no canonical definition to state claims against.
-/

/-! ## A130032.P5778534328183833379

`∏[(1-n)²+n]`
-/

namespace A130032.P5778534328183833379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130032.P5778534328183833379

/-! ## A130032.P12397786950075879695

`abs(∏[cot(Δ[acot(n-1)])])`
-/

namespace A130032.P12397786950075879695
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (f2 (n + 1) - f2 n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A130032.P12397786950075879695

/-! ## A130032.P6690765039077709687

`or(1, ∏[n²-(n-1)])`
-/

namespace A130032.P6690765039077709687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A130032.P6690765039077709687

/-! ## A130032.P17936023932972755385

`((1-n)²+n)*a(n-1)` with `a(0)=1`
-/

namespace A130032.P17936023932972755385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) * a (n - 1)

end

end A130032.P17936023932972755385

/-! ## A130032.P58341461575644932

`abs((n-1-n²)*a(n-1))` with `a(0)=1`
-/

namespace A130032.P58341461575644932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |((n : ℤ) - 1 - (n ^ 2 : ℤ)) * a (n - 1)|

end

end A130032.P58341461575644932

/-!
# A130033: Fourth (m=3) column sequence of triangle A129467.

The programs for A130033, there is no canonical definition to state claims against.
-/

/-! ## A130033.P144575839948752765

`A129467(A167614(n+2))`
-/

namespace A130033.P144575839948752765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129467 (A167614 (n + 2)).toNat

end

end A130033.P144575839948752765

/-! ## A130033.P17711634796643040535

`A191936(A155212(n)+5)`
-/

namespace A130033.P17711634796643040535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191936 (A155212 n + 5).toNat

end

end A130033.P17711634796643040535

/-! ## A130033.P10576824183385024742

`A191936(A056000(n)+7)`
-/

namespace A130033.P10576824183385024742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191936 (A056000 n + 7).toNat

end

end A130033.P10576824183385024742

/-! ## A130033.P9763990729678041913

`A191936(Δ[A034857(n+1)])`
-/

namespace A130033.P9763990729678041913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191936 (f1 (n + 1) - f1 n).toNat

end

end A130033.P9763990729678041913

/-! ## A130033.P5187853605671706246

`A191936(A000096(n+2)+n+2)`
-/

namespace A130033.P5187853605671706246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191936 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A130033.P5187853605671706246

/-!
# A130034: Denominators of partial sums of a series for the inverse of the arithmetic-geometric mean (agM) of 1 and sqrt(2)/2.

The programs for A130034, there is no canonical definition to state claims against.
-/

/-! ## A130034.P4882619491509594028

`∏[gcd(2*n, 2^n)]²*2^n`
-/

namespace A130034.P4882619491509594028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 * 2 ^ n

end

end A130034.P4882619491509594028

/-! ## A130034.P18018214234312310461

`2^n*A056982(n)`
-/

namespace A130034.P18018214234312310461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A056982 n

end

end A130034.P18018214234312310461

/-! ## A130034.P3848879660887176250

`A046161(n)²*2^n`
-/

namespace A130034.P3848879660887176250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n ^ 2 * (2 ^ n : ℤ)

end

end A130034.P3848879660887176250

/-! ## A130034.P716593433397189470

`2^(A178207(n)-1+n)`
-/

namespace A130034.P716593433397189470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A178207 n - 1 + (n : ℤ) : ℤ)

end

end A130034.P716593433397189470

/-! ## A130034.P9548787652943335591

`2^n*A001901(2*n)`
-/

namespace A130034.P9548787652943335591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001901 (2 * n)

end

end A130034.P9548787652943335591

/-! ## A130034.P14445290978021389759

`2^n*4^A005187(n)`
-/

namespace A130034.P14445290978021389759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (4 : ℚ) ^ (A005187 n : ℤ)

end

end A130034.P14445290978021389759

/-! ## A130034.P6489450962755457002

`A060818(2*n)²*2^n`
-/

namespace A130034.P6489450962755457002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (2 * n) ^ 2 * (2 ^ n : ℤ)

end

end A130034.P6489450962755457002

/-! ## A130034.P4945048879773205818

`a(n-1)*A037239(n²)` with `a(0)=1`
-/

namespace A130034.P4945048879773205818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A037239 (n ^ 2)

end

end A130034.P4945048879773205818

/-! ## A130034.P1264831146064945380

`A060818(n)*A061549(n)`
-/

namespace A130034.P1264831146064945380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 n * A061549 n

end

end A130034.P1264831146064945380

/-! ## A130034.P972684044775360227

`A046161(n)*A088802(n)`
-/

namespace A130034.P972684044775360227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n * A088802 n

end

end A130034.P972684044775360227

/-!
# A130036: Denominators of partial sums of a series for the inverse of the arithmetic-geometric mean (agM) of 1 and sqrt(3)/2.

The programs for A130036, there is no canonical definition to state claims against.
-/

/-! ## A130036.P13397430786328654583

`∏[gcd(4*n, 4^n)]²`
-/

namespace A130036.P13397430786328654583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (4 * n) (4 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A130036.P13397430786328654583

/-! ## A130036.P277448237601461231

`4^(val(n!, 2)+n+n)`
-/

namespace A130036.P277448237601461231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (SequenceMachineLib.valuation (Nat.factorial n) 2 + n + n)

end

end A130036.P277448237601461231

/-! ## A130036.P18419133914023706026

`4^∑[a(∑[n]%n)+1]/4` with `a(0)=1`
-/

namespace A130036.P18419133914023706026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A130036.P18419133914023706026

/-! ## A130036.P2601007917548332228

`xor(2*n, -(2*n))²*a(n-1)` with `a(0)=1`
-/

namespace A130036.P2601007917548332228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * n : ℤ) (-(2 * n : ℤ)) ^ 2 * a (n - 1)

end

end A130036.P2601007917548332228

/-! ## A130036.P10152962208812987565

`A088802(n)²`
-/

namespace A130036.P10152962208812987565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088802 n ^ 2

end

end A130036.P10152962208812987565

/-! ## A130036.P12355465680141252809

`4^A004134(n)`
-/

namespace A130036.P12355465680141252809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A004134 n : ℤ)

end

end A130036.P12355465680141252809

/-! ## A130036.P10250965807194879906

`4^A007238(2*n+1)`
-/

namespace A130036.P10250965807194879906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A007238 (2 * n + 1) : ℤ)

end

end A130036.P10250965807194879906

/-! ## A130036.P10947454399971718689

`A059159(n)²*a(n-1)` with `a(0)=1`
-/

namespace A130036.P10947454399971718689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059159 n ^ 2 * a (n - 1)

end

end A130036.P10947454399971718689

/-! ## A130036.P13597354429235669739

`A000302(A004134(n))`
-/

namespace A130036.P13597354429235669739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A004134 n).toNat

end

end A130036.P13597354429235669739

/-! ## A130036.P2844294316901684261

`A000302(A005187(n)+n)`
-/

namespace A130036.P2844294316901684261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A005187 n + (n : ℤ)).toNat

end

end A130036.P2844294316901684261

/-!
# A130038: Even numbers n such that n-7 is prime, but neither n-3 nor n-5 is prime.

The programs for A130038, the canonical program `A130038.P424967591654019132` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130038 has offset 1).

The definition of A130038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130038.P424967591654019132

`A083370(n+1)+7`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A130038

/-- `A083370(n+1)+7` -/
def P424967591654019132.Spec : Prop :=
  ∀ n, P424967591654019132.a n = A130038 (n + 1)

theorem P424967591654019132.correct : P424967591654019132.Spec := by
  intro n
  simp only [A130038, Nat.add_sub_cancel]

end A130038

/-! ## A130038.P17980039193183963075

`∩[A175223(n+1), A298366(n+1)]`
-/

namespace A130038.P17980039193183963075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130038.P17980039193183963075

namespace A130038

/-- `∩[A175223(n+1), A298366(n+1)]` -/
def P17980039193183963075.Spec : Prop :=
  ∀ n, (P17980039193183963075.a n : ℤ) = A130038 (n + 1)

end A130038

/-! ## A130038.P16546507551736421092

`2*(eq[3, A255274(n+1)]+3)`
-/

namespace A130038.P16546507551736421092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255274 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A130038.P16546507551736421092

namespace A130038

/-- `2*(eq[3, A255274(n+1)]+3)` -/
def P16546507551736421092.Spec : Prop :=
  ∀ n, (P16546507551736421092.a n : ℤ) = A130038 (n + 1)

end A130038

/-! ## A130038.P3920584474200813250

`A134099(n+1)+5`
-/

namespace A130038.P3920584474200813250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134099 (n + 1) + 5

end

end A130038.P3920584474200813250

namespace A130038

/-- `A134099(n+1)+5` -/
def P3920584474200813250.Spec : Prop :=
  ∀ n, P3920584474200813250.a n = A130038 (n + 1)

end A130038

/-! ## A130038.P18418241848415379567

`A242963(A134099(n+1))`
-/

namespace A130038.P18418241848415379567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242963 (A134099 (n + 1)).toNat

end

end A130038.P18418241848415379567

namespace A130038

/-- `A242963(A134099(n+1))` -/
def P18418241848415379567.Spec : Prop :=
  ∀ n, P18418241848415379567.a n = A130038 (n + 1)

end A130038

/-! ## A130038.P12504577260121250826

`A020719(A083370(n+1))`
-/

namespace A130038.P12504577260121250826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (A083370 (n + 1)).toNat

end

end A130038.P12504577260121250826

namespace A130038

/-- `A020719(A083370(n+1))` -/
def P12504577260121250826.Spec : Prop :=
  ∀ n, P12504577260121250826.a n = A130038 (n + 1)

end A130038

/-! ## A130038.P1723826314736616710

`eq[1, n-4-A136548(n+1)]+2`
-/

namespace A130038.P1723826314736616710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4 - A136548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A130038.P1723826314736616710

namespace A130038

/-- `eq[1, n-4-A136548(n+1)]+2` -/
def P1723826314736616710.Spec : Prop :=
  ∀ n, (P1723826314736616710.a n : ℤ) = A130038 (n + 1)

end A130038

/-!
# A130040: Denominators of partial sums of a series for the inverse of the arithmetic-geometric mean (agM) of 2/sqrt(5) and 1.

The programs for A130040, there is no canonical definition to state claims against.
-/

/-! ## A130040.P14473558374127234687

`lcm(A056982(n), A102377(A095351(n+1)))`
-/

namespace A130040.P14473558374127234687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056982 n) (A102377 (A095351 (n + 1)).toNat)

end

end A130040.P14473558374127234687

/-!
# A130041: Take the integers >= 2. If n is the m-th positive integer with k positive divisors, then replace it with the m-th positive integer with (k+1) positive divisors.

The programs for A130041, there is no canonical definition to state claims against.
-/

/-! ## A130041.P18107506111348288090

`A002808(A130042(n+2))`
-/

namespace A130041.P18107506111348288090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A130042 (n + 2)).toNat

end

end A130041.P18107506111348288090

/-! ## A130041.P7066994155015782998

`A018252(A130042(n+2)+1)`
-/

namespace A130041.P7066994155015782998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A130042 (n + 2) + 1).toNat

end

end A130041.P7066994155015782998

/-! ## A130041.P10254651927805717467

`A141468(A130042(n+2)+2)`
-/

namespace A130041.P10254651927805717467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A130042 (n + 2) + 2).toNat

end

end A130041.P10254651927805717467

/-!
# A130042: A130041(n) is the a(n)-th composite number.

The programs for A130042, there is no canonical definition to state claims against.
-/

/-! ## A130042.P8708853732609587499

`A065855(A130041(n+2))`
-/

namespace A130042.P8708853732609587499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A130041 (n + 2)).toNat

end

end A130042.P8708853732609587499

/-! ## A130042.P17394957670932054524

`A062298(A130041(n+2)-1)`
-/

namespace A130042.P17394957670932054524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A130041 (n + 2) - 1).toNat

end

end A130042.P17394957670932054524

/-!
# A130043: a(1)=1. a(n) = number of earlier terms which are coprime to the largest odd divisor of n.

The programs for A130043, there is no canonical definition to state claims against.
-/

/-! ## A130043.P11612959572564865867

`1-A334032(A200672(n+1))+n`
-/

namespace A130043.P11612959572564865867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A334032 (A200672 (n + 1)).toNat + (n : ℤ)

end

end A130043.P11612959572564865867

/-! ## A130043.P2328755675547132542

`A331852(A338231(n+1)-n)`
-/

namespace A130043.P2328755675547132542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A338231 (n + 1) - (n : ℤ)).toNat

end

end A130043.P2328755675547132542

/-! ## A130043.P1941539260592418061

`A331852(A000124(n)-A117592(n))`
-/

namespace A130043.P1941539260592418061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A000124 n - A117592 n).toNat

end

end A130043.P1941539260592418061

/-! ## A130043.P18433554840795701843

`A331852(A000217(n)-A076260(n+1))`
-/

namespace A130043.P18433554840795701843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A000217 n - A076260 (n + 1)).toNat

end

end A130043.P18433554840795701843

/-!
# A130046: Hexagonal pyramid of Pascal numbers in 3 dimensions. The 3-dimensional sequence is split into slices of the pyramid which in turn consist of rows of the slice, each containing multiple columns of numbers and where each element of slice j is composed of the sum of the three elements above it in slice j-1.

The programs for A130046, there is no canonical definition to state claims against.
-/

/-! ## A130046.P11057677909417285443

`and(A109390(abs(1-n)), A182634(2*n+1))`
-/

namespace A130046.P11057677909417285443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109390 |1 - (n : ℤ)|.toNat) (A182634 (2 * n + 1))

end

end A130046.P11057677909417285443

/-!
# A130047: Left half of Pascal's triangle (A034868) modulo 2.

The programs for A130047, the canonical program `A130047.P13624895427520759219` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130047 has offset 0).

The definition of A130047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130047.P2481734915773439992

`A029628(n)%2`
-/

namespace A130047.P2481734915773439992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029628 n) 2

end

end A130047.P2481734915773439992

namespace A130047

/-- `A029628(n)%2` -/
def P2481734915773439992.Spec : Prop :=
  ∀ n, P2481734915773439992.a n = A130047 n

end A130047

/-! ## A130047.P6221391745608382836

`A029644(n)%2`
-/

namespace A130047.P6221391745608382836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029644 n) 2

end

end A130047.P6221391745608382836

namespace A130047

/-- `A029644(n)%2` -/
def P6221391745608382836.Spec : Prop :=
  ∀ n, P6221391745608382836.a n = A130047 n

end A130047

/-! ## A130047.P13624895427520759219

`A034868(n)%2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A130047

/-- `A034868(n)%2` -/
def P13624895427520759219.Spec : Prop :=
  ∀ n, P13624895427520759219.a n = A130047 n

theorem P13624895427520759219.correct : P13624895427520759219.Spec := by
  intro n
  simp only [A130047]

end A130047

/-! ## A130047.P17797898308547030006

`and(A029644(n), A158388(n))`
-/

namespace A130047.P17797898308547030006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029644 n) (A158388 n)

end

end A130047.P17797898308547030006

namespace A130047

/-- `and(A029644(n), A158388(n))` -/
def P17797898308547030006.Spec : Prop :=
  ∀ n, P17797898308547030006.a n = A130047 n

end A130047

/-! ## A130047.P3956932078770781396

`and(A034868(n), A158388(n))`
-/

namespace A130047.P3956932078770781396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034868 n) (A158388 n)

end

end A130047.P3956932078770781396

namespace A130047

/-- `and(A034868(n), A158388(n))` -/
def P3956932078770781396.Spec : Prop :=
  ∀ n, P3956932078770781396.a n = A130047 n

end A130047

/-! ## A130047.P7208500642587449669

`and(A008314(n), A267687(n))`
-/

namespace A130047.P7208500642587449669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008314 n) (A267687 n)

end

end A130047.P7208500642587449669

namespace A130047

/-- `and(A008314(n), A267687(n))` -/
def P7208500642587449669.Spec : Prop :=
  ∀ n, P7208500642587449669.a n = A130047 n

end A130047

/-! ## A130047.P8670164748389173704

`and(1, (A034868(n)*A076339(n+1))²)`
-/

namespace A130047.P8670164748389173704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A034868 n * A076339 (n + 1)) ^ 2)

end

end A130047.P8670164748389173704

namespace A130047

/-- `and(1, (A034868(n)*A076339(n+1))²)` -/
def P8670164748389173704.Spec : Prop :=
  ∀ n, P8670164748389173704.a n = A130047 n

end A130047

/-! ## A130047.P6266005120653723570

`A007318(record[A116942(n)])%2`
-/

namespace A130047.P6266005120653723570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 2

end

end A130047.P6266005120653723570

namespace A130047

/-- `A007318(record[A116942(n)])%2` -/
def P6266005120653723570.Spec : Prop :=
  ∀ n, P6266005120653723570.a n = A130047 n

end A130047

/-! ## A130047.P5829209718397363712

`A089885(A091018(n))`
-/

namespace A130047.P5829209718397363712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089885 (A091018 n).toNat

end

end A130047.P5829209718397363712

namespace A130047

/-- `A089885(A091018(n))` -/
def P5829209718397363712.Spec : Prop :=
  ∀ n, P5829209718397363712.a n = A130047 n

end A130047

/-! ## A130047.P8006539487742028647

`A290452(lt[A026729(n), 1])`
-/

namespace A130047.P8006539487742028647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A130047.P8006539487742028647

namespace A130047

/-- `A290452(lt[A026729(n), 1])` -/
def P8006539487742028647.Spec : Prop :=
  ∀ n, P8006539487742028647.a n = A130047 n

end A130047

/-! ## A130047.P15777564350452806389

`A290452(lt[A207543(n), 1])`
-/

namespace A130047.P15777564350452806389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207543 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A130047.P15777564350452806389

namespace A130047

/-- `A290452(lt[A207543(n), 1])` -/
def P15777564350452806389.Spec : Prop :=
  ∀ n, P15777564350452806389.a n = A130047 n

end A130047

/-! ## A130047.P13729016736873001059

`A029618(eq[0, A026729(n)])%2`
-/

namespace A130047.P13729016736873001059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) 2

end

end A130047.P13729016736873001059

namespace A130047

/-- `A029618(eq[0, A026729(n)])%2` -/
def P13729016736873001059.Spec : Prop :=
  ∀ n, P13729016736873001059.a n = A130047 n

end A130047

/-! ## A130047.P13590566592425971150

`A029635(eq[0, A026729(n)])%2`
-/

namespace A130047.P13590566592425971150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) 2

end

end A130047.P13590566592425971150

namespace A130047

/-- `A029635(eq[0, A026729(n)])%2` -/
def P13590566592425971150.Spec : Prop :=
  ∀ n, P13590566592425971150.a n = A130047 n

end A130047

/-! ## A130047.P17856666325525551088

`A306914(eq[1, A307039(n)])%2`
-/

namespace A130047.P17856666325525551088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) 2

end

end A130047.P17856666325525551088

namespace A130047

/-- `A306914(eq[1, A307039(n)])%2` -/
def P17856666325525551088.Spec : Prop :=
  ∀ n, P17856666325525551088.a n = A130047 n

end A130047

/-! ## A130047.P218467876655481283

`A290452(lt[A029635(n), A029635(n+1)])`
-/

namespace A130047.P218467876655481283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130047.P218467876655481283

namespace A130047

/-- `A290452(lt[A029635(n), A029635(n+1)])` -/
def P218467876655481283.Spec : Prop :=
  ∀ n, P218467876655481283.a n = A130047 n

end A130047

/-! ## A130047.P12390813774354622514

`A047999(lt[A002262(n), A176346(n)])`
-/

namespace A130047.P12390813774354622514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130047.P12390813774354622514

namespace A130047

/-- `A047999(lt[A002262(n), A176346(n)])` -/
def P12390813774354622514.Spec : Prop :=
  ∀ n, P12390813774354622514.a n = A130047 n

end A130047

/-! ## A130047.P10520458601941904424

`and(A029628(n), A176410(n))`
-/

namespace A130047.P10520458601941904424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029628 n) (A176410 n)

end

end A130047.P10520458601941904424

namespace A130047

/-- `and(A029628(n), A176410(n))` -/
def P10520458601941904424.Spec : Prop :=
  ∀ n, P10520458601941904424.a n = A130047 n

end A130047

/-! ## A130047.P9929727333861744291

`and(A029644(n), A176410(n))`
-/

namespace A130047.P9929727333861744291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029644 n) (A176410 n)

end

end A130047.P9929727333861744291

namespace A130047

/-- `and(A029644(n), A176410(n))` -/
def P9929727333861744291.Spec : Prop :=
  ∀ n, P9929727333861744291.a n = A130047 n

end A130047

/-! ## A130047.P10398857077642353499

`and(A034868(n), A176410(n))`
-/

namespace A130047.P10398857077642353499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034868 n) (A176410 n)

end

end A130047.P10398857077642353499

namespace A130047

/-- `and(A034868(n), A176410(n))` -/
def P10398857077642353499.Spec : Prop :=
  ∀ n, P10398857077642353499.a n = A130047 n

end A130047

/-! ## A130047.P9869727191084117030

`and(A034868(n), A077860(n))`
-/

namespace A130047.P9869727191084117030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034868 n) (A077860 n)

end

end A130047.P9869727191084117030

namespace A130047

/-- `and(A034868(n), A077860(n))` -/
def P9869727191084117030.Spec : Prop :=
  ∀ n, P9869727191084117030.a n = A130047 n

end A130047

/-!
# A130048: Complement of inductive sum sequence A130049.

The programs for A130048, there is no canonical definition to state claims against.
-/

/-! ## A130048.P15859550153352517198

`comp[A130049(n+1)]`
-/

namespace A130048.P15859550153352517198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A130048.P15859550153352517198

/-! ## A130048.P13345557209729044372

`comp[∪[A130050(n+1), A130051(n+1)]]`
-/

namespace A130048.P13345557209729044372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130050 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130051 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130048.P13345557209729044372

/-! ## A130048.P13901310496840918897

`lt[A200505(n), A035103(A159791(2*n+3))]`
-/

namespace A130048.P13901310496840918897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200505 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (A159791 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130048.P13901310496840918897

/-!
# A130050: A bisection of A120049.

The programs for A130050, there is no canonical definition to state claims against.
-/

/-! ## A130050.P3553067594365039775

`1+∑[A130048(n+2)]`
-/

namespace A130050.P3553067594365039775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130048 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130050.P3553067594365039775

/-! ## A130050.P905245419552176405

`A065475(∑[A130048(n+2)])`
-/

namespace A130050.P905245419552176405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130048 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130050.P905245419552176405

/-! ## A130050.P13759442192096255422

`A153152(∑[A130048(n+2)])`
-/

namespace A130050.P13759442192096255422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130048 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130050.P13759442192096255422

/-! ## A130050.P8223169931733960892

`A130049(2*(n+1))`
-/

namespace A130050.P8223169931733960892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130049 (2 * (n + 1))

end

end A130050.P8223169931733960892

/-! ## A130050.P8351479090088684980

`or(char[1], A130049(n+2+n))`
-/

namespace A130050.P8351479090088684980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A130049 (n + 2 + n))

end

end A130050.P8351479090088684980

/-!
# A130051: A bisection of A120049.

The programs for A130051, there is no canonical definition to state claims against.
-/

/-! ## A130051.P8592373940492570342

`A130049(Δ[n²])`
-/

namespace A130051.P8592373940492570342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130049 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A130051.P8592373940492570342

/-! ## A130051.P14208967885525090805

`record[A130049(n^(n%2))]`
-/

namespace A130051.P14208967885525090805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130049 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130051.P14208967885525090805

/-! ## A130051.P13267470349177546219

`and(-1, A130049(2*n+1))`
-/

namespace A130051.P13267470349177546219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A130049 (2 * n + 1))

end

end A130051.P13267470349177546219

/-! ## A130051.P2569052476317682284

`record[(-1)^n*A130049(n+1)]`
-/

namespace A130051.P2569052476317682284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A130049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130051.P2569052476317682284

/-! ## A130051.P12186241541460465766

`record[A130049(comp[A164993(n)])]`
-/

namespace A130051.P12186241541460465766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164993 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130049 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130051.P12186241541460465766

/-!
# A130052: Numbers that are the sum of one or more consecutive squares in more than one way.

The programs for A130052, there is no canonical definition to state claims against.
-/

/-! ## A130052.P1017132425193701038

`∪[A062681(n+1), A151557(n+1)]`
-/

namespace A130052.P1017132425193701038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130052.P1017132425193701038

/-!
# A130053: G.f. A(x) = (1-x+x^2)/(1-x)^3 - x*[Sum_{n>=0} x^(n + 2^n)]/(1-x)^2.

The programs for A130053, there is no canonical definition to state claims against.
-/

/-! ## A130053.P10578727800025311879

`∑[ceil(n-log2(a(n-1)))-1]` with `a(0)=1, a(1)=1`
-/

namespace A130053.P10578727800025311879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌈(n : ℝ) - Real.logb 2 (f1 (n - 1) : ℝ)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130053.P10578727800025311879

/-! ## A130053.P5574196758919741698

`∑[n-floor(log2(2*a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A130053.P5574196758919741698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) - (Nat.log 2 (2 * f1 (n - 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130053.P5574196758919741698

/-! ## A130053.P144340577029571667

`∑[∑[char[comp[2^n+n]+1]]]+1`
-/

namespace A130053.P144340577029571667
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A130053.P144340577029571667

/-! ## A130053.P13749141354368842677

`floor(a(n-1)+sqrt(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A130053.P13749141354368842677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.sqrt (a (n - 1) + a (n - 2) : ℝ)⌋

end

end A130053.P13749141354368842677

/-! ## A130053.P15545670488785167545

`A065562(∑[n]+1)`
-/

namespace A130053.P15545670488785167545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065562 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A130053.P15545670488785167545

/-! ## A130053.P15636632251738887034

`A181133(a(n-1))` with `a(0)=1`
-/

namespace A130053.P15636632251738887034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A181133 (a (n - 1)).toNat

end

end A130053.P15636632251738887034

/-! ## A130053.P10987220082571391226

`∑[A103354(round(acot(n)+n))]`
-/

namespace A130053.P10987220082571391226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130053.P10987220082571391226

/-! ## A130053.P4721055980552361932

`∑[∑[A288381(n+1)]+1]`
-/

namespace A130053.P4721055980552361932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288381 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130053.P4721055980552361932

/-! ## A130053.P1792164629643395293

`abs(1-A007401(a(n-1)+1))` with `a(0)=1`
-/

namespace A130053.P1792164629643395293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |1 - A007401 (a (n - 1) + 1).toNat|

end

end A130053.P1792164629643395293

/-! ## A130053.P3769509814518561523

`abs(2-A014132(a(n-1)+1))` with `a(0)=1`
-/

namespace A130053.P3769509814518561523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |2 - A014132 (a (n - 1) + 1).toNat|

end

end A130053.P3769509814518561523

/-!
# A130054: Inverse Moebius transform of A023900.

The programs for A130054, the canonical program `A130054.P881181456311237944` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130054 has offset 1).

The definition of A130054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130054.P13154532636316946889

`∑{d}[n+1, A023900(#)]`
-/

namespace A130054.P13154532636316946889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d

end

end A130054.P13154532636316946889

namespace A130054

/-- `∑{d}[n+1, A023900(#)]` -/
def P13154532636316946889.Spec : Prop :=
  ∀ n, P13154532636316946889.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P3141745749366182820

`∑{d}[n+1, #*A328641((n+1)/#)]`
-/

namespace A130054.P3141745749366182820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A328641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P3141745749366182820

namespace A130054

/-- `∑{d}[n+1, #*A328641((n+1)/#)]` -/
def P3141745749366182820.Spec : Prop :=
  ∀ n, P3141745749366182820.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P17012267525094502651

`∑{d}[n+1, A319340(#)-A000010(#)]`
-/

namespace A130054.P17012267525094502651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A319340 d - A000010 d)

end

end A130054.P17012267525094502651

namespace A130054

/-- `∑{d}[n+1, A319340(#)-A000010(#)]` -/
def P17012267525094502651.Spec : Prop :=
  ∀ n, P17012267525094502651.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P255634738647846405

`∑{d}[n+1, A007425(#)*A046692((n+1)/#)]`
-/

namespace A130054.P255634738647846405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P255634738647846405

namespace A130054

/-- `∑{d}[n+1, A007425(#)*A046692((n+1)/#)]` -/
def P255634738647846405.Spec : Prop :=
  ∀ n, P255634738647846405.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P13476366702358030880

`∑{d}[n+1, A000005(#)*A055615((n+1)/#)]`
-/

namespace A130054.P13476366702358030880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P13476366702358030880

namespace A130054

/-- `∑{d}[n+1, A000005(#)*A055615((n+1)/#)]` -/
def P13476366702358030880.Spec : Prop :=
  ∀ n, P13476366702358030880.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P570086966469516341

`∑{d}[n+1, A000203(#)*A101035((n+1)/#)]`
-/

namespace A130054.P570086966469516341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P570086966469516341

namespace A130054

/-- `∑{d}[n+1, A000203(#)*A101035((n+1)/#)]` -/
def P570086966469516341.Spec : Prop :=
  ∀ n, P570086966469516341.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P88296156397900106

`∑{d}[n+1, A046970(#)*A057660((n+1)/#)]`
-/

namespace A130054.P88296156397900106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P88296156397900106

namespace A130054

/-- `∑{d}[n+1, A046970(#)*A057660((n+1)/#)]` -/
def P88296156397900106.Spec : Prop :=
  ∀ n, P88296156397900106.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P881181456311237944

`∑{d}[n+1, A038712(#)*A117212((n+1)/#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A130054

/-- `∑{d}[n+1, A038712(#)*A117212((n+1)/#)]` -/
def P881181456311237944.Spec : Prop :=
  ∀ n, P881181456311237944.a n = A130054 (n + 1)

theorem P881181456311237944.correct : P881181456311237944.Spec := by
  intro n
  simp only [A130054, Nat.add_sub_cancel]

end A130054

/-! ## A130054.P8004935249996769471

`∑{d}[n+1, A007430(#)*A327960((n+1)/#)]`
-/

namespace A130054.P8004935249996769471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P8004935249996769471

namespace A130054

/-- `∑{d}[n+1, A007430(#)*A327960((n+1)/#)]` -/
def P8004935249996769471.Spec : Prop :=
  ∀ n, P8004935249996769471.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P18162004091855434983

`∑{d}[n+1, A007429(#)*A328722((n+1)/#)]`
-/

namespace A130054.P18162004091855434983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P18162004091855434983

namespace A130054

/-- `∑{d}[n+1, A007429(#)*A328722((n+1)/#)]` -/
def P18162004091855434983.Spec : Prop :=
  ∀ n, P18162004091855434983.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P4689989364169100752

`∑{d}[n+1, A001227(#)*A349341((n+1)/#)]`
-/

namespace A130054.P4689989364169100752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P4689989364169100752

namespace A130054

/-- `∑{d}[n+1, A001227(#)*A349341((n+1)/#)]` -/
def P4689989364169100752.Spec : Prop :=
  ∀ n, P4689989364169100752.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P7132394030089549911

`∑{d}[n+1, A001157(#)*A351654((n+1)/#)]`
-/

namespace A130054.P7132394030089549911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P7132394030089549911

namespace A130054

/-- `∑{d}[n+1, A001157(#)*A351654((n+1)/#)]` -/
def P7132394030089549911.Spec : Prop :=
  ∀ n, P7132394030089549911.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P3673436980052193723

`∑{d}[n+1, A048691(#)*A323363((n+1)/#)]`
-/

namespace A130054.P3673436980052193723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P3673436980052193723

namespace A130054

/-- `∑{d}[n+1, A048691(#)*A323363((n+1)/#)]` -/
def P3673436980052193723.Spec : Prop :=
  ∀ n, P3673436980052193723.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P12574805531574612038

`∑{d}[n+1, A046951(#)*A328729((n+1)/#)]`
-/

namespace A130054.P12574805531574612038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P12574805531574612038

namespace A130054

/-- `∑{d}[n+1, A046951(#)*A328729((n+1)/#)]` -/
def P12574805531574612038.Spec : Prop :=
  ∀ n, P12574805531574612038.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P8535832726496582913

`∑{d}[n+1, A048272(#)*A349343((n+1)/#)]`
-/

namespace A130054.P8535832726496582913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P8535832726496582913

namespace A130054

/-- `∑{d}[n+1, A048272(#)*A349343((n+1)/#)]` -/
def P8535832726496582913.Spec : Prop :=
  ∀ n, P8535832726496582913.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P10887489565118024400

`∑{d}[n+1, A060648(#)*A347092((n+1)/#)]`
-/

namespace A130054.P10887489565118024400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A347092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P10887489565118024400

namespace A130054

/-- `∑{d}[n+1, A060648(#)*A347092((n+1)/#)]` -/
def P10887489565118024400.Spec : Prop :=
  ∀ n, P10887489565118024400.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P15556759904906014454

`∑{d}[n+1, A133700(#)*A326938((n+1)/#)]`
-/

namespace A130054.P15556759904906014454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133700 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P15556759904906014454

namespace A130054

/-- `∑{d}[n+1, A133700(#)*A326938((n+1)/#)]` -/
def P15556759904906014454.Spec : Prop :=
  ∀ n, P15556759904906014454.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P11364060253558404279

`∑{d}[A267099(n+1), A354104(#)]`
-/

namespace A130054.P11364060253558404279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A354104 d

end

end A130054.P11364060253558404279

namespace A130054

/-- `∑{d}[A267099(n+1), A354104(#)]` -/
def P11364060253558404279.Spec : Prop :=
  ∀ n, P11364060253558404279.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P16168337760672168163

`∑{d}[∑{d}[n+1, A354102(#)], A354104(#)]`
-/

namespace A130054.P16168337760672168163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A354102 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A354104 d

end

end A130054.P16168337760672168163

namespace A130054

/-- `∑{d}[∑{d}[n+1, A354102(#)], A354104(#)]` -/
def P16168337760672168163.Spec : Prop :=
  ∀ n, P16168337760672168163.a n = A130054 (n + 1)

end A130054

/-! ## A130054.P6399837939832596230

`A130055(∑[n]+1)`
-/

namespace A130054.P6399837939832596230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130055 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A130054.P6399837939832596230

namespace A130054

/-- `A130055(∑[n]+1)` -/
def P6399837939832596230.Spec : Prop :=
  ∀ n, P6399837939832596230.a n = A130054 (n + 1)

end A130054

/-!
# A130055: A129691 * A127093.

The programs for A130055, the canonical program `A130055.P931187158883398319` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130055 has offset 1).

The definition of A130055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130055.P931187158883398319

`A127093(n+1)*A130054(A010766(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A130055

/-- `A127093(n+1)*A130054(A010766(n+1))` -/
def P931187158883398319.Spec : Prop :=
  ∀ n, P931187158883398319.a n = A130055 (n + 1)

theorem P931187158883398319.correct : P931187158883398319.Spec := by
  intro n
  simp only [A130055, Nat.add_sub_cancel]

end A130055

/-! ## A130055.P18333871554432846993

`A127093(n+1)*A130054(A049834(n+1))`
-/

namespace A130055.P18333871554432846993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A130054 (A049834 (n + 1)).toNat

end

end A130055.P18333871554432846993

namespace A130055

/-- `A127093(n+1)*A130054(A049834(n+1))` -/
def P18333871554432846993.Spec : Prop :=
  ∀ n, P18333871554432846993.a n = A130055 (n + 1)

end A130055

/-! ## A130055.P15341385487320318965

`A127093(n+1)*A130054(A054531(n+1))`
-/

namespace A130055.P15341385487320318965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A130054 (A054531 (n + 1)).toNat

end

end A130055.P15341385487320318965

namespace A130055

/-- `A127093(n+1)*A130054(A054531(n+1))` -/
def P15341385487320318965.Spec : Prop :=
  ∀ n, P15341385487320318965.a n = A130055 (n + 1)

end A130055

/-! ## A130055.P10473763659570870475

`A127093(n+1)*A130054(A059026(n+1))`
-/

namespace A130055.P10473763659570870475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A130054 (A059026 (n + 1)).toNat

end

end A130055.P10473763659570870475

namespace A130055

/-- `A127093(n+1)*A130054(A059026(n+1))` -/
def P10473763659570870475.Spec : Prop :=
  ∀ n, P10473763659570870475.a n = A130055 (n + 1)

end A130055

/-! ## A130055.P9111895372410458018

`A127093(n+1)*A130054(A219158(n+1))`
-/

namespace A130055.P9111895372410458018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A130054 (A219158 (n + 1)).toNat

end

end A130055.P9111895372410458018

namespace A130055

/-- `A127093(n+1)*A130054(A219158(n+1))` -/
def P9111895372410458018.Spec : Prop :=
  ∀ n, P9111895372410458018.a n = A130055 (n + 1)

end A130055

/-! ## A130055.P16915231590262653701

`A127093(n+1)*A130054(A234575(n+1))`
-/

namespace A130055.P16915231590262653701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A130054 (A234575 (n + 1)).toNat

end

end A130055.P16915231590262653701

namespace A130055

/-- `A127093(n+1)*A130054(A234575(n+1))` -/
def P16915231590262653701.Spec : Prop :=
  ∀ n, P16915231590262653701.a n = A130055 (n + 1)

end A130055

/-! ## A130055.P357499898025786630

`A127093(n+1)*A130054(A051537(n+1))`
-/

namespace A130055.P357499898025786630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A130054 (A051537 (n + 1)).toNat

end

end A130055.P357499898025786630

namespace A130055

/-- `A127093(n+1)*A130054(A051537(n+1))` -/
def P357499898025786630.Spec : Prop :=
  ∀ n, P357499898025786630.a n = A130055 (n + 1)

end A130055

/-!
# A130057: Primes prime(k) such that at least one of the two numbers (prime(k+1)^2-prime(k)^2)/2 - 1 and (prime(k+1)^2-prime(k)^2)/2 + 1 is prime.

The programs for A130057, there is no canonical definition to state claims against.
-/

/-! ## A130057.P16651450600168953968

`p?[A258266(n+3)]`
-/

namespace A130057.P16651450600168953968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130057.P16651450600168953968

/-! ## A130057.P4062003560525725403

`p?[record[A258266(A052938(n))]]`
-/

namespace A130057.P4062003560525725403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130057.P4062003560525725403

/-! ## A130057.P2158327899107531819

`record[A039649(A258266(n+4))]`
-/

namespace A130057.P2158327899107531819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A258266 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130057.P2158327899107531819

/-! ## A130057.P12700838896359460922

`filter[A258266(n+1), A257531(#)]`
-/

namespace A130057.P12700838896359460922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A130057.P12700838896359460922

/-! ## A130057.P17668411108891673502

`filter[A258266(n+2), A080545(#)]`
-/

namespace A130057.P17668411108891673502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A130057.P17668411108891673502

/-!
# A130058: Numbers m such that k = m*23^2 divides 3^(k-1) - 2^(k-1).

The programs for A130058, there is no canonical definition to state claims against.
-/

/-! ## A130058.P17974736530689172767

`A161709(eq[A017817(n), A197401(n+1)])`
-/

namespace A130058.P17974736530689172767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A130058.P17974736530689172767

/-!
# A130059: Primes p such that k=p*23^2 divides 3^(k-1) - 2^(k-1); or primes in A130058.

The programs for A130059, there is no canonical definition to state claims against.
-/

/-! ## A130059.P6448219779627254021

`p?[A130058(n+1)]`
-/

namespace A130059.P6448219779627254021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130059.P6448219779627254021

/-! ## A130059.P5655142883741036152

`p?[record[A130058(C(comp[∑[n]]-n, 2)-n)]]`
-/

namespace A130059.P5655142883741036152
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130058 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130059.P5655142883741036152

/-! ## A130059.P11467463051408219517

`p?[record[A130058(A000174(n))]]`
-/

namespace A130059.P11467463051408219517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130058 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130059.P11467463051408219517

/-! ## A130059.P908963648613529020

`record[A006530(A130058(n+2))]`
-/

namespace A130059.P908963648613529020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A130058 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130059.P908963648613529020

/-!
# A130060: Primes p such that p^2 divides 3^p - 2^p - 1; or primes in A127074.

The programs for A130060, there is no canonical definition to state claims against.
-/

/-! ## A130060.P17417091319902306436

`p?[A127074(n+1)]`
-/

namespace A130060.P17417091319902306436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130060.P17417091319902306436

/-!
# A130061: Numbers k that divide 3^((k-1)/2) - 2^((k-1)/2) - 1.

The programs for A130061, there is no canonical definition to state claims against.
-/

/-! ## A130061.P13114373844677460824

`A294091(2*(n+2))%A007712(A294144(n+2))`
-/

namespace A130061.P13114373844677460824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294091 (2 * (n + 2))) (A007712 (A294144 (n + 2)).toNat)

end

end A130061.P13114373844677460824

/-!
# A130063: Primes p such that p divides 3^((p+1)/2) - 2^((p+1)/2) - 1.

The programs for A130063, the canonical program `A130063.P2413071132401131806` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130063 has offset 1).

The definition of A130063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130063.P2413071132401131806

`p?[12*n-a(n-2)]` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A130063

/-- `p?[12*n-a(n-2)]` -/
def P2413071132401131806.Spec : Prop :=
  ∀ n, P2413071132401131806.a n = A130063 (n + 1)

theorem P2413071132401131806.correct : P2413071132401131806.Spec := by
  intro n
  simp only [A130063, Nat.add_sub_cancel]

end A130063

/-! ## A130063.P4858841149441790696

`p?[xor(4, 2*or(2, n)+3*n+1+n)]`
-/

namespace A130063.P4858841149441790696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (2 * Nat.lor 2 n + (3 * n + 1) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A130063.P4858841149441790696

namespace A130063

/-- `p?[xor(4, 2*or(2, n)+3*n+1+n)]` -/
def P4858841149441790696.Spec : Prop :=
  ∀ n, (P4858841149441790696.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P13931066811195374061

`∩[A038876(n+1), A097933(n+1)]`
-/

namespace A130063.P13931066811195374061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P13931066811195374061

namespace A130063

/-- `∩[A038876(n+1), A097933(n+1)]` -/
def P13931066811195374061.Spec : Prop :=
  ∀ n, (P13931066811195374061.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P4619326734505605579

`∩[A038874(n+1), A097934(n+1)]`
-/

namespace A130063.P4619326734505605579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P4619326734505605579

namespace A130063

/-- `∩[A038874(n+1), A097934(n+1)]` -/
def P4619326734505605579.Spec : Prop :=
  ∀ n, (P4619326734505605579.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P3370204712228606102

`∩[A001132(n+1), A038874(n+1)]`
-/

namespace A130063.P3370204712228606102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P3370204712228606102

namespace A130063

/-- `∩[A001132(n+1), A038874(n+1)]` -/
def P3370204712228606102.Spec : Prop :=
  ∀ n, (P3370204712228606102.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P2944913492842697918

`∩[A001132(n+1), A038876(n+1)]`
-/

namespace A130063.P2944913492842697918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P2944913492842697918

namespace A130063

/-- `∩[A001132(n+1), A038876(n+1)]` -/
def P2944913492842697918.Spec : Prop :=
  ∀ n, (P2944913492842697918.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P12810792934172084617

`∩[A001132(n+1), A097933(n+1)]`
-/

namespace A130063.P12810792934172084617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P12810792934172084617

namespace A130063

/-- `∩[A001132(n+1), A097933(n+1)]` -/
def P12810792934172084617.Spec : Prop :=
  ∀ n, (P12810792934172084617.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P17791213486787509525

`∩[A001132(n+1), A097934(n+1)]`
-/

namespace A130063.P17791213486787509525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P17791213486787509525

namespace A130063

/-- `∩[A001132(n+1), A097934(n+1)]` -/
def P17791213486787509525.Spec : Prop :=
  ∀ n, (P17791213486787509525.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P10215528789759403943

`∩[A038873(n+1), A097933(n+1)]`
-/

namespace A130063.P10215528789759403943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P10215528789759403943

namespace A130063

/-- `∩[A038873(n+1), A097933(n+1)]` -/
def P10215528789759403943.Spec : Prop :=
  ∀ n, (P10215528789759403943.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P4289895705350128457

`∩[A038873(n+1), A097934(n+1)]`
-/

namespace A130063.P4289895705350128457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P4289895705350128457

namespace A130063

/-- `∩[A038873(n+1), A097934(n+1)]` -/
def P4289895705350128457.Spec : Prop :=
  ∀ n, (P4289895705350128457.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P8457126700790457466

`∩[A055673(n+1), A097933(n+1)]`
-/

namespace A130063.P8457126700790457466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P8457126700790457466

namespace A130063

/-- `∩[A055673(n+1), A097933(n+1)]` -/
def P8457126700790457466.Spec : Prop :=
  ∀ n, (P8457126700790457466.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P14041718950796594347

`∩[A038874(n+1), A270951(n+1)]`
-/

namespace A130063.P14041718950796594347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P14041718950796594347

namespace A130063

/-- `∩[A038874(n+1), A270951(n+1)]` -/
def P14041718950796594347.Spec : Prop :=
  ∀ n, (P14041718950796594347.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P2722759883671498805

`∩[A038874(n+1), A366526(n+1)]`
-/

namespace A130063.P2722759883671498805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P2722759883671498805

namespace A130063

/-- `∩[A038874(n+1), A366526(n+1)]` -/
def P2722759883671498805.Spec : Prop :=
  ∀ n, (P2722759883671498805.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P17379007962711705432

`∩[A001132(n+1), A072330(n+1)]`
-/

namespace A130063.P17379007962711705432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P17379007962711705432

namespace A130063

/-- `∩[A001132(n+1), A072330(n+1)]` -/
def P17379007962711705432.Spec : Prop :=
  ∀ n, (P17379007962711705432.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P5441236133161897807

`∩[A038873(n+1), A072330(n+1)]`
-/

namespace A130063.P5441236133161897807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P5441236133161897807

namespace A130063

/-- `∩[A038873(n+1), A072330(n+1)]` -/
def P5441236133161897807.Spec : Prop :=
  ∀ n, (P5441236133161897807.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P9066020392817279970

`∩[A038876(n+1), A072330(n+1)]`
-/

namespace A130063.P9066020392817279970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P9066020392817279970

namespace A130063

/-- `∩[A038876(n+1), A072330(n+1)]` -/
def P9066020392817279970.Spec : Prop :=
  ∀ n, (P9066020392817279970.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P4190345194428569465

`∩[A072330(n+1), A097958(n+1)]`
-/

namespace A130063.P4190345194428569465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P4190345194428569465

namespace A130063

/-- `∩[A072330(n+1), A097958(n+1)]` -/
def P4190345194428569465.Spec : Prop :=
  ∀ n, (P4190345194428569465.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P1187067504677452124

`∩[A038874(n+1), A058529(n+1)]`
-/

namespace A130063.P1187067504677452124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P1187067504677452124

namespace A130063

/-- `∩[A038874(n+1), A058529(n+1)]` -/
def P1187067504677452124.Spec : Prop :=
  ∀ n, (P1187067504677452124.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P420379194038598015

`∩[A038876(n+1), A058529(n+1)]`
-/

namespace A130063.P420379194038598015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P420379194038598015

namespace A130063

/-- `∩[A038876(n+1), A058529(n+1)]` -/
def P420379194038598015.Spec : Prop :=
  ∀ n, (P420379194038598015.a n : ℤ) = A130063 (n + 1)

end A130063

/-! ## A130063.P13339396818526237481

`∩[A097934(n+1), A058529(n+1)]`
-/

namespace A130063.P13339396818526237481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130063.P13339396818526237481

namespace A130063

/-- `∩[A097934(n+1), A058529(n+1)]` -/
def P13339396818526237481.Spec : Prop :=
  ∀ n, (P13339396818526237481.a n : ℤ) = A130063 (n + 1)

end A130063

/-!
# A130064: a(n) = (n / SmallestPrimeFactor(n)) * GreatestPrimeFactor(n).

The programs for A130064, there is no canonical definition to state claims against.
-/

/-! ## A130064.P16387366842408309814

`A032742(n+1)*A006530(n+1)`
-/

namespace A130064.P16387366842408309814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A006530 (n + 1)

end

end A130064.P16387366842408309814

/-! ## A130064.P15297242647725495363

`A000290(n+1)/A130065(n+1)`
-/

namespace A130064.P15297242647725495363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (n + 1) : ℚ) / (A130065 (n + 1) : ℚ)

end

end A130064.P15297242647725495363

/-! ## A130064.P11300791004782371817

`(n+1)*A006530(n+1)/A020639(n+1)`
-/

namespace A130064.P11300791004782371817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A006530 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A130064.P11300791004782371817

/-! ## A130064.P13112988694512039726

`A130065(n+1)+(n+1)*A046665(n+1)*A074320(n+1)/A066048(n+1)`
-/

namespace A130064.P13112988694512039726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130065 (n + 1) : ℚ) + ((n + 1 : ℤ) * A046665 (n + 1) * A074320 (n + 1) : ℚ) / (A066048 (n + 1) : ℚ)

end

end A130064.P13112988694512039726

/-! ## A130064.P8246688025379601499

`A085392(n+1)*A117818(n+1)`
-/

namespace A130064.P8246688025379601499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1) * A117818 (n + 1)

end

end A130064.P8246688025379601499

/-! ## A130064.P3998116070589730944

`A217434(n+1)*A381639(n+1)`
-/

namespace A130064.P3998116070589730944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (n + 1) * A381639 (n + 1)

end

end A130064.P3998116070589730944

/-! ## A130064.P17959292583826039002

`A253560(n+1)/A020639(n+1)`
-/

namespace A130064.P17959292583826039002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A130064.P17959292583826039002

/-! ## A130064.P17076849528181447183

`A253560(n+1)/sqrt(A088377(n+1))`
-/

namespace A130064.P17076849528181447183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℝ) / Real.sqrt (A088377 (n + 1) : ℝ)

end

end A130064.P17076849528181447183

/-! ## A130064.P17055924387089002052

`A032742(n+1)*A053585(∏{p}[n+1, #])`
-/

namespace A130064.P17055924387089002052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A130064.P17055924387089002052

/-! ## A130064.P1811086884085585233

`(n+1-A060681(n+1))*A006530(n+1)`
-/

namespace A130064.P1811086884085585233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A060681 (n + 1)) * A006530 (n + 1)

end

end A130064.P1811086884085585233

/-! ## A130064.P7989182486042335322

`(n+1)/A052126(n+1)*A032742(n+1)`
-/

namespace A130064.P7989182486042335322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (n + 1) : ℚ) * (A032742 (n + 1) : ℚ)

end

end A130064.P7989182486042335322

/-! ## A130064.P15995742449670507617

`gcd(n+1, A139171(∏{p}[n+1, #]))*A032742(n+1)`
-/

namespace A130064.P15995742449670507617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A139171 (∏ p ∈ Nat.primeFactors (f1 n), p)) : ℤ) * A032742 (n + 1)

end

end A130064.P15995742449670507617

/-! ## A130064.P5462332036414276279

`A014963(A053585(n+1))*A032742(n+1)`
-/

namespace A130064.P5462332036414276279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A053585 (n + 1)).toNat * A032742 (n + 1)

end

end A130064.P5462332036414276279

/-! ## A130064.P148031412738958896

`(A318884(n+1)-A318886(n+1))*A032742(n+1)`
-/

namespace A130064.P148031412738958896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A318884 (n + 1) - A318886 (n + 1)) * A032742 (n + 1)

end

end A130064.P148031412738958896

/-! ## A130064.P3155980648260322346

`A020639((n+1)/A051119(n+1))*A032742(n+1)`
-/

namespace A130064.P3155980648260322346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (n + 1) : ℚ))).toNat * A032742 (n + 1)

end

end A130064.P3155980648260322346

/-! ## A130064.P5215395256798530563

`A032742(n+1)/A020639(n+1)*A066048(n+1)`
-/

namespace A130064.P5215395256798530563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ) * (A066048 (n + 1) : ℚ)

end

end A130064.P5215395256798530563

/-! ## A130064.P291737582882319881

`A006530(n+1)/A117366(n+1)*A285639(n+1)`
-/

namespace A130064.P291737582882319881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) / (A117366 (n + 1) : ℚ) * (A285639 (n + 1) : ℚ)

end

end A130064.P291737582882319881

/-! ## A130064.P6784451345439683212

`A006530(n+1)*A054576(2*(n+1))`
-/

namespace A130064.P6784451345439683212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A054576 (2 * (n + 1))

end

end A130064.P6784451345439683212

/-! ## A130064.P1722563133433098326

`A032742(n+1)*A085392(2*(n+1))`
-/

namespace A130064.P1722563133433098326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A085392 (2 * (n + 1))

end

end A130064.P1722563133433098326

/-! ## A130064.P9826948218630563610

`A054576(2*(n+1))*A085392(2*(n+1))`
-/

namespace A130064.P9826948218630563610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * (n + 1)) * A085392 (2 * (n + 1))

end

end A130064.P9826948218630563610

/-!
# A130065: a(n) = (n / GreatestPrimeFactor(n)) * SmallestPrimeFactor(n).

The programs for A130065, there is no canonical definition to state claims against.
-/

/-! ## A130065.P9475273169847781885

`A052126(n+1)*A020639(n+1)`
-/

namespace A130065.P9475273169847781885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A020639 (n + 1)

end

end A130065.P9475273169847781885

/-! ## A130065.P6071217702023322246

`A000290(n+1)/A130064(n+1)`
-/

namespace A130065.P6071217702023322246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (n + 1) : ℚ) / (A130064 (n + 1) : ℚ)

end

end A130065.P6071217702023322246

/-! ## A130065.P1719865721041989603

`(n+1)*A020639(n+1)/A006530(n+1)`
-/

namespace A130065.P1719865721041989603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A020639 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A130065.P1719865721041989603

/-! ## A130065.P13922723003775596357

`A130064(n+1)-(n+1)*A046665(n+1)*A074320(n+1)/A066048(n+1)`
-/

namespace A130065.P13922723003775596357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130064 (n + 1) : ℚ) - ((n + 1 : ℤ) * A046665 (n + 1) * A074320 (n + 1) : ℚ) / (A066048 (n + 1) : ℚ)

end

end A130065.P13922723003775596357

/-! ## A130065.P10590493686523066577

`A285109(n+1)/A006530(n+1)`
-/

namespace A130065.P10590493686523066577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285109 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A130065.P10590493686523066577

/-! ## A130065.P18439755744245382300

`A342768(n+1)/A032742(n+1)`
-/

namespace A130065.P18439755744245382300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342768 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ)

end

end A130065.P18439755744245382300

/-! ## A130065.P8465046809635731133

`∏{p}[A028233(n+1), #*A052126(n+1)]`
-/

namespace A130065.P8465046809635731133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A052126 (n + 1)

end

end A130065.P8465046809635731133

/-! ## A130065.P5569821090326137304

`(n+1)²/(A006530(n+1)*A032742(n+1))`
-/

namespace A130065.P5569821090326137304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A006530 (n + 1) * A032742 (n + 1) : ℚ)

end

end A130065.P5569821090326137304

/-! ## A130065.P8703496448906597950

`A006530(A028233(n+1))*A052126(n+1)`
-/

namespace A130065.P8703496448906597950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028233 (n + 1)).toNat * A052126 (n + 1)

end

end A130065.P8703496448906597950

/-! ## A130065.P18247905198220633322

`A028233(A007947(n+1))*A052126(n+1)`
-/

namespace A130065.P18247905198220633322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A007947 (n + 1)).toNat * A052126 (n + 1)

end

end A130065.P18247905198220633322

/-! ## A130065.P12437055059193097062

`(n+1)/A006530(n+1)*A014963(A028233(n+1))`
-/

namespace A130065.P12437055059193097062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) * (A014963 (A028233 (n + 1)).toNat : ℚ)

end

end A130065.P12437055059193097062

/-! ## A130065.P9332775000180126875

`A052126(n+1)/A006530(n+1)*A066048(n+1)`
-/

namespace A130065.P9332775000180126875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052126 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ) * (A066048 (n + 1) : ℚ)

end

end A130065.P9332775000180126875

/-! ## A130065.P15115716221606576730

`A052126(n+1)/A032742(n+2)*A126287(n+2)`
-/

namespace A130065.P15115716221606576730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052126 (n + 1) : ℚ) / (A032742 (n + 2) : ℚ) * (A126287 (n + 2) : ℚ)

end

end A130065.P15115716221606576730

/-! ## A130065.P17648659588810345955

`A342768(n+1)/A054576(2*(n+1))`
-/

namespace A130065.P17648659588810345955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342768 (n + 1) : ℚ) / (A054576 (2 * (n + 1)) : ℚ)

end

end A130065.P17648659588810345955

/-! ## A130065.P12817726836359267015

`A052126(A285109(n+1))`
-/

namespace A130065.P12817726836359267015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A285109 (n + 1)).toNat

end

end A130065.P12817726836359267015

/-! ## A130065.P15548266252950987313

`A052126((n+1)²/A032742(n+1))`
-/

namespace A130065.P15548266252950987313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A130065.P15548266252950987313

/-! ## A130065.P16090463300382780675

`A052126((n+1)*A052126(A066048(n+1)))`
-/

namespace A130065.P16090463300382780675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 ((n + 1 : ℤ) * A052126 (A066048 (n + 1)).toNat).toNat

end

end A130065.P16090463300382780675

/-! ## A130065.P13375808091133766476

`A014963(A028233((n+1)²))*A052126(n+1)`
-/

namespace A130065.P13375808091133766476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A028233 ((n + 1) ^ 2)).toNat * A052126 (n + 1)

end

end A130065.P13375808091133766476

/-! ## A130065.P4054650762475845964

`A052126(A020639(n+1)+lcm(n, A020639(n+1)))`
-/

namespace A130065.P4054650762475845964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A020639 (n + 1) + (Int.lcm (n : ℤ) (A020639 (n + 1)) : ℤ)).toNat

end

end A130065.P4054650762475845964

/-! ## A130065.P6180586313040016872

`A014963(A014963(n+1)*A028233(n+1))*A052126(n+1)`
-/

namespace A130065.P6180586313040016872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A014963 (n + 1) * A028233 (n + 1)).toNat * A052126 (n + 1)

end

end A130065.P6180586313040016872

/-!
# A130066: Primes prime(n) such that both of the numbers (prime(n+1)^2-prime(n)^2)/2 - 1 and (prime(n+1)^2-prime(n)^2)/2 + 1 are primes.

The programs for A130066, there is no canonical definition to state claims against.
-/

/-! ## A130066.P14366902107070169361

`A118751(A225240(n+1)+A143608(n))`
-/

namespace A130066.P14366902107070169361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118751 (A225240 (n + 1) + A143608 n).toNat

end

end A130066.P14366902107070169361

/-! ## A130066.P5434778456792311374

`A316857(A362230(n+1)+A233427(n))`
-/

namespace A130066.P5434778456792311374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (A362230 (n + 1) + A233427 n).toNat

end

end A130066.P5434778456792311374

/-!
# A130067: Binomial coefficients binomial(m,2^k) where m>=1 and 1<=2^k<=m.

The programs for A130067, there is no canonical definition to state claims against.
-/

/-! ## A130067.P4083199952678674010

`A074909(eq[1, A285425(n+1)]+1)`
-/

namespace A130067.P4083199952678674010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A130067.P4083199952678674010

/-! ## A130067.P14008151227445669754

`A007318(eq[1, A000120(A002262(n))])`
-/

namespace A130067.P14008151227445669754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130067.P14008151227445669754

/-! ## A130067.P6685383499215106073

`A007318(eq[1, A002487(A002262(n))])`
-/

namespace A130067.P6685383499215106073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130067.P6685383499215106073

/-! ## A130067.P7649717756053278396

`A007318(eq[1, A006257(A002262(n))])`
-/

namespace A130067.P7649717756053278396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130067.P7649717756053278396

/-! ## A130067.P15273804871281069763

`A007318(eq[1, A007302(A002262(n))])`
-/

namespace A130067.P15273804871281069763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130067.P15273804871281069763

/-! ## A130067.P7659648207601165446

`A007318(eq[1, A008687(A002262(n))])`
-/

namespace A130067.P7659648207601165446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130067.P7659648207601165446

/-! ## A130067.P13108833969892372984

`A007318(eq[1, A038573(A002262(n))])`
-/

namespace A130067.P13108833969892372984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130067.P13108833969892372984

/-! ## A130067.P1855482764346481520

`A007318(eq[1, A118977(A002262(n))])`
-/

namespace A130067.P1855482764346481520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130067.P1855482764346481520

/-! ## A130067.P17417086264567632897

`A007318(eq[2, A001316(A002262(n))])`
-/

namespace A130067.P17417086264567632897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130067.P17417086264567632897

/-! ## A130067.P7490628142828743901

`A007318(eq[2, A106737(A002262(n))])`
-/

namespace A130067.P7490628142828743901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130067.P7490628142828743901

/-!
# A130068: Maximal power of 2 dividing the binomial coefficient binomial(m, 2^k) where m >= 1 and 1 <= 2^k <= m.

The programs for A130068, there is no canonical definition to state claims against.
-/

/-! ## A130068.P8630574304834038211

`val(A120385(n+1), 2)`
-/

namespace A130068.P8630574304834038211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A120385 (n + 1)).toNat 2

end

end A130068.P8630574304834038211

/-! ## A130068.P2593307325935620260

`A007814(A120385(n+1))`
-/

namespace A130068.P2593307325935620260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A120385 (n + 1)).toNat

end

end A130068.P2593307325935620260

/-! ## A130068.P11253064742524474396

`A235127(A120385(n+1)²)`
-/

namespace A130068.P11253064742524474396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A120385 (n + 1) ^ 2).toNat

end

end A130068.P11253064742524474396

/-! ## A130068.P17364452261107691893

`A244415(A120385(n+1)²)`
-/

namespace A130068.P17364452261107691893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A120385 (n + 1) ^ 2).toNat

end

end A130068.P17364452261107691893

/-! ## A130068.P13903515462241124056

`A135523(3*A120385(n+1))`
-/

namespace A130068.P13903515462241124056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (3 * A120385 (n + 1)).toNat

end

end A130068.P13903515462241124056

/-! ## A130068.P9213475303278548864

`A089263(6*A120385(n+1))`
-/

namespace A130068.P9213475303278548864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (6 * A120385 (n + 1)).toNat

end

end A130068.P9213475303278548864

/-! ## A130068.P8013579707330468572

`A244415(A120385(n+1)^2)`
-/

namespace A130068.P8013579707330468572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A120385 (n + 1) ^ 2).toNat

end

end A130068.P8013579707330468572

/-! ## A130068.P16909656080209166783

`A244413(A120385(n+1)^3)`
-/

namespace A130068.P16909656080209166783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244413 (A120385 (n + 1) ^ 3).toNat

end

end A130068.P16909656080209166783

/-! ## A130068.P9810470701255725538

`log2(gcd(A060546(n), A120385(n+1)))`
-/

namespace A130068.P9810470701255725538
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A060546 n) (A120385 (n + 1)) : ℝ)

end

end A130068.P9810470701255725538

/-! ## A130068.P15162866957402729172

`A001511(2*A120385(n+1))-2`
-/

namespace A130068.P15162866957402729172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * A120385 (n + 1)).toNat - 2

end

end A130068.P15162866957402729172

/-! ## A130068.P11323958027653162001

`floor(A001511(A120385(n+1)²)/2)`
-/

namespace A130068.P11323958027653162001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001511 (A120385 (n + 1) ^ 2).toNat : ℚ) / 2⌋

end

end A130068.P11323958027653162001

/-! ## A130068.P5086872882932007989

`A234016(A001511(A120385(n+1)²))`
-/

namespace A130068.P5086872882932007989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234016 (A001511 (A120385 (n + 1) ^ 2).toNat).toNat

end

end A130068.P5086872882932007989

/-! ## A130068.P11537167537108553267

`A244413(A120385(n+1)²*A120385(n+1))`
-/

namespace A130068.P11537167537108553267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244413 (A120385 (n + 1) ^ 2 * A120385 (n + 1)).toNat

end

end A130068.P11537167537108553267

/-! ## A130068.P3543539729274714012

`A235127(2*A120385(n+1)*A120385(n+1))`
-/

namespace A130068.P3543539729274714012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (2 * A120385 (n + 1) * A120385 (n + 1)).toNat

end

end A130068.P3543539729274714012

/-! ## A130068.P10968705730065685078

`A001511(A120385(n+1))-A127836(A127836(n))`
-/

namespace A130068.P10968705730065685078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A120385 (n + 1)).toNat - A127836 (A127836 n).toNat

end

end A130068.P10968705730065685078

/-! ## A130068.P8245736191244471778

`A001511(A120385(n+1))+A008683(A163182(n+1))`
-/

namespace A130068.P8245736191244471778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A120385 (n + 1)).toNat + A008683 (A163182 (n + 1)).toNat

end

end A130068.P8245736191244471778

/-! ## A130068.P14124849841342321918

`A001511(A120385(n+1))+A008683(A163185(n+1))`
-/

namespace A130068.P14124849841342321918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A120385 (n + 1)).toNat + A008683 (A163185 (n + 1)).toNat

end

end A130068.P14124849841342321918

/-! ## A130068.P15010312949307426622

`A001511(A120385(n+1))-A005361(A000040(n+1))`
-/

namespace A130068.P15010312949307426622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A120385 (n + 1)).toNat - A005361 (A000040 (n + 1)).toNat

end

end A130068.P15010312949307426622

/-! ## A130068.P1813456014801745020

`A001511(A120385(n+1))-A001222(A019338(n+1))`
-/

namespace A130068.P1813456014801745020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A120385 (n + 1)).toNat - A001222 (A019338 (n + 1)).toNat

end

end A130068.P1813456014801745020

/-!
# A130069: Primes by columns, interspersed with (k-1) zeros.

The programs for A130069, there is no canonical definition to state claims against.
-/

/-! ## A130069.P422223329569898864

`A127639(A120913(n+1))%A329167(n+1)`
-/

namespace A130069.P422223329569898864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127639 (A120913 (n + 1)).toNat) (A329167 (n + 1))

end

end A130069.P422223329569898864

/-! ## A130069.P8557514656159149419

`A127639(A120913(n+1))^Δ[A004907(n+1)]`
-/

namespace A130069.P8557514656159149419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127639 (A120913 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A130069.P8557514656159149419

/-! ## A130069.P10945202977988175169

`A051731(n+1)*A104885(A051537(n+1))`
-/

namespace A130069.P10945202977988175169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A104885 (A051537 (n + 1)).toNat

end

end A130069.P10945202977988175169

/-! ## A130069.P13631968653879531485

`A001222(A002646(n+1))*A127639(A120913(n+1))`
-/

namespace A130069.P13631968653879531485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002646 (n + 1)).toNat * A127639 (A120913 (n + 1)).toNat

end

end A130069.P13631968653879531485

/-! ## A130069.P16857126476149903469

`A000040(A033317(2*(n+1)))*A051731(n+1)`
-/

namespace A130069.P16857126476149903469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A033317 (2 * (n + 1))).toNat * A051731 (n + 1)

end

end A130069.P16857126476149903469

/-!
# A130070: Moebius transform of A130069.

The programs for A130070, there is no canonical definition to state claims against.
-/

/-! ## A130070.P17691718466216962075

`A130071(A120913(n+1))`
-/

namespace A130070.P17691718466216962075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130071 (A120913 (n + 1)).toNat

end

end A130070.P17691718466216962075

/-! ## A130070.P4121770310436907191

`∑{e}[2^A126988(n+1), A007444(#)]`
-/

namespace A130070.P4121770310436907191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A126988 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A007444 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A130070.P4121770310436907191

/-! ## A130070.P6811636403860928510

`A007444(A010766(n+1))*A051731(n+1)`
-/

namespace A130070.P6811636403860928510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A130070.P6811636403860928510

/-! ## A130070.P10859349069284579492

`A007444(A049834(n+1))*A051731(n+1)`
-/

namespace A130070.P10859349069284579492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A049834 (n + 1)).toNat * A051731 (n + 1)

end

end A130070.P10859349069284579492

/-! ## A130070.P7870676474834423145

`A007444(A051537(n+1))*A051731(n+1)`
-/

namespace A130070.P7870676474834423145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A051537 (n + 1)).toNat * A051731 (n + 1)

end

end A130070.P7870676474834423145

/-! ## A130070.P3961821535245474783

`A007444(A054531(n+1))*A051731(n+1)`
-/

namespace A130070.P3961821535245474783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A054531 (n + 1)).toNat * A051731 (n + 1)

end

end A130070.P3961821535245474783

/-!
# A130071: Triangle, A007444(k) in each column interspersed with k zeros.

The programs for A130071, the canonical program `A130071.P16349395927044139685` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130071 has offset 1).

The definition of A130071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130071.P16349395927044139685

`A007444(A002260(n+1))*A051731(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A130071

/-- `A007444(A002260(n+1))*A051731(n+1)` -/
def P16349395927044139685.Spec : Prop :=
  ∀ n, P16349395927044139685.a n = A130071 (n + 1)

theorem P16349395927044139685.correct : P16349395927044139685.Spec := by
  intro n
  simp only [A130071, Nat.add_sub_cancel]

end A130071

/-! ## A130071.P16283093288550392018

`A007444(A002262(n)+1)*A051731(n+1)`
-/

namespace A130071.P16283093288550392018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A002262 n + 1).toNat * A051731 (n + 1)

end

end A130071.P16283093288550392018

namespace A130071

/-- `A007444(A002262(n)+1)*A051731(n+1)` -/
def P16283093288550392018.Spec : Prop :=
  ∀ n, P16283093288550392018.a n = A130071 (n + 1)

end A130071

/-! ## A130071.P16363672635909623550

`A007444(A050873(n+1))*A051731(n+1)`
-/

namespace A130071.P16363672635909623550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A050873 (n + 1)).toNat * A051731 (n + 1)

end

end A130071.P16363672635909623550

namespace A130071

/-- `A007444(A050873(n+1))*A051731(n+1)` -/
def P16363672635909623550.Spec : Prop :=
  ∀ n, P16363672635909623550.a n = A130071 (n + 1)

end A130071

/-! ## A130071.P12028597283477827913

`A007444(A123275(n+1))*A051731(n+1)`
-/

namespace A130071.P12028597283477827913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A123275 (n + 1)).toNat * A051731 (n + 1)

end

end A130071.P12028597283477827913

namespace A130071

/-- `A007444(A123275(n+1))*A051731(n+1)` -/
def P12028597283477827913.Spec : Prop :=
  ∀ n, P12028597283477827913.a n = A130071 (n + 1)

end A130071

/-! ## A130071.P17877470180084094777

`A000007(A048158(n+1))*A007444(A002260(n+1))`
-/

namespace A130071.P17877470180084094777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A048158 (n + 1)).toNat * A007444 (A002260 (n + 1)).toNat

end

end A130071.P17877470180084094777

namespace A130071

/-- `A000007(A048158(n+1))*A007444(A002260(n+1))` -/
def P17877470180084094777.Spec : Prop :=
  ∀ n, P17877470180084094777.a n = A130071 (n + 1)

end A130071

/-! ## A130071.P13825215406342579705

`A007444(A002260(n+1))*A032741(A127639(n+1))`
-/

namespace A130071.P13825215406342579705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A002260 (n + 1)).toNat * A032741 (A127639 (n + 1)).toNat

end

end A130071.P13825215406342579705

namespace A130071

/-- `A007444(A002260(n+1))*A032741(A127639(n+1))` -/
def P13825215406342579705.Spec : Prop :=
  ∀ n, P13825215406342579705.a n = A130071 (n + 1)

end A130071

/-! ## A130071.P5979355986052725113

`A007444(A002260(n+1))%A001844(A127465(n+1))`
-/

namespace A130071.P5979355986052725113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007444 (A002260 (n + 1)).toNat) (A001844 (A127465 (n + 1)).toNat)

end

end A130071.P5979355986052725113

namespace A130071

/-- `A007444(A002260(n+1))%A001844(A127465(n+1))` -/
def P5979355986052725113.Spec : Prop :=
  ∀ n, P5979355986052725113.a n = A130071 (n + 1)

end A130071

/-! ## A130071.P13991349291878555062

`A007444(A307662(n+1))*A051731(n+1)`
-/

namespace A130071.P13991349291878555062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A307662 (n + 1)).toNat * A051731 (n + 1)

end

end A130071.P13991349291878555062

namespace A130071

/-- `A007444(A307662(n+1))*A051731(n+1)` -/
def P13991349291878555062.Spec : Prop :=
  ∀ n, P13991349291878555062.a n = A130071 (n + 1)

end A130071

/-! ## A130071.P7392010521826622516

`A007444(A112544(n+1))*A051731(n+1)`
-/

namespace A130071.P7392010521826622516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A112544 (n + 1)).toNat * A051731 (n + 1)

end

end A130071.P7392010521826622516

namespace A130071

/-- `A007444(A112544(n+1))*A051731(n+1)` -/
def P7392010521826622516.Spec : Prop :=
  ∀ n, P7392010521826622516.a n = A130071 (n + 1)

end A130071

/-! ## A130071.P10338493899744577343

`A130070(A120913(n+1))`
-/

namespace A130071.P10338493899744577343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130070 (A120913 (n + 1)).toNat

end

end A130071.P10338493899744577343

namespace A130071

/-- `A130070(A120913(n+1))` -/
def P10338493899744577343.Spec : Prop :=
  ∀ n, P10338493899744577343.a n = A130071 (n + 1)

end A130071

/-!
# A130072: a(n) = 5^n - 3^n - 2^n.

The programs for A130072, the canonical program `A130072.P1784332849218660098` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130072 has offset 1).

The definition of A130072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^(n+1)-3^(n+1)-2^(n+1)` (program `A130072.P1784332849218660098`, by `A130072.P1784332849218660098.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130072.P1784332849218660098

`5^(n+1)-3^(n+1)-2^(n+1)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A130072

/-- `5^(n+1)-3^(n+1)-2^(n+1)` -/
def P1784332849218660098.Spec : Prop :=
  ∀ n, P1784332849218660098.a n = A130072 (n + 1)

theorem P1784332849218660098.correct : P1784332849218660098.Spec := by
  intro n
  simp only [A130072, Nat.add_sub_cancel]

end A130072

/-! ## A130072.P16804110325956737074

`A135158(n+1)`
-/

namespace A130072.P16804110325956737074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135158 (n + 1)

end

end A130072.P16804110325956737074

namespace A130072

/-- `A135158(n+1)` -/
def P16804110325956737074.Spec : Prop :=
  ∀ n, P16804110325956737074.a n = A130072 (n + 1)

end A130072

/-! ## A130072.P16548065224468379227

`xor(1, A090020(n+1))`
-/

namespace A130072.P16548065224468379227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A090020 (n + 1))

end

end A130072.P16548065224468379227

namespace A130072

/-- `xor(1, A090020(n+1))` -/
def P16548065224468379227.Spec : Prop :=
  ∀ n, P16548065224468379227.a n = A130072 (n + 1)

end A130072

/-! ## A130072.P6351527634849477309

`record[A135158(abs(1-n))]`
-/

namespace A130072.P6351527634849477309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135158 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130072.P6351527634849477309

namespace A130072

/-- `record[A135158(abs(1-n))]` -/
def P6351527634849477309.Spec : Prop :=
  ∀ n, P6351527634849477309.a n = A130072 (n + 1)

end A130072

/-! ## A130072.P18168390708306520365

`record[A090020(A026366(n+1))-1]`
-/

namespace A130072.P18168390708306520365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090020 (A026366 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130072.P18168390708306520365

namespace A130072

/-- `record[A090020(A026366(n+1))-1]` -/
def P18168390708306520365.Spec : Prop :=
  ∀ n, P18168390708306520365.a n = A130072 (n + 1)

end A130072

/-! ## A130072.P1008635056239226663

`Δ[A007798(n+1)-A000051(n+1)]`
-/

namespace A130072.P1008635056239226663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 (n + 1) - A000051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130072.P1008635056239226663

namespace A130072

/-- `Δ[A007798(n+1)-A000051(n+1)]` -/
def P1008635056239226663.Spec : Prop :=
  ∀ n, P1008635056239226663.a n = A130072 (n + 1)

end A130072

/-! ## A130072.P12141958858309071060

`Δ[A007798(n+1)-A000079(n+1)]`
-/

namespace A130072.P12141958858309071060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 (n + 1) - A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130072.P12141958858309071060

namespace A130072

/-- `Δ[A007798(n+1)-A000079(n+1)]` -/
def P12141958858309071060.Spec : Prop :=
  ∀ n, P12141958858309071060.a n = A130072 (n + 1)

end A130072

/-! ## A130072.P11328084494189693275

`Δ[A007798(n+1)-A000225(n+1)]`
-/

namespace A130072.P11328084494189693275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 (n + 1) - A000225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130072.P11328084494189693275

namespace A130072

/-- `Δ[A007798(n+1)-A000225(n+1)]` -/
def P11328084494189693275.Spec : Prop :=
  ∀ n, P11328084494189693275.a n = A130072 (n + 1)

end A130072

/-! ## A130072.P7022831245376318534

`Δ[A003463(n+1)-A094374(n+1)]`
-/

namespace A130072.P7022831245376318534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (n + 1) - A094374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130072.P7022831245376318534

namespace A130072

/-- `Δ[A003463(n+1)-A094374(n+1)]` -/
def P7022831245376318534.Spec : Prop :=
  ∀ n, P7022831245376318534.a n = A130072 (n + 1)

end A130072

/-! ## A130072.P10167692912430953494

`Δ[A003463(n+1)-A099754(n+1)]`
-/

namespace A130072.P10167692912430953494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (n + 1) - A099754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130072.P10167692912430953494

namespace A130072

/-- `Δ[A003463(n+1)-A099754(n+1)]` -/
def P10167692912430953494.Spec : Prop :=
  ∀ n, P10167692912430953494.a n = A130072 (n + 1)

end A130072

/-! ## A130072.P11648567847770253281

`Δ[A047850(n+1)-A094374(n+1)]`
-/

namespace A130072.P11648567847770253281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 (n + 1) - A094374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130072.P11648567847770253281

namespace A130072

/-- `Δ[A047850(n+1)-A094374(n+1)]` -/
def P11648567847770253281.Spec : Prop :=
  ∀ n, P11648567847770253281.a n = A130072 (n + 1)

end A130072

/-! ## A130072.P15638842192668942417

`Δ[A047850(n+1)-A099754(n+1)]`
-/

namespace A130072.P15638842192668942417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 (n + 1) - A099754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130072.P15638842192668942417

namespace A130072

/-- `Δ[A047850(n+1)-A099754(n+1)]` -/
def P15638842192668942417.Spec : Prop :=
  ∀ n, P15638842192668942417.a n = A130072 (n + 1)

end A130072

/-!
# A130073: Numbers k such that k divides 5^k - 3^k - 2^k = A130072(k).

The programs for A130073, there is no canonical definition to state claims against.
-/

/-! ## A130073.P14122685647909189440

`∪[A000040(n+1), A130074(n+1)]`
-/

namespace A130073.P14122685647909189440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130073.P14122685647909189440

/-! ## A130073.P2977871826365119621

`∪[A008578(n+1), A130074(n+1)]`
-/

namespace A130073.P2977871826365119621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130073.P2977871826365119621

/-! ## A130073.P16817402909842238153

`∪[A046022(n+1), A130074(n+1)]`
-/

namespace A130073.P16817402909842238153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130073.P16817402909842238153

/-! ## A130073.P4919131138125117857

`∪[A067126(n+1), A130074(n+1)]`
-/

namespace A130073.P4919131138125117857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130073.P4919131138125117857

/-! ## A130073.P17588903918609981861

`∪[A067133(n+1), A130074(n+1)]`
-/

namespace A130073.P17588903918609981861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130073.P17588903918609981861

/-! ## A130073.P8728857828762666268

`∪[A116974(n+1), A130074(n+1)]`
-/

namespace A130073.P8728857828762666268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130073.P8728857828762666268

/-! ## A130073.P4844213376469938345

`∪[A174090(n+1), A130074(n+1)]`
-/

namespace A130073.P4844213376469938345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130073.P4844213376469938345

/-! ## A130073.P10465000309883067229

`record[gcd(n, 5^n-(2^n+3^n))]`
-/

namespace A130073.P10465000309883067229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ((5 ^ n : ℤ) - (2 ^ n + 3 ^ n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130073.P10465000309883067229

/-!
# A130074: Nonprimes k such that k divides 5^k - 3^k - 2^k = A130072(k).

The programs for A130074, there is no canonical definition to state claims against.
-/

/-! ## A130074.P8676217935454735253

`filter[A130073(n+1), A005171(#)]`
-/

namespace A130074.P8676217935454735253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A130074.P8676217935454735253

/-! ## A130074.P13685295296592951989

`∩[A018252(n+1), A130073(n+1)]`
-/

namespace A130074.P13685295296592951989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130074.P13685295296592951989

/-! ## A130074.P7506213507115335699

`∩[A130073(n+1), A141468(n+1)]`
-/

namespace A130074.P7506213507115335699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130074.P7506213507115335699

/-! ## A130074.P1291507224822045750

`∩[comp[A006093(n+1)+1], A130073(n+1)]`
-/

namespace A130074.P1291507224822045750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A130074.P1291507224822045750

/-! ## A130074.P3603311546886120502

`∩[comp[A040976(n+1)+2], A130073(n+1)]`
-/

namespace A130074.P3603311546886120502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A130074.P3603311546886120502

/-! ## A130074.P6517711854961847437

`record[A191558(A130073(n+1))]`
-/

namespace A130074.P6517711854961847437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A130073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130074.P6517711854961847437

/-!
# A130075: a(n) = (5^p - 3^p - 2^p)/p, where p = prime(n).

The programs for A130075, there is no canonical definition to state claims against.
-/

/-! ## A130075.P5077230090529439197

`A135173(n+1)/p?[A051340(n)]`
-/

namespace A130075.P5077230090529439197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135173 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A130075.P5077230090529439197

/-! ## A130075.P12346766812035868139

`A135173(n+1)/p?[A047253(n+1)]`
-/

namespace A130075.P12346766812035868139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135173 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A130075.P12346766812035868139

/-! ## A130075.P2003363276109200184

`A130072(A000040(n+1))/A000040(n+1)`
-/

namespace A130075.P2003363276109200184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130072 (A000040 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A130075.P2003363276109200184

/-! ## A130075.P13793939363028361257

`record[A135158(A006530(n+2))/A006530(n+2)]`
-/

namespace A130075.P13793939363028361257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135158 (A006530 (n + 2)).toNat : ℚ) / (A006530 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130075.P13793939363028361257

/-! ## A130075.P11374006595535847397

`record[A135158(A020639(n+2))/A020639(n+2)]`
-/

namespace A130075.P11374006595535847397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135158 (A020639 (n + 2)).toNat : ℚ) / (A020639 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130075.P11374006595535847397

/-!
# A130077: Largest x such that 2^x divides A001623(n), the number of reduced three-line Latin rectangles.

The programs for A130077, there is no canonical definition to state claims against.
-/

/-! ## A130077.P13096064021334251147

`log2(A130078(n+3))`
-/

namespace A130077.P13096064021334251147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130078 (n + 3) : ℝ)

end

end A130077.P13096064021334251147

/-! ## A130077.P6374643339930642811

`val(A130078(A009056(n+1)), 2)`
-/

namespace A130077.P6374643339930642811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130078 (A009056 (n + 1)).toNat).toNat 2

end

end A130077.P6374643339930642811

/-! ## A130077.P16307935457957472633

`val(A130078(n+3), A001222(A046388(n+1)))`
-/

namespace A130077.P16307935457957472633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130078 (n + 3)).toNat (A001222 (A046388 (n + 1)).toNat).toNat

end

end A130077.P16307935457957472633

/-! ## A130077.P4203245400797831699

`3-A130079(n+3)+n`
-/

namespace A130077.P4203245400797831699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A130079 (n + 3) + (n : ℤ)

end

end A130077.P4203245400797831699

/-! ## A130077.P13392046021208710572

`A130079(n+3)*A321804(gcd(n+1, n²))+n+3`
-/

namespace A130077.P13392046021208710572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130079 (n + 3) * A321804 (Nat.gcd (n + 1) (n ^ 2)) + (n + 3 : ℤ)

end

end A130077.P13392046021208710572

/-!
# A130078: Largest 2^x dividing A001623(n), the number of reduced three-line Latin rectangles.

The programs for A130078, there is no canonical definition to state claims against.
-/

/-! ## A130078.P18037309170808135758

`2^val(A001623(n+3), 2)`
-/

namespace A130078.P18037309170808135758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A001623 (n + 3)).toNat 2

end

end A130078.P18037309170808135758

/-! ## A130078.P1773859763059315207

`2^A130077(n+3)`
-/

namespace A130078.P1773859763059315207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A130077 (n + 3) : ℤ)

end

end A130078.P1773859763059315207

/-! ## A130078.P13446508370073294528

`A000079(A130077(n+3))`
-/

namespace A130078.P13446508370073294528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A130077 (n + 3)).toNat

end

end A130078.P13446508370073294528

/-! ## A130078.P1024587503517690948

`A011782(A130077(n+3)+1)`
-/

namespace A130078.P1024587503517690948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A130077 (n + 3) + 1).toNat

end

end A130078.P1024587503517690948

/-! ## A130078.P11979794930197739066

`2^(3-A130079(n+3)+n)`
-/

namespace A130078.P11979794930197739066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (3 - A130079 (n + 3) + (n : ℤ) : ℤ)

end

end A130078.P11979794930197739066

/-! ## A130078.P3837290771943632686

`A000079(3-A130079(n+3)+n)`
-/

namespace A130078.P3837290771943632686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 - A130079 (n + 3) + (n : ℤ)).toNat

end

end A130078.P3837290771943632686

/-! ## A130078.P9466262378953923757

`2^(A130079(n+3)*A321804(gcd(n+1, n²))+n+3)`
-/

namespace A130078.P9466262378953923757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A130079 (n + 3) * A321804 (Nat.gcd (n + 1) (n ^ 2)) + (n + 3 : ℤ) : ℤ)

end

end A130078.P9466262378953923757

/-!
# A130079: a(n) = n - A130077(n), i.e., n minus the largest x such that 2^x divides A001623(n), the number of reduced three-line Latin rectangles.

The programs for A130079, there is no canonical definition to state claims against.
-/

/-! ## A130079.P11596644754098699734

`n+3-A130077(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A130079.P11596644754098699734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A130077 (n + 3)

end

end A130079.P11596644754098699734

/-! ## A130079.P7723100897715376895

`n+3-val(A130078(n+3), 2)`
-/

namespace A130079.P7723100897715376895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (SequenceMachineLib.valuation (A130078 (n + 3)).toNat 2 : ℤ)

end

end A130079.P7723100897715376895

/-! ## A130079.P5961179052298861429

`A001489(A130077(n+3)+1)+4+n`
-/

namespace A130079.P5961179052298861429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A130077 (n + 3) + 1).toNat + 4 + (n : ℤ)

end

end A130079.P5961179052298861429

/-! ## A130079.P10659935912145237556

`(n+8)%A020705(A130077(n+3)+1)`
-/

namespace A130079.P10659935912145237556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 8 : ℤ) (A020705 (A130077 (n + 3) + 1).toNat)

end

end A130079.P10659935912145237556

/-! ## A130079.P9814126098121274123

`A009056(n+1)+A001489(A130077(n+3))`
-/

namespace A130079.P9814126098121274123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (n + 1) + A001489 (A130077 (n + 3)).toNat

end

end A130079.P9814126098121274123

/-! ## A130079.P4489135519837831501

`A020705(n)+A001489(A130077(n+3)+1)`
-/

namespace A130079.P4489135519837831501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n + A001489 (A130077 (n + 3) + 1).toNat

end

end A130079.P4489135519837831501

/-! ## A130079.P11001925702525620356

`A025581(A130077(n+3)+A000217(n+3))`
-/

namespace A130079.P11001925702525620356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A130077 (n + 3) + A000217 (n + 3)).toNat

end

end A130079.P11001925702525620356

/-!
# A130080: Smallest number whose sixth power has n digits.

The programs for A130080, the canonical program `A130080.P13986169719205167341` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130080 has offset 1).

The definition of A130080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130080.P13986169719205167341

`ceil(root(10^n, 6))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A130080

/-- `ceil(root(10^n, 6))` -/
def P13986169719205167341.Spec : Prop :=
  ∀ n, P13986169719205167341.a n = A130080 (n + 1)

theorem P13986169719205167341.correct : P13986169719205167341.Spec := by
  intro n
  simp only [A130080, Nat.add_sub_cancel]

end A130080

/-! ## A130080.P13342190332627844852

`A216656(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A130080.P13342190332627844852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A216656 n + a (n - 1)

end

end A130080.P13342190332627844852

namespace A130080

/-- `A216656(n)+a(n-1)` -/
def P13342190332627844852.Spec : Prop :=
  ∀ n, P13342190332627844852.a n = A130080 (n + 1)

end A130080

/-! ## A130080.P15507340948623815987

`∑[A216656(A233583(n+1))]`
-/

namespace A130080.P15507340948623815987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216656 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130080.P15507340948623815987

namespace A130080

/-- `∑[A216656(A233583(n+1))]` -/
def P15507340948623815987.Spec : Prop :=
  ∀ n, P15507340948623815987.a n = A130080 (n + 1)

end A130080

/-! ## A130080.P4688711490895460831

`ceil(sqrt(A018005(n+1)))%A000211(n)`
-/

namespace A130080.P4688711490895460831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A018005 (n + 1) : ℝ)⌉ (A000211 n)

end

end A130080.P4688711490895460831

namespace A130080

/-- `ceil(sqrt(A018005(n+1)))%A000211(n)` -/
def P4688711490895460831.Spec : Prop :=
  ∀ n, P4688711490895460831.a n = A130080 (n + 1)

end A130080

/-! ## A130080.P16968014643924342925

`A002483(2*n)+ceil(sqrt(A018005(n+1)))`
-/

namespace A130080.P16968014643924342925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 (2 * n) + ⌈Real.sqrt (A018005 (n + 1) : ℝ)⌉

end

end A130080.P16968014643924342925

namespace A130080

/-- `A002483(2*n)+ceil(sqrt(A018005(n+1)))` -/
def P16968014643924342925.Spec : Prop :=
  ∀ n, P16968014643924342925.a n = A130080 (n + 1)

end A130080

/-!
# A130081: Smallest number whose seventh power has at least n digits.

The programs for A130081, the canonical program `A130081.P9914158451857736708` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130081 has offset 1).

The definition of A130081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130081.P9914158451857736708

`ceil(root(10^n, 7))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A130081

/-- `ceil(root(10^n, 7))` -/
def P9914158451857736708.Spec : Prop :=
  ∀ n, P9914158451857736708.a n = A130081 (n + 1)

theorem P9914158451857736708.correct : P9914158451857736708.Spec := by
  intro n
  simp only [A130081, Nat.add_sub_cancel]

end A130081

/-! ## A130081.P18104044004541881557

`A216657(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A130081.P18104044004541881557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A216657 n + a (n - 1)

end

end A130081.P18104044004541881557

namespace A130081

/-- `A216657(n)+a(n-1)` -/
def P18104044004541881557.Spec : Prop :=
  ∀ n, P18104044004541881557.a n = A130081 (n + 1)

end A130081

/-! ## A130081.P10510755138732088817

`A216657(n)-floor(-a(n-A057427(n)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A130081.P10510755138732088817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A216657 n - (-a ((n : ℤ) - A057427 n).toNat)

end

end A130081.P10510755138732088817

namespace A130081

/-- `A216657(n)-floor(-a(n-A057427(n)))` -/
def P10510755138732088817.Spec : Prop :=
  ∀ n, P10510755138732088817.a n = A130081 (n + 1)

end A130081

/-! ## A130081.P12736997781039123590

`A000027(ceil(10^(n/7)))`
-/

namespace A130081.P12736997781039123590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌈(10 : ℝ) ^ ((n : ℚ) / 7 : ℝ)⌉.toNat

end

end A130081.P12736997781039123590

namespace A130081

/-- `A000027(ceil(10^(n/7)))` -/
def P12736997781039123590.Spec : Prop :=
  ∀ n, P12736997781039123590.a n = A130081 (n + 1)

end A130081

/-! ## A130081.P1259495593258974289

`A172471(A164141(n))`
-/

namespace A130081.P1259495593258974289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A164141 n).toNat

end

end A130081.P1259495593258974289

namespace A130081

/-- `A172471(A164141(n))` -/
def P1259495593258974289.Spec : Prop :=
  ∀ n, P1259495593258974289.a n = A130081 (n + 1)

end A130081

/-!
# A130082: Smallest number whose eighth power has at least n digits.

The programs for A130082, the canonical program `A130082.P6159658571768562619` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130082 has offset 1).

The definition of A130082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130082.P6159658571768562619

`ceil(root(10^n, 8))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A130082

/-- `ceil(root(10^n, 8))` -/
def P6159658571768562619.Spec : Prop :=
  ∀ n, P6159658571768562619.a n = A130082 (n + 1)

theorem P6159658571768562619.correct : P6159658571768562619.Spec := by
  intro n
  simp only [A130082, Nat.add_sub_cancel]

end A130082

/-! ## A130082.P15546956697209092665

`∑[A216658(abs(2-n)+2)]`
-/

namespace A130082.P15546956697209092665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216658 (|2 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130082.P15546956697209092665

namespace A130082

/-- `∑[A216658(abs(2-n)+2)]` -/
def P15546956697209092665.Spec : Prop :=
  ∀ n, P15546956697209092665.a n = A130082 (n + 1)

end A130082

/-! ## A130082.P6944814854704180830

`A216658(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A130082.P6944814854704180830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A216658 n + a (n - 1)

end

end A130082.P6944814854704180830

namespace A130082

/-- `A216658(n)+a(n-1)` -/
def P6944814854704180830.Spec : Prop :=
  ∀ n, P6944814854704180830.a n = A130082 (n + 1)

end A130082

/-! ## A130082.P17091521063504919310

`A000007(n+1)+ceil(sqrt(A018074(n)))`
-/

namespace A130082.P17091521063504919310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ⌈Real.sqrt (A018074 n : ℝ)⌉

end

end A130082.P17091521063504919310

namespace A130082

/-- `A000007(n+1)+ceil(sqrt(A018074(n)))` -/
def P17091521063504919310.Spec : Prop :=
  ∀ n, P17091521063504919310.a n = A130082 (n + 1)

end A130082

/-! ## A130082.P15973337857922240963

`A000038(n+1)+ceil(sqrt(A018074(n)))`
-/

namespace A130082.P15973337857922240963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + ⌈Real.sqrt (A018074 n : ℝ)⌉

end

end A130082.P15973337857922240963

namespace A130082

/-- `A000038(n+1)+ceil(sqrt(A018074(n)))` -/
def P15973337857922240963.Spec : Prop :=
  ∀ n, P15973337857922240963.a n = A130082 (n + 1)

end A130082

/-!
# A130083: Smallest number whose ninth power has at least n digits.

The programs for A130083, the canonical program `A130083.P11344078510417912156` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130083 has offset 1).

The definition of A130083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130083.P11344078510417912156

`ceil(root(10^n, 9))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A130083

/-- `ceil(root(10^n, 9))` -/
def P11344078510417912156.Spec : Prop :=
  ∀ n, P11344078510417912156.a n = A130083 (n + 1)

theorem P11344078510417912156.correct : P11344078510417912156.Spec := by
  intro n
  simp only [A130083, Nat.add_sub_cancel]

end A130083

/-! ## A130083.P11432730150384513567

`A216659(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A130083.P11432730150384513567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A216659 n + a (n - 1)

end

end A130083.P11432730150384513567

namespace A130083

/-- `A216659(n)+a(n-1)` -/
def P11432730150384513567.Spec : Prop :=
  ∀ n, P11432730150384513567.a n = A130083 (n + 1)

end A130083

/-! ## A130083.P11073763160845474356

`abs(A274922(ceil(10^(n/9))))`
-/

namespace A130083.P11073763160845474356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274922 ⌈(10 : ℝ) ^ ((n : ℚ) / 9 : ℝ)⌉.toNat|

end

end A130083.P11073763160845474356

namespace A130083

/-- `abs(A274922(ceil(10^(n/9))))` -/
def P11073763160845474356.Spec : Prop :=
  ∀ n, P11073763160845474356.a n = A130083 (n + 1)

end A130083

/-! ## A130083.P5918425055980201133

`A002024(ceil(sqrt(A307573(n+2))))`
-/

namespace A130083.P5918425055980201133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 ⌈Real.sqrt (A307573 (n + 2) : ℝ)⌉.toNat

end

end A130083.P5918425055980201133

namespace A130083

/-- `A002024(ceil(sqrt(A307573(n+2))))` -/
def P5918425055980201133.Spec : Prop :=
  ∀ n, P5918425055980201133.a n = A130083 (n + 1)

end A130083

/-! ## A130083.P2012541760958167000

`A003059(A077949(n)+A000045(n))`
-/

namespace A130083.P2012541760958167000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A077949 n + A000045 n).toNat

end

end A130083.P2012541760958167000

namespace A130083

/-- `A003059(A077949(n)+A000045(n))` -/
def P2012541760958167000.Spec : Prop :=
  ∀ n, P2012541760958167000.a n = A130083 (n + 1)

end A130083

/-!
# A130084: Smallest number whose tenth power has at least n digits.

The programs for A130084, the canonical program `A130084.P4885622109009049702` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130084 has offset 1).

The definition of A130084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130084.P4885622109009049702

`ceil(root(10^n, 10))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130084

/-- `ceil(root(10^n, 10))` -/
def P4885622109009049702.Spec : Prop :=
  ∀ n, P4885622109009049702.a n = A130084 (n + 1)

theorem P4885622109009049702.correct : P4885622109009049702.Spec := by
  intro n
  simp only [A130084, Nat.add_sub_cancel]

end A130084

/-! ## A130084.P11527984910478761530

`A216654(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A130084.P11527984910478761530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A216654 n + a (n - 1)

end

end A130084.P11527984910478761530

namespace A130084

/-- `A216654(n)+a(n-1)` -/
def P11527984910478761530.Spec : Prop :=
  ∀ n, P11527984910478761530.a n = A130084 (n + 1)

end A130084

/-! ## A130084.P2116316013773874208

`ceil(sqrt(A018143(n)))*A000034(2*n)`
-/

namespace A130084.P2116316013773874208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018143 n : ℝ)⌉ * A000034 (2 * n)

end

end A130084.P2116316013773874208

namespace A130084

/-- `ceil(sqrt(A018143(n)))*A000034(2*n)` -/
def P2116316013773874208.Spec : Prop :=
  ∀ n, P2116316013773874208.a n = A130084 (n + 1)

end A130084

/-! ## A130084.P18151845536342419908

`ceil(sqrt(A018143(n)))%A016116(n+9)`
-/

namespace A130084.P18151845536342419908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A018143 n : ℝ)⌉ (A016116 (n + 9))

end

end A130084.P18151845536342419908

namespace A130084

/-- `ceil(sqrt(A018143(n)))%A016116(n+9)` -/
def P18151845536342419908.Spec : Prop :=
  ∀ n, P18151845536342419908.a n = A130084 (n + 1)

end A130084

/-! ## A130084.P4052947407229204538

`ceil(sqrt(A018143(n)))%A000211(n)`
-/

namespace A130084.P4052947407229204538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A018143 n : ℝ)⌉ (A000211 n)

end

end A130084.P4052947407229204538

namespace A130084

/-- `ceil(sqrt(A018143(n)))%A000211(n)` -/
def P4052947407229204538.Spec : Prop :=
  ∀ n, P4052947407229204538.a n = A130084 (n + 1)

end A130084

/-! ## A130084.P2170185009509936372

`A000027(ceil(sqrt(A018143(n))))`
-/

namespace A130084.P2170185009509936372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌈Real.sqrt (A018143 n : ℝ)⌉.toNat

end

end A130084.P2170185009509936372

namespace A130084

/-- `A000027(ceil(sqrt(A018143(n))))` -/
def P2170185009509936372.Spec : Prop :=
  ∀ n, P2170185009509936372.a n = A130084 (n + 1)

end A130084

/-!
# A130085: a(n) = A130179(n)/81.

The programs for A130085, there is no canonical definition to state claims against.
-/

/-! ## A130085.P11309105940071754027

`A130179(n+1)/81`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A130085.P11309105940071754027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130179 (n + 1) : ℚ) / 81

end

end A130085.P11309105940071754027

/-!
# A130086: a(n) = numerator of Product_{k=1..n} k^mu(k), where mu(k) = A008683(k).

The programs for A130086, there is no canonical definition to state claims against.
-/

/-! ## A130086.P9488245497440756206

`∏[A318401(A054923(n)!)]`
-/

namespace A130086.P9488245497440756206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318401 (Nat.factorial (A054923 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130086.P9488245497440756206

/-! ## A130086.P1709311510634470418

`A096179(∏[A120004(A096179(n+1))])`
-/

namespace A130086.P1709311510634470418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120004 (A096179 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096179 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130086.P1709311510634470418

/-! ## A130086.P12140221743138847391

`∏[gcd(A070321(n+1), A362609(3*n))]`
-/

namespace A130086.P12140221743138847391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070321 (n + 1)) (A362609 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130086.P12140221743138847391

/-! ## A130086.P13639584382510146314

`A276528(A000120(n)^A326526(n))`
-/

namespace A130086.P13639584382510146314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276528 (SequenceMachineLib.roundAway ((A000120 n : ℚ) ^ (A326526 n : ℤ))).toNat

end

end A130086.P13639584382510146314

/-! ## A130086.P10721871835820251096

`gcd(A133314(A001592(n)), A179794(n+1))`
-/

namespace A130086.P10721871835820251096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133314 (A001592 n).toNat) (A179794 (n + 1))

end

end A130086.P10721871835820251096

/-!
# A130087: Denominator of product{k=1 to n} k^mu(k), where mu is the Moebius function A008683.

The programs for A130087, there is no canonical definition to state claims against.
-/

/-! ## A130087.P12219797647137856394

`A002805(n+1)/gcd(A002805(n+1), A025527(n+1))`
-/

namespace A130087.P12219797647137856394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) / (Int.gcd (A002805 (n + 1)) (A025527 (n + 1)) : ℚ)

end

end A130087.P12219797647137856394

/-! ## A130087.P7002114106023990679

`A058312(n+1)/gcd(A056612(n+1), A058312(n+1))`
-/

namespace A130087.P7002114106023990679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058312 (n + 1) : ℚ) / (Int.gcd (A056612 (n + 1)) (A058312 (n + 1)) : ℚ)

end

end A130087.P7002114106023990679

/-! ## A130087.P683231767354104866

`lcm(A025527(n+1), A058312(n+1))/A025527(n+1)`
-/

namespace A130087.P683231767354104866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A025527 (n + 1)) (A058312 (n + 1)) : ℚ) / (A025527 (n + 1) : ℚ)

end

end A130087.P683231767354104866

/-! ## A130087.P5688015730046524769

`lcm(A002805(n+1), A056612(n+1))/A056612(n+1)`
-/

namespace A130087.P5688015730046524769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002805 (n + 1)) (A056612 (n + 1)) : ℚ) / (A056612 (n + 1) : ℚ)

end

end A130087.P5688015730046524769

/-! ## A130087.P13419006014854970147

`A203811(n+1)/gcd(A024167(n+1), A203811(n+1))`
-/

namespace A130087.P13419006014854970147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203811 (n + 1) : ℚ) / (Int.gcd (A024167 (n + 1)) (A203811 (n + 1)) : ℚ)

end

end A130087.P13419006014854970147

/-!
# A130090: Primes prime(n) such that at least one of the two numbers (prime(n+1)^2-prime(n)^2)/2 - 1 and (prime(n+1)^2-prime(n)^2)/2 + 1 is not prime.

The programs for A130090, there is no canonical definition to state claims against.
-/

/-! ## A130090.P9226203243891783627

`p?[A003056(2*A208994(n))]`
-/

namespace A130090.P9226203243891783627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A208994 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130090.P9226203243891783627

/-! ## A130090.P9312494817001445135

`p?[A003056(A016825(A001840(n)))]`
-/

namespace A130090.P9312494817001445135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A016825 (A001840 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130090.P9312494817001445135

/-! ## A130090.P5100941700320549908

`p?[A003056(A131452(A000124(n)))]`
-/

namespace A130090.P5100941700320549908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A131452 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130090.P5100941700320549908

/-! ## A130090.P6820772208872859749

`p?[A003056(A005843(A208994(n)))]`
-/

namespace A130090.P6820772208872859749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A005843 (A208994 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130090.P6820772208872859749

/-!
# A130091: Numbers having in their canonical prime factorization mutually distinct exponents.

The programs for A130091, the canonical program `A130091.P10467782542687756208` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130091 has offset 1).

The definition of A130091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130091.P4751680747196812457

`eq[1, A327499(n+1)]+1`
-/

namespace A130091.P4751680747196812457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130091.P4751680747196812457

namespace A130091

/-- `eq[1, A327499(n+1)]+1` -/
def P4751680747196812457.Spec : Prop :=
  ∀ n, (P4751680747196812457.a n : ℤ) = A130091 (n + 1)

end A130091

/-! ## A130091.P10467782542687756208

`eq[1, A351564(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A130091

/-- `eq[1, A351564(n+1)]+1` -/
def P10467782542687756208.Spec : Prop :=
  ∀ n, (P10467782542687756208.a n : ℤ) = A130091 (n + 1)

theorem P10467782542687756208.correct : P10467782542687756208.Spec := by
  intro n
  simp only [A130091, Nat.add_sub_cancel]

end A130091

/-! ## A130091.P6955097382994811313

`lt[A327500(n+1), 2]+1`
-/

namespace A130091.P6955097382994811313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A130091.P6955097382994811313

namespace A130091

/-- `lt[A327500(n+1), 2]+1` -/
def P6955097382994811313.Spec : Prop :=
  ∀ n, (P6955097382994811313.a n : ℤ) = A130091 (n + 1)

end A130091

/-! ## A130091.P17943259924148690605

`∪[A000961(n+1), A177425(n+1)]`
-/

namespace A130091.P17943259924148690605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130091.P17943259924148690605

namespace A130091

/-- `∪[A000961(n+1), A177425(n+1)]` -/
def P17943259924148690605.Spec : Prop :=
  ∀ n, (P17943259924148690605.a n : ℤ) = A130091 (n + 1)

end A130091

/-! ## A130091.P16421289805089594958

`filter[A212165(n+1), A351564(#)]`
-/

namespace A130091.P16421289805089594958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A130091.P16421289805089594958

namespace A130091

/-- `filter[A212165(n+1), A351564(#)]` -/
def P16421289805089594958.Spec : Prop :=
  ∀ n, P16421289805089594958.a n = A130091 (n + 1)

end A130091

/-! ## A130091.P11282236023971042884

`filter[A344586(n+1), A351564(#)]`
-/

namespace A130091.P11282236023971042884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A130091.P11282236023971042884

namespace A130091

/-- `filter[A344586(n+1), A351564(#)]` -/
def P11282236023971042884.Spec : Prop :=
  ∀ n, P11282236023971042884.a n = A130091 (n + 1)

end A130091

/-! ## A130091.P9699956303315910225

`eq[1, A351944(n+1)]+1`
-/

namespace A130091.P9699956303315910225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130091.P9699956303315910225

namespace A130091

/-- `eq[1, A351944(n+1)]+1` -/
def P9699956303315910225.Spec : Prop :=
  ∀ n, (P9699956303315910225.a n : ℤ) = A130091 (n + 1)

end A130091

/-! ## A130091.P5746744218017278608

`filter[A363597(n+1), A351564(#)]`
-/

namespace A130091.P5746744218017278608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A130091.P5746744218017278608

namespace A130091

/-- `filter[A363597(n+1), A351564(#)]` -/
def P5746744218017278608.Spec : Prop :=
  ∀ n, P5746744218017278608.a n = A130091 (n + 1)

end A130091

/-! ## A130091.P12937607041533736127

`filter[A246716(n+1), A351564(#)]`
-/

namespace A130091.P12937607041533736127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A130091.P12937607041533736127

namespace A130091

/-- `filter[A246716(n+1), A351564(#)]` -/
def P12937607041533736127.Spec : Prop :=
  ∀ n, P12937607041533736127.a n = A130091 (n + 1)

end A130091

/-! ## A130091.P7329128391228339835

`filter[A253567(n+1), A351564(#)]`
-/

namespace A130091.P7329128391228339835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A130091.P7329128391228339835

namespace A130091

/-- `filter[A253567(n+1), A351564(#)]` -/
def P7329128391228339835.Spec : Prop :=
  ∀ n, P7329128391228339835.a n = A130091 (n + 1)

end A130091

/-! ## A130091.P7642253181103358015

`filter[A129487(n+1), A351564(#)]`
-/

namespace A130091.P7642253181103358015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A130091.P7642253181103358015

namespace A130091

/-- `filter[A129487(n+1), A351564(#)]` -/
def P7642253181103358015.Spec : Prop :=
  ∀ n, P7642253181103358015.a n = A130091 (n + 1)

end A130091

/-! ## A130091.P10560641161113076899

`record[A327498(n+1)]`
-/

namespace A130091.P10560641161113076899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130091.P10560641161113076899

namespace A130091

/-- `record[A327498(n+1)]` -/
def P10560641161113076899.Spec : Prop :=
  ∀ n, P10560641161113076899.a n = A130091 (n + 1)

end A130091

/-! ## A130091.P8183977098468961196

`filter[n+1, A351564(#)]`
-/

namespace A130091.P8183977098468961196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j) = 1) n)

end

end A130091.P8183977098468961196

namespace A130091

/-- `filter[n+1, A351564(#)]` -/
def P8183977098468961196.Spec : Prop :=
  ∀ n, (P8183977098468961196.a n : ℤ) = A130091 (n + 1)

end A130091

/-! ## A130091.P10427993069432792336

`eq[1, A353693(n+1)]+1`
-/

namespace A130091.P10427993069432792336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130091.P10427993069432792336

namespace A130091

/-- `eq[1, A353693(n+1)]+1` -/
def P10427993069432792336.Spec : Prop :=
  ∀ n, (P10427993069432792336.a n : ℤ) = A130091 (n + 1)

end A130091

/-! ## A130091.P4663122673138326130

`eq[1, A003557(A181819(n+1))]+1`
-/

namespace A130091.P4663122673138326130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130091.P4663122673138326130

namespace A130091

/-- `eq[1, A003557(A181819(n+1))]+1` -/
def P4663122673138326130.Spec : Prop :=
  ∀ n, (P4663122673138326130.a n : ℤ) = A130091 (n + 1)

end A130091

/-! ## A130091.P14758547220913809317

`lt[n, A327498(A028310(n)+1)]+1`
-/

namespace A130091.P14758547220913809317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A028310 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A130091.P14758547220913809317

namespace A130091

/-- `lt[n, A327498(A028310(n)+1)]+1` -/
def P14758547220913809317.Spec : Prop :=
  ∀ n, (P14758547220913809317.a n : ℤ) = A130091 (n + 1)

end A130091

/-! ## A130091.P9526751727759830937

`eq[A001221(n+1), A071625(n+1)]+1`
-/

namespace A130091.P9526751727759830937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A130091.P9526751727759830937

namespace A130091

/-- `eq[A001221(n+1), A071625(n+1)]+1` -/
def P9526751727759830937.Spec : Prop :=
  ∀ n, (P9526751727759830937.a n : ℤ) = A130091 (n + 1)

end A130091

/-! ## A130091.P13488442699209536826

`A327498(eq[n+1, A327498(n+1)]+1)`
-/

namespace A130091.P13488442699209536826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A130091.P13488442699209536826

namespace A130091

/-- `A327498(eq[n+1, A327498(n+1)]+1)` -/
def P13488442699209536826.Spec : Prop :=
  ∀ n, P13488442699209536826.a n = A130091 (n + 1)

end A130091

/-! ## A130091.P13850094295183371753

`lt[A109613(n)-1, A327498(n+1)]+1`
-/

namespace A130091.P13850094295183371753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A130091.P13850094295183371753

namespace A130091

/-- `lt[A109613(n)-1, A327498(n+1)]+1` -/
def P13850094295183371753.Spec : Prop :=
  ∀ n, (P13850094295183371753.a n : ℤ) = A130091 (n + 1)

end A130091

/-!
# A130092: Numbers with at least two factors having in their canonical prime factorization equal exponents.

The programs for A130092, the canonical program `A130092.P15831687442320950699` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130092 has offset 1).

The definition of A130092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130092.P16269893609206972022

`lt[1, A327499(n+1)]+1`
-/

namespace A130092.P16269893609206972022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A130092.P16269893609206972022

namespace A130092

/-- `lt[1, A327499(n+1)]+1` -/
def P16269893609206972022.Spec : Prop :=
  ∀ n, (P16269893609206972022.a n : ℤ) = A130092 (n + 1)

end A130092

/-! ## A130092.P3079813254281274698

`lt[1, A327500(n+1)]+1`
-/

namespace A130092.P3079813254281274698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A130092.P3079813254281274698

namespace A130092

/-- `lt[1, A327500(n+1)]+1` -/
def P3079813254281274698.Spec : Prop :=
  ∀ n, (P3079813254281274698.a n : ℤ) = A130092 (n + 1)

end A130092

/-! ## A130092.P8261522059071500183

`lt[1, A351944(n+1)]+1`
-/

namespace A130092.P8261522059071500183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A130092.P8261522059071500183

namespace A130092

/-- `lt[1, A351944(n+1)]+1` -/
def P8261522059071500183.Spec : Prop :=
  ∀ n, (P8261522059071500183.a n : ℤ) = A130092 (n + 1)

end A130092

/-! ## A130092.P8221990824969962640

`comp[A130091(n+1)-1]+1`
-/

namespace A130092.P8221990824969962640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A130092.P8221990824969962640

namespace A130092

/-- `comp[A130091(n+1)-1]+1` -/
def P8221990824969962640.Spec : Prop :=
  ∀ n, (P8221990824969962640.a n : ℤ) = A130092 (n + 1)

end A130092

/-! ## A130092.P15831687442320950699

`lt[2, A006530(A328830(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A130092

/-- `lt[2, A006530(A328830(n+1))]+1` -/
def P15831687442320950699.Spec : Prop :=
  ∀ n, (P15831687442320950699.a n : ℤ) = A130092 (n + 1)

theorem P15831687442320950699.correct : P15831687442320950699.Spec := by
  intro n
  simp only [A130092, Nat.add_sub_cancel]

end A130092

/-! ## A130092.P17352624947429025737

`A020725(lt[1, A351944(n+1)])`
-/

namespace A130092.P17352624947429025737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A130092.P17352624947429025737

namespace A130092

/-- `A020725(lt[1, A351944(n+1)])` -/
def P17352624947429025737.Spec : Prop :=
  ∀ n, P17352624947429025737.a n = A130092 (n + 1)

end A130092

/-! ## A130092.P4967336623650769860

`lt[A327498(n+1), n]+1`
-/

namespace A130092.P4967336623650769860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A130092.P4967336623650769860

namespace A130092

/-- `lt[A327498(n+1), n]+1` -/
def P4967336623650769860.Spec : Prop :=
  ∀ n, (P4967336623650769860.a n : ℤ) = A130092 (n + 1)

end A130092

/-! ## A130092.P2810695939589487126

`eq[0, A351564(A028310(n))]`
-/

namespace A130092.P2810695939589487126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351564 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130092.P2810695939589487126

namespace A130092

/-- `eq[0, A351564(A028310(n))]` -/
def P2810695939589487126.Spec : Prop :=
  ∀ n, (P2810695939589487126.a n : ℤ) = A130092 (n + 1)

end A130092

/-! ## A130092.P13723583040233416483

`eq[0, A008683(A181819(n+1))]+1`
-/

namespace A130092.P13723583040233416483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130092.P13723583040233416483

namespace A130092

/-- `eq[0, A008683(A181819(n+1))]+1` -/
def P13723583040233416483.Spec : Prop :=
  ∀ n, (P13723583040233416483.a n : ℤ) = A130092 (n + 1)

end A130092

/-! ## A130092.P13357917320522586851

`eq[A000038(n), A008966(A181819(n+1))]+1`
-/

namespace A130092.P13357917320522586851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A130092.P13357917320522586851

namespace A130092

/-- `eq[A000038(n), A008966(A181819(n+1))]+1` -/
def P13357917320522586851.Spec : Prop :=
  ∀ n, (P13357917320522586851.a n : ℤ) = A130092 (n + 1)

end A130092

/-! ## A130092.P8167328485596259858

`comp[C(A327498(n+1), n)]`
-/

namespace A130092.P8167328485596259858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327498 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130092.P8167328485596259858

namespace A130092

/-- `comp[C(A327498(n+1), n)]` -/
def P8167328485596259858.Spec : Prop :=
  ∀ n, (P8167328485596259858.a n : ℤ) = A130092 (n + 1)

end A130092

/-! ## A130092.P12669949733374560562

`∩[A182851(n+1), A348718(n+1)]`
-/

namespace A130092.P12669949733374560562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130092.P12669949733374560562

namespace A130092

/-- `∩[A182851(n+1), A348718(n+1)]` -/
def P12669949733374560562.Spec : Prop :=
  ∀ n, (P12669949733374560562.a n : ℤ) = A130092 (n + 1)

end A130092

/-! ## A130092.P13558636792028332954

`∩[A111774(n+1), A182851(n+1)]`
-/

namespace A130092.P13558636792028332954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130092.P13558636792028332954

namespace A130092

/-- `∩[A111774(n+1), A182851(n+1)]` -/
def P13558636792028332954.Spec : Prop :=
  ∀ n, (P13558636792028332954.a n : ℤ) = A130092 (n + 1)

end A130092

/-!
# A130093: A051731 * a lower triangular matrix with A036987 on the main diagonal and the rest zeros.

The programs for A130093, the canonical program `A130093.P16000771763530109019` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130093 has offset 1).

The definition of A130093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130093.P16000771763530109019

`A098474(n)%2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A130093

/-- `A098474(n)%2` -/
def P16000771763530109019.Spec : Prop :=
  ∀ n, P16000771763530109019.a n = A130093 (n + 1)

theorem P16000771763530109019.correct : P16000771763530109019.Spec := by
  intro n
  simp only [A130093, Nat.add_sub_cancel]

end A130093

/-! ## A130093.P2414759689920774588

`and(1, A098474(abs(1-n)+1))`
-/

namespace A130093.P2414759689920774588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A098474 (|1 - (n : ℤ)| + 1).toNat)

end

end A130093.P2414759689920774588

namespace A130093

/-- `and(1, A098474(abs(1-n)+1))` -/
def P2414759689920774588.Spec : Prop :=
  ∀ n, P2414759689920774588.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P12667376039056396847

`A209229(A127093(n+1))`
-/

namespace A130093.P12667376039056396847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A127093 (n + 1)).toNat

end

end A130093.P12667376039056396847

namespace A130093

/-- `A209229(A127093(n+1))` -/
def P12667376039056396847.Spec : Prop :=
  ∀ n, P12667376039056396847.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P16065525532151122745

`A000007(val(A098474(n), 2))`
-/

namespace A130093.P16065525532151122745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A098474 n).toNat 2)

end

end A130093.P16065525532151122745

namespace A130093

/-- `A000007(val(A098474(n), 2))` -/
def P16065525532151122745.Spec : Prop :=
  ∀ n, P16065525532151122745.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P3641070397790234574

`and(A098474(n), A106465(n))`
-/

namespace A130093.P3641070397790234574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098474 n) (A106465 n)

end

end A130093.P3641070397790234574

namespace A130093

/-- `and(A098474(n), A106465(n))` -/
def P3641070397790234574.Spec : Prop :=
  ∀ n, P3641070397790234574.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P7265587412965915725

`and(A098474(n), A108358(n))`
-/

namespace A130093.P7265587412965915725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098474 n) (A108358 n)

end

end A130093.P7265587412965915725

namespace A130093

/-- `and(A098474(n), A108358(n))` -/
def P7265587412965915725.Spec : Prop :=
  ∀ n, P7265587412965915725.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P2765057450911965869

`A000045(and(1, -A098474(n)))`
-/

namespace A130093.P2765057450911965869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (-A098474 n)).toNat

end

end A130093.P2765057450911965869

namespace A130093

/-- `A000045(and(1, -A098474(n)))` -/
def P2765057450911965869.Spec : Prop :=
  ∀ n, P2765057450911965869.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P8904306258448851395

`∏{d}[val(A098474(n), 2), A001222(#)]`
-/

namespace A130093.P8904306258448851395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A098474 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A130093.P8904306258448851395

namespace A130093

/-- `∏{d}[val(A098474(n), 2), A001222(#)]` -/
def P8904306258448851395.Spec : Prop :=
  ∀ n, P8904306258448851395.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P1575869534030717128

`A209229(A002260(n+1)*A051731(n+1))`
-/

namespace A130093.P1575869534030717128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A002260 (n + 1) * A051731 (n + 1)).toNat

end

end A130093.P1575869534030717128

namespace A130093

/-- `A209229(A002260(n+1)*A051731(n+1))` -/
def P1575869534030717128.Spec : Prop :=
  ∀ n, P1575869534030717128.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P5681247142628671226

`A209229(A050873(n+1)*A054522(n+1))`
-/

namespace A130093.P5681247142628671226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A050873 (n + 1) * A054522 (n + 1)).toNat

end

end A130093.P5681247142628671226

namespace A130093

/-- `A209229(A050873(n+1)*A054522(n+1))` -/
def P5681247142628671226.Spec : Prop :=
  ∀ n, P5681247142628671226.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P4625334981002029805

`A036987(A134560(n+1)+A173541(n+1)²)`
-/

namespace A130093.P4625334981002029805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A134560 (n + 1) + A173541 (n + 1) ^ 2).toNat

end

end A130093.P4625334981002029805

namespace A130093

/-- `A036987(A134560(n+1)+A173541(n+1)²)` -/
def P4625334981002029805.Spec : Prop :=
  ∀ n, P4625334981002029805.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P13186643000762294462

`A000007(A049828(n+1))*A036987(A134560(n+1))`
-/

namespace A130093.P13186643000762294462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A049828 (n + 1)).toNat * A036987 (A134560 (n + 1)).toNat

end

end A130093.P13186643000762294462

namespace A130093

/-- `A000007(A049828(n+1))*A036987(A134560(n+1))` -/
def P13186643000762294462.Spec : Prop :=
  ∀ n, P13186643000762294462.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P12285564030105243552

`A124644(∑[2*n]%comp[∑[n]])%2`
-/

namespace A130093.P12285564030105243552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124644 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)) 2

end

end A130093.P12285564030105243552

namespace A130093

/-- `A124644(∑[2*n]%comp[∑[n]])%2` -/
def P12285564030105243552.Spec : Prop :=
  ∀ n, P12285564030105243552.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P13658358771843795025

`A124644(A038722(n+1)-1)%2`
-/

namespace A130093.P13658358771843795025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124644 (A038722 (n + 1) - 1).toNat) 2

end

end A130093.P13658358771843795025

namespace A130093

/-- `A124644(A038722(n+1)-1)%2` -/
def P13658358771843795025.Spec : Prop :=
  ∀ n, P13658358771843795025.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P13155280321912026786

`A367178(n)%2`
-/

namespace A130093.P13155280321912026786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367178 n) 2

end

end A130093.P13155280321912026786

namespace A130093

/-- `A367178(n)%2` -/
def P13155280321912026786.Spec : Prop :=
  ∀ n, P13155280321912026786.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P15005356322961103724

`and(A098474(n), A131217(n))`
-/

namespace A130093.P15005356322961103724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098474 n) (A131217 n)

end

end A130093.P15005356322961103724

namespace A130093

/-- `and(A098474(n), A131217(n))` -/
def P15005356322961103724.Spec : Prop :=
  ∀ n, P15005356322961103724.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P14147722227510519940

`and(A098474(n), A114001(n))`
-/

namespace A130093.P14147722227510519940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098474 n) (A114001 n)

end

end A130093.P14147722227510519940

namespace A130093

/-- `and(A098474(n), A114001(n))` -/
def P14147722227510519940.Spec : Prop :=
  ∀ n, P14147722227510519940.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P1561494948449302783

`and(A098474(n), A195744(n))`
-/

namespace A130093.P1561494948449302783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098474 n) (A195744 n)

end

end A130093.P1561494948449302783

namespace A130093

/-- `and(A098474(n), A195744(n))` -/
def P1561494948449302783.Spec : Prop :=
  ∀ n, P1561494948449302783.a n = A130093 (n + 1)

end A130093

/-! ## A130093.P437364543355802876

`and(A195744(n), A367178(n))`
-/

namespace A130093.P437364543355802876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A367178 n)

end

end A130093.P437364543355802876

namespace A130093

/-- `and(A195744(n), A367178(n))` -/
def P437364543355802876.Spec : Prop :=
  ∀ n, P437364543355802876.a n = A130093 (n + 1)

end A130093

/-!
# A130094: A051731 * an infinite lower triangular matrix with A007427 in the main diagonal.

The programs for A130094, the canonical program `A130094.P893135603483082460` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130094 has offset 1).

The definition of A130094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130094.P893135603483082460

`∑{d}[A127093(n+1), A007428(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A130094

/-- `∑{d}[A127093(n+1), A007428(#)]` -/
def P893135603483082460.Spec : Prop :=
  ∀ n, P893135603483082460.a n = A130094 (n + 1)

theorem P893135603483082460.correct : P893135603483082460.Spec := by
  intro n
  simp only [A130094, Nat.add_sub_cancel]

end A130094

/-! ## A130094.P9645062491484460791

`A007427(A002260(n+1))*A051731(n+1)`
-/

namespace A130094.P9645062491484460791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A130094.P9645062491484460791

namespace A130094

/-- `A007427(A002260(n+1))*A051731(n+1)` -/
def P9645062491484460791.Spec : Prop :=
  ∀ n, P9645062491484460791.a n = A130094 (n + 1)

end A130094

/-! ## A130094.P4041709127822346087

`A007427(A002262(n)+1)*A051731(n+1)`
-/

namespace A130094.P4041709127822346087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A002262 n + 1).toNat * A051731 (n + 1)

end

end A130094.P4041709127822346087

namespace A130094

/-- `A007427(A002262(n)+1)*A051731(n+1)` -/
def P4041709127822346087.Spec : Prop :=
  ∀ n, P4041709127822346087.a n = A130094 (n + 1)

end A130094

/-! ## A130094.P2891503317484550717

`A007427(A050873(n+1))*A051731(n+1)`
-/

namespace A130094.P2891503317484550717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A050873 (n + 1)).toNat * A051731 (n + 1)

end

end A130094.P2891503317484550717

namespace A130094

/-- `A007427(A050873(n+1))*A051731(n+1)` -/
def P2891503317484550717.Spec : Prop :=
  ∀ n, P2891503317484550717.a n = A130094 (n + 1)

end A130094

/-! ## A130094.P15509170126109698103

`A007427(A123275(n+1))*A051731(n+1)`
-/

namespace A130094.P15509170126109698103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A123275 (n + 1)).toNat * A051731 (n + 1)

end

end A130094.P15509170126109698103

namespace A130094

/-- `A007427(A123275(n+1))*A051731(n+1)` -/
def P15509170126109698103.Spec : Prop :=
  ∀ n, P15509170126109698103.a n = A130094 (n + 1)

end A130094

/-! ## A130094.P16091882358079311278

`A007427(A002260(n+1))*A057427(A126988(n+1))`
-/

namespace A130094.P16091882358079311278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A002260 (n + 1)).toNat * A057427 (A126988 (n + 1)).toNat

end

end A130094.P16091882358079311278

namespace A130094

/-- `A007427(A002260(n+1))*A057427(A126988(n+1))` -/
def P16091882358079311278.Spec : Prop :=
  ∀ n, P16091882358079311278.a n = A130094 (n + 1)

end A130094

/-! ## A130094.P17660750185921533885

`floor(acot(A007318(n+1)%A007318(n)))*A007427(A002260(n+1))`
-/

namespace A130094.P17660750185921533885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.tmod (A007318 (n + 1)) (A007318 n) : ℝ)⌋ * A007427 (A002260 (n + 1)).toNat

end

end A130094.P17660750185921533885

namespace A130094

/-- `floor(acot(A007318(n+1)%A007318(n)))*A007427(A002260(n+1))` -/
def P17660750185921533885.Spec : Prop :=
  ∀ n, P17660750185921533885.a n = A130094 (n + 1)

end A130094

/-! ## A130094.P343917164488578935

`A007427(A112544(n+1))*A051731(n+1)`
-/

namespace A130094.P343917164488578935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A112544 (n + 1)).toNat * A051731 (n + 1)

end

end A130094.P343917164488578935

namespace A130094

/-- `A007427(A112544(n+1))*A051731(n+1)` -/
def P343917164488578935.Spec : Prop :=
  ∀ n, P343917164488578935.a n = A130094 (n + 1)

end A130094

/-! ## A130094.P17777089582858469289

`A007427(A050873(n+1))%A100449(A079217(n))`
-/

namespace A130094.P17777089582858469289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007427 (A050873 (n + 1)).toNat) (A100449 (A079217 n).toNat)

end

end A130094.P17777089582858469289

namespace A130094

/-- `A007427(A050873(n+1))%A100449(A079217(n))` -/
def P17777089582858469289.Spec : Prop :=
  ∀ n, P17777089582858469289.a n = A130094 (n + 1)

end A130094

/-! ## A130094.P3424482503324513055

`A127173(A120913(n+1))`
-/

namespace A130094.P3424482503324513055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127173 (A120913 (n + 1)).toNat

end

end A130094.P3424482503324513055

namespace A130094

/-- `A127173(A120913(n+1))` -/
def P3424482503324513055.Spec : Prop :=
  ∀ n, P3424482503324513055.a n = A130094 (n + 1)

end A130094

/-!
# A130095: Inverse Möbius transform of odd-indexed Fibonacci numbers.

The programs for A130095, the canonical program `A130095.P8079388257448104826` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130095 has offset 1).

The definition of A130095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130095.P8079388257448104826

`∑{d}[n+1, A001519(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130095

/-- `∑{d}[n+1, A001519(#)]` -/
def P8079388257448104826.Spec : Prop :=
  ∀ n, P8079388257448104826.a n = A130095 (n + 1)

theorem P8079388257448104826.correct : P8079388257448104826.Spec := by
  intro n
  simp only [A130095, Nat.add_sub_cancel]

end A130095

/-! ## A130095.P8904494808269679727

`∑{d}[n+1, A122367(#-1)]`
-/

namespace A130095.P8904494808269679727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A122367 (d - 1)

end

end A130095.P8904494808269679727

namespace A130095

/-- `∑{d}[n+1, A122367(#-1)]` -/
def P8904494808269679727.Spec : Prop :=
  ∀ n, P8904494808269679727.a n = A130095 (n + 1)

end A130095

/-! ## A130095.P7014030849412624735

`∑{d}[n+1, A212804(2*#)]`
-/

namespace A130095.P7014030849412624735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A212804 (2 * d)

end

end A130095.P7014030849412624735

namespace A130095

/-- `∑{d}[n+1, A212804(2*#)]` -/
def P7014030849412624735.Spec : Prop :=
  ∀ n, P7014030849412624735.a n = A130095 (n + 1)

end A130095

/-! ## A130095.P16866685021545402041

`∑{d}[n+1, A027941(#-1)+1]`
-/

namespace A130095.P16866685021545402041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A027941 (d - 1) + 1)

end

end A130095.P16866685021545402041

namespace A130095

/-- `∑{d}[n+1, A027941(#-1)+1]` -/
def P16866685021545402041.Spec : Prop :=
  ∀ n, P16866685021545402041.a n = A130095 (n + 1)

end A130095

/-! ## A130095.P7756650331270961468

`∑{d}[n+1, A000045(2*#-1)]`
-/

namespace A130095.P7756650331270961468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (2 * d - 1)

end

end A130095.P7756650331270961468

namespace A130095

/-- `∑{d}[n+1, A000045(2*#-1)]` -/
def P7756650331270961468.Spec : Prop :=
  ∀ n, P7756650331270961468.a n = A130095 (n + 1)

end A130095

/-!
# A130096: Primes prime(n) such that both of the numbers (prime(n+1)^2-prime(n)^2)/2 - 1 and (prime(n+1)^2-prime(n)^2)/2 + 1 are not primes.

The programs for A130096, there is no canonical definition to state claims against.
-/

/-! ## A130096.P10876875330098688793

`record[p?[A348518(A256419(n+1))]]`
-/

namespace A130096.P10876875330098688793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348518 (A256419 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130096.P10876875330098688793

/-! ## A130096.P17879654103027054240

`p?[xor(A185238(n), A258267(n+1))]`
-/

namespace A130096.P17879654103027054240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185238 n) (A258267 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130096.P17879654103027054240

/-! ## A130096.P1781652159917594833

`p?[A276419(2*(n+2))-A276376(n+1)]`
-/

namespace A130096.P1781652159917594833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276419 (2 * (n + 2)) - A276376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130096.P1781652159917594833

/-!
# A130097: Primes prime(n) such that at least one of the two numbers (prime(n+2)^2-prime(n)^2)/2 - 1 and (prime(n+2)^2-prime(n)^2)/2 + 1 is not prime.

The programs for A130097, there is no canonical definition to state claims against.
-/

/-! ## A130097.P16692244140202496045

`p?[∑[A164659(A088964(n+1))]]`
-/

namespace A130097.P16692244140202496045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164659 (A088964 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130097.P16692244140202496045

/-! ## A130097.P4064439488389833234

`A299956(lt[A098452(n+1), A230631(n)])`
-/

namespace A130097.P4064439488389833234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299956 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130097.P4064439488389833234

/-! ## A130097.P12119497253437097724

`p?[lt[1, A245966(n)]]`
-/

namespace A130097.P12119497253437097724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245966 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A130097.P12119497253437097724

/-! ## A130097.P5598694294278473434

`A221717(A077168(n+1))`
-/

namespace A130097.P5598694294278473434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221717 (A077168 (n + 1)).toNat

end

end A130097.P5598694294278473434

/-! ## A130097.P18432966161926582552

`eq[A086508(n+1), A331173(n)]`
-/

namespace A130097.P18432966161926582552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130097.P18432966161926582552

/-!
# A130098: Primes prime(n) such that both of the numbers (prime(n+2)^2-prime(n)^2)/2 - 1 and (prime(n+2)^2-prime(n)^2)/2 + 1 are not primes.

The programs for A130098, there is no canonical definition to state claims against.
-/

/-! ## A130098.P8212697120018468632

`record[A216436(A000096(∑{d}[n+1, #]))]`
-/

namespace A130098.P8212697120018468632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216436 (A000096 (∑ d ∈ Nat.divisors (f2 n), d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130098.P8212697120018468632

/-! ## A130098.P8900498374266379029

`record[A216436(A034856(∑{d}[n+1, #]))]`
-/

namespace A130098.P8900498374266379029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216436 (A034856 (∑ d ∈ Nat.divisors (f2 n), d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130098.P8900498374266379029

/-! ## A130098.P17749279227848638804

`A160950(lt[A160984(2*n+1), A160973(2*n+1)])`
-/

namespace A130098.P17749279227848638804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160984 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160973 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160950 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130098.P17749279227848638804

/-!
# A130099: Numbers of the form m^e such that m+e is prime, e>0.

The programs for A130099, there is no canonical definition to state claims against.
-/

/-! ## A130099.P235625641434535441

`eq[char[A001597(n+2)], A322435(n+1)]`
-/

namespace A130099.P235625641434535441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A130099.P235625641434535441

/-! ## A130099.P1773031917403194780

`eq[A158799(A253641(n)), A335516(n+1)]`
-/

namespace A130099.P1773031917403194780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 (A253641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130099.P1773031917403194780

