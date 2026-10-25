import SequenceMachineLib.Basic
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A242800: Numbers n such that (n^n+3)/(n+3) is an integer.

The programs for A242800, there is no canonical definition to state claims against.
-/

/-! ## A242800.P5079915671421598983

`∩[A260113(n+1), A049646(n)]`
-/

namespace A242800.P5079915671421598983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242800.P5079915671421598983

/-! ## A242800.P17411477037148500960

`lt[A324572(A000069(n+3)), A028234(n+1)]`
-/

namespace A242800.P17411477037148500960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324572 (A000069 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242800.P17411477037148500960

/-! ## A242800.P3362771587113961661

`lt[A018026(A295887(n+5)), A136835(3*n+5)]`
-/

namespace A242800.P3362771587113961661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018026 (A295887 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136835 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242800.P3362771587113961661

/-!
# A242804: Integers k such that each of k, k+1, k+2, k+4, k+5, k+6 is the product of two distinct primes.

The programs for A242804, there is no canonical definition to state claims against.
-/

/-! ## A242804.P2292369655908079123

`A202319(n+1)-1`
-/

namespace A242804.P2292369655908079123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202319 (n + 1) - 1

end

end A242804.P2292369655908079123

/-! ## A242804.P15356356897073096905

`A358657(n+1)-3`
-/

namespace A242804.P15356356897073096905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358657 (n + 1) - 3

end

end A242804.P15356356897073096905

/-! ## A242804.P4449196996326079001

`2*A158476(n+1)-1`
-/

namespace A242804.P4449196996326079001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158476 (n + 1) - 1

end

end A242804.P4449196996326079001

/-! ## A242804.P17665701824026340669

`2*6*(A257044(n+1)+1)-3`
-/

namespace A242804.P17665701824026340669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (6 * (A257044 (n + 1) + 1)) - 3

end

end A242804.P17665701824026340669

/-! ## A242804.P2075560158762698906

`xor(3, A202319(A000027(n+1)))`
-/

namespace A242804.P2075560158762698906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A202319 (A000027 (n + 1)).toNat)

end

end A242804.P2075560158762698906

/-! ## A242804.P13158716378678189876

`A260196(n+2)+A202319(n+1)`
-/

namespace A242804.P13158716378678189876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A202319 (n + 1)

end

end A242804.P13158716378678189876

/-! ## A242804.P5722355537568429640

`xor(2, A202319(n+1)+A034947(n+1)²)`
-/

namespace A242804.P5722355537568429640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A202319 (n + 1) + A034947 (n + 1) ^ 2)

end

end A242804.P5722355537568429640

/-! ## A242804.P311139824125296565

`xor(A010873(A004767(n)), A202319(n+1))`
-/

namespace A242804.P311139824125296565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010873 (A004767 n).toNat) (A202319 (n + 1))

end

end A242804.P311139824125296565

/-! ## A242804.P12870196679411113693

`xor(A135717(A070939(n)), A202319(n+1))`
-/

namespace A242804.P12870196679411113693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135717 (A070939 n).toNat) (A202319 (n + 1))

end

end A242804.P12870196679411113693

/-! ## A242804.P16751568528001914039

`A302050(A065091(n+1))+A202319(n+1)`
-/

namespace A242804.P16751568528001914039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A065091 (n + 1)).toNat + A202319 (n + 1)

end

end A242804.P16751568528001914039

/-! ## A242804.P3183183713090937736

`A309214(A082542(n+1))+A202319(n+1)`
-/

namespace A242804.P3183183713090937736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309214 (A082542 (n + 1)).toNat + A202319 (n + 1)

end

end A242804.P3183183713090937736

/-! ## A242804.P9140061044818068532

`A295732(A014963(10*(n+1)))+A202319(n+1)`
-/

namespace A242804.P9140061044818068532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 (A014963 (10 * (n + 1))).toNat + A202319 (n + 1)

end

end A242804.P9140061044818068532

/-! ## A242804.P12416618018838839538

`A302050(A054804(n+1))+A202319(n+1)`
-/

namespace A242804.P12416618018838839538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A054804 (n + 1)).toNat + A202319 (n + 1)

end

end A242804.P12416618018838839538

/-! ## A242804.P16234859039697069656

`A302050(A054806(n+1))+A202319(n+1)`
-/

namespace A242804.P16234859039697069656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A054806 (n + 1)).toNat + A202319 (n + 1)

end

end A242804.P16234859039697069656

/-! ## A242804.P13788185350238229301

`xor(A010873(A145473(n+1)), A202319(n+1))`
-/

namespace A242804.P13788185350238229301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010873 (A145473 (n + 1)).toNat) (A202319 (n + 1))

end

end A242804.P13788185350238229301

/-! ## A242804.P6508184692110184577

`xor(A001222(A234100(n+1)), A202319(n+1))`
-/

namespace A242804.P6508184692110184577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A234100 (n + 1)).toNat) (A202319 (n + 1))

end

end A242804.P6508184692110184577

/-!
# A242807: Smallest lesser of twin primes (A001359) with index n, or a(n)=0, if there are no such twin primes.

The programs for A242807, there is no canonical definition to state claims against.
-/

/-! ## A242807.P12906827891692507596

`p?[A001359(2*n+1)-C(n, 4)]`
-/

namespace A242807.P12906827891692507596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (2 * n + 1) - (Nat.choose n 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242807.P12906827891692507596

/-! ## A242807.P4274465347173193393

`A172070(A373401(n+1))`
-/

namespace A242807.P4274465347173193393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172070 (A373401 (n + 1)).toNat

end

end A242807.P4274465347173193393

/-!
# A242808: The smallest n-digit number where first k digits are divisible by k-th Fibonacci number for k = 1..n.

The programs for A242808, there is no canonical definition to state claims against.
-/

/-! ## A242808.P16637304746599227983

`A261660(A261653(n+1)+A000009(2*(n+2)))`
-/

namespace A242808.P16637304746599227983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261660 (A261653 (n + 1) + A000009 (2 * (n + 2))).toNat

end

end A242808.P16637304746599227983

/-! ## A242808.P4761468649202479360

`xor(10*a(n-1)+1, A358235(a(n-1)+10^(n-1)))` with `a(0)=1`
-/

namespace A242808.P4761468649202479360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1) + 1) (A358235 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat)

end

end A242808.P4761468649202479360

/-!
# A242809: a(n) is the largest n-digit number whose truncation after its first k digits is divisible by the k-th Fibonacci number for k = 1..n.

The programs for A242809, there is no canonical definition to state claims against.
-/

/-! ## A242809.P13001123909563778400

`A136400(A000540(n))+A064617(n+1)`
-/

namespace A242809.P13001123909563778400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A000540 n).toNat + A064617 (n + 1)

end

end A242809.P13001123909563778400

/-!
# A242810: a(n) is the smallest n-digit number whose truncation after its first k digits is divisible by the k-th Lucas number (A000032(n)) for k = 1..n.

The programs for A242810, there is no canonical definition to state claims against.
-/

/-! ## A242810.P17105413481290146111

`A004709(A011557(n))+A003095(n)`
-/

namespace A242810.P17105413481290146111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (A011557 n).toNat + A003095 n

end

end A242810.P17105413481290146111

/-!
# A242817: a(n) = B(n,n), where B(n,x) = Sum_{k=0..n} Stirling2(n,k)*x^k are the Bell polynomials (also known as exponential polynomials or Touchard polynomials).

The programs for A242817, there is no canonical definition to state claims against.
-/

/-! ## A242817.P17260544962303674314

`A000007(n)+n*A052888(n)`
-/

namespace A242817.P17260544962303674314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A052888 n

end

end A242817.P17260544962303674314

/-! ## A242817.P17504367286837026152

`∏{e}[A006530(n+1), n*A052888(n)/#]`
-/

namespace A242817.P17504367286837026152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((n : ℤ) * A052888 n : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A242817.P17504367286837026152

/-! ## A242817.P13529610964302490656

`A028310(n)*A052888(A028310(n))`
-/

namespace A242817.P13529610964302490656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A052888 (A028310 n).toNat

end

end A242817.P13529610964302490656

/-! ## A242817.P389850871779000865

`(n*A052888(n))^A097805(A000124(n))`
-/

namespace A242817.P389850871779000865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A052888 n : ℚ) ^ (A097805 (A000124 n).toNat : ℤ)

end

end A242817.P389850871779000865

/-! ## A242817.P2208479684700153912

`n*A052888(n)*a(A010673(A053644(n)))` with `a(0)=1, a(1)=1`
-/

namespace A242817.P2208479684700153912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A052888 n * a (A010673 (A053644 n).toNat).toNat

end

end A242817.P2208479684700153912

/-! ## A242817.P9287206647285966199

`n*A052888(n)*a(A008683(A014613(n+1)))` with `a(0)=1`
-/

namespace A242817.P9287206647285966199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A052888 n * a (A008683 (A014613 (n + 1)).toNat).toNat

end

end A242817.P9287206647285966199

/-!
# A242818: a(n) = 2^floor(n/2) n! [x^n] exp(x+x^2/4), where [x^n] f(x) denotes the coefficient of x^n in the expansion of f(x).

The programs for A242818, the canonical program `A242818.P12293616583883546733` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242818 has offset 0).

The definition of A242818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242818.P12293616583883546733

