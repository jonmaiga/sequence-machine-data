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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A109801: Cumulative sum of squares of primes indexed by squares.

The programs for A109801, there is no canonical definition to state claims against.
-/

/-! ## A109801.P17582906210248234609

`∑[A001248((n+1)²)]`
-/

namespace A109801.P17582906210248234609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109801.P17582906210248234609

/-! ## A109801.P68768396508081657

`∑[A011757(n+1)²]`
-/

namespace A109801.P68768396508081657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109801.P68768396508081657

/-! ## A109801.P6509725593800864372

`∑[A323526(n+2)²]`
-/

namespace A109801.P6509725593800864372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323526 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109801.P6509725593800864372

/-! ## A109801.P17614151608448847798

`∑[A000040((n+1)²)²]`
-/

namespace A109801.P17614151608448847798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109801.P17614151608448847798

/-! ## A109801.P920568357235203892

`∑[A068519((n+1)²)²]`
-/

namespace A109801.P920568357235203892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068519 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109801.P920568357235203892

/-!
# A109802: Positive integers n such that 480*n is an element of A141586.

The programs for A109802, there is no canonical definition to state claims against.
-/

/-! ## A109802.P7202529572506212144

`A052414(lt[A212138(n+1), A319420(2*(n+1))])`
-/

namespace A109802.P7202529572506212144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109802.P7202529572506212144

/-! ## A109802.P12361180870143954934

`lt[A333487(A367908(n+1)), A289748(3*(n+1))]`
-/

namespace A109802.P12361180870143954934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333487 (A367908 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289748 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109802.P12361180870143954934

/-!
# A109803: Expansion of (x^2+1)*(x+1)^2 / ((x-1)*(x^2+x+1)*(x^2+2*x-1)).

The programs for A109803, the canonical program `A109803.P15041595379163285792` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109803 has offset 0).

The definition of A109803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+2x^2+2x^3+x^4)/(1-2x-x^2-x^3+2x^4+x^5))` (program `A109803.P15041595379163285792`, by `A109803.P15041595379163285792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109803.P15041595379163285792

`ogf((1+2x+2x^2+2x^3+x^4)/(1-2x-x^2-x^3+2x^4+x^5))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109803

/-- `ogf((1+2x+2x^2+2x^3+x^4)/(1-2x-x^2-x^3+2x^4+x^5))` -/
def P15041595379163285792.Spec : Prop :=
  ∀ n, P15041595379163285792.a n = A109803 n

theorem P15041595379163285792.correct : P15041595379163285792.Spec := by
  intro n
  simp only [A109803]

end A109803

/-! ## A109803.P14522982039150138845

`2*a(n-1)+a(n-2)+a(n-3)-2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=29, a(4)=72`
-/

namespace A109803.P14522982039150138845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 11, 29, 72] fun n a =>
  2 * a (n - 1) + a (n - 2) + a (n - 3) - 2 * a (n - 4) - a (n - 5)

end

end A109803.P14522982039150138845

namespace A109803

/-- `2*a(n-1)+a(n-2)+a(n-3)-2*a(n-4)-a(n-5)` -/
def P14522982039150138845.Spec : Prop :=
  ∀ n, P14522982039150138845.a n = A109803 n

end A109803

/-! ## A109803.P6769804211610268706

`A189703(a(n-1)+1)` with `a(0)=1, a(1)=4, a(2)=11`
-/

namespace A109803.P6769804211610268706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 11] fun n a =>
  A189703 (a (n - 1) + 1).toNat

end

end A109803.P6769804211610268706

namespace A109803

/-- `A189703(a(n-1)+1)` -/
def P6769804211610268706.Spec : Prop :=
  ∀ n, P6769804211610268706.a n = A109803 n

end A109803

/-! ## A109803.P12591025745237472471

`A292640(A048739(n))`
-/

namespace A109803.P12591025745237472471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292640 (A048739 n).toNat

end

end A109803.P12591025745237472471

namespace A109803

/-- `A292640(A048739(n))` -/
def P12591025745237472471.Spec : Prop :=
  ∀ n, P12591025745237472471.a n = A109803 n

end A109803

/-! ## A109803.P6242988061949936946

`A189468(A001333(n+1))-A001333(n+1)`
-/

namespace A109803.P6242988061949936946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189468 (A001333 (n + 1)).toNat - A001333 (n + 1)

end

end A109803.P6242988061949936946

namespace A109803

/-- `A189468(A001333(n+1))-A001333(n+1)` -/
def P6242988061949936946.Spec : Prop :=
  ∀ n, P6242988061949936946.a n = A109803 n

end A109803

/-!
# A109804: Cumulative sum of initial digits of (n base 6).

The programs for A109804, there is no canonical definition to state claims against.
-/

/-! ## A109804.P10154019214354737753

`∑[A030105(n)%6]`
-/

namespace A109804.P10154019214354737753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030105 n) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109804.P10154019214354737753

/-! ## A109804.P6841491563906472704

`∑[A255691(n)%6]`
-/

namespace A109804.P6841491563906472704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255691 n) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109804.P6841491563906472704

/-! ## A109804.P6083097324211448543

`∑[(A055952(n)-n)%6]`
-/

namespace A109804.P6083097324211448543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055952 n - (n : ℤ)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109804.P6083097324211448543

/-! ## A109804.P6256473294114568143

`∑[A010875(A030105(n))]`
-/

namespace A109804.P6256473294114568143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A030105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109804.P6256473294114568143

/-! ## A109804.P5562333628353874149

`eq[0, A297258(n+1)%6]`
-/

namespace A109804.P5562333628353874149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297258 (n + 1)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109804.P5562333628353874149

/-! ## A109804.P10642783593478721721

`∑[dr(A030108(A037472(n)))]`
-/

namespace A109804.P10642783593478721721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030108 (A037472 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109804.P10642783593478721721

/-! ## A109804.P7586226271986559114

`∑[dr(A255691(6*n))]`
-/

namespace A109804.P7586226271986559114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A255691 (6 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109804.P7586226271986559114

/-! ## A109804.P1126417116797027786

`∑[A055952(6*n)%6]`
-/

namespace A109804.P1126417116797027786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055952 (6 * n)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109804.P1126417116797027786

/-! ## A109804.P9503818735608464697

`∑[A000030(A007092(n))]`
-/

namespace A109804.P9503818735608464697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A007092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109804.P9503818735608464697

/-! ## A109804.P12061104580508577703

`∑[A000030(A171593(n))]`
-/

namespace A109804.P12061104580508577703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A171593 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109804.P12061104580508577703

/-!
# A109805: a(n) = prime(n+2)*prime(n+1) - prime(n)*prime(n+1).

The programs for A109805, the canonical program `A109805.P13473792619790468409` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109805 has offset 1).

The definition of A109805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109805.P10993209965186241114

`A293206(n+1)-A123134(n+1)`
-/

namespace A109805.P10993209965186241114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293206 (n + 1) - A123134 (n + 1)

end

end A109805.P10993209965186241114

namespace A109805

/-- `A293206(n+1)-A123134(n+1)` -/
def P10993209965186241114.Spec : Prop :=
  ∀ n, P10993209965186241114.a n = A109805 (n + 1)

end A109805

/-! ## A109805.P13473792619790468409

`A031131(n+1)*A065091(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109805

/-- `A031131(n+1)*A065091(n+1)` -/
def P13473792619790468409.Spec : Prop :=
  ∀ n, P13473792619790468409.a n = A109805 (n + 1)

theorem P13473792619790468409.correct : P13473792619790468409.Spec := by
  intro n
  simp only [A109805, Nat.add_sub_cancel]

end A109805

/-! ## A109805.P13200792488512449932

`A357679(n+2)-A069486(n+1)`
-/

namespace A109805.P13200792488512449932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357679 (n + 2) - A069486 (n + 1)

end

end A109805.P13200792488512449932

namespace A109805

/-- `A357679(n+2)-A069486(n+1)` -/
def P13200792488512449932.Spec : Prop :=
  ∀ n, P13200792488512449932.a n = A109805 (n + 1)

end A109805

/-! ## A109805.P12802726935427153708

`A057467(n+1)*A085949(n+2)`
-/

namespace A109805.P12802726935427153708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057467 (n + 1) * A085949 (n + 2)

end

end A109805.P12802726935427153708

namespace A109805

/-- `A057467(n+1)*A085949(n+2)` -/
def P12802726935427153708.Spec : Prop :=
  ∀ n, P12802726935427153708.a n = A109805 (n + 1)

end A109805

/-! ## A109805.P16319050567330591246

`lcm(A031131(n+1), A085949(n+2))`
-/

namespace A109805.P16319050567330591246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A031131 (n + 1)) (A085949 (n + 2))

end

end A109805.P16319050567330591246

namespace A109805

/-- `lcm(A031131(n+1), A085949(n+2))` -/
def P16319050567330591246.Spec : Prop :=
  ∀ n, (P16319050567330591246.a n : ℤ) = A109805 (n + 1)

end A109805

/-! ## A109805.P6999288345400909839

`Δ[A007504(n+2)-A007504(n)]*A065091(n+1)`
-/

namespace A109805.P6999288345400909839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A065091 (n + 1)

end

end A109805.P6999288345400909839

namespace A109805

/-- `Δ[A007504(n+2)-A007504(n)]*A065091(n+1)` -/
def P6999288345400909839.Spec : Prop :=
  ∀ n, P6999288345400909839.a n = A109805 (n + 1)

end A109805

/-! ## A109805.P82796904932485463

`(A096379(n+1)+A031131(n+1))*A031131(n+1)`
-/

namespace A109805.P82796904932485463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096379 (n + 1) + A031131 (n + 1)) * A031131 (n + 1)

end

end A109805.P82796904932485463

namespace A109805

/-- `(A096379(n+1)+A031131(n+1))*A031131(n+1)` -/
def P82796904932485463.Spec : Prop :=
  ∀ n, P82796904932485463.a n = A109805 (n + 1)

end A109805

/-! ## A109805.P4948523365054034886

`(A001223(n+1)+A001223(n+2))*A065091(n+1)`
-/

namespace A109805.P4948523365054034886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) + A001223 (n + 2)) * A065091 (n + 1)

end

end A109805.P4948523365054034886

namespace A109805

/-- `(A001223(n+1)+A001223(n+2))*A065091(n+1)` -/
def P4948523365054034886.Spec : Prop :=
  ∀ n, P4948523365054034886.a n = A109805 (n + 1)

end A109805

/-! ## A109805.P16814116258630068115

`(A037166(n+1)-A111071(n+1))*A065091(n+1)`
-/

namespace A109805.P16814116258630068115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037166 (n + 1) - A111071 (n + 1)) * A065091 (n + 1)

end

end A109805.P16814116258630068115

namespace A109805

/-- `(A037166(n+1)-A111071(n+1))*A065091(n+1)` -/
def P16814116258630068115.Spec : Prop :=
  ∀ n, P16814116258630068115.a n = A109805 (n + 1)

end A109805

/-! ## A109805.P16257316917783860362

`(A065091(n+1)-A096379(n+1))*A065091(n+1)`
-/

namespace A109805.P16257316917783860362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) - A096379 (n + 1)) * A065091 (n + 1)

end

end A109805.P16257316917783860362

namespace A109805

/-- `(A065091(n+1)-A096379(n+1))*A065091(n+1)` -/
def P16257316917783860362.Spec : Prop :=
  ∀ n, P16257316917783860362.a n = A109805 (n + 1)

end A109805

/-! ## A109805.P11968681778444228427

`A046301(n+1)/A000040(n+1)-A006094(n+1)`
-/

namespace A109805.P11968681778444228427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) - (A006094 (n + 1) : ℚ)

end

end A109805.P11968681778444228427

namespace A109805

/-- `A046301(n+1)/A000040(n+1)-A006094(n+1)` -/
def P11968681778444228427.Spec : Prop :=
  ∀ n, P11968681778444228427.a n = (A109805 (n + 1) : ℚ)

end A109805

/-! ## A109805.P6892363864213465715

`Δ[A006094(n+1)]`
-/

namespace A109805.P6892363864213465715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109805.P6892363864213465715

namespace A109805

/-- `Δ[A006094(n+1)]` -/
def P6892363864213465715.Spec : Prop :=
  ∀ n, P6892363864213465715.a n = A109805 (n + 1)

end A109805

/-! ## A109805.P4255475177032770438

`Δ[sqrt(A166329(n+1))]`
-/

namespace A109805.P4255475177032770438
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166329 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109805.P4255475177032770438

namespace A109805

/-- `Δ[sqrt(A166329(n+1))]` -/
def P4255475177032770438.Spec : Prop :=
  ∀ n, P4255475177032770438.a n = (A109805 (n + 1) : ℝ)

end A109805

/-! ## A109805.P650071015261074534

`Δ[A069486(n+1)/2]`
-/

namespace A109805.P650071015261074534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069486 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109805.P650071015261074534

namespace A109805

/-- `Δ[A069486(n+1)/2]` -/
def P650071015261074534.Spec : Prop :=
  ∀ n, P650071015261074534.a n = (A109805 (n + 1) : ℚ)

end A109805

/-! ## A109805.P12677917447631982696

`A291463(n+2)+A048852(n+1)`
-/

namespace A109805.P12677917447631982696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 2) + A048852 (n + 1)

end

end A109805.P12677917447631982696

namespace A109805

/-- `A291463(n+2)+A048852(n+1)` -/
def P12677917447631982696.Spec : Prop :=
  ∀ n, P12677917447631982696.a n = A109805 (n + 1)

end A109805

/-! ## A109805.P11074378981015381622

`A006094(n+2)-A006094(n+1)`
-/

namespace A109805.P11074378981015381622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2) - A006094 (n + 1)

end

end A109805.P11074378981015381622

namespace A109805

/-- `A006094(n+2)-A006094(n+1)` -/
def P11074378981015381622.Spec : Prop :=
  ∀ n, P11074378981015381622.a n = A109805 (n + 1)

end A109805

/-! ## A109805.P11276794155778439751

`A037166(n+2)-A037167(n+1)`
-/

namespace A109805.P11276794155778439751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 2) - A037167 (n + 1)

end

end A109805.P11276794155778439751

namespace A109805

/-- `A037166(n+2)-A037167(n+1)` -/
def P11276794155778439751.Spec : Prop :=
  ∀ n, P11276794155778439751.a n = A109805 (n + 1)

end A109805

/-! ## A109805.P7784997483276451100

`A123134(n+2)-A345727(n+1)`
-/

namespace A109805.P7784997483276451100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 2) - A345727 (n + 1)

end

end A109805.P7784997483276451100

namespace A109805

/-- `A123134(n+2)-A345727(n+1)` -/
def P7784997483276451100.Spec : Prop :=
  ∀ n, P7784997483276451100.a n = A109805 (n + 1)

end A109805

/-! ## A109805.P1469086159567064036

`A000040(n+2)*A031131(n+1)`
-/

namespace A109805.P1469086159567064036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A031131 (n + 1)

end

end A109805.P1469086159567064036

namespace A109805

/-- `A000040(n+2)*A031131(n+1)` -/
def P1469086159567064036.Spec : Prop :=
  ∀ n, P1469086159567064036.a n = A109805 (n + 1)

end A109805

/-! ## A109805.P11087918295615549569

`A006005(n+2)*A031131(n+1)`
-/

namespace A109805.P11087918295615549569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2) * A031131 (n + 1)

end

end A109805.P11087918295615549569

namespace A109805

/-- `A006005(n+2)*A031131(n+1)` -/
def P11087918295615549569.Spec : Prop :=
  ∀ n, P11087918295615549569.a n = A109805 (n + 1)

end A109805

/-!
# A109806: Admirable numbers such that the subtracted divisor is square.

The programs for A109806, there is no canonical definition to state claims against.
-/

/-! ## A109806.P7644837468741111661

`∩[A109788(n+1), A316098(A318991(n+1))]`
-/

namespace A109806.P7644837468741111661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316098 (A318991 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109806.P7644837468741111661

/-! ## A109806.P9393679293121454267

`∩[A109788(n+1), A316098(n+1)]`
-/

namespace A109806.P9393679293121454267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109806.P9393679293121454267

/-!
# A109807: Numbers n such that n^2 + 1 is a Chen prime.

The programs for A109807, there is no canonical definition to state claims against.
-/

/-! ## A109807.P17796135719137134742

`record[A247339(A053878(n+2)+n)]`
-/

namespace A109807.P17796135719137134742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A053878 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109807.P17796135719137134742

/-! ## A109807.P14805325016809555081

`eq[A053878(n+2), A345994((n+1)²+1)]+1`
-/

namespace A109807.P14805325016809555081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053878 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 ((n + 1) ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A109807.P14805325016809555081

/-! ## A109807.P2842323526997929156

`eq[A010055(A184848(n+1)), A053000(n)]`
-/

namespace A109807.P2842323526997929156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A184848 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109807.P2842323526997929156

/-! ## A109807.P112540889294660477

`eq[A010055(A184848(n+1)), A193330(n)]`
-/

namespace A109807.P112540889294660477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A184848 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109807.P112540889294660477

/-! ## A109807.P17233288750460822770

`filter[A327105(n+1), A295405(#)]`
-/

namespace A109807.P17233288750460822770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A109807.P17233288750460822770

/-!
# A109808: a(n) = 2*7^(n-1).

The programs for A109808, the canonical program `A109808.P10761423487218282710` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109808 has offset 1).

The definition of A109808 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*7^n` (program `A109808.P10761423487218282710`, by `A109808.P10761423487218282710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109808.P10761423487218282710

`2*7^n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109808

/-- `2*7^n` -/
def P10761423487218282710.Spec : Prop :=
  ∀ n, (P10761423487218282710.a n : ℤ) = A109808 (n + 1)

theorem P10761423487218282710.correct : P10761423487218282710.Spec := by
  intro n
  simp only [A109808, Nat.add_sub_cancel]

end A109808

/-!
# A109809: Primes at Levenshtein distance n from previous value when considered as a decimal string.

The programs for A109809, there is no canonical definition to state claims against.
-/

/-! ## A109809.P13964435641225393737

`p?[round(sqrt(A005665(n)-n))]`
-/

namespace A109809.P13964435641225393737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A005665 n - (n : ℤ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109809.P13964435641225393737

/-!
# A109810: Number of permutations of the positive divisors of n, where every element is coprime to its adjacent elements.

The programs for A109810, the canonical program `A109810.P12605692145419007427` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109810 has offset 1).

The definition of A109810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109810.P4133710529458395791

`∏{e}[n+1, #+1]!%A220863(∏{p}[n+1, 3%#²])`
-/

namespace A109810.P4133710529458395791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℤ) (A220863 (∏ p ∈ Nat.primeFactors (f2 n), 3 % p ^ 2))

end

end A109810.P4133710529458395791

namespace A109810

/-- `∏{e}[n+1, #+1]!%A220863(∏{p}[n+1, 3%#²])` -/
def P4133710529458395791.Spec : Prop :=
  ∀ n, P4133710529458395791.a n = A109810 (n + 1)

end A109810

/-! ## A109810.P14706466254729442925

`abs(A306653(A329600(n+1)))`
-/

namespace A109810.P14706466254729442925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A306653 (A329600 (n + 1)).toNat|

end

end A109810.P14706466254729442925

namespace A109810

/-- `abs(A306653(A329600(n+1)))` -/
def P14706466254729442925.Spec : Prop :=
  ∀ n, P14706466254729442925.a n = A109810 (n + 1)

end A109810

/-! ## A109810.P1292715116080395686

`∏{d}[A294873(n+1), A211343(#)]`
-/

namespace A109810.P1292715116080395686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A211343 d

end

end A109810.P1292715116080395686

namespace A109810

/-- `∏{d}[A294873(n+1), A211343(#)]` -/
def P1292715116080395686.Spec : Prop :=
  ∀ n, P1292715116080395686.a n = A109810 (n + 1)

end A109810

/-! ## A109810.P5417050094390456395

`A000194(A306653(A329600(n+1))²)`
-/

namespace A109810.P5417050094390456395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A306653 (A329600 (n + 1)).toNat ^ 2).toNat

