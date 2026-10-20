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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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

/-!
# A349300: G.f. A(x) satisfies: A(x) = 1 / ((1 + x) * (1 - x * A(x)^4)).

The programs for A349300, there is no canonical definition to state claims against.
-/

/-! ## A349300.P859107807650416599

`A008616(∑[A015537(n)])`
-/

namespace A349300.P859107807650416599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349300.P859107807650416599

/-! ## A349300.P6386338504957949422

`A324130(n)-A001221(A324169(n+2))`
-/

namespace A349300.P6386338504957949422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324130 n - A001221 (A324169 (n + 2)).toNat

end

end A349300.P6386338504957949422

/-! ## A349300.P16712882276518785228

`A257684(3*n+4)+A257684(A058786(n+5))`
-/

namespace A349300.P16712882276518785228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (3 * n + 4) + A257684 (A058786 (n + 5)).toNat

end

end A349300.P16712882276518785228

/-!
# A349301: G.f. A(x) satisfies: A(x) = 1 / ((1 + x) * (1 - x * A(x)^5)).

The programs for A349301, there is no canonical definition to state claims against.
-/

/-! ## A349301.P16365406166853119115

`A268820(∑[A213644(n)])`
-/

namespace A349301.P16365406166853119115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349301.P16365406166853119115

/-! ## A349301.P12695677041778529432

`A008616(Δ[A125062(n)])`
-/

namespace A349301.P12695677041778529432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (f1 (n + 1) - f1 n).toNat

end

end A349301.P12695677041778529432

/-!
# A349302: G.f. A(x) satisfies: A(x) = 1 / ((1 + x) * (1 - x * A(x)^6)).

The programs for A349302, there is no canonical definition to state claims against.
-/

/-! ## A349302.P6373313485660157657

`A254011(Δ[A127088(n)])`
-/

namespace A349302.P6373313485660157657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (f1 (n + 1) - f1 n).toNat

end

end A349302.P6373313485660157657

/-! ## A349302.P18347080114123012414

`A008616(n*A323290(n))`
-/

namespace A349302.P18347080114123012414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 ((n : ℤ) * A323290 n).toNat

end

end A349302.P18347080114123012414

/-!
# A349303: G.f. A(x) satisfies: A(x) = 1 / ((1 + x) * (1 - x * A(x)^7)).

The programs for A349303, there is no canonical definition to state claims against.
-/

/-! ## A349303.P8666474543314745437

`A131007((n-1)!+n*a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A349303.P8666474543314745437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A131007 ((Nat.factorial ((n : ℤ) - 1).toNat : ℤ) + (n : ℤ) * a (n - 1)).toNat

end

end A349303.P8666474543314745437

/-! ## A349303.P15939033464686058138

`A345163(A347707(2*n²))`
-/

namespace A349303.P15939033464686058138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345163 (A347707 (2 * n ^ 2)).toNat

end

end A349303.P15939033464686058138

/-!
# A349304: Terms of sequence A133342 interpreted as numbers written in base 2 and converted here to base 10.

The programs for A349304, there is no canonical definition to state claims against.
-/

/-! ## A349304.P639882611830367678

`or(1, A192330(A073587(n)))`
-/

namespace A349304.P639882611830367678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A192330 (A073587 n).toNat)

end

end A349304.P639882611830367678

/-!
# A349306: Numbers k that divide A092694(k).

The programs for A349306, the canonical program `A349306.P17180493539953707188` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349306 has offset 1).

The definition of A349306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349306.P17180493539953707188

`lt[(A000010(n+1)^3)%(n+1)², 1]+1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A349306

/-- `lt[(A000010(n+1)^3)%(n+1)², 1]+1` -/
def P17180493539953707188.Spec : Prop :=
  ∀ n, (P17180493539953707188.a n : ℤ) = A349306 (n + 1)

theorem P17180493539953707188.correct : P17180493539953707188.Spec := by
  intro n
  simp only [A349306, Nat.add_sub_cancel]

end A349306

/-! ## A349306.P8076911778496305591

`∏{e}[3^n, A354561(#)]`
-/

namespace A349306.P8076911778496305591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A354561 (Nat.factorization (f1 n) p)

end

end A349306.P8076911778496305591

namespace A349306

/-- `∏{e}[3^n, A354561(#)]` -/
def P8076911778496305591.Spec : Prop :=
  ∀ n, P8076911778496305591.a n = A349306 (n + 1)

end A349306

/-! ## A349306.P17774017136359507879

`∩[A090081(n+1), A334965(n+1)]`
-/

namespace A349306.P17774017136359507879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349306.P17774017136359507879

namespace A349306

/-- `∩[A090081(n+1), A334965(n+1)]` -/
def P17774017136359507879.Spec : Prop :=
  ∀ n, (P17774017136359507879.a n : ℤ) = A349306 (n + 1)

end A349306

/-!
# A349307: Numbers k such that A072911(k) = A072911(k+1) > 1.

The programs for A349307, there is no canonical definition to state claims against.
-/

/-! ## A349307.P5305500620025581807

`A068140(lt[A080510(3*n+4), A079368(n+1)])`
-/

namespace A349307.P5305500620025581807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349307.P5305500620025581807

/-! ## A349307.P10370590352894517785

`A068140(lt[A353398(n), A271608(n+2)])`
-/

namespace A349307.P10370590352894517785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353398 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271608 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349307.P10370590352894517785

/-!
# A349308: Numbers k such that A321167(k) = A321167(k+1) > 1.

The programs for A349308, there is no canonical definition to state claims against.
-/

/-! ## A349308.P12088821429113371690

`A349307(lt[A090211(n+1), A082278(n+1)])`
-/

namespace A349308.P12088821429113371690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349307 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349308.P12088821429113371690

/-! ## A349308.P7665026274926625425

`A349307(lt[A361533(n), A222722(2*n+3)])`
-/

namespace A349308.P7665026274926625425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361533 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222722 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349307 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349308.P7665026274926625425

/-! ## A349308.P16457919252762835832

`A349307(lt[A036806(n+1), A036838(2*(n+1))])`
-/

namespace A349308.P16457919252762835832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349307 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349308.P16457919252762835832

/-!
# A349309: Numbers k such that A254926(k) = A254926(k+1).

The programs for A349309, there is no canonical definition to state claims against.
-/

/-! ## A349309.P6617822408234544053

`record[A128972(A007918(n))]`
-/

namespace A349309.P6617822408234544053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128972 (A007918 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349309.P6617822408234544053

/-! ## A349309.P4844668013995664045

`record[A128972(A051698(n))]`
-/

namespace A349309.P4844668013995664045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128972 (A051698 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349309.P4844668013995664045

/-! ## A349309.P4785770484620349769

`record[A128972(A060264(n))]`
-/

namespace A349309.P4785770484620349769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128972 (A060264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349309.P4785770484620349769

/-! ## A349309.P15687595033579675304

`record[A128972(A151800(n))]`
-/

namespace A349309.P15687595033579675304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128972 (A151800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349309.P15687595033579675304

/-! ## A349309.P15311771022315016697

`record[A128972(A000040(n+1))]`
-/

namespace A349309.P15311771022315016697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128972 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349309.P15311771022315016697

/-! ## A349309.P1278716135802430119

`record[A128972(A006530(n+2))]`
-/

namespace A349309.P1278716135802430119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128972 (A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349309.P1278716135802430119

/-! ## A349309.P10852669278677243370

`record[A128972(A020482(n+2))]`
-/

namespace A349309.P10852669278677243370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128972 (A020482 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349309.P10852669278677243370

/-! ## A349309.P396240972559365917

`record[A128972(A020639(n+2))]`
-/

namespace A349309.P396240972559365917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128972 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349309.P396240972559365917

/-! ## A349309.P7048311110391712031

`record[A128972(sqrt(A001248(n+1)))]`
-/

namespace A349309.P7048311110391712031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128972 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349309.P7048311110391712031

/-! ## A349309.P14647017285087334636

`record[A128972(A006093(n+1)+1)]`
-/

namespace A349309.P14647017285087334636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128972 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349309.P14647017285087334636

/-! ## A349309.P14962131690043430369

`record[gcd(A053205(n+2), A128972(n+2))]`
-/

namespace A349309.P14962131690043430369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053205 (n + 2)) (A128972 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349309.P14962131690043430369

/-!
# A349310: G.f. A(x) satisfies: A(x) = (1 + x * A(x)^4) / (1 - x).

The programs for A349310, there is no canonical definition to state claims against.
-/

/-! ## A349310.P15712936950720629371

`∑[A213336(n)]`
-/

namespace A349310.P15712936950720629371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349310.P15712936950720629371

/-! ## A349310.P4625101280397535943

`A378237(∑[n+1]+n)`
-/

namespace A349310.P4625101280397535943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378237 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A349310.P4625101280397535943

/-! ## A349310.P1825464835815320178

`A213336(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A349310.P1825464835815320178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213336 n + a (A023443 n).toNat

end

end A349310.P1825464835815320178

/-! ## A349310.P983286201766558221

`a(n-1)+A213336(n)+A000007(n)` with `a(0)=1`
-/

namespace A349310.P983286201766558221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A213336 n + A000007 n)

end

end A349310.P983286201766558221

/-! ## A349310.P18343351384878233875

`A213336(n)+a(n-(A000038(n)+1))` with `a(0)=1`
-/

namespace A349310.P18343351384878233875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213336 n + a ((n : ℤ) - (A000038 n + 1)).toNat

end

end A349310.P18343351384878233875

/-! ## A349310.P5640106197649541345

`a(n-1)+A213336(n)^A007318(C(2, n))` with `a(0)=1`
-/

namespace A349310.P5640106197649541345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A213336 n : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A349310.P5640106197649541345

/-!
# A349311: G.f. A(x) satisfies: A(x) = (1 + x * A(x)^5) / (1 - x).

The programs for A349311, there is no canonical definition to state claims against.
-/

/-! ## A349311.P16030929608128963293

`∑[A366647(n)]`
-/

namespace A349311.P16030929608128963293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349311.P16030929608128963293

/-!
# A349312: G.f. A(x) satisfies: A(x) = (1 + x * A(x)^6) / (1 - x).

The programs for A349312, there is no canonical definition to state claims against.
-/

/-! ## A349312.P2628639521890684288

`A212441(n^(n+1)+1)+1`
-/

namespace A349312.P2628639521890684288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212441 (n ^ (n + 1) + 1) + 1

end

end A349312.P2628639521890684288

/-!
# A349313: G.f. A(x) satisfies: A(x) = (1 + x * A(x)^7) / (1 - x).

The programs for A349313, there is no canonical definition to state claims against.
-/

/-! ## A349313.P17070875103884332261

`A051953(A060042(n)+2)`
-/

namespace A349313.P17070875103884332261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A060042 n + 2).toNat

end

end A349313.P17070875103884332261

/-!
# A349314: G.f. A(x) satisfies: A(x) = (1 + x * A(x)^8) / (1 - x).

The programs for A349314, there is no canonical definition to state claims against.
-/

/-! ## A349314.P7315498023789982180

`A327194(A126646(∑[n]))`
-/

namespace A349314.P7315498023789982180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327194 (A126646 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A349314.P7315498023789982180

/-!
# A349315: Ordinal transform of A348674.

The programs for A349315, the canonical program `A349315.P10053096381514176344` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349315 has offset 0).

The definition of A349315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349315.P10208760066875476467

`A258922(A050782(n)^A055641(n))+A235049(n)`
-/

namespace A349315.P10208760066875476467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258922 (SequenceMachineLib.roundAway ((A050782 n : ℚ) ^ (A055641 n : ℤ))).toNat + A235049 n

end

end A349315.P10208760066875476467

namespace A349315

/-- `A258922(A050782(n)^A055641(n))+A235049(n)` -/
def P10208760066875476467.Spec : Prop :=
  ∀ n, P10208760066875476467.a n = A349315 n

end A349315

/-! ## A349315.P4344984871857539250

`2-or(A136400(n), A309913(n))+n`
-/

namespace A349315.P4344984871857539250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.lor (A136400 n) (A309913 n) + (n : ℤ)

end

end A349315.P4344984871857539250

namespace A349315

/-- `2-or(A136400(n), A309913(n))+n` -/
def P4344984871857539250.Spec : Prop :=
  ∀ n, P4344984871857539250.a n = A349315 n

end A349315

/-! ## A349315.P10053096381514176344

`gcd(a(n-1)+1, A247223(n²))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A349315

/-- `gcd(a(n-1)+1, A247223(n²))` -/
def P10053096381514176344.Spec : Prop :=
  ∀ n, (P10053096381514176344.a n : ℤ) = A349315 n

theorem P10053096381514176344.correct : P10053096381514176344.Spec := by
  intro n
  simp only [A349315]

end A349315

/-! ## A349315.P13841032300698752437

`2-A087381(A065031(n))+n`
-/

namespace A349315.P13841032300698752437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A087381 (A065031 n).toNat + (n : ℤ)

end

end A349315.P13841032300698752437

namespace A349315

/-- `2-A087381(A065031(n))+n` -/
def P13841032300698752437.Spec : Prop :=
  ∀ n, P13841032300698752437.a n = A349315 n

end A349315

/-! ## A349315.P15434598786070747025

`n+2-A213217(A139337(n))`
-/

namespace A349315.P15434598786070747025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A213217 (A139337 n).toNat

end

end A349315.P15434598786070747025

namespace A349315

/-- `n+2-A213217(A139337(n))` -/
def P15434598786070747025.Spec : Prop :=
  ∀ n, P15434598786070747025.a n = A349315 n

end A349315

/-!
# A349316: Where records occur in A348674.

The programs for A349316, there is no canonical definition to state claims against.
-/

/-! ## A349316.P6976498987689708279

`eq[1, A349315(n)]`
-/

namespace A349316.P6976498987689708279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349316.P6976498987689708279

/-!
# A349317: Triangle T(n,k): T(n,k) = 1 if gcd(n, k) > 1, else 0.

The programs for A349317, the canonical program `A349317.P2877834298764922178` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349317 has offset 1).

The definition of A349317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349317.P2877834298764922178

`1-A054521(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A349317

/-- `1-A054521(n+1)` -/
def P2877834298764922178.Spec : Prop :=
  ∀ n, P2877834298764922178.a n = A349317 (n + 1)

theorem P2877834298764922178.correct : P2877834298764922178.Spec := by
  intro n
  simp only [A349317, Nat.add_sub_cancel]

end A349317

/-! ## A349317.P14149338215815707268

`C(n, A088307(n+1))`
-/

namespace A349317.P14149338215815707268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A088307 (n + 1)).toNat

end

end A349317.P14149338215815707268

namespace A349317

/-- `C(n, A088307(n+1))` -/
def P14149338215815707268.Spec : Prop :=
  ∀ n, (P14149338215815707268.a n : ℤ) = A349317 (n + 1)

end A349317

/-! ## A349317.P9399509583258744202

`1-abs(A215200(n+1))`
-/

namespace A349317.P9399509583258744202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A215200 (n + 1)|

end

end A349317.P9399509583258744202

namespace A349317

/-- `1-abs(A215200(n+1))` -/
def P9399509583258744202.Spec : Prop :=
  ∀ n, P9399509583258744202.a n = A349317 (n + 1)

end A349317

/-! ## A349317.P17183862623066742163

`and(1, A144733(n+1)+1)`
-/

namespace A349317.P17183862623066742163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A144733 (n + 1) + 1)

end

end A349317.P17183862623066742163

namespace A349317

/-- `and(1, A144733(n+1)+1)` -/
def P17183862623066742163.Spec : Prop :=
  ∀ n, P17183862623066742163.a n = A349317 (n + 1)

end A349317

/-! ## A349317.P9631161941582742869

`C(2, A127476(n+1)+2)`
-/

namespace A349317.P9631161941582742869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A127476 (n + 1) + 2).toNat

end

end A349317.P9631161941582742869

namespace A349317

/-- `C(2, A127476(n+1)+2)` -/
def P9631161941582742869.Spec : Prop :=
  ∀ n, (P9631161941582742869.a n : ℤ) = A349317 (n + 1)

end A349317

/-! ## A349317.P5376487437282508944

`and(2, A046143(n+1))/2`
-/

namespace A349317.P5376487437282508944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A046143 (n + 1)) : ℚ) / 2

end

end A349317.P5376487437282508944

namespace A349317

/-- `and(2, A046143(n+1))/2` -/
def P5376487437282508944.Spec : Prop :=
  ∀ n, P5376487437282508944.a n = (A349317 (n + 1) : ℚ)

end A349317

/-! ## A349317.P12567126643478273109

`1-char[A169581(n+1)-1]`
-/

namespace A349317.P12567126643478273109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169581 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A349317.P12567126643478273109

namespace A349317

/-- `1-char[A169581(n+1)-1]` -/
def P12567126643478273109.Spec : Prop :=
  ∀ n, P12567126643478273109.a n = A349317 (n + 1)

end A349317

/-! ## A349317.P2120031138329932264

`A000007(A127368(n+1))`
-/

namespace A349317.P2120031138329932264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A127368 (n + 1)).toNat

end

end A349317.P2120031138329932264

namespace A349317

/-- `A000007(A127368(n+1))` -/
def P2120031138329932264.Spec : Prop :=
  ∀ n, P2120031138329932264.a n = A349317 (n + 1)

end A349317

/-! ## A349317.P12781778871871638866

`A000007(A127373(n+1))`
-/

namespace A349317.P12781778871871638866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A127373 (n + 1)).toNat

end

end A349317.P12781778871871638866

namespace A349317

/-- `A000007(A127373(n+1))` -/
def P12781778871871638866.Spec : Prop :=
  ∀ n, P12781778871871638866.a n = A349317 (n + 1)

end A349317

/-! ## A349317.P656015593504051724

`A000007(A127449(n+1))`
-/

namespace A349317.P656015593504051724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A127449 (n + 1)).toNat

end

end A349317.P656015593504051724

namespace A349317

/-- `A000007(A127449(n+1))` -/
def P656015593504051724.Spec : Prop :=
  ∀ n, P656015593504051724.a n = A349317 (n + 1)

end A349317

/-! ## A349317.P12920231626627633738

`A000007(A127476(n+1))`
-/

namespace A349317.P12920231626627633738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A127476 (n + 1)).toNat

end

end A349317.P12920231626627633738

namespace A349317

/-- `A000007(A127476(n+1))` -/
def P12920231626627633738.Spec : Prop :=
  ∀ n, P12920231626627633738.a n = A349317 (n + 1)

end A349317

/-! ## A349317.P6202533583248998731

`A000007(A127506(n+1))`
-/

namespace A349317.P6202533583248998731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A127506 (n + 1)).toNat

end

end A349317.P6202533583248998731

namespace A349317

/-- `A000007(A127506(n+1))` -/
def P6202533583248998731.Spec : Prop :=
  ∀ n, P6202533583248998731.a n = A349317 (n + 1)

end A349317

/-! ## A349317.P13238881986949908042

`A000007(A129239(n+1))`
-/

namespace A349317.P13238881986949908042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A129239 (n + 1)).toNat

end

end A349317.P13238881986949908042

namespace A349317

/-- `A000007(A129239(n+1))` -/
def P13238881986949908042.Spec : Prop :=
  ∀ n, P13238881986949908042.a n = A349317 (n + 1)

end A349317

/-! ## A349317.P7175816636922243511

`A000007(A143614(n+1))`
-/

namespace A349317.P7175816636922243511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A143614 (n + 1)).toNat

end

end A349317.P7175816636922243511

namespace A349317

/-- `A000007(A143614(n+1))` -/
def P7175816636922243511.Spec : Prop :=
  ∀ n, P7175816636922243511.a n = A349317 (n + 1)

end A349317

/-! ## A349317.P5056277454399084035

`A043545(A051194(n+1)²)`
-/

namespace A349317.P5056277454399084035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A051194 (n + 1) ^ 2).toNat

end

end A349317.P5056277454399084035

namespace A349317

/-- `A043545(A051194(n+1)²)` -/
def P5056277454399084035.Spec : Prop :=
  ∀ n, P5056277454399084035.a n = A349317 (n + 1)

end A349317

/-! ## A349317.P8276361818289413982

`A057427(A050873(n+1)-1)`
-/

namespace A349317.P8276361818289413982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A050873 (n + 1) - 1).toNat

end

end A349317.P8276361818289413982

namespace A349317

/-- `A057427(A050873(n+1)-1)` -/
def P8276361818289413982.Spec : Prop :=
  ∀ n, P8276361818289413982.a n = A349317 (n + 1)

end A349317

/-!
# A349318: G.f. A(x) satisfies: A(x) = 1 + x * A(x)^3 / (1 - 2 * x).

The programs for A349318, there is no canonical definition to state claims against.
-/

/-! ## A349318.P115415369437280850

`A005362(n)-∑[A001221(A005366(n))]`
-/

namespace A349318.P115415369437280850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005362 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349318.P115415369437280850

/-!
# A349320: a(n) is the Y-coordinate of the n-th point of the hexdragon curve; sequence A349319 gives X-coordinates.

The programs for A349320, there is no canonical definition to state claims against.
-/

/-! ## A349320.P1624460137256577251

`-A349040(A123108(A017221(n)))`
-/

namespace A349320.P1624460137256577251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A349040 (A123108 (A017221 n).toNat).toNat

end

end A349320.P1624460137256577251

/-! ## A349320.P7025138568813687878

`A329697(A098743(2*n+1)+A000079(n))`
-/

namespace A349320.P7025138568813687878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A098743 (2 * n + 1) + A000079 n).toNat

end

end A349320.P7025138568813687878

/-!
# A349322: a(n) = Sum_{d|n} d^c(d), where c is the characteristic function of refactorable numbers (A336040).

The programs for A349322, the canonical program `A349322.P14488046601245516878` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349322 has offset 1).

The definition of A349322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349322.P9604466983710966675

`A335182(n+1)+A349658(n+1)`
-/

namespace A349322.P9604466983710966675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335182 (n + 1) + A349658 (n + 1)

end

end A349322.P9604466983710966675

namespace A349322

/-- `A335182(n+1)+A349658(n+1)` -/
def P9604466983710966675.Spec : Prop :=
  ∀ n, P9604466983710966675.a n = A349322 (n + 1)

end A349322

/-! ## A349322.P14488046601245516878

`∑{d}[n+1, gcd(#, A336040(#)+n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A349322

/-- `∑{d}[n+1, gcd(#, A336040(#)+n)]` -/
def P14488046601245516878.Spec : Prop :=
  ∀ n, (P14488046601245516878.a n : ℤ) = A349322 (n + 1)

theorem P14488046601245516878.correct : P14488046601245516878.Spec := by
  intro n
  simp only [A349322, Nat.add_sub_cancel]

end A349322

/-! ## A349322.P15009723627496397183

`A349658(n+1)+∑{d}[n+1, #*A336040(#)]`
-/

namespace A349322.P15009723627496397183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349658 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A336040 d

end

end A349322.P15009723627496397183

namespace A349322

/-- `A349658(n+1)+∑{d}[n+1, #*A336040(#)]` -/
def P15009723627496397183.Spec : Prop :=
  ∀ n, P15009723627496397183.a n = A349322 (n + 1)

end A349322

/-! ## A349322.P3757950973703272164

`A000005(n+1)+A335182(n+1)-A336041(n+1)`
-/

namespace A349322.P3757950973703272164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A335182 (n + 1) - A336041 (n + 1))

end

end A349322.P3757950973703272164

namespace A349322

/-- `A000005(n+1)+A335182(n+1)-A336041(n+1)` -/
def P3757950973703272164.Spec : Prop :=
  ∀ n, P3757950973703272164.a n = A349322 (n + 1)

end A349322

/-! ## A349322.P8584086391836230309

`∑{d}[n+1, #*A336040(#)]+A000005(n+1)-A336041(n+1)`
-/

namespace A349322.P8584086391836230309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A336040 d + (A000005 (n + 1) - A336041 (n + 1))

end

end A349322.P8584086391836230309

namespace A349322

/-- `∑{d}[n+1, #*A336040(#)]+A000005(n+1)-A336041(n+1)` -/
def P8584086391836230309.Spec : Prop :=
  ∀ n, P8584086391836230309.a n = A349322 (n + 1)

end A349322

/-!
# A349323: a(1)=1, a(2)=2, a(3)=4. Thereafter, for n>=3, a(n+1) is the smallest unused k such that d(k) is prime to both d(a(n)) and d(a(n-2)), but not to d(a(n-1)), where d is the divisor counting (tau) function A000005.

The programs for A349323, there is no canonical definition to state claims against.
-/

/-! ## A349323.P11100953116151310296

`A079901(eq[A002262(n), A344606(2*n+5)])`
-/

namespace A349323.P11100953116151310296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A349323.P11100953116151310296

/-! ## A349323.P8702755528168378950

`A000463(lt[A111101(n+1), A111108(n+1)])`
-/

namespace A349323.P8702755528168378950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349323.P8702755528168378950

/-! ## A349323.P8160761317513825248

`A111390(record[(n+1)*A304320(n+1)])`
-/

namespace A349323.P8160761317513825248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A304320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111390 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A349323.P8160761317513825248

/-! ## A349323.P11080850889902218505

`A039996(A286508(n))^A065031(n)`
-/

namespace A349323.P11080850889902218505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039996 (A286508 n).toNat : ℚ) ^ (A065031 n : ℤ)

end

end A349323.P11080850889902218505

/-! ## A349323.P12983560519323876229

`A110591(A070198(n+1))^A214526(n+1)`
-/

namespace A349323.P12983560519323876229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110591 (A070198 (n + 1)).toNat : ℚ) ^ (A214526 (n + 1) : ℤ)

end

end A349323.P12983560519323876229

/-!
# A349325: Number of times the Collatz plot started at n crosses the y = n line, or -1 if the number of crossings is infinite.

The programs for A349325, there is no canonical definition to state claims against.
-/

/-! ## A349325.P8997591095463853555

`gcd(A001223(A187941(n)), A063772(n))`
-/

namespace A349325.P8997591095463853555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001223 (A187941 n).toNat) (A063772 n)

end

end A349325.P8997591095463853555

/-! ## A349325.P14363278469220907523

`A179765(A014105(n)+A019565(n)-A014681(n))`
-/

namespace A349325.P14363278469220907523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179765 (A014105 n + (A019565 n - A014681 n)).toNat

end

end A349325.P14363278469220907523

/-! ## A349325.P12231027776914151101

`A179765(A014105(n)-(A014681(n)-A019565(n)))`
-/

namespace A349325.P12231027776914151101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179765 (A014105 n - (A014681 n - A019565 n)).toNat

end

end A349325.P12231027776914151101

/-! ## A349325.P5038612946719368027

`gcd(A064289(n), A078759(2^n))`
-/

namespace A349325.P5038612946719368027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064289 n) (A078759 (2 ^ n))

end

end A349325.P5038612946719368027

/-! ## A349325.P8572259324034222788

`gcd(A024352(2^n), A108792(3*(n+3)))`
-/

namespace A349325.P8572259324034222788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024352 (2 ^ n)) (A108792 (3 * (n + 3)))

end

end A349325.P8572259324034222788

/-!
# A349326: a(n) is the number of prime powers (not including 1) that are bi-unitary divisors of n.

The programs for A349326, the canonical program `A349326.P1753618578232469732` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349326 has offset 1).