`A000898(n)/2^ceil(n/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A242818

/-- `A000898(n)/2^ceil(n/2)` -/
def P12293616583883546733.Spec : Prop :=
  ∀ n, P12293616583883546733.a n = (A242818 n : ℚ)

end A242818

/-! ## A242818.P6388067856596561763

`A135401(2*n)/A060546(n)`
-/

namespace A242818.P6388067856596561763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135401 (2 * n) : ℚ) / (A060546 n : ℚ)

end

end A242818.P6388067856596561763

namespace A242818

/-- `A135401(2*n)/A060546(n)` -/
def P6388067856596561763.Spec : Prop :=
  ∀ n, P6388067856596561763.a n = (A242818 n : ℚ)

end A242818

/-! ## A242818.P13483556207289021648

`A135401(2*n)/Δ[A027383(n)]`
-/

namespace A242818.P13483556207289021648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135401 (2 * n) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A242818.P13483556207289021648

namespace A242818

/-- `A135401(2*n)/Δ[A027383(n)]` -/
def P13483556207289021648.Spec : Prop :=
  ∀ n, P13483556207289021648.a n = (A242818 n : ℚ)

end A242818

/-! ## A242818.P4393089247692335199

`record[A135401(A028242(n))]/A060546(n)`
-/

namespace A242818.P4393089247692335199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135401 (A028242 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A060546 n : ℚ)

end

end A242818.P4393089247692335199

namespace A242818

/-- `record[A135401(A028242(n))]/A060546(n)` -/
def P4393089247692335199.Spec : Prop :=
  ∀ n, P4393089247692335199.a n = (A242818 n : ℚ)

end A242818

/-! ## A242818.P2582745524305041336

`lcm(A000902(n), A060546(n))/A060546(n)`
-/

namespace A242818.P2582745524305041336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000902 n) (A060546 n) : ℚ) / (A060546 n : ℚ)

end

end A242818.P2582745524305041336

namespace A242818

/-- `lcm(A000902(n), A060546(n))/A060546(n)` -/
def P2582745524305041336.Spec : Prop :=
  ∀ n, P2582745524305041336.a n = (A242818 n : ℚ)

end A242818

/-! ## A242818.P8249233074378611743

`A000902(n)/A060546(n)*A020639(A009849(n))`
-/

namespace A242818.P8249233074378611743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000902 n : ℚ) / (A060546 n : ℚ) * (A020639 (A009849 n).toNat : ℚ)

end

end A242818.P8249233074378611743

namespace A242818

/-- `A000902(n)/A060546(n)*A020639(A009849(n))` -/
def P8249233074378611743.Spec : Prop :=
  ∀ n, P8249233074378611743.a n = (A242818 n : ℚ)

end A242818

/-! ## A242818.P9451237833339083772

`A000902(n)/A060546(n)*A002260(A133263(n))`
-/

namespace A242818.P9451237833339083772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000902 n : ℚ) / (A060546 n : ℚ) * (A002260 (A133263 n).toNat : ℚ)

end

end A242818.P9451237833339083772

namespace A242818

/-- `A000902(n)/A060546(n)*A002260(A133263(n))` -/
def P9451237833339083772.Spec : Prop :=
  ∀ n, P9451237833339083772.a n = (A242818 n : ℚ)

end A242818

/-!
# A242821: Number of compositions of n with equal number of even and odd parts, both counted without multiplicity.

The programs for A242821, there is no canonical definition to state claims against.
-/

/-! ## A242821.P18026267954834360254

`xor(A002487(A148781(n)), A295087(n+1))`
-/

namespace A242821.P18026267954834360254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002487 (A148781 n).toNat) (A295087 (n + 1))

end

end A242821.P18026267954834360254

/-!
# A242823: Perimeter (rounded down) of Pi-shaped box fractal after n iterations.

The programs for A242823, there is no canonical definition to state claims against.
-/

/-! ## A242823.P1560483931854346146

`A008651(7*A080144(n))`
-/

namespace A242823.P1560483931854346146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (7 * A080144 n).toNat

end

end A242823.P1560483931854346146

/-! ## A242823.P8566594654782090774

`A323648(2^n)`
-/

namespace A242823.P8566594654782090774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323648 (2 ^ n)

end

end A242823.P8566594654782090774

/-!
# A242825: Minimum positive value of n^3 - x^3 - y^3 for positive integers x,y.

The programs for A242825, there is no canonical definition to state claims against.
-/

/-! ## A242825.P4240794518630652929

`A055400(A003215(n+1)%A003211(2*(n+1)))`
-/

namespace A242825.P4240794518630652929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (Int.tmod (A003215 (n + 1)) (A003211 (2 * (n + 1)))).toNat

end

end A242825.P4240794518630652929

/-!
# A242830: For p = prime(n), a(n) = number of bases 1 < b < p such that b^(p-1) == 1 (mod p^2).

The programs for A242830, there is no canonical definition to state claims against.
-/

/-! ## A242830.P2812341984183254847

`A143811(n+1)-1`
-/

namespace A242830.P2812341984183254847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143811 (n + 1) - 1

end

end A242830.P2812341984183254847

/-! ## A242830.P5095216185051219171

`A084034(A143811(n+1))`
-/

namespace A242830.P5095216185051219171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (A143811 (n + 1)).toNat

end

end A242830.P5095216185051219171

/-! ## A242830.P11120811799288933314

`A127229(n+5)%A143811(n+1)`
-/

namespace A242830.P11120811799288933314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A143811 (n + 1))

end

end A242830.P11120811799288933314

/-! ## A242830.P11446724683940185148

`abs(A119557(2*(A143811(n+1)²+1)))`
-/

namespace A242830.P11446724683940185148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119557 (2 * (A143811 (n + 1) ^ 2 + 1)).toNat|

end

end A242830.P11446724683940185148

/-! ## A242830.P16256706316706589112

`xor(A134824(n)*A143811(n+1), A134824(n))`
-/

namespace A242830.P16256706316706589112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A134824 n * A143811 (n + 1)) (A134824 n)

end

end A242830.P16256706316706589112

/-! ## A242830.P7245723699300172738

`xor(-A143811(n+1), A134824(n+2))`
-/

namespace A242830.P7245723699300172738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A143811 (n + 1)) (A134824 (n + 2))

end

end A242830.P7245723699300172738

/-! ## A242830.P5316971080541167834

`abs(A143811(n+1)+A008683(A002476(n+1)))`
-/

namespace A242830.P5316971080541167834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143811 (n + 1) + A008683 (A002476 (n + 1)).toNat|

end

end A242830.P5316971080541167834

/-! ## A242830.P17400555202407357189

`A083800(n+1)%A143811(n+1)`
-/

namespace A242830.P17400555202407357189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A143811 (n + 1))

end

end A242830.P17400555202407357189

/-! ## A242830.P4984974025009467932

`A070198(n)%A143811(n+1)`
-/

namespace A242830.P4984974025009467932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A143811 (n + 1))

end

end A242830.P4984974025009467932

/-! ## A242830.P6944978203404089530

`A079782(n+1)%A143811(n+1)`
-/

namespace A242830.P6944978203404089530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A143811 (n + 1))

end

end A242830.P6944978203404089530

/-! ## A242830.P6382448759243859667

`A083685(n+1)%A143811(n+1)`
-/

namespace A242830.P6382448759243859667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A143811 (n + 1))

end

end A242830.P6382448759243859667

/-! ## A242830.P11166502306505006403

`A121934(n+1)%A143811(n+1)`
-/

namespace A242830.P11166502306505006403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A143811 (n + 1))

end

end A242830.P11166502306505006403

/-! ## A242830.P13100497138673384990

`A030494(n+1)%A143811(n+1)`
-/

namespace A242830.P13100497138673384990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A143811 (n + 1))

end

end A242830.P13100497138673384990

/-! ## A242830.P6187516921073512485

`A072828(n+1)%A143811(n+1)`
-/

namespace A242830.P6187516921073512485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A143811 (n + 1))

end

end A242830.P6187516921073512485

/-!
# A242831: Triangular numbers T such that sum of the factorials of digits of T is prime.

The programs for A242831, there is no canonical definition to state claims against.
-/

/-! ## A242831.P17657752401902557195

`∩[A358998(n+1), A000217(n)]`
-/

namespace A242831.P17657752401902557195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242831.P17657752401902557195

/-! ## A242831.P14938507248995627049

`∩[A358998(n+1), A122493(n)]`
-/

namespace A242831.P14938507248995627049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122493 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242831.P14938507248995627049

/-! ## A242831.P7138890196734244745

`∩[A358998(n+1), A253145(n)]`
-/

namespace A242831.P7138890196734244745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242831.P7138890196734244745

/-! ## A242831.P11772365290007957626

`∩[A186783(n+1), A358998(n+1)]`
-/

namespace A242831.P11772365290007957626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242831.P11772365290007957626

/-! ## A242831.P8884914340170357969

`∩[A358998(n+1), A000124(n)-1]`
-/

namespace A242831.P8884914340170357969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242831.P8884914340170357969

/-!
# A242832: Semiprimes of the form 2^k - 1 or 2^k - 2.

The programs for A242832, there is no canonical definition to state claims against.
-/

/-! ## A242832.P1894104802070453061

`filter[A075427(n), A064911(#)]`
-/

namespace A242832.P1894104802070453061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A242832.P1894104802070453061

/-! ## A242832.P6893193837762283286

`filter[A075427(n), A280710(#)]`
-/

namespace A242832.P6893193837762283286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A242832.P6893193837762283286

/-! ## A242832.P7499754865690834887

`filter[A066880(n+1), A064911(#)]`
-/

namespace A242832.P7499754865690834887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A242832.P7499754865690834887

/-! ## A242832.P7026256468191016723

`filter[A066880(n+1), A280710(#)]`
-/

namespace A242832.P7026256468191016723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A242832.P7026256468191016723

/-!
# A242836: Number of compositions of n with difference -5 between the number of odd parts and the number of even parts, both counted without multiplicity.

The programs for A242836, there is no canonical definition to state claims against.
-/

/-! ## A242836.P5677599616085052442

`30*A330992(A331033(n+1))`
-/

namespace A242836.P5677599616085052442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A330992 (A331033 (n + 1)).toNat

end

end A242836.P5677599616085052442

/-!
# A242837: Number of compositions of n with difference -4 between the number of odd parts and the number of even parts, both counted without multiplicity.

The programs for A242837, there is no canonical definition to state claims against.
-/

/-! ## A242837.P1930478643327809773

`A050782(A288584(n))*A053635(n+4)`
-/

namespace A242837.P1930478643327809773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A288584 n).toNat * A053635 (n + 4)

end

end A242837.P1930478643327809773

/-!
# A242843: Number of compositions of n with difference 3 between the number of odd parts and the number of even parts, both counted without multiplicity.

The programs for A242843, there is no canonical definition to state claims against.
-/

/-! ## A242843.P11409872584691470246

`A307699(A293358(n)+3)`
-/

namespace A242843.P11409872584691470246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307699 (A293358 n + 3).toNat

end

end A242843.P11409872584691470246

/-! ## A242843.P14181511368380482704

`A325395(A301762(n+4))+1`
-/

namespace A242843.P14181511368380482704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325395 (A301762 (n + 4)).toNat + 1

end

end A242843.P14181511368380482704

/-!
# A242844: Number of compositions of n with difference 4 between the number of odd parts and the number of even parts, both counted without multiplicity.

The programs for A242844, there is no canonical definition to state claims against.
-/

/-! ## A242844.P7240090852408285219

`A294278(n+1)*A358522(A014574(n+1))`
-/

namespace A242844.P7240090852408285219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294278 (n + 1) * A358522 (A014574 (n + 1)).toNat

end

end A242844.P7240090852408285219

/-!
# A242848: Number of unimodular roots of the equation z^n + z^k - 1 for all 1 <= k <= n-1.

The programs for A242848, there is no canonical definition to state claims against.
-/

/-! ## A242848.P4873766712003710044

`and(A000720(n+1), A253770(A091203(n)))`
-/

namespace A242848.P4873766712003710044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000720 (n + 1)) (A253770 (A091203 n).toNat)