end

end A109810.P5417050094390456395

namespace A109810

/-- `A000194(A306653(A329600(n+1))²)` -/
def P5417050094390456395.Spec : Prop :=
  ∀ n, P5417050094390456395.a n = A109810 (n + 1)

end A109810

/-! ## A109810.P8190828613284130524

`gcd(A000038(n), A306653(A329600(n+1)))`
-/

namespace A109810.P8190828613284130524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A306653 (A329600 (n + 1)).toNat)

end

end A109810.P8190828613284130524

namespace A109810

/-- `gcd(A000038(n), A306653(A329600(n+1)))` -/
def P8190828613284130524.Spec : Prop :=
  ∀ n, (P8190828613284130524.a n : ℤ) = A109810 (n + 1)

end A109810

/-! ## A109810.P13524710481189125087

`lcm(A000034(n), A306653(A329600(n+1)))`
-/

namespace A109810.P13524710481189125087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A306653 (A329600 (n + 1)).toNat)

end

end A109810.P13524710481189125087

namespace A109810

/-- `lcm(A000034(n), A306653(A329600(n+1)))` -/
def P13524710481189125087.Spec : Prop :=
  ∀ n, (P13524710481189125087.a n : ℤ) = A109810 (n + 1)

end A109810

/-! ## A109810.P4688336739700069509

`∑{d}[A306653(A329600(n+1)), A000010(#)]`
-/

namespace A109810.P4688336739700069509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306653 (A329600 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A109810.P4688336739700069509

namespace A109810

/-- `∑{d}[A306653(A329600(n+1)), A000010(#)]` -/
def P4688336739700069509.Spec : Prop :=
  ∀ n, P4688336739700069509.a n = A109810 (n + 1)

end A109810

/-! ## A109810.P3400654006210295179

`∑{d}[A306653(A329600(n+1)), A007318(#)]`
-/

namespace A109810.P3400654006210295179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306653 (A329600 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 d

end

end A109810.P3400654006210295179

namespace A109810

/-- `∑{d}[A306653(A329600(n+1)), A007318(#)]` -/
def P3400654006210295179.Spec : Prop :=
  ∀ n, P3400654006210295179.a n = A109810 (n + 1)

end A109810

/-! ## A109810.P12265654171322984107

`and(A000005(n+1), A306653(A329600(n+1)))`
-/

namespace A109810.P12265654171322984107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (n + 1)) (A306653 (A329600 (n + 1)).toNat)

end

end A109810.P12265654171322984107

namespace A109810

/-- `and(A000005(n+1), A306653(A329600(n+1)))` -/
def P12265654171322984107.Spec : Prop :=
  ∀ n, P12265654171322984107.a n = A109810 (n + 1)

end A109810

/-! ## A109810.P3074210218782179497

`A074823(A054576(n+1)*A243074(n+1))`
-/

namespace A109810.P3074210218782179497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074823 (A054576 (n + 1) * A243074 (n + 1)).toNat

end

end A109810.P3074210218782179497

namespace A109810

/-- `A074823(A054576(n+1)*A243074(n+1))` -/
def P3074210218782179497.Spec : Prop :=
  ∀ n, P3074210218782179497.a n = A109810 (n + 1)

end A109810

/-! ## A109810.P17842901734535548519

`A050363(A050363(n+1)²)*A230594(n+1)`
-/

namespace A109810.P17842901734535548519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (A050363 (n + 1) ^ 2).toNat * A230594 (n + 1)

end

end A109810.P17842901734535548519

namespace A109810

/-- `A050363(A050363(n+1)²)*A230594(n+1)` -/
def P17842901734535548519.Spec : Prop :=
  ∀ n, P17842901734535548519.a n = A109810 (n + 1)

end A109810

/-! ## A109810.P12605692145419007427

`lcm(A008683(∏{p}[n+1, ceil(n/#)]), ∏{e}[n+1, 2*(-1)^#])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A109810

/-- `lcm(A008683(∏{p}[n+1, ceil(n/#)]), ∏{e}[n+1, 2*(-1)^#])` -/
def P12605692145419007427.Spec : Prop :=
  ∀ n, (P12605692145419007427.a n : ℤ) = A109810 (n + 1)

theorem P12605692145419007427.correct : P12605692145419007427.Spec := by
  intro n
  simp only [A109810, Nat.add_sub_cancel]

end A109810

/-! ## A109810.P6443651656261401474

`A397136(A329600(n+1))`
-/

namespace A109810.P6443651656261401474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397136 (A329600 (n + 1)).toNat

end

end A109810.P6443651656261401474

namespace A109810

/-- `A397136(A329600(n+1))` -/
def P6443651656261401474.Spec : Prop :=
  ∀ n, P6443651656261401474.a n = A109810 (n + 1)

end A109810

/-! ## A109810.P14853737595661241763

`A000377(A016777(A329600(n+1))-2)`
-/

namespace A109810.P14853737595661241763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (A016777 (A329600 (n + 1)).toNat - 2).toNat

end

end A109810.P14853737595661241763

namespace A109810

/-- `A000377(A016777(A329600(n+1))-2)` -/
def P14853737595661241763.Spec : Prop :=
  ∀ n, P14853737595661241763.a n = A109810 (n + 1)

end A109810

/-! ## A109810.P8141486403877813496

`lcm(A008683(A205959(n+1)), A034444(n+1))`
-/

namespace A109810.P8141486403877813496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A205959 (n + 1)).toNat) (A034444 (n + 1))

end

end A109810.P8141486403877813496

namespace A109810

/-- `lcm(A008683(A205959(n+1)), A034444(n+1))` -/
def P8141486403877813496.Spec : Prop :=
  ∀ n, (P8141486403877813496.a n : ℤ) = A109810 (n + 1)

end A109810

/-! ## A109810.P1191491327523236810

`lcm(A000005(A205959(n+1)), A230594(n+1))`
-/

namespace A109810.P1191491327523236810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A205959 (n + 1)).toNat) (A230594 (n + 1))

end

end A109810.P1191491327523236810

namespace A109810

/-- `lcm(A000005(A205959(n+1)), A230594(n+1))` -/
def P1191491327523236810.Spec : Prop :=
  ∀ n, (P1191491327523236810.a n : ℤ) = A109810 (n + 1)

end A109810

/-! ## A109810.P8458922624766792194

`A000005(A072499(n+1))*A230594(n+1)`
-/

namespace A109810.P8458922624766792194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A072499 (n + 1)).toNat * A230594 (n + 1)

end

end A109810.P8458922624766792194

namespace A109810

/-- `A000005(A072499(n+1))*A230594(n+1)` -/
def P8458922624766792194.Spec : Prop :=
  ∀ n, P8458922624766792194.a n = A109810 (n + 1)

end A109810

/-! ## A109810.P12861578073071567864

`and(A101296(n+1), A245181(A067824(n+1)))`
-/

namespace A109810.P12861578073071567864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101296 (n + 1)) (A245181 (A067824 (n + 1)).toNat)

end

end A109810.P12861578073071567864

namespace A109810

/-- `and(A101296(n+1), A245181(A067824(n+1)))` -/
def P12861578073071567864.Spec : Prop :=
  ∀ n, P12861578073071567864.a n = A109810 (n + 1)

end A109810

/-! ## A109810.P9619198181278604424

`∏{d}[n+1, A057516(A001222(9*#²))]`
-/

namespace A109810.P9619198181278604424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A057516 (A001222 (9 * d ^ 2)).toNat

end

end A109810.P9619198181278604424

namespace A109810

/-- `∏{d}[n+1, A057516(A001222(9*#²))]` -/
def P9619198181278604424.Spec : Prop :=
  ∀ n, P9619198181278604424.a n = A109810 (n + 1)

end A109810

/-! ## A109810.P6443645776287127201

`A178254(A129598(n+1))`
-/

namespace A109810.P6443645776287127201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178254 (A129598 (n + 1)).toNat

end

end A109810.P6443645776287127201

namespace A109810

/-- `A178254(A129598(n+1))` -/
def P6443645776287127201.Spec : Prop :=
  ∀ n, P6443645776287127201.a n = A109810 (n + 1)

end A109810

/-!
# A109811: Triangular numbers (A000217) at Levenshtein distance 1 from another triangular number when considered as a decimal string.

The programs for A109811, there is no canonical definition to state claims against.
-/

/-! ## A109811.P17147950176428206563

`A000217(lt[A265818(n+1), A350184(n+1)])`
-/

namespace A109811.P17147950176428206563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109811.P17147950176428206563

/-! ## A109811.P14054705211755410084

`A000217(lt[A262562(n+2), 34])`
-/

namespace A109811.P14054705211755410084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262562 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A109811.P14054705211755410084

/-! ## A109811.P8120157990905012023

`A000217(lt[A123125(n), A340008(2*n+5)])`
-/

namespace A109811.P8120157990905012023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109811.P8120157990905012023

/-! ## A109811.P5324511501238035281

`A000217(lt[A046778(n), A113233(n+1)])`
-/

namespace A109811.P5324511501238035281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109811.P5324511501238035281

/-! ## A109811.P12263280302262411155

`A000217(lt[A298133(n+1), A353840(2*n+3)])`
-/

namespace A109811.P12263280302262411155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353840 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109811.P12263280302262411155

/-!
# A109812: a(1)=1; thereafter a(n) = smallest positive integer not among the earlier terms of the sequence such that a(n) and a(n-1) have no common 1-bits in their binary representations.

The programs for A109812, there is no canonical definition to state claims against.
-/

/-! ## A109812.P3288552902710321511

`A352794(n+1)+1+n`
-/

namespace A109812.P3288552902710321511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352794 (n + 1) + 1 + (n : ℤ)

end

end A109812.P3288552902710321511

/-! ## A109812.P3653582573881239109

`A353240(n)-a(n-1)` with `a(0)=1`
-/

namespace A109812.P3653582573881239109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A353240 n - a (n - 1)

end

end A109812.P3653582573881239109

/-! ## A109812.P9887050537354723587

`A000079(A351964(n+1))*A351965(n+1)`
-/

namespace A109812.P9887050537354723587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A351964 (n + 1)).toNat * A351965 (n + 1)

end

end A109812.P9887050537354723587

/-! ## A109812.P7169181727232168078

`A352781(n+1)+A353240(n+1)-A352781(n+2)`
-/

namespace A109812.P7169181727232168078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352781 (n + 1) + (A353240 (n + 1) - A352781 (n + 2))

end

end A109812.P7169181727232168078

/-! ## A109812.P12204401026062290065

`A305371(2*(n+1))/2`
-/

namespace A109812.P12204401026062290065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305371 (2 * (n + 1)) : ℚ) / 2

end

end A109812.P12204401026062290065

/-! ## A109812.P2384336830582386193

`floor(A305369(2*(n+1))/2)`
-/

namespace A109812.P2384336830582386193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A305369 (2 * (n + 1)) : ℚ) / 2⌋

end

end A109812.P2384336830582386193

/-! ## A109812.P4848359674177823771

`and(A305369(2*(n+1)), A327767(2*(n+1)))/2`
-/

namespace A109812.P4848359674177823771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A305369 (2 * (n + 1))) (A327767 (2 * (n + 1))) : ℚ) / 2

end

end A109812.P4848359674177823771

/-! ## A109812.P7024851707653562754

`A113232(A113233(n+1))`
-/

namespace A109812.P7024851707653562754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113232 (A113233 (n + 1)).toNat

end

end A109812.P7024851707653562754

/-! ## A109812.P17197077573176980158

`A004526(A305369(2*(n+1)))`
-/

namespace A109812.P17197077573176980158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A305369 (2 * (n + 1))).toNat

end

end A109812.P17197077573176980158

/-! ## A109812.P1611026335623512831

`A004525(A305371(2*(n+1)))`
-/

namespace A109812.P1611026335623512831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A305371 (2 * (n + 1))).toNat

end

end A109812.P1611026335623512831

/-! ## A109812.P11021575711923906152

`A004524(A305371(2*(n+1))+1)`
-/

namespace A109812.P11021575711923906152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A305371 (2 * (n + 1)) + 1).toNat

end

end A109812.P11021575711923906152

/-! ## A109812.P1390481274857079364

`A004526(A305371(2*(n+1))+1)`
-/

namespace A109812.P1390481274857079364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A305371 (2 * (n + 1)) + 1).toNat

end

end A109812.P1390481274857079364

/-! ## A109812.P5908263536956180207

`A123108(A305371(2*(n+1))+1)`
-/

namespace A109812.P5908263536956180207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A305371 (2 * (n + 1)) + 1).toNat

end

end A109812.P5908263536956180207

/-! ## A109812.P3268744094056324737

`A065033(A305371(2*(n+1))-1)`
-/

namespace A109812.P3268744094056324737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A305371 (2 * (n + 1)) - 1).toNat

end

end A109812.P3268744094056324737

/-! ## A109812.P6885503826941697526

`and(A065033(A305371(2*(n+1))), A353240(n))`
-/

namespace A109812.P6885503826941697526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065033 (A305371 (2 * (n + 1))).toNat) (A353240 n)

end

end A109812.P6885503826941697526

/-! ## A109812.P825191057288275944

`A065033(A305371(2*n+1))*A065033(A305371(2*(n+1)))`
-/

namespace A109812.P825191057288275944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A305371 (2 * n + 1)).toNat * A065033 (A305371 (2 * (n + 1))).toNat

end

end A109812.P825191057288275944

/-! ## A109812.P13953921027949302413

`and(A280412(2*n+1), A305369(2*(n+1)))/2`
-/

namespace A109812.P13953921027949302413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A280412 (2 * n + 1)) (A305369 (2 * (n + 1))) : ℚ) / 2

end

end A109812.P13953921027949302413

/-! ## A109812.P1834326351103455884

`and(A286772(2*n+1), A305369(2*(n+1)))/2`
-/

namespace A109812.P1834326351103455884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A286772 (2 * n + 1)) (A305369 (2 * (n + 1))) : ℚ) / 2

end

end A109812.P1834326351103455884

/-!
# A109814: a(n) is the largest k such that n can be written as sum of k consecutive positive integers.

The programs for A109814, there is no canonical definition to state claims against.
-/

/-! ## A109814.P2085084522841721482

`A028310(A104513(n+1))`
-/

namespace A109814.P2085084522841721482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A104513 (n + 1)).toNat

end

end A109814.P2085084522841721482

/-! ## A109814.P6600238964444259441

`A065033(2*A104513(n+1))`
-/

namespace A109814.P6600238964444259441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A104513 (n + 1)).toNat

end

end A109814.P6600238964444259441

/-! ## A109814.P1069331745053647102

`A123108(2*A104513(n+1))`
-/

namespace A109814.P1069331745053647102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A104513 (n + 1)).toNat

end

end A109814.P1069331745053647102

/-! ## A109814.P10565597616577183195

`A104513(n+1)+A036987(n)`
-/

namespace A109814.P10565597616577183195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104513 (n + 1) + A036987 n

end

end A109814.P10565597616577183195

/-! ## A109814.P4507944020611142375

`∏{d}[A104513(n+1), A014963(#)]`
-/

namespace A109814.P4507944020611142375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A109814.P4507944020611142375

/-! ## A109814.P6012630017444615715

`A104513(n+1)+1-A043545(n)`
-/

namespace A109814.P6012630017444615715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104513 (n + 1) + (1 - A043545 n)

end

end A109814.P6012630017444615715

/-! ## A109814.P7485731218046909419

`gcd(A104513(n+1), A154269(n+1))`
-/

namespace A109814.P7485731218046909419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104513 (n + 1)) (A154269 (n + 1))

end

end A109814.P7485731218046909419

/-! ## A109814.P6939331968453926346

`A104513(n+1)+and(1, Δ[A124754(n)])`
-/

namespace A109814.P6939331968453926346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104513 (n + 1) + Int.land 1 (f1 (n + 1) - f1 n)

end

end A109814.P6939331968453926346

/-! ## A109814.P15787748470558107019

`A212652(n+1)+1-A118235(n+1)`
-/

namespace A109814.P15787748470558107019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212652 (n + 1) + (1 - A118235 (n + 1))

end

end A109814.P15787748470558107019

/-! ## A109814.P18005337449888118007

`A104513(n+1)+∏{d}[A104513(n+1), A104513(#)]`
-/

namespace A109814.P18005337449888118007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104513 (n + 1) + ∏ d ∈ Nat.divisors (f1 n).natAbs, A104513 d

end

end A109814.P18005337449888118007

/-! ## A109814.P16481481020651782495

`A333267(2^A104513(n+1))`
-/

namespace A109814.P16481481020651782495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333267 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A104513 (n + 1) : ℤ))).toNat

end

end A109814.P16481481020651782495

/-! ## A109814.P10506887784589193509

`A104513(n+1)+A096271(2^A104513(n+1))`
-/

namespace A109814.P10506887784589193509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104513 (n + 1) + A096271 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A104513 (n + 1) : ℤ))).toNat

end

end A109814.P10506887784589193509

/-! ## A109814.P10491337876188257810

`A070940(A347266(n+1))`
-/

namespace A109814.P10491337876188257810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A347266 (n + 1)).toNat

end

end A109814.P10491337876188257810

/-!
# A109815: n^2 followed by n^3 followed by n.

The programs for A109815, the canonical program `A109815.P17504753605678059150` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109815 has offset 1).

The definition of A109815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109815.P5882854875151734574

`A109816(A064429(n)+1)`
-/

namespace A109815.P5882854875151734574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (A064429 n + 1).toNat