The definition of A349326 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A162641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349326.P15222399427023048633

`A001222(A350390(n+1))`
-/

namespace A349326.P15222399427023048633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A350390 (n + 1)).toNat

end

end A349326.P15222399427023048633

namespace A349326

/-- `A001222(A350390(n+1))` -/
def P15222399427023048633.Spec : Prop :=
  ∀ n, P15222399427023048633.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P1753618578232469732

`A001222(n+1)-A162641(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A349326

/-- `A001222(n+1)-A162641(n+1)` -/
def P1753618578232469732.Spec : Prop :=
  ∀ n, P1753618578232469732.a n = A349326 (n + 1)

theorem P1753618578232469732.correct : P1753618578232469732.Spec := by
  intro n
  simp only [A349326, Nat.add_sub_cancel]

end A349326

/-! ## A349326.P932697890587831436

`∑{e}[n+1, or(1, #-1)]`
-/

namespace A349326.P932697890587831436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.lor 1 ((Nat.factorization (f1 n) p : ℤ) - 1)

end

end A349326.P932697890587831436

namespace A349326

/-- `∑{e}[n+1, or(1, #-1)]` -/
def P932697890587831436.Spec : Prop :=
  ∀ n, P932697890587831436.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P12902892891678441781

`∑{e}[n+1, -or(1, -#)]`
-/

namespace A349326.P12902892891678441781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (-Int.lor 1 (-(Nat.factorization (f1 n) p : ℤ)))

end

end A349326.P12902892891678441781

namespace A349326

/-- `∑{e}[n+1, -or(1, -#)]` -/
def P12902892891678441781.Spec : Prop :=
  ∀ n, P12902892891678441781.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P13538892947578856462

`∑{e}[n+1, #-1]+∑{e}[n+1, #%2]`
-/

namespace A349326.P13538892947578856462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) + ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p % 2 : ℕ) : ℤ)

end

end A349326.P13538892947578856462

namespace A349326

/-- `∑{e}[n+1, #-1]+∑{e}[n+1, #%2]` -/
def P13538892947578856462.Spec : Prop :=
  ∀ n, P13538892947578856462.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P3017359027377544428

`A162642(n+1)+A046660(n+1)`
-/

namespace A349326.P3017359027377544428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1) + A046660 (n + 1)

end

end A349326.P3017359027377544428

namespace A349326

/-- `A162642(n+1)+A046660(n+1)` -/
def P3017359027377544428.Spec : Prop :=
  ∀ n, P3017359027377544428.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P13286125012565362153

`A001222((n+1)/A336643(n+1))`
-/

namespace A349326.P13286125012565362153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A336643 (n + 1) : ℚ))).toNat

end

end A349326.P13286125012565362153

namespace A349326

/-- `A001222((n+1)/A336643(n+1))` -/
def P13286125012565362153.Spec : Prop :=
  ∀ n, P13286125012565362153.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P3635326289778157693

`A350387((n+1)/A336643(n+1))`
-/

namespace A349326.P3635326289778157693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A336643 (n + 1) : ℚ))).toNat

end

end A349326.P3635326289778157693

namespace A349326

/-- `A350387((n+1)/A336643(n+1))` -/
def P3635326289778157693.Spec : Prop :=
  ∀ n, P3635326289778157693.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P6395690521389451521

`A350387(A350390(2*n+1-n))`
-/

namespace A349326.P6395690521389451521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350387 (A350390 (2 * n + 1 - n)).toNat

end

end A349326.P6395690521389451521

namespace A349326

/-- `A350387(A350390(2*n+1-n))` -/
def P6395690521389451521.Spec : Prop :=
  ∀ n, P6395690521389451521.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P9132984297019472196

`A001222((n+1)/∏{p}[n+1, #]*A007913(n+1))`
-/

namespace A349326.P9132984297019472196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A007913 (n + 1) : ℚ))).toNat

end

end A349326.P9132984297019472196

namespace A349326

/-- `A001222((n+1)/∏{p}[n+1, #]*A007913(n+1))` -/
def P9132984297019472196.Spec : Prop :=
  ∀ n, P9132984297019472196.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P6429053353057816037

`A001222(A102631(A019554(n+1)))`
-/

namespace A349326.P6429053353057816037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A102631 (A019554 (n + 1)).toNat).toNat

end

end A349326.P6429053353057816037

namespace A349326

/-- `A001222(A102631(A019554(n+1)))` -/
def P6429053353057816037.Spec : Prop :=
  ∀ n, P6429053353057816037.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P12038079931895568971

`A046660(n+1)+A001221(A007913(n+1))`
-/

namespace A349326.P12038079931895568971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + A001221 (A007913 (n + 1)).toNat

end

end A349326.P12038079931895568971

namespace A349326

/-- `A046660(n+1)+A001221(A007913(n+1))` -/
def P12038079931895568971.Spec : Prop :=
  ∀ n, P12038079931895568971.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P1054920973910302431

`A046660(n+1)+A001222(A055076(n+1))`
-/

namespace A349326.P1054920973910302431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + A001222 (A055076 (n + 1)).toNat

end

end A349326.P1054920973910302431

namespace A349326

/-- `A046660(n+1)+A001222(A055076(n+1))` -/
def P1054920973910302431.Spec : Prop :=
  ∀ n, P1054920973910302431.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P3334068740973701723

`A001222(n+1)-A001222(A336643(n+1))`
-/

namespace A349326.P3334068740973701723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A336643 (n + 1)).toNat

end

end A349326.P3334068740973701723

namespace A349326

/-- `A001222(n+1)-A001222(A336643(n+1))` -/
def P3334068740973701723.Spec : Prop :=
  ∀ n, P3334068740973701723.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P1335762543751528505

`A001222(n+1)-A001221(A350388(n+1))`
-/

namespace A349326.P1335762543751528505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001221 (A350388 (n + 1)).toNat

end

end A349326.P1335762543751528505

namespace A349326

/-- `A001222(n+1)-A001221(A350388(n+1))` -/
def P1335762543751528505.Spec : Prop :=
  ∀ n, P1335762543751528505.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P15759189189943604586

`A001222(A003557(n+1)*A007913(n+1))`
-/

namespace A349326.P15759189189943604586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003557 (n + 1) * A007913 (n + 1)).toNat

end

end A349326.P15759189189943604586

namespace A349326

/-- `A001222(A003557(n+1)*A007913(n+1))` -/
def P15759189189943604586.Spec : Prop :=
  ∀ n, P15759189189943604586.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P3976867613236557971

`A001222(A007913(n+1)*A162510(n+1))`
-/

namespace A349326.P3976867613236557971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007913 (n + 1) * A162510 (n + 1)).toNat

end

end A349326.P3976867613236557971

namespace A349326

/-- `A001222(A007913(n+1)*A162510(n+1))` -/
def P3976867613236557971.Spec : Prop :=
  ∀ n, P3976867613236557971.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P14681012659066293090

`A001222(A003557(n+1)*A295878(n+1))`
-/

namespace A349326.P14681012659066293090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003557 (n + 1) * A295878 (n + 1)).toNat

end

end A349326.P14681012659066293090

namespace A349326

/-- `A001222(A003557(n+1)*A295878(n+1))` -/
def P14681012659066293090.Spec : Prop :=
  ∀ n, P14681012659066293090.a n = A349326 (n + 1)

end A349326

/-! ## A349326.P4210665792608109920

`A046660(2*A055076(n+1))+A046660(n+1)`
-/

namespace A349326.P4210665792608109920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (2 * A055076 (n + 1)).toNat + A046660 (n + 1)

end

end A349326.P4210665792608109920

namespace A349326

/-- `A046660(2*A055076(n+1))+A046660(n+1)` -/
def P4210665792608109920.Spec : Prop :=
  ∀ n, P4210665792608109920.a n = A349326 (n + 1)

end A349326

/-!
# A349327: Primes p such that 2*p^2 is a term of A179993.

The programs for A349327, there is no canonical definition to state claims against.
-/

/-! ## A349327.P3794282407555169777

`p?[A225098(n+1)]`
-/

namespace A349327.P3794282407555169777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349327.P3794282407555169777

/-! ## A349327.P16493506313989058408

`∩[A106483(n+1), A225098(n+1)]`
-/

namespace A349327.P16493506313989058408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P16493506313989058408

/-! ## A349327.P6332491829561237180

`∩[A062326(n+1), A106483(n+1)]`
-/

namespace A349327.P6332491829561237180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P6332491829561237180

/-! ## A349327.P4039616005319547877

`∩[A062326(n+1), A225098(n+1)]`
-/

namespace A349327.P4039616005319547877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P4039616005319547877

/-! ## A349327.P10068247678211585779

`∩[A045328(n+1), A225098(n+1)]`
-/

namespace A349327.P10068247678211585779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P10068247678211585779

/-! ## A349327.P1704919826704026543

`∩[A225098(n+1), A042990(n)]`
-/

namespace A349327.P1704919826704026543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P1704919826704026543

/-! ## A349327.P12590799723533478957

`∩[A045320(n+1), A225098(n+1)]`
-/

namespace A349327.P12590799723533478957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P12590799723533478957

/-! ## A349327.P10644412413846772649

`∩[A028870(n+1), A106483(n+1)]`
-/

namespace A349327.P10644412413846772649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P10644412413846772649

/-! ## A349327.P12856809618659041030

`∩[A165666(n+1), A225098(n+1)]`
-/

namespace A349327.P12856809618659041030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P12856809618659041030

/-! ## A349327.P12249869816203329319

`∩[A000040(n+1), A225098(n+1)]`
-/

namespace A349327.P12249869816203329319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P12249869816203329319

/-! ## A349327.P5986882937022847669

`∩[A008578(n+1), A225098(n+1)]`
-/

namespace A349327.P5986882937022847669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P5986882937022847669

/-! ## A349327.P7338341758996201832

`∩[A033946(n+1), A225098(n+1)]`
-/

namespace A349327.P7338341758996201832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P7338341758996201832

/-! ## A349327.P9545208207099879326

`∩[A045319(n+1), A225098(n+1)]`
-/

namespace A349327.P9545208207099879326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P9545208207099879326

/-! ## A349327.P15529593882962803990

`∩[A046022(n+1), A225098(n+1)]`
-/

namespace A349327.P15529593882962803990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P15529593882962803990

/-! ## A349327.P7003704652241146275

`∩[A051948(n+1), A225098(n+1)]`
-/

namespace A349327.P7003704652241146275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P7003704652241146275

/-! ## A349327.P5108306868327077643

`∩[A053813(n+1), A225098(n+1)]`
-/

namespace A349327.P5108306868327077643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P5108306868327077643

/-! ## A349327.P9915050077472939799

`∩[A066050(n+1), A225098(n+1)]`
-/

namespace A349327.P9915050077472939799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P9915050077472939799

/-! ## A349327.P1719262098044749370

`∩[A067126(n+1), A225098(n+1)]`
-/

namespace A349327.P1719262098044749370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P1719262098044749370

/-! ## A349327.P5586080272757180627

`∩[A067133(n+1), A225098(n+1)]`
-/

namespace A349327.P5586080272757180627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P5586080272757180627

/-! ## A349327.P7393866086029474681

`∩[A106118(n+1), A225098(n+1)]`
-/

namespace A349327.P7393866086029474681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349327.P7393866086029474681

/-!
# A349328: Number of polyominoes with n cells and exactly one line of reflection symmetry, where that one line is parallel to the grid and passes through the center of at least one square.

The programs for A349328, there is no canonical definition to state claims against.
-/

/-! ## A349328.P6686951553073277067

`A006746(n+1)-A349329(gcd(n+1, ceil(n/2)))`
-/

namespace A349328.P6686951553073277067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006746 (n + 1) - A349329 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉)

end

end A349328.P6686951553073277067

/-! ## A349328.P17050679344237764900

`A006746(n+1)-A349329(A152271(n))`
-/

namespace A349328.P17050679344237764900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006746 (n + 1) - A349329 (A152271 n).toNat

end

end A349328.P17050679344237764900

/-! ## A349328.P163394678150757269

`floor(A091053(n+2)/8)`
-/

namespace A349328.P163394678150757269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091053 (n + 2) : ℚ) / 8⌋

end

end A349328.P163394678150757269

/-! ## A349328.P11732599363376129089

`A089587(A002013(n))`
-/

namespace A349328.P11732599363376129089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089587 (A002013 n).toNat

end

end A349328.P11732599363376129089

/-! ## A349328.P2594440981575191864

`A054860(A057574(n))`
-/

namespace A349328.P2594440981575191864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054860 (A057574 n).toNat

end

end A349328.P2594440981575191864

/-!
# A349329: Number of polyominoes with 2n cells and exactly one line of reflection symmetry, where that one line is parallel to the grid and passes through the corner of at least one square.

The programs for A349329, there is no canonical definition to state claims against.
-/

/-! ## A349329.P1343448543571519390

`2*(A006747(n+1)+A006748(n+1))+A144553(n+1)+A056878(n+1)+A006746(n+1)+4*A006749(n+1)`
-/

namespace A349329.P1343448543571519390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006747 (n + 1) + A006748 (n + 1)) + A144553 (n + 1) + A056878 (n + 1) + A006746 (n + 1) + 4 * A006749 (n + 1)

end

end A349329.P1343448543571519390

/-! ## A349329.P3710896338949727182

`A006746(2*(n+1))-A349328(2*(n+1))`
-/

namespace A349329.P3710896338949727182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006746 (2 * (n + 1)) - A349328 (2 * (n + 1))

end

end A349329.P3710896338949727182

/-! ## A349329.P2926874447112698480

`A001168(n+1)-A151525(n+1)`
-/

namespace A349329.P2926874447112698480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A151525 (n + 1)

end

end A349329.P2926874447112698480

/-! ## A349329.P12281923567464922219

`A182645(n+1)-A030227(n+1)`
-/

namespace A349329.P12281923567464922219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182645 (n + 1) - A030227 (n + 1)

end

end A349329.P12281923567464922219

/-! ## A349329.P9475690381649074600

`A056783(n+1)+A351191(n+1)-A056780(n+1)`
-/

namespace A349329.P9475690381649074600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056783 (n + 1) + (A351191 (n + 1) - A056780 (n + 1))

end

end A349329.P9475690381649074600

/-! ## A349329.P1140949253675128315

`A182645(n+1)+A351191(n+1)-A151525(n+1)`
-/

namespace A349329.P1140949253675128315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182645 (n + 1) + (A351191 (n + 1) - A151525 (n + 1))

end

end A349329.P1140949253675128315

/-! ## A349329.P9009527941663608054

`A346800(n+1)+A351191(n+1)-A030227(n+1)`
-/

namespace A349329.P9009527941663608054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346800 (n + 1) + (A351191 (n + 1) - A030227 (n + 1))

end

end A349329.P9009527941663608054

/-! ## A349329.P15850473873693568553

`A001168(n+1)-A351191(n+1)-A030227(n+1)`
-/

namespace A349329.P15850473873693568553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A351191 (n + 1) - A030227 (n + 1)

end

end A349329.P15850473873693568553

/-! ## A349329.P8383168987824538108

`A351191(n+1)+A346800(n+1)-(2*A000105(n+1)-A000988(n+1))`
-/

namespace A349329.P8383168987824538108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351191 (n + 1) + A346800 (n + 1) - (2 * A000105 (n + 1) - A000988 (n + 1))

end

end A349329.P8383168987824538108

/-!
# A349330: a(n) = Sum_{d|n} d^c(d), where c is the characteristic function of squares (A010052).

The programs for A349330, the canonical program `A349330.P17425887972492855764` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349330 has offset 1).

The definition of A349330 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A056595, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349330.P17425887972492855764

`A035316(n+1)+A056595(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A349330

/-- `A035316(n+1)+A056595(n+1)` -/
def P17425887972492855764.Spec : Prop :=
  ∀ n, P17425887972492855764.a n = A349330 (n + 1)

theorem P17425887972492855764.correct : P17425887972492855764.Spec := by
  intro n
  simp only [A349330, Nat.add_sub_cancel]

end A349330

/-! ## A349330.P3560726370032797758

`∑{d}[n+1, A056926(#)²]`
-/

namespace A349330.P3560726370032797758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056926 d ^ 2

end

end A349330.P3560726370032797758

namespace A349330

/-- `∑{d}[n+1, A056926(#)²]` -/
def P3560726370032797758.Spec : Prop :=
  ∀ n, P3560726370032797758.a n = A349330 (n + 1)

end A349330

/-! ## A349330.P159331090964291682

`∑{d}[n+1, #^(A000005(#)%2)]`
-/

namespace A349330.P159331090964291682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (Int.tmod (A000005 d) 2 : ℤ)

end

end A349330.P159331090964291682

namespace A349330

/-- `∑{d}[n+1, #^(A000005(#)%2)]` -/
def P159331090964291682.Spec : Prop :=
  ∀ n, P159331090964291682.a n = (A349330 (n + 1) : ℚ)

end A349330

/-! ## A349330.P1427900514568383761

`∑{d}[n+1, A028310(#*A010052(#))]`
-/

namespace A349330.P1427900514568383761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A028310 ((d : ℤ) * A010052 d).toNat

end

end A349330.P1427900514568383761

namespace A349330

/-- `∑{d}[n+1, A028310(#*A010052(#))]` -/
def P1427900514568383761.Spec : Prop :=
  ∀ n, P1427900514568383761.a n = A349330 (n + 1)

end A349330

/-! ## A349330.P13631640698264708268

`∏{e}[n+1, #+1]+A035316(n+1)-A046951(n+1)`
-/

namespace A349330.P13631640698264708268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (A035316 (n + 1) - A046951 (n + 1))

end

end A349330.P13631640698264708268

namespace A349330

/-- `∏{e}[n+1, #+1]+A035316(n+1)-A046951(n+1)` -/
def P13631640698264708268.Spec : Prop :=
  ∀ n, P13631640698264708268.a n = A349330 (n + 1)

end A349330

/-! ## A349330.P3026695133215856777

`A056595(n+1)+A001157(A000188(n+1))`
-/

namespace A349330.P3026695133215856777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1) + A001157 (A000188 (n + 1)).toNat

end

end A349330.P3026695133215856777

namespace A349330

/-- `A056595(n+1)+A001157(A000188(n+1))` -/
def P3026695133215856777.Spec : Prop :=
  ∀ n, P3026695133215856777.a n = A349330 (n + 1)

end A349330

/-! ## A349330.P11324832728275930861

`A000005(n+1)+A035316(n+1)-A046951(n+1)`
-/

namespace A349330.P11324832728275930861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A035316 (n + 1) - A046951 (n + 1))

end

end A349330.P11324832728275930861

namespace A349330

/-- `A000005(n+1)+A035316(n+1)-A046951(n+1)` -/
def P11324832728275930861.Spec : Prop :=
  ∀ n, P11324832728275930861.a n = A349330 (n + 1)

end A349330

/-! ## A349330.P1665335236059005886

`A000203(n+1)+A056595(n+1)-A285309(n+1)`
-/

namespace A349330.P1665335236059005886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A056595 (n + 1) - A285309 (n + 1))

end

end A349330.P1665335236059005886

namespace A349330

/-- `A000203(n+1)+A056595(n+1)-A285309(n+1)` -/
def P1665335236059005886.Spec : Prop :=
  ∀ n, P1665335236059005886.a n = A349330 (n + 1)

end A349330

/-! ## A349330.P12067882146869789849

`A035316(n+1)+A395990(n+1)-A076752(n+1)`
-/

namespace A349330.P12067882146869789849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) + (A395990 (n + 1) - A076752 (n + 1))

end

end A349330.P12067882146869789849

namespace A349330

/-- `A035316(n+1)+A395990(n+1)-A076752(n+1)` -/
def P12067882146869789849.Spec : Prop :=
  ∀ n, P12067882146869789849.a n = A349330 (n + 1)

end A349330

/-!
# A349331: G.f. A(x) satisfies A(x) = 1 + x * A(x)^4 / (1 - x).

The programs for A349331, there is no canonical definition to state claims against.
-/

/-! ## A349331.P7640225505117735151

`A287899(n)+A117138(A000110(n))`
-/

namespace A349331.P7640225505117735151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287899 n + A117138 (A000110 n).toNat

end

end A349331.P7640225505117735151

/-! ## A349331.P16427376557321256279

`or(A034189(A115455(n)), A367238(n))`
-/

namespace A349331.P16427376557321256279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034189 (A115455 n).toNat) (A367238 n)

end

end A349331.P16427376557321256279

/-!
# A349332: G.f. A(x) satisfies A(x) = 1 + x * A(x)^5 / (1 - x).

The programs for A349332, there is no canonical definition to state claims against.
-/

/-! ## A349332.P2901100560772653303

`A266534(C(∑[n], 2)+1)`
-/

namespace A349332.P2901100560772653303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266534 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1)

end

end A349332.P2901100560772653303

/-!
# A349333: G.f. A(x) satisfies A(x) = 1 + x * A(x)^6 / (1 - x).

The programs for A349333, there is no canonical definition to state claims against.
-/

/-! ## A349333.P4946428272156365125

`abs(Δ[A346648(abs(1-n))])`
-/

namespace A349333.P4946428272156365125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346648 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A349333.P4946428272156365125

/-!
# A349334: G.f. A(x) satisfies A(x) = 1 + x * A(x)^7 / (1 - x).

The programs for A349334, there is no canonical definition to state claims against.
-/

/-! ## A349334.P15176795672562818660

`A139711(A128814(n)-n)`
-/

namespace A349334.P15176795672562818660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139711 (A128814 n - (n : ℤ)).toNat

end

end A349334.P15176795672562818660

/-!
# A349335: G.f. A(x) satisfies A(x) = 1 + x * A(x)^8 / (1 - x).

The programs for A349335, there is no canonical definition to state claims against.
-/

/-! ## A349335.P10830732354400723019

`A009001(∑[A246237(n)])`
-/

namespace A349335.P10830732354400723019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349335.P10830732354400723019

/-!
# A349336: Primes p such that p+2, p*(p+1)/2-2 and p*(p+1)/2+2 are also primes.

The programs for A349336, there is no canonical definition to state claims against.
-/

/-! ## A349336.P11624969114272696162

`A172487(A239100(2*(n+2)))%A000984(2*(n+1))`
-/

namespace A349336.P11624969114272696162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172487 (A239100 (2 * (n + 2))).toNat) (A000984 (2 * (n + 1)))

end

end A349336.P11624969114272696162

/-!
# A349337: Dirichlet inverse of A230593.

The programs for A349337, the canonical program `A349337.P2491489838322960303` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349337 has offset 1).

The definition of A349337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349337.P1389405620492306467

`∑{d}[n+1, A023900(#)*A341444((n+1)/#)]`
-/

namespace A349337.P1389405620492306467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A341444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349337.P1389405620492306467

namespace A349337

/-- `∑{d}[n+1, A023900(#)*A341444((n+1)/#)]` -/
def P1389405620492306467.Spec : Prop :=
  ∀ n, P1389405620492306467.a n = A349337 (n + 1)

end A349337

/-! ## A349337.P2491489838322960303

`∑{d}[n+1, A055615(#)*A355939((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349337

/-- `∑{d}[n+1, A055615(#)*A355939((n+1)/#)]` -/
def P2491489838322960303.Spec : Prop :=
  ∀ n, P2491489838322960303.a n = A349337 (n + 1)

theorem P2491489838322960303.correct : P2491489838322960303.Spec := by
  intro n
  simp only [A349337, Nat.add_sub_cancel]

end A349337

/-! ## A349337.P14495477335165439955

`∑{d}[n+1, A347084(#)*A349434((n+1)/#)]`
-/

namespace A349337.P14495477335165439955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347084 d * A349434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349337.P14495477335165439955

namespace A349337

/-- `∑{d}[n+1, A347084(#)*A349434((n+1)/#)]` -/
def P14495477335165439955.Spec : Prop :=
  ∀ n, P14495477335165439955.a n = A349337 (n + 1)

end A349337

/-!
# A349338: Dirichlet convolution of A000010 (Euler totient phi) with A080339 (characteristic function of noncomposite numbers).

The programs for A349338, the canonical program `A349338.P1568544451792940700` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349338 has offset 1).

The definition of A349338 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A117494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349338.P1568544451792940700

`A000010(n+1)+A117494(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A349338

/-- `A000010(n+1)+A117494(n+1)` -/
def P1568544451792940700.Spec : Prop :=
  ∀ n, P1568544451792940700.a n = A349338 (n + 1)

theorem P1568544451792940700.correct : P1568544451792940700.Spec := by
  intro n
  simp only [A349338, Nat.add_sub_cancel]

end A349338

/-! ## A349338.P4396207385946487255

`∑{d}[n+1, A000010(#)*A080339((n+1)/#)]`
-/

namespace A349338.P4396207385946487255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A080339 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349338.P4396207385946487255

namespace A349338

/-- `∑{d}[n+1, A000010(#)*A080339((n+1)/#)]` -/
def P4396207385946487255.Spec : Prop :=
  ∀ n, P4396207385946487255.a n = A349338 (n + 1)

end A349338

/-! ## A349338.P5863159325817439516

`∑{d}[n+1, A007431(#)*A083399((n+1)/#)]`
-/

namespace A349338.P5863159325817439516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A083399 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349338.P5863159325817439516

namespace A349338

/-- `∑{d}[n+1, A007431(#)*A083399((n+1)/#)]` -/
def P5863159325817439516.Spec : Prop :=
  ∀ n, P5863159325817439516.a n = A349338 (n + 1)

end A349338

/-! ## A349338.P3112641299212353001

`∑{d}[n+1, A008683(#)*A230593((n+1)/#)]`
-/

namespace A349338.P3112641299212353001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A230593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349338.P3112641299212353001

namespace A349338

/-- `∑{d}[n+1, A008683(#)*A230593((n+1)/#)]` -/
def P3112641299212353001.Spec : Prop :=
  ∀ n, P3112641299212353001.a n = A349338 (n + 1)

end A349338

/-! ## A349338.P16636146517284803250

`∑{d}[n+1, A348976(#)*A349435((n+1)/#)]`
-/

namespace A349338.P16636146517284803250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A348976 d * A349435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349338.P16636146517284803250

namespace A349338

/-- `∑{d}[n+1, A348976(#)*A349435((n+1)/#)]` -/
def P16636146517284803250.Spec : Prop :=
  ∀ n, P16636146517284803250.a n = A349338 (n + 1)

end A349338

/-! ## A349338.P7648836435040463164

`A000010(n+1)+A087625(n+1)+A010051(n+1)`
-/

namespace A349338.P7648836435040463164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A087625 (n + 1) + A010051 (n + 1))

end

end A349338.P7648836435040463164

namespace A349338

/-- `A000010(n+1)+A087625(n+1)+A010051(n+1)` -/
def P7648836435040463164.Spec : Prop :=
  ∀ n, P7648836435040463164.a n = A349338 (n + 1)

end A349338

/-! ## A349338.P13743777938505900351

`A117494(n+1)+A131233(n+1)-A116512(n+1)`
-/

namespace A349338.P13743777938505900351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (n + 1) + (A131233 (n + 1) - A116512 (n + 1))

end

end A349338.P13743777938505900351

namespace A349338

/-- `A117494(n+1)+A131233(n+1)-A116512(n+1)` -/
def P13743777938505900351.Spec : Prop :=
  ∀ n, P13743777938505900351.a n = A349338 (n + 1)

end A349338

/-!
# A349339: Odd bisection of the Möbius transform of A126760.

The programs for A349339, there is no canonical definition to state claims against.
-/

/-! ## A349339.P1311334495720944998

`A347233(2*n+1)`
-/

namespace A349339.P1311334495720944998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347233 (2 * n + 1)

end

end A349339.P1311334495720944998

/-! ## A349339.P17687573280776529758

`or(char[2], A347233(n+1+n))`
-/

namespace A349339.P17687573280776529758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A347233 (n + 1 + n))

end

end A349339.P17687573280776529758

/-! ## A349339.P16475170386455769039

`gcd(floor(1/(n+1)), A347233((n+1)²-n²))`
-/

namespace A349339.P16475170386455769039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A347233 ((n + 1) ^ 2 - n ^ 2))