end

end A242848.P4873766712003710044

/-! ## A242848.P11303325730984307686

`and(Δ[A118015(n)], A290820(n+1))`
-/

namespace A242848.P11303325730984307686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A290820 (n + 1))

end

end A242848.P11303325730984307686

/-! ## A242848.P816653556563383826

`and(A290820(n+1), A291267(n+2))`
-/

namespace A242848.P816653556563383826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290820 (n + 1)) (A291267 (n + 2))

end

end A242848.P816653556563383826

/-! ## A242848.P14227618578907450442

`and(A290820(n+1), A291308(n+2))`
-/

namespace A242848.P14227618578907450442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290820 (n + 1)) (A291308 (n + 2))

end

end A242848.P14227618578907450442

/-! ## A242848.P18430692071760360169

`and(A000720(n+1), A226529(A056045(n+1)))`
-/

namespace A242848.P18430692071760360169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000720 (n + 1)) (A226529 (A056045 (n + 1)).toNat)

end

end A242848.P18430692071760360169

/-!
# A242849: Triangle read by rows: T(n,k) = A060828(n)/(A060828(k) * A060828(n-k)).

The programs for A242849, the canonical program `A242849.P8755850415644154534` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242849 has offset 0).

The definition of A242849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242849.P12644638930112617890

`3^A243759(n)`
-/

namespace A242849.P12644638930112617890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A243759 n : ℤ)

end

end A242849.P12644638930112617890

namespace A242849

/-- `3^A243759(n)` -/
def P12644638930112617890.Spec : Prop :=
  ∀ n, P12644638930112617890.a n = (A242849 n : ℚ)

end A242849

/-! ## A242849.P8649016895500611170

`3^val(A007318(n), 3)`
-/

namespace A242849.P8649016895500611170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (A007318 n).toNat 3

end

end A242849.P8649016895500611170

namespace A242849