end

end A109815.P5882854875151734574

namespace A109815

/-- `A109816(A064429(n)+1)` -/
def P5882854875151734574.Spec : Prop :=
  ∀ n, P5882854875151734574.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P428109007545622374

`A109816(A080782(n+1))`
-/

namespace A109815.P428109007545622374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (A080782 (n + 1)).toNat

end

end A109815.P428109007545622374

namespace A109815

/-- `A109816(A080782(n+1))` -/
def P428109007545622374.Spec : Prop :=
  ∀ n, P428109007545622374.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P17504753605678059150

`A008620(n)^(A102283(n)+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109815

/-- `A008620(n)^(A102283(n)+2)` -/
def P17504753605678059150.Spec : Prop :=
  ∀ n, P17504753605678059150.a n = (A109815 (n + 1) : ℚ)

end A109815

/-! ## A109815.P4930589590986497830

`A109588(A004482(n)+1)`
-/

namespace A109815.P4930589590986497830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (A004482 n + 1).toNat

end

end A109815.P4930589590986497830

namespace A109815

/-- `A109588(A004482(n)+1)` -/
def P4930589590986497830.Spec : Prop :=
  ∀ n, P4930589590986497830.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P4906705045455222200

`A109614(A004483(n)+1)`
-/

namespace A109815.P4906705045455222200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (A004483 n + 1).toNat

end

end A109815.P4906705045455222200

namespace A109815

/-- `A109614(A004483(n)+1)` -/
def P4906705045455222200.Spec : Prop :=
  ∀ n, P4906705045455222200.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P6561897861877479065

`A109595(A064429(n+1))`
-/

namespace A109815.P6561897861877479065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (A064429 (n + 1)).toNat

end

end A109815.P6561897861877479065

namespace A109815

/-- `A109595(A064429(n+1))` -/
def P6561897861877479065.Spec : Prop :=
  ∀ n, P6561897861877479065.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P3248626149003575223

`A109594(A113655(n+1))`
-/

namespace A109815.P3248626149003575223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A113655 (n + 1)).toNat

end

end A109815.P3248626149003575223

namespace A109815

/-- `A109594(A113655(n+1))` -/
def P3248626149003575223.Spec : Prop :=
  ∀ n, P3248626149003575223.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P1981986342556109642

`A109588(A130508(n+1))`
-/

namespace A109815.P1981986342556109642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (A130508 (n + 1)).toNat

end

end A109815.P1981986342556109642

namespace A109815

/-- `A109588(A130508(n+1))` -/
def P1981986342556109642.Spec : Prop :=
  ∀ n, P1981986342556109642.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P17852891494101801454

`A109614(A130509(n+1))`
-/

namespace A109815.P17852891494101801454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (A130509 (n + 1)).toNat

end

end A109815.P17852891494101801454

namespace A109815

/-- `A109614(A130509(n+1))` -/
def P17852891494101801454.Spec : Prop :=
  ∀ n, P17852891494101801454.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P3902360130435602068

`A109595(A080782(n+2)-1)`
-/

namespace A109815.P3902360130435602068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (A080782 (n + 2) - 1).toNat

end

end A109815.P3902360130435602068

namespace A109815

/-- `A109595(A080782(n+2)-1)` -/
def P3902360130435602068.Spec : Prop :=
  ∀ n, P3902360130435602068.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P4699463410084038210

`A109816(A010872(n+1)+n)`
-/

namespace A109815.P4699463410084038210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (A010872 (n + 1) + (n : ℤ)).toNat

end

end A109815.P4699463410084038210

namespace A109815

/-- `A109816(A010872(n+1)+n)` -/
def P4699463410084038210.Spec : Prop :=
  ∀ n, P4699463410084038210.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P16198706185457984466

`A109595(2-A080425(n)+n)`
-/

namespace A109815.P16198706185457984466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (2 - A080425 n + (n : ℤ)).toNat

end

end A109815.P16198706185457984466

namespace A109815

/-- `A109595(2-A080425(n)+n)` -/
def P16198706185457984466.Spec : Prop :=
  ∀ n, P16198706185457984466.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P5182410072523405402

`A109595(2-(A080425(n)-n))`
-/

namespace A109815.P5182410072523405402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (2 - (A080425 n - (n : ℤ))).toNat

end

end A109815.P5182410072523405402

namespace A109815

/-- `A109595(2-(A080425(n)-n))` -/
def P5182410072523405402.Spec : Prop :=
  ∀ n, P5182410072523405402.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P12459817429068274443

`A008620(n)^A010882(n+1)`
-/

namespace A109815.P12459817429068274443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 n : ℚ) ^ (A010882 (n + 1) : ℤ)

end

end A109815.P12459817429068274443

namespace A109815

/-- `A008620(n)^A010882(n+1)` -/
def P12459817429068274443.Spec : Prop :=
  ∀ n, P12459817429068274443.a n = (A109815 (n + 1) : ℚ)

end A109815

/-! ## A109815.P15276007711349416323

`A008620(n)^Δ[A047267(n+1)]`
-/

namespace A109815.P15276007711349416323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A109815.P15276007711349416323

namespace A109815

/-- `A008620(n)^Δ[A047267(n+1)]` -/
def P15276007711349416323.Spec : Prop :=
  ∀ n, P15276007711349416323.a n = (A109815 (n + 1) : ℚ)

end A109815

/-! ## A109815.P8659476010712378978

`A109588(n+2)+A002264(n)-A002264(n+1)`
-/

namespace A109815.P8659476010712378978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (n + 2) + (A002264 n - A002264 (n + 1))

end

end A109815.P8659476010712378978

namespace A109815

/-- `A109588(n+2)+A002264(n)-A002264(n+1)` -/
def P8659476010712378978.Spec : Prop :=
  ∀ n, P8659476010712378978.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P17743238626893038306

`A109595(n+1)+A109588(n+2)-A109594(n+2)`
-/

namespace A109815.P17743238626893038306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (n + 1) + (A109588 (n + 2) - A109594 (n + 2))

end

end A109815.P17743238626893038306

namespace A109815

/-- `A109595(n+1)+A109588(n+2)-A109594(n+2)` -/
def P17743238626893038306.Spec : Prop :=
  ∀ n, P17743238626893038306.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P2992631225128424243

`A109595(n+1)/A109595(n+2)*A109614(n+2)`
-/

namespace A109815.P2992631225128424243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109595 (n + 1) : ℚ) / (A109595 (n + 2) : ℚ) * (A109614 (n + 2) : ℚ)

end

end A109815.P2992631225128424243

namespace A109815

/-- `A109595(n+1)/A109595(n+2)*A109614(n+2)` -/
def P2992631225128424243.Spec : Prop :=
  ∀ n, P2992631225128424243.a n = (A109815 (n + 1) : ℚ)

end A109815

/-! ## A109815.P15649625635812126712

`A109595(A010872(n+2)+n)`
-/

namespace A109815.P15649625635812126712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (A010872 (n + 2) + (n : ℤ)).toNat

end

end A109815.P15649625635812126712

namespace A109815

/-- `A109595(A010872(n+2)+n)` -/
def P15649625635812126712.Spec : Prop :=
  ∀ n, P15649625635812126712.a n = A109815 (n + 1)

end A109815

/-! ## A109815.P16835892477367131828

`A110652(A004773(n+1))`
-/

namespace A109815.P16835892477367131828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110652 (A004773 (n + 1)).toNat

end

end A109815.P16835892477367131828

namespace A109815

/-- `A110652(A004773(n+1))` -/
def P16835892477367131828.Spec : Prop :=
  ∀ n, P16835892477367131828.a n = A109815 (n + 1)

end A109815

/-!
# A109816: n^2 followed by n followed by n^3.

The programs for A109816, the canonical program `A109816.P1935135816132311895` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109816 has offset 1).

The definition of A109816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109816.P1935135816132311895

`A109815(A064429(n)+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109816

/-- `A109815(A064429(n)+1)` -/
def P1935135816132311895.Spec : Prop :=
  ∀ n, P1935135816132311895.a n = A109816 (n + 1)

theorem P1935135816132311895.correct : P1935135816132311895.Spec := by
  intro n
  simp only [A109816, Nat.add_sub_cancel]

end A109816

/-! ## A109816.P9828298607875164055

`A109815(A080782(n+1))`
-/

namespace A109816.P9828298607875164055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (A080782 (n + 1)).toNat

end

end A109816.P9828298607875164055

namespace A109816

/-- `A109815(A080782(n+1))` -/
def P9828298607875164055.Spec : Prop :=
  ∀ n, P9828298607875164055.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P7708089627950665306

`A109594(A004483(n)+1)`
-/

namespace A109816.P7708089627950665306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A004483 n + 1).toNat

end

end A109816.P7708089627950665306

namespace A109816

/-- `A109594(A004483(n)+1)` -/
def P7708089627950665306.Spec : Prop :=
  ∀ n, P7708089627950665306.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P3539359628599924416

`A109588(A064429(n+1))`
-/

namespace A109816.P3539359628599924416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (A064429 (n + 1)).toNat

end

end A109816.P3539359628599924416

namespace A109816

/-- `A109588(A064429(n+1))` -/
def P3539359628599924416.Spec : Prop :=
  ∀ n, P3539359628599924416.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P10312595267582121831

`A109614(A113655(n+1))`
-/

namespace A109816.P10312595267582121831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (A113655 (n + 1)).toNat

end

end A109816.P10312595267582121831

namespace A109816

/-- `A109614(A113655(n+1))` -/
def P10312595267582121831.Spec : Prop :=
  ∀ n, P10312595267582121831.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P7509029241483112115

`A109595(A130508(n+1))`
-/

namespace A109816.P7509029241483112115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (A130508 (n + 1)).toNat

end

end A109816.P7509029241483112115

namespace A109816

/-- `A109595(A130508(n+1))` -/
def P7509029241483112115.Spec : Prop :=
  ∀ n, P7509029241483112115.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P9119874819246616974

`A109594(A130509(n+1))`
-/

namespace A109816.P9119874819246616974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A130509 (n + 1)).toNat

end

end A109816.P9119874819246616974

namespace A109816

/-- `A109594(A130509(n+1))` -/
def P9119874819246616974.Spec : Prop :=
  ∀ n, P9119874819246616974.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P3601599729035812452

`A109588(A080782(n+2)-1)`
-/

namespace A109816.P3601599729035812452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (A080782 (n + 2) - 1).toNat

end

end A109816.P3601599729035812452

namespace A109816

/-- `A109588(A080782(n+2)-1)` -/
def P3601599729035812452.Spec : Prop :=
  ∀ n, P3601599729035812452.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P16830244004196013036

`A109815(A010872(n+1)+n)`
-/

namespace A109816.P16830244004196013036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (A010872 (n + 1) + (n : ℤ)).toNat

end

end A109816.P16830244004196013036

namespace A109816

/-- `A109815(A010872(n+1)+n)` -/
def P16830244004196013036.Spec : Prop :=
  ∀ n, P16830244004196013036.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P1399681731494150115

`A109588(n+1)/A109588(n+2)*A109594(n+2)`
-/

namespace A109816.P1399681731494150115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109588 (n + 1) : ℚ) / (A109588 (n + 2) : ℚ) * (A109594 (n + 2) : ℚ)

end

end A109816.P1399681731494150115

namespace A109816

/-- `A109588(n+1)/A109588(n+2)*A109594(n+2)` -/
def P1399681731494150115.Spec : Prop :=
  ∀ n, P1399681731494150115.a n = (A109816 (n + 1) : ℚ)

end A109816

/-! ## A109816.P4702081650277607171

`A109588(A010872(n+2)+n)`
-/

namespace A109816.P4702081650277607171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (A010872 (n + 2) + (n : ℤ)).toNat

end

end A109816.P4702081650277607171

namespace A109816

/-- `A109588(A010872(n+2)+n)` -/
def P4702081650277607171.Spec : Prop :=
  ∀ n, P4702081650277607171.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P3739698623819902116

`A110650(record[A116966(n)])`
-/

namespace A109816.P3739698623819902116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109816.P3739698623819902116

namespace A109816

/-- `A110650(record[A116966(n)])` -/
def P3739698623819902116.Spec : Prop :=
  ∀ n, P3739698623819902116.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P12662282080810956178

`A110485(A004773(n+1))`
-/

namespace A109816.P12662282080810956178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A004773 (n + 1)).toNat

end

end A109816.P12662282080810956178

namespace A109816

/-- `A110485(A004773(n+1))` -/
def P12662282080810956178.Spec : Prop :=
  ∀ n, P12662282080810956178.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P1797020496059356557

`A110622(A004773(n)+1)`
-/

namespace A109816.P1797020496059356557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A004773 n + 1).toNat

end

end A109816.P1797020496059356557

namespace A109816

/-- `A110622(A004773(n)+1)` -/
def P1797020496059356557.Spec : Prop :=
  ∀ n, P1797020496059356557.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P4469152456018471474

`A110622(A042968(n+1))`
-/

namespace A109816.P4469152456018471474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A042968 (n + 1)).toNat

end

end A109816.P4469152456018471474

namespace A109816

/-- `A110622(A042968(n+1))` -/
def P4469152456018471474.Spec : Prop :=
  ∀ n, P4469152456018471474.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P12091255690259412964

`A110005(A131452(n+1))`
-/

namespace A109816.P12091255690259412964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A131452 (n + 1)).toNat

end

end A109816.P12091255690259412964

namespace A109816

/-- `A110005(A131452(n+1))` -/
def P12091255690259412964.Spec : Prop :=
  ∀ n, P12091255690259412964.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P15964413581973737122

`A110650(A042965(n+2))`
-/

namespace A109816.P15964413581973737122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A042965 (n + 2)).toNat

end

end A109816.P15964413581973737122

namespace A109816

/-- `A110650(A042965(n+2))` -/
def P15964413581973737122.Spec : Prop :=
  ∀ n, P15964413581973737122.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P13482523915239796031

`A110650(record[A056699(n+1)])`
-/

namespace A109816.P13482523915239796031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109816.P13482523915239796031

namespace A109816

/-- `A110650(record[A056699(n+1)])` -/
def P13482523915239796031.Spec : Prop :=
  ∀ n, P13482523915239796031.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P12278776984584529909

`A109815(A113655(2*(n+1))/2)`
-/

namespace A109816.P12278776984584529909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (SequenceMachineLib.roundAway ((A113655 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A109816.P12278776984584529909

namespace A109816

/-- `A109815(A113655(2*(n+1))/2)` -/
def P12278776984584529909.Spec : Prop :=
  ∀ n, P12278776984584529909.a n = A109816 (n + 1)

end A109816

/-! ## A109816.P10774891531747877338

`A110650(lt[A110622(n+2), A110622(2*n+1)])`
-/

namespace A109816.P10774891531747877338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109816.P10774891531747877338

namespace A109816

/-- `A110650(lt[A110622(n+2), A110622(2*n+1)])` -/
def P10774891531747877338.Spec : Prop :=
  ∀ n, P10774891531747877338.a n = A109816 (n + 1)

end A109816

/-!
# A109818: Sum of primes between n and n^2.

The programs for A109818, there is no canonical definition to state claims against.
-/

/-! ## A109818.P16983672796777646049

`A063960(2*(n+1)²)-A063960(2*n+1)`
-/

namespace A109818.P16983672796777646049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * (n + 1) ^ 2) - A063960 (2 * n + 1)

end

end A109818.P16983672796777646049

/-! ## A109818.P17828987502269939735

`A139562(n+1)-A034387(A028310(n))`
-/

namespace A109818.P17828987502269939735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139562 (n + 1) - A034387 (A028310 n).toNat

end

end A109818.P17828987502269939735

/-! ## A109818.P1565998989974283222

`A139562(n+1)-A007504(A230980(n))`
-/

namespace A109818.P1565998989974283222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139562 (n + 1) - A007504 (A230980 n).toNat

end

end A109818.P1565998989974283222

/-! ## A109818.P18369890405399195688

`A158662((n+1)²)-A158662(A028310(n))`
-/

namespace A109818.P18369890405399195688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158662 ((n + 1) ^ 2) - A158662 (A028310 n).toNat

end

end A109818.P18369890405399195688

/-! ## A109818.P6880757764863823520

`A007504(A230980((n+1)²))-A007504(A230980(n))`
-/

namespace A109818.P6880757764863823520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A230980 ((n + 1) ^ 2)).toNat - A007504 (A230980 n).toNat

end

end A109818.P6880757764863823520

/-!
# A109819: Product of primes between n and n^2.

The programs for A109819, there is no canonical definition to state claims against.
-/

/-! ## A109819.P8400910976617195096

`A284262(A073882(n+1))`
-/

namespace A109819.P8400910976617195096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284262 (A073882 (n + 1)).toNat

end

end A109819.P8400910976617195096

/-! ## A109819.P10113432359271985289

`A034386((n+1)²)/A034386(n)`
-/

namespace A109819.P10113432359271985289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 ((n + 1) ^ 2) : ℚ) / (A034386 n : ℚ)

end

end A109819.P10113432359271985289

/-!
# A109822: Triangle read by rows: T(n,1)=1, T(n,k) = T(n-1,k) + (n-1)T(n-1, k-1) for 1 <= k <= n.

The programs for A109822, there is no canonical definition to state claims against.
-/

/-! ## A109822.P10108002261202544214

`A096747(comp[∑[n-1]])`
-/

namespace A109822.P10108002261202544214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096747 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A109822.P10108002261202544214

/-! ## A109822.P16116420898596812805

`or(char[1], A096747(A007401(n+1)))`
-/

namespace A109822.P16116420898596812805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A096747 (A007401 (n + 1)).toNat)

end

end A109822.P16116420898596812805

/-! ## A109822.P17414215669360022864

`or(char[1], A096747(A181133(n+1)))`
-/

namespace A109822.P17414215669360022864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A096747 (A181133 (n + 1)).toNat)

end

end A109822.P17414215669360022864

/-! ## A109822.P9549618860322664256

`A243836(n)+A096747(A181133(n+1))`
-/

namespace A109822.P9549618860322664256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 n + A096747 (A181133 (n + 1)).toNat

end

end A109822.P9549618860322664256

/-! ## A109822.P555324005607936362

`A007318(∑[n])*A096747(A007401(n+1))`
-/

namespace A109822.P555324005607936362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A096747 (A007401 (n + 1)).toNat

end

end A109822.P555324005607936362

/-! ## A109822.P12728800671310566443

`A007318(∑[n])*A096747(A181133(n+1))`
-/

namespace A109822.P12728800671310566443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A096747 (A181133 (n + 1)).toNat

end

end A109822.P12728800671310566443

/-! ## A109822.P356554011197466753

`A096747(A181133(n+1))*A096747(∑[n])`
-/

namespace A109822.P356554011197466753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096747 (A181133 (n + 1)).toNat * A096747 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109822.P356554011197466753