end

end A349339.P16475170386455769039

/-! ## A349339.P16943819017485852381

`A126760(2*n+1)-A359165(2*n+1)`
-/

namespace A349339.P16943819017485852381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (2 * n + 1) - A359165 (2 * n + 1)

end

end A349339.P16943819017485852381

/-! ## A349339.P127984654197118263

`A347233(n+1+n)^A003557(A000040(n+1))`
-/

namespace A349339.P127984654197118263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347233 (n + 1 + n) : ℚ) ^ (A003557 (A000040 (n + 1)).toNat : ℤ)

end

end A349339.P127984654197118263

/-!
# A349340: Dirichlet inverse of A003557, where A003557 is multiplicative with a(p^e) = p^(e-1).

The programs for A349340, the canonical program `A349340.P12937323301373999494` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349340 has offset 1).

The definition of A349340 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076479, A326297, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349340.P12937323301373999494

`A076479(n+1)*A326297(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349340

/-- `A076479(n+1)*A326297(n+1)` -/
def P12937323301373999494.Spec : Prop :=
  ∀ n, P12937323301373999494.a n = A349340 (n + 1)

theorem P12937323301373999494.correct : P12937323301373999494.Spec := by
  intro n
  simp only [A349340, Nat.add_sub_cancel]

end A349340

/-! ## A349340.P8430353622014507557

`A003958(n+1)/A023900(n+1)`
-/

namespace A349340.P8430353622014507557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A023900 (n + 1) : ℚ)

end

end A349340.P8430353622014507557

namespace A349340

/-- `A003958(n+1)/A023900(n+1)` -/
def P8430353622014507557.Spec : Prop :=
  ∀ n, P8430353622014507557.a n = (A349340 (n + 1) : ℚ)

end A349340

/-! ## A349340.P12305586238085226431

`A349355(n+1)/A034444(n+1)`
-/

namespace A349340.P12305586238085226431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349355 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A349340.P12305586238085226431

namespace A349340

/-- `A349355(n+1)/A034444(n+1)` -/
def P12305586238085226431.Spec : Prop :=
  ∀ n, P12305586238085226431.a n = (A349340 (n + 1) : ℚ)

end A349340

/-! ## A349340.P9001194593695555715

`∑{d}[n+1, A003966(#)*A023900((n+1)/#)]`
-/

namespace A349340.P9001194593695555715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003966 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349340.P9001194593695555715

namespace A349340

/-- `∑{d}[n+1, A003966(#)*A023900((n+1)/#)]` -/
def P9001194593695555715.Spec : Prop :=
  ∀ n, P9001194593695555715.a n = A349340 (n + 1)

end A349340

/-! ## A349340.P13204213225597486416

`∑{d}[n+1, A003967(#)*A046692((n+1)/#)]`
-/

namespace A349340.P13204213225597486416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003967 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349340.P13204213225597486416

namespace A349340

/-- `∑{d}[n+1, A003967(#)*A046692((n+1)/#)]` -/
def P13204213225597486416.Spec : Prop :=
  ∀ n, P13204213225597486416.a n = A349340 (n + 1)

end A349340

/-! ## A349340.P14555170438515353077

`∑{d}[n+1, A003958(#)*A055615((n+1)/#)]`
-/

namespace A349340.P14555170438515353077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003958 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349340.P14555170438515353077

namespace A349340

/-- `∑{d}[n+1, A003958(#)*A055615((n+1)/#)]` -/
def P14555170438515353077.Spec : Prop :=
  ∀ n, P14555170438515353077.a n = A349340 (n + 1)

end A349340

/-! ## A349340.P5325324584678194205

`∑{d}[n+1, A101035(#)*A349131((n+1)/#)]`
-/

namespace A349340.P5325324584678194205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A349131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349340.P5325324584678194205

namespace A349340

/-- `∑{d}[n+1, A101035(#)*A349131((n+1)/#)]` -/
def P5325324584678194205.Spec : Prop :=
  ∀ n, P5325324584678194205.a n = A349340 (n + 1)

end A349340

/-! ## A349340.P224519280475097549

`∑{d}[n+1, A327564(#)*A349355((n+1)/#)]`
-/

namespace A349340.P224519280475097549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327564 d * A349355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349340.P224519280475097549

namespace A349340

/-- `∑{d}[n+1, A327564(#)*A349355((n+1)/#)]` -/
def P224519280475097549.Spec : Prop :=
  ∀ n, P224519280475097549.a n = A349340 (n + 1)

end A349340

/-! ## A349340.P16129276142221660977

`∑{d}[n+1, A328722(#)*A349130((n+1)/#)]`
-/

namespace A349340.P16129276142221660977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328722 d * A349130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349340.P16129276142221660977

namespace A349340

/-- `∑{d}[n+1, A328722(#)*A349130((n+1)/#)]` -/
def P16129276142221660977.Spec : Prop :=
  ∀ n, P16129276142221660977.a n = A349340 (n + 1)

end A349340

/-! ## A349340.P10867960929420548174

`A008836(n+1)*A125131(A003557(n+1))`
-/

namespace A349340.P10867960929420548174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A125131 (A003557 (n + 1)).toNat

end

end A349340.P10867960929420548174

namespace A349340

/-- `A008836(n+1)*A125131(A003557(n+1))` -/
def P10867960929420548174.Spec : Prop :=
  ∀ n, P10867960929420548174.a n = A349340 (n + 1)

end A349340

/-! ## A349340.P11377748108745363432

`A008836(A007947(n+1))*A326297(n+1)`
-/

namespace A349340.P11377748108745363432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A007947 (n + 1)).toNat * A326297 (n + 1)

end

end A349340.P11377748108745363432

namespace A349340

/-- `A008836(A007947(n+1))*A326297(n+1)` -/
def P11377748108745363432.Spec : Prop :=
  ∀ n, P11377748108745363432.a n = A349340 (n + 1)

end A349340

/-! ## A349340.P14421900164229073933

`A003958(n+1)/A097945(A007947(n+1))`
-/

namespace A349340.P14421900164229073933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A097945 (A007947 (n + 1)).toNat : ℚ)

end

end A349340.P14421900164229073933

namespace A349340

/-- `A003958(n+1)/A097945(A007947(n+1))` -/
def P14421900164229073933.Spec : Prop :=
  ∀ n, P14421900164229073933.a n = (A349340 (n + 1) : ℚ)

end A349340

/-! ## A349340.P11080925731853519537

`A065262(A003958(n+1))/A349431(n+1)`
-/

namespace A349340.P11080925731853519537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065262 (A003958 (n + 1)).toNat : ℚ) / (A349431 (n + 1) : ℚ)

end

end A349340.P11080925731853519537

namespace A349340

/-- `A065262(A003958(n+1))/A349431(n+1)` -/
def P11080925731853519537.Spec : Prop :=
  ∀ n, P11080925731853519537.a n = (A349340 (n + 1) : ℚ)

end A349340

/-! ## A349340.P3402622895331472664

`A326297(A057521(n+1))/A076479(n+1)`
-/

namespace A349340.P3402622895331472664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326297 (A057521 (n + 1)).toNat : ℚ) / (A076479 (n + 1) : ℚ)

end

end A349340.P3402622895331472664

namespace A349340

/-- `A326297(A057521(n+1))/A076479(n+1)` -/
def P3402622895331472664.Spec : Prop :=
  ∀ n, P3402622895331472664.a n = (A349340 (n + 1) : ℚ)

end A349340

/-! ## A349340.P3267645085073086785

`A003958(n+1)/(A319340(n+1)-A000010(n+1))`
-/

namespace A349340.P3267645085073086785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A319340 (n + 1) - A000010 (n + 1) : ℚ)

end

end A349340.P3267645085073086785

namespace A349340

/-- `A003958(n+1)/(A319340(n+1)-A000010(n+1))` -/
def P3267645085073086785.Spec : Prop :=
  ∀ n, P3267645085073086785.a n = (A349340 (n + 1) : ℚ)

end A349340

/-! ## A349340.P17762931032349297174

`(A322581(n+1)-A097945(n+1))/A023900(n+1)`
-/

namespace A349340.P17762931032349297174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322581 (n + 1) - A097945 (n + 1) : ℚ) / (A023900 (n + 1) : ℚ)

end

end A349340.P17762931032349297174

namespace A349340

/-- `(A322581(n+1)-A097945(n+1))/A023900(n+1)` -/
def P17762931032349297174.Spec : Prop :=
  ∀ n, P17762931032349297174.a n = (A349340 (n + 1) : ℚ)

end A349340

/-! ## A349340.P16195761091251196646

`A023900(n+1)/A173557(n+1)*A326297(n+1)`
-/

namespace A349340.P16195761091251196646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ) * (A326297 (n + 1) : ℚ)

end

end A349340.P16195761091251196646

namespace A349340

/-- `A023900(n+1)/A173557(n+1)*A326297(n+1)` -/
def P16195761091251196646.Spec : Prop :=
  ∀ n, P16195761091251196646.a n = (A349340 (n + 1) : ℚ)

end A349340

/-! ## A349340.P12085818575484579949

`A008836(n+1)/A325126(A007947(n+1))*A325126(n+1)`
-/

namespace A349340.P12085818575484579949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008836 (n + 1) : ℚ) / (A325126 (A007947 (n + 1)).toNat : ℚ) * (A325126 (n + 1) : ℚ)

end

end A349340.P12085818575484579949

namespace A349340

/-- `A008836(n+1)/A325126(A007947(n+1))*A325126(n+1)` -/
def P12085818575484579949.Spec : Prop :=
  ∀ n, P12085818575484579949.a n = (A349340 (n + 1) : ℚ)

end A349340

/-! ## A349340.P15360890995567678437

`A326297(A064549(n+1))/A023900(n+1)`
-/

namespace A349340.P15360890995567678437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326297 (A064549 (n + 1)).toNat : ℚ) / (A023900 (n + 1) : ℚ)

end

end A349340.P15360890995567678437

namespace A349340

/-- `A326297(A064549(n+1))/A023900(n+1)` -/
def P15360890995567678437.Spec : Prop :=
  ∀ n, P15360890995567678437.a n = (A349340 (n + 1) : ℚ)

end A349340

/-!
# A349341: Dirichlet inverse of A026741, which is defined as n if n is odd, n/2 if n is even.

The programs for A349341, the canonical program `A349341.P4668944741167325365` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349341 has offset 1).

The definition of A349341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349341.P2837122749172898184

`A349342(n+1)-A026741(n+1)`
-/

namespace A349341.P2837122749172898184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349342 (n + 1) - A026741 (n + 1)

end

end A349341.P2837122749172898184

namespace A349341

/-- `A349342(n+1)-A026741(n+1)` -/
def P2837122749172898184.Spec : Prop :=
  ∀ n, P2837122749172898184.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P599210626314919753

`∑{d}[n+1, A326938(#)]`
-/

namespace A349341.P599210626314919753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326938 d

end

end A349341.P599210626314919753

namespace A349341

/-- `∑{d}[n+1, A326938(#)]` -/
def P599210626314919753.Spec : Prop :=
  ∀ n, P599210626314919753.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P4668944741167325365

`(-1)^n*A332793((n+1)/and(n+1, -(n+1)))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A349341

/-- `(-1)^n*A332793((n+1)/and(n+1, -(n+1)))` -/
def P4668944741167325365.Spec : Prop :=
  ∀ n, P4668944741167325365.a n = A349341 (n + 1)

theorem P4668944741167325365.correct : P4668944741167325365.Spec := by
  intro n
  simp only [A349341, Nat.add_sub_cancel]

end A349341

/-! ## A349341.P14330002243947411354

`A326937(A259445(n+1))`
-/

namespace A349341.P14330002243947411354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326937 (A259445 (n + 1)).toNat

end

end A349341.P14330002243947411354

namespace A349341

/-- `A326937(A259445(n+1))` -/
def P14330002243947411354.Spec : Prop :=
  ∀ n, P14330002243947411354.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P2178963442651326081

`A326937(A327937(n+1))`
-/

namespace A349341.P2178963442651326081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326937 (A327937 (n + 1)).toNat

end

end A349341.P2178963442651326081

namespace A349341

/-- `A326937(A327937(n+1))` -/
def P2178963442651326081.Spec : Prop :=
  ∀ n, P2178963442651326081.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P4664956260609382821

`A349342(A022998(n+1))-(n+1)`
-/

namespace A349341.P4664956260609382821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349342 (A022998 (n + 1)).toNat - (n + 1 : ℤ)

end

end A349341.P4664956260609382821

namespace A349341

/-- `A349342(A022998(n+1))-(n+1)` -/
def P4664956260609382821.Spec : Prop :=
  ∀ n, P4664956260609382821.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P16262047451983179859

`∑{d}[n+1, A001511(#)*A046692((n+1)/#)]`
-/

namespace A349341.P16262047451983179859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349341.P16262047451983179859

namespace A349341

/-- `∑{d}[n+1, A001511(#)*A046692((n+1)/#)]` -/
def P16262047451983179859.Spec : Prop :=
  ∀ n, P16262047451983179859.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P15199099657442547004

`∑{d}[n+1, A023900(#)*A087003((n+1)/#)]`
-/

namespace A349341.P15199099657442547004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349341.P15199099657442547004

namespace A349341

/-- `∑{d}[n+1, A023900(#)*A087003((n+1)/#)]` -/
def P15199099657442547004.Spec : Prop :=
  ∀ n, P15199099657442547004.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P15714074611023435728

`∑{d}[n+1, A062570(#)*A101035((n+1)/#)]`
-/

namespace A349341.P15714074611023435728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349341.P15714074611023435728

namespace A349341

/-- `∑{d}[n+1, A062570(#)*A101035((n+1)/#)]` -/
def P15714074611023435728.Spec : Prop :=
  ∀ n, P15714074611023435728.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P6813222728299980221

`∑{d}[n+1, A055615(#)*A209229((n+1)/#)]`
-/

namespace A349341.P6813222728299980221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349341.P6813222728299980221

namespace A349341

/-- `∑{d}[n+1, A055615(#)*A209229((n+1)/#)]` -/
def P6813222728299980221.Spec : Prop :=
  ∀ n, P6813222728299980221.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P17731221809093208291

`∑{d}[n+1, A003602(#)*A349353((n+1)/#)]`
-/

namespace A349341.P17731221809093208291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A349353 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349341.P17731221809093208291

namespace A349341

/-- `∑{d}[n+1, A003602(#)*A349353((n+1)/#)]` -/
def P17731221809093208291.Spec : Prop :=
  ∀ n, P17731221809093208291.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P11914907210287132890

`∑{d}[n+1, A078461(#)*A323363((n+1)/#)]`
-/

namespace A349341.P11914907210287132890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078461 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349341.P11914907210287132890

namespace A349341

/-- `∑{d}[n+1, A078461(#)*A323363((n+1)/#)]` -/
def P11914907210287132890.Spec : Prop :=
  ∀ n, P11914907210287132890.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P15341857106249111739

`∑{d}[n+1, A088705(#)*A327278((n+1)/#)]`
-/

namespace A349341.P15341857106249111739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088705 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349341.P15341857106249111739

namespace A349341

/-- `∑{d}[n+1, A088705(#)*A327278((n+1)/#)]` -/
def P15341857106249111739.Spec : Prop :=
  ∀ n, P15341857106249111739.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P11467705033130498242

`∑{d}[n+1, A130054(#)*A327276((n+1)/#)]`
-/

namespace A349341.P11467705033130498242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349341.P11467705033130498242

namespace A349341

/-- `∑{d}[n+1, A130054(#)*A327276((n+1)/#)]` -/
def P11467705033130498242.Spec : Prop :=
  ∀ n, P11467705033130498242.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P14455806543974248360

`∑{d}[n+1, A129527(#)*A328722((n+1)/#)]`
-/

namespace A349341.P14455806543974248360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129527 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349341.P14455806543974248360

namespace A349341

/-- `∑{d}[n+1, A129527(#)*A328722((n+1)/#)]` -/
def P14455806543974248360.Spec : Prop :=
  ∀ n, P14455806543974248360.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P5341766129213796125

`∑{d}[n+1, A104117(#)*A359484((n+1)/#)]`
-/

namespace A349341.P5341766129213796125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A104117 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349341.P5341766129213796125

namespace A349341

/-- `∑{d}[n+1, A104117(#)*A359484((n+1)/#)]` -/
def P5341766129213796125.Spec : Prop :=
  ∀ n, P5341766129213796125.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P15879124754798779648

`∑{d}[n+1, A349373(#)*A349915((n+1)/#)]`
-/

namespace A349341.P15879124754798779648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349373 d * A349915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349341.P15879124754798779648

namespace A349341

/-- `∑{d}[n+1, A349373(#)*A349915((n+1)/#)]` -/
def P15879124754798779648.Spec : Prop :=
  ∀ n, P15879124754798779648.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P15930585901904741915

`∑{d}[n+1, A323910(#)*A378218((n+1)/#)]`
-/

namespace A349341.P15930585901904741915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323910 d * A378218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349341.P15930585901904741915

namespace A349341

/-- `∑{d}[n+1, A323910(#)*A378218((n+1)/#)]` -/
def P15930585901904741915.Spec : Prop :=
  ∀ n, P15930585901904741915.a n = A349341 (n + 1)

end A349341

/-! ## A349341.P2037840773490540195

`∑{d}[n+1, A323912(#)*A378224((n+1)/#)]`
-/

namespace A349341.P2037840773490540195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323912 d * A378224 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349341.P2037840773490540195

namespace A349341

/-- `∑{d}[n+1, A323912(#)*A378224((n+1)/#)]` -/
def P2037840773490540195.Spec : Prop :=
  ∀ n, P2037840773490540195.a n = A349341 (n + 1)

end A349341

/-!
# A349342: Sum of A026741 and its Dirichlet inverse.

The programs for A349342, the canonical program `A349342.P11414406444135434568` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349342 has offset 1).

The definition of A349342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349341, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349342.P11414406444135434568

`A026741(n+1)+A349341(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A349342

/-- `A026741(n+1)+A349341(n+1)` -/
def P11414406444135434568.Spec : Prop :=
  ∀ n, P11414406444135434568.a n = A349342 (n + 1)

theorem P11414406444135434568.correct : P11414406444135434568.Spec := by
  intro n
  simp only [A349342, Nat.add_sub_cancel]

end A349342

/-! ## A349342.P5876358198366120815

`A349341(n+1)+abs(A030640(n))`
-/

namespace A349342.P5876358198366120815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349341 (n + 1) + |A030640 n|

end

end A349342.P5876358198366120815

namespace A349342

/-- `A349341(n+1)+abs(A030640(n))` -/
def P5876358198366120815.Spec : Prop :=
  ∀ n, P5876358198366120815.a n = A349342 (n + 1)

end A349342

/-! ## A349342.P14122170617028168085

`A349341(n+1)+Δ[A001318(n)]`
-/

namespace A349342.P14122170617028168085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349341 (n + 1) + (f1 (n + 1) - f1 n)

end

end A349342.P14122170617028168085

namespace A349342

/-- `A349341(n+1)+Δ[A001318(n)]` -/
def P14122170617028168085.Spec : Prop :=
  ∀ n, P14122170617028168085.a n = A349342 (n + 1)

end A349342

/-! ## A349342.P4428484363215641693

`A349341(n+1)+Δ[A319390(n)]`
-/

namespace A349342.P4428484363215641693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349341 (n + 1) + (f1 (n + 1) - f1 n)

end

end A349342.P4428484363215641693

namespace A349342

/-- `A349341(n+1)+Δ[A319390(n)]` -/
def P4428484363215641693.Spec : Prop :=
  ∀ n, P4428484363215641693.a n = A349342 (n + 1)

end A349342

/-! ## A349342.P9263628248151493473

`A001318(n+1)+A349341(n+1)-A001318(n)`
-/

namespace A349342.P9263628248151493473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1) + (A349341 (n + 1) - A001318 n)

end

end A349342.P9263628248151493473

namespace A349342

/-- `A001318(n+1)+A349341(n+1)-A001318(n)` -/
def P9263628248151493473.Spec : Prop :=
  ∀ n, P9263628248151493473.a n = A349342 (n + 1)

end A349342

/-! ## A349342.P9532073677240654858

`A349341(n+1)+A008619(A022998(n))`
-/

namespace A349342.P9532073677240654858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349341 (n + 1) + A008619 (A022998 n).toNat

end

end A349342.P9532073677240654858

namespace A349342

/-- `A349341(n+1)+A008619(A022998(n))` -/
def P9532073677240654858.Spec : Prop :=
  ∀ n, P9532073677240654858.a n = A349342 (n + 1)

end A349342

/-! ## A349342.P7187917871059133133

`A349341(n+1)+A008619(A257088(n))`
-/

namespace A349342.P7187917871059133133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349341 (n + 1) + A008619 (A257088 n).toNat

end

end A349342.P7187917871059133133

namespace A349342

/-- `A349341(n+1)+A008619(A257088(n))` -/
def P7187917871059133133.Spec : Prop :=
  ∀ n, P7187917871059133133.a n = A349342 (n + 1)

end A349342

/-! ## A349342.P6896555744282942174

`A349341(n+1)+A204904(n+1)/2`
-/

namespace A349342.P6896555744282942174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349341 (n + 1) : ℚ) + (A204904 (n + 1) : ℚ) / 2

end

end A349342.P6896555744282942174

namespace A349342

/-- `A349341(n+1)+A204904(n+1)/2` -/
def P6896555744282942174.Spec : Prop :=
  ∀ n, P6896555744282942174.a n = (A349342 (n + 1) : ℚ)

end A349342

/-! ## A349342.P11245611813228626742

`A349341(n+1)+A004525(A204904(n+1))`
-/

namespace A349342.P11245611813228626742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349341 (n + 1) + A004525 (A204904 (n + 1)).toNat

end

end A349342.P11245611813228626742

namespace A349342

/-- `A349341(n+1)+A004525(A204904(n+1))` -/
def P11245611813228626742.Spec : Prop :=
  ∀ n, P11245611813228626742.a n = A349342 (n + 1)

end A349342

/-!
# A349343: Dirichlet inverse of A193356, which is defined as n if n is odd, 0 if n is even.

The programs for A349343, the canonical program `A349343.P3180813045605391694` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349343 has offset 1).

The definition of A349343 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099991, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349343.P3180813045605391694

`A001489(n+1)*A099991(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349343

/-- `A001489(n+1)*A099991(n+1)` -/
def P3180813045605391694.Spec : Prop :=
  ∀ n, P3180813045605391694.a n = A349343 (n + 1)

theorem P3180813045605391694.correct : P3180813045605391694.Spec := by
  intro n
  simp only [A349343, Nat.add_sub_cancel]

end A349343

/-! ## A349343.P7766154295936186598

`(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%2*∏{p}[n+1, #]`
-/

namespace A349343.P7766154295936186598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) n : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)))) 2 * ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ)

end

end A349343.P7766154295936186598

namespace A349343

/-- `(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%2*∏{p}[n+1, #]` -/
def P7766154295936186598.Spec : Prop :=
  ∀ n, P7766154295936186598.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P128852598795397566

`∑{d}[n+1, A327278(#)]`
-/

namespace A349343.P128852598795397566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327278 d

end

end A349343.P128852598795397566

namespace A349343

/-- `∑{d}[n+1, A327278(#)]` -/
def P128852598795397566.Spec : Prop :=
  ∀ n, P128852598795397566.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P5185315319250097364

`(n+1)*A087003(n+1)`
-/

namespace A349343.P5185315319250097364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A087003 (n + 1)

end

end A349343.P5185315319250097364

namespace A349343

/-- `(n+1)*A087003(n+1)` -/
def P5185315319250097364.Spec : Prop :=
  ∀ n, P5185315319250097364.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P11845258644307853866

`-(A055615(2*(n+1))/2)`
-/

namespace A349343.P11845258644307853866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A055615 (2 * (n + 1)) : ℚ) / 2)

end

end A349343.P11845258644307853866

namespace A349343

/-- `-(A055615(2*(n+1))/2)` -/
def P11845258644307853866.Spec : Prop :=
  ∀ n, P11845258644307853866.a n = (A349343 (n + 1) : ℚ)

end A349343

/-! ## A349343.P9282282059503828840

`log2(gcd(2, n))*A055615(n+1)`
-/

namespace A349343.P9282282059503828840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A055615 (n + 1) : ℝ)

end

end A349343.P9282282059503828840

namespace A349343

/-- `log2(gcd(2, n))*A055615(n+1)` -/
def P9282282059503828840.Spec : Prop :=
  ∀ n, P9282282059503828840.a n = (A349343 (n + 1) : ℝ)

end A349343

/-! ## A349343.P16185687044392902589

`char[2*n]*A326937(n+1)`
-/