/-- `3^val(A007318(n), 3)` -/
def P8649016895500611170.Spec : Prop :=
  ∀ n, (P8649016895500611170.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P13181354933384036044

`3^val(A028326(n), 3)`
-/

namespace A242849.P13181354933384036044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (A028326 n).toNat 3

end

end A242849.P13181354933384036044

namespace A242849

/-- `3^val(A028326(n), 3)` -/
def P13181354933384036044.Spec : Prop :=
  ∀ n, (P13181354933384036044.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P8755850415644154534

`gcd(A028326(n), A098355(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A242849

/-- `gcd(A028326(n), A098355(n))` -/
def P8755850415644154534.Spec : Prop :=
  ∀ n, (P8755850415644154534.a n : ℤ) = A242849 n

theorem P8755850415644154534.correct : P8755850415644154534.Spec := by
  intro n
  simp only [A242849]

end A242849

/-! ## A242849.P3435336058890533591

`gcd(A132046(n), A132171(n))`
-/

namespace A242849.P3435336058890533591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132046 n) (A132171 n)

end

end A242849.P3435336058890533591

namespace A242849

/-- `gcd(A132046(n), A132171(n))` -/
def P3435336058890533591.Spec : Prop :=
  ∀ n, (P3435336058890533591.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P11487793598898560938

`gcd(A064235(n+1), A065109(n))`
-/

namespace A242849.P11487793598898560938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064235 (n + 1)) (A065109 n)

end

end A242849.P11487793598898560938

namespace A242849

/-- `gcd(A064235(n+1), A065109(n))` -/
def P11487793598898560938.Spec : Prop :=
  ∀ n, (P11487793598898560938.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P1153280504114980893

`gcd(A013610(n), A174719(n))`
-/

namespace A242849.P1153280504114980893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013610 n) (A174719 n)

end

end A242849.P1153280504114980893

namespace A242849

/-- `gcd(A013610(n), A174719(n))` -/
def P1153280504114980893.Spec : Prop :=
  ∀ n, (P1153280504114980893.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P14725858976835099884

`gcd(A098355(n)², A038208(n))`
-/

namespace A242849.P14725858976835099884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098355 n ^ 2) (A038208 n)

end

end A242849.P14725858976835099884

namespace A242849

/-- `gcd(A098355(n)², A038208(n))` -/
def P14725858976835099884.Spec : Prop :=
  ∀ n, (P14725858976835099884.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P881329006997714054

`gcd(27, A073107(n))`
-/

namespace A242849.P881329006997714054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 27 (A073107 n)

end

end A242849.P881329006997714054

namespace A242849

/-- `gcd(27, A073107(n))` -/
def P881329006997714054.Spec : Prop :=
  ∀ n, (P881329006997714054.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P2028350722516759539

`gcd(A132749(n), A133579(n))`
-/

namespace A242849.P2028350722516759539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132749 n) (A133579 n)

end

end A242849.P2028350722516759539

namespace A242849

/-- `gcd(A132749(n), A133579(n))` -/
def P2028350722516759539.Spec : Prop :=
  ∀ n, (P2028350722516759539.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P3873880598287155759

`gcd(A007318(n), A176763(n))`
-/

namespace A242849.P3873880598287155759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 n) (A176763 n)

end

end A242849.P3873880598287155759

namespace A242849

/-- `gcd(A007318(n), A176763(n))` -/
def P3873880598287155759.Spec : Prop :=
  ∀ n, (P3873880598287155759.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P1525531234416248256

`gcd(A038208(n), A111575(n))`
-/

namespace A242849.P1525531234416248256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038208 n) (A111575 n)

end

end A242849.P1525531234416248256

namespace A242849

/-- `gcd(A038208(n), A111575(n))` -/
def P1525531234416248256.Spec : Prop :=
  ∀ n, (P1525531234416248256.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P8844885905734819882

`gcd(A038268(n), A127975(n))`
-/

namespace A242849.P8844885905734819882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038268 n) (A127975 n)

end

end A242849.P8844885905734819882

namespace A242849

/-- `gcd(A038268(n), A127975(n))` -/
def P8844885905734819882.Spec : Prop :=
  ∀ n, (P8844885905734819882.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P3078010747862060433

`gcd(A000792(n), A015109(n))`
-/

namespace A242849.P3078010747862060433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000792 n) (A015109 n)

end

end A242849.P3078010747862060433

namespace A242849

/-- `gcd(A000792(n), A015109(n))` -/
def P3078010747862060433.Spec : Prop :=
  ∀ n, (P3078010747862060433.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P12374786343521636956

`gcd(A038241(n), A118180(n))`
-/

namespace A242849.P12374786343521636956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038241 n) (A118180 n)

end

end A242849.P12374786343521636956

namespace A242849

/-- `gcd(A038241(n), A118180(n))` -/
def P12374786343521636956.Spec : Prop :=
  ∀ n, (P12374786343521636956.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P9191724226195422414

`gcd(A013611(n), A060828(n))`
-/

namespace A242849.P9191724226195422414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013611 n) (A060828 n)

end

end A242849.P9191724226195422414

namespace A242849

/-- `gcd(A013611(n), A060828(n))` -/
def P9191724226195422414.Spec : Prop :=
  ∀ n, (P9191724226195422414.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P12984609558093793298

`gcd(A013623(n), A108411(n))`
-/

namespace A242849.P12984609558093793298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013623 n) (A108411 n)

end

end A242849.P12984609558093793298

namespace A242849

/-- `gcd(A013623(n), A108411(n))` -/
def P12984609558093793298.Spec : Prop :=
  ∀ n, (P12984609558093793298.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P3331114938121830743

`gcd(A257610(n), A287479(n))`
-/

namespace A242849.P3331114938121830743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257610 n) (A287479 n)

end

end A242849.P3331114938121830743

namespace A242849

/-- `gcd(A257610(n), A287479(n))` -/
def P3331114938121830743.Spec : Prop :=
  ∀ n, (P3331114938121830743.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P6285189303720396926

`gcd(A111575(n)², A038309(n))`
-/

namespace A242849.P6285189303720396926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111575 n ^ 2) (A038309 n)

end

end A242849.P6285189303720396926

namespace A242849

/-- `gcd(A111575(n)², A038309(n))` -/
def P6285189303720396926.Spec : Prop :=
  ∀ n, (P6285189303720396926.a n : ℤ) = A242849 n

end A242849

/-! ## A242849.P14732237494413532289

`gcd(A013609(n), A056449(n))`
-/

namespace A242849.P14732237494413532289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013609 n) (A056449 n)

end

end A242849.P14732237494413532289

namespace A242849

/-- `gcd(A013609(n), A056449(n))` -/
def P14732237494413532289.Spec : Prop :=
  ∀ n, (P14732237494413532289.a n : ℤ) = A242849 n

end A242849

/-!
# A242850: a(n) = 32*n^5 - 32*n^3 + 6*n.

The programs for A242850, the canonical program `A242850.P13574474704742039646` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242850 has offset 0).

The definition of A242850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*n^5-32*n^3+6*n` (program `A242850.P13574474704742039646`, by `A242850.P13574474704742039646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242850.P13574474704742039646

`32*n^5-32*n^3+6*n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242850

/-- `32*n^5-32*n^3+6*n` -/
def P13574474704742039646.Spec : Prop :=
  ∀ n, P13574474704742039646.a n = A242850 n

theorem P13574474704742039646.correct : P13574474704742039646.Spec := by
  intro n
  simp only [A242850]

end A242850

/-! ## A242850.P61479462421710945

`2*n*A033596(2*n)`
-/

namespace A242850.P61479462421710945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A033596 (2 * n)

end

end A242850.P61479462421710945

namespace A242850

/-- `2*n*A033596(2*n)` -/
def P61479462421710945.Spec : Prop :=
  ∀ n, P61479462421710945.a n = A242850 n

theorem P61479462421710945.correct : P61479462421710945.Spec := by
  intro n
  simp only [A242850, Nat.add_sub_cancel, A242850.P61479462421710945.a, A242850.P13574474704742039646.a, A033596, A033596.P15895326898760574531.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242850

/-! ## A242850.P10728555771731545192

`A121670(2*n)*A132411(2*n)`
-/

namespace A242850.P10728555771731545192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121670 (2 * n) * A132411 (2 * n)

end

end A242850.P10728555771731545192

namespace A242850

/-- `A121670(2*n)*A132411(2*n)` -/
def P10728555771731545192.Spec : Prop :=
  ∀ n, P10728555771731545192.a n = A242850 n

end A242850

/-! ## A242850.P12262174001335811862

`record[A142705(n+1)]*A121670(2*n)`
-/

namespace A242850.P12262174001335811862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A121670 (2 * n)

end

end A242850.P12262174001335811862

namespace A242850

/-- `record[A142705(n+1)]*A121670(2*n)` -/
def P12262174001335811862.Spec : Prop :=
  ∀ n, P12262174001335811862.a n = A242850 n

end A242850

/-! ## A242850.P13670151505566737442

`A067998(2*n+1)*A121670(2*n)`
-/

namespace A242850.P13670151505566737442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (2 * n + 1) * A121670 (2 * n)

end

end A242850.P13670151505566737442

namespace A242850

/-- `A067998(2*n+1)*A121670(2*n)` -/
def P13670151505566737442.Spec : Prop :=
  ∀ n, P13670151505566737442.a n = A242850 n

theorem P13670151505566737442.correct : P13670151505566737442.Spec := by
  intro n
  simp only [A242850, Nat.add_sub_cancel, A242850.P13670151505566737442.a, A242850.P13574474704742039646.a, A067998, A067998.P12062298001294777272.a, A121670, A121670.P867872710961214995.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242850

/-! ## A242850.P17570447365388468583

`2*n*A067998(A106230(2*n+1))`
-/

namespace A242850.P17570447365388468583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A067998 (A106230 (2 * n + 1)).toNat

end

end A242850.P17570447365388468583

namespace A242850

/-- `2*n*A067998(A106230(2*n+1))` -/
def P17570447365388468583.Spec : Prop :=
  ∀ n, P17570447365388468583.a n = A242850 n

end A242850

/-! ## A242850.P2252804825341794380

`2*n*A334559(A334559(2*n+1))`
-/

namespace A242850.P2252804825341794380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A334559 (A334559 (2 * n + 1)).toNat

end

end A242850.P2252804825341794380

namespace A242850

/-- `2*n*A334559(A334559(2*n+1))` -/
def P2252804825341794380.Spec : Prop :=
  ∀ n, P2252804825341794380.a n = A242850 n

end A242850

/-!
# A242851: a(n) = 64*n^6 - 80*n^4 + 24*n^2 - 1.

The programs for A242851, the canonical program `A242851.P16435143639792267418` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242851 has offset 0).

The definition of A242851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*n^6-80*n^4+24*n²-1` (program `A242851.P16435143639792267418`, by `A242851.P16435143639792267418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242851.P16435143639792267418

`64*n^6-80*n^4+24*n²-1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242851

/-- `64*n^6-80*n^4+24*n²-1` -/
def P16435143639792267418.Spec : Prop :=
  ∀ n, P16435143639792267418.a n = A242851 n

theorem P16435143639792267418.correct : P16435143639792267418.Spec := by
  intro n
  simp only [A242851]

end A242851

/-! ## A242851.P5391233967195239290

`(A242850(n)²-1)/A144139(n)`
-/

namespace A242851.P5391233967195239290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242850 n ^ 2 - 1 : ℚ) / (A144139 n : ℚ)

end

end A242851.P5391233967195239290

namespace A242851

/-- `(A242850(n)²-1)/A144139(n)` -/
def P5391233967195239290.Spec : Prop :=
  ∀ n, P5391233967195239290.a n = (A242851 n : ℚ)

end A242851

/-! ## A242851.P17578675400405268944

`(A242852(n)²-1)/A242853(n)`
-/

namespace A242851.P17578675400405268944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242852 n ^ 2 - 1 : ℚ) / (A242853 n : ℚ)

end

end A242851.P17578675400405268944

namespace A242851

/-- `(A242852(n)²-1)/A242853(n)` -/
def P17578675400405268944.Spec : Prop :=
  ∀ n, P17578675400405268944.a n = (A242851 n : ℚ)

end A242851

/-! ## A242851.P4824268352126783175

`(A123972(2*n+1)-A002378(2*n))*A123972(2*n)`
-/

namespace A242851.P4824268352126783175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123972 (2 * n + 1) - A002378 (2 * n)) * A123972 (2 * n)

end

end A242851.P4824268352126783175

namespace A242851

/-- `(A123972(2*n+1)-A002378(2*n))*A123972(2*n)` -/
def P4824268352126783175.Spec : Prop :=
  ∀ n, P4824268352126783175.a n = A242851 n

theorem P4824268352126783175.correct : P4824268352126783175.Spec := by
  intro n
  simp only [A242851, Nat.add_sub_cancel, A242851.P4824268352126783175.a, A242851.P16435143639792267418.a, A002378, A002378.P6342434596694243671.a, A123972, A123972.P17001996671478345793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242851

/-! ## A242851.P5425072257369995389

`A323182(eq[6, A002262(n)])`
-/

namespace A242851.P5425072257369995389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242851.P5425072257369995389

namespace A242851

/-- `A323182(eq[6, A002262(n)])` -/
def P5425072257369995389.Spec : Prop :=
  ∀ n, P5425072257369995389.a n = A242851 n

end A242851

/-! ## A242851.P16642763423445852863

`A323182(A167614(n+5)+3)`
-/

namespace A242851.P16642763423445852863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A167614 (n + 5) + 3).toNat

end

end A242851.P16642763423445852863

namespace A242851

/-- `A323182(A167614(n+5)+3)` -/
def P16642763423445852863.Spec : Prop :=
  ∀ n, P16642763423445852863.a n = A242851 n

end A242851

/-! ## A242851.P7254434222759484800

`A323182(A000217(n+6)+6)`
-/

namespace A242851.P7254434222759484800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A000217 (n + 6) + 6).toNat

end

end A242851.P7254434222759484800

namespace A242851

/-- `A323182(A000217(n+6)+6)` -/
def P7254434222759484800.Spec : Prop :=
  ∀ n, P7254434222759484800.a n = A242851 n

end A242851

/-! ## A242851.P5267084490137192196

`A228161(eq[7, A004736(n+1)])`
-/

namespace A242851.P5267084490137192196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242851.P5267084490137192196

namespace A242851

/-- `A228161(eq[7, A004736(n+1)])` -/
def P5267084490137192196.Spec : Prop :=
  ∀ n, P5267084490137192196.a n = A242851 n

end A242851

/-! ## A242851.P8768138041012409467

`A228161(2*n+A052905(n+2)+11)`
-/

namespace A242851.P8768138041012409467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 ((2 * n : ℤ) + (A052905 (n + 2) + 11)).toNat

end

end A242851.P8768138041012409467

namespace A242851

/-- `A228161(2*n+A052905(n+2)+11)` -/
def P8768138041012409467.Spec : Prop :=
  ∀ n, P8768138041012409467.a n = A242851 n

end A242851

/-! ## A242851.P12570866730204519603

`A228161(A016993(n+3)+A000217(n)-1)`
-/

namespace A242851.P12570866730204519603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A016993 (n + 3) + A000217 n - 1).toNat

end

end A242851.P12570866730204519603

namespace A242851

/-- `A228161(A016993(n+3)+A000217(n)-1)` -/
def P12570866730204519603.Spec : Prop :=
  ∀ n, P12570866730204519603.a n = A242851 n

end A242851

/-!
# A242852: a(n) = 128*n^7-192*n^5+80*n^3-8*n.

The programs for A242852, the canonical program `A242852.P4016982886622230275` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242852 has offset 0).

The definition of A242852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `128*n^7-192*n^5+80*n^3-8*n` (program `A242852.P4016982886622230275`, by `A242852.P4016982886622230275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242852.P4016982886622230275

`128*n^7-192*n^5+80*n^3-8*n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242852

/-- `128*n^7-192*n^5+80*n^3-8*n` -/
def P4016982886622230275.Spec : Prop :=
  ∀ n, P4016982886622230275.a n = A242852 n

theorem P4016982886622230275.correct : P4016982886622230275.Spec := by
  intro n
  simp only [A242852]

end A242852

/-! ## A242852.P2420781273923810620

`(A144139(n)-A000466(n))*A144138(n)`
-/

namespace A242852.P2420781273923810620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144139 n - A000466 n) * A144138 n

end

end A242852.P2420781273923810620

namespace A242852

/-- `(A144139(n)-A000466(n))*A144138(n)` -/
def P2420781273923810620.Spec : Prop :=
  ∀ n, P2420781273923810620.a n = A242852 n

theorem P2420781273923810620.correct : P2420781273923810620.Spec := by
  intro n
  simp only [A242852, Nat.add_sub_cancel, A242852.P2420781273923810620.a, A242852.P4016982886622230275.a, A000466, A000466.P5626493666969552810.a, A144138, A144138.P7220908367457548337.a, A144139, A144139.P1469581140721025765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242852

/-! ## A242852.P18315590779746951249

`A323182(eq[7, A002262(n)])`
-/

namespace A242852.P18315590779746951249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242852.P18315590779746951249

namespace A242852

/-- `A323182(eq[7, A002262(n)])` -/
def P18315590779746951249.Spec : Prop :=
  ∀ n, P18315590779746951249.a n = A242852 n

end A242852

/-! ## A242852.P18038938352219107641

`A323182(eq[8, A002260(n+1)])`
-/

namespace A242852.P18038938352219107641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242852.P18038938352219107641

namespace A242852

/-- `A323182(eq[8, A002260(n+1)])` -/
def P18038938352219107641.Spec : Prop :=
  ∀ n, P18038938352219107641.a n = A242852 n

end A242852

/-! ## A242852.P8089375256038808093

`A228161(A000217(n+8)-8)`
-/

namespace A242852.P8089375256038808093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 (A000217 (n + 8) - 8).toNat

end

end A242852.P8089375256038808093

namespace A242852

/-- `A228161(A000217(n+8)-8)` -/
def P8089375256038808093.Spec : Prop :=
  ∀ n, P8089375256038808093.a n = A242852 n

end A242852

/-!
# A242853: a(n) = 256*n^8 - 448*n^6 + 240*n^4 - 40*n^2 + 1.

The programs for A242853, the canonical program `A242853.P16621046372786615630` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242853 has offset 0).

The definition of A242853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `256*n^8-448*n^6+240*n^4-40*n²+1` (program `A242853.P16621046372786615630`, by `A242853.P16621046372786615630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242853.P16621046372786615630

`256*n^8-448*n^6+240*n^4-40*n²+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242853

/-- `256*n^8-448*n^6+240*n^4-40*n²+1` -/
def P16621046372786615630.Spec : Prop :=
  ∀ n, P16621046372786615630.a n = A242853 n

theorem P16621046372786615630.correct : P16621046372786615630.Spec := by
  intro n
  simp only [A242853]

end A242853

/-! ## A242853.P603500871850853842

`(A242852(n)²-1)/A242851(n)`
-/

namespace A242853.P603500871850853842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242852 n ^ 2 - 1 : ℚ) / (A242851 n : ℚ)

end

end A242853.P603500871850853842

namespace A242853

/-- `(A242852(n)²-1)/A242851(n)` -/
def P603500871850853842.Spec : Prop :=
  ∀ n, P603500871850853842.a n = (A242853 n : ℚ)

end A242853

/-! ## A242853.P1320249419675224388

`A323182(eq[9, A002260(n+1)])`
-/

namespace A242853.P1320249419675224388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242853.P1320249419675224388

namespace A242853

/-- `A323182(eq[9, A002260(n+1)])` -/
def P1320249419675224388.Spec : Prop :=
  ∀ n, P1320249419675224388.a n = A242853 n

end A242853

/-! ## A242853.P15305585909786905399

`A000466(24*C(n+1, 3)+n)*A000466(n)`
-/

namespace A242853.P15305585909786905399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (24 * Nat.choose (n + 1) 3 + n) * A000466 n

end

end A242853.P15305585909786905399

namespace A242853

/-- `A000466(24*C(n+1, 3)+n)*A000466(n)` -/
def P15305585909786905399.Spec : Prop :=
  ∀ n, P15305585909786905399.a n = A242853 n

theorem P15305585909786905399.correct : P15305585909786905399.Spec := by
  intro n
  simp only [A242853, Nat.add_sub_cancel, A242853.P15305585909786905399.a, A242853.P16621046372786615630.a, A000466, A000466.P5626493666969552810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A242853

/-! ## A242853.P17000360698400642084

`A000466(abs(n*or(3, -(2*n)²)))*A000466(n)`
-/

namespace A242853.P17000360698400642084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 |(n : ℤ) * Int.lor 3 (-((2 * n) ^ 2 : ℤ))|.toNat * A000466 n

end

end A242853.P17000360698400642084

namespace A242853

/-- `A000466(abs(n*or(3, -(2*n)²)))*A000466(n)` -/
def P17000360698400642084.Spec : Prop :=
  ∀ n, P17000360698400642084.a n = A242853 n

end A242853

/-!
# A242854: a(n) = 512*n^9 - 1024*n^7 + 672*n^5 - 160*n^3 + 10*n.

The programs for A242854, the canonical program `A242854.P18083849071613528463` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242854 has offset 0).

The definition of A242854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242854.P18083849071613528463

`A005843(n)*A242853(n)-A242852(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A242854

/-- `A005843(n)*A242853(n)-A242852(n)` -/
def P18083849071613528463.Spec : Prop :=
  ∀ n, P18083849071613528463.a n = A242854 n

theorem P18083849071613528463.correct : P18083849071613528463.Spec := by
  intro n
  simp only [A242854]

end A242854

/-! ## A242854.P7388363881815360710

`(A242850(n)-A144138(n))*A144139(n)`
-/

namespace A242854.P7388363881815360710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A242850 n - A144138 n) * A144139 n

end

end A242854.P7388363881815360710

namespace A242854

/-- `(A242850(n)-A144138(n))*A144139(n)` -/
def P7388363881815360710.Spec : Prop :=
  ∀ n, P7388363881815360710.a n = A242854 n

theorem P7388363881815360710.correct : P7388363881815360710.Spec := by
  intro n
  simp only [A242854, Nat.add_sub_cancel, A242854.P7388363881815360710.a, A242854.P18083849071613528463.a, A005843, A005843.P3167286115683555970.a, A144138, A144138.P7220908367457548337.a, A144139, A144139.P1469581140721025765.a, A242850, A242850.P13574474704742039646.a, A242852, A242852.P4016982886622230275.a, A242853, A242853.P16621046372786615630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242854

/-! ## A242854.P5093658690670536311

`(A243130(n)-A243136(n))/A028310(n)`
-/

namespace A242854.P5093658690670536311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243130 n - A243136 n : ℚ) / (A028310 n : ℚ)

end

end A242854.P5093658690670536311

namespace A242854

/-- `(A243130(n)-A243136(n))/A028310(n)` -/
def P5093658690670536311.Spec : Prop :=
  ∀ n, P5093658690670536311.a n = (A242854 n : ℚ)

end A242854

/-! ## A242854.P8897311775694423892

`(A243130(n)-A243136(n))/A123108(2*n)`
-/

namespace A242854.P8897311775694423892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243130 n - A243136 n : ℚ) / (A123108 (2 * n) : ℚ)

end

end A242854.P8897311775694423892

namespace A242854

/-- `(A243130(n)-A243136(n))/A123108(2*n)` -/
def P8897311775694423892.Spec : Prop :=
  ∀ n, P8897311775694423892.a n = (A242854 n : ℚ)

end A242854

/-! ## A242854.P6968074004726498619

`(A243130(n)-A243136(n))/A007318(A000124(n))`
-/

namespace A242854.P6968074004726498619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243130 n - A243136 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A242854.P6968074004726498619

namespace A242854

/-- `(A243130(n)-A243136(n))/A007318(A000124(n))` -/
def P6968074004726498619.Spec : Prop :=
  ∀ n, P6968074004726498619.a n = (A242854 n : ℚ)

end A242854

/-! ## A242854.P15229455630864205698

`(A243130(n)-A243136(n))/A007754(∑[n]+1)`
-/

namespace A242854.P15229455630864205698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243130 n - A243136 n : ℚ) / (A007754 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A242854.P15229455630864205698

namespace A242854

/-- `(A243130(n)-A243136(n))/A007754(∑[n]+1)` -/
def P15229455630864205698.Spec : Prop :=
  ∀ n, P15229455630864205698.a n = (A242854 n : ℚ)

end A242854

/-!
# A242856: Number of 2-matchings of the n X n grid graph.

The programs for A242856, the canonical program `A242856.P2014832935468642942` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242856 has offset 2).

The definition of A242856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242856.P2014832935468642942

`2*(n+2)^4-4*(n+2)^3-5*(n+2)²+13*(n+2)-4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242856

/-- `2*(n+2)^4-4*(n+2)^3-5*(n+2)²+13*(n+2)-4` -/
def P2014832935468642942.Spec : Prop :=
  ∀ n, P2014832935468642942.a n = A242856 (n + 2)

theorem P2014832935468642942.correct : P2014832935468642942.Spec := by
  intro n
  simp only [A242856, Nat.add_sub_cancel]

end A242856

/-! ## A242856.P4795751034525992336

`2*(∑[A267370(2*n)]+1)`
-/

namespace A242856.P4795751034525992336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A242856.P4795751034525992336

namespace A242856

/-- `2*(∑[A267370(2*n)]+1)` -/
def P4795751034525992336.Spec : Prop :=
  ∀ n, P4795751034525992336.a n = A242856 (n + 2)

end A242856

/-!
# A242857: Position of zeros in A242647.

The programs for A242857, there is no canonical definition to state claims against.
-/

/-! ## A242857.P2126069014033102348

`eq[0, A242647(n+1)]+1`
-/

namespace A242857.P2126069014033102348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242647 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242857.P2126069014033102348

/-! ## A242857.P18116782300731493745

`eq[0, A242647(A000038(n)+n)]`
-/

namespace A242857.P18116782300731493745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242647 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242857.P18116782300731493745

/-! ## A242857.P1251407531856898593

`eq[A000007(n), A242647(A028310(n))]`
-/

namespace A242857.P1251407531856898593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242647 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242857.P1251407531856898593

/-! ## A242857.P17248436688820178577

`eq[A000038(n), A242647(A028310(n))]`
-/

namespace A242857.P17248436688820178577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242647 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242857.P17248436688820178577

/-! ## A242857.P10103026961580162788

`eq[1-A057427(n), A242647(A028310(n))]`
-/

namespace A242857.P10103026961580162788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242647 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242857.P10103026961580162788

/-!
# A242858: E.g.f. ((e^x-1)^2*e^x) / (2*(1-(e^x-1)^3)).

The programs for A242858, there is no canonical definition to state claims against.
-/

/-! ## A242858.P11722522788422161696

`A112689(A353664(n+1))`
-/

namespace A242858.P11722522788422161696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A353664 (n + 1)).toNat

end

end A242858.P11722522788422161696

/-! ## A242858.P9176652127691469554

`A002264(A353664(n+1)/2)`
-/

namespace A242858.P9176652127691469554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway ((A353664 (n + 1) : ℚ) / 2)).toNat

end

end A242858.P9176652127691469554

/-! ## A242858.P5098022718349084050

`A004525(A353664(n+1)/3)`
-/

namespace A242858.P5098022718349084050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A353664 (n + 1) : ℚ) / 3)).toNat

end

end A242858.P5098022718349084050

/-!
# A242863: Absolute discriminants of complex quadratic fields with 3-class group of elementary abelian type (3,3) of rank 2.

The programs for A242863, there is no canonical definition to state claims against.
-/

/-! ## A242863.P7862652659391435462

`∪[A242878(n+1), A247691(n+1)]%A242864(n+5)`
-/

namespace A242863.P7862652659391435462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247691 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A242864 (n + 5))

end

end A242863.P7862652659391435462

/-! ## A242863.P2553384155227773428

`∪[A247691(n+1), A242878(n+1)]%A244574(n+1)`
-/

namespace A242863.P2553384155227773428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242878 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A244574 (n + 1))

end

end A242863.P2553384155227773428

/-! ## A242863.P10641973747027661383

`A242862(lt[2*n, ∑{p}[n, #²+n]]%A061954(2*(n+1)))`
-/

namespace A242863.P10641973747027661383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), (p ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242862 (Int.tmod (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) (A061954 (2 * (n + 1)))).toNat

end

end A242863.P10641973747027661383

/-! ## A242863.P1406517104183043900

`A242862(∪[A059266(n+1), A074619(n)])`
-/

namespace A242863.P1406517104183043900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074619 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242862 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A242863.P1406517104183043900

/-! ## A242863.P2002707844456890587

`A242862(∪[A337504(3*n+4), A059266(n+1)])`
-/

namespace A242863.P2002707844456890587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337504 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059266 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242862 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A242863.P2002707844456890587

/-!
# A242864: Absolute discriminants of complex quadratic fields with 3-class group of type (3,3) and Hilbert 3-class field tower of exact length 2.

The programs for A242864, there is no canonical definition to state claims against.
-/

/-! ## A242864.P12182447921291515335

`∪[A247689(n+1), A247690(n+1)]`
-/

namespace A242864.P12182447921291515335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A242864.P12182447921291515335

/-! ## A242864.P17751527771436639884

`A247691(lt[A247666(3*n+4), A247707(2*(n+2))])`
-/

namespace A242864.P17751527771436639884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247666 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247707 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247691 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A242864.P17751527771436639884

/-!
# A242866: Union of 2*A019434 and the semiprimes in A000215.

The programs for A242866, there is no canonical definition to state claims against.
-/

/-! ## A242866.P2783332217129669181

`(2-A002266(n))*A000215(n)`
-/

namespace A242866.P2783332217129669181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A002266 n) * A000215 n

end

end A242866.P2783332217129669181

/-! ## A242866.P956637544092466005

`A000215(n)*A277471(A002266(n))`
-/

namespace A242866.P956637544092466005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000215 n * A277471 (A002266 n).toNat

end

end A242866.P956637544092466005

/-! ## A242866.P8137391668859857432

`A000051(A000079(n))*A076369(A070548(n+1))`
-/

namespace A242866.P8137391668859857432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A000079 n).toNat * A076369 (A070548 (n + 1)).toNat

end

end A242866.P8137391668859857432

/-! ## A242866.P8452607441522804827

`A000051(A000079(n))*A076369(A088004(n+1))`
-/

namespace A242866.P8452607441522804827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A000079 n).toNat * A076369 (A088004 (n + 1)).toNat

end

end A242866.P8452607441522804827

/-!
# A242868: Numbers n such that sum of the factorial of digits of n is semiprime.

The programs for A242868, the canonical program `A242868.P4510925222102730083` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242868 has offset 1).

The definition of A242868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242868.P4510925222102730083

`eq[2, ∑{e}[∑{digits}[n, #!], #]]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A242868

/-- `eq[2, ∑{e}[∑{digits}[n, #!], #]]` -/
def P4510925222102730083.Spec : Prop :=
  ∀ n, (P4510925222102730083.a n : ℤ) = A242868 (n + 1)

theorem P4510925222102730083.correct : P4510925222102730083.Spec := by
  intro n
  simp only [A242868, Nat.add_sub_cancel]

end A242868

/-! ## A242868.P14522744260447146488

`eq[2, ∑{e}[A061602(n), #]]`
-/

namespace A242868.P14522744260447146488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242868.P14522744260447146488

namespace A242868

/-- `eq[2, ∑{e}[A061602(n), #]]` -/
def P14522744260447146488.Spec : Prop :=
  ∀ n, (P14522744260447146488.a n : ℤ) = A242868 (n + 1)

end A242868

/-! ## A242868.P3176407122438959882

`lt[A298330(∑{e}[A061602(n), #]), 1]`
-/

namespace A242868.P3176407122438959882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298330 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A242868.P3176407122438959882

namespace A242868

/-- `lt[A298330(∑{e}[A061602(n), #]), 1]` -/
def P3176407122438959882.Spec : Prop :=
  ∀ n, (P3176407122438959882.a n : ℤ) = A242868 (n + 1)

end A242868

/-!
# A242869: Largest integer m < n having a binary expansion that is a prefix and a suffix of the binary expansion of n; a(0)=0.

The programs for A242869, there is no canonical definition to state claims against.
-/

/-! ## A242869.P7175437766517380028

`n%A000079(A091064(n))`
-/

namespace A242869.P7175437766517380028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000079 (A091064 n).toNat)

end

end A242869.P7175437766517380028

/-! ## A242869.P13844347554783542780

`A199969(n+1)%(2^A091064(n))`
-/

namespace A242869.P13844347554783542780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199969 (n + 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A091064 n : ℤ)))

end

end A242869.P13844347554783542780

/-! ## A242869.P7527882050651826606

`floor(n²/A147756(n))`
-/

namespace A242869.P7527882050651826606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / (A147756 n : ℚ)⌋

end

end A242869.P7527882050651826606

/-! ## A242869.P3402104996737039423

`A147756(n)%(2^A091064(n))`
-/

namespace A242869.P3402104996737039423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147756 n) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A091064 n : ℤ)))