/-! ## A109822.P14638581489774492315

`A096747(A181133(n+1))%∑[A000032(n)]`
-/

namespace A109822.P14638581489774492315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096747 (A181133 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109822.P14638581489774492315

/-! ## A109822.P14967830282187563199

`A000034(2*n)*A096747(A181133(n+1))`
-/

namespace A109822.P14967830282187563199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A096747 (A181133 (n + 1)).toNat

end

end A109822.P14967830282187563199

/-! ## A109822.P7209854432838362496

`A096747(A007401(n+1))%A000045(n+4)`
-/

namespace A109822.P7209854432838362496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096747 (A007401 (n + 1)).toNat) (A000045 (n + 4))

end

end A109822.P7209854432838362496

/-!
# A109823: a(n) is the minimal b >= n such that sum of consecutive integers from n to b is a semiprime.

The programs for A109823, there is no canonical definition to state claims against.
-/

/-! ## A109823.P18355444915428511953

`A109824(n+1)+n`
-/

namespace A109823.P18355444915428511953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109824 (n + 1) + (n : ℤ)

end

end A109823.P18355444915428511953

/-!
# A109824: a(n) is the number of consecutive integers starting with n summing up to a semiprime.

The programs for A109824, there is no canonical definition to state claims against.
-/

/-! ## A109824.P26296831000512568

`A109823(n+1)-n`
-/

namespace A109824.P26296831000512568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109823 (n + 1) - (n : ℤ)

end

end A109824.P26296831000512568

/-! ## A109824.P7289934005832506255

`abs(A109823(n+1)+A001489(n))`
-/

namespace A109824.P7289934005832506255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109823 (n + 1) + A001489 n|

end

end A109824.P7289934005832506255

/-! ## A109824.P15307899522937151707

`A002262(A109823(n+1)+∑[n+3]+7)`
-/

namespace A109824.P15307899522937151707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A109823 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 7 : ℕ) : ℤ)).toNat

end

end A109824.P15307899522937151707

/-! ## A109824.P9597706169446815519

`A000026(A109823(n+1)+A001489(n))`
-/

namespace A109824.P9597706169446815519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A109823 (n + 1) + A001489 n).toNat

end

end A109824.P9597706169446815519

/-! ## A109824.P14613211841758272425

`A000027(A109823(n+1)+A001489(n))`
-/

namespace A109824.P14613211841758272425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A109823 (n + 1) + A001489 n).toNat

end

end A109824.P14613211841758272425

/-! ## A109824.P73651563677918907

`(A109823(n+1)+A001489(n))%A000032(n+3)`
-/

namespace A109824.P73651563677918907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109823 (n + 1) + A001489 n) (A000032 (n + 3))

end

end A109824.P73651563677918907

/-! ## A109824.P11490536523064309313

`(A109823(n+1)+A001489(n))*A007318(C(2, n))`
-/

namespace A109824.P11490536523064309313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109823 (n + 1) + A001489 n) * A007318 (Nat.choose 2 n)

end

end A109824.P11490536523064309313

/-! ## A109824.P8247823933190434021

`(A109823(n+1)+A001489(n))*A007318(and(2, -n))`
-/

namespace A109824.P8247823933190434021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109823 (n + 1) + A001489 n) * A007318 (Int.land 2 (-(n : ℤ))).toNat

end

end A109824.P8247823933190434021

/-! ## A109824.P13253341606278657642

`(A109823(n+1)+A001489(n))*(A000041(n)%2)!`
-/

namespace A109824.P13253341606278657642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109823 (n + 1) + A001489 n) * (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ)

end

end A109824.P13253341606278657642

/-! ## A109824.P4784954770580390507

`(A109823(n+1)+A001489(n))*A000041(C(2, n+2))`
-/

namespace A109824.P4784954770580390507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109823 (n + 1) + A001489 n) * A000041 (Nat.choose 2 (n + 2))

end

end A109824.P4784954770580390507

/-!
# A109825: Initial terms of groups in the partition of the sequence of natural numbers A109411.

The programs for A109825, there is no canonical definition to state claims against.
-/

/-! ## A109825.P16365222397421681209

`A109411(n)+a(n-1)` with `a(0)=1`
-/

namespace A109825.P16365222397421681209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109411 n + a (n - 1)

end

end A109825.P16365222397421681209

/-! ## A109825.P7947854303523998975

`∑[A109411(abs(1-n)+1)]`
-/

namespace A109825.P7947854303523998975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109411 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109825.P7947854303523998975

/-! ## A109825.P17598826812977868623