namespace A349343.P16185687044392902589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A326937 (n + 1)

end

end A349343.P16185687044392902589

namespace A349343

/-- `char[2*n]*A326937(n+1)` -/
def P16185687044392902589.Spec : Prop :=
  ∀ n, P16185687044392902589.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P793477020844834944

`(n+1)*A292273(2*(n+1))`
-/

namespace A349343.P793477020844834944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A292273 (2 * (n + 1))

end

end A349343.P793477020844834944

namespace A349343

/-- `(n+1)*A292273(2*(n+1))` -/
def P793477020844834944.Spec : Prop :=
  ∀ n, P793477020844834944.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P7366369201147493663

`A334660(n+1)%(2*(n+1))`
-/

namespace A349343.P7366369201147493663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334660 (n + 1)) (2 * (n + 1) : ℤ)

end

end A349343.P7366369201147493663

namespace A349343

/-- `A334660(n+1)%(2*(n+1))` -/
def P7366369201147493663.Spec : Prop :=
  ∀ n, P7366369201147493663.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P15677603385620222991

`-((n+1)*A008683(2*(n+1)))`
-/

namespace A349343.P15677603385620222991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * A008683 (2 * (n + 1)))

end

end A349343.P15677603385620222991

namespace A349343

/-- `-((n+1)*A008683(2*(n+1)))` -/
def P15677603385620222991.Spec : Prop :=
  ∀ n, P15677603385620222991.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P5623732687754852087

`(n+1)*char[2*n]*A008683(n+1)`
-/

namespace A349343.P5623732687754852087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) * A008683 (n + 1)

end

end A349343.P5623732687754852087

namespace A349343

/-- `(n+1)*char[2*n]*A008683(n+1)` -/
def P5623732687754852087.Spec : Prop :=
  ∀ n, P5623732687754852087.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P11410832206940148582

`Δ[a(n-1)-n*A008683(2*n)]` with `a(0)=0`
-/

namespace A349343.P11410832206940148582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (n : ℤ) * A008683 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349343.P11410832206940148582

namespace A349343

/-- `Δ[a(n-1)-n*A008683(2*n)]` -/
def P11410832206940148582.Spec : Prop :=
  ∀ n, P11410832206940148582.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P11629665549247856565

`A055615(A022998(n+1))`
-/

namespace A349343.P11629665549247856565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A022998 (n + 1)).toNat

end

end A349343.P11629665549247856565

namespace A349343

/-- `A055615(A022998(n+1))` -/
def P11629665549247856565.Spec : Prop :=
  ∀ n, P11629665549247856565.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P14850525036059500142

`A055615(n+1)*A059841(n)`
-/

namespace A349343.P14850525036059500142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) * A059841 n

end

end A349343.P14850525036059500142

namespace A349343

/-- `A055615(n+1)*A059841(n)` -/
def P14850525036059500142.Spec : Prop :=
  ∀ n, P14850525036059500142.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P5952044185817630694

`A087003(n+1)*A097062(n)`
-/

namespace A349343.P5952044185817630694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (n + 1) * A097062 n

end

end A349343.P5952044185817630694

namespace A349343

/-- `A087003(n+1)*A097062(n)` -/
def P5952044185817630694.Spec : Prop :=
  ∀ n, P5952044185817630694.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P4106720866794093902

`A087003(n+1)*A109613(n)`
-/

namespace A349343.P4106720866794093902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (n + 1) * A109613 n

end

end A349343.P4106720866794093902

namespace A349343

/-- `A087003(n+1)*A109613(n)` -/
def P4106720866794093902.Spec : Prop :=
  ∀ n, P4106720866794093902.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P13676569393614296697

`A087003(n+1)*A118402(n)`
-/

namespace A349343.P13676569393614296697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (n + 1) * A118402 n

end

end A349343.P13676569393614296697

namespace A349343

/-- `A087003(n+1)*A118402(n)` -/
def P13676569393614296697.Spec : Prop :=
  ∀ n, P13676569393614296697.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P17046033430652790263

`A087003(n+1)*A133259(n)`
-/

namespace A349343.P17046033430652790263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (n + 1) * A133259 n

end

end A349343.P17046033430652790263

namespace A349343

/-- `A087003(n+1)*A133259(n)` -/
def P17046033430652790263.Spec : Prop :=
  ∀ n, P17046033430652790263.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P13308779196547676114

`A087003(n+1)*A141310(n)`
-/

namespace A349343.P13308779196547676114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (n + 1) * A141310 n

end

end A349343.P13308779196547676114

namespace A349343

/-- `A087003(n+1)*A141310(n)` -/
def P13308779196547676114.Spec : Prop :=
  ∀ n, P13308779196547676114.a n = A349343 (n + 1)

end A349343

/-! ## A349343.P1314221450811536266

`A087003(n+1)*A165998(n)`
-/

namespace A349343.P1314221450811536266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (n + 1) * A165998 n

end

end A349343.P1314221450811536266

namespace A349343

/-- `A087003(n+1)*A165998(n)` -/
def P1314221450811536266.Spec : Prop :=
  ∀ n, P1314221450811536266.a n = A349343 (n + 1)

end A349343

/-!
# A349344: Dirichlet inverse of A109168, where A109168(n) = (n+A006519(n))/2, and A006519 is the highest power of 2 dividing n.

The programs for A349344, there is no canonical definition to state claims against.
-/

/-! ## A349344.P17821494114285231463

`A349345(n+1)-A109168(n+1)`
-/

namespace A349344.P17821494114285231463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349345 (n + 1) - A109168 (n + 1)

end

end A349344.P17821494114285231463

/-! ## A349344.P374453391202203809

`∑[1-and(2, n)]*A349134(n+1)`
-/

namespace A349344.P374453391202203809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A349134 (n + 1)

end

end A349344.P374453391202203809

/-! ## A349344.P1538857788067343631

`A000034(n)*A349134(n+1)`
-/

namespace A349344.P1538857788067343631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A349134 (n + 1)

end

end A349344.P1538857788067343631

/-! ## A349344.P11631488432117067507

`A133186(n)*A349134(n+1)`
-/

namespace A349344.P11631488432117067507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133186 n * A349134 (n + 1)

end

end A349344.P11631488432117067507

/-! ## A349344.P11979337245663937486

`A349345(n+1)-A140472(n+1)`
-/

namespace A349344.P11979337245663937486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349345 (n + 1) - A140472 (n + 1)

end

end A349344.P11979337245663937486

/-! ## A349344.P6457377252001830069

`A001511(n+1)*A349134(n+1)`
-/

namespace A349344.P6457377252001830069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A349134 (n + 1)

end

end A349344.P6457377252001830069

/-! ## A349344.P5478445816922347233

`A003484(n+1)*A349134(n+1)`
-/

namespace A349344.P5478445816922347233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1) * A349134 (n + 1)

end

end A349344.P5478445816922347233

/-! ## A349344.P4929747598617473174

`A006519(n+1)*A349134(n+1)`
-/

namespace A349344.P4929747598617473174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A349134 (n + 1)

end

end A349344.P4929747598617473174

/-! ## A349344.P16624908269654600897

`A056832(n+1)*A349134(n+1)`
-/

namespace A349344.P16624908269654600897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) * A349134 (n + 1)

end

end A349344.P16624908269654600897

/-! ## A349344.P4470421529930359451

`A068057(n+1)*A349134(n+1)`
-/

namespace A349344.P4470421529930359451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068057 (n + 1) * A349134 (n + 1)

end

end A349344.P4470421529930359451

/-! ## A349344.P5613826843538175558

`A078734(n+1)*A349134(n+1)`
-/

namespace A349344.P5613826843538175558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (n + 1) * A349134 (n + 1)

end

end A349344.P5613826843538175558

/-! ## A349344.P3532138444295515054

`A082388(n+1)*A349134(n+1)`
-/

namespace A349344.P3532138444295515054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082388 (n + 1) * A349134 (n + 1)

end

end A349344.P3532138444295515054

/-! ## A349344.P17042135724596421758

`A087810(n+1)*A349346(n+1)`
-/

namespace A349344.P17042135724596421758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087810 (n + 1) * A349346 (n + 1)

end

end A349344.P17042135724596421758

/-! ## A349344.P439310674774854840

`A089242(n+1)*A349134(n+1)`
-/

namespace A349344.P439310674774854840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089242 (n + 1) * A349134 (n + 1)

end

end A349344.P439310674774854840

/-! ## A349344.P13180466628185994848

`A092412(n+1)*A349134(n+1)`
-/

namespace A349344.P13180466628185994848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092412 (n + 1) * A349134 (n + 1)

end

end A349344.P13180466628185994848

/-! ## A349344.P13250214852870205476

`A105931(n+1)*A349134(n+1)`
-/

namespace A349344.P13250214852870205476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (n + 1) * A349134 (n + 1)

end

end A349344.P13250214852870205476

/-! ## A349344.P7283921397549127205

`A138191(n+1)*A349134(n+1)`
-/

namespace A349344.P7283921397549127205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (n + 1) * A349134 (n + 1)

end

end A349344.P7283921397549127205

/-! ## A349344.P13490864856298613498

`A235726(n+1)*A349134(n+1)`
-/

namespace A349344.P13490864856298613498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235726 (n + 1) * A349134 (n + 1)

end

end A349344.P13490864856298613498

/-! ## A349344.P9802854796037839671

`A236313(n+1)*A349134(n+1)`
-/

namespace A349344.P9802854796037839671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236313 (n + 1) * A349134 (n + 1)

end

end A349344.P9802854796037839671

/-! ## A349344.P8909098362777602785

`(A007814(n+1)+1)*A349134(n+1)`
-/

namespace A349344.P8909098362777602785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A349134 (n + 1)

end

end A349344.P8909098362777602785

/-!
# A349345: Sum of A109168 and its Dirichlet inverse, where A109168(n) = (n+A006519(n))/2, and A006519 is the highest power of 2 dividing n.

The programs for A349345, there is no canonical definition to state claims against.
-/

/-! ## A349345.P1695616085316573775

`A109168(n+1)+A349344(n+1)`
-/

namespace A349345.P1695616085316573775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (n + 1) + A349344 (n + 1)

end

end A349345.P1695616085316573775

/-! ## A349345.P11141803894040682759

`A349344(n+1)+A140472(n+1)`
-/

namespace A349345.P11141803894040682759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349344 (n + 1) + A140472 (n + 1)

end

end A349345.P11141803894040682759

/-! ## A349345.P9098680701264391754

`A006519(n+1)*A349135(n+1)`
-/

namespace A349345.P9098680701264391754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A349135 (n + 1)

end

end A349345.P9098680701264391754

/-! ## A349345.P8507673143472234700

`(n+1)/A000265(n+1)*A349135(n+1)`
-/

namespace A349345.P8507673143472234700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000265 (n + 1) : ℚ) * (A349135 (n + 1) : ℚ)

end

end A349345.P8507673143472234700

/-! ## A349345.P11666723734729544000

`A000079(A001511(n+1)-1)*A349135(n+1)`
-/

namespace A349345.P11666723734729544000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001511 (n + 1) - 1).toNat * A349135 (n + 1)

end

end A349345.P11666723734729544000

/-! ## A349345.P17704233105817657953

`(A349134(n+1)+A003602(n+1))*A006519(n+1)`
-/

namespace A349345.P17704233105817657953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A349134 (n + 1) + A003602 (n + 1)) * A006519 (n + 1)

end

end A349345.P17704233105817657953

/-! ## A349345.P5072102336958436830

`A349344(n+1)+A003602(n+1)*A006519(n+1)`
-/

namespace A349345.P5072102336958436830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349344 (n + 1) + A003602 (n + 1) * A006519 (n + 1)

end

end A349345.P5072102336958436830

/-! ## A349345.P4304261756532815899

`A109168(n+1)+A006519(n+1)*A349134(n+1)`
-/

namespace A349345.P4304261756532815899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (n + 1) + A006519 (n + 1) * A349134 (n + 1)

end

end A349345.P4304261756532815899

/-! ## A349345.P11167341559018191134

`A349344(n+1)+A003602(A006519(n+1)+n)`
-/

namespace A349345.P11167341559018191134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349344 (n + 1) + A003602 (A006519 (n + 1) + (n : ℤ)).toNat

end

end A349345.P11167341559018191134

/-!
# A349346: Dirichlet inverse of A181988, where A181988(n) = A001511(n)*A003602(n).

The programs for A349346, there is no canonical definition to state claims against.
-/

/-! ## A349346.P12563562398090441769

`A349347(n+1)-A181988(n+1)`
-/

namespace A349346.P12563562398090441769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349347 (n + 1) - A181988 (n + 1)

end

end A349346.P12563562398090441769

/-! ## A349346.P14776008116718813426

`A349344((val(n+1, 2)%2+1)*lcm(4, n+1)/4)`
-/

namespace A349346.P14776008116718813426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349344 (SequenceMachineLib.roundAway (((SequenceMachineLib.valuation (n + 1) 2 % 2 + 1 : ℕ) : ℚ) * ((Nat.lcm 4 (n + 1) : ℚ) / 4))).toNat

end

end A349346.P14776008116718813426

/-! ## A349346.P5106268229533744154

`∑{d}[n+1, A154955(#)*A349134((n+1)/#)]`
-/

namespace A349346.P5106268229533744154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A349134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349346.P5106268229533744154

/-! ## A349346.P8148011936679714742

`∑{d}[n+1, A349432(#)*A359484((n+1)/#)]`
-/

namespace A349346.P8148011936679714742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349432 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349346.P8148011936679714742

/-! ## A349346.P15843560576982689537

`A349344(lcm(A000265(n+1), A051012(n+1)))`
-/

namespace A349346.P15843560576982689537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349344 (Int.lcm (A000265 (n + 1)) (A051012 (n + 1)))

end

end A349346.P15843560576982689537

/-! ## A349346.P4181252989879590271

`A349347(n+1)-A001511(n+1)*A003602(n+1)`
-/

namespace A349346.P4181252989879590271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349347 (n + 1) - A001511 (n + 1) * A003602 (n + 1)

end

end A349346.P4181252989879590271

/-! ## A349346.P4098300466650366139

`A092673(A006519(n+1))*A349134(A000265(n+1))`
-/

namespace A349346.P4098300466650366139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A006519 (n + 1)).toNat * A349134 (A000265 (n + 1)).toNat

end

end A349346.P4098300466650366139

/-!
# A349347: Sum of A181988 and its Dirichlet inverse, where A181988(n) = A001511(n)*A003602(n).

The programs for A349347, there is no canonical definition to state claims against.
-/

/-! ## A349347.P10748097470038229073

`A181988(n+1)+A349346(n+1)`
-/

namespace A349347.P10748097470038229073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181988 (n + 1) + A349346 (n + 1)

end

end A349347.P10748097470038229073

/-! ## A349347.P6735220200865098088

`A349344((val(n+1, 2)%2+1)*lcm(4, n+1)/4)+A181988(n+1)`
-/

namespace A349347.P6735220200865098088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349344 (SequenceMachineLib.roundAway (((SequenceMachineLib.valuation (n + 1) 2 % 2 + 1 : ℕ) : ℚ) * ((Nat.lcm 4 (n + 1) : ℚ) / 4))).toNat + A181988 (n + 1)

end

end A349347.P6735220200865098088

/-! ## A349347.P154674530513336033

`A349346(n+1)+(A025480(n)+1)*Δ[A005187(n)]`
-/

namespace A349347.P154674530513336033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349346 (n + 1) + (A025480 n + 1) * (f1 (n + 1) - f1 n)

end

end A349347.P154674530513336033

/-! ## A349347.P10271528462341352338

`A349346(n+1)+A001511(n+1)*A003602(n+1)`
-/

namespace A349347.P10271528462341352338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349346 (n + 1) + A001511 (n + 1) * A003602 (n + 1)

end

end A349347.P10271528462341352338

/-! ## A349347.P13163943108106317958

`A349346(n+1)+(A085058(n)-1)*A003602(n+1)`
-/

namespace A349347.P13163943108106317958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349346 (n + 1) + (A085058 n - 1) * A003602 (n + 1)

end

end A349347.P13163943108106317958

/-! ## A349347.P8644519758970701956

`A349346(n+1)+(2-Δ[A000120(n)])*A003602(n+1)`
-/

namespace A349347.P8644519758970701956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349346 (n + 1) + (2 - (f1 (n + 1) - f1 n)) * A003602 (n + 1)

end

end A349347.P8644519758970701956

/-! ## A349347.P18206390527765275770

`A349346(n+1)+(A007814(n+1)+1)*A003602(n+1)`
-/

namespace A349347.P18206390527765275770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349346 (n + 1) + (A007814 (n + 1) + 1) * A003602 (n + 1)

end

end A349347.P18206390527765275770

/-! ## A349347.P15377035726919913430

`A349346(n+1)+A001511(n+1)*A110963(2*n+1)`
-/

namespace A349347.P15377035726919913430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349346 (n + 1) + A001511 (n + 1) * A110963 (2 * n + 1)

end

end A349347.P15377035726919913430

/-! ## A349347.P2204071559094165331

`A349346(n+1)+∑{d}[n+1, A062570(#)*A349373((n+1)/#)]`
-/

namespace A349347.P2204071559094165331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349346 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A062570 d * A349373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349347.P2204071559094165331

/-! ## A349347.P13275449678333876845

`A349346(n+1)+∑{d}[n+1, A003602(#)*A036987((n+1)/#-1)]`
-/

namespace A349347.P13275449678333876845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349346 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A003602 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A349347.P13275449678333876845

/-! ## A349347.P16078221404631507356

`A349346(n+1)+A001511(n+1)*A008619(A000265(n+1))`
-/

namespace A349347.P16078221404631507356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349346 (n + 1) + A001511 (n + 1) * A008619 (A000265 (n + 1)).toNat

end

end A349347.P16078221404631507356

/-!
# A349348: Dirichlet inverse of A252463, where A252463 shifts the prime factorization of odd numbers one step towards smaller primes and divides even numbers by two.

The programs for A349348, there is no canonical definition to state claims against.
-/

/-! ## A349348.P4843784384700144093

`A349349(n+1)-A252463(n+1)`
-/

namespace A349348.P4843784384700144093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349349 (n + 1) - A252463 (n + 1)

end

end A349348.P4843784384700144093

/-! ## A349348.P13145892673256557113

`A349349(n+1)-∑{d}[n+1, A348045(#)]`
-/

namespace A349348.P13145892673256557113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349349 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A348045 d

end

end A349348.P13145892673256557113

/-! ## A349348.P15612548665043518436

`∑{d}[n+1, A055615(#)*A349438((n+1)/#)]`
-/

namespace A349348.P15612548665043518436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349348.P15612548665043518436

/-! ## A349348.P5287898492784108623

`A349349(n+1)-A285727(A051755(n+2))`
-/

namespace A349348.P5287898492784108623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349349 (n + 1) - A285727 (A051755 (n + 2)).toNat

end

end A349348.P5287898492784108623

/-! ## A349348.P5774200150242578255

`A349349(n+1)-A246277(2*lcm(2, n+1)-(n+1))`
-/

namespace A349348.P5774200150242578255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349349 (n + 1) - A246277 (2 * Nat.lcm 2 (n + 1) - (n + 1))

end

end A349348.P5774200150242578255

/-! ## A349348.P753938032975880465

`A349349(n+1)-A285727((gcd(2, n)+1)*(n+1))`
-/

namespace A349348.P753938032975880465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349349 (n + 1) - A285727 ((Nat.gcd 2 n + 1) * (n + 1))

end

end A349348.P753938032975880465

/-! ## A349348.P11639538165489865052

`A349349(n+1)-A285727(A106833(n+1))`
-/

namespace A349348.P11639538165489865052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349349 (n + 1) - A285727 (A106833 (n + 1)).toNat

end

end A349348.P11639538165489865052

/-!
# A349349: Sum of A252463 and its Dirichlet inverse, where A252463 shifts the prime factorization of odd numbers one step towards smaller primes and divides even numbers by two.

The programs for A349349, there is no canonical definition to state claims against.
-/

/-! ## A349349.P14602869202091127459

`A252463(n+1)+A349348(n+1)`
-/

namespace A349349.P14602869202091127459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (n + 1) + A349348 (n + 1)

end

end A349349.P14602869202091127459

/-! ## A349349.P5280477770410697213

`A349348(n+1)+∑{d}[n+1, A348045(#)]`
-/

namespace A349349.P5280477770410697213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349348 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A348045 d

end

end A349349.P5280477770410697213

/-! ## A349349.P6397525551382764565

`A349348(n+1)+∑{d}[n+1, #*A349437((n+1)/#)]`
-/

namespace A349349.P6397525551382764565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349348 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349437 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349349.P6397525551382764565

/-! ## A349349.P4423759986429380999

`A349348(n+1)+A285727(A051755(n+2))`
-/

namespace A349349.P4423759986429380999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349348 (n + 1) + A285727 (A051755 (n + 2)).toNat

end

end A349349.P4423759986429380999

/-! ## A349349.P1314240055496119090

`A349348(n+1)+A246277(2*lcm(2, n+1)-(n+1))`
-/

namespace A349349.P1314240055496119090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349348 (n + 1) + A246277 (2 * Nat.lcm 2 (n + 1) - (n + 1))

end

end A349349.P1314240055496119090

/-! ## A349349.P12379758451156374415

`A349348(n+1)+A285727(A106833(n+1))`
-/

namespace A349349.P12379758451156374415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349348 (n + 1) + A285727 (A106833 (n + 1)).toNat

end

end A349349.P12379758451156374415

/-!
# A349350: Dirichlet inverse of A057521, the powerful part of n.

The programs for A349350, there is no canonical definition to state claims against.
-/

/-! ## A349350.P13523944131058081729

`∑{d}[n+1, A055615(#)*A349442((n+1)/#)]`
-/

namespace A349350.P13523944131058081729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349442 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349350.P13523944131058081729

/-! ## A349350.P3928716508740462730

`A349442(A064549(n+1))/∏{p}[n+1, #-1]`
-/

namespace A349350.P3928716508740462730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349442 (A064549 (n + 1)).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A349350.P3928716508740462730

/-! ## A349350.P3977838944807875295

`A349442(A064549(n+1))/A173557(n+1)`
-/

namespace A349350.P3977838944807875295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349442 (A064549 (n + 1)).toNat : ℚ) / (A173557 (n + 1) : ℚ)

end

end A349350.P3977838944807875295

/-!
# A349351: Dirichlet inverse of A006368, "the amusical permutation", a(2n)=3n, a(4n+1)=3n+1, a(4n-1)=3n-1.

The programs for A349351, there is no canonical definition to state claims against.
-/

/-! ## A349351.P9012874353683648287

`A349352(n+1)-A006368(n+1)`
-/

namespace A349351.P9012874353683648287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349352 (n + 1) - A006368 (n + 1)

end

end A349351.P9012874353683648287

/-! ## A349351.P14657369437187124655

`∑{d}[n+1, A349368(#)*A349377((n+1)/#)]`
-/

namespace A349351.P14657369437187124655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349368 d * A349377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349351.P14657369437187124655

/-! ## A349351.P17611593974401858348

`A349352(n+1)-A168221(A006369(n+1))`
-/

namespace A349351.P17611593974401858348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349352 (n + 1) - A168221 (A006369 (n + 1)).toNat

end

end A349351.P17611593974401858348

/-!
# A349352: Sum of A006368, "the amusical permutation", and its Dirichlet inverse.

The programs for A349352, there is no canonical definition to state claims against.
-/

/-! ## A349352.P14418017723844226822

`A006368(n+1)+A349351(n+1)`
-/

namespace A349352.P14418017723844226822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (n + 1) + A349351 (n + 1)

end

end A349352.P14418017723844226822

/-! ## A349352.P5593322064014576034

`A349351(n+1)+A342131(n)+1`
-/

namespace A349352.P5593322064014576034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349351 (n + 1) + (A342131 n + 1)

end

end A349352.P5593322064014576034

/-! ## A349352.P17386767765769196934

`A349351(n+1)+A168221(A006369(n+1))`
-/

namespace A349352.P17386767765769196934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349351 (n + 1) + A168221 (A006369 (n + 1)).toNat

end

end A349352.P17386767765769196934

/-!
# A349353: Dirichlet inverse of A328203.

The programs for A349353, there is no canonical definition to state claims against.
-/

/-! ## A349353.P17614580134016228384

`A349354(n+1)-A328203(n+1)`
-/

namespace A349353.P17614580134016228384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349354 (n + 1) - A328203 (n + 1)

end

end A349353.P17614580134016228384

/-! ## A349353.P17982030508750677871

`∑{d}[n+1, A023900(#)*A349915((n+1)/#)]`
-/

namespace A349353.P17982030508750677871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A349915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349353.P17982030508750677871

/-! ## A349353.P12887254558118019281

`∑{d}[n+1, A046692(#)*A349445((n+1)/#)]`
-/

namespace A349353.P12887254558118019281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A349445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349353.P12887254558118019281

/-! ## A349353.P8672617644834131989

`∑{d}[n+1, A349134(#)*A349341((n+1)/#)]`
-/

namespace A349353.P8672617644834131989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349134 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349353.P8672617644834131989

/-! ## A349353.P11569710488490327328

`∑{d}[n+1, A349343(#)*A349344((n+1)/#)]`
-/

namespace A349353.P11569710488490327328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349343 d * A349344 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349353.P11569710488490327328

/-!
# A349354: Sum of A328203 and its Dirichlet inverse.

The programs for A349354, there is no canonical definition to state claims against.
-/

/-! ## A349354.P10246892260456611913

`A328203(n+1)+A349353(n+1)`
-/

namespace A349354.P10246892260456611913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328203 (n + 1) + A349353 (n + 1)

end

end A349354.P10246892260456611913

/-! ## A349354.P7776102837371969323

`A328203(n+1)+∑{d}[n+1, A023900(#)*A349915((n+1)/#)]`
-/

namespace A349354.P7776102837371969323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328203 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A023900 d * A349915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349354.P7776102837371969323

/-! ## A349354.P1866592502343184757

`A328203(n+1)+∑{d}[n+1, A046692(#)*A349445((n+1)/#)]`
-/

namespace A349354.P1866592502343184757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328203 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A046692 d * A349445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349354.P1866592502343184757

/-! ## A349354.P12772748444446958327

`A328203(n+1)+∑{d}[n+1, A349134(#)*A349341((n+1)/#)]`
-/

namespace A349354.P12772748444446958327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328203 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A349134 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349354.P12772748444446958327

/-! ## A349354.P9156101041927937848

`A328203(n+1)+∑{d}[n+1, A349343(#)*A349344((n+1)/#)]`
-/

namespace A349354.P9156101041927937848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328203 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A349343 d * A349344 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349354.P9156101041927937848