end

end A242869.P3402104996737039423

/-! ## A242869.P9614852347494971603

`A233583(n+1)%(2^A091064(n))`
-/

namespace A242869.P9614852347494971603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A091064 n : ℤ)))

end

end A242869.P9614852347494971603

/-! ## A242869.P5781102455842989343

`and(A000225(A091064(n)), A179867(n+1))`
-/

namespace A242869.P5781102455842989343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A091064 n).toNat) (A179867 (n + 1))

end

end A242869.P5781102455842989343

/-!
# A242870: Numbers n such that (n^n-2^2)/(n-2) is an integer.

The programs for A242870, there is no canonical definition to state claims against.
-/

/-! ## A242870.P3129052589119666628

`eq[2, A242872(n+1)]+1`
-/

namespace A242870.P3129052589119666628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242872 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242870.P3129052589119666628

/-! ## A242870.P10088388179301311526

`eq[2, A242872(A000038(n)+n)]`
-/

namespace A242870.P10088388179301311526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242872 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242870.P10088388179301311526

/-! ## A242870.P16157284447338386322

`record[A000027(n+1)/(A242872(n+1)-1)]`
-/

namespace A242870.P16157284447338386322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A242872 (n + 1) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242870.P16157284447338386322

/-! ## A242870.P15665857894671146599