`A109824(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A109825.P17598826812977868623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109824 (a (n - 1)).toNat + a (n - 1)

end

end A109825.P17598826812977868623

/-! ## A109825.P13017124820845042401

`∑[A109411(A028310(n))]-2`
-/

namespace A109825.P13017124820845042401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109411 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A109825.P13017124820845042401

/-! ## A109825.P16117510736126345774

`∪[A090945(n+1), A109826(n+1)+1]`
-/

namespace A109825.P16117510736126345774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109826 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109825.P16117510736126345774

/-! ## A109825.P17996849659427914351

`∪[A109826(n+1)+1, A109836(n+1)]`
-/

namespace A109825.P17996849659427914351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109826 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109825.P17996849659427914351

/-! ## A109825.P6456925123112715512

`A109411(n)-a(n-1)*A057428(n)` with `a(0)=1`
-/

namespace A109825.P6456925123112715512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109411 n - a (n - 1) * A057428 n

end

end A109825.P6456925123112715512

/-! ## A109825.P2675750898231476716

`∑[A109411(n+1)]+1-A109411(n+1)`
-/

namespace A109825.P2675750898231476716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A109411 (n + 1))

end

end A109825.P2675750898231476716

/-! ## A109825.P12446331400766388320

`∑[A109411(A028310(n))%A001060(n)]`
-/

namespace A109825.P12446331400766388320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109411 (A028310 n).toNat) (A001060 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109825.P12446331400766388320

/-!
# A109826: Final terms of groups in the partition of the sequence of natural numbers A109411.

The programs for A109826, there is no canonical definition to state claims against.
-/

/-! ## A109826.P8396778831512536111

`∑[A109411(n+1)]`
-/

namespace A109826.P8396778831512536111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109826.P8396778831512536111

/-! ## A109826.P3234511777779238809

`A109825(n+2)-1`
-/

namespace A109826.P3234511777779238809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (n + 2) - 1

end

end A109826.P3234511777779238809

/-! ## A109826.P15697083270694756784

`∑[abs(Δ[A109825(n+1)])]`
-/

namespace A109826.P15697083270694756784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109826.P15697083270694756784

/-! ## A109826.P7934843999202176268

`∑[Δ[A109825(C(n+1, n))]%53]`
-/

namespace A109826.P7934843999202176268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (Nat.choose (n + 1) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 53

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109826.P7934843999202176268

/-! ## A109826.P8872701081731433631

`-∑[-Δ[A109825(-xor(n, -1))]]`
-/

namespace A109826.P8872701081731433631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (-Int.xor (n : ℤ) (-1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109826.P8872701081731433631

/-! ## A109826.P2897491477325347631

`A109824(a(n-1)+1)+a(n-1)` with `a(0)=3`
-/

namespace A109826.P2897491477325347631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A109824 (a (n - 1) + 1).toNat + a (n - 1)

end

end A109826.P2897491477325347631

/-! ## A109826.P5673753868572189506

`A023443(A109825(n+2))`
-/

namespace A109826.P5673753868572189506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A109825 (n + 2)).toNat

end

end A109826.P5673753868572189506

/-! ## A109826.P10493999678636394270

`∑[A001222(2^Δ[A109825(n+1)])]`
-/

namespace A109826.P10493999678636394270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109826.P10493999678636394270

/-! ## A109826.P10587242712478750071

`∑[∑{d}[Δ[A109825(n+1)], A000010(#)]]`
-/

namespace A109826.P10587242712478750071
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000010 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109826.P10587242712478750071

/-! ## A109826.P3960949368508404342

`∑[Δ[A109825(n+1)]%A018252(n+3)]`
-/

namespace A109826.P3960949368508404342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A018252 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109826.P3960949368508404342

/-!
# A109827: Numbers written in an alternating binary-then-ternary base.

The programs for A109827, the canonical program `A109827.P12387632523332649026` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109827 has offset 0).

The definition of A109827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109827.P12387632523332649026

`A007089(A037472(3*n)/3)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A109827

/-- `A007089(A037472(3*n)/3)` -/
def P12387632523332649026.Spec : Prop :=
  ∀ n, P12387632523332649026.a n = A109827 n

theorem P12387632523332649026.correct : P12387632523332649026.Spec := by
  intro n
  simp only [A109827]

end A109827

/-! ## A109827.P11714710210445866860

`A007089(eq[n, A004488(A004519(n))])`
-/

namespace A109827.P11714710210445866860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A004519 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109827.P11714710210445866860

namespace A109827

/-- `A007089(eq[n, A004488(A004519(n))])` -/
def P11714710210445866860.Spec : Prop :=
  ∀ n, P11714710210445866860.a n = A109827 n

end A109827

/-! ## A109827.P1056924681500565472

`record[A007089(n*A039966(A105186(n)))]`
-/

namespace A109827.P1056924681500565472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 ((n : ℤ) * A039966 (A105186 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109827.P1056924681500565472

namespace A109827

/-- `record[A007089(n*A039966(A105186(n)))]` -/
def P1056924681500565472.Spec : Prop :=
  ∀ n, P1056924681500565472.a n = A109827 n

end A109827

/-! ## A109827.P4993954040112985296

`A007089(eq[A117966(n), A316823(n)])`
-/

namespace A109827.P4993954040112985296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109827.P4993954040112985296

namespace A109827

/-- `A007089(eq[A117966(n), A316823(n)])` -/
def P4993954040112985296.Spec : Prop :=
  ∀ n, P4993954040112985296.a n = A109827 n

end A109827

/-! ## A109827.P1746453522329680424

`A007089(eq[A316823(n)+n, A004488(n)])`
-/

namespace A109827.P1746453522329680424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109827.P1746453522329680424

namespace A109827

/-- `A007089(eq[A316823(n)+n, A004488(n)])` -/
def P1746453522329680424.Spec : Prop :=
  ∀ n, P1746453522329680424.a n = A109827 n

end A109827

/-! ## A109827.P15873963735039799210

`A007089(eq[n, A004488(n)-A316823(n)])`
-/

namespace A109827.P15873963735039799210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n - A316823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109827.P15873963735039799210

namespace A109827

/-- `A007089(eq[n, A004488(n)-A316823(n)])` -/
def P15873963735039799210.Spec : Prop :=
  ∀ n, P15873963735039799210.a n = A109827 n

end A109827

/-! ## A109827.P941003031640807481

`A007089(eq[n-3/2*A300222(n), A316823(n)])`
-/

namespace A109827.P941003031640807481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (3 : ℚ) / 2 * (A300222 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A109827.P941003031640807481

namespace A109827

/-- `A007089(eq[n-3/2*A300222(n), A316823(n)])` -/
def P941003031640807481.Spec : Prop :=
  ∀ n, P941003031640807481.a n = A109827 n

end A109827

/-! ## A109827.P15185972928075804415

`A007089(eq[(A244042(3*n)-n)/2, A316823(n)])`
-/

namespace A109827.P15185972928075804415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244042 (3 * n) - (n : ℤ) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A109827.P15185972928075804415

namespace A109827

/-- `A007089(eq[(A244042(3*n)-n)/2, A316823(n)])` -/
def P15185972928075804415.Spec : Prop :=
  ∀ n, P15185972928075804415.a n = A109827 n

end A109827

/-!
# A109829: Number of distinct prime factors of 149 - (n-th prime power less than 149).

The programs for A109829, there is no canonical definition to state claims against.
-/

/-! ## A109829.P5644365872388581601

`A282162(A172148(n+1)%A118185(n))`
-/

namespace A109829.P5644365872388581601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 (Int.tmod (A172148 (n + 1)) (A118185 n)).toNat

end

end A109829.P5644365872388581601

/-! ## A109829.P5762999912516121796

`A331282(A275266(n+1))+2`
-/

namespace A109829.P5762999912516121796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (A275266 (n + 1)).toNat + 2

end

end A109829.P5762999912516121796

/-!
# A109830: Palindromic primes with both the number of digits and the digit sum also palindromic primes.

The programs for A109830, there is no canonical definition to state claims against.
-/

/-! ## A109830.P10915982850380178413

`A222116(n+5)%A061724(n+2)`
-/

namespace A109830.P10915982850380178413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222116 (n + 5)) (A061724 (n + 2))

end

end A109830.P10915982850380178413

/-! ## A109830.P12397524629688938894

`∩[A222116(n+1), A069217(n+6)]`
-/

namespace A109830.P12397524629688938894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 6)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109830.P12397524629688938894

/-! ## A109830.P3767634839039091654

`A222116(n+5)+A000007(A000032(n))`
-/

namespace A109830.P3767634839039091654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222116 (n + 5) + A000007 (A000032 n).toNat

end

end A109830.P3767634839039091654

/-! ## A109830.P15907573020322923590

`A222116(n+5)+A079978(A322190(3*n+1))`
-/

namespace A109830.P15907573020322923590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222116 (n + 5) + A079978 (A322190 (3 * n + 1)).toNat

end

end A109830.P15907573020322923590

/-! ## A109830.P7209325444941992279

`A222116(n+5)^A020513(A057925(n+4))`
-/

namespace A109830.P7209325444941992279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222116 (n + 5) : ℚ) ^ (A020513 (A057925 (n + 4)).toNat : ℤ)

end

end A109830.P7209325444941992279

/-!
# A109831: Greatest number of primes < prime(n) forming an arithmetic progression such that also prime(n) is a term.

The programs for A109831, there is no canonical definition to state claims against.
-/

/-! ## A109831.P6987744993329628743

`A373888(n+2)-1`
-/

namespace A109831.P6987744993329628743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373888 (n + 2) - 1

end

end A109831.P6987744993329628743

/-! ## A109831.P14333874363308175618

`A376109(A065091(n+1))-1`
-/

namespace A109831.P14333874363308175618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A065091 (n + 1)).toNat - 1

end

end A109831.P14333874363308175618

/-! ## A109831.P4425708484570341515

`A376109(A000040(n+2))-1`
-/

namespace A109831.P4425708484570341515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A000040 (n + 2)).toNat - 1

end

end A109831.P4425708484570341515

/-! ## A109831.P9216880140178188567

`A376109(A006005(n+2))-1`
-/

namespace A109831.P9216880140178188567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376109 (A006005 (n + 2)).toNat - 1

end

end A109831.P9216880140178188567

/-! ## A109831.P1355626886223380517

`(A000040(n+2)-A109833(n+2))/A109832(n+2)`
-/

namespace A109831.P1355626886223380517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - A109833 (n + 2) : ℚ) / (A109832 (n + 2) : ℚ)

end

end A109831.P1355626886223380517

/-!
# A109832: Number d such that (A109833(n)+k*d: 0<=k<=A109831(n)) is an arithmetic progression of primes.

The programs for A109832, there is no canonical definition to state claims against.
-/

/-! ## A109832.P14044809469395385890

`(A000040(n+2)-A109833(n+2))/A109831(n+2)`
-/

namespace A109832.P14044809469395385890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - A109833 (n + 2) : ℚ) / (A109831 (n + 2) : ℚ)

end

end A109832.P14044809469395385890

/-!
# A109833: Smallest prime starting an arithmetic progression meeting also prime(n) and having a maximal number of terms less than prime(n).

The programs for A109833, there is no canonical definition to state claims against.
-/

/-! ## A109833.P209800118814729893

`A000040(n+2)-A109831(n+2)*A109832(n+2)`
-/

namespace A109833.P209800118814729893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A109831 (n + 2) * A109832 (n + 2)

end

end A109833.P209800118814729893

/-!
# A109834: Startorial numbers: product of initial digits of integers 1 through n.

The programs for A109834, the canonical program `A109834.P6817855908879848063` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109834 has offset 1).

The definition of A109834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109834.P6817855908879848063

`∏[A000030(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109834

/-- `∏[A000030(n+1)]` -/
def P6817855908879848063.Spec : Prop :=
  ∀ n, P6817855908879848063.a n = A109834 (n + 1)

theorem P6817855908879848063.correct : P6817855908879848063.Spec := by
  intro n
  simp only [A109834, Nat.add_sub_cancel]

end A109834

/-! ## A109834.P2132503024092005173

`∏[A004086(n+1)%10]`
-/

namespace A109834.P2132503024092005173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P2132503024092005173

namespace A109834

/-- `∏[A004086(n+1)%10]` -/
def P2132503024092005173.Spec : Prop :=
  ∀ n, P2132503024092005173.a n = A109834 (n + 1)

end A109834

/-! ## A109834.P5611600910010371621

`∏[A056142(n+1)%10]`
-/

namespace A109834.P5611600910010371621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056142 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P5611600910010371621

namespace A109834

/-- `∏[A056142(n+1)%10]` -/
def P5611600910010371621.Spec : Prop :=
  ∀ n, P5611600910010371621.a n = A109834 (n + 1)

end A109834

/-! ## A109834.P10618970285709791905

`∏[∑[Δ[A000030(n)]%34]]`
-/

namespace A109834.P10618970285709791905
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (n + 1) - f3 n) 34

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P10618970285709791905

namespace A109834

/-- `∏[∑[Δ[A000030(n)]%34]]` -/
def P10618970285709791905.Spec : Prop :=
  ∀ n, P10618970285709791905.a n = A109834 (n + 1)

end A109834

/-! ## A109834.P17825050119324289948

`∏[A000796(A014777(n+1))]`
-/

namespace A109834.P17825050119324289948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A014777 (n + 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P17825050119324289948

namespace A109834

/-- `∏[A000796(A014777(n+1))]` -/
def P17825050119324289948.Spec : Prop :=
  ∀ n, P17825050119324289948.a n = A109834 (n + 1)

end A109834

/-! ## A109834.P12121290848113231194

`∏[A002993(A018851(n+1))]`
-/

namespace A109834.P12121290848113231194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (A018851 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P12121290848113231194

namespace A109834

/-- `∏[A002993(A018851(n+1))]` -/
def P12121290848113231194.Spec : Prop :=
  ∀ n, P12121290848113231194.a n = A109834 (n + 1)

end A109834

/-! ## A109834.P509790884358078045

`∏[A002994(A018852(n+1))]`
-/

namespace A109834.P509790884358078045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 (A018852 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P509790884358078045

namespace A109834

/-- `∏[A002994(A018852(n+1))]` -/
def P509790884358078045.Spec : Prop :=
  ∀ n, P509790884358078045.a n = A109834 (n + 1)

end A109834

/-! ## A109834.P7956329282344509594

`∏[A008905(A018799(n+1))]`
-/

namespace A109834.P7956329282344509594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 (A018799 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P7956329282344509594

namespace A109834

/-- `∏[A008905(A018799(n+1))]` -/
def P7956329282344509594.Spec : Prop :=
  ∀ n, P7956329282344509594.a n = A109834 (n + 1)

end A109834

/-! ## A109834.P7080517488913145828

`∏[A008952(A018856(n+1))]`
-/

namespace A109834.P7080517488913145828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (A018856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P7080517488913145828

namespace A109834

/-- `∏[A008952(A018856(n+1))]` -/
def P7080517488913145828.Spec : Prop :=
  ∀ n, P7080517488913145828.a n = A109834 (n + 1)

end A109834

/-! ## A109834.P5090492569140190663

`∏[A008963(A020344(n+1))]`
-/

namespace A109834.P5090492569140190663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 (A020344 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P5090492569140190663

namespace A109834

/-- `∏[A008963(A020344(n+1))]` -/
def P5090492569140190663.Spec : Prop :=
  ∀ n, P5090492569140190663.a n = A109834 (n + 1)

end A109834

/-! ## A109834.P9292275779759482847

`∏[A002994(A030669(n+1))]`
-/

namespace A109834.P9292275779759482847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 (A030669 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P9292275779759482847

namespace A109834

/-- `∏[A002994(A030669(n+1))]` -/
def P9292275779759482847.Spec : Prop :=
  ∀ n, P9292275779759482847.a n = A109834 (n + 1)

end A109834

/-! ## A109834.P13955243579810272313

`∏[A007376(A031297(n+1))]`
-/

namespace A109834.P13955243579810272313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A031297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P13955243579810272313

namespace A109834

/-- `∏[A007376(A031297(n+1))]` -/
def P13955243579810272313.Spec : Prop :=
  ∀ n, P13955243579810272313.a n = A109834 (n + 1)

end A109834

/-! ## A109834.P18290721402241904381

`∏[A031298(A031309(n+1))]`
-/

namespace A109834.P18290721402241904381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (A031309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P18290721402241904381

namespace A109834

/-- `∏[A031298(A031309(n+1))]` -/
def P18290721402241904381.Spec : Prop :=
  ∀ n, P18290721402241904381.a n = A109834 (n + 1)

end A109834

/-! ## A109834.P10549553231226423717

`∏[A031312(A031323(n+1))]`
-/

namespace A109834.P10549553231226423717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A031323 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P10549553231226423717

namespace A109834

/-- `∏[A031312(A031323(n+1))]` -/
def P10549553231226423717.Spec : Prop :=
  ∀ n, P10549553231226423717.a n = A109834 (n + 1)

end A109834

/-! ## A109834.P11602473504478201685

`∏[A023961(A034057(n+1))]`
-/

namespace A109834.P11602473504478201685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A034057 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P11602473504478201685

namespace A109834

/-- `∏[A023961(A034057(n+1))]` -/
def P11602473504478201685.Spec : Prop :=
  ∀ n, P11602473504478201685.a n = A109834 (n + 1)

end A109834

/-! ## A109834.P16286666105525936170

`∏[dr(A087052(n+1))]`
-/

namespace A109834.P16286666105525936170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A087052 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P16286666105525936170

namespace A109834

/-- `∏[dr(A087052(n+1))]` -/
def P16286666105525936170.Spec : Prop :=
  ∀ n, (P16286666105525936170.a n : ℤ) = A109834 (n + 1)

end A109834

/-! ## A109834.P18027606727566316921

`∏[dr(A087121(n+1))]`
-/

namespace A109834.P18027606727566316921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A087121 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P18027606727566316921

namespace A109834

/-- `∏[dr(A087121(n+1))]` -/
def P18027606727566316921.Spec : Prop :=
  ∀ n, (P18027606727566316921.a n : ℤ) = A109834 (n + 1)

end A109834

/-!
# A109835: Primes connected to two primes by the (p+1)/2 and 2p-1 operators.

The programs for A109835, there is no canonical definition to state claims against.
-/

/-! ## A109835.P2704647594964083617

`floor(root(A231815(n+1), 3))`
-/

namespace A109835.P2704647594964083617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A231815 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A109835.P2704647594964083617

/-! ## A109835.P45055657759576205

`2*A057326(n+1)-1`
-/

namespace A109835.P45055657759576205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057326 (n + 1) - 1

end

end A109835.P45055657759576205

/-! ## A109835.P10415956469063582875

`p?[2*A157978(n+1)-1]`
-/

namespace A109835.P10415956469063582875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157978 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109835.P10415956469063582875

/-! ## A109835.P8731464547688760173

`2*p?[A123998(n+1)+1]-1`
-/

namespace A109835.P8731464547688760173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A109835.P8731464547688760173

/-! ## A109835.P5836235256794487559

`2*p?[ceil(A077068(n+1)/4)]-1`
-/

namespace A109835.P5836235256794487559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077068 (n + 1) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A109835.P5836235256794487559

/-!
# A109841: a(n) is the minimal j >= n such that the sum of consecutive integers from n to j is a palindrome.

The programs for A109841, there is no canonical definition to state claims against.
-/

/-! ## A109841.P12336603204792760529

`A109842(n+1)+n`
-/

namespace A109841.P12336603204792760529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109842 (n + 1) + (n : ℤ)

end

end A109841.P12336603204792760529

/-! ## A109841.P2793125873873848588

`A093621(A068044(n))+n`
-/

namespace A109841.P2793125873873848588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093621 (A068044 n).toNat + (n : ℤ)

end

end A109841.P2793125873873848588

/-! ## A109841.P7236292886370327081

`A173304(A024506(n))+n`
-/

namespace A109841.P7236292886370327081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173304 (A024506 n).toNat + (n : ℤ)

end

end A109841.P7236292886370327081

/-! ## A109841.P15146690111727901115

`A133721(A104978(n))+n`
-/

namespace A109841.P15146690111727901115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133721 (A104978 n).toNat + (n : ℤ)

end

end A109841.P15146690111727901115

/-! ## A109841.P13568622459638185359

`A098093(A144084(n))+n`
-/

namespace A109841.P13568622459638185359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098093 (A144084 n).toNat + (n : ℤ)

end

end A109841.P13568622459638185359

/-!
# A109842: Number of consecutive integers starting with n needed to sum to a palindrome.

The programs for A109842, there is no canonical definition to state claims against.
-/

/-! ## A109842.P5954070752164224182

`A109841(n+1)-n`
-/

namespace A109842.P5954070752164224182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109841 (n + 1) - (n : ℤ)

end

end A109842.P5954070752164224182

/-! ## A109842.P1934009837710653108

`A093621(A068044(n))`
-/

namespace A109842.P1934009837710653108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093621 (A068044 n).toNat

end

end A109842.P1934009837710653108

/-! ## A109842.P10209337470205883755

`A173304(A024506(n))`
-/

namespace A109842.P10209337470205883755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173304 (A024506 n).toNat

end

end A109842.P10209337470205883755

/-! ## A109842.P2657543752649589879

`A133721(A104978(n))`
-/

namespace A109842.P2657543752649589879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133721 (A104978 n).toNat

end

end A109842.P2657543752649589879

/-! ## A109842.P6234619695371360398

`A098093(A144084(n))`
-/

namespace A109842.P6234619695371360398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098093 (A144084 n).toNat

end

end A109842.P6234619695371360398

/-!
# A109844: a(1) = 1, a(2) = 2, next terms up to a(2n-1) are obtained by multiplying previous terms a(n-1) by n+1, a(n-2) by n+2 etc. a(2) by (2n-2) and a(1) by 2n-1. On similar lines a(2n) = 2n*a(2n-2), a(2n+1) = (2n+1)*a(2n-1) and so on.

The programs for A109844, there is no canonical definition to state claims against.
-/

/-! ## A109844.P1133672560532900640

`(n+1)*a(n-A152423(n))` with `a(0)=1`
-/

namespace A109844.P1133672560532900640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a ((n : ℤ) - A152423 n).toNat

end

end A109844.P1133672560532900640

/-! ## A109844.P16329447326239179663

`(n+1)*a(A004755(n)%n)` with `a(0)=1`
-/

namespace A109844.P16329447326239179663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (Int.tmod (A004755 n) (n : ℤ)).toNat

end

end A109844.P16329447326239179663

/-! ## A109844.P5425995030888295043

`(n+1)*a(A062383(n)%n)` with `a(0)=1`
-/

namespace A109844.P5425995030888295043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (Int.tmod (A062383 n) (n : ℤ)).toNat

end

end A109844.P5425995030888295043

/-! ## A109844.P10401536832088663947

`(n+1)*a(A080079(n)%n)` with `a(0)=1`
-/

namespace A109844.P10401536832088663947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (Int.tmod (A080079 n) (n : ℤ)).toNat

end

end A109844.P10401536832088663947

/-! ## A109844.P3311733341907323100

`(n+1)*a(A062383(n-1)-n)` with `a(0)=1`
-/

namespace A109844.P3311733341907323100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A062383 (n - 1) - (n : ℤ)).toNat

end

end A109844.P3311733341907323100

/-!
# A109845: a(1) = 2; a(2n) = least common multiple of all previous terms + 1. a(2n+1) = least common multiple of all previous terms - 1.

The programs for A109845, there is no canonical definition to state claims against.
-/

/-! ## A109845.P6022071203646209890

`A109173(n+1)+A000007(n)`
-/

namespace A109845.P6022071203646209890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109173 (n + 1) + A000007 n

end

end A109845.P6022071203646209890

/-! ## A109845.P15593397431319903554

`A109173(n+1)+A055641(n)`
-/

namespace A109845.P15593397431319903554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109173 (n + 1) + A055641 n

end

end A109845.P15593397431319903554

/-! ## A109845.P16237113454161326148

`A109173(n+1)+A109151(n)`
-/

namespace A109845.P16237113454161326148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109173 (n + 1) + A109151 n

end

end A109845.P16237113454161326148

/-! ## A109845.P12929367943502880969

`A243745(n)+A109173(n+1)`
-/

namespace A109845.P12929367943502880969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243745 (n + 10) + A109173 (n + 1)

end

end A109845.P12929367943502880969

/-! ## A109845.P8680596531043846624

`A321936(n)+A109173(n+1)`
-/

namespace A109845.P8680596531043846624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 n + A109173 (n + 1)

end

end A109845.P8680596531043846624

/-!
# A109846: Absolute difference between n and its 9's complement.

The programs for A109846, the canonical program `A109846.P3996046989395157132` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109846 has offset 0).

The definition of A109846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109846.P3996046989395157132

`abs(n-(∏{digits}[n, floor(#/10)+10]-(n+1)))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109846

/-- `abs(n-(∏{digits}[n, floor(#/10)+10]-(n+1)))` -/
def P3996046989395157132.Spec : Prop :=
  ∀ n, P3996046989395157132.a n = A109846 n

theorem P3996046989395157132.correct : P3996046989395157132.Spec := by
  intro n
  simp only [A109846]

end A109846

/-! ## A109846.P4779419609523393214

`abs(∏{digits}[n, (-(-1)^#)^#+9]-(n+1)-n)`
-/

namespace A109846.P4779419609523393214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (-((-1) ^ x)) ^ x + 9).prod - (n + 1 : ℤ) - (n : ℤ)|

end

end A109846.P4779419609523393214

namespace A109846

/-- `abs(∏{digits}[n, (-(-1)^#)^#+9]-(n+1)-n)` -/
def P4779419609523393214.Spec : Prop :=
  ∀ n, P4779419609523393214.a n = A109846 n

end A109846

/-! ## A109846.P16027521783312310116

`lcm(1-and(2, n), ∏{digits}[n, (-(-1)^#)^#+9]-(n+1)-n)`
-/

namespace A109846.P16027521783312310116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (-((-1) ^ x)) ^ x + 9).prod - (n + 1 : ℤ) - (n : ℤ))

end

end A109846.P16027521783312310116

namespace A109846

/-- `lcm(1-and(2, n), ∏{digits}[n, (-(-1)^#)^#+9]-(n+1)-n)` -/
def P16027521783312310116.Spec : Prop :=
  ∀ n, (P16027521783312310116.a n : ℤ) = A109846 n

end A109846

/-! ## A109846.P1788492969012972076

`abs(n-A061601(n))`
-/

namespace A109846.P1788492969012972076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A061601 n|

end

end A109846.P1788492969012972076

namespace A109846

/-- `abs(n-A061601(n))` -/
def P1788492969012972076.Spec : Prop :=
  ∀ n, P1788492969012972076.a n = A109846 n

end A109846

/-! ## A109846.P8115578374930466925

`abs(10^A055642(n)-Δ[n²])`
-/

namespace A109846.P8115578374930466925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(10 : ℚ) ^ (A055642 n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)|

end

end A109846.P8115578374930466925

namespace A109846

/-- `abs(10^A055642(n)-Δ[n²])` -/
def P8115578374930466925.Spec : Prop :=
  ∀ n, P8115578374930466925.a n = (A109846 n : ℚ)

end A109846

/-! ## A109846.P10117049692930207425

`abs(2*n-A111708(n)/(n+1))`
-/

namespace A109846.P10117049692930207425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℚ) - (A111708 n : ℚ) / (n + 1 : ℚ)|

end

end A109846.P10117049692930207425

namespace A109846

/-- `abs(2*n-A111708(n)/(n+1))` -/
def P10117049692930207425.Spec : Prop :=
  ∀ n, P10117049692930207425.a n = (A109846 n : ℚ)

end A109846

/-! ## A109846.P5649946299949640706

`∑{d}[n-A061601(n), A000010(#)]`
-/

namespace A109846.P5649946299949640706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A061601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A109846.P5649946299949640706

namespace A109846

/-- `∑{d}[n-A061601(n), A000010(#)]` -/
def P5649946299949640706.Spec : Prop :=
  ∀ n, P5649946299949640706.a n = A109846 n

end A109846

/-! ## A109846.P1645888687372142098

`gcd(n-A061601(n), A008683(4*(2*n+1)))`
-/

namespace A109846.P1645888687372142098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A061601 n) (A008683 (4 * (2 * n + 1)))

end

end A109846.P1645888687372142098

namespace A109846

/-- `gcd(n-A061601(n), A008683(4*(2*n+1)))` -/
def P1645888687372142098.Spec : Prop :=
  ∀ n, (P1645888687372142098.a n : ℤ) = A109846 n

end A109846

/-!
# A109847: Least common multiple of n and its 9's complement.

The programs for A109847, the canonical program `A109847.P355230552138122519` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109847 has offset 1).

The definition of A109847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109847.P355230552138122519

`lcm(n+1, A061601(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109847

/-- `lcm(n+1, A061601(n+1))` -/
def P355230552138122519.Spec : Prop :=
  ∀ n, (P355230552138122519.a n : ℤ) = A109847 (n + 1)

theorem P355230552138122519.correct : P355230552138122519.Spec := by
  intro n
  simp only [A109847, Nat.add_sub_cancel]

end A109847

/-! ## A109847.P1771988780839688875

`A061601(n+1)*A172500(n+1)`
-/

namespace A109847.P1771988780839688875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (n + 1) * A172500 (n + 1)

end

end A109847.P1771988780839688875

namespace A109847

/-- `A061601(n+1)*A172500(n+1)` -/
def P1771988780839688875.Spec : Prop :=
  ∀ n, P1771988780839688875.a n = A109847 (n + 1)

end A109847

/-! ## A109847.P6669042887320620824

`A084021(n+1)/A109848(n+1)`
-/

namespace A109847.P6669042887320620824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084021 (n + 1) : ℚ) / (A109848 (n + 1) : ℚ)

end

end A109847.P6669042887320620824

namespace A109847

/-- `A084021(n+1)/A109848(n+1)` -/
def P6669042887320620824.Spec : Prop :=
  ∀ n, P6669042887320620824.a n = (A109847 (n + 1) : ℚ)

end A109847

/-! ## A109847.P687625585258174953

`(A089186(n+1)-1)*A172500(n+1)`
-/

namespace A109847.P687625585258174953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089186 (n + 1) - 1) * A172500 (n + 1)

end

end A109847.P687625585258174953

namespace A109847

/-- `(A089186(n+1)-1)*A172500(n+1)` -/
def P687625585258174953.Spec : Prop :=
  ∀ n, P687625585258174953.a n = A109847 (n + 1)

end A109847

/-! ## A109847.P17374680707996643634

`lcm(1-A089186(n+1), A000027(n+1))`
-/

namespace A109847.P17374680707996643634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A089186 (n + 1)) (A000027 (n + 1))

end

end A109847.P17374680707996643634

namespace A109847

/-- `lcm(1-A089186(n+1), A000027(n+1))` -/
def P17374680707996643634.Spec : Prop :=
  ∀ n, (P17374680707996643634.a n : ℤ) = A109847 (n + 1)

end A109847

/-! ## A109847.P9127237328007115262

`(n+1)*(A172502(n+1)-A172500(n+1))`
-/

namespace A109847.P9127237328007115262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A172502 (n + 1) - A172500 (n + 1))

end

end A109847.P9127237328007115262

namespace A109847

/-- `(n+1)*(A172502(n+1)-A172500(n+1))` -/
def P9127237328007115262.Spec : Prop :=
  ∀ n, P9127237328007115262.a n = A109847 (n + 1)

end A109847

/-! ## A109847.P5763445309505065994

`lcm(A000027(n+1), A023443(A089186(n+1)))`
-/

namespace A109847.P5763445309505065994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A023443 (A089186 (n + 1)).toNat)

end

end A109847.P5763445309505065994

namespace A109847

/-- `lcm(A000027(n+1), A023443(A089186(n+1)))` -/
def P5763445309505065994.Spec : Prop :=
  ∀ n, (P5763445309505065994.a n : ℤ) = A109847 (n + 1)

end A109847

/-! ## A109847.P18354792238840298562

`lcm(A061601(A131732(2*n)), A131732(2*n))`
-/

namespace A109847.P18354792238840298562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061601 (A131732 (2 * n)).toNat) (A131732 (2 * n))

end

end A109847.P18354792238840298562

namespace A109847

/-- `lcm(A061601(A131732(2*n)), A131732(2*n))` -/
def P18354792238840298562.Spec : Prop :=
  ∀ n, (P18354792238840298562.a n : ℤ) = A109847 (n + 1)

end A109847

/-!
# A109848: Highest common factor of n and its 9's complement.

The programs for A109848, the canonical program `A109848.P3242327494572458418` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109848 has offset 1).

The definition of A109848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109848.P5520141801553944992

`(n+1)/A172500(n+1)`
-/

namespace A109848.P5520141801553944992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A172500 (n + 1) : ℚ)

end

end A109848.P5520141801553944992

namespace A109848

/-- `(n+1)/A172500(n+1)` -/
def P5520141801553944992.Spec : Prop :=
  ∀ n, P5520141801553944992.a n = (A109848 (n + 1) : ℚ)

end A109848

/-! ## A109848.P3242327494572458418

`gcd(n+1, A061601(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109848

/-- `gcd(n+1, A061601(n+1))` -/
def P3242327494572458418.Spec : Prop :=
  ∀ n, (P3242327494572458418.a n : ℤ) = A109848 (n + 1)

theorem P3242327494572458418.correct : P3242327494572458418.Spec := by
  intro n
  simp only [A109848, Nat.add_sub_cancel]

end A109848

/-! ## A109848.P9457947667120985239

`gcd(A127421(n+1)-n, ∑[n])`
-/

namespace A109848.P9457947667120985239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127421 (n + 1) - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A109848.P9457947667120985239

namespace A109848

/-- `gcd(A127421(n+1)-n, ∑[n])` -/
def P9457947667120985239.Spec : Prop :=
  ∀ n, (P9457947667120985239.a n : ℤ) = A109848 (n + 1)

end A109848

/-! ## A109848.P9327139734830407515

`gcd(n+1, A024000(A061601(n)))`
-/

namespace A109848.P9327139734830407515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A024000 (A061601 n).toNat)

end

end A109848.P9327139734830407515

namespace A109848

/-- `gcd(n+1, A024000(A061601(n)))` -/
def P9327139734830407515.Spec : Prop :=
  ∀ n, (P9327139734830407515.a n : ℤ) = A109848 (n + 1)

end A109848

/-! ## A109848.P15860226755580918365

`gcd(n-A127421(n+1), A002378(n))`
-/

namespace A109848.P15860226755580918365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A127421 (n + 1)) (A002378 n)

end

end A109848.P15860226755580918365

namespace A109848

/-- `gcd(n-A127421(n+1), A002378(n))` -/
def P15860226755580918365.Spec : Prop :=
  ∀ n, (P15860226755580918365.a n : ℤ) = A109848 (n + 1)

end A109848

/-! ## A109848.P3270799233531578786

`floor(A020338(n+1)/A172503(n+1))`
-/

namespace A109848.P3270799233531578786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020338 (n + 1) : ℚ) / (A172503 (n + 1) : ℚ)⌋

end

end A109848.P3270799233531578786

namespace A109848

/-- `floor(A020338(n+1)/A172503(n+1))` -/
def P3270799233531578786.Spec : Prop :=
  ∀ n, P3270799233531578786.a n = A109848 (n + 1)

end A109848

/-! ## A109848.P13087032871516048889

`gcd(A000027(n+1), A111708(n+1))`
-/

namespace A109848.P13087032871516048889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A111708 (n + 1))

end

end A109848.P13087032871516048889

namespace A109848

/-- `gcd(A000027(n+1), A111708(n+1))` -/
def P13087032871516048889.Spec : Prop :=
  ∀ n, (P13087032871516048889.a n : ℤ) = A109848 (n + 1)

end A109848

/-! ## A109848.P5474462249048940152

`gcd(A000265(n+1), A172502(A233583(n+1)))`
-/

namespace A109848.P5474462249048940152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (n + 1)) (A172502 (A233583 (n + 1)).toNat)

end

end A109848.P5474462249048940152

namespace A109848

/-- `gcd(A000265(n+1), A172502(A233583(n+1)))` -/
def P5474462249048940152.Spec : Prop :=
  ∀ n, (P5474462249048940152.a n : ℤ) = A109848 (n + 1)

end A109848

/-! ## A109848.P6162160644185697788

`gcd(A165854(A327937(n+1)²), A327937(n+1))`
-/

namespace A109848.P6162160644185697788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165854 (A327937 (n + 1) ^ 2).toNat) (A327937 (n + 1))

end

end A109848.P6162160644185697788

namespace A109848

/-- `gcd(A165854(A327937(n+1)²), A327937(n+1))` -/
def P6162160644185697788.Spec : Prop :=
  ∀ n, (P6162160644185697788.a n : ℤ) = A109848 (n + 1)

end A109848

/-! ## A109848.P6655944195194834177

`gcd(A103160(n+1), A132740(n+1))`
-/

namespace A109848.P6655944195194834177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103160 (n + 1)) (A132740 (n + 1))

end

end A109848.P6655944195194834177

namespace A109848

/-- `gcd(A103160(n+1), A132740(n+1))` -/
def P6655944195194834177.Spec : Prop :=
  ∀ n, (P6655944195194834177.a n : ℤ) = A109848 (n + 1)

end A109848

/-!
# A109849: a(1) = 1, a(2) = 2; a(n) = lcm(n, a(n-2)), a(n+1) = lcm((n+1), a(n-3)) and so on until a(2n-1) = lcm(2n-1, a(1)). Then a(2n) = lcm(2n, a(2n-2)) and so on.

The programs for A109849, the canonical program `A109849.P1288347001958710852` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109849 has offset 1).

The definition of A109849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109849.P1288347001958710852

`lcm(n+1, a(A080079(n-1)-1))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109849

/-- `lcm(n+1, a(A080079(n-1)-1))` -/
def P1288347001958710852.Spec : Prop :=
  ∀ n, (P1288347001958710852.a n : ℤ) = A109849 (n + 1)

theorem P1288347001958710852.correct : P1288347001958710852.Spec := by
  intro n
  simp only [A109849, Nat.add_sub_cancel]

end A109849

/-! ## A109849.P8305553994812616947

`lcm(n+1, a(A004755(n)%n))` with `a(0)=1`
-/

namespace A109849.P8305553994812616947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (n + 1) (a (Int.tmod (A004755 n) (n : ℤ)).toNat)

end

end A109849.P8305553994812616947

namespace A109849

/-- `lcm(n+1, a(A004755(n)%n))` -/
def P8305553994812616947.Spec : Prop :=
  ∀ n, (P8305553994812616947.a n : ℤ) = A109849 (n + 1)

end A109849

/-! ## A109849.P15661692514177595037

`(n+1)*A336498(A025222(n+1))`
-/

namespace A109849.P15661692514177595037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A336498 (A025222 (n + 1)).toNat

end

end A109849.P15661692514177595037

namespace A109849

/-- `(n+1)*A336498(A025222(n+1))` -/
def P15661692514177595037.Spec : Prop :=
  ∀ n, P15661692514177595037.a n = A109849 (n + 1)

end A109849

/-! ## A109849.P17914880458269891135

`gcd(A109844(A064446(n+1)), A109935(n+1))`
-/

namespace A109849.P17914880458269891135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109844 (A064446 (n + 1)).toNat) (A109935 (n + 1))

end

end A109849.P17914880458269891135

namespace A109849

/-- `gcd(A109844(A064446(n+1)), A109935(n+1))` -/
def P17914880458269891135.Spec : Prop :=
  ∀ n, (P17914880458269891135.a n : ℤ) = A109849 (n + 1)

end A109849

/-! ## A109849.P4536848764987371873

`gcd((n+1)*(n+3)², A167976((n+1)*∏{p}[n+1, #-1]))`
-/

namespace A109849.P4536848764987371873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) * (n + 3) ^ 2 : ℤ) (A167976 ((n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1))).toNat)

end

end A109849.P4536848764987371873

namespace A109849

/-- `gcd((n+1)*(n+3)², A167976((n+1)*∏{p}[n+1, #-1]))` -/
def P4536848764987371873.Spec : Prop :=
  ∀ n, (P4536848764987371873.a n : ℤ) = A109849 (n + 1)

end A109849

/-!
# A109850: Numbers n such that a(A109849(n)) = n.

The programs for A109850, there is no canonical definition to state claims against.
-/

/-! ## A109850.P3796954881126064257

`eq[n+1, A109849(n+1)]+1`
-/

namespace A109850.P3796954881126064257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A109850.P3796954881126064257

/-! ## A109850.P585163587834437654

`record[A005843(n+1)-A109849(n+1)]`
-/

namespace A109850.P585163587834437654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - A109849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109850.P585163587834437654

/-! ## A109850.P7273392550914788014

`record[A004275(n+2)-A109849(n+1)]`
-/

namespace A109850.P7273392550914788014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 2) - A109849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109850.P7273392550914788014