/-!
# A349355: Dirichlet convolution of A003958 with A063441 (Dirichlet inverse of A003959), where A003958 and A003959 are fully multiplicative with a(p) = p-1 and p+1 respectively.

The programs for A349355, the canonical program `A349355.P18005957754641099488` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349355 has offset 1).

The definition of A349355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349355.P6181010724785323091

`A349357(n+1)-A349356(n+1)`
-/

namespace A349355.P6181010724785323091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349357 (n + 1) - A349356 (n + 1)

end

end A349355.P6181010724785323091

namespace A349355

/-- `A349357(n+1)-A349356(n+1)` -/
def P6181010724785323091.Spec : Prop :=
  ∀ n, P6181010724785323091.a n = A349355 (n + 1)

end A349355

/-! ## A349355.P18005957754641099488

`A034444(n+1)*A349340(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349355

/-- `A034444(n+1)*A349340(n+1)` -/
def P18005957754641099488.Spec : Prop :=
  ∀ n, P18005957754641099488.a n = A349355 (n + 1)

theorem P18005957754641099488.correct : P18005957754641099488.Spec := by
  intro n
  simp only [A349355, Nat.add_sub_cancel]

end A349355

/-! ## A349355.P9054368021058838716

`∑{d}[n+1, A003966(#)*A062953((n+1)/#)]`
-/

namespace A349355.P9054368021058838716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003966 d * A062953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349355.P9054368021058838716

namespace A349355

/-- `∑{d}[n+1, A003966(#)*A062953((n+1)/#)]` -/
def P9054368021058838716.Spec : Prop :=
  ∀ n, P9054368021058838716.a n = A349355 (n + 1)

end A349355

/-! ## A349355.P2643081214017750838

`∑{d}[n+1, A003958(#)*A063441((n+1)/#)]`
-/

namespace A349355.P2643081214017750838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003958 d * A063441 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349355.P2643081214017750838

namespace A349355

/-- `∑{d}[n+1, A003958(#)*A063441((n+1)/#)]` -/
def P2643081214017750838.Spec : Prop :=
  ∀ n, P2643081214017750838.a n = A349355 (n + 1)

end A349355

/-! ## A349355.P15997498084923121228

`A000005(A007947(n+1))*A349340(n+1)`
-/

namespace A349355.P15997498084923121228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat * A349340 (n + 1)

end

end A349355.P15997498084923121228

namespace A349355

/-- `A000005(A007947(n+1))*A349340(n+1)` -/
def P15997498084923121228.Spec : Prop :=
  ∀ n, P15997498084923121228.a n = A349355 (n + 1)

end A349355

/-!
# A349356: Dirichlet convolution of A003959 with A097945 (Dirichlet inverse of A003958), where A003958 and A003959 are fully multiplicative with a(p) = p-1 and p+1 respectively.

The programs for A349356, the canonical program `A349356.P8236317292447045673` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349356 has offset 1).

The definition of A349356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349356.P15935679819653774561

`A349357(n+1)-A349355(n+1)`
-/

namespace A349356.P15935679819653774561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349357 (n + 1) - A349355 (n + 1)

end

end A349356.P15935679819653774561

namespace A349356

/-- `A349357(n+1)-A349355(n+1)` -/
def P15935679819653774561.Spec : Prop :=
  ∀ n, P15935679819653774561.a n = A349356 (n + 1)

end A349356

/-! ## A349356.P8976842506647872522

`A034444(n+1)*A327564(n+1)`
-/

namespace A349356.P8976842506647872522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A327564 (n + 1)

end

end A349356.P8976842506647872522

namespace A349356

/-- `A034444(n+1)*A327564(n+1)` -/
def P8976842506647872522.Spec : Prop :=
  ∀ n, P8976842506647872522.a n = A349356 (n + 1)

end A349356

/-! ## A349356.P10048979227112795529

`∑{d}[n+1, A003959(#)*A097945((n+1)/#)]`
-/

namespace A349356.P10048979227112795529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003959 d * A097945 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349356.P10048979227112795529

namespace A349356

/-- `∑{d}[n+1, A003959(#)*A097945((n+1)/#)]` -/
def P10048979227112795529.Spec : Prop :=
  ∀ n, P10048979227112795529.a n = A349356 (n + 1)

end A349356

/-! ## A349356.P8236317292447045673

`∑{d}[n+1, A003968(#)*A276833((n+1)/#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A349356

/-- `∑{d}[n+1, A003968(#)*A276833((n+1)/#)]` -/
def P8236317292447045673.Spec : Prop :=
  ∀ n, P8236317292447045673.a n = A349356 (n + 1)

theorem P8236317292447045673.correct : P8236317292447045673.Spec := by
  intro n
  simp only [A349356, Nat.add_sub_cancel]

end A349356

/-! ## A349356.P15081147103010043659

`∑{d}[n+1, A003557(#)*A327564((n+1)/#)]`
-/

namespace A349356.P15081147103010043659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d * A327564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349356.P15081147103010043659

namespace A349356

/-- `∑{d}[n+1, A003557(#)*A327564((n+1)/#)]` -/
def P15081147103010043659.Spec : Prop :=
  ∀ n, P15081147103010043659.a n = A349356 (n + 1)

end A349356

/-! ## A349356.P1659094366180720940

`∑{d}[n+1, A003969(#)*A341635((n+1)/#)]`
-/

namespace A349356.P1659094366180720940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003969 d * A341635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349356.P1659094366180720940

namespace A349356

/-- `∑{d}[n+1, A003969(#)*A341635((n+1)/#)]` -/
def P1659094366180720940.Spec : Prop :=
  ∀ n, P1659094366180720940.a n = A349356 (n + 1)

end A349356

/-! ## A349356.P11513697801534577781

`A000005(A007947(n+1))*A327564(n+1)`
-/

namespace A349356.P11513697801534577781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat * A327564 (n + 1)

end

end A349356.P11513697801534577781

namespace A349356

/-- `A000005(A007947(n+1))*A327564(n+1)` -/
def P11513697801534577781.Spec : Prop :=
  ∀ n, P11513697801534577781.a n = A349356 (n + 1)

end A349356

/-!
# A349357: a(n) = A349355(n) + A349356(n).

The programs for A349357, the canonical program `A349357.P18109663131693334848` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349357 has offset 1).

The definition of A349357 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349355, A349356, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349357.P18109663131693334848

`A349355(n+1)+A349356(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A349357

/-- `A349355(n+1)+A349356(n+1)` -/
def P18109663131693334848.Spec : Prop :=
  ∀ n, P18109663131693334848.a n = A349357 (n + 1)

theorem P18109663131693334848.correct : P18109663131693334848.Spec := by
  intro n
  simp only [A349357, Nat.add_sub_cancel]

end A349357

/-! ## A349357.P5421287892054930109

`A349355(n+1)+A034444(n+1)*A327564(n+1)`
-/

namespace A349357.P5421287892054930109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349355 (n + 1) + A034444 (n + 1) * A327564 (n + 1)

end

end A349357.P5421287892054930109

namespace A349357

/-- `A349355(n+1)+A034444(n+1)*A327564(n+1)` -/
def P5421287892054930109.Spec : Prop :=
  ∀ n, P5421287892054930109.a n = A349357 (n + 1)

end A349357

/-! ## A349357.P10006962896049800679

`A349356(n+1)+∑{d}[n+1, A003966(#)*A062953((n+1)/#)]`
-/

namespace A349357.P10006962896049800679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349356 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A003966 d * A062953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349357.P10006962896049800679

namespace A349357

/-- `A349356(n+1)+∑{d}[n+1, A003966(#)*A062953((n+1)/#)]` -/
def P10006962896049800679.Spec : Prop :=
  ∀ n, P10006962896049800679.a n = A349357 (n + 1)

end A349357

/-! ## A349357.P14294917132716209685

`A349356(n+1)+∑{d}[n+1, A003958(#)*A063441((n+1)/#)]`
-/

namespace A349357.P14294917132716209685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349356 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A003958 d * A063441 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349357.P14294917132716209685

namespace A349357

/-- `A349356(n+1)+∑{d}[n+1, A003958(#)*A063441((n+1)/#)]` -/
def P14294917132716209685.Spec : Prop :=
  ∀ n, P14294917132716209685.a n = A349357 (n + 1)

end A349357

/-! ## A349357.P1830454246434820061

`A349356(n+1)+A000005(A007947(n+1))*A349340(n+1)`
-/

namespace A349357.P1830454246434820061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349356 (n + 1) + A000005 (A007947 (n + 1)).toNat * A349340 (n + 1)

end

end A349357.P1830454246434820061

namespace A349357

/-- `A349356(n+1)+A000005(A007947(n+1))*A349340(n+1)` -/
def P1830454246434820061.Spec : Prop :=
  ∀ n, P1830454246434820061.a n = A349357 (n + 1)

end A349357

/-!
# A349358: Dirichlet inverse of A064216, which is A064989(2n-1), where A064989 is fully multiplicative with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

The programs for A349358, there is no canonical definition to state claims against.
-/

/-! ## A349358.P8137229867546944305

`A349359(n+1)-A064216(n+1)`
-/

namespace A349358.P8137229867546944305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349359 (n + 1) - A064216 (n + 1)

end

end A349358.P8137229867546944305

/-! ## A349358.P12694012071919639109

`A349359(n+1)-A243502(n+1)/2`
-/

namespace A349358.P12694012071919639109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349359 (n + 1) : ℚ) - (A243502 (n + 1) : ℚ) / 2

end

end A349358.P12694012071919639109

/-! ## A349358.P15476242268746036523

`∑{d}[n+1, A323893(#)*A349398((n+1)/#)]`
-/

namespace A349358.P15476242268746036523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323893 d * A349398 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349358.P15476242268746036523

/-! ## A349358.P11733784482803552120

`A349359(n+1)-A064989(2*n+1)`
-/

namespace A349358.P11733784482803552120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349359 (n + 1) - A064989 (2 * n + 1)

end

end A349358.P11733784482803552120

/-! ## A349358.P18169459665184199963

`A349359(n+1)-A252463(2*n+1)`
-/

namespace A349358.P18169459665184199963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349359 (n + 1) - A252463 (2 * n + 1)

end

end A349358.P18169459665184199963

/-! ## A349358.P16011529611870715249

`A349359(n+1)-A004526(A243502(n+1))`
-/

namespace A349358.P16011529611870715249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349359 (n + 1) - A004526 (A243502 (n + 1)).toNat

end

end A349358.P16011529611870715249

/-!
# A349359: Sum of A064216 and its Dirichlet inverse, where A064216 = A064989(2n-1), and A064989 is fully multiplicative with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

The programs for A349359, there is no canonical definition to state claims against.
-/

/-! ## A349359.P16859425640016689188

`A064216(n+1)+A349358(n+1)`
-/

namespace A349359.P16859425640016689188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1) + A349358 (n + 1)

end

end A349359.P16859425640016689188

/-! ## A349359.P15236487422836894780

`A349358(n+1)+A243502(n+1)/2`
-/

namespace A349359.P15236487422836894780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349358 (n + 1) : ℚ) + (A243502 (n + 1) : ℚ) / 2

end

end A349359.P15236487422836894780

/-! ## A349359.P5133622668195540866

`A349358(n+1)+A014682(A243502(n+1))`
-/

namespace A349359.P5133622668195540866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349358 (n + 1) + A014682 (A243502 (n + 1)).toNat

end

end A349359.P5133622668195540866

/-! ## A349359.P3252486931539790933

`A349358(n+1)+A290099(A016825(n)/2)`
-/

namespace A349359.P3252486931539790933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349358 (n + 1) + A290099 (SequenceMachineLib.roundAway ((A016825 n : ℚ) / 2)).toNat

end

end A349359.P3252486931539790933

/-! ## A349359.P14838554015792819861

`A349358(n+1)+A064989(2*n+1)`
-/

namespace A349359.P14838554015792819861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349358 (n + 1) + A064989 (2 * n + 1)

end

end A349359.P14838554015792819861

/-! ## A349359.P13601397371504661744

`A349358(n+1)+A341515(2*n+1)`
-/

namespace A349359.P13601397371504661744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349358 (n + 1) + A341515 (2 * n + 1)

end

end A349359.P13601397371504661744

/-! ## A349359.P9827084976955916176

`A349358(n+1)+A283463(A103517(n))`
-/

namespace A349359.P9827084976955916176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349358 (n + 1) + A283463 (A103517 n).toNat

end

end A349359.P9827084976955916176

/-! ## A349359.P16238216477766719618

`A349358(n+1)-A290099(A016825(n))`
-/

namespace A349359.P16238216477766719618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349358 (n + 1) - A290099 (A016825 n).toNat

end

end A349359.P16238216477766719618

/-! ## A349359.P1981545243810892263

`A349358(n+1)+A048673(A245448(n+1))`
-/

namespace A349359.P1981545243810892263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349358 (n + 1) + A048673 (A245448 (n + 1)).toNat

end

end A349359.P1981545243810892263

/-! ## A349359.P11428646081237062590

`A349358(n+1)+A290099(2*A016825(n))`
-/

namespace A349359.P11428646081237062590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349358 (n + 1) + A290099 (2 * A016825 n).toNat

end

end A349359.P11428646081237062590

/-!
# A349360: Number of positive integer pairs (s,t), with s,t <= n and s <= t such that either both s and t divide n or both do not.

The programs for A349360, the canonical program `A349360.P4810529674749984531` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349360 has offset 1).

The definition of A349360 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184389, A335567, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349360.P4810529674749984531

`A184389(n+1)+A335567(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A349360

/-- `A184389(n+1)+A335567(n+1)` -/
def P4810529674749984531.Spec : Prop :=
  ∀ n, P4810529674749984531.a n = A349360 (n + 1)

theorem P4810529674749984531.correct : P4810529674749984531.Spec := by
  intro n
  simp only [A349360, Nat.add_sub_cancel]

end A349360

/-! ## A349360.P10613864938094654683

`A000005(n+1)*(A000005(n+1)-(n+1))+(n+1)*(n+2)/2`
-/

namespace A349360.P10613864938094654683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * (A000005 (n + 1) - (n + 1 : ℤ)) : ℚ) + ((n + 1) * (n + 2) : ℚ) / 2

end

end A349360.P10613864938094654683

namespace A349360

/-- `A000005(n+1)*(A000005(n+1)-(n+1))+(n+1)*(n+2)/2` -/
def P10613864938094654683.Spec : Prop :=
  ∀ n, P10613864938094654683.a n = (A349360 (n + 1) : ℚ)

end A349360

/-! ## A349360.P263811700460527886

`∑[n+1]-A076627(n+1)`
-/

namespace A349360.P263811700460527886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A076627 (n + 1)

end

end A349360.P263811700460527886

namespace A349360

/-- `∑[n+1]-A076627(n+1)` -/
def P263811700460527886.Spec : Prop :=
  ∀ n, P263811700460527886.a n = A349360 (n + 1)

end A349360

/-! ## A349360.P12708721418992535187

`(A394391(n+1)+n+1)/2`
-/

namespace A349360.P12708721418992535187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394391 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A349360.P12708721418992535187

namespace A349360

/-- `(A394391(n+1)+n+1)/2` -/
def P12708721418992535187.Spec : Prop :=
  ∀ n, P12708721418992535187.a n = (A349360 (n + 1) : ℚ)

end A349360

/-! ## A349360.P7933526628328899316

`C(2-∏{e}[n+1, #+1]+n, 2)+C(A334954(n+1), 2)`
-/

namespace A349360.P7933526628328899316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ)).toNat 2 + Nat.choose (A334954 (n + 1)).toNat 2

end

end A349360.P7933526628328899316

namespace A349360

/-- `C(2-∏{e}[n+1, #+1]+n, 2)+C(A334954(n+1), 2)` -/
def P7933526628328899316.Spec : Prop :=
  ∀ n, (P7933526628328899316.a n : ℤ) = A349360 (n + 1)

end A349360

/-! ## A349360.P9048361756417787442

`∑{d}[n+1, A018892(#)]+C(2-∏{e}[n+1, #+1]+n, 2)`
-/

namespace A349360.P9048361756417787442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018892 d + (Nat.choose (2 - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) + (n : ℤ)).toNat 2 : ℤ)

end

end A349360.P9048361756417787442

namespace A349360

/-- `∑{d}[n+1, A018892(#)]+C(2-∏{e}[n+1, #+1]+n, 2)` -/
def P9048361756417787442.Spec : Prop :=
  ∀ n, P9048361756417787442.a n = A349360 (n + 1)

end A349360

/-! ## A349360.P13146417243073856600

`C(2-∏{e}[n+1, #+1]+n, 2)+C(A032741(n+1)+2, 2)`
-/

namespace A349360.P13146417243073856600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ)).toNat 2 + Nat.choose (A032741 (n + 1) + 2).toNat 2

end

end A349360.P13146417243073856600

namespace A349360

/-- `C(2-∏{e}[n+1, #+1]+n, 2)+C(A032741(n+1)+2, 2)` -/
def P13146417243073856600.Spec : Prop :=
  ∀ n, (P13146417243073856600.a n : ℤ) = A349360 (n + 1)

end A349360

/-! ## A349360.P15934492566418855074

`A000096(n)+1-A076627(n+1)`
-/

namespace A349360.P15934492566418855074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A076627 (n + 1))

end

end A349360.P15934492566418855074

namespace A349360

/-- `A000096(n)+1-A076627(n+1)` -/
def P15934492566418855074.Spec : Prop :=
  ∀ n, P15934492566418855074.a n = A349360 (n + 1)

end A349360

/-! ## A349360.P14680057397490134424

`A335567(n+1)+C(Δ[A006218(n)]+1, 2)`
-/

namespace A349360.P14680057397490134424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335567 (n + 1) + (Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2 : ℤ)

end

end A349360.P14680057397490134424

namespace A349360

/-- `A335567(n+1)+C(Δ[A006218(n)]+1, 2)` -/
def P14680057397490134424.Spec : Prop :=
  ∀ n, P14680057397490134424.a n = A349360 (n + 1)

end A349360

/-! ## A349360.P8543195660447173394

`A000217(n+1)-A000005(n+1)*A049820(n+1)`
-/

namespace A349360.P8543195660447173394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A000005 (n + 1) * A049820 (n + 1)

end

end A349360.P8543195660447173394

namespace A349360

/-- `A000217(n+1)-A000005(n+1)*A049820(n+1)` -/
def P8543195660447173394.Spec : Prop :=
  ∀ n, P8543195660447173394.a n = A349360 (n + 1)

end A349360

/-! ## A349360.P828497753686783566

`A000217(A000005(n+1))+A000217(A049820(n+1))`
-/

namespace A349360.P828497753686783566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (n + 1)).toNat + A000217 (A049820 (n + 1)).toNat

end

end A349360.P828497753686783566

namespace A349360

/-- `A000217(A000005(n+1))+A000217(A049820(n+1))` -/
def P828497753686783566.Spec : Prop :=
  ∀ n, P828497753686783566.a n = A349360 (n + 1)

end A349360

/-! ## A349360.P8783923298790418041

`A144216(A334954(n+1)+∑[n+1])`
-/

namespace A349360.P8783923298790418041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (A334954 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A349360.P8783923298790418041

namespace A349360

/-- `A144216(A334954(n+1)+∑[n+1])` -/
def P8783923298790418041.Spec : Prop :=
  ∀ n, P8783923298790418041.a n = A349360 (n + 1)

end A349360

/-! ## A349360.P14678373712416424384

`A144216(∑[n+1]+A000005(n+1)+1)`
-/

namespace A349360.P14678373712416424384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000005 (n + 1) + 1).toNat

end

end A349360.P14678373712416424384

namespace A349360

/-- `A144216(∑[n+1]+A000005(n+1)+1)` -/
def P14678373712416424384.Spec : Prop :=
  ∀ n, P14678373712416424384.a n = A349360 (n + 1)

end A349360

/-!
# A349361: G.f. A(x) satisfies: A(x) = 1 + x * A(x)^5 / (1 + x).

The programs for A349361, there is no canonical definition to state claims against.
-/

/-! ## A349361.P5210446232432995429

`A346665(abs(1-n))+A346665(n)`
-/

namespace A349361.P5210446232432995429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346665 |1 - (n : ℤ)|.toNat + A346665 n

end

end A349361.P5210446232432995429

/-! ## A349361.P2510479208295837395

`A103762(floor((4-6/(n+1))*a(n-1)))` with `a(0)=1`
-/

namespace A349361.P2510479208295837395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103762 ⌊(4 - 6 / (n + 1 : ℚ)) * (a (n - 1) : ℚ)⌋.toNat

end

end A349361.P2510479208295837395

/-!
# A349362: G.f. A(x) satisfies: A(x) = 1 + x * A(x)^6 / (1 + x).

The programs for A349362, there is no canonical definition to state claims against.
-/

/-! ## A349362.P16461203902066427684

`A346666(abs(1-n))+A346666(n)`
-/

namespace A349362.P16461203902066427684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346666 |1 - (n : ℤ)|.toNat + A346666 n

end

end A349362.P16461203902066427684

/-!
# A349363: G.f. A(x) satisfies: A(x) = 1 + x * A(x)^7 / (1 + x).

The programs for A349363, there is no canonical definition to state claims against.
-/

/-! ## A349363.P13629438165213043240

`A346667(abs(1-n))+A346667(n)`
-/

namespace A349363.P13629438165213043240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346667 |1 - (n : ℤ)|.toNat + A346667 n

end

end A349363.P13629438165213043240

/-!
# A349364: G.f. A(x) satisfies: A(x) = 1 + x * A(x)^8 / (1 + x).

The programs for A349364, there is no canonical definition to state claims against.
-/

/-! ## A349364.P6636380299314719042

`A346668(abs(1-n))+A346668(n)`
-/

namespace A349364.P6636380299314719042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346668 |1 - (n : ℤ)|.toNat + A346668 n

end

end A349364.P6636380299314719042

/-!
# A349365: G.f. A(x) satisfies A(x) = 1 / (1 - x - x * A(x^2)).

The programs for A349365, there is no canonical definition to state claims against.
-/

/-! ## A349365.P18138105243452195284

`A130891(A100087(n))`
-/

namespace A349365.P18138105243452195284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130891 (A100087 n).toNat

end

end A349365.P18138105243452195284

/-! ## A349365.P11384771687547701412

`A100087(A004881(n+1))`
-/

namespace A349365.P11384771687547701412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100087 (A004881 (n + 1)).toNat

end

end A349365.P11384771687547701412

/-! ## A349365.P2772461526205037871

`A100087(A004892(n+1))`
-/

namespace A349365.P2772461526205037871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100087 (A004892 (n + 1)).toNat

end

end A349365.P2772461526205037871

/-! ## A349365.P14083385286877366703

`A100087(A004903(n+1))`
-/

namespace A349365.P14083385286877366703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100087 (A004903 (n + 1)).toNat

end

end A349365.P14083385286877366703

/-! ## A349365.P9052586056708096017

`A100087(A004914(n+1))`
-/

namespace A349365.P9052586056708096017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100087 (A004914 (n + 1)).toNat

end

end A349365.P9052586056708096017

/-!
# A349366: Number of primes p such that prime(n) < p <= prime(n) + (log(prime(n)))^2 - log(prime(n)) - 1.

The programs for A349366, there is no canonical definition to state claims against.
-/

/-! ## A349366.P6499604146035804783

`A357849(∑[A205778(n+1)-1])`
-/

namespace A349366.P6499604146035804783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205778 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357849 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349366.P6499604146035804783

/-! ## A349366.P18214059626387669903

`A102677(∑[p?[A110180(n)]])`
-/

namespace A349366.P18214059626387669903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349366.P18214059626387669903

/-! ## A349366.P10904158381582919205

`A000006(n+1)%A121902(A165334(3*(n+1)))`
-/

namespace A349366.P10904158381582919205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000006 (n + 1)) (A121902 (A165334 (3 * (n + 1))).toNat)

end

end A349366.P10904158381582919205

/-!
# A349367: Number of n-element unlabeled disconnected N-free posets.

The programs for A349367, there is no canonical definition to state claims against.
-/

/-! ## A349367.P11357478755344108208

`A202182(n+1)-A202180(n+1)`
-/

namespace A349367.P11357478755344108208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202182 (n + 1) - A202180 (n + 1)

end

end A349367.P11357478755344108208

/-! ## A349367.P4877491491402818723

`A202182(n+1)-A350783(∑[n]+1)`
-/

namespace A349367.P4877491491402818723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202182 (n + 1) - A350783 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A349367.P4877491491402818723

/-! ## A349367.P2867165379399520184

`A202182(n+1)-A350783(A000124(n))%A000045(4*(n+3))`
-/

namespace A349367.P2867165379399520184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202182 (n + 1) - Int.tmod (A350783 (A000124 n).toNat) (A000045 (4 * (n + 3)))

end

end A349367.P2867165379399520184

/-!
# A349368: Dirichlet inverse of A006369, the inverse permutation of "amusical permutation".

The programs for A349368, there is no canonical definition to state claims against.
-/

/-! ## A349368.P16829982805026933577

`A349369(n+1)-A006369(n+1)`
-/

namespace A349368.P16829982805026933577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349369 (n + 1) - A006369 (n + 1)

end

end A349368.P16829982805026933577

/-! ## A349368.P3653677103352247492

`∑{d}[n+1, A349351(#)*A349376((n+1)/#)]`
-/

namespace A349368.P3653677103352247492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349351 d * A349376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349368.P3653677103352247492

/-! ## A349368.P2564661300995967881

`A349369(n+1)-(A168223(n+1)+A006368(n+1))`
-/

namespace A349368.P2564661300995967881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349369 (n + 1) - (A168223 (n + 1) + A006368 (n + 1))

end

end A349368.P2564661300995967881

/-! ## A349368.P12286608946115340627

`A349369(n+1)-A159966(A074305(n+1))`
-/

namespace A349368.P12286608946115340627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349369 (n + 1) - A159966 (A074305 (n + 1)).toNat

end

end A349368.P12286608946115340627

/-! ## A349368.P2570201854181740966

`A349369(n+1)-A026741(A042965(n+2))`
-/

namespace A349368.P2570201854181740966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349369 (n + 1) - A026741 (A042965 (n + 2)).toNat

end

end A349368.P2570201854181740966

/-!
# A349369: Sum of A006369 and its Dirichlet inverse, where A006369 is the inverse of "amusical permutation", A006368.

The programs for A349369, there is no canonical definition to state claims against.
-/

/-! ## A349369.P17676419635183572715

`A006369(n+1)+A349368(n+1)`
-/

namespace A349369.P17676419635183572715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (n + 1) + A349368 (n + 1)

end

end A349369.P17676419635183572715

/-! ## A349369.P17851505148059125616