`lt[A199926(A242872(n+1)+1)+1, 2]+1`
-/

namespace A242870.P15665857894671146599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199926 (A242872 (n + 1) + 1).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A242870.P15665857894671146599

/-! ## A242870.P15704275239735751131

`record[A000027(n+1)/A033305(A242872(n+1))]`
-/

namespace A242870.P15704275239735751131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A033305 (A242872 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242870.P15704275239735751131

/-!
# A242872: Least number k > 1 such that (k^k-n^n)/(k-n) is an integer.

The programs for A242872, there is no canonical definition to state claims against.
-/

/-! ## A242872.P5777838145018658894

`A103921(A186813(Δ[A051740(n)]))`
-/

namespace A242872.P5777838145018658894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A186813 (f1 (n + 1) - f1 n).toNat).toNat

end

end A242872.P5777838145018658894

/-! ## A242872.P10494332540477621405

`A143589(n+1)+A000002(A231700(n+1))`
-/

namespace A242872.P10494332540477621405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143589 (n + 1) + A000002 (A231700 (n + 1)).toNat

end

end A242872.P10494332540477621405

/-! ## A242872.P11975091779895371386

`A267380(A329369(2*n)+A092524(n+1))`
-/

namespace A242872.P11975091779895371386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267380 (A329369 (2 * n) + A092524 (n + 1)).toNat

end

end A242872.P11975091779895371386

/-! ## A242872.P16777141624284379596

`A153066(A003871(n+1))+A003842(n)`
-/

namespace A242872.P16777141624284379596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153066 (A003871 (n + 1)).toNat + A003842 n

end

end A242872.P16777141624284379596

/-! ## A242872.P9599742540042303614

`A368857(A023236(n+1))`
-/

namespace A242872.P9599742540042303614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368857 (A023236 (n + 1)).toNat

end

end A242872.P9599742540042303614

/-!
# A242874: Expansion of b(q)^2 in powers of q where b() is a cubic AGM theta function.

The programs for A242874, there is no canonical definition to state claims against.
-/

/-! ## A242874.P2531203422468934995

`A096726(n)*A131713(n)`
-/