/-! ## A109850.P195575159925247664

`record[A000290(n+1)/A109849(n+1)]`
-/

namespace A109850.P195575159925247664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (n + 1) : ℚ) / (A109849 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109850.P195575159925247664

/-!
# A109851: a(1) = 1, a(2) = 2; for n > 2, sum of absolute differences of all combinations of pairs of previous terms.

The programs for A109851, there is no canonical definition to state claims against.
-/

/-! ## A109851.P18264673244616007078

`∑[n*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=1, a(4)=2`
-/

namespace A109851.P18264673244616007078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, 1, 2] fun n f1 =>
  (n : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109851.P18264673244616007078

/-! ## A109851.P5978805049412775229

`A123108(∑[a(n-1)/n^(-1)])` with `a(0)=3, a(1)=1, a(2)=-1, a(3)=1`
-/

namespace A109851.P5978805049412775229
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 1, -1, 1] fun n f1 =>
  f1 (n - 1) / (n : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A109851.P5978805049412775229

/-! ## A109851.P7202450592933372754

`A123108(∑[n*a((2*n)%(n+1))])` with `a(0)=3, a(1)=1, a(2)=-1, a(3)=1`
-/

namespace A109851.P7202450592933372754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, -1, 1] fun n f1 =>
  (n : ℤ) * f1 (2 * n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109851.P7202450592933372754

/-! ## A109851.P17738908836362082012

`A285869(∑[ceil(A000142(n)/6)])`
-/

namespace A109851.P17738908836362082012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000142 n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109851.P17738908836362082012

/-!
# A109853: a(n) = A109852(2^n).

The programs for A109853, the canonical program `A109853.P12908094918149047788` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109853 has offset 0).

The definition of A109853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109853.P12410844942282160920

`A067126(2*n+1)-char[1]`
-/

namespace A109853.P12410844942282160920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (2 * n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A109853.P12410844942282160920

namespace A109853

/-- `A067126(2*n+1)-char[1]` -/
def P12410844942282160920.Spec : Prop :=
  ∀ n, P12410844942282160920.a n = A109853 n

end A109853

/-! ## A109853.P16859869442860541959

`A067126(A140139(n+1))`
-/

namespace A109853.P16859869442860541959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (A140139 (n + 1)).toNat

end

end A109853.P16859869442860541959

namespace A109853

/-- `A067126(A140139(n+1))` -/
def P16859869442860541959.Spec : Prop :=
  ∀ n, P16859869442860541959.a n = A109853 n

end A109853

/-! ## A109853.P18412477786658538898

`A067126(A163985(n+1))`
-/

namespace A109853.P18412477786658538898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (A163985 (n + 1)).toNat

end

end A109853.P18412477786658538898

namespace A109853

/-- `A067126(A163985(n+1))` -/
def P18412477786658538898.Spec : Prop :=
  ∀ n, P18412477786658538898.a n = A109853 n

end A109853

/-! ## A109853.P15777924940607499463

`A238526(A004277(n))+A020639(A000010(n+1))`
-/

namespace A109853.P15777924940607499463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (A004277 n).toNat + A020639 (A000010 (n + 1)).toNat

end

end A109853.P15777924940607499463

namespace A109853

/-- `A238526(A004277(n))+A020639(A000010(n+1))` -/
def P15777924940607499463.Spec : Prop :=
  ∀ n, P15777924940607499463.a n = A109853 n

end A109853

/-! ## A109853.P12908094918149047788

`A238526(A004277(n))+A006530(A060594(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A109853

/-- `A238526(A004277(n))+A006530(A060594(n+1))` -/
def P12908094918149047788.Spec : Prop :=
  ∀ n, P12908094918149047788.a n = A109853 n

theorem P12908094918149047788.correct : P12908094918149047788.Spec := by
  intro n
  simp only [A109853]

end A109853

/-! ## A109853.P15891385168371558698

`A238526(A004277(n))+A001221(A074845(n+2))`
-/

namespace A109853.P15891385168371558698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (A004277 n).toNat + A001221 (A074845 (n + 2)).toNat

end

end A109853.P15891385168371558698

namespace A109853

/-- `A238526(A004277(n))+A001221(A074845(n+2))` -/
def P15891385168371558698.Spec : Prop :=
  ∀ n, P15891385168371558698.a n = A109853 n

end A109853

/-! ## A109853.P17760152993243607649

`A112276(A112276(a(n-1)))` with `a(0)=1, a(1)=2, a(2)=5, a(3)=9`
-/

namespace A109853.P17760152993243607649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 9] fun n a =>
  A112276 (A112276 (a (n - 1)).toNat).toNat

end

end A109853.P17760152993243607649

namespace A109853

/-- `A112276(A112276(a(n-1)))` -/
def P17760152993243607649.Spec : Prop :=
  ∀ n, P17760152993243607649.a n = A109853 n

end A109853

/-! ## A109853.P17196851021990846051

`A238526(A004277(n))+A009205(A257244(n+1))`
-/

namespace A109853.P17196851021990846051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (A004277 n).toNat + A009205 (A257244 (n + 1)).toNat

end

end A109853.P17196851021990846051

namespace A109853

/-- `A238526(A004277(n))+A009205(A257244(n+1))` -/
def P17196851021990846051.Spec : Prop :=
  ∀ n, P17196851021990846051.a n = A109853 n

end A109853

/-! ## A109853.P12345409316295618892

`A238526(A004277(n))+A020639(A103505(n))`
-/

namespace A109853.P12345409316295618892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (A004277 n).toNat + A020639 (A103505 n).toNat

end

end A109853.P12345409316295618892

namespace A109853

/-- `A238526(A004277(n))+A020639(A103505(n))` -/
def P12345409316295618892.Spec : Prop :=
  ∀ n, P12345409316295618892.a n = A109853 n

end A109853

/-! ## A109853.P7708390247425326703

`A238526(A004277(n))+A014963(A094269(n+1))`
-/

namespace A109853.P7708390247425326703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (A004277 n).toNat + A014963 (A094269 (n + 1)).toNat

end

end A109853.P7708390247425326703

namespace A109853

/-- `A238526(A004277(n))+A014963(A094269(n+1))` -/
def P7708390247425326703.Spec : Prop :=
  ∀ n, P7708390247425326703.a n = A109853 n

end A109853

/-!
# A109855: Concatenation of the terms gives natural numbers in sequence such that N-th partial concatenation is a multiple of n.

The programs for A109855, there is no canonical definition to state claims against.
-/

/-! ## A109855.P3886767847433902411

`A053067(a(n-2)+1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A109855.P3886767847433902411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A053067 (a (n - 2) + 1).toNat

end

end A109855.P3886767847433902411

/-!
# A109857: Next 2*n - 1 odd numbers in decreasing order followed by next 2*n even numbers in decreasing order.

The programs for A109857, the canonical program `A109857.P6846885640526743165` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109857 has offset 1).

The definition of A109857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109857.P11697435731138092156

`floor((3*(∑[char[∑[n]]]²-n)-n)/2)`
-/

namespace A109857.P11697435731138092156
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)) - (n : ℤ) : ℚ) / 2⌋

end

end A109857.P11697435731138092156

namespace A109857

/-- `floor((3*(∑[char[∑[n]]]²-n)-n)/2)` -/
def P11697435731138092156.Spec : Prop :=
  ∀ n, P11697435731138092156.a n = A109857 (n + 1)

end A109857

/-! ## A109857.P10143147184142881749

`A032528(∑[char[∑[n]]])-2*n`
-/

namespace A109857.P10143147184142881749
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 (∑ j ∈ Finset.range (n + 1), f1 j) - (2 * n : ℤ)

end

end A109857.P10143147184142881749

namespace A109857

/-- `A032528(∑[char[∑[n]]])-2*n` -/
def P10143147184142881749.Spec : Prop :=
  ∀ n, P10143147184142881749.a n = A109857 (n + 1)

end A109857

/-! ## A109857.P6846885640526743165