`A349368(n+1)+A159966(A074305(n+1))`
-/

namespace A349369.P17851505148059125616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349368 (n + 1) + A159966 (A074305 (n + 1)).toNat

end

end A349369.P17851505148059125616

/-! ## A349369.P4370963155084630661

`A323896(n+1)/A036036(A018037(n))`
-/

namespace A349369.P4370963155084630661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323896 (n + 1) : ℚ) / (A036036 (A018037 n).toNat : ℚ)

end

end A349369.P4370963155084630661

/-! ## A349369.P15580027639639458264

`A323896(n+1)/A036584(A122367(n))`
-/

namespace A349369.P15580027639639458264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323896 (n + 1) : ℚ) / (A036584 (A122367 n).toNat : ℚ)

end

end A349369.P15580027639639458264

/-! ## A349369.P14516774849152473882

`A323896(n+1)/A370079(A001470(n))`
-/

namespace A349369.P14516774849152473882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323896 (n + 1) : ℚ) / (A370079 (A001470 n).toNat : ℚ)

end

end A349369.P14516774849152473882

/-!
# A349370: Dirichlet convolution of Kimberling's paraphrase, A003602, with itself.

The programs for A349370, the canonical program `A349370.P8267721681669448935` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349370 has offset 1).

The definition of A349370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349370.P8267721681669448935

`∑{d}[n+1, A003602(#)*A003602((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A349370

/-- `∑{d}[n+1, A003602(#)*A003602((n+1)/#)]` -/
def P8267721681669448935.Spec : Prop :=
  ∀ n, P8267721681669448935.a n = A349370 (n + 1)

theorem P8267721681669448935.correct : P8267721681669448935.Spec := by
  intro n
  simp only [A349370, Nat.add_sub_cancel]

end A349370

/-! ## A349370.P11782887286635070704

`∑{d}[n+1, A349136(#)*A349371((n+1)/#)]`
-/

namespace A349370.P11782887286635070704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349136 d * A349371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349370.P11782887286635070704

namespace A349370

/-- `∑{d}[n+1, A349136(#)*A349371((n+1)/#)]` -/
def P11782887286635070704.Spec : Prop :=
  ∀ n, P11782887286635070704.a n = A349370 (n + 1)

end A349370

/-! ## A349370.P765111732637164227

`∑{d}[n+1, A349390(#)*A353461((n+1)/#)]`
-/

namespace A349370.P765111732637164227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349390 d * A353461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349370.P765111732637164227

namespace A349370

/-- `∑{d}[n+1, A349390(#)*A353461((n+1)/#)]` -/
def P765111732637164227.Spec : Prop :=
  ∀ n, P765111732637164227.a n = A349370 (n + 1)

end A349370

/-! ## A349370.P18268141819073794841

`∑{d}[n+1, A027656(#-1)*A181988((n+1)/#)]`
-/

namespace A349370.P18268141819073794841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027656 (d - 1) * A181988 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349370.P18268141819073794841

namespace A349370

/-- `∑{d}[n+1, A027656(#-1)*A181988((n+1)/#)]` -/
def P18268141819073794841.Spec : Prop :=
  ∀ n, P18268141819073794841.a n = A349370 (n + 1)

end A349370

/-! ## A349370.P11911793579624972029

`A085736(A328487(n+1))/∑{d}[n+1, and(1, #)]`
-/

namespace A349370.P11911793579624972029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085736 (A328487 (n + 1)).toNat : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d : ℕ) : ℚ)

end

end A349370.P11911793579624972029

namespace A349370

/-- `A085736(A328487(n+1))/∑{d}[n+1, and(1, #)]` -/
def P11911793579624972029.Spec : Prop :=
  ∀ n, P11911793579624972029.a n = (A349370 (n + 1) : ℚ)

end A349370

/-!
# A349371: Inverse Möbius transform of Kimberling's paraphrase, A003602.

The programs for A349371, the canonical program `A349371.P16064680490200094377` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349371 has offset 1).

The definition of A349371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349371.P15201226308185596819

`∑{d}[n+1, A003602(#)]`
-/

namespace A349371.P15201226308185596819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d

end

end A349371.P15201226308185596819

namespace A349371

/-- `∑{d}[n+1, A003602(#)]` -/
def P15201226308185596819.Spec : Prop :=
  ∀ n, P15201226308185596819.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P12752445120110794835

`∑{d}[n+1, #*A349373((n+1)/#)]`
-/

namespace A349371.P12752445120110794835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349371.P12752445120110794835

namespace A349371

/-- `∑{d}[n+1, #*A349373((n+1)/#)]` -/
def P12752445120110794835.Spec : Prop :=
  ∀ n, P12752445120110794835.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P10328982584150315286

`∑{d}[n+1, A000463(A000265(#))]`
-/

namespace A349371.P10328982584150315286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000463 (A000265 d).toNat

end

end A349371.P10328982584150315286

namespace A349371

/-- `∑{d}[n+1, A000463(A000265(#))]` -/
def P10328982584150315286.Spec : Prop :=
  ∀ n, P10328982584150315286.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P10215212471327044122

`A001511(n+1)*A113415(n+1)`
-/

namespace A349371.P10215212471327044122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A113415 (n + 1)

end

end A349371.P10215212471327044122

namespace A349371

/-- `A001511(n+1)*A113415(n+1)` -/
def P10215212471327044122.Spec : Prop :=
  ∀ n, P10215212471327044122.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P12804717266100349025

`(A007814(n+1)+1)*A113415(n+1)`
-/

namespace A349371.P12804717266100349025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A113415 (n + 1)

end

end A349371.P12804717266100349025

namespace A349371

/-- `(A007814(n+1)+1)*A113415(n+1)` -/
def P12804717266100349025.Spec : Prop :=
  ∀ n, P12804717266100349025.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P18194352592665390694

`(A264740(n+1)+A000005(n+1))/2`
-/

namespace A349371.P18194352592665390694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264740 (n + 1) + A000005 (n + 1) : ℚ) / 2

end

end A349371.P18194352592665390694

namespace A349371

/-- `(A264740(n+1)+A000005(n+1))/2` -/
def P18194352592665390694.Spec : Prop :=
  ∀ n, P18194352592665390694.a n = (A349371 (n + 1) : ℚ)

end A349371

/-! ## A349371.P16064680490200094377

`∑{d}[n+1, A088705(#)*A140472((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A349371

/-- `∑{d}[n+1, A088705(#)*A140472((n+1)/#)]` -/
def P16064680490200094377.Spec : Prop :=
  ∀ n, P16064680490200094377.a n = A349371 (n + 1)

theorem P16064680490200094377.correct : P16064680490200094377.Spec := by
  intro n
  simp only [A349371, Nat.add_sub_cancel]

end A349371

/-! ## A349371.P4668556293123184281

`∑{d}[n+1, A000005(#)*A349136((n+1)/#)]`
-/

namespace A349371.P4668556293123184281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349371.P4668556293123184281

namespace A349371

/-- `∑{d}[n+1, A000005(#)*A349136((n+1)/#)]` -/
def P4668556293123184281.Spec : Prop :=
  ∀ n, P4668556293123184281.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P15214915597252785319

`∑{d}[n+1, A000203(#)*A349431((n+1)/#)]`
-/

namespace A349371.P15214915597252785319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A349431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349371.P15214915597252785319

namespace A349371

/-- `∑{d}[n+1, A000203(#)*A349431((n+1)/#)]` -/
def P15214915597252785319.Spec : Prop :=
  ∀ n, P15214915597252785319.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P14416182084527443957

`∑{d}[n+1, A008683(#)*A349372((n+1)/#)]`
-/

namespace A349371.P14416182084527443957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A349372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349371.P14416182084527443957

namespace A349371

/-- `∑{d}[n+1, A008683(#)*A349372((n+1)/#)]` -/
def P14416182084527443957.Spec : Prop :=
  ∀ n, P14416182084527443957.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P14235667912252121174

`∑{d}[n+1, A034444(#)*A349375((n+1)/#)]`
-/

namespace A349371.P14235667912252121174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A349375 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349371.P14235667912252121174

namespace A349371

/-- `∑{d}[n+1, A034444(#)*A349375((n+1)/#)]` -/
def P14235667912252121174.Spec : Prop :=
  ∀ n, P14235667912252121174.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P16011517715664363544

`∑{d}[n+1, A129628(#)*A349444((n+1)/#)]`
-/

namespace A349371.P16011517715664363544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A349444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349371.P16011517715664363544

namespace A349371

/-- `∑{d}[n+1, A129628(#)*A349444((n+1)/#)]` -/
def P16011517715664363544.Spec : Prop :=
  ∀ n, P16011517715664363544.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P13498527396419693279

`∑{d}[n+1, A264740(#)*A349447((n+1)/#)]`
-/

namespace A349371.P13498527396419693279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A264740 d * A349447 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349371.P13498527396419693279

namespace A349371

/-- `∑{d}[n+1, A264740(#)*A349447((n+1)/#)]` -/
def P13498527396419693279.Spec : Prop :=
  ∀ n, P13498527396419693279.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P5196856516001592155

`∑{d}[n+1, A349393(#)*A353461((n+1)/#)]`
-/

namespace A349371.P5196856516001592155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349393 d * A353461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349371.P5196856516001592155

namespace A349371

/-- `∑{d}[n+1, A349393(#)*A353461((n+1)/#)]` -/
def P5196856516001592155.Spec : Prop :=
  ∀ n, P5196856516001592155.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P764011900415136984

`∑{d}[n+1, A001511(#)*A027656((n+1)/#-1)]`
-/

namespace A349371.P764011900415136984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A027656 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A349371.P764011900415136984

namespace A349371

/-- `∑{d}[n+1, A001511(#)*A027656((n+1)/#-1)]` -/
def P764011900415136984.Spec : Prop :=
  ∀ n, P764011900415136984.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P8293112053143800434

`∑{d}[n+1, A036987(#-1)*A113415((n+1)/#)]`
-/

namespace A349371.P8293112053143800434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A113415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349371.P8293112053143800434

namespace A349371

/-- `∑{d}[n+1, A036987(#-1)*A113415((n+1)/#)]` -/
def P8293112053143800434.Spec : Prop :=
  ∀ n, P8293112053143800434.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P12987018777718707484

`∑{d}[n+1, A059841(#-1)*A181988((n+1)/#)]`
-/

namespace A349371.P12987018777718707484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A181988 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349371.P12987018777718707484

namespace A349371

/-- `∑{d}[n+1, A059841(#-1)*A181988((n+1)/#)]` -/
def P12987018777718707484.Spec : Prop :=
  ∀ n, P12987018777718707484.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P91247387251689489

`A000005(n+1)/A001227(n+1)*A113415(n+1)`
-/

namespace A349371.P91247387251689489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ) * (A113415 (n + 1) : ℚ)

end

end A349371.P91247387251689489

namespace A349371

/-- `A000005(n+1)/A001227(n+1)*A113415(n+1)` -/
def P91247387251689489.Spec : Prop :=
  ∀ n, P91247387251689489.a n = (A349371 (n + 1) : ℚ)

end A349371

/-! ## A349371.P13756749868402871890

`A001511(n+1)*A353417(2*(n+1))`
-/

namespace A349371.P13756749868402871890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A353417 (2 * (n + 1))

end

end A349371.P13756749868402871890

namespace A349371

/-- `A001511(n+1)*A353417(2*(n+1))` -/
def P13756749868402871890.Spec : Prop :=
  ∀ n, P13756749868402871890.a n = A349371 (n + 1)

end A349371

/-! ## A349371.P14767312259738189986

`∑{d}[A008619(2*n), A008619(A000265(#))]`
-/

namespace A349371.P14767312259738189986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008619 (A000265 d).toNat

end

end A349371.P14767312259738189986

namespace A349371

/-- `∑{d}[A008619(2*n), A008619(A000265(#))]` -/
def P14767312259738189986.Spec : Prop :=
  ∀ n, P14767312259738189986.a n = A349371 (n + 1)

end A349371

/-!
# A349372: Dirichlet convolution of Kimberling's paraphrase, A003602, with tau (number of divisors, A000005).

The programs for A349372, the canonical program `A349372.P5844012535782128724` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349372 has offset 1).

The definition of A349372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349372.P5844012535782128724