namespace A242874.P2531203422468934995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096726 n * A131713 n

end

end A242874.P2531203422468934995

/-! ## A242874.P3634691353496006532

`A033999(n)*A263773(n)`
-/

namespace A242874.P3634691353496006532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A263773 n

end

end A242874.P3634691353496006532

/-! ## A242874.P17439519798567266689

`(2-A057079(n)²)*A096726(n)`
-/

namespace A242874.P17439519798567266689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A096726 n

end

end A242874.P17439519798567266689

/-! ## A242874.P7528698995337766578

`(2-A131556(n)²)*A096726(n)`
-/

namespace A242874.P7528698995337766578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A131556 n ^ 2) * A096726 n

end

end A242874.P7528698995337766578

/-! ## A242874.P15731631720679103350

`A033686(n)/A134079(n)*A263773(n)`
-/

namespace A242874.P15731631720679103350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033686 n : ℚ) / (A134079 n : ℚ) * (A263773 n : ℚ)

end

end A242874.P15731631720679103350

/-! ## A242874.P12743967177621893454

`A118271(n)/A214456(n)*A263773(n)`
-/

namespace A242874.P12743967177621893454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118271 n : ℚ) / (A214456 n : ℚ) * (A263773 n : ℚ)

end

end A242874.P12743967177621893454

/-! ## A242874.P5035521085644261348

`A281722(n+1)/A096726(n+1)*A096726(n)`
-/

namespace A242874.P5035521085644261348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281722 (n + 1) : ℚ) / (A096726 (n + 1) : ℚ) * (A096726 n : ℚ)

end

end A242874.P5035521085644261348

/-! ## A242874.P12194954660896286565

`A061347(n+2)*A096726(n)`
-/

namespace A242874.P12194954660896286565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2) * A096726 n

end

end A242874.P12194954660896286565

/-! ## A242874.P7642030922832417974

`A263773(n)/A033999(n+2)`
-/

namespace A242874.P7642030922832417974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263773 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A242874.P7642030922832417974

/-! ## A242874.P7537196364222353012

`A096726(n)*A097109(A038500(n+2))`
-/

namespace A242874.P7537196364222353012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096726 n * A097109 (A038500 (n + 2)).toNat

end

end A242874.P7537196364222353012

/-! ## A242874.P17536786697306645086

`A057079(4*n)*A096726(n)`
-/

namespace A242874.P17536786697306645086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (4 * n) * A096726 n

end

end A242874.P17536786697306645086

/-!
# A242875: Numbers n such that (n^n+2^2)/(n+2) is an integer.

The programs for A242875, there is no canonical definition to state claims against.
-/

/-! ## A242875.P11572628931153252005

`A114977(n+1)+A084301(A006318(n))`
-/

namespace A242875.P11572628931153252005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114977 (n + 1) + A084301 (A006318 n).toNat

end

end A242875.P11572628931153252005

/-! ## A242875.P12894272312978279547

`A186114(A001334(n))+A114977(n+1)`
-/

namespace A242875.P12894272312978279547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (A001334 n).toNat + A114977 (n + 1)

end

end A242875.P12894272312978279547

/-! ## A242875.P4522914458763283811

`A167666(A120926(n+1))+A114977(n+1)`
-/

namespace A242875.P4522914458763283811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167666 (A120926 (n + 1)).toNat + A114977 (n + 1)

end

end A242875.P4522914458763283811

/-! ## A242875.P17930874320146778388

`A114977(n+1)+A051343(A239569(n+2))`
-/

namespace A242875.P17930874320146778388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114977 (n + 1) + A051343 (A239569 (n + 2)).toNat

end

end A242875.P17930874320146778388

/-!
# A242876: Number of n X n nonograms (hanjie) which can be solved uniquely.

The programs for A242876, there is no canonical definition to state claims against.
-/

/-! ## A242876.P16151350530766538991

`A384764(∑[4*n])`
-/

namespace A242876.P16151350530766538991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384764 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242876.P16151350530766538991

/-!
# A242878: Absolute discriminants of complex quadratic fields with 3-class group of type (3,3) and Hilbert 3-class field tower of exact length 3, except for the cases mentioned in the COMMENTS.

The programs for A242878, there is no canonical definition to state claims against.
-/

/-! ## A242878.P10721299808200987994

`A242863(lt[A025520(3*n+5), A152759(n)])`
-/

namespace A242878.P10721299808200987994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025520 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242863 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A242878.P10721299808200987994

/-!
# A242879: Least positive integer k < n such that k*p == 1 (mod prime(k)) for some prime p < prime(k) and (n-k)*q == 1 (mod prime(n-k)) for some prime q < prime(n-k), or 0 if such a number k does not exist.

The programs for A242879, there is no canonical definition to state claims against.
-/

/-! ## A242879.P7580120949994306878

`A218831(or(5, A300367(n+1)))`
-/

namespace A242879.P7580120949994306878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218831 (Int.lor 5 (A300367 (n + 1))).toNat

end

end A242879.P7580120949994306878

/-!
# A242880: Numbers that are both Poulet and Proth.

The programs for A242880, there is no canonical definition to state claims against.
-/

/-! ## A242880.P12211962903141844694

`∩[A001567(n+1), A080075(n+1)]`
-/

namespace A242880.P12211962903141844694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242880.P12211962903141844694

/-! ## A242880.P4414042166560808877

`∩[A001567(n+1), A116882(n+1)+1]`
-/

namespace A242880.P4414042166560808877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242880.P4414042166560808877

/-!
# A242881: Positions of lesser of twin primes in A001359 with index 2.

The programs for A242881, the canonical program `A242881.P3869384848931526596` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242881 has offset 1).

The definition of A242881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242881.P17015296683130237493

`A274121(A105409(n+1)+1)`
-/

namespace A242881.P17015296683130237493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274121 (A105409 (n + 1) + 1).toNat

end

end A242881.P17015296683130237493

namespace A242881

/-- `A274121(A105409(n+1)+1)` -/
def P17015296683130237493.Spec : Prop :=
  ∀ n, P17015296683130237493.a n = A242881 (n + 1)

end A242881

/-! ## A242881.P3869384848931526596