`A074147(n+1)+2*A114327(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A109857

/-- `A074147(n+1)+2*A114327(n)` -/
def P6846885640526743165.Spec : Prop :=
  ∀ n, P6846885640526743165.a n = A109857 (n + 1)

theorem P6846885640526743165.correct : P6846885640526743165.Spec := by
  intro n
  simp only [A109857, Nat.add_sub_cancel]

end A109857

/-! ## A109857.P9276361704766186647

`A074147(∑[char[∑[n]]]²-n)`
-/

namespace A109857.P9276361704766186647
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074147 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A109857.P9276361704766186647

namespace A109857

/-- `A074147(∑[char[∑[n]]]²-n)` -/
def P9276361704766186647.Spec : Prop :=
  ∀ n, P9276361704766186647.a n = A109857 (n + 1)

end A109857

/-! ## A109857.P12315465152691408519

`A116941(∑[2*n]%comp[∑[n]])+1`
-/

namespace A109857.P12315465152691408519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116941 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + 1

end

end A109857.P12315465152691408519

namespace A109857

/-- `A116941(∑[2*n]%comp[∑[n]])+1` -/
def P12315465152691408519.Spec : Prop :=
  ∀ n, P12315465152691408519.a n = A109857 (n + 1)

end A109857

/-! ## A109857.P13763329840216946604

`A116941(A061579(n))+1`
-/

namespace A109857.P13763329840216946604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116941 (A061579 n).toNat + 1

end

end A109857.P13763329840216946604

namespace A109857

/-- `A116941(A061579(n))+1` -/
def P13763329840216946604.Spec : Prop :=
  ∀ n, P13763329840216946604.a n = A109857 (n + 1)

end A109857

/-! ## A109857.P5019444481119608150

`A032766(∑[char[∑[n]]]²)-2*n`
-/

namespace A109857.P5019444481119608150
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) - (2 * n : ℤ)

end

end A109857.P5019444481119608150

namespace A109857

/-- `A032766(∑[char[∑[n]]]²)-2*n` -/
def P5019444481119608150.Spec : Prop :=
  ∀ n, P5019444481119608150.a n = A109857 (n + 1)

end A109857

/-! ## A109857.P6076824888920566967

`A130482(∑[char[∑[n]]]²)-2*n`
-/

namespace A109857.P6076824888920566967
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) - (2 * n : ℤ)

end

end A109857.P6076824888920566967

namespace A109857

/-- `A130482(∑[char[∑[n]]]²)-2*n` -/
def P6076824888920566967.Spec : Prop :=
  ∀ n, P6076824888920566967.a n = A109857 (n + 1)

end A109857

/-!
# A109858: The n-th row of the following array contains all palindromes, with at most n digits, with digit sum n. Sequence contains the array by rows.

The programs for A109858, there is no canonical definition to state claims against.
-/

/-! ## A109858.P11088575301286809356

`A258055(A164302(n+2))%A007300(A019360(n+3))`
-/

namespace A109858.P11088575301286809356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258055 (A164302 (n + 2)).toNat) (A007300 (A019360 (n + 3)).toNat)

end

end A109858.P11088575301286809356

/-!
# A109859: Number of terms of A109858 with digit sum n.

The programs for A109859, there is no canonical definition to state claims against.
-/

/-! ## A109859.P15190332465836601615

`A336675(A062399(A000035(n)+n))`
-/

namespace A109859.P15190332465836601615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 (A062399 (A000035 n + (n : ℤ)).toNat).toNat

end

end A109859.P15190332465836601615

/-! ## A109859.P1335024991499430493

`A336675(A120126(n)+A000035(n))`
-/

namespace A109859.P1335024991499430493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 (A120126 n + A000035 n).toNat

end

end A109859.P1335024991499430493

/-! ## A109859.P3088442244661961362

`A224514(A062399(n)-A004526(n))`
-/

namespace A109859.P3088442244661961362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224514 (A062399 n - A004526 n).toNat

end

end A109859.P3088442244661961362

/-! ## A109859.P9010329827038108854

`A224514(A120126(n)-A004526(n))`
-/

namespace A109859.P9010329827038108854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224514 (A120126 n - A004526 n).toNat

end

end A109859.P9010329827038108854

/-! ## A109859.P792711855471305852

`A224514(A062399(n)-A111660(n))`
-/

namespace A109859.P792711855471305852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224514 (A062399 n - A111660 n).toNat

end

end A109859.P792711855471305852

/-!
# A109860: Triangle whose n-th row contains the next n numbers relatively prime to n! and not occurring in a previous row. a(1) = 1.

The programs for A109860, there is no canonical definition to state claims against.
-/

/-! ## A109860.P16881527917048459230

`lt[A211932(n+1), n+1]+1`
-/

namespace A109860.P16881527917048459230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211932 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A109860.P16881527917048459230

/-! ## A109860.P10330398986082179053

`lt[A039653(n), A000394(n)]`
-/

namespace A109860.P10330398986082179053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000394 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109860.P10330398986082179053

/-! ## A109860.P5584860030975448562

`lt[A211932(A028310(n)), n]`
-/

namespace A109860.P5584860030975448562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211932 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A109860.P5584860030975448562

/-! ## A109860.P13354358518468902028

`lt[A323774(n)², A336547(3*n+1)]`
-/

namespace A109860.P13354358518468902028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323774 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336547 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109860.P13354358518468902028

/-! ## A109860.P14364989242234835852

`lt[A001065(n+1), A000006(n+1)]+1`
-/

namespace A109860.P14364989242234835852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A109860.P14364989242234835852

/-! ## A109860.P650494014593785900

`lt[A000203(n+1), A102750(n+1)]+1`
-/

namespace A109860.P650494014593785900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A109860.P650494014593785900

/-! ## A109860.P8890037441669392354

`lt[A048691(n+1), A020639(n+1)+1]+1`
-/

namespace A109860.P8890037441669392354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A109860.P8890037441669392354

/-! ## A109860.P6156149859576800152

`lt[(A001065(n+1)+1)², A000040(n+1)]+1`
-/

namespace A109860.P6156149859576800152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A109860.P6156149859576800152

/-! ## A109860.P1919577700892136536

`lt[A000203(n+1), sqrt(A000040(n+1))+n]+1`
-/

namespace A109860.P1919577700892136536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000040 (n + 1) : ℝ) + (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A109860.P1919577700892136536

/-! ## A109860.P5485279147313329904

`lt[sqrt(A057427(n)+(A000203(n+1)-n)^3)-n, 2]+1`
-/

namespace A109860.P5485279147313329904
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A057427 n + (A000203 (n + 1) - (n : ℤ)) ^ 3 : ℝ) - (n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A109860.P5485279147313329904

/-!
# A109861: Composite terms of A109860.

The programs for A109861, there is no canonical definition to state claims against.
-/

/-! ## A109861.P10690744440583611981

`lt[A061600(n), A005950(A107286(n))]`
-/

namespace A109861.P10690744440583611981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005950 (A107286 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109861.P10690744440583611981

/-! ## A109861.P1515041587363973631

`lt[A004788(3*n+1), A107286(n)²]`
-/

namespace A109861.P1515041587363973631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109861.P1515041587363973631

/-! ## A109861.P2568368626386633032

`lt[A257839(3*(n+1)), A103116(A107286(n))]`
-/

namespace A109861.P2568368626386633032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 (A107286 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109861.P2568368626386633032

/-! ## A109861.P2301227547070572071

`A078972(lt[A200570(n+1), A108564(n)])`
-/

namespace A109861.P2301227547070572071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109861.P2301227547070572071

/-!
# A109862: Palindromic primes p such that p's 10's complement is also a prime.

The programs for A109862, there is no canonical definition to state claims against.
-/

/-! ## A109862.P15544055797843836880

`∩[A002113(n+1), A068811(n+1)]`
-/

namespace A109862.P15544055797843836880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109862.P15544055797843836880

/-! ## A109862.P3562236151044710363

`∩[A002385(n+1), A068811(n+1)]`
-/

namespace A109862.P3562236151044710363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109862.P3562236151044710363

/-! ## A109862.P5933133730750345876

`∩[A029950(n+1), A068811(n+1)]`
-/

namespace A109862.P5933133730750345876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109862.P5933133730750345876

/-! ## A109862.P905766805461257310

`∩[A033620(n+1), A068811(n+1)]`
-/

namespace A109862.P905766805461257310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109862.P905766805461257310

/-! ## A109862.P15587136486628924633

`∩[A061917(n+1), A068811(n+1)]`
-/

namespace A109862.P15587136486628924633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109862.P15587136486628924633

/-!
# A109863: Primes arising as the 10's complement of A109862(n).

The programs for A109863, there is no canonical definition to state claims against.
-/

/-! ## A109863.P4946642261991223353

`p?[A160668(A075807(n+1))]`
-/

namespace A109863.P4946642261991223353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (A075807 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109863.P4946642261991223353

/-! ## A109863.P17768456262038009271

`A061601(A109862(n+1))+1`
-/

namespace A109863.P17768456262038009271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A109862 (n + 1)).toNat + 1

end

end A109863.P17768456262038009271

/-! ## A109863.P4245086325580773396

`p?[A061601(A002385(n+1))+1]`
-/

namespace A109863.P4245086325580773396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A002385 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109863.P4245086325580773396

/-! ## A109863.P13162115362017192064

`p?[A061601(A069217(n+1))+1]`
-/

namespace A109863.P13162115362017192064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A069217 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109863.P13162115362017192064

/-!
# A109864: Least palindromic prime beginning with n, or 0 if no such prime exists.

The programs for A109864, there is no canonical definition to state claims against.
-/

/-! ## A109864.P6789650341086891531

`A070244(A070277(n+1))%A005901(A000108(n+1))`
-/

namespace A109864.P6789650341086891531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070244 (A070277 (n + 1)).toNat) (A005901 (A000108 (n + 1)).toNat)

end

end A109864.P6789650341086891531

/-!
# A109866: 9's complement of the digits of the golden ratio phi (A001622): 9.999999999999... - 1.6180339887... = 8.3819660112501051517954131656334...

The programs for A109866, there is no canonical definition to state claims against.
-/

/-! ## A109866.P9175485155542674411

`9-A001622(n)`
-/

namespace A109866.P9175485155542674411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A001622 (n + 1)

end

end A109866.P9175485155542674411

/-! ## A109866.P13374591840820468904

`A132338(abs(1-n))`
-/

namespace A109866.P13374591840820468904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132338 |1 - (n : ℤ)|.toNat

end

end A109866.P13374591840820468904

/-! ## A109866.P9133478690927444760

`9-A094214(abs(1-n))`
-/

namespace A109866.P9133478690927444760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A094214 |1 - (n : ℤ)|.toNat

end

end A109866.P9133478690927444760

/-! ## A109866.P1122176839398824412

`9-(A104457(n)-floor(acot(n)))`
-/

namespace A109866.P1122176839398824412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A104457 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A109866.P1122176839398824412

/-! ## A109866.P5124605805734878356

`A079585(2*A000007(n)+n)`
-/

namespace A109866.P5124605805734878356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 ((2 * A000007 n + (n : ℤ)).toNat + 1)

end

end A109866.P5124605805734878356

/-! ## A109866.P9663321814983719884

`9-(A104457(n)-A000007(n))`
-/

namespace A109866.P9663321814983719884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A104457 (n + 1) - A000007 n)

end

end A109866.P9663321814983719884

/-! ## A109866.P9085418445819414964

`9-gcd(A104457(n), A296184(n))`
-/

namespace A109866.P9085418445819414964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (Int.gcd (A104457 (n + 1)) (A296184 (n + 1)) : ℤ)

end

end A109866.P9085418445819414964

/-! ## A109866.P16235774061856563441

`A019428(A001316(n))*A079585(n)`
-/

namespace A109866.P16235774061856563441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A001316 n).toNat * A079585 (n + 1)

end

end A109866.P16235774061856563441

/-! ## A109866.P5056021053868755455

`A079585(A000007(n)+A000007(n)+n)`
-/

namespace A109866.P5056021053868755455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 ((A000007 n + (A000007 n + (n : ℤ))).toNat + 1)

end

end A109866.P5056021053868755455

/-! ## A109866.P13470271408735747317

`A141044(n+1)*A141044(n+1)*A079585(n)`
-/

namespace A109866.P13470271408735747317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (n + 1) * A141044 (n + 1) * A079585 (n + 1)

end

end A109866.P13470271408735747317

/-! ## A109866.P13548880252063713202

`9-A382130(2*n+1)`
-/

namespace A109866.P13548880252063713202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A382130 (2 * n + 1)

end

end A109866.P13548880252063713202

/-! ## A109866.P9213457073493816059

`A135560(2*n+1)²*A079585(n)`
-/

namespace A109866.P9213457073493816059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (2 * n + 1) ^ 2 * A079585 (n + 1)

end

end A109866.P9213457073493816059

/-! ## A109866.P14103740203211640931

`A019428(A286580(n))*A079585(n)`
-/

namespace A109866.P14103740203211640931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A286580 n).toNat * A079585 (n + 1)

end

end A109866.P14103740203211640931

/-! ## A109866.P15987322741331534187

`9-A104457(n)/A165022(A035337(n))`
-/

namespace A109866.P15987322741331534187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 - (A104457 (n + 1) : ℚ) / (A165022 (A035337 n).toNat : ℚ)

end

end A109866.P15987322741331534187

/-! ## A109866.P5761876912990032641

`A079585(n)^A135560(A014442(n+1))`
-/

namespace A109866.P5761876912990032641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079585 (n + 1) : ℚ) ^ (A135560 (A014442 (n + 1)).toNat : ℤ)

end

end A109866.P5761876912990032641

/-! ## A109866.P14131040128205707385

`A079585(n)*A135560(A014442(n+1)+2)`
-/

namespace A109866.P14131040128205707385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1) * A135560 (A014442 (n + 1) + 2).toNat

end

end A109866.P14131040128205707385

/-! ## A109866.P1576728284451681588

`A079585(A328590(A175144(n²+1)+1)+n)`
-/

namespace A109866.P1576728284451681588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 ((A328590 (A175144 (n ^ 2 + 1) + 1).toNat + (n : ℤ)).toNat + 1)

end

end A109866.P1576728284451681588

/-!
# A109868: Numbers which can be differences of successive palindromes in order of their first occurrence.

The programs for A109868, the canonical program `A109868.P13726583083349366177` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109868 has offset 1).

The definition of A109868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109868.P13726583083349366177

`10*a(n-2)` with `a(0)=1, a(1)=2, a(2)=11, a(3)=10`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109868

/-- `10*a(n-2)` -/
def P13726583083349366177.Spec : Prop :=
  ∀ n, (P13726583083349366177.a n : ℤ) = A109868 (n + 1)

theorem P13726583083349366177.correct : P13726583083349366177.Spec := by
  intro n
  simp only [A109868, Nat.add_sub_cancel]

end A109868

/-! ## A109868.P6319977885267367037

`ogf((-1-2x-x^2+10x^3)/(-1+10x^2))`
-/

namespace A109868.P6319977885267367037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, -10] [1, 0, -10] n

end

end A109868.P6319977885267367037

namespace A109868

/-- `ogf((-1-2x-x^2+10x^3)/(-1+10x^2))` -/
def P6319977885267367037.Spec : Prop :=
  ∀ n, P6319977885267367037.a n = A109868 (n + 1)

end A109868

/-! ## A109868.P3976216564620486305

`a(n-2)+a(n-2)/(1/3)²` with `a(0)=1, a(1)=2, a(2)=11, a(3)=10`
-/

namespace A109868.P3976216564620486305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 11, 10] fun n a =>
  a (n - 2) + a (n - 2) / ((1 : ℚ) / 3) ^ 2

end

end A109868.P3976216564620486305

namespace A109868

/-- `a(n-2)+a(n-2)/(1/3)²` -/
def P3976216564620486305.Spec : Prop :=
  ∀ n, P3976216564620486305.a n = (A109868 (n + 1) : ℚ)

end A109868

/-! ## A109868.P3109087674512361831

`A104459(-xor(n, C(n, n²)-2))`
-/

namespace A109868.P3109087674512361831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (-Int.xor (n : ℤ) ((Nat.choose n (n ^ 2) : ℤ) - 2)).toNat

end

end A109868.P3109087674512361831

namespace A109868

/-- `A104459(-xor(n, C(n, n²)-2))` -/
def P3109087674512361831.Spec : Prop :=
  ∀ n, P3109087674512361831.a n = A109868 (n + 1)

end A109868

/-! ## A109868.P5642989387798690102

`A104459(A114112(n+1))`
-/

namespace A109868.P5642989387798690102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (A114112 (n + 1)).toNat

end

end A109868.P5642989387798690102

namespace A109868

/-- `A104459(A114112(n+1))` -/
def P5642989387798690102.Spec : Prop :=
  ∀ n, P5642989387798690102.a n = A109868 (n + 1)

end A109868

/-!
# A109870: Number of ways a number can be expressed as the arithmetic mean of two palindromes.

The programs for A109870, there is no canonical definition to state claims against.
-/

/-! ## A109870.P15801639781993303635

`A260254(2*(n+1))-Δ[A136687(n)]`
-/

namespace A109870.P15801639781993303635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 (2 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A109870.P15801639781993303635

/-! ## A109870.P11563263044675566187

`A260254(2*(n+1))-A136522(n+1)`
-/

namespace A109870.P11563263044675566187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 (2 * (n + 1)) - A136522 (n + 1)

end

end A109870.P11563263044675566187

/-!
# A109872: Palindromes such that successive difference of terms is also a palindrome.

The programs for A109872, there is no canonical definition to state claims against.
-/

/-! ## A109872.P3503876982044557543

`A062279(A109882(n+2))`
-/

namespace A109872.P3503876982044557543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 (A109882 (n + 2)).toNat

end

end A109872.P3503876982044557543

/-! ## A109872.P16791809612484019100

`record[A331472(A383592(n+1))]`
-/

namespace A109872.P16791809612484019100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A383592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109872.P16791809612484019100

/-! ## A109872.P5559682829658953489

`∩[A032873(n+1), A109882(n+1)]`
-/

namespace A109872.P5559682829658953489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109872.P5559682829658953489

/-! ## A109872.P17287607232179169906

`∩[A032898(n+1), A109882(n+1)]`
-/

namespace A109872.P17287607232179169906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109872.P17287607232179169906

/-! ## A109872.P5937761561162378361

`∩[A033620(n+1), A109882(n+1)]`
-/

namespace A109872.P5937761561162378361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109872.P5937761561162378361

/-!
# A109873: a(n) = product of terms in row n of Pascal's triangle (A001142) divided by n^k, where n^k is the largest power of n dividing it.

The programs for A109873, there is no canonical definition to state claims against.
-/

/-! ## A109873.P4870147795053641381

`A138153(n+1)^A307598(A001844(n))`
-/

namespace A109873.P4870147795053641381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138153 (n + 1) : ℚ) ^ (A307598 (A001844 n).toNat : ℤ)

end

end A109873.P4870147795053641381

/-! ## A109873.P8674213781550565189

`A346068(n+1)%A105049(A346049(3*n))`
-/

namespace A109873.P8674213781550565189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346068 (n + 1)) (A105049 (A346049 (3 * n)).toNat)

end

end A109873.P8674213781550565189

/-!
# A109874: Largest exponent e such that n^e that divides A001142(n).

The programs for A109874, there is no canonical definition to state claims against.
-/

/-! ## A109874.P10185173001154175342

`val(A001142(n+2), n+2)`
-/

namespace A109874.P10185173001154175342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001142 (n + 2)).toNat (n + 2)

end

end A109874.P10185173001154175342

/-! ## A109874.P8997783081648787478

`3-A083399(A203976(n+2))+n`
-/

namespace A109874.P8997783081648787478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A083399 (A203976 (n + 2)).toNat + (n : ℤ)

end

end A109874.P8997783081648787478

/-! ## A109874.P1799054096736983606

`A065855(n+1)+A001222(A108951(n+2))`
-/

namespace A109874.P1799054096736983606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) + A001222 (A108951 (n + 2)).toNat

end

end A109874.P1799054096736983606

/-! ## A109874.P14419427983673590792

`A335884(A000079(n)*A006530(n+2)+1)`
-/

namespace A109874.P14419427983673590792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335884 (A000079 n * A006530 (n + 2) + 1).toNat

end

end A109874.P14419427983673590792

/-! ## A109874.P8327510302932413154

`A070939(A187219(3*n+1))-A252736(n+2)`
-/

namespace A109874.P8327510302932413154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A187219 (3 * n + 1)).toNat - A252736 (n + 2)

end

end A109874.P8327510302932413154

/-!
# A109875: Chen primes p such that their p + 2 counterpart is a golden semiprime.

The programs for A109875, there is no canonical definition to state claims against.
-/

/-! ## A109875.P3069793183976498230

`p?[A108540(n+1)-2]`
-/

namespace A109875.P3069793183976498230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108540 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109875.P3069793183976498230

/-! ## A109875.P647925050931831491

`p?[abs(2-A108540(A028310(n)))]`
-/

namespace A109875.P647925050931831491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A108540 (A028310 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109875.P647925050931831491

/-! ## A109875.P13265774570654313050

`p?[A108541(n+1)*A108542(n+1)-2]`
-/

namespace A109875.P13265774570654313050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108541 (n + 1) * A108542 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109875.P13265774570654313050

/-!
# A109877: Row sums of A109876.

The programs for A109877, there is no canonical definition to state claims against.
-/

/-! ## A109877.P11775184539777113484

`A036234(∑[A117982(n)])`
-/

namespace A109877.P11775184539777113484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109877.P11775184539777113484

/-!
# A109878: Triangle read by rows: see below.

The programs for A109878, there is no canonical definition to state claims against.
-/

/-! ## A109878.P6422180784972593233

`and(A091514(A373814(n+1)), A354796(n))`
-/

namespace A109878.P6422180784972593233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091514 (A373814 (n + 1)).toNat) (A354796 n)

end

end A109878.P6422180784972593233

/-! ## A109878.P2593269625065499196

`A354796(n)%A000005(A322827(3*n+2))`
-/

namespace A109878.P2593269625065499196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354796 n) (A000005 (A322827 (3 * n + 2)).toNat)

end

end A109878.P2593269625065499196

/-!
# A109879: Numbers n such that n and its digit reversal R(n) both are difference of positive cubes.

The programs for A109879, there is no canonical definition to state claims against.
-/

/-! ## A109879.P7544639328365644024

`∏{p}[A109880(n+2)², #]`
-/

namespace A109879.P7544639328365644024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109880 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A109879.P7544639328365644024

/-! ## A109879.P13139839825583035871

`A109880(A100793(n)+1)`
-/

namespace A109879.P13139839825583035871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109880 (A100793 n + 1).toNat

end

end A109879.P13139839825583035871

/-!
# A109880: Numbers k such that k and its digit reversal both are difference of successive cubes.

The programs for A109880, there is no canonical definition to state claims against.
-/

/-! ## A109880.P7102607896408496761

`A109879(n*a(A059592(n)-1))` with `a(0)=1`
-/

namespace A109880.P7102607896408496761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109879 ((n : ℤ) * a (A059592 n - 1).toNat).toNat

end

end A109880.P7102607896408496761

/-! ## A109880.P7451096820992733145

`A003215(lt[A202691(2*n+1), 2])`
-/

namespace A109880.P7451096820992733145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202691 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A109880.P7451096820992733145

/-!
# A109882: Palindromes with either no internal digits or all internal digits are 0.

The programs for A109882, there is no canonical definition to state claims against.
-/

/-! ## A109882.P6431738919118196452

`A262038(eq[A000030(n), A004086(n)])`
-/

namespace A109882.P6431738919118196452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109882.P6431738919118196452

/-! ## A109882.P8578883535082350794

`A262038(eq[A000030(n), A004185(n)])`
-/

namespace A109882.P8578883535082350794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109882.P8578883535082350794

/-! ## A109882.P18182033359640426590

`A262038(eq[A000030(n), A331472(n)])`
-/

namespace A109882.P18182033359640426590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109882.P18182033359640426590

/-! ## A109882.P1761160097456778950

`A262038(lt[A035930(n), 1])`
-/

namespace A109882.P1761160097456778950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A109882.P1761160097456778950

/-! ## A109882.P3084304273693722716

`A109872(A028310(n))%A320922(2*n+1)`
-/

namespace A109882.P3084304273693722716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109872 (A028310 n).toNat) (A320922 (2 * n + 1))