`∑{d}[n+1, A349371(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A349372

/-- `∑{d}[n+1, A349371(#)]` -/
def P5844012535782128724.Spec : Prop :=
  ∀ n, P5844012535782128724.a n = A349372 (n + 1)

theorem P5844012535782128724.correct : P5844012535782128724.Spec := by
  intro n
  simp only [A349372, Nat.add_sub_cancel]

end A349372

/-! ## A349372.P15694933927590769547

`∑{d}[n+1, A000005(#)*A003602((n+1)/#)]`
-/

namespace A349372.P15694933927590769547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A003602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349372.P15694933927590769547

namespace A349372

/-- `∑{d}[n+1, A000005(#)*A003602((n+1)/#)]` -/
def P15694933927590769547.Spec : Prop :=
  ∀ n, P15694933927590769547.a n = A349372 (n + 1)

end A349372

/-! ## A349372.P13174891789075481224

`∑{d}[n+1, A001511(#)*A113415((n+1)/#)]`
-/

namespace A349372.P13174891789075481224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A113415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349372.P13174891789075481224

namespace A349372

/-- `∑{d}[n+1, A001511(#)*A113415((n+1)/#)]` -/
def P13174891789075481224.Spec : Prop :=
  ∀ n, P13174891789075481224.a n = A349372 (n + 1)

end A349372

/-! ## A349372.P12233685258963771369

`∑{d}[n+1, A001227(#)*A181988((n+1)/#)]`
-/

namespace A349372.P12233685258963771369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A181988 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349372.P12233685258963771369

namespace A349372

/-- `∑{d}[n+1, A001227(#)*A181988((n+1)/#)]` -/
def P12233685258963771369.Spec : Prop :=
  ∀ n, P12233685258963771369.a n = A349372 (n + 1)

end A349372

/-! ## A349372.P10803547959536604599

`∑{d}[n+1, A000203(#)*A349373((n+1)/#)]`
-/

namespace A349372.P10803547959536604599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A349373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349372.P10803547959536604599

namespace A349372

/-- `∑{d}[n+1, A000203(#)*A349373((n+1)/#)]` -/
def P10803547959536604599.Spec : Prop :=
  ∀ n, P10803547959536604599.a n = A349372 (n + 1)

end A349372

/-! ## A349372.P664727957576146732

`∑{d}[n+1, A007425(#)*A349136((n+1)/#)]`
-/

namespace A349372.P664727957576146732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349372.P664727957576146732

namespace A349372

/-- `∑{d}[n+1, A007425(#)*A349136((n+1)/#)]` -/
def P664727957576146732.Spec : Prop :=
  ∀ n, P664727957576146732.a n = A349372 (n + 1)

end A349372

/-! ## A349372.P2473326068237776722

`∑{d}[n+1, A007429(#)*A349431((n+1)/#)]`
-/

namespace A349372.P2473326068237776722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A349431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349372.P2473326068237776722

namespace A349372

/-- `∑{d}[n+1, A007429(#)*A349431((n+1)/#)]` -/
def P2473326068237776722.Spec : Prop :=
  ∀ n, P2473326068237776722.a n = A349372 (n + 1)

end A349372

/-! ## A349372.P11226409386572679243

`∑{d}[n+1, A048691(#)*A349375((n+1)/#)]`
-/

namespace A349372.P11226409386572679243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A349375 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349372.P11226409386572679243

namespace A349372

/-- `∑{d}[n+1, A048691(#)*A349375((n+1)/#)]` -/
def P11226409386572679243.Spec : Prop :=
  ∀ n, P11226409386572679243.a n = A349372 (n + 1)

end A349372

/-! ## A349372.P10141942107031799573

`∑{d}[n+1, A349392(#)*A353461((n+1)/#)]`
-/

namespace A349372.P10141942107031799573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349392 d * A353461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349372.P10141942107031799573

namespace A349372

/-- `∑{d}[n+1, A349392(#)*A353461((n+1)/#)]` -/
def P10141942107031799573.Spec : Prop :=
  ∀ n, P10141942107031799573.a n = A349372 (n + 1)

end A349372

/-! ## A349372.P4444260332661091286

`∑{d}[n+1, A027656(#-1)*A129628((n+1)/#)]`
-/

namespace A349372.P4444260332661091286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027656 (d - 1) * A129628 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349372.P4444260332661091286

namespace A349372

/-- `∑{d}[n+1, A027656(#-1)*A129628((n+1)/#)]` -/
def P4444260332661091286.Spec : Prop :=
  ∀ n, P4444260332661091286.a n = A349372 (n + 1)

end A349372

/-!
# A349373: Dirichlet convolution of Kimberling's paraphrase, A003602, with Dirichlet inverse of Euler phi (A023900).

The programs for A349373, the canonical program `A349373.P4196994012444307634` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349373 has offset 1).

The definition of A349373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349373.P7799117260490071252

`∑{d}[n+1, A349431(#)]`
-/

namespace A349373.P7799117260490071252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349431 d

end

end A349373.P7799117260490071252

namespace A349373

/-- `∑{d}[n+1, A349431(#)]` -/
def P7799117260490071252.Spec : Prop :=
  ∀ n, P7799117260490071252.a n = A349373 (n + 1)

end A349373

/-! ## A349373.P8276390627353879928

`∑{d}[n+1, A003602(#)*A023900((n+1)/#)]`
-/

namespace A349373.P8276390627353879928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349373.P8276390627353879928

namespace A349373

/-- `∑{d}[n+1, A003602(#)*A023900((n+1)/#)]` -/
def P8276390627353879928.Spec : Prop :=
  ∀ n, P8276390627353879928.a n = A349373 (n + 1)

end A349373

/-! ## A349373.P14332462401594635439

`∑{d}[n+1, A046692(#)*A349372((n+1)/#)]`
-/

namespace A349373.P14332462401594635439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A349372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349373.P14332462401594635439

namespace A349373

/-- `∑{d}[n+1, A046692(#)*A349372((n+1)/#)]` -/
def P14332462401594635439.Spec : Prop :=
  ∀ n, P14332462401594635439.a n = A349373 (n + 1)

end A349373

/-! ## A349373.P4196994012444307634

`∑{d}[n+1, A055615(#)*A349371((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349373

/-- `∑{d}[n+1, A055615(#)*A349371((n+1)/#)]` -/
def P4196994012444307634.Spec : Prop :=
  ∀ n, P4196994012444307634.a n = A349373 (n + 1)

theorem P4196994012444307634.correct : P4196994012444307634.Spec := by
  intro n
  simp only [A349373, Nat.add_sub_cancel]

end A349373

/-! ## A349373.P18277138991584188271

`∑{d}[n+1, A088705(#)*A349447((n+1)/#)]`
-/

namespace A349373.P18277138991584188271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088705 d * A349447 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349373.P18277138991584188271

namespace A349373

/-- `∑{d}[n+1, A088705(#)*A349447((n+1)/#)]` -/
def P18277138991584188271.Spec : Prop :=
  ∀ n, P18277138991584188271.a n = A349373 (n + 1)

end A349373

/-! ## A349373.P16491440344616821899

`∑{d}[n+1, A113415(#)*A349341((n+1)/#)]`
-/

namespace A349373.P16491440344616821899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113415 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349373.P16491440344616821899

namespace A349373

/-- `∑{d}[n+1, A113415(#)*A349341((n+1)/#)]` -/
def P16491440344616821899.Spec : Prop :=
  ∀ n, P16491440344616821899.a n = A349373 (n + 1)

end A349373

/-! ## A349373.P1133014513572913550

`∑{d}[n+1, A130054(#)*A349136((n+1)/#)]`
-/

namespace A349373.P1133014513572913550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349373.P1133014513572913550

namespace A349373

/-- `∑{d}[n+1, A130054(#)*A349136((n+1)/#)]` -/
def P1133014513572913550.Spec : Prop :=
  ∀ n, P1133014513572913550.a n = A349373 (n + 1)

end A349373

/-!
# A349374: Dirichlet convolution of Kimberling's paraphrase, A003602, with squarefree part of n (A007913).

The programs for A349374, the canonical program `A349374.P2436747337903792946` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349374 has offset 1).

The definition of A349374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349374.P7515639157641087969

`∑{d}[n+1, A003602(#)*A007913((n+1)/#)]`
-/

namespace A349374.P7515639157641087969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349374.P7515639157641087969

namespace A349374

/-- `∑{d}[n+1, A003602(#)*A007913((n+1)/#)]` -/
def P7515639157641087969.Spec : Prop :=
  ∀ n, P7515639157641087969.a n = A349374 (n + 1)

end A349374

/-! ## A349374.P12363474739421774649

`∑{d}[n+1, A048250(#)*A349375((n+1)/#)]`
-/

namespace A349374.P12363474739421774649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A349375 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349374.P12363474739421774649

namespace A349374

/-- `∑{d}[n+1, A048250(#)*A349375((n+1)/#)]` -/
def P12363474739421774649.Spec : Prop :=
  ∀ n, P12363474739421774649.a n = A349374 (n + 1)

end A349374

/-! ## A349374.P878396681455897486

`∑{d}[n+1, A069088(#)*A349136((n+1)/#)]`
-/

namespace A349374.P878396681455897486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069088 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349374.P878396681455897486

namespace A349374

/-- `∑{d}[n+1, A069088(#)*A349136((n+1)/#)]` -/
def P878396681455897486.Spec : Prop :=
  ∀ n, P878396681455897486.a n = A349374 (n + 1)

end A349374

/-! ## A349374.P2436747337903792946

`∑{d}[n+1, A332618(#)*A349431((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A349374

/-- `∑{d}[n+1, A332618(#)*A349431((n+1)/#)]` -/
def P2436747337903792946.Spec : Prop :=
  ∀ n, P2436747337903792946.a n = A349374 (n + 1)

theorem P2436747337903792946.correct : P2436747337903792946.Spec := by
  intro n
  simp only [A349374, Nat.add_sub_cancel]

end A349374

/-!
# A349375: Dirichlet convolution of Kimberling's paraphrase, A003602, with Liouville's lambda.

The programs for A349375, the canonical program `A349375.P5202373796057387530` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349375 has offset 1).

The definition of A349375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349375.P3238455272474097970

`∑{d}[n+1, A003602(#)*A008836((n+1)/#)]`
-/

namespace A349375.P3238455272474097970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349375.P3238455272474097970

namespace A349375

/-- `∑{d}[n+1, A003602(#)*A008836((n+1)/#)]` -/
def P3238455272474097970.Spec : Prop :=
  ∀ n, P3238455272474097970.a n = A349375 (n + 1)

end A349375

/-! ## A349375.P15888925666821113159

`∑{d}[n+1, A010052(#)*A349136((n+1)/#)]`
-/

namespace A349375.P15888925666821113159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349375.P15888925666821113159

namespace A349375

/-- `∑{d}[n+1, A010052(#)*A349136((n+1)/#)]` -/
def P15888925666821113159.Spec : Prop :=
  ∀ n, P15888925666821113159.a n = A349375 (n + 1)

end A349375

/-! ## A349375.P5202373796057387530

`∑{d}[n+1, A074722(#)*A349373((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349375

/-- `∑{d}[n+1, A074722(#)*A349373((n+1)/#)]` -/
def P5202373796057387530.Spec : Prop :=
  ∀ n, P5202373796057387530.a n = A349375 (n + 1)

theorem P5202373796057387530.correct : P5202373796057387530.Spec := by
  intro n
  simp only [A349375, Nat.add_sub_cancel]

end A349375

/-! ## A349375.P18112399337541551016

`∑{d}[n+1, A158522(#)*A349371((n+1)/#)]`
-/

namespace A349375.P18112399337541551016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A349371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349375.P18112399337541551016

namespace A349375

/-- `∑{d}[n+1, A158522(#)*A349371((n+1)/#)]` -/
def P18112399337541551016.Spec : Prop :=
  ∀ n, P18112399337541551016.a n = A349375 (n + 1)

end A349375

/-! ## A349375.P7720532700770496818

`∑{d}[n+1, A158523(#)*A349374((n+1)/#)]`
-/

namespace A349375.P7720532700770496818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158523 d * A349374 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349375.P7720532700770496818

namespace A349375

/-- `∑{d}[n+1, A158523(#)*A349374((n+1)/#)]` -/
def P7720532700770496818.Spec : Prop :=
  ∀ n, P7720532700770496818.a n = A349375 (n + 1)

end A349375

/-! ## A349375.P8998111960801064263

`∑{d}[n+1, A206369(#)*A349431((n+1)/#)]`
-/

namespace A349375.P8998111960801064263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A349431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349375.P8998111960801064263

namespace A349375

/-- `∑{d}[n+1, A206369(#)*A349431((n+1)/#)]` -/
def P8998111960801064263.Spec : Prop :=
  ∀ n, P8998111960801064263.a n = A349375 (n + 1)

end A349375

/-! ## A349375.P12526109722819194428

`∑{d}[n+1, A326415(#)*A349372((n+1)/#)]`
-/

namespace A349375.P12526109722819194428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326415 d * A349372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349375.P12526109722819194428

namespace A349375

/-- `∑{d}[n+1, A326415(#)*A349372((n+1)/#)]` -/
def P12526109722819194428.Spec : Prop :=
  ∀ n, P12526109722819194428.a n = A349375 (n + 1)

end A349375

/-! ## A349375.P2967065335825094395

`∑{d}[n+1, A326813(#)*A349444((n+1)/#)]`
-/

namespace A349375.P2967065335825094395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326813 d * A349444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349375.P2967065335825094395

namespace A349375

/-- `∑{d}[n+1, A326813(#)*A349444((n+1)/#)]` -/
def P2967065335825094395.Spec : Prop :=
  ∀ n, P2967065335825094395.a n = A349375 (n + 1)

end A349375

/-! ## A349375.P7425320006021787572

`∑{d}[n+1, A349395(#)*A353461((n+1)/#)]`
-/

namespace A349375.P7425320006021787572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349395 d * A353461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349375.P7425320006021787572

namespace A349375

/-- `∑{d}[n+1, A349395(#)*A353461((n+1)/#)]` -/
def P7425320006021787572.Spec : Prop :=
  ∀ n, P7425320006021787572.a n = A349375 (n + 1)

end A349375

/-!
# A349376: Dirichlet convolution of A006368 with the Dirichlet inverse of A006369, where A006368 is the "amusical permutation", and A006369 is its inverse permutation.

The programs for A349376, there is no canonical definition to state claims against.
-/

/-! ## A349376.P12858341114407982941

`A349378(n+1)-A349377(n+1)`
-/

namespace A349376.P12858341114407982941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349378 (n + 1) - A349377 (n + 1)

end

end A349376.P12858341114407982941

/-! ## A349376.P1215446926965804328

`∑{d}[n+1, A006368(#)*A349368((n+1)/#)]`
-/

namespace A349376.P1215446926965804328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006368 d * A349368 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349376.P1215446926965804328

/-! ## A349376.P17785530864427063507

`A349378(n+1)-∑{d}[n+1, A006369(#)*A349351((n+1)/#)]`
-/

namespace A349376.P17785530864427063507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349378 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A006369 d * A349351 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349376.P17785530864427063507

/-! ## A349376.P4700045897062236446

`A349377(n+1)*A349385(2^n)`
-/

namespace A349376.P4700045897062236446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349377 (n + 1) * A349385 (2 ^ n)

end

end A349376.P4700045897062236446

/-! ## A349376.P6632121767426546982

`A349377(n+1)*A349431(2^n)`
-/

namespace A349376.P6632121767426546982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349377 (n + 1) * A349431 (2 ^ n)

end

end A349376.P6632121767426546982

/-!
# A349377: Dirichlet convolution of A006369 with the Dirichlet inverse of A006368, where A006368 is the "amusical permutation", and A006369 is its inverse permutation.

The programs for A349377, there is no canonical definition to state claims against.
-/

/-! ## A349377.P8676780812988260472

`A349378(n+1)-A349376(n+1)`
-/

namespace A349377.P8676780812988260472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349378 (n + 1) - A349376 (n + 1)

end

end A349377.P8676780812988260472

/-! ## A349377.P2074651963200666699

`∑{d}[n+1, A006369(#)*A349351((n+1)/#)]`
-/

namespace A349377.P2074651963200666699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006369 d * A349351 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349377.P2074651963200666699

/-! ## A349377.P4166709989551041157

`A349378(n+1)+A349376(n+1)/A321804(C(2, n))`
-/

namespace A349377.P4166709989551041157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349378 (n + 1) : ℚ) + (A349376 (n + 1) : ℚ) / (A321804 (Nat.choose 2 n) : ℚ)

end

end A349377.P4166709989551041157

/-! ## A349377.P9196024714546463362

`A349378(n+1)-∑{d}[n+1, A006368(#)*A349368((n+1)/#)]`
-/

namespace A349377.P9196024714546463362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349378 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A006368 d * A349368 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349377.P9196024714546463362

/-! ## A349377.P10375635585507942368

`A349376(n+1)*A349385(2^n)`
-/

namespace A349377.P10375635585507942368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349376 (n + 1) * A349385 (2 ^ n)

end

end A349377.P10375635585507942368

/-!
# A349378: a(n) = A349376(n) + A349377(n).

The programs for A349378, there is no canonical definition to state claims against.
-/

/-! ## A349378.P6274070849861676209

`A349376(n+1)+A349377(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349378.P6274070849861676209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349376 (n + 1) + A349377 (n + 1)

end

end A349378.P6274070849861676209

/-! ## A349378.P14377176800731736220

`A349376(n+1)+∑{d}[n+1, A006369(#)*A349351((n+1)/#)]`
-/

namespace A349378.P14377176800731736220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349376 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A006369 d * A349351 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349378.P14377176800731736220

/-! ## A349378.P6128133698890465647

`A349377(n+1)+∑{d}[n+1, A006368(#)*A349368((n+1)/#)]`
-/

namespace A349378.P6128133698890465647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349377 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A006368 d * A349368 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349378.P6128133698890465647

/-!
# A349379: Möbius transform of A057521 (powerful part of n).

The programs for A349379, the canonical program `A349379.P11709087119249056463` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349379 has offset 1).

The definition of A349379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349379.P11709087119249056463

`∑{d}[n+1, A008683(#)*A057521((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A349379

/-- `∑{d}[n+1, A008683(#)*A057521((n+1)/#)]` -/
def P11709087119249056463.Spec : Prop :=
  ∀ n, P11709087119249056463.a n = A349379 (n + 1)

theorem P11709087119249056463.correct : P11709087119249056463.Spec := by
  intro n
  simp only [A349379, Nat.add_sub_cancel]

end A349379

/-! ## A349379.P10980710786417102624

`∑{d}[n+1, A000010(#)*A349441((n+1)/#)]`
-/

namespace A349379.P10980710786417102624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A349441 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349379.P10980710786417102624

namespace A349379

/-- `∑{d}[n+1, A000010(#)*A349441((n+1)/#)]` -/
def P10980710786417102624.Spec : Prop :=
  ∀ n, P10980710786417102624.a n = A349379 (n + 1)

end A349379

/-!
# A349380: Dirichlet convolution of A003415 (arithmetic derivative of n) with A349134.

The programs for A349380, there is no canonical definition to state claims against.
-/

/-! ## A349380.P1723118558126477128

`∑{d}[n+1, A003415(#)*A349134((n+1)/#)]`
-/

namespace A349380.P1723118558126477128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A349134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349380.P1723118558126477128

/-! ## A349380.P1287049036618015163

`∑{d}[n+1, A349394(#)*A349432((n+1)/#)]`
-/

namespace A349380.P1287049036618015163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349394 d * A349432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349380.P1287049036618015163

/-! ## A349380.P10876795328915726922

`A071673(A115121(n+1)^A003557(n+1))`
-/

namespace A349380.P10876795328915726922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (SequenceMachineLib.roundAway ((A115121 (n + 1) : ℚ) ^ (A003557 (n + 1) : ℤ))).toNat

end

end A349380.P10876795328915726922

/-! ## A349380.P13586809396770735134

`A322034(n+1)+A258701(A003557(2*(n+2)))`
-/

namespace A349380.P13586809396770735134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322034 (n + 1) + A258701 (A003557 (2 * (n + 2))).toNat

end

end A349380.P13586809396770735134

/-! ## A349380.P7172641117710976163

`A353477(A000105(n))+A349620(n+1)`
-/

namespace A349380.P7172641117710976163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353477 (A000105 n).toNat + A349620 (n + 1)

end

end A349380.P7172641117710976163

/-!
# A349381: Dirichlet convolution of A003961 with A349125 (Dirichlet inverse of A064989), where A003961 and A064989 are fully multiplicative sequences that shift the prime factorization of n one step towards larger and smaller primes respectively.

The programs for A349381, the canonical program `A349381.P11225009745435049929` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349381 has offset 1).

The definition of A349381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349381.P3566526432954514663

`A349383(n+1)-A349382(n+1)`
-/

namespace A349381.P3566526432954514663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349383 (n + 1) - A349382 (n + 1)

end

end A349381.P3566526432954514663

namespace A349381

/-- `A349383(n+1)-A349382(n+1)` -/
def P3566526432954514663.Spec : Prop :=
  ∀ n, P3566526432954514663.a n = A349381 (n + 1)

end A349381

/-! ## A349381.P11225009745435049929

`∑{d}[n+1, A003961(#)*A349125((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349381

/-- `∑{d}[n+1, A003961(#)*A349125((n+1)/#)]` -/
def P11225009745435049929.Spec : Prop :=
  ∀ n, P11225009745435049929.a n = A349381 (n + 1)

theorem P11225009745435049929.correct : P11225009745435049929.Spec := by
  intro n
  simp only [A349381, Nat.add_sub_cancel]

end A349381

/-! ## A349381.P403559104364235186

`A349383(n+1)-∑{d}[n+1, A064989(#)*A346234((n+1)/#)]`
-/

namespace A349381.P403559104364235186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349383 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A064989 d * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349381.P403559104364235186

namespace A349381

/-- `A349383(n+1)-∑{d}[n+1, A064989(#)*A346234((n+1)/#)]` -/
def P403559104364235186.Spec : Prop :=
  ∀ n, P403559104364235186.a n = A349381 (n + 1)

end A349381

/-!
# A349382: Dirichlet convolution of A064989 with A346234 (Dirichlet inverse of A003961), where A003961 and A064989 are fully multiplicative sequences that shift the prime factorization of n one step towards larger and smaller primes respectively.

The programs for A349382, the canonical program `A349382.P6508741965165625424` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349382 has offset 1).

The definition of A349382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349382.P5932636380856044710

`A349383(n+1)-A349381(n+1)`
-/

namespace A349382.P5932636380856044710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349383 (n + 1) - A349381 (n + 1)

end

end A349382.P5932636380856044710

namespace A349382

/-- `A349383(n+1)-A349381(n+1)` -/
def P5932636380856044710.Spec : Prop :=
  ∀ n, P5932636380856044710.a n = A349382 (n + 1)

end A349382

/-! ## A349382.P6508741965165625424

`∑{d}[n+1, A064989(#)*A346234((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349382

/-- `∑{d}[n+1, A064989(#)*A346234((n+1)/#)]` -/
def P6508741965165625424.Spec : Prop :=
  ∀ n, P6508741965165625424.a n = A349382 (n + 1)

theorem P6508741965165625424.correct : P6508741965165625424.Spec := by
  intro n
  simp only [A349382, Nat.add_sub_cancel]

end A349382

/-! ## A349382.P3452216261099962986

`∑{d}[n+1, A349127(#)*A378220((n+1)/#)]`
-/

namespace A349382.P3452216261099962986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349127 d * A378220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349382.P3452216261099962986

namespace A349382

/-- `∑{d}[n+1, A349127(#)*A378220((n+1)/#)]` -/
def P3452216261099962986.Spec : Prop :=
  ∀ n, P3452216261099962986.a n = A349382 (n + 1)

end A349382

/-! ## A349382.P14104649211148494144

`A349383(n+1)-∑{d}[n+1, A003961(#)*A349125((n+1)/#)]`
-/

namespace A349382.P14104649211148494144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349383 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A003961 d * A349125 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349382.P14104649211148494144

namespace A349382

/-- `A349383(n+1)-∑{d}[n+1, A003961(#)*A349125((n+1)/#)]` -/
def P14104649211148494144.Spec : Prop :=
  ∀ n, P14104649211148494144.a n = A349382 (n + 1)

end A349382

/-!
# A349383: a(n) = A349381(n) + A349382(n).

The programs for A349383, the canonical program `A349383.P13419108071231034251` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349383 has offset 1).

The definition of A349383 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349381, A349382, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349383.P13419108071231034251

`A349381(n+1)+A349382(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349383

/-- `A349381(n+1)+A349382(n+1)` -/
def P13419108071231034251.Spec : Prop :=
  ∀ n, P13419108071231034251.a n = A349383 (n + 1)

theorem P13419108071231034251.correct : P13419108071231034251.Spec := by
  intro n
  simp only [A349383, Nat.add_sub_cancel]

end A349383

/-! ## A349383.P10625322778750545229

`A349382(n+1)+∑{d}[n+1, A003961(#)*A349125((n+1)/#)]`
-/

namespace A349383.P10625322778750545229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349382 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A003961 d * A349125 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349383.P10625322778750545229

namespace A349383

/-- `A349382(n+1)+∑{d}[n+1, A003961(#)*A349125((n+1)/#)]` -/
def P10625322778750545229.Spec : Prop :=
  ∀ n, P10625322778750545229.a n = A349383 (n + 1)

end A349383

/-! ## A349383.P571286969031351924

`A349381(n+1)+∑{d}[n+1, A064989(#)*A346234((n+1)/#)]`
-/

namespace A349383.P571286969031351924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349381 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A064989 d * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349383.P571286969031351924

namespace A349383

/-- `A349381(n+1)+∑{d}[n+1, A064989(#)*A346234((n+1)/#)]` -/
def P571286969031351924.Spec : Prop :=
  ∀ n, P571286969031351924.a n = A349383 (n + 1)

end A349383

/-! ## A349383.P1005708742605508938

`A323894(or(A187829(n+1), A291760(n)))`
-/

namespace A349383.P1005708742605508938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323894 (Int.lor (A187829 (n + 1)) (A291760 n)).toNat

end

end A349383.P1005708742605508938

namespace A349383

/-- `A323894(or(A187829(n+1), A291760(n)))` -/
def P1005708742605508938.Spec : Prop :=
  ∀ n, P1005708742605508938.a n = A349383 (n + 1)

end A349383

/-!
# A349384: Dirichlet convolution of A003961 with the Dirichlet inverse of A048673, where A003961 is fully multiplicative with a(p) = nextprime(p), and A048673(n) = (1+A003961(n))/2.

The programs for A349384, there is no canonical definition to state claims against.
-/

/-! ## A349384.P9379698569938128988

`A349386(n+1)-A349385(n+1)`
-/

namespace A349384.P9379698569938128988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349386 (n + 1) - A349385 (n + 1)

end

end A349384.P9379698569938128988

/-! ## A349384.P7773746696423927260

`∑{d}[n+1, A003961(#)*A323893((n+1)/#)]`
-/

namespace A349384.P7773746696423927260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d * A323893 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349384.P7773746696423927260

/-! ## A349384.P9666397591804940001

`∑{d}[n+1, A003973(#)*A378520((n+1)/#)]`
-/

namespace A349384.P9666397591804940001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003973 d * A378520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349384.P9666397591804940001

/-! ## A349384.P6218547612518712162

`∑{d}[n+1, A349387(#)*A349572((n+1)/#)]`
-/

namespace A349384.P6218547612518712162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349387 d * A349572 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349384.P6218547612518712162

/-! ## A349384.P2274788457030075443

`A349432(A003961(n+1))`
-/

namespace A349384.P2274788457030075443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349432 (A003961 (n + 1)).toNat

end

end A349384.P2274788457030075443

/-! ## A349384.P15046450624837091703

`A349432(A045965(n+1))`
-/

namespace A349384.P15046450624837091703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349432 (A045965 (n + 1)).toNat

end

end A349384.P15046450624837091703

/-!
# A349385: Dirichlet convolution of A048673 with the Dirichlet inverse of A003961, where A003961 is fully multiplicative with a(p) = nextprime(p), and A048673(n) = (1+A003961(n))/2.

The programs for A349385, the canonical program `A349385.P8088612047606087231` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349385 has offset 1).

The definition of A349385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349385.P4696935609384361638

`A349386(n+1)-A349384(n+1)`
-/

namespace A349385.P4696935609384361638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349386 (n + 1) - A349384 (n + 1)

end

end A349385.P4696935609384361638

namespace A349385

/-- `A349386(n+1)-A349384(n+1)` -/
def P4696935609384361638.Spec : Prop :=
  ∀ n, P4696935609384361638.a n = A349385 (n + 1)

end A349385

/-! ## A349385.P12606999929929572617

`∑{d}[n+1, A048673(#)*A346234((n+1)/#)]`
-/

namespace A349385.P12606999929929572617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048673 d * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349385.P12606999929929572617

namespace A349385

/-- `∑{d}[n+1, A048673(#)*A346234((n+1)/#)]` -/
def P12606999929929572617.Spec : Prop :=
  ∀ n, P12606999929929572617.a n = A349385 (n + 1)

end A349385

/-! ## A349385.P12440701714921040714

`∑{d}[n+1, A349388(#)*A349571((n+1)/#)]`
-/

namespace A349385.P12440701714921040714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349388 d * A349571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349385.P12440701714921040714

namespace A349385

/-- `∑{d}[n+1, A349388(#)*A349571((n+1)/#)]` -/
def P12440701714921040714.Spec : Prop :=
  ∀ n, P12440701714921040714.a n = A349385 (n + 1)

end A349385

/-! ## A349385.P7192352084532880816

`∑{d}[n+1, A336840(#)*A378221((n+1)/#)]`
-/

namespace A349385.P7192352084532880816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A336840 d * A378221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349385.P7192352084532880816

namespace A349385

/-- `∑{d}[n+1, A336840(#)*A378221((n+1)/#)]` -/
def P7192352084532880816.Spec : Prop :=
  ∀ n, P7192352084532880816.a n = A349385 (n + 1)

end A349385

/-! ## A349385.P16501735021842628559

`∑{d}[n+1, A378220(#)*A378521((n+1)/#)]`
-/

namespace A349385.P16501735021842628559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378220 d * A378521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349385.P16501735021842628559

namespace A349385

/-- `∑{d}[n+1, A378220(#)*A378521((n+1)/#)]` -/
def P16501735021842628559.Spec : Prop :=
  ∀ n, P16501735021842628559.a n = A349385 (n + 1)

end A349385

/-! ## A349385.P8088612047606087231

`A378220(n+1)/(A000005(n+1)-A070824(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349385

/-- `A378220(n+1)/(A000005(n+1)-A070824(n+1))` -/
def P8088612047606087231.Spec : Prop :=
  ∀ n, P8088612047606087231.a n = (A349385 (n + 1) : ℚ)

end A349385

/-! ## A349385.P12709296637326675149

`A325887(A328915(n+1))`
-/

namespace A349385.P12709296637326675149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325887 (A328915 (n + 1)).toNat

end

end A349385.P12709296637326675149

namespace A349385

/-- `A325887(A328915(n+1))` -/
def P12709296637326675149.Spec : Prop :=
  ∀ n, P12709296637326675149.a n = A349385 (n + 1)

end A349385

/-! ## A349385.P11143061764029769330

`A325887(A003961(n+1))`
-/

namespace A349385.P11143061764029769330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325887 (A003961 (n + 1)).toNat

end

end A349385.P11143061764029769330

namespace A349385

/-- `A325887(A003961(n+1))` -/
def P11143061764029769330.Spec : Prop :=
  ∀ n, P11143061764029769330.a n = A349385 (n + 1)

end A349385

/-! ## A349385.P2527205506706336071

`A325887(A045965(n+1))`
-/

namespace A349385.P2527205506706336071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325887 (A045965 (n + 1)).toNat

end

end A349385.P2527205506706336071

namespace A349385

/-- `A325887(A045965(n+1))` -/
def P2527205506706336071.Spec : Prop :=
  ∀ n, P2527205506706336071.a n = A349385 (n + 1)

end A349385

/-! ## A349385.P5881027148543140124

`A297381(2*A045965(n+1))`
-/

namespace A349385.P5881027148543140124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297381 (2 * A045965 (n + 1)).toNat

end

end A349385.P5881027148543140124

namespace A349385

/-- `A297381(2*A045965(n+1))` -/
def P5881027148543140124.Spec : Prop :=
  ∀ n, P5881027148543140124.a n = A349385 (n + 1)

end A349385

/-! ## A349385.P1918632204146155245

`A349447(2*A003961(n+1)-A003961(n+1))`
-/

namespace A349385.P1918632204146155245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349447 (2 * A003961 (n + 1) - A003961 (n + 1)).toNat

end

end A349385.P1918632204146155245

namespace A349385

/-- `A349447(2*A003961(n+1)-A003961(n+1))` -/
def P1918632204146155245.Spec : Prop :=
  ∀ n, P1918632204146155245.a n = A349385 (n + 1)

end A349385

/-!
# A349386: a(n) = A349384(n) + A349385(n).

The programs for A349386, there is no canonical definition to state claims against.
-/

/-! ## A349386.P17240835803121149435

`A349384(n+1)+A349385(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349386.P17240835803121149435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349384 (n + 1) + A349385 (n + 1)

end

end A349386.P17240835803121149435

/-! ## A349386.P17144339944725322600

`A349433(A003961(n+1))`
-/

namespace A349386.P17144339944725322600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349433 (A003961 (n + 1)).toNat

end

end A349386.P17144339944725322600

/-! ## A349386.P10442172964868323919

`A349433(A253885(n)+1)`
-/

namespace A349386.P10442172964868323919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349433 (A253885 n + 1).toNat

end

end A349386.P10442172964868323919

/-! ## A349386.P9151223388867197135

`A349433(xor(1, A253885(n)))`
-/

namespace A349386.P9151223388867197135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349433 (Int.xor 1 (A253885 n)).toNat

end

end A349386.P9151223388867197135

/-! ## A349386.P5590812516560689641

`A349433(A243501(n+1)-1)`
-/

namespace A349386.P5590812516560689641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349433 (A243501 (n + 1) - 1).toNat

end

end A349386.P5590812516560689641

/-!
# A349387: Dirichlet convolution of A003961 with A055615 (Dirichlet inverse of n), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A349387, the canonical program `A349387.P3512592924213105837` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349387 has offset 1).

The definition of A349387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349387.P6509175421129735849

`∑{d}[n+1, A378606(#)]`
-/

namespace A349387.P6509175421129735849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378606 d

end

end A349387.P6509175421129735849

namespace A349387

/-- `∑{d}[n+1, A378606(#)]` -/
def P6509175421129735849.Spec : Prop :=
  ∀ n, P6509175421129735849.a n = A349387 (n + 1)

end A349387

/-! ## A349387.P17038462443765607516

`A349389(n+1)-A349388(n+1)`
-/

namespace A349387.P17038462443765607516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349389 (n + 1) - A349388 (n + 1)

end

end A349387.P17038462443765607516

namespace A349387

/-- `A349389(n+1)-A349388(n+1)` -/
def P17038462443765607516.Spec : Prop :=
  ∀ n, P17038462443765607516.a n = A349387 (n + 1)

end A349387

/-! ## A349387.P7859464445044732701

`∑{d}[n+1, A003972(#)*A023900((n+1)/#)]`
-/

namespace A349387.P7859464445044732701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349387.P7859464445044732701

namespace A349387

/-- `∑{d}[n+1, A003972(#)*A023900((n+1)/#)]` -/
def P7859464445044732701.Spec : Prop :=
  ∀ n, P7859464445044732701.a n = A349387 (n + 1)

end A349387

/-! ## A349387.P3347310080462393113

`∑{d}[n+1, A003973(#)*A046692((n+1)/#)]`
-/

namespace A349387.P3347310080462393113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003973 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349387.P3347310080462393113

namespace A349387

/-- `∑{d}[n+1, A003973(#)*A046692((n+1)/#)]` -/
def P3347310080462393113.Spec : Prop :=
  ∀ n, P3347310080462393113.a n = A349387 (n + 1)

end A349387

/-! ## A349387.P15891326928137695737

`∑{d}[n+1, A003961(#)*A055615((n+1)/#)]`
-/

namespace A349387.P15891326928137695737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349387.P15891326928137695737

namespace A349387

/-- `∑{d}[n+1, A003961(#)*A055615((n+1)/#)]` -/
def P15891326928137695737.Spec : Prop :=
  ∀ n, P15891326928137695737.a n = A349387 (n + 1)

end A349387

/-! ## A349387.P3512592924213105837

`∑{d}[n+1, A101035(#)*A347137((n+1)/#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A349387

/-- `∑{d}[n+1, A101035(#)*A347137((n+1)/#)]` -/
def P3512592924213105837.Spec : Prop :=
  ∀ n, P3512592924213105837.a n = A349387 (n + 1)

theorem P3512592924213105837.correct : P3512592924213105837.Spec := by
  intro n
  simp only [A349387, Nat.add_sub_cancel]

end A349387

/-! ## A349387.P11944992584431213480

`∑{d}[n+1, A323912(#)*A337544((n+1)/#)]`
-/

namespace A349387.P11944992584431213480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323912 d * A337544 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349387.P11944992584431213480

namespace A349387

/-- `∑{d}[n+1, A323912(#)*A337544((n+1)/#)]` -/
def P11944992584431213480.Spec : Prop :=
  ∀ n, P11944992584431213480.a n = A349387 (n + 1)

end A349387

/-! ## A349387.P17979785671330405762

`∑{d}[n+1, A323910(#)*A344587((n+1)/#)]`
-/

namespace A349387.P17979785671330405762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323910 d * A344587 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349387.P17979785671330405762

namespace A349387

/-- `∑{d}[n+1, A323910(#)*A344587((n+1)/#)]` -/
def P17979785671330405762.Spec : Prop :=
  ∀ n, P17979785671330405762.a n = A349387 (n + 1)

end A349387

/-! ## A349387.P667300432024353551

`∑{d}[n+1, A328722(#)*A347136((n+1)/#)]`
-/

namespace A349387.P667300432024353551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328722 d * A347136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349387.P667300432024353551

namespace A349387

/-- `∑{d}[n+1, A328722(#)*A347136((n+1)/#)]` -/
def P667300432024353551.Spec : Prop :=
  ∀ n, P667300432024353551.a n = A349387 (n + 1)

end A349387

/-! ## A349387.P3767568655987354530

`∑{d}[n+1, A349384(#)*A349571((n+1)/#)]`
-/

namespace A349387.P3767568655987354530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349384 d * A349571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349387.P3767568655987354530

namespace A349387

/-- `∑{d}[n+1, A349384(#)*A349571((n+1)/#)]` -/
def P3767568655987354530.Spec : Prop :=
  ∀ n, P3767568655987354530.a n = A349387 (n + 1)

end A349387

/-! ## A349387.P6687962496641048654

`∑{d}[n+1, A341529(#)*A378228((n+1)/#)]`
-/

namespace A349387.P6687962496641048654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341529 d * A378228 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349387.P6687962496641048654

namespace A349387

/-- `∑{d}[n+1, A341529(#)*A378228((n+1)/#)]` -/
def P6687962496641048654.Spec : Prop :=
  ∀ n, P6687962496641048654.a n = A349387 (n + 1)

end A349387

/-! ## A349387.P14008433038408257879

`A349438(A003961(n+1))`
-/

namespace A349387.P14008433038408257879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349438 (A003961 (n + 1)).toNat

end

end A349387.P14008433038408257879

namespace A349387

/-- `A349438(A003961(n+1))` -/
def P14008433038408257879.Spec : Prop :=
  ∀ n, P14008433038408257879.a n = A349387 (n + 1)

end A349387

/-! ## A349387.P17310262485727401863

`A349438(A045965(n+1))`
-/

namespace A349387.P17310262485727401863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349438 (A045965 (n + 1)).toNat

end

end A349387.P17310262485727401863

namespace A349387

/-- `A349438(A045965(n+1))` -/
def P17310262485727401863.Spec : Prop :=
  ∀ n, P17310262485727401863.a n = A349387 (n + 1)

end A349387

/-!
# A349388: Dirichlet convolution of A000027 with A346234 (Dirichlet inverse of A003961), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A349388, the canonical program `A349388.P677895676119621301` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349388 has offset 1).

The definition of A349388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349388.P677895676119621301

`∑{d}[n+1, #*A346234((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349388

/-- `∑{d}[n+1, #*A346234((n+1)/#)]` -/
def P677895676119621301.Spec : Prop :=
  ∀ n, P677895676119621301.a n = A349388 (n + 1)

theorem P677895676119621301.correct : P677895676119621301.Spec := by
  intro n
  simp only [A349388, Nat.add_sub_cancel]

end A349388

/-! ## A349388.P7613162588755926734

`A349389(n+1)-A349387(n+1)`
-/

namespace A349388.P7613162588755926734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349389 (n + 1) - A349387 (n + 1)

end

end A349388.P7613162588755926734

namespace A349388

/-- `A349389(n+1)-A349387(n+1)` -/
def P7613162588755926734.Spec : Prop :=
  ∀ n, P7613162588755926734.a n = A349388 (n + 1)

end A349388

/-! ## A349388.P17189872261911379191

`∑{d}[n+1, A000010(#)*A378220((n+1)/#)]`
-/

namespace A349388.P17189872261911379191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A378220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349388.P17189872261911379191

namespace A349388

/-- `∑{d}[n+1, A000010(#)*A378220((n+1)/#)]` -/
def P17189872261911379191.Spec : Prop :=
  ∀ n, P17189872261911379191.a n = A349388 (n + 1)

end A349388

/-! ## A349388.P18075927747447860356

`∑{d}[n+1, A000203(#)*A378221((n+1)/#)]`
-/

namespace A349388.P18075927747447860356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A378221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349388.P18075927747447860356

namespace A349388

/-- `∑{d}[n+1, A000203(#)*A378221((n+1)/#)]` -/
def P18075927747447860356.Spec : Prop :=
  ∀ n, P18075927747447860356.a n = A349388 (n + 1)

end A349388

/-! ## A349388.P14719731131085250819

`∑{d}[n+1, A033879(#)*A346246((n+1)/#)]`
-/

namespace A349388.P14719731131085250819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A346246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349388.P14719731131085250819

namespace A349388

/-- `∑{d}[n+1, A033879(#)*A346246((n+1)/#)]` -/
def P14719731131085250819.Spec : Prop :=
  ∀ n, P14719731131085250819.a n = A349388 (n + 1)

end A349388

/-! ## A349388.P4959308555516348739

`∑{d}[n+1, A008683(#)*A378607((n+1)/#)]`
-/

namespace A349388.P4959308555516348739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378607 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349388.P4959308555516348739

namespace A349388

/-- `∑{d}[n+1, A008683(#)*A378607((n+1)/#)]` -/
def P4959308555516348739.Spec : Prop :=
  ∀ n, P4959308555516348739.a n = A349388 (n + 1)

end A349388

/-! ## A349388.P18397549188713102321

`∑{d}[n+1, A349385(#)*A349572((n+1)/#)]`
-/

namespace A349388.P18397549188713102321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349385 d * A349572 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349388.P18397549188713102321

namespace A349388

/-- `∑{d}[n+1, A349385(#)*A349572((n+1)/#)]` -/
def P18397549188713102321.Spec : Prop :=
  ∀ n, P18397549188713102321.a n = A349388 (n + 1)

end A349388

/-! ## A349388.P13858193795219213025

`∑{d}[n+1, A341528(#)*A378229((n+1)/#)]`
-/

namespace A349388.P13858193795219213025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341528 d * A378229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349388.P13858193795219213025

namespace A349388

/-- `∑{d}[n+1, A341528(#)*A378229((n+1)/#)]` -/
def P13858193795219213025.Spec : Prop :=
  ∀ n, P13858193795219213025.a n = A349388 (n + 1)

end A349388

/-! ## A349388.P17718945279507861714

`A349437(A003961(n+1))`
-/

namespace A349388.P17718945279507861714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349437 (A003961 (n + 1)).toNat

end

end A349388.P17718945279507861714

namespace A349388

/-- `A349437(A003961(n+1))` -/
def P17718945279507861714.Spec : Prop :=
  ∀ n, P17718945279507861714.a n = A349388 (n + 1)

end A349388

/-!
# A349389: a(n) = A349387(n) + A349388(n).

The programs for A349389, the canonical program `A349389.P17688454280443951021` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349389 has offset 1).

The definition of A349389 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, A349388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349389.P17688454280443951021

`A349387(n+1)+A349388(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A349389

/-- `A349387(n+1)+A349388(n+1)` -/
def P17688454280443951021.Spec : Prop :=
  ∀ n, P17688454280443951021.a n = A349389 (n + 1)

theorem P17688454280443951021.correct : P17688454280443951021.Spec := by
  intro n
  simp only [A349389, Nat.add_sub_cancel]

end A349389

/-! ## A349389.P10760719864128040809

`A349439(A003961(n+1))`
-/

namespace A349389.P10760719864128040809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349439 (A003961 (n + 1)).toNat

end

end A349389.P10760719864128040809

namespace A349389

/-- `A349439(A003961(n+1))` -/
def P10760719864128040809.Spec : Prop :=
  ∀ n, P10760719864128040809.a n = A349389 (n + 1)

end A349389

/-! ## A349389.P1080429448839530408

`A349439(A243501(n+1)-1)`
-/

namespace A349389.P1080429448839530408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349439 (A243501 (n + 1) - 1).toNat

end

end A349389.P1080429448839530408

namespace A349389

/-- `A349439(A243501(n+1)-1)` -/
def P1080429448839530408.Spec : Prop :=
  ∀ n, P1080429448839530408.a n = A349389 (n + 1)

end A349389

/-! ## A349389.P16777079272936241981

`A349439(2*A349573(n+1)+2*n+1)`
-/

namespace A349389.P16777079272936241981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349439 (2 * A349573 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A349389.P16777079272936241981

namespace A349389

/-- `A349439(2*A349573(n+1)+2*n+1)` -/
def P16777079272936241981.Spec : Prop :=
  ∀ n, P16777079272936241981.a n = A349389 (n + 1)

end A349389

/-! ## A349389.P10155882526914121206

`A349439(A045965(n+1)-A000007(n))`
-/

namespace A349389.P10155882526914121206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349439 (A045965 (n + 1) - A000007 n).toNat

end

end A349389.P10155882526914121206

namespace A349389

/-- `A349439(A045965(n+1)-A000007(n))` -/
def P10155882526914121206.Spec : Prop :=
  ∀ n, P10155882526914121206.a n = A349389 (n + 1)

end A349389

/-! ## A349389.P17023446451200735012

`A349439(A045965(n+1)/(A000007(n)+1))`
-/

namespace A349389.P17023446451200735012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349439 (SequenceMachineLib.roundAway ((A045965 (n + 1) : ℚ) / (A000007 n + 1 : ℚ))).toNat

end

end A349389.P17023446451200735012

namespace A349389

/-- `A349439(A045965(n+1)/(A000007(n)+1))` -/
def P17023446451200735012.Spec : Prop :=
  ∀ n, P17023446451200735012.a n = A349389 (n + 1)

end A349389

/-! ## A349389.P17458572793357983016

`A349439(A045965(n+1))+A000007(n)*A349439(n+1)`
-/

namespace A349389.P17458572793357983016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349439 (A045965 (n + 1)).toNat + A000007 n * A349439 (n + 1)

end

end A349389.P17458572793357983016

namespace A349389

/-- `A349439(A045965(n+1))+A000007(n)*A349439(n+1)` -/
def P17458572793357983016.Spec : Prop :=
  ∀ n, P17458572793357983016.a n = A349389 (n + 1)

end A349389

/-!
# A349390: Dirichlet convolution of A126760 with Kimberling's paraphrase, A003602.

The programs for A349390, there is no canonical definition to state claims against.
-/

/-! ## A349390.P10083414039513465855

`∑{d}[n+1, A003602(#)*A126760((n+1)/#)]`
-/

namespace A349390.P10083414039513465855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A126760 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349390.P10083414039513465855

/-! ## A349390.P11625191470461439100

`∑{d}[n+1, A347233(#)*A349371((n+1)/#)]`
-/

namespace A349390.P11625191470461439100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347233 d * A349371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349390.P11625191470461439100

/-! ## A349390.P3034741171330884303

`∑{d}[n+1, A349136(#)*A349393((n+1)/#)]`
-/

namespace A349390.P3034741171330884303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349136 d * A349393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349390.P3034741171330884303

/-! ## A349390.P11075809498286785459

`∑{d}[n+1, A349370(#)*A353460((n+1)/#)]`
-/

namespace A349390.P11075809498286785459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349370 d * A353460 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349390.P11075809498286785459

/-!
# A349391: Dirichlet convolution of A126760 with omega.

The programs for A349391, there is no canonical definition to state claims against.
-/

/-! ## A349391.P179778432189153935

`∑{d}[n+1, A001221(#)*A126760((n+1)/#)]`
-/

namespace A349391.P179778432189153935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A126760 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349391.P179778432189153935

/-! ## A349391.P12190525689917863924

`∑{d}[n+1, A010051(#)*A349393((n+1)/#)]`
-/

namespace A349391.P12190525689917863924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A349393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349391.P12190525689917863924

/-! ## A349391.P15232939565334275684

`∑{d}[n+1, A062799(#)*A347233((n+1)/#)]`
-/

namespace A349391.P15232939565334275684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062799 d * A347233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349391.P15232939565334275684

/-! ## A349391.P12586844541975433457

`∑{d}[n+1, A143519(#)*A349392((n+1)/#)]`
-/

namespace A349391.P12586844541975433457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143519 d * A349392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349391.P12586844541975433457

/-! ## A349391.P7878697255432086494

`∑{d}[n+1, A347957(#)*A353460((n+1)/#)]`
-/

namespace A349391.P7878697255432086494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347957 d * A353460 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349391.P7878697255432086494

/-! ## A349391.P14678040566468676774

`∑{p}[A129202(n), A349393((n+1)/#)]`
-/

namespace A349391.P14678040566468676774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A349393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A349391.P14678040566468676774

/-!
# A349392: Dirichlet convolution of A126760 with tau (number of divisors function).

The programs for A349392, there is no canonical definition to state claims against.
-/

/-! ## A349392.P1396108895369396426

`∑{d}[n+1, A349393(#)]`
-/

namespace A349392.P1396108895369396426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349393 d

end

end A349392.P1396108895369396426

/-! ## A349392.P11722542095898480014

`∑{d}[n+1, A000005(#)*A126760((n+1)/#)]`
-/

namespace A349392.P11722542095898480014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A126760 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349392.P11722542095898480014

/-! ## A349392.P9029046109658283684

`∑{d}[n+1, A007425(#)*A347233((n+1)/#)]`
-/

namespace A349392.P9029046109658283684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A347233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349392.P9029046109658283684

/-! ## A349392.P13543341666188043312

`∑{d}[n+1, A048691(#)*A349395((n+1)/#)]`
-/

namespace A349392.P13543341666188043312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A349395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349392.P13543341666188043312

/-! ## A349392.P7163494132159945876

`∑{d}[n+1, A349372(#)*A353460((n+1)/#)]`
-/

namespace A349392.P7163494132159945876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349372 d * A353460 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349392.P7163494132159945876

/-!
# A349393: Inverse Möbius transform of A126760.

The programs for A349393, there is no canonical definition to state claims against.
-/

/-! ## A349393.P18036536097952369054

`∑{d}[n+1, A126760(#)]`
-/

namespace A349393.P18036536097952369054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A126760 d

end

end A349393.P18036536097952369054

/-! ## A349393.P3469530029205606194

`∑{d}[n+1, A000005(#)*A347233((n+1)/#)]`
-/

namespace A349393.P3469530029205606194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A347233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349393.P3469530029205606194

/-! ## A349393.P2576546996853694520

`∑{d}[n+1, A008683(#)*A349392((n+1)/#)]`
-/

namespace A349393.P2576546996853694520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A349392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349393.P2576546996853694520

/-! ## A349393.P4946986961830692565

`∑{d}[n+1, A034444(#)*A349395((n+1)/#)]`
-/

namespace A349393.P4946986961830692565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A349395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349393.P4946986961830692565

/-! ## A349393.P5640412725779607909

`∑{d}[n+1, A349371(#)*A353460((n+1)/#)]`
-/

namespace A349393.P5640412725779607909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349371 d * A353460 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349393.P5640412725779607909

/-!
# A349394: a(p^e) = p^(e-1) for prime powers, a(n) = 0 for all other n; Dirichlet convolution of A003415 (arithmetic derivative of n) with A055615 (Dirichlet inverse of n).

The programs for A349394, the canonical program `A349394.P210516795435731064` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349394 has offset 1).

The definition of A349394 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A069513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349394.P210516795435731064

`A003557(n+1)*A069513(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A349394

/-- `A003557(n+1)*A069513(n+1)` -/
def P210516795435731064.Spec : Prop :=
  ∀ n, P210516795435731064.a n = A349394 (n + 1)

theorem P210516795435731064.correct : P210516795435731064.Spec := by
  intro n
  simp only [A349394, Nat.add_sub_cancel]

end A349394

/-! ## A349394.P17864645110855679124

`∏{p}[n+1, (n+1)/#]%(n+1)`
-/

namespace A349394.P17864645110855679124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ)

end

end A349394.P17864645110855679124

namespace A349394

/-- `∏{p}[n+1, (n+1)/#]%(n+1)` -/
def P17864645110855679124.Spec : Prop :=
  ∀ n, P17864645110855679124.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P12388394256996682078

`A048671(n+1)%(n+1)`
-/

namespace A349394.P12388394256996682078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048671 (n + 1)) (n + 1 : ℤ)

end

end A349394.P12388394256996682078

namespace A349394

/-- `A048671(n+1)%(n+1)` -/
def P12388394256996682078.Spec : Prop :=
  ∀ n, P12388394256996682078.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P12403337799850373934

`A205959(n+1)%(n+1)`
-/

namespace A349394.P12403337799850373934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205959 (n + 1)) (n + 1 : ℤ)

end

end A349394.P12403337799850373934

namespace A349394

/-- `A205959(n+1)%(n+1)` -/
def P12403337799850373934.Spec : Prop :=
  ∀ n, P12403337799850373934.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P17087302200390092450

`∑{p}[A014963(n+1), (n+1)/#]`
-/

namespace A349394.P17087302200390092450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (n + 1 : ℚ) / (p : ℚ)

end

end A349394.P17087302200390092450

namespace A349394

/-- `∑{p}[A014963(n+1), (n+1)/#]` -/
def P17087302200390092450.Spec : Prop :=
  ∀ n, P17087302200390092450.a n = (A349394 (n + 1) : ℚ)

end A349394

/-! ## A349394.P16750547300029129696

`(n+1)/∏{p}[n+1, #]*A010051(∏{p}[n+1, #])`
-/

namespace A349394.P16750547300029129696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A010051 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A349394.P16750547300029129696

namespace A349394

/-- `(n+1)/∏{p}[n+1, #]*A010051(∏{p}[n+1, #])` -/
def P16750547300029129696.Spec : Prop :=
  ∀ n, P16750547300029129696.a n = (A349394 (n + 1) : ℚ)

end A349394

/-! ## A349394.P329816849518120493

`A051953(A100994(n+1))`
-/

namespace A349394.P329816849518120493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A100994 (n + 1)).toNat

end

end A349394.P329816849518120493

namespace A349394

/-- `A051953(A100994(n+1))` -/
def P329816849518120493.Spec : Prop :=
  ∀ n, P329816849518120493.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P6318327351780889034

`A069513(n+1)*A242926(n)`
-/

namespace A349394.P6318327351780889034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A242926 n

end

end A349394.P6318327351780889034

namespace A349394

/-- `A069513(n+1)*A242926(n)` -/
def P6318327351780889034.Spec : Prop :=
  ∀ n, P6318327351780889034.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P15449686684585445149

`A242926(n)%A100994(n+1)`
-/

namespace A349394.P15449686684585445149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242926 n) (A100994 (n + 1))

end

end A349394.P15449686684585445149

namespace A349394

/-- `A242926(n)%A100994(n+1)` -/
def P15449686684585445149.Spec : Prop :=
  ∀ n, P15449686684585445149.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P8385618006735490604

`A010055(n+1)*A051953(n+1)`
-/

namespace A349394.P8385618006735490604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A051953 (n + 1)

end

end A349394.P8385618006735490604

namespace A349394

/-- `A010055(n+1)*A051953(n+1)` -/
def P8385618006735490604.Spec : Prop :=
  ∀ n, P8385618006735490604.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P18375656383212879562

`A009195(n+1)*A069513(n+1)`
-/

namespace A349394.P18375656383212879562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1) * A069513 (n + 1)

end

end A349394.P18375656383212879562

namespace A349394

/-- `A009195(n+1)*A069513(n+1)` -/
def P18375656383212879562.Spec : Prop :=
  ∀ n, P18375656383212879562.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P18158195407011545442

`A010055(n+1)*A069249(n+1)`
-/

namespace A349394.P18158195407011545442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A069249 (n + 1)

end

end A349394.P18158195407011545442

namespace A349394

/-- `A010055(n+1)*A069249(n+1)` -/
def P18158195407011545442.Spec : Prop :=
  ∀ n, P18158195407011545442.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P2542621693604244420

`A010055(n+1)*A069359(n+1)`
-/

namespace A349394.P2542621693604244420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A069359 (n + 1)

end

end A349394.P2542621693604244420

namespace A349394

/-- `A010055(n+1)*A069359(n+1)` -/
def P2542621693604244420.Spec : Prop :=
  ∀ n, P2542621693604244420.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P10727735391442364488

`A014652(n+1)*A069513(n+1)`
-/

namespace A349394.P10727735391442364488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014652 (n + 1) * A069513 (n + 1)

end

end A349394.P10727735391442364488

namespace A349394

/-- `A014652(n+1)*A069513(n+1)` -/
def P10727735391442364488.Spec : Prop :=
  ∀ n, P10727735391442364488.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P10547452824403536892

`A032742(n+1)*A069513(n+1)`
-/

namespace A349394.P10547452824403536892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A069513 (n + 1)

end

end A349394.P10547452824403536892

namespace A349394

/-- `A032742(n+1)*A069513(n+1)` -/
def P10547452824403536892.Spec : Prop :=
  ∀ n, P10547452824403536892.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P17365003917440863256

`A048671(n+1)*A069513(n+1)`
-/

namespace A349394.P17365003917440863256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1) * A069513 (n + 1)

end

end A349394.P17365003917440863256

namespace A349394

/-- `A048671(n+1)*A069513(n+1)` -/
def P17365003917440863256.Spec : Prop :=
  ∀ n, P17365003917440863256.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P6738449142418931659

`A051953(n+1)*A069513(n+1)`
-/

namespace A349394.P6738449142418931659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) * A069513 (n + 1)

end

end A349394.P6738449142418931659

namespace A349394

/-- `A051953(n+1)*A069513(n+1)` -/
def P6738449142418931659.Spec : Prop :=
  ∀ n, P6738449142418931659.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P1726520329022555294

`A052126(n+1)*A069513(n+1)`
-/

namespace A349394.P1726520329022555294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A069513 (n + 1)

end

end A349394.P1726520329022555294

namespace A349394

/-- `A052126(n+1)*A069513(n+1)` -/
def P1726520329022555294.Spec : Prop :=
  ∀ n, P1726520329022555294.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P16038995823220851298

`A010055(n+1)*A116512(n+1)`
-/

namespace A349394.P16038995823220851298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A116512 (n + 1)

end

end A349394.P16038995823220851298

namespace A349394

/-- `A010055(n+1)*A116512(n+1)` -/
def P16038995823220851298.Spec : Prop :=
  ∀ n, P16038995823220851298.a n = A349394 (n + 1)

end A349394

/-! ## A349394.P12816471442090998096

`A069249(n+1)*A069513(n+1)`
-/

namespace A349394.P12816471442090998096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069249 (n + 1) * A069513 (n + 1)

end

end A349394.P12816471442090998096

namespace A349394

/-- `A069249(n+1)*A069513(n+1)` -/
def P12816471442090998096.Spec : Prop :=
  ∀ n, P12816471442090998096.a n = A349394 (n + 1)

end A349394

/-!
# A349395: Dirichlet convolution of A126760 with Liouville's lambda.

The programs for A349395, there is no canonical definition to state claims against.
-/

/-! ## A349395.P6092476394467411909

`∑{d}[n+1, A008836(#)*A126760((n+1)/#)]`
-/

namespace A349395.P6092476394467411909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A126760 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349395.P6092476394467411909

/-! ## A349395.P11427309359029093051

`∑{d}[n+1, A010052(#)*A347233((n+1)/#)]`
-/

namespace A349395.P11427309359029093051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A347233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349395.P11427309359029093051

/-! ## A349395.P9205990790478721003

`∑{d}[n+1, A158522(#)*A349393((n+1)/#)]`
-/

namespace A349395.P9205990790478721003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A349393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349395.P9205990790478721003

/-! ## A349395.P10715564275464796893

`∑{d}[n+1, A326415(#)*A349392((n+1)/#)]`
-/

namespace A349395.P10715564275464796893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326415 d * A349392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349395.P10715564275464796893

/-! ## A349395.P11468812308075662317

`∑{d}[n+1, A349375(#)*A353460((n+1)/#)]`
-/

namespace A349395.P11468812308075662317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349375 d * A353460 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349395.P11468812308075662317

/-!
# A349396: Dirichlet convolution of A342001 ({arithmetic derivative of n}/A003557(n)) with A055615 (Dirichlet inverse of n).

The programs for A349396, the canonical program `A349396.P11308285491358487447` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349396 has offset 1).

The definition of A349396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349396.P11308285491358487447

`∑{d}[n+1, A023900(#)*A346485((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349396

/-- `∑{d}[n+1, A023900(#)*A346485((n+1)/#)]` -/
def P11308285491358487447.Spec : Prop :=
  ∀ n, P11308285491358487447.a n = A349396 (n + 1)

theorem P11308285491358487447.correct : P11308285491358487447.Spec := by
  intro n
  simp only [A349396, Nat.add_sub_cancel]

end A349396

/-! ## A349396.P949036376249167062

`∑{d}[n+1, A055615(#)*A342001((n+1)/#)]`
-/

namespace A349396.P949036376249167062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349396.P949036376249167062

namespace A349396

/-- `∑{d}[n+1, A055615(#)*A342001((n+1)/#)]` -/
def P949036376249167062.Spec : Prop :=
  ∀ n, P949036376249167062.a n = A349396 (n + 1)

end A349396

/-! ## A349396.P11131600736139326701

`∑{d}[n+1, A101035(#)*A347235((n+1)/#)]`
-/

namespace A349396.P11131600736139326701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A347235 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349396.P11131600736139326701

namespace A349396

/-- `∑{d}[n+1, A101035(#)*A347235((n+1)/#)]` -/
def P11131600736139326701.Spec : Prop :=
  ∀ n, P11131600736139326701.a n = A349396 (n + 1)

end A349396

/-! ## A349396.P13982360670680335448

`∑{d}[n+1, A328729(#)*A347395((n+1)/#)]`
-/

namespace A349396.P13982360670680335448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328729 d * A347395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349396.P13982360670680335448

namespace A349396

/-- `∑{d}[n+1, A328729(#)*A347395((n+1)/#)]` -/
def P13982360670680335448.Spec : Prop :=
  ∀ n, P13982360670680335448.a n = A349396 (n + 1)

end A349396

/-! ## A349396.P912316066629273840

`A105220(A002530(n))-A033273(n+1)`
-/

namespace A349396.P912316066629273840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 (A002530 n).toNat - A033273 (n + 1)

end

end A349396.P912316066629273840

namespace A349396

/-- `A105220(A002530(n))-A033273(n+1)` -/
def P912316066629273840.Spec : Prop :=
  ∀ n, P912316066629273840.a n = A349396 (n + 1)

end A349396

/-!
# A349397: Dirichlet convolution of A064216 with the Dirichlet inverse of its inverse permutation.

The programs for A349397, there is no canonical definition to state claims against.
-/

/-! ## A349397.P12093474874671430459

`A349399(n+1)-A349398(n+1)`
-/

namespace A349397.P12093474874671430459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349399 (n + 1) - A349398 (n + 1)

end

end A349397.P12093474874671430459

/-! ## A349397.P5589714120733741235

`∑{d}[n+1, A064216(#)*A323893((n+1)/#)]`
-/

namespace A349397.P5589714120733741235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064216 d * A323893 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349397.P5589714120733741235

/-! ## A349397.P4743757118209553085

`A349399(n+1)-∑{d}[n+1, A048673(#)*A349358((n+1)/#)]`
-/

namespace A349397.P4743757118209553085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349399 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A048673 d * A349358 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349397.P4743757118209553085

/-! ## A349397.P3576166857435539829

`val(A269264(n+2), n+3)-A349398(n+1)`
-/

namespace A349397.P3576166857435539829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A269264 (n + 2)).toNat (n + 3) : ℤ) - A349398 (n + 1)

end

end A349397.P3576166857435539829

/-! ## A349397.P7514282162255430460

`A049084(A076531(n+1))-A349398(n+1)`
-/

namespace A349397.P7514282162255430460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A076531 (n + 1)).toNat - A349398 (n + 1)

end

end A349397.P7514282162255430460

/-!
# A349398: Dirichlet convolution of A048673 with the Dirichlet inverse of its inverse permutation.

The programs for A349398, there is no canonical definition to state claims against.
-/

/-! ## A349398.P4395720659602349747

`A349399(n+1)-A349397(n+1)`
-/

namespace A349398.P4395720659602349747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349399 (n + 1) - A349397 (n + 1)

end

end A349398.P4395720659602349747

/-! ## A349398.P1756871739255861953

`∑{d}[n+1, A048673(#)*A349358((n+1)/#)]`
-/

namespace A349398.P1756871739255861953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048673 d * A349358 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349398.P1756871739255861953

/-! ## A349398.P652844868133322991

`A349399(n+1)-∑{d}[n+1, A064216(#)*A323893((n+1)/#)]`
-/

namespace A349398.P652844868133322991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349399 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A064216 d * A323893 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349398.P652844868133322991

/-! ## A349398.P278046977575716395

`val(A269264(n+2), n+3)-A349397(n+1)`
-/

namespace A349398.P278046977575716395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A269264 (n + 2)).toNat (n + 3) : ℤ) - A349397 (n + 1)

end

end A349398.P278046977575716395

/-! ## A349398.P4678338501302118137

`A033999(A175965(2*(n+1)))*A349397(n+1)`
-/

namespace A349398.P4678338501302118137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A175965 (2 * (n + 1))).toNat * A349397 (n + 1)

end

end A349398.P4678338501302118137

/-!
# A349399: a(n) = A349397(n) + A349398(n).

The programs for A349399, there is no canonical definition to state claims against.
-/

/-! ## A349399.P5197616437433983327

`A349397(n+1)+A349398(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349399.P5197616437433983327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349397 (n + 1) + A349398 (n + 1)

end

end A349399.P5197616437433983327

/-! ## A349399.P13122723746069477713

`A349398(n+1)+∑{d}[n+1, A064216(#)*A323893((n+1)/#)]`
-/

namespace A349399.P13122723746069477713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349398 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A064216 d * A323893 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349399.P13122723746069477713

/-! ## A349399.P13241271839642619120

`A349397(n+1)+∑{d}[n+1, A048673(#)*A349358((n+1)/#)]`
-/

namespace A349399.P13241271839642619120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349397 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A048673 d * A349358 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349399.P13241271839642619120