`eq[2, A027833(n+1)]+2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A242881

/-- `eq[2, A027833(n+1)]+2` -/
def P3869384848931526596.Spec : Prop :=
  ∀ n, (P3869384848931526596.a n : ℤ) = A242881 (n + 1)

theorem P3869384848931526596.correct : P3869384848931526596.Spec := by
  intro n
  simp only [A242881, Nat.add_sub_cancel]

end A242881

/-! ## A242881.P16662586550221216913

`eq[0, A048614(n+2)]+3`
-/

namespace A242881.P16662586550221216913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A242881.P16662586550221216913

namespace A242881

/-- `eq[0, A048614(n+2)]+3` -/
def P16662586550221216913.Spec : Prop :=
  ∀ n, (P16662586550221216913.a n : ℤ) = A242881 (n + 1)

end A242881

/-! ## A242881.P3397529256004127160

`eq[2, A242767(n+2)]+1`
-/

namespace A242881.P3397529256004127160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242881.P3397529256004127160

namespace A242881

/-- `eq[2, A242767(n+2)]+1` -/
def P3397529256004127160.Spec : Prop :=
  ∀ n, (P3397529256004127160.a n : ℤ) = A242881 (n + 1)

end A242881

/-! ## A242881.P12621274911074668635

`eq[2, A242767(A254667(n+1))]`
-/

namespace A242881.P12621274911074668635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (A254667 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242881.P12621274911074668635

namespace A242881

/-- `eq[2, A242767(A254667(n+1))]` -/
def P12621274911074668635.Spec : Prop :=
  ∀ n, (P12621274911074668635.a n : ℤ) = A242881 (n + 1)

end A242881

/-! ## A242881.P17600552658870186923

`A020725(eq[2, A242767(n+2)])`
-/

namespace A242881.P17600552658870186923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242881.P17600552658870186923

namespace A242881

/-- `A020725(eq[2, A242767(n+2)])` -/
def P17600552658870186923.Spec : Prop :=
  ∀ n, P17600552658870186923.a n = A242881 (n + 1)

end A242881

/-! ## A242881.P16187458960121895973

`A065475(eq[2, A242767(n+2)])`
-/

namespace A242881.P16187458960121895973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242881.P16187458960121895973

namespace A242881

/-- `A065475(eq[2, A242767(n+2)])` -/
def P16187458960121895973.Spec : Prop :=
  ∀ n, P16187458960121895973.a n = A242881 (n + 1)

end A242881

/-! ## A242881.P12443561837234932847

`A071538(A053778(n+1))+1`
-/

namespace A242881.P12443561837234932847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A053778 (n + 1)).toNat + 1

end

end A242881.P12443561837234932847

namespace A242881

/-- `A071538(A053778(n+1))+1` -/
def P12443561837234932847.Spec : Prop :=
  ∀ n, P12443561837234932847.a n = A242881 (n + 1)

end A242881

/-! ## A242881.P4382401864647060498

`A071538(p?[A088176(n+1)+2])`
-/

namespace A242881.P4382401864647060498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A242881.P4382401864647060498

namespace A242881

/-- `A071538(p?[A088176(n+1)+2])` -/
def P4382401864647060498.Spec : Prop :=
  ∀ n, P4382401864647060498.a n = A242881 (n + 1)

end A242881

/-! ## A242881.P4990142851273000349

`eq[2, A242768(A029707(n+1))]+1`
-/

namespace A242881.P4990142851273000349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242768 (A029707 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242881.P4990142851273000349

namespace A242881

/-- `eq[2, A242768(A029707(n+1))]+1` -/
def P4990142851273000349.Spec : Prop :=
  ∀ n, (P4990142851273000349.a n : ℤ) = A242881 (n + 1)

end A242881

/-!
# A242882: Number of compositions of n into parts with distinct multiplicities.

The programs for A242882, there is no canonical definition to state claims against.
-/

/-! ## A242882.P2483241245539764064

`A151948(A007097(n))`
-/

namespace A242882.P2483241245539764064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151948 (A007097 n).toNat

end

end A242882.P2483241245539764064

/-! ## A242882.P1978318359677764441

`A151948(A095938(n+1)-1)`
-/

namespace A242882.P1978318359677764441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151948 (A095938 (n + 1) - 1).toNat

end

end A242882.P1978318359677764441

/-! ## A242882.P3125966427970789307

`A151948(∑[A131842(abs(1-n))])`
-/

namespace A242882.P3125966427970789307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131842 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151948 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A242882.P3125966427970789307

/-! ## A242882.P11205117841287627180

`A062068(A007097(n)-A057427(n))`
-/

namespace A242882.P11205117841287627180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (A007097 n - A057427 n).toNat

end

end A242882.P11205117841287627180

/-! ## A242882.P2674269342806463092

`A008619(n)*A117728(A038503(n))`
-/

namespace A242882.P2674269342806463092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A117728 (A038503 n).toNat

end

end A242882.P2674269342806463092

/-!
# A242883: Numbers n such that (n^n+3^3)/(n+3) is an integer.

The programs for A242883, there is no canonical definition to state claims against.
-/

/-! ## A242883.P18067748587712287161

`lt[A339060(A068794(2*n+3)), A263845(n)]`
-/

namespace A242883.P18067748587712287161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339060 (A068794 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242883.P18067748587712287161

/-! ## A242883.P4520134911939488530

`lt[A109816(A109588(2*n+1)), A000463(3*n+1)]`
-/

namespace A242883.P4520134911939488530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (A109588 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A242883.P4520134911939488530

/-!
# A242885: Least number k such that (k^k+n^n)/(k+n) is an integer.

The programs for A242885, there is no canonical definition to state claims against.
-/

/-! ## A242885.P10932840740236637859

`A341890(n+1)^and(1, n)`
-/

namespace A242885.P10932840740236637859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341890 (n + 1) ^ Nat.land 1 n

end

end A242885.P10932840740236637859

/-! ## A242885.P10820184445871472392

`gcd(A056594(n), A341890(n+1))`
-/

namespace A242885.P10820184445871472392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056594 n) (A341890 (n + 1))

end

end A242885.P10820184445871472392

/-! ## A242885.P1862568816455308140

`A341890(n+1)^Δ[A008619(n)]`
-/

namespace A242885.P1862568816455308140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341890 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A242885.P1862568816455308140

/-! ## A242885.P6796939367126124811

`A341890(n+1)^A124625(A124625(n))`
-/

namespace A242885.P6796939367126124811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341890 (n + 1) : ℚ) ^ (A124625 (A124625 n).toNat : ℤ)

end

end A242885.P6796939367126124811

/-! ## A242885.P1080841167615335548

`A341890(n+1)^Δ[A004526(n)]`
-/

namespace A242885.P1080841167615335548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341890 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A242885.P1080841167615335548

/-!
# A242887: Number T(n,k) of compositions of n into parts with distinct multiplicities and with exactly k parts; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A242887, there is no canonical definition to state claims against.
-/

/-! ## A242887.P3616999168306675045

`A097805(n)%A076868(A105535(n))`
-/

namespace A242887.P3616999168306675045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097805 n) (A076868 (A105535 n).toNat)

end

end A242887.P3616999168306675045

/-! ## A242887.P7500887348032305623

`A213889(n)%A076868(A105535(n))`
-/

namespace A242887.P7500887348032305623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213889 n) (A076868 (A105535 n).toNat)

end

end A242887.P7500887348032305623

/-! ## A242887.P4720428077728749343

`and(A097805(n), A161206(A029655(n)))`
-/

namespace A242887.P4720428077728749343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097805 n) (A161206 (A029655 n).toNat)

end

end A242887.P4720428077728749343

/-! ## A242887.P12905398459487424060

`and(A097805(n), A353833(A383249(n+4)))`
-/

namespace A242887.P12905398459487424060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097805 n) (A353833 (A383249 (n + 4)).toNat)

end

end A242887.P12905398459487424060

/-! ## A242887.P1421456056884391725

`and(A000040(A185223(2*n+1)), A097805(n))`
-/

namespace A242887.P1421456056884391725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A185223 (2 * n + 1)).toNat) (A097805 n)

end

end A242887.P1421456056884391725

/-!
# A242889: Beginning with adding a central 'Sun' configuration of a centrally symmetric rhomb tiling with 7-fold symmetry, number of tiles that can be added to the free edges of the tiling.

The programs for A242889, there is no canonical definition to state claims against.
-/

/-! ## A242889.P11844343005562008005

`7*A049085(A000568(n))`
-/

namespace A242889.P11844343005562008005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A049085 (A000568 n).toNat

end

end A242889.P11844343005562008005

/-! ## A242889.P5738351500299203500

`7*A116543(A081250(n))`
-/

namespace A242889.P5738351500299203500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A116543 (A081250 n).toNat

end

end A242889.P5738351500299203500

/-! ## A242889.P14009300499895135833

`7*A043556(A118639(n+1)+1)`
-/

namespace A242889.P14009300499895135833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A043556 (A118639 (n + 1) + 1).toNat

end

end A242889.P14009300499895135833

/-! ## A242889.P17655622743545501089

`7*(n+1-A001221(A026639(n+1)))`
-/

namespace A242889.P17655622743545501089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((n + 1 : ℤ) - A001221 (A026639 (n + 1)).toNat)

end

end A242889.P17655622743545501089

/-!
# A242891: Beginning with a centrally symmetric 'Sun' configuration of 8 rhombi with rotational symmetry, number of tiles that can be added to the free edges of the tiling.

The programs for A242891, there is no canonical definition to state claims against.
-/

/-! ## A242891.P2690075477838707217

`8*A147952(A026008(n))`
-/

namespace A242891.P2690075477838707217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A147952 (A026008 n).toNat

end

end A242891.P2690075477838707217

/-! ## A242891.P3370390565055193814

`8*A225644(A261076(n))`
-/

namespace A242891.P3370390565055193814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A225644 (A261076 n).toNat

end

end A242891.P3370390565055193814

/-! ## A242891.P16005316703783274617

`8*A000120(A148314(n))`
-/

namespace A242891.P16005316703783274617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000120 (A148314 n).toNat

end

end A242891.P16005316703783274617

/-! ## A242891.P11997350614925831640

`8*A118668(A330783(n))`
-/

namespace A242891.P11997350614925831640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A118668 (A330783 n).toNat

end

end A242891.P11997350614925831640

/-! ## A242891.P11289077373439858093

`8*A147981(A080023(n+1))`
-/

namespace A242891.P11289077373439858093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A147981 (A080023 (n + 1)).toNat

end

end A242891.P11289077373439858093

/-!
# A242894: Beginning with a central 'Star' configuration of a Penrose 'Kite' and 'Dart' tiling with rotational symmetry as the first step, number of tiles that can be added to the free edges of the current tiling.

The programs for A242894, there is no canonical definition to state claims against.
-/

/-! ## A242894.P11284666915366878931

`5*(A153144(n+1)-n)`
-/

namespace A242894.P11284666915366878931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A153144 (n + 1) - (n : ℤ))

end

end A242894.P11284666915366878931

/-! ## A242894.P1550090614770821521

`5*(comp[A153143(n+1)]-n)`
-/

namespace A242894.P1550090614770821521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A242894.P1550090614770821521

/-! ## A242894.P5427350424976940101

`5*(A241572(n+1)-(n+1))`
-/

namespace A242894.P5427350424976940101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A241572 (n + 1) - (n + 1 : ℤ))

end

end A242894.P5427350424976940101

/-! ## A242894.P16782654096212131297

`5*(n+1-A037880(3*n+4))`
-/

namespace A242894.P16782654096212131297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n + 1 : ℤ) - A037880 (3 * n + 4))

end

end A242894.P16782654096212131297

/-! ## A242894.P14375646804957025682

`5*∑[∑{e}[xor(n-4, A208532(2*n+1)), 2-#]]`
-/

namespace A242894.P14375646804957025682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 4) (A208532 (2 * n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242894.P14375646804957025682

/-!
# A242896: Number T(n,k) of compositions of n into k parts with distinct multiplicities, where parts are counted without multiplicities; triangle T(n,k), n>=0, 0<=k<=max{i:A000292(i)<=n}, read by rows.

The programs for A242896, there is no canonical definition to state claims against.
-/

/-! ## A242896.P11017098487816816703

`A029275(A062392(n))%4`
-/

namespace A242896.P11017098487816816703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029275 (A062392 n).toNat) 4

end

end A242896.P11017098487816816703

/-! ## A242896.P10204333938111814881

`A116683(A043085(n+1)+4)`
-/

namespace A242896.P10204333938111814881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116683 (A043085 (n + 1) + 4).toNat

end

end A242896.P10204333938111814881

/-! ## A242896.P16753847785873359828

`∑{e}[A023443(A155744(2*n)), #]`
-/

namespace A242896.P16753847785873359828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A155744 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A242896.P16753847785873359828

/-! ## A242896.P10970552736813648056

`A182485(n)+A058343(A223168(n))`
-/

namespace A242896.P10970552736813648056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182485 n + A058343 (A223168 n).toNat

end

end A242896.P10970552736813648056

/-! ## A242896.P3655365995702084294

`A320655(A001006(n)*A369902(n+1))`
-/

namespace A242896.P3655365995702084294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A001006 n * A369902 (n + 1)).toNat

end

end A242896.P3655365995702084294

/-!
# A242897: Catalan numbers C(n) such that sum of the factorials of digits of C(n) is semiprime.

The programs for A242897, there is no canonical definition to state claims against.
-/

/-! ## A242897.P18050590380447153029

`A000108(A279021(n+1)+A247503(n+1))`
-/

namespace A242897.P18050590380447153029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A279021 (n + 1) + A247503 (n + 1)).toNat

end

end A242897.P18050590380447153029

/-! ## A242897.P7407124753108795971

`A000108(A135368(n+2)+A135354(n+1))`
-/

namespace A242897.P7407124753108795971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A135368 (n + 2) + A135354 (n + 1)).toNat

end

end A242897.P7407124753108795971