end

end A109882.P3084304273693722716

/-!
# A109883: Start subtracting from n its divisors beginning from 1 until one reaches a number smaller than the last divisor subtracted or reaches the last nontrivial divisor < n. Define this to be the perfect deficiency of n. Then a(n) = perfect deficiency of n.

The programs for A109883, there is no canonical definition to state claims against.
-/

/-! ## A109883.P11894977554230131785

`n+1-A117552(n+1)`
-/

namespace A109883.P11894977554230131785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A117552 (n + 1)

end

end A109883.P11894977554230131785

/-! ## A109883.P4670241245063234497

`A024000(A117552(n+1))+n`
-/

namespace A109883.P4670241245063234497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A117552 (n + 1)).toNat + (n : ℤ)

end

end A109883.P4670241245063234497

/-! ## A109883.P18343804642256885119

`A005408(n)%(A117552(n+1)+n)`
-/

namespace A109883.P18343804642256885119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) (A117552 (n + 1) + (n : ℤ))

end

end A109883.P18343804642256885119

/-! ## A109883.P13123220259207026376

`(n*A117552(n+1))%A125746(n+1)`
-/

namespace A109883.P13123220259207026376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A117552 (n + 1)) (A125746 (n + 1))

end

end A109883.P13123220259207026376

/-! ## A109883.P6058267019835843652

`(A117552(n+1)*A322675(n))%(n+1)`
-/

namespace A109883.P6058267019835843652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117552 (n + 1) * A322675 n) (n + 1 : ℤ)

end

end A109883.P6058267019835843652

/-! ## A109883.P418940756320087101

`(n*A117553(n+1))%A125746(n+1)`
-/

namespace A109883.P418940756320087101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A117553 (n + 1)) (A125746 (n + 1))

end

end A109883.P418940756320087101

/-!
# A109884: Indices k of members of A109883 such that A109883(k) is a divisor of k. Also k is a term if A109883(k) = 0.

The programs for A109884, there is no canonical definition to state claims against.
-/

/-! ## A109884.P6873102259874791498

`∑[A001227(A096778(A322131(n)))]`
-/

namespace A109884.P6873102259874791498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A096778 (A322131 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109884.P6873102259874791498

/-! ## A109884.P16269332274680864554

`eq[A001222(n+1), A022300(A328027(2*n+1))]`
-/

namespace A109884.P16269332274680864554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 (A328027 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109884.P16269332274680864554

/-! ## A109884.P16757001877891983829

`∑[A001227(∑[A026133(n)])]`
-/

namespace A109884.P16757001877891983829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026133 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109884.P16757001877891983829

/-! ## A109884.P8632718496576139849

`∑[A245575(A358582(n+1))]`
-/

namespace A109884.P8632718496576139849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245575 (A358582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109884.P8632718496576139849

/-! ## A109884.P16639086044170389049

`record[A053833(A003972(n+1))]`
-/

namespace A109884.P16639086044170389049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053833 (A003972 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109884.P16639086044170389049

/-!
# A109885: Let n be an even integer > 2. Let PrimeP be the number of prime partition pairs {p,q} corresponding to n such that n = p + q, p and q are prime and p <= q. Let CompP be the number of composite partition pairs {r,s} corresponding to n such that n = r + s, r is prime, s is composite and r <= s. For what n's is 2*PrimeP > CompP?

The programs for A109885, there is no canonical definition to state claims against.
-/

/-! ## A109885.P16703426765158697288

`lt[A056172(n+1), 2*A061358(n)]`
-/

namespace A109885.P16703426765158697288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109885.P16703426765158697288

/-! ## A109885.P4781093899128631226

`lt[A004526(A056172(n+1)), A061358(n)]`
-/

namespace A109885.P4781093899128631226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A056172 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109885.P4781093899128631226

/-! ## A109885.P869854760138544384

`lt[A107631(n+1), A027379(A061358(n))]`
-/

namespace A109885.P869854760138544384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (A061358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109885.P869854760138544384

/-!
# A109888: Sequence with properties that a(1)=1, no prime appears in the sequence or the first differences and all other integers exactly once (in sequence or first differences).

The programs for A109888, there is no canonical definition to state claims against.
-/

/-! ## A109888.P6778836754149433343

`∑[A254337(∑[A287378(n)])]`
-/

namespace A109888.P6778836754149433343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254337 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109888.P6778836754149433343

/-! ## A109888.P12170409150358829622

`∑[A254337(A032559(n+1))]`
-/

namespace A109888.P12170409150358829622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254337 (A032559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109888.P12170409150358829622

/-! ## A109888.P7113262615707161576

`∑[A254337(A276142(n+1))]`
-/

namespace A109888.P7113262615707161576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254337 (A276142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109888.P7113262615707161576

/-! ## A109888.P14303089210403989925

`∑[A254337(∑[A276144(n+1)])]`
-/

namespace A109888.P14303089210403989925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276144 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254337 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109888.P14303089210403989925

/-! ## A109888.P1763160907954593655

`∑[A254337(n+1)%A133661(n+2)]`
-/

namespace A109888.P1763160907954593655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254337 (n + 1)) (A133661 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109888.P1763160907954593655

/-!
# A109890: a(1)=1; for n>1, a(n) is the smallest number not already present which is a divisor or a multiple of a(1)+...+a(n-1).

The programs for A109890, there is no canonical definition to state claims against.
-/

/-! ## A109890.P17319501799174273772

`floor(A094339(n+1)+acot(n-1))`
-/

namespace A109890.P17319501799174273772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094339 (n + 1) : ℝ) + SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)⌋

end

end A109890.P17319501799174273772

/-! ## A109890.P16767109923210452603

`A094339(A181440(n+1))`
-/

namespace A109890.P16767109923210452603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (A181440 (n + 1)).toNat

end

end A109890.P16767109923210452603

/-! ## A109890.P4599858227554286217

`A094339(A154955(n+1)+1+n)`
-/

namespace A109890.P4599858227554286217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (A154955 (n + 1) + 1 + (n : ℤ)).toNat

end

end A109890.P4599858227554286217

/-! ## A109890.P11598017408494963462

`A094339(n+1)-A008683(A004166(n))`
-/

namespace A109890.P11598017408494963462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1) - A008683 (A004166 n).toNat

end

end A109890.P11598017408494963462

/-! ## A109890.P5516318684448242750

`A094339(n+1)-A008683(A062383(n))`
-/

namespace A109890.P5516318684448242750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1) - A008683 (A062383 n).toNat

end

end A109890.P5516318684448242750

/-! ## A109890.P6760211715569591820

`A094339(n+1)+n+1-A094339(A109736(n+1))`
-/

namespace A109890.P6760211715569591820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1) + ((n + 1 : ℤ) - A094339 (A109736 (n + 1)).toNat)

end

end A109890.P6760211715569591820

/-! ## A109890.P2848551290998571977

`A094339(n+1)-A008683(A182039(n+1))`
-/

namespace A109890.P2848551290998571977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1) - A008683 (A182039 (n + 1)).toNat

end

end A109890.P2848551290998571977

/-! ## A109890.P1521624937938519557

`A094339(A064839(p?[xor(1, n)]))`
-/

namespace A109890.P1521624937938519557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (A064839 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A109890.P1521624937938519557

/-! ## A109890.P621379283939714766

`A094339(n+1)-A008683(A001316(A153006(n)))`
-/

namespace A109890.P621379283939714766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1) - A008683 (A001316 (A153006 n).toNat).toNat

end

end A109890.P621379283939714766

/-! ## A109890.P18110246131753553441

`A094339(A109736(A094339(n+1)))`
-/

namespace A109890.P18110246131753553441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (A109736 (A094339 (n + 1)).toNat).toNat

end

end A109890.P18110246131753553441

/-! ## A109890.P17844491210492774160

`A094339(n+1)-A008683(A006501(n))`
-/

namespace A109890.P17844491210492774160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1) - A008683 (A006501 n).toNat

end

end A109890.P17844491210492774160

/-!
# A109892: a(n) = least integer of the form (n!+1)(n!+2)...(n!+k)/n!.

The programs for A109892, there is no canonical definition to state claims against.
-/

/-! ## A109892.P9943587546360449661

`C((n+1)!+1+n, n+1)`
-/

namespace A109892.P9943587546360449661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (n + 1) + 1 + n) (n + 1)

end

end A109892.P9943587546360449661

/-! ## A109892.P10771618016492732055

`C(∏[n+1]+1+n, n+1)`
-/

namespace A109892.P10771618016492732055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ j ∈ Finset.range (n + 1), f1 j + 1 + n) (n + 1)

end

end A109892.P10771618016492732055

/-!
# A109895: Group the natural numbers so that every 2n-th group product is divisible by the single number in the next group. (1), (2,3,4,5), (6), (7,8,9,10,11), (12), (13,14,15,16,17,18,19),(20), (21,22,23,24,25,26,27),(28),... Sequence contains the single members of the odd numbered groups.

The programs for A109895, there is no canonical definition to state claims against.
-/

/-! ## A109895.P2594098720995213522

`A332559(a(n-1)+1)` with `a(0)=1`
-/

namespace A109895.P2594098720995213522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332559 (a (n - 1) + 1).toNat

end

end A109895.P2594098720995213522

/-! ## A109895.P3011493286118082884

`A079760(n*a(floor(acot(n))))` with `a(0)=1`
-/

namespace A109895.P3011493286118082884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079760 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat

end

end A109895.P3011493286118082884

/-! ## A109895.P7413820754310601044

`a(n-1)+A109896(n)+1` with `a(0)=1`
-/

namespace A109895.P7413820754310601044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A109896 n + 1)

end

end A109895.P7413820754310601044

/-! ## A109895.P3039512191691277489

`a(n-1)+A061836(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A109895.P3039512191691277489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A061836 (a (n - 1) + 1).toNat + 1)

end

end A109895.P3039512191691277489

/-! ## A109895.P423796961513288195

`A332559(A020725(a(n-1)))` with `a(0)=1`
-/

namespace A109895.P423796961513288195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332559 (A020725 (a (n - 1)).toNat).toNat

end

end A109895.P423796961513288195

/-! ## A109895.P1719034785915498088

`A079760(n*a(A000038(n)))` with `a(0)=1`
-/

namespace A109895.P1719034785915498088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079760 ((n : ℤ) * a (A000038 n).toNat).toNat

end

end A109895.P1719034785915498088

/-! ## A109895.P3235851598480384363

`A079760(n/a(A000038(n)))` with `a(0)=1`
-/

namespace A109895.P3235851598480384363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079760 (SequenceMachineLib.roundAway ((n : ℚ) / (a (A000038 n).toNat : ℚ))).toNat

end

end A109895.P3235851598480384363

/-! ## A109895.P11523504930490422555

`∪[A079760(n+1), A002721(n)]`
-/

namespace A109895.P11523504930490422555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002721 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109895.P11523504930490422555

/-! ## A109895.P3291304126072157009

`∪[A079760(n+1), A008361(n)]`
-/

namespace A109895.P3291304126072157009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008361 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109895.P3291304126072157009

/-! ## A109895.P10265866793098670132

`∪[A079760(n+1), A008378(n)]`
-/

namespace A109895.P10265866793098670132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109895.P10265866793098670132

/-!
# A109896: Group the natural numbers so that every 2n-th group product is divisible by the single number in the next group. (1), (2,3,4,5), (6), (7,8,9,10,11), (12), (13,14,15,16,17,18,19),(20), (21,22,23,24,25,26,27),(28),... Sequence contains the number of terms in the 2n-th group.

The programs for A109896, there is no canonical definition to state claims against.
-/

/-! ## A109896.P6294991630327100719

`Δ[A332559(a(n-1)+1)]-1` with `a(0)=1`
-/

namespace A109896.P6294991630327100719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A332559 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A109896.P6294991630327100719

/-! ## A109896.P4191081254167230468

`Δ[a(n-1)+A061836(a(n-1)+1)+1]-1` with `a(0)=1`
-/

namespace A109896.P4191081254167230468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (A061836 (f1 (n - 1) + 1).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A109896.P4191081254167230468

/-! ## A109896.P10105199198970884548

`A002837(Δ[A332559(a(n-1)+1)])` with `a(0)=1`
-/

namespace A109896.P10105199198970884548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A332559 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (f1 (n + 1) - f1 n).toNat

end

end A109896.P10105199198970884548

/-! ## A109896.P7897081840675546477

`A004830(Δ[A332559(a(n-1)+1)])` with `a(0)=1`
-/

namespace A109896.P7897081840675546477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A332559 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (f1 (n + 1) - f1 n).toNat

end

end A109896.P7897081840675546477

/-! ## A109896.P8344245219929462098

`A023443(Δ[A332559(a(n-1)+1)])` with `a(0)=1`
-/

namespace A109896.P8344245219929462098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A332559 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A109896.P8344245219929462098

/-! ## A109896.P14340852728065812597

`A033619(Δ[A332559(a(n-1)+1)])` with `a(0)=1`
-/

namespace A109896.P14340852728065812597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A332559 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (f1 (n + 1) - f1 n).toNat

end

end A109896.P14340852728065812597

/-! ## A109896.P2578083675848552360

`Δ[A109895(n+1)]-1`
-/

namespace A109896.P2578083675848552360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A109896.P2578083675848552360

/-! ## A109896.P10326784828734952071

`A002837(Δ[A109895(n+1)])`
-/

namespace A109896.P10326784828734952071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (f1 (n + 1) - f1 n).toNat

end

end A109896.P10326784828734952071

/-! ## A109896.P28551211984598010

`A004830(Δ[A109895(n+1)])`
-/

namespace A109896.P28551211984598010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (f1 (n + 1) - f1 n).toNat

end

end A109896.P28551211984598010

/-! ## A109896.P7196822548804618330

`A023443(Δ[A109895(n+1)])`
-/

namespace A109896.P7196822548804618330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A109896.P7196822548804618330

/-!
# A109897: Group the natural numbers so that every 2n-th group product is divisible by the single number in the next group. (1), (2,3,4,5), (6), (7,8,9,10,11), (12), (13,14,15,16,17,18,19),(20), (21,22,23,24,25,26,27),(28),... Sequence contains the product of terms in the 2n-th group.

The programs for A109897, there is no canonical definition to state claims against.
-/

/-! ## A109897.P6128394024208392047

`A079759(n+2)*A079760(n+1)`
-/

namespace A109897.P6128394024208392047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079759 (n + 2) * A079760 (n + 1)

end

end A109897.P6128394024208392047

/-! ## A109897.P3226650019650810784

`A079759(n+2)*A109895(n+2)`
-/

namespace A109897.P3226650019650810784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079759 (n + 2) * A109895 (n + 2)

end

end A109897.P3226650019650810784

/-!
# A109898: a(n) is the least integer of the form (n-2)(n-4)...(n-2k)/n. 0 if no such number exists.

The programs for A109898, there is no canonical definition to state claims against.
-/

/-! ## A109898.P6968159871401603208

`A085393(A041385(n))`
-/

namespace A109898.P6968159871401603208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 (A041385 n).toNat

end

end A109898.P6968159871401603208

/-! ## A109898.P9600641154492704849

`A117395(A098233(n))`
-/

namespace A109898.P9600641154492704849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117395 (A098233 n).toNat

end

end A109898.P9600641154492704849

/-! ## A109898.P10590089850306967631

`A240490(A157109(n))`
-/

namespace A109898.P10590089850306967631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240490 (A157109 n).toNat

end

end A109898.P10590089850306967631

/-! ## A109898.P11795490062132087114

`A370108(A358721(n))`
-/

namespace A109898.P11795490062132087114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370108 (A358721 n).toNat

end

end A109898.P11795490062132087114

/-! ## A109898.P6631422679255794183

`A025876(A271423(n)!)`
-/

namespace A109898.P6631422679255794183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025876 (Nat.factorial (A271423 n).toNat)

end

end A109898.P6631422679255794183

