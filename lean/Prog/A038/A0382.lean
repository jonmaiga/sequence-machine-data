import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A038200: Row sums of triangle K(m, n), inverse to triangle T(m,n) in A020921.

The programs for A038200, there is no canonical definition to state claims against.
-/

/-! ## A038200.P8149415326934547372

`A001659(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A038200.P8149415326934547372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001659 (n + 1) - a (n - 1)

end

end A038200.P8149415326934547372

/-! ## A038200.P17689994095556336343

`A109978(∑[n]+1)-a(n-1)` with `a(0)=1`
-/

namespace A038200.P17689994095556336343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109978 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - a (n - 1)

end

end A038200.P17689994095556336343

/-! ## A038200.P11417513271835936949

`A109978(A000124(n))%A000040(2^n)-a(n-1)` with `a(0)=1`
-/

namespace A038200.P11417513271835936949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A109978 (A000124 n).toNat) (A000040 (2 ^ n)) - a (n - 1)

end

end A038200.P11417513271835936949

/-!
# A038202: Least k such that n! + k^2 is a square.

The programs for A038202, there is no canonical definition to state claims against.
-/

/-! ## A038202.P6948795278118664599

`A139174(n+4)-A181895(n+4)`
-/

namespace A038202.P6948795278118664599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139174 (n + 4) - A181895 (n + 4)

end

end A038202.P6948795278118664599

/-! ## A038202.P13203444990964550602

`sqrt(A181892(n+4))-A181895(n+4)`
-/

namespace A038202.P13203444990964550602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181892 (n + 4) : ℝ) - (A181895 (n + 4) : ℝ)

end

end A038202.P13203444990964550602

/-! ## A038202.P18350701497614265484

`A139151(n+4)-(A181895(n+4)+2)`
-/

namespace A038202.P18350701497614265484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139151 (n + 4) - (A181895 (n + 4) + 2)

end

end A038202.P18350701497614265484

/-! ## A038202.P15430513056275148740

`A139174(n+4)%A181895(Δ[A141214(n)])`
-/

namespace A038202.P15430513056275148740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139174 (n + 4)) (A181895 (f1 (n + 1) - f1 n).toNat)

end

end A038202.P15430513056275148740

/-! ## A038202.P1496105775987346578

`A181896(n+4)%A181899(n+4)`
-/

namespace A038202.P1496105775987346578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181896 (n + 4)) (A181899 (n + 4))

end

end A038202.P1496105775987346578

/-!
# A038203: Number of distinct values of factorials mod n.

The programs for A038203, there is no canonical definition to state claims against.
-/

/-! ## A038203.P8434517102145205138

`A219032(A296296(n+1))`
-/

namespace A038203.P8434517102145205138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219032 (A296296 (n + 1)).toNat

end

end A038203.P8434517102145205138

/-! ## A038203.P8445671143367304812

`A066088(A184096(n+2))`
-/

namespace A038203.P8445671143367304812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066088 (A184096 (n + 2)).toNat

end

end A038203.P8445671143367304812

/-! ## A038203.P11954474662268154109

`A153161(A322864(n+2))`
-/

namespace A038203.P11954474662268154109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153161 (A322864 (n + 2)).toNat

end

end A038203.P11954474662268154109

/-! ## A038203.P14232746908142296244

`A001222(lcm(23, A261274(n)))`
-/

namespace A038203.P14232746908142296244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 23 (A261274 n))

end

end A038203.P14232746908142296244

/-! ## A038203.P8977899705347296487

`A296658(A334054(n+1)+2)`
-/

namespace A038203.P8977899705347296487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296658 (A334054 (n + 1) + 2).toNat

end

end A038203.P8977899705347296487

/-!
# A038204: Least k such that factorials have exactly n distinct residues mod k.

The programs for A038204, there is no canonical definition to state claims against.
-/

/-! ## A038204.P578121844051368783

`or(A130137(n), A265537(A100356(n+1)))`
-/

namespace A038204.P578121844051368783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130137 n) (A265537 (A100356 (n + 1)).toNat)

end

end A038204.P578121844051368783

/-! ## A038204.P10845155773369078793

`A216505(A278788(n+1)-A089071(n+1))`
-/

namespace A038204.P10845155773369078793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216505 (A278788 (n + 1) - A089071 (n + 1)).toNat

end

end A038204.P10845155773369078793

/-!
# A038205: Number of derangements of n where minimal cycle size is at least 3.

The programs for A038205, the canonical program `A038205.P14438542104217294371` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038205 has offset 0).

The definition of A038205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038205.P14438542104217294371

`(n-1)*a(n-1)+(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038205

/-- `(n-1)*a(n-1)+(n-1)*(n-2)*a(n-3)` -/
def P14438542104217294371.Spec : Prop :=
  ∀ n, P14438542104217294371.a n = A038205 n

theorem P14438542104217294371.correct : P14438542104217294371.Spec := by
  intro n
  simp only [A038205]

end A038205

/-! ## A038205.P17688551358967349656

`A000166(n)-A158243(n)`
-/

namespace A038205.P17688551358967349656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A158243 n

end

end A038205.P17688551358967349656

namespace A038205

/-- `A000166(n)-A158243(n)` -/
def P17688551358967349656.Spec : Prop :=
  ∀ n, P17688551358967349656.a n = A038205 n

end A038205

/-! ## A038205.P15934033175626496370

`A344901(∑[n])`
-/

namespace A038205.P15934033175626496370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344901 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038205.P15934033175626496370

namespace A038205

/-- `A344901(∑[n])` -/
def P15934033175626496370.Spec : Prop :=
  ∀ n, P15934033175626496370.a n = A038205 n

end A038205

/-! ## A038205.P11150067806871780913

`A001464(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A038205.P11150067806871780913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001464 n + (n : ℤ) * a (n - 1)

end

end A038205.P11150067806871780913

namespace A038205

/-- `A001464(n)+n*a(n-1)` -/
def P11150067806871780913.Spec : Prop :=
  ∀ n, P11150067806871780913.a n = A038205 n

end A038205

/-! ## A038205.P14724584628144062828

`A137482(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A038205.P14724584628144062828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137482 n - (n : ℤ) * a (n - 1)

end

end A038205.P14724584628144062828

namespace A038205

/-- `A137482(n)-n*a(n-1)` -/
def P14724584628144062828.Spec : Prop :=
  ∀ n, P14724584628144062828.a n = A038205 n

end A038205

/-! ## A038205.P15557547386416017327

`A162974(A002620(n+1))`
-/

namespace A038205.P15557547386416017327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162974 (A002620 (n + 1)).toNat

end

end A038205.P15557547386416017327

namespace A038205

/-- `A162974(A002620(n+1))` -/
def P15557547386416017327.Spec : Prop :=
  ∀ n, P15557547386416017327.a n = A038205 n

end A038205

/-! ## A038205.P10956369660658486896

`abs(A182386(n))-A158243(n)`
-/

namespace A038205.P10956369660658486896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| - A158243 n

end

end A038205.P10956369660658486896

namespace A038205

/-- `abs(A182386(n))-A158243(n)` -/
def P10956369660658486896.Spec : Prop :=
  ∀ n, P10956369660658486896.a n = A038205 n

end A038205

/-! ## A038205.P11710468026190179699

`A068106(∑[n])-A158243(n)`
-/

namespace A038205.P11710468026190179699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j) - A158243 n

end

end A038205.P11710468026190179699

namespace A038205

/-- `A068106(∑[n])-A158243(n)` -/
def P11710468026190179699.Spec : Prop :=
  ∀ n, P11710468026190179699.a n = A038205 n

end A038205

/-! ## A038205.P12930240497159043428

`A060475(A000096(n))-A158243(n)`
-/

namespace A038205.P12930240497159043428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A000096 n).toNat - A158243 n

end

end A038205.P12930240497159043428

namespace A038205

/-- `A060475(A000096(n))-A158243(n)` -/
def P12930240497159043428.Spec : Prop :=
  ∀ n, P12930240497159043428.a n = A038205 n

end A038205

/-! ## A038205.P2742135142873579245

`A221145(n+1)/(n+1)`
-/

namespace A038205.P2742135142873579245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221145 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A038205.P2742135142873579245

namespace A038205

/-- `A221145(n+1)/(n+1)` -/
def P2742135142873579245.Spec : Prop :=
  ∀ n, P2742135142873579245.a n = (A038205 n : ℚ)

end A038205

/-!
# A038206: Can express a(n) with the digits of a(n)^2 in order, only adding plus signs.

The programs for A038206, there is no canonical definition to state claims against.
-/

/-! ## A038206.P2272620359220662292

`sqrt(A104113(n+1))`
-/

namespace A038206.P2272620359220662292
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A104113 (n + 1) : ℝ)

end

end A038206.P2272620359220662292

/-! ## A038206.P18223813539456765101

`A104113(n+1)^(1/A036453(n+1))`
-/

namespace A038206.P18223813539456765101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A104113 (n + 1) : ℝ) ^ (1 / (A036453 (n + 1) : ℚ) : ℝ)

end

end A038206.P18223813539456765101

/-! ## A038206.P1060669588898997556

`(A104113(n+1)^(1/A040002(n)))^2`
-/

namespace A038206.P1060669588898997556
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A104113 (n + 1) : ℝ) ^ (1 / (A040002 n : ℚ) : ℝ)) ^ 2

end

end A038206.P1060669588898997556

/-! ## A038206.P12132968479029560049

`A104113(n+1)^(1/A034867(n²%(n+1)))`
-/

namespace A038206.P12132968479029560049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A104113 (n + 1) : ℝ) ^ (1 / (A034867 (n ^ 2 % (n + 1)) : ℚ) : ℝ)

end

end A038206.P12132968479029560049

/-! ## A038206.P3678801835368628290

`A104113(n+1)^(A011782(n)/A000079(n))`
-/

namespace A038206.P3678801835368628290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A104113 (n + 1) : ℝ) ^ ((A011782 n : ℚ) / (A000079 n : ℚ) : ℝ)

end

end A038206.P3678801835368628290

/-!
# A038207: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j).

The programs for A038207, the canonical program `A038207.P11934492983446443774` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038207 has offset 0).

The definition of A038207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038207.P10612780376896314483

`abs(A065109(n))`
-/

namespace A038207.P10612780376896314483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065109 n|

end

end A038207.P10612780376896314483

namespace A038207

/-- `abs(A065109(n))` -/
def P10612780376896314483.Spec : Prop :=
  ∀ n, P10612780376896314483.a n = A038207 n

end A038207

/-! ## A038207.P2437211416534361446

`(A132307(n)+1)/2`
-/

namespace A038207.P2437211416534361446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132307 n + 1 : ℚ) / 2

end

end A038207.P2437211416534361446

namespace A038207

/-- `(A132307(n)+1)/2` -/
def P2437211416534361446.Spec : Prop :=
  ∀ n, P2437211416534361446.a n = (A038207 n : ℚ)

end A038207

/-! ## A038207.P14912062549351162813

`A120910(n+1)/3`
-/

namespace A038207.P14912062549351162813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120910 (n + 1) : ℚ) / 3

end

end A038207.P14912062549351162813

namespace A038207

/-- `A120910(n+1)/3` -/
def P14912062549351162813.Spec : Prop :=
  ∀ n, P14912062549351162813.a n = (A038207 n : ℚ)

end A038207

/-! ## A038207.P17973865523476711523

`ceil(A210204(n+1)/2)`
-/

namespace A038207.P17973865523476711523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210204 (n + 1) : ℚ) / 2⌉

end

end A038207.P17973865523476711523

namespace A038207

/-- `ceil(A210204(n+1)/2)` -/
def P17973865523476711523.Spec : Prop :=
  ∀ n, P17973865523476711523.a n = A038207 n

end A038207

/-! ## A038207.P6579564398334015054

`A154690(n)-A013609(n)`
-/

namespace A038207.P6579564398334015054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154690 n - A013609 n

end

end A038207.P6579564398334015054

namespace A038207

/-- `A154690(n)-A013609(n)` -/
def P6579564398334015054.Spec : Prop :=
  ∀ n, P6579564398334015054.a n = A038207 n

end A038207

/-! ## A038207.P11934492983446443774

`A007318(n)*A130321(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A038207

/-- `A007318(n)*A130321(n)` -/
def P11934492983446443774.Spec : Prop :=
  ∀ n, P11934492983446443774.a n = A038207 n

theorem P11934492983446443774.correct : P11934492983446443774.Spec := by
  intro n
  simp only [A038207]

end A038207

/-! ## A038207.P2602692950434590779

`A038208(n)/A059268(n)`
-/

namespace A038207.P2602692950434590779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A059268 n : ℚ)

end

end A038207.P2602692950434590779

namespace A038207

/-- `A038208(n)/A059268(n)` -/
def P2602692950434590779.Spec : Prop :=
  ∀ n, P2602692950434590779.a n = (A038207 n : ℚ)

end A038207

/-! ## A038207.P6954681300045090562

`A038231(n)/A130321(n)`
-/

namespace A038207.P6954681300045090562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038231 n : ℚ) / (A130321 n : ℚ)

end

end A038207.P6954681300045090562

namespace A038207

/-- `A038231(n)/A130321(n)` -/
def P6954681300045090562.Spec : Prop :=
  ∀ n, P6954681300045090562.a n = (A038207 n : ℚ)

end A038207

/-! ## A038207.P12430925843612186004

`A134308(n)/A232089(n)`
-/

namespace A038207.P12430925843612186004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134308 n : ℚ) / (A232089 n : ℚ)

end

end A038207.P12430925843612186004

namespace A038207

/-- `A134308(n)/A232089(n)` -/
def P12430925843612186004.Spec : Prop :=
  ∀ n, P12430925843612186004.a n = (A038207 n : ℚ)

end A038207

/-! ## A038207.P18102986179374003397

`gcd(A000038(n), A065109(n))`
-/

namespace A038207.P18102986179374003397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A065109 n)

end

end A038207.P18102986179374003397

namespace A038207

/-- `gcd(A000038(n), A065109(n))` -/
def P18102986179374003397.Spec : Prop :=
  ∀ n, (P18102986179374003397.a n : ℤ) = A038207 n

end A038207

/-! ## A038207.P15999304771297229293

`lcm(A007318(n), A065109(n))`
-/

namespace A038207.P15999304771297229293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A065109 n)

end

end A038207.P15999304771297229293

namespace A038207

/-- `lcm(A007318(n), A065109(n))` -/
def P15999304771297229293.Spec : Prop :=
  ∀ n, (P15999304771297229293.a n : ℤ) = A038207 n

end A038207

/-! ## A038207.P11752232746986228311

`sqrt(A262616(n))*A007318(n)`
-/

namespace A038207.P11752232746986228311
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A007318 n : ℝ)

end

end A038207.P11752232746986228311

namespace A038207

/-- `sqrt(A262616(n))*A007318(n)` -/
def P11752232746986228311.Spec : Prop :=
  ∀ n, P11752232746986228311.a n = (A038207 n : ℝ)

end A038207

/-! ## A038207.P16388290734763026549

`Δ[A102363(n)]*A130321(n)`
-/

namespace A038207.P16388290734763026549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A130321 n

end

end A038207.P16388290734763026549

namespace A038207

/-- `Δ[A102363(n)]*A130321(n)` -/
def P16388290734763026549.Spec : Prop :=
  ∀ n, P16388290734763026549.a n = A038207 n

end A038207

/-! ## A038207.P16058672817501654438

`(A014473(n)+1)*A130321(n)`
-/

namespace A038207.P16058672817501654438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A130321 n

end

end A038207.P16058672817501654438

namespace A038207

/-- `(A014473(n)+1)*A130321(n)` -/
def P16058672817501654438.Spec : Prop :=
  ∀ n, P16058672817501654438.a n = A038207 n

end A038207

/-! ## A038207.P13702676573146688231

`A057728(n+1)*A091918(n)`
-/

namespace A038207.P13702676573146688231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A091918 n

end

end A038207.P13702676573146688231

namespace A038207

/-- `A057728(n+1)*A091918(n)` -/
def P13702676573146688231.Spec : Prop :=
  ∀ n, P13702676573146688231.a n = A038207 n

end A038207

/-! ## A038207.P13033067484012153208

`A028326(n)/2*A130321(n)`
-/

namespace A038207.P13033067484012153208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A130321 n : ℚ)

end

end A038207.P13033067484012153208

namespace A038207

/-- `A028326(n)/2*A130321(n)` -/
def P13033067484012153208.Spec : Prop :=
  ∀ n, P13033067484012153208.a n = (A038207 n : ℚ)

end A038207

/-! ## A038207.P6473775834578552418

`2^(A004736(n+1)-1)*A007318(n)`
-/

namespace A038207.P6473775834578552418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ) * (A007318 n : ℚ)

end

end A038207.P6473775834578552418

namespace A038207

/-- `2^(A004736(n+1)-1)*A007318(n)` -/
def P6473775834578552418.Spec : Prop :=
  ∀ n, P6473775834578552418.a n = (A038207 n : ℚ)

end A038207

/-! ## A038207.P14064473486423406795

`A013620(n)/A000244(A002262(n))`
-/

namespace A038207.P14064473486423406795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A000244 (A002262 n).toNat : ℚ)

end

end A038207.P14064473486423406795

namespace A038207

/-- `A013620(n)/A000244(A002262(n))` -/
def P14064473486423406795.Spec : Prop :=
  ∀ n, P14064473486423406795.a n = (A038207 n : ℚ)

end A038207

/-! ## A038207.P6305200615661051908

`A007318(n)/A051340(n)*A131817(n)`
-/

namespace A038207.P6305200615661051908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A051340 n : ℚ) * (A131817 n : ℚ)

end

end A038207.P6305200615661051908

namespace A038207

/-- `A007318(n)/A051340(n)*A131817(n)` -/
def P6305200615661051908.Spec : Prop :=
  ∀ n, P6305200615661051908.a n = (A038207 n : ℚ)

end A038207

/-! ## A038207.P36954912375029231

`A007318(n)/A085478(n)*A114192(n)`
-/

namespace A038207.P36954912375029231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A085478 n : ℚ) * (A114192 n : ℚ)

end

end A038207.P36954912375029231

namespace A038207

/-- `A007318(n)/A085478(n)*A114192(n)` -/
def P36954912375029231.Spec : Prop :=
  ∀ n, P36954912375029231.a n = (A038207 n : ℚ)

end A038207

/-!
# A038208: Triangle whose (i,j)-th entry is binomial(i,j)*2^i.

The programs for A038208, the canonical program `A038208.P14603430842903697550` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038208 has offset 0).

The definition of A038208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038208.P9807187546449090706

`A007318(n)*∏[char[∑[n+1]]+1]`
-/

namespace A038208.P9807187546449090706
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A038208.P9807187546449090706

namespace A038208

/-- `A007318(n)*∏[char[∑[n+1]]+1]` -/
def P9807187546449090706.Spec : Prop :=
  ∀ n, P9807187546449090706.a n = A038208 n

end A038208

/-! ## A038208.P14603430842903697550

`A038207(n)*A059268(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038208

/-- `A038207(n)*A059268(n)` -/
def P14603430842903697550.Spec : Prop :=
  ∀ n, P14603430842903697550.a n = A038208 n

theorem P14603430842903697550.correct : P14603430842903697550.Spec := by
  intro n
  simp only [A038208]

end A038208

/-! ## A038208.P12215948246840043201

`A013609(n)*A130321(n)`
-/

namespace A038208.P12215948246840043201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A130321 n

end

end A038208.P12215948246840043201

namespace A038208

/-- `A013609(n)*A130321(n)` -/
def P12215948246840043201.Spec : Prop :=
  ∀ n, P12215948246840043201.a n = A038208 n

end A038208

/-! ## A038208.P9848002945171354990

`A134308(n)*A238303(n)`
-/

namespace A038208.P9848002945171354990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134308 n * A238303 n

end

end A038208.P9848002945171354990

namespace A038208

/-- `A134308(n)*A238303(n)` -/
def P9848002945171354990.Spec : Prop :=
  ∀ n, P9848002945171354990.a n = A038208 n

end A038208

/-! ## A038208.P5972194758753739868

`abs(A108086(n)*A137688(n))`
-/

namespace A038208.P5972194758753739868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A137688 n|

end

end A038208.P5972194758753739868

namespace A038208

/-- `abs(A108086(n)*A137688(n))` -/
def P5972194758753739868.Spec : Prop :=
  ∀ n, P5972194758753739868.a n = A038208 n

end A038208

/-! ## A038208.P13594303245984058790

`sqrt(A008459(n))*A137688(n)`
-/

namespace A038208.P13594303245984058790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A137688 n : ℝ)

end

end A038208.P13594303245984058790

namespace A038208

/-- `sqrt(A008459(n))*A137688(n)` -/
def P13594303245984058790.Spec : Prop :=
  ∀ n, P13594303245984058790.a n = (A038208 n : ℝ)

end A038208

/-! ## A038208.P3030688459480686758

`Δ[A007664(n)]*A007318(n)`
-/

namespace A038208.P3030688459480686758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007318 n

end

end A038208.P3030688459480686758

namespace A038208

/-- `Δ[A007664(n)]*A007318(n)` -/
def P3030688459480686758.Spec : Prop :=
  ∀ n, P3030688459480686758.a n = A038208 n

end A038208

/-! ## A038208.P12115888952872927501

`A380114(n+1)+A380114(n)`
-/

namespace A038208.P12115888952872927501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380114 (n + 1) + A380114 n

end

end A038208.P12115888952872927501

namespace A038208

/-- `A380114(n+1)+A380114(n)` -/
def P12115888952872927501.Spec : Prop :=
  ∀ n, P12115888952872927501.a n = A038208 n

end A038208

/-! ## A038208.P12290080204532502864

`(2-A000007(n))*A055372(n)`
-/

namespace A038208.P12290080204532502864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A055372 n

end

end A038208.P12290080204532502864

namespace A038208

/-- `(2-A000007(n))*A055372(n)` -/
def P12290080204532502864.Spec : Prop :=
  ∀ n, P12290080204532502864.a n = A038208 n

end A038208

/-! ## A038208.P16815035990842006565

`(A134346(n)+A007318(n))/2`
-/

namespace A038208.P16815035990842006565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134346 n + A007318 n : ℚ) / 2

end

end A038208.P16815035990842006565

namespace A038208

/-- `(A134346(n)+A007318(n))/2` -/
def P16815035990842006565.Spec : Prop :=
  ∀ n, P16815035990842006565.a n = (A038208 n : ℚ)

end A038208

/-! ## A038208.P244520044222234647

`A007318(n)/2*A140513(n)`
-/

namespace A038208.P244520044222234647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / 2 * (A140513 n : ℚ)

end

end A038208.P244520044222234647

namespace A038208

/-- `A007318(n)/2*A140513(n)` -/
def P244520044222234647.Spec : Prop :=
  ∀ n, P244520044222234647.a n = (A038208 n : ℚ)

end A038208

/-! ## A038208.P8733404827523436585

`A028326(n)/2*A137688(n)`
-/

namespace A038208.P8733404827523436585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A137688 n : ℚ)

end

end A038208.P8733404827523436585

namespace A038208

/-- `A028326(n)/2*A137688(n)` -/
def P8733404827523436585.Spec : Prop :=
  ∀ n, P8733404827523436585.a n = (A038208 n : ℚ)

end A038208

/-! ## A038208.P13312056865147508388

`A038207(n)*A038207(A112367(n))`
-/

namespace A038208.P13312056865147508388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A038207 (A112367 n).toNat

end

end A038208.P13312056865147508388

namespace A038208

/-- `A038207(n)*A038207(A112367(n))` -/
def P13312056865147508388.Spec : Prop :=
  ∀ n, P13312056865147508388.a n = A038208 n

end A038208

/-! ## A038208.P15886505869371371069

`Δ[A102363(n)]*A102363(A057944(n))`
-/

namespace A038208.P15886505869371371069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A102363 (A057944 n).toNat

end

end A038208.P15886505869371371069

namespace A038208

/-- `Δ[A102363(n)]*A102363(A057944(n))` -/
def P15886505869371371069.Spec : Prop :=
  ∀ n, P15886505869371371069.a n = A038208 n

end A038208

/-! ## A038208.P4725241117566294117

`(A173786(n)-A059268(n))*A007318(n)`
-/

namespace A038208.P4725241117566294117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173786 n - A059268 n) * A007318 n

end

end A038208.P4725241117566294117

namespace A038208

/-- `(A173786(n)-A059268(n))*A007318(n)` -/
def P4725241117566294117.Spec : Prop :=
  ∀ n, P4725241117566294117.a n = A038208 n

end A038208

/-! ## A038208.P6787462929918030142

`(A131923(n)-A003056(n))*A137688(n)`
-/

namespace A038208.P6787462929918030142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131923 n - A003056 n) * A137688 n

end

end A038208.P6787462929918030142

namespace A038208

/-- `(A131923(n)-A003056(n))*A137688(n)` -/
def P6787462929918030142.Spec : Prop :=
  ∀ n, P6787462929918030142.a n = A038208 n

end A038208

/-! ## A038208.P12669395616335424332

`A007318(n)*A059268(n)*A130321(n)`
-/

namespace A038208.P12669395616335424332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A059268 n * A130321 n

end

end A038208.P12669395616335424332

namespace A038208

/-- `A007318(n)*A059268(n)*A130321(n)` -/
def P12669395616335424332.Spec : Prop :=
  ∀ n, P12669395616335424332.a n = A038208 n

end A038208

/-! ## A038208.P6968450816349158508

`A007318(n)*A082907(n)*A319862(n)`
-/

namespace A038208.P6968450816349158508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A082907 n * A319862 n

end

end A038208.P6968450816349158508

namespace A038208

/-- `A007318(n)*A082907(n)*A319862(n)` -/
def P6968450816349158508.Spec : Prop :=
  ∀ n, P6968450816349158508.a n = A038208 n

end A038208

/-! ## A038208.P6540824833206150369

`A013609(n)/A007318(n)*A038207(n)`
-/

namespace A038208.P6540824833206150369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ) * (A038207 n : ℚ)

end

end A038208.P6540824833206150369

namespace A038208

/-- `A013609(n)/A007318(n)*A038207(n)` -/
def P6540824833206150369.Spec : Prop :=
  ∀ n, P6540824833206150369.a n = (A038208 n : ℚ)

end A038208

/-!
# A038210: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*4^j.

The programs for A038210, the canonical program `A038210.P16937682952618424332` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038210 has offset 0).

The definition of A038210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038210.P16937682952618424332

`A038208(n)*A059268(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038210

/-- `A038208(n)*A059268(n)` -/
def P16937682952618424332.Spec : Prop :=
  ∀ n, P16937682952618424332.a n = A038210 n

theorem P16937682952618424332.correct : P16937682952618424332.Spec := by
  intro n
  simp only [A038210]

end A038210

/-! ## A038210.P13864298828238951065

`A013611(n)*A130321(n)`
-/

namespace A038210.P13864298828238951065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 n * A130321 n

end

end A038210.P13864298828238951065

namespace A038210

/-- `A013611(n)*A130321(n)` -/
def P13864298828238951065.Spec : Prop :=
  ∀ n, P13864298828238951065.a n = A038210 n

end A038210

/-! ## A038210.P14465489880547201994

`A013609(n)*A137688(n)`
-/

namespace A038210.P14465489880547201994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A137688 n

end

end A038210.P14465489880547201994

namespace A038210

/-- `A013609(n)*A137688(n)` -/
def P14465489880547201994.Spec : Prop :=
  ∀ n, P14465489880547201994.a n = A038210 n

end A038210

/-! ## A038210.P4632527259449152251

`A007318(n)*A368043(n)`
-/

namespace A038210.P4632527259449152251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A368043 n

end

end A038210.P4632527259449152251

namespace A038210

/-- `A007318(n)*A368043(n)` -/
def P4632527259449152251.Spec : Prop :=
  ∀ n, P4632527259449152251.a n = A038210 n

end A038210

/-! ## A038210.P2404102521299084015

`abs(A137688(n)*A303872(n))`
-/

namespace A038210.P2404102521299084015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137688 n * A303872 n|

end

end A038210.P2404102521299084015

namespace A038210

/-- `abs(A137688(n)*A303872(n))` -/
def P2404102521299084015.Spec : Prop :=
  ∀ n, P2404102521299084015.a n = A038210 n

end A038210

/-! ## A038210.P17738506406632469089

`A059268(n)²*A038207(n)`
-/

namespace A038210.P17738506406632469089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038207 n

end

end A038210.P17738506406632469089

namespace A038210

/-- `A059268(n)²*A038207(n)` -/
def P17738506406632469089.Spec : Prop :=
  ∀ n, P17738506406632469089.a n = A038210 n

end A038210

/-! ## A038210.P9575375775162075099

`Δ[A007664(n)]*A013609(n)`
-/

namespace A038210.P9575375775162075099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A013609 n

end

end A038210.P9575375775162075099

namespace A038210

/-- `Δ[A007664(n)]*A013609(n)` -/
def P9575375775162075099.Spec : Prop :=
  ∀ n, P9575375775162075099.a n = A038210 n

end A038210

/-! ## A038210.P6749933782055522007

`A013609(n)/2*A140513(n)`
-/

namespace A038210.P6749933782055522007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / 2 * (A140513 n : ℚ)

end

end A038210.P6749933782055522007

namespace A038210

/-- `A013609(n)/2*A140513(n)` -/
def P6749933782055522007.Spec : Prop :=
  ∀ n, P6749933782055522007.a n = (A038210 n : ℚ)

end A038210

/-! ## A038210.P3768052218013147163

`2^A003056(n)*A013609(n)`
-/

namespace A038210.P3768052218013147163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003056 n : ℤ) * (A013609 n : ℚ)

end

end A038210.P3768052218013147163

namespace A038210

/-- `2^A003056(n)*A013609(n)` -/
def P3768052218013147163.Spec : Prop :=
  ∀ n, P3768052218013147163.a n = (A038210 n : ℚ)

end A038210

/-! ## A038210.P16822016689919623905

`A007318(n)*A000079(A051162(n))`
-/

namespace A038210.P16822016689919623905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000079 (A051162 n).toNat

end

end A038210.P16822016689919623905

namespace A038210

/-- `A007318(n)*A000079(A051162(n))` -/
def P16822016689919623905.Spec : Prop :=
  ∀ n, P16822016689919623905.a n = A038210 n

end A038210

/-! ## A038210.P14041150897203503426

`A038207(A112367(n))²*A038207(n)`
-/

namespace A038210.P14041150897203503426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A112367 n).toNat ^ 2 * A038207 n

end

end A038210.P14041150897203503426

namespace A038210

/-- `A038207(A112367(n))²*A038207(n)` -/
def P14041150897203503426.Spec : Prop :=
  ∀ n, P14041150897203503426.a n = A038210 n

end A038210

/-! ## A038210.P14979263453323470166

`A013609(n)*A013609(A025581(n)+n)`
-/

namespace A038210.P14979263453323470166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A013609 (A025581 n + (n : ℤ)).toNat

end

end A038210.P14979263453323470166

namespace A038210

/-- `A013609(n)*A013609(A025581(n)+n)` -/
def P14979263453323470166.Spec : Prop :=
  ∀ n, P14979263453323470166.a n = A038210 n

end A038210

/-! ## A038210.P17163086812911084950

`A013609(n)/A007318(n)*A038208(n)`
-/

namespace A038210.P17163086812911084950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ) * (A038208 n : ℚ)

end

end A038210.P17163086812911084950

namespace A038210

/-- `A013609(n)/A007318(n)*A038208(n)` -/
def P17163086812911084950.Spec : Prop :=
  ∀ n, P17163086812911084950.a n = (A038210 n : ℚ)

end A038210

/-! ## A038210.P10013193998922263660

`A013611(n)/A038207(n)*A038231(n)`
-/

namespace A038210.P10013193998922263660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013611 n : ℚ) / (A038207 n : ℚ) * (A038231 n : ℚ)

end

end A038210.P10013193998922263660

namespace A038210

/-- `A013611(n)/A038207(n)*A038231(n)` -/
def P10013193998922263660.Spec : Prop :=
  ∀ n, P10013193998922263660.a n = (A038210 n : ℚ)

end A038210

/-! ## A038210.P15275710234773000810

`A007318(n)*A130321(n)*A059268(n)²`
-/

namespace A038210.P15275710234773000810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A130321 n * A059268 n ^ 2

end

end A038210.P15275710234773000810

namespace A038210

/-- `A007318(n)*A130321(n)*A059268(n)²` -/
def P15275710234773000810.Spec : Prop :=
  ∀ n, P15275710234773000810.a n = A038210 n

end A038210

/-! ## A038210.P12771511966827833995

`(A013609(n)/A007318(n))²*A038207(n)`
-/

namespace A038210.P12771511966827833995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013609 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A038207 n : ℚ)

end

end A038210.P12771511966827833995

namespace A038210

/-- `(A013609(n)/A007318(n))²*A038207(n)` -/
def P12771511966827833995.Spec : Prop :=
  ∀ n, P12771511966827833995.a n = (A038210 n : ℚ)

end A038210

/-! ## A038210.P1152045007179978666

`lcm(A059268(n)²*A065109(n), A059268(n))`
-/

namespace A038210.P1152045007179978666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059268 n ^ 2 * A065109 n) (A059268 n)

end

end A038210.P1152045007179978666

namespace A038210

/-- `lcm(A059268(n)²*A065109(n), A059268(n))` -/
def P1152045007179978666.Spec : Prop :=
  ∀ n, (P1152045007179978666.a n : ℤ) = A038210 n

end A038210

/-! ## A038210.P8581612048087612611

`A038232(A061579(n))`
-/

namespace A038210.P8581612048087612611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 (A061579 n).toNat

end

end A038210.P8581612048087612611

namespace A038210

/-- `A038232(A061579(n))` -/
def P8581612048087612611.Spec : Prop :=
  ∀ n, P8581612048087612611.a n = A038210 n

end A038210

/-! ## A038210.P10983914380232021224

`A038234(n)/A130321(n)`
-/

namespace A038210.P10983914380232021224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038234 n : ℚ) / (A130321 n : ℚ)

end

end A038210.P10983914380232021224

namespace A038210

/-- `A038234(n)/A130321(n)` -/
def P10983914380232021224.Spec : Prop :=
  ∀ n, P10983914380232021224.a n = (A038210 n : ℚ)

end A038210

/-! ## A038210.P12892448065758891195

`A038214(n)/A059268(n)`
-/

namespace A038210.P12892448065758891195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038214 n : ℚ) / (A059268 n : ℚ)

end

end A038210.P12892448065758891195

namespace A038210

/-- `A038214(n)/A059268(n)` -/
def P12892448065758891195.Spec : Prop :=
  ∀ n, P12892448065758891195.a n = (A038210 n : ℚ)

end A038210

/-!
# A038211: Can express a(n) with the digits of a(n)^4 in order, only adding plus signs.

The programs for A038211, there is no canonical definition to state claims against.
-/

/-! ## A038211.P10886220220912453283

`lt[A001787(A299757(2*n+1)), A143496(2*n+5)]`
-/

namespace A038211.P10886220220912453283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A299757 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143496 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038211.P10886220220912453283

/-!
# A038212: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*6^j.

The programs for A038212, the canonical program `A038212.P16599495353890336006` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038212 has offset 0).

The definition of A038212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6410 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038212.P16599495353890336006

`A013609(n)*A036561(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038212

/-- `A013609(n)*A036561(n)` -/
def P16599495353890336006.Spec : Prop :=
  ∀ n, P16599495353890336006.a n = A038212 n

theorem P16599495353890336006.correct : P16599495353890336006.Spec := by
  intro n
  simp only [A038212]

end A038212

/-! ## A038212.P15423754916071956763

`A013620(n)*A059268(n)`
-/

namespace A038212.P15423754916071956763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A059268 n

end

end A038212.P15423754916071956763

namespace A038212

/-- `A013620(n)*A059268(n)` -/
def P15423754916071956763.Spec : Prop :=
  ∀ n, P15423754916071956763.a n = A038212 n

end A038212

/-! ## A038212.P13242980151995547487

`A007318(n)*A100851(n)`
-/

namespace A038212.P13242980151995547487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A100851 n

end

end A038212.P13242980151995547487

namespace A038212

/-- `A007318(n)*A100851(n)` -/
def P13242980151995547487.Spec : Prop :=
  ∀ n, P13242980151995547487.a n = A038212 n

end A038212

/-! ## A038212.P12132364693870894720

`A013613(n)*A130321(n)`
-/

namespace A038212.P12132364693870894720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 n * A130321 n

end

end A038212.P12132364693870894720

namespace A038212

/-- `A013613(n)*A130321(n)` -/
def P12132364693870894720.Spec : Prop :=
  ∀ n, P12132364693870894720.a n = A038212 n

end A038212

/-! ## A038212.P1953150308374116971

`A013610(n)*A137688(n)`
-/

namespace A038212.P1953150308374116971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A137688 n

end

end A038212.P1953150308374116971

namespace A038212

/-- `A013610(n)*A137688(n)` -/
def P1953150308374116971.Spec : Prop :=
  ∀ n, P1953150308374116971.a n = A038212 n

end A038212

/-! ## A038212.P11003620323762066384

`lcm(A013610(n), A038208(n))`
-/

namespace A038212.P11003620323762066384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038208 n)

end

end A038212.P11003620323762066384

namespace A038212

/-- `lcm(A013610(n), A038208(n))` -/
def P11003620323762066384.Spec : Prop :=
  ∀ n, (P11003620323762066384.a n : ℤ) = A038212 n

end A038212

/-! ## A038212.P10123923901388307430

`sqrt(A008459(n))*A100851(n)`
-/

namespace A038212.P10123923901388307430
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A100851 n : ℝ)

end

end A038212.P10123923901388307430

namespace A038212

/-- `sqrt(A008459(n))*A100851(n)` -/
def P10123923901388307430.Spec : Prop :=
  ∀ n, P10123923901388307430.a n = (A038212 n : ℝ)

end A038212

/-! ## A038212.P10646638067264723858

`Δ[A007664(n)]*A013610(n)`
-/

namespace A038212.P10646638067264723858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A013610 n

end

end A038212.P10646638067264723858

namespace A038212

/-- `Δ[A007664(n)]*A013610(n)` -/
def P10646638067264723858.Spec : Prop :=
  ∀ n, P10646638067264723858.a n = A038212 n

end A038212

/-! ## A038212.P4420001756701760409

`(A230445(n)+1)*A013609(n)`
-/

namespace A038212.P4420001756701760409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A230445 n + 1) * A013609 n

end

end A038212.P4420001756701760409

namespace A038212

/-- `(A230445(n)+1)*A013609(n)` -/
def P4420001756701760409.Spec : Prop :=
  ∀ n, P4420001756701760409.a n = A038212 n

end A038212

/-! ## A038212.P12955560457926920674

`2^A003056(n)*A013610(n)`
-/

namespace A038212.P12955560457926920674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003056 n : ℤ) * (A013610 n : ℚ)

end

end A038212.P12955560457926920674

namespace A038212

/-- `2^A003056(n)*A013610(n)` -/
def P12955560457926920674.Spec : Prop :=
  ∀ n, P12955560457926920674.a n = (A038212 n : ℚ)

end A038212

/-! ## A038212.P13798716654289555172

`A013620(n)*A013620(A112367(n))`
-/

namespace A038212.P13798716654289555172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A013620 (A112367 n).toNat

end

end A038212.P13798716654289555172

namespace A038212

/-- `A013620(n)*A013620(A112367(n))` -/
def P13798716654289555172.Spec : Prop :=
  ∀ n, P13798716654289555172.a n = A038212 n

end A038212

/-! ## A038212.P15991226552367577289

`A013610(n)*A013620(n-A002262(n))`
-/

namespace A038212.P15991226552367577289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A013620 ((n : ℤ) - A002262 n).toNat

end

end A038212.P15991226552367577289

namespace A038212

/-- `A013610(n)*A013620(n-A002262(n))` -/
def P15991226552367577289.Spec : Prop :=
  ∀ n, P15991226552367577289.a n = A038212 n

end A038212

/-! ## A038212.P12148931690360013258

`(A094615(n)-A230445(n))*A013609(n)`
-/

namespace A038212.P12148931690360013258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094615 n - A230445 n) * A013609 n

end

end A038212.P12148931690360013258

namespace A038212

/-- `(A094615(n)-A230445(n))*A013609(n)` -/
def P12148931690360013258.Spec : Prop :=
  ∀ n, P12148931690360013258.a n = A038212 n

end A038212

/-! ## A038212.P11960682685644106696

`A013613(n)/A007318(n)*A038207(n)`
-/

namespace A038212.P11960682685644106696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A007318 n : ℚ) * (A038207 n : ℚ)

end

end A038212.P11960682685644106696

namespace A038212

/-- `A013613(n)/A007318(n)*A038207(n)` -/
def P11960682685644106696.Spec : Prop :=
  ∀ n, P11960682685644106696.a n = (A038212 n : ℚ)

end A038212

/-! ## A038212.P2905798395053720277

`A013610(n)*A059268(n)*A059268(A061579(n))`
-/

namespace A038212.P2905798395053720277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A059268 n * A059268 (A061579 n).toNat

end

end A038212.P2905798395053720277

namespace A038212

/-- `A013610(n)*A059268(n)*A059268(A061579(n))` -/
def P2905798395053720277.Spec : Prop :=
  ∀ n, P2905798395053720277.a n = A038212 n

end A038212

/-! ## A038212.P6406138586573525663

`A038256(A061579(n))`
-/

namespace A038212.P6406138586573525663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038256 (A061579 n).toNat

end

end A038212.P6406138586573525663

namespace A038212

/-- `A038256(A061579(n))` -/
def P6406138586573525663.Spec : Prop :=
  ∀ n, P6406138586573525663.a n = A038212 n

end A038212

/-! ## A038212.P1693379717423252391

`A038236(n)/A130321(n)`
-/

namespace A038212.P1693379717423252391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n : ℚ) / (A130321 n : ℚ)

end

end A038212.P1693379717423252391

namespace A038212

/-- `A038236(n)/A130321(n)` -/
def P1693379717423252391.Spec : Prop :=
  ∀ n, P1693379717423252391.a n = (A038212 n : ℚ)

end A038212

/-! ## A038212.P5524911065541599782

`A038260(n)/A140303(n)`
-/

namespace A038212.P5524911065541599782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038260 n : ℚ) / (A140303 n : ℚ)

end

end A038212.P5524911065541599782

namespace A038212

/-- `A038260(n)/A140303(n)` -/
def P5524911065541599782.Spec : Prop :=
  ∀ n, P5524911065541599782.a n = (A038212 n : ℚ)

end A038212

/-! ## A038212.P12587709013974711099

`A038218(n)/A059268(n)`
-/

namespace A038212.P12587709013974711099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038218 n : ℚ) / (A059268 n : ℚ)

end

end A038212.P12587709013974711099

namespace A038212

/-- `A038218(n)/A059268(n)` -/
def P12587709013974711099.Spec : Prop :=
  ∀ n, P12587709013974711099.a n = (A038212 n : ℚ)

end A038212

/-! ## A038212.P4423104402418381482

`gcd(A038218(n), A038260(n))`
-/

namespace A038212.P4423104402418381482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038218 n) (A038260 n)

end

end A038212.P4423104402418381482

namespace A038212

/-- `gcd(A038218(n), A038260(n))` -/
def P4423104402418381482.Spec : Prop :=
  ∀ n, (P4423104402418381482.a n : ℤ) = A038212 n

end A038212

/-!
# A038213: Top line of 3-wave sequence A038196, also bisection of A006356.

The programs for A038213, the canonical program `A038213.P17432320377110471100` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038213 has offset 0).

The definition of A038213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038213.P6682877492705447713

`ogf((1-3x+x^2)/(1-6x+5x^2-x^3))`
-/

namespace A038213.P6682877492705447713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1] [1, -6, 5, -1] n

end

end A038213.P6682877492705447713

namespace A038213

/-- `ogf((1-3x+x^2)/(1-6x+5x^2-x^3))` -/
def P6682877492705447713.Spec : Prop :=
  ∀ n, P6682877492705447713.a n = A038213 n

end A038213

/-! ## A038213.P17432320377110471100

`A077998(2*n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038213

/-- `A077998(2*n)` -/
def P17432320377110471100.Spec : Prop :=
  ∀ n, P17432320377110471100.a n = A038213 n

theorem P17432320377110471100.correct : P17432320377110471100.Spec := by
  intro n
  simp only [A038213]

end A038213

/-! ## A038213.P13195582668270046498

`A038196(4*n)`
-/

namespace A038213.P13195582668270046498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (4 * n)

end

end A038213.P13195582668270046498

namespace A038213

/-- `A038196(4*n)` -/
def P13195582668270046498.Spec : Prop :=
  ∀ n, P13195582668270046498.a n = A038213 n

end A038213

/-! ## A038213.P462952658651798312

`A120771(6*n)`
-/

namespace A038213.P462952658651798312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (6 * n)

end

end A038213.P462952658651798312

namespace A038213

/-- `A120771(6*n)` -/
def P462952658651798312.Spec : Prop :=
  ∀ n, P462952658651798312.a n = A038213 n

end A038213

/-! ## A038213.P5738514599835698722

`A106803(Δ[n²])`
-/

namespace A038213.P5738514599835698722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A038213.P5738514599835698722

namespace A038213

/-- `A106803(Δ[n²])` -/
def P5738514599835698722.Spec : Prop :=
  ∀ n, P5738514599835698722.a n = A038213 n

end A038213

/-! ## A038213.P7264118635214192665

`A052949(2*n)-1`
-/

namespace A038213.P7264118635214192665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052949 (2 * n) - 1

end

end A038213.P7264118635214192665

namespace A038213

/-- `A052949(2*n)-1` -/
def P7264118635214192665.Spec : Prop :=
  ∀ n, P7264118635214192665.a n = A038213 n

end A038213

/-! ## A038213.P12414938348169245163

`A187068(4*(n+1))`
-/

namespace A038213.P12414938348169245163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (4 * (n + 1))

end

end A038213.P12414938348169245163

namespace A038213

/-- `A187068(4*(n+1))` -/
def P12414938348169245163.Spec : Prop :=
  ∀ n, P12414938348169245163.a n = A038213 n

end A038213

/-! ## A038213.P17557675932748172430

`A187070(4*n+2)`
-/

namespace A038213.P17557675932748172430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (4 * n + 2)

end

end A038213.P17557675932748172430

namespace A038213

/-- `A187070(4*n+2)` -/
def P17557675932748172430.Spec : Prop :=
  ∀ n, P17557675932748172430.a n = A038213 n

end A038213

/-! ## A038213.P10984205881887068404

`A052994(Δ[n²])/2`
-/

namespace A038213.P10984205881887068404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052994 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A038213.P10984205881887068404

namespace A038213

/-- `A052994(Δ[n²])/2` -/
def P10984205881887068404.Spec : Prop :=
  ∀ n, P10984205881887068404.a n = (A038213 n : ℚ)

end A038213

/-! ## A038213.P1997045445648125890

`record[A006356(n*n%2)]`
-/

namespace A038213.P1997045445648125890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038213.P1997045445648125890

namespace A038213

/-- `record[A006356(n*n%2)]` -/
def P1997045445648125890.Spec : Prop :=
  ∀ n, P1997045445648125890.a n = A038213 n

end A038213

/-! ## A038213.P5510933549881095858

`record[A077998(and(n, n+1))]`
-/

namespace A038213.P5510933549881095858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038213.P5510933549881095858

namespace A038213

/-- `record[A077998(and(n, n+1))]` -/
def P5510933549881095858.Spec : Prop :=
  ∀ n, P5510933549881095858.a n = A038213 n

end A038213

/-! ## A038213.P14298001156584836184

`∑[A006054(Δ[n²])]+1`
-/

namespace A038213.P14298001156584836184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A038213.P14298001156584836184

namespace A038213

/-- `∑[A006054(Δ[n²])]+1` -/
def P14298001156584836184.Spec : Prop :=
  ∀ n, P14298001156584836184.a n = A038213 n

end A038213

/-! ## A038213.P3303371662103923603

`A006356(eq[2*n, lcm(2, n)])`
-/

namespace A038213.P3303371662103923603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038213.P3303371662103923603

namespace A038213

/-- `A006356(eq[2*n, lcm(2, n)])` -/
def P3303371662103923603.Spec : Prop :=
  ∀ n, P3303371662103923603.a n = A038213 n

end A038213

/-! ## A038213.P14820638857558587819

`record[A077998(n)/(-1)^n]`
-/

namespace A038213.P14820638857558587819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077998 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038213.P14820638857558587819

namespace A038213

/-- `record[A077998(n)/(-1)^n]` -/
def P14820638857558587819.Spec : Prop :=
  ∀ n, P14820638857558587819.a n = (A038213 n : ℚ)

end A038213

/-! ## A038213.P2743256807347016577

`A006356(floor(3/acot(n))-(n+1))`
-/

namespace A038213.P2743256807347016577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n + 1 : ℤ)).toNat

end

end A038213.P2743256807347016577

namespace A038213

/-- `A006356(floor(3/acot(n))-(n+1))` -/
def P2743256807347016577.Spec : Prop :=
  ∀ n, P2743256807347016577.a n = A038213 n

end A038213

/-! ## A038213.P4061807079836353759

`A006356(record[n/(3-Δ[or(1, n)])])`
-/

namespace A038213.P4061807079836353759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (3 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A038213.P4061807079836353759

namespace A038213

/-- `A006356(record[n/(3-Δ[or(1, n)])])` -/
def P4061807079836353759.Spec : Prop :=
  ∀ n, P4061807079836353759.a n = A038213 n

end A038213

/-! ## A038213.P874882867452470837

`A006356(A004273(n))`
-/

namespace A038213.P874882867452470837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (A004273 n).toNat

end

end A038213.P874882867452470837

namespace A038213

/-- `A006356(A004273(n))` -/
def P874882867452470837.Spec : Prop :=
  ∀ n, P874882867452470837.a n = A038213 n

end A038213

/-! ## A038213.P15534908794962770141

`A006356(record[A006369(n)])`
-/

namespace A038213.P15534908794962770141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038213.P15534908794962770141

namespace A038213

/-- `A006356(record[A006369(n)])` -/
def P15534908794962770141.Spec : Prop :=
  ∀ n, P15534908794962770141.a n = A038213 n

end A038213

/-! ## A038213.P9908102002170414870

`∑[A006054(A004277(n)+1)]`
-/

namespace A038213.P9908102002170414870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (A004277 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038213.P9908102002170414870

namespace A038213

/-- `∑[A006054(A004277(n)+1)]` -/
def P9908102002170414870.Spec : Prop :=
  ∀ n, P9908102002170414870.a n = A038213 n

end A038213

/-! ## A038213.P2042661338496876918

`A006356(A289207(2*n+1))`
-/

namespace A038213.P2042661338496876918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (A289207 (2 * n + 1)).toNat

end

end A038213.P2042661338496876918

namespace A038213

/-- `A006356(A289207(2*n+1))` -/
def P2042661338496876918.Spec : Prop :=
  ∀ n, P2042661338496876918.a n = A038213 n

end A038213

/-!
# A038214: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*8^j.

The programs for A038214, the canonical program `A038214.P14601018666803231600` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038214 has offset 0).

The definition of A038214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038214.P14601018666803231600

`A038210(n)*A059268(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038214

/-- `A038210(n)*A059268(n)` -/
def P14601018666803231600.Spec : Prop :=
  ∀ n, P14601018666803231600.a n = A038214 n

theorem P14601018666803231600.correct : P14601018666803231600.Spec := by
  intro n
  simp only [A038214]

end A038214

/-! ## A038214.P13511173502532418766

`A013615(n)*A130321(n)`
-/

namespace A038214.P13511173502532418766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 n * A130321 n

end

end A038214.P13511173502532418766

namespace A038214

/-- `A013615(n)*A130321(n)` -/
def P13511173502532418766.Spec : Prop :=
  ∀ n, P13511173502532418766.a n = A038214 n

end A038214

/-! ## A038214.P15445655495607036595

`A013611(n)*A137688(n)`
-/

namespace A038214.P15445655495607036595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 n * A137688 n

end

end A038214.P15445655495607036595

namespace A038214

/-- `A013611(n)*A137688(n)` -/
def P15445655495607036595.Spec : Prop :=
  ∀ n, P15445655495607036595.a n = A038214 n

end A038214

/-! ## A038214.P14132838884613530

`A013609(n)*A368043(n)`
-/

namespace A038214.P14132838884613530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A368043 n

end

end A038214.P14132838884613530

namespace A038214

/-- `A013609(n)*A368043(n)` -/
def P14132838884613530.Spec : Prop :=
  ∀ n, P14132838884613530.a n = A038214 n

end A038214

/-! ## A038214.P4415443111376018943

`A059268(n)²*A038208(n)`
-/

namespace A038214.P4415443111376018943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038208 n

end

end A038214.P4415443111376018943

namespace A038214

/-- `A059268(n)²*A038208(n)` -/
def P4415443111376018943.Spec : Prop :=
  ∀ n, P4415443111376018943.a n = A038214 n

end A038214

/-! ## A038214.P9403348276581193735

`Δ[A007664(n)]*A013611(n)`
-/

namespace A038214.P9403348276581193735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A013611 n

end

end A038214.P9403348276581193735

namespace A038214

/-- `Δ[A007664(n)]*A013611(n)` -/
def P9403348276581193735.Spec : Prop :=
  ∀ n, P9403348276581193735.a n = A038214 n

end A038214

/-! ## A038214.P13316079605878357011

`A059268(n)^3*A038207(n)`
-/

namespace A038214.P13316079605878357011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 3 * A038207 n

end

end A038214.P13316079605878357011

namespace A038214

/-- `A059268(n)^3*A038207(n)` -/
def P13316079605878357011.Spec : Prop :=
  ∀ n, P13316079605878357011.a n = A038214 n

end A038214

/-! ## A038214.P16405282646032967362

`A038210(n)/A038208(n)*A038210(n)`
-/

namespace A038214.P16405282646032967362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038210 n : ℚ) / (A038208 n : ℚ) * (A038210 n : ℚ)

end

end A038214.P16405282646032967362

namespace A038214

/-- `A038210(n)/A038208(n)*A038210(n)` -/
def P16405282646032967362.Spec : Prop :=
  ∀ n, P16405282646032967362.a n = (A038214 n : ℚ)

end A038214

/-! ## A038214.P14521608574056252149

`(A013609(n)/A007318(n))²*A038208(n)`
-/

namespace A038214.P14521608574056252149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013609 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A038208 n : ℚ)

end

end A038214.P14521608574056252149

namespace A038214

/-- `(A013609(n)/A007318(n))²*A038208(n)` -/
def P14521608574056252149.Spec : Prop :=
  ∀ n, P14521608574056252149.a n = (A038214 n : ℚ)

end A038214

/-! ## A038214.P5765156108615990609

`(A038208(n)/A038207(n))²*A038208(n)`
-/

namespace A038214.P5765156108615990609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038208 n : ℚ) / (A038207 n : ℚ)) ^ 2 * (A038208 n : ℚ)

end

end A038214.P5765156108615990609

namespace A038214

/-- `(A038208(n)/A038207(n))²*A038208(n)` -/
def P5765156108615990609.Spec : Prop :=
  ∀ n, P5765156108615990609.a n = (A038214 n : ℚ)

end A038214

/-! ## A038214.P284914861703821232

`A038280(A061579(n))`
-/

namespace A038214.P284914861703821232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038280 (A061579 n).toNat

end

end A038214.P284914861703821232

namespace A038214

/-- `A038280(A061579(n))` -/
def P284914861703821232.Spec : Prop :=
  ∀ n, P284914861703821232.a n = A038214 n

end A038214

/-! ## A038214.P8168551725959980337

`A038238(n)/A130321(n)`
-/

namespace A038214.P8168551725959980337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038238 n : ℚ) / (A130321 n : ℚ)

end

end A038214.P8168551725959980337

namespace A038214

/-- `A038238(n)/A130321(n)` -/
def P8168551725959980337.Spec : Prop :=
  ∀ n, P8168551725959980337.a n = (A038214 n : ℚ)

end A038214

/-! ## A038214.P3842138238419688770

`A038262(n)/A140303(n)`
-/

namespace A038214.P3842138238419688770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038262 n : ℚ) / (A140303 n : ℚ)

end

end A038214.P3842138238419688770

namespace A038214

/-- `A038262(n)/A140303(n)` -/
def P3842138238419688770.Spec : Prop :=
  ∀ n, P3842138238419688770.a n = (A038214 n : ℚ)

end A038214

/-! ## A038214.P9047459102300431277

`gcd(A038238(n), A038262(n))`
-/

namespace A038214.P9047459102300431277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038238 n) (A038262 n)

end

end A038214.P9047459102300431277

namespace A038214

/-- `gcd(A038238(n), A038262(n))` -/
def P9047459102300431277.Spec : Prop :=
  ∀ n, (P9047459102300431277.a n : ℤ) = A038214 n

end A038214

/-! ## A038214.P12305220869507335860

`A038286(n)/A262616(n)`
-/

namespace A038214.P12305220869507335860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038286 n : ℚ) / (A262616 n : ℚ)

end

end A038214.P12305220869507335860

namespace A038214

/-- `A038286(n)/A262616(n)` -/
def P12305220869507335860.Spec : Prop :=
  ∀ n, P12305220869507335860.a n = (A038214 n : ℚ)

end A038214

/-! ## A038214.P12344136486694641654

`A038286(n)/A130321(n)²`
-/

namespace A038214.P12344136486694641654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038286 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A038214.P12344136486694641654

namespace A038214

/-- `A038286(n)/A130321(n)²` -/
def P12344136486694641654.Spec : Prop :=
  ∀ n, P12344136486694641654.a n = (A038214 n : ℚ)

end A038214

/-! ## A038214.P15912229489771357290

`gcd(A038286(n), A038310(n))`
-/

namespace A038214.P15912229489771357290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038286 n) (A038310 n)

end

end A038214.P15912229489771357290

namespace A038214

/-- `gcd(A038286(n), A038310(n))` -/
def P15912229489771357290.Spec : Prop :=
  ∀ n, (P15912229489771357290.a n : ℤ) = A038214 n

end A038214

/-! ## A038214.P5862007099805090353

`A038210(n)²/A038208(n)`
-/

namespace A038214.P5862007099805090353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038210 n ^ 2 : ℚ) / (A038208 n : ℚ)

end

end A038214.P5862007099805090353

namespace A038214

/-- `A038210(n)²/A038208(n)` -/
def P5862007099805090353.Spec : Prop :=
  ∀ n, P5862007099805090353.a n = (A038214 n : ℚ)

end A038214

/-! ## A038214.P4063343242200403466

`A038210(n)²/gcd(A038210(n), A038212(n))`
-/

namespace A038214.P4063343242200403466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038210 n ^ 2 : ℚ) / (Int.gcd (A038210 n) (A038212 n) : ℚ)

end

end A038214.P4063343242200403466

namespace A038214

/-- `A038210(n)²/gcd(A038210(n), A038212(n))` -/
def P4063343242200403466.Spec : Prop :=
  ∀ n, P4063343242200403466.a n = (A038214 n : ℚ)

end A038214

/-!
# A038215: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*9^j.

The programs for A038215, the canonical program `A038215.P9598806509330154798` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038215 has offset 0).

The definition of A038215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4832 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038215.P9598806509330154798

`A013610(n)*A036561(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038215

/-- `A013610(n)*A036561(n)` -/
def P9598806509330154798.Spec : Prop :=
  ∀ n, P9598806509330154798.a n = A038215 n

theorem P9598806509330154798.correct : P9598806509330154798.Spec := by
  intro n
  simp only [A038215]

end A038215

/-! ## A038215.P17767664209773912813

`A013616(n)*A130321(n)`
-/

namespace A038215.P17767664209773912813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013616 n * A130321 n

end

end A038215.P17767664209773912813

namespace A038215

/-- `A013616(n)*A130321(n)` -/
def P17767664209773912813.Spec : Prop :=
  ∀ n, P17767664209773912813.a n = A038215 n

end A038215

/-! ## A038215.P10401501139124421100

`lcm(A013616(n), A013620(n))`
-/

namespace A038215.P10401501139124421100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013616 n) (A013620 n)

end

end A038215.P10401501139124421100

namespace A038215

/-- `lcm(A013616(n), A013620(n))` -/
def P10401501139124421100.Spec : Prop :=
  ∀ n, (P10401501139124421100.a n : ℤ) = A038215 n

end A038215

/-! ## A038215.P1926677223405738788

`A000244(A002262(n))*A013620(n)`
-/

namespace A038215.P1926677223405738788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A013620 n

end

end A038215.P1926677223405738788

namespace A038215

/-- `A000244(A002262(n))*A013620(n)` -/
def P1926677223405738788.Spec : Prop :=
  ∀ n, P1926677223405738788.a n = A038215 n

end A038215

/-! ## A038215.P15956915933490792218

`A013620(n)/A038207(n)*A013620(n)`
-/

namespace A038215.P15956915933490792218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A038207 n : ℚ) * (A013620 n : ℚ)

end

end A038215.P15956915933490792218

namespace A038215

/-- `A013620(n)/A038207(n)*A013620(n)` -/
def P15956915933490792218.Spec : Prop :=
  ∀ n, P15956915933490792218.a n = (A038215 n : ℚ)

end A038215

/-! ## A038215.P9909073279598677720

`A038212(n)/A038210(n)*A038212(n)`
-/

namespace A038215.P9909073279598677720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038212 n : ℚ) / (A038210 n : ℚ) * (A038212 n : ℚ)

end

end A038215.P9909073279598677720

namespace A038215

/-- `A038212(n)/A038210(n)*A038212(n)` -/
def P9909073279598677720.Spec : Prop :=
  ∀ n, P9909073279598677720.a n = (A038215 n : ℚ)

end A038215

/-! ## A038215.P17812448964290205065

`A038233(n)/A038279(n)*A038233(n)`
-/

namespace A038215.P17812448964290205065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038233 n : ℚ) / (A038279 n : ℚ) * (A038233 n : ℚ)

end

end A038215.P17812448964290205065

namespace A038215

/-- `A038233(n)/A038279(n)*A038233(n)` -/
def P17812448964290205065.Spec : Prop :=
  ∀ n, P17812448964290205065.a n = (A038215 n : ℚ)

end A038215

/-! ## A038215.P18407054952952905320

`(A013610(n)/A007318(n))²*A038207(n)`
-/

namespace A038215.P18407054952952905320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013610 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A038207 n : ℚ)

end

end A038215.P18407054952952905320

namespace A038215

/-- `(A013610(n)/A007318(n))²*A038207(n)` -/
def P18407054952952905320.Spec : Prop :=
  ∀ n, P18407054952952905320.a n = (A038215 n : ℚ)

end A038215

/-! ## A038215.P16287233520157803687

`A038292(A061579(n))`
-/

namespace A038215.P16287233520157803687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038292 (A061579 n).toNat

end

end A038215.P16287233520157803687

namespace A038215

/-- `A038292(A061579(n))` -/
def P16287233520157803687.Spec : Prop :=
  ∀ n, P16287233520157803687.a n = A038215 n

end A038215

/-! ## A038215.P10175088689654744721

`A038239(n)/A130321(n)`
-/

namespace A038215.P10175088689654744721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038239 n : ℚ) / (A130321 n : ℚ)

end

end A038215.P10175088689654744721

namespace A038215

/-- `A038239(n)/A130321(n)` -/
def P10175088689654744721.Spec : Prop :=
  ∀ n, P10175088689654744721.a n = (A038215 n : ℚ)

end A038215

/-! ## A038215.P2802623692030555255

`A038263(n)/A140303(n)`
-/

namespace A038215.P2802623692030555255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038263 n : ℚ) / (A140303 n : ℚ)

end

end A038215.P2802623692030555255

namespace A038215

/-- `A038263(n)/A140303(n)` -/
def P2802623692030555255.Spec : Prop :=
  ∀ n, P2802623692030555255.a n = (A038215 n : ℚ)

end A038215

/-! ## A038215.P7460854851326985524

`gcd(A038239(n), A038263(n))`
-/

namespace A038215.P7460854851326985524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038239 n) (A038263 n)

end

end A038215.P7460854851326985524

namespace A038215

/-- `gcd(A038239(n), A038263(n))` -/
def P7460854851326985524.Spec : Prop :=
  ∀ n, (P7460854851326985524.a n : ℤ) = A038215 n

end A038215

/-! ## A038215.P8126569376360271490

`A038287(n)/A262616(n)`
-/

namespace A038215.P8126569376360271490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038287 n : ℚ) / (A262616 n : ℚ)

end

end A038215.P8126569376360271490

namespace A038215

/-- `A038287(n)/A262616(n)` -/
def P8126569376360271490.Spec : Prop :=
  ∀ n, P8126569376360271490.a n = (A038215 n : ℚ)

end A038215

/-! ## A038215.P8739708542653674565

`A038287(n)/A130321(n)²`
-/

namespace A038215.P8739708542653674565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038287 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A038215.P8739708542653674565

namespace A038215

/-- `A038287(n)/A130321(n)²` -/
def P8739708542653674565.Spec : Prop :=
  ∀ n, P8739708542653674565.a n = (A038215 n : ℚ)

end A038215

/-! ## A038215.P18068823276827645957

`gcd(A038287(n), A038311(n))`
-/

namespace A038215.P18068823276827645957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038287 n) (A038311 n)

end

end A038215.P18068823276827645957

namespace A038215

/-- `gcd(A038287(n), A038311(n))` -/
def P18068823276827645957.Spec : Prop :=
  ∀ n, (P18068823276827645957.a n : ℤ) = A038215 n

end A038215

/-! ## A038215.P13346360485001447625

`A013620(n)²/A038207(n)`
-/

namespace A038215.P13346360485001447625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n ^ 2 : ℚ) / (A038207 n : ℚ)

end

end A038215.P13346360485001447625

namespace A038215

/-- `A013620(n)²/A038207(n)` -/
def P13346360485001447625.Spec : Prop :=
  ∀ n, P13346360485001447625.a n = (A038215 n : ℚ)

end A038215

/-! ## A038215.P12145990514868869969

`A013620(n)²/gcd(A013620(n), A013621(n))`
-/

namespace A038215.P12145990514868869969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n ^ 2 : ℚ) / (Int.gcd (A013620 n) (A013621 n) : ℚ)

end

end A038215.P12145990514868869969

namespace A038215

/-- `A013620(n)²/gcd(A013620(n), A013621(n))` -/
def P12145990514868869969.Spec : Prop :=
  ∀ n, P12145990514868869969.a n = (A038215 n : ℚ)

end A038215

/-! ## A038215.P10328509978548888602

`A038233(n)²/A038279(n)`
-/

namespace A038215.P10328509978548888602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038233 n ^ 2 : ℚ) / (A038279 n : ℚ)

end

end A038215.P10328509978548888602

namespace A038215

/-- `A038233(n)²/A038279(n)` -/
def P10328509978548888602.Spec : Prop :=
  ∀ n, P10328509978548888602.a n = (A038215 n : ℚ)

end A038215

/-! ## A038215.P11647556994727480151

`A038212(n)²/A038210(n)`
-/

namespace A038215.P11647556994727480151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038212 n ^ 2 : ℚ) / (A038210 n : ℚ)

end

end A038215.P11647556994727480151

namespace A038215

/-- `A038212(n)²/A038210(n)` -/
def P11647556994727480151.Spec : Prop :=
  ∀ n, P11647556994727480151.a n = (A038215 n : ℚ)

end A038215

/-! ## A038215.P14307195266646117022

`gcd(A038311(n)+A038311(n)², A038335(n))`
-/

namespace A038215.P14307195266646117022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038311 n + A038311 n ^ 2) (A038335 n)

end

end A038215.P14307195266646117022

namespace A038215

/-- `gcd(A038311(n)+A038311(n)², A038335(n))` -/
def P14307195266646117022.Spec : Prop :=
  ∀ n, (P14307195266646117022.a n : ℤ) = A038215 n

end A038215

/-!
# A038216: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*10^j.

The programs for A038216, the canonical program `A038216.P16300750487479131636` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038216 has offset 0).

The definition of A038216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4539 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038216.P6814710236208728529

`A013621(n)*A059268(n)`
-/

namespace A038216.P6814710236208728529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013621 n * A059268 n

end

end A038216.P6814710236208728529

namespace A038216

/-- `A013621(n)*A059268(n)` -/
def P6814710236208728529.Spec : Prop :=
  ∀ n, P6814710236208728529.a n = A038216 n

end A038216

/-! ## A038216.P16300750487479131636

`A013617(n)*A130321(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038216

/-- `A013617(n)*A130321(n)` -/
def P16300750487479131636.Spec : Prop :=
  ∀ n, P16300750487479131636.a n = A038216 n

theorem P16300750487479131636.correct : P16300750487479131636.Spec := by
  intro n
  simp only [A038216]

end A038216

/-! ## A038216.P5256295955412055199

`A013612(n)*A137688(n)`
-/

namespace A038216.P5256295955412055199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 n * A137688 n

end

end A038216.P5256295955412055199

namespace A038216

/-- `A013612(n)*A137688(n)` -/
def P5256295955412055199.Spec : Prop :=
  ∀ n, P5256295955412055199.a n = A038216 n

end A038216

/-! ## A038216.P2331170424917335703

`lcm(A013612(n), A038208(n))`
-/

namespace A038216.P2331170424917335703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038208 n)

end

end A038216.P2331170424917335703

namespace A038216

/-- `lcm(A013612(n), A038208(n))` -/
def P2331170424917335703.Spec : Prop :=
  ∀ n, (P2331170424917335703.a n : ℤ) = A038216 n

end A038216

/-! ## A038216.P1708919855367420152

`Δ[A007664(n)]*A013612(n)`
-/

namespace A038216.P1708919855367420152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A013612 n

end

end A038216.P1708919855367420152

namespace A038216

/-- `Δ[A007664(n)]*A013612(n)` -/
def P1708919855367420152.Spec : Prop :=
  ∀ n, P1708919855367420152.a n = A038216 n

end A038216

/-! ## A038216.P16957137588419338347

`A013609(n)*A232646(n+1)`
-/

namespace A038216.P16957137588419338347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A232646 (n + 1)

end

end A038216.P16957137588419338347

namespace A038216

/-- `A013609(n)*A232646(n+1)` -/
def P16957137588419338347.Spec : Prop :=
  ∀ n, P16957137588419338347.a n = A038216 n

end A038216

/-! ## A038216.P8016693666686680069

`A013611(n)/A013609(n)*A013621(n)`
-/

namespace A038216.P8016693666686680069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013611 n : ℚ) / (A013609 n : ℚ) * (A013621 n : ℚ)

end

end A038216.P8016693666686680069

namespace A038216

/-- `A013611(n)/A013609(n)*A013621(n)` -/
def P8016693666686680069.Spec : Prop :=
  ∀ n, P8016693666686680069.a n = (A038216 n : ℚ)

end A038216

/-! ## A038216.P13912767224073332155

`A013617(n)/A038243(n)*A038303(n)`
-/

namespace A038216.P13912767224073332155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013617 n : ℚ) / (A038243 n : ℚ) * (A038303 n : ℚ)

end

end A038216.P13912767224073332155

namespace A038216

/-- `A013617(n)/A038243(n)*A038303(n)` -/
def P13912767224073332155.Spec : Prop :=
  ∀ n, P13912767224073332155.a n = (A038216 n : ℚ)

end A038216

/-! ## A038216.P11938576140266865431

`A038304(A061579(n))`
-/

namespace A038216.P11938576140266865431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038304 (A061579 n).toNat

end

end A038216.P11938576140266865431

namespace A038216

/-- `A038304(A061579(n))` -/
def P11938576140266865431.Spec : Prop :=
  ∀ n, P11938576140266865431.a n = A038216 n

end A038216

/-! ## A038216.P9238869702842991882

`A038240(n)/A130321(n)`
-/

namespace A038216.P9238869702842991882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038240 n : ℚ) / (A130321 n : ℚ)

end

end A038216.P9238869702842991882

namespace A038216

/-- `A038240(n)/A130321(n)` -/
def P9238869702842991882.Spec : Prop :=
  ∀ n, P9238869702842991882.a n = (A038216 n : ℚ)

end A038216

/-! ## A038216.P16894403501633132385

`A038264(n)/A140303(n)`
-/

namespace A038216.P16894403501633132385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038264 n : ℚ) / (A140303 n : ℚ)

end

end A038216.P16894403501633132385

namespace A038216

/-- `A038264(n)/A140303(n)` -/
def P16894403501633132385.Spec : Prop :=
  ∀ n, P16894403501633132385.a n = (A038216 n : ℚ)

end A038216

/-! ## A038216.P12156414736887178486

`gcd(A038240(n), A038264(n))`
-/

namespace A038216.P12156414736887178486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038240 n) (A038264 n)

end

end A038216.P12156414736887178486

namespace A038216

/-- `gcd(A038240(n), A038264(n))` -/
def P12156414736887178486.Spec : Prop :=
  ∀ n, (P12156414736887178486.a n : ℤ) = A038216 n

end A038216

/-! ## A038216.P393230021724112778

`A038288(n)/A262616(n)`
-/

namespace A038216.P393230021724112778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038288 n : ℚ) / (A262616 n : ℚ)

end

end A038216.P393230021724112778

namespace A038216

/-- `A038288(n)/A262616(n)` -/
def P393230021724112778.Spec : Prop :=
  ∀ n, P393230021724112778.a n = (A038216 n : ℚ)

end A038216

/-! ## A038216.P9010338338815805240

`A038288(n)/A130321(n)²`
-/

namespace A038216.P9010338338815805240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038288 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A038216.P9010338338815805240

namespace A038216

/-- `A038288(n)/A130321(n)²` -/
def P9010338338815805240.Spec : Prop :=
  ∀ n, P9010338338815805240.a n = (A038216 n : ℚ)

end A038216

/-! ## A038216.P6308157636022790020

`gcd(A038288(n), A038312(n))`
-/

namespace A038216.P6308157636022790020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038288 n) (A038312 n)

end

end A038216.P6308157636022790020

namespace A038216

/-- `gcd(A038288(n), A038312(n))` -/
def P6308157636022790020.Spec : Prop :=
  ∀ n, (P6308157636022790020.a n : ℤ) = A038216 n

end A038216

/-! ## A038216.P9541802685761648268

`gcd(A038312(n)+A038336(n)², A038336(n))`
-/

namespace A038216.P9541802685761648268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038312 n + A038336 n ^ 2) (A038336 n)

end

end A038216.P9541802685761648268

namespace A038216

/-- `gcd(A038312(n)+A038336(n)², A038336(n))` -/
def P9541802685761648268.Spec : Prop :=
  ∀ n, (P9541802685761648268.a n : ℤ) = A038216 n

end A038216

/-!
# A038217: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*11^j.

The programs for A038217, the canonical program `A038217.P11166805108262565731` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038217 has offset 0).

The definition of A038217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038217.P11166805108262565731

`A013618(n)*A130321(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038217

/-- `A013618(n)*A130321(n)` -/
def P11166805108262565731.Spec : Prop :=
  ∀ n, P11166805108262565731.a n = A038217 n

theorem P11166805108262565731.correct : P11166805108262565731.Spec := by
  intro n
  simp only [A038217]

end A038217

/-! ## A038217.P1240326690078502078

`lcm(A013618(n), A038207(n))`
-/

namespace A038217.P1240326690078502078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013618 n) (A038207 n)

end

end A038217.P1240326690078502078

namespace A038217

/-- `lcm(A013618(n), A038207(n))` -/
def P1240326690078502078.Spec : Prop :=
  ∀ n, (P1240326690078502078.a n : ℤ) = A038217 n

end A038217

/-! ## A038217.P2425823508142837999

`sqrt(A262616(n))*A013618(n)`
-/

namespace A038217.P2425823508142837999
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A013618 n : ℝ)

end

end A038217.P2425823508142837999

namespace A038217

/-- `sqrt(A262616(n))*A013618(n)` -/
def P2425823508142837999.Spec : Prop :=
  ∀ n, P2425823508142837999.a n = (A038217 n : ℝ)

end A038217

/-! ## A038217.P13664293437394107946

`A000079(A025581(n))*A013618(n)`
-/

namespace A038217.P13664293437394107946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A013618 n

end

end A038217.P13664293437394107946

namespace A038217

/-- `A000079(A025581(n))*A013618(n)` -/
def P13664293437394107946.Spec : Prop :=
  ∀ n, P13664293437394107946.a n = A038217 n

end A038217

/-! ## A038217.P6631440976762491215

`A001020(A002262(n))*A038207(n)`
-/

namespace A038217.P6631440976762491215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat * A038207 n

end

end A038217.P6631440976762491215

namespace A038217

/-- `A001020(A002262(n))*A038207(n)` -/
def P6631440976762491215.Spec : Prop :=
  ∀ n, P6631440976762491215.a n = A038217 n

end A038217

/-! ## A038217.P13779173186244499584

`A013618(n)/A013610(n)*A013620(n)`
-/

namespace A038217.P13779173186244499584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013618 n : ℚ) / (A013610 n : ℚ) * (A013620 n : ℚ)

end

end A038217.P13779173186244499584

namespace A038217

/-- `A013618(n)/A013610(n)*A013620(n)` -/
def P13779173186244499584.Spec : Prop :=
  ∀ n, P13779173186244499584.a n = (A038217 n : ℚ)

end A038217

/-! ## A038217.P11635270926799833495

`A038316(A061579(n))`
-/

namespace A038217.P11635270926799833495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038316 (A061579 n).toNat

end

end A038217.P11635270926799833495

namespace A038217

/-- `A038316(A061579(n))` -/
def P11635270926799833495.Spec : Prop :=
  ∀ n, P11635270926799833495.a n = A038217 n

end A038217

/-! ## A038217.P15633814112881000237

`A038241(n)/A130321(n)`
-/

namespace A038217.P15633814112881000237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038241 n : ℚ) / (A130321 n : ℚ)

end

end A038217.P15633814112881000237

namespace A038217

/-- `A038241(n)/A130321(n)` -/
def P15633814112881000237.Spec : Prop :=
  ∀ n, P15633814112881000237.a n = (A038217 n : ℚ)

end A038217

/-! ## A038217.P12399133065997908514

`A038265(n)/A140303(n)`
-/

namespace A038217.P12399133065997908514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038265 n : ℚ) / (A140303 n : ℚ)

end

end A038217.P12399133065997908514

namespace A038217

/-- `A038265(n)/A140303(n)` -/
def P12399133065997908514.Spec : Prop :=
  ∀ n, P12399133065997908514.a n = (A038217 n : ℚ)

end A038217

/-! ## A038217.P5569851505062420628

`gcd(A038241(n), A038265(n))`
-/

namespace A038217.P5569851505062420628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038241 n) (A038265 n)

end

end A038217.P5569851505062420628

namespace A038217

/-- `gcd(A038241(n), A038265(n))` -/
def P5569851505062420628.Spec : Prop :=
  ∀ n, (P5569851505062420628.a n : ℤ) = A038217 n

end A038217

/-! ## A038217.P13930537702525905164

`A038289(n)/A262616(n)`
-/

namespace A038217.P13930537702525905164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038289 n : ℚ) / (A262616 n : ℚ)

end

end A038217.P13930537702525905164

namespace A038217

/-- `A038289(n)/A262616(n)` -/
def P13930537702525905164.Spec : Prop :=
  ∀ n, P13930537702525905164.a n = (A038217 n : ℚ)

end A038217

/-! ## A038217.P13322659920691438647

`A038289(n)/A130321(n)²`
-/

namespace A038217.P13322659920691438647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038289 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A038217.P13322659920691438647

namespace A038217

/-- `A038289(n)/A130321(n)²` -/
def P13322659920691438647.Spec : Prop :=
  ∀ n, P13322659920691438647.a n = (A038217 n : ℚ)

end A038217

/-! ## A038217.P11272760925548420694

`gcd(A038289(n), A038313(n))`
-/

namespace A038217.P11272760925548420694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038289 n) (A038313 n)

end

end A038217.P11272760925548420694

namespace A038217

/-- `gcd(A038289(n), A038313(n))` -/
def P11272760925548420694.Spec : Prop :=
  ∀ n, (P11272760925548420694.a n : ℤ) = A038217 n

end A038217

/-!
# A038218: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*12^j (with i, j >= 0).

The programs for A038218, the canonical program `A038218.P1610424104128460836` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038218 has offset 0).

The definition of A038218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4074 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038218.P1610424104128460836

`A013611(n)*A036561(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038218

/-- `A013611(n)*A036561(n)` -/
def P1610424104128460836.Spec : Prop :=
  ∀ n, P1610424104128460836.a n = A038218 n

theorem P1610424104128460836.correct : P1610424104128460836.Spec := by
  intro n
  simp only [A038218]

end A038218

/-! ## A038218.P11544163495918856374

`A038212(n)*A059268(n)`
-/

namespace A038218.P11544163495918856374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038212 n * A059268 n

end

end A038218.P11544163495918856374

namespace A038218

/-- `A038212(n)*A059268(n)` -/
def P11544163495918856374.Spec : Prop :=
  ∀ n, P11544163495918856374.a n = A038218 n

end A038218

/-! ## A038218.P7947522985041941007

`A013609(n)*A100851(n)`
-/

namespace A038218.P7947522985041941007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A100851 n

end

end A038218.P7947522985041941007

namespace A038218

/-- `A013609(n)*A100851(n)` -/
def P7947522985041941007.Spec : Prop :=
  ∀ n, P7947522985041941007.a n = A038218 n

end A038218

/-! ## A038218.P11933947788673994326

`A013619(n)*A130321(n)`
-/

namespace A038218.P11933947788673994326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013619 n * A130321 n

end

end A038218.P11933947788673994326

namespace A038218

/-- `A013619(n)*A130321(n)` -/
def P11933947788673994326.Spec : Prop :=
  ∀ n, P11933947788673994326.a n = A038218 n

end A038218

/-! ## A038218.P2328195089609222874

`A013613(n)*A137688(n)`
-/

namespace A038218.P2328195089609222874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 n * A137688 n

end

end A038218.P2328195089609222874

namespace A038218

/-- `A013613(n)*A137688(n)` -/
def P2328195089609222874.Spec : Prop :=
  ∀ n, P2328195089609222874.a n = A038218 n

end A038218

/-! ## A038218.P12781920836981900283

`A013610(n)*A368043(n)`
-/

namespace A038218.P12781920836981900283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A368043 n

end

end A038218.P12781920836981900283

namespace A038218

/-- `A013610(n)*A368043(n)` -/
def P12781920836981900283.Spec : Prop :=
  ∀ n, P12781920836981900283.a n = A038218 n

end A038218

/-! ## A038218.P7642988588660873631

`lcm(A013610(n), A038210(n))`
-/

namespace A038218.P7642988588660873631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038210 n)

end

end A038218.P7642988588660873631

namespace A038218

/-- `lcm(A013610(n), A038210(n))` -/
def P7642988588660873631.Spec : Prop :=
  ∀ n, (P7642988588660873631.a n : ℤ) = A038218 n

end A038218

/-! ## A038218.P749579530475245835

`A059268(n)²*A013620(n)`
-/

namespace A038218.P749579530475245835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A013620 n

end

end A038218.P749579530475245835

namespace A038218

/-- `A059268(n)²*A013620(n)` -/
def P749579530475245835.Spec : Prop :=
  ∀ n, P749579530475245835.a n = A038218 n

end A038218

/-! ## A038218.P1812571617117598227

`A013620(A112367(n))²*A013620(n)`
-/

namespace A038218.P1812571617117598227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A112367 n).toNat ^ 2 * A013620 n

end

end A038218.P1812571617117598227

namespace A038218

/-- `A013620(A112367(n))²*A013620(n)` -/
def P1812571617117598227.Spec : Prop :=
  ∀ n, P1812571617117598227.a n = A038218 n

end A038218

/-! ## A038218.P4655687452118059669

`A038212(n)/A013620(n)*A038212(n)`
-/

namespace A038218.P4655687452118059669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038212 n : ℚ) / (A013620 n : ℚ) * (A038212 n : ℚ)

end

end A038218.P4655687452118059669

namespace A038218

/-- `A038212(n)/A013620(n)*A038212(n)` -/
def P4655687452118059669.Spec : Prop :=
  ∀ n, P4655687452118059669.a n = (A038218 n : ℚ)

end A038218

/-! ## A038218.P15429933024104856282

`A038328(A061579(n))`
-/

namespace A038218.P15429933024104856282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038328 (A061579 n).toNat

end

end A038218.P15429933024104856282

namespace A038218

/-- `A038328(A061579(n))` -/
def P15429933024104856282.Spec : Prop :=
  ∀ n, P15429933024104856282.a n = A038218 n

end A038218

/-! ## A038218.P15258082332606882556

`A038328(A038722(n+1)-1)`
-/

namespace A038218.P15258082332606882556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038328 (A038722 (n + 1) - 1).toNat

end

end A038218.P15258082332606882556

namespace A038218

/-- `A038328(A038722(n+1)-1)` -/
def P15258082332606882556.Spec : Prop :=
  ∀ n, P15258082332606882556.a n = A038218 n

end A038218

/-! ## A038218.P9005182895006543348

`A038242(n)/A130321(n)`
-/

namespace A038218.P9005182895006543348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038242 n : ℚ) / (A130321 n : ℚ)

end

end A038218.P9005182895006543348

namespace A038218

/-- `A038242(n)/A130321(n)` -/
def P9005182895006543348.Spec : Prop :=
  ∀ n, P9005182895006543348.a n = (A038218 n : ℚ)

end A038218

/-! ## A038218.P13929422170082009022

`A038266(n)/A140303(n)`
-/

namespace A038218.P13929422170082009022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038266 n : ℚ) / (A140303 n : ℚ)

end

end A038218.P13929422170082009022

namespace A038218

/-- `A038266(n)/A140303(n)` -/
def P13929422170082009022.Spec : Prop :=
  ∀ n, P13929422170082009022.a n = (A038218 n : ℚ)

end A038218

/-! ## A038218.P14030690115587597315

`gcd(A038242(n), A038266(n))`
-/

namespace A038218.P14030690115587597315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038242 n) (A038266 n)

end

end A038218.P14030690115587597315

namespace A038218

/-- `gcd(A038242(n), A038266(n))` -/
def P14030690115587597315.Spec : Prop :=
  ∀ n, (P14030690115587597315.a n : ℤ) = A038218 n

end A038218

/-! ## A038218.P217001086905585062

`A038290(n)/A262616(n)`
-/

namespace A038218.P217001086905585062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038290 n : ℚ) / (A262616 n : ℚ)

end

end A038218.P217001086905585062

namespace A038218

/-- `A038290(n)/A262616(n)` -/
def P217001086905585062.Spec : Prop :=
  ∀ n, P217001086905585062.a n = (A038218 n : ℚ)

end A038218

/-! ## A038218.P14327516949627077286

`A038290(n)/A130321(n)²`
-/

namespace A038218.P14327516949627077286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038290 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A038218.P14327516949627077286

namespace A038218

/-- `A038290(n)/A130321(n)²` -/
def P14327516949627077286.Spec : Prop :=
  ∀ n, P14327516949627077286.a n = (A038218 n : ℚ)

end A038218

/-! ## A038218.P6540152050029057257

`gcd(A038290(n), A038314(n))`
-/

namespace A038218.P6540152050029057257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038290 n) (A038314 n)

end

end A038218.P6540152050029057257

namespace A038218

/-- `gcd(A038290(n), A038314(n))` -/
def P6540152050029057257.Spec : Prop :=
  ∀ n, (P6540152050029057257.a n : ℤ) = A038218 n

end A038218

/-! ## A038218.P10206642864730501020

`A038212(n)²/A013620(n)`
-/

namespace A038218.P10206642864730501020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038212 n ^ 2 : ℚ) / (A013620 n : ℚ)

end

end A038218.P10206642864730501020

namespace A038218

/-- `A038212(n)²/A013620(n)` -/
def P10206642864730501020.Spec : Prop :=
  ∀ n, P10206642864730501020.a n = (A038218 n : ℚ)

end A038218

/-! ## A038218.P6074724066809859645

`A038212(n)²/gcd(A038212(n), A038215(n))`
-/

namespace A038218.P6074724066809859645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038212 n ^ 2 : ℚ) / (Int.gcd (A038212 n) (A038215 n) : ℚ)

end

end A038218.P6074724066809859645

namespace A038218

/-- `A038212(n)²/gcd(A038212(n), A038215(n))` -/
def P6074724066809859645.Spec : Prop :=
  ∀ n, P6074724066809859645.a n = (A038218 n : ℚ)

end A038218

/-!
# A038219: The Ehrenfeucht-Mycielski sequence (0,1-version): a maximally unpredictable sequence.

The programs for A038219, there is no canonical definition to state claims against.
-/

/-! ## A038219.P14951585751228074505

`char[A253061(n+1)-1]`
-/

namespace A038219.P14951585751228074505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253061 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A038219.P14951585751228074505

/-! ## A038219.P10223917020240346738

`log2(A007061(n+1))`
-/

namespace A038219.P10223917020240346738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A007061 (n + 1) : ℝ)

end

end A038219.P10223917020240346738

/-! ## A038219.P10280457407093922666

`A007061(A000027(n+1))-1`
-/

namespace A038219.P10280457407093922666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007061 (A000027 (n + 1)).toNat - 1

end

end A038219.P10280457407093922666

/-! ## A038219.P8190170657192112801

`A000328(n)%A007061(n+1)`
-/

namespace A038219.P8190170657192112801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A007061 (n + 1))

end

end A038219.P8190170657192112801

/-! ## A038219.P13541827753535503328

`A000466(n)%A007061(n+1)`
-/

namespace A038219.P13541827753535503328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000466 n) (A007061 (n + 1))

end

end A038219.P13541827753535503328

/-! ## A038219.P1192894334438417540

`A000605(n)%A007061(n+1)`
-/

namespace A038219.P1192894334438417540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A007061 (n + 1))

end

end A038219.P1192894334438417540

/-! ## A038219.P5921092435462033438

`A001148(n)%A007061(n+1)`
-/

namespace A038219.P5921092435462033438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A007061 (n + 1))

end

end A038219.P5921092435462033438

/-! ## A038219.P14641163137814553815

`A001218(n)%A007061(n+1)`
-/

namespace A038219.P14641163137814553815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A007061 (n + 1))

end

end A038219.P14641163137814553815

/-! ## A038219.P18404353739011355036

`A001513(n)%A007061(n+1)`
-/

namespace A038219.P18404353739011355036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A007061 (n + 1))

end

end A038219.P18404353739011355036

/-! ## A038219.P7794239997604028605

`A001520(n)%A007061(n+1)`
-/

namespace A038219.P7794239997604028605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A007061 (n + 1))

end

end A038219.P7794239997604028605

/-! ## A038219.P1297398599682596766

`A001533(n)%A007061(n+1)`
-/

namespace A038219.P1297398599682596766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A007061 (n + 1))

end

end A038219.P1297398599682596766

/-! ## A038219.P15470497473226717686

`A001535(n)%A007061(n+1)`
-/

namespace A038219.P15470497473226717686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001535 n) (A007061 (n + 1))

end

end A038219.P15470497473226717686

/-! ## A038219.P1725800830513899810

`A001538(n)%A007061(n+1)`
-/

namespace A038219.P1725800830513899810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A007061 (n + 1))

end

end A038219.P1725800830513899810

/-! ## A038219.P4240457545592325837

`A001546(n)%A007061(n+1)`
-/

namespace A038219.P4240457545592325837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001546 n) (A007061 (n + 1))

end

end A038219.P4240457545592325837

/-! ## A038219.P4469782798187044380

`A008379(n)%A007061(n+1)`
-/

namespace A038219.P4469782798187044380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008379 n) (A007061 (n + 1))

end

end A038219.P4469782798187044380

/-! ## A038219.P18327733907924480334

`A016760(n)%A007061(n+1)`
-/

namespace A038219.P18327733907924480334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A007061 (n + 1))

end

end A038219.P18327733907924480334

/-! ## A038219.P11226614769219348502

`A016761(n)%A007061(n+1)`
-/

namespace A038219.P11226614769219348502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016761 n) (A007061 (n + 1))

end

end A038219.P11226614769219348502

/-! ## A038219.P1033683406087754649

`A016819(n)%A007061(n+1)`
-/

namespace A038219.P1033683406087754649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016819 n) (A007061 (n + 1))

end

end A038219.P1033683406087754649

/-! ## A038219.P336998238508980604

`A016820(n)%A007061(n+1)`
-/

namespace A038219.P336998238508980604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016820 n) (A007061 (n + 1))

end

end A038219.P336998238508980604

/-! ## A038219.P6573729565669664731

`A016843(n)%A007061(n+1)`
-/

namespace A038219.P6573729565669664731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016843 n) (A007061 (n + 1))

end

end A038219.P6573729565669664731

/-!
# A038220: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*2^j.

The programs for A038220, the canonical program `A038220.P15527430409596485937` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038220 has offset 0).

The definition of A038220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038220.P8268680113759588827

`abs(A303901(n))`
-/

namespace A038220.P8268680113759588827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A303901 n|

end

end A038220.P8268680113759588827

namespace A038220

/-- `abs(A303901(n))` -/
def P8268680113759588827.Spec : Prop :=
  ∀ n, P8268680113759588827.a n = A038220 n

end A038220

/-! ## A038220.P5941288468008800123

`A154692(n)-A013620(n)`
-/

namespace A038220.P5941288468008800123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154692 n - A013620 n

end

end A038220.P5941288468008800123

namespace A038220

/-- `A154692(n)-A013620(n)` -/
def P5941288468008800123.Spec : Prop :=
  ∀ n, P5941288468008800123.a n = A038220 n

end A038220

/-! ## A038220.P15527430409596485937

`A027465(n)*A059268(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038220

/-- `A027465(n)*A059268(n)` -/
def P15527430409596485937.Spec : Prop :=
  ∀ n, P15527430409596485937.a n = A038220 n

theorem P15527430409596485937.correct : P15527430409596485937.Spec := by
  intro n
  simp only [A038220]

end A038220

/-! ## A038220.P11880226426729755232

`A013609(n)*A140303(n)`
-/

namespace A038220.P11880226426729755232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A140303 n

end

end A038220.P11880226426729755232

namespace A038220

/-- `A013609(n)*A140303(n)` -/
def P11880226426729755232.Spec : Prop :=
  ∀ n, P11880226426729755232.a n = A038220 n

end A038220

/-! ## A038220.P4418846210819568628

`A007318(n)*A175840(n)`
-/

namespace A038220.P4418846210819568628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A175840 n

end

end A038220.P4418846210819568628

namespace A038220

/-- `A007318(n)*A175840(n)` -/
def P4418846210819568628.Spec : Prop :=
  ∀ n, P4418846210819568628.a n = A038220 n

end A038220

/-! ## A038220.P14487971846640196715

`A131111(n)*A247936(n)`
-/

namespace A038220.P14487971846640196715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131111 n * A247936 n

end

end A038220.P14487971846640196715

namespace A038220

/-- `A131111(n)*A247936(n)` -/
def P14487971846640196715.Spec : Prop :=
  ∀ n, P14487971846640196715.a n = A038220 n

end A038220

/-! ## A038220.P13333809020542660892

`gcd(A000038(n), A303901(n))`
-/

namespace A038220.P13333809020542660892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A303901 n)

end

end A038220.P13333809020542660892

namespace A038220

/-- `gcd(A000038(n), A303901(n))` -/
def P13333809020542660892.Spec : Prop :=
  ∀ n, (P13333809020542660892.a n : ℤ) = A038220 n

end A038220

/-! ## A038220.P13956393823704745795

`lcm(A013609(n), A027465(n))`
-/

namespace A038220.P13956393823704745795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A027465 n)

end

end A038220.P13956393823704745795

namespace A038220

/-- `lcm(A013609(n), A027465(n))` -/
def P13956393823704745795.Spec : Prop :=
  ∀ n, (P13956393823704745795.a n : ℤ) = A038220 n

end A038220

/-! ## A038220.P15997568138255758679

`lcm(A006466(n), A303901(n))`
-/

namespace A038220.P15997568138255758679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A303901 n)

end

end A038220.P15997568138255758679

namespace A038220

/-- `lcm(A006466(n), A303901(n))` -/
def P15997568138255758679.Spec : Prop :=
  ∀ n, (P15997568138255758679.a n : ℤ) = A038220 n

end A038220

/-! ## A038220.P17290322686085879792

`lcm(A164942(n), A303872(n))`
-/

namespace A038220.P17290322686085879792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A164942 n) (A303872 n)

end

end A038220.P17290322686085879792

namespace A038220

/-- `lcm(A164942(n), A303872(n))` -/
def P17290322686085879792.Spec : Prop :=
  ∀ n, (P17290322686085879792.a n : ℤ) = A038220 n

end A038220

/-! ## A038220.P7291417653682918109

`A007318(n)*A059268(n)*A140303(n)`
-/

namespace A038220.P7291417653682918109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A059268 n * A140303 n

end

end A038220.P7291417653682918109

namespace A038220

/-- `A007318(n)*A059268(n)*A140303(n)` -/
def P7291417653682918109.Spec : Prop :=
  ∀ n, P7291417653682918109.a n = A038220 n

end A038220

/-! ## A038220.P8742561295777308605

`A013609(n)/A007318(n)*A027465(n)`
-/

namespace A038220.P8742561295777308605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ) * (A027465 n : ℚ)

end

end A038220.P8742561295777308605

namespace A038220

/-- `A013609(n)/A007318(n)*A027465(n)` -/
def P8742561295777308605.Spec : Prop :=
  ∀ n, P8742561295777308605.a n = (A038220 n : ℚ)

end A038220

/-! ## A038220.P2925896008471730468

`A007318(n)/A054143(n)*A061929(n)`
-/

namespace A038220.P2925896008471730468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A054143 n : ℚ) * (A061929 n : ℚ)

end

end A038220.P2925896008471730468

namespace A038220

/-- `A007318(n)/A054143(n)*A061929(n)` -/
def P2925896008471730468.Spec : Prop :=
  ∀ n, P2925896008471730468.a n = (A038220 n : ℚ)

end A038220

/-! ## A038220.P17401150576478885873

`A013620(A061579(n))`
-/

namespace A038220.P17401150576478885873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A061579 n).toNat

end

end A038220.P17401150576478885873

namespace A038220

/-- `A013620(A061579(n))` -/
def P17401150576478885873.Spec : Prop :=
  ∀ n, P17401150576478885873.a n = A038220 n

end A038220

/-! ## A038220.P3964286550241793358

`A013610(A061579(n))*A059268(n)`
-/

namespace A038220.P3964286550241793358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A061579 n).toNat * A059268 n

end

end A038220.P3964286550241793358

namespace A038220

/-- `A013610(A061579(n))*A059268(n)` -/
def P3964286550241793358.Spec : Prop :=
  ∀ n, P3964286550241793358.a n = A038220 n

end A038220

/-! ## A038220.P5564368738806284889

`A038222(n)/A059268(n)`
-/

namespace A038220.P5564368738806284889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038222 n : ℚ) / (A059268 n : ℚ)

end

end A038220.P5564368738806284889

namespace A038220

/-- `A038222(n)/A059268(n)` -/
def P5564368738806284889.Spec : Prop :=
  ∀ n, P5564368738806284889.a n = (A038220 n : ℚ)

end A038220

/-! ## A038220.P4592327834930923424

`A013613(n)/A013620(n)*A038255(n)`
-/

namespace A038220.P4592327834930923424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A013620 n : ℚ) * (A038255 n : ℚ)

end

end A038220.P4592327834930923424

namespace A038220

/-- `A013613(n)/A013620(n)*A038255(n)` -/
def P4592327834930923424.Spec : Prop :=
  ∀ n, P4592327834930923424.a n = (A038220 n : ℚ)

end A038220

/-! ## A038220.P13516292295446527155

`A038256(n)/A130321(n)`
-/

namespace A038220.P13516292295446527155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038256 n : ℚ) / (A130321 n : ℚ)

end

end A038220.P13516292295446527155

namespace A038220

/-- `A038256(n)/A130321(n)` -/
def P13516292295446527155.Spec : Prop :=
  ∀ n, P13516292295446527155.a n = (A038220 n : ℚ)

end A038220

/-! ## A038220.P1133317249311629000

`gcd(A038222(n), A038224(n))`
-/

namespace A038220.P1133317249311629000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038222 n) (A038224 n)

end

end A038220.P1133317249311629000

namespace A038220

/-- `gcd(A038222(n), A038224(n))` -/
def P1133317249311629000.Spec : Prop :=
  ∀ n, (P1133317249311629000.a n : ℤ) = A038220 n

end A038220

/-! ## A038220.P16664551993864847959

`A038258(n)/A137688(n)`
-/

namespace A038220.P16664551993864847959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038258 n : ℚ) / (A137688 n : ℚ)

end

end A038220.P16664551993864847959

namespace A038220

/-- `A038258(n)/A137688(n)` -/
def P16664551993864847959.Spec : Prop :=
  ∀ n, P16664551993864847959.a n = (A038220 n : ℚ)

end A038220

/-!
# A038221: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*3^j.

The programs for A038221, the canonical program `A038221.P2220292756312860869` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038221 has offset 0).

The definition of A038221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8580 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038221.P6483389430289241259

`3^∑[char[∑[n+1]]]*A007318(n)`
-/

namespace A038221.P6483389430289241259
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A007318 n

end

end A038221.P6483389430289241259

namespace A038221

/-- `3^∑[char[∑[n+1]]]*A007318(n)` -/
def P6483389430289241259.Spec : Prop :=
  ∀ n, P6483389430289241259.a n = A038221 n

end A038221

/-! ## A038221.P2220292756312860869

`A007318(n)*A098355(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A038221

/-- `A007318(n)*A098355(n)` -/
def P2220292756312860869.Spec : Prop :=
  ∀ n, P2220292756312860869.a n = A038221 n

theorem P2220292756312860869.correct : P2220292756312860869.Spec := by
  intro n
  simp only [A038221]

end A038221

/-! ## A038221.P3176444563270543447

`A013610(n)*A140303(n)`
-/

namespace A038221.P3176444563270543447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A140303 n

end

end A038221.P3176444563270543447

namespace A038221

/-- `A013610(n)*A140303(n)` -/
def P3176444563270543447.Spec : Prop :=
  ∀ n, P3176444563270543447.a n = A038221 n

end A038221

/-! ## A038221.P10691504523775090136

`A055373(n)*A122553(n)`
-/

namespace A038221.P10691504523775090136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055373 n * A122553 n

end

end A038221.P10691504523775090136

namespace A038221

/-- `A055373(n)*A122553(n)` -/
def P10691504523775090136.Spec : Prop :=
  ∀ n, P10691504523775090136.a n = A038221 n

end A038221

/-! ## A038221.P14411586345892710137

`A007318(n)*Δ[A259653(n)]`
-/

namespace A038221.P14411586345892710137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * (f1 (n + 1) - f1 n)

end

end A038221.P14411586345892710137

namespace A038221

/-- `A007318(n)*Δ[A259653(n)]` -/
def P14411586345892710137.Spec : Prop :=
  ∀ n, P14411586345892710137.a n = A038221 n

end A038221

/-! ## A038221.P7098422416127288335

`A028326(n)/2*A098355(n)`
-/

namespace A038221.P7098422416127288335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A098355 n : ℚ)

end

end A038221.P7098422416127288335

namespace A038221

/-- `A028326(n)/2*A098355(n)` -/
def P7098422416127288335.Spec : Prop :=
  ∀ n, P7098422416127288335.a n = (A038221 n : ℚ)

end A038221

/-! ## A038221.P8339511886324725899

`A007318(n)*∏[A000032(Δ[comp[∑[n+2]]])]`
-/

namespace A038221.P8339511886324725899
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A038221.P8339511886324725899

namespace A038221

/-- `A007318(n)*∏[A000032(Δ[comp[∑[n+2]]])]` -/
def P8339511886324725899.Spec : Prop :=
  ∀ n, P8339511886324725899.a n = A038221 n

end A038221

/-! ## A038221.P17810710686881020548

`A007318(n)*A074324(A131507(n))`
-/

namespace A038221.P17810710686881020548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A074324 (A131507 n).toNat

end

end A038221.P17810710686881020548

namespace A038221

/-- `A007318(n)*A074324(A131507(n))` -/
def P17810710686881020548.Spec : Prop :=
  ∀ n, P17810710686881020548.a n = A038221 n

end A038221

/-! ## A038221.P4677509634223371726

`A013610(n)/A007318(n)*A027465(n)`
-/

namespace A038221.P4677509634223371726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013610 n : ℚ) / (A007318 n : ℚ) * (A027465 n : ℚ)

end

end A038221.P4677509634223371726

namespace A038221

/-- `A013610(n)/A007318(n)*A027465(n)` -/
def P4677509634223371726.Spec : Prop :=
  ∀ n, P4677509634223371726.a n = (A038221 n : ℚ)

end A038221

/-! ## A038221.P15648905442093831414

`A013610(n)/A013609(n)*A038220(n)`
-/

namespace A038221.P15648905442093831414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013610 n : ℚ) / (A013609 n : ℚ) * (A038220 n : ℚ)

end

end A038221.P15648905442093831414

namespace A038221

/-- `A013610(n)/A013609(n)*A038220(n)` -/
def P15648905442093831414.Spec : Prop :=
  ∀ n, P15648905442093831414.a n = (A038221 n : ℚ)

end A038221

/-! ## A038221.P3887480054073021148

`A013610(n)/A013611(n)*A038222(n)`
-/

namespace A038221.P3887480054073021148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013610 n : ℚ) / (A013611 n : ℚ) * (A038222 n : ℚ)

end

end A038221.P3887480054073021148

namespace A038221

/-- `A013610(n)/A013611(n)*A038222(n)` -/
def P3887480054073021148.Spec : Prop :=
  ∀ n, P3887480054073021148.a n = (A038221 n : ℚ)

end A038221

/-! ## A038221.P15856405980858908995

`A007318(n)*A013622(A057944(n))`
-/

namespace A038221.P15856405980858908995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A013622 (A057944 n).toNat

end

end A038221.P15856405980858908995

namespace A038221

/-- `A007318(n)*A013622(A057944(n))` -/
def P15856405980858908995.Spec : Prop :=
  ∀ n, P15856405980858908995.a n = A038221 n

end A038221

/-! ## A038221.P15828636454101514779

`A038224(n)/A059268(n)`
-/

namespace A038221.P15828636454101514779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038224 n : ℚ) / (A059268 n : ℚ)

end

end A038221.P15828636454101514779

namespace A038221

/-- `A038224(n)/A059268(n)` -/
def P15828636454101514779.Spec : Prop :=
  ∀ n, P15828636454101514779.a n = (A038221 n : ℚ)

end A038221

/-! ## A038221.P15892136541557426018

`A038257(n)/A130321(n)`
-/

namespace A038221.P15892136541557426018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038257 n : ℚ) / (A130321 n : ℚ)

end

end A038221.P15892136541557426018

namespace A038221

/-- `A038257(n)/A130321(n)` -/
def P15892136541557426018.Spec : Prop :=
  ∀ n, P15892136541557426018.a n = (A038221 n : ℚ)

end A038221

/-! ## A038221.P8137038044954687318

`A000244(A003056(n))/A176346(n)*A176348(n)`
-/

namespace A038221.P8137038044954687318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (A003056 n).toNat : ℚ) / (A176346 n : ℚ) * (A176348 n : ℚ)

end

end A038221.P8137038044954687318

namespace A038221

/-- `A000244(A003056(n))/A176346(n)*A176348(n)` -/
def P8137038044954687318.Spec : Prop :=
  ∀ n, P8137038044954687318.a n = (A038221 n : ℚ)

end A038221

/-! ## A038221.P3620621900090266031

`gcd(A038224(n), A038227(n))`
-/

namespace A038221.P3620621900090266031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038224 n) (A038227 n)

end

end A038221.P3620621900090266031

namespace A038221

/-- `gcd(A038224(n), A038227(n))` -/
def P3620621900090266031.Spec : Prop :=
  ∀ n, (P3620621900090266031.a n : ℤ) = A038221 n

end A038221

/-! ## A038221.P16404260975127845767

`A038260(n)/A137688(n)`
-/

namespace A038221.P16404260975127845767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038260 n : ℚ) / (A137688 n : ℚ)

end

end A038221.P16404260975127845767

namespace A038221

/-- `A038260(n)/A137688(n)` -/
def P16404260975127845767.Spec : Prop :=
  ∀ n, P16404260975127845767.a n = (A038221 n : ℚ)

end A038221

/-! ## A038221.P9432954363839109235

`A038293(n)/A140303(n)`
-/

namespace A038221.P9432954363839109235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038293 n : ℚ) / (A140303 n : ℚ)

end

end A038221.P9432954363839109235

namespace A038221

/-- `A038293(n)/A140303(n)` -/
def P9432954363839109235.Spec : Prop :=
  ∀ n, P9432954363839109235.a n = (A038221 n : ℚ)

end A038221

/-! ## A038221.P15216417589578535005

`gcd(A038257(n), A038293(n))`
-/

namespace A038221.P15216417589578535005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038257 n) (A038293 n)

end

end A038221.P15216417589578535005

namespace A038221

/-- `gcd(A038257(n), A038293(n))` -/
def P15216417589578535005.Spec : Prop :=
  ∀ n, (P15216417589578535005.a n : ℤ) = A038221 n

end A038221

/-! ## A038221.P5992924366760368183

`A038230(n)/A059268(n)²`
-/

namespace A038221.P5992924366760368183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038230 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038221.P5992924366760368183

namespace A038221

/-- `A038230(n)/A059268(n)²` -/
def P5992924366760368183.Spec : Prop :=
  ∀ n, P5992924366760368183.a n = (A038221 n : ℚ)

end A038221

/-!
# A038222: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*4^j.

The programs for A038222, the canonical program `A038222.P11897565041674984479` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038222 has offset 0).

The definition of A038222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038222.P11897565041674984479

`A038220(n)*A059268(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038222

/-- `A038220(n)*A059268(n)` -/
def P11897565041674984479.Spec : Prop :=
  ∀ n, P11897565041674984479.a n = A038222 n

theorem P11897565041674984479.correct : P11897565041674984479.Spec := by
  intro n
  simp only [A038222]

end A038222

/-! ## A038222.P14022277608930287615

`A013611(n)*A140303(n)`
-/

namespace A038222.P14022277608930287615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 n * A140303 n

end

end A038222.P14022277608930287615

namespace A038222

/-- `A013611(n)*A140303(n)` -/
def P14022277608930287615.Spec : Prop :=
  ∀ n, P14022277608930287615.a n = A038222 n

end A038222

/-! ## A038222.P456987010495625428

`A013609(n)*A175840(n)`
-/

namespace A038222.P456987010495625428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A175840 n

end

end A038222.P456987010495625428

namespace A038222

/-- `A013609(n)*A175840(n)` -/
def P456987010495625428.Spec : Prop :=
  ∀ n, P456987010495625428.a n = A038222 n

end A038222

/-! ## A038222.P17953916141180299302

`A007318(n)*A356036(n)`
-/

namespace A038222.P17953916141180299302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A356036 n

end

end A038222.P17953916141180299302

namespace A038222

/-- `A007318(n)*A356036(n)` -/
def P17953916141180299302.Spec : Prop :=
  ∀ n, P17953916141180299302.a n = A038222 n

end A038222

/-! ## A038222.P10679545838306383480

`lcm(A013611(n), A027465(n))`
-/

namespace A038222.P10679545838306383480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013611 n) (A027465 n)

end

end A038222.P10679545838306383480

namespace A038222

/-- `lcm(A013611(n), A027465(n))` -/
def P10679545838306383480.Spec : Prop :=
  ∀ n, (P10679545838306383480.a n : ℤ) = A038222 n

end A038222

/-! ## A038222.P14490675661866689422

`A059268(n)²*A027465(n)`
-/

namespace A038222.P14490675661866689422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A027465 n

end

end A038222.P14490675661866689422

namespace A038222

/-- `A059268(n)²*A027465(n)` -/
def P14490675661866689422.Spec : Prop :=
  ∀ n, P14490675661866689422.a n = A038222 n

end A038222

/-! ## A038222.P18127101852102584439

`A059268(n)²*A013610(A061579(n))`
-/

namespace A038222.P18127101852102584439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A013610 (A061579 n).toNat

end

end A038222.P18127101852102584439

namespace A038222

/-- `A059268(n)²*A013610(A061579(n))` -/
def P18127101852102584439.Spec : Prop :=
  ∀ n, P18127101852102584439.a n = A038222 n

end A038222

/-! ## A038222.P2753765665742156377

`A122803(A002262(n))²*A027465(n)`
-/

namespace A038222.P2753765665742156377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A002262 n).toNat ^ 2 * A027465 n

end

end A038222.P2753765665742156377

namespace A038222

/-- `A122803(A002262(n))²*A027465(n)` -/
def P2753765665742156377.Spec : Prop :=
  ∀ n, P2753765665742156377.a n = A038222 n

end A038222

/-! ## A038222.P4339624911068725727

`A027465(n)*A122803(2*A002262(n))`
-/

namespace A038222.P4339624911068725727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A122803 (2 * A002262 n).toNat

end

end A038222.P4339624911068725727

namespace A038222

/-- `A027465(n)*A122803(2*A002262(n))` -/
def P4339624911068725727.Spec : Prop :=
  ∀ n, P4339624911068725727.a n = A038222 n

end A038222

/-! ## A038222.P2657970711465093483

`A013611(n)/A013609(n)*A038220(n)`
-/

namespace A038222.P2657970711465093483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013611 n : ℚ) / (A013609 n : ℚ) * (A038220 n : ℚ)

end

end A038222.P2657970711465093483

namespace A038222

/-- `A013611(n)/A013609(n)*A038220(n)` -/
def P2657970711465093483.Spec : Prop :=
  ∀ n, P2657970711465093483.a n = (A038222 n : ℚ)

end A038222

/-! ## A038222.P10402112413316263104

`(A013609(n)/A007318(n))²*A027465(n)`
-/

namespace A038222.P10402112413316263104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013609 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A027465 n : ℚ)

end

end A038222.P10402112413316263104

namespace A038222

/-- `(A013609(n)/A007318(n))²*A027465(n)` -/
def P10402112413316263104.Spec : Prop :=
  ∀ n, P10402112413316263104.a n = (A038222 n : ℚ)

end A038222

/-! ## A038222.P8324703983553213693

`A038233(A061579(n))`
-/

namespace A038222.P8324703983553213693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038233 (A061579 n).toNat

end

end A038222.P8324703983553213693

namespace A038222

/-- `A038233(A061579(n))` -/
def P8324703983553213693.Spec : Prop :=
  ∀ n, P8324703983553213693.a n = A038222 n

end A038222

/-! ## A038222.P14474092792318372570

`A038258(n)/A130321(n)`
-/

namespace A038222.P14474092792318372570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038258 n : ℚ) / (A130321 n : ℚ)

end

end A038222.P14474092792318372570

namespace A038222

/-- `A038258(n)/A130321(n)` -/
def P14474092792318372570.Spec : Prop :=
  ∀ n, P14474092792318372570.a n = (A038222 n : ℚ)

end A038222

/-! ## A038222.P9118232172343799519

`A038226(n)/A059268(n)`
-/

namespace A038222.P9118232172343799519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038226 n : ℚ) / (A059268 n : ℚ)

end

end A038222.P9118232172343799519

namespace A038222

/-- `A038226(n)/A059268(n)` -/
def P9118232172343799519.Spec : Prop :=
  ∀ n, P9118232172343799519.a n = (A038222 n : ℚ)

end A038222

/-! ## A038222.P17154226499974741588

`A038294(n)/A140303(n)`
-/

namespace A038222.P17154226499974741588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038294 n : ℚ) / (A140303 n : ℚ)

end

end A038222.P17154226499974741588

namespace A038222

/-- `A038294(n)/A140303(n)` -/
def P17154226499974741588.Spec : Prop :=
  ∀ n, P17154226499974741588.a n = (A038222 n : ℚ)

end A038222

/-! ## A038222.P13443669488803553355

`gcd(A038258(n), A038294(n))`
-/

namespace A038222.P13443669488803553355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038258 n) (A038294 n)

end

end A038222.P13443669488803553355

namespace A038222

/-- `gcd(A038258(n), A038294(n))` -/
def P13443669488803553355.Spec : Prop :=
  ∀ n, (P13443669488803553355.a n : ℤ) = A038222 n

end A038222

/-! ## A038222.P8634193298933408165

`A038262(n)/A137688(n)`
-/

namespace A038222.P8634193298933408165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038262 n : ℚ) / (A137688 n : ℚ)

end

end A038222.P8634193298933408165

namespace A038222

/-- `A038262(n)/A137688(n)` -/
def P8634193298933408165.Spec : Prop :=
  ∀ n, P8634193298933408165.a n = (A038222 n : ℚ)

end A038222

/-! ## A038222.P13155948143652506584

`gcd(A038226(n), A038230(n))`
-/

namespace A038222.P13155948143652506584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038226 n) (A038230 n)

end

end A038222.P13155948143652506584

namespace A038222

/-- `gcd(A038226(n), A038230(n))` -/
def P13155948143652506584.Spec : Prop :=
  ∀ n, (P13155948143652506584.a n : ℤ) = A038222 n

end A038222

/-! ## A038222.P12745178126542880176

`A038330(n)/A262616(n)`
-/

namespace A038222.P12745178126542880176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038330 n : ℚ) / (A262616 n : ℚ)

end

end A038222.P12745178126542880176

namespace A038222

/-- `A038330(n)/A262616(n)` -/
def P12745178126542880176.Spec : Prop :=
  ∀ n, P12745178126542880176.a n = (A038222 n : ℚ)

end A038222

/-! ## A038222.P3115578280533035001

`A038330(n)/A130321(n)²`
-/

namespace A038222.P3115578280533035001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038330 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A038222.P3115578280533035001

namespace A038222

/-- `A038330(n)/A130321(n)²` -/
def P3115578280533035001.Spec : Prop :=
  ∀ n, P3115578280533035001.a n = (A038222 n : ℚ)

end A038222

/-!
# A038223: Bottom line of 3-wave sequence A038196, also bisection of A006356.

The programs for A038223, the canonical program `A038223.P6524788401315229936` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038223 has offset 0).

The definition of A038223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038223.P13172823178334623659

`ogf(1/(1-6x+5x^2-x^3))`
-/

namespace A038223.P13172823178334623659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 5, -1] n

end

end A038223.P13172823178334623659

namespace A038223

/-- `ogf(1/(1-6x+5x^2-x^3))` -/
def P13172823178334623659.Spec : Prop :=
  ∀ n, P13172823178334623659.a n = A038223 n

end A038223

/-! ## A038223.P6524788401315229936

`A006356(2*n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038223

/-- `A006356(2*n)` -/
def P6524788401315229936.Spec : Prop :=
  ∀ n, P6524788401315229936.a n = A038223 n

theorem P6524788401315229936.correct : P6524788401315229936.Spec := by
  intro n
  simp only [A038223]

end A038223

/-! ## A038223.P17441579230834386885

`A373567(2*n)`
-/

namespace A038223.P17441579230834386885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373567 (2 * n)

end

end A038223.P17441579230834386885

namespace A038223

/-- `A373567(2*n)` -/
def P17441579230834386885.Spec : Prop :=
  ∀ n, P17441579230834386885.a n = A038223 n

end A038223

/-! ## A038223.P6973140108507435556

`A077998(Δ[n²])`
-/

namespace A038223.P6973140108507435556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A038223.P6973140108507435556

namespace A038223

/-- `A077998(Δ[n²])` -/
def P6973140108507435556.Spec : Prop :=
  ∀ n, P6973140108507435556.a n = A038223 n

end A038223

/-! ## A038223.P2243721645830369430

`∑[A106805(2*n)]`
-/

namespace A038223.P2243721645830369430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038223.P2243721645830369430

namespace A038223

/-- `∑[A106805(2*n)]` -/
def P2243721645830369430.Spec : Prop :=
  ∀ n, P2243721645830369430.a n = A038223 n

end A038223

/-! ## A038223.P4096913120131062904

`∑[A370377(4*n)]`
-/

namespace A038223.P4096913120131062904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370377 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038223.P4096913120131062904

namespace A038223

/-- `∑[A370377(4*n)]` -/
def P4096913120131062904.Spec : Prop :=
  ∀ n, P4096913120131062904.a n = A038223 n

end A038223

/-! ## A038223.P17204382046017609905

`A106803(2*(n+1))`
-/

namespace A038223.P17204382046017609905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 (2 * (n + 1))

end

end A038223.P17204382046017609905

namespace A038223

/-- `A106803(2*(n+1))` -/
def P17204382046017609905.Spec : Prop :=
  ∀ n, P17204382046017609905.a n = A038223 n

end A038223

/-! ## A038223.P7539919892177188205

`A187070(4*(n+1))`
-/

namespace A038223.P7539919892177188205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (4 * (n + 1))

end

end A038223.P7539919892177188205

namespace A038223

/-- `A187070(4*(n+1))` -/
def P7539919892177188205.Spec : Prop :=
  ∀ n, P7539919892177188205.a n = A038223 n

end A038223

/-! ## A038223.P5147661687908811957

`A038196(4*n+2)`
-/

namespace A038223.P5147661687908811957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (4 * n + 2)

end

end A038223.P5147661687908811957

namespace A038223

/-- `A038196(4*n+2)` -/
def P5147661687908811957.Spec : Prop :=
  ∀ n, P5147661687908811957.a n = A038223 n

end A038223

/-! ## A038223.P7244262191790997556

`A120771(6*n+3)`
-/

namespace A038223.P7244262191790997556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (6 * n + 3)

end

end A038223.P7244262191790997556

namespace A038223

/-- `A120771(6*n+3)` -/
def P7244262191790997556.Spec : Prop :=
  ∀ n, P7244262191790997556.a n = A038223 n

end A038223

/-! ## A038223.P5114435959434832348

`A052949(Δ[n²])-1`
-/

namespace A038223.P5114435959434832348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052949 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A038223.P5114435959434832348

namespace A038223

/-- `A052949(Δ[n²])-1` -/
def P5114435959434832348.Spec : Prop :=
  ∀ n, P5114435959434832348.a n = A038223 n

end A038223

/-! ## A038223.P10292510451421308503

`∑[∑[A052534(2*n)]]`
-/

namespace A038223.P10292510451421308503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038223.P10292510451421308503

namespace A038223

/-- `∑[∑[A052534(2*n)]]` -/
def P10292510451421308503.Spec : Prop :=
  ∀ n, P10292510451421308503.a n = A038223 n

end A038223

/-! ## A038223.P6843291594720628313

`∑[A006054(2*(n+1))]`
-/

namespace A038223.P6843291594720628313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038223.P6843291594720628313

namespace A038223

/-- `∑[A006054(2*(n+1))]` -/
def P6843291594720628313.Spec : Prop :=
  ∀ n, P6843291594720628313.a n = A038223 n

end A038223

/-! ## A038223.P7398092121128892968

`∑[A187069(4*(n+1))]`
-/

namespace A038223.P7398092121128892968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038223.P7398092121128892968

namespace A038223

/-- `∑[A187069(4*(n+1))]` -/
def P7398092121128892968.Spec : Prop :=
  ∀ n, P7398092121128892968.a n = A038223 n

end A038223

/-! ## A038223.P9500000740540566071

`record[A006356(and(n, n+1))]`
-/

namespace A038223.P9500000740540566071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038223.P9500000740540566071

namespace A038223

/-- `record[A006356(and(n, n+1))]` -/
def P9500000740540566071.Spec : Prop :=
  ∀ n, P9500000740540566071.a n = A038223 n

end A038223

/-! ## A038223.P4599381483467831762

`record[A006356(n%or(1, n))]`
-/

namespace A038223.P4599381483467831762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (n % Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038223.P4599381483467831762

namespace A038223

/-- `record[A006356(n%or(1, n))]` -/
def P4599381483467831762.Spec : Prop :=
  ∀ n, P4599381483467831762.a n = A038223 n

end A038223

/-! ## A038223.P13357071851090550164

`A187068(2*(2*n+3))`
-/

namespace A038223.P13357071851090550164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * (2 * n + 3))

end

end A038223.P13357071851090550164

namespace A038223

/-- `A187068(2*(2*n+3))` -/
def P13357071851090550164.Spec : Prop :=
  ∀ n, P13357071851090550164.a n = A038223 n

end A038223

/-! ## A038223.P6123446513079726783

`A370377(A004273(2*n))`
-/

namespace A038223.P6123446513079726783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370377 (A004273 (2 * n)).toNat

end

end A038223.P6123446513079726783

namespace A038223

/-- `A370377(A004273(2*n))` -/
def P6123446513079726783.Spec : Prop :=
  ∀ n, P6123446513079726783.a n = A038223 n

end A038223

/-! ## A038223.P17772375540817404658

`record[A006356(A129760(n+1))]`
-/

namespace A038223.P17772375540817404658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (A129760 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038223.P17772375540817404658

namespace A038223

/-- `record[A006356(A129760(n+1))]` -/
def P17772375540817404658.Spec : Prop :=
  ∀ n, P17772375540817404658.a n = A038223 n

end A038223

/-! ## A038223.P5070694095637979799

`record[A006356(A006369(n+1)-1)]`
-/

namespace A038223.P5070694095637979799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (A006369 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038223.P5070694095637979799

namespace A038223

/-- `record[A006356(A006369(n+1)-1)]` -/
def P5070694095637979799.Spec : Prop :=
  ∀ n, P5070694095637979799.a n = A038223 n

end A038223

/-!
# A038224: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*6^j.

The programs for A038224, the canonical program `A038224.P6799813587480874502` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038224 has offset 0).

The definition of A038224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5740 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038224.P6799813587480874502

`A038221(n)*A059268(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038224

/-- `A038221(n)*A059268(n)` -/
def P6799813587480874502.Spec : Prop :=
  ∀ n, P6799813587480874502.a n = A038224 n

theorem P6799813587480874502.correct : P6799813587480874502.Spec := by
  intro n
  simp only [A038224]

end A038224

/-! ## A038224.P7920903737620887177

`A007318(n)*A100852(n)`
-/

namespace A038224.P7920903737620887177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A100852 n

end

end A038224.P7920903737620887177

namespace A038224

/-- `A007318(n)*A100852(n)` -/
def P7920903737620887177.Spec : Prop :=
  ∀ n, P7920903737620887177.a n = A038224 n

end A038224

/-! ## A038224.P7408147403892479235

`A013609(n)*A098355(n)`
-/

namespace A038224.P7408147403892479235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A098355 n

end

end A038224.P7408147403892479235

namespace A038224

/-- `A013609(n)*A098355(n)` -/
def P7408147403892479235.Spec : Prop :=
  ∀ n, P7408147403892479235.a n = A038224 n

end A038224

/-! ## A038224.P633531992442601141

`A013613(n)*A140303(n)`
-/

namespace A038224.P633531992442601141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 n * A140303 n

end

end A038224.P633531992442601141

namespace A038224

/-- `A013613(n)*A140303(n)` -/
def P633531992442601141.Spec : Prop :=
  ∀ n, P633531992442601141.a n = A038224 n

end A038224

/-! ## A038224.P638814974999721574

`A013610(n)*A175840(n)`
-/

namespace A038224.P638814974999721574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A175840 n

end

end A038224.P638814974999721574

namespace A038224

/-- `A013610(n)*A175840(n)` -/
def P638814974999721574.Spec : Prop :=
  ∀ n, P638814974999721574.a n = A038224 n

end A038224

/-! ## A038224.P15953693715208040598

`lcm(A013609(n), A038221(n))`
-/

namespace A038224.P15953693715208040598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A038221 n)

end

end A038224.P15953693715208040598

namespace A038224

/-- `lcm(A013609(n), A038221(n))` -/
def P15953693715208040598.Spec : Prop :=
  ∀ n, (P15953693715208040598.a n : ℤ) = A038224 n

end A038224

/-! ## A038224.P13568314323758220793

`A013609(n)/A007318(n)*A038221(n)`
-/

namespace A038224.P13568314323758220793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ) * (A038221 n : ℚ)

end

end A038224.P13568314323758220793

namespace A038224

/-- `A013609(n)/A007318(n)*A038221(n)` -/
def P13568314323758220793.Spec : Prop :=
  ∀ n, P13568314323758220793.a n = (A038224 n : ℚ)

end A038224

/-! ## A038224.P13865854863960422562

`A013613(n)/A038207(n)*A038255(n)`
-/

namespace A038224.P13865854863960422562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A038207 n : ℚ) * (A038255 n : ℚ)

end

end A038224.P13865854863960422562

namespace A038224

/-- `A013613(n)/A038207(n)*A038255(n)` -/
def P13865854863960422562.Spec : Prop :=
  ∀ n, P13865854863960422562.a n = (A038224 n : ℚ)

end A038224

/-! ## A038224.P2688058600553870064

`A038257(A061579(n))`
-/

namespace A038224.P2688058600553870064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038257 (A061579 n).toNat

end

end A038224.P2688058600553870064

namespace A038224

/-- `A038257(A061579(n))` -/
def P2688058600553870064.Spec : Prop :=
  ∀ n, P2688058600553870064.a n = A038224 n

end A038224

/-! ## A038224.P6969889546813555495

`sqrt(A038222(n))*sqrt(A038227(n))`
-/

namespace A038224.P6969889546813555495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038222 n : ℝ) * Real.sqrt (A038227 n : ℝ)

end

end A038224.P6969889546813555495

namespace A038224

/-- `sqrt(A038222(n))*sqrt(A038227(n))` -/
def P6969889546813555495.Spec : Prop :=
  ∀ n, P6969889546813555495.a n = (A038224 n : ℝ)

end A038224

/-! ## A038224.P11901911712946245488

`A038260(n)/A130321(n)`
-/

namespace A038224.P11901911712946245488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038260 n : ℚ) / (A130321 n : ℚ)

end

end A038224.P11901911712946245488

namespace A038224

/-- `A038260(n)/A130321(n)` -/
def P11901911712946245488.Spec : Prop :=
  ∀ n, P11901911712946245488.a n = (A038224 n : ℚ)

end A038224

/-! ## A038224.P7540399907030962404

`A038230(n)/A059268(n)`
-/

namespace A038224.P7540399907030962404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038230 n : ℚ) / (A059268 n : ℚ)

end

end A038224.P7540399907030962404

namespace A038224

/-- `A038230(n)/A059268(n)` -/
def P7540399907030962404.Spec : Prop :=
  ∀ n, P7540399907030962404.a n = (A038224 n : ℚ)

end A038224

/-! ## A038224.P3188081326188911634

`sqrt(A038221(n))*sqrt(A038230(n))`
-/

namespace A038224.P3188081326188911634
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038221 n : ℝ) * Real.sqrt (A038230 n : ℝ)

end

end A038224.P3188081326188911634

namespace A038224

/-- `sqrt(A038221(n))*sqrt(A038230(n))` -/
def P3188081326188911634.Spec : Prop :=
  ∀ n, P3188081326188911634.a n = (A038224 n : ℝ)

end A038224

/-! ## A038224.P239564556737770300

`A038296(n)/A140303(n)`
-/

namespace A038224.P239564556737770300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038296 n : ℚ) / (A140303 n : ℚ)

end

end A038224.P239564556737770300

namespace A038224

/-- `A038296(n)/A140303(n)` -/
def P239564556737770300.Spec : Prop :=
  ∀ n, P239564556737770300.a n = (A038224 n : ℚ)

end A038224

/-! ## A038224.P9513623843798248708

`gcd(A038230(n), A038296(n))`
-/

namespace A038224.P9513623843798248708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038230 n) (A038296 n)

end

end A038224.P9513623843798248708

namespace A038224

/-- `gcd(A038230(n), A038296(n))` -/
def P9513623843798248708.Spec : Prop :=
  ∀ n, (P9513623843798248708.a n : ℤ) = A038224 n

end A038224

/-! ## A038224.P1895241349215884808

`A013613(n)/A038243(n)*A027467(n)`
-/

namespace A038224.P1895241349215884808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A038243 n : ℚ) * (A027467 n : ℚ)

end

end A038224.P1895241349215884808

namespace A038224

/-- `A013613(n)/A038243(n)*A027467(n)` -/
def P1895241349215884808.Spec : Prop :=
  ∀ n, P1895241349215884808.a n = (A038224 n : ℚ)

end A038224

/-! ## A038224.P17799801018197591723

`A038266(n)/A137688(n)`
-/

namespace A038224.P17799801018197591723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038266 n : ℚ) / (A137688 n : ℚ)

end

end A038224.P17799801018197591723

namespace A038224

/-- `A038266(n)/A137688(n)` -/
def P17799801018197591723.Spec : Prop :=
  ∀ n, P17799801018197591723.a n = (A038224 n : ℚ)

end A038224

/-! ## A038224.P2664454344034189541

`A038332(n)/A262616(n)`
-/

namespace A038224.P2664454344034189541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038332 n : ℚ) / (A262616 n : ℚ)

end

end A038224.P2664454344034189541

namespace A038224

/-- `A038332(n)/A262616(n)` -/
def P2664454344034189541.Spec : Prop :=
  ∀ n, P2664454344034189541.a n = (A038224 n : ℚ)

end A038224

/-! ## A038224.P7525030259414198404

`A038332(n)/A130321(n)²`
-/

namespace A038224.P7525030259414198404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038332 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A038224.P7525030259414198404

namespace A038224

/-- `A038332(n)/A130321(n)²` -/
def P7525030259414198404.Spec : Prop :=
  ∀ n, P7525030259414198404.a n = (A038224 n : ℚ)

end A038224

/-! ## A038224.P15928520705966354478

`A038302(n)/A175840(n)`
-/

namespace A038224.P15928520705966354478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038302 n : ℚ) / (A175840 n : ℚ)

end

end A038224.P15928520705966354478

namespace A038224

/-- `A038302(n)/A175840(n)` -/
def P15928520705966354478.Spec : Prop :=
  ∀ n, P15928520705966354478.a n = (A038224 n : ℚ)

end A038224

/-!
# A038225: Top line of 4-wave sequence A038197, also bisection of A006357.

The programs for A038225, the canonical program `A038225.P1125688765987125503` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038225 has offset 0).

The definition of A038225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038225.P12855874945593943207

`A038197(6*n)`
-/

namespace A038225.P12855874945593943207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (6 * n)

end

end A038225.P12855874945593943207

namespace A038225

/-- `A038197(6*n)` -/
def P12855874945593943207.Spec : Prop :=
  ∀ n, P12855874945593943207.a n = A038225 n

end A038225

/-! ## A038225.P9139705112538302735

`A187506(6*n+2)`
-/

namespace A038225.P9139705112538302735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (6 * n + 2)

end

end A038225.P9139705112538302735

namespace A038225

/-- `A187506(6*n+2)` -/
def P9139705112538302735.Spec : Prop :=
  ∀ n, P9139705112538302735.a n = A038225 n

end A038225

/-! ## A038225.P17056750382263116026

`A187503(6*n+5)`
-/

namespace A038225.P17056750382263116026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (6 * n + 5)

end

end A038225.P17056750382263116026

namespace A038225

/-- `A187503(6*n+5)` -/
def P17056750382263116026.Spec : Prop :=
  ∀ n, P17056750382263116026.a n = A038225 n

end A038225

/-! ## A038225.P1125688765987125503

`∑[A123941(2*n)]+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038225

/-- `∑[A123941(2*n)]+1` -/
def P1125688765987125503.Spec : Prop :=
  ∀ n, P1125688765987125503.a n = A038225 n

theorem P1125688765987125503.correct : P1125688765987125503.Spec := by
  intro n
  simp only [A038225]

end A038225

/-! ## A038225.P9466175674378102058

`A006357(comp[2*(n+1)])`
-/

namespace A038225.P9466175674378102058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006357 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A038225.P9466175674378102058

namespace A038225

/-- `A006357(comp[2*(n+1)])` -/
def P9466175674378102058.Spec : Prop :=
  ∀ n, P9466175674378102058.a n = A038225 n

end A038225

/-! ## A038225.P16196154209622055991

`∑[∑[A147704(2*n)]]-n`
-/

namespace A038225.P16196154209622055991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147704 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A038225.P16196154209622055991

namespace A038225

/-- `∑[∑[A147704(2*n)]]-n` -/
def P16196154209622055991.Spec : Prop :=
  ∀ n, P16196154209622055991.a n = A038225 n

end A038225

/-! ## A038225.P6275313827375791157

`A123941(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A038225.P6275313827375791157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123941 (n + n) + a (n - 1)

end

end A038225.P6275313827375791157

namespace A038225

/-- `A123941(n+n)+a(n-1)` -/
def P6275313827375791157.Spec : Prop :=
  ∀ n, P6275313827375791157.a n = A038225 n

end A038225

/-! ## A038225.P281778477742491459

`A052536(2*n)-A091024(2*n)`
-/

namespace A038225.P281778477742491459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 (2 * n) - A091024 (2 * n)

end

end A038225.P281778477742491459

namespace A038225

/-- `A052536(2*n)-A091024(2*n)` -/
def P281778477742491459.Spec : Prop :=
  ∀ n, P281778477742491459.a n = A038225 n

end A038225

/-! ## A038225.P12487763925628361888

`A060823(2*(n+1))/2`
-/

namespace A038225.P12487763925628361888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060823 (2 * (n + 1)) : ℚ) / 2

end

end A038225.P12487763925628361888

namespace A038225

/-- `A060823(2*(n+1))/2` -/
def P12487763925628361888.Spec : Prop :=
  ∀ n, P12487763925628361888.a n = (A038225 n : ℚ)

end A038225

/-! ## A038225.P13384990368273030005

`(A091650(2*n+1)+1)/2`
-/

namespace A038225.P13384990368273030005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091650 (2 * n + 1) + 1 : ℚ) / 2

end

end A038225.P13384990368273030005

namespace A038225

/-- `(A091650(2*n+1)+1)/2` -/
def P13384990368273030005.Spec : Prop :=
  ∀ n, P13384990368273030005.a n = (A038225 n : ℚ)

end A038225

/-! ## A038225.P2897975409459895749

`A006357(2*n+1)-A018919(2*n)`
-/

namespace A038225.P2897975409459895749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006357 (2 * n + 1) - A018919 (2 * n)

end

end A038225.P2897975409459895749

namespace A038225

/-- `A006357(2*n+1)-A018919(2*n)` -/
def P2897975409459895749.Spec : Prop :=
  ∀ n, P2897975409459895749.a n = A038225 n

end A038225

/-! ## A038225.P2806273881955562758

`A006357(2*n)+1-A038237(2*n)`
-/

namespace A038225.P2806273881955562758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006357 (2 * n) + (1 - A038237 (2 * n))

end

end A038225.P2806273881955562758

namespace A038225

/-- `A006357(2*n)+1-A038237(2*n)` -/
def P2806273881955562758.Spec : Prop :=
  ∀ n, P2806273881955562758.a n = A038225 n

end A038225

/-! ## A038225.P6001420666353310918

`A091024(2*n+1)-A123941(2*n)`
-/

namespace A038225.P6001420666353310918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (2 * n + 1) - A123941 (2 * n)

end

end A038225.P6001420666353310918

namespace A038225

/-- `A091024(2*n+1)-A123941(2*n)` -/
def P6001420666353310918.Spec : Prop :=
  ∀ n, P6001420666353310918.a n = A038225 n

end A038225

/-! ## A038225.P8364721896299611300

`A006357(2*n+1)-A076264(2*n+1)`
-/

namespace A038225.P8364721896299611300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006357 (2 * n + 1) - A076264 (2 * n + 1)

end

end A038225.P8364721896299611300

namespace A038225

/-- `A006357(2*n+1)-A076264(2*n+1)` -/
def P8364721896299611300.Spec : Prop :=
  ∀ n, P8364721896299611300.a n = A038225 n

end A038225

/-! ## A038225.P12585397764628064206

`A060823(2*n+3)+1-A052536(2*n+1)`
-/

namespace A038225.P12585397764628064206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060823 (2 * n + 3) + (1 - A052536 (2 * n + 1))

end

end A038225.P12585397764628064206

namespace A038225

/-- `A060823(2*n+3)+1-A052536(2*n+1)` -/
def P12585397764628064206.Spec : Prop :=
  ∀ n, P12585397764628064206.a n = A038225 n

end A038225

/-! ## A038225.P6264015979551142646

`A069005(2*(n+1))-2*A018919(2*n)`
-/

namespace A038225.P6264015979551142646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069005 (2 * (n + 1)) - 2 * A018919 (2 * n)

end

end A038225.P6264015979551142646

namespace A038225

/-- `A069005(2*(n+1))-2*A018919(2*n)` -/
def P6264015979551142646.Spec : Prop :=
  ∀ n, P6264015979551142646.a n = A038225 n

end A038225

/-! ## A038225.P1135348787783914847

`A069005(2*(n+1))-2*A076264(2*n+1)`
-/

namespace A038225.P1135348787783914847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069005 (2 * (n + 1)) - 2 * A076264 (2 * n + 1)

end

end A038225.P1135348787783914847

namespace A038225

/-- `A069005(2*(n+1))-2*A076264(2*n+1)` -/
def P1135348787783914847.Spec : Prop :=
  ∀ n, P1135348787783914847.a n = A038225 n

end A038225

/-!
# A038226: Triangle read by rows: (i,j)-th entry is binomial(i,j)*3^(i-j)*8^j.

The programs for A038226, the canonical program `A038226.P14999637500471650341` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038226 has offset 0).

The definition of A038226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038226.P14999637500471650341

`A038222(n)*A059268(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038226

/-- `A038222(n)*A059268(n)` -/
def P14999637500471650341.Spec : Prop :=
  ∀ n, P14999637500471650341.a n = A038226 n

theorem P14999637500471650341.correct : P14999637500471650341.Spec := by
  intro n
  simp only [A038226]

end A038226

/-! ## A038226.P16638876116427467782

`A013615(n)*A140303(n)`
-/

namespace A038226.P16638876116427467782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 n * A140303 n

end

end A038226.P16638876116427467782

namespace A038226

/-- `A013615(n)*A140303(n)` -/
def P16638876116427467782.Spec : Prop :=
  ∀ n, P16638876116427467782.a n = A038226 n

end A038226

/-! ## A038226.P14467193509952564553

`A013611(n)*A175840(n)`
-/

namespace A038226.P14467193509952564553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 n * A175840 n

end

end A038226.P14467193509952564553

namespace A038226

/-- `A013611(n)*A175840(n)` -/
def P14467193509952564553.Spec : Prop :=
  ∀ n, P14467193509952564553.a n = A038226 n

end A038226

/-! ## A038226.P13599005658969399559

`A013609(n)*A356036(n)`
-/

namespace A038226.P13599005658969399559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A356036 n

end

end A038226.P13599005658969399559

namespace A038226

/-- `A013609(n)*A356036(n)` -/
def P13599005658969399559.Spec : Prop :=
  ∀ n, P13599005658969399559.a n = A038226 n

end A038226

/-! ## A038226.P17909549730225046767

`lcm(A013615(n), A027465(n))`
-/

namespace A038226.P17909549730225046767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013615 n) (A027465 n)

end

end A038226.P17909549730225046767

namespace A038226

/-- `lcm(A013615(n), A027465(n))` -/
def P17909549730225046767.Spec : Prop :=
  ∀ n, (P17909549730225046767.a n : ℤ) = A038226 n

end A038226

/-! ## A038226.P10567751520736300540

`A059268(n)²*A038220(n)`
-/

namespace A038226.P10567751520736300540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038220 n

end

end A038226.P10567751520736300540

namespace A038226

/-- `A059268(n)²*A038220(n)` -/
def P10567751520736300540.Spec : Prop :=
  ∀ n, P10567751520736300540.a n = A038226 n

end A038226

/-! ## A038226.P1466237530388957799

`A059268(n)^3*A027465(n)`
-/

namespace A038226.P1466237530388957799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 3 * A027465 n

end

end A038226.P1466237530388957799

namespace A038226

/-- `A059268(n)^3*A027465(n)` -/
def P1466237530388957799.Spec : Prop :=
  ∀ n, P1466237530388957799.a n = A038226 n

end A038226

/-! ## A038226.P14454411109600016949

`A122803(A002262(n))²*A038220(n)`
-/

namespace A038226.P14454411109600016949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A002262 n).toNat ^ 2 * A038220 n

end

end A038226.P14454411109600016949

namespace A038226

/-- `A122803(A002262(n))²*A038220(n)` -/
def P14454411109600016949.Spec : Prop :=
  ∀ n, P14454411109600016949.a n = A038226 n

end A038226

/-! ## A038226.P2477848694264207377

`A038220(n)*A122803(2*A002262(n))`
-/

namespace A038226.P2477848694264207377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n * A122803 (2 * A002262 n).toNat

end

end A038226.P2477848694264207377

namespace A038226

/-- `A038220(n)*A122803(2*A002262(n))` -/
def P2477848694264207377.Spec : Prop :=
  ∀ n, P2477848694264207377.a n = A038226 n

end A038226

/-! ## A038226.P12993562821701162853

`A038222(n)/A038220(n)*A038222(n)`
-/

namespace A038226.P12993562821701162853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038222 n : ℚ) / (A038220 n : ℚ) * (A038222 n : ℚ)

end

end A038226.P12993562821701162853

namespace A038226

/-- `A038222(n)/A038220(n)*A038222(n)` -/
def P12993562821701162853.Spec : Prop :=
  ∀ n, P12993562821701162853.a n = (A038226 n : ℚ)

end A038226

/-! ## A038226.P13010328956142361221

`(A013611(n)/A013609(n))²*A038220(n)`
-/

namespace A038226.P13010328956142361221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013611 n : ℚ) / (A013609 n : ℚ)) ^ 2 * (A038220 n : ℚ)

end

end A038226.P13010328956142361221

namespace A038226

/-- `(A013611(n)/A013609(n))²*A038220(n)` -/
def P13010328956142361221.Spec : Prop :=
  ∀ n, P13010328956142361221.a n = (A038226 n : ℚ)

end A038226

/-! ## A038226.P2645098432163134834

`(A038220(n)/A027465(n))²*A038220(n)`
-/

namespace A038226.P2645098432163134834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038220 n : ℚ) / (A027465 n : ℚ)) ^ 2 * (A038220 n : ℚ)

end

end A038226.P2645098432163134834

namespace A038226

/-- `(A038220(n)/A027465(n))²*A038220(n)` -/
def P2645098432163134834.Spec : Prop :=
  ∀ n, P2645098432163134834.a n = (A038226 n : ℚ)

end A038226

/-! ## A038226.P9230105815084228676

`A038281(A061579(n))`
-/

namespace A038226.P9230105815084228676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038281 (A061579 n).toNat

end

end A038226.P9230105815084228676

namespace A038226

/-- `A038281(A061579(n))` -/
def P9230105815084228676.Spec : Prop :=
  ∀ n, P9230105815084228676.a n = A038226 n

end A038226

/-! ## A038226.P4785378246653211142

`A038281(A038722(n+1)-1)`
-/

namespace A038226.P4785378246653211142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038281 (A038722 (n + 1) - 1).toNat

end

end A038226.P4785378246653211142

namespace A038226

/-- `A038281(A038722(n+1)-1)` -/
def P4785378246653211142.Spec : Prop :=
  ∀ n, P4785378246653211142.a n = A038226 n

end A038226

/-! ## A038226.P15924002981865087857

`A038262(n)/A130321(n)`
-/

namespace A038226.P15924002981865087857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038262 n : ℚ) / (A130321 n : ℚ)

end

end A038226.P15924002981865087857

namespace A038226

/-- `A038262(n)/A130321(n)` -/
def P15924002981865087857.Spec : Prop :=
  ∀ n, P15924002981865087857.a n = (A038226 n : ℚ)

end A038226

/-! ## A038226.P13456454886329983802

`A013615(n)/A038243(n)*A027467(n)`
-/

namespace A038226.P13456454886329983802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013615 n : ℚ) / (A038243 n : ℚ) * (A027467 n : ℚ)

end

end A038226.P13456454886329983802

namespace A038226

/-- `A013615(n)/A038243(n)*A027467(n)` -/
def P13456454886329983802.Spec : Prop :=
  ∀ n, P13456454886329983802.a n = (A038226 n : ℚ)

end A038226

/-! ## A038226.P7138458447214854480

`A038298(n)/A140303(n)`
-/

namespace A038226.P7138458447214854480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038298 n : ℚ) / (A140303 n : ℚ)

end

end A038226.P7138458447214854480

namespace A038226

/-- `A038298(n)/A140303(n)` -/
def P7138458447214854480.Spec : Prop :=
  ∀ n, P7138458447214854480.a n = (A038226 n : ℚ)

end A038226

/-! ## A038226.P5492340016919726348

`gcd(A038262(n), A038298(n))`
-/

namespace A038226.P5492340016919726348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038262 n) (A038298 n)

end

end A038226.P5492340016919726348

namespace A038226

/-- `gcd(A038262(n), A038298(n))` -/
def P5492340016919726348.Spec : Prop :=
  ∀ n, (P5492340016919726348.a n : ℤ) = A038226 n

end A038226

/-! ## A038226.P4806534845321189545

`A038334(n)/A262616(n)`
-/

namespace A038226.P4806534845321189545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038334 n : ℚ) / (A262616 n : ℚ)

end

end A038226.P4806534845321189545

namespace A038226

/-- `A038334(n)/A262616(n)` -/
def P4806534845321189545.Spec : Prop :=
  ∀ n, P4806534845321189545.a n = (A038226 n : ℚ)

end A038226

/-! ## A038226.P361505837851463439

`A038334(n)/A130321(n)²`
-/

namespace A038226.P361505837851463439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038334 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A038226.P361505837851463439

namespace A038226

/-- `A038334(n)/A130321(n)²` -/
def P361505837851463439.Spec : Prop :=
  ∀ n, P361505837851463439.a n = (A038226 n : ℚ)

end A038226

/-!
# A038227: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*9^j.

The programs for A038227, the canonical program `A038227.P14834822881474033912` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038227 has offset 0).

The definition of A038227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4530 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038227.P14834822881474033912

`A013610(n)*A098355(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038227

/-- `A013610(n)*A098355(n)` -/
def P14834822881474033912.Spec : Prop :=
  ∀ n, P14834822881474033912.a n = A038227 n

theorem P14834822881474033912.correct : P14834822881474033912.Spec := by
  intro n
  simp only [A038227]

end A038227

/-! ## A038227.P1584233416428200923

`A013616(n)*A140303(n)`
-/

namespace A038227.P1584233416428200923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013616 n * A140303 n

end

end A038227.P1584233416428200923

namespace A038227

/-- `A013616(n)*A140303(n)` -/
def P1584233416428200923.Spec : Prop :=
  ∀ n, P1584233416428200923.a n = A038227 n

end A038227

/-! ## A038227.P10999336230631909035

`3^A003056(n)*A013610(n)`
-/

namespace A038227.P10999336230631909035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A003056 n : ℤ) * (A013610 n : ℚ)

end

end A038227.P10999336230631909035

namespace A038227

/-- `3^A003056(n)*A013610(n)` -/
def P10999336230631909035.Spec : Prop :=
  ∀ n, P10999336230631909035.a n = (A038227 n : ℚ)

end A038227

/-! ## A038227.P9460935817608247842

`A007318(n)*A000244(A051162(n))`
-/

namespace A038227.P9460935817608247842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000244 (A051162 n).toNat

end

end A038227.P9460935817608247842

namespace A038227

/-- `A007318(n)*A000244(A051162(n))` -/
def P9460935817608247842.Spec : Prop :=
  ∀ n, P9460935817608247842.a n = A038227 n

end A038227

/-! ## A038227.P17732829473964061500

`A013610(n)*A013610(A025581(n)+n)`
-/

namespace A038227.P17732829473964061500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A013610 (A025581 n + (n : ℤ)).toNat

end

end A038227.P17732829473964061500

namespace A038227

/-- `A013610(n)*A013610(A025581(n)+n)` -/
def P17732829473964061500.Spec : Prop :=
  ∀ n, P17732829473964061500.a n = A038227 n

end A038227

/-! ## A038227.P4745527554614487949

`A038221(n)/A027465(n)*A038221(n)`
-/

namespace A038227.P4745527554614487949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n : ℚ) / (A027465 n : ℚ) * (A038221 n : ℚ)

end

end A038227.P4745527554614487949

namespace A038227

/-- `A038221(n)/A027465(n)*A038221(n)` -/
def P4745527554614487949.Spec : Prop :=
  ∀ n, P4745527554614487949.a n = (A038227 n : ℚ)

end A038227

/-! ## A038227.P5354321339656509505

`A038224(n)/A038222(n)*A038224(n)`
-/

namespace A038227.P5354321339656509505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038224 n : ℚ) / (A038222 n : ℚ) * (A038224 n : ℚ)

end

end A038227.P5354321339656509505

namespace A038227

/-- `A038224(n)/A038222(n)*A038224(n)` -/
def P5354321339656509505.Spec : Prop :=
  ∀ n, P5354321339656509505.a n = (A038227 n : ℚ)

end A038227

/-! ## A038227.P15907398171521685486

`(A013610(n)/A007318(n))²*A027465(n)`
-/

namespace A038227.P15907398171521685486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013610 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A027465 n : ℚ)

end

end A038227.P15907398171521685486

namespace A038227

/-- `(A013610(n)/A007318(n))²*A027465(n)` -/
def P15907398171521685486.Spec : Prop :=
  ∀ n, P15907398171521685486.a n = (A038227 n : ℚ)

end A038227

/-! ## A038227.P822772921769439779

`A038293(A061579(n))`
-/

namespace A038227.P822772921769439779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038293 (A061579 n).toNat

end

end A038227.P822772921769439779

namespace A038227

/-- `A038293(A061579(n))` -/
def P822772921769439779.Spec : Prop :=
  ∀ n, P822772921769439779.a n = A038227 n

end A038227

/-! ## A038227.P2197566377450070578

`A038257(n)/A038327(n)*A038257(n)`
-/

namespace A038227.P2197566377450070578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038257 n : ℚ) / (A038327 n : ℚ) * (A038257 n : ℚ)

end

end A038227.P2197566377450070578

namespace A038227

/-- `A038257(n)/A038327(n)*A038257(n)` -/
def P2197566377450070578.Spec : Prop :=
  ∀ n, P2197566377450070578.a n = (A038227 n : ℚ)

end A038227

/-! ## A038227.P15762609156757733678

`A038263(n)/A130321(n)`
-/

namespace A038227.P15762609156757733678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038263 n : ℚ) / (A130321 n : ℚ)

end

end A038227.P15762609156757733678

namespace A038227

/-- `A038263(n)/A130321(n)` -/
def P15762609156757733678.Spec : Prop :=
  ∀ n, P15762609156757733678.a n = (A038227 n : ℚ)

end A038227

/-! ## A038227.P5702281911200039031

`A038260(n)/A038330(n)*A038260(n)`
-/

namespace A038227.P5702281911200039031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038260 n : ℚ) / (A038330 n : ℚ) * (A038260 n : ℚ)

end

end A038227.P5702281911200039031

namespace A038227

/-- `A038260(n)/A038330(n)*A038260(n)` -/
def P5702281911200039031.Spec : Prop :=
  ∀ n, P5702281911200039031.a n = (A038227 n : ℚ)

end A038227

/-! ## A038227.P16696467216522854195

`A013616(n)/A038243(n)*A027467(n)`
-/

namespace A038227.P16696467216522854195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013616 n : ℚ) / (A038243 n : ℚ) * (A027467 n : ℚ)

end

end A038227.P16696467216522854195

namespace A038227

/-- `A013616(n)/A038243(n)*A027467(n)` -/
def P16696467216522854195.Spec : Prop :=
  ∀ n, P16696467216522854195.a n = (A038227 n : ℚ)

end A038227

/-! ## A038227.P2414717405376832394

`A038299(n)/A140303(n)`
-/

namespace A038227.P2414717405376832394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038299 n : ℚ) / (A140303 n : ℚ)

end

end A038227.P2414717405376832394

namespace A038227

/-- `A038299(n)/A140303(n)` -/
def P2414717405376832394.Spec : Prop :=
  ∀ n, P2414717405376832394.a n = (A038227 n : ℚ)

end A038227

/-! ## A038227.P17677489853887848084

`gcd(A038263(n), A038299(n))`
-/

namespace A038227.P17677489853887848084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038263 n) (A038299 n)

end

end A038227.P17677489853887848084

namespace A038227

/-- `gcd(A038263(n), A038299(n))` -/
def P17677489853887848084.Spec : Prop :=
  ∀ n, (P17677489853887848084.a n : ℤ) = A038227 n

end A038227

/-! ## A038227.P1841778321419797135

`A038335(n)/A262616(n)`
-/

namespace A038227.P1841778321419797135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038335 n : ℚ) / (A262616 n : ℚ)

end

end A038227.P1841778321419797135

namespace A038227

/-- `A038335(n)/A262616(n)` -/
def P1841778321419797135.Spec : Prop :=
  ∀ n, P1841778321419797135.a n = (A038227 n : ℚ)

end A038227

/-! ## A038227.P2766138233795752656

`A038335(n)/A130321(n)²`
-/

namespace A038227.P2766138233795752656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038335 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A038227.P2766138233795752656

namespace A038227

/-- `A038335(n)/A130321(n)²` -/
def P2766138233795752656.Spec : Prop :=
  ∀ n, P2766138233795752656.a n = (A038227 n : ℚ)

end A038227

/-! ## A038227.P18268603767231562324

`A038221(n)²/A027465(n)`
-/

namespace A038227.P18268603767231562324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n ^ 2 : ℚ) / (A027465 n : ℚ)

end

end A038227.P18268603767231562324

namespace A038227

/-- `A038221(n)²/A027465(n)` -/
def P18268603767231562324.Spec : Prop :=
  ∀ n, P18268603767231562324.a n = (A038227 n : ℚ)

end A038227

/-! ## A038227.P11125026383027669644

`A038221(n)²/gcd(A038220(n), A038221(n))`
-/

namespace A038227.P11125026383027669644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n ^ 2 : ℚ) / (Int.gcd (A038220 n) (A038221 n) : ℚ)

end

end A038227.P11125026383027669644

namespace A038227

/-- `A038221(n)²/gcd(A038220(n), A038221(n))` -/
def P11125026383027669644.Spec : Prop :=
  ∀ n, P11125026383027669644.a n = (A038227 n : ℚ)

end A038227

/-! ## A038227.P1939241210097720885

`A038224(n)²/A038222(n)`
-/

namespace A038227.P1939241210097720885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038224 n ^ 2 : ℚ) / (A038222 n : ℚ)

end

end A038227.P1939241210097720885

namespace A038227

/-- `A038224(n)²/A038222(n)` -/
def P1939241210097720885.Spec : Prop :=
  ∀ n, P1939241210097720885.a n = (A038227 n : ℚ)

end A038227

/-!
# A038228: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*10^j.

The programs for A038228, the canonical program `A038228.P4054419155064048625` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038228 has offset 0).

The definition of A038228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038228.P4054419155064048625

`A013622(n)*A059268(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038228

/-- `A013622(n)*A059268(n)` -/
def P4054419155064048625.Spec : Prop :=
  ∀ n, P4054419155064048625.a n = A038228 n

theorem P4054419155064048625.correct : P4054419155064048625.Spec := by
  intro n
  simp only [A038228]

end A038228

/-! ## A038228.P3326073260045610384

`A013609(n)*A120027(n)`
-/

namespace A038228.P3326073260045610384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A120027 n

end

end A038228.P3326073260045610384

namespace A038228

/-- `A013609(n)*A120027(n)` -/
def P3326073260045610384.Spec : Prop :=
  ∀ n, P3326073260045610384.a n = A038228 n

end A038228

/-! ## A038228.P1465232922602350228

`A013617(n)*A140303(n)`
-/

namespace A038228.P1465232922602350228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013617 n * A140303 n

end

end A038228.P1465232922602350228

namespace A038228

/-- `A013617(n)*A140303(n)` -/
def P1465232922602350228.Spec : Prop :=
  ∀ n, P1465232922602350228.a n = A038228 n

end A038228

/-! ## A038228.P1271374141522154337

`A013612(n)*A175840(n)`
-/

namespace A038228.P1271374141522154337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 n * A175840 n

end

end A038228.P1271374141522154337

namespace A038228

/-- `A013612(n)*A175840(n)` -/
def P1271374141522154337.Spec : Prop :=
  ∀ n, P1271374141522154337.a n = A038228 n

end A038228

/-! ## A038228.P16370565898128083684

`lcm(A013609(n), A013622(n))`
-/

namespace A038228.P16370565898128083684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A013622 n)

end

end A038228.P16370565898128083684

namespace A038228

/-- `lcm(A013609(n), A013622(n))` -/
def P16370565898128083684.Spec : Prop :=
  ∀ n, (P16370565898128083684.a n : ℤ) = A038228 n

end A038228

/-! ## A038228.P9246367256338044547

`lcm(A013617(n), A027465(n))`
-/

namespace A038228.P9246367256338044547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013617 n) (A027465 n)

end

end A038228.P9246367256338044547

namespace A038228

/-- `lcm(A013617(n), A027465(n))` -/
def P9246367256338044547.Spec : Prop :=
  ∀ n, (P9246367256338044547.a n : ℤ) = A038228 n

end A038228

/-! ## A038228.P7086560132884243046

`lcm(A013612(n), A038220(n))`
-/

namespace A038228.P7086560132884243046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038220 n)

end

end A038228.P7086560132884243046

namespace A038228

/-- `lcm(A013612(n), A038220(n))` -/
def P7086560132884243046.Spec : Prop :=
  ∀ n, (P7086560132884243046.a n : ℤ) = A038228 n

end A038228

/-! ## A038228.P10193454945916745586

`A038305(A061579(n))`
-/

namespace A038228.P10193454945916745586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038305 (A061579 n).toNat

end

end A038228.P10193454945916745586

namespace A038228

/-- `A038305(A061579(n))` -/
def P10193454945916745586.Spec : Prop :=
  ∀ n, P10193454945916745586.a n = A038228 n

end A038228

/-! ## A038228.P12167439034779825709

`A038305(A038722(n+1)-1)`
-/

namespace A038228.P12167439034779825709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038305 (A038722 (n + 1) - 1).toNat

end

end A038228.P12167439034779825709

namespace A038228

/-- `A038305(A038722(n+1)-1)` -/
def P12167439034779825709.Spec : Prop :=
  ∀ n, P12167439034779825709.a n = A038228 n

end A038228

/-! ## A038228.P11053449252443360516

`A038264(n)/A130321(n)`
-/

namespace A038228.P11053449252443360516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038264 n : ℚ) / (A130321 n : ℚ)

end

end A038228.P11053449252443360516

namespace A038228

/-- `A038264(n)/A130321(n)` -/
def P11053449252443360516.Spec : Prop :=
  ∀ n, P11053449252443360516.a n = (A038228 n : ℚ)

end A038228

/-! ## A038228.P13173648923694004612

`A013617(n)/A038243(n)*A027467(n)`
-/

namespace A038228.P13173648923694004612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013617 n : ℚ) / (A038243 n : ℚ) * (A027467 n : ℚ)

end

end A038228.P13173648923694004612

namespace A038228

/-- `A013617(n)/A038243(n)*A027467(n)` -/
def P13173648923694004612.Spec : Prop :=
  ∀ n, P13173648923694004612.a n = (A038228 n : ℚ)

end A038228

/-! ## A038228.P1938048610080057531

`A038300(n)/A140303(n)`
-/

namespace A038228.P1938048610080057531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038300 n : ℚ) / (A140303 n : ℚ)

end

end A038228.P1938048610080057531

namespace A038228

/-- `A038300(n)/A140303(n)` -/
def P1938048610080057531.Spec : Prop :=
  ∀ n, P1938048610080057531.a n = (A038228 n : ℚ)

end A038228

/-! ## A038228.P437925094917758841

`gcd(A038264(n), A038300(n))`
-/

namespace A038228.P437925094917758841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038264 n) (A038300 n)

end

end A038228.P437925094917758841

namespace A038228

/-- `gcd(A038264(n), A038300(n))` -/
def P437925094917758841.Spec : Prop :=
  ∀ n, (P437925094917758841.a n : ℤ) = A038228 n

end A038228

/-! ## A038228.P13455657671194494401

`A038336(n)/A262616(n)`
-/

namespace A038228.P13455657671194494401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038336 n : ℚ) / (A262616 n : ℚ)

end

end A038228.P13455657671194494401

namespace A038228

/-- `A038336(n)/A262616(n)` -/
def P13455657671194494401.Spec : Prop :=
  ∀ n, P13455657671194494401.a n = (A038228 n : ℚ)

end A038228

/-! ## A038228.P3490840589787483758

`A038336(n)/A130321(n)²`
-/

namespace A038228.P3490840589787483758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038336 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A038228.P3490840589787483758

namespace A038228

/-- `A038336(n)/A130321(n)²` -/
def P3490840589787483758.Spec : Prop :=
  ∀ n, P3490840589787483758.a n = (A038228 n : ℚ)

end A038228

/-! ## A038228.P1547739205500878472

`A013622(n)*A225466(A112367(n))`
-/

namespace A038228.P1547739205500878472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 n * A225466 (A112367 n).toNat

end

end A038228.P1547739205500878472

namespace A038228

/-- `A013622(n)*A225466(A112367(n))` -/
def P1547739205500878472.Spec : Prop :=
  ∀ n, P1547739205500878472.a n = A038228 n

end A038228

/-!
# A038229: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*11^j.

The programs for A038229, the canonical program `A038229.P16179588272599030162` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038229 has offset 0).

The definition of A038229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4067 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038229.P16179588272599030162

`A013618(n)*A140303(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038229

/-- `A013618(n)*A140303(n)` -/
def P16179588272599030162.Spec : Prop :=
  ∀ n, P16179588272599030162.a n = A038229 n

theorem P16179588272599030162.correct : P16179588272599030162.Spec := by
  intro n
  simp only [A038229]

end A038229

/-! ## A038229.P5041731518683398778

`lcm(A013618(n), A027465(n))`
-/

namespace A038229.P5041731518683398778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013618 n) (A027465 n)

end

end A038229.P5041731518683398778

namespace A038229

/-- `lcm(A013618(n), A027465(n))` -/
def P5041731518683398778.Spec : Prop :=
  ∀ n, (P5041731518683398778.a n : ℤ) = A038229 n

end A038229

/-! ## A038229.P1507762481998386581

`A001020(A002262(n))*A027465(n)`
-/

namespace A038229.P1507762481998386581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat * A027465 n

end

end A038229.P1507762481998386581

namespace A038229

/-- `A001020(A002262(n))*A027465(n)` -/
def P1507762481998386581.Spec : Prop :=
  ∀ n, P1507762481998386581.a n = A038229 n

end A038229

/-! ## A038229.P16110015892236469495

`A038317(A061579(n))`
-/

namespace A038229.P16110015892236469495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038317 (A061579 n).toNat

end

end A038229.P16110015892236469495

namespace A038229

/-- `A038317(A061579(n))` -/
def P16110015892236469495.Spec : Prop :=
  ∀ n, P16110015892236469495.a n = A038229 n

end A038229

/-! ## A038229.P10536933244586083290

`A038265(n)/A130321(n)`
-/

namespace A038229.P10536933244586083290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038265 n : ℚ) / (A130321 n : ℚ)

end

end A038229.P10536933244586083290

namespace A038229

/-- `A038265(n)/A130321(n)` -/
def P10536933244586083290.Spec : Prop :=
  ∀ n, P10536933244586083290.a n = (A038229 n : ℚ)

end A038229

/-! ## A038229.P792314121505718444

`A038301(n)/A140303(n)`
-/

namespace A038229.P792314121505718444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038301 n : ℚ) / (A140303 n : ℚ)

end

end A038229.P792314121505718444

namespace A038229

/-- `A038301(n)/A140303(n)` -/
def P792314121505718444.Spec : Prop :=
  ∀ n, P792314121505718444.a n = (A038229 n : ℚ)

end A038229

/-! ## A038229.P4954725329417644614

`gcd(A038265(n), A038301(n))`
-/

namespace A038229.P4954725329417644614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038265 n) (A038301 n)

end

end A038229.P4954725329417644614

namespace A038229

/-- `gcd(A038265(n), A038301(n))` -/
def P4954725329417644614.Spec : Prop :=
  ∀ n, (P4954725329417644614.a n : ℤ) = A038229 n

end A038229

/-! ## A038229.P2928717842320725972

`sqrt(A013618(n))*sqrt(A038301(n))`
-/

namespace A038229.P2928717842320725972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A013618 n : ℝ) * Real.sqrt (A038301 n : ℝ)

end

end A038229.P2928717842320725972

namespace A038229

/-- `sqrt(A013618(n))*sqrt(A038301(n))` -/
def P2928717842320725972.Spec : Prop :=
  ∀ n, P2928717842320725972.a n = (A038229 n : ℝ)

end A038229

/-! ## A038229.P17699667233587906257

`A038337(n)/A262616(n)`
-/

namespace A038229.P17699667233587906257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038337 n : ℚ) / (A262616 n : ℚ)

end

end A038229.P17699667233587906257

namespace A038229

/-- `A038337(n)/A262616(n)` -/
def P17699667233587906257.Spec : Prop :=
  ∀ n, P17699667233587906257.a n = (A038229 n : ℚ)

end A038229

/-! ## A038229.P3667727418518239920

`A038337(n)/A130321(n)²`
-/

namespace A038229.P3667727418518239920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038337 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A038229.P3667727418518239920

namespace A038229

/-- `A038337(n)/A130321(n)²` -/
def P3667727418518239920.Spec : Prop :=
  ∀ n, P3667727418518239920.a n = (A038229 n : ℚ)

end A038229

/-! ## A038229.P17555192448663278445

`sqrt(A013618(n)*A038301(n))`
-/

namespace A038229.P17555192448663278445
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A013618 n * A038301 n : ℝ)

end

end A038229.P17555192448663278445

namespace A038229

/-- `sqrt(A013618(n)*A038301(n))` -/
def P17555192448663278445.Spec : Prop :=
  ∀ n, P17555192448663278445.a n = (A038229 n : ℝ)

end A038229

/-!
# A038230: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*12^j.

The programs for A038230, the canonical program `A038230.P9041281356629012167` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038230 has offset 0).

The definition of A038230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3807 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038230.P9041281356629012167

`A038224(n)*A059268(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038230

/-- `A038224(n)*A059268(n)` -/
def P9041281356629012167.Spec : Prop :=
  ∀ n, P9041281356629012167.a n = A038230 n

theorem P9041281356629012167.correct : P9041281356629012167.Spec := by
  intro n
  simp only [A038230]

end A038230

/-! ## A038230.P894819439374831541

`A013611(n)*A098355(n)`
-/

namespace A038230.P894819439374831541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 n * A098355 n

end

end A038230.P894819439374831541

namespace A038230

/-- `A013611(n)*A098355(n)` -/
def P894819439374831541.Spec : Prop :=
  ∀ n, P894819439374831541.a n = A038230 n

end A038230

/-! ## A038230.P11426855301072495847

`A013609(n)*A100852(n)`
-/

namespace A038230.P11426855301072495847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A100852 n

end

end A038230.P11426855301072495847

namespace A038230

/-- `A013609(n)*A100852(n)` -/
def P11426855301072495847.Spec : Prop :=
  ∀ n, P11426855301072495847.a n = A038230 n

end A038230

/-! ## A038230.P11018982364797700807

`A013619(n)*A140303(n)`
-/

namespace A038230.P11018982364797700807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013619 n * A140303 n

end

end A038230.P11018982364797700807

namespace A038230

/-- `A013619(n)*A140303(n)` -/
def P11018982364797700807.Spec : Prop :=
  ∀ n, P11018982364797700807.a n = A038230 n

end A038230

/-! ## A038230.P14518541888732400242

`A013613(n)*A175840(n)`
-/

namespace A038230.P14518541888732400242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 n * A175840 n

end

end A038230.P14518541888732400242

namespace A038230

/-- `A013613(n)*A175840(n)` -/
def P14518541888732400242.Spec : Prop :=
  ∀ n, P14518541888732400242.a n = A038230 n

end A038230

/-! ## A038230.P13880555106356558581

`A013610(n)*A356036(n)`
-/

namespace A038230.P13880555106356558581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A356036 n

end

end A038230.P13880555106356558581

namespace A038230

/-- `A013610(n)*A356036(n)` -/
def P13880555106356558581.Spec : Prop :=
  ∀ n, P13880555106356558581.a n = A038230 n

end A038230

/-! ## A038230.P2868450819986106545

`lcm(A013611(n), A038221(n))`
-/

namespace A038230.P2868450819986106545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013611 n) (A038221 n)

end

end A038230.P2868450819986106545

namespace A038230

/-- `lcm(A013611(n), A038221(n))` -/
def P2868450819986106545.Spec : Prop :=
  ∀ n, (P2868450819986106545.a n : ℤ) = A038230 n

end A038230

/-! ## A038230.P5398212669447981061

`lcm(A013619(n), A038224(n))`
-/

namespace A038230.P5398212669447981061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013619 n) (A038224 n)

end

end A038230.P5398212669447981061

namespace A038230

/-- `lcm(A013619(n), A038224(n))` -/
def P5398212669447981061.Spec : Prop :=
  ∀ n, (P5398212669447981061.a n : ℤ) = A038230 n

end A038230

/-! ## A038230.P6004437864537233919

`A059268(n)²*A038221(n)`
-/

namespace A038230.P6004437864537233919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038221 n

end

end A038230.P6004437864537233919

namespace A038230

/-- `A059268(n)²*A038221(n)` -/
def P6004437864537233919.Spec : Prop :=
  ∀ n, P6004437864537233919.a n = A038230 n

end A038230

/-! ## A038230.P4601529797860230283

`12^A002262(n)*A027465(n)`
-/

namespace A038230.P4601529797860230283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (A002262 n : ℤ) * (A027465 n : ℚ)

end

end A038230.P4601529797860230283

namespace A038230

/-- `12^A002262(n)*A027465(n)` -/
def P4601529797860230283.Spec : Prop :=
  ∀ n, P4601529797860230283.a n = (A038230 n : ℚ)

end A038230

/-! ## A038230.P1306270619965871379

`A013613(n)/A007318(n)*A038220(n)`
-/

namespace A038230.P1306270619965871379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A007318 n : ℚ) * (A038220 n : ℚ)

end

end A038230.P1306270619965871379

namespace A038230

/-- `A013613(n)/A007318(n)*A038220(n)` -/
def P1306270619965871379.Spec : Prop :=
  ∀ n, P1306270619965871379.a n = (A038230 n : ℚ)

end A038230

/-! ## A038230.P17968908718684839613

`A038224(n)/A038221(n)*A038224(n)`
-/

namespace A038230.P17968908718684839613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038224 n : ℚ) / (A038221 n : ℚ) * (A038224 n : ℚ)

end

end A038230.P17968908718684839613

namespace A038230

/-- `A038224(n)/A038221(n)*A038224(n)` -/
def P17968908718684839613.Spec : Prop :=
  ∀ n, P17968908718684839613.a n = (A038230 n : ℚ)

end A038230

/-! ## A038230.P5384186115087353456

`(A013609(n)/A007318(n))²*A038221(n)`
-/

namespace A038230.P5384186115087353456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013609 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A038221 n : ℚ)

end

end A038230.P5384186115087353456

namespace A038230

/-- `(A013609(n)/A007318(n))²*A038221(n)` -/
def P5384186115087353456.Spec : Prop :=
  ∀ n, P5384186115087353456.a n = (A038230 n : ℚ)

end A038230

/-! ## A038230.P18118879157254414215

`A038329(A061579(n))`
-/

namespace A038230.P18118879157254414215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038329 (A061579 n).toNat

end

end A038230.P18118879157254414215

namespace A038230

/-- `A038329(A061579(n))` -/
def P18118879157254414215.Spec : Prop :=
  ∀ n, P18118879157254414215.a n = A038230 n

end A038230

/-! ## A038230.P15765604345547625471

`A013619(n)/A038243(n)*A027467(n)`
-/

namespace A038230.P15765604345547625471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013619 n : ℚ) / (A038243 n : ℚ) * (A027467 n : ℚ)

end

end A038230.P15765604345547625471

namespace A038230

/-- `A013619(n)/A038243(n)*A027467(n)` -/
def P15765604345547625471.Spec : Prop :=
  ∀ n, P15765604345547625471.a n = (A038230 n : ℚ)

end A038230

/-! ## A038230.P1698589699999466250

`A038266(n)/A130321(n)`
-/

namespace A038230.P1698589699999466250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038266 n : ℚ) / (A130321 n : ℚ)

end

end A038230.P1698589699999466250

namespace A038230

/-- `A038266(n)/A130321(n)` -/
def P1698589699999466250.Spec : Prop :=
  ∀ n, P1698589699999466250.a n = (A038230 n : ℚ)

end A038230

/-! ## A038230.P13228321627423655719

`A038302(n)/A140303(n)`
-/

namespace A038230.P13228321627423655719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038302 n : ℚ) / (A140303 n : ℚ)

end

end A038230.P13228321627423655719

namespace A038230

/-- `A038302(n)/A140303(n)` -/
def P13228321627423655719.Spec : Prop :=
  ∀ n, P13228321627423655719.a n = (A038230 n : ℚ)

end A038230

/-! ## A038230.P13163135370902454699

`gcd(A038266(n), A038302(n))`
-/

namespace A038230.P13163135370902454699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038266 n) (A038302 n)

end

end A038230.P13163135370902454699

namespace A038230

/-- `gcd(A038266(n), A038302(n))` -/
def P13163135370902454699.Spec : Prop :=
  ∀ n, (P13163135370902454699.a n : ℤ) = A038230 n

end A038230

/-! ## A038230.P12242252521189286220

`A038338(n)/A262616(n)`
-/

namespace A038230.P12242252521189286220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038338 n : ℚ) / (A262616 n : ℚ)

end

end A038230.P12242252521189286220

namespace A038230

/-- `A038338(n)/A262616(n)` -/
def P12242252521189286220.Spec : Prop :=
  ∀ n, P12242252521189286220.a n = (A038230 n : ℚ)

end A038230

/-! ## A038230.P15023577035737165191

`A038338(n)/A130321(n)²`
-/

namespace A038230.P15023577035737165191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038338 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A038230.P15023577035737165191

namespace A038230

/-- `A038338(n)/A130321(n)²` -/
def P15023577035737165191.Spec : Prop :=
  ∀ n, P15023577035737165191.a n = (A038230 n : ℚ)

end A038230

/-!
# A038231: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j).

The programs for A038231, the canonical program `A038231.P6491995258535975940` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038231 has offset 0).

The definition of A038231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038231.P6491995258535975940

`A038207(n)*A130321(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038231

/-- `A038207(n)*A130321(n)` -/
def P6491995258535975940.Spec : Prop :=
  ∀ n, P6491995258535975940.a n = A038231 n

theorem P6491995258535975940.correct : P6491995258535975940.Spec := by
  intro n
  simp only [A038231]

end A038231

/-! ## A038231.P6151899659451900351

`A007318(n)*A262616(n)`
-/

namespace A038231.P6151899659451900351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A262616 n

end

end A038231.P6151899659451900351

namespace A038231

/-- `A007318(n)*A262616(n)` -/
def P6151899659451900351.Spec : Prop :=
  ∀ n, P6151899659451900351.a n = A038231 n

end A038231

/-! ## A038231.P7854044459777646325

`A130321(n)²*A007318(n)`
-/

namespace A038231.P7854044459777646325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A007318 n

end

end A038231.P7854044459777646325

namespace A038231

/-- `A130321(n)²*A007318(n)` -/
def P7854044459777646325.Spec : Prop :=
  ∀ n, P7854044459777646325.a n = A038231 n

end A038231

/-! ## A038231.P3403108447804170216

`A130321(n)²*Δ[A102363(n)]`
-/

namespace A038231.P3403108447804170216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A038231.P3403108447804170216

namespace A038231

/-- `A130321(n)²*Δ[A102363(n)]` -/
def P3403108447804170216.Spec : Prop :=
  ∀ n, P3403108447804170216.a n = A038231 n

end A038231

/-! ## A038231.P15727520648346319147

`(A014473(n)+1)*A130321(n)²`
-/

namespace A038231.P15727520648346319147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A130321 n ^ 2

end

end A038231.P15727520648346319147

namespace A038231

/-- `(A014473(n)+1)*A130321(n)²` -/
def P15727520648346319147.Spec : Prop :=
  ∀ n, P15727520648346319147.a n = A038231 n

end A038231

/-! ## A038231.P14730030459441436979

`A028326(n)/2*A130321(n)²`
-/

namespace A038231.P14730030459441436979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A130321 n ^ 2 : ℚ)

end

end A038231.P14730030459441436979

namespace A038231

/-- `A028326(n)/2*A130321(n)²` -/
def P14730030459441436979.Spec : Prop :=
  ∀ n, P14730030459441436979.a n = (A038231 n : ℚ)

end A038231

/-! ## A038231.P4367087524277609829

`A000079(A025581(n))²*A007318(n)`
-/

namespace A038231.P4367087524277609829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat ^ 2 * A007318 n

end

end A038231.P4367087524277609829

namespace A038231

/-- `A000079(A025581(n))²*A007318(n)` -/
def P4367087524277609829.Spec : Prop :=
  ∀ n, P4367087524277609829.a n = A038231 n

end A038231

/-! ## A038231.P17719077768529826508

`A000079(2*A025581(n))*A007318(n)`
-/

namespace A038231.P17719077768529826508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A025581 n).toNat * A007318 n

end

end A038231.P17719077768529826508

namespace A038231

/-- `A000079(2*A025581(n))*A007318(n)` -/
def P17719077768529826508.Spec : Prop :=
  ∀ n, P17719077768529826508.a n = A038231 n

end A038231

/-! ## A038231.P1053026320035530383

`A038207(n)/A007318(n)*A038207(n)`
-/

namespace A038231.P1053026320035530383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A007318 n : ℚ) * (A038207 n : ℚ)

end

end A038231.P1053026320035530383

namespace A038231

/-- `A038207(n)/A007318(n)*A038207(n)` -/
def P1053026320035530383.Spec : Prop :=
  ∀ n, P1053026320035530383.a n = (A038231 n : ℚ)

end A038231

/-! ## A038231.P9643639820300565769

`A065109(n)/A007318(n)*A065109(n)`
-/

namespace A038231.P9643639820300565769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065109 n : ℚ) / (A007318 n : ℚ) * (A065109 n : ℚ)

end

end A038231.P9643639820300565769

namespace A038231

/-- `A065109(n)/A007318(n)*A065109(n)` -/
def P9643639820300565769.Spec : Prop :=
  ∀ n, P9643639820300565769.a n = (A038231 n : ℚ)

end A038231

/-! ## A038231.P10454290336818764962

`gcd(A038207(n), A131817(n))*A038207(n)`
-/

namespace A038231.P10454290336818764962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A038207 n) (A131817 n) : ℤ) * A038207 n

end

end A038231.P10454290336818764962

namespace A038231

/-- `gcd(A038207(n), A131817(n))*A038207(n)` -/
def P10454290336818764962.Spec : Prop :=
  ∀ n, P10454290336818764962.a n = A038231 n

end A038231

/-! ## A038231.P10643206246115353186

`(A038208(n)/A013609(n))²*A007318(n)`
-/

namespace A038231.P10643206246115353186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038208 n : ℚ) / (A013609 n : ℚ)) ^ 2 * (A007318 n : ℚ)

end

end A038231.P10643206246115353186

namespace A038231

/-- `(A038208(n)/A013609(n))²*A007318(n)` -/
def P10643206246115353186.Spec : Prop :=
  ∀ n, P10643206246115353186.a n = (A038231 n : ℚ)

end A038231

/-! ## A038231.P3118531926091774678

`A013611(A061579(n))`
-/

namespace A038231.P3118531926091774678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 (A061579 n).toNat

end

end A038231.P3118531926091774678

namespace A038231

/-- `A013611(A061579(n))` -/
def P3118531926091774678.Spec : Prop :=
  ∀ n, P3118531926091774678.a n = A038231 n

end A038231

/-! ## A038231.P10293080211058739832

`A013611(A038722(n+1)-1)`
-/

namespace A038231.P10293080211058739832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 (A038722 (n + 1) - 1).toNat

end

end A038231.P10293080211058739832

namespace A038231

/-- `A013611(A038722(n+1)-1)` -/
def P10293080211058739832.Spec : Prop :=
  ∀ n, P10293080211058739832.a n = A038231 n

end A038231

/-! ## A038231.P15641711906504166734

`A013611(A038722(n+2))`
-/

namespace A038231.P15641711906504166734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 (A038722 (n + 2)).toNat

end

end A038231.P15641711906504166734

namespace A038231

/-- `A013611(A038722(n+2))` -/
def P15641711906504166734.Spec : Prop :=
  ∀ n, P15641711906504166734.a n = A038231 n

end A038231

/-! ## A038231.P11812046420658872950

`A038232(n)/A059268(n)`
-/

namespace A038231.P11812046420658872950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038232 n : ℚ) / (A059268 n : ℚ)

end

end A038231.P11812046420658872950

namespace A038231

/-- `A038232(n)/A059268(n)` -/
def P11812046420658872950.Spec : Prop :=
  ∀ n, P11812046420658872950.a n = (A038231 n : ℚ)

end A038231

/-! ## A038231.P5583911889746584025

`gcd(A038232(n), A038233(n))`
-/

namespace A038231.P5583911889746584025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038232 n) (A038233 n)

end

end A038231.P5583911889746584025

namespace A038231

/-- `gcd(A038232(n), A038233(n))` -/
def P5583911889746584025.Spec : Prop :=
  ∀ n, (P5583911889746584025.a n : ℤ) = A038231 n

end A038231

/-! ## A038231.P557331308285975809

`A038207(n)/A027465(n)*A038255(n)`
-/

namespace A038231.P557331308285975809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A027465 n : ℚ) * (A038255 n : ℚ)

end

end A038231.P557331308285975809

namespace A038231

/-- `A038207(n)/A027465(n)*A038255(n)` -/
def P557331308285975809.Spec : Prop :=
  ∀ n, P557331308285975809.a n = (A038231 n : ℚ)

end A038231

/-! ## A038231.P4312796245728766914

`A038234(n)/A059268(n)²`
-/

namespace A038231.P4312796245728766914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038234 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038231.P4312796245728766914

namespace A038231

/-- `A038234(n)/A059268(n)²` -/
def P4312796245728766914.Spec : Prop :=
  ∀ n, P4312796245728766914.a n = (A038231 n : ℚ)

end A038231

/-! ## A038231.P721514673593116286

`A038207(n)²/A007318(n)`
-/

namespace A038231.P721514673593116286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n ^ 2 : ℚ) / (A007318 n : ℚ)

end

end A038231.P721514673593116286

namespace A038231

/-- `A038207(n)²/A007318(n)` -/
def P721514673593116286.Spec : Prop :=
  ∀ n, P721514673593116286.a n = (A038231 n : ℚ)

end A038231

/-!
# A038232: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*2^j.

The programs for A038232, the canonical program `A038232.P2014966778022240931` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038232 has offset 0).

The definition of A038232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8557 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038232.P2014966778022240931

`A038231(n)*A059268(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038232

/-- `A038231(n)*A059268(n)` -/
def P2014966778022240931.Spec : Prop :=
  ∀ n, P2014966778022240931.a n = A038232 n

theorem P2014966778022240931.correct : P2014966778022240931.Spec := by
  intro n
  simp only [A038232]

end A038232

/-! ## A038232.P14214740899528158549

`A038208(n)*A130321(n)`
-/

namespace A038232.P14214740899528158549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n * A130321 n

end

end A038232.P14214740899528158549

namespace A038232

/-- `A038208(n)*A130321(n)` -/
def P14214740899528158549.Spec : Prop :=
  ∀ n, P14214740899528158549.a n = A038232 n

end A038232

/-! ## A038232.P11985577541580649223

`A038207(n)*A137688(n)`
-/

namespace A038232.P11985577541580649223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A137688 n

end

end A038232.P11985577541580649223

namespace A038232

/-- `A038207(n)*A137688(n)` -/
def P11985577541580649223.Spec : Prop :=
  ∀ n, P11985577541580649223.a n = A038232 n

end A038232

/-! ## A038232.P4248107054426847711

`A013609(n)*A262616(n)`
-/

namespace A038232.P4248107054426847711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A262616 n

end

end A038232.P4248107054426847711

namespace A038232

/-- `A013609(n)*A262616(n)` -/
def P4248107054426847711.Spec : Prop :=
  ∀ n, P4248107054426847711.a n = A038232 n

end A038232

/-! ## A038232.P2017747845014412365

`abs(A065109(n)*A137688(n))`
-/

namespace A038232.P2017747845014412365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065109 n * A137688 n|

end

end A038232.P2017747845014412365

namespace A038232

/-- `abs(A065109(n)*A137688(n))` -/
def P2017747845014412365.Spec : Prop :=
  ∀ n, P2017747845014412365.a n = A038232 n

end A038232

/-! ## A038232.P710245790757801114

`A130321(n)²*A013609(n)`
-/

namespace A038232.P710245790757801114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013609 n

end

end A038232.P710245790757801114

namespace A038232

/-- `A130321(n)²*A013609(n)` -/
def P710245790757801114.Spec : Prop :=
  ∀ n, P710245790757801114.a n = A038232 n

end A038232

/-! ## A038232.P8191467234078848511

`Δ[A007664(n)]*A038207(n)`
-/

namespace A038232.P8191467234078848511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038207 n

end

end A038232.P8191467234078848511

namespace A038232

/-- `Δ[A007664(n)]*A038207(n)` -/
def P8191467234078848511.Spec : Prop :=
  ∀ n, P8191467234078848511.a n = A038232 n

end A038232

/-! ## A038232.P17533759367533562249

`A038207(n-A002262(n))*A038207(n)`
-/

namespace A038232.P17533759367533562249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 ((n : ℤ) - A002262 n).toNat * A038207 n

end

end A038232.P17533759367533562249

namespace A038232

/-- `A038207(n-A002262(n))*A038207(n)` -/
def P17533759367533562249.Spec : Prop :=
  ∀ n, P17533759367533562249.a n = A038232 n

end A038232

/-! ## A038232.P7402383134217893472

`A038207(n)*A059268(n)*A130321(n)`
-/

namespace A038232.P7402383134217893472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A059268 n * A130321 n

end

end A038232.P7402383134217893472

namespace A038232

/-- `A038207(n)*A059268(n)*A130321(n)` -/
def P7402383134217893472.Spec : Prop :=
  ∀ n, P7402383134217893472.a n = A038232 n

end A038232

/-! ## A038232.P1187380297135642663

`A038208(n)/A013609(n)*A038208(n)`
-/

namespace A038232.P1187380297135642663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A013609 n : ℚ) * (A038208 n : ℚ)

end

end A038232.P1187380297135642663

namespace A038232

/-- `A038208(n)/A013609(n)*A038208(n)` -/
def P1187380297135642663.Spec : Prop :=
  ∀ n, P1187380297135642663.a n = (A038232 n : ℚ)

end A038232

/-! ## A038232.P5911395067072448933

`A007318(n)*A059268(n)*A130321(n)²`
-/

namespace A038232.P5911395067072448933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A059268 n * A130321 n ^ 2

end

end A038232.P5911395067072448933

namespace A038232

/-- `A007318(n)*A059268(n)*A130321(n)²` -/
def P5911395067072448933.Spec : Prop :=
  ∀ n, P5911395067072448933.a n = A038232 n

end A038232

/-! ## A038232.P7198614066886752996

`(A038207(n)/A007318(n))²*A013609(n)`
-/

namespace A038232.P7198614066886752996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038207 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A013609 n : ℚ)

end

end A038232.P7198614066886752996

namespace A038232

/-- `(A038207(n)/A007318(n))²*A013609(n)` -/
def P7198614066886752996.Spec : Prop :=
  ∀ n, P7198614066886752996.a n = (A038232 n : ℚ)

end A038232

/-! ## A038232.P8426444401717813542

`(A114192(n)/A085478(n))²*A013609(n)`
-/

namespace A038232.P8426444401717813542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A114192 n : ℚ) / (A085478 n : ℚ)) ^ 2 * (A013609 n : ℚ)

end

end A038232.P8426444401717813542

namespace A038232

/-- `(A114192(n)/A085478(n))²*A013609(n)` -/
def P8426444401717813542.Spec : Prop :=
  ∀ n, P8426444401717813542.a n = (A038232 n : ℚ)

end A038232

/-! ## A038232.P16440674871477293271

`A038207(n)*A038207(A061579(A025581(n)+n))`
-/

namespace A038232.P16440674871477293271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A038207 (A061579 (A025581 n + (n : ℤ)).toNat).toNat

end

end A038232.P16440674871477293271

namespace A038232

/-- `A038207(n)*A038207(A061579(A025581(n)+n))` -/
def P16440674871477293271.Spec : Prop :=
  ∀ n, P16440674871477293271.a n = A038232 n

end A038232

/-! ## A038232.P5047125310602535917

`A038207(n)*A038207(A061579(n)-A025581(n))`
-/

namespace A038232.P5047125310602535917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A038207 (A061579 n - A025581 n).toNat

end

end A038232.P5047125310602535917

namespace A038232

/-- `A038207(n)*A038207(A061579(n)-A025581(n))` -/
def P5047125310602535917.Spec : Prop :=
  ∀ n, P5047125310602535917.a n = A038232 n

end A038232

/-! ## A038232.P17522603247995509144

`A038210(A061579(n))`
-/

namespace A038232.P17522603247995509144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038210 (A061579 n).toNat

end

end A038232.P17522603247995509144

namespace A038232

/-- `A038210(A061579(n))` -/
def P17522603247995509144.Spec : Prop :=
  ∀ n, P17522603247995509144.a n = A038232 n

end A038232

/-! ## A038232.P17160091905638953736

`A036565(A112367(n))*A038231(n)`
-/

namespace A038232.P17160091905638953736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036565 (A112367 n).toNat * A038231 n

end

end A038232.P17160091905638953736

namespace A038232

/-- `A036565(A112367(n))*A038231(n)` -/
def P17160091905638953736.Spec : Prop :=
  ∀ n, P17160091905638953736.a n = A038232 n

end A038232

/-! ## A038232.P13831399265976565566

`A038234(n)/A059268(n)`
-/

namespace A038232.P13831399265976565566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038234 n : ℚ) / (A059268 n : ℚ)

end

end A038232.P13831399265976565566

namespace A038232

/-- `A038234(n)/A059268(n)` -/
def P13831399265976565566.Spec : Prop :=
  ∀ n, P13831399265976565566.a n = (A038232 n : ℚ)

end A038232

/-! ## A038232.P9097273617681990780

`A038207(n)²/A007318(n)*A059268(n)`
-/

namespace A038232.P9097273617681990780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n ^ 2 : ℚ) / (A007318 n : ℚ) * (A059268 n : ℚ)

end

end A038232.P9097273617681990780

namespace A038232

/-- `A038207(n)²/A007318(n)*A059268(n)` -/
def P9097273617681990780.Spec : Prop :=
  ∀ n, P9097273617681990780.a n = (A038232 n : ℚ)

end A038232

/-! ## A038232.P6588116060367233186

`gcd(A038234(n), A038236(n))`
-/

namespace A038232.P6588116060367233186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038234 n) (A038236 n)

end

end A038232.P6588116060367233186

namespace A038232

/-- `gcd(A038234(n), A038236(n))` -/
def P6588116060367233186.Spec : Prop :=
  ∀ n, (P6588116060367233186.a n : ℤ) = A038232 n

end A038232

/-!
# A038233: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*3^j.

The programs for A038233, the canonical program `A038233.P11336662556546498361` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038233 has offset 0).

The definition of A038233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038233.P11336662556546498361

`A036561(n)*A038207(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038233

/-- `A036561(n)*A038207(n)` -/
def P11336662556546498361.Spec : Prop :=
  ∀ n, P11336662556546498361.a n = A038233 n

theorem P11336662556546498361.correct : P11336662556546498361.Spec := by
  intro n
  simp only [A038233]

end A038233

/-! ## A038233.P11542345596498113974

`A013620(n)*A130321(n)`
-/

namespace A038233.P11542345596498113974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A130321 n

end

end A038233.P11542345596498113974

namespace A038233

/-- `A013620(n)*A130321(n)` -/
def P11542345596498113974.Spec : Prop :=
  ∀ n, P11542345596498113974.a n = A038233 n

end A038233

/-! ## A038233.P10877365518575312620

`A013610(n)*A262616(n)`
-/

namespace A038233.P10877365518575312620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A262616 n

end

end A038233.P10877365518575312620

namespace A038233

/-- `A013610(n)*A262616(n)` -/
def P10877365518575312620.Spec : Prop :=
  ∀ n, P10877365518575312620.a n = A038233 n

end A038233

/-! ## A038233.P3585832747771449620

`lcm(A013610(n), A038231(n))`
-/

namespace A038233.P3585832747771449620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038231 n)

end

end A038233.P3585832747771449620

namespace A038233

/-- `lcm(A013610(n), A038231(n))` -/
def P3585832747771449620.Spec : Prop :=
  ∀ n, (P3585832747771449620.a n : ℤ) = A038233 n

end A038233

/-! ## A038233.P3964873331133754095

`abs(A036561(n)*A065109(n))`
-/

namespace A038233.P3964873331133754095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036561 n * A065109 n|

end

end A038233.P3964873331133754095

namespace A038233

/-- `abs(A036561(n)*A065109(n))` -/
def P3964873331133754095.Spec : Prop :=
  ∀ n, P3964873331133754095.a n = A038233 n

end A038233

/-! ## A038233.P9772339671940368141

`A130321(n)²*A013610(n)`
-/

namespace A038233.P9772339671940368141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013610 n

end

end A038233.P9772339671940368141

namespace A038233

/-- `A130321(n)²*A013610(n)` -/
def P9772339671940368141.Spec : Prop :=
  ∀ n, P9772339671940368141.a n = A038233 n

end A038233

/-! ## A038233.P15941950522023213043

`2^A025581(n)*A013620(n)`
-/

namespace A038233.P15941950522023213043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A013620 n : ℚ)

end

end A038233.P15941950522023213043

namespace A038233

/-- `2^A025581(n)*A013620(n)` -/
def P15941950522023213043.Spec : Prop :=
  ∀ n, P15941950522023213043.a n = (A038233 n : ℚ)

end A038233

/-! ## A038233.P5113744447046724220

`4^A025581(n)*A013610(n)`
-/

namespace A038233.P5113744447046724220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A025581 n : ℤ) * (A013610 n : ℚ)

end

end A038233.P5113744447046724220

namespace A038233

/-- `4^A025581(n)*A013610(n)` -/
def P5113744447046724220.Spec : Prop :=
  ∀ n, P5113744447046724220.a n = (A038233 n : ℚ)

end A038233

/-! ## A038233.P727436588615889036

`A059268(A061579(n))²*A013610(n)`
-/

namespace A038233.P727436588615889036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat ^ 2 * A013610 n

end

end A038233.P727436588615889036

namespace A038233

/-- `A059268(A061579(n))²*A013610(n)` -/
def P727436588615889036.Spec : Prop :=
  ∀ n, P727436588615889036.a n = A038233 n

end A038233

/-! ## A038233.P3055878960284434547

`(A038207(n)/A007318(n))²*A013610(n)`
-/

namespace A038233.P3055878960284434547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038207 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A013610 n : ℚ)

end

end A038233.P3055878960284434547

namespace A038233

/-- `(A038207(n)/A007318(n))²*A013610(n)` -/
def P3055878960284434547.Spec : Prop :=
  ∀ n, P3055878960284434547.a n = (A038233 n : ℚ)

end A038233

/-! ## A038233.P1286279123635230332

`A038222(A061579(n))`
-/

namespace A038233.P1286279123635230332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038222 (A061579 n).toNat

end

end A038233.P1286279123635230332

namespace A038233

/-- `A038222(A061579(n))` -/
def P1286279123635230332.Spec : Prop :=
  ∀ n, P1286279123635230332.a n = A038233 n

end A038233

/-! ## A038233.P10988105328925935866

`A038236(n)/A059268(n)`
-/

namespace A038233.P10988105328925935866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n : ℚ) / (A059268 n : ℚ)

end

end A038233.P10988105328925935866

namespace A038233

/-- `A038236(n)/A059268(n)` -/
def P10988105328925935866.Spec : Prop :=
  ∀ n, P10988105328925935866.a n = (A038233 n : ℚ)

end A038233

/-! ## A038233.P17417030024185817248

`A038281(n)/A130321(n)`
-/

namespace A038233.P17417030024185817248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038281 n : ℚ) / (A130321 n : ℚ)

end

end A038233.P17417030024185817248

namespace A038233

/-- `A038281(n)/A130321(n)` -/
def P17417030024185817248.Spec : Prop :=
  ∀ n, P17417030024185817248.a n = (A038233 n : ℚ)

end A038233

/-! ## A038233.P3859886687676110578

`A038257(n)/A038293(n)*A038257(n)`
-/

namespace A038233.P3859886687676110578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038257 n : ℚ) / (A038293 n : ℚ) * (A038257 n : ℚ)

end

end A038233.P3859886687676110578

namespace A038233

/-- `A038257(n)/A038293(n)*A038257(n)` -/
def P3859886687676110578.Spec : Prop :=
  ∀ n, P3859886687676110578.a n = (A038233 n : ℚ)

end A038233

/-! ## A038233.P9522876342257731628

`gcd(A038236(n), A038239(n))`
-/

namespace A038233.P9522876342257731628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038236 n) (A038239 n)

end

end A038233.P9522876342257731628

namespace A038233

/-- `gcd(A038236(n), A038239(n))` -/
def P9522876342257731628.Spec : Prop :=
  ∀ n, (P9522876342257731628.a n : ℤ) = A038233 n

end A038233

/-! ## A038233.P1883612848336486666

`A038284(n)/A137688(n)`
-/

namespace A038233.P1883612848336486666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038284 n : ℚ) / (A137688 n : ℚ)

end

end A038233.P1883612848336486666

namespace A038233

/-- `A038284(n)/A137688(n)` -/
def P1883612848336486666.Spec : Prop :=
  ∀ n, P1883612848336486666.a n = (A038233 n : ℚ)

end A038233

/-! ## A038233.P18307847292440289592

`A038329(n)/A140303(n)`
-/

namespace A038233.P18307847292440289592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038329 n : ℚ) / (A140303 n : ℚ)

end

end A038233.P18307847292440289592

namespace A038233

/-- `A038329(n)/A140303(n)` -/
def P18307847292440289592.Spec : Prop :=
  ∀ n, P18307847292440289592.a n = (A038233 n : ℚ)

end A038233

/-! ## A038233.P11145573719429826755

`gcd(A038281(n), A038329(n))`
-/

namespace A038233.P11145573719429826755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038281 n) (A038329 n)

end

end A038233.P11145573719429826755

namespace A038233

/-- `gcd(A038281(n), A038329(n))` -/
def P11145573719429826755.Spec : Prop :=
  ∀ n, (P11145573719429826755.a n : ℤ) = A038233 n

end A038233

/-! ## A038233.P3481843365440249263

`A038242(n)/A059268(n)²`
-/

namespace A038233.P3481843365440249263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038242 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038233.P3481843365440249263

namespace A038233

/-- `A038242(n)/A059268(n)²` -/
def P3481843365440249263.Spec : Prop :=
  ∀ n, P3481843365440249263.a n = (A038233 n : ℚ)

end A038233

/-! ## A038233.P8397196622726507596

`A038287(n)/A036561(n)`
-/

namespace A038233.P8397196622726507596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038287 n : ℚ) / (A036561 n : ℚ)

end

end A038233.P8397196622726507596

namespace A038233

/-- `A038287(n)/A036561(n)` -/
def P8397196622726507596.Spec : Prop :=
  ∀ n, P8397196622726507596.a n = (A038233 n : ℚ)

end A038233

/-!
# A038234: Triangle whose (n, k)-th entry is binomial(n, k)*4^(n - k)*4^k.

The programs for A038234, the canonical program `A038234.P3698139505430010627` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038234 has offset 0).

The definition of A038234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038234.P3698139505430010627

`A038232(n)*A059268(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038234

/-- `A038232(n)*A059268(n)` -/
def P3698139505430010627.Spec : Prop :=
  ∀ n, P3698139505430010627.a n = A038234 n

theorem P3698139505430010627.correct : P3698139505430010627.Spec := by
  intro n
  simp only [A038234]

end A038234

/-! ## A038234.P17499736638088202931

`A038210(n)*A130321(n)`
-/

namespace A038234.P17499736638088202931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038210 n * A130321 n

end

end A038234.P17499736638088202931

namespace A038234

/-- `A038210(n)*A130321(n)` -/
def P17499736638088202931.Spec : Prop :=
  ∀ n, P17499736638088202931.a n = A038234 n

end A038234

/-! ## A038234.P16500339866597898368

`A038208(n)*A137688(n)`
-/

namespace A038234.P16500339866597898368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n * A137688 n

end

end A038234.P16500339866597898368

namespace A038234

/-- `A038208(n)*A137688(n)` -/
def P16500339866597898368.Spec : Prop :=
  ∀ n, P16500339866597898368.a n = A038234 n

end A038234

/-! ## A038234.P6626312276542389443

`A055374(n)*A123932(n)`
-/

namespace A038234.P6626312276542389443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055374 n * A123932 n

end

end A038234.P6626312276542389443

namespace A038234

/-- `A055374(n)*A123932(n)` -/
def P6626312276542389443.Spec : Prop :=
  ∀ n, P6626312276542389443.a n = A038234 n

end A038234

/-! ## A038234.P2148588856197616905

`A013611(n)*A262616(n)`
-/

namespace A038234.P2148588856197616905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 n * A262616 n

end

end A038234.P2148588856197616905

namespace A038234

/-- `A013611(n)*A262616(n)` -/
def P2148588856197616905.Spec : Prop :=
  ∀ n, P2148588856197616905.a n = A038234 n

end A038234

/-! ## A038234.P6804293867297041735

`A038207(n)*A368043(n)`
-/

namespace A038234.P6804293867297041735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A368043 n

end

end A038234.P6804293867297041735

namespace A038234

/-- `A038207(n)*A368043(n)` -/
def P6804293867297041735.Spec : Prop :=
  ∀ n, P6804293867297041735.a n = A038234 n

end A038234

/-! ## A038234.P5756349389238068730

`A059268(n)²*A038231(n)`
-/

namespace A038234.P5756349389238068730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038231 n

end

end A038234.P5756349389238068730

namespace A038234

/-- `A059268(n)²*A038231(n)` -/
def P5756349389238068730.Spec : Prop :=
  ∀ n, P5756349389238068730.a n = A038234 n

end A038234

/-! ## A038234.P14587347281656692959

`A130321(n)²*A013611(n)`
-/

namespace A038234.P14587347281656692959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013611 n

end

end A038234.P14587347281656692959

namespace A038234

/-- `A130321(n)²*A013611(n)` -/
def P14587347281656692959.Spec : Prop :=
  ∀ n, P14587347281656692959.a n = A038234 n

end A038234

/-! ## A038234.P5629626050408510526

`A137688(n)²*A007318(n)`
-/

namespace A038234.P5629626050408510526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 * A007318 n

end

end A038234.P5629626050408510526

namespace A038234

/-- `A137688(n)²*A007318(n)` -/
def P5629626050408510526.Spec : Prop :=
  ∀ n, P5629626050408510526.a n = A038234 n

end A038234

/-! ## A038234.P1398823249306462058

`4^A003056(n)*A007318(n)`
-/

namespace A038234.P1398823249306462058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A003056 n : ℤ) * (A007318 n : ℚ)

end

end A038234.P1398823249306462058

namespace A038234

/-- `4^A003056(n)*A007318(n)` -/
def P1398823249306462058.Spec : Prop :=
  ∀ n, P1398823249306462058.a n = (A038234 n : ℚ)

end A038234

/-! ## A038234.P6508213939467887926

`abs(A108086(n))*A137688(n)²`
-/

namespace A038234.P6508213939467887926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| * A137688 n ^ 2

end

end A038234.P6508213939467887926

namespace A038234

/-- `abs(A108086(n))*A137688(n)²` -/
def P6508213939467887926.Spec : Prop :=
  ∀ n, P6508213939467887926.a n = A038234 n

end A038234

/-! ## A038234.P9900766907762546829

`A137688(n)²*sqrt(A008459(n))`
-/

namespace A038234.P9900766907762546829
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A137688 n ^ 2 : ℝ) * Real.sqrt (A008459 n : ℝ)

end

end A038234.P9900766907762546829

namespace A038234

/-- `A137688(n)²*sqrt(A008459(n))` -/
def P9900766907762546829.Spec : Prop :=
  ∀ n, P9900766907762546829.a n = (A038234 n : ℝ)

end A038234

/-! ## A038234.P13530664553203317584

`Δ[A007664(n)]²*A007318(n)`
-/

namespace A038234.P13530664553203317584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A007318 n

end

end A038234.P13530664553203317584

namespace A038234

/-- `Δ[A007664(n)]²*A007318(n)` -/
def P13530664553203317584.Spec : Prop :=
  ∀ n, P13530664553203317584.a n = A038234 n

end A038234

/-! ## A038234.P5177484506322058053

`(A140513(n)/2)²*A007318(n)`
-/

namespace A038234.P5177484506322058053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A140513 n : ℚ) / 2) ^ 2 * (A007318 n : ℚ)

end

end A038234.P5177484506322058053

namespace A038234

/-- `(A140513(n)/2)²*A007318(n)` -/
def P5177484506322058053.Spec : Prop :=
  ∀ n, P5177484506322058053.a n = (A038234 n : ℚ)

end A038234

/-! ## A038234.P5350863280827243111

`A028326(n)/2*A137688(n)²`
-/

namespace A038234.P5350863280827243111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A137688 n ^ 2 : ℚ)

end

end A038234.P5350863280827243111

namespace A038234

/-- `A028326(n)/2*A137688(n)²` -/
def P5350863280827243111.Spec : Prop :=
  ∀ n, P5350863280827243111.a n = (A038234 n : ℚ)

end A038234

/-! ## A038234.P12103855337745729952

`A000302(A003056(n))*A007318(n)`
-/

namespace A038234.P12103855337745729952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A003056 n).toNat * A007318 n

end

end A038234.P12103855337745729952

namespace A038234

/-- `A000302(A003056(n))*A007318(n)` -/
def P12103855337745729952.Spec : Prop :=
  ∀ n, P12103855337745729952.a n = A038234 n

end A038234

/-! ## A038234.P14816619315196975793

`A038231(n)*A038231(A112367(n))`
-/

namespace A038234.P14816619315196975793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A038231 (A112367 n).toNat

end

end A038234.P14816619315196975793

namespace A038234

/-- `A038231(n)*A038231(A112367(n))` -/
def P14816619315196975793.Spec : Prop :=
  ∀ n, P14816619315196975793.a n = A038234 n

end A038234

/-! ## A038234.P5978780412125464739

`A016116(2*A003056(n))*A038208(n)`
-/

namespace A038234.P5978780412125464739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A003056 n).toNat * A038208 n

end

end A038234.P5978780412125464739

namespace A038234

/-- `A016116(2*A003056(n))*A038208(n)` -/
def P5978780412125464739.Spec : Prop :=
  ∀ n, P5978780412125464739.a n = A038234 n

end A038234

/-! ## A038234.P4464538488638661795

`A038208(n)/A007318(n)*A038208(n)`
-/

namespace A038234.P4464538488638661795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A007318 n : ℚ) * (A038208 n : ℚ)

end

end A038234.P4464538488638661795

namespace A038234

/-- `A038208(n)/A007318(n)*A038208(n)` -/
def P4464538488638661795.Spec : Prop :=
  ∀ n, P4464538488638661795.a n = (A038234 n : ℚ)

end A038234

/-! ## A038234.P17416242687366993855

`A102363(A057944(n))²*Δ[A102363(n)]`
-/

namespace A038234.P17416242687366993855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (A057944 n).toNat ^ 2 * (f1 (n + 1) - f1 n)

end

end A038234.P17416242687366993855

namespace A038234

/-- `A102363(A057944(n))²*Δ[A102363(n)]` -/
def P17416242687366993855.Spec : Prop :=
  ∀ n, P17416242687366993855.a n = A038234 n

end A038234

/-!
# A038235: Bottom line of 4-wave sequence A038197, also bisection of A006357.

The programs for A038235, the canonical program `A038235.P17635700741880459798` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038235 has offset 0).

The definition of A038235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038235.P17635700741880459798

`10*a(n-1)-15*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=1, a(1)=10, a(2)=85, a(3)=707`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038235

/-- `10*a(n-1)-15*a(n-2)+7*a(n-3)-a(n-4)` -/
def P17635700741880459798.Spec : Prop :=
  ∀ n, P17635700741880459798.a n = A038235 n

theorem P17635700741880459798.correct : P17635700741880459798.Spec := by
  intro n
  simp only [A038235]

end A038235

/-! ## A038235.P7526272337935439949

`ogf(1/(1-10x+15x^2-7x^3+x^4))`
-/

namespace A038235.P7526272337935439949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 15, -7, 1] n

end

end A038235.P7526272337935439949

namespace A038235

/-- `ogf(1/(1-10x+15x^2-7x^3+x^4))` -/
def P7526272337935439949.Spec : Prop :=
  ∀ n, P7526272337935439949.a n = A038235 n

end A038235

/-! ## A038235.P11563852865336293480

`A006357(2*n)`
-/

namespace A038235.P11563852865336293480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006357 (2 * n)

end

end A038235.P11563852865336293480

namespace A038235

/-- `A006357(2*n)` -/
def P11563852865336293480.Spec : Prop :=
  ∀ n, P11563852865336293480.a n = A038235 n

end A038235

/-! ## A038235.P9573778360689674471

`A373568(2*n)`
-/

namespace A038235.P9573778360689674471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373568 (2 * n)

end

end A038235.P9573778360689674471

namespace A038235

/-- `A373568(2*n)` -/
def P9573778360689674471.Spec : Prop :=
  ∀ n, P9573778360689674471.a n = A038235 n

end A038235

/-! ## A038235.P2124639915383862746

`∑[A038249(2*n)]`
-/

namespace A038235.P2124639915383862746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038249 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038235.P2124639915383862746

namespace A038235

/-- `∑[A038249(2*n)]` -/
def P2124639915383862746.Spec : Prop :=
  ∀ n, P2124639915383862746.a n = A038235 n

end A038235

/-! ## A038235.P7560882691883163090

`∑[A076264(2*n)]`
-/

namespace A038235.P7560882691883163090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038235.P7560882691883163090

namespace A038235

/-- `∑[A076264(2*n)]` -/
def P7560882691883163090.Spec : Prop :=
  ∀ n, P7560882691883163090.a n = A038235 n

end A038235

/-! ## A038235.P12890448757346025480

`∑[A123941(Δ[n²])]`
-/

namespace A038235.P12890448757346025480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038235.P12890448757346025480

namespace A038235

/-- `∑[A123941(Δ[n²])]` -/
def P12890448757346025480.Spec : Prop :=
  ∀ n, P12890448757346025480.a n = A038235 n

end A038235

/-! ## A038235.P10817471098550068133

`A038197(6*n+3)`
-/

namespace A038235.P10817471098550068133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (6 * n + 3)

end

end A038235.P10817471098550068133

namespace A038235

/-- `A038197(6*n+3)` -/
def P10817471098550068133.Spec : Prop :=
  ∀ n, P10817471098550068133.a n = A038235 n

end A038235

/-! ## A038235.P3823103109228995372

`A187506(6*n+5)`
-/

namespace A038235.P3823103109228995372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (6 * n + 5)

end

end A038235.P3823103109228995372

namespace A038235

/-- `A187506(6*n+5)` -/
def P3823103109228995372.Spec : Prop :=
  ∀ n, P3823103109228995372.a n = A038235 n

end A038235

/-! ## A038235.P8343242703418576353

`A187503(6*n+8)`
-/

namespace A038235.P8343242703418576353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (6 * n + 8)

end

end A038235.P8343242703418576353

namespace A038235

/-- `A187503(6*n+8)` -/
def P8343242703418576353.Spec : Prop :=
  ∀ n, P8343242703418576353.a n = A038235 n

end A038235

/-! ## A038235.P16238595563702673179

`record[A006357(and(n, n+1))]`
-/

namespace A038235.P16238595563702673179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006357 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038235.P16238595563702673179

namespace A038235

/-- `record[A006357(and(n, n+1))]` -/
def P16238595563702673179.Spec : Prop :=
  ∀ n, P16238595563702673179.a n = A038235 n

end A038235

/-! ## A038235.P9796345405251745909

`A060823(2*n+3)/2`
-/

namespace A038235.P9796345405251745909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060823 (2 * n + 3) : ℚ) / 2

end

end A038235.P9796345405251745909

namespace A038235

/-- `A060823(2*n+3)/2` -/
def P9796345405251745909.Spec : Prop :=
  ∀ n, P9796345405251745909.a n = (A038235 n : ℚ)

end A038235

/-! ## A038235.P8557143798637469428

`∑[∑[A147704(2*n+1)]]`
-/

namespace A038235.P8557143798637469428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147704 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038235.P8557143798637469428

namespace A038235

/-- `∑[∑[A147704(2*n+1)]]` -/
def P8557143798637469428.Spec : Prop :=
  ∀ n, P8557143798637469428.a n = A038235 n

end A038235

/-! ## A038235.P12667153061300869234

`(A091650(2*(n+1))-1)/2`
-/

namespace A038235.P12667153061300869234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091650 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A038235.P12667153061300869234

namespace A038235

/-- `(A091650(2*(n+1))-1)/2` -/
def P12667153061300869234.Spec : Prop :=
  ∀ n, P12667153061300869234.a n = (A038235 n : ℚ)

end A038235

/-! ## A038235.P14370286901013592988

`A076264(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A038235.P14370286901013592988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076264 (n + n) + a (n - 1)

end

end A038235.P14370286901013592988

namespace A038235

/-- `A076264(n+n)+a(n-1)` -/
def P14370286901013592988.Spec : Prop :=
  ∀ n, P14370286901013592988.a n = A038235 n

end A038235

/-! ## A038235.P13574896573918659680

`record[A006357(n+1)/gcd(2, n)²]`
-/

namespace A038235.P13574896573918659680
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006357 (n + 1) : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038235.P13574896573918659680

namespace A038235

/-- `record[A006357(n+1)/gcd(2, n)²]` -/
def P13574896573918659680.Spec : Prop :=
  ∀ n, P13574896573918659680.a n = (A038235 n : ℚ)

end A038235

/-! ## A038235.P18294867095670254296

`∑[A187506(2*A016789(n))]`
-/

namespace A038235.P18294867095670254296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (2 * A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038235.P18294867095670254296

namespace A038235

/-- `∑[A187506(2*A016789(n))]` -/
def P18294867095670254296.Spec : Prop :=
  ∀ n, P18294867095670254296.a n = A038235 n

end A038235

/-! ## A038235.P16628320971698449866

`A123941(2*n)+A091650(2*n+1)`
-/

namespace A038235.P16628320971698449866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 (2 * n) + A091650 (2 * n + 1)

end

end A038235.P16628320971698449866

namespace A038235

/-- `A123941(2*n)+A091650(2*n+1)` -/
def P16628320971698449866.Spec : Prop :=
  ∀ n, P16628320971698449866.a n = A038235 n

end A038235

/-! ## A038235.P6757455888114242654

`A147704(2*n+1)+A091024(2*n)`
-/

namespace A038235.P6757455888114242654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147704 (2 * n + 1) + A091024 (2 * n)

end

end A038235.P6757455888114242654

namespace A038235

/-- `A147704(2*n+1)+A091024(2*n)` -/
def P6757455888114242654.Spec : Prop :=
  ∀ n, P6757455888114242654.a n = A038235 n

end A038235

/-! ## A038235.P8112581733432026521

`A038249(2*n+1)-A038249(2*n)`
-/

namespace A038235.P8112581733432026521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038249 (2 * n + 1) - A038249 (2 * n)

end

end A038235.P8112581733432026521

namespace A038235

/-- `A038249(2*n+1)-A038249(2*n)` -/
def P8112581733432026521.Spec : Prop :=
  ∀ n, P8112581733432026521.a n = A038235 n

end A038235

/-!
# A038236: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*6^j.

The programs for A038236, the canonical program `A038236.P5554220315760387373` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038236 has offset 0).

The definition of A038236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038236.P5554220315760387373

`A036561(n)*A038208(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038236

/-- `A036561(n)*A038208(n)` -/
def P5554220315760387373.Spec : Prop :=
  ∀ n, P5554220315760387373.a n = A038236 n

theorem P5554220315760387373.correct : P5554220315760387373.Spec := by
  intro n
  simp only [A038236]

end A038236

/-! ## A038236.P7335957682463232996

`A038233(n)*A059268(n)`
-/

namespace A038236.P7335957682463232996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038233 n * A059268 n

end

end A038236.P7335957682463232996

namespace A038236

/-- `A038233(n)*A059268(n)` -/
def P7335957682463232996.Spec : Prop :=
  ∀ n, P7335957682463232996.a n = A038236 n

end A038236

/-! ## A038236.P6291837932853026516

`A038207(n)*A100851(n)`
-/

namespace A038236.P6291837932853026516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A100851 n

end

end A038236.P6291837932853026516

namespace A038236

/-- `A038207(n)*A100851(n)` -/
def P6291837932853026516.Spec : Prop :=
  ∀ n, P6291837932853026516.a n = A038236 n

end A038236

/-! ## A038236.P7323504076391172474

`A013620(n)*A137688(n)`
-/

namespace A038236.P7323504076391172474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A137688 n

end

end A038236.P7323504076391172474

namespace A038236

/-- `A013620(n)*A137688(n)` -/
def P7323504076391172474.Spec : Prop :=
  ∀ n, P7323504076391172474.a n = A038236 n

end A038236

/-! ## A038236.P3766173282018356649

`A038212(n)*A130321(n)`
-/

namespace A038236.P3766173282018356649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038212 n * A130321 n

end

end A038236.P3766173282018356649

namespace A038236

/-- `A038212(n)*A130321(n)` -/
def P3766173282018356649.Spec : Prop :=
  ∀ n, P3766173282018356649.a n = A038236 n

end A038236

/-! ## A038236.P16244695862061003927

`A013613(n)*A262616(n)`
-/

namespace A038236.P16244695862061003927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 n * A262616 n

end

end A038236.P16244695862061003927

namespace A038236

/-- `A013613(n)*A262616(n)` -/
def P16244695862061003927.Spec : Prop :=
  ∀ n, P16244695862061003927.a n = A038236 n

end A038236

/-! ## A038236.P391621479621313933

`lcm(A013610(n), A038232(n))`
-/

namespace A038236.P391621479621313933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038232 n)

end

end A038236.P391621479621313933

namespace A038236

/-- `lcm(A013610(n), A038232(n))` -/
def P391621479621313933.Spec : Prop :=
  ∀ n, (P391621479621313933.a n : ℤ) = A038236 n

end A038236

/-! ## A038236.P18273882403785090057

`A130321(n)²*A013613(n)`
-/

namespace A038236.P18273882403785090057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013613 n

end

end A038236.P18273882403785090057

namespace A038236

/-- `A130321(n)²*A013613(n)` -/
def P18273882403785090057.Spec : Prop :=
  ∀ n, P18273882403785090057.a n = A038236 n

end A038236

/-! ## A038236.P18113828421187811821

`Δ[A007664(n)]*A013620(n)`
-/

namespace A038236.P18113828421187811821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A013620 n

end

end A038236.P18113828421187811821

namespace A038236

/-- `Δ[A007664(n)]*A013620(n)` -/
def P18113828421187811821.Spec : Prop :=
  ∀ n, P18113828421187811821.a n = A038236 n

end A038236

/-! ## A038236.P9051947347836263388

`2^A003056(n)*A013620(n)`
-/

namespace A038236.P9051947347836263388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003056 n : ℤ) * (A013620 n : ℚ)

end

end A038236.P9051947347836263388

namespace A038236

/-- `2^A003056(n)*A013620(n)` -/
def P9051947347836263388.Spec : Prop :=
  ∀ n, P9051947347836263388.a n = (A038236 n : ℚ)

end A038236

/-! ## A038236.P12959575373043646274

`A013620(n)*A013620(A057944(n))`
-/

namespace A038236.P12959575373043646274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A013620 (A057944 n).toNat

end

end A038236.P12959575373043646274

namespace A038236

/-- `A013620(n)*A013620(A057944(n))` -/
def P12959575373043646274.Spec : Prop :=
  ∀ n, P12959575373043646274.a n = A038236 n

end A038236

/-! ## A038236.P11121993475378459679

`A013620(n-A002262(n))*A013620(n)`
-/

namespace A038236.P11121993475378459679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 ((n : ℤ) - A002262 n).toNat * A013620 n

end

end A038236.P11121993475378459679

namespace A038236

/-- `A013620(n-A002262(n))*A013620(n)` -/
def P11121993475378459679.Spec : Prop :=
  ∀ n, P11121993475378459679.a n = A038236 n

end A038236

/-! ## A038236.P2037218892669062921

`(A038207(n)/A007318(n))²*A013613(n)`
-/

namespace A038236.P2037218892669062921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038207 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A013613 n : ℚ)

end

end A038236.P2037218892669062921

namespace A038236

/-- `(A038207(n)/A007318(n))²*A013613(n)` -/
def P2037218892669062921.Spec : Prop :=
  ∀ n, P2037218892669062921.a n = (A038236 n : ℚ)

end A038236

/-! ## A038236.P18119360371864264795

`A038258(A061579(n))`
-/

namespace A038236.P18119360371864264795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038258 (A061579 n).toNat

end

end A038236.P18119360371864264795

namespace A038236

/-- `A038258(A061579(n))` -/
def P18119360371864264795.Spec : Prop :=
  ∀ n, P18119360371864264795.a n = A038236 n

end A038236

/-! ## A038236.P4063980240519954152

`A038258(A038722(n+1)-1)`
-/

namespace A038236.P4063980240519954152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038258 (A038722 (n + 1) - 1).toNat

end

end A038236.P4063980240519954152

namespace A038236

/-- `A038258(A038722(n+1)-1)` -/
def P4063980240519954152.Spec : Prop :=
  ∀ n, P4063980240519954152.a n = A038236 n

end A038236

/-! ## A038236.P7731086055037486403

`sqrt(A038234(n))*sqrt(A038239(n))`
-/

namespace A038236.P7731086055037486403
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038234 n : ℝ) * Real.sqrt (A038239 n : ℝ)

end

end A038236.P7731086055037486403

namespace A038236

/-- `sqrt(A038234(n))*sqrt(A038239(n))` -/
def P7731086055037486403.Spec : Prop :=
  ∀ n, P7731086055037486403.a n = (A038236 n : ℝ)

end A038236

/-! ## A038236.P16832555114736143924

`A038284(n)/A130321(n)`
-/

namespace A038236.P16832555114736143924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038284 n : ℚ) / (A130321 n : ℚ)

end

end A038236.P16832555114736143924

namespace A038236

/-- `A038284(n)/A130321(n)` -/
def P16832555114736143924.Spec : Prop :=
  ∀ n, P16832555114736143924.a n = (A038236 n : ℚ)

end A038236

/-! ## A038236.P1493554315463020003

`A038242(n)/A059268(n)`
-/

namespace A038236.P1493554315463020003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038242 n : ℚ) / (A059268 n : ℚ)

end

end A038236.P1493554315463020003

namespace A038236

/-- `A038242(n)/A059268(n)` -/
def P1493554315463020003.Spec : Prop :=
  ∀ n, P1493554315463020003.a n = (A038236 n : ℚ)

end A038236

/-! ## A038236.P8280677995443307365

`sqrt(A038233(n))*sqrt(A038242(n))`
-/

namespace A038236.P8280677995443307365
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038233 n : ℝ) * Real.sqrt (A038242 n : ℝ)

end

end A038236.P8280677995443307365

namespace A038236

/-- `sqrt(A038233(n))*sqrt(A038242(n))` -/
def P8280677995443307365.Spec : Prop :=
  ∀ n, P8280677995443307365.a n = (A038236 n : ℝ)

end A038236

/-! ## A038236.P6593256940728376270

`A038332(n)/A140303(n)`
-/

namespace A038236.P6593256940728376270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038332 n : ℚ) / (A140303 n : ℚ)

end

end A038236.P6593256940728376270

namespace A038236

/-- `A038332(n)/A140303(n)` -/
def P6593256940728376270.Spec : Prop :=
  ∀ n, P6593256940728376270.a n = (A038236 n : ℚ)

end A038236

/-!
# A038237: Second line of 4-wave sequence A038197.

The programs for A038237, the canonical program `A038237.P2584472921293116795` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038237 has offset 0).

The definition of A038237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038237.P99250060242064559

`A038197(A007310(n+1))`
-/

namespace A038237.P99250060242064559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (A007310 (n + 1)).toNat

end

end A038237.P99250060242064559

namespace A038237

/-- `A038197(A007310(n+1))` -/
def P99250060242064559.Spec : Prop :=
  ∀ n, P99250060242064559.a n = A038237 n

end A038237

/-! ## A038237.P4451185156883722854

`A038197(A038179(n+2))`
-/

namespace A038237.P4451185156883722854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (A038179 (n + 2)).toNat

end

end A038237.P4451185156883722854

namespace A038237

/-- `A038197(A038179(n+2))` -/
def P4451185156883722854.Spec : Prop :=
  ∀ n, P4451185156883722854.a n = A038237 n

end A038237

/-! ## A038237.P11366228224409207522

`A187506(A047241(n+2))`
-/

namespace A038237.P11366228224409207522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (A047241 (n + 2)).toNat

end

end A038237.P11366228224409207522

namespace A038237

/-- `A187506(A047241(n+2))` -/
def P11366228224409207522.Spec : Prop :=
  ∀ n, P11366228224409207522.a n = A038237 n

end A038237

/-! ## A038237.P4289726694653794427

`A038197(or(1, A008486(n)+1))`
-/

namespace A038237.P4289726694653794427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (Int.lor 1 (A008486 n + 1)).toNat

end

end A038237.P4289726694653794427

namespace A038237

/-- `A038197(or(1, A008486(n)+1))` -/
def P4289726694653794427.Spec : Prop :=
  ∀ n, P4289726694653794427.a n = A038237 n

end A038237

/-! ## A038237.P15426589932345935769

`A038197(A016789(n)+(1-n)%2)`
-/

namespace A038237.P15426589932345935769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (A016789 n + Int.tmod (1 - (n : ℤ)) 2).toNat

end

end A038237.P15426589932345935769

namespace A038237

/-- `A038197(A016789(n)+(1-n)%2)` -/
def P15426589932345935769.Spec : Prop :=
  ∀ n, P15426589932345935769.a n = A038237 n

end A038237

/-! ## A038237.P2584472921293116795

`A076264(n)-A091024(A237420(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038237

/-- `A076264(n)-A091024(A237420(n))` -/
def P2584472921293116795.Spec : Prop :=
  ∀ n, P2584472921293116795.a n = A038237 n

theorem P2584472921293116795.correct : P2584472921293116795.Spec := by
  intro n
  simp only [A038237]

end A038237

/-! ## A038237.P16102342922548837095

`A076264(n)-A091024(n*A059841(n))`
-/

namespace A038237.P16102342922548837095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 n - A091024 ((n : ℤ) * A059841 n).toNat

end

end A038237.P16102342922548837095

namespace A038237

/-- `A076264(n)-A091024(n*A059841(n))` -/
def P16102342922548837095.Spec : Prop :=
  ∀ n, P16102342922548837095.a n = A038237 n

end A038237

/-! ## A038237.P17755237507028805772

`A091024(n+1)+A076264(n)-A038249(n)`
-/

namespace A038237.P17755237507028805772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (n + 1) + (A076264 n - A038249 n)

end

end A038237.P17755237507028805772

namespace A038237

/-- `A091024(n+1)+A076264(n)-A038249(n)` -/
def P17755237507028805772.Spec : Prop :=
  ∀ n, P17755237507028805772.a n = A038237 n

end A038237

/-! ## A038237.P13289471448319126320

`∑[A187506(A109613(2*n)+A109613(n+1))]`
-/

namespace A038237.P13289471448319126320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (A109613 (2 * n) + A109613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038237.P13289471448319126320

namespace A038237

/-- `∑[A187506(A109613(2*n)+A109613(n+1))]` -/
def P13289471448319126320.Spec : Prop :=
  ∀ n, P13289471448319126320.a n = A038237 n

end A038237

/-! ## A038237.P80165838807809485

`A076264(n+1)-(A038249(n)+A006357(n))`
-/

namespace A038237.P80165838807809485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 (n + 1) - (A038249 n + A006357 n)

end

end A038237.P80165838807809485

namespace A038237

/-- `A076264(n+1)-(A038249(n)+A006357(n))` -/
def P80165838807809485.Spec : Prop :=
  ∀ n, P80165838807809485.a n = A038237 n

end A038237

/-!
# A038238: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*8^j.

The programs for A038238, the canonical program `A038238.P4988139983515114020` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038238 has offset 0).

The definition of A038238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4522 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038238.P4988139983515114020

`A038234(n)*A059268(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A038238

/-- `A038234(n)*A059268(n)` -/
def P4988139983515114020.Spec : Prop :=
  ∀ n, P4988139983515114020.a n = A038238 n

theorem P4988139983515114020.correct : P4988139983515114020.Spec := by
  intro n
  simp only [A038238]

end A038238

/-! ## A038238.P4115359275170270160

`A038214(n)*A130321(n)`
-/

namespace A038238.P4115359275170270160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038214 n * A130321 n

end

end A038238.P4115359275170270160

namespace A038238

/-- `A038214(n)*A130321(n)` -/
def P4115359275170270160.Spec : Prop :=
  ∀ n, P4115359275170270160.a n = A038238 n

end A038238

/-! ## A038238.P13371845341466097157

`A038210(n)*A137688(n)`
-/

namespace A038238.P13371845341466097157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038210 n * A137688 n

end

end A038238.P13371845341466097157

namespace A038238

/-- `A038210(n)*A137688(n)` -/
def P13371845341466097157.Spec : Prop :=
  ∀ n, P13371845341466097157.a n = A038238 n

end A038238

/-! ## A038238.P4921581922421580666

`A013615(n)*A262616(n)`
-/

namespace A038238.P4921581922421580666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 n * A262616 n

end

end A038238.P4921581922421580666

namespace A038238

/-- `A013615(n)*A262616(n)` -/
def P4921581922421580666.Spec : Prop :=
  ∀ n, P4921581922421580666.a n = A038238 n

end A038238

/-! ## A038238.P14247507082931506439

`A038208(n)*A368043(n)`
-/

namespace A038238.P14247507082931506439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n * A368043 n

end

end A038238.P14247507082931506439

namespace A038238

/-- `A038208(n)*A368043(n)` -/
def P14247507082931506439.Spec : Prop :=
  ∀ n, P14247507082931506439.a n = A038238 n

end A038238

/-! ## A038238.P14572846793336998703

`A059268(n)²*A038232(n)`
-/

namespace A038238.P14572846793336998703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038232 n

end

end A038238.P14572846793336998703

namespace A038238

/-- `A059268(n)²*A038232(n)` -/
def P14572846793336998703.Spec : Prop :=
  ∀ n, P14572846793336998703.a n = A038238 n

end A038238

/-! ## A038238.P12749496196563359365

`A130321(n)²*A013615(n)`
-/

namespace A038238.P12749496196563359365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013615 n

end

end A038238.P12749496196563359365

namespace A038238

/-- `A130321(n)²*A013615(n)` -/
def P12749496196563359365.Spec : Prop :=
  ∀ n, P12749496196563359365.a n = A038238 n

end A038238

/-! ## A038238.P6158475480788274065

`A137688(n)²*A013609(n)`
-/

namespace A038238.P6158475480788274065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 * A013609 n

end

end A038238.P6158475480788274065

namespace A038238

/-- `A137688(n)²*A013609(n)` -/
def P6158475480788274065.Spec : Prop :=
  ∀ n, P6158475480788274065.a n = A038238 n

end A038238

/-! ## A038238.P3987784773261367933

`Δ[A007664(n)]*A038210(n)`
-/

namespace A038238.P3987784773261367933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038210 n

end

end A038238.P3987784773261367933

namespace A038238

/-- `Δ[A007664(n)]*A038210(n)` -/
def P3987784773261367933.Spec : Prop :=
  ∀ n, P3987784773261367933.a n = A038238 n

end A038238

/-! ## A038238.P12985031308014126524

`4^A003056(n)*A013609(n)`
-/

namespace A038238.P12985031308014126524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A003056 n : ℤ) * (A013609 n : ℚ)

end

end A038238.P12985031308014126524

namespace A038238

/-- `4^A003056(n)*A013609(n)` -/
def P12985031308014126524.Spec : Prop :=
  ∀ n, P12985031308014126524.a n = (A038238 n : ℚ)

end A038238

/-! ## A038238.P3246824055504747520

`abs(A137688(n)²*A303872(n))`
-/

namespace A038238.P3246824055504747520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137688 n ^ 2 * A303872 n|

end

end A038238.P3246824055504747520

namespace A038238

/-- `abs(A137688(n)²*A303872(n))` -/
def P3246824055504747520.Spec : Prop :=
  ∀ n, P3246824055504747520.a n = A038238 n

end A038238

/-! ## A038238.P2507964954716278130

`Δ[A007664(n)]²*A013609(n)`
-/

namespace A038238.P2507964954716278130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A013609 n

end

end A038238.P2507964954716278130

namespace A038238

/-- `Δ[A007664(n)]²*A013609(n)` -/
def P2507964954716278130.Spec : Prop :=
  ∀ n, P2507964954716278130.a n = A038238 n

end A038238

/-! ## A038238.P11336572326410574368

`(A140513(n)/2)²*A013609(n)`
-/

namespace A038238.P11336572326410574368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A140513 n : ℚ) / 2) ^ 2 * (A013609 n : ℚ)

end

end A038238.P11336572326410574368

namespace A038238

/-- `(A140513(n)/2)²*A013609(n)` -/
def P11336572326410574368.Spec : Prop :=
  ∀ n, P11336572326410574368.a n = (A038238 n : ℚ)

end A038238

/-! ## A038238.P14575689642979820826

`A038231(n)*A059268(n)*A059268(n)²`
-/

namespace A038238.P14575689642979820826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A059268 n * A059268 n ^ 2

end

end A038238.P14575689642979820826

namespace A038238

/-- `A038231(n)*A059268(n)*A059268(n)²` -/
def P14575689642979820826.Spec : Prop :=
  ∀ n, P14575689642979820826.a n = A038238 n

end A038238

/-! ## A038238.P15261090697412209399

`(A038208(n)/A007318(n))²*A013609(n)`
-/

namespace A038238.P15261090697412209399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038208 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A013609 n : ℚ)

end

end A038238.P15261090697412209399

namespace A038238

/-- `(A038208(n)/A007318(n))²*A013609(n)` -/
def P15261090697412209399.Spec : Prop :=
  ∀ n, P15261090697412209399.a n = (A038238 n : ℚ)

end A038238

/-! ## A038238.P511697895126171572

`A038282(A061579(n))`
-/

namespace A038238.P511697895126171572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038282 (A061579 n).toNat

end

end A038238.P511697895126171572

namespace A038238

/-- `A038282(A061579(n))` -/
def P511697895126171572.Spec : Prop :=
  ∀ n, P511697895126171572.a n = A038238 n

end A038238

/-! ## A038238.P15592558789375573504

`A038282(A002024(n+1)²-(n+1))`
-/

namespace A038238.P15592558789375573504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038282 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A038238.P15592558789375573504

namespace A038238

/-- `A038282(A002024(n+1)²-(n+1))` -/
def P15592558789375573504.Spec : Prop :=
  ∀ n, P15592558789375573504.a n = A038238 n

end A038238

/-! ## A038238.P5561230054368647142

`A038286(n)/A130321(n)`
-/

namespace A038238.P5561230054368647142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038286 n : ℚ) / (A130321 n : ℚ)

end

end A038238.P5561230054368647142

namespace A038238

/-- `A038286(n)/A130321(n)` -/
def P5561230054368647142.Spec : Prop :=
  ∀ n, P5561230054368647142.a n = (A038238 n : ℚ)

end A038238

/-! ## A038238.P9008464835734744520

`A038262(n)/A038298(n)*A038262(n)`
-/

namespace A038238.P9008464835734744520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038262 n : ℚ) / (A038298 n : ℚ) * (A038262 n : ℚ)

end

end A038238.P9008464835734744520

namespace A038238

/-- `A038262(n)/A038298(n)*A038262(n)` -/
def P9008464835734744520.Spec : Prop :=
  ∀ n, P9008464835734744520.a n = (A038238 n : ℚ)

end A038238

/-! ## A038238.P10404929216184784259

`A038334(n)/A140303(n)`
-/

namespace A038238.P10404929216184784259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038334 n : ℚ) / (A140303 n : ℚ)

end

end A038238.P10404929216184784259

namespace A038238

/-- `A038334(n)/A140303(n)` -/
def P10404929216184784259.Spec : Prop :=
  ∀ n, P10404929216184784259.a n = (A038238 n : ℚ)

end A038238

/-!
# A038239: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*9^j.

The programs for A038239, the canonical program `A038239.P16420463137512601868` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038239 has offset 0).

The definition of A038239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038239.P16420463137512601868

`A013620(n)*A036561(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038239

/-- `A013620(n)*A036561(n)` -/
def P16420463137512601868.Spec : Prop :=
  ∀ n, P16420463137512601868.a n = A038239 n

theorem P16420463137512601868.correct : P16420463137512601868.Spec := by
  intro n
  simp only [A038239]

end A038239

/-! ## A038239.P12265169321083420791

`A038215(n)*A130321(n)`
-/

namespace A038239.P12265169321083420791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038215 n * A130321 n

end

end A038239.P12265169321083420791

namespace A038239

/-- `A038215(n)*A130321(n)` -/
def P12265169321083420791.Spec : Prop :=
  ∀ n, P12265169321083420791.a n = A038239 n

end A038239

/-! ## A038239.P399974885266059014

`A013616(n)*A262616(n)`
-/

namespace A038239.P399974885266059014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013616 n * A262616 n

end

end A038239.P399974885266059014

namespace A038239

/-- `A013616(n)*A262616(n)` -/
def P399974885266059014.Spec : Prop :=
  ∀ n, P399974885266059014.a n = A038239 n

end A038239

/-! ## A038239.P5405433520527649195

`lcm(A013616(n), A038231(n))`
-/

namespace A038239.P5405433520527649195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013616 n) (A038231 n)

end

end A038239.P5405433520527649195

namespace A038239

/-- `lcm(A013616(n), A038231(n))` -/
def P5405433520527649195.Spec : Prop :=
  ∀ n, (P5405433520527649195.a n : ℤ) = A038239 n

end A038239

/-! ## A038239.P16938789263862713362

`lcm(A038215(n), A038233(n))`
-/

namespace A038239.P16938789263862713362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038215 n) (A038233 n)

end

end A038239.P16938789263862713362

namespace A038239

/-- `lcm(A038215(n), A038233(n))` -/
def P16938789263862713362.Spec : Prop :=
  ∀ n, (P16938789263862713362.a n : ℤ) = A038239 n

end A038239

/-! ## A038239.P1476139046788025768

`A036561(n)²*A007318(n)`
-/

namespace A038239.P1476139046788025768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n ^ 2 * A007318 n

end

end A038239.P1476139046788025768

namespace A038239

/-- `A036561(n)²*A007318(n)` -/
def P1476139046788025768.Spec : Prop :=
  ∀ n, P1476139046788025768.a n = A038239 n

end A038239

/-! ## A038239.P3772776494369757531

`A130321(n)²*A013616(n)`
-/

namespace A038239.P3772776494369757531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013616 n

end

end A038239.P3772776494369757531

namespace A038239

/-- `A130321(n)²*A013616(n)` -/
def P3772776494369757531.Spec : Prop :=
  ∀ n, P3772776494369757531.a n = A038239 n

end A038239

/-! ## A038239.P17378451827885123179

`(A230445(n)+1)²*A007318(n)`
-/

namespace A038239.P17378451827885123179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A230445 n + 1) ^ 2 * A007318 n

end

end A038239.P17378451827885123179

namespace A038239

/-- `(A230445(n)+1)²*A007318(n)` -/
def P17378451827885123179.Spec : Prop :=
  ∀ n, P17378451827885123179.a n = A038239 n

end A038239

/-! ## A038239.P804025462111398089

`A028326(n)/2*A036561(n)²`
-/

namespace A038239.P804025462111398089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A036561 n ^ 2 : ℚ)

end

end A038239.P804025462111398089

namespace A038239

/-- `A028326(n)/2*A036561(n)²` -/
def P804025462111398089.Spec : Prop :=
  ∀ n, P804025462111398089.a n = (A038239 n : ℚ)

end A038239

/-! ## A038239.P12177937464783432518

`(A094617(n+1)-1)*A013620(n)`
-/

namespace A038239.P12177937464783432518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094617 (n + 1) - 1) * A013620 n

end

end A038239.P12177937464783432518

namespace A038239

/-- `(A094617(n+1)-1)*A013620(n)` -/
def P12177937464783432518.Spec : Prop :=
  ∀ n, P12177937464783432518.a n = A038239 n

end A038239

/-! ## A038239.P12988273989300750257

`A003586(A247714(n))²*A007318(n)`
-/

namespace A038239.P12988273989300750257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A247714 n).toNat ^ 2 * A007318 n

end

end A038239.P12988273989300750257

namespace A038239

/-- `A003586(A247714(n))²*A007318(n)` -/
def P12988273989300750257.Spec : Prop :=
  ∀ n, P12988273989300750257.a n = A038239 n

end A038239

/-! ## A038239.P3900818806269328132

`A013620(n)/A007318(n)*A013620(n)`
-/

namespace A038239.P3900818806269328132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A007318 n : ℚ) * (A013620 n : ℚ)

end

end A038239.P3900818806269328132

namespace A038239

/-- `A013620(n)/A007318(n)*A013620(n)` -/
def P3900818806269328132.Spec : Prop :=
  ∀ n, P3900818806269328132.a n = (A038239 n : ℚ)

end A038239

/-! ## A038239.P16722646244235040183

`A038236(n)/A038234(n)*A038236(n)`
-/

namespace A038239.P16722646244235040183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n : ℚ) / (A038234 n : ℚ) * (A038236 n : ℚ)

end

end A038239.P16722646244235040183

namespace A038239

/-- `A038236(n)/A038234(n)*A038236(n)` -/
def P16722646244235040183.Spec : Prop :=
  ∀ n, P16722646244235040183.a n = (A038239 n : ℚ)

end A038239

/-! ## A038239.P11554692709291712026

`A007318(n)/(A130595(n)/A013620(n))²`
-/

namespace A038239.P11554692709291712026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / ((A130595 n : ℚ) / (A013620 n : ℚ)) ^ 2

end

end A038239.P11554692709291712026

namespace A038239

/-- `A007318(n)/(A130595(n)/A013620(n))²` -/
def P11554692709291712026.Spec : Prop :=
  ∀ n, P11554692709291712026.a n = (A038239 n : ℚ)

end A038239

/-! ## A038239.P591349047261958380

`A038294(A061579(n))`
-/

namespace A038239.P591349047261958380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038294 (A061579 n).toNat

end

end A038239.P591349047261958380

namespace A038239

/-- `A038294(A061579(n))` -/
def P591349047261958380.Spec : Prop :=
  ∀ n, P591349047261958380.a n = A038239 n

end A038239

/-! ## A038239.P3940805433000610192

`A038287(n)/A130321(n)`
-/

namespace A038239.P3940805433000610192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038287 n : ℚ) / (A130321 n : ℚ)

end

end A038239.P3940805433000610192

namespace A038239

/-- `A038287(n)/A130321(n)` -/
def P3940805433000610192.Spec : Prop :=
  ∀ n, P3940805433000610192.a n = (A038239 n : ℚ)

end A038239

/-! ## A038239.P6723937901420501056

`A038263(n)/A038299(n)*A038263(n)`
-/

namespace A038239.P6723937901420501056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038263 n : ℚ) / (A038299 n : ℚ) * (A038263 n : ℚ)

end

end A038239.P6723937901420501056

namespace A038239

/-- `A038263(n)/A038299(n)*A038263(n)` -/
def P6723937901420501056.Spec : Prop :=
  ∀ n, P6723937901420501056.a n = (A038239 n : ℚ)

end A038239

/-! ## A038239.P6981593097951418462

`A038335(n)/A140303(n)`
-/

namespace A038239.P6981593097951418462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038335 n : ℚ) / (A140303 n : ℚ)

end

end A038239.P6981593097951418462

namespace A038239

/-- `A038335(n)/A140303(n)` -/
def P6981593097951418462.Spec : Prop :=
  ∀ n, P6981593097951418462.a n = (A038239 n : ℚ)

end A038239

/-! ## A038239.P4731322429119641544

`gcd(A038287(n), A038335(n))`
-/

namespace A038239.P4731322429119641544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038287 n) (A038335 n)

end

end A038239.P4731322429119641544

namespace A038239

/-- `gcd(A038287(n), A038335(n))` -/
def P4731322429119641544.Spec : Prop :=
  ∀ n, (P4731322429119641544.a n : ℤ) = A038239 n

end A038239

/-! ## A038239.P5922000835969830743

`A013620(n)²/A007318(n)`
-/

namespace A038239.P5922000835969830743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n ^ 2 : ℚ) / (A007318 n : ℚ)

end

end A038239.P5922000835969830743

namespace A038239

/-- `A013620(n)²/A007318(n)` -/
def P5922000835969830743.Spec : Prop :=
  ∀ n, P5922000835969830743.a n = (A038239 n : ℚ)

end A038239

/-!
# A038240: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*10^j.

The programs for A038240, the canonical program `A038240.P4209308538273484688` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038240 has offset 0).

The definition of A038240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4060 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038240.P6918413761232369527

`A013628(n)*A059268(n)`
-/

namespace A038240.P6918413761232369527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013628 n * A059268 n

end

end A038240.P6918413761232369527

namespace A038240

/-- `A013628(n)*A059268(n)` -/
def P6918413761232369527.Spec : Prop :=
  ∀ n, P6918413761232369527.a n = A038240 n

end A038240

/-! ## A038240.P16260027847421097121

`A013621(n)*A137688(n)`
-/

namespace A038240.P16260027847421097121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013621 n * A137688 n

end

end A038240.P16260027847421097121

namespace A038240

/-- `A013621(n)*A137688(n)` -/
def P16260027847421097121.Spec : Prop :=
  ∀ n, P16260027847421097121.a n = A038240 n

end A038240

/-! ## A038240.P4209308538273484688

`A038216(n)*A130321(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038240

/-- `A038216(n)*A130321(n)` -/
def P4209308538273484688.Spec : Prop :=
  ∀ n, P4209308538273484688.a n = A038240 n

theorem P4209308538273484688.correct : P4209308538273484688.Spec := by
  intro n
  simp only [A038240]

end A038240

/-! ## A038240.P4203450900936034750

`A013617(n)*A262616(n)`
-/

namespace A038240.P4203450900936034750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013617 n * A262616 n

end

end A038240.P4203450900936034750

namespace A038240

/-- `A013617(n)*A262616(n)` -/
def P4203450900936034750.Spec : Prop :=
  ∀ n, P4203450900936034750.a n = A038240 n

end A038240

/-! ## A038240.P18272575492529455015

`lcm(A013612(n), A038232(n))`
-/

namespace A038240.P18272575492529455015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038232 n)

end

end A038240.P18272575492529455015

namespace A038240

/-- `lcm(A013612(n), A038232(n))` -/
def P18272575492529455015.Spec : Prop :=
  ∀ n, (P18272575492529455015.a n : ℤ) = A038240 n

end A038240

/-! ## A038240.P1455144306551856720

`A130321(n)²*A013617(n)`
-/

namespace A038240.P1455144306551856720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013617 n

end

end A038240.P1455144306551856720

namespace A038240

/-- `A130321(n)²*A013617(n)` -/
def P1455144306551856720.Spec : Prop :=
  ∀ n, P1455144306551856720.a n = A038240 n

end A038240

/-! ## A038240.P18359664826643113404

`A038208(n)*A232646(n+1)`
-/

namespace A038240.P18359664826643113404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n * A232646 (n + 1)

end

end A038240.P18359664826643113404

namespace A038240

/-- `A038208(n)*A232646(n+1)` -/
def P18359664826643113404.Spec : Prop :=
  ∀ n, P18359664826643113404.a n = A038240 n

end A038240

/-! ## A038240.P16636157986025994495

`(A038303(n)/A038243(n))²*A013617(n)`
-/

namespace A038240.P16636157986025994495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038303 n : ℚ) / (A038243 n : ℚ)) ^ 2 * (A013617 n : ℚ)

end

end A038240.P16636157986025994495

namespace A038240

/-- `(A038303(n)/A038243(n))²*A013617(n)` -/
def P16636157986025994495.Spec : Prop :=
  ∀ n, P16636157986025994495.a n = (A038240 n : ℚ)

end A038240

/-! ## A038240.P6680903375288176164

`A038306(A061579(n))`
-/

namespace A038240.P6680903375288176164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038306 (A061579 n).toNat

end

end A038240.P6680903375288176164

namespace A038240

/-- `A038306(A061579(n))` -/
def P6680903375288176164.Spec : Prop :=
  ∀ n, P6680903375288176164.a n = A038240 n

end A038240

/-! ## A038240.P7903535716160572749

`A038288(n)/A130321(n)`
-/

namespace A038240.P7903535716160572749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038288 n : ℚ) / (A130321 n : ℚ)

end

end A038240.P7903535716160572749

namespace A038240

/-- `A038288(n)/A130321(n)` -/
def P7903535716160572749.Spec : Prop :=
  ∀ n, P7903535716160572749.a n = (A038240 n : ℚ)

end A038240

/-! ## A038240.P4637950999391663756

`A038264(n)/A038300(n)*A038264(n)`
-/

namespace A038240.P4637950999391663756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038264 n : ℚ) / (A038300 n : ℚ) * (A038264 n : ℚ)

end

end A038240.P4637950999391663756

namespace A038240

/-- `A038264(n)/A038300(n)*A038264(n)` -/
def P4637950999391663756.Spec : Prop :=
  ∀ n, P4637950999391663756.a n = (A038240 n : ℚ)

end A038240

/-! ## A038240.P8716239052646594823

`A038336(n)/A140303(n)`
-/

namespace A038240.P8716239052646594823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038336 n : ℚ) / (A140303 n : ℚ)

end

end A038240.P8716239052646594823

namespace A038240

/-- `A038336(n)/A140303(n)` -/
def P8716239052646594823.Spec : Prop :=
  ∀ n, P8716239052646594823.a n = (A038240 n : ℚ)

end A038240

/-! ## A038240.P16354666639525683415

`gcd(A038288(n), A038336(n))`
-/

namespace A038240.P16354666639525683415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038288 n) (A038336 n)

end

end A038240.P16354666639525683415

namespace A038240

/-- `gcd(A038288(n), A038336(n))` -/
def P16354666639525683415.Spec : Prop :=
  ∀ n, (P16354666639525683415.a n : ℤ) = A038240 n

end A038240

/-! ## A038240.P5278120246075170438

`A038216(n)²/gcd(A038216(n), A038228(n))`
-/

namespace A038240.P5278120246075170438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038216 n ^ 2 : ℚ) / (Int.gcd (A038216 n) (A038228 n) : ℚ)

end

end A038240.P5278120246075170438

namespace A038240

/-- `A038216(n)²/gcd(A038216(n), A038228(n))` -/
def P5278120246075170438.Spec : Prop :=
  ∀ n, P5278120246075170438.a n = (A038240 n : ℚ)

end A038240

/-! ## A038240.P9349109923782075052

`A038264(n)²/A038300(n)`
-/

namespace A038240.P9349109923782075052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038264 n ^ 2 : ℚ) / (A038300 n : ℚ)

end

end A038240.P9349109923782075052

namespace A038240

/-- `A038264(n)²/A038300(n)` -/
def P9349109923782075052.Spec : Prop :=
  ∀ n, P9349109923782075052.a n = (A038240 n : ℚ)

end A038240

/-!
# A038241: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*11^j.

The programs for A038241, the canonical program `A038241.P10458296533401089343` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038241 has offset 0).

The definition of A038241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3802 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038241.P10458296533401089343

`A038217(n)*A130321(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038241

/-- `A038217(n)*A130321(n)` -/
def P10458296533401089343.Spec : Prop :=
  ∀ n, P10458296533401089343.a n = A038241 n

theorem P10458296533401089343.correct : P10458296533401089343.Spec := by
  intro n
  simp only [A038241]

end A038241

/-! ## A038241.P13292580475970783215

`A013618(n)*A262616(n)`
-/

namespace A038241.P13292580475970783215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013618 n * A262616 n

end

end A038241.P13292580475970783215

namespace A038241

/-- `A013618(n)*A262616(n)` -/
def P13292580475970783215.Spec : Prop :=
  ∀ n, P13292580475970783215.a n = A038241 n

end A038241

/-! ## A038241.P2046219498288577495

`lcm(A013618(n), A038231(n))`
-/

namespace A038241.P2046219498288577495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013618 n) (A038231 n)

end

end A038241.P2046219498288577495

namespace A038241

/-- `lcm(A013618(n), A038231(n))` -/
def P2046219498288577495.Spec : Prop :=
  ∀ n, (P2046219498288577495.a n : ℤ) = A038241 n

end A038241

/-! ## A038241.P12349224202152212500

`A130321(n)²*A013618(n)`
-/

namespace A038241.P12349224202152212500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013618 n

end

end A038241.P12349224202152212500

namespace A038241

/-- `A130321(n)²*A013618(n)` -/
def P12349224202152212500.Spec : Prop :=
  ∀ n, P12349224202152212500.a n = A038241 n

end A038241

/-! ## A038241.P5259150545528829663

`A000079(A025581(n))²*A013618(n)`
-/

namespace A038241.P5259150545528829663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat ^ 2 * A013618 n

end

end A038241.P5259150545528829663

namespace A038241

/-- `A000079(A025581(n))²*A013618(n)` -/
def P5259150545528829663.Spec : Prop :=
  ∀ n, P5259150545528829663.a n = A038241 n

end A038241

/-! ## A038241.P11804303579341492081

`A000079(2*A025581(n))*A013618(n)`
-/

namespace A038241.P11804303579341492081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A025581 n).toNat * A013618 n

end

end A038241.P11804303579341492081

namespace A038241

/-- `A000079(2*A025581(n))*A013618(n)` -/
def P11804303579341492081.Spec : Prop :=
  ∀ n, P11804303579341492081.a n = A038241 n

end A038241

/-! ## A038241.P14620588709110312126

`A038217(n)/A013618(n)*A038217(n)`
-/

namespace A038241.P14620588709110312126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038217 n : ℚ) / (A013618 n : ℚ) * (A038217 n : ℚ)

end

end A038241.P14620588709110312126

namespace A038241

/-- `A038217(n)/A013618(n)*A038217(n)` -/
def P14620588709110312126.Spec : Prop :=
  ∀ n, P14620588709110312126.a n = (A038241 n : ℚ)

end A038241

/-! ## A038241.P254762970239307152

`(A013620(n)/A013610(n))²*A013618(n)`
-/

namespace A038241.P254762970239307152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013620 n : ℚ) / (A013610 n : ℚ)) ^ 2 * (A013618 n : ℚ)

end

end A038241.P254762970239307152

namespace A038241

/-- `(A013620(n)/A013610(n))²*A013618(n)` -/
def P254762970239307152.Spec : Prop :=
  ∀ n, P254762970239307152.a n = (A038241 n : ℚ)

end A038241

/-! ## A038241.P3524560419736098569

`A038318(A061579(n))`
-/

namespace A038241.P3524560419736098569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038318 (A061579 n).toNat

end

end A038241.P3524560419736098569

namespace A038241

/-- `A038318(A061579(n))` -/
def P3524560419736098569.Spec : Prop :=
  ∀ n, P3524560419736098569.a n = A038241 n

end A038241

/-! ## A038241.P9592784269830659512

`A038289(n)/A130321(n)`
-/

namespace A038241.P9592784269830659512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038289 n : ℚ) / (A130321 n : ℚ)

end

end A038241.P9592784269830659512

namespace A038241

/-- `A038289(n)/A130321(n)` -/
def P9592784269830659512.Spec : Prop :=
  ∀ n, P9592784269830659512.a n = (A038241 n : ℚ)

end A038241

/-! ## A038241.P11446767986111107208

`A038265(n)/A038301(n)*A038265(n)`
-/

namespace A038241.P11446767986111107208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038265 n : ℚ) / (A038301 n : ℚ) * (A038265 n : ℚ)

end

end A038241.P11446767986111107208

namespace A038241

/-- `A038265(n)/A038301(n)*A038265(n)` -/
def P11446767986111107208.Spec : Prop :=
  ∀ n, P11446767986111107208.a n = (A038241 n : ℚ)

end A038241

/-! ## A038241.P16702183352221754951

`A038337(n)/A140303(n)`
-/

namespace A038241.P16702183352221754951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038337 n : ℚ) / (A140303 n : ℚ)

end

end A038241.P16702183352221754951

namespace A038241

/-- `A038337(n)/A140303(n)` -/
def P16702183352221754951.Spec : Prop :=
  ∀ n, P16702183352221754951.a n = (A038241 n : ℚ)

end A038241

/-! ## A038241.P2033106362973400171

`gcd(A038289(n), A038337(n))`
-/

namespace A038241.P2033106362973400171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038289 n) (A038337 n)

end

end A038241.P2033106362973400171

namespace A038241

/-- `gcd(A038289(n), A038337(n))` -/
def P2033106362973400171.Spec : Prop :=
  ∀ n, (P2033106362973400171.a n : ℤ) = A038241 n

end A038241

/-! ## A038241.P14787241803202391899

`A038217(n)²/A013618(n)`
-/

namespace A038241.P14787241803202391899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038217 n ^ 2 : ℚ) / (A013618 n : ℚ)

end

end A038241.P14787241803202391899

namespace A038241

/-- `A038217(n)²/A013618(n)` -/
def P14787241803202391899.Spec : Prop :=
  ∀ n, P14787241803202391899.a n = (A038241 n : ℚ)

end A038241

/-! ## A038241.P9770012935570258176

`A038217(n)²/gcd(A038217(n), A038229(n))`
-/

namespace A038241.P9770012935570258176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038217 n ^ 2 : ℚ) / (Int.gcd (A038217 n) (A038229 n) : ℚ)

end

end A038241.P9770012935570258176

namespace A038241

/-- `A038217(n)²/gcd(A038217(n), A038229(n))` -/
def P9770012935570258176.Spec : Prop :=
  ∀ n, P9770012935570258176.a n = (A038241 n : ℚ)

end A038241

/-! ## A038241.P653062312615858342

`A038265(n)²/A038301(n)`
-/

namespace A038241.P653062312615858342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038265 n ^ 2 : ℚ) / (A038301 n : ℚ)

end

end A038241.P653062312615858342

namespace A038241

/-- `A038265(n)²/A038301(n)` -/
def P653062312615858342.Spec : Prop :=
  ∀ n, P653062312615858342.a n = (A038241 n : ℚ)

end A038241

/-!
# A038242: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*12^j.

The programs for A038242, the canonical program `A038242.P689435181887055728` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038242 has offset 0).

The definition of A038242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3630 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038242.P689435181887055728

`A036561(n)*A038210(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038242

/-- `A036561(n)*A038210(n)` -/
def P689435181887055728.Spec : Prop :=
  ∀ n, P689435181887055728.a n = A038242 n

theorem P689435181887055728.correct : P689435181887055728.Spec := by
  intro n
  simp only [A038242]

end A038242

/-! ## A038242.P4414863867206007433

`A038236(n)*A059268(n)`
-/

namespace A038242.P4414863867206007433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038236 n * A059268 n

end

end A038242.P4414863867206007433

namespace A038242

/-- `A038236(n)*A059268(n)` -/
def P4414863867206007433.Spec : Prop :=
  ∀ n, P4414863867206007433.a n = A038242 n

end A038242

/-! ## A038242.P9800058301347631981

`A038208(n)*A100851(n)`
-/

namespace A038242.P9800058301347631981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n * A100851 n

end

end A038242.P9800058301347631981

namespace A038242

/-- `A038208(n)*A100851(n)` -/
def P9800058301347631981.Spec : Prop :=
  ∀ n, P9800058301347631981.a n = A038242 n

end A038242

/-! ## A038242.P6432778986338987858

`A038218(n)*A130321(n)`
-/

namespace A038242.P6432778986338987858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038218 n * A130321 n

end

end A038242.P6432778986338987858

namespace A038242

/-- `A038218(n)*A130321(n)` -/
def P6432778986338987858.Spec : Prop :=
  ∀ n, P6432778986338987858.a n = A038242 n

end A038242

/-! ## A038242.P10157643337198056359

`A038212(n)*A137688(n)`
-/

namespace A038242.P10157643337198056359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038212 n * A137688 n

end

end A038242.P10157643337198056359

namespace A038242

/-- `A038212(n)*A137688(n)` -/
def P10157643337198056359.Spec : Prop :=
  ∀ n, P10157643337198056359.a n = A038242 n

end A038242

/-! ## A038242.P384540851105046243

`A013619(n)*A262616(n)`
-/

namespace A038242.P384540851105046243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013619 n * A262616 n

end

end A038242.P384540851105046243

namespace A038242

/-- `A013619(n)*A262616(n)` -/
def P384540851105046243.Spec : Prop :=
  ∀ n, P384540851105046243.a n = A038242 n

end A038242

/-! ## A038242.P17319696899669099251

`A013620(n)*A368043(n)`
-/

namespace A038242.P17319696899669099251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A368043 n

end

end A038242.P17319696899669099251

namespace A038242

/-- `A013620(n)*A368043(n)` -/
def P17319696899669099251.Spec : Prop :=
  ∀ n, P17319696899669099251.a n = A038242 n

end A038242

/-! ## A038242.P11515099669927321291

`lcm(A013610(n), A038234(n))`
-/

namespace A038242.P11515099669927321291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038234 n)

end

end A038242.P11515099669927321291

namespace A038242

/-- `lcm(A013610(n), A038234(n))` -/
def P11515099669927321291.Spec : Prop :=
  ∀ n, (P11515099669927321291.a n : ℤ) = A038242 n

end A038242

/-! ## A038242.P5082741453737580810

`A059268(n)²*A038233(n)`
-/

namespace A038242.P5082741453737580810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038233 n

end

end A038242.P5082741453737580810

namespace A038242

/-- `A059268(n)²*A038233(n)` -/
def P5082741453737580810.Spec : Prop :=
  ∀ n, P5082741453737580810.a n = A038242 n

end A038242

/-! ## A038242.P13946438686987530174

`A130321(n)²*A013619(n)`
-/

namespace A038242.P13946438686987530174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013619 n

end

end A038242.P13946438686987530174

namespace A038242

/-- `A130321(n)²*A013619(n)` -/
def P13946438686987530174.Spec : Prop :=
  ∀ n, P13946438686987530174.a n = A038242 n

end A038242

/-! ## A038242.P2317275330726214504

`A137688(n)²*A013610(n)`
-/

namespace A038242.P2317275330726214504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 * A013610 n

end

end A038242.P2317275330726214504

namespace A038242

/-- `A137688(n)²*A013610(n)` -/
def P2317275330726214504.Spec : Prop :=
  ∀ n, P2317275330726214504.a n = A038242 n

end A038242

/-! ## A038242.P1744247160917653202

`Δ[A007664(n)]²*A013610(n)`
-/

namespace A038242.P1744247160917653202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A013610 n

end

end A038242.P1744247160917653202

namespace A038242

/-- `Δ[A007664(n)]²*A013610(n)` -/
def P1744247160917653202.Spec : Prop :=
  ∀ n, P1744247160917653202.a n = A038242 n

end A038242

/-! ## A038242.P17828905884124253651

`A038212(n)/A013610(n)*A038212(n)`
-/

namespace A038242.P17828905884124253651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038212 n : ℚ) / (A013610 n : ℚ) * (A038212 n : ℚ)

end

end A038242.P17828905884124253651

namespace A038242

/-- `A038212(n)/A013610(n)*A038212(n)` -/
def P17828905884124253651.Spec : Prop :=
  ∀ n, P17828905884124253651.a n = (A038242 n : ℚ)

end A038242

/-! ## A038242.P6025388295228693780

`A038236(n)/A038233(n)*A038236(n)`
-/

namespace A038242.P6025388295228693780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n : ℚ) / (A038233 n : ℚ) * (A038236 n : ℚ)

end

end A038242.P6025388295228693780

namespace A038242

/-- `A038236(n)/A038233(n)*A038236(n)` -/
def P6025388295228693780.Spec : Prop :=
  ∀ n, P6025388295228693780.a n = (A038242 n : ℚ)

end A038242

/-! ## A038242.P14631135957317869524

`A038330(A061579(n))`
-/

namespace A038242.P14631135957317869524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038330 (A061579 n).toNat

end

end A038242.P14631135957317869524

namespace A038242

/-- `A038330(A061579(n))` -/
def P14631135957317869524.Spec : Prop :=
  ∀ n, P14631135957317869524.a n = A038242 n

end A038242

/-! ## A038242.P13147042256432377413

`A038290(n)/A130321(n)`
-/

namespace A038242.P13147042256432377413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038290 n : ℚ) / (A130321 n : ℚ)

end

end A038242.P13147042256432377413

namespace A038242

/-- `A038290(n)/A130321(n)` -/
def P13147042256432377413.Spec : Prop :=
  ∀ n, P13147042256432377413.a n = (A038242 n : ℚ)

end A038242

/-! ## A038242.P18126935115479087379

`A038266(n)/A038302(n)*A038266(n)`
-/

namespace A038242.P18126935115479087379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038266 n : ℚ) / (A038302 n : ℚ) * (A038266 n : ℚ)

end

end A038242.P18126935115479087379

namespace A038242

/-- `A038266(n)/A038302(n)*A038266(n)` -/
def P18126935115479087379.Spec : Prop :=
  ∀ n, P18126935115479087379.a n = (A038242 n : ℚ)

end A038242

/-! ## A038242.P251118197244851516

`A038338(n)/A140303(n)`
-/

namespace A038242.P251118197244851516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038338 n : ℚ) / (A140303 n : ℚ)

end

end A038242.P251118197244851516

namespace A038242

/-- `A038338(n)/A140303(n)` -/
def P251118197244851516.Spec : Prop :=
  ∀ n, P251118197244851516.a n = (A038242 n : ℚ)

end A038242

/-! ## A038242.P7936070394562174210

`gcd(A038290(n), A038338(n))`
-/

namespace A038242.P7936070394562174210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038290 n) (A038338 n)

end

end A038242.P7936070394562174210

namespace A038242

/-- `gcd(A038290(n), A038338(n))` -/
def P7936070394562174210.Spec : Prop :=
  ∀ n, (P7936070394562174210.a n : ℤ) = A038242 n

end A038242

/-! ## A038242.P16665551190368759918

`A038212(n)²/A013610(n)`
-/

namespace A038242.P16665551190368759918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038212 n ^ 2 : ℚ) / (A013610 n : ℚ)

end

end A038242.P16665551190368759918

namespace A038242

/-- `A038212(n)²/A013610(n)` -/
def P16665551190368759918.Spec : Prop :=
  ∀ n, P16665551190368759918.a n = (A038242 n : ℚ)

end A038242

/-!
# A038243: Triangle whose (i,j)-th entry is 5^(i-j)*binomial(i,j).

The programs for A038243, the canonical program `A038243.P17559097150477924643` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038243 has offset 0).

The definition of A038243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038243.P17559097150477924643

`A013612(A061579(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038243

/-- `A013612(A061579(n))` -/
def P17559097150477924643.Spec : Prop :=
  ∀ n, P17559097150477924643.a n = A038243 n

theorem P17559097150477924643.correct : P17559097150477924643.Spec := by
  intro n
  simp only [A038243]

end A038243

/-! ## A038243.P17457277442495414983

`A013612(A038722(n+1)-1)`
-/

namespace A038243.P17457277442495414983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A038722 (n + 1) - 1).toNat

end

end A038243.P17457277442495414983

namespace A038243

/-- `A013612(A038722(n+1)-1)` -/
def P17457277442495414983.Spec : Prop :=
  ∀ n, P17457277442495414983.a n = A038243 n

end A038243

/-! ## A038243.P15378810326639625795

`A013612(A038722(n+2))`
-/

namespace A038243.P15378810326639625795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A038722 (n + 2)).toNat

end

end A038243.P15378810326639625795

namespace A038243

/-- `A013612(A038722(n+2))` -/
def P15378810326639625795.Spec : Prop :=
  ∀ n, P15378810326639625795.a n = A038243 n

end A038243

/-! ## A038243.P16562891795607039848

`A038244(n)/A059268(n)`
-/

namespace A038243.P16562891795607039848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038244 n : ℚ) / (A059268 n : ℚ)

end

end A038243.P16562891795607039848

namespace A038243

/-- `A038244(n)/A059268(n)` -/
def P16562891795607039848.Spec : Prop :=
  ∀ n, P16562891795607039848.a n = (A038243 n : ℚ)

end A038243

/-! ## A038243.P7741223543953090452

`gcd(A038244(n), A038245(n))`
-/

namespace A038243.P7741223543953090452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038244 n) (A038245 n)

end

end A038243.P7741223543953090452

namespace A038243

/-- `gcd(A038244(n), A038245(n))` -/
def P7741223543953090452.Spec : Prop :=
  ∀ n, (P7741223543953090452.a n : ℤ) = A038243 n

end A038243

/-! ## A038243.P7696255828300580304

`A038245(n)/A000244(A002262(n))`
-/

namespace A038243.P7696255828300580304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038245 n : ℚ) / (A000244 (A002262 n).toNat : ℚ)

end

end A038243.P7696255828300580304

namespace A038243

/-- `A038245(n)/A000244(A002262(n))` -/
def P7696255828300580304.Spec : Prop :=
  ∀ n, P7696255828300580304.a n = (A038243 n : ℚ)

end A038243

/-! ## A038243.P9743275466563220166

`A038246(n)/A059268(n)²`
-/

namespace A038243.P9743275466563220166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038246 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038243.P9743275466563220166

namespace A038243

/-- `A038246(n)/A059268(n)²` -/
def P9743275466563220166.Spec : Prop :=
  ∀ n, P9743275466563220166.a n = (A038243 n : ℚ)

end A038243

/-! ## A038243.P5984191526876583284

`gcd(A038246(n), A038247(n))`
-/

namespace A038243.P5984191526876583284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038246 n) (A038247 n)

end

end A038243.P5984191526876583284

namespace A038243

/-- `gcd(A038246(n), A038247(n))` -/
def P5984191526876583284.Spec : Prop :=
  ∀ n, (P5984191526876583284.a n : ℤ) = A038243 n

end A038243

/-! ## A038243.P1039361567534104394

`A038303(n)/A130321(n)`
-/

namespace A038243.P1039361567534104394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038303 n : ℚ) / (A130321 n : ℚ)

end

end A038243.P1039361567534104394

namespace A038243

/-- `A038303(n)/A130321(n)` -/
def P1039361567534104394.Spec : Prop :=
  ∀ n, P1039361567534104394.a n = (A038243 n : ℚ)

end A038243

/-! ## A038243.P4113519726118545004

`A038304(n)/A137688(n)`
-/

namespace A038243.P4113519726118545004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038304 n : ℚ) / (A137688 n : ℚ)

end

end A038243.P4113519726118545004

namespace A038243

/-- `A038304(n)/A137688(n)` -/
def P4113519726118545004.Spec : Prop :=
  ∀ n, P4113519726118545004.a n = (A038243 n : ℚ)

end A038243

/-! ## A038243.P11707980030259707694

`A038250(n)/(A059268(n)²*A059268(n))`
-/

namespace A038243.P11707980030259707694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038250 n : ℚ) / (A059268 n ^ 2 * A059268 n : ℚ)

end

end A038243.P11707980030259707694

namespace A038243

/-- `A038250(n)/(A059268(n)²*A059268(n))` -/
def P11707980030259707694.Spec : Prop :=
  ∀ n, P11707980030259707694.a n = (A038243 n : ℚ)

end A038243

/-! ## A038243.P15943147832908079479

`A038305(n)/A036561(n)`
-/

namespace A038243.P15943147832908079479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038305 n : ℚ) / (A036561 n : ℚ)

end

end A038243.P15943147832908079479

namespace A038243

/-- `A038305(n)/A036561(n)` -/
def P15943147832908079479.Spec : Prop :=
  ∀ n, P15943147832908079479.a n = (A038243 n : ℚ)

end A038243

/-! ## A038243.P15982728958472429149

`gcd(A038250(n), A038251(n))`
-/

namespace A038243.P15982728958472429149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038250 n) (A038251 n)

end

end A038243.P15982728958472429149

namespace A038243

/-- `gcd(A038250(n), A038251(n))` -/
def P15982728958472429149.Spec : Prop :=
  ∀ n, (P15982728958472429149.a n : ℤ) = A038243 n

end A038243

/-! ## A038243.P4507075045432073357

`A038306(n)/A368043(n)`
-/

namespace A038243.P4507075045432073357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038306 n : ℚ) / (A368043 n : ℚ)

end

end A038243.P4507075045432073357

namespace A038243

/-- `A038306(n)/A368043(n)` -/
def P4507075045432073357.Spec : Prop :=
  ∀ n, P4507075045432073357.a n = (A038243 n : ℚ)

end A038243

/-! ## A038243.P10032093485235816604

`A038307(n)/A232646(n+1)`
-/

namespace A038243.P10032093485235816604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038307 n : ℚ) / (A232646 (n + 1) : ℚ)

end

end A038243.P10032093485235816604

namespace A038243

/-- `A038307(n)/A232646(n+1)` -/
def P10032093485235816604.Spec : Prop :=
  ∀ n, P10032093485235816604.a n = (A038243 n : ℚ)

end A038243

/-! ## A038243.P15857375647310519193

`gcd(A038248(n), A038253(n))`
-/

namespace A038243.P15857375647310519193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038248 n) (A038253 n)

end

end A038243.P15857375647310519193

namespace A038243

/-- `gcd(A038248(n), A038253(n))` -/
def P15857375647310519193.Spec : Prop :=
  ∀ n, (P15857375647310519193.a n : ℤ) = A038243 n

end A038243

/-! ## A038243.P16345364063170278874

`A038308(n)/A100851(n)`
-/

namespace A038243.P16345364063170278874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n : ℚ) / (A100851 n : ℚ)

end

end A038243.P16345364063170278874

namespace A038243

/-- `A038308(n)/A100851(n)` -/
def P16345364063170278874.Spec : Prop :=
  ∀ n, P16345364063170278874.a n = (A038243 n : ℚ)

end A038243

/-! ## A038243.P9303045089363787824

`A027467(n)/A140303(n)`
-/

namespace A038243.P9303045089363787824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027467 n : ℚ) / (A140303 n : ℚ)

end

end A038243.P9303045089363787824

namespace A038243

/-- `A027467(n)/A140303(n)` -/
def P9303045089363787824.Spec : Prop :=
  ∀ n, P9303045089363787824.a n = (A038243 n : ℚ)

end A038243

/-! ## A038243.P17524921904838908384

`gcd(A013626(n), A027467(n))`
-/

namespace A038243.P17524921904838908384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013626 n) (A027467 n)

end

end A038243.P17524921904838908384

namespace A038243

/-- `gcd(A013626(n), A027467(n))` -/
def P17524921904838908384.Spec : Prop :=
  ∀ n, (P17524921904838908384.a n : ℤ) = A038243 n

end A038243

/-! ## A038243.P9923480207380644673

`A007318(n)/A027465(n)*A027467(n)`
-/

namespace A038243.P9923480207380644673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A027465 n : ℚ) * (A027467 n : ℚ)

end

end A038243.P9923480207380644673

namespace A038243

/-- `A007318(n)/A027465(n)*A027467(n)` -/
def P9923480207380644673.Spec : Prop :=
  ∀ n, P9923480207380644673.a n = (A038243 n : ℚ)

end A038243

/-!
# A038244: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*2^j.

The programs for A038244, the canonical program `A038244.P8625253642017748950` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038244 has offset 0).

The definition of A038244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038244.P14184115673254918920

`A038243(n)*A059268(n)`
-/

namespace A038244.P14184115673254918920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A059268 n

end

end A038244.P14184115673254918920

namespace A038244

/-- `A038243(n)*A059268(n)` -/
def P14184115673254918920.Spec : Prop :=
  ∀ n, P14184115673254918920.a n = A038244 n

end A038244

/-! ## A038244.P2934168732580343846

`lcm(A013609(n), A038243(n))`
-/

namespace A038244.P2934168732580343846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A038243 n)

end

end A038244.P2934168732580343846

namespace A038244

/-- `lcm(A013609(n), A038243(n))` -/
def P2934168732580343846.Spec : Prop :=
  ∀ n, (P2934168732580343846.a n : ℤ) = A038244 n

end A038244

/-! ## A038244.P8625253642017748950

`A000351(A025581(n))*A013609(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038244

/-- `A000351(A025581(n))*A013609(n)` -/
def P8625253642017748950.Spec : Prop :=
  ∀ n, P8625253642017748950.a n = A038244 n

theorem P8625253642017748950.correct : P8625253642017748950.Spec := by
  intro n
  simp only [A038244]

end A038244

/-! ## A038244.P16672390073763606961

`A000079(A002262(n))*A038243(n)`
-/

namespace A038244.P16672390073763606961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A038243 n

end

end A038244.P16672390073763606961

namespace A038244

/-- `A000079(A002262(n))*A038243(n)` -/
def P16672390073763606961.Spec : Prop :=
  ∀ n, P16672390073763606961.a n = A038244 n

end A038244

/-! ## A038244.P7396858694804229484

`A013621(A061579(n))`
-/

namespace A038244.P7396858694804229484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013621 (A061579 n).toNat

end

end A038244.P7396858694804229484

namespace A038244

/-- `A013621(A061579(n))` -/
def P7396858694804229484.Spec : Prop :=
  ∀ n, P7396858694804229484.a n = A038244 n

end A038244

/-! ## A038244.P17690112314297391736

`A038246(n)/A059268(n)`
-/

namespace A038244.P17690112314297391736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038246 n : ℚ) / (A059268 n : ℚ)

end

end A038244.P17690112314297391736

namespace A038244

/-- `A038246(n)/A059268(n)` -/
def P17690112314297391736.Spec : Prop :=
  ∀ n, P17690112314297391736.a n = (A038244 n : ℚ)

end A038244

/-! ## A038244.P13405194881353833734

`sqrt(A038243(n))*sqrt(A038246(n))`
-/

namespace A038244.P13405194881353833734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038243 n : ℝ) * Real.sqrt (A038246 n : ℝ)

end

end A038244.P13405194881353833734

namespace A038244

/-- `sqrt(A038243(n))*sqrt(A038246(n))` -/
def P13405194881353833734.Spec : Prop :=
  ∀ n, P13405194881353833734.a n = (A038244 n : ℝ)

end A038244

/-! ## A038244.P16800091886650427945

`gcd(A038246(n), A038248(n))`
-/

namespace A038244.P16800091886650427945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038246 n) (A038248 n)

end

end A038244.P16800091886650427945

namespace A038244

/-- `gcd(A038246(n), A038248(n))` -/
def P16800091886650427945.Spec : Prop :=
  ∀ n, (P16800091886650427945.a n : ℤ) = A038244 n

end A038244

/-! ## A038244.P6768012065373846196

`A038304(n)/A130321(n)`
-/

namespace A038244.P6768012065373846196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038304 n : ℚ) / (A130321 n : ℚ)

end

end A038244.P6768012065373846196

namespace A038244

/-- `A038304(n)/A130321(n)` -/
def P6768012065373846196.Spec : Prop :=
  ∀ n, P6768012065373846196.a n = (A038244 n : ℚ)

end A038244

/-! ## A038244.P2199716597588145883

`A038250(n)/A059268(n)²`
-/

namespace A038244.P2199716597588145883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038250 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038244.P2199716597588145883

namespace A038244

/-- `A038250(n)/A059268(n)²` -/
def P2199716597588145883.Spec : Prop :=
  ∀ n, P2199716597588145883.a n = (A038244 n : ℚ)

end A038244

/-! ## A038244.P471248695100055457

`A038306(n)/A137688(n)`
-/

namespace A038244.P471248695100055457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038306 n : ℚ) / (A137688 n : ℚ)

end

end A038244.P471248695100055457

namespace A038244

/-- `A038306(n)/A137688(n)` -/
def P471248695100055457.Spec : Prop :=
  ∀ n, P471248695100055457.a n = (A038244 n : ℚ)

end A038244

/-! ## A038244.P15766824082930928408

`gcd(A038250(n), A038252(n))`
-/

namespace A038244.P15766824082930928408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038250 n) (A038252 n)

end

end A038244.P15766824082930928408

namespace A038244

/-- `gcd(A038250(n), A038252(n))` -/
def P15766824082930928408.Spec : Prop :=
  ∀ n, (P15766824082930928408.a n : ℤ) = A038244 n

end A038244

/-! ## A038244.P10395486726828562388

`A038308(n)/A036561(n)`
-/

namespace A038244.P10395486726828562388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n : ℚ) / (A036561 n : ℚ)

end

end A038244.P10395486726828562388

namespace A038244

/-- `A038308(n)/A036561(n)` -/
def P10395486726828562388.Spec : Prop :=
  ∀ n, P10395486726828562388.a n = (A038244 n : ℚ)

end A038244

/-! ## A038244.P11316933789410358268

`A038310(n)/A368043(n)`
-/

namespace A038244.P11316933789410358268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038310 n : ℚ) / (A368043 n : ℚ)

end

end A038244.P11316933789410358268

namespace A038244

/-- `A038310(n)/A368043(n)` -/
def P11316933789410358268.Spec : Prop :=
  ∀ n, P11316933789410358268.a n = (A038244 n : ℚ)

end A038244

/-! ## A038244.P1864707931351045922

`A038312(n)/A232646(n+1)`
-/

namespace A038244.P1864707931351045922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038312 n : ℚ) / (A232646 (n + 1) : ℚ)

end

end A038244.P1864707931351045922

namespace A038244

/-- `A038312(n)/A232646(n+1)` -/
def P1864707931351045922.Spec : Prop :=
  ∀ n, P1864707931351045922.a n = (A038244 n : ℚ)

end A038244

/-! ## A038244.P8466014176278976773

`A038314(n)/A100851(n)`
-/

namespace A038244.P8466014176278976773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038314 n : ℚ) / (A100851 n : ℚ)

end

end A038244.P8466014176278976773

namespace A038244

/-- `A038314(n)/A100851(n)` -/
def P8466014176278976773.Spec : Prop :=
  ∀ n, P8466014176278976773.a n = (A038244 n : ℚ)

end A038244

/-! ## A038244.P7477619705546842180

`sqrt(A038243(n)*A038246(n))`
-/

namespace A038244.P7477619705546842180
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038243 n * A038246 n : ℝ)

end

end A038244.P7477619705546842180

namespace A038244

/-- `sqrt(A038243(n)*A038246(n))` -/
def P7477619705546842180.Spec : Prop :=
  ∀ n, P7477619705546842180.a n = (A038244 n : ℝ)

end A038244

/-! ## A038244.P1367150700608430859

`gcd(A038252(n)+A038254(n)², A038254(n))`
-/

namespace A038244.P1367150700608430859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038252 n + A038254 n ^ 2) (A038254 n)

end

end A038244.P1367150700608430859

namespace A038244

/-- `gcd(A038252(n)+A038254(n)², A038254(n))` -/
def P1367150700608430859.Spec : Prop :=
  ∀ n, (P1367150700608430859.a n : ℤ) = A038244 n

end A038244

/-!
# A038245: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*3^j.

The programs for A038245, the canonical program `A038245.P18047517022959830435` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038245 has offset 0).

The definition of A038245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038245.P18047517022959830435

`lcm(A013610(n), A038243(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038245

/-- `lcm(A013610(n), A038243(n))` -/
def P18047517022959830435.Spec : Prop :=
  ∀ n, (P18047517022959830435.a n : ℤ) = A038245 n

theorem P18047517022959830435.correct : P18047517022959830435.Spec := by
  intro n
  simp only [A038245]

end A038245

/-! ## A038245.P14283270315818780025

`5^A025581(n)*A013610(n)`
-/

namespace A038245.P14283270315818780025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A025581 n : ℤ) * (A013610 n : ℚ)

end

end A038245.P14283270315818780025

namespace A038245

/-- `5^A025581(n)*A013610(n)` -/
def P14283270315818780025.Spec : Prop :=
  ∀ n, P14283270315818780025.a n = (A038245 n : ℚ)

end A038245

/-! ## A038245.P8827512469498955313

`A013622(A061579(n))`
-/

namespace A038245.P8827512469498955313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 (A061579 n).toNat

end

end A038245.P8827512469498955313

namespace A038245

/-- `A013622(A061579(n))` -/
def P8827512469498955313.Spec : Prop :=
  ∀ n, P8827512469498955313.a n = A038245 n

end A038245

/-! ## A038245.P13857245370542030271

`A013622(A114327(n)+n)`
-/

namespace A038245.P13857245370542030271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 (A114327 n + (n : ℤ)).toNat

end

end A038245.P13857245370542030271

namespace A038245

/-- `A013622(A114327(n)+n)` -/
def P13857245370542030271.Spec : Prop :=
  ∀ n, P13857245370542030271.a n = A038245 n

end A038245

/-! ## A038245.P11235860316198799005

`A013622(A038722(n+1)-1)`
-/

namespace A038245.P11235860316198799005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 (A038722 (n + 1) - 1).toNat

end

end A038245.P11235860316198799005

namespace A038245

/-- `A013622(A038722(n+1)-1)` -/
def P11235860316198799005.Spec : Prop :=
  ∀ n, P11235860316198799005.a n = A038245 n

end A038245

/-! ## A038245.P11415716649904637555

`A013622(A093995(n+1)-(n+1))`
-/

namespace A038245.P11415716649904637555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A038245.P11415716649904637555

namespace A038245

/-- `A013622(A093995(n+1)-(n+1))` -/
def P11415716649904637555.Spec : Prop :=
  ∀ n, P11415716649904637555.a n = A038245 n

end A038245

/-! ## A038245.P15874019756068886121

`A038248(n)/A059268(n)`
-/

namespace A038245.P15874019756068886121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038248 n : ℚ) / (A059268 n : ℚ)

end

end A038245.P15874019756068886121

namespace A038245

/-- `A038248(n)/A059268(n)` -/
def P15874019756068886121.Spec : Prop :=
  ∀ n, P15874019756068886121.a n = (A038245 n : ℚ)

end A038245

/-! ## A038245.P4621660557792974893

`A038305(n)/A130321(n)`
-/

namespace A038245.P4621660557792974893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038305 n : ℚ) / (A130321 n : ℚ)

end

end A038245.P4621660557792974893

namespace A038245

/-- `A038305(n)/A130321(n)` -/
def P4621660557792974893.Spec : Prop :=
  ∀ n, P4621660557792974893.a n = (A038245 n : ℚ)

end A038245

/-! ## A038245.P15621780447710094438

`gcd(A038248(n), A038251(n))`
-/

namespace A038245.P15621780447710094438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038248 n) (A038251 n)

end

end A038245.P15621780447710094438

namespace A038245

/-- `gcd(A038248(n), A038251(n))` -/
def P15621780447710094438.Spec : Prop :=
  ∀ n, (P15621780447710094438.a n : ℤ) = A038245 n

end A038245

/-! ## A038245.P17443586262377967819

`A038308(n)/A137688(n)`
-/

namespace A038245.P17443586262377967819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n : ℚ) / (A137688 n : ℚ)

end

end A038245.P17443586262377967819

namespace A038245

/-- `A038308(n)/A137688(n)` -/
def P17443586262377967819.Spec : Prop :=
  ∀ n, P17443586262377967819.a n = (A038245 n : ℚ)

end A038245

/-! ## A038245.P15249284096438192382

`A013610(n)/A027465(n)*A027467(n)`
-/

namespace A038245.P15249284096438192382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013610 n : ℚ) / (A027465 n : ℚ) * (A027467 n : ℚ)

end

end A038245.P15249284096438192382

namespace A038245

/-- `A013610(n)/A027465(n)*A027467(n)` -/
def P15249284096438192382.Spec : Prop :=
  ∀ n, P15249284096438192382.a n = (A038245 n : ℚ)

end A038245

/-! ## A038245.P2507910701323702528

`A038254(n)/A059268(n)²`
-/

namespace A038245.P2507910701323702528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038254 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038245.P2507910701323702528

namespace A038245

/-- `A038254(n)/A059268(n)²` -/
def P2507910701323702528.Spec : Prop :=
  ∀ n, P2507910701323702528.a n = (A038245 n : ℚ)

end A038245

/-! ## A038245.P15702282205521020303

`A038311(n)/A036561(n)`
-/

namespace A038245.P15702282205521020303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038311 n : ℚ) / (A036561 n : ℚ)

end

end A038245.P15702282205521020303

namespace A038245

/-- `A038311(n)/A036561(n)` -/
def P15702282205521020303.Spec : Prop :=
  ∀ n, P15702282205521020303.a n = (A038245 n : ℚ)

end A038245

/-! ## A038245.P2810708251149029131

`A038314(n)/A368043(n)`
-/

namespace A038245.P2810708251149029131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038314 n : ℚ) / (A368043 n : ℚ)

end

end A038245.P2810708251149029131

namespace A038245

/-- `A038314(n)/A368043(n)` -/
def P2810708251149029131.Spec : Prop :=
  ∀ n, P2810708251149029131.a n = (A038245 n : ℚ)

end A038245

/-!
# A038246: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*4^j.

The programs for A038246, the canonical program `A038246.P15260867033814283851` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038246 has offset 0).

The definition of A038246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5716 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038246.P15260867033814283851

`A038244(n)*A059268(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038246

/-- `A038244(n)*A059268(n)` -/
def P15260867033814283851.Spec : Prop :=
  ∀ n, P15260867033814283851.a n = A038246 n

theorem P15260867033814283851.correct : P15260867033814283851.Spec := by
  intro n
  simp only [A038246]

end A038246

/-! ## A038246.P9034958515031130149

`lcm(A013611(n), A038243(n))`
-/

namespace A038246.P9034958515031130149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013611 n) (A038243 n)

end

end A038246.P9034958515031130149

namespace A038246

/-- `lcm(A013611(n), A038243(n))` -/
def P9034958515031130149.Spec : Prop :=
  ∀ n, (P9034958515031130149.a n : ℤ) = A038246 n

end A038246

/-! ## A038246.P5485005015015210202

`A059268(n)²*A038243(n)`
-/

namespace A038246.P5485005015015210202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038243 n

end

end A038246.P5485005015015210202

namespace A038246

/-- `A059268(n)²*A038243(n)` -/
def P5485005015015210202.Spec : Prop :=
  ∀ n, P5485005015015210202.a n = A038246 n

end A038246

/-! ## A038246.P10431813321257721941

`A000079(A002262(n))²*A038243(n)`
-/

namespace A038246.P10431813321257721941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat ^ 2 * A038243 n

end

end A038246.P10431813321257721941

namespace A038246

/-- `A000079(A002262(n))²*A038243(n)` -/
def P10431813321257721941.Spec : Prop :=
  ∀ n, P10431813321257721941.a n = A038246 n

end A038246

/-! ## A038246.P16261034240017521735

`A000079(2*A002262(n))*A038243(n)`
-/

namespace A038246.P16261034240017521735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A002262 n).toNat * A038243 n

end

end A038246.P16261034240017521735

namespace A038246

/-- `A000079(2*A002262(n))*A038243(n)` -/
def P16261034240017521735.Spec : Prop :=
  ∀ n, P16261034240017521735.a n = A038246 n

end A038246

/-! ## A038246.P11601629091393839233

`A038244(n)/A038243(n)*A038244(n)`
-/

namespace A038246.P11601629091393839233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038244 n : ℚ) / (A038243 n : ℚ) * (A038244 n : ℚ)

end

end A038246.P11601629091393839233

namespace A038246

/-- `A038244(n)/A038243(n)*A038244(n)` -/
def P11601629091393839233.Spec : Prop :=
  ∀ n, P11601629091393839233.a n = (A038246 n : ℚ)

end A038246

/-! ## A038246.P6836631359310169905

`A013628(A061579(n))`
-/

namespace A038246.P6836631359310169905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013628 (A061579 n).toNat

end

end A038246.P6836631359310169905

namespace A038246

/-- `A013628(A061579(n))` -/
def P6836631359310169905.Spec : Prop :=
  ∀ n, P6836631359310169905.a n = A038246 n

end A038246

/-! ## A038246.P2812474404295728991

`A038250(n)/A059268(n)`
-/

namespace A038246.P2812474404295728991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038250 n : ℚ) / (A059268 n : ℚ)

end

end A038246.P2812474404295728991

namespace A038246

/-- `A038250(n)/A059268(n)` -/
def P2812474404295728991.Spec : Prop :=
  ∀ n, P2812474404295728991.a n = (A038246 n : ℚ)

end A038246

/-! ## A038246.P6071393758380665882

`A038248(n)/A038251(n)*A038248(n)`
-/

namespace A038246.P6071393758380665882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038248 n : ℚ) / (A038251 n : ℚ) * (A038248 n : ℚ)

end

end A038246.P6071393758380665882

namespace A038246

/-- `A038248(n)/A038251(n)*A038248(n)` -/
def P6071393758380665882.Spec : Prop :=
  ∀ n, P6071393758380665882.a n = (A038246 n : ℚ)

end A038246

/-! ## A038246.P5163826929387419659

`A038306(n)/A130321(n)`
-/

namespace A038246.P5163826929387419659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038306 n : ℚ) / (A130321 n : ℚ)

end

end A038246.P5163826929387419659

namespace A038246

/-- `A038306(n)/A130321(n)` -/
def P5163826929387419659.Spec : Prop :=
  ∀ n, P5163826929387419659.a n = (A038246 n : ℚ)

end A038246

/-! ## A038246.P6147777596228074179

`gcd(A038250(n), A038254(n))`
-/

namespace A038246.P6147777596228074179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038250 n) (A038254 n)

end

end A038246.P6147777596228074179

namespace A038246

/-- `gcd(A038250(n), A038254(n))` -/
def P6147777596228074179.Spec : Prop :=
  ∀ n, (P6147777596228074179.a n : ℤ) = A038246 n

end A038246

/-! ## A038246.P10719596788115533740

`A038310(n)/A137688(n)`
-/

namespace A038246.P10719596788115533740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038310 n : ℚ) / (A137688 n : ℚ)

end

end A038246.P10719596788115533740

namespace A038246

/-- `A038310(n)/A137688(n)` -/
def P10719596788115533740.Spec : Prop :=
  ∀ n, P10719596788115533740.a n = (A038246 n : ℚ)

end A038246

/-! ## A038246.P1575495859732803058

`A038314(n)/A036561(n)`
-/

namespace A038246.P1575495859732803058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038314 n : ℚ) / (A036561 n : ℚ)

end

end A038246.P1575495859732803058

namespace A038246

/-- `A038314(n)/A036561(n)` -/
def P1575495859732803058.Spec : Prop :=
  ∀ n, P1575495859732803058.a n = (A038246 n : ℚ)

end A038246

/-! ## A038246.P12537339329100692414

`A038244(n)²/A038243(n)`
-/

namespace A038246.P12537339329100692414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038244 n ^ 2 : ℚ) / (A038243 n : ℚ)

end

end A038246.P12537339329100692414

namespace A038246

/-- `A038244(n)²/A038243(n)` -/
def P12537339329100692414.Spec : Prop :=
  ∀ n, P12537339329100692414.a n = (A038246 n : ℚ)

end A038246

/-! ## A038246.P14867841885921050604

`A038244(n)²/gcd(A038244(n), A038245(n))`
-/

namespace A038246.P14867841885921050604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038244 n ^ 2 : ℚ) / (Int.gcd (A038244 n) (A038245 n) : ℚ)

end

end A038246.P14867841885921050604

namespace A038246

/-- `A038244(n)²/gcd(A038244(n), A038245(n))` -/
def P14867841885921050604.Spec : Prop :=
  ∀ n, P14867841885921050604.a n = (A038246 n : ℚ)

end A038246

/-! ## A038246.P2904390281123526489

`A038248(n)²/A038251(n)`
-/

namespace A038246.P2904390281123526489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038248 n ^ 2 : ℚ) / (A038251 n : ℚ)

end

end A038246.P2904390281123526489

namespace A038246

/-- `A038248(n)²/A038251(n)` -/
def P2904390281123526489.Spec : Prop :=
  ∀ n, P2904390281123526489.a n = (A038246 n : ℚ)

end A038246

/-!
# A038247: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*5^j.

The programs for A038247, the canonical program `A038247.P6184106318051769325` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038247 has offset 0).

The definition of A038247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038247.P12212890652873567581

`5^A003056(n)*A007318(n)`
-/

namespace A038247.P12212890652873567581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A003056 n : ℤ) * (A007318 n : ℚ)

end

end A038247.P12212890652873567581

namespace A038247

/-- `5^A003056(n)*A007318(n)` -/
def P12212890652873567581.Spec : Prop :=
  ∀ n, P12212890652873567581.a n = (A038247 n : ℚ)

end A038247

/-! ## A038247.P6184106318051769325

`A000351(A003056(n))*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A038247

/-- `A000351(A003056(n))*A007318(n)` -/
def P6184106318051769325.Spec : Prop :=
  ∀ n, P6184106318051769325.a n = A038247 n

theorem P6184106318051769325.correct : P6184106318051769325.Spec := by
  intro n
  simp only [A038247]

end A038247

/-! ## A038247.P8190120436161245026

`A000351(A002262(n))*A038243(n)`
-/

namespace A038247.P8190120436161245026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A002262 n).toNat * A038243 n

end

end A038247.P8190120436161245026

namespace A038247

/-- `A000351(A002262(n))*A038243(n)` -/
def P8190120436161245026.Spec : Prop :=
  ∀ n, P8190120436161245026.a n = A038247 n

end A038247

/-! ## A038247.P4190845464215186695

`A007318(n)*A038243(A057944(n))`
-/

namespace A038247.P4190845464215186695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A038243 (A057944 n).toNat

end

end A038247.P4190845464215186695

namespace A038247

/-- `A007318(n)*A038243(A057944(n))` -/
def P4190845464215186695.Spec : Prop :=
  ∀ n, P4190845464215186695.a n = A038247 n

end A038247

/-! ## A038247.P7153221689028286282

`A038243(n)*A038243(A112367(n))`
-/

namespace A038247.P7153221689028286282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A038243 (A112367 n).toNat

end

end A038247.P7153221689028286282

namespace A038247

/-- `A038243(n)*A038243(A112367(n))` -/
def P7153221689028286282.Spec : Prop :=
  ∀ n, P7153221689028286282.a n = A038247 n

end A038247

/-! ## A038247.P15390838243982350302

`A000351(n-A057944(n))*A038243(n)`
-/

namespace A038247.P15390838243982350302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 ((n : ℤ) - A057944 n).toNat * A038243 n

end

end A038247.P15390838243982350302

namespace A038247

/-- `A000351(n-A057944(n))*A038243(n)` -/
def P15390838243982350302.Spec : Prop :=
  ∀ n, P15390838243982350302.a n = A038247 n

end A038247

/-! ## A038247.P3467788429973344945

`A013612(n)/A007318(n)*A038243(n)`
-/

namespace A038247.P3467788429973344945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013612 n : ℚ) / (A007318 n : ℚ) * (A038243 n : ℚ)

end

end A038247.P3467788429973344945

namespace A038247

/-- `A013612(n)/A007318(n)*A038243(n)` -/
def P3467788429973344945.Spec : Prop :=
  ∀ n, P3467788429973344945.a n = (A038247 n : ℚ)

end A038247

/-! ## A038247.P11168750367534778002

`A007318(n)*Δ[A259669(n)]`
-/

namespace A038247.P11168750367534778002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * (f1 (n + 1) - f1 n)

end

end A038247.P11168750367534778002

namespace A038247

/-- `A007318(n)*Δ[A259669(n)]` -/
def P11168750367534778002.Spec : Prop :=
  ∀ n, P11168750367534778002.a n = A038247 n

end A038247

/-! ## A038247.P1289294028091834418

`A038252(n)/A059268(n)`
-/

namespace A038247.P1289294028091834418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038252 n : ℚ) / (A059268 n : ℚ)

end

end A038247.P1289294028091834418

namespace A038247

/-- `A038252(n)/A059268(n)` -/
def P1289294028091834418.Spec : Prop :=
  ∀ n, P1289294028091834418.a n = (A038247 n : ℚ)

end A038247

/-! ## A038247.P847584327297193050

`A038307(n)/A130321(n)`
-/

namespace A038247.P847584327297193050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038307 n : ℚ) / (A130321 n : ℚ)

end

end A038247.P847584327297193050

namespace A038247

/-- `A038307(n)/A130321(n)` -/
def P847584327297193050.Spec : Prop :=
  ∀ n, P847584327297193050.a n = (A038247 n : ℚ)

end A038247

/-! ## A038247.P8807853969354418632

`A013612(n)/A027465(n)*A027467(n)`
-/

namespace A038247.P8807853969354418632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013612 n : ℚ) / (A027465 n : ℚ) * (A027467 n : ℚ)

end

end A038247.P8807853969354418632

namespace A038247

/-- `A013612(n)/A027465(n)*A027467(n)` -/
def P8807853969354418632.Spec : Prop :=
  ∀ n, P8807853969354418632.a n = (A038247 n : ℚ)

end A038247

/-! ## A038247.P8199927825026010024

`A038312(n)/A137688(n)`
-/

namespace A038247.P8199927825026010024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038312 n : ℚ) / (A137688 n : ℚ)

end

end A038247.P8199927825026010024

namespace A038247

/-- `A038312(n)/A137688(n)` -/
def P8199927825026010024.Spec : Prop :=
  ∀ n, P8199927825026010024.a n = (A038247 n : ℚ)

end A038247

/-! ## A038247.P18433982562827414085

`A000351(n)/A000351(A057944(n))*A038243(n)`
-/

namespace A038247.P18433982562827414085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n : ℚ) / (A000351 (A057944 n).toNat : ℚ) * (A038243 n : ℚ)

end

end A038247.P18433982562827414085

namespace A038247

/-- `A000351(n)/A000351(A057944(n))*A038243(n)` -/
def P18433982562827414085.Spec : Prop :=
  ∀ n, P18433982562827414085.a n = (A038247 n : ℚ)

end A038247

/-! ## A038247.P10414618206126377587

`A032532(A059268(n))*A038243(n)`
-/

namespace A038247.P10414618206126377587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (A059268 n).toNat * A038243 n

end

end A038247.P10414618206126377587

namespace A038247

/-- `A032532(A059268(n))*A038243(n)` -/
def P10414618206126377587.Spec : Prop :=
  ∀ n, P10414618206126377587.a n = A038247 n

end A038247

/-!
# A038248: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*6^j.

The programs for A038248, the canonical program `A038248.P5226553571580903322` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038248 has offset 0).

The definition of A038248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4895 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038248.P2498864101421379190

`A038245(n)*A059268(n)`
-/

namespace A038248.P2498864101421379190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038245 n * A059268 n

end

end A038248.P2498864101421379190

namespace A038248

/-- `A038245(n)*A059268(n)` -/
def P2498864101421379190.Spec : Prop :=
  ∀ n, P2498864101421379190.a n = A038248 n

end A038248

/-! ## A038248.P11481975007749440616

`lcm(A013609(n), A038245(n))`
-/

namespace A038248.P11481975007749440616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A038245 n)

end

end A038248.P11481975007749440616

namespace A038248

/-- `lcm(A013609(n), A038245(n))` -/
def P11481975007749440616.Spec : Prop :=
  ∀ n, (P11481975007749440616.a n : ℤ) = A038248 n

end A038248

/-! ## A038248.P5226553571580903322

`lcm(A013610(n), A038244(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038248

/-- `lcm(A013610(n), A038244(n))` -/
def P5226553571580903322.Spec : Prop :=
  ∀ n, (P5226553571580903322.a n : ℤ) = A038248 n

theorem P5226553571580903322.correct : P5226553571580903322.Spec := by
  intro n
  simp only [A038248]

end A038248

/-! ## A038248.P15716276597011138706

`lcm(A013613(n), A038243(n))`
-/

namespace A038248.P15716276597011138706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013613 n) (A038243 n)

end

end A038248.P15716276597011138706

namespace A038248

/-- `lcm(A013613(n), A038243(n))` -/
def P15716276597011138706.Spec : Prop :=
  ∀ n, (P15716276597011138706.a n : ℤ) = A038248 n

end A038248

/-! ## A038248.P12895649998502047985

`A013613(n)/A007318(n)*A038243(n)`
-/

namespace A038248.P12895649998502047985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A007318 n : ℚ) * (A038243 n : ℚ)

end

end A038248.P12895649998502047985

namespace A038248

/-- `A013613(n)/A007318(n)*A038243(n)` -/
def P12895649998502047985.Spec : Prop :=
  ∀ n, P12895649998502047985.a n = (A038248 n : ℚ)

end A038248

/-! ## A038248.P17791040626043052664

`A038259(A061579(n))`
-/

namespace A038248.P17791040626043052664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038259 (A061579 n).toNat

end

end A038248.P17791040626043052664

namespace A038248

/-- `A038259(A061579(n))` -/
def P17791040626043052664.Spec : Prop :=
  ∀ n, P17791040626043052664.a n = A038248 n

end A038248

/-! ## A038248.P15153921351570614475

`A038308(n)/A130321(n)`
-/

namespace A038248.P15153921351570614475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n : ℚ) / (A130321 n : ℚ)

end

end A038248.P15153921351570614475

namespace A038248

/-- `A038308(n)/A130321(n)` -/
def P15153921351570614475.Spec : Prop :=
  ∀ n, P15153921351570614475.a n = (A038248 n : ℚ)

end A038248

/-! ## A038248.P7777299217912935363

`A038254(n)/A059268(n)`
-/

namespace A038248.P7777299217912935363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038254 n : ℚ) / (A059268 n : ℚ)

end

end A038248.P7777299217912935363

namespace A038248

/-- `A038254(n)/A059268(n)` -/
def P7777299217912935363.Spec : Prop :=
  ∀ n, P7777299217912935363.a n = (A038248 n : ℚ)

end A038248

/-! ## A038248.P15023011052966509881

`A038314(n)/A137688(n)`
-/

namespace A038248.P15023011052966509881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038314 n : ℚ) / (A137688 n : ℚ)

end

end A038248.P15023011052966509881

namespace A038248

/-- `A038314(n)/A137688(n)` -/
def P15023011052966509881.Spec : Prop :=
  ∀ n, P15023011052966509881.a n = (A038248 n : ℚ)

end A038248

/-! ## A038248.P2932988480525601387

`A007318(n)/A038208(n)*A038314(n)`
-/

namespace A038248.P2932988480525601387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A038208 n : ℚ) * (A038314 n : ℚ)

end

end A038248.P2932988480525601387

namespace A038248

/-- `A007318(n)/A038208(n)*A038314(n)` -/
def P2932988480525601387.Spec : Prop :=
  ∀ n, P2932988480525601387.a n = (A038248 n : ℚ)

end A038248

/-! ## A038248.P17875149782311594362

`gcd(A038254(n)²/A038250(n), A038254(n))`
-/

namespace A038248.P17875149782311594362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038254 n ^ 2 : ℚ) / (A038250 n : ℚ))) (A038254 n)

end

end A038248.P17875149782311594362

namespace A038248

/-- `gcd(A038254(n)²/A038250(n), A038254(n))` -/
def P17875149782311594362.Spec : Prop :=
  ∀ n, (P17875149782311594362.a n : ℤ) = A038248 n

end A038248

/-!
# A038249: Third line of 4-wave sequence A038197.

The programs for A038249, the canonical program `A038249.P7159985381520197905` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038249 has offset 0).

The definition of A038249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038249.P10568253846255139198

`A038197(A047235(n+1))`
-/

namespace A038249.P10568253846255139198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (A047235 (n + 1)).toNat

end

end A038249.P10568253846255139198

namespace A038249

/-- `A038197(A047235(n+1))` -/
def P10568253846255139198.Spec : Prop :=
  ∀ n, P10568253846255139198.a n = A038249 n

end A038249

/-! ## A038249.P6658279297840162952

`A187506(A047233(n+2))`
-/

namespace A038249.P6658279297840162952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (A047233 (n + 2)).toNat

end

end A038249.P6658279297840162952

namespace A038249

/-- `A187506(A047233(n+2))` -/
def P6658279297840162952.Spec : Prop :=
  ∀ n, P6658279297840162952.a n = A038249 n

end A038249

/-! ## A038249.P3225962299282205032

`∑[A038197(or(1, A008486(n)))]`
-/

namespace A038249.P3225962299282205032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (Int.lor 1 (A008486 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038249.P3225962299282205032

namespace A038249

/-- `∑[A038197(or(1, A008486(n)))]` -/
def P3225962299282205032.Spec : Prop :=
  ∀ n, P3225962299282205032.a n = A038249 n

end A038249

/-! ## A038249.P14441012051637798916

`A038197(or(1, A008486(n))+1)`
-/

namespace A038249.P14441012051637798916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (Int.lor 1 (A008486 n) + 1).toNat

end

end A038249.P14441012051637798916

namespace A038249

/-- `A038197(or(1, A008486(n))+1)` -/
def P14441012051637798916.Spec : Prop :=
  ∀ n, P14441012051637798916.a n = A038249 n

end A038249

/-! ## A038249.P6749052858587519689

`∑[A187506(A083219(A016945(n)))]`
-/

namespace A038249.P6749052858587519689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (A083219 (A016945 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038249.P6749052858587519689

namespace A038249

/-- `∑[A187506(A083219(A016945(n)))]` -/
def P6749052858587519689.Spec : Prop :=
  ∀ n, P6749052858587519689.a n = A038249 n

end A038249

/-! ## A038249.P5589160466873436760

`∑[A187506(A109613(A016789(n)))]`
-/

namespace A038249.P5589160466873436760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (A109613 (A016789 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038249.P5589160466873436760

namespace A038249

/-- `∑[A187506(A109613(A016789(n)))]` -/
def P5589160466873436760.Spec : Prop :=
  ∀ n, P5589160466873436760.a n = A038249 n

end A038249

/-! ## A038249.P7159985381520197905

`A091024(n+1)+A091024(A237420(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038249

/-- `A091024(n+1)+A091024(A237420(n))` -/
def P7159985381520197905.Spec : Prop :=
  ∀ n, P7159985381520197905.a n = A038249 n

theorem P7159985381520197905.correct : P7159985381520197905.Spec := by
  intro n
  simp only [A038249]

end A038249

/-! ## A038249.P7669031664964888911

`A076264(n)-A091024(n-A237420(n))`
-/

namespace A038249.P7669031664964888911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 n - A091024 ((n : ℤ) - A237420 n).toNat

end

end A038249.P7669031664964888911

namespace A038249

/-- `A076264(n)-A091024(n-A237420(n))` -/
def P7669031664964888911.Spec : Prop :=
  ∀ n, P7669031664964888911.a n = A038249 n

end A038249

/-! ## A038249.P17722608000973405250

`A091024(n+1)+A076264(n)-A038237(n)`
-/

namespace A038249.P17722608000973405250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (n + 1) + (A076264 n - A038237 n)

end

end A038249.P17722608000973405250

namespace A038249

/-- `A091024(n+1)+A076264(n)-A038237(n)` -/
def P17722608000973405250.Spec : Prop :=
  ∀ n, P17722608000973405250.a n = A038249 n

end A038249

/-! ## A038249.P9435436216442786225

`A076264(n+1)-(A038237(n)+A006357(n))`
-/

namespace A038249.P9435436216442786225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 (n + 1) - (A038237 n + A006357 n)

end

end A038249.P9435436216442786225

namespace A038249

/-- `A076264(n+1)-(A038237(n)+A006357(n))` -/
def P9435436216442786225.Spec : Prop :=
  ∀ n, P9435436216442786225.a n = A038249 n

end A038249

/-!
# A038250: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*8^j.

The programs for A038250, the canonical program `A038250.P15038229439455009426` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038250 has offset 0).

The definition of A038250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038250.P15038229439455009426

`A038246(n)*A059268(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038250

/-- `A038246(n)*A059268(n)` -/
def P15038229439455009426.Spec : Prop :=
  ∀ n, P15038229439455009426.a n = A038250 n

theorem P15038229439455009426.correct : P15038229439455009426.Spec := by
  intro n
  simp only [A038250]

end A038250

/-! ## A038250.P6358697162159218880

`lcm(A013615(n), A038243(n))`
-/

namespace A038250.P6358697162159218880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013615 n) (A038243 n)

end

end A038250.P6358697162159218880

namespace A038250

/-- `lcm(A013615(n), A038243(n))` -/
def P6358697162159218880.Spec : Prop :=
  ∀ n, (P6358697162159218880.a n : ℤ) = A038250 n

end A038250

/-! ## A038250.P16368304827769256896

`A059268(n)²*A038244(n)`
-/

namespace A038250.P16368304827769256896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038244 n

end

end A038250.P16368304827769256896

namespace A038250

/-- `A059268(n)²*A038244(n)` -/
def P16368304827769256896.Spec : Prop :=
  ∀ n, P16368304827769256896.a n = A038250 n

end A038250

/-! ## A038250.P532965641097855337

`A000351(A025581(n))*A013615(n)`
-/

namespace A038250.P532965641097855337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat * A013615 n

end

end A038250.P532965641097855337

namespace A038250

/-- `A000351(A025581(n))*A013615(n)` -/
def P532965641097855337.Spec : Prop :=
  ∀ n, P532965641097855337.a n = A038250 n

end A038250

/-! ## A038250.P7891082069827307136

`A038246(n)/A038244(n)*A038246(n)`
-/

namespace A038250.P7891082069827307136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038246 n : ℚ) / (A038244 n : ℚ) * (A038246 n : ℚ)

end

end A038250.P7891082069827307136

namespace A038250

/-- `A038246(n)/A038244(n)*A038246(n)` -/
def P7891082069827307136.Spec : Prop :=
  ∀ n, P7891082069827307136.a n = (A038250 n : ℚ)

end A038250

/-! ## A038250.P2063422962026166239

`A038243(n)*A059268(n)*A059268(n)²`
-/

namespace A038250.P2063422962026166239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A059268 n * A059268 n ^ 2

end

end A038250.P2063422962026166239

namespace A038250

/-- `A038243(n)*A059268(n)*A059268(n)²` -/
def P2063422962026166239.Spec : Prop :=
  ∀ n, P2063422962026166239.a n = A038250 n

end A038250

/-! ## A038250.P13715992257635039808

`(A038244(n)/A038243(n))²*A038244(n)`
-/

namespace A038250.P13715992257635039808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038244 n : ℚ) / (A038243 n : ℚ)) ^ 2 * (A038244 n : ℚ)

end

end A038250.P13715992257635039808

namespace A038250

/-- `(A038244(n)/A038243(n))²*A038244(n)` -/
def P13715992257635039808.Spec : Prop :=
  ∀ n, P13715992257635039808.a n = (A038250 n : ℚ)

end A038250

/-! ## A038250.P2495554497271638131

`sqrt(A038246(n)/A038243(n))*A038246(n)`
-/

namespace A038250.P2495554497271638131
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A038246 n : ℚ) / (A038243 n : ℚ) : ℝ) * (A038246 n : ℝ)

end

end A038250.P2495554497271638131

namespace A038250

/-- `sqrt(A038246(n)/A038243(n))*A038246(n)` -/
def P2495554497271638131.Spec : Prop :=
  ∀ n, P2495554497271638131.a n = (A038250 n : ℝ)

end A038250

/-! ## A038250.P12578554469193354925

`A038283(A061579(n))`
-/

namespace A038250.P12578554469193354925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038283 (A061579 n).toNat

end

end A038250.P12578554469193354925

namespace A038250

/-- `A038283(A061579(n))` -/
def P12578554469193354925.Spec : Prop :=
  ∀ n, P12578554469193354925.a n = A038250 n

end A038250

/-! ## A038250.P5001541513444593159

`A038310(n)/A130321(n)`
-/

namespace A038250.P5001541513444593159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038310 n : ℚ) / (A130321 n : ℚ)

end

end A038250.P5001541513444593159

namespace A038250

/-- `A038310(n)/A130321(n)` -/
def P5001541513444593159.Spec : Prop :=
  ∀ n, P5001541513444593159.a n = (A038250 n : ℚ)

end A038250

/-! ## A038250.P6200998869774355046

`A038246(n)²/A038244(n)`
-/

namespace A038250.P6200998869774355046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038246 n ^ 2 : ℚ) / (A038244 n : ℚ)

end

end A038250.P6200998869774355046

namespace A038250

/-- `A038246(n)²/A038244(n)` -/
def P6200998869774355046.Spec : Prop :=
  ∀ n, P6200998869774355046.a n = (A038250 n : ℚ)

end A038250

/-! ## A038250.P4780536017384751310

`A038246(n)²/gcd(A038246(n), A038248(n))`
-/

namespace A038250.P4780536017384751310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038246 n ^ 2 : ℚ) / (Int.gcd (A038246 n) (A038248 n) : ℚ)

end

end A038250.P4780536017384751310

namespace A038250

/-- `A038246(n)²/gcd(A038246(n), A038248(n))` -/
def P4780536017384751310.Spec : Prop :=
  ∀ n, P4780536017384751310.a n = (A038250 n : ℚ)

end A038250

/-!
# A038251: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*9^j.

The programs for A038251, the canonical program `A038251.P17483344904607417422` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038251 has offset 0).

The definition of A038251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4053 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038251.P4452524484778304881

`lcm(A013616(n), A038243(n))`
-/

namespace A038251.P4452524484778304881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013616 n) (A038243 n)

end

end A038251.P4452524484778304881

namespace A038251

/-- `lcm(A013616(n), A038243(n))` -/
def P4452524484778304881.Spec : Prop :=
  ∀ n, (P4452524484778304881.a n : ℤ) = A038251 n

end A038251

/-! ## A038251.P17483344904607417422

`A000351(A025581(n))*A013616(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038251

/-- `A000351(A025581(n))*A013616(n)` -/
def P17483344904607417422.Spec : Prop :=
  ∀ n, P17483344904607417422.a n = A038251 n

theorem P17483344904607417422.correct : P17483344904607417422.Spec := by
  intro n
  simp only [A038251]

end A038251

/-! ## A038251.P12906359675696798100

`A000244(A002262(n))*A038245(n)`
-/

namespace A038251.P12906359675696798100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A038245 n

end

end A038251.P12906359675696798100

namespace A038251

/-- `A000244(A002262(n))*A038245(n)` -/
def P12906359675696798100.Spec : Prop :=
  ∀ n, P12906359675696798100.a n = A038251 n

end A038251

/-! ## A038251.P13690626311290182016

`A013616(n)/A007318(n)*A038243(n)`
-/

namespace A038251.P13690626311290182016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013616 n : ℚ) / (A007318 n : ℚ) * (A038243 n : ℚ)

end

end A038251.P13690626311290182016

namespace A038251

/-- `A013616(n)/A007318(n)*A038243(n)` -/
def P13690626311290182016.Spec : Prop :=
  ∀ n, P13690626311290182016.a n = (A038251 n : ℚ)

end A038251

/-! ## A038251.P5132673217669269995

`A038245(n)/A038243(n)*A038245(n)`
-/

namespace A038251.P5132673217669269995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038245 n : ℚ) / (A038243 n : ℚ) * (A038245 n : ℚ)

end

end A038251.P5132673217669269995

namespace A038251

/-- `A038245(n)/A038243(n)*A038245(n)` -/
def P5132673217669269995.Spec : Prop :=
  ∀ n, P5132673217669269995.a n = (A038251 n : ℚ)

end A038251

/-! ## A038251.P12797009741802667487

`A038248(n)/A038246(n)*A038248(n)`
-/

namespace A038251.P12797009741802667487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038248 n : ℚ) / (A038246 n : ℚ) * (A038248 n : ℚ)

end

end A038251.P12797009741802667487

namespace A038251

/-- `A038248(n)/A038246(n)*A038248(n)` -/
def P12797009741802667487.Spec : Prop :=
  ∀ n, P12797009741802667487.a n = (A038251 n : ℚ)

end A038251

/-! ## A038251.P16589733171745944179

`A038295(A061579(n))`
-/

namespace A038251.P16589733171745944179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038295 (A061579 n).toNat

end

end A038251.P16589733171745944179

namespace A038251

/-- `A038295(A061579(n))` -/
def P16589733171745944179.Spec : Prop :=
  ∀ n, P16589733171745944179.a n = A038251 n

end A038251

/-! ## A038251.P15380068718985504639

`A038311(n)/A130321(n)`
-/

namespace A038251.P15380068718985504639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038311 n : ℚ) / (A130321 n : ℚ)

end

end A038251.P15380068718985504639

namespace A038251

/-- `A038311(n)/A130321(n)` -/
def P15380068718985504639.Spec : Prop :=
  ∀ n, P15380068718985504639.a n = (A038251 n : ℚ)

end A038251

/-! ## A038251.P304024927411050353

`A038245(n)²/A038243(n)`
-/

namespace A038251.P304024927411050353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038245 n ^ 2 : ℚ) / (A038243 n : ℚ)

end

end A038251.P304024927411050353

namespace A038251

/-- `A038245(n)²/A038243(n)` -/
def P304024927411050353.Spec : Prop :=
  ∀ n, P304024927411050353.a n = (A038251 n : ℚ)

end A038251

/-! ## A038251.P7906193919829313426

`A038245(n)²/gcd(A038244(n), A038245(n))`
-/

namespace A038251.P7906193919829313426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038245 n ^ 2 : ℚ) / (Int.gcd (A038244 n) (A038245 n) : ℚ)

end

end A038251.P7906193919829313426

namespace A038251

/-- `A038245(n)²/gcd(A038244(n), A038245(n))` -/
def P7906193919829313426.Spec : Prop :=
  ∀ n, P7906193919829313426.a n = (A038251 n : ℚ)

end A038251

/-! ## A038251.P10074233122496582760

`A038248(n)²/A038246(n)`
-/

namespace A038251.P10074233122496582760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038248 n ^ 2 : ℚ) / (A038246 n : ℚ)

end

end A038251.P10074233122496582760

namespace A038251

/-- `A038248(n)²/A038246(n)` -/
def P10074233122496582760.Spec : Prop :=
  ∀ n, P10074233122496582760.a n = (A038251 n : ℚ)

end A038251

/-!
# A038252: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*10^j.

The programs for A038252, the canonical program `A038252.P12906081018445517339` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038252 has offset 0).

The definition of A038252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3796 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038252.P12906081018445517339

`A038247(n)*A059268(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038252

/-- `A038247(n)*A059268(n)` -/
def P12906081018445517339.Spec : Prop :=
  ∀ n, P12906081018445517339.a n = A038252 n

theorem P12906081018445517339.correct : P12906081018445517339.Spec := by
  intro n
  simp only [A038252]

end A038252

/-! ## A038252.P15210423985176826519

`lcm(A013609(n), A038247(n))`
-/

namespace A038252.P15210423985176826519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A038247 n)

end

end A038252.P15210423985176826519

namespace A038252

/-- `lcm(A013609(n), A038247(n))` -/
def P15210423985176826519.Spec : Prop :=
  ∀ n, (P15210423985176826519.a n : ℤ) = A038252 n

end A038252

/-! ## A038252.P9805074706718989737

`Δ[A259669(n)]*A013609(n)`
-/

namespace A038252.P9805074706718989737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A013609 n

end

end A038252.P9805074706718989737

namespace A038252

/-- `Δ[A259669(n)]*A013609(n)` -/
def P9805074706718989737.Spec : Prop :=
  ∀ n, P9805074706718989737.a n = A038252 n

end A038252

/-! ## A038252.P1131161572706026461

`5^A003056(n)*A013609(n)`
-/

namespace A038252.P1131161572706026461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A003056 n : ℤ) * (A013609 n : ℚ)

end

end A038252.P1131161572706026461

namespace A038252

/-- `5^A003056(n)*A013609(n)` -/
def P1131161572706026461.Spec : Prop :=
  ∀ n, P1131161572706026461.a n = (A038252 n : ℚ)

end A038252

/-! ## A038252.P16075970099882226151

`A000351(A003056(n))*A013609(n)`
-/

namespace A038252.P16075970099882226151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A003056 n).toNat * A013609 n

end

end A038252.P16075970099882226151

namespace A038252

/-- `A000351(A003056(n))*A013609(n)` -/
def P16075970099882226151.Spec : Prop :=
  ∀ n, P16075970099882226151.a n = A038252 n

end A038252

/-! ## A038252.P10264360360091074723

`A038307(A061579(n))`
-/

namespace A038252.P10264360360091074723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038307 (A061579 n).toNat

end

end A038252.P10264360360091074723

namespace A038252

/-- `A038307(A061579(n))` -/
def P10264360360091074723.Spec : Prop :=
  ∀ n, P10264360360091074723.a n = A038252 n

end A038252

/-! ## A038252.P7394705639187224843

`A038312(n)/A130321(n)`
-/

namespace A038252.P7394705639187224843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038312 n : ℚ) / (A130321 n : ℚ)

end

end A038252.P7394705639187224843

namespace A038252

/-- `A038312(n)/A130321(n)` -/
def P7394705639187224843.Spec : Prop :=
  ∀ n, P7394705639187224843.a n = (A038252 n : ℚ)

end A038252

/-! ## A038252.P15495586301929618085

`A038243(n)*A059268(n)*A032532(A059268(n))`
-/

namespace A038252.P15495586301929618085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A059268 n * A032532 (A059268 n).toNat

end

end A038252.P15495586301929618085

namespace A038252

/-- `A038243(n)*A059268(n)*A032532(A059268(n))` -/
def P15495586301929618085.Spec : Prop :=
  ∀ n, P15495586301929618085.a n = A038252 n

end A038252

/-!
# A038253: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*11^j.

The programs for A038253, the canonical program `A038253.P3757305968337782990` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038253 has offset 0).

The definition of A038253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038253.P11950001496931164052

`lcm(A013618(n), A038243(n))`
-/

namespace A038253.P11950001496931164052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013618 n) (A038243 n)

end

end A038253.P11950001496931164052

namespace A038253

/-- `lcm(A013618(n), A038243(n))` -/
def P11950001496931164052.Spec : Prop :=
  ∀ n, (P11950001496931164052.a n : ℤ) = A038253 n

end A038253

/-! ## A038253.P3757305968337782990

`A000351(A025581(n))*A013618(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038253

/-- `A000351(A025581(n))*A013618(n)` -/
def P3757305968337782990.Spec : Prop :=
  ∀ n, P3757305968337782990.a n = A038253 n

theorem P3757305968337782990.correct : P3757305968337782990.Spec := by
  intro n
  simp only [A038253]

end A038253

/-! ## A038253.P7266714820142663182

`A001020(A002262(n))*A038243(n)`
-/

namespace A038253.P7266714820142663182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat * A038243 n

end

end A038253.P7266714820142663182

namespace A038253

/-- `A001020(A002262(n))*A038243(n)` -/
def P7266714820142663182.Spec : Prop :=
  ∀ n, P7266714820142663182.a n = A038253 n

end A038253

/-! ## A038253.P4271315391179392351

`A038243(n)*A038315(A112367(n))`
-/

namespace A038253.P4271315391179392351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A038315 (A112367 n).toNat

end

end A038253.P4271315391179392351

namespace A038253

/-- `A038243(n)*A038315(A112367(n))` -/
def P4271315391179392351.Spec : Prop :=
  ∀ n, P4271315391179392351.a n = A038253 n

end A038253

/-! ## A038253.P4714979537203095023

`A038319(A061579(n))`
-/

namespace A038253.P4714979537203095023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038319 (A061579 n).toNat

end

end A038253.P4714979537203095023

namespace A038253

/-- `A038319(A061579(n))` -/
def P4714979537203095023.Spec : Prop :=
  ∀ n, P4714979537203095023.a n = A038253 n

end A038253

/-! ## A038253.P18218583779496677017

`A038313(n)/A130321(n)`
-/

namespace A038253.P18218583779496677017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038313 n : ℚ) / (A130321 n : ℚ)

end

end A038253.P18218583779496677017

namespace A038253

/-- `A038313(n)/A130321(n)` -/
def P18218583779496677017.Spec : Prop :=
  ∀ n, P18218583779496677017.a n = (A038253 n : ℚ)

end A038253

/-! ## A038253.P15904955829527727454

`A033047(A059268(n))*A038243(n)`
-/

namespace A038253.P15904955829527727454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 (A059268 n).toNat * A038243 n

end

end A038253.P15904955829527727454

namespace A038253

/-- `A033047(A059268(n))*A038243(n)` -/
def P15904955829527727454.Spec : Prop :=
  ∀ n, P15904955829527727454.a n = A038253 n

end A038253

/-!
# A038254: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*12^j.

The programs for A038254, the canonical program `A038254.P7510998490279946778` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038254 has offset 0).

The definition of A038254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3536 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038254.P7510998490279946778

`A038248(n)*A059268(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038254

/-- `A038248(n)*A059268(n)` -/
def P7510998490279946778.Spec : Prop :=
  ∀ n, P7510998490279946778.a n = A038254 n

theorem P7510998490279946778.correct : P7510998490279946778.Spec := by
  intro n
  simp only [A038254]

end A038254

/-! ## A038254.P15573166060787331964

`lcm(A013610(n), A038246(n))`
-/

namespace A038254.P15573166060787331964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038246 n)

end

end A038254.P15573166060787331964

namespace A038254

/-- `lcm(A013610(n), A038246(n))` -/
def P15573166060787331964.Spec : Prop :=
  ∀ n, (P15573166060787331964.a n : ℤ) = A038254 n

end A038254

/-! ## A038254.P10092581713056715981

`lcm(A013611(n), A038245(n))`
-/

namespace A038254.P10092581713056715981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013611 n) (A038245 n)

end

end A038254.P10092581713056715981

namespace A038254

/-- `lcm(A013611(n), A038245(n))` -/
def P10092581713056715981.Spec : Prop :=
  ∀ n, (P10092581713056715981.a n : ℤ) = A038254 n

end A038254

/-! ## A038254.P13129956883941237923

`lcm(A013619(n), A038243(n))`
-/

namespace A038254.P13129956883941237923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013619 n) (A038243 n)

end

end A038254.P13129956883941237923

namespace A038254

/-- `lcm(A013619(n), A038243(n))` -/
def P13129956883941237923.Spec : Prop :=
  ∀ n, (P13129956883941237923.a n : ℤ) = A038254 n

end A038254

/-! ## A038254.P657664975500628344

`A059268(n)²*A038245(n)`
-/

namespace A038254.P657664975500628344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038245 n

end

end A038254.P657664975500628344

namespace A038254

/-- `A059268(n)²*A038245(n)` -/
def P657664975500628344.Spec : Prop :=
  ∀ n, P657664975500628344.a n = A038254 n

end A038254

/-! ## A038254.P3825775652560320004

`A013619(n)/A007318(n)*A038243(n)`
-/

namespace A038254.P3825775652560320004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013619 n : ℚ) / (A007318 n : ℚ) * (A038243 n : ℚ)

end

end A038254.P3825775652560320004

namespace A038254

/-- `A013619(n)/A007318(n)*A038243(n)` -/
def P3825775652560320004.Spec : Prop :=
  ∀ n, P3825775652560320004.a n = (A038254 n : ℚ)

end A038254

/-! ## A038254.P3138724348345281552

`A038248(n)/A038245(n)*A038248(n)`
-/

namespace A038254.P3138724348345281552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038248 n : ℚ) / (A038245 n : ℚ) * (A038248 n : ℚ)

end

end A038254.P3138724348345281552

namespace A038254

/-- `A038248(n)/A038245(n)*A038248(n)` -/
def P3138724348345281552.Spec : Prop :=
  ∀ n, P3138724348345281552.a n = (A038254 n : ℚ)

end A038254

/-! ## A038254.P10190274459073550421

`A038331(A061579(n))`
-/

namespace A038254.P10190274459073550421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038331 (A061579 n).toNat

end

end A038254.P10190274459073550421

namespace A038254

/-- `A038331(A061579(n))` -/
def P10190274459073550421.Spec : Prop :=
  ∀ n, P10190274459073550421.a n = A038254 n

end A038254

/-! ## A038254.P15378460297843375969

`A038314(n)/A130321(n)`
-/

namespace A038254.P15378460297843375969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038314 n : ℚ) / (A130321 n : ℚ)

end

end A038254.P15378460297843375969

namespace A038254

/-- `A038314(n)/A130321(n)` -/
def P15378460297843375969.Spec : Prop :=
  ∀ n, P15378460297843375969.a n = (A038254 n : ℚ)

end A038254

/-! ## A038254.P15917014249898715415

`A038248(n)²/A038245(n)`
-/

namespace A038254.P15917014249898715415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038248 n ^ 2 : ℚ) / (A038245 n : ℚ)

end

end A038254.P15917014249898715415

namespace A038254

/-- `A038248(n)²/A038245(n)` -/
def P15917014249898715415.Spec : Prop :=
  ∀ n, P15917014249898715415.a n = (A038254 n : ℚ)

end A038254

/-! ## A038254.P13008773466368835795

`A038248(n)²/gcd(A038248(n), A038251(n))`
-/

namespace A038254.P13008773466368835795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038248 n ^ 2 : ℚ) / (Int.gcd (A038248 n) (A038251 n) : ℚ)

end

end A038254.P13008773466368835795

namespace A038254

/-- `A038248(n)²/gcd(A038248(n), A038251(n))` -/
def P13008773466368835795.Spec : Prop :=
  ∀ n, P13008773466368835795.a n = (A038254 n : ℚ)

end A038254

/-!
# A038255: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j).

The programs for A038255, the canonical program `A038255.P9618650369920174651` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038255 has offset 0).

The definition of A038255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038255.P9618650369920174651

`A027465(n)*A130321(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038255

/-- `A027465(n)*A130321(n)` -/
def P9618650369920174651.Spec : Prop :=
  ∀ n, P9618650369920174651.a n = A038255 n

theorem P9618650369920174651.correct : P9618650369920174651.Spec := by
  intro n
  simp only [A038255]

end A038255

/-! ## A038255.P14753706151411770540

`A038207(n)*A140303(n)`
-/

namespace A038255.P14753706151411770540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A140303 n

end

end A038255.P14753706151411770540

namespace A038255

/-- `A038207(n)*A140303(n)` -/
def P14753706151411770540.Spec : Prop :=
  ∀ n, P14753706151411770540.a n = A038255 n

end A038255

/-! ## A038255.P3054727412824418984

`lcm(A027465(n), A038207(n))`
-/

namespace A038255.P3054727412824418984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027465 n) (A038207 n)

end

end A038255.P3054727412824418984

namespace A038255

/-- `lcm(A027465(n), A038207(n))` -/
def P3054727412824418984.Spec : Prop :=
  ∀ n, (P3054727412824418984.a n : ℤ) = A038255 n

end A038255

/-! ## A038255.P12539374567765876290

`lcm(A065109(n), A164942(n))`
-/

namespace A038255.P12539374567765876290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065109 n) (A164942 n)

end

end A038255.P12539374567765876290

namespace A038255

/-- `lcm(A065109(n), A164942(n))` -/
def P12539374567765876290.Spec : Prop :=
  ∀ n, (P12539374567765876290.a n : ℤ) = A038255 n

end A038255

/-! ## A038255.P9398026079346049999

`A007318(n)*A130321(n)*A140303(n)`
-/

namespace A038255.P9398026079346049999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A130321 n * A140303 n

end

end A038255.P9398026079346049999

namespace A038255

/-- `A007318(n)*A130321(n)*A140303(n)` -/
def P9398026079346049999.Spec : Prop :=
  ∀ n, P9398026079346049999.a n = A038255 n

end A038255

/-! ## A038255.P3732954635533940976

`A013620(n)/A013613(n)*A038220(n)`
-/

namespace A038255.P3732954635533940976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A013613 n : ℚ) * (A038220 n : ℚ)

end

end A038255.P3732954635533940976

namespace A038255

/-- `A013620(n)/A013613(n)*A038220(n)` -/
def P3732954635533940976.Spec : Prop :=
  ∀ n, P3732954635533940976.a n = (A038255 n : ℚ)

end A038255

/-! ## A038255.P4181971563999476247

`A027465(n)/A007318(n)*A038207(n)`
-/

namespace A038255.P4181971563999476247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n : ℚ) / (A007318 n : ℚ) * (A038207 n : ℚ)

end

end A038255.P4181971563999476247

namespace A038255

/-- `A027465(n)/A007318(n)*A038207(n)` -/
def P4181971563999476247.Spec : Prop :=
  ∀ n, P4181971563999476247.a n = (A038255 n : ℚ)

end A038255

/-! ## A038255.P16241063528076935342

`A027465(n)/A038207(n)*A038231(n)`
-/

namespace A038255.P16241063528076935342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n : ℚ) / (A038207 n : ℚ) * (A038231 n : ℚ)

end

end A038255.P16241063528076935342

namespace A038255

/-- `A027465(n)/A038207(n)*A038231(n)` -/
def P16241063528076935342.Spec : Prop :=
  ∀ n, P16241063528076935342.a n = (A038255 n : ℚ)

end A038255

/-! ## A038255.P6685229966353743259

`A013610(A061579(n))*A059268(A061579(n))`
-/

namespace A038255.P6685229966353743259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A061579 n).toNat * A059268 (A061579 n).toNat

end

end A038255.P6685229966353743259

namespace A038255

/-- `A013610(A061579(n))*A059268(A061579(n))` -/
def P6685229966353743259.Spec : Prop :=
  ∀ n, P6685229966353743259.a n = A038255 n

end A038255

/-! ## A038255.P7106082663199093201

`A013613(A061579(n))`
-/

namespace A038255.P7106082663199093201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 (A061579 n).toNat

end

end A038255.P7106082663199093201

namespace A038255

/-- `A013613(A061579(n))` -/
def P7106082663199093201.Spec : Prop :=
  ∀ n, P7106082663199093201.a n = A038255 n

end A038255

/-! ## A038255.P9300174319204230642

`A013613(A038722(n+1)-1)`
-/

namespace A038255.P9300174319204230642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 (A038722 (n + 1) - 1).toNat

end

end A038255.P9300174319204230642

namespace A038255

/-- `A013613(A038722(n+1)-1)` -/
def P9300174319204230642.Spec : Prop :=
  ∀ n, P9300174319204230642.a n = A038255 n

end A038255

/-! ## A038255.P6141954769289665276

`A013613(A038722(n+2))`
-/

namespace A038255.P6141954769289665276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 (A038722 (n + 2)).toNat

end

end A038255.P6141954769289665276

namespace A038255

/-- `A013613(A038722(n+2))` -/
def P6141954769289665276.Spec : Prop :=
  ∀ n, P6141954769289665276.a n = A038255 n

end A038255

/-! ## A038255.P15317427254916648124

`A038256(n)/A059268(n)`
-/

namespace A038255.P15317427254916648124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038256 n : ℚ) / (A059268 n : ℚ)

end

end A038255.P15317427254916648124

namespace A038255

/-- `A038256(n)/A059268(n)` -/
def P15317427254916648124.Spec : Prop :=
  ∀ n, P15317427254916648124.a n = (A038255 n : ℚ)

end A038255

/-! ## A038255.P14301055890127347278

`A038207(n)²/A013620(n)*A098355(n)`
-/

namespace A038255.P14301055890127347278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n ^ 2 : ℚ) / (A013620 n : ℚ) * (A098355 n : ℚ)

end

end A038255.P14301055890127347278

namespace A038255

/-- `A038207(n)²/A013620(n)*A098355(n)` -/
def P14301055890127347278.Spec : Prop :=
  ∀ n, P14301055890127347278.a n = (A038255 n : ℚ)

end A038255

/-! ## A038255.P14831228221741953745

`gcd(A038257(n), A038258(n))`
-/

namespace A038255.P14831228221741953745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038257 n) (A038258 n)

end

end A038255.P14831228221741953745

namespace A038255

/-- `gcd(A038257(n), A038258(n))` -/
def P14831228221741953745.Spec : Prop :=
  ∀ n, (P14831228221741953745.a n : ℤ) = A038255 n

end A038255

/-! ## A038255.P16318669523573749426

`A038258(n)/A059268(n)²`
-/

namespace A038255.P16318669523573749426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038258 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038255.P16318669523573749426

namespace A038255

/-- `A038258(n)/A059268(n)²` -/
def P16318669523573749426.Spec : Prop :=
  ∀ n, P16318669523573749426.a n = (A038255 n : ℚ)

end A038255

/-! ## A038255.P4723937492532668987

`gcd(2*A038258(n), A038259(n))`
-/

namespace A038255.P4723937492532668987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A038258 n) (A038259 n)

end

end A038255.P4723937492532668987

namespace A038255

/-- `gcd(2*A038258(n), A038259(n))` -/
def P4723937492532668987.Spec : Prop :=
  ∀ n, (P4723937492532668987.a n : ℤ) = A038255 n

end A038255

/-! ## A038255.P6909219442325631019

`gcd(A038259(n), A038260(n))`
-/

namespace A038255.P6909219442325631019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038259 n) (A038260 n)

end

end A038255.P6909219442325631019

namespace A038255

/-- `gcd(A038259(n), A038260(n))` -/
def P6909219442325631019.Spec : Prop :=
  ∀ n, (P6909219442325631019.a n : ℤ) = A038255 n

end A038255

/-! ## A038255.P16606708592629907524

`gcd(A013627(n), A038256(n))`
-/

namespace A038255.P16606708592629907524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013627 n) (A038256 n)

end

end A038255.P16606708592629907524

namespace A038255

/-- `gcd(A013627(n), A038256(n))` -/
def P16606708592629907524.Spec : Prop :=
  ∀ n, (P16606708592629907524.a n : ℤ) = A038255 n

end A038255

/-! ## A038255.P5204759270466437563

`A038327(n)/A130321(n)`
-/

namespace A038255.P5204759270466437563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038327 n : ℚ) / (A130321 n : ℚ)

end

end A038255.P5204759270466437563

namespace A038255

/-- `A038327(n)/A130321(n)` -/
def P5204759270466437563.Spec : Prop :=
  ∀ n, P5204759270466437563.a n = (A038255 n : ℚ)

end A038255

/-!
# A038256: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*2^j.

The programs for A038256, the canonical program `A038256.P10874332263028825232` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038256 has offset 0).

The definition of A038256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038256.P10874332263028825232

`A038255(n)*A059268(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038256

/-- `A038255(n)*A059268(n)` -/
def P10874332263028825232.Spec : Prop :=
  ∀ n, P10874332263028825232.a n = A038256 n

theorem P10874332263028825232.correct : P10874332263028825232.Spec := by
  intro n
  simp only [A038256]

end A038256

/-! ## A038256.P9009876851908403457

`A027465(n)*A137688(n)`
-/

namespace A038256.P9009876851908403457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A137688 n

end

end A038256.P9009876851908403457

namespace A038256

/-- `A027465(n)*A137688(n)` -/
def P9009876851908403457.Spec : Prop :=
  ∀ n, P9009876851908403457.a n = A038256 n

end A038256

/-! ## A038256.P9097446199110849073

`A038220(n)*A130321(n)`
-/

namespace A038256.P9097446199110849073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n * A130321 n

end

end A038256.P9097446199110849073

namespace A038256

/-- `A038220(n)*A130321(n)` -/
def P9097446199110849073.Spec : Prop :=
  ∀ n, P9097446199110849073.a n = A038256 n

end A038256

/-! ## A038256.P8716861643666832289

`A038208(n)*A140303(n)`
-/

namespace A038256.P8716861643666832289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n * A140303 n

end

end A038256.P8716861643666832289

namespace A038256

/-- `A038208(n)*A140303(n)` -/
def P8716861643666832289.Spec : Prop :=
  ∀ n, P8716861643666832289.a n = A038256 n

end A038256

/-! ## A038256.P4429263711962300976

`A038207(n)*A175840(n)`
-/

namespace A038256.P4429263711962300976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A175840 n

end

end A038256.P4429263711962300976

namespace A038256

/-- `A038207(n)*A175840(n)` -/
def P4429263711962300976.Spec : Prop :=
  ∀ n, P4429263711962300976.a n = A038256 n

end A038256

/-! ## A038256.P11597451158563636172

`lcm(A027465(n), A038208(n))`
-/

namespace A038256.P11597451158563636172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027465 n) (A038208 n)

end

end A038256.P11597451158563636172

namespace A038256

/-- `lcm(A027465(n), A038208(n))` -/
def P11597451158563636172.Spec : Prop :=
  ∀ n, (P11597451158563636172.a n : ℤ) = A038256 n

end A038256

/-! ## A038256.P12990694294559146718

`Δ[A007664(n)]*A027465(n)`
-/

namespace A038256.P12990694294559146718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A027465 n

end

end A038256.P12990694294559146718

namespace A038256

/-- `Δ[A007664(n)]*A027465(n)` -/
def P12990694294559146718.Spec : Prop :=
  ∀ n, P12990694294559146718.a n = A038256 n

end A038256

/-! ## A038256.P9711451240407686740

`2^A003056(n)*A027465(n)`
-/

namespace A038256.P9711451240407686740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003056 n : ℤ) * (A027465 n : ℚ)

end

end A038256.P9711451240407686740

namespace A038256

/-- `2^A003056(n)*A027465(n)` -/
def P9711451240407686740.Spec : Prop :=
  ∀ n, P9711451240407686740.a n = (A038256 n : ℚ)

end A038256

/-! ## A038256.P11489112787366018079

`A038207(n)*A059268(n)*A140303(n)`
-/

namespace A038256.P11489112787366018079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A059268 n * A140303 n

end

end A038256.P11489112787366018079

namespace A038256

/-- `A038207(n)*A059268(n)*A140303(n)` -/
def P11489112787366018079.Spec : Prop :=
  ∀ n, P11489112787366018079.a n = A038256 n

end A038256

/-! ## A038256.P17588357481953342056

`A038212(A061579(n))`
-/

namespace A038256.P17588357481953342056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038212 (A061579 n).toNat

end

end A038256.P17588357481953342056

namespace A038256

/-- `A038212(A061579(n))` -/
def P17588357481953342056.Spec : Prop :=
  ∀ n, P17588357481953342056.a n = A038256 n

end A038256

/-! ## A038256.P14909572760739367283

`A038258(n)/A059268(n)`
-/

namespace A038256.P14909572760739367283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038258 n : ℚ) / (A059268 n : ℚ)

end

end A038256.P14909572760739367283

namespace A038256

/-- `A038258(n)/A059268(n)` -/
def P14909572760739367283.Spec : Prop :=
  ∀ n, P14909572760739367283.a n = (A038256 n : ℚ)

end A038256

/-! ## A038256.P4457483388518364998

`gcd(A038258(n), A038260(n))`
-/

namespace A038256.P4457483388518364998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038258 n) (A038260 n)

end

end A038256.P4457483388518364998

namespace A038256

/-- `gcd(A038258(n), A038260(n))` -/
def P4457483388518364998.Spec : Prop :=
  ∀ n, (P4457483388518364998.a n : ℤ) = A038256 n

end A038256

/-! ## A038256.P9716459291310700664

`A038262(n)/A059268(n)²`
-/

namespace A038256.P9716459291310700664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038262 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038256.P9716459291310700664

namespace A038256

/-- `A038262(n)/A059268(n)²` -/
def P9716459291310700664.Spec : Prop :=
  ∀ n, P9716459291310700664.a n = (A038256 n : ℚ)

end A038256

/-! ## A038256.P15696780452559136678

`A038328(n)/A130321(n)`
-/

namespace A038256.P15696780452559136678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038328 n : ℚ) / (A130321 n : ℚ)

end

end A038256.P15696780452559136678

namespace A038256

/-- `A038328(n)/A130321(n)` -/
def P15696780452559136678.Spec : Prop :=
  ∀ n, P15696780452559136678.a n = (A038256 n : ℚ)

end A038256

/-! ## A038256.P3835101833272602088

`sqrt(A038220(n))*sqrt(A038328(n))`
-/

namespace A038256.P3835101833272602088
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038220 n : ℝ) * Real.sqrt (A038328 n : ℝ)

end

end A038256.P3835101833272602088

namespace A038256

/-- `sqrt(A038220(n))*sqrt(A038328(n))` -/
def P3835101833272602088.Spec : Prop :=
  ∀ n, P3835101833272602088.a n = (A038256 n : ℝ)

end A038256

/-! ## A038256.P3088828109622273982

`gcd(A038262(n), A038264(n))`
-/

namespace A038256.P3088828109622273982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038262 n) (A038264 n)

end

end A038256.P3088828109622273982

namespace A038256

/-- `gcd(A038262(n), A038264(n))` -/
def P3088828109622273982.Spec : Prop :=
  ∀ n, (P3088828109622273982.a n : ℤ) = A038256 n

end A038256

/-! ## A038256.P5796363384186395194

`A038330(n)/A137688(n)`
-/

namespace A038256.P5796363384186395194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038330 n : ℚ) / (A137688 n : ℚ)

end

end A038256.P5796363384186395194

namespace A038256

/-- `A038330(n)/A137688(n)` -/
def P5796363384186395194.Spec : Prop :=
  ∀ n, P5796363384186395194.a n = (A038256 n : ℚ)

end A038256

/-! ## A038256.P14877666311632482923

`A038330(n)/2^A003056(n)`
-/

namespace A038256.P14877666311632482923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038330 n : ℚ) / (2 : ℚ) ^ (A003056 n : ℤ)

end

end A038256.P14877666311632482923

namespace A038256

/-- `A038330(n)/2^A003056(n)` -/
def P14877666311632482923.Spec : Prop :=
  ∀ n, P14877666311632482923.a n = (A038256 n : ℚ)

end A038256

/-! ## A038256.P7025485850282326647

`A038332(n)/A036561(n)`
-/

namespace A038256.P7025485850282326647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038332 n : ℚ) / (A036561 n : ℚ)

end

end A038256.P7025485850282326647

namespace A038256

/-- `A038332(n)/A036561(n)` -/
def P7025485850282326647.Spec : Prop :=
  ∀ n, P7025485850282326647.a n = (A038256 n : ℚ)

end A038256

/-! ## A038256.P15056100238475757343

`A038334(n)/A368043(n)`
-/

namespace A038256.P15056100238475757343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038334 n : ℚ) / (A368043 n : ℚ)

end

end A038256.P15056100238475757343

namespace A038256

/-- `A038334(n)/A368043(n)` -/
def P15056100238475757343.Spec : Prop :=
  ∀ n, P15056100238475757343.a n = (A038256 n : ℚ)

end A038256

/-!
# A038257: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*3^j.

The programs for A038257, the canonical program `A038257.P13466949147217766730` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038257 has offset 0).

The definition of A038257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5704 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038257.P13466949147217766730

`A027465(n)*A036561(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038257

/-- `A027465(n)*A036561(n)` -/
def P13466949147217766730.Spec : Prop :=
  ∀ n, P13466949147217766730.a n = A038257 n

theorem P13466949147217766730.correct : P13466949147217766730.Spec := by
  intro n
  simp only [A038257]

end A038257

/-! ## A038257.P346233086991789040

`A038207(n)*A098355(n)`
-/

namespace A038257.P346233086991789040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A098355 n

end

end A038257.P346233086991789040

namespace A038257

/-- `A038207(n)*A098355(n)` -/
def P346233086991789040.Spec : Prop :=
  ∀ n, P346233086991789040.a n = A038257 n

end A038257

/-! ## A038257.P15335016928185393728

`A013620(n)*A140303(n)`
-/

namespace A038257.P15335016928185393728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A140303 n

end

end A038257.P15335016928185393728

namespace A038257

/-- `A013620(n)*A140303(n)` -/
def P15335016928185393728.Spec : Prop :=
  ∀ n, P15335016928185393728.a n = A038257 n

end A038257

/-! ## A038257.P13953703878468260901

`A038221(n)*A130321(n)`
-/

namespace A038257.P13953703878468260901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 n * A130321 n

end

end A038257.P13953703878468260901

namespace A038257

/-- `A038221(n)*A130321(n)` -/
def P13953703878468260901.Spec : Prop :=
  ∀ n, P13953703878468260901.a n = A038257 n

end A038257

/-! ## A038257.P7951996222846216569

`lcm(A013620(n), A038221(n))`
-/

namespace A038257.P7951996222846216569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013620 n) (A038221 n)

end

end A038257.P7951996222846216569

namespace A038257

/-- `lcm(A013620(n), A038221(n))` -/
def P7951996222846216569.Spec : Prop :=
  ∀ n, (P7951996222846216569.a n : ℤ) = A038257 n

end A038257

/-! ## A038257.P17455960051886570246

`6^A025581(n)*A013610(n)`
-/

namespace A038257.P17455960051886570246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A025581 n : ℤ) * (A013610 n : ℚ)

end

end A038257.P17455960051886570246

namespace A038257

/-- `6^A025581(n)*A013610(n)` -/
def P17455960051886570246.Spec : Prop :=
  ∀ n, P17455960051886570246.a n = (A038257 n : ℚ)

end A038257

/-! ## A038257.P2313716504532745071

`A090988(n+1)/2*A038221(n)`
-/

namespace A038257.P2313716504532745071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090988 (n + 1) : ℚ) / 2 * (A038221 n : ℚ)

end

end A038257.P2313716504532745071

namespace A038257

/-- `A090988(n+1)/2*A038221(n)` -/
def P2313716504532745071.Spec : Prop :=
  ∀ n, P2313716504532745071.a n = (A038257 n : ℚ)

end A038257

/-! ## A038257.P9757664972442290635

`A013620(n)/A007318(n)*A027465(n)`
-/

namespace A038257.P9757664972442290635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A007318 n : ℚ) * (A027465 n : ℚ)

end

end A038257.P9757664972442290635

namespace A038257

/-- `A013620(n)/A007318(n)*A027465(n)` -/
def P9757664972442290635.Spec : Prop :=
  ∀ n, P9757664972442290635.a n = (A038257 n : ℚ)

end A038257

/-! ## A038257.P6447309225299351322

`A038224(A061579(n))`
-/

namespace A038257.P6447309225299351322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038224 (A061579 n).toNat

end

end A038257.P6447309225299351322

namespace A038257

/-- `A038224(A061579(n))` -/
def P6447309225299351322.Spec : Prop :=
  ∀ n, P6447309225299351322.a n = A038257 n

end A038257

/-! ## A038257.P2213243726653057930

`A038260(n)/A059268(n)`
-/

namespace A038257.P2213243726653057930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038260 n : ℚ) / (A059268 n : ℚ)

end

end A038257.P2213243726653057930

namespace A038257

/-- `A038260(n)/A059268(n)` -/
def P2213243726653057930.Spec : Prop :=
  ∀ n, P2213243726653057930.a n = (A038257 n : ℚ)

end A038257

/-! ## A038257.P10251069299665658254

`gcd(A038260(n), A038263(n))`
-/

namespace A038257.P10251069299665658254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038260 n) (A038263 n)

end

end A038257.P10251069299665658254

namespace A038257

/-- `gcd(A038260(n), A038263(n))` -/
def P10251069299665658254.Spec : Prop :=
  ∀ n, (P10251069299665658254.a n : ℤ) = A038257 n

end A038257

/-! ## A038257.P15296536217947347728

`A038329(n)/A130321(n)`
-/

namespace A038257.P15296536217947347728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038329 n : ℚ) / (A130321 n : ℚ)

end

end A038257.P15296536217947347728

namespace A038257

/-- `A038329(n)/A130321(n)` -/
def P15296536217947347728.Spec : Prop :=
  ∀ n, P15296536217947347728.a n = (A038257 n : ℚ)

end A038257

/-! ## A038257.P10028711012366079951

`A038266(n)/A059268(n)²`
-/

namespace A038257.P10028711012366079951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038266 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038257.P10028711012366079951

namespace A038257

/-- `A038266(n)/A059268(n)²` -/
def P10028711012366079951.Spec : Prop :=
  ∀ n, P10028711012366079951.a n = (A038257 n : ℚ)

end A038257

/-! ## A038257.P9056781607385932545

`A038332(n)/A137688(n)`
-/

namespace A038257.P9056781607385932545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038332 n : ℚ) / (A137688 n : ℚ)

end

end A038257.P9056781607385932545

namespace A038257

/-- `A038332(n)/A137688(n)` -/
def P9056781607385932545.Spec : Prop :=
  ∀ n, P9056781607385932545.a n = (A038257 n : ℚ)

end A038257

/-! ## A038257.P7309171579740654436

`A038335(n)/A036561(n)`
-/

namespace A038257.P7309171579740654436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038335 n : ℚ) / (A036561 n : ℚ)

end

end A038257.P7309171579740654436

namespace A038257

/-- `A038335(n)/A036561(n)` -/
def P7309171579740654436.Spec : Prop :=
  ∀ n, P7309171579740654436.a n = (A038257 n : ℚ)

end A038257

/-! ## A038257.P5515140590293431824

`A038338(n)/A368043(n)`
-/

namespace A038257.P5515140590293431824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038338 n : ℚ) / (A368043 n : ℚ)

end

end A038257.P5515140590293431824

namespace A038257

/-- `A038338(n)/A368043(n)` -/
def P5515140590293431824.Spec : Prop :=
  ∀ n, P5515140590293431824.a n = (A038257 n : ℚ)

end A038257

/-! ## A038257.P8968507307868587901

`gcd(A038329(n)²/A038281(n), A038329(n))`
-/

namespace A038257.P8968507307868587901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038329 n ^ 2 : ℚ) / (A038281 n : ℚ))) (A038329 n)

end

end A038257.P8968507307868587901

namespace A038257

/-- `gcd(A038329(n)²/A038281(n), A038329(n))` -/
def P8968507307868587901.Spec : Prop :=
  ∀ n, (P8968507307868587901.a n : ℤ) = A038257 n

end A038257

/-! ## A038257.P13287586109857917564

`A000010(A090988(n+1))*A038221(n)`
-/

namespace A038257.P13287586109857917564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A090988 (n + 1)).toNat * A038221 n

end

end A038257.P13287586109857917564

namespace A038257

/-- `A000010(A090988(n+1))*A038221(n)` -/
def P13287586109857917564.Spec : Prop :=
  ∀ n, P13287586109857917564.a n = A038257 n

end A038257

/-!
# A038258: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*4^j.

The programs for A038258, the canonical program `A038258.P18171415489042003972` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038258 has offset 0).

The definition of A038258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038258.P18171415489042003972

`A038256(n)*A059268(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038258

/-- `A038256(n)*A059268(n)` -/
def P18171415489042003972.Spec : Prop :=
  ∀ n, P18171415489042003972.a n = A038258 n

theorem P18171415489042003972.correct : P18171415489042003972.Spec := by
  intro n
  simp only [A038258]

end A038258

/-! ## A038258.P10970600487827028738

`A038222(n)*A130321(n)`
-/

namespace A038258.P10970600487827028738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038222 n * A130321 n

end

end A038258.P10970600487827028738

namespace A038258

/-- `A038222(n)*A130321(n)` -/
def P10970600487827028738.Spec : Prop :=
  ∀ n, P10970600487827028738.a n = A038258 n

end A038258

/-! ## A038258.P7397658593567003739

`A038220(n)*A137688(n)`
-/

namespace A038258.P7397658593567003739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n * A137688 n

end

end A038258.P7397658593567003739

namespace A038258

/-- `A038220(n)*A137688(n)` -/
def P7397658593567003739.Spec : Prop :=
  ∀ n, P7397658593567003739.a n = A038258 n

end A038258

/-! ## A038258.P933230086390596690

`A038210(n)*A140303(n)`
-/

namespace A038258.P933230086390596690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038210 n * A140303 n

end

end A038258.P933230086390596690

namespace A038258

/-- `A038210(n)*A140303(n)` -/
def P933230086390596690.Spec : Prop :=
  ∀ n, P933230086390596690.a n = A038258 n

end A038258

/-! ## A038258.P2828860994564671834

`A038208(n)*A175840(n)`
-/

namespace A038258.P2828860994564671834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n * A175840 n

end

end A038258.P2828860994564671834

namespace A038258

/-- `A038208(n)*A175840(n)` -/
def P2828860994564671834.Spec : Prop :=
  ∀ n, P2828860994564671834.a n = A038258 n

end A038258

/-! ## A038258.P13786646672189644330

`A038207(n)*A356036(n)`
-/

namespace A038258.P13786646672189644330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A356036 n

end

end A038258.P13786646672189644330

namespace A038258

/-- `A038207(n)*A356036(n)` -/
def P13786646672189644330.Spec : Prop :=
  ∀ n, P13786646672189644330.a n = A038258 n

end A038258

/-! ## A038258.P3072698993191414892

`A027465(n)*A368043(n)`
-/

namespace A038258.P3072698993191414892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A368043 n

end

end A038258.P3072698993191414892

namespace A038258

/-- `A027465(n)*A368043(n)` -/
def P3072698993191414892.Spec : Prop :=
  ∀ n, P3072698993191414892.a n = A038258 n

end A038258

/-! ## A038258.P17963056205174484327

`lcm(A027465(n), A038210(n))`
-/

namespace A038258.P17963056205174484327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027465 n) (A038210 n)

end

end A038258.P17963056205174484327

namespace A038258

/-- `lcm(A027465(n), A038210(n))` -/
def P17963056205174484327.Spec : Prop :=
  ∀ n, (P17963056205174484327.a n : ℤ) = A038258 n

end A038258

/-! ## A038258.P14260578171499088083

`A059268(n)²*A038255(n)`
-/

namespace A038258.P14260578171499088083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038255 n

end

end A038258.P14260578171499088083

namespace A038258

/-- `A059268(n)²*A038255(n)` -/
def P14260578171499088083.Spec : Prop :=
  ∀ n, P14260578171499088083.a n = A038258 n

end A038258

/-! ## A038258.P4574678428035790568

`A038256(n)/A038255(n)*A038256(n)`
-/

namespace A038258.P4574678428035790568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038256 n : ℚ) / (A038255 n : ℚ) * (A038256 n : ℚ)

end

end A038258.P4574678428035790568

namespace A038258

/-- `A038256(n)/A038255(n)*A038256(n)` -/
def P4574678428035790568.Spec : Prop :=
  ∀ n, P4574678428035790568.a n = (A038258 n : ℚ)

end A038258

/-! ## A038258.P12471009151307992557

`A038236(A061579(n))`
-/

namespace A038258.P12471009151307992557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038236 (A061579 n).toNat

end

end A038258.P12471009151307992557

namespace A038258

/-- `A038236(A061579(n))` -/
def P12471009151307992557.Spec : Prop :=
  ∀ n, P12471009151307992557.a n = A038258 n

end A038258

/-! ## A038258.P2240724025447467097

`sqrt(A038238(n))*sqrt(A038292(n))`
-/

namespace A038258.P2240724025447467097
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038238 n : ℝ) * Real.sqrt (A038292 n : ℝ)

end

end A038258.P2240724025447467097

namespace A038258

/-- `sqrt(A038238(n))*sqrt(A038292(n))` -/
def P2240724025447467097.Spec : Prop :=
  ∀ n, P2240724025447467097.a n = (A038258 n : ℝ)

end A038258

/-! ## A038258.P15669275833005117829

`A038262(n)/A059268(n)`
-/

namespace A038258.P15669275833005117829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038262 n : ℚ) / (A059268 n : ℚ)

end

end A038258.P15669275833005117829

namespace A038258

/-- `A038262(n)/A059268(n)` -/
def P15669275833005117829.Spec : Prop :=
  ∀ n, P15669275833005117829.a n = (A038258 n : ℚ)

end A038258

/-! ## A038258.P8495839506039566095

`A038260(n)/A038263(n)*A038260(n)`
-/

namespace A038258.P8495839506039566095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038260 n : ℚ) / (A038263 n : ℚ) * (A038260 n : ℚ)

end

end A038258.P8495839506039566095

namespace A038258

/-- `A038260(n)/A038263(n)*A038260(n)` -/
def P8495839506039566095.Spec : Prop :=
  ∀ n, P8495839506039566095.a n = (A038258 n : ℚ)

end A038258

/-! ## A038258.P3797755762744850668

`A038330(n)/A130321(n)`
-/

namespace A038258.P3797755762744850668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038330 n : ℚ) / (A130321 n : ℚ)

end

end A038258.P3797755762744850668

namespace A038258

/-- `A038330(n)/A130321(n)` -/
def P3797755762744850668.Spec : Prop :=
  ∀ n, P3797755762744850668.a n = (A038258 n : ℚ)

end A038258

/-! ## A038258.P11832609361092681971

`gcd(A038262(n), A038266(n))`
-/

namespace A038258.P11832609361092681971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038262 n) (A038266 n)

end

end A038258.P11832609361092681971

namespace A038258

/-- `gcd(A038262(n), A038266(n))` -/
def P11832609361092681971.Spec : Prop :=
  ∀ n, (P11832609361092681971.a n : ℤ) = A038258 n

end A038258

/-! ## A038258.P12782938832331243350

`A038334(n)/A137688(n)`
-/

namespace A038258.P12782938832331243350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038334 n : ℚ) / (A137688 n : ℚ)

end

end A038258.P12782938832331243350

namespace A038258

/-- `A038334(n)/A137688(n)` -/
def P12782938832331243350.Spec : Prop :=
  ∀ n, P12782938832331243350.a n = (A038258 n : ℚ)

end A038258

/-! ## A038258.P10599223853075340114

`sqrt(A038220(n))*sqrt(A038334(n))`
-/

namespace A038258.P10599223853075340114
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038220 n : ℝ) * Real.sqrt (A038334 n : ℝ)

end

end A038258.P10599223853075340114

namespace A038258

/-- `sqrt(A038220(n))*sqrt(A038334(n))` -/
def P10599223853075340114.Spec : Prop :=
  ∀ n, P10599223853075340114.a n = (A038258 n : ℝ)

end A038258

/-! ## A038258.P8512463030137870481

`A038338(n)/A036561(n)`
-/

namespace A038258.P8512463030137870481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038338 n : ℚ) / (A036561 n : ℚ)

end

end A038258.P8512463030137870481

namespace A038258

/-- `A038338(n)/A036561(n)` -/
def P8512463030137870481.Spec : Prop :=
  ∀ n, P8512463030137870481.a n = (A038258 n : ℚ)

end A038258

/-! ## A038258.P9850508024918390241

`A038256(n)²/A038255(n)`
-/

namespace A038258.P9850508024918390241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038256 n ^ 2 : ℚ) / (A038255 n : ℚ)

end

end A038258.P9850508024918390241

namespace A038258

/-- `A038256(n)²/A038255(n)` -/
def P9850508024918390241.Spec : Prop :=
  ∀ n, P9850508024918390241.a n = (A038258 n : ℚ)

end A038258

/-!
# A038259: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*5^j.

The programs for A038259, the canonical program `A038259.P4605552606477946905` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038259 has offset 0).

The definition of A038259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4886 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038259.P4605552606477946905

`A013622(n)*A130321(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038259

/-- `A013622(n)*A130321(n)` -/
def P4605552606477946905.Spec : Prop :=
  ∀ n, P4605552606477946905.a n = A038259 n

theorem P4605552606477946905.correct : P4605552606477946905.Spec := by
  intro n
  simp only [A038259]

end A038259

/-! ## A038259.P7225571678102892850

`A013621(n)*A140303(n)`
-/

namespace A038259.P7225571678102892850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013621 n * A140303 n

end

end A038259.P7225571678102892850

namespace A038259

/-- `A013621(n)*A140303(n)` -/
def P7225571678102892850.Spec : Prop :=
  ∀ n, P7225571678102892850.a n = A038259 n

end A038259

/-! ## A038259.P3498851991503795839

`A038207(n)*A120027(n)`
-/

namespace A038259.P3498851991503795839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A120027 n

end

end A038259.P3498851991503795839

namespace A038259

/-- `A038207(n)*A120027(n)` -/
def P3498851991503795839.Spec : Prop :=
  ∀ n, P3498851991503795839.a n = A038259 n

end A038259

/-! ## A038259.P4568203745962571514

`lcm(A013621(n), A013622(n))`
-/

namespace A038259.P4568203745962571514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013621 n) (A013622 n)

end

end A038259.P4568203745962571514

namespace A038259

/-- `lcm(A013621(n), A013622(n))` -/
def P4568203745962571514.Spec : Prop :=
  ∀ n, (P4568203745962571514.a n : ℤ) = A038259 n

end A038259

/-! ## A038259.P17846901843935833336

`lcm(A013612(n), A038255(n))`
-/

namespace A038259.P17846901843935833336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038255 n)

end

end A038259.P17846901843935833336

namespace A038259

/-- `lcm(A013612(n), A038255(n))` -/
def P17846901843935833336.Spec : Prop :=
  ∀ n, (P17846901843935833336.a n : ℤ) = A038259 n

end A038259

/-! ## A038259.P4221593525460973187

`A027465(n)*A232646(n+1)`
-/

namespace A038259.P4221593525460973187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A232646 (n + 1)

end

end A038259.P4221593525460973187

namespace A038259

/-- `A027465(n)*A232646(n+1)` -/
def P4221593525460973187.Spec : Prop :=
  ∀ n, P4221593525460973187.a n = A038259 n

end A038259

/-! ## A038259.P7323125833341351070

`A013621(n)/A013609(n)*A038220(n)`
-/

namespace A038259.P7323125833341351070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013621 n : ℚ) / (A013609 n : ℚ) * (A038220 n : ℚ)

end

end A038259.P7323125833341351070

namespace A038259

/-- `A013621(n)/A013609(n)*A038220(n)` -/
def P7323125833341351070.Spec : Prop :=
  ∀ n, P7323125833341351070.a n = (A038259 n : ℚ)

end A038259

/-! ## A038259.P12745924926757260822

`A038248(A061579(n))`
-/

namespace A038259.P12745924926757260822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038248 (A061579 n).toNat

end

end A038259.P12745924926757260822

namespace A038259

/-- `A038248(A061579(n))` -/
def P12745924926757260822.Spec : Prop :=
  ∀ n, P12745924926757260822.a n = A038259 n

end A038259

/-! ## A038259.P4987930631650094137

`A038264(n)/A059268(n)`
-/

namespace A038259.P4987930631650094137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038264 n : ℚ) / (A059268 n : ℚ)

end

end A038259.P4987930631650094137

namespace A038259

/-- `A038264(n)/A059268(n)` -/
def P4987930631650094137.Spec : Prop :=
  ∀ n, P4987930631650094137.a n = (A038259 n : ℚ)

end A038259

/-! ## A038259.P9589103659099436714

`A013621(n)/A038243(n)*A027467(n)`
-/

namespace A038259.P9589103659099436714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013621 n : ℚ) / (A038243 n : ℚ) * (A027467 n : ℚ)

end

end A038259.P9589103659099436714

namespace A038259

/-- `A013621(n)/A038243(n)*A027467(n)` -/
def P9589103659099436714.Spec : Prop :=
  ∀ n, P9589103659099436714.a n = (A038259 n : ℚ)

end A038259

/-! ## A038259.P15991118172686826276

`A038331(n)/A130321(n)`
-/

namespace A038259.P15991118172686826276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038331 n : ℚ) / (A130321 n : ℚ)

end

end A038259.P15991118172686826276

namespace A038259

/-- `A038331(n)/A130321(n)` -/
def P15991118172686826276.Spec : Prop :=
  ∀ n, P15991118172686826276.a n = (A038259 n : ℚ)

end A038259

/-! ## A038259.P17545441124786558848

`A038336(n)/A137688(n)`
-/

namespace A038259.P17545441124786558848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038336 n : ℚ) / (A137688 n : ℚ)

end

end A038259.P17545441124786558848

namespace A038259

/-- `A038336(n)/A137688(n)` -/
def P17545441124786558848.Spec : Prop :=
  ∀ n, P17545441124786558848.a n = (A038259 n : ℚ)

end A038259

/-! ## A038259.P7173490930706679327

`2*A038336(n)/A140513(n)`
-/

namespace A038259.P7173490930706679327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A038336 n : ℚ) / (A140513 n : ℚ))

end

end A038259.P7173490930706679327

namespace A038259

/-- `2*A038336(n)/A140513(n)` -/
def P7173490930706679327.Spec : Prop :=
  ∀ n, P7173490930706679327.a n = (A038259 n : ℚ)

end A038259

/-!
# A038260: Triangle read by rows: T(n,k) = binomial(n,k)*6^(n-k)*6^k, 0<=k<=n.

The programs for A038260, the canonical program `A038260.P1305462305108585901` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038260 has offset 0).

The definition of A038260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038260.P1305462305108585901

`A036561(n)*A038220(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038260

/-- `A036561(n)*A038220(n)` -/
def P1305462305108585901.Spec : Prop :=
  ∀ n, P1305462305108585901.a n = A038260 n

theorem P1305462305108585901.correct : P1305462305108585901.Spec := by
  intro n
  simp only [A038260]

end A038260

/-! ## A038260.P13998384101937536879

`A038257(n)*A059268(n)`
-/

namespace A038260.P13998384101937536879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038257 n * A059268 n

end

end A038260.P13998384101937536879

namespace A038260

/-- `A038257(n)*A059268(n)` -/
def P13998384101937536879.Spec : Prop :=
  ∀ n, P13998384101937536879.a n = A038260 n

end A038260

/-! ## A038260.P9445420515116072078

`A027465(n)*A100851(n)`
-/

namespace A038260.P9445420515116072078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A100851 n

end

end A038260.P9445420515116072078

namespace A038260

/-- `A027465(n)*A100851(n)` -/
def P9445420515116072078.Spec : Prop :=
  ∀ n, P9445420515116072078.a n = A038260 n

end A038260

/-! ## A038260.P5811006997133974620

`A038208(n)*A098355(n)`
-/

namespace A038260.P5811006997133974620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n * A098355 n

end

end A038260.P5811006997133974620

namespace A038260

/-- `A038208(n)*A098355(n)` -/
def P5811006997133974620.Spec : Prop :=
  ∀ n, P5811006997133974620.a n = A038260 n

end A038260

/-! ## A038260.P5819274965281391882

`A038207(n)*A100852(n)`
-/

namespace A038260.P5819274965281391882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A100852 n

end

end A038260.P5819274965281391882

namespace A038260

/-- `A038207(n)*A100852(n)` -/
def P5819274965281391882.Spec : Prop :=
  ∀ n, P5819274965281391882.a n = A038260 n

end A038260

/-! ## A038260.P9424949764545178925

`A038224(n)*A130321(n)`
-/

namespace A038260.P9424949764545178925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038224 n * A130321 n

end

end A038260.P9424949764545178925

namespace A038260

/-- `A038224(n)*A130321(n)` -/
def P9424949764545178925.Spec : Prop :=
  ∀ n, P9424949764545178925.a n = A038260 n

end A038260

/-! ## A038260.P6975120940529364665

`A038221(n)*A137688(n)`
-/

namespace A038260.P6975120940529364665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 n * A137688 n

end

end A038260.P6975120940529364665

namespace A038260

/-- `A038221(n)*A137688(n)` -/
def P6975120940529364665.Spec : Prop :=
  ∀ n, P6975120940529364665.a n = A038260 n

end A038260

/-! ## A038260.P5384366145546042135

`A038212(n)*A140303(n)`
-/

namespace A038260.P5384366145546042135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038212 n * A140303 n

end

end A038260.P5384366145546042135

namespace A038260

/-- `A038212(n)*A140303(n)` -/
def P5384366145546042135.Spec : Prop :=
  ∀ n, P5384366145546042135.a n = A038260 n

end A038260

/-! ## A038260.P1222719494229586271

`A013620(n)*A175840(n)`
-/

namespace A038260.P1222719494229586271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A175840 n

end

end A038260.P1222719494229586271

namespace A038260

/-- `A013620(n)*A175840(n)` -/
def P1222719494229586271.Spec : Prop :=
  ∀ n, P1222719494229586271.a n = A038260 n

end A038260

/-! ## A038260.P15775544040580885008

`lcm(A038208(n), A038221(n))`
-/

namespace A038260.P15775544040580885008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038208 n) (A038221 n)

end

end A038260.P15775544040580885008

namespace A038260

/-- `lcm(A038208(n), A038221(n))` -/
def P15775544040580885008.Spec : Prop :=
  ∀ n, (P15775544040580885008.a n : ℤ) = A038260 n

end A038260

/-! ## A038260.P11476493031576960013

`lcm(A038212(n), A038224(n))`
-/

namespace A038260.P11476493031576960013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038212 n) (A038224 n)

end

end A038260.P11476493031576960013

namespace A038260

/-- `lcm(A038212(n), A038224(n))` -/
def P11476493031576960013.Spec : Prop :=
  ∀ n, (P11476493031576960013.a n : ℤ) = A038260 n

end A038260

/-! ## A038260.P8092807662172945160

`lcm(A038256(n), A038257(n))`
-/

namespace A038260.P8092807662172945160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038256 n) (A038257 n)

end

end A038260.P8092807662172945160

namespace A038260

/-- `lcm(A038256(n), A038257(n))` -/
def P8092807662172945160.Spec : Prop :=
  ∀ n, (P8092807662172945160.a n : ℤ) = A038260 n

end A038260

/-! ## A038260.P17481000898255532601

`Δ[A007664(n)]*A038221(n)`
-/

namespace A038260.P17481000898255532601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038221 n

end

end A038260.P17481000898255532601

namespace A038260

/-- `Δ[A007664(n)]*A038221(n)` -/
def P17481000898255532601.Spec : Prop :=
  ∀ n, P17481000898255532601.a n = A038260 n

end A038260

/-! ## A038260.P17949767768320333928

`3^A003056(n)*A038208(n)`
-/

namespace A038260.P17949767768320333928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A003056 n : ℤ) * (A038208 n : ℚ)

end

end A038260.P17949767768320333928

namespace A038260

/-- `3^A003056(n)*A038208(n)` -/
def P17949767768320333928.Spec : Prop :=
  ∀ n, P17949767768320333928.a n = (A038260 n : ℚ)

end A038260

/-! ## A038260.P3528206189948600476

`6^A003056(n)*A007318(n)`
-/

namespace A038260.P3528206189948600476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A003056 n : ℤ) * (A007318 n : ℚ)

end

end A038260.P3528206189948600476

namespace A038260

/-- `6^A003056(n)*A007318(n)` -/
def P3528206189948600476.Spec : Prop :=
  ∀ n, P3528206189948600476.a n = (A038260 n : ℚ)

end A038260

/-! ## A038260.P12275786089968809031

`A000400(A003056(n))*A007318(n)`
-/

namespace A038260.P12275786089968809031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A003056 n).toNat * A007318 n

end

end A038260.P12275786089968809031

namespace A038260

/-- `A000400(A003056(n))*A007318(n)` -/
def P12275786089968809031.Spec : Prop :=
  ∀ n, P12275786089968809031.a n = A038260 n

end A038260

/-! ## A038260.P11269864023408775511

`A000079(A003056(n))*A038221(n)`
-/

namespace A038260.P11269864023408775511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003056 n).toNat * A038221 n

end

end A038260.P11269864023408775511

namespace A038260

/-- `A000079(A003056(n))*A038221(n)` -/
def P11269864023408775511.Spec : Prop :=
  ∀ n, P11269864023408775511.a n = A038260 n

end A038260

/-! ## A038260.P15793397393671082640

`A038255(n)*A038255(A112367(n))`
-/

namespace A038260.P15793397393671082640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 n * A038255 (A112367 n).toNat

end

end A038260.P15793397393671082640

namespace A038260

/-- `A038255(n)*A038255(A112367(n))` -/
def P15793397393671082640.Spec : Prop :=
  ∀ n, P15793397393671082640.a n = A038260 n

end A038260

/-! ## A038260.P9967383154055275628

`A013620(n)/A007318(n)*A038220(n)`
-/

namespace A038260.P9967383154055275628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A007318 n : ℚ) * (A038220 n : ℚ)

end

end A038260.P9967383154055275628

namespace A038260

/-- `A013620(n)/A007318(n)*A038220(n)` -/
def P9967383154055275628.Spec : Prop :=
  ∀ n, P9967383154055275628.a n = (A038260 n : ℚ)

end A038260

/-! ## A038260.P11398823192883041211

`A013613(n)/A007318(n)*A038255(n)`
-/

namespace A038260.P11398823192883041211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A007318 n : ℚ) * (A038255 n : ℚ)

end

end A038260.P11398823192883041211

namespace A038260

/-- `A013613(n)/A007318(n)*A038255(n)` -/
def P11398823192883041211.Spec : Prop :=
  ∀ n, P11398823192883041211.a n = (A038260 n : ℚ)

end A038260

/-!
# A038261: First line of 5-wave sequence A038201, also bisection of A006358.

The programs for A038261, there is no canonical definition to state claims against.
-/

/-! ## A038261.P1964159479615481726

`A038201(8*n)`
-/

namespace A038261.P1964159479615481726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (8 * n)

end

end A038261.P1964159479615481726

/-! ## A038261.P3232617303036407530

`A006358(comp[2*(n+1)])`
-/

namespace A038261.P3232617303036407530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A038261.P3232617303036407530

/-! ## A038261.P15272417974015399521

`∑[A120747(2*n+1)]+1`
-/

namespace A038261.P15272417974015399521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120747 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A038261.P15272417974015399521

/-! ## A038261.P397929721705145129

`∑[A120747(A004277(n)+1)]`
-/

namespace A038261.P397929721705145129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120747 (A004277 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038261.P397929721705145129

/-! ## A038261.P11020238236831336441

`A038340(2*n)-A120747(2*n+1)`
-/

namespace A038261.P11020238236831336441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038340 (2 * n) - A120747 (2 * n + 1)

end

end A038261.P11020238236831336441

/-! ## A038261.P10692058723279656542

`A069006(2*n)-A120747(2*n+1)`
-/

namespace A038261.P10692058723279656542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069006 (2 * n) - A120747 (2 * n + 1)

end

end A038261.P10692058723279656542

/-! ## A038261.P17768212436363177908

`A006358(2*n+1)-A038340(2*n+1)`
-/

namespace A038261.P17768212436363177908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 (2 * n + 1) - A038340 (2 * n + 1)

end

end A038261.P17768212436363177908

/-! ## A038261.P5334716999467573322

`A230080(2*n+1)-2*A069006(2*n)`
-/

namespace A038261.P5334716999467573322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230080 (2 * n + 1) - 2 * A069006 (2 * n)

end

end A038261.P5334716999467573322

/-! ## A038261.P18194728958282855843

`A050446(A167614(2*(n+1))+1)`
-/

namespace A038261.P18194728958282855843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (A167614 (2 * (n + 1)) + 1).toNat

end

end A038261.P18194728958282855843

/-! ## A038261.P12269958272049337992

`A050447(A052905(2*n+1))`
-/

namespace A038261.P12269958272049337992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (2 * n + 1)).toNat

end

end A038261.P12269958272049337992

/-!
# A038262: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*8^j.

The programs for A038262, the canonical program `A038262.P11562986506712065470` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038262 has offset 0).

The definition of A038262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4047 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038262.P11562986506712065470

`A038258(n)*A059268(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A038262

/-- `A038258(n)*A059268(n)` -/
def P11562986506712065470.Spec : Prop :=
  ∀ n, P11562986506712065470.a n = A038262 n

theorem P11562986506712065470.correct : P11562986506712065470.Spec := by
  intro n
  simp only [A038262]

end A038262

/-! ## A038262.P4322922407303245125

`A038226(n)*A130321(n)`
-/

namespace A038262.P4322922407303245125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038226 n * A130321 n

end

end A038262.P4322922407303245125

namespace A038262

/-- `A038226(n)*A130321(n)` -/
def P4322922407303245125.Spec : Prop :=
  ∀ n, P4322922407303245125.a n = A038262 n

end A038262

/-! ## A038262.P1110696020910885078

`A038222(n)*A137688(n)`
-/

namespace A038262.P1110696020910885078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038222 n * A137688 n

end

end A038262.P1110696020910885078

namespace A038262

/-- `A038222(n)*A137688(n)` -/
def P1110696020910885078.Spec : Prop :=
  ∀ n, P1110696020910885078.a n = A038262 n

end A038262

/-! ## A038262.P15681813245781900146

`A038214(n)*A140303(n)`
-/

namespace A038262.P15681813245781900146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038214 n * A140303 n

end

end A038262.P15681813245781900146

namespace A038262

/-- `A038214(n)*A140303(n)` -/
def P15681813245781900146.Spec : Prop :=
  ∀ n, P15681813245781900146.a n = A038262 n

end A038262

/-! ## A038262.P8400575734687662348

`A038210(n)*A175840(n)`
-/

namespace A038262.P8400575734687662348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038210 n * A175840 n

end

end A038262.P8400575734687662348

namespace A038262

/-- `A038210(n)*A175840(n)` -/
def P8400575734687662348.Spec : Prop :=
  ∀ n, P8400575734687662348.a n = A038262 n

end A038262

/-! ## A038262.P15142398417601631822

`A038208(n)*A356036(n)`
-/

namespace A038262.P15142398417601631822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n * A356036 n

end

end A038262.P15142398417601631822

namespace A038262

/-- `A038208(n)*A356036(n)` -/
def P15142398417601631822.Spec : Prop :=
  ∀ n, P15142398417601631822.a n = A038262 n

end A038262

/-! ## A038262.P18230052576442079550

`A038220(n)*A368043(n)`
-/

namespace A038262.P18230052576442079550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n * A368043 n

end

end A038262.P18230052576442079550

namespace A038262

/-- `A038220(n)*A368043(n)` -/
def P18230052576442079550.Spec : Prop :=
  ∀ n, P18230052576442079550.a n = A038262 n

end A038262

/-! ## A038262.P1024805267655819622

`lcm(A027465(n), A038214(n))`
-/

namespace A038262.P1024805267655819622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027465 n) (A038214 n)

end

end A038262.P1024805267655819622

namespace A038262

/-- `lcm(A027465(n), A038214(n))` -/
def P1024805267655819622.Spec : Prop :=
  ∀ n, (P1024805267655819622.a n : ℤ) = A038262 n

end A038262

/-! ## A038262.P9901882169559578208

`A059268(n)²*A038256(n)`
-/

namespace A038262.P9901882169559578208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038256 n

end

end A038262.P9901882169559578208

namespace A038262

/-- `A059268(n)²*A038256(n)` -/
def P9901882169559578208.Spec : Prop :=
  ∀ n, P9901882169559578208.a n = A038262 n

end A038262

/-! ## A038262.P8477021451953722508

`Δ[A007664(n)]*A038222(n)`
-/

namespace A038262.P8477021451953722508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038222 n

end

end A038262.P8477021451953722508

namespace A038262

/-- `Δ[A007664(n)]*A038222(n)` -/
def P8477021451953722508.Spec : Prop :=
  ∀ n, P8477021451953722508.a n = A038262 n

end A038262

/-! ## A038262.P9310451323733908720

`A038258(n)/A038256(n)*A038258(n)`
-/

namespace A038262.P9310451323733908720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038258 n : ℚ) / (A038256 n : ℚ) * (A038258 n : ℚ)

end

end A038262.P9310451323733908720

namespace A038262

/-- `A038258(n)/A038256(n)*A038258(n)` -/
def P9310451323733908720.Spec : Prop :=
  ∀ n, P9310451323733908720.a n = (A038262 n : ℚ)

end A038262

/-! ## A038262.P6987016712781206004

`A038255(n)*A059268(n)*A059268(n)²`
-/

namespace A038262.P6987016712781206004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 n * A059268 n * A059268 n ^ 2

end

end A038262.P6987016712781206004

namespace A038262

/-- `A038255(n)*A059268(n)*A059268(n)²` -/
def P6987016712781206004.Spec : Prop :=
  ∀ n, P6987016712781206004.a n = A038262 n

end A038262

/-! ## A038262.P17760693621065739513

`(A038256(n)/A038255(n))²*A038256(n)`
-/

namespace A038262.P17760693621065739513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038256 n : ℚ) / (A038255 n : ℚ)) ^ 2 * (A038256 n : ℚ)

end

end A038262.P17760693621065739513

namespace A038262

/-- `(A038256(n)/A038255(n))²*A038256(n)` -/
def P17760693621065739513.Spec : Prop :=
  ∀ n, P17760693621065739513.a n = (A038262 n : ℚ)

end A038262

/-! ## A038262.P2009650024037945929

`A038284(A061579(n))`
-/

namespace A038262.P2009650024037945929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038284 (A061579 n).toNat

end

end A038262.P2009650024037945929

namespace A038262

/-- `A038284(A061579(n))` -/
def P2009650024037945929.Spec : Prop :=
  ∀ n, P2009650024037945929.a n = A038262 n

end A038262

/-! ## A038262.P9239525693923445218

`A038334(n)/A130321(n)`
-/

namespace A038262.P9239525693923445218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038334 n : ℚ) / (A130321 n : ℚ)

end

end A038262.P9239525693923445218

namespace A038262

/-- `A038334(n)/A130321(n)` -/
def P9239525693923445218.Spec : Prop :=
  ∀ n, P9239525693923445218.a n = (A038262 n : ℚ)

end A038262

/-! ## A038262.P415473450842576540

`A038258(n)²/A038256(n)`
-/

namespace A038262.P415473450842576540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038258 n ^ 2 : ℚ) / (A038256 n : ℚ)

end

end A038262.P415473450842576540

namespace A038262

/-- `A038258(n)²/A038256(n)` -/
def P415473450842576540.Spec : Prop :=
  ∀ n, P415473450842576540.a n = (A038262 n : ℚ)

end A038262

/-! ## A038262.P1952784120276465113

`A038258(n)²/gcd(A038258(n), A038260(n))`
-/

namespace A038262.P1952784120276465113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038258 n ^ 2 : ℚ) / (Int.gcd (A038258 n) (A038260 n) : ℚ)

end

end A038262.P1952784120276465113

namespace A038262

/-- `A038258(n)²/gcd(A038258(n), A038260(n))` -/
def P1952784120276465113.Spec : Prop :=
  ∀ n, P1952784120276465113.a n = (A038262 n : ℚ)

end A038262

/-! ## A038262.P11316718484540533253

`gcd(A038334(n)²/A038286(n), A038334(n))`
-/

namespace A038262.P11316718484540533253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038334 n ^ 2 : ℚ) / (A038286 n : ℚ))) (A038334 n)

end

end A038262.P11316718484540533253

namespace A038262

/-- `gcd(A038334(n)²/A038286(n), A038334(n))` -/
def P11316718484540533253.Spec : Prop :=
  ∀ n, (P11316718484540533253.a n : ℤ) = A038262 n

end A038262

/-!
# A038263: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*9^j.

The programs for A038263, the canonical program `A038263.P7438079468923778165` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038263 has offset 0).

The definition of A038263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038263.P7438079468923778165

`A036561(n)*A038221(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038263

/-- `A036561(n)*A038221(n)` -/
def P7438079468923778165.Spec : Prop :=
  ∀ n, P7438079468923778165.a n = A038263 n

theorem P7438079468923778165.correct : P7438079468923778165.Spec := by
  intro n
  simp only [A038263]

end A038263

/-! ## A038263.P12248636474749983589

`A013620(n)*A098355(n)`
-/

namespace A038263.P12248636474749983589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A098355 n

end

end A038263.P12248636474749983589

namespace A038263

/-- `A013620(n)*A098355(n)` -/
def P12248636474749983589.Spec : Prop :=
  ∀ n, P12248636474749983589.a n = A038263 n

end A038263

/-! ## A038263.P14782908124718645376

`A038227(n)*A130321(n)`
-/

namespace A038263.P14782908124718645376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038227 n * A130321 n

end

end A038263.P14782908124718645376

namespace A038263

/-- `A038227(n)*A130321(n)` -/
def P14782908124718645376.Spec : Prop :=
  ∀ n, P14782908124718645376.a n = A038263 n

end A038263

/-! ## A038263.P11349285333763272988

`A038215(n)*A140303(n)`
-/

namespace A038263.P11349285333763272988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038215 n * A140303 n

end

end A038263.P11349285333763272988

namespace A038263

/-- `A038215(n)*A140303(n)` -/
def P11349285333763272988.Spec : Prop :=
  ∀ n, P11349285333763272988.a n = A038263 n

end A038263

/-! ## A038263.P15648277886755934500

`lcm(A013620(n), A038227(n))`
-/

namespace A038263.P15648277886755934500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013620 n) (A038227 n)

end

end A038263.P15648277886755934500

namespace A038263

/-- `lcm(A013620(n), A038227(n))` -/
def P15648277886755934500.Spec : Prop :=
  ∀ n, (P15648277886755934500.a n : ℤ) = A038263 n

end A038263

/-! ## A038263.P7375543362508778669

`A013620(n)/(1/3)^A003056(n)`
-/

namespace A038263.P7375543362508778669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / ((1 : ℚ) / 3) ^ (A003056 n : ℤ)

end

end A038263.P7375543362508778669

namespace A038263

/-- `A013620(n)/(1/3)^A003056(n)` -/
def P7375543362508778669.Spec : Prop :=
  ∀ n, P7375543362508778669.a n = (A038263 n : ℚ)

end A038263

/-! ## A038263.P18045266872608596283

`A013620(n)*A013620(A025581(n)+n)`
-/

namespace A038263.P18045266872608596283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A013620 (A025581 n + (n : ℤ)).toNat

end

end A038263.P18045266872608596283

namespace A038263

/-- `A013620(n)*A013620(A025581(n)+n)` -/
def P18045266872608596283.Spec : Prop :=
  ∀ n, P18045266872608596283.a n = A038263 n

end A038263

/-! ## A038263.P13326888038139949503

`A013620(n)/A007318(n)*A038221(n)`
-/

namespace A038263.P13326888038139949503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A007318 n : ℚ) * (A038221 n : ℚ)

end

end A038263.P13326888038139949503

namespace A038263

/-- `A013620(n)/A007318(n)*A038221(n)` -/
def P13326888038139949503.Spec : Prop :=
  ∀ n, P13326888038139949503.a n = (A038263 n : ℚ)

end A038263

/-! ## A038263.P10712837004884480179

`A038257(n)/A038255(n)*A038257(n)`
-/

namespace A038263.P10712837004884480179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038257 n : ℚ) / (A038255 n : ℚ) * (A038257 n : ℚ)

end

end A038263.P10712837004884480179

namespace A038263

/-- `A038257(n)/A038255(n)*A038257(n)` -/
def P10712837004884480179.Spec : Prop :=
  ∀ n, P10712837004884480179.a n = (A038263 n : ℚ)

end A038263

/-! ## A038263.P2275449261503491364

`A038260(n)/A038258(n)*A038260(n)`
-/

namespace A038263.P2275449261503491364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038260 n : ℚ) / (A038258 n : ℚ) * (A038260 n : ℚ)

end

end A038263.P2275449261503491364

namespace A038263

/-- `A038260(n)/A038258(n)*A038260(n)` -/
def P2275449261503491364.Spec : Prop :=
  ∀ n, P2275449261503491364.a n = (A038263 n : ℚ)

end A038263

/-! ## A038263.P5361400548397840394

`A038296(A061579(n))`
-/

namespace A038263.P5361400548397840394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038296 (A061579 n).toNat

end

end A038263.P5361400548397840394

namespace A038263

/-- `A038296(A061579(n))` -/
def P5361400548397840394.Spec : Prop :=
  ∀ n, P5361400548397840394.a n = A038263 n

end A038263

/-! ## A038263.P2754351133808682907

`A038335(n)/A130321(n)`
-/

namespace A038263.P2754351133808682907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038335 n : ℚ) / (A130321 n : ℚ)

end

end A038263.P2754351133808682907

namespace A038263

/-- `A038335(n)/A130321(n)` -/
def P2754351133808682907.Spec : Prop :=
  ∀ n, P2754351133808682907.a n = (A038263 n : ℚ)

end A038263

/-! ## A038263.P18129123098472472168

`A038257(n)²/A038255(n)`
-/

namespace A038263.P18129123098472472168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038257 n ^ 2 : ℚ) / (A038255 n : ℚ)

end

end A038263.P18129123098472472168

namespace A038263

/-- `A038257(n)²/A038255(n)` -/
def P18129123098472472168.Spec : Prop :=
  ∀ n, P18129123098472472168.a n = (A038263 n : ℚ)

end A038263

/-! ## A038263.P11597896500033909749

`A038257(n)²/gcd(A038257(n), A038258(n))`
-/

namespace A038263.P11597896500033909749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038257 n ^ 2 : ℚ) / (Int.gcd (A038257 n) (A038258 n) : ℚ)

end

end A038263.P11597896500033909749

namespace A038263

/-- `A038257(n)²/gcd(A038257(n), A038258(n))` -/
def P11597896500033909749.Spec : Prop :=
  ∀ n, P11597896500033909749.a n = (A038263 n : ℚ)

end A038263

/-! ## A038263.P314879861929984348

`A038260(n)²/A038258(n)`
-/

namespace A038263.P314879861929984348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038260 n ^ 2 : ℚ) / (A038258 n : ℚ)

end

end A038263.P314879861929984348

namespace A038263

/-- `A038260(n)²/A038258(n)` -/
def P314879861929984348.Spec : Prop :=
  ∀ n, P314879861929984348.a n = (A038263 n : ℚ)

end A038263

/-! ## A038263.P17706919093612775010

`gcd(A038335(n)²/A038287(n), A038335(n))`
-/

namespace A038263.P17706919093612775010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038335 n ^ 2 : ℚ) / (A038287 n : ℚ))) (A038335 n)

end

end A038263.P17706919093612775010

namespace A038263

/-- `gcd(A038335(n)²/A038287(n), A038335(n))` -/
def P17706919093612775010.Spec : Prop :=
  ∀ n, (P17706919093612775010.a n : ℤ) = A038263 n

end A038263

/-!
# A038264: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*10^j.

The programs for A038264, the canonical program `A038264.P12280773742557705400` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038264 has offset 0).

The definition of A038264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3620 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038264.P12280773742557705400

`A038259(n)*A059268(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038264

/-- `A038259(n)*A059268(n)` -/
def P12280773742557705400.Spec : Prop :=
  ∀ n, P12280773742557705400.a n = A038264 n

theorem P12280773742557705400.correct : P12280773742557705400.Spec := by
  intro n
  simp only [A038264]

end A038264

/-! ## A038264.P12983119675892691499

`A013622(n)*A137688(n)`
-/

namespace A038264.P12983119675892691499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 n * A137688 n

end

end A038264.P12983119675892691499

namespace A038264

/-- `A013622(n)*A137688(n)` -/
def P12983119675892691499.Spec : Prop :=
  ∀ n, P12983119675892691499.a n = A038264 n

end A038264

/-! ## A038264.P10410771522899164857

`A038208(n)*A120027(n)`
-/

namespace A038264.P10410771522899164857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n * A120027 n

end

end A038264.P10410771522899164857

namespace A038264

/-- `A038208(n)*A120027(n)` -/
def P10410771522899164857.Spec : Prop :=
  ∀ n, P10410771522899164857.a n = A038264 n

end A038264

/-! ## A038264.P2243081681123169118

`A038228(n)*A130321(n)`
-/

namespace A038264.P2243081681123169118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038228 n * A130321 n

end

end A038264.P2243081681123169118

namespace A038264

/-- `A038228(n)*A130321(n)` -/
def P2243081681123169118.Spec : Prop :=
  ∀ n, P2243081681123169118.a n = A038264 n

end A038264

/-! ## A038264.P6425252815136311082

`A038216(n)*A140303(n)`
-/

namespace A038264.P6425252815136311082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038216 n * A140303 n

end

end A038264.P6425252815136311082

namespace A038264

/-- `A038216(n)*A140303(n)` -/
def P6425252815136311082.Spec : Prop :=
  ∀ n, P6425252815136311082.a n = A038264 n

end A038264

/-! ## A038264.P10224990004736927055

`A013621(n)*A175840(n)`
-/

namespace A038264.P10224990004736927055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013621 n * A175840 n

end

end A038264.P10224990004736927055

namespace A038264

/-- `A013621(n)*A175840(n)` -/
def P10224990004736927055.Spec : Prop :=
  ∀ n, P10224990004736927055.a n = A038264 n

end A038264

/-! ## A038264.P10652065543845819904

`lcm(A013622(n), A038208(n))`
-/

namespace A038264.P10652065543845819904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013622 n) (A038208 n)

end

end A038264.P10652065543845819904

namespace A038264

/-- `lcm(A013622(n), A038208(n))` -/
def P10652065543845819904.Spec : Prop :=
  ∀ n, (P10652065543845819904.a n : ℤ) = A038264 n

end A038264

/-! ## A038264.P14847569081163778160

`lcm(A013612(n), A038256(n))`
-/

namespace A038264.P14847569081163778160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038256 n)

end

end A038264.P14847569081163778160

namespace A038264

/-- `lcm(A013612(n), A038256(n))` -/
def P14847569081163778160.Spec : Prop :=
  ∀ n, (P14847569081163778160.a n : ℤ) = A038264 n

end A038264

/-! ## A038264.P14688956542609729197

`lcm(A027465(n), A038216(n))`
-/

namespace A038264.P14688956542609729197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027465 n) (A038216 n)

end

end A038264.P14688956542609729197

namespace A038264

/-- `lcm(A027465(n), A038216(n))` -/
def P14688956542609729197.Spec : Prop :=
  ∀ n, (P14688956542609729197.a n : ℤ) = A038264 n

end A038264

/-! ## A038264.P8607048846820961947

`A038220(n)*A232646(n+1)`
-/

namespace A038264.P8607048846820961947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n * A232646 (n + 1)

end

end A038264.P8607048846820961947

namespace A038264

/-- `A038220(n)*A232646(n+1)` -/
def P8607048846820961947.Spec : Prop :=
  ∀ n, P8607048846820961947.a n = A038264 n

end A038264

/-! ## A038264.P6974782905757927803

`A038308(A061579(n))`
-/

namespace A038264.P6974782905757927803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038308 (A061579 n).toNat

end

end A038264.P6974782905757927803

namespace A038264

/-- `A038308(A061579(n))` -/
def P6974782905757927803.Spec : Prop :=
  ∀ n, P6974782905757927803.a n = A038264 n

end A038264

/-! ## A038264.P7145254503505342003

`A038336(n)/A130321(n)`
-/

namespace A038264.P7145254503505342003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038336 n : ℚ) / (A130321 n : ℚ)

end

end A038264.P7145254503505342003

namespace A038264

/-- `A038336(n)/A130321(n)` -/
def P7145254503505342003.Spec : Prop :=
  ∀ n, P7145254503505342003.a n = (A038264 n : ℚ)

end A038264

/-! ## A038264.P11631489841176765969

`A013622(n)*A256890(A057944(n))`
-/

namespace A038264.P11631489841176765969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 n * A256890 (A057944 n).toNat

end

end A038264.P11631489841176765969

namespace A038264

/-- `A013622(n)*A256890(A057944(n))` -/
def P11631489841176765969.Spec : Prop :=
  ∀ n, P11631489841176765969.a n = A038264 n

end A038264

/-! ## A038264.P16318370372539689496

`gcd(A038336(n)²/A038288(n), A038336(n))`
-/

namespace A038264.P16318370372539689496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038336 n ^ 2 : ℚ) / (A038288 n : ℚ))) (A038336 n)

end

end A038264.P16318370372539689496

namespace A038264

/-- `gcd(A038336(n)²/A038288(n), A038336(n))` -/
def P16318370372539689496.Spec : Prop :=
  ∀ n, (P16318370372539689496.a n : ℤ) = A038264 n

end A038264

/-!
# A038265: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*11^j.

The programs for A038265, the canonical program `A038265.P17989473238907539147` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038265 has offset 0).

The definition of A038265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3530 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038265.P17989473238907539147

`A038229(n)*A130321(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038265

/-- `A038229(n)*A130321(n)` -/
def P17989473238907539147.Spec : Prop :=
  ∀ n, P17989473238907539147.a n = A038265 n

theorem P17989473238907539147.correct : P17989473238907539147.Spec := by
  intro n
  simp only [A038265]

end A038265

/-! ## A038265.P16241216158144513624

`A038217(n)*A140303(n)`
-/

namespace A038265.P16241216158144513624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038217 n * A140303 n

end

end A038265.P16241216158144513624

namespace A038265

/-- `A038217(n)*A140303(n)` -/
def P16241216158144513624.Spec : Prop :=
  ∀ n, P16241216158144513624.a n = A038265 n

end A038265

/-! ## A038265.P15078565833253772806

`lcm(A013618(n), A038255(n))`
-/

namespace A038265.P15078565833253772806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013618 n) (A038255 n)

end

end A038265.P15078565833253772806

namespace A038265

/-- `lcm(A013618(n), A038255(n))` -/
def P15078565833253772806.Spec : Prop :=
  ∀ n, (P15078565833253772806.a n : ℤ) = A038265 n

end A038265

/-! ## A038265.P8784634486136461940

`lcm(A027465(n), A038217(n))`
-/

namespace A038265.P8784634486136461940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027465 n) (A038217 n)

end

end A038265.P8784634486136461940

namespace A038265

/-- `lcm(A027465(n), A038217(n))` -/
def P8784634486136461940.Spec : Prop :=
  ∀ n, (P8784634486136461940.a n : ℤ) = A038265 n

end A038265

/-! ## A038265.P3948642781955379415

`lcm(A038207(n), A038229(n))`
-/

namespace A038265.P3948642781955379415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038207 n) (A038229 n)

end

end A038265.P3948642781955379415

namespace A038265

/-- `lcm(A038207(n), A038229(n))` -/
def P3948642781955379415.Spec : Prop :=
  ∀ n, (P3948642781955379415.a n : ℤ) = A038265 n

end A038265

/-! ## A038265.P1298418994655110207

`A038320(A061579(n))`
-/

namespace A038265.P1298418994655110207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038320 (A061579 n).toNat

end

end A038265.P1298418994655110207

namespace A038265

/-- `A038320(A061579(n))` -/
def P1298418994655110207.Spec : Prop :=
  ∀ n, P1298418994655110207.a n = A038265 n

end A038265

/-! ## A038265.P14191206674107519507

`A038337(n)/A130321(n)`
-/

namespace A038265.P14191206674107519507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038337 n : ℚ) / (A130321 n : ℚ)

end

end A038265.P14191206674107519507

namespace A038265

/-- `A038337(n)/A130321(n)` -/
def P14191206674107519507.Spec : Prop :=
  ∀ n, P14191206674107519507.a n = (A038265 n : ℚ)

end A038265

/-! ## A038265.P9760453517781208301

`gcd(A038337(n)²/A038289(n), A038337(n))`
-/

namespace A038265.P9760453517781208301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038337 n ^ 2 : ℚ) / (A038289 n : ℚ))) (A038337 n)

end

end A038265.P9760453517781208301

namespace A038265

/-- `gcd(A038337(n)²/A038289(n), A038337(n))` -/
def P9760453517781208301.Spec : Prop :=
  ∀ n, (P9760453517781208301.a n : ℤ) = A038265 n

end A038265

/-!
# A038266: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*12^j.

The programs for A038266, the canonical program `A038266.P12892791961704358879` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038266 has offset 0).

The definition of A038266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038266.P12892791961704358879

`A036561(n)*A038222(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038266

/-- `A036561(n)*A038222(n)` -/
def P12892791961704358879.Spec : Prop :=
  ∀ n, P12892791961704358879.a n = A038266 n

theorem P12892791961704358879.correct : P12892791961704358879.Spec := by
  intro n
  simp only [A038266]

end A038266

/-! ## A038266.P13263109772012109873

`A038260(n)*A059268(n)`
-/

namespace A038266.P13263109772012109873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038260 n * A059268 n

end

end A038266.P13263109772012109873

namespace A038266

/-- `A038260(n)*A059268(n)` -/
def P13263109772012109873.Spec : Prop :=
  ∀ n, P13263109772012109873.a n = A038266 n

end A038266

/-! ## A038266.P5607711113670468280

`A038210(n)*A098355(n)`
-/

namespace A038266.P5607711113670468280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038210 n * A098355 n

end

end A038266.P5607711113670468280

namespace A038266

/-- `A038210(n)*A098355(n)` -/
def P5607711113670468280.Spec : Prop :=
  ∀ n, P5607711113670468280.a n = A038266 n

end A038266

/-! ## A038266.P12436365305158983510

`A038208(n)*A100852(n)`
-/

namespace A038266.P12436365305158983510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n * A100852 n

end

end A038266.P12436365305158983510

namespace A038266

/-- `A038208(n)*A100852(n)` -/
def P12436365305158983510.Spec : Prop :=
  ∀ n, P12436365305158983510.a n = A038266 n

end A038266

/-! ## A038266.P9966965667506704361

`A038220(n)*A100851(n)`
-/

namespace A038266.P9966965667506704361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n * A100851 n

end

end A038266.P9966965667506704361

namespace A038266

/-- `A038220(n)*A100851(n)` -/
def P9966965667506704361.Spec : Prop :=
  ∀ n, P9966965667506704361.a n = A038266 n

end A038266

/-! ## A038266.P17756410134884515868

`A038230(n)*A130321(n)`
-/

namespace A038266.P17756410134884515868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038230 n * A130321 n

end

end A038266.P17756410134884515868

namespace A038266

/-- `A038230(n)*A130321(n)` -/
def P17756410134884515868.Spec : Prop :=
  ∀ n, P17756410134884515868.a n = A038266 n

end A038266

/-! ## A038266.P13376883292652561583

`A038224(n)*A137688(n)`
-/

namespace A038266.P13376883292652561583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038224 n * A137688 n

end

end A038266.P13376883292652561583

namespace A038266

/-- `A038224(n)*A137688(n)` -/
def P13376883292652561583.Spec : Prop :=
  ∀ n, P13376883292652561583.a n = A038266 n

end A038266

/-! ## A038266.P8705626103241776107

`A038218(n)*A140303(n)`
-/

namespace A038266.P8705626103241776107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038218 n * A140303 n

end

end A038266.P8705626103241776107

namespace A038266

/-- `A038218(n)*A140303(n)` -/
def P8705626103241776107.Spec : Prop :=
  ∀ n, P8705626103241776107.a n = A038266 n

end A038266

/-! ## A038266.P12551388720094217072

`A038212(n)*A175840(n)`
-/

namespace A038266.P12551388720094217072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038212 n * A175840 n

end

end A038266.P12551388720094217072

namespace A038266

/-- `A038212(n)*A175840(n)` -/
def P12551388720094217072.Spec : Prop :=
  ∀ n, P12551388720094217072.a n = A038266 n

end A038266

/-! ## A038266.P7059371440751519007

`A013620(n)*A356036(n)`
-/

namespace A038266.P7059371440751519007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A356036 n

end

end A038266.P7059371440751519007

namespace A038266

/-- `A013620(n)*A356036(n)` -/
def P7059371440751519007.Spec : Prop :=
  ∀ n, P7059371440751519007.a n = A038266 n

end A038266

/-! ## A038266.P17314519735932853254

`A038221(n)*A368043(n)`
-/

namespace A038266.P17314519735932853254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 n * A368043 n

end

end A038266.P17314519735932853254

namespace A038266

/-- `A038221(n)*A368043(n)` -/
def P17314519735932853254.Spec : Prop :=
  ∀ n, P17314519735932853254.a n = A038266 n

end A038266

/-! ## A038266.P12857680281659827116

`lcm(A038210(n), A038221(n))`
-/

namespace A038266.P12857680281659827116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038210 n) (A038221 n)

end

end A038266.P12857680281659827116

namespace A038266

/-- `lcm(A038210(n), A038221(n))` -/
def P12857680281659827116.Spec : Prop :=
  ∀ n, (P12857680281659827116.a n : ℤ) = A038266 n

end A038266

/-! ## A038266.P9640011008403059305

`lcm(A038218(n), A038224(n))`
-/

namespace A038266.P9640011008403059305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038218 n) (A038224 n)

end

end A038266.P9640011008403059305

namespace A038266

/-- `lcm(A038218(n), A038224(n))` -/
def P9640011008403059305.Spec : Prop :=
  ∀ n, (P9640011008403059305.a n : ℤ) = A038266 n

end A038266

/-! ## A038266.P3993193774026863202

`lcm(A038230(n), A038258(n))`
-/

namespace A038266.P3993193774026863202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038230 n) (A038258 n)

end

end A038266.P3993193774026863202

namespace A038266

/-- `lcm(A038230(n), A038258(n))` -/
def P3993193774026863202.Spec : Prop :=
  ∀ n, (P3993193774026863202.a n : ℤ) = A038266 n

end A038266

/-! ## A038266.P2965748811459359191

`A059268(n)²*A038257(n)`
-/

namespace A038266.P2965748811459359191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038257 n

end

end A038266.P2965748811459359191

namespace A038266

/-- `A059268(n)²*A038257(n)` -/
def P2965748811459359191.Spec : Prop :=
  ∀ n, P2965748811459359191.a n = A038266 n

end A038266

/-! ## A038266.P8444011693144881966

`6^A003056(n)*A013609(n)`
-/

namespace A038266.P8444011693144881966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A003056 n : ℤ) * (A013609 n : ℚ)

end

end A038266.P8444011693144881966

namespace A038266

/-- `6^A003056(n)*A013609(n)` -/
def P8444011693144881966.Spec : Prop :=
  ∀ n, P8444011693144881966.a n = (A038266 n : ℚ)

end A038266

/-! ## A038266.P1679192572076341055

`A038332(A061579(n))`
-/

namespace A038266.P1679192572076341055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038332 (A061579 n).toNat

end

end A038266.P1679192572076341055

namespace A038266

/-- `A038332(A061579(n))` -/
def P1679192572076341055.Spec : Prop :=
  ∀ n, P1679192572076341055.a n = A038266 n

end A038266

/-! ## A038266.P17219231477558199754

`A038338(n)/A130321(n)`
-/

namespace A038266.P17219231477558199754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038338 n : ℚ) / (A130321 n : ℚ)

end

end A038266.P17219231477558199754

namespace A038266

/-- `A038338(n)/A130321(n)` -/
def P17219231477558199754.Spec : Prop :=
  ∀ n, P17219231477558199754.a n = (A038266 n : ℚ)

end A038266

/-! ## A038266.P2594596986357906590

`A038260(n)²/gcd(A038260(n), A038263(n))`
-/

namespace A038266.P2594596986357906590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038260 n ^ 2 : ℚ) / (Int.gcd (A038260 n) (A038263 n) : ℚ)

end

end A038266.P2594596986357906590

namespace A038266

/-- `A038260(n)²/gcd(A038260(n), A038263(n))` -/
def P2594596986357906590.Spec : Prop :=
  ∀ n, P2594596986357906590.a n = (A038266 n : ℚ)

end A038266

/-! ## A038266.P6352311075738838318

`gcd(A038338(n)²/A038290(n), A038338(n))`
-/

namespace A038266.P6352311075738838318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038338 n ^ 2 : ℚ) / (A038290 n : ℚ))) (A038338 n)

end

end A038266.P6352311075738838318

namespace A038266

/-- `gcd(A038338(n)²/A038290(n), A038338(n))` -/
def P6352311075738838318.Spec : Prop :=
  ∀ n, (P6352311075738838318.a n : ℤ) = A038266 n

end A038266

/-!
# A038268: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*2^j.

The programs for A038268, the canonical program `A038268.P54957190970159689` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038268 has offset 0).

The definition of A038268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5692 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038268.P54957190970159689

`A027466(n)*A059268(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038268

/-- `A027466(n)*A059268(n)` -/
def P54957190970159689.Spec : Prop :=
  ∀ n, P54957190970159689.a n = A038268 n

theorem P54957190970159689.correct : P54957190970159689.Spec := by
  intro n
  simp only [A038268]

end A038268

/-! ## A038268.P10137031977712777142

`lcm(A013609(n), A027466(n))`
-/

namespace A038268.P10137031977712777142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A027466 n)

end

end A038268.P10137031977712777142

namespace A038268

/-- `lcm(A013609(n), A027466(n))` -/
def P10137031977712777142.Spec : Prop :=
  ∀ n, (P10137031977712777142.a n : ℤ) = A038268 n

end A038268

/-! ## A038268.P422783053256842874

`A000079(A002262(n))*A027466(n)`
-/

namespace A038268.P422783053256842874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A027466 n

end

end A038268.P422783053256842874

namespace A038268

/-- `A000079(A002262(n))*A027466(n)` -/
def P422783053256842874.Spec : Prop :=
  ∀ n, P422783053256842874.a n = A038268 n

end A038268

/-! ## A038268.P5444288291596912334

`A000420(A025581(n))*A013609(n)`
-/

namespace A038268.P5444288291596912334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A025581 n).toNat * A013609 n

end

end A038268.P5444288291596912334

namespace A038268

/-- `A000420(A025581(n))*A013609(n)` -/
def P5444288291596912334.Spec : Prop :=
  ∀ n, P5444288291596912334.a n = A038268 n

end A038268

/-! ## A038268.P6692339828048553695

`A011782(A002260(n+1))*A027466(n)`
-/

namespace A038268.P6692339828048553695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A027466 n

end

end A038268.P6692339828048553695

namespace A038268

/-- `A011782(A002260(n+1))*A027466(n)` -/
def P6692339828048553695.Spec : Prop :=
  ∀ n, P6692339828048553695.a n = A038268 n

end A038268

/-! ## A038268.P14288193769968876173

`A013623(A061579(n))`
-/

namespace A038268.P14288193769968876173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013623 (A061579 n).toNat

end

end A038268.P14288193769968876173

namespace A038268

/-- `A013623(A061579(n))` -/
def P14288193769968876173.Spec : Prop :=
  ∀ n, P14288193769968876173.a n = A038268 n

end A038268

/-! ## A038268.P11782947270986526302

`A038270(n)/A059268(n)`
-/

namespace A038268.P11782947270986526302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038270 n : ℚ) / (A059268 n : ℚ)

end

end A038268.P11782947270986526302

namespace A038268

/-- `A038270(n)/A059268(n)` -/
def P11782947270986526302.Spec : Prop :=
  ∀ n, P11782947270986526302.a n = (A038268 n : ℚ)

end A038268

/-! ## A038268.P10767608613048756320

`gcd(A038270(n), A038272(n))`
-/

namespace A038268.P10767608613048756320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038270 n) (A038272 n)

end

end A038268.P10767608613048756320

namespace A038268

/-- `gcd(A038270(n), A038272(n))` -/
def P10767608613048756320.Spec : Prop :=
  ∀ n, (P10767608613048756320.a n : ℤ) = A038268 n

end A038268

/-! ## A038268.P14294335782408882138

`A038274(n)/A059268(n)²`
-/

namespace A038268.P14294335782408882138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038274 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038268.P14294335782408882138

namespace A038268

/-- `A038274(n)/A059268(n)²` -/
def P14294335782408882138.Spec : Prop :=
  ∀ n, P14294335782408882138.a n = (A038268 n : ℚ)

end A038268

/-! ## A038268.P12385685101753052329

`gcd(A038274(n), A038276(n))`
-/

namespace A038268.P12385685101753052329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038274 n) (A038276 n)

end

end A038268.P12385685101753052329

namespace A038268

/-- `gcd(A038274(n), A038276(n))` -/
def P12385685101753052329.Spec : Prop :=
  ∀ n, (P12385685101753052329.a n : ℤ) = A038268 n

end A038268

/-!
# A038269: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*3^j.

The programs for A038269, the canonical program `A038269.P5706044203948938292` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038269 has offset 0).

The definition of A038269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038269.P5706044203948938292

`lcm(A013610(n), A027466(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038269

/-- `lcm(A013610(n), A027466(n))` -/
def P5706044203948938292.Spec : Prop :=
  ∀ n, (P5706044203948938292.a n : ℤ) = A038269 n

theorem P5706044203948938292.correct : P5706044203948938292.Spec := by
  intro n
  simp only [A038269]

end A038269

/-! ## A038269.P5184077177643922398

`A000244(A002262(n))*A027466(n)`
-/

namespace A038269.P5184077177643922398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A027466 n

end

end A038269.P5184077177643922398

namespace A038269

/-- `A000244(A002262(n))*A027466(n)` -/
def P5184077177643922398.Spec : Prop :=
  ∀ n, P5184077177643922398.a n = A038269 n

end A038269

/-! ## A038269.P10063338198395656364

`A000420(A025581(n))*A013610(n)`
-/

namespace A038269.P10063338198395656364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A025581 n).toNat * A013610 n

end

end A038269.P10063338198395656364

namespace A038269

/-- `A000420(A025581(n))*A013610(n)` -/
def P10063338198395656364.Spec : Prop :=
  ∀ n, P10063338198395656364.a n = A038269 n

end A038269

/-! ## A038269.P13457393051611405300

`A013613(n)/A013609(n)*A027466(n)`
-/

namespace A038269.P13457393051611405300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A013609 n : ℚ) * (A027466 n : ℚ)

end

end A038269.P13457393051611405300

namespace A038269

/-- `A013613(n)/A013609(n)*A027466(n)` -/
def P13457393051611405300.Spec : Prop :=
  ∀ n, P13457393051611405300.a n = (A038269 n : ℚ)

end A038269

/-! ## A038269.P2341589944935770069

`A013624(A061579(n))`
-/

namespace A038269.P2341589944935770069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013624 (A061579 n).toNat

end

end A038269.P2341589944935770069

namespace A038269

/-- `A013624(A061579(n))` -/
def P2341589944935770069.Spec : Prop :=
  ∀ n, P2341589944935770069.a n = A038269 n

end A038269

/-! ## A038269.P320683019339667501

`A038272(n)/A059268(n)`
-/

namespace A038269.P320683019339667501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038272 n : ℚ) / (A059268 n : ℚ)

end

end A038269.P320683019339667501

namespace A038269

/-- `A038272(n)/A059268(n)` -/
def P320683019339667501.Spec : Prop :=
  ∀ n, P320683019339667501.a n = (A038269 n : ℚ)

end A038269

/-! ## A038269.P9607113873280587495

`gcd(A038272(n), A038275(n))`
-/

namespace A038269.P9607113873280587495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038272 n) (A038275 n)

end

end A038269.P9607113873280587495

namespace A038269

/-- `gcd(A038272(n), A038275(n))` -/
def P9607113873280587495.Spec : Prop :=
  ∀ n, (P9607113873280587495.a n : ℤ) = A038269 n

end A038269

/-! ## A038269.P4967272895553822786

`A038278(n)/A059268(n)²`
-/

namespace A038269.P4967272895553822786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038278 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038269.P4967272895553822786

namespace A038269

/-- `A038278(n)/A059268(n)²` -/
def P4967272895553822786.Spec : Prop :=
  ∀ n, P4967272895553822786.a n = (A038269 n : ℚ)

end A038269

/-! ## A038269.P13996823523670153114

`A000265(A036561(n))*A027466(n)`
-/

namespace A038269.P13996823523670153114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A036561 n).toNat * A027466 n

end

end A038269.P13996823523670153114

namespace A038269

/-- `A000265(A036561(n))*A027466(n)` -/
def P13996823523670153114.Spec : Prop :=
  ∀ n, P13996823523670153114.a n = A038269 n

end A038269

/-!
# A038270: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*4^j.

The programs for A038270, the canonical program `A038270.P14616798434417100428` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038270 has offset 0).

The definition of A038270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4877 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038270.P14616798434417100428

`A038268(n)*A059268(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038270

/-- `A038268(n)*A059268(n)` -/
def P14616798434417100428.Spec : Prop :=
  ∀ n, P14616798434417100428.a n = A038270 n

theorem P14616798434417100428.correct : P14616798434417100428.Spec := by
  intro n
  simp only [A038270]

end A038270

/-! ## A038270.P16764227861198920509

`lcm(A013611(n), A027466(n))`
-/

namespace A038270.P16764227861198920509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013611 n) (A027466 n)

end

end A038270.P16764227861198920509

namespace A038270

/-- `lcm(A013611(n), A027466(n))` -/
def P16764227861198920509.Spec : Prop :=
  ∀ n, (P16764227861198920509.a n : ℤ) = A038270 n

end A038270

/-! ## A038270.P216103063574497757

`A059268(n)²*A027466(n)`
-/

namespace A038270.P216103063574497757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A027466 n

end

end A038270.P216103063574497757

namespace A038270

/-- `A059268(n)²*A027466(n)` -/
def P216103063574497757.Spec : Prop :=
  ∀ n, P216103063574497757.a n = A038270 n

end A038270

/-! ## A038270.P11761646276755124878

`A000079(A002262(n))²*A027466(n)`
-/

namespace A038270.P11761646276755124878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat ^ 2 * A027466 n

end

end A038270.P11761646276755124878

namespace A038270

/-- `A000079(A002262(n))²*A027466(n)` -/
def P11761646276755124878.Spec : Prop :=
  ∀ n, P11761646276755124878.a n = A038270 n

end A038270

/-! ## A038270.P12650065784398489809

`A000079(2*A002262(n))*A027466(n)`
-/

namespace A038270.P12650065784398489809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A002262 n).toNat * A027466 n

end

end A038270.P12650065784398489809

namespace A038270

/-- `A000079(2*A002262(n))*A027466(n)` -/
def P12650065784398489809.Spec : Prop :=
  ∀ n, P12650065784398489809.a n = A038270 n

end A038270

/-! ## A038270.P3854510335014755920

`A038268(n)/A027466(n)*A038268(n)`
-/

namespace A038270.P3854510335014755920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038268 n : ℚ) / (A027466 n : ℚ) * (A038268 n : ℚ)

end

end A038270.P3854510335014755920

namespace A038270

/-- `A038268(n)/A027466(n)*A038268(n)` -/
def P3854510335014755920.Spec : Prop :=
  ∀ n, P3854510335014755920.a n = (A038270 n : ℚ)

end A038270

/-! ## A038270.P5472680346435833345

`A011782(A002260(n+1))²*A027466(n)`
-/

namespace A038270.P5472680346435833345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat ^ 2 * A027466 n

end

end A038270.P5472680346435833345

namespace A038270

/-- `A011782(A002260(n+1))²*A027466(n)` -/
def P5472680346435833345.Spec : Prop :=
  ∀ n, P5472680346435833345.a n = A038270 n

end A038270

/-! ## A038270.P652154286134832041

`A013625(A061579(n))`
-/

namespace A038270.P652154286134832041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013625 (A061579 n).toNat

end

end A038270.P652154286134832041

namespace A038270

/-- `A013625(A061579(n))` -/
def P652154286134832041.Spec : Prop :=
  ∀ n, P652154286134832041.a n = A038270 n

end A038270

/-! ## A038270.P11710046272125152165

`A038274(n)/A059268(n)`
-/

namespace A038270.P11710046272125152165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038274 n : ℚ) / (A059268 n : ℚ)

end

end A038270.P11710046272125152165

namespace A038270

/-- `A038274(n)/A059268(n)` -/
def P11710046272125152165.Spec : Prop :=
  ∀ n, P11710046272125152165.a n = (A038270 n : ℚ)

end A038270

/-! ## A038270.P334247069635592528

`A038272(n)/A038275(n)*A038272(n)`
-/

namespace A038270.P334247069635592528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038272 n : ℚ) / (A038275 n : ℚ) * (A038272 n : ℚ)

end

end A038270.P334247069635592528

namespace A038270

/-- `A038272(n)/A038275(n)*A038272(n)` -/
def P334247069635592528.Spec : Prop :=
  ∀ n, P334247069635592528.a n = (A038270 n : ℚ)

end A038270

/-! ## A038270.P6841647243845639054

`gcd(A038274(n), A038278(n))`
-/

namespace A038270.P6841647243845639054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038274 n) (A038278 n)

end

end A038270.P6841647243845639054

namespace A038270

/-- `gcd(A038274(n), A038278(n))` -/
def P6841647243845639054.Spec : Prop :=
  ∀ n, (P6841647243845639054.a n : ℤ) = A038270 n

end A038270

/-! ## A038270.P7998984510079667546

`A038268(n)²/A027466(n)`
-/

namespace A038270.P7998984510079667546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038268 n ^ 2 : ℚ) / (A027466 n : ℚ)

end

end A038270.P7998984510079667546

namespace A038270

/-- `A038268(n)²/A027466(n)` -/
def P7998984510079667546.Spec : Prop :=
  ∀ n, P7998984510079667546.a n = (A038270 n : ℚ)

end A038270

/-! ## A038270.P16394995071439678494

`A038268(n)²/gcd(A038268(n), A038269(n))`
-/

namespace A038270.P16394995071439678494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038268 n ^ 2 : ℚ) / (Int.gcd (A038268 n) (A038269 n) : ℚ)

end

end A038270.P16394995071439678494

namespace A038270

/-- `A038268(n)²/gcd(A038268(n), A038269(n))` -/
def P16394995071439678494.Spec : Prop :=
  ∀ n, P16394995071439678494.a n = (A038270 n : ℚ)

end A038270

/-! ## A038270.P17563552393069797321

`A038272(n)²/A038275(n)`
-/

namespace A038270.P17563552393069797321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038272 n ^ 2 : ℚ) / (A038275 n : ℚ)

end

end A038270.P17563552393069797321

namespace A038270

/-- `A038272(n)²/A038275(n)` -/
def P17563552393069797321.Spec : Prop :=
  ∀ n, P17563552393069797321.a n = (A038270 n : ℚ)

end A038270

/-!
# A038271: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*5^j.

The programs for A038271, the canonical program `A038271.P10808170088373566834` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038271 has offset 0).

The definition of A038271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4498 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038271.P8609375447067470118

`lcm(A013612(n), A027466(n))`
-/

namespace A038271.P8609375447067470118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A027466 n)

end

end A038271.P8609375447067470118

namespace A038271

/-- `lcm(A013612(n), A027466(n))` -/
def P8609375447067470118.Spec : Prop :=
  ∀ n, (P8609375447067470118.a n : ℤ) = A038271 n

end A038271

/-! ## A038271.P17787952551852413338

`7^A025581(n)*A013612(n)`
-/

namespace A038271.P17787952551852413338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A025581 n : ℤ) * (A013612 n : ℚ)

end

end A038271.P17787952551852413338

namespace A038271

/-- `7^A025581(n)*A013612(n)` -/
def P17787952551852413338.Spec : Prop :=
  ∀ n, P17787952551852413338.a n = (A038271 n : ℚ)

end A038271

/-! ## A038271.P10808170088373566834

`A000351(A002262(n))*A027466(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038271

/-- `A000351(A002262(n))*A027466(n)` -/
def P10808170088373566834.Spec : Prop :=
  ∀ n, P10808170088373566834.a n = A038271 n

theorem P10808170088373566834.correct : P10808170088373566834.Spec := by
  intro n
  simp only [A038271]

end A038271

/-! ## A038271.P5973748812059478011

`A013612(n)/A007318(n)*A027466(n)`
-/

namespace A038271.P5973748812059478011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013612 n : ℚ) / (A007318 n : ℚ) * (A027466 n : ℚ)

end

end A038271.P5973748812059478011

namespace A038271

/-- `A013612(n)/A007318(n)*A027466(n)` -/
def P5973748812059478011.Spec : Prop :=
  ∀ n, P5973748812059478011.a n = (A038271 n : ℚ)

end A038271

/-! ## A038271.P17499858094365891222

`A013626(A061579(n))`
-/

namespace A038271.P17499858094365891222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013626 (A061579 n).toNat

end

end A038271.P17499858094365891222

namespace A038271

/-- `A013626(A061579(n))` -/
def P17499858094365891222.Spec : Prop :=
  ∀ n, P17499858094365891222.a n = A038271 n

end A038271

/-! ## A038271.P14878137508326194820

`A013612(n)/A038207(n)*A147716(n)`
-/

namespace A038271.P14878137508326194820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013612 n : ℚ) / (A038207 n : ℚ) * (A147716 n : ℚ)

end

end A038271.P14878137508326194820

namespace A038271

/-- `A013612(n)/A038207(n)*A147716(n)` -/
def P14878137508326194820.Spec : Prop :=
  ∀ n, P14878137508326194820.a n = (A038271 n : ℚ)

end A038271

/-! ## A038271.P5503700819900172567

`A038276(n)/A059268(n)`
-/

namespace A038271.P5503700819900172567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038276 n : ℚ) / (A059268 n : ℚ)

end

end A038271.P5503700819900172567

namespace A038271

/-- `A038276(n)/A059268(n)` -/
def P5503700819900172567.Spec : Prop :=
  ∀ n, P5503700819900172567.a n = (A038271 n : ℚ)

end A038271

/-! ## A038271.P12055193666821813240

`A027466(n)/A059268(n)*A007088(A059268(n))`
-/

namespace A038271.P12055193666821813240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027466 n : ℚ) / (A059268 n : ℚ) * (A007088 (A059268 n).toNat : ℚ)

end

end A038271.P12055193666821813240

namespace A038271

/-- `A027466(n)/A059268(n)*A007088(A059268(n))` -/
def P12055193666821813240.Spec : Prop :=
  ∀ n, P12055193666821813240.a n = (A038271 n : ℚ)

end A038271

/-! ## A038271.P3075216392744962714

`A027466(n)*A116520(A059268(n))`
-/

namespace A038271.P3075216392744962714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 n * A116520 (A059268 n).toNat

end

end A038271.P3075216392744962714

namespace A038271

/-- `A027466(n)*A116520(A059268(n))` -/
def P3075216392744962714.Spec : Prop :=
  ∀ n, P3075216392744962714.a n = A038271 n

end A038271

/-! ## A038271.P3631264202472411236

`A013612(n)*A166661(A130321(n))`
-/

namespace A038271.P3631264202472411236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 n * A166661 (A130321 n).toNat

end

end A038271.P3631264202472411236

namespace A038271

/-- `A013612(n)*A166661(A130321(n))` -/
def P3631264202472411236.Spec : Prop :=
  ∀ n, P3631264202472411236.a n = A038271 n

end A038271

/-!
# A038272: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*6^j.

The programs for A038272, the canonical program `A038272.P15608293931360931004` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038272 has offset 0).

The definition of A038272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038272.P15608293931360931004

`A038269(n)*A059268(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038272

/-- `A038269(n)*A059268(n)` -/
def P15608293931360931004.Spec : Prop :=
  ∀ n, P15608293931360931004.a n = A038272 n

theorem P15608293931360931004.correct : P15608293931360931004.Spec := by
  intro n
  simp only [A038272]

end A038272

/-! ## A038272.P7196235462625783611

`lcm(A013613(n), A027466(n))`
-/

namespace A038272.P7196235462625783611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013613 n) (A027466 n)

end

end A038272.P7196235462625783611

namespace A038272

/-- `lcm(A013613(n), A027466(n))` -/
def P7196235462625783611.Spec : Prop :=
  ∀ n, (P7196235462625783611.a n : ℤ) = A038272 n

end A038272

/-! ## A038272.P7155879887598813018

`lcm(A013609(n), A038269(n))`
-/

namespace A038272.P7155879887598813018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A038269 n)

end

end A038272.P7155879887598813018

namespace A038272

/-- `lcm(A013609(n), A038269(n))` -/
def P7155879887598813018.Spec : Prop :=
  ∀ n, (P7155879887598813018.a n : ℤ) = A038272 n

end A038272

/-! ## A038272.P12693781414023154892

`lcm(A013610(n), A038268(n))`
-/

namespace A038272.P12693781414023154892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038268 n)

end

end A038272.P12693781414023154892

namespace A038272

/-- `lcm(A013610(n), A038268(n))` -/
def P12693781414023154892.Spec : Prop :=
  ∀ n, (P12693781414023154892.a n : ℤ) = A038272 n

end A038272

/-! ## A038272.P11930478776263171006

`A000400(A002262(n))*A027466(n)`
-/

namespace A038272.P11930478776263171006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A002262 n).toNat * A027466 n

end

end A038272.P11930478776263171006

namespace A038272

/-- `A000400(A002262(n))*A027466(n)` -/
def P11930478776263171006.Spec : Prop :=
  ∀ n, P11930478776263171006.a n = A038272 n

end A038272

/-! ## A038272.P3389455846730327232

`A013627(A061579(n))`
-/

namespace A038272.P3389455846730327232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013627 (A061579 n).toNat

end

end A038272.P3389455846730327232

namespace A038272

/-- `A013627(A061579(n))` -/
def P3389455846730327232.Spec : Prop :=
  ∀ n, P3389455846730327232.a n = A038272 n

end A038272

/-! ## A038272.P1423366376423381272

`A038278(n)/A059268(n)`
-/

namespace A038272.P1423366376423381272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038278 n : ℚ) / (A059268 n : ℚ)

end

end A038272.P1423366376423381272

namespace A038272

/-- `A038278(n)/A059268(n)` -/
def P1423366376423381272.Spec : Prop :=
  ∀ n, P1423366376423381272.a n = (A038272 n : ℚ)

end A038272

/-! ## A038272.P15019919168829757646

`gcd(A038278(n)²/A038274(n), A038278(n))`
-/

namespace A038272.P15019919168829757646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038278 n ^ 2 : ℚ) / (A038274 n : ℚ))) (A038278 n)

end

end A038272.P15019919168829757646

namespace A038272

/-- `gcd(A038278(n)²/A038274(n), A038278(n))` -/
def P15019919168829757646.Spec : Prop :=
  ∀ n, (P15019919168829757646.a n : ℤ) = A038272 n

end A038272

/-!
# A038273: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*7^j.

The programs for A038273, the canonical program `A038273.P1374558419179822602` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038273 has offset 0).

The definition of A038273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038273.P6826427943499954699

`7^A003056(n)*A007318(n)`
-/

namespace A038273.P6826427943499954699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A003056 n : ℤ) * (A007318 n : ℚ)

end

end A038273.P6826427943499954699

namespace A038273

/-- `7^A003056(n)*A007318(n)` -/
def P6826427943499954699.Spec : Prop :=
  ∀ n, P6826427943499954699.a n = (A038273 n : ℚ)

end A038273

/-! ## A038273.P3671710515460165021

`7^A002262(n)*A027466(n)`
-/

namespace A038273.P3671710515460165021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A002262 n : ℤ) * (A027466 n : ℚ)

end

end A038273.P3671710515460165021

namespace A038273

/-- `7^A002262(n)*A027466(n)` -/
def P3671710515460165021.Spec : Prop :=
  ∀ n, P3671710515460165021.a n = (A038273 n : ℚ)

end A038273

/-! ## A038273.P1374558419179822602

`A000420(A003056(n))*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A038273

/-- `A000420(A003056(n))*A007318(n)` -/
def P1374558419179822602.Spec : Prop :=
  ∀ n, P1374558419179822602.a n = A038273 n

theorem P1374558419179822602.correct : P1374558419179822602.Spec := by
  intro n
  simp only [A038273]

end A038273

/-! ## A038273.P17682539301457897360

`A000420(A002262(n))*A027466(n)`
-/

namespace A038273.P17682539301457897360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A002262 n).toNat * A027466 n

end

end A038273.P17682539301457897360

namespace A038273

/-- `A000420(A002262(n))*A027466(n)` -/
def P17682539301457897360.Spec : Prop :=
  ∀ n, P17682539301457897360.a n = A038273 n

end A038273

/-! ## A038273.P15829622078141931652

`A007318(n)*A027466(A057944(n))`
-/

namespace A038273.P15829622078141931652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A027466 (A057944 n).toNat

end

end A038273.P15829622078141931652

namespace A038273

/-- `A007318(n)*A027466(A057944(n))` -/
def P15829622078141931652.Spec : Prop :=
  ∀ n, P15829622078141931652.a n = A038273 n

end A038273

/-! ## A038273.P6597003498703984938

`A027466(n)*A027466(A112367(n))`
-/

namespace A038273.P6597003498703984938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 n * A027466 (A112367 n).toNat

end

end A038273.P6597003498703984938

namespace A038273

/-- `A027466(n)*A027466(A112367(n))` -/
def P6597003498703984938.Spec : Prop :=
  ∀ n, P6597003498703984938.a n = A038273 n

end A038273

/-! ## A038273.P2637007099281022242

`abs(A000420(A003056(n))*A108086(n))`
-/

namespace A038273.P2637007099281022242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 (A003056 n).toNat * A108086 n|

end

end A038273.P2637007099281022242

namespace A038273

/-- `abs(A000420(A003056(n))*A108086(n))` -/
def P2637007099281022242.Spec : Prop :=
  ∀ n, P2637007099281022242.a n = A038273 n

end A038273

/-! ## A038273.P8676277735933179898

`A000420(n-A057944(n))*A027466(n)`
-/

namespace A038273.P8676277735933179898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 ((n : ℤ) - A057944 n).toNat * A027466 n

end

end A038273.P8676277735933179898

namespace A038273

/-- `A000420(n-A057944(n))*A027466(n)` -/
def P8676277735933179898.Spec : Prop :=
  ∀ n, P8676277735933179898.a n = A038273 n

end A038273

/-! ## A038273.P12372918361353008811

`A027466(n)*A165828(A059268(n))`
-/

namespace A038273.P12372918361353008811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 n * A165828 (A059268 n).toNat

end

end A038273.P12372918361353008811

namespace A038273

/-- `A027466(n)*A165828(A059268(n))` -/
def P12372918361353008811.Spec : Prop :=
  ∀ n, P12372918361353008811.a n = A038273 n

end A038273

/-! ## A038273.P13301202250362931499

`A000420(n)/A000420(A057944(n))*A027466(n)`
-/

namespace A038273.P13301202250362931499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n : ℚ) / (A000420 (A057944 n).toNat : ℚ) * (A027466 n : ℚ)

end

end A038273.P13301202250362931499

namespace A038273

/-- `A000420(n)/A000420(A057944(n))*A027466(n)` -/
def P13301202250362931499.Spec : Prop :=
  ∀ n, P13301202250362931499.a n = (A038273 n : ℚ)

end A038273

/-! ## A038273.P10488429646875409411

`A007318(n)*A165828(A137688(n))`
-/

namespace A038273.P10488429646875409411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A165828 (A137688 n).toNat

end

end A038273.P10488429646875409411

namespace A038273

/-- `A007318(n)*A165828(A137688(n))` -/
def P10488429646875409411.Spec : Prop :=
  ∀ n, P10488429646875409411.a n = A038273 n

end A038273

/-!
# A038274: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*8^j.

The programs for A038274, the canonical program `A038274.P8051667154738012092` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038274 has offset 0).

The definition of A038274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3785 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038274.P8051667154738012092

`A038270(n)*A059268(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A038274

/-- `A038270(n)*A059268(n)` -/
def P8051667154738012092.Spec : Prop :=
  ∀ n, P8051667154738012092.a n = A038274 n

theorem P8051667154738012092.correct : P8051667154738012092.Spec := by
  intro n
  simp only [A038274]

end A038274

/-! ## A038274.P3322214768017287318

`lcm(A013615(n), A027466(n))`
-/

namespace A038274.P3322214768017287318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013615 n) (A027466 n)

end

end A038274.P3322214768017287318

namespace A038274

/-- `lcm(A013615(n), A027466(n))` -/
def P3322214768017287318.Spec : Prop :=
  ∀ n, (P3322214768017287318.a n : ℤ) = A038274 n

end A038274

/-! ## A038274.P15439790857347628978

`A059268(n)²*A038268(n)`
-/

namespace A038274.P15439790857347628978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038268 n

end

end A038274.P15439790857347628978

namespace A038274

/-- `A059268(n)²*A038268(n)` -/
def P15439790857347628978.Spec : Prop :=
  ∀ n, P15439790857347628978.a n = A038274 n

end A038274

/-! ## A038274.P12767635350346493731

`A038270(n)/A038268(n)*A038270(n)`
-/

namespace A038274.P12767635350346493731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038270 n : ℚ) / (A038268 n : ℚ) * (A038270 n : ℚ)

end

end A038274.P12767635350346493731

namespace A038274

/-- `A038270(n)/A038268(n)*A038270(n)` -/
def P12767635350346493731.Spec : Prop :=
  ∀ n, P12767635350346493731.a n = (A038274 n : ℚ)

end A038274

/-! ## A038274.P1328794438536779829

`A027466(n)*A059268(n)*A059268(n)²`
-/

namespace A038274.P1328794438536779829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 n * A059268 n * A059268 n ^ 2

end

end A038274.P1328794438536779829

namespace A038274

/-- `A027466(n)*A059268(n)*A059268(n)²` -/
def P1328794438536779829.Spec : Prop :=
  ∀ n, P1328794438536779829.a n = A038274 n

end A038274

/-! ## A038274.P9188243578614844260

`(A038268(n)/A027466(n))²*A038268(n)`
-/

namespace A038274.P9188243578614844260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038268 n : ℚ) / (A027466 n : ℚ)) ^ 2 * (A038268 n : ℚ)

end

end A038274.P9188243578614844260

namespace A038274

/-- `(A038268(n)/A027466(n))²*A038268(n)` -/
def P9188243578614844260.Spec : Prop :=
  ∀ n, P9188243578614844260.a n = (A038274 n : ℚ)

end A038274

/-! ## A038274.P7122863409940514610

`A036565(A061579(n))*A038231(A061579(n))`
-/

namespace A038274.P7122863409940514610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036565 (A061579 n).toNat * A038231 (A061579 n).toNat

end

end A038274.P7122863409940514610

namespace A038274

/-- `A036565(A061579(n))*A038231(A061579(n))` -/
def P7122863409940514610.Spec : Prop :=
  ∀ n, P7122863409940514610.a n = A038274 n

end A038274

/-! ## A038274.P4285322550943954628

`A038285(A061579(n))`
-/

namespace A038274.P4285322550943954628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038285 (A061579 n).toNat

end

end A038274.P4285322550943954628

namespace A038274

/-- `A038285(A061579(n))` -/
def P4285322550943954628.Spec : Prop :=
  ∀ n, P4285322550943954628.a n = A038274 n

end A038274

/-! ## A038274.P2240405857005679283

`A038270(n)²/A038268(n)`
-/

namespace A038274.P2240405857005679283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038270 n ^ 2 : ℚ) / (A038268 n : ℚ)

end

end A038274.P2240405857005679283

namespace A038274

/-- `A038270(n)²/A038268(n)` -/
def P2240405857005679283.Spec : Prop :=
  ∀ n, P2240405857005679283.a n = (A038274 n : ℚ)

end A038274

/-! ## A038274.P12725090609697937524

`A038270(n)²/gcd(A038270(n), A038272(n))`
-/

namespace A038274.P12725090609697937524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038270 n ^ 2 : ℚ) / (Int.gcd (A038270 n) (A038272 n) : ℚ)

end

end A038274.P12725090609697937524

namespace A038274

/-- `A038270(n)²/gcd(A038270(n), A038272(n))` -/
def P12725090609697937524.Spec : Prop :=
  ∀ n, P12725090609697937524.a n = (A038274 n : ℚ)

end A038274

/-!
# A038275: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*9^j.

The programs for A038275, the canonical program `A038275.P16286396353460600798` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038275 has offset 0).

The definition of A038275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3615 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038275.P16286396353460600798

`lcm(A013616(n), A027466(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038275

/-- `lcm(A013616(n), A027466(n))` -/
def P16286396353460600798.Spec : Prop :=
  ∀ n, (P16286396353460600798.a n : ℤ) = A038275 n

theorem P16286396353460600798.correct : P16286396353460600798.Spec := by
  intro n
  simp only [A038275]

end A038275

/-! ## A038275.P14425948187815574526

`A000244(A002262(n))²*A027466(n)`
-/

namespace A038275.P14425948187815574526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat ^ 2 * A027466 n

end

end A038275.P14425948187815574526

namespace A038275

/-- `A000244(A002262(n))²*A027466(n)` -/
def P14425948187815574526.Spec : Prop :=
  ∀ n, P14425948187815574526.a n = A038275 n

end A038275

/-! ## A038275.P11815669297730291988

`A000244(2*A002262(n))*A027466(n)`
-/

namespace A038275.P11815669297730291988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * A002262 n).toNat * A027466 n

end

end A038275.P11815669297730291988

namespace A038275

/-- `A000244(2*A002262(n))*A027466(n)` -/
def P11815669297730291988.Spec : Prop :=
  ∀ n, P11815669297730291988.a n = A038275 n

end A038275

/-! ## A038275.P17997940081900873508

`A038269(n)/A027466(n)*A038269(n)`
-/

namespace A038275.P17997940081900873508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038269 n : ℚ) / (A027466 n : ℚ) * (A038269 n : ℚ)

end

end A038275.P17997940081900873508

namespace A038275

/-- `A038269(n)/A027466(n)*A038269(n)` -/
def P17997940081900873508.Spec : Prop :=
  ∀ n, P17997940081900873508.a n = (A038275 n : ℚ)

end A038275

/-! ## A038275.P16660294368487502980

`A038272(n)/A038270(n)*A038272(n)`
-/

namespace A038275.P16660294368487502980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038272 n : ℚ) / (A038270 n : ℚ) * (A038272 n : ℚ)

end

end A038275.P16660294368487502980

namespace A038275

/-- `A038272(n)/A038270(n)*A038272(n)` -/
def P16660294368487502980.Spec : Prop :=
  ∀ n, P16660294368487502980.a n = (A038275 n : ℚ)

end A038275

/-! ## A038275.P16303948567962041637

`(A013613(n)/A013609(n))²*A027466(n)`
-/

namespace A038275.P16303948567962041637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013613 n : ℚ) / (A013609 n : ℚ)) ^ 2 * (A027466 n : ℚ)

end

end A038275.P16303948567962041637

namespace A038275

/-- `(A013613(n)/A013609(n))²*A027466(n)` -/
def P16303948567962041637.Spec : Prop :=
  ∀ n, P16303948567962041637.a n = (A038275 n : ℚ)

end A038275

/-! ## A038275.P15391791307925778832

`A038297(A061579(n))`
-/

namespace A038275.P15391791307925778832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038297 (A061579 n).toNat

end

end A038275.P15391791307925778832

namespace A038275

/-- `A038297(A061579(n))` -/
def P15391791307925778832.Spec : Prop :=
  ∀ n, P15391791307925778832.a n = A038275 n

end A038275

/-! ## A038275.P5851387227353796308

`A038269(n)²/A027466(n)`
-/

namespace A038275.P5851387227353796308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038269 n ^ 2 : ℚ) / (A027466 n : ℚ)

end

end A038275.P5851387227353796308

namespace A038275

/-- `A038269(n)²/A027466(n)` -/
def P5851387227353796308.Spec : Prop :=
  ∀ n, P5851387227353796308.a n = (A038275 n : ℚ)

end A038275

/-! ## A038275.P7515052430640083938

`A038269(n)²/gcd(A038268(n), A038269(n))`
-/

namespace A038275.P7515052430640083938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038269 n ^ 2 : ℚ) / (Int.gcd (A038268 n) (A038269 n) : ℚ)

end

end A038275.P7515052430640083938

namespace A038275

/-- `A038269(n)²/gcd(A038268(n), A038269(n))` -/
def P7515052430640083938.Spec : Prop :=
  ∀ n, P7515052430640083938.a n = (A038275 n : ℚ)

end A038275

/-! ## A038275.P6511416947555962217

`A038272(n)²/A038270(n)`
-/

namespace A038275.P6511416947555962217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038272 n ^ 2 : ℚ) / (A038270 n : ℚ)

end

end A038275.P6511416947555962217

namespace A038275

/-- `A038272(n)²/A038270(n)` -/
def P6511416947555962217.Spec : Prop :=
  ∀ n, P6511416947555962217.a n = (A038275 n : ℚ)

end A038275

/-!
# A038276: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*10^j.

The programs for A038276, the canonical program `A038276.P15142727663705026605` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038276 has offset 0).

The definition of A038276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3525 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038276.P15142727663705026605

`A038271(n)*A059268(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038276

/-- `A038271(n)*A059268(n)` -/
def P15142727663705026605.Spec : Prop :=
  ∀ n, P15142727663705026605.a n = A038276 n

theorem P15142727663705026605.correct : P15142727663705026605.Spec := by
  intro n
  simp only [A038276]

end A038276

/-! ## A038276.P8111059168286553556

`lcm(A013617(n), A027466(n))`
-/

namespace A038276.P8111059168286553556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013617 n) (A027466 n)

end

end A038276.P8111059168286553556

namespace A038276

/-- `lcm(A013617(n), A027466(n))` -/
def P8111059168286553556.Spec : Prop :=
  ∀ n, (P8111059168286553556.a n : ℤ) = A038276 n

end A038276

/-! ## A038276.P18394896482527809683

`lcm(A013609(n), A038271(n))`
-/

namespace A038276.P18394896482527809683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A038271 n)

end

end A038276.P18394896482527809683

namespace A038276

/-- `lcm(A013609(n), A038271(n))` -/
def P18394896482527809683.Spec : Prop :=
  ∀ n, (P18394896482527809683.a n : ℤ) = A038276 n

end A038276

/-! ## A038276.P11877043461602010389

`lcm(A013612(n), A038268(n))`
-/

namespace A038276.P11877043461602010389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038268 n)

end

end A038276.P11877043461602010389

namespace A038276

/-- `lcm(A013612(n), A038268(n))` -/
def P11877043461602010389.Spec : Prop :=
  ∀ n, (P11877043461602010389.a n : ℤ) = A038276 n

end A038276

/-! ## A038276.P8677548013792830854

`A038309(A061579(n))`
-/

namespace A038276.P8677548013792830854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038309 (A061579 n).toNat

end

end A038276.P8677548013792830854

namespace A038276

/-- `A038309(A061579(n))` -/
def P8677548013792830854.Spec : Prop :=
  ∀ n, P8677548013792830854.a n = A038276 n

end A038276

/-! ## A038276.P3006644785038055821

`A007088(A059268(n))*A027466(n)`
-/

namespace A038276.P3006644785038055821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A059268 n).toNat * A027466 n

end

end A038276.P3006644785038055821

namespace A038276

/-- `A007088(A059268(n))*A027466(n)` -/
def P3006644785038055821.Spec : Prop :=
  ∀ n, P3006644785038055821.a n = A038276 n

end A038276

/-! ## A038276.P7711679566498776935

`A007318(n)*A166661(A036561(n))`
-/

namespace A038276.P7711679566498776935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A166661 (A036561 n).toNat

end

end A038276.P7711679566498776935

namespace A038276

/-- `A007318(n)*A166661(A036561(n))` -/
def P7711679566498776935.Spec : Prop :=
  ∀ n, P7711679566498776935.a n = A038276 n

end A038276

/-!
# A038277: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*11^j.

The programs for A038277, the canonical program `A038277.P4730209142109428037` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038277 has offset 0).

The definition of A038277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3363 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038277.P4730209142109428037

`lcm(A013618(n), A027466(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038277

/-- `lcm(A013618(n), A027466(n))` -/
def P4730209142109428037.Spec : Prop :=
  ∀ n, (P4730209142109428037.a n : ℤ) = A038277 n

theorem P4730209142109428037.correct : P4730209142109428037.Spec := by
  intro n
  simp only [A038277]

end A038277

/-! ## A038277.P17413695774688415986

`A001020(A002262(n))*A027466(n)`
-/

namespace A038277.P17413695774688415986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat * A027466 n

end

end A038277.P17413695774688415986

namespace A038277

/-- `A001020(A002262(n))*A027466(n)` -/
def P17413695774688415986.Spec : Prop :=
  ∀ n, P17413695774688415986.a n = A038277 n

end A038277

/-! ## A038277.P16858642781501629756

`A000420(A025581(n))*A013618(n)`
-/

namespace A038277.P16858642781501629756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A025581 n).toNat * A013618 n

end

end A038277.P16858642781501629756

namespace A038277

/-- `A000420(A025581(n))*A013618(n)` -/
def P16858642781501629756.Spec : Prop :=
  ∀ n, P16858642781501629756.a n = A038277 n

end A038277

/-! ## A038277.P14809186811073585969

`A038321(A061579(n))`
-/

namespace A038277.P14809186811073585969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038321 (A061579 n).toNat

end

end A038277.P14809186811073585969

namespace A038277

/-- `A038321(A061579(n))` -/
def P14809186811073585969.Spec : Prop :=
  ∀ n, P14809186811073585969.a n = A038277 n

end A038277

/-! ## A038277.P3101749441228039257

`A038321(A114327(n)+n)`
-/

namespace A038277.P3101749441228039257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038321 (A114327 n + (n : ℤ)).toNat

end

end A038277.P3101749441228039257

namespace A038277

/-- `A038321(A114327(n)+n)` -/
def P3101749441228039257.Spec : Prop :=
  ∀ n, P3101749441228039257.a n = A038277 n

end A038277

/-! ## A038277.P12375731456846705492

`A027466(n)/A038315(n)*A038325(n)`
-/

namespace A038277.P12375731456846705492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027466 n : ℚ) / (A038315 n : ℚ) * (A038325 n : ℚ)

end

end A038277.P12375731456846705492

namespace A038277

/-- `A027466(n)/A038315(n)*A038325(n)` -/
def P12375731456846705492.Spec : Prop :=
  ∀ n, P12375731456846705492.a n = (A038277 n : ℚ)

end A038277

/-! ## A038277.P3599494063555913060

`A027466(n)*A218018(A112367(n))`
-/

namespace A038277.P3599494063555913060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 n * A218018 (A112367 n).toNat

end

end A038277.P3599494063555913060

namespace A038277

/-- `A027466(n)*A218018(A112367(n))` -/
def P3599494063555913060.Spec : Prop :=
  ∀ n, P3599494063555913060.a n = A038277 n

end A038277

/-! ## A038277.P2260681870816574006

`A027466(n)*A166663(A059268(n))`
-/

namespace A038277.P2260681870816574006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 n * A166663 (A059268 n).toNat

end

end A038277.P2260681870816574006

namespace A038277

/-- `A027466(n)*A166663(A059268(n))` -/
def P2260681870816574006.Spec : Prop :=
  ∀ n, P2260681870816574006.a n = A038277 n

end A038277

/-!
# A038278: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*12^j.

The programs for A038278, the canonical program `A038278.P9937745698125142218` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038278 has offset 0).

The definition of A038278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038278.P9937745698125142218

`A038272(n)*A059268(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A038278

/-- `A038272(n)*A059268(n)` -/
def P9937745698125142218.Spec : Prop :=
  ∀ n, P9937745698125142218.a n = A038278 n

theorem P9937745698125142218.correct : P9937745698125142218.Spec := by
  intro n
  simp only [A038278]

end A038278

/-! ## A038278.P8915306920400824749

`lcm(A013619(n), A027466(n))`
-/

namespace A038278.P8915306920400824749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013619 n) (A027466 n)

end

end A038278.P8915306920400824749

namespace A038278

/-- `lcm(A013619(n), A027466(n))` -/
def P8915306920400824749.Spec : Prop :=
  ∀ n, (P8915306920400824749.a n : ℤ) = A038278 n

end A038278

/-! ## A038278.P18226783708155429775

`lcm(A013610(n), A038270(n))`
-/

namespace A038278.P18226783708155429775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038270 n)

end

end A038278.P18226783708155429775

namespace A038278

/-- `lcm(A013610(n), A038270(n))` -/
def P18226783708155429775.Spec : Prop :=
  ∀ n, (P18226783708155429775.a n : ℤ) = A038278 n

end A038278

/-! ## A038278.P12746931665224307195

`lcm(A013611(n), A038269(n))`
-/

namespace A038278.P12746931665224307195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013611 n) (A038269 n)

end

end A038278.P12746931665224307195

namespace A038278

/-- `lcm(A013611(n), A038269(n))` -/
def P12746931665224307195.Spec : Prop :=
  ∀ n, (P12746931665224307195.a n : ℤ) = A038278 n

end A038278

/-! ## A038278.P11331938862134971035

`A059268(n)²*A038269(n)`
-/

namespace A038278.P11331938862134971035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038269 n

end

end A038278.P11331938862134971035

namespace A038278

/-- `A059268(n)²*A038269(n)` -/
def P11331938862134971035.Spec : Prop :=
  ∀ n, P11331938862134971035.a n = A038278 n

end A038278

/-! ## A038278.P17387953868194511986

`A038272(n)/A038269(n)*A038272(n)`
-/

namespace A038278.P17387953868194511986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038272 n : ℚ) / (A038269 n : ℚ) * (A038272 n : ℚ)

end

end A038278.P17387953868194511986

namespace A038278

/-- `A038272(n)/A038269(n)*A038272(n)` -/
def P17387953868194511986.Spec : Prop :=
  ∀ n, P17387953868194511986.a n = (A038278 n : ℚ)

end A038278

/-! ## A038278.P14116696068512806768

`A038333(A061579(n))`
-/

namespace A038278.P14116696068512806768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038333 (A061579 n).toNat

end

end A038278.P14116696068512806768

namespace A038278

/-- `A038333(A061579(n))` -/
def P14116696068512806768.Spec : Prop :=
  ∀ n, P14116696068512806768.a n = A038278 n

end A038278

/-! ## A038278.P14435062741236338550

`A038272(n)²/A038269(n)`
-/

namespace A038278.P14435062741236338550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038272 n ^ 2 : ℚ) / (A038269 n : ℚ)

end

end A038278.P14435062741236338550

namespace A038278

/-- `A038272(n)²/A038269(n)` -/
def P14435062741236338550.Spec : Prop :=
  ∀ n, P14435062741236338550.a n = (A038278 n : ℚ)

end A038278

/-! ## A038278.P17877324307604696947

`A038272(n)²/gcd(A038272(n), A038275(n))`
-/

namespace A038278.P17877324307604696947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038272 n ^ 2 : ℚ) / (Int.gcd (A038272 n) (A038275 n) : ℚ)

end

end A038278.P17877324307604696947

namespace A038278

/-- `A038272(n)²/gcd(A038272(n), A038275(n))` -/
def P17877324307604696947.Spec : Prop :=
  ∀ n, P17877324307604696947.a n = (A038278 n : ℚ)

end A038278

/-!
# A038279: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*1^j.

The programs for A038279, the canonical program `A038279.P10513893213796960196` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038279 has offset 0).

The definition of A038279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5680 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038279.P10513893213796960196

`A038231(n)*A130321(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038279

/-- `A038231(n)*A130321(n)` -/
def P10513893213796960196.Spec : Prop :=
  ∀ n, P10513893213796960196.a n = A038279 n

theorem P10513893213796960196.correct : P10513893213796960196.Spec := by
  intro n
  simp only [A038279]

end A038279

/-! ## A038279.P17405286515346095643

`A038207(n)*A262616(n)`
-/

namespace A038279.P17405286515346095643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A262616 n

end

end A038279.P17405286515346095643

namespace A038279

/-- `A038207(n)*A262616(n)` -/
def P17405286515346095643.Spec : Prop :=
  ∀ n, P17405286515346095643.a n = A038279 n

end A038279

/-! ## A038279.P9701358863417053242

`A130321(n)²*A038207(n)`
-/

namespace A038279.P9701358863417053242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038207 n

end

end A038279.P9701358863417053242

namespace A038279

/-- `A130321(n)²*A038207(n)` -/
def P9701358863417053242.Spec : Prop :=
  ∀ n, P9701358863417053242.a n = A038279 n

end A038279

/-! ## A038279.P12133276669232150658

`A009545(A099375(n))²*A038207(n)`
-/

namespace A038279.P12133276669232150658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (A099375 n).toNat ^ 2 * A038207 n

end

end A038279.P12133276669232150658

namespace A038279

/-- `A009545(A099375(n))²*A038207(n)` -/
def P12133276669232150658.Spec : Prop :=
  ∀ n, P12133276669232150658.a n = A038279 n

end A038279

/-! ## A038279.P6720031793466507849

`A007318(n)*A130321(n)*A262616(n)`
-/

namespace A038279.P6720031793466507849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A130321 n * A262616 n

end

end A038279.P6720031793466507849

namespace A038279

/-- `A007318(n)*A130321(n)*A262616(n)` -/
def P6720031793466507849.Spec : Prop :=
  ∀ n, P6720031793466507849.a n = A038279 n

end A038279

/-! ## A038279.P5619944838114970330

`A038207(n)/A007318(n)*A038231(n)`
-/

namespace A038279.P5619944838114970330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A007318 n : ℚ) * (A038231 n : ℚ)

end

end A038279.P5619944838114970330

namespace A038279

/-- `A038207(n)/A007318(n)*A038231(n)` -/
def P5619944838114970330.Spec : Prop :=
  ∀ n, P5619944838114970330.a n = (A038279 n : ℚ)

end A038279

/-! ## A038279.P9531960807141450674

`A038231(n)/A027465(n)*A038255(n)`
-/

namespace A038279.P9531960807141450674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038231 n : ℚ) / (A027465 n : ℚ) * (A038255 n : ℚ)

end

end A038279.P9531960807141450674

namespace A038279

/-- `A038231(n)/A027465(n)*A038255(n)` -/
def P9531960807141450674.Spec : Prop :=
  ∀ n, P9531960807141450674.a n = (A038279 n : ℚ)

end A038279

/-! ## A038279.P6741669766459791793

`(A038255(n)/A027465(n))²*A038207(n)`
-/

namespace A038279.P6741669766459791793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038255 n : ℚ) / (A027465 n : ℚ)) ^ 2 * (A038207 n : ℚ)

end

end A038279.P6741669766459791793

namespace A038279

/-- `(A038255(n)/A027465(n))²*A038207(n)` -/
def P6741669766459791793.Spec : Prop :=
  ∀ n, P6741669766459791793.a n = (A038279 n : ℚ)

end A038279

/-! ## A038279.P484360885052538810

`A038207(n)²/A013609(n)*A137688(n)`
-/

namespace A038279.P484360885052538810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n ^ 2 : ℚ) / (A013609 n : ℚ) * (A137688 n : ℚ)

end

end A038279.P484360885052538810

namespace A038279

/-- `A038207(n)²/A013609(n)*A137688(n)` -/
def P484360885052538810.Spec : Prop :=
  ∀ n, P484360885052538810.a n = (A038279 n : ℚ)

end A038279

/-! ## A038279.P1504721965898626224

`(A038207(n)/A130595(n))²*A038207(n)`
-/

namespace A038279.P1504721965898626224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038207 n : ℚ) / (A130595 n : ℚ)) ^ 2 * (A038207 n : ℚ)

end

end A038279.P1504721965898626224

namespace A038279

/-- `(A038207(n)/A130595(n))²*A038207(n)` -/
def P1504721965898626224.Spec : Prop :=
  ∀ n, P1504721965898626224.a n = (A038279 n : ℚ)

end A038279

/-! ## A038279.P17686537677603361535

`A065109(n)²/A013609(n)*A137688(n)`
-/

namespace A038279.P17686537677603361535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065109 n ^ 2 : ℚ) / (A013609 n : ℚ) * (A137688 n : ℚ)

end

end A038279.P17686537677603361535

namespace A038279

/-- `A065109(n)²/A013609(n)*A137688(n)` -/
def P17686537677603361535.Spec : Prop :=
  ∀ n, P17686537677603361535.a n = (A038279 n : ℚ)

end A038279

/-! ## A038279.P3986156389912477959

`gcd(A038207(n), A131817(n))²*A038207(n)`
-/

namespace A038279.P3986156389912477959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A038207 n) (A131817 n) ^ 2 : ℤ) * A038207 n

end

end A038279.P3986156389912477959

namespace A038279

/-- `gcd(A038207(n), A131817(n))²*A038207(n)` -/
def P3986156389912477959.Spec : Prop :=
  ∀ n, P3986156389912477959.a n = A038279 n

end A038279

/-! ## A038279.P11808169542708276453

`A013615(A061579(n))`
-/

namespace A038279.P11808169542708276453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 (A061579 n).toNat

end

end A038279.P11808169542708276453

namespace A038279

/-- `A013615(A061579(n))` -/
def P11808169542708276453.Spec : Prop :=
  ∀ n, P11808169542708276453.a n = A038279 n

end A038279

/-! ## A038279.P4169159177739777498

`A013615(A038722(n+1)-1)`
-/

namespace A038279.P4169159177739777498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 (A038722 (n + 1) - 1).toNat

end

end A038279.P4169159177739777498

namespace A038279

/-- `A013615(A038722(n+1)-1)` -/
def P4169159177739777498.Spec : Prop :=
  ∀ n, P4169159177739777498.a n = A038279 n

end A038279

/-! ## A038279.P9624823615529491366

`A013615(A038722(n+2))`
-/

namespace A038279.P9624823615529491366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 (A038722 (n + 2)).toNat

end

end A038279.P9624823615529491366

namespace A038279

/-- `A013615(A038722(n+2))` -/
def P9624823615529491366.Spec : Prop :=
  ∀ n, P9624823615529491366.a n = A038279 n

end A038279

/-! ## A038279.P16364341754004229454

`A038280(n)/A059268(n)`
-/

namespace A038279.P16364341754004229454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038280 n : ℚ) / (A059268 n : ℚ)

end

end A038279.P16364341754004229454

namespace A038279

/-- `A038280(n)/A059268(n)` -/
def P16364341754004229454.Spec : Prop :=
  ∀ n, P16364341754004229454.a n = (A038279 n : ℚ)

end A038279

/-! ## A038279.P283904638602832847

`gcd(A038280(n), A038281(n))`
-/

namespace A038279.P283904638602832847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038280 n) (A038281 n)

end

end A038279.P283904638602832847

namespace A038279

/-- `gcd(A038280(n), A038281(n))` -/
def P283904638602832847.Spec : Prop :=
  ∀ n, (P283904638602832847.a n : ℤ) = A038279 n

end A038279

/-! ## A038279.P14609196421317253210

`A038281(n)/A000244(A002262(n))`
-/

namespace A038279.P14609196421317253210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038281 n : ℚ) / (A000244 (A002262 n).toNat : ℚ)

end

end A038279.P14609196421317253210

namespace A038279

/-- `A038281(n)/A000244(A002262(n))` -/
def P14609196421317253210.Spec : Prop :=
  ∀ n, P14609196421317253210.a n = (A038279 n : ℚ)

end A038279

/-! ## A038279.P2652325697313401841

`A038282(n)/A059268(n)²`
-/

namespace A038279.P2652325697313401841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038282 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038279.P2652325697313401841

namespace A038279

/-- `A038282(n)/A059268(n)²` -/
def P2652325697313401841.Spec : Prop :=
  ∀ n, P2652325697313401841.a n = (A038279 n : ℚ)

end A038279

/-! ## A038279.P2790555933510141724

`A038280(n)/A038282(n)*A038280(n)`
-/

namespace A038279.P2790555933510141724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038280 n : ℚ) / (A038282 n : ℚ) * (A038280 n : ℚ)

end

end A038279.P2790555933510141724

namespace A038279

/-- `A038280(n)/A038282(n)*A038280(n)` -/
def P2790555933510141724.Spec : Prop :=
  ∀ n, P2790555933510141724.a n = (A038279 n : ℚ)

end A038279

/-!
# A038280: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*2^j.

The programs for A038280, the canonical program `A038280.P13941131333894266772` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038280 has offset 0).

The definition of A038280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038280.P13941131333894266772

`A038279(n)*A059268(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038280

/-- `A038279(n)*A059268(n)` -/
def P13941131333894266772.Spec : Prop :=
  ∀ n, P13941131333894266772.a n = A038280 n

theorem P13941131333894266772.correct : P13941131333894266772.Spec := by
  intro n
  simp only [A038280]

end A038280

/-! ## A038280.P630840287505754895

`A038232(n)*A130321(n)`
-/

namespace A038280.P630840287505754895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 n * A130321 n

end

end A038280.P630840287505754895

namespace A038280

/-- `A038232(n)*A130321(n)` -/
def P630840287505754895.Spec : Prop :=
  ∀ n, P630840287505754895.a n = A038280 n

end A038280

/-! ## A038280.P2979452541527953011

`A038231(n)*A137688(n)`
-/

namespace A038280.P2979452541527953011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A137688 n

end

end A038280.P2979452541527953011

namespace A038280

/-- `A038231(n)*A137688(n)` -/
def P2979452541527953011.Spec : Prop :=
  ∀ n, P2979452541527953011.a n = A038280 n

end A038280

/-! ## A038280.P13611840156526023739

`A038208(n)*A262616(n)`
-/

namespace A038280.P13611840156526023739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n * A262616 n

end

end A038280.P13611840156526023739

namespace A038280

/-- `A038208(n)*A262616(n)` -/
def P13611840156526023739.Spec : Prop :=
  ∀ n, P13611840156526023739.a n = A038280 n

end A038280

/-! ## A038280.P9153975535646232188

`A130321(n)²*A038208(n)`
-/

namespace A038280.P9153975535646232188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038208 n

end

end A038280.P9153975535646232188

namespace A038280

/-- `A130321(n)²*A038208(n)` -/
def P9153975535646232188.Spec : Prop :=
  ∀ n, P9153975535646232188.a n = A038280 n

end A038280

/-! ## A038280.P8321372058983299997

`Δ[A007664(n)]*A038231(n)`
-/

namespace A038280.P8321372058983299997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038231 n

end

end A038280.P8321372058983299997

namespace A038280

/-- `Δ[A007664(n)]*A038231(n)` -/
def P8321372058983299997.Spec : Prop :=
  ∀ n, P8321372058983299997.a n = A038280 n

end A038280

/-! ## A038280.P17578888907906751155

`2^A002262(n)*A038279(n)`
-/

namespace A038280.P17578888907906751155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A038279 n : ℚ)

end

end A038280.P17578888907906751155

namespace A038280

/-- `2^A002262(n)*A038279(n)` -/
def P17578888907906751155.Spec : Prop :=
  ∀ n, P17578888907906751155.a n = (A038280 n : ℚ)

end A038280

/-! ## A038280.P16176712023658276194

`A130321(n)^3*A013609(n)`
-/

namespace A038280.P16176712023658276194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 3 * A013609 n

end

end A038280.P16176712023658276194

namespace A038280

/-- `A130321(n)^3*A013609(n)` -/
def P16176712023658276194.Spec : Prop :=
  ∀ n, P16176712023658276194.a n = A038280 n

end A038280

/-! ## A038280.P8698133651132046430

`A038232(n)/A038208(n)*A038232(n)`
-/

namespace A038280.P8698133651132046430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038232 n : ℚ) / (A038208 n : ℚ) * (A038232 n : ℚ)

end

end A038280.P8698133651132046430

namespace A038280

/-- `A038232(n)/A038208(n)*A038232(n)` -/
def P8698133651132046430.Spec : Prop :=
  ∀ n, P8698133651132046430.a n = (A038280 n : ℚ)

end A038280

/-! ## A038280.P3923325741404794800

`A038234(n)/A038214(n)*A038234(n)`
-/

namespace A038280.P3923325741404794800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038234 n : ℚ) / (A038214 n : ℚ) * (A038234 n : ℚ)

end

end A038280.P3923325741404794800

namespace A038280

/-- `A038234(n)/A038214(n)*A038234(n)` -/
def P3923325741404794800.Spec : Prop :=
  ∀ n, P3923325741404794800.a n = (A038280 n : ℚ)

end A038280

/-! ## A038280.P12008177630034932667

`(A038208(n)/A013609(n))²*A038208(n)`
-/

namespace A038280.P12008177630034932667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038208 n : ℚ) / (A013609 n : ℚ)) ^ 2 * (A038208 n : ℚ)

end

end A038280.P12008177630034932667

namespace A038280

/-- `(A038208(n)/A013609(n))²*A038208(n)` -/
def P12008177630034932667.Spec : Prop :=
  ∀ n, P12008177630034932667.a n = (A038280 n : ℚ)

end A038280

/-! ## A038280.P15061238726297588506

`A038214(A061579(n))`
-/

namespace A038280.P15061238726297588506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038214 (A061579 n).toNat

end

end A038280.P15061238726297588506

namespace A038280

/-- `A038214(A061579(n))` -/
def P15061238726297588506.Spec : Prop :=
  ∀ n, P15061238726297588506.a n = A038280 n

end A038280

/-! ## A038280.P15143781543493708909

`A038282(n)/A059268(n)`
-/

namespace A038280.P15143781543493708909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038282 n : ℚ) / (A059268 n : ℚ)

end

end A038280.P15143781543493708909

namespace A038280

/-- `A038282(n)/A059268(n)` -/
def P15143781543493708909.Spec : Prop :=
  ∀ n, P15143781543493708909.a n = (A038280 n : ℚ)

end A038280

/-! ## A038280.P13789242094603908169

`gcd(A038282(n), A038284(n))`
-/

namespace A038280.P13789242094603908169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038282 n) (A038284 n)

end

end A038280.P13789242094603908169

namespace A038280

/-- `gcd(A038282(n), A038284(n))` -/
def P13789242094603908169.Spec : Prop :=
  ∀ n, (P13789242094603908169.a n : ℤ) = A038280 n

end A038280

/-! ## A038280.P5786490819816763670

`A038286(n)/A059268(n)²`
-/

namespace A038280.P5786490819816763670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038286 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038280.P5786490819816763670

namespace A038280

/-- `A038286(n)/A059268(n)²` -/
def P5786490819816763670.Spec : Prop :=
  ∀ n, P5786490819816763670.a n = (A038280 n : ℚ)

end A038280

/-! ## A038280.P6094353377554536453

`gcd(A038286(n), A038288(n))`
-/

namespace A038280.P6094353377554536453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038286 n) (A038288 n)

end

end A038280.P6094353377554536453

namespace A038280

/-- `gcd(A038286(n), A038288(n))` -/
def P6094353377554536453.Spec : Prop :=
  ∀ n, (P6094353377554536453.a n : ℤ) = A038280 n

end A038280

/-! ## A038280.P5271005262759602274

`A038232(n)²/A038208(n)`
-/

namespace A038280.P5271005262759602274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038232 n ^ 2 : ℚ) / (A038208 n : ℚ)

end

end A038280.P5271005262759602274

namespace A038280

/-- `A038232(n)²/A038208(n)` -/
def P5271005262759602274.Spec : Prop :=
  ∀ n, P5271005262759602274.a n = (A038280 n : ℚ)

end A038280

/-! ## A038280.P7518555448440299910

`A038232(n)²/gcd(A038232(n), A038256(n))`
-/

namespace A038280.P7518555448440299910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038232 n ^ 2 : ℚ) / (Int.gcd (A038232 n) (A038256 n) : ℚ)

end

end A038280.P7518555448440299910

namespace A038280

/-- `A038232(n)²/gcd(A038232(n), A038256(n))` -/
def P7518555448440299910.Spec : Prop :=
  ∀ n, P7518555448440299910.a n = (A038280 n : ℚ)

end A038280

/-! ## A038280.P14268874998780630051

`A038234(n)²/A038214(n)`
-/

namespace A038280.P14268874998780630051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038234 n ^ 2 : ℚ) / (A038214 n : ℚ)

end

end A038280.P14268874998780630051

namespace A038280

/-- `A038234(n)²/A038214(n)` -/
def P14268874998780630051.Spec : Prop :=
  ∀ n, P14268874998780630051.a n = (A038280 n : ℚ)

end A038280

/-! ## A038280.P9802419393741204119

`gcd(A038288(n)+A038290(n)², A038290(n))`
-/

namespace A038280.P9802419393741204119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038288 n + A038290 n ^ 2) (A038290 n)

end

end A038280.P9802419393741204119

namespace A038280

/-- `gcd(A038288(n)+A038290(n)², A038290(n))` -/
def P9802419393741204119.Spec : Prop :=
  ∀ n, (P9802419393741204119.a n : ℤ) = A038280 n

end A038280

/-!
# A038281: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*3^j.

The programs for A038281, the canonical program `A038281.P5950782525459084005` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038281 has offset 0).

The definition of A038281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4869 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038281.P5950782525459084005

`A036561(n)*A038231(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038281

/-- `A036561(n)*A038231(n)` -/
def P5950782525459084005.Spec : Prop :=
  ∀ n, P5950782525459084005.a n = A038281 n

theorem P5950782525459084005.correct : P5950782525459084005.Spec := by
  intro n
  simp only [A038281]

end A038281

/-! ## A038281.P8942290435652599870

`A038233(n)*A130321(n)`
-/

namespace A038281.P8942290435652599870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038233 n * A130321 n

end

end A038281.P8942290435652599870

namespace A038281

/-- `A038233(n)*A130321(n)` -/
def P8942290435652599870.Spec : Prop :=
  ∀ n, P8942290435652599870.a n = A038281 n

end A038281

/-! ## A038281.P12422630811883549170

`A013620(n)*A262616(n)`
-/

namespace A038281.P12422630811883549170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A262616 n

end

end A038281.P12422630811883549170

namespace A038281

/-- `A013620(n)*A262616(n)` -/
def P12422630811883549170.Spec : Prop :=
  ∀ n, P12422630811883549170.a n = A038281 n

end A038281

/-! ## A038281.P14873640673577762643

`lcm(A013610(n), A038279(n))`
-/

namespace A038281.P14873640673577762643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038279 n)

end

end A038281.P14873640673577762643

namespace A038281

/-- `lcm(A013610(n), A038279(n))` -/
def P14873640673577762643.Spec : Prop :=
  ∀ n, (P14873640673577762643.a n : ℤ) = A038281 n

end A038281

/-! ## A038281.P17239915303917393196

`A130321(n)²*A013620(n)`
-/

namespace A038281.P17239915303917393196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013620 n

end

end A038281.P17239915303917393196

namespace A038281

/-- `A130321(n)²*A013620(n)` -/
def P17239915303917393196.Spec : Prop :=
  ∀ n, P17239915303917393196.a n = A038281 n

end A038281

/-! ## A038281.P4650699486749794400

`A013610(n)*A130321(n)*A130321(n)²`
-/

namespace A038281.P4650699486749794400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n * A130321 n * A130321 n ^ 2

end

end A038281.P4650699486749794400

namespace A038281

/-- `A013610(n)*A130321(n)*A130321(n)²` -/
def P4650699486749794400.Spec : Prop :=
  ∀ n, P4650699486749794400.a n = A038281 n

end A038281

/-! ## A038281.P528356271231851700

`(A013620(n)/A013610(n))²*A013620(n)`
-/

namespace A038281.P528356271231851700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013620 n : ℚ) / (A013610 n : ℚ)) ^ 2 * (A013620 n : ℚ)

end

end A038281.P528356271231851700

namespace A038281

/-- `(A013620(n)/A013610(n))²*A013620(n)` -/
def P528356271231851700.Spec : Prop :=
  ∀ n, P528356271231851700.a n = (A038281 n : ℚ)

end A038281

/-! ## A038281.P9837201034395443922

`A038226(A061579(n))`
-/

namespace A038281.P9837201034395443922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038226 (A061579 n).toNat

end

end A038281.P9837201034395443922

namespace A038281

/-- `A038226(A061579(n))` -/
def P9837201034395443922.Spec : Prop :=
  ∀ n, P9837201034395443922.a n = A038281 n

end A038281

/-! ## A038281.P10067811443007926918

`A038236(n)/A038218(n)*A038236(n)`
-/

namespace A038281.P10067811443007926918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n : ℚ) / (A038218 n : ℚ) * (A038236 n : ℚ)

end

end A038281.P10067811443007926918

namespace A038281

/-- `A038236(n)/A038218(n)*A038236(n)` -/
def P10067811443007926918.Spec : Prop :=
  ∀ n, P10067811443007926918.a n = (A038281 n : ℚ)

end A038281

/-! ## A038281.P7716297128733919078

`A038284(n)/A059268(n)`
-/

namespace A038281.P7716297128733919078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038284 n : ℚ) / (A059268 n : ℚ)

end

end A038281.P7716297128733919078

namespace A038281

/-- `A038284(n)/A059268(n)` -/
def P7716297128733919078.Spec : Prop :=
  ∀ n, P7716297128733919078.a n = (A038281 n : ℚ)

end A038281

/-! ## A038281.P8888974320406310516

`A038284(n)/A000079(A002262(n))`
-/

namespace A038281.P8888974320406310516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038284 n : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A038281.P8888974320406310516

namespace A038281

/-- `A038284(n)/A000079(A002262(n))` -/
def P8888974320406310516.Spec : Prop :=
  ∀ n, P8888974320406310516.a n = (A038281 n : ℚ)

end A038281

/-! ## A038281.P14258413640524585624

`gcd(A038284(n), A038287(n))`
-/

namespace A038281.P14258413640524585624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038284 n) (A038287 n)

end

end A038281.P14258413640524585624

namespace A038281

/-- `gcd(A038284(n), A038287(n))` -/
def P14258413640524585624.Spec : Prop :=
  ∀ n, (P14258413640524585624.a n : ℤ) = A038281 n

end A038281

/-! ## A038281.P6794863051843357493

`A038290(n)/A059268(n)²`
-/

namespace A038281.P6794863051843357493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038290 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038281.P6794863051843357493

namespace A038281

/-- `A038290(n)/A059268(n)²` -/
def P6794863051843357493.Spec : Prop :=
  ∀ n, P6794863051843357493.a n = (A038281 n : ℚ)

end A038281

/-! ## A038281.P5790711940048149995

`A038284(n)/A038290(n)*A038284(n)`
-/

namespace A038281.P5790711940048149995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038284 n : ℚ) / (A038290 n : ℚ) * (A038284 n : ℚ)

end

end A038281.P5790711940048149995

namespace A038281

/-- `A038284(n)/A038290(n)*A038284(n)` -/
def P5790711940048149995.Spec : Prop :=
  ∀ n, P5790711940048149995.a n = (A038281 n : ℚ)

end A038281

/-! ## A038281.P5151944167253216225

`A038233(n)²/gcd(A038233(n), A038257(n))`
-/

namespace A038281.P5151944167253216225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038233 n ^ 2 : ℚ) / (Int.gcd (A038233 n) (A038257 n) : ℚ)

end

end A038281.P5151944167253216225

namespace A038281

/-- `A038233(n)²/gcd(A038233(n), A038257(n))` -/
def P5151944167253216225.Spec : Prop :=
  ∀ n, P5151944167253216225.a n = (A038281 n : ℚ)

end A038281

/-! ## A038281.P11643004335173747247

`lcm(A038233(n)²/A038215(n), A038233(n))`
-/

namespace A038281.P11643004335173747247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A038233 n ^ 2 : ℚ) / (A038215 n : ℚ))) (A038233 n)

end

end A038281.P11643004335173747247

namespace A038281

/-- `lcm(A038233(n)²/A038215(n), A038233(n))` -/
def P11643004335173747247.Spec : Prop :=
  ∀ n, (P11643004335173747247.a n : ℤ) = A038281 n

end A038281

/-! ## A038281.P16773369107939856318

`A038236(n)²/A038218(n)`
-/

namespace A038281.P16773369107939856318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n ^ 2 : ℚ) / (A038218 n : ℚ)

end

end A038281.P16773369107939856318

namespace A038281

/-- `A038236(n)²/A038218(n)` -/
def P16773369107939856318.Spec : Prop :=
  ∀ n, P16773369107939856318.a n = (A038281 n : ℚ)

end A038281

/-! ## A038281.P5526579537778458166

`A038284(n)²/A038290(n)`
-/

namespace A038281.P5526579537778458166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038284 n ^ 2 : ℚ) / (A038290 n : ℚ)

end

end A038281.P5526579537778458166

namespace A038281

/-- `A038284(n)²/A038290(n)` -/
def P5526579537778458166.Spec : Prop :=
  ∀ n, P5526579537778458166.a n = (A038281 n : ℚ)

end A038281

/-!
# A038282: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*4^j.

The programs for A038282, the canonical program `A038282.P9263401761127382137` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038282 has offset 0).

The definition of A038282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4491 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038282.P9263401761127382137

`A038280(n)*A059268(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A038282

/-- `A038280(n)*A059268(n)` -/
def P9263401761127382137.Spec : Prop :=
  ∀ n, P9263401761127382137.a n = A038282 n

theorem P9263401761127382137.correct : P9263401761127382137.Spec := by
  intro n
  simp only [A038282]

end A038282

/-! ## A038282.P2893612128477846119

`A038234(n)*A130321(n)`
-/

namespace A038282.P2893612128477846119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038234 n * A130321 n

end

end A038282.P2893612128477846119

namespace A038282

/-- `A038234(n)*A130321(n)` -/
def P2893612128477846119.Spec : Prop :=
  ∀ n, P2893612128477846119.a n = A038282 n

end A038282

/-! ## A038282.P948460787106330541

`A038232(n)*A137688(n)`
-/

namespace A038282.P948460787106330541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 n * A137688 n

end

end A038282.P948460787106330541

namespace A038282

/-- `A038232(n)*A137688(n)` -/
def P948460787106330541.Spec : Prop :=
  ∀ n, P948460787106330541.a n = A038282 n

end A038282

/-! ## A038282.P5265769021509493711

`A038210(n)*A262616(n)`
-/

namespace A038282.P5265769021509493711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038210 n * A262616 n

end

end A038282.P5265769021509493711

namespace A038282

/-- `A038210(n)*A262616(n)` -/
def P5265769021509493711.Spec : Prop :=
  ∀ n, P5265769021509493711.a n = A038282 n

end A038282

/-! ## A038282.P1215021289486969215

`A038231(n)*A368043(n)`
-/

namespace A038282.P1215021289486969215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A368043 n

end

end A038282.P1215021289486969215

namespace A038282

/-- `A038231(n)*A368043(n)` -/
def P1215021289486969215.Spec : Prop :=
  ∀ n, P1215021289486969215.a n = A038282 n

end A038282

/-! ## A038282.P3908816166906291699

`A059268(n)²*A038279(n)`
-/

namespace A038282.P3908816166906291699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038279 n

end

end A038282.P3908816166906291699

namespace A038282

/-- `A059268(n)²*A038279(n)` -/
def P3908816166906291699.Spec : Prop :=
  ∀ n, P3908816166906291699.a n = A038282 n

end A038282

/-! ## A038282.P246010918279551469

`A130321(n)²*A038210(n)`
-/

namespace A038282.P246010918279551469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038210 n

end

end A038282.P246010918279551469

namespace A038282

/-- `A130321(n)²*A038210(n)` -/
def P246010918279551469.Spec : Prop :=
  ∀ n, P246010918279551469.a n = A038282 n

end A038282

/-! ## A038282.P17302388913146911598

`A137688(n)²*A038207(n)`
-/

namespace A038282.P17302388913146911598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 * A038207 n

end

end A038282.P17302388913146911598

namespace A038282

/-- `A137688(n)²*A038207(n)` -/
def P17302388913146911598.Spec : Prop :=
  ∀ n, P17302388913146911598.a n = A038282 n

end A038282

/-! ## A038282.P784714906371802481

`4^A002262(n)*A038279(n)`
-/

namespace A038282.P784714906371802481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A002262 n : ℤ) * (A038279 n : ℚ)

end

end A038282.P784714906371802481

namespace A038282

/-- `4^A002262(n)*A038279(n)` -/
def P784714906371802481.Spec : Prop :=
  ∀ n, P784714906371802481.a n = (A038282 n : ℚ)

end A038282

/-! ## A038282.P964769014413005847

`abs(A065109(n))*A137688(n)²`
-/

namespace A038282.P964769014413005847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065109 n| * A137688 n ^ 2

end

end A038282.P964769014413005847

namespace A038282

/-- `abs(A065109(n))*A137688(n)²` -/
def P964769014413005847.Spec : Prop :=
  ∀ n, P964769014413005847.a n = A038282 n

end A038282

/-! ## A038282.P8413655159331394878

`Δ[A007664(n)]²*A038207(n)`
-/

namespace A038282.P8413655159331394878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A038207 n

end

end A038282.P8413655159331394878

namespace A038282

/-- `Δ[A007664(n)]²*A038207(n)` -/
def P8413655159331394878.Spec : Prop :=
  ∀ n, P8413655159331394878.a n = A038282 n

end A038282

/-! ## A038282.P1091837414412626539

`A038232(n)/A038207(n)*A038232(n)`
-/

namespace A038282.P1091837414412626539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038232 n : ℚ) / (A038207 n : ℚ) * (A038232 n : ℚ)

end

end A038282.P1091837414412626539

namespace A038282

/-- `A038232(n)/A038207(n)*A038232(n)` -/
def P1091837414412626539.Spec : Prop :=
  ∀ n, P1091837414412626539.a n = (A038282 n : ℚ)

end A038282

/-! ## A038282.P1290270466298705162

`A038234(n)/A038210(n)*A038234(n)`
-/

namespace A038282.P1290270466298705162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038234 n : ℚ) / (A038210 n : ℚ) * (A038234 n : ℚ)

end

end A038282.P1290270466298705162

namespace A038282

/-- `A038234(n)/A038210(n)*A038234(n)` -/
def P1290270466298705162.Spec : Prop :=
  ∀ n, P1290270466298705162.a n = (A038282 n : ℚ)

end A038282

/-! ## A038282.P4515944503561961752

`A038236(n)/A038215(n)*A038236(n)`
-/

namespace A038282.P4515944503561961752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n : ℚ) / (A038215 n : ℚ) * (A038236 n : ℚ)

end

end A038282.P4515944503561961752

namespace A038282

/-- `A038236(n)/A038215(n)*A038236(n)` -/
def P4515944503561961752.Spec : Prop :=
  ∀ n, P4515944503561961752.a n = (A038282 n : ℚ)

end A038282

/-! ## A038282.P16526504655068427515

`A013611(n)*A130321(n)*A130321(n)²`
-/

namespace A038282.P16526504655068427515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 n * A130321 n * A130321 n ^ 2

end

end A038282.P16526504655068427515

namespace A038282

/-- `A013611(n)*A130321(n)*A130321(n)²` -/
def P16526504655068427515.Spec : Prop :=
  ∀ n, P16526504655068427515.a n = A038282 n

end A038282

/-! ## A038282.P14754329809551430801

`A038238(A061579(n))`
-/

namespace A038282.P14754329809551430801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038238 (A061579 n).toNat

end

end A038282.P14754329809551430801

namespace A038282

/-- `A038238(A061579(n))` -/
def P14754329809551430801.Spec : Prop :=
  ∀ n, P14754329809551430801.a n = A038282 n

end A038282

/-! ## A038282.P1872834638626498153

`A038238(A038722(n+1)-1)`
-/

namespace A038282.P1872834638626498153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038238 (A038722 (n + 1) - 1).toNat

end

end A038282.P1872834638626498153

namespace A038282

/-- `A038238(A038722(n+1)-1)` -/
def P1872834638626498153.Spec : Prop :=
  ∀ n, P1872834638626498153.a n = A038282 n

end A038282

/-! ## A038282.P6883514840750894306

`A038238(A002024(n+1)²-(n+1))`
-/

namespace A038282.P6883514840750894306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038238 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A038282.P6883514840750894306

namespace A038282

/-- `A038238(A002024(n+1)²-(n+1))` -/
def P6883514840750894306.Spec : Prop :=
  ∀ n, P6883514840750894306.a n = A038282 n

end A038282

/-! ## A038282.P1474013292081769266

`A038286(n)/A059268(n)`
-/

namespace A038282.P1474013292081769266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038286 n : ℚ) / (A059268 n : ℚ)

end

end A038282.P1474013292081769266

namespace A038282

/-- `A038286(n)/A059268(n)` -/
def P1474013292081769266.Spec : Prop :=
  ∀ n, P1474013292081769266.a n = (A038282 n : ℚ)

end A038282

/-! ## A038282.P7194744712576383831

`A038284(n)/A038287(n)*A038284(n)`
-/

namespace A038282.P7194744712576383831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038284 n : ℚ) / (A038287 n : ℚ) * (A038284 n : ℚ)

end

end A038282.P7194744712576383831

namespace A038282

/-- `A038284(n)/A038287(n)*A038284(n)` -/
def P7194744712576383831.Spec : Prop :=
  ∀ n, P7194744712576383831.a n = (A038282 n : ℚ)

end A038282

/-!
# A038283: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*5^j.

The programs for A038283, the canonical program `A038283.P4750763514084286301` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038283 has offset 0).

The definition of A038283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038283.P17930867791041984363

`A013628(n)*A130321(n)`
-/

namespace A038283.P17930867791041984363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013628 n * A130321 n

end

end A038283.P17930867791041984363

namespace A038283

/-- `A013628(n)*A130321(n)` -/
def P17930867791041984363.Spec : Prop :=
  ∀ n, P17930867791041984363.a n = A038283 n

end A038283

/-! ## A038283.P10730583008289975114

`A013621(n)*A262616(n)`
-/

namespace A038283.P10730583008289975114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013621 n * A262616 n

end

end A038283.P10730583008289975114

namespace A038283

/-- `A013621(n)*A262616(n)` -/
def P10730583008289975114.Spec : Prop :=
  ∀ n, P10730583008289975114.a n = A038283 n

end A038283

/-! ## A038283.P12595525639465469251

`lcm(A013612(n), A038279(n))`
-/

namespace A038283.P12595525639465469251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038279 n)

end

end A038283.P12595525639465469251

namespace A038283

/-- `lcm(A013612(n), A038279(n))` -/
def P12595525639465469251.Spec : Prop :=
  ∀ n, (P12595525639465469251.a n : ℤ) = A038283 n

end A038283

/-! ## A038283.P12905313379267443704

`A130321(n)²*A013621(n)`
-/

namespace A038283.P12905313379267443704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013621 n

end

end A038283.P12905313379267443704

namespace A038283

/-- `A130321(n)²*A013621(n)` -/
def P12905313379267443704.Spec : Prop :=
  ∀ n, P12905313379267443704.a n = A038283 n

end A038283

/-! ## A038283.P4750763514084286301

`A038231(n)*A232646(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038283

/-- `A038231(n)*A232646(n+1)` -/
def P4750763514084286301.Spec : Prop :=
  ∀ n, P4750763514084286301.a n = A038283 n

theorem P4750763514084286301.correct : P4750763514084286301.Spec := by
  intro n
  simp only [A038283]

end A038283

/-! ## A038283.P15633402271015909751

`5^A002262(n)*A038279(n)`
-/

namespace A038283.P15633402271015909751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A002262 n : ℤ) * (A038279 n : ℚ)

end

end A038283.P15633402271015909751

namespace A038283

/-- `5^A002262(n)*A038279(n)` -/
def P15633402271015909751.Spec : Prop :=
  ∀ n, P15633402271015909751.a n = (A038283 n : ℚ)

end A038283

/-! ## A038283.P12436262283493022997

`A013628(n)/A013621(n)*A013628(n)`
-/

namespace A038283.P12436262283493022997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013628 n : ℚ) / (A013621 n : ℚ) * (A013628 n : ℚ)

end

end A038283.P12436262283493022997

namespace A038283

/-- `A013628(n)/A013621(n)*A013628(n)` -/
def P12436262283493022997.Spec : Prop :=
  ∀ n, P12436262283493022997.a n = (A038283 n : ℚ)

end A038283

/-! ## A038283.P9042364669157711489

`A013612(n)*A130321(n)*A130321(n)²`
-/

namespace A038283.P9042364669157711489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 n * A130321 n * A130321 n ^ 2

end

end A038283.P9042364669157711489

namespace A038283

/-- `A013612(n)*A130321(n)*A130321(n)²` -/
def P9042364669157711489.Spec : Prop :=
  ∀ n, P9042364669157711489.a n = A038283 n

end A038283

/-! ## A038283.P17330399962867466182

`(A013621(n)/A013612(n))²*A013621(n)`
-/

namespace A038283.P17330399962867466182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013621 n : ℚ) / (A013612 n : ℚ)) ^ 2 * (A013621 n : ℚ)

end

end A038283.P17330399962867466182

namespace A038283

/-- `(A013621(n)/A013612(n))²*A013621(n)` -/
def P17330399962867466182.Spec : Prop :=
  ∀ n, P17330399962867466182.a n = (A038283 n : ℚ)

end A038283

/-! ## A038283.P11417059294399869317

`A038250(A061579(n))`
-/

namespace A038283.P11417059294399869317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038250 (A061579 n).toNat

end

end A038283.P11417059294399869317

namespace A038283

/-- `A038250(A061579(n))` -/
def P11417059294399869317.Spec : Prop :=
  ∀ n, P11417059294399869317.a n = A038283 n

end A038283

/-! ## A038283.P5056316925814630270

`A038288(n)/A059268(n)`
-/

namespace A038283.P5056316925814630270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038288 n : ℚ) / (A059268 n : ℚ)

end

end A038283.P5056316925814630270

namespace A038283

/-- `A038288(n)/A059268(n)` -/
def P5056316925814630270.Spec : Prop :=
  ∀ n, P5056316925814630270.a n = (A038283 n : ℚ)

end A038283

/-! ## A038283.P2553250547749575786

`A013628(n)²/A013621(n)`
-/

namespace A038283.P2553250547749575786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013628 n ^ 2 : ℚ) / (A013621 n : ℚ)

end

end A038283.P2553250547749575786

namespace A038283

/-- `A013628(n)²/A013621(n)` -/
def P2553250547749575786.Spec : Prop :=
  ∀ n, P2553250547749575786.a n = (A038283 n : ℚ)

end A038283

/-! ## A038283.P9315675096076225953

`A013628(n)²/gcd(A013628(n), A038259(n))`
-/

namespace A038283.P9315675096076225953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013628 n ^ 2 : ℚ) / (Int.gcd (A013628 n) (A038259 n) : ℚ)

end

end A038283.P9315675096076225953

namespace A038283

/-- `A013628(n)²/gcd(A013628(n), A038259(n))` -/
def P9315675096076225953.Spec : Prop :=
  ∀ n, P9315675096076225953.a n = (A038283 n : ℚ)

end A038283

/-!
# A038284: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*6^j.

The programs for A038284, the canonical program `A038284.P16416775335584718601` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038284 has offset 0).

The definition of A038284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4034 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038284.P16416775335584718601

`A036561(n)*A038232(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038284

/-- `A036561(n)*A038232(n)` -/
def P16416775335584718601.Spec : Prop :=
  ∀ n, P16416775335584718601.a n = A038284 n

theorem P16416775335584718601.correct : P16416775335584718601.Spec := by
  intro n
  simp only [A038284]

end A038284

/-! ## A038284.P11875376846736803317

`A038281(n)*A059268(n)`
-/

namespace A038284.P11875376846736803317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038281 n * A059268 n

end

end A038284.P11875376846736803317

namespace A038284

/-- `A038281(n)*A059268(n)` -/
def P11875376846736803317.Spec : Prop :=
  ∀ n, P11875376846736803317.a n = A038284 n

end A038284

/-! ## A038284.P4866898152551001970

`A038231(n)*A100851(n)`
-/

namespace A038284.P4866898152551001970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A100851 n

end

end A038284.P4866898152551001970

namespace A038284

/-- `A038231(n)*A100851(n)` -/
def P4866898152551001970.Spec : Prop :=
  ∀ n, P4866898152551001970.a n = A038284 n

end A038284

/-! ## A038284.P12266690341759160776

`A038236(n)*A130321(n)`
-/

namespace A038284.P12266690341759160776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038236 n * A130321 n

end

end A038284.P12266690341759160776

namespace A038284

/-- `A038236(n)*A130321(n)` -/
def P12266690341759160776.Spec : Prop :=
  ∀ n, P12266690341759160776.a n = A038284 n

end A038284

/-! ## A038284.P929847208458363424

`A038233(n)*A137688(n)`
-/

namespace A038284.P929847208458363424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038233 n * A137688 n

end

end A038284.P929847208458363424

namespace A038284

/-- `A038233(n)*A137688(n)` -/
def P929847208458363424.Spec : Prop :=
  ∀ n, P929847208458363424.a n = A038284 n

end A038284

/-! ## A038284.P1485547882588614796

`A038212(n)*A262616(n)`
-/

namespace A038284.P1485547882588614796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038212 n * A262616 n

end

end A038284.P1485547882588614796

namespace A038284

/-- `A038212(n)*A262616(n)` -/
def P1485547882588614796.Spec : Prop :=
  ∀ n, P1485547882588614796.a n = A038284 n

end A038284

/-! ## A038284.P15357885228307075644

`lcm(A013610(n), A038280(n))`
-/

namespace A038284.P15357885228307075644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038280 n)

end

end A038284.P15357885228307075644

namespace A038284

/-- `lcm(A013610(n), A038280(n))` -/
def P15357885228307075644.Spec : Prop :=
  ∀ n, (P15357885228307075644.a n : ℤ) = A038284 n

end A038284

/-! ## A038284.P520833208453183640

`A130321(n)²*A038212(n)`
-/

namespace A038284.P520833208453183640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038212 n

end

end A038284.P520833208453183640

namespace A038284

/-- `A130321(n)²*A038212(n)` -/
def P520833208453183640.Spec : Prop :=
  ∀ n, P520833208453183640.a n = A038284 n

end A038284

/-! ## A038284.P18367010239258997851

`A000079(A002262(n))*A038281(n)`
-/

namespace A038284.P18367010239258997851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A038281 n

end

end A038284.P18367010239258997851

namespace A038284

/-- `A000079(A002262(n))*A038281(n)` -/
def P18367010239258997851.Spec : Prop :=
  ∀ n, P18367010239258997851.a n = A038284 n

end A038284

/-! ## A038284.P12408109642093376688

`A011782(A002260(n+1))*A038281(n)`
-/

namespace A038284.P12408109642093376688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A038281 n

end

end A038284.P12408109642093376688

namespace A038284

/-- `A011782(A002260(n+1))*A038281(n)` -/
def P12408109642093376688.Spec : Prop :=
  ∀ n, P12408109642093376688.a n = A038284 n

end A038284

/-! ## A038284.P16346574130365112592

`A036561(n)*A038207(n)*A137688(n)`
-/

namespace A038284.P16346574130365112592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038207 n * A137688 n

end

end A038284.P16346574130365112592

namespace A038284

/-- `A036561(n)*A038207(n)*A137688(n)` -/
def P16346574130365112592.Spec : Prop :=
  ∀ n, P16346574130365112592.a n = A038284 n

end A038284

/-! ## A038284.P11059291699028039177

`A038236(n)/A038212(n)*A038236(n)`
-/

namespace A038284.P11059291699028039177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n : ℚ) / (A038212 n : ℚ) * (A038236 n : ℚ)

end

end A038284.P11059291699028039177

namespace A038284

/-- `A038236(n)/A038212(n)*A038236(n)` -/
def P11059291699028039177.Spec : Prop :=
  ∀ n, P11059291699028039177.a n = (A038284 n : ℚ)

end A038284

/-! ## A038284.P6835675211872055033

`A013613(n)*A130321(n)*A130321(n)²`
-/

namespace A038284.P6835675211872055033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 n * A130321 n * A130321 n ^ 2

end

end A038284.P6835675211872055033

namespace A038284

/-- `A013613(n)*A130321(n)*A130321(n)²` -/
def P6835675211872055033.Spec : Prop :=
  ∀ n, P6835675211872055033.a n = A038284 n

end A038284

/-! ## A038284.P4799310281340566516

`A038262(A061579(n))`
-/

namespace A038284.P4799310281340566516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038262 (A061579 n).toNat

end

end A038284.P4799310281340566516

namespace A038284

/-- `A038262(A061579(n))` -/
def P4799310281340566516.Spec : Prop :=
  ∀ n, P4799310281340566516.a n = A038284 n

end A038284

/-! ## A038284.P8399601447306873632

`A038290(n)/A059268(n)`
-/

namespace A038284.P8399601447306873632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038290 n : ℚ) / (A059268 n : ℚ)

end

end A038284.P8399601447306873632

namespace A038284

/-- `A038290(n)/A059268(n)` -/
def P8399601447306873632.Spec : Prop :=
  ∀ n, P8399601447306873632.a n = (A038284 n : ℚ)

end A038284

/-! ## A038284.P6093870298082351024

`A038236(n)²/A038212(n)`
-/

namespace A038284.P6093870298082351024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n ^ 2 : ℚ) / (A038212 n : ℚ)

end

end A038284.P6093870298082351024

namespace A038284

/-- `A038236(n)²/A038212(n)` -/
def P6093870298082351024.Spec : Prop :=
  ∀ n, P6093870298082351024.a n = (A038284 n : ℚ)

end A038284

/-! ## A038284.P3008397757392006257

`gcd(A038290(n)²/A038286(n), A038290(n))`
-/

namespace A038284.P3008397757392006257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038290 n ^ 2 : ℚ) / (A038286 n : ℚ))) (A038290 n)

end

end A038284.P3008397757392006257

namespace A038284

/-- `gcd(A038290(n)²/A038286(n), A038290(n))` -/
def P3008397757392006257.Spec : Prop :=
  ∀ n, (P3008397757392006257.a n : ℤ) = A038284 n

end A038284

/-!
# A038285: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*7^j.

The programs for A038285, the canonical program `A038285.P11789365728904312411` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038285 has offset 0).

The definition of A038285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3779 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038285.P11789365728904312411

`A036565(n)*A038231(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038285

/-- `A036565(n)*A038231(n)` -/
def P11789365728904312411.Spec : Prop :=
  ∀ n, P11789365728904312411.a n = A038285 n

theorem P11789365728904312411.correct : P11789365728904312411.Spec := by
  intro n
  simp only [A038285]

end A038285

/-! ## A038285.P11203278355070269624

`A013625(n)*A130321(n)`
-/

namespace A038285.P11203278355070269624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013625 n * A130321 n

end

end A038285.P11203278355070269624

namespace A038285

/-- `A013625(n)*A130321(n)` -/
def P11203278355070269624.Spec : Prop :=
  ∀ n, P11203278355070269624.a n = A038285 n

end A038285

/-! ## A038285.P12390217528520767410

`A013623(n)*A262616(n)`
-/

namespace A038285.P12390217528520767410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013623 n * A262616 n

end

end A038285.P12390217528520767410

namespace A038285

/-- `A013623(n)*A262616(n)` -/
def P12390217528520767410.Spec : Prop :=
  ∀ n, P12390217528520767410.a n = A038285 n

end A038285

/-! ## A038285.P16205544169822248390

`lcm(A013614(n), A038279(n))`
-/

namespace A038285.P16205544169822248390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013614 n) (A038279 n)

end

end A038285.P16205544169822248390

namespace A038285

/-- `lcm(A013614(n), A038279(n))` -/
def P16205544169822248390.Spec : Prop :=
  ∀ n, (P16205544169822248390.a n : ℤ) = A038285 n

end A038285

/-! ## A038285.P1730581439815700956

`A130321(n)²*A013623(n)`
-/

namespace A038285.P1730581439815700956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013623 n

end

end A038285.P1730581439815700956

namespace A038285

/-- `A130321(n)²*A013623(n)` -/
def P1730581439815700956.Spec : Prop :=
  ∀ n, P1730581439815700956.a n = A038285 n

end A038285

/-! ## A038285.P5358117975718264877

`A013625(n)/A013623(n)*A013625(n)`
-/

namespace A038285.P5358117975718264877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013625 n : ℚ) / (A013623 n : ℚ) * (A013625 n : ℚ)

end

end A038285.P5358117975718264877

namespace A038285

/-- `A013625(n)/A013623(n)*A013625(n)` -/
def P5358117975718264877.Spec : Prop :=
  ∀ n, P5358117975718264877.a n = (A038285 n : ℚ)

end A038285

/-! ## A038285.P17236760288525359545

`A013614(n)*A130321(n)*A130321(n)²`
-/

namespace A038285.P17236760288525359545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 n * A130321 n * A130321 n ^ 2

end

end A038285.P17236760288525359545

namespace A038285

/-- `A013614(n)*A130321(n)*A130321(n)²` -/
def P17236760288525359545.Spec : Prop :=
  ∀ n, P17236760288525359545.a n = A038285 n

end A038285

/-! ## A038285.P742313953083694555

`(A013623(n)/A013614(n))²*A013623(n)`
-/

namespace A038285.P742313953083694555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013623 n : ℚ) / (A013614 n : ℚ)) ^ 2 * (A013623 n : ℚ)

end

end A038285.P742313953083694555

namespace A038285

/-- `(A013623(n)/A013614(n))²*A013623(n)` -/
def P742313953083694555.Spec : Prop :=
  ∀ n, P742313953083694555.a n = (A038285 n : ℚ)

end A038285

/-! ## A038285.P4571166680247094276

`A038274(A061579(n))`
-/

namespace A038285.P4571166680247094276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038274 (A061579 n).toNat

end

end A038285.P4571166680247094276

namespace A038285

/-- `A038274(A061579(n))` -/
def P4571166680247094276.Spec : Prop :=
  ∀ n, P4571166680247094276.a n = A038285 n

end A038285

/-! ## A038285.P17751869102109870783

`A013625(n)²/A013623(n)`
-/

namespace A038285.P17751869102109870783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013625 n ^ 2 : ℚ) / (A013623 n : ℚ)

end

end A038285.P17751869102109870783

namespace A038285

/-- `A013625(n)²/A013623(n)` -/
def P17751869102109870783.Spec : Prop :=
  ∀ n, P17751869102109870783.a n = (A038285 n : ℚ)

end A038285

/-! ## A038285.P14194897555982541462

`A013625(n)²/gcd(A013625(n), A013627(n))`
-/

namespace A038285.P14194897555982541462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013625 n ^ 2 : ℚ) / (Int.gcd (A013625 n) (A013627 n) : ℚ)

end

end A038285.P14194897555982541462

namespace A038285

/-- `A013625(n)²/gcd(A013625(n), A013627(n))` -/
def P14194897555982541462.Spec : Prop :=
  ∀ n, P14194897555982541462.a n = (A038285 n : ℚ)

end A038285

/-!
# A038286: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*8^j.

The programs for A038286, the canonical program `A038286.P17651315899015836458` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038286 has offset 0).

The definition of A038286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038286.P17651315899015836458

`A038282(n)*A059268(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A038286

/-- `A038282(n)*A059268(n)` -/
def P17651315899015836458.Spec : Prop :=
  ∀ n, P17651315899015836458.a n = A038286 n

theorem P17651315899015836458.correct : P17651315899015836458.Spec := by
  intro n
  simp only [A038286]

end A038286

/-! ## A038286.P13696199382370742289

`A038238(n)*A130321(n)`
-/

namespace A038286.P13696199382370742289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038238 n * A130321 n

end

end A038286.P13696199382370742289

namespace A038286

/-- `A038238(n)*A130321(n)` -/
def P13696199382370742289.Spec : Prop :=
  ∀ n, P13696199382370742289.a n = A038286 n

end A038286

/-! ## A038286.P461981414399240968

`A038234(n)*A137688(n)`
-/

namespace A038286.P461981414399240968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038234 n * A137688 n

end

end A038286.P461981414399240968

namespace A038286

/-- `A038234(n)*A137688(n)` -/
def P461981414399240968.Spec : Prop :=
  ∀ n, P461981414399240968.a n = A038286 n

end A038286

/-! ## A038286.P7014895037584077327

`A038214(n)*A262616(n)`
-/

namespace A038286.P7014895037584077327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038214 n * A262616 n

end

end A038286.P7014895037584077327

namespace A038286

/-- `A038214(n)*A262616(n)` -/
def P7014895037584077327.Spec : Prop :=
  ∀ n, P7014895037584077327.a n = A038286 n

end A038286

/-! ## A038286.P5938831965717481759

`A038232(n)*A368043(n)`
-/

namespace A038286.P5938831965717481759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 n * A368043 n

end

end A038286.P5938831965717481759

namespace A038286

/-- `A038232(n)*A368043(n)` -/
def P5938831965717481759.Spec : Prop :=
  ∀ n, P5938831965717481759.a n = A038286 n

end A038286

/-! ## A038286.P5935129000487477686

`A059268(n)²*A038280(n)`
-/

namespace A038286.P5935129000487477686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038280 n

end

end A038286.P5935129000487477686

namespace A038286

/-- `A059268(n)²*A038280(n)` -/
def P5935129000487477686.Spec : Prop :=
  ∀ n, P5935129000487477686.a n = A038286 n

end A038286

/-! ## A038286.P8025192814853359319

`A130321(n)²*A038214(n)`
-/

namespace A038286.P8025192814853359319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038214 n

end

end A038286.P8025192814853359319

namespace A038286

/-- `A130321(n)²*A038214(n)` -/
def P8025192814853359319.Spec : Prop :=
  ∀ n, P8025192814853359319.a n = A038286 n

end A038286

/-! ## A038286.P667047620228047999

`A137688(n)²*A038208(n)`
-/

namespace A038286.P667047620228047999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 * A038208 n

end

end A038286.P667047620228047999

namespace A038286

/-- `A137688(n)²*A038208(n)` -/
def P667047620228047999.Spec : Prop :=
  ∀ n, P667047620228047999.a n = A038286 n

end A038286

/-! ## A038286.P10651483175542984002

`A001018(A003056(n))*A007318(n)`
-/

namespace A038286.P10651483175542984002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (A003056 n).toNat * A007318 n

end

end A038286.P10651483175542984002

namespace A038286

/-- `A001018(A003056(n))*A007318(n)` -/
def P10651483175542984002.Spec : Prop :=
  ∀ n, P10651483175542984002.a n = A038286 n

end A038286

/-! ## A038286.P13135867817966675608

`A001018(A002262(n))*A038279(n)`
-/

namespace A038286.P13135867817966675608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (A002262 n).toNat * A038279 n

end

end A038286.P13135867817966675608

namespace A038286

/-- `A001018(A002262(n))*A038279(n)` -/
def P13135867817966675608.Spec : Prop :=
  ∀ n, P13135867817966675608.a n = A038286 n

end A038286

/-! ## A038286.P402610040335923441

`A001018(n-A057944(n))*A038279(n)`
-/

namespace A038286.P402610040335923441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 ((n : ℤ) - A057944 n).toNat * A038279 n

end

end A038286.P402610040335923441

namespace A038286

/-- `A001018(n-A057944(n))*A038279(n)` -/
def P402610040335923441.Spec : Prop :=
  ∀ n, P402610040335923441.a n = A038286 n

end A038286

/-! ## A038286.P7375706742217793215

`A038234(n)/A038208(n)*A038234(n)`
-/

namespace A038286.P7375706742217793215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038234 n : ℚ) / (A038208 n : ℚ) * (A038234 n : ℚ)

end

end A038286.P7375706742217793215

namespace A038286

/-- `A038234(n)/A038208(n)*A038234(n)` -/
def P7375706742217793215.Spec : Prop :=
  ∀ n, P7375706742217793215.a n = (A038286 n : ℚ)

end A038286

/-! ## A038286.P12385075706051119263

`A038238(n)/A038214(n)*A038238(n)`
-/

namespace A038286.P12385075706051119263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038238 n : ℚ) / (A038214 n : ℚ) * (A038238 n : ℚ)

end

end A038286.P12385075706051119263

namespace A038286

/-- `A038238(n)/A038214(n)*A038238(n)` -/
def P12385075706051119263.Spec : Prop :=
  ∀ n, P12385075706051119263.a n = (A038286 n : ℚ)

end A038286

/-! ## A038286.P10795127409867777237

`A038282(n)/A038280(n)*A038282(n)`
-/

namespace A038286.P10795127409867777237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038282 n : ℚ) / (A038280 n : ℚ) * (A038282 n : ℚ)

end

end A038286.P10795127409867777237

namespace A038286

/-- `A038282(n)/A038280(n)*A038282(n)` -/
def P10795127409867777237.Spec : Prop :=
  ∀ n, P10795127409867777237.a n = (A038286 n : ℚ)

end A038286

/-! ## A038286.P367916628269234861

`A038279(n)*A059268(n)*A059268(n)²`
-/

namespace A038286.P367916628269234861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 n * A059268 n * A059268 n ^ 2

end

end A038286.P367916628269234861

namespace A038286

/-- `A038279(n)*A059268(n)*A059268(n)²` -/
def P367916628269234861.Spec : Prop :=
  ∀ n, P367916628269234861.a n = A038286 n

end A038286

/-! ## A038286.P3098022825012355636

`A013615(n)*A130321(n)*A130321(n)²`
-/

namespace A038286.P3098022825012355636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 n * A130321 n * A130321 n ^ 2

end

end A038286.P3098022825012355636

namespace A038286

/-- `A013615(n)*A130321(n)*A130321(n)²` -/
def P3098022825012355636.Spec : Prop :=
  ∀ n, P3098022825012355636.a n = A038286 n

end A038286

/-! ## A038286.P5646764958225781260

`A007318(n)*A137688(n)*A137688(n)²`
-/

namespace A038286.P5646764958225781260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A137688 n * A137688 n ^ 2

end

end A038286.P5646764958225781260

namespace A038286

/-- `A007318(n)*A137688(n)*A137688(n)²` -/
def P5646764958225781260.Spec : Prop :=
  ∀ n, P5646764958225781260.a n = A038286 n

end A038286

/-! ## A038286.P15439522919730352078

`(A038208(n)/A007318(n))²*A038208(n)`
-/

namespace A038286.P15439522919730352078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038208 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A038208 n : ℚ)

end

end A038286.P15439522919730352078

namespace A038286

/-- `(A038208(n)/A007318(n))²*A038208(n)` -/
def P15439522919730352078.Spec : Prop :=
  ∀ n, P15439522919730352078.a n = (A038286 n : ℚ)

end A038286

/-! ## A038286.P14505758420196920716

`A038208(n)/A008459(n)*A038208(n)²`
-/

namespace A038286.P14505758420196920716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A008459 n : ℚ) * (A038208 n ^ 2 : ℚ)

end

end A038286.P14505758420196920716

namespace A038286

/-- `A038208(n)/A008459(n)*A038208(n)²` -/
def P14505758420196920716.Spec : Prop :=
  ∀ n, P14505758420196920716.a n = (A038286 n : ℚ)

end A038286

/-! ## A038286.P12873561850632420301

`A038234(n)²/A038208(n)`
-/

namespace A038286.P12873561850632420301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038234 n ^ 2 : ℚ) / (A038208 n : ℚ)

end

end A038286.P12873561850632420301

namespace A038286

/-- `A038234(n)²/A038208(n)` -/
def P12873561850632420301.Spec : Prop :=
  ∀ n, P12873561850632420301.a n = (A038286 n : ℚ)

end A038286

/-!
# A038287: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*9^j.

The programs for A038287, the canonical program `A038287.P6371543836308166356` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038287 has offset 0).

The definition of A038287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038287.P6371543836308166356

`A036561(n)*A038233(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038287

/-- `A036561(n)*A038233(n)` -/
def P6371543836308166356.Spec : Prop :=
  ∀ n, P6371543836308166356.a n = A038287 n

theorem P6371543836308166356.correct : P6371543836308166356.Spec := by
  intro n
  simp only [A038287]

end A038287

/-! ## A038287.P9460903421248001409

`A038239(n)*A130321(n)`
-/

namespace A038287.P9460903421248001409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038239 n * A130321 n

end

end A038287.P9460903421248001409

namespace A038287

/-- `A038239(n)*A130321(n)` -/
def P9460903421248001409.Spec : Prop :=
  ∀ n, P9460903421248001409.a n = A038287 n

end A038287

/-! ## A038287.P4390331290953192897

`A038215(n)*A262616(n)`
-/

namespace A038287.P4390331290953192897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038215 n * A262616 n

end

end A038287.P4390331290953192897

namespace A038287

/-- `A038215(n)*A262616(n)` -/
def P4390331290953192897.Spec : Prop :=
  ∀ n, P4390331290953192897.a n = A038287 n

end A038287

/-! ## A038287.P14353817472993847741

`lcm(A013616(n), A038279(n))`
-/

namespace A038287.P14353817472993847741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013616 n) (A038279 n)

end

end A038287.P14353817472993847741

namespace A038287

/-- `lcm(A013616(n), A038279(n))` -/
def P14353817472993847741.Spec : Prop :=
  ∀ n, (P14353817472993847741.a n : ℤ) = A038287 n

end A038287

/-! ## A038287.P11712392336354921564

`lcm(A038215(n), A038281(n))`
-/

namespace A038287.P11712392336354921564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038215 n) (A038281 n)

end

end A038287.P11712392336354921564

namespace A038287

/-- `lcm(A038215(n), A038281(n))` -/
def P11712392336354921564.Spec : Prop :=
  ∀ n, (P11712392336354921564.a n : ℤ) = A038287 n

end A038287

/-! ## A038287.P13981702344645148104

`A036561(n)²*A038207(n)`
-/

namespace A038287.P13981702344645148104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n ^ 2 * A038207 n

end

end A038287.P13981702344645148104

namespace A038287

/-- `A036561(n)²*A038207(n)` -/
def P13981702344645148104.Spec : Prop :=
  ∀ n, P13981702344645148104.a n = A038287 n

end A038287

/-! ## A038287.P13411636638580555687

`A130321(n)²*A038215(n)`
-/

namespace A038287.P13411636638580555687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038215 n

end

end A038287.P13411636638580555687

namespace A038287

/-- `A130321(n)²*A038215(n)` -/
def P13411636638580555687.Spec : Prop :=
  ∀ n, P13411636638580555687.a n = A038287 n

end A038287

/-! ## A038287.P16946340805208480782

`abs(A036561(n)²*A065109(n))`
-/

namespace A038287.P16946340805208480782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036561 n ^ 2 * A065109 n|

end

end A038287.P16946340805208480782

namespace A038287

/-- `abs(A036561(n)²*A065109(n))` -/
def P16946340805208480782.Spec : Prop :=
  ∀ n, P16946340805208480782.a n = A038287 n

end A038287

/-! ## A038287.P14880596733015202888

`A000244(A002262(n))*A038281(n)`
-/

namespace A038287.P14880596733015202888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A038281 n

end

end A038287.P14880596733015202888

namespace A038287

/-- `A000244(A002262(n))*A038281(n)` -/
def P14880596733015202888.Spec : Prop :=
  ∀ n, P14880596733015202888.a n = A038287 n

end A038287

/-! ## A038287.P17082443085050542881

`A038233(n)/A038207(n)*A038233(n)`
-/

namespace A038287.P17082443085050542881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038233 n : ℚ) / (A038207 n : ℚ) * (A038233 n : ℚ)

end

end A038287.P17082443085050542881

namespace A038287

/-- `A038233(n)/A038207(n)*A038233(n)` -/
def P17082443085050542881.Spec : Prop :=
  ∀ n, P17082443085050542881.a n = (A038287 n : ℚ)

end A038287

/-! ## A038287.P17440033009082665954

`A038236(n)/A038210(n)*A038236(n)`
-/

namespace A038287.P17440033009082665954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n : ℚ) / (A038210 n : ℚ) * (A038236 n : ℚ)

end

end A038287.P17440033009082665954

namespace A038287

/-- `A038236(n)/A038210(n)*A038236(n)` -/
def P17440033009082665954.Spec : Prop :=
  ∀ n, P17440033009082665954.a n = (A038287 n : ℚ)

end A038287

/-! ## A038287.P18205760633609879898

`A038239(n)/A038215(n)*A038239(n)`
-/

namespace A038287.P18205760633609879898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038239 n : ℚ) / (A038215 n : ℚ) * (A038239 n : ℚ)

end

end A038287.P18205760633609879898

namespace A038287

/-- `A038239(n)/A038215(n)*A038239(n)` -/
def P18205760633609879898.Spec : Prop :=
  ∀ n, P18205760633609879898.a n = (A038287 n : ℚ)

end A038287

/-! ## A038287.P9905416847656563720

`A038284(n)/A038282(n)*A038284(n)`
-/

namespace A038287.P9905416847656563720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038284 n : ℚ) / (A038282 n : ℚ) * (A038284 n : ℚ)

end

end A038287.P9905416847656563720

namespace A038287

/-- `A038284(n)/A038282(n)*A038284(n)` -/
def P9905416847656563720.Spec : Prop :=
  ∀ n, P9905416847656563720.a n = (A038287 n : ℚ)

end A038287

/-! ## A038287.P4814009493926159700

`A013616(n)*A130321(n)*A130321(n)²`
-/

namespace A038287.P4814009493926159700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013616 n * A130321 n * A130321 n ^ 2

end

end A038287.P4814009493926159700

namespace A038287

/-- `A013616(n)*A130321(n)*A130321(n)²` -/
def P4814009493926159700.Spec : Prop :=
  ∀ n, P4814009493926159700.a n = A038287 n

end A038287

/-! ## A038287.P11804039645024445611

`A038298(A061579(n))`
-/

namespace A038287.P11804039645024445611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038298 (A061579 n).toNat

end

end A038287.P11804039645024445611

namespace A038287

/-- `A038298(A061579(n))` -/
def P11804039645024445611.Spec : Prop :=
  ∀ n, P11804039645024445611.a n = A038287 n

end A038287

/-! ## A038287.P11807836477435708357

`A038233(n)²/A038207(n)`
-/

namespace A038287.P11807836477435708357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038233 n ^ 2 : ℚ) / (A038207 n : ℚ)

end

end A038287.P11807836477435708357

namespace A038287

/-- `A038233(n)²/A038207(n)` -/
def P11807836477435708357.Spec : Prop :=
  ∀ n, P11807836477435708357.a n = (A038287 n : ℚ)

end A038287

/-! ## A038287.P12614408628557649646

`A038236(n)²/A038210(n)`
-/

namespace A038287.P12614408628557649646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n ^ 2 : ℚ) / (A038210 n : ℚ)

end

end A038287.P12614408628557649646

namespace A038287

/-- `A038236(n)²/A038210(n)` -/
def P12614408628557649646.Spec : Prop :=
  ∀ n, P12614408628557649646.a n = (A038287 n : ℚ)

end A038287

/-! ## A038287.P5910027654198510041

`A038281(n)²/gcd(A038280(n), A038281(n))`
-/

namespace A038287.P5910027654198510041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038281 n ^ 2 : ℚ) / (Int.gcd (A038280 n) (A038281 n) : ℚ)

end

end A038287.P5910027654198510041

namespace A038287

/-- `A038281(n)²/gcd(A038280(n), A038281(n))` -/
def P5910027654198510041.Spec : Prop :=
  ∀ n, P5910027654198510041.a n = (A038287 n : ℚ)

end A038287

/-! ## A038287.P16491877242399557648

`A038239(n)²/A038215(n)`
-/

namespace A038287.P16491877242399557648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038239 n ^ 2 : ℚ) / (A038215 n : ℚ)

end

end A038287.P16491877242399557648

namespace A038287

/-- `A038239(n)²/A038215(n)` -/
def P16491877242399557648.Spec : Prop :=
  ∀ n, P16491877242399557648.a n = (A038287 n : ℚ)

end A038287

/-! ## A038287.P3459556630983036611

`A038239(n)²/gcd(A038239(n), A038263(n))`
-/

namespace A038287.P3459556630983036611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038239 n ^ 2 : ℚ) / (Int.gcd (A038239 n) (A038263 n) : ℚ)

end

end A038287.P3459556630983036611

namespace A038287

/-- `A038239(n)²/gcd(A038239(n), A038263(n))` -/
def P3459556630983036611.Spec : Prop :=
  ∀ n, P3459556630983036611.a n = (A038287 n : ℚ)

end A038287

/-!
# A038288: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*10^j.

The programs for A038288, the canonical program `A038288.P15461604904291039397` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038288 has offset 0).

The definition of A038288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038288.P15461604904291039397

`A038283(n)*A059268(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038288

/-- `A038283(n)*A059268(n)` -/
def P15461604904291039397.Spec : Prop :=
  ∀ n, P15461604904291039397.a n = A038288 n

theorem P15461604904291039397.correct : P15461604904291039397.Spec := by
  intro n
  simp only [A038288]

end A038288

/-! ## A038288.P10617890634569569199

`A013628(n)*A137688(n)`
-/

namespace A038288.P10617890634569569199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013628 n * A137688 n

end

end A038288.P10617890634569569199

namespace A038288

/-- `A013628(n)*A137688(n)` -/
def P10617890634569569199.Spec : Prop :=
  ∀ n, P10617890634569569199.a n = A038288 n

end A038288

/-! ## A038288.P8991966372584037177

`A038240(n)*A130321(n)`
-/

namespace A038288.P8991966372584037177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038240 n * A130321 n

end

end A038288.P8991966372584037177

namespace A038288

/-- `A038240(n)*A130321(n)` -/
def P8991966372584037177.Spec : Prop :=
  ∀ n, P8991966372584037177.a n = A038288 n

end A038288

/-! ## A038288.P15637511439158584612

`A038216(n)*A262616(n)`
-/

namespace A038288.P15637511439158584612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038216 n * A262616 n

end

end A038288.P15637511439158584612

namespace A038288

/-- `A038216(n)*A262616(n)` -/
def P15637511439158584612.Spec : Prop :=
  ∀ n, P15637511439158584612.a n = A038288 n

end A038288

/-! ## A038288.P12462129800784848100

`lcm(A013612(n), A038280(n))`
-/

namespace A038288.P12462129800784848100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038280 n)

end

end A038288.P12462129800784848100

namespace A038288

/-- `lcm(A013612(n), A038280(n))` -/
def P12462129800784848100.Spec : Prop :=
  ∀ n, (P12462129800784848100.a n : ℤ) = A038288 n

end A038288

/-! ## A038288.P17316061849026349301

`A130321(n)²*A038216(n)`
-/

namespace A038288.P17316061849026349301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038216 n

end

end A038288.P17316061849026349301

namespace A038288

/-- `A130321(n)²*A038216(n)` -/
def P17316061849026349301.Spec : Prop :=
  ∀ n, P17316061849026349301.a n = A038288 n

end A038288

/-! ## A038288.P4740660479125745455

`A038232(n)*A232646(n+1)`
-/

namespace A038288.P4740660479125745455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 n * A232646 (n + 1)

end

end A038288.P4740660479125745455

namespace A038288

/-- `A038232(n)*A232646(n+1)` -/
def P4740660479125745455.Spec : Prop :=
  ∀ n, P4740660479125745455.a n = A038288 n

end A038288

/-! ## A038288.P15055244129246742229

`A038240(n)/A038216(n)*A038240(n)`
-/

namespace A038288.P15055244129246742229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038240 n : ℚ) / (A038216 n : ℚ) * (A038240 n : ℚ)

end

end A038288.P15055244129246742229

namespace A038288

/-- `A038240(n)/A038216(n)*A038240(n)` -/
def P15055244129246742229.Spec : Prop :=
  ∀ n, P15055244129246742229.a n = (A038288 n : ℚ)

end A038288

/-! ## A038288.P17284732353816350881

`A013617(n)*A130321(n)*A130321(n)²`
-/

namespace A038288.P17284732353816350881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013617 n * A130321 n * A130321 n ^ 2

end

end A038288.P17284732353816350881

namespace A038288

/-- `A013617(n)*A130321(n)*A130321(n)²` -/
def P17284732353816350881.Spec : Prop :=
  ∀ n, P17284732353816350881.a n = A038288 n

end A038288

/-! ## A038288.P17756363855908502048

`A232646(n+1)/A013609(n)*A038208(n)²`
-/

namespace A038288.P17756363855908502048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232646 (n + 1) : ℚ) / (A013609 n : ℚ) * (A038208 n ^ 2 : ℚ)

end

end A038288.P17756363855908502048

namespace A038288

/-- `A232646(n+1)/A013609(n)*A038208(n)²` -/
def P17756363855908502048.Spec : Prop :=
  ∀ n, P17756363855908502048.a n = (A038288 n : ℚ)

end A038288

/-! ## A038288.P6358488963833628733

`A038310(A061579(n))`
-/

namespace A038288.P6358488963833628733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038310 (A061579 n).toNat

end

end A038288.P6358488963833628733

namespace A038288

/-- `A038310(A061579(n))` -/
def P6358488963833628733.Spec : Prop :=
  ∀ n, P6358488963833628733.a n = A038288 n

end A038288

/-! ## A038288.P9104556445991477194

`A038240(n)²/A038216(n)`
-/

namespace A038288.P9104556445991477194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038240 n ^ 2 : ℚ) / (A038216 n : ℚ)

end

end A038288.P9104556445991477194

namespace A038288

/-- `A038240(n)²/A038216(n)` -/
def P9104556445991477194.Spec : Prop :=
  ∀ n, P9104556445991477194.a n = (A038288 n : ℚ)

end A038288

/-! ## A038288.P518578732247903732

`A038240(n)²/gcd(A038240(n), A038264(n))`
-/

namespace A038288.P518578732247903732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038240 n ^ 2 : ℚ) / (Int.gcd (A038240 n) (A038264 n) : ℚ)

end

end A038288.P518578732247903732

namespace A038288

/-- `A038240(n)²/gcd(A038240(n), A038264(n))` -/
def P518578732247903732.Spec : Prop :=
  ∀ n, P518578732247903732.a n = (A038288 n : ℚ)

end A038288

/-!
# A038289: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*11^j.

The programs for A038289, the canonical program `A038289.P1403237182846747393` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038289 has offset 0).

The definition of A038289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038289.P1403237182846747393

`A038241(n)*A130321(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038289

/-- `A038241(n)*A130321(n)` -/
def P1403237182846747393.Spec : Prop :=
  ∀ n, P1403237182846747393.a n = A038289 n

theorem P1403237182846747393.correct : P1403237182846747393.Spec := by
  intro n
  simp only [A038289]

end A038289

/-! ## A038289.P5470504718306505444

`A038217(n)*A262616(n)`
-/

namespace A038289.P5470504718306505444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038217 n * A262616 n

end

end A038289.P5470504718306505444

namespace A038289

/-- `A038217(n)*A262616(n)` -/
def P5470504718306505444.Spec : Prop :=
  ∀ n, P5470504718306505444.a n = A038289 n

end A038289

/-! ## A038289.P16602279315760581449

`lcm(A013618(n), A038279(n))`
-/

namespace A038289.P16602279315760581449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013618 n) (A038279 n)

end

end A038289.P16602279315760581449

namespace A038289

/-- `lcm(A013618(n), A038279(n))` -/
def P16602279315760581449.Spec : Prop :=
  ∀ n, (P16602279315760581449.a n : ℤ) = A038289 n

end A038289

/-! ## A038289.P4118921357581075434

`A130321(n)²*A038217(n)`
-/

namespace A038289.P4118921357581075434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038217 n

end

end A038289.P4118921357581075434

namespace A038289

/-- `A130321(n)²*A038217(n)` -/
def P4118921357581075434.Spec : Prop :=
  ∀ n, P4118921357581075434.a n = A038289 n

end A038289

/-! ## A038289.P4137040150528378863

`A038241(n)/A038217(n)*A038241(n)`
-/

namespace A038289.P4137040150528378863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038241 n : ℚ) / (A038217 n : ℚ) * (A038241 n : ℚ)

end

end A038289.P4137040150528378863

namespace A038289

/-- `A038241(n)/A038217(n)*A038241(n)` -/
def P4137040150528378863.Spec : Prop :=
  ∀ n, P4137040150528378863.a n = (A038289 n : ℚ)

end A038289

/-! ## A038289.P11828729565683926234

`A013618(n)*A130321(n)*A130321(n)²`
-/

namespace A038289.P11828729565683926234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013618 n * A130321 n * A130321 n ^ 2

end

end A038289.P11828729565683926234

namespace A038289

/-- `A013618(n)*A130321(n)*A130321(n)²` -/
def P11828729565683926234.Spec : Prop :=
  ∀ n, P11828729565683926234.a n = A038289 n

end A038289

/-! ## A038289.P3882234602233996883

`(A038217(n)/A013618(n))²*A038217(n)`
-/

namespace A038289.P3882234602233996883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038217 n : ℚ) / (A013618 n : ℚ)) ^ 2 * (A038217 n : ℚ)

end

end A038289.P3882234602233996883

namespace A038289

/-- `(A038217(n)/A013618(n))²*A038217(n)` -/
def P3882234602233996883.Spec : Prop :=
  ∀ n, P3882234602233996883.a n = (A038289 n : ℚ)

end A038289

/-! ## A038289.P10002690926490894610

`A013618(n)*A262616(n)*sqrt(A262616(n))`
-/

namespace A038289.P10002690926490894610
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A013618 n * A262616 n : ℝ) * Real.sqrt (A262616 n : ℝ)

end

end A038289.P10002690926490894610

namespace A038289

/-- `A013618(n)*A262616(n)*sqrt(A262616(n))` -/
def P10002690926490894610.Spec : Prop :=
  ∀ n, P10002690926490894610.a n = (A038289 n : ℝ)

end A038289

/-! ## A038289.P11583420085771139164

`A038322(A061579(n))`
-/

namespace A038289.P11583420085771139164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038322 (A061579 n).toNat

end

end A038289.P11583420085771139164

namespace A038289

/-- `A038322(A061579(n))` -/
def P11583420085771139164.Spec : Prop :=
  ∀ n, P11583420085771139164.a n = A038289 n

end A038289

/-! ## A038289.P4545582094961735042

`A038241(n)²/A038217(n)`
-/

namespace A038289.P4545582094961735042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038241 n ^ 2 : ℚ) / (A038217 n : ℚ)

end

end A038289.P4545582094961735042

namespace A038289

/-- `A038241(n)²/A038217(n)` -/
def P4545582094961735042.Spec : Prop :=
  ∀ n, P4545582094961735042.a n = (A038289 n : ℚ)

end A038289

/-! ## A038289.P15080032509546550503

`A038241(n)²/gcd(A038241(n), A038265(n))`
-/

namespace A038289.P15080032509546550503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038241 n ^ 2 : ℚ) / (Int.gcd (A038241 n) (A038265 n) : ℚ)

end

end A038289.P15080032509546550503

namespace A038289

/-- `A038241(n)²/gcd(A038241(n), A038265(n))` -/
def P15080032509546550503.Spec : Prop :=
  ∀ n, P15080032509546550503.a n = (A038289 n : ℚ)

end A038289

/-!
# A038290: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*12^j.

The programs for A038290, the canonical program `A038290.P9369119644896590896` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038290 has offset 0).

The definition of A038290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038290.P9369119644896590896

`A036561(n)*A038234(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A038290

/-- `A036561(n)*A038234(n)` -/
def P9369119644896590896.Spec : Prop :=
  ∀ n, P9369119644896590896.a n = A038290 n

theorem P9369119644896590896.correct : P9369119644896590896.Spec := by
  intro n
  simp only [A038290]

end A038290

/-! ## A038290.P13479500034423580233

`A038284(n)*A059268(n)`
-/

namespace A038290.P13479500034423580233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038284 n * A059268 n

end

end A038290.P13479500034423580233

namespace A038290

/-- `A038284(n)*A059268(n)` -/
def P13479500034423580233.Spec : Prop :=
  ∀ n, P13479500034423580233.a n = A038290 n

end A038290

/-! ## A038290.P13195382320525415879

`A038232(n)*A100851(n)`
-/

namespace A038290.P13195382320525415879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 n * A100851 n

end

end A038290.P13195382320525415879

namespace A038290

/-- `A038232(n)*A100851(n)` -/
def P13195382320525415879.Spec : Prop :=
  ∀ n, P13195382320525415879.a n = A038290 n

end A038290

/-! ## A038290.P13537730196637689098

`A038242(n)*A130321(n)`
-/

namespace A038290.P13537730196637689098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038242 n * A130321 n

end

end A038290.P13537730196637689098

namespace A038290

/-- `A038242(n)*A130321(n)` -/
def P13537730196637689098.Spec : Prop :=
  ∀ n, P13537730196637689098.a n = A038290 n

end A038290

/-! ## A038290.P13812434197268600591

`A038236(n)*A137688(n)`
-/

namespace A038290.P13812434197268600591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038236 n * A137688 n

end

end A038290.P13812434197268600591

namespace A038290

/-- `A038236(n)*A137688(n)` -/
def P13812434197268600591.Spec : Prop :=
  ∀ n, P13812434197268600591.a n = A038290 n

end A038290

/-! ## A038290.P4789822338866771795

`A038218(n)*A262616(n)`
-/

namespace A038290.P4789822338866771795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038218 n * A262616 n

end

end A038290.P4789822338866771795

namespace A038290

/-- `A038218(n)*A262616(n)` -/
def P4789822338866771795.Spec : Prop :=
  ∀ n, P4789822338866771795.a n = A038290 n

end A038290

/-! ## A038290.P6859592373563688526

`A038233(n)*A368043(n)`
-/

namespace A038290.P6859592373563688526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038233 n * A368043 n

end

end A038290.P6859592373563688526

namespace A038290

/-- `A038233(n)*A368043(n)` -/
def P6859592373563688526.Spec : Prop :=
  ∀ n, P6859592373563688526.a n = A038290 n

end A038290

/-! ## A038290.P6320558542824406838

`lcm(A013610(n), A038282(n))`
-/

namespace A038290.P6320558542824406838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038282 n)

end

end A038290.P6320558542824406838

namespace A038290

/-- `lcm(A013610(n), A038282(n))` -/
def P6320558542824406838.Spec : Prop :=
  ∀ n, (P6320558542824406838.a n : ℤ) = A038290 n

end A038290

/-! ## A038290.P2318671981966406287

`A059268(n)²*A038281(n)`
-/

namespace A038290.P2318671981966406287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038281 n

end

end A038290.P2318671981966406287

namespace A038290

/-- `A059268(n)²*A038281(n)` -/
def P2318671981966406287.Spec : Prop :=
  ∀ n, P2318671981966406287.a n = A038290 n

end A038290

/-! ## A038290.P8760420250487071338

`A137688(n)²*A013620(n)`
-/

namespace A038290.P8760420250487071338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 * A013620 n

end

end A038290.P8760420250487071338

namespace A038290

/-- `A137688(n)²*A013620(n)` -/
def P8760420250487071338.Spec : Prop :=
  ∀ n, P8760420250487071338.a n = A038290 n

end A038290

/-! ## A038290.P8551766795562163121

`A130321(n)²*A038218(n)`
-/

namespace A038290.P8551766795562163121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038218 n

end

end A038290.P8551766795562163121

namespace A038290

/-- `A130321(n)²*A038218(n)` -/
def P8551766795562163121.Spec : Prop :=
  ∀ n, P8551766795562163121.a n = A038290 n

end A038290

/-! ## A038290.P16997511284561819042

`Δ[A007664(n)]²*A013620(n)`
-/

namespace A038290.P16997511284561819042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A013620 n

end

end A038290.P16997511284561819042

namespace A038290

/-- `Δ[A007664(n)]²*A013620(n)` -/
def P16997511284561819042.Spec : Prop :=
  ∀ n, P16997511284561819042.a n = A038290 n

end A038290

/-! ## A038290.P6652805580861135028

`A000079(A002262(n))*A038284(n)`
-/

namespace A038290.P6652805580861135028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A038284 n

end

end A038290.P6652805580861135028

namespace A038290

/-- `A000079(A002262(n))*A038284(n)` -/
def P6652805580861135028.Spec : Prop :=
  ∀ n, P6652805580861135028.a n = A038290 n

end A038290

/-! ## A038290.P14018521499311272547

`A000079(A002262(n))²*A038281(n)`
-/

namespace A038290.P14018521499311272547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat ^ 2 * A038281 n

end

end A038290.P14018521499311272547

namespace A038290

/-- `A000079(A002262(n))²*A038281(n)` -/
def P14018521499311272547.Spec : Prop :=
  ∀ n, P14018521499311272547.a n = A038290 n

end A038290

/-! ## A038290.P730046054378505796

`A013620(A057944(n))²*A013620(n)`
-/

namespace A038290.P730046054378505796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A057944 n).toNat ^ 2 * A013620 n

end

end A038290.P730046054378505796

namespace A038290

/-- `A013620(A057944(n))²*A013620(n)` -/
def P730046054378505796.Spec : Prop :=
  ∀ n, P730046054378505796.a n = A038290 n

end A038290

/-! ## A038290.P13556808007275225551

`A000079(2*A002262(n))*A038281(n)`
-/

namespace A038290.P13556808007275225551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A002262 n).toNat * A038281 n

end

end A038290.P13556808007275225551

namespace A038290

/-- `A000079(2*A002262(n))*A038281(n)` -/
def P13556808007275225551.Spec : Prop :=
  ∀ n, P13556808007275225551.a n = A038290 n

end A038290

/-! ## A038290.P8167933658381151991

`A038242(n)/A038218(n)*A038242(n)`
-/

namespace A038290.P8167933658381151991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038242 n : ℚ) / (A038218 n : ℚ) * (A038242 n : ℚ)

end

end A038290.P8167933658381151991

namespace A038290

/-- `A038242(n)/A038218(n)*A038242(n)` -/
def P8167933658381151991.Spec : Prop :=
  ∀ n, P8167933658381151991.a n = (A038290 n : ℚ)

end A038290

/-! ## A038290.P2926230533717264495

`A038284(n)/A038281(n)*A038284(n)`
-/

namespace A038290.P2926230533717264495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038284 n : ℚ) / (A038281 n : ℚ) * (A038284 n : ℚ)

end

end A038290.P2926230533717264495

namespace A038290

/-- `A038284(n)/A038281(n)*A038284(n)` -/
def P2926230533717264495.Spec : Prop :=
  ∀ n, P2926230533717264495.a n = (A038290 n : ℚ)

end A038290

/-! ## A038290.P1472856049218027613

`A011782(A002260(n+1))²*A038281(n)`
-/

namespace A038290.P1472856049218027613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat ^ 2 * A038281 n

end

end A038290.P1472856049218027613

namespace A038290

/-- `A011782(A002260(n+1))²*A038281(n)` -/
def P1472856049218027613.Spec : Prop :=
  ∀ n, P1472856049218027613.a n = A038290 n

end A038290

/-! ## A038290.P13460408910775936393

`A013619(n)*A130321(n)*A130321(n)²`
-/

namespace A038290.P13460408910775936393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013619 n * A130321 n * A130321 n ^ 2

end

end A038290.P13460408910775936393

namespace A038290

/-- `A013619(n)*A130321(n)*A130321(n)²` -/
def P13460408910775936393.Spec : Prop :=
  ∀ n, P13460408910775936393.a n = A038290 n

end A038290

/-!
# A038291: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*1^j.

The programs for A038291, the canonical program `A038291.P18226427610410447064` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038291 has offset 0).

The definition of A038291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038291.P18226427610410447064

`A027465(n)*A140303(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038291

/-- `A027465(n)*A140303(n)` -/
def P18226427610410447064.Spec : Prop :=
  ∀ n, P18226427610410447064.a n = A038291 n

theorem P18226427610410447064.correct : P18226427610410447064.Spec := by
  intro n
  simp only [A038291]

end A038291

/-! ## A038291.P11884252994597387947

`A140303(n)²*A007318(n)`
-/

namespace A038291.P11884252994597387947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A007318 n

end

end A038291.P11884252994597387947

namespace A038291

/-- `A140303(n)²*A007318(n)` -/
def P11884252994597387947.Spec : Prop :=
  ∀ n, P11884252994597387947.a n = A038291 n

end A038291

/-! ## A038291.P3265623064117627825

`A007318(n)*A000244(A025581(n))²`
-/

namespace A038291.P3265623064117627825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000244 (A025581 n).toNat ^ 2

end

end A038291.P3265623064117627825

namespace A038291

/-- `A007318(n)*A000244(A025581(n))²` -/
def P3265623064117627825.Spec : Prop :=
  ∀ n, P3265623064117627825.a n = A038291 n

end A038291

/-! ## A038291.P11097434930047645797

`A000244(2*A025581(n))*A007318(n)`
-/

namespace A038291.P11097434930047645797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * A025581 n).toNat * A007318 n

end

end A038291.P11097434930047645797

namespace A038291

/-- `A000244(2*A025581(n))*A007318(n)` -/
def P11097434930047645797.Spec : Prop :=
  ∀ n, P11097434930047645797.a n = A038291 n

end A038291

/-! ## A038291.P15183800505812865393

`A027465(n)/A007318(n)*A027465(n)`
-/

namespace A038291.P15183800505812865393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n : ℚ) / (A007318 n : ℚ) * (A027465 n : ℚ)

end

end A038291.P15183800505812865393

namespace A038291

/-- `A027465(n)/A007318(n)*A027465(n)` -/
def P15183800505812865393.Spec : Prop :=
  ∀ n, P15183800505812865393.a n = (A038291 n : ℚ)

end A038291

/-! ## A038291.P9452715165995810381

`A038220(n)/A013611(n)*A038220(n)`
-/

namespace A038291.P9452715165995810381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (A013611 n : ℚ) * (A038220 n : ℚ)

end

end A038291.P9452715165995810381

namespace A038291

/-- `A038220(n)/A013611(n)*A038220(n)` -/
def P9452715165995810381.Spec : Prop :=
  ∀ n, P9452715165995810381.a n = (A038291 n : ℚ)

end A038291

/-! ## A038291.P2290241966006190525

`A027465(n)/A038207(n)*A038255(n)`
-/

namespace A038291.P2290241966006190525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n : ℚ) / (A038207 n : ℚ) * (A038255 n : ℚ)

end

end A038291.P2290241966006190525

namespace A038291

/-- `A027465(n)/A038207(n)*A038255(n)` -/
def P2290241966006190525.Spec : Prop :=
  ∀ n, P2290241966006190525.a n = (A038291 n : ℚ)

end A038291

/-! ## A038291.P15241198227921646810

`A038255(n)/A038231(n)*A038255(n)`
-/

namespace A038291.P15241198227921646810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038255 n : ℚ) / (A038231 n : ℚ) * (A038255 n : ℚ)

end

end A038291.P15241198227921646810

namespace A038291

/-- `A038255(n)/A038231(n)*A038255(n)` -/
def P15241198227921646810.Spec : Prop :=
  ∀ n, P15241198227921646810.a n = (A038291 n : ℚ)

end A038291

/-! ## A038291.P953568350001100263

`A164942(n)/A007318(n)*A164942(n)`
-/

namespace A038291.P953568350001100263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164942 n : ℚ) / (A007318 n : ℚ) * (A164942 n : ℚ)

end

end A038291.P953568350001100263

namespace A038291

/-- `A164942(n)/A007318(n)*A164942(n)` -/
def P953568350001100263.Spec : Prop :=
  ∀ n, P953568350001100263.a n = (A038291 n : ℚ)

end A038291

/-! ## A038291.P6270116726012177158

`A303901(n)/A013611(n)*A303901(n)`
-/

namespace A038291.P6270116726012177158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303901 n : ℚ) / (A013611 n : ℚ) * (A303901 n : ℚ)

end

end A038291.P6270116726012177158

namespace A038291

/-- `A303901(n)/A013611(n)*A303901(n)` -/
def P6270116726012177158.Spec : Prop :=
  ∀ n, P6270116726012177158.a n = (A038291 n : ℚ)

end A038291

/-! ## A038291.P7680270847737473609

`(A038255(n)/A038207(n))²*A007318(n)`
-/

namespace A038291.P7680270847737473609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038255 n : ℚ) / (A038207 n : ℚ)) ^ 2 * (A007318 n : ℚ)

end

end A038291.P7680270847737473609

namespace A038291

/-- `(A038255(n)/A038207(n))²*A007318(n)` -/
def P7680270847737473609.Spec : Prop :=
  ∀ n, P7680270847737473609.a n = (A038291 n : ℚ)

end A038291

/-! ## A038291.P13867610060769299873

`(A027465(n)/A038207(n))²*A038231(n)`
-/

namespace A038291.P13867610060769299873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027465 n : ℚ) / (A038207 n : ℚ)) ^ 2 * (A038231 n : ℚ)

end

end A038291.P13867610060769299873

namespace A038291

/-- `(A027465(n)/A038207(n))²*A038231(n)` -/
def P13867610060769299873.Spec : Prop :=
  ∀ n, P13867610060769299873.a n = (A038291 n : ℚ)

end A038291

/-! ## A038291.P17950444367779567185

`A013616(A061579(n))`
-/

namespace A038291.P17950444367779567185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013616 (A061579 n).toNat

end

end A038291.P17950444367779567185

namespace A038291

/-- `A013616(A061579(n))` -/
def P17950444367779567185.Spec : Prop :=
  ∀ n, P17950444367779567185.a n = A038291 n

end A038291

/-! ## A038291.P3468290883764819213

`A013616(A038722(n+1)-1)`
-/

namespace A038291.P3468290883764819213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013616 (A038722 (n + 1) - 1).toNat

end

end A038291.P3468290883764819213

namespace A038291

/-- `A013616(A038722(n+1)-1)` -/
def P3468290883764819213.Spec : Prop :=
  ∀ n, P3468290883764819213.a n = A038291 n

end A038291

/-! ## A038291.P3918949812018280309

`A013616(A038722(n+2))`
-/

namespace A038291.P3918949812018280309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013616 (A038722 (n + 2)).toNat

end

end A038291.P3918949812018280309

namespace A038291

/-- `A013616(A038722(n+2))` -/
def P3918949812018280309.Spec : Prop :=
  ∀ n, P3918949812018280309.a n = A038291 n

end A038291

/-! ## A038291.P4615400728344443502

`A038292(n)/A059268(n)`
-/

namespace A038291.P4615400728344443502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038292 n : ℚ) / (A059268 n : ℚ)

end

end A038291.P4615400728344443502

namespace A038291

/-- `A038292(n)/A059268(n)` -/
def P4615400728344443502.Spec : Prop :=
  ∀ n, P4615400728344443502.a n = (A038291 n : ℚ)

end A038291

/-! ## A038291.P7957860249806098065

`gcd(A038292(n), A038293(n))`
-/

namespace A038291.P7957860249806098065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038292 n) (A038293 n)

end

end A038291.P7957860249806098065

namespace A038291

/-- `gcd(A038292(n), A038293(n))` -/
def P7957860249806098065.Spec : Prop :=
  ∀ n, (P7957860249806098065.a n : ℤ) = A038291 n

end A038291

/-! ## A038291.P16890854428540830034

`A038294(n)/A059268(n)²`
-/

namespace A038291.P16890854428540830034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038294 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038291.P16890854428540830034

namespace A038291

/-- `A038294(n)/A059268(n)²` -/
def P16890854428540830034.Spec : Prop :=
  ∀ n, P16890854428540830034.a n = (A038291 n : ℚ)

end A038291

/-! ## A038291.P4871179635292369105

`A038292(n)/A038294(n)*A038292(n)`
-/

namespace A038291.P4871179635292369105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038292 n : ℚ) / (A038294 n : ℚ) * (A038292 n : ℚ)

end

end A038291.P4871179635292369105

namespace A038291

/-- `A038292(n)/A038294(n)*A038292(n)` -/
def P4871179635292369105.Spec : Prop :=
  ∀ n, P4871179635292369105.a n = (A038291 n : ℚ)

end A038291

/-! ## A038291.P11123764878119066164

`gcd(A038294(n), A038295(n))`
-/

namespace A038291.P11123764878119066164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038294 n) (A038295 n)

end

end A038291.P11123764878119066164

namespace A038291

/-- `gcd(A038294(n), A038295(n))` -/
def P11123764878119066164.Spec : Prop :=
  ∀ n, (P11123764878119066164.a n : ℤ) = A038291 n

end A038291

/-!
# A038292: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*2^j.

The programs for A038292, the canonical program `A038292.P13230035069150523367` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038292 has offset 0).

The definition of A038292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4769 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038292.P13230035069150523367

`A038291(n)*A059268(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038292

/-- `A038291(n)*A059268(n)` -/
def P13230035069150523367.Spec : Prop :=
  ∀ n, P13230035069150523367.a n = A038292 n

theorem P13230035069150523367.correct : P13230035069150523367.Spec := by
  intro n
  simp only [A038292]

end A038292

/-! ## A038292.P3429654460204806890

`A038220(n)*A140303(n)`
-/

namespace A038292.P3429654460204806890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n * A140303 n

end

end A038292.P3429654460204806890

namespace A038292

/-- `A038220(n)*A140303(n)` -/
def P3429654460204806890.Spec : Prop :=
  ∀ n, P3429654460204806890.a n = A038292 n

end A038292

/-! ## A038292.P8449047506462412571

`A027465(n)*A175840(n)`
-/

namespace A038292.P8449047506462412571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A175840 n

end

end A038292.P8449047506462412571

namespace A038292

/-- `A027465(n)*A175840(n)` -/
def P8449047506462412571.Spec : Prop :=
  ∀ n, P8449047506462412571.a n = A038292 n

end A038292

/-! ## A038292.P3514082163970450844

`lcm(A013609(n), A038291(n))`
-/

namespace A038292.P3514082163970450844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A038291 n)

end

end A038292.P3514082163970450844

namespace A038292

/-- `lcm(A013609(n), A038291(n))` -/
def P3514082163970450844.Spec : Prop :=
  ∀ n, (P3514082163970450844.a n : ℤ) = A038292 n

end A038292

/-! ## A038292.P1915553296710817260

`A140303(n)²*A013609(n)`
-/

namespace A038292.P1915553296710817260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A013609 n

end

end A038292.P1915553296710817260

namespace A038292

/-- `A140303(n)²*A013609(n)` -/
def P1915553296710817260.Spec : Prop :=
  ∀ n, P1915553296710817260.a n = A038292 n

end A038292

/-! ## A038292.P7754428244140535717

`2^A002262(n)*A038291(n)`
-/

namespace A038292.P7754428244140535717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A038291 n : ℚ)

end

end A038292.P7754428244140535717

namespace A038292

/-- `2^A002262(n)*A038291(n)` -/
def P7754428244140535717.Spec : Prop :=
  ∀ n, P7754428244140535717.a n = (A038292 n : ℚ)

end A038292

/-! ## A038292.P13192173982030940718

`A038220(n)/A013609(n)*A038220(n)`
-/

namespace A038292.P13192173982030940718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (A013609 n : ℚ) * (A038220 n : ℚ)

end

end A038292.P13192173982030940718

namespace A038292

/-- `A038220(n)/A013609(n)*A038220(n)` -/
def P13192173982030940718.Spec : Prop :=
  ∀ n, P13192173982030940718.a n = (A038292 n : ℚ)

end A038292

/-! ## A038292.P10464970574710129702

`A038220(n)/A013611(n)*A038222(n)`
-/

namespace A038292.P10464970574710129702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (A013611 n : ℚ) * (A038222 n : ℚ)

end

end A038292.P10464970574710129702

namespace A038292

/-- `A038220(n)/A013611(n)*A038222(n)` -/
def P10464970574710129702.Spec : Prop :=
  ∀ n, P10464970574710129702.a n = (A038292 n : ℚ)

end A038292

/-! ## A038292.P2409534175107285600

`A038256(n)/A038232(n)*A038256(n)`
-/

namespace A038292.P2409534175107285600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038256 n : ℚ) / (A038232 n : ℚ) * (A038256 n : ℚ)

end

end A038292.P2409534175107285600

namespace A038292

/-- `A038256(n)/A038232(n)*A038256(n)` -/
def P2409534175107285600.Spec : Prop :=
  ∀ n, P2409534175107285600.a n = (A038292 n : ℚ)

end A038292

/-! ## A038292.P6268693749743371396

`(A027465(n)/A007318(n))²*A013609(n)`
-/

namespace A038292.P6268693749743371396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027465 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A013609 n : ℚ)

end

end A038292.P6268693749743371396

namespace A038292

/-- `(A027465(n)/A007318(n))²*A013609(n)` -/
def P6268693749743371396.Spec : Prop :=
  ∀ n, P6268693749743371396.a n = (A038292 n : ℚ)

end A038292

/-! ## A038292.P5715968521261543165

`A038215(A061579(n))`
-/

namespace A038292.P5715968521261543165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038215 (A061579 n).toNat

end

end A038292.P5715968521261543165

namespace A038292

/-- `A038215(A061579(n))` -/
def P5715968521261543165.Spec : Prop :=
  ∀ n, P5715968521261543165.a n = A038292 n

end A038292

/-! ## A038292.P8931378234756760940

`A038258(n)/A038238(n)*A038258(n)`
-/

namespace A038292.P8931378234756760940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038258 n : ℚ) / (A038238 n : ℚ) * (A038258 n : ℚ)

end

end A038292.P8931378234756760940

namespace A038292

/-- `A038258(n)/A038238(n)*A038258(n)` -/
def P8931378234756760940.Spec : Prop :=
  ∀ n, P8931378234756760940.a n = (A038292 n : ℚ)

end A038292

/-! ## A038292.P3609412171929829072

`A038294(n)/A059268(n)`
-/

namespace A038292.P3609412171929829072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038294 n : ℚ) / (A059268 n : ℚ)

end

end A038292.P3609412171929829072

namespace A038292

/-- `A038294(n)/A059268(n)` -/
def P3609412171929829072.Spec : Prop :=
  ∀ n, P3609412171929829072.a n = (A038292 n : ℚ)

end A038292

/-! ## A038292.P3881618122216846744

`sqrt(A038291(n))*sqrt(A038294(n))`
-/

namespace A038292.P3881618122216846744
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038291 n : ℝ) * Real.sqrt (A038294 n : ℝ)

end

end A038292.P3881618122216846744

namespace A038292

/-- `sqrt(A038291(n))*sqrt(A038294(n))` -/
def P3881618122216846744.Spec : Prop :=
  ∀ n, P3881618122216846744.a n = (A038292 n : ℝ)

end A038292

/-! ## A038292.P17386970224283652757

`gcd(A038294(n), A038296(n))`
-/

namespace A038292.P17386970224283652757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038294 n) (A038296 n)

end

end A038292.P17386970224283652757

namespace A038292

/-- `gcd(A038294(n), A038296(n))` -/
def P17386970224283652757.Spec : Prop :=
  ∀ n, (P17386970224283652757.a n : ℤ) = A038292 n

end A038292

/-! ## A038292.P16709075290522307863

`A038298(n)/A059268(n)²`
-/

namespace A038292.P16709075290522307863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038298 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038292.P16709075290522307863

namespace A038292

/-- `A038298(n)/A059268(n)²` -/
def P16709075290522307863.Spec : Prop :=
  ∀ n, P16709075290522307863.a n = (A038292 n : ℚ)

end A038292

/-! ## A038292.P17179997614254981475

`A038294(n)/A038298(n)*A038294(n)`
-/

namespace A038292.P17179997614254981475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038294 n : ℚ) / (A038298 n : ℚ) * (A038294 n : ℚ)

end

end A038292.P17179997614254981475

namespace A038292

/-- `A038294(n)/A038298(n)*A038294(n)` -/
def P17179997614254981475.Spec : Prop :=
  ∀ n, P17179997614254981475.a n = (A038292 n : ℚ)

end A038292

/-! ## A038292.P2318931161796883607

`gcd(A038298(n), A038300(n))`
-/

namespace A038292.P2318931161796883607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038298 n) (A038300 n)

end

end A038292.P2318931161796883607

namespace A038292

/-- `gcd(A038298(n), A038300(n))` -/
def P2318931161796883607.Spec : Prop :=
  ∀ n, (P2318931161796883607.a n : ℤ) = A038292 n

end A038292

/-! ## A038292.P1180401718725748340

`A038220(n)²/A013609(n)`
-/

namespace A038292.P1180401718725748340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n ^ 2 : ℚ) / (A013609 n : ℚ)

end

end A038292.P1180401718725748340

namespace A038292

/-- `A038220(n)²/A013609(n)` -/
def P1180401718725748340.Spec : Prop :=
  ∀ n, P1180401718725748340.a n = (A038292 n : ℚ)

end A038292

/-! ## A038292.P3001787889309735602

`A038220(n)²/gcd(A038208(n), A038220(n))`
-/

namespace A038292.P3001787889309735602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n ^ 2 : ℚ) / (Int.gcd (A038208 n) (A038220 n) : ℚ)

end

end A038292.P3001787889309735602

namespace A038292

/-- `A038220(n)²/gcd(A038208(n), A038220(n))` -/
def P3001787889309735602.Spec : Prop :=
  ∀ n, P3001787889309735602.a n = (A038292 n : ℚ)

end A038292

/-!
# A038293: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*3^j.

The programs for A038293, the canonical program `A038293.P2198873287583605851` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038293 has offset 0).

The definition of A038293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038293.P2198873287583605851

`A027465(n)*A098355(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038293

/-- `A027465(n)*A098355(n)` -/
def P2198873287583605851.Spec : Prop :=
  ∀ n, P2198873287583605851.a n = A038293 n

theorem P2198873287583605851.correct : P2198873287583605851.Spec := by
  intro n
  simp only [A038293]

end A038293

/-! ## A038293.P17500725413262940760

`A038221(n)*A140303(n)`
-/

namespace A038293.P17500725413262940760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 n * A140303 n

end

end A038293.P17500725413262940760

namespace A038293

/-- `A038221(n)*A140303(n)` -/
def P17500725413262940760.Spec : Prop :=
  ∀ n, P17500725413262940760.a n = A038293 n

end A038293

/-! ## A038293.P6207277590714781045

`A140303(n)²*A013610(n)`
-/

namespace A038293.P6207277590714781045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A013610 n

end

end A038293.P6207277590714781045

namespace A038293

/-- `A140303(n)²*A013610(n)` -/
def P6207277590714781045.Spec : Prop :=
  ∀ n, P6207277590714781045.a n = A038293 n

end A038293

/-! ## A038293.P10605635282907719381

`3^A003056(n)*A027465(n)`
-/

namespace A038293.P10605635282907719381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A003056 n : ℤ) * (A027465 n : ℚ)

end

end A038293.P10605635282907719381

namespace A038293

/-- `3^A003056(n)*A027465(n)` -/
def P10605635282907719381.Spec : Prop :=
  ∀ n, P10605635282907719381.a n = (A038293 n : ℚ)

end A038293

/-! ## A038293.P11545953214434102024

`3^A002262(n)*A038291(n)`
-/

namespace A038293.P11545953214434102024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A002262 n : ℤ) * (A038291 n : ℚ)

end

end A038293.P11545953214434102024

namespace A038293

/-- `3^A002262(n)*A038291(n)` -/
def P11545953214434102024.Spec : Prop :=
  ∀ n, P11545953214434102024.a n = (A038293 n : ℚ)

end A038293

/-! ## A038293.P3953323136005905736

`A027465(n-A002262(n))*A027465(n)`
-/

namespace A038293.P3953323136005905736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 ((n : ℤ) - A002262 n).toNat * A027465 n

end

end A038293.P3953323136005905736

namespace A038293

/-- `A027465(n-A002262(n))*A027465(n)` -/
def P3953323136005905736.Spec : Prop :=
  ∀ n, P3953323136005905736.a n = A038293 n

end A038293

/-! ## A038293.P17512019381439189784

`A038221(n)/A013610(n)*A038221(n)`
-/

namespace A038293.P17512019381439189784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n : ℚ) / (A013610 n : ℚ) * (A038221 n : ℚ)

end

end A038293.P17512019381439189784

namespace A038293

/-- `A038221(n)/A013610(n)*A038221(n)` -/
def P17512019381439189784.Spec : Prop :=
  ∀ n, P17512019381439189784.a n = (A038293 n : ℚ)

end A038293

/-! ## A038293.P16212726239580586777

`A038257(n)/A038233(n)*A038257(n)`
-/

namespace A038293.P16212726239580586777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038257 n : ℚ) / (A038233 n : ℚ) * (A038257 n : ℚ)

end

end A038293.P16212726239580586777

namespace A038293

/-- `A038257(n)/A038233(n)*A038257(n)` -/
def P16212726239580586777.Spec : Prop :=
  ∀ n, P16212726239580586777.a n = (A038293 n : ℚ)

end A038293

/-! ## A038293.P2378229054086938359

`(A027465(n)/A007318(n))²*A013610(n)`
-/

namespace A038293.P2378229054086938359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027465 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A013610 n : ℚ)

end

end A038293.P2378229054086938359

namespace A038293

/-- `(A027465(n)/A007318(n))²*A013610(n)` -/
def P2378229054086938359.Spec : Prop :=
  ∀ n, P2378229054086938359.a n = (A038293 n : ℚ)

end A038293

/-! ## A038293.P6322392225314512193

`(A038220(n)/A013609(n))²*A013610(n)`
-/

namespace A038293.P6322392225314512193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038220 n : ℚ) / (A013609 n : ℚ)) ^ 2 * (A013610 n : ℚ)

end

end A038293.P6322392225314512193

namespace A038293

/-- `(A038220(n)/A013609(n))²*A013610(n)` -/
def P6322392225314512193.Spec : Prop :=
  ∀ n, P6322392225314512193.a n = (A038293 n : ℚ)

end A038293

/-! ## A038293.P9509489688625288907

`(A038222(n)/A013611(n))²*A013610(n)`
-/

namespace A038293.P9509489688625288907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038222 n : ℚ) / (A013611 n : ℚ)) ^ 2 * (A013610 n : ℚ)

end

end A038293.P9509489688625288907

namespace A038293

/-- `(A038222(n)/A013611(n))²*A013610(n)` -/
def P9509489688625288907.Spec : Prop :=
  ∀ n, P9509489688625288907.a n = (A038293 n : ℚ)

end A038293

/-! ## A038293.P1926330738961996582

`A038227(A061579(n))`
-/

namespace A038293.P1926330738961996582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038227 (A061579 n).toNat

end

end A038293.P1926330738961996582

namespace A038293

/-- `A038227(A061579(n))` -/
def P1926330738961996582.Spec : Prop :=
  ∀ n, P1926330738961996582.a n = A038293 n

end A038293

/-! ## A038293.P5172789333941503350

`A038227(A114327(n)+n)`
-/

namespace A038293.P5172789333941503350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038227 (A114327 n + (n : ℤ)).toNat

end

end A038293.P5172789333941503350

namespace A038293

/-- `A038227(A114327(n)+n)` -/
def P5172789333941503350.Spec : Prop :=
  ∀ n, P5172789333941503350.a n = A038293 n

end A038293

/-! ## A038293.P11479058342707483380

`A038227(A038722(n+1)-1)`
-/

namespace A038293.P11479058342707483380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038227 (A038722 (n + 1) - 1).toNat

end

end A038293.P11479058342707483380

namespace A038293

/-- `A038227(A038722(n+1)-1)` -/
def P11479058342707483380.Spec : Prop :=
  ∀ n, P11479058342707483380.a n = A038293 n

end A038293

/-! ## A038293.P4002954937208866523

`A038296(n)/A059268(n)`
-/

namespace A038293.P4002954937208866523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038296 n : ℚ) / (A059268 n : ℚ)

end

end A038293.P4002954937208866523

namespace A038293

/-- `A038296(n)/A059268(n)` -/
def P4002954937208866523.Spec : Prop :=
  ∀ n, P4002954937208866523.a n = (A038293 n : ℚ)

end A038293

/-! ## A038293.P5763403302137958165

`gcd(A038296(n), A038299(n))`
-/

namespace A038293.P5763403302137958165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038296 n) (A038299 n)

end

end A038293.P5763403302137958165

namespace A038293

/-- `gcd(A038296(n), A038299(n))` -/
def P5763403302137958165.Spec : Prop :=
  ∀ n, (P5763403302137958165.a n : ℤ) = A038293 n

end A038293

/-! ## A038293.P16812025005995095607

`sqrt(A038291(n))*sqrt(A038299(n))`
-/

namespace A038293.P16812025005995095607
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038291 n : ℝ) * Real.sqrt (A038299 n : ℝ)

end

end A038293.P16812025005995095607

namespace A038293

/-- `sqrt(A038291(n))*sqrt(A038299(n))` -/
def P16812025005995095607.Spec : Prop :=
  ∀ n, P16812025005995095607.a n = (A038293 n : ℝ)

end A038293

/-! ## A038293.P13012498468348140675

`A038302(n)/A059268(n)²`
-/

namespace A038293.P13012498468348140675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038302 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038293.P13012498468348140675

namespace A038293

/-- `A038302(n)/A059268(n)²` -/
def P13012498468348140675.Spec : Prop :=
  ∀ n, P13012498468348140675.a n = (A038293 n : ℚ)

end A038293

/-! ## A038293.P3902762027270076702

`A038221(n)²/A013610(n)`
-/

namespace A038293.P3902762027270076702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n ^ 2 : ℚ) / (A013610 n : ℚ)

end

end A038293.P3902762027270076702

namespace A038293

/-- `A038221(n)²/A013610(n)` -/
def P3902762027270076702.Spec : Prop :=
  ∀ n, P3902762027270076702.a n = (A038293 n : ℚ)

end A038293

/-! ## A038293.P15133745791551898607

`A038221(n)²/gcd(A013619(n), A038221(n))`
-/

namespace A038293.P15133745791551898607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n ^ 2 : ℚ) / (Int.gcd (A013619 n) (A038221 n) : ℚ)

end

end A038293.P15133745791551898607

namespace A038293

/-- `A038221(n)²/gcd(A013619(n), A038221(n))` -/
def P15133745791551898607.Spec : Prop :=
  ∀ n, P15133745791551898607.a n = (A038293 n : ℚ)

end A038293

/-!
# A038294: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*4^j.

The programs for A038294, the canonical program `A038294.P370950949061120703` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038294 has offset 0).

The definition of A038294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038294.P370950949061120703

`A038292(n)*A059268(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A038294

/-- `A038292(n)*A059268(n)` -/
def P370950949061120703.Spec : Prop :=
  ∀ n, P370950949061120703.a n = A038294 n

theorem P370950949061120703.correct : P370950949061120703.Spec := by
  intro n
  simp only [A038294]

end A038294

/-! ## A038294.P1532500980639848396

`A038222(n)*A140303(n)`
-/

namespace A038294.P1532500980639848396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038222 n * A140303 n

end

end A038294.P1532500980639848396

namespace A038294

/-- `A038222(n)*A140303(n)` -/
def P1532500980639848396.Spec : Prop :=
  ∀ n, P1532500980639848396.a n = A038294 n

end A038294

/-! ## A038294.P1980232807905155583

`A038220(n)*A175840(n)`
-/

namespace A038294.P1980232807905155583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n * A175840 n

end

end A038294.P1980232807905155583

namespace A038294

/-- `A038220(n)*A175840(n)` -/
def P1980232807905155583.Spec : Prop :=
  ∀ n, P1980232807905155583.a n = A038294 n

end A038294

/-! ## A038294.P3497425000594646769

`A027465(n)*A356036(n)`
-/

namespace A038294.P3497425000594646769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A356036 n

end

end A038294.P3497425000594646769

namespace A038294

/-- `A027465(n)*A356036(n)` -/
def P3497425000594646769.Spec : Prop :=
  ∀ n, P3497425000594646769.a n = A038294 n

end A038294

/-! ## A038294.P12991041541968083976

`lcm(A013611(n), A038291(n))`
-/

namespace A038294.P12991041541968083976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013611 n) (A038291 n)

end

end A038294.P12991041541968083976

namespace A038294

/-- `lcm(A013611(n), A038291(n))` -/
def P12991041541968083976.Spec : Prop :=
  ∀ n, (P12991041541968083976.a n : ℤ) = A038294 n

end A038294

/-! ## A038294.P6453040970944022805

`lcm(A038222(n), A038292(n))`
-/

namespace A038294.P6453040970944022805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038222 n) (A038292 n)

end

end A038294.P6453040970944022805

namespace A038294

/-- `lcm(A038222(n), A038292(n))` -/
def P6453040970944022805.Spec : Prop :=
  ∀ n, (P6453040970944022805.a n : ℤ) = A038294 n

end A038294

/-! ## A038294.P3689743810093952215

`A059268(n)²*A038291(n)`
-/

namespace A038294.P3689743810093952215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038291 n

end

end A038294.P3689743810093952215

namespace A038294

/-- `A059268(n)²*A038291(n)` -/
def P3689743810093952215.Spec : Prop :=
  ∀ n, P3689743810093952215.a n = A038294 n

end A038294

/-! ## A038294.P11871466720089941242

`A140303(n)²*A013611(n)`
-/

namespace A038294.P11871466720089941242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A013611 n

end

end A038294.P11871466720089941242

namespace A038294

/-- `A140303(n)²*A013611(n)` -/
def P11871466720089941242.Spec : Prop :=
  ∀ n, P11871466720089941242.a n = A038294 n

end A038294

/-! ## A038294.P931682415377908668

`A175840(n)²*A007318(n)`
-/

namespace A038294.P931682415377908668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n ^ 2 * A007318 n

end

end A038294.P931682415377908668

namespace A038294

/-- `A175840(n)²*A007318(n)` -/
def P931682415377908668.Spec : Prop :=
  ∀ n, P931682415377908668.a n = A038294 n

end A038294

/-! ## A038294.P13789504819283582289

`4^A002262(n)*A038291(n)`
-/

namespace A038294.P13789504819283582289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A002262 n : ℤ) * (A038291 n : ℚ)

end

end A038294.P13789504819283582289

namespace A038294

/-- `4^A002262(n)*A038291(n)` -/
def P13789504819283582289.Spec : Prop :=
  ∀ n, P13789504819283582289.a n = (A038294 n : ℚ)

end A038294

/-! ## A038294.P8155677683332215461

`A038220(n)/A007318(n)*A038220(n)`
-/

namespace A038294.P8155677683332215461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (A007318 n : ℚ) * (A038220 n : ℚ)

end

end A038294.P8155677683332215461

namespace A038294

/-- `A038220(n)/A007318(n)*A038220(n)` -/
def P8155677683332215461.Spec : Prop :=
  ∀ n, P8155677683332215461.a n = (A038294 n : ℚ)

end A038294

/-! ## A038294.P14423495731627917020

`A038222(n)/A013611(n)*A038222(n)`
-/

namespace A038294.P14423495731627917020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038222 n : ℚ) / (A013611 n : ℚ) * (A038222 n : ℚ)

end

end A038294.P14423495731627917020

namespace A038294

/-- `A038222(n)/A013611(n)*A038222(n)` -/
def P14423495731627917020.Spec : Prop :=
  ∀ n, P14423495731627917020.a n = (A038294 n : ℚ)

end A038294

/-! ## A038294.P250736884288187270

`A038258(n)/A038234(n)*A038258(n)`
-/

namespace A038294.P250736884288187270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038258 n : ℚ) / (A038234 n : ℚ) * (A038258 n : ℚ)

end

end A038294.P250736884288187270

namespace A038294

/-- `A038258(n)/A038234(n)*A038258(n)` -/
def P250736884288187270.Spec : Prop :=
  ∀ n, P250736884288187270.a n = (A038294 n : ℚ)

end A038294

/-! ## A038294.P16008904985674555890

`(A038220(n)/A013609(n))²*A013611(n)`
-/

namespace A038294.P16008904985674555890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038220 n : ℚ) / (A013609 n : ℚ)) ^ 2 * (A013611 n : ℚ)

end

end A038294.P16008904985674555890

namespace A038294

/-- `(A038220(n)/A013609(n))²*A013611(n)` -/
def P16008904985674555890.Spec : Prop :=
  ∀ n, P16008904985674555890.a n = (A038294 n : ℚ)

end A038294

/-! ## A038294.P9752268438484287947

`A038220(n)/sqrt(A008459(n))*A038220(n)`
-/

namespace A038294.P9752268438484287947
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℝ) / Real.sqrt (A008459 n : ℝ) * (A038220 n : ℝ)

end

end A038294.P9752268438484287947

namespace A038294

/-- `A038220(n)/sqrt(A008459(n))*A038220(n)` -/
def P9752268438484287947.Spec : Prop :=
  ∀ n, P9752268438484287947.a n = (A038294 n : ℝ)

end A038294

/-! ## A038294.P7321340016266115424

`A038239(A061579(n))`
-/

namespace A038294.P7321340016266115424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038239 (A061579 n).toNat

end

end A038294.P7321340016266115424

namespace A038294

/-- `A038239(A061579(n))` -/
def P7321340016266115424.Spec : Prop :=
  ∀ n, P7321340016266115424.a n = A038294 n

end A038294

/-! ## A038294.P12661242037719256193

`A038298(n)/A059268(n)`
-/

namespace A038294.P12661242037719256193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038298 n : ℚ) / (A059268 n : ℚ)

end

end A038294.P12661242037719256193

namespace A038294

/-- `A038298(n)/A059268(n)` -/
def P12661242037719256193.Spec : Prop :=
  ∀ n, P12661242037719256193.a n = (A038294 n : ℚ)

end A038294

/-! ## A038294.P365753372790153062

`A038296(n)/A038299(n)*A038296(n)`
-/

namespace A038294.P365753372790153062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038296 n : ℚ) / (A038299 n : ℚ) * (A038296 n : ℚ)

end

end A038294.P365753372790153062

namespace A038294

/-- `A038296(n)/A038299(n)*A038296(n)` -/
def P365753372790153062.Spec : Prop :=
  ∀ n, P365753372790153062.a n = (A038294 n : ℚ)

end A038294

/-! ## A038294.P9004064115801004846

`gcd(A038298(n), A038302(n))`
-/

namespace A038294.P9004064115801004846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038298 n) (A038302 n)

end

end A038294.P9004064115801004846

namespace A038294

/-- `gcd(A038298(n), A038302(n))` -/
def P9004064115801004846.Spec : Prop :=
  ∀ n, (P9004064115801004846.a n : ℤ) = A038294 n

end A038294

/-! ## A038294.P11007019494199964774

`A038220(n)²/A007318(n)`
-/

namespace A038294.P11007019494199964774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n ^ 2 : ℚ) / (A007318 n : ℚ)

end

end A038294.P11007019494199964774

namespace A038294

/-- `A038220(n)²/A007318(n)` -/
def P11007019494199964774.Spec : Prop :=
  ∀ n, P11007019494199964774.a n = (A038294 n : ℚ)

end A038294

/-!
# A038295: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*5^j.

The programs for A038295, the canonical program `A038295.P4887945260608104514` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038295 has offset 0).

The definition of A038295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038295.P4887945260608104514

`A027465(n)*A120027(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038295

/-- `A027465(n)*A120027(n)` -/
def P4887945260608104514.Spec : Prop :=
  ∀ n, P4887945260608104514.a n = A038295 n

theorem P4887945260608104514.correct : P4887945260608104514.Spec := by
  intro n
  simp only [A038295]

end A038295

/-! ## A038295.P14111084285776272252

`A013622(n)*A140303(n)`
-/

namespace A038295.P14111084285776272252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 n * A140303 n

end

end A038295.P14111084285776272252

namespace A038295

/-- `A013622(n)*A140303(n)` -/
def P14111084285776272252.Spec : Prop :=
  ∀ n, P14111084285776272252.a n = A038295 n

end A038295

/-! ## A038295.P10837856070869021433

`lcm(A013612(n), A038291(n))`
-/

namespace A038295.P10837856070869021433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038291 n)

end

end A038295.P10837856070869021433

namespace A038295

/-- `lcm(A013612(n), A038291(n))` -/
def P10837856070869021433.Spec : Prop :=
  ∀ n, (P10837856070869021433.a n : ℤ) = A038295 n

end A038295

/-! ## A038295.P10566560184311997089

`A140303(n)²*A013612(n)`
-/

namespace A038295.P10566560184311997089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A013612 n

end

end A038295.P10566560184311997089

namespace A038295

/-- `A140303(n)²*A013612(n)` -/
def P10566560184311997089.Spec : Prop :=
  ∀ n, P10566560184311997089.a n = A038295 n

end A038295

/-! ## A038295.P17032478567859162492

`5^A002262(n)*A038291(n)`
-/

namespace A038295.P17032478567859162492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A002262 n : ℤ) * (A038291 n : ℚ)

end

end A038295.P17032478567859162492

namespace A038295

/-- `5^A002262(n)*A038291(n)` -/
def P17032478567859162492.Spec : Prop :=
  ∀ n, P17032478567859162492.a n = (A038295 n : ℚ)

end A038295

/-! ## A038295.P9692655131310444003

`A013622(n)/A013612(n)*A013622(n)`
-/

namespace A038295.P9692655131310444003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013622 n : ℚ) / (A013612 n : ℚ) * (A013622 n : ℚ)

end

end A038295.P9692655131310444003

namespace A038295

/-- `A013622(n)/A013612(n)*A013622(n)` -/
def P9692655131310444003.Spec : Prop :=
  ∀ n, P9692655131310444003.a n = (A038295 n : ℚ)

end A038295

/-! ## A038295.P9875568726562447765

`A038259(n)/A013628(n)*A038259(n)`
-/

namespace A038295.P9875568726562447765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038259 n : ℚ) / (A013628 n : ℚ) * (A038259 n : ℚ)

end

end A038295.P9875568726562447765

namespace A038295

/-- `A038259(n)/A013628(n)*A038259(n)` -/
def P9875568726562447765.Spec : Prop :=
  ∀ n, P9875568726562447765.a n = (A038295 n : ℚ)

end A038295

/-! ## A038295.P919144252259655808

`(A027465(n)/A007318(n))²*A013612(n)`
-/

namespace A038295.P919144252259655808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027465 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A013612 n : ℚ)

end

end A038295.P919144252259655808

namespace A038295

/-- `(A027465(n)/A007318(n))²*A013612(n)` -/
def P919144252259655808.Spec : Prop :=
  ∀ n, P919144252259655808.a n = (A038295 n : ℚ)

end A038295

/-! ## A038295.P13780311372375631429

`(A038255(n)/A038207(n))²*A013612(n)`
-/

namespace A038295.P13780311372375631429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038255 n : ℚ) / (A038207 n : ℚ)) ^ 2 * (A013612 n : ℚ)

end

end A038295.P13780311372375631429

namespace A038295

/-- `(A038255(n)/A038207(n))²*A013612(n)` -/
def P13780311372375631429.Spec : Prop :=
  ∀ n, P13780311372375631429.a n = (A038295 n : ℚ)

end A038295

/-! ## A038295.P7237916697606518659

`A038251(A061579(n))`
-/

namespace A038295.P7237916697606518659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038251 (A061579 n).toNat

end

end A038295.P7237916697606518659

namespace A038295

/-- `A038251(A061579(n))` -/
def P7237916697606518659.Spec : Prop :=
  ∀ n, P7237916697606518659.a n = A038295 n

end A038295

/-! ## A038295.P15617389560289925503

`(A027467(n)/A038243(n))²*A013612(n)`
-/

namespace A038295.P15617389560289925503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027467 n : ℚ) / (A038243 n : ℚ)) ^ 2 * (A013612 n : ℚ)

end

end A038295.P15617389560289925503

namespace A038295

/-- `(A027467(n)/A038243(n))²*A013612(n)` -/
def P15617389560289925503.Spec : Prop :=
  ∀ n, P15617389560289925503.a n = (A038295 n : ℚ)

end A038295

/-! ## A038295.P3074392297728946431

`A038300(n)/A059268(n)`
-/

namespace A038295.P3074392297728946431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038300 n : ℚ) / (A059268 n : ℚ)

end

end A038295.P3074392297728946431

namespace A038295

/-- `A038300(n)/A059268(n)` -/
def P3074392297728946431.Spec : Prop :=
  ∀ n, P3074392297728946431.a n = (A038295 n : ℚ)

end A038295

/-! ## A038295.P14282230391441868314

`A013622(n)²/A013612(n)`
-/

namespace A038295.P14282230391441868314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013622 n ^ 2 : ℚ) / (A013612 n : ℚ)

end

end A038295.P14282230391441868314

namespace A038295

/-- `A013622(n)²/A013612(n)` -/
def P14282230391441868314.Spec : Prop :=
  ∀ n, P14282230391441868314.a n = (A038295 n : ℚ)

end A038295

/-! ## A038295.P10195046139494415429

`A013622(n)²/gcd(A013617(n), A013622(n))`
-/

namespace A038295.P10195046139494415429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013622 n ^ 2 : ℚ) / (Int.gcd (A013617 n) (A013622 n) : ℚ)

end

end A038295.P10195046139494415429

namespace A038295

/-- `A013622(n)²/gcd(A013617(n), A013622(n))` -/
def P10195046139494415429.Spec : Prop :=
  ∀ n, P10195046139494415429.a n = (A038295 n : ℚ)

end A038295

/-! ## A038295.P12446270720126767835

`A038259(n)²/A013628(n)`
-/

namespace A038295.P12446270720126767835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038259 n ^ 2 : ℚ) / (A013628 n : ℚ)

end

end A038295.P12446270720126767835

namespace A038295

/-- `A038259(n)²/A013628(n)` -/
def P12446270720126767835.Spec : Prop :=
  ∀ n, P12446270720126767835.a n = (A038295 n : ℚ)

end A038295

/-!
# A038296: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*6^j.

The programs for A038296, the canonical program `A038296.P12595348449861327754` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038296 has offset 0).

The definition of A038296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038296.P12595348449861327754

`A038293(n)*A059268(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038296

/-- `A038293(n)*A059268(n)` -/
def P12595348449861327754.Spec : Prop :=
  ∀ n, P12595348449861327754.a n = A038296 n

theorem P12595348449861327754.correct : P12595348449861327754.Spec := by
  intro n
  simp only [A038296]

end A038296

/-! ## A038296.P14949883365291211632

`A027465(n)*A100852(n)`
-/

namespace A038296.P14949883365291211632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A100852 n

end

end A038296.P14949883365291211632

namespace A038296

/-- `A027465(n)*A100852(n)` -/
def P14949883365291211632.Spec : Prop :=
  ∀ n, P14949883365291211632.a n = A038296 n

end A038296

/-! ## A038296.P12345109206292425161

`A038220(n)*A098355(n)`
-/

namespace A038296.P12345109206292425161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n * A098355 n

end

end A038296.P12345109206292425161

namespace A038296

/-- `A038220(n)*A098355(n)` -/
def P12345109206292425161.Spec : Prop :=
  ∀ n, P12345109206292425161.a n = A038296 n

end A038296

/-! ## A038296.P5192697486678310976

`A038224(n)*A140303(n)`
-/

namespace A038296.P5192697486678310976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038224 n * A140303 n

end

end A038296.P5192697486678310976

namespace A038296

/-- `A038224(n)*A140303(n)` -/
def P5192697486678310976.Spec : Prop :=
  ∀ n, P5192697486678310976.a n = A038296 n

end A038296

/-! ## A038296.P2631241110243165413

`A038221(n)*A175840(n)`
-/

namespace A038296.P2631241110243165413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 n * A175840 n

end

end A038296.P2631241110243165413

namespace A038296

/-- `A038221(n)*A175840(n)` -/
def P2631241110243165413.Spec : Prop :=
  ∀ n, P2631241110243165413.a n = A038296 n

end A038296

/-! ## A038296.P18407118050807484044

`lcm(A013609(n), A038293(n))`
-/

namespace A038296.P18407118050807484044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A038293 n)

end

end A038296.P18407118050807484044

namespace A038296

/-- `lcm(A013609(n), A038293(n))` -/
def P18407118050807484044.Spec : Prop :=
  ∀ n, (P18407118050807484044.a n : ℤ) = A038296 n

end A038296

/-! ## A038296.P9681077120795830003

`A140303(n)²*A013613(n)`
-/

namespace A038296.P9681077120795830003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A013613 n

end

end A038296.P9681077120795830003

namespace A038296

/-- `A140303(n)²*A013613(n)` -/
def P9681077120795830003.Spec : Prop :=
  ∀ n, P9681077120795830003.a n = A038296 n

end A038296

/-! ## A038296.P5293794460743395010

`A038220(n-A002262(n))*A038220(n)`
-/

namespace A038296.P5293794460743395010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 ((n : ℤ) - A002262 n).toNat * A038220 n

end

end A038296.P5293794460743395010

namespace A038296

/-- `A038220(n-A002262(n))*A038220(n)` -/
def P5293794460743395010.Spec : Prop :=
  ∀ n, P5293794460743395010.a n = A038296 n

end A038296

/-! ## A038296.P16237102196710271582

`A038220(n)/A007318(n)*A038221(n)`
-/

namespace A038296.P16237102196710271582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (A007318 n : ℚ) * (A038221 n : ℚ)

end

end A038296.P16237102196710271582

namespace A038296

/-- `A038220(n)/A007318(n)*A038221(n)` -/
def P16237102196710271582.Spec : Prop :=
  ∀ n, P16237102196710271582.a n = (A038296 n : ℚ)

end A038296

/-! ## A038296.P7379783664271135367

`A038224(n)/A013613(n)*A038224(n)`
-/

namespace A038296.P7379783664271135367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038224 n : ℚ) / (A013613 n : ℚ) * (A038224 n : ℚ)

end

end A038296.P7379783664271135367

namespace A038296

/-- `A038224(n)/A013613(n)*A038224(n)` -/
def P7379783664271135367.Spec : Prop :=
  ∀ n, P7379783664271135367.a n = (A038296 n : ℚ)

end A038296

/-! ## A038296.P6023029369034771690

`(A038255(n)/A038207(n))²*A013613(n)`
-/

namespace A038296.P6023029369034771690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038255 n : ℚ) / (A038207 n : ℚ)) ^ 2 * (A013613 n : ℚ)

end

end A038296.P6023029369034771690

namespace A038296

/-- `(A038255(n)/A038207(n))²*A013613(n)` -/
def P6023029369034771690.Spec : Prop :=
  ∀ n, P6023029369034771690.a n = (A038296 n : ℚ)

end A038296

/-! ## A038296.P2002991817959120731

`A038263(A061579(n))`
-/

namespace A038296.P2002991817959120731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038263 (A061579 n).toNat

end

end A038296.P2002991817959120731

namespace A038296

/-- `A038263(A061579(n))` -/
def P2002991817959120731.Spec : Prop :=
  ∀ n, P2002991817959120731.a n = A038296 n

end A038296

/-! ## A038296.P6803653470647747968

`(A027467(n)/A038243(n))²*A013613(n)`
-/

namespace A038296.P6803653470647747968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027467 n : ℚ) / (A038243 n : ℚ)) ^ 2 * (A013613 n : ℚ)

end

end A038296.P6803653470647747968

namespace A038296

/-- `(A027467(n)/A038243(n))²*A013613(n)` -/
def P6803653470647747968.Spec : Prop :=
  ∀ n, P6803653470647747968.a n = (A038296 n : ℚ)

end A038296

/-! ## A038296.P1681727298077296123

`sqrt(A038294(n))*sqrt(A038299(n))`
-/

namespace A038296.P1681727298077296123
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038294 n : ℝ) * Real.sqrt (A038299 n : ℝ)

end

end A038296.P1681727298077296123

namespace A038296

/-- `sqrt(A038294(n))*sqrt(A038299(n))` -/
def P1681727298077296123.Spec : Prop :=
  ∀ n, P1681727298077296123.a n = (A038296 n : ℝ)

end A038296

/-! ## A038296.P5036433261003737420

`A038302(n)/A059268(n)`
-/

namespace A038296.P5036433261003737420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038302 n : ℚ) / (A059268 n : ℚ)

end

end A038296.P5036433261003737420

namespace A038296

/-- `A038302(n)/A059268(n)` -/
def P5036433261003737420.Spec : Prop :=
  ∀ n, P5036433261003737420.a n = (A038296 n : ℚ)

end A038296

/-! ## A038296.P11591386988577980764

`sqrt(A038293(n))*sqrt(A038302(n))`
-/

namespace A038296.P11591386988577980764
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038293 n : ℝ) * Real.sqrt (A038302 n : ℝ)

end

end A038296.P11591386988577980764

namespace A038296

/-- `sqrt(A038293(n))*sqrt(A038302(n))` -/
def P11591386988577980764.Spec : Prop :=
  ∀ n, P11591386988577980764.a n = (A038296 n : ℝ)

end A038296

/-! ## A038296.P1866242247268179587

`A038224(n)²/A013613(n)`
-/

namespace A038296.P1866242247268179587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038224 n ^ 2 : ℚ) / (A013613 n : ℚ)

end

end A038296.P1866242247268179587

namespace A038296

/-- `A038224(n)²/A013613(n)` -/
def P1866242247268179587.Spec : Prop :=
  ∀ n, P1866242247268179587.a n = (A038296 n : ℚ)

end A038296

/-! ## A038296.P7613316490770450494

`A038224(n)²/gcd(A013619(n), A038224(n))`
-/

namespace A038296.P7613316490770450494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038224 n ^ 2 : ℚ) / (Int.gcd (A013619 n) (A038224 n) : ℚ)

end

end A038296.P7613316490770450494

namespace A038296

/-- `A038224(n)²/gcd(A013619(n), A038224(n))` -/
def P7613316490770450494.Spec : Prop :=
  ∀ n, P7613316490770450494.a n = (A038296 n : ℚ)

end A038296

/-! ## A038296.P16794362085476750146

`sqrt(A038293(n)*A038302(n))`
-/

namespace A038296.P16794362085476750146
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038293 n * A038302 n : ℝ)

end

end A038296.P16794362085476750146

namespace A038296

/-- `sqrt(A038293(n)*A038302(n))` -/
def P16794362085476750146.Spec : Prop :=
  ∀ n, P16794362085476750146.a n = (A038296 n : ℝ)

end A038296

/-! ## A038296.P2274087219121655187

`sqrt(A038294(n)*A038299(n))`
-/

namespace A038296.P2274087219121655187
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038294 n * A038299 n : ℝ)

end

end A038296.P2274087219121655187

namespace A038296

/-- `sqrt(A038294(n)*A038299(n))` -/
def P2274087219121655187.Spec : Prop :=
  ∀ n, P2274087219121655187.a n = (A038296 n : ℝ)

end A038296

/-!
# A038297: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*7^j.

The programs for A038297, the canonical program `A038297.P5251436414743647897` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038297 has offset 0).

The definition of A038297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3604 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038297.P5251436414743647897

`A013624(n)*A140303(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038297

/-- `A013624(n)*A140303(n)` -/
def P5251436414743647897.Spec : Prop :=
  ∀ n, P5251436414743647897.a n = A038297 n

theorem P5251436414743647897.correct : P5251436414743647897.Spec := by
  intro n
  simp only [A038297]

end A038297

/-! ## A038297.P7650453718677329330

`lcm(A013614(n), A038291(n))`
-/

namespace A038297.P7650453718677329330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013614 n) (A038291 n)

end

end A038297.P7650453718677329330

namespace A038297

/-- `lcm(A013614(n), A038291(n))` -/
def P7650453718677329330.Spec : Prop :=
  ∀ n, (P7650453718677329330.a n : ℤ) = A038297 n

end A038297

/-! ## A038297.P12903787992229885388

`A140303(n)²*A013614(n)`
-/

namespace A038297.P12903787992229885388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A013614 n

end

end A038297.P12903787992229885388

namespace A038297

/-- `A140303(n)²*A013614(n)` -/
def P12903787992229885388.Spec : Prop :=
  ∀ n, P12903787992229885388.a n = A038297 n

end A038297

/-! ## A038297.P5053014487123723359

`A000244(A025581(n))²*A013614(n)`
-/

namespace A038297.P5053014487123723359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A025581 n).toNat ^ 2 * A013614 n

end

end A038297.P5053014487123723359

namespace A038297

/-- `A000244(A025581(n))²*A013614(n)` -/
def P5053014487123723359.Spec : Prop :=
  ∀ n, P5053014487123723359.a n = A038297 n

end A038297

/-! ## A038297.P10299090353137884492

`A000244(2*A025581(n))*A013614(n)`
-/

namespace A038297.P10299090353137884492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * A025581 n).toNat * A013614 n

end

end A038297.P10299090353137884492

namespace A038297

/-- `A000244(2*A025581(n))*A013614(n)` -/
def P10299090353137884492.Spec : Prop :=
  ∀ n, P10299090353137884492.a n = A038297 n

end A038297

/-! ## A038297.P4099634587860584587

`A013624(n)/A013614(n)*A013624(n)`
-/

namespace A038297.P4099634587860584587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013624 n : ℚ) / (A013614 n : ℚ) * (A013624 n : ℚ)

end

end A038297.P4099634587860584587

namespace A038297

/-- `A013624(n)/A013614(n)*A013624(n)` -/
def P4099634587860584587.Spec : Prop :=
  ∀ n, P4099634587860584587.a n = (A038297 n : ℚ)

end A038297

/-! ## A038297.P3335812736974623365

`A013627(n)/A013625(n)*A013627(n)`
-/

namespace A038297.P3335812736974623365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013627 n : ℚ) / (A013625 n : ℚ) * (A013627 n : ℚ)

end

end A038297.P3335812736974623365

namespace A038297

/-- `A013627(n)/A013625(n)*A013627(n)` -/
def P3335812736974623365.Spec : Prop :=
  ∀ n, P3335812736974623365.a n = (A038297 n : ℚ)

end A038297

/-! ## A038297.P6334769027453162798

`A038275(A061579(n))`
-/

namespace A038297.P6334769027453162798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038275 (A061579 n).toNat

end

end A038297.P6334769027453162798

namespace A038297

/-- `A038275(A061579(n))` -/
def P6334769027453162798.Spec : Prop :=
  ∀ n, P6334769027453162798.a n = A038297 n

end A038297

/-! ## A038297.P9888950281261280072

`A013624(n)²/A013614(n)`
-/

namespace A038297.P9888950281261280072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013624 n ^ 2 : ℚ) / (A013614 n : ℚ)

end

end A038297.P9888950281261280072

namespace A038297

/-- `A013624(n)²/A013614(n)` -/
def P9888950281261280072.Spec : Prop :=
  ∀ n, P9888950281261280072.a n = (A038297 n : ℚ)

end A038297

/-! ## A038297.P6208538071137156898

`A013624(n)²/gcd(A013623(n), A013624(n))`
-/

namespace A038297.P6208538071137156898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013624 n ^ 2 : ℚ) / (Int.gcd (A013623 n) (A013624 n) : ℚ)

end

end A038297.P6208538071137156898

namespace A038297

/-- `A013624(n)²/gcd(A013623(n), A013624(n))` -/
def P6208538071137156898.Spec : Prop :=
  ∀ n, P6208538071137156898.a n = (A038297 n : ℚ)

end A038297

/-! ## A038297.P3259919328855291810

`A013627(n)²/A013625(n)`
-/

namespace A038297.P3259919328855291810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013627 n ^ 2 : ℚ) / (A013625 n : ℚ)

end

end A038297.P3259919328855291810

namespace A038297

/-- `A013627(n)²/A013625(n)` -/
def P3259919328855291810.Spec : Prop :=
  ∀ n, P3259919328855291810.a n = (A038297 n : ℚ)

end A038297

/-!
# A038298: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*8^j.

The programs for A038298, the canonical program `A038298.P2564888401092406072` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038298 has offset 0).

The definition of A038298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038298.P2564888401092406072

`A038294(n)*A059268(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A038298

/-- `A038294(n)*A059268(n)` -/
def P2564888401092406072.Spec : Prop :=
  ∀ n, P2564888401092406072.a n = A038298 n

theorem P2564888401092406072.correct : P2564888401092406072.Spec := by
  intro n
  simp only [A038298]

end A038298

/-! ## A038298.P15934996331095467824

`A038226(n)*A140303(n)`
-/

namespace A038298.P15934996331095467824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038226 n * A140303 n

end

end A038298.P15934996331095467824

namespace A038298

/-- `A038226(n)*A140303(n)` -/
def P15934996331095467824.Spec : Prop :=
  ∀ n, P15934996331095467824.a n = A038298 n

end A038298

/-! ## A038298.P1078085261129795663

`A038222(n)*A175840(n)`
-/

namespace A038298.P1078085261129795663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038222 n * A175840 n

end

end A038298.P1078085261129795663

namespace A038298

/-- `A038222(n)*A175840(n)` -/
def P1078085261129795663.Spec : Prop :=
  ∀ n, P1078085261129795663.a n = A038298 n

end A038298

/-! ## A038298.P15088395455674923002

`A038220(n)*A356036(n)`
-/

namespace A038298.P15088395455674923002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n * A356036 n

end

end A038298.P15088395455674923002

namespace A038298

/-- `A038220(n)*A356036(n)` -/
def P15088395455674923002.Spec : Prop :=
  ∀ n, P15088395455674923002.a n = A038298 n

end A038298

/-! ## A038298.P8355562690010876339

`lcm(A013615(n), A038291(n))`
-/

namespace A038298.P8355562690010876339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013615 n) (A038291 n)

end

end A038298.P8355562690010876339

namespace A038298

/-- `lcm(A013615(n), A038291(n))` -/
def P8355562690010876339.Spec : Prop :=
  ∀ n, (P8355562690010876339.a n : ℤ) = A038298 n

end A038298

/-! ## A038298.P4120698953323274668

`lcm(A038226(n), A038292(n))`
-/

namespace A038298.P4120698953323274668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038226 n) (A038292 n)

end

end A038298.P4120698953323274668

namespace A038298

/-- `lcm(A038226(n), A038292(n))` -/
def P4120698953323274668.Spec : Prop :=
  ∀ n, (P4120698953323274668.a n : ℤ) = A038298 n

end A038298

/-! ## A038298.P18198639789251618219

`A059268(n)²*A038292(n)`
-/

namespace A038298.P18198639789251618219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038292 n

end

end A038298.P18198639789251618219

namespace A038298

/-- `A059268(n)²*A038292(n)` -/
def P18198639789251618219.Spec : Prop :=
  ∀ n, P18198639789251618219.a n = A038298 n

end A038298

/-! ## A038298.P8726013706584047499

`A140303(n)²*A013615(n)`
-/

namespace A038298.P8726013706584047499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A013615 n

end

end A038298.P8726013706584047499

namespace A038298

/-- `A140303(n)²*A013615(n)` -/
def P8726013706584047499.Spec : Prop :=
  ∀ n, P8726013706584047499.a n = A038298 n

end A038298

/-! ## A038298.P15151362870912177129

`A175840(n)²*A013609(n)`
-/

namespace A038298.P15151362870912177129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n ^ 2 * A013609 n

end

end A038298.P15151362870912177129

namespace A038298

/-- `A175840(n)²*A013609(n)` -/
def P15151362870912177129.Spec : Prop :=
  ∀ n, P15151362870912177129.a n = A038298 n

end A038298

/-! ## A038298.P14301399396569276389

`A038222(n)/A013609(n)*A038222(n)`
-/

namespace A038298.P14301399396569276389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038222 n : ℚ) / (A013609 n : ℚ) * (A038222 n : ℚ)

end

end A038298.P14301399396569276389

namespace A038298

/-- `A038222(n)/A013609(n)*A038222(n)` -/
def P14301399396569276389.Spec : Prop :=
  ∀ n, P14301399396569276389.a n = (A038298 n : ℚ)

end A038298

/-! ## A038298.P13898192904139567919

`A038226(n)/A013615(n)*A038226(n)`
-/

namespace A038298.P13898192904139567919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038226 n : ℚ) / (A013615 n : ℚ) * (A038226 n : ℚ)

end

end A038298.P13898192904139567919

namespace A038298

/-- `A038226(n)/A013615(n)*A038226(n)` -/
def P13898192904139567919.Spec : Prop :=
  ∀ n, P13898192904139567919.a n = (A038298 n : ℚ)

end A038298

/-! ## A038298.P4554701982804979240

`A038258(n)/A038232(n)*A038258(n)`
-/

namespace A038298.P4554701982804979240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038258 n : ℚ) / (A038232 n : ℚ) * (A038258 n : ℚ)

end

end A038298.P4554701982804979240

namespace A038298

/-- `A038258(n)/A038232(n)*A038258(n)` -/
def P4554701982804979240.Spec : Prop :=
  ∀ n, P4554701982804979240.a n = (A038298 n : ℚ)

end A038298

/-! ## A038298.P15476440099955311155

`A038262(n)/A038238(n)*A038262(n)`
-/

namespace A038298.P15476440099955311155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038262 n : ℚ) / (A038238 n : ℚ) * (A038262 n : ℚ)

end

end A038298.P15476440099955311155

namespace A038298

/-- `A038262(n)/A038238(n)*A038262(n)` -/
def P15476440099955311155.Spec : Prop :=
  ∀ n, P15476440099955311155.a n = (A038298 n : ℚ)

end A038298

/-! ## A038298.P17157284262280017251

`A038294(n)/A038292(n)*A038294(n)`
-/

namespace A038298.P17157284262280017251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038294 n : ℚ) / (A038292 n : ℚ) * (A038294 n : ℚ)

end

end A038298.P17157284262280017251

namespace A038298

/-- `A038294(n)/A038292(n)*A038294(n)` -/
def P17157284262280017251.Spec : Prop :=
  ∀ n, P17157284262280017251.a n = (A038298 n : ℚ)

end A038298

/-! ## A038298.P11941796177710411149

`A038291(n)*A059268(n)*A059268(n)²`
-/

namespace A038298.P11941796177710411149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 n * A059268 n * A059268 n ^ 2

end

end A038298.P11941796177710411149

namespace A038298

/-- `A038291(n)*A059268(n)*A059268(n)²` -/
def P11941796177710411149.Spec : Prop :=
  ∀ n, P11941796177710411149.a n = A038298 n

end A038298

/-! ## A038298.P15004976135211489306

`(A027467(n)/A038243(n))²*A013615(n)`
-/

namespace A038298.P15004976135211489306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027467 n : ℚ) / (A038243 n : ℚ)) ^ 2 * (A013615 n : ℚ)

end

end A038298.P15004976135211489306

namespace A038298

/-- `(A027467(n)/A038243(n))²*A013615(n)` -/
def P15004976135211489306.Spec : Prop :=
  ∀ n, P15004976135211489306.a n = (A038298 n : ℚ)

end A038298

/-! ## A038298.P18070807238533482133

`sqrt(A038294(n)/A038291(n))*A038294(n)`
-/

namespace A038298.P18070807238533482133
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A038294 n : ℚ) / (A038291 n : ℚ) : ℝ) * (A038294 n : ℝ)

end

end A038298.P18070807238533482133

namespace A038298

/-- `sqrt(A038294(n)/A038291(n))*A038294(n)` -/
def P18070807238533482133.Spec : Prop :=
  ∀ n, P18070807238533482133.a n = (A038298 n : ℝ)

end A038298

/-! ## A038298.P6778170834490776993

`A038287(A061579(n))`
-/

namespace A038298.P6778170834490776993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038287 (A061579 n).toNat

end

end A038298.P6778170834490776993

namespace A038298

/-- `A038287(A061579(n))` -/
def P6778170834490776993.Spec : Prop :=
  ∀ n, P6778170834490776993.a n = A038298 n

end A038298

/-! ## A038298.P8838384202244992883

`A038222(n)²/A013609(n)`
-/

namespace A038298.P8838384202244992883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038222 n ^ 2 : ℚ) / (A013609 n : ℚ)

end

end A038298.P8838384202244992883

namespace A038298

/-- `A038222(n)²/A013609(n)` -/
def P8838384202244992883.Spec : Prop :=
  ∀ n, P8838384202244992883.a n = (A038298 n : ℚ)

end A038298

/-! ## A038298.P3937383009671683066

`A038258(n)²/A038232(n)`
-/

namespace A038298.P3937383009671683066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038258 n ^ 2 : ℚ) / (A038232 n : ℚ)

end

end A038298.P3937383009671683066

namespace A038298

/-- `A038258(n)²/A038232(n)` -/
def P3937383009671683066.Spec : Prop :=
  ∀ n, P3937383009671683066.a n = (A038298 n : ℚ)

end A038298

/-!
# A038299: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*9^j.

The programs for A038299, the canonical program `A038299.P15220395769486791881` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038299 has offset 0).

The definition of A038299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3354 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038299.P15220395769486791881

`A038221(n)*A098355(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038299

/-- `A038221(n)*A098355(n)` -/
def P15220395769486791881.Spec : Prop :=
  ∀ n, P15220395769486791881.a n = A038299 n

theorem P15220395769486791881.correct : P15220395769486791881.Spec := by
  intro n
  simp only [A038299]

end A038299

/-! ## A038299.P7949221168986110393

`A038227(n)*A140303(n)`
-/

namespace A038299.P7949221168986110393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038227 n * A140303 n

end

end A038299.P7949221168986110393

namespace A038299

/-- `A038227(n)*A140303(n)` -/
def P7949221168986110393.Spec : Prop :=
  ∀ n, P7949221168986110393.a n = A038299 n

end A038299

/-! ## A038299.P8460636893598522619

`A098355(n)²*A007318(n)`
-/

namespace A038299.P8460636893598522619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n ^ 2 * A007318 n

end

end A038299.P8460636893598522619

namespace A038299

/-- `A098355(n)²*A007318(n)` -/
def P8460636893598522619.Spec : Prop :=
  ∀ n, P8460636893598522619.a n = A038299 n

end A038299

/-! ## A038299.P7624757570838178740

`A140303(n)²*A013616(n)`
-/

namespace A038299.P7624757570838178740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A013616 n

end

end A038299.P7624757570838178740

namespace A038299

/-- `A140303(n)²*A013616(n)` -/
def P7624757570838178740.Spec : Prop :=
  ∀ n, P7624757570838178740.a n = A038299 n

end A038299

/-! ## A038299.P15223944737069009689

`Δ[A259653(n)]²*A007318(n)`
-/

namespace A038299.P15223944737069009689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A007318 n

end

end A038299.P15223944737069009689

namespace A038299

/-- `Δ[A259653(n)]²*A007318(n)` -/
def P15223944737069009689.Spec : Prop :=
  ∀ n, P15223944737069009689.a n = A038299 n

end A038299

/-! ## A038299.P10857280535369661989

`A001019(A003056(n))*A007318(n)`
-/

namespace A038299.P10857280535369661989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (A003056 n).toNat * A007318 n

end

end A038299.P10857280535369661989

namespace A038299

/-- `A001019(A003056(n))*A007318(n)` -/
def P10857280535369661989.Spec : Prop :=
  ∀ n, P10857280535369661989.a n = A038299 n

end A038299

/-! ## A038299.P15184570679024643757

`A038221(n)*A038221(A057944(n))`
-/

namespace A038299.P15184570679024643757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 n * A038221 (A057944 n).toNat

end

end A038299.P15184570679024643757

namespace A038299

/-- `A038221(n)*A038221(A057944(n))` -/
def P15184570679024643757.Spec : Prop :=
  ∀ n, P15184570679024643757.a n = A038299 n

end A038299

/-! ## A038299.P3018893788568537434

`A013622(A057944(n))²*A007318(n)`
-/

namespace A038299.P3018893788568537434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 (A057944 n).toNat ^ 2 * A007318 n

end

end A038299.P3018893788568537434

namespace A038299

/-- `A013622(A057944(n))²*A007318(n)` -/
def P3018893788568537434.Spec : Prop :=
  ∀ n, P3018893788568537434.a n = A038299 n

end A038299

/-! ## A038299.P4104861531708894738

`A074324(A131507(n))²*A007318(n)`
-/

namespace A038299.P4104861531708894738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A131507 n).toNat ^ 2 * A007318 n

end

end A038299.P4104861531708894738

namespace A038299

/-- `A074324(A131507(n))²*A007318(n)` -/
def P4104861531708894738.Spec : Prop :=
  ∀ n, P4104861531708894738.a n = A038299 n

end A038299

/-! ## A038299.P2414869387426728815

`A038221(n-A002262(n))*A038221(n)`
-/

namespace A038299.P2414869387426728815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 ((n : ℤ) - A002262 n).toNat * A038221 n

end

end A038299.P2414869387426728815

namespace A038299

/-- `A038221(n-A002262(n))*A038221(n)` -/
def P2414869387426728815.Spec : Prop :=
  ∀ n, P2414869387426728815.a n = A038299 n

end A038299

/-! ## A038299.P14232350650335282949

`A013616(n)/A007318(n)*A038291(n)`
-/

namespace A038299.P14232350650335282949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013616 n : ℚ) / (A007318 n : ℚ) * (A038291 n : ℚ)

end

end A038299.P14232350650335282949

namespace A038299

/-- `A013616(n)/A007318(n)*A038291(n)` -/
def P14232350650335282949.Spec : Prop :=
  ∀ n, P14232350650335282949.a n = (A038299 n : ℚ)

end A038299

/-! ## A038299.P9398914942718127838

`A038221(n)/A007318(n)*A038221(n)`
-/

namespace A038299.P9398914942718127838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n : ℚ) / (A007318 n : ℚ) * (A038221 n : ℚ)

end

end A038299.P9398914942718127838

namespace A038299

/-- `A038221(n)/A007318(n)*A038221(n)` -/
def P9398914942718127838.Spec : Prop :=
  ∀ n, P9398914942718127838.a n = (A038299 n : ℚ)

end A038299

/-! ## A038299.P11043764331232913131

`A038260(n)/A038234(n)*A038260(n)`
-/

namespace A038299.P11043764331232913131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038260 n : ℚ) / (A038234 n : ℚ) * (A038260 n : ℚ)

end

end A038299.P11043764331232913131

namespace A038299

/-- `A038260(n)/A038234(n)*A038260(n)` -/
def P11043764331232913131.Spec : Prop :=
  ∀ n, P11043764331232913131.a n = (A038299 n : ℚ)

end A038299

/-! ## A038299.P18121687033058251464

`A038263(n)/A038239(n)*A038263(n)`
-/

namespace A038299.P18121687033058251464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038263 n : ℚ) / (A038239 n : ℚ) * (A038263 n : ℚ)

end

end A038299.P18121687033058251464

namespace A038299

/-- `A038263(n)/A038239(n)*A038263(n)` -/
def P18121687033058251464.Spec : Prop :=
  ∀ n, P18121687033058251464.a n = (A038299 n : ℚ)

end A038299

/-! ## A038299.P12597114295896333737

`A038296(n)/A038294(n)*A038296(n)`
-/

namespace A038299.P12597114295896333737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038296 n : ℚ) / (A038294 n : ℚ) * (A038296 n : ℚ)

end

end A038299.P12597114295896333737

namespace A038299

/-- `A038296(n)/A038294(n)*A038296(n)` -/
def P12597114295896333737.Spec : Prop :=
  ∀ n, P12597114295896333737.a n = (A038299 n : ℚ)

end A038299

/-! ## A038299.P5480055135334497983

`(A027467(n)/A038243(n))²*A013616(n)`
-/

namespace A038299.P5480055135334497983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027467 n : ℚ) / (A038243 n : ℚ)) ^ 2 * (A013616 n : ℚ)

end

end A038299.P5480055135334497983

namespace A038299

/-- `(A027467(n)/A038243(n))²*A013616(n)` -/
def P5480055135334497983.Spec : Prop :=
  ∀ n, P5480055135334497983.a n = (A038299 n : ℚ)

end A038299

/-! ## A038299.P5982671372611102344

`A038221(n)²/A007318(n)`
-/

namespace A038299.P5982671372611102344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n ^ 2 : ℚ) / (A007318 n : ℚ)

end

end A038299.P5982671372611102344

namespace A038299

/-- `A038221(n)²/A007318(n)` -/
def P5982671372611102344.Spec : Prop :=
  ∀ n, P5982671372611102344.a n = (A038299 n : ℚ)

end A038299

/-! ## A038299.P13245923099151826810

`A038221(n)²/A097805(comp[∑[n]])`
-/

namespace A038299.P13245923099151826810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n ^ 2 : ℚ) / (A097805 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A038299.P13245923099151826810

namespace A038299

/-- `A038221(n)²/A097805(comp[∑[n]])` -/
def P13245923099151826810.Spec : Prop :=
  ∀ n, P13245923099151826810.a n = (A038299 n : ℚ)

end A038299

/-! ## A038299.P15470782320918901681

`A038221(n)²/A135225(comp[∑[n]])`
-/

namespace A038299.P15470782320918901681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n ^ 2 : ℚ) / (A135225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A038299.P15470782320918901681

namespace A038299

/-- `A038221(n)²/A135225(comp[∑[n]])` -/
def P15470782320918901681.Spec : Prop :=
  ∀ n, P15470782320918901681.a n = (A038299 n : ℚ)

end A038299

/-! ## A038299.P847652699240160072

`A038221(n)²/abs(2-A173740(n))`
-/

namespace A038299.P847652699240160072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n ^ 2 : ℚ) / (|2 - A173740 n| : ℚ)

end

end A038299.P847652699240160072

namespace A038299

/-- `A038221(n)²/abs(2-A173740(n))` -/
def P847652699240160072.Spec : Prop :=
  ∀ n, P847652699240160072.a n = (A038299 n : ℚ)

end A038299

