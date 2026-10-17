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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
# A292900: Triangle read by rows, a generalization of the Bernoulli numbers, the numerators for n>=0 and 0<=k<=n.

The programs for A292900, there is no canonical definition to state claims against.
-/

/-! ## A292900.P1157954889037402092

`A264431(n)-A016389(A113025(n))`
-/

namespace A292900.P1157954889037402092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264431 n - A016389 (A113025 n).toNat

end

end A292900.P1157954889037402092

/-! ## A292900.P13942140012387018078

`A264434(n)-A016389(A113025(n))`
-/

namespace A292900.P13942140012387018078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264434 n - A016389 (A113025 n).toNat

end

end A292900.P13942140012387018078

/-! ## A292900.P11553160589979480727

`A264431(n)-A184964(A001498(n))`
-/

namespace A292900.P11553160589979480727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264431 n - A184964 (A001498 n).toNat

end

end A292900.P11553160589979480727

/-! ## A292900.P5920826322548217054

`A264434(n)-A184964(A001498(n))`
-/

namespace A292900.P5920826322548217054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264434 n - A184964 (A001498 n).toNat

end

end A292900.P5920826322548217054

/-! ## A292900.P14843343975438064935

`A049430(n+1)*A244895(A001006(n))`
-/

namespace A292900.P14843343975438064935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049430 (n + 1) * A244895 (A001006 n).toNat

end

end A292900.P14843343975438064935

/-!
# A292901: Triangle read by rows, a generalization of the Bernoulli numbers, the denominators for n>=0 and 0<=k<=n.

The programs for A292901, there is no canonical definition to state claims against.
-/

/-! ## A292901.P13979964735773846204

`A129116(A262360((n+1)/10^val(n+1, 10)))`
-/

namespace A292901.P13979964735773846204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A262360 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))).toNat).toNat

end

end A292901.P13979964735773846204

/-! ## A292901.P8901027761578793778

`A053829(A002260(n+1)^A160552(n))`
-/

namespace A292901.P8901027761578793778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A160552 n : ℤ))).toNat

end

end A292901.P8901027761578793778

/-! ## A292901.P3394246116297244788

`gcd(A005995(n), A008305(A262360(n+1)))`
-/

namespace A292901.P3394246116297244788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005995 n) (A008305 (A262360 (n + 1)).toNat)

end

end A292901.P3394246116297244788

/-! ## A292901.P11601304374665787398

`gcd(A000010(A248850(n+1)+1), A303868(3*n+1))`
-/

namespace A292901.P11601304374665787398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A248850 (n + 1) + 1).toNat) (A303868 (3 * n + 1))

end

end A292901.P11601304374665787398

/-! ## A292901.P15517948827893544774

`A384922(A322230(n))`
-/

namespace A292901.P15517948827893544774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384922 (A322230 n).toNat

end

end A292901.P15517948827893544774

/-!
# A292906: Number of dihedral Carlitz compositions of n.

The programs for A292906, there is no canonical definition to state claims against.
-/

/-! ## A292906.P5164256280601201325

`(A106369(n+1)+A292200(n+1))/2`
-/

namespace A292906.P5164256280601201325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106369 (n + 1) + A292200 (n + 1) : ℚ) / 2

end

end A292906.P5164256280601201325

/-! ## A292906.P13376149307301457681

`(2*A106369(n+1)+A291941(n+1)+1)/4`
-/

namespace A292906.P13376149307301457681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A106369 (n + 1) + A291941 (n + 1) + 1 : ℚ) / 4

end

end A292906.P13376149307301457681

/-! ## A292906.P2724268607771794000

`A014682(A292200(n+1)+A106369(n+1))`
-/

namespace A292906.P2724268607771794000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A292200 (n + 1) + A106369 (n + 1)).toNat

end

end A292906.P2724268607771794000

/-! ## A292906.P448103066871204314

`A273943(A292200(n+1)+A106369(n+1))`
-/

namespace A292906.P448103066871204314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A292200 (n + 1) + A106369 (n + 1)).toNat

end

end A292906.P448103066871204314

/-! ## A292906.P12717362507883849461

`A014682(A106369(n+1)+ceil(A291941(n+1)/2))`
-/

namespace A292906.P12717362507883849461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A106369 (n + 1) + ⌈(A291941 (n + 1) : ℚ) / 2⌉).toNat

end

end A292906.P12717362507883849461

/-!
# A292907: E.g.f.: exp(x^2 * exp(-x)).

The programs for A292907, there is no canonical definition to state claims against.
-/

/-! ## A292907.P414594009016507705

`(-1)^n*A216507(n)`
-/

namespace A292907.P414594009016507705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A216507 n

end

end A292907.P414594009016507705

/-! ## A292907.P7317745031942280776

`A216507(n)/A033999(n)`
-/

namespace A292907.P7317745031942280776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216507 n : ℚ) / (A033999 n : ℚ)

end

end A292907.P7317745031942280776

/-! ## A292907.P7865521274635956715

`A216507(n)/A062157(n+1)`
-/

namespace A292907.P7865521274635956715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216507 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A292907.P7865521274635956715

/-! ## A292907.P12331653368051805880

`A292973(∑[n+3])`
-/

namespace A292907.P12331653368051805880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292907.P12331653368051805880

/-! ## A292907.P9277254665187830898

`A033999(n)*A292978(∑[n+3])`
-/

namespace A292907.P9277254665187830898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A292978 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292907.P9277254665187830898

/-! ## A292907.P11063803788195120021

`A292978(∑[n+3])/A033999(n+2)`
-/

namespace A292907.P11063803788195120021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292978 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A292907.P11063803788195120021

/-!
# A292908: Expansion of e.g.f. exp(x^3 * exp(-x)).

The programs for A292908, there is no canonical definition to state claims against.
-/

/-! ## A292908.P10438967675376287978

`(-1)^n*A293017(n)`
-/

namespace A292908.P10438967675376287978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A293017 n

end

end A292908.P10438967675376287978

/-! ## A292908.P1714549540881899483

`A293017(n)/A033999(n)`
-/

namespace A292908.P1714549540881899483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293017 n : ℚ) / (A033999 n : ℚ)

end

end A292908.P1714549540881899483

/-! ## A292908.P281493990358705710

`A293017(n)/A057428(n)^n`
-/

namespace A292908.P281493990358705710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293017 n : ℚ) / (A057428 n ^ n : ℚ)

end

end A292908.P281493990358705710

/-! ## A292908.P11430191634661316264

`A293017(n)/A109248(Δ[A004526(n)])`
-/

namespace A292908.P11430191634661316264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293017 n : ℚ) / (A109248 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A292908.P11430191634661316264

/-! ## A292908.P12637656276479772495

`A292973(∑[n+3]+n+3)`
-/

namespace A292908.P12637656276479772495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A292908.P12637656276479772495

/-! ## A292908.P12646069797703640536

`A033999(n)*A293019(∑[n+3]+n+3)`
-/

namespace A292908.P12646069797703640536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293019 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A292908.P12646069797703640536

/-!
# A292909: E.g.f.: exp(1/2! * x^2 * exp(-x)).

The programs for A292909, there is no canonical definition to state claims against.
-/

/-! ## A292909.P9322616060878598885

`(-1)^n*A133189(n)`
-/

namespace A292909.P9322616060878598885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A133189 n

end

end A292909.P9322616060878598885

/-! ## A292909.P5035873085822938304

`A292948(∑[n+3])`
-/

namespace A292909.P5035873085822938304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292909.P5035873085822938304

/-! ## A292909.P7704902447704872070

`A133189(n)/A062157(n+1)`
-/

namespace A292909.P7704902447704872070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133189 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A292909.P7704902447704872070

/-! ## A292909.P1199254731278541614

`A009001(2*n)*A143398(∑[n]+2)`
-/

namespace A292909.P1199254731278541614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A143398 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A292909.P1199254731278541614

/-! ## A292909.P13059226199760353191

`A009001(2*n)*A145460(∑[n+3])`
-/

namespace A292909.P13059226199760353191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A145460 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292909.P13059226199760353191

/-!
# A292910: E.g.f.: exp(1/3! * x^3 * exp(-x)).

The programs for A292910, there is no canonical definition to state claims against.
-/

/-! ## A292910.P5950440365167752072

`A033999(n)*A292954(n)`
-/

namespace A292910.P5950440365167752072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A292954 n

end

end A292910.P5950440365167752072

/-! ## A292910.P9281201817314665663

`A009001(2*n)*A292954(n)`
-/

namespace A292910.P9281201817314665663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A292954 n

end

end A292910.P9281201817314665663

/-! ## A292910.P17842326103116857719

`A292954(n)/A009001(A005843(n))`
-/

namespace A292910.P17842326103116857719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292954 n : ℚ) / (A009001 (A005843 n).toNat : ℚ)

end

end A292910.P17842326103116857719

/-! ## A292910.P9898105702942037647

`A054354(A054353(n+1))*A292954(n)`
-/

namespace A292910.P9898105702942037647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A054353 (n + 1)).toNat * A292954 n

end

end A292910.P9898105702942037647

/-! ## A292910.P4113264454993355986

`A003725(n)/A292952(n)*A292954(n)`
-/

namespace A292910.P4113264454993355986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003725 n : ℚ) / (A292952 n : ℚ) * (A292954 n : ℚ)

end

end A292910.P4113264454993355986

/-! ## A292910.P2434069070689203185

`A292948(∑[n+3]+n+3)`
-/

namespace A292910.P2434069070689203185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A292910.P2434069070689203185

/-!
# A292911: Numbers n such that A291897(n) is divisible by (2*n-1)^3.

The programs for A292911, the canonical program `A292911.P11305991147892736781` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292911 has offset 1).

The definition of A292911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292911.P11305991147892736781

`record[A326584(A072436(2*n+1))-n]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A292911

/-- `record[A326584(A072436(2*n+1))-n]` -/
def P11305991147892736781.Spec : Prop :=
  ∀ n, P11305991147892736781.a n = A292911 (n + 1)

theorem P11305991147892736781.correct : P11305991147892736781.Spec := by
  intro n
  simp only [A292911, Nat.add_sub_cancel]

end A292911

/-! ## A292911.P13414211715711428102

`record[A004525(A072436(A326584(n+1)))]`
-/

namespace A292911.P13414211715711428102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A072436 (A326584 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292911.P13414211715711428102

namespace A292911

/-- `record[A004525(A072436(A326584(n+1)))]` -/
def P13414211715711428102.Spec : Prop :=
  ∀ n, P13414211715711428102.a n = A292911 (n + 1)

end A292911

/-! ## A292911.P1068508230053334332

`record[A110654(A072436(A324050(n+1)))]`
-/

namespace A292911.P1068508230053334332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A072436 (A324050 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292911.P1068508230053334332

namespace A292911

/-- `record[A110654(A072436(A324050(n+1)))]` -/
def P1068508230053334332.Spec : Prop :=
  ∀ n, P1068508230053334332.a n = A292911 (n + 1)

end A292911

/-! ## A292911.P15733621581825735738

`record[A110654(A326584(A072436(n+1)))]`
-/

namespace A292911.P15733621581825735738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A326584 (A072436 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292911.P15733621581825735738

namespace A292911

/-- `record[A110654(A326584(A072436(n+1)))]` -/
def P15733621581825735738.Spec : Prop :=
  ∀ n, P15733621581825735738.a n = A292911 (n + 1)

end A292911

/-! ## A292911.P738777841295269921

`A336467(p?[or(2, 3*n)-1]*A336476(n+1))`
-/

namespace A292911.P738777841295269921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336467 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A336476 (n + 1)).toNat

end

end A292911.P738777841295269921

namespace A292911

/-- `A336467(p?[or(2, 3*n)-1]*A336476(n+1))` -/
def P738777841295269921.Spec : Prop :=
  ∀ n, P738777841295269921.a n = A292911 (n + 1)

end A292911

/-! ## A292911.P14665809067889937611

`record[A028234(A000118(A015919(n+1)))]`
-/

namespace A292911.P14665809067889937611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A000118 (A015919 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292911.P14665809067889937611

namespace A292911

/-- `record[A028234(A000118(A015919(n+1)))]` -/
def P14665809067889937611.Spec : Prop :=
  ∀ n, P14665809067889937611.a n = A292911 (n + 1)

end A292911

/-! ## A292911.P8141121449079365368

`eq[A128060(n), A333599(n)]`
-/

namespace A292911.P8141121449079365368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292911.P8141121449079365368

namespace A292911

/-- `eq[A128060(n), A333599(n)]` -/
def P8141121449079365368.Spec : Prop :=
  ∀ n, (P8141121449079365368.a n : ℤ) = A292911 (n + 1)

end A292911

/-! ## A292911.P11125699273270015081

`A110654(A006530(A002313(n+1)*A005408(n)))`
-/

namespace A292911.P11125699273270015081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A006530 (A002313 (n + 1) * A005408 n).toNat).toNat

end

end A292911.P11125699273270015081

namespace A292911

/-- `A110654(A006530(A002313(n+1)*A005408(n)))` -/
def P11125699273270015081.Spec : Prop :=
  ∀ n, P11125699273270015081.a n = A292911 (n + 1)

end A292911

/-! ## A292911.P6662669734755871085

`eq[A080924(n), A128060(n)]`
-/

namespace A292911.P6662669734755871085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080924 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292911.P6662669734755871085

namespace A292911

/-- `eq[A080924(n), A128060(n)]` -/
def P6662669734755871085.Spec : Prop :=
  ∀ n, (P6662669734755871085.a n : ℤ) = A292911 (n + 1)

end A292911

/-! ## A292911.P7621869636263465402

`eq[A084181(n), A128060(n)]`
-/

namespace A292911.P7621869636263465402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292911.P7621869636263465402

namespace A292911

/-- `eq[A084181(n), A128060(n)]` -/
def P7621869636263465402.Spec : Prop :=
  ∀ n, (P7621869636263465402.a n : ℤ) = A292911 (n + 1)

end A292911

/-!
# A292912: E.g.f.: exp(1/4! * x^4 * exp(-x)).

The programs for A292912, there is no canonical definition to state claims against.
-/

/-! ## A292912.P2417163060224402423

`(-1)^n*A145454(n)`
-/

namespace A292912.P2417163060224402423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A145454 n

end

end A292912.P2417163060224402423

/-! ## A292912.P2223438608044732632

`A145454(n)/A033999(n)`
-/

namespace A292912.P2223438608044732632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145454 n : ℚ) / (A033999 n : ℚ)

end

end A292912.P2223438608044732632

/-! ## A292912.P12678900676261352413

`A292948(A052905(n+2))`
-/

namespace A292912.P12678900676261352413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 (A052905 (n + 2)).toNat

end

end A292912.P12678900676261352413

/-! ## A292912.P10308907367622673499

`A292948(eq[4, A025581(n)])`
-/

namespace A292912.P10308907367622673499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292912.P10308907367622673499

/-! ## A292912.P9652175312793871043

`A292948(eq[9, A099375(n)])`
-/

namespace A292912.P9652175312793871043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292912.P9652175312793871043

/-! ## A292912.P17908388348923029769

`A292948(A056000(n+1)+5)`
-/

namespace A292912.P17908388348923029769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 (A056000 (n + 1) + 5).toNat

end

end A292912.P17908388348923029769

/-! ## A292912.P2074969334376443940

`A292948(A255546(2*(n+3))+2*n+3)`
-/

namespace A292912.P2074969334376443940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 (A255546 (2 * (n + 3)) + (2 * n + 3 : ℤ)).toNat

end

end A292912.P2074969334376443940

/-!
# A292913: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(exp(k*x)-1).

The programs for A292913, there is no canonical definition to state claims against.
-/

/-! ## A292913.P14011557037991038992

`A000110(A002262(n))*A003992(n)`
-/

namespace A292913.P14011557037991038992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002262 n).toNat * A003992 n

end

end A292913.P14011557037991038992

/-! ## A292913.P3047721009551366969

`A003992(n)*A011971(A112367(n))`
-/

namespace A292913.P3047721009551366969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A011971 (A112367 n).toNat

end

end A292913.P3047721009551366969

/-! ## A292913.P6927456802091711540

`A003992(n)*A104725(A059268(n))`
-/

namespace A292913.P6927456802091711540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A104725 (A059268 n).toNat

end

end A292913.P6927456802091711540

/-! ## A292913.P12572424520268074586

`A000110(A191532(n))*A003992(n)`
-/

namespace A292913.P12572424520268074586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A191532 n).toNat * A003992 n

end

end A292913.P12572424520268074586

/-! ## A292913.P17153596415362629365

`A003992(n)*A287214(A245300(n))`
-/

namespace A292913.P17153596415362629365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A287214 (A245300 n).toNat

end

end A292913.P17153596415362629365

/-! ## A292913.P1380907844639351941

`A004248(A061579(n))*A287214(A245300(n))`
-/

namespace A292913.P1380907844639351941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A061579 n).toNat * A287214 (A245300 n).toNat

end

end A292913.P1380907844639351941

/-!
# A292914: a(n) = n! * [x^n] exp(exp(n*x)-1).

The programs for A292914, there is no canonical definition to state claims against.
-/

/-! ## A292914.P12168406316338349538

`n^n*A000110(n)`
-/

namespace A292914.P12168406316338349538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A000110 n

end

end A292914.P12168406316338349538

/-! ## A292914.P11047451092618479958

`abs(A292935(n))*n^n`
-/

namespace A292914.P11047451092618479958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| * (n ^ n : ℤ)

end

end A292914.P11047451092618479958

/-! ## A292914.P17739290345884801209

`n^n*A011971(∑[n])`
-/

namespace A292914.P17739290345884801209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292914.P17739290345884801209

/-! ## A292914.P11469652608162669231

`n^n*A033306(∑[n])`
-/

namespace A292914.P11469652608162669231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A033306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292914.P11469652608162669231

/-! ## A292914.P4237855129312774824

`n^n*A095149(∑[n])`
-/

namespace A292914.P4237855129312774824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292914.P4237855129312774824

/-!
# A292915: Square array A(n, k) read by descending antidiagonals, where column k is the expansion of the e.g.f. exp(k*x)/(2 - exp(x)).

The programs for A292915, there is no canonical definition to state claims against.
-/

/-! ## A292915.P7651206189840575029

`A364274(A271702(n))`
-/

namespace A292915.P7651206189840575029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364274 (A271702 n).toNat

end

end A292915.P7651206189840575029

/-! ## A292915.P3585488035302030707

`A271702(n)+A025469(A006721(n))`
-/

namespace A292915.P3585488035302030707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271702 n + A025469 (A006721 n).toNat

end

end A292915.P3585488035302030707

/-! ## A292915.P14125921988855206580

`A271702(n)+A271584(A271700(n))`
-/

namespace A292915.P14125921988855206580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271702 n + A271584 (A271700 n).toNat

end

end A292915.P14125921988855206580

/-! ## A292915.P10208332672555879059

`A271702(n)+A025469(A278582(n+1))`
-/

namespace A292915.P10208332672555879059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271702 n + A025469 (A278582 (n + 1)).toNat

end

end A292915.P10208332672555879059

/-! ## A292915.P16210430207790322746

`A162344(A271702(n)^A010121(n+2))`
-/

namespace A292915.P16210430207790322746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (SequenceMachineLib.roundAway ((A271702 n : ℚ) ^ (A010121 (n + 2) : ℤ))).toNat

end

end A292915.P16210430207790322746

/-!
# A292916: a(n) = n! * [x^n] exp(n*x)/(2 - exp(x)).

The programs for A292916, there is no canonical definition to state claims against.
-/

/-! ## A292916.P13849629096908964915

`A292915(∑[4*n])`
-/

namespace A292916.P13849629096908964915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292915 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292916.P13849629096908964915

/-! ## A292916.P2747364308782193953

`record[A003982(n)*A292915(n)]`
-/

namespace A292916.P2747364308782193953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A292915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292916.P2747364308782193953

/-! ## A292916.P4130846407837528645

`record[gcd(A037012(n), A292915(n))]`
-/

namespace A292916.P4130846407837528645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A292915 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292916.P4130846407837528645

/-! ## A292916.P16295778636274394824

`A292915(A046092(n))+A256974(n)`
-/

namespace A292916.P16295778636274394824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292915 (A046092 n).toNat + A256974 n

end

end A292916.P16295778636274394824

/-!
# A292917: Numbers n for which the n-th row of A008284 (partitions of n into k parts) has duplicate values > 1.

The programs for A292917, there is no canonical definition to state claims against.
-/

/-! ## A292917.P16556135704828091364

`lt[A325512(n)+2, n]`
-/

namespace A292917.P16556135704828091364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325512 n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A292917.P16556135704828091364

/-! ## A292917.P10198383898485572419

`lt[A022958(n), -A325512(n)]`
-/

namespace A292917.P10198383898485572419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A325512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292917.P10198383898485572419

/-! ## A292917.P14951845761737767418

`lt[A115251(n), A094538(A130121(n+1))]`
-/

namespace A292917.P14951845761737767418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094538 (A130121 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292917.P14951845761737767418

/-! ## A292917.P7707313618565717963

`lt[A067026(n+1), A130095(A130121(n+1))]`
-/

namespace A292917.P7707313618565717963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130095 (A130121 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292917.P7707313618565717963

/-! ## A292917.P3341573318325313628

`lt[A130082(2*n+3), A130134(A130121(n+1))]`
-/

namespace A292917.P3341573318325313628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130134 (A130121 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292917.P3341573318325313628

/-!
# A292918: Let A_n be a square n X n matrix with entries A_n(i,j)=1 if i+j is prime, and A_n(i,j)=0 otherwise. Then a(n) counts the 1's in A_n.

The programs for A292918, the canonical program `A292918.P8931066894349998368` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292918 has offset 1).

The definition of A292918 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071917, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292918.P623463892710661698

`A069879(n+1)+1`
-/

namespace A292918.P623463892710661698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069879 (n + 1) + 1

end

end A292918.P623463892710661698

namespace A292918

/-- `A069879(n+1)+1` -/
def P623463892710661698.Spec : Prop :=
  ∀ n, P623463892710661698.a n = A292918 (n + 1)

end A292918

/-! ## A292918.P8931066894349998368

`2*A071917(n+1)+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A292918

/-- `2*A071917(n+1)+1` -/
def P8931066894349998368.Spec : Prop :=
  ∀ n, P8931066894349998368.a n = A292918 (n + 1)

theorem P8931066894349998368.correct : P8931066894349998368.Spec := by
  intro n
  simp only [A292918, Nat.add_sub_cancel]

end A292918

/-! ## A292918.P16398304682915491509

`∑[2*A060715(n+1)]+1`
-/

namespace A292918.P16398304682915491509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A292918.P16398304682915491509

namespace A292918

/-- `∑[2*A060715(n+1)]+1` -/
def P16398304682915491509.Spec : Prop :=
  ∀ n, P16398304682915491509.a n = A292918 (n + 1)

end A292918

/-! ## A292918.P5154504785144585085

`∑[2*A108954(n+1)]-1`
-/

namespace A292918.P5154504785144585085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A292918.P5154504785144585085

namespace A292918

/-- `∑[2*A108954(n+1)]-1` -/
def P5154504785144585085.Spec : Prop :=
  ∀ n, P5154504785144585085.a n = A292918 (n + 1)

end A292918

/-! ## A292918.P17329203459748845104

`2*∑[A056171(2*(n+1))]-1`
-/

namespace A292918.P17329203459748845104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A292918.P17329203459748845104

namespace A292918

/-- `2*∑[A056171(2*(n+1))]-1` -/
def P17329203459748845104.Spec : Prop :=
  ∀ n, P17329203459748845104.a n = A292918 (n + 1)

end A292918

/-! ## A292918.P8395329916366043579

`∑[A004277(A060715(n+1))]`
-/

namespace A292918.P8395329916366043579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A060715 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292918.P8395329916366043579

namespace A292918

/-- `∑[A004277(A060715(n+1))]` -/
def P8395329916366043579.Spec : Prop :=
  ∀ n, P8395329916366043579.a n = A292918 (n + 1)

end A292918

/-! ## A292918.P11016342220236793673

`∑[A005843(A056171(2*(n+1)))]-1`
-/

namespace A292918.P11016342220236793673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A056171 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A292918.P11016342220236793673

namespace A292918

/-- `∑[A005843(A056171(2*(n+1)))]-1` -/
def P11016342220236793673.Spec : Prop :=
  ∀ n, P11016342220236793673.a n = A292918 (n + 1)

end A292918

/-! ## A292918.P8084698702425383175

`A046992(2*(n+1))-A294013(n+2)`
-/

namespace A292918.P8084698702425383175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (2 * (n + 1)) - A294013 (n + 2)

end

end A292918.P8084698702425383175

namespace A292918

/-- `A046992(2*(n+1))-A294013(n+2)` -/
def P8084698702425383175.Spec : Prop :=
  ∀ n, P8084698702425383175.a n = A292918 (n + 1)

end A292918

/-! ## A292918.P9565753454533549582

`∑[A056171(A014684(2*(n+1)))+A056171(2*(n+1))]`
-/

namespace A292918.P9565753454533549582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A014684 (2 * (n + 1))).toNat + A056171 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292918.P9565753454533549582

namespace A292918

/-- `∑[A056171(A014684(2*(n+1)))+A056171(2*(n+1))]` -/
def P9565753454533549582.Spec : Prop :=
  ∀ n, P9565753454533549582.a n = A292918 (n + 1)

end A292918

/-! ## A292918.P9657956301838934367

`A000265(A071917(n+1)+A071917(n+1)+1)`
-/

namespace A292918.P9657956301838934367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A071917 (n + 1) + (A071917 (n + 1) + 1)).toNat

end

end A292918.P9657956301838934367

namespace A292918

/-- `A000265(A071917(n+1)+A071917(n+1)+1)` -/
def P9657956301838934367.Spec : Prop :=
  ∀ n, P9657956301838934367.a n = A292918 (n + 1)

end A292918

/-! ## A292918.P16886813663963071947

`A005843(A071917(n+1))+1`
-/

namespace A292918.P16886813663963071947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A071917 (n + 1)).toNat + 1

end

end A292918.P16886813663963071947

namespace A292918

/-- `A005843(A071917(n+1))+1` -/
def P16886813663963071947.Spec : Prop :=
  ∀ n, P16886813663963071947.a n = A292918 (n + 1)

end A292918

/-! ## A292918.P5755987234669258864

`A005408(∑[A108954(n+1)]-1)`
-/

namespace A292918.P5755987234669258864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A292918.P5755987234669258864

namespace A292918

/-- `A005408(∑[A108954(n+1)]-1)` -/
def P5755987234669258864.Spec : Prop :=
  ∀ n, P5755987234669258864.a n = A292918 (n + 1)

end A292918

/-! ## A292918.P14863537224439682734

`A004442(A069879(n+1))`
-/

namespace A292918.P14863537224439682734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A069879 (n + 1)).toNat

end

end A292918.P14863537224439682734

namespace A292918

/-- `A004442(A069879(n+1))` -/
def P14863537224439682734.Spec : Prop :=
  ∀ n, P14863537224439682734.a n = A292918 (n + 1)

end A292918

/-!
# A292919: Sum of n-th powers of odd divisors of n.

The programs for A292919, there is no canonical definition to state claims against.
-/

/-! ## A292919.P1614000078832863148

`∑{d}[(n+1)/2^val(n+1, 2), #^(n+1)]`
-/

namespace A292919.P1614000078832863148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ (n + 1)

end

end A292919.P1614000078832863148

/-! ## A292919.P16248630684990943105

`∑{d}[A000265(n+1), #^(n+1)]`
-/

namespace A292919.P16248630684990943105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ (n + 1)

end

end A292919.P16248630684990943105

/-! ## A292919.P11291078655980342006

`∑{d}[A028234(2*(n+1)), #^(n+1)]`
-/

namespace A292919.P11291078655980342006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ (n + 1)

end

end A292919.P11291078655980342006

/-! ## A292919.P16802859140574794857

`∑{d}[n+1, (#*A000035(#))^(n+1)]`
-/

namespace A292919.P16802859140574794857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A000035 d) ^ (n + 1)

end

end A292919.P16802859140574794857

/-! ## A292919.P9199716859415921576

`∑{d}[n+1, (#%A001281(#))^(n+1)]`
-/

namespace A292919.P9199716859415921576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (A001281 d) ^ (n + 1)

end

end A292919.P9199716859415921576

/-! ## A292919.P2072228105927417952

`gcd(A023887(n+1), A321438(n+1))`
-/

namespace A292919.P2072228105927417952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023887 (n + 1)) (A321438 (n + 1))

end

end A292919.P2072228105927417952

/-!
# A292920: a(n) = [x^n] 1/(1 + x/(1 - 2^n*x/(1 + 3^n*x/(1 - 4^n*x/(1 + 5^n*x/(1 - ...)))))), a continued fraction.

The programs for A292920, there is no canonical definition to state claims against.
-/

/-! ## A292920.P4616599579734214582

`A291207(∑[4*n])`
-/

namespace A292920.P4616599579734214582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291207 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292920.P4616599579734214582

/-!
# A292923: Number of maximum independent vertex sets and minimum vertex covers in the n-polygon diagonal intersection graph.

The programs for A292923, there is no canonical definition to state claims against.
-/

/-! ## A292923.P15478079838809424614

`3^A370985(3*a(n-1))` with `a(0)=3, a(1)=2, a(2)=10, a(3)=1`
-/

namespace A292923.P15478079838809424614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 2, 10, 1] fun n a =>
  (3 : ℚ) ^ (A370985 (SequenceMachineLib.roundAway (3 * a (n - 1))).toNat : ℤ)

end

end A292923.P15478079838809424614

/-!
# A292926: a(n) = prime(n)*prime(n+1) + prime(n+2).

The programs for A292926, the canonical program `A292926.P9248577169796954627` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292926 has offset 1).

The definition of A292926 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292926.P9248577169796954627

`A006094(n+1)+A000040(n+3)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A292926

/-- `A006094(n+1)+A000040(n+3)` -/
def P9248577169796954627.Spec : Prop :=
  ∀ n, P9248577169796954627.a n = A292926 (n + 1)

theorem P9248577169796954627.correct : P9248577169796954627.Spec := by
  intro n
  simp only [A292926, Nat.add_sub_cancel]

end A292926

/-! ## A292926.P16424408124772333404

`A037165(n+1)+A034961(n+1)`
-/

namespace A292926.P16424408124772333404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + A034961 (n + 1)

end

end A292926.P16424408124772333404

namespace A292926

/-- `A037165(n+1)+A034961(n+1)` -/
def P16424408124772333404.Spec : Prop :=
  ∀ n, P16424408124772333404.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P7874843534760945080

`A123134(n+1)+A031131(n+1)`
-/

namespace A292926.P7874843534760945080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + A031131 (n + 1)

end

end A292926.P7874843534760945080

namespace A292926

/-- `A123134(n+1)+A031131(n+1)` -/
def P7874843534760945080.Spec : Prop :=
  ∀ n, P7874843534760945080.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P201199477357616192

`A215848(n+1)+A006094(n+1)`
-/

namespace A292926.P201199477357616192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) + A006094 (n + 1)

end

end A292926.P201199477357616192

namespace A292926

/-- `A215848(n+1)+A006094(n+1)` -/
def P201199477357616192.Spec : Prop :=
  ∀ n, P201199477357616192.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P1723536034031092186

`A069486(n+1)-A111071(n+1)`
-/

namespace A292926.P1723536034031092186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069486 (n + 1) - A111071 (n + 1)

end

end A292926.P1723536034031092186

namespace A292926

/-- `A069486(n+1)-A111071(n+1)` -/
def P1723536034031092186.Spec : Prop :=
  ∀ n, P1723536034031092186.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P3832744390653927325

`A126199(n+1)-A096379(n+1)`
-/

namespace A292926.P3832744390653927325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1) - A096379 (n + 1)

end

end A292926.P3832744390653927325

namespace A292926

/-- `A126199(n+1)-A096379(n+1)` -/
def P3832744390653927325.Spec : Prop :=
  ∀ n, P3832744390653927325.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P6744786058131204422

`A111071(n+1)+2*A215848(n+1)`
-/

namespace A292926.P6744786058131204422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111071 (n + 1) + 2 * A215848 (n + 1)

end

end A292926.P6744786058131204422

namespace A292926

/-- `A111071(n+1)+2*A215848(n+1)` -/
def P6744786058131204422.Spec : Prop :=
  ∀ n, P6744786058131204422.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P14701380506754663690

`2*A006094(n+1)-A111071(n+1)`
-/

namespace A292926.P14701380506754663690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006094 (n + 1) - A111071 (n + 1)

end

end A292926.P14701380506754663690

namespace A292926

/-- `2*A006094(n+1)-A111071(n+1)` -/
def P14701380506754663690.Spec : Prop :=
  ∀ n, P14701380506754663690.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P11084003294216345900

`A000040(n+1)+A215848(n+1)+A037166(n+1)`
-/

namespace A292926.P11084003294216345900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A215848 (n + 1) + A037166 (n + 1))

end

end A292926.P11084003294216345900

namespace A292926

/-- `A000040(n+1)+A215848(n+1)+A037166(n+1)` -/
def P11084003294216345900.Spec : Prop :=
  ∀ n, P11084003294216345900.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P11954181039839394770

`A006094(n+1)+A034961(n+1)-A001043(n+1)`
-/

namespace A292926.P11954181039839394770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (A034961 (n + 1) - A001043 (n + 1))

end

end A292926.P11954181039839394770

namespace A292926

/-- `A006094(n+1)+A034961(n+1)-A001043(n+1)` -/
def P11954181039839394770.Spec : Prop :=
  ∀ n, P11954181039839394770.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P14032242294669338161

`A006094(n+1)+A034961(n+1)-A011974(n+2)`
-/

namespace A292926.P14032242294669338161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (A034961 (n + 1) - A011974 (n + 2))

end

end A292926.P14032242294669338161

namespace A292926

/-- `A006094(n+1)+A034961(n+1)-A011974(n+2)` -/
def P14032242294669338161.Spec : Prop :=
  ∀ n, P14032242294669338161.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P4226184569244623264

`A006094(n+1)+A046301(n+1)/A006094(n+1)`
-/

namespace A292926.P4226184569244623264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) : ℚ) + (A046301 (n + 1) : ℚ) / (A006094 (n + 1) : ℚ)

end

end A292926.P4226184569244623264

namespace A292926

/-- `A006094(n+1)+A046301(n+1)/A006094(n+1)` -/
def P4226184569244623264.Spec : Prop :=
  ∀ n, P4226184569244623264.a n = (A292926 (n + 1) : ℚ)

end A292926

/-! ## A292926.P8960124527798397020

`A215848(n+1)+A046301(n+1)/A215848(n+1)`
-/

namespace A292926.P8960124527798397020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215848 (n + 1) : ℚ) + (A046301 (n + 1) : ℚ) / (A215848 (n + 1) : ℚ)

end

end A292926.P8960124527798397020

namespace A292926

/-- `A215848(n+1)+A046301(n+1)/A215848(n+1)` -/
def P8960124527798397020.Spec : Prop :=
  ∀ n, P8960124527798397020.a n = (A292926 (n + 1) : ℚ)

end A292926

/-! ## A292926.P6323760678619272038

`A065091(n+2)+A006094(n+1)`
-/

namespace A292926.P6323760678619272038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) + A006094 (n + 1)

end

end A292926.P6323760678619272038

namespace A292926

/-- `A065091(n+2)+A006094(n+1)` -/
def P6323760678619272038.Spec : Prop :=
  ∀ n, P6323760678619272038.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P4331488310641092214

`A345727(n+2)-A109805(n+1)`
-/

namespace A292926.P4331488310641092214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345727 (n + 2) - A109805 (n + 1)

end

end A292926.P4331488310641092214

namespace A292926

/-- `A345727(n+2)-A109805(n+1)` -/
def P4331488310641092214.Spec : Prop :=
  ∀ n, P4331488310641092214.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P1118573774057027133

`A123134(n+1)+Δ[A001043(n+1)]`
-/

namespace A292926.P1118573774057027133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + (f1 (n + 1) - f1 n)

end

end A292926.P1118573774057027133

namespace A292926

/-- `A123134(n+1)+Δ[A001043(n+1)]` -/
def P1118573774057027133.Spec : Prop :=
  ∀ n, P1118573774057027133.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P17025716287993510733

`A123134(n+1)+Δ[A092949(n+1)]`
-/

namespace A292926.P17025716287993510733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + (f1 (n + 1) - f1 n)

end

end A292926.P17025716287993510733

namespace A292926

/-- `A123134(n+1)+Δ[A092949(n+1)]` -/
def P17025716287993510733.Spec : Prop :=
  ∀ n, P17025716287993510733.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P4322818778209757327

`A123134(n+1)+Δ[A011974(n+2)]`
-/

namespace A292926.P4322818778209757327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + (f1 (n + 1) - f1 n)

end

end A292926.P4322818778209757327

namespace A292926

/-- `A123134(n+1)+Δ[A011974(n+2)]` -/
def P4322818778209757327.Spec : Prop :=
  ∀ n, P4322818778209757327.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P9375546402494446008

`A065091(n+2)+A111071(n+1)+A065091(n+2)`
-/

namespace A292926.P9375546402494446008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) + (A111071 (n + 1) + A065091 (n + 2))

end

end A292926.P9375546402494446008

namespace A292926

/-- `A065091(n+2)+A111071(n+1)+A065091(n+2)` -/
def P9375546402494446008.Spec : Prop :=
  ∀ n, P9375546402494446008.a n = A292926 (n + 1)

end A292926

/-! ## A292926.P12382447808158277171

`A065091(n+2)+A000040(n+1)*A065091(n+1)`
-/

namespace A292926.P12382447808158277171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) + A000040 (n + 1) * A065091 (n + 1)

end

end A292926.P12382447808158277171

namespace A292926

/-- `A065091(n+2)+A000040(n+1)*A065091(n+1)` -/
def P12382447808158277171.Spec : Prop :=
  ∀ n, P12382447808158277171.a n = A292926 (n + 1)

end A292926

/-!
# A292927: G.f. A(x) satisfies: A( x^2*A(x) - x*A(x)^3 ) = x^3.

The programs for A292927, there is no canonical definition to state claims against.
-/

/-! ## A292927.P13061847768920359372

`A367046(n)-A325817(A367043(n))`
-/

namespace A292927.P13061847768920359372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367046 n - A325817 (A367043 n).toNat

end

end A292927.P13061847768920359372

/-! ## A292927.P10152636025251882599

`ceil(A145546(3*n+5)/A048488(2*n+3))`
-/

namespace A292927.P10152636025251882599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A145546 (3 * n + 5) : ℚ) / (A048488 (2 * n + 3) : ℚ)⌉

end

end A292927.P10152636025251882599

/-! ## A292927.P1552812568003558447

`A356302(n)+A011373(A006013(n))`
-/

namespace A292927.P1552812568003558447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356302 n + A011373 (A006013 n).toNat

end

end A292927.P1552812568003558447

/-!
# A292928: G.f. A(x) satisfies: A( x^2*A(x) - A(x)^4 ) = x^3.

The programs for A292928, there is no canonical definition to state claims against.
-/

/-! ## A292928.P10084639710211564876

`A140201(A367047(n)-A040076(n+1))`
-/

namespace A292928.P10084639710211564876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 (A367047 n - A040076 (n + 1)).toNat

end

end A292928.P10084639710211564876

/-! ## A292928.P3883591130515293336

`A367047(n)-A086011(A261561(n+3))`
-/

namespace A292928.P3883591130515293336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367047 n - A086011 (A261561 (n + 3)).toNat

end

end A292928.P3883591130515293336

/-!
# A292930: Triangle read by rows: T(n,k) (n>=1, 3<=k<=n+2) is the number of k-sequences of balls colored with at most n colors such that exactly three balls are the same color as some other ball in the sequence.

The programs for A292930, the canonical program `A292930.P3057802283522938846` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292930 has offset 1).

The definition of A292930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292930.P13321054007145836670

`(C(comp[∑[n]]-n, 2)-n)*(n-C(∑[char[∑[n]]], 2))!*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))*A000292(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A292930.P13321054007145836670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

open Classical in
def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f13 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)).toNat : ℤ) * (Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f9 j) 2 : ℤ)).toNat : ℤ) * A000292 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f12 j) 2 : ℤ) + (n : ℤ)).toNat

end

end A292930.P13321054007145836670

namespace A292930

/-- `(C(comp[∑[n]]-n, 2)-n)*(n-C(∑[char[∑[n]]], 2))!*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))*A000292(1-C(∑[char[∑[n]]], 2)+n)` -/
def P13321054007145836670.Spec : Prop :=
  ∀ n, P13321054007145836670.a n = A292930 (n + 1)

end A292930

/-! ## A292930.P3057802283522938846

`A125091(n+1)*A166350(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A292930

/-- `A125091(n+1)*A166350(n+1)` -/
def P3057802283522938846.Spec : Prop :=
  ∀ n, P3057802283522938846.a n = A292930 (n + 1)

theorem P3057802283522938846.correct : P3057802283522938846.Spec := by
  intro n
  simp only [A292930, Nat.add_sub_cancel]

end A292930

/-! ## A292930.P1124158180017616724

`A002260(n+1)!*A125091(n+1)`
-/

namespace A292930.P1124158180017616724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A125091 (n + 1)

end

end A292930.P1124158180017616724

namespace A292930

/-- `A002260(n+1)!*A125091(n+1)` -/
def P1124158180017616724.Spec : Prop :=
  ∀ n, P1124158180017616724.a n = A292930 (n + 1)

end A292930

/-! ## A292930.P15166724781114758545

`A000292(A002260(n+1))*A068424(n+1)`
-/

namespace A292930.P15166724781114758545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002260 (n + 1)).toNat * A068424 (n + 1)

end

end A292930.P15166724781114758545

namespace A292930

/-- `A000292(A002260(n+1))*A068424(n+1)` -/
def P15166724781114758545.Spec : Prop :=
  ∀ n, P15166724781114758545.a n = A292930 (n + 1)

end A292930

/-! ## A292930.P3225806508889787782

`A000292(A002262(n)+1)*A068424(n+1)`
-/

namespace A292930.P3225806508889787782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002262 n + 1).toNat * A068424 (n + 1)

end

end A292930.P3225806508889787782

namespace A292930

/-- `A000292(A002262(n)+1)*A068424(n+1)` -/
def P3225806508889787782.Spec : Prop :=
  ∀ n, P3225806508889787782.a n = A292930 (n + 1)

end A292930

/-! ## A292930.P12943778093362946070

`A002260(n+1)*A125091(n+1)*A233543(n)`
-/

namespace A292930.P12943778093362946070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A125091 (n + 1) * A233543 n

end

end A292930.P12943778093362946070

namespace A292930

/-- `A002260(n+1)*A125091(n+1)*A233543(n)` -/
def P12943778093362946070.Spec : Prop :=
  ∀ n, P12943778093362946070.a n = A292930 (n + 1)

end A292930

/-! ## A292930.P17160639113884483527

`A000005(A059268(n))!*A125091(n+1)`
-/

namespace A292930.P17160639113884483527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000005 (A059268 n).toNat).toNat : ℤ) * A125091 (n + 1)

end

end A292930.P17160639113884483527

namespace A292930

/-- `A000005(A059268(n))!*A125091(n+1)` -/
def P17160639113884483527.Spec : Prop :=
  ∀ n, P17160639113884483527.a n = A292930 (n + 1)

end A292930

/-! ## A292930.P3366096726945720060

`(C(comp[∑[n]]-n, 2)-n)*(n-C(∑[char[∑[n]]], 2))!*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))*A007426(2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A292930.P3366096726945720060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

open Classical in
def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f13 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)).toNat : ℤ) * (Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f9 j) 2 : ℤ)).toNat : ℤ) * A007426 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f12 j) 2 : ℤ) : ℤ))).toNat

end

end A292930.P3366096726945720060

namespace A292930

/-- `(C(comp[∑[n]]-n, 2)-n)*(n-C(∑[char[∑[n]]], 2))!*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))*A007426(2^(n-C(∑[char[∑[n]]], 2)))` -/
def P3366096726945720060.Spec : Prop :=
  ∀ n, P3366096726945720060.a n = A292930 (n + 1)

end A292930

/-! ## A292930.P8243561440927098258

`A002417(A002260(n+1))*A111492(n+1)`
-/

namespace A292930.P8243561440927098258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (A002260 (n + 1)).toNat * A111492 (n + 1)

end

end A292930.P8243561440927098258

namespace A292930

/-- `A002417(A002260(n+1))*A111492(n+1)` -/
def P8243561440927098258.Spec : Prop :=
  ∀ n, P8243561440927098258.a n = A292930 (n + 1)

end A292930

/-!
# A292931: Numbers n such that the sum of digits of 3^n (A004166) is divisible by 7.

The programs for A292931, the canonical program `A292931.P11848410152138071600` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292931 has offset 1).

The definition of A292931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292931.P11848410152138071600

`eq[7, gcd(7, A004166(n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292931

/-- `eq[7, gcd(7, A004166(n))]` -/
def P11848410152138071600.Spec : Prop :=
  ∀ n, (P11848410152138071600.a n : ℤ) = A292931 (n + 1)

theorem P11848410152138071600.correct : P11848410152138071600.Spec := by
  intro n
  simp only [A292931, Nat.add_sub_cancel]

end A292931

/-! ## A292931.P16857029259574099774

`eq[0, A004166(n+1)%7]+1`
-/

namespace A292931.P16857029259574099774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004166 (n + 1)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A292931.P16857029259574099774

namespace A292931

/-- `eq[0, A004166(n+1)%7]+1` -/
def P16857029259574099774.Spec : Prop :=
  ∀ n, (P16857029259574099774.a n : ℤ) = A292931 (n + 1)

end A292931

/-! ## A292931.P3544764496852596968

`eq[A004166(n)%7, A000038(n)]`
-/

namespace A292931.P3544764496852596968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004166 n) 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292931.P3544764496852596968

namespace A292931

/-- `eq[A004166(n)%7, A000038(n)]` -/
def P3544764496852596968.Spec : Prop :=
  ∀ n, (P3544764496852596968.a n : ℤ) = A292931 (n + 1)

end A292931

/-! ## A292931.P15776599988017789122

`eq[0, A204453(A004166(n))]`
-/

namespace A292931.P15776599988017789122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204453 (A004166 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A292931.P15776599988017789122

namespace A292931

/-- `eq[0, A204453(A004166(n))]` -/
def P15776599988017789122.Spec : Prop :=
  ∀ n, (P15776599988017789122.a n : ℤ) = A292931 (n + 1)

end A292931

/-! ## A292931.P3050816370571185480

`eq[A010876(A004166(n)), A079979(3*n+2)]`
-/

namespace A292931.P3050816370571185480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A004166 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292931.P3050816370571185480

namespace A292931

/-- `eq[A010876(A004166(n)), A079979(3*n+2)]` -/
def P3050816370571185480.Spec : Prop :=
  ∀ n, (P3050816370571185480.a n : ℤ) = A292931 (n + 1)

end A292931

/-!
# A292932: Number of quasitrivial semigroups on an arbitrary n-element set.

The programs for A292932, there is no canonical definition to state claims against.
-/

/-! ## A292932.P17335476573132849652

`A308362(A028310(n))-A308354(A028310(n))`
-/

namespace A292932.P17335476573132849652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308362 (A028310 n).toNat - A308354 (A028310 n).toNat

end

end A292932.P17335476573132849652

/-! ## A292932.P9816569326747278475

`A292933(n+1)/(n+1)`
-/

namespace A292932.P9816569326747278475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292933 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A292932.P9816569326747278475

/-! ## A292932.P8363370472566648603

`A308354(n+2)/∑[n+1]`
-/

namespace A292932.P8363370472566648603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308354 (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A292932.P8363370472566648603

/-!
# A292933: E.g.f.: x/(x+3-2*exp(x)).

The programs for A292933, there is no canonical definition to state claims against.
-/

/-! ## A292933.P6562101862709616837

`n*A292932(abs(1-n))`
-/

namespace A292933.P6562101862709616837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292932 |1 - (n : ℤ)|.toNat

end

end A292933.P6562101862709616837

/-! ## A292933.P18354314926571031189

`A292934(n+1)/(n+1)`
-/

namespace A292933.P18354314926571031189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292934 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A292933.P18354314926571031189

/-! ## A292933.P16222337770084511166

`2/(n+1)*A308354(n+1)`
-/

namespace A292933.P16222337770084511166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A308354 (n + 1) : ℚ)

end

end A292933.P16222337770084511166

/-! ## A292933.P3957403618320984716

`A308351(n+1)/(n+1)-A292932(n)`
-/

namespace A292933.P3957403618320984716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308351 (n + 1) : ℚ) / (n + 1 : ℚ) - (A292932 n : ℚ)

end

end A292933.P3957403618320984716

/-! ## A292933.P6597627207409016325

`record[A292934(A328628(n))/A328628(n)]`
-/

namespace A292933.P6597627207409016325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292934 (A328628 n).toNat : ℚ) / (A328628 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292933.P6597627207409016325

/-!
# A292934: E.g.f.: x^2/(x+3-2*exp(x)).

The programs for A292934, there is no canonical definition to state claims against.
-/

/-! ## A292934.P16729115758241088011

`n*A292933(abs(1-n))`
-/

namespace A292934.P16729115758241088011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292933 |1 - (n : ℤ)|.toNat

end

end A292934.P16729115758241088011

/-! ## A292934.P5689823021121897281

`2*A308354(A028310(n))`
-/

namespace A292934.P5689823021121897281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308354 (A028310 n).toNat

end

end A292934.P5689823021121897281

/-! ## A292934.P7860025996219722121

`2*A308354(A000007(n)+n)`
-/

namespace A292934.P7860025996219722121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308354 (A000007 n + (n : ℤ)).toNat

end

end A292934.P7860025996219722121

/-! ## A292934.P9964075475240620466

`2*A308354(xor(n, A000007(n)))`
-/

namespace A292934.P9964075475240620466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308354 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A292934.P9964075475240620466

/-! ## A292934.P5938085243067963807

`lcm(2, n*A292933(abs(A024000(n))))`
-/

namespace A292934.P5938085243067963807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * A292933 |A024000 n|.toNat)

end

end A292934.P5938085243067963807

/-!
# A292935: Expansion of e.g.f.: exp(exp(-x) - 1).

The programs for A292935, there is no canonical definition to state claims against.
-/

/-! ## A292935.P8949043750673985013

`(-1)^n*A000110(n)`
-/

namespace A292935.P8949043750673985013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000110 n

end

end A292935.P8949043750673985013

/-! ## A292935.P17773782351129680417

`(-1)^n*A011971(∑[n])`
-/

namespace A292935.P17773782351129680417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292935.P17773782351129680417

/-! ## A292935.P9550254883339520521

`(-1)^n*A108087(∑[n])`
-/

namespace A292935.P9550254883339520521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A108087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292935.P9550254883339520521

/-! ## A292935.P10764274916625794774

`(-1)^n*A186020(∑[n])`
-/

namespace A292935.P10764274916625794774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A186020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292935.P10764274916625794774

/-! ## A292935.P16012426332549375060

`(-1)^n*A212431(∑[n])`
-/

namespace A292935.P16012426332549375060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A212431 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292935.P16012426332549375060

/-! ## A292935.P5544845384552702648

`(-1)^n*A327884(∑[n])`
-/

namespace A292935.P5544845384552702648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A327884 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292935.P5544845384552702648

/-! ## A292935.P2495455097103378503

`(-1)^n*A346426(∑[n])`
-/

namespace A292935.P2495455097103378503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A346426 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292935.P2495455097103378503

/-! ## A292935.P9793948291152098203

`(-1)^n*Δ[A005001(n)]`
-/

namespace A292935.P9793948291152098203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A292935.P9793948291152098203

/-! ## A292935.P3618031280914764976

`A000110(n)*A033999(n)`
-/

namespace A292935.P3618031280914764976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A033999 n

end

end A292935.P3618031280914764976

/-! ## A292935.P16865798398896241424

`A000110(n)/A033999(n+2)`
-/

namespace A292935.P16865798398896241424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000110 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A292935.P16865798398896241424

/-!
# A292936: a(n) = the least k >= 0 such that floor(n/(2^k)) is a nonprime; a(n) is degree of the "safeness" of prime, 0 if n is not a prime, 1 for unsafe primes (A059456), and k >= 2 for primes that are (k-1)-safe but not k-safe.

The programs for A292936, the canonical program `A292936.P4211464816823470507` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292936 has offset 1).

The definition of A292936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292936.P11536810145434924729

`val(A292599(n+1)+1, 2)`
-/

namespace A292936.P11536810145434924729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A292599 (n + 1) + 1).toNat 2

end

end A292936.P11536810145434924729

namespace A292936

/-- `val(A292599(n+1)+1, 2)` -/
def P11536810145434924729.Spec : Prop :=
  ∀ n, (P11536810145434924729.a n : ℤ) = A292936 (n + 1)

end A292936

/-! ## A292936.P4211464816823470507

`(a(ceil(n/2)-1)+1)*A010051(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A292936

/-- `(a(ceil(n/2)-1)+1)*A010051(n+1)` -/
def P4211464816823470507.Spec : Prop :=
  ∀ n, P4211464816823470507.a n = A292936 (n + 1)

theorem P4211464816823470507.correct : P4211464816823470507.Spec := by
  intro n
  simp only [A292936, Nat.add_sub_cancel]

end A292936

/-! ## A292936.P9211470423545538939

`A007814(A292599(n+1)+1)`
-/

namespace A292936.P9211470423545538939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A292599 (n + 1) + 1).toNat

end

end A292936.P9211470423545538939

namespace A292936

/-- `A007814(A292599(n+1)+1)` -/
def P9211470423545538939.Spec : Prop :=
  ∀ n, P9211470423545538939.a n = A292936 (n + 1)

end A292936

/-! ## A292936.P12756112960200508265

`A050605(2*A292599(n+1))`
-/

namespace A292936.P12756112960200508265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (2 * A292599 (n + 1)).toNat

end

end A292936.P12756112960200508265

namespace A292936

/-- `A050605(2*A292599(n+1))` -/
def P12756112960200508265.Spec : Prop :=
  ∀ n, P12756112960200508265.a n = A292936 (n + 1)

end A292936

/-! ## A292936.P13388442807743837416

`A001511(A292599(n+1)+1)-1`
-/

namespace A292936.P13388442807743837416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A292599 (n + 1) + 1).toNat - 1

end

end A292936.P13388442807743837416

namespace A292936

/-- `A001511(A292599(n+1)+1)-1` -/
def P13388442807743837416.Spec : Prop :=
  ∀ n, P13388442807743837416.a n = A292936 (n + 1)

end A292936

/-! ## A292936.P3327229318445002233

`A050605(A292599(n+1)+A292599(n+1)+1)`
-/

namespace A292936.P3327229318445002233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A292599 (n + 1) + (A292599 (n + 1) + 1)).toNat

end

end A292936.P3327229318445002233

namespace A292936

/-- `A050605(A292599(n+1)+A292599(n+1)+1)` -/
def P3327229318445002233.Spec : Prop :=
  ∀ n, P3327229318445002233.a n = A292936 (n + 1)

end A292936

/-!
# A292937: a(0)=1, followed by highly safe primes: positions of records in A292936.

The programs for A292937, there is no canonical definition to state claims against.
-/

/-! ## A292937.P3054340322628379828

`filter[A173927(n+1), A391614(#)]`
-/

namespace A292937.P3054340322628379828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391614 (f1 j).toNat = 1) n)

end

end A292937.P3054340322628379828

/-!
# A292938: Numbers n for which A292270(n) is a square.

The programs for A292938, there is no canonical definition to state claims against.
-/

/-! ## A292938.P626229248580300705

`floor(A292939(n+1)/2)`
-/

namespace A292938.P626229248580300705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A292939 (n + 1) : ℚ) / 2⌋

end

end A292938.P626229248580300705

/-! ## A292938.P14317164141536348076

`eq[1, A293218(n)]`
-/

namespace A292938.P14317164141536348076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A292938.P14317164141536348076

/-! ## A292938.P5236040888179099556

`eq[A293219(n)², A292270(n)]`
-/

namespace A292938.P5236040888179099556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293219 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292938.P5236040888179099556

/-! ## A292938.P6748586404427296700

`record[sqrt(A000290(n)/A293218(n))]`
-/

namespace A292938.P6748586404427296700
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A000290 n : ℚ) / (A293218 n : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292938.P6748586404427296700

/-! ## A292938.P15768448717828098865

`(A005408(record[n/A293218(n)])-1)/2`
-/

namespace A292938.P15768448717828098865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A293218 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat - 1 : ℚ) / 2

end

end A292938.P15768448717828098865

/-! ## A292938.P14690505838035561785

`lt[A293218(n), p?[A293234(n+1)]]`
-/

namespace A292938.P14690505838035561785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292938.P14690505838035561785

/-! ## A292938.P8679435630946668328

`A004524(A292939(n+1))`
-/

namespace A292938.P8679435630946668328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A292939 (n + 1)).toNat

end

end A292938.P8679435630946668328

/-! ## A292938.P16646704091683066699

`A004525(A292939(n+1)-1)`
-/

namespace A292938.P16646704091683066699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A292939 (n + 1) - 1).toNat

end

end A292938.P16646704091683066699

/-! ## A292938.P3591191871265432441

`lt[A293218(n), A000005(A293213(n+1))]`
-/

namespace A292938.P3591191871265432441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A293213 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292938.P3591191871265432441

/-! ## A292938.P7277482806100089345

`lt[A293218(n), A000005(A293200(n+1))]`
-/

namespace A292938.P7277482806100089345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A293200 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292938.P7277482806100089345

/-! ## A292938.P16056100941675193948

`lt[A293218(n), A000005(A293201(n+1))]`
-/

namespace A292938.P16056100941675193948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A293201 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292938.P16056100941675193948

/-!
# A292939: Odd numbers k such that A292270((k-1)/2) is a square.

The programs for A292939, there is no canonical definition to state claims against.
-/

/-! ## A292939.P16347550170061938693

`1+2*A292938(n+1)`
-/

namespace A292939.P16347550170061938693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A292938 (n + 1)

end

end A292939.P16347550170061938693

/-! ## A292939.P15939090081641467846

`A292938(A000027(n+1))+A292938(n+1)+1`
-/

namespace A292939.P15939090081641467846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292938 (A000027 (n + 1)).toNat + (A292938 (n + 1) + 1)

end

end A292939.P15939090081641467846

/-! ## A292939.P10840372639500560367

`A000265(A292938(n+1)+A292938(n+1)+1)`
-/

namespace A292939.P10840372639500560367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A292938 (n + 1) + (A292938 (n + 1) + 1)).toNat

end

end A292939.P10840372639500560367

/-! ## A292939.P6088182709164764449

`A292938(n+1)+A292938(n+1)+A008836(n+1)²`
-/

namespace A292939.P6088182709164764449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292938 (n + 1) + (A292938 (n + 1) + A008836 (n + 1) ^ 2)

end

end A292939.P6088182709164764449

/-! ## A292939.P2624005676139577520

`A005408(eq[1, A293218(n)])`
-/

namespace A292939.P2624005676139577520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292939.P2624005676139577520

/-! ## A292939.P16956095067344687799

`A005408(record[n/A293218(n)])`
-/

namespace A292939.P16956095067344687799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A293218 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A292939.P16956095067344687799

/-! ## A292939.P7853831967991990450

`A005843(eq[1, A293218(n)])+1`
-/

namespace A292939.P7853831967991990450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A292939.P7853831967991990450

/-! ## A292939.P6882065174998929690

`A016825(eq[1, A293218(n)])/2`
-/

namespace A292939.P6882065174998929690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A292939.P6882065174998929690

/-! ## A292939.P11850031638879356332

`record[(2-A293218(n))*A005408(n)]`
-/

namespace A292939.P11850031638879356332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A293218 n) * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292939.P11850031638879356332

/-! ## A292939.P13532730774613810620

`A004442(2*A292938(n+1))`
-/

namespace A292939.P13532730774613810620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A292938 (n + 1)).toNat

end

end A292939.P13532730774613810620

/-! ## A292939.P4411750231670877400

`A008619(4*A292938(n+1))`
-/

namespace A292939.P4411750231670877400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A292938 (n + 1)).toNat

end

end A292939.P4411750231670877400

/-!
# A292940: Odd numbers k for which A292270((k-1)/2) is a square larger than one.

The programs for A292940, there is no canonical definition to state claims against.
-/

/-! ## A292940.P8244496547795562514

`A005408(eq[A043545(n), A293218(n)])`
-/

namespace A292940.P8244496547795562514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292940.P8244496547795562514

/-! ## A292940.P15460703111400981117

`A005843(eq[A043545(n), A293218(n)])+1`
-/

namespace A292940.P15460703111400981117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A292940.P15460703111400981117

/-! ## A292940.P221242891079612786

`A016825(eq[A043545(n), A293218(n)])/2`
-/

namespace A292940.P221242891079612786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A292940.P221242891079612786

/-! ## A292940.P6784172341922483507

`filter[A292939(n+1), A043545(#)]`
-/

namespace A292940.P6784172341922483507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A292940.P6784172341922483507

/-! ## A292940.P13354788269267558599

`filter[A292939(n+1), A267442(#)]`
-/

namespace A292940.P13354788269267558599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A292940.P13354788269267558599

/-! ## A292940.P5062845285795254985

`A008619(4*eq[A043545(n), A293218(n)])`
-/

namespace A292940.P5062845285795254985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292940.P5062845285795254985

/-! ## A292940.P6738289242524067512

`A029579(4*eq[A043545(n), A293218(n)])`
-/

namespace A292940.P6738289242524067512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (4 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292940.P6738289242524067512

/-! ## A292940.P3319009699192866561

`∩[A292939(n+1), A347771(n+1)]`
-/

namespace A292940.P3319009699192866561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292940.P3319009699192866561

/-! ## A292940.P4904216462983473041

`∩[A080765(n+1), A292939(n+1)]`
-/

namespace A292940.P4904216462983473041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292940.P4904216462983473041

/-! ## A292940.P8399730612953891187

`∩[A257739(n+1), A292939(n+1)]`
-/

namespace A292940.P8399730612953891187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292940.P8399730612953891187

/-!
# A292941: a(1) = 0, a(2) = 1, and for n > 2, a(n) = 2*a(A252463(n)) + [n == 1 (mod 6)].

The programs for A292941, there is no canonical definition to state claims against.
-/

/-! ## A292941.P11216199563143202682

`A292263(n+1)-A292945(n+1)`
-/

namespace A292941.P11216199563143202682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292263 (n + 1) - A292945 (n + 1)

end

end A292941.P11216199563143202682

/-! ## A292941.P14127914595821064506

`xor(A292263(A252463(2*(n+1))), A292945(n+1))`
-/

namespace A292941.P14127914595821064506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292263 (A252463 (2 * (n + 1))).toNat) (A292945 (n + 1))

end

end A292941.P14127914595821064506

/-! ## A292941.P14939868466269005366

`A243071(n+1)-(A292945(n+1)+A292943(n+1))`
-/

namespace A292941.P14939868466269005366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1) - (A292945 (n + 1) + A292943 (n + 1))

end

end A292941.P14939868466269005366

/-! ## A292941.P606123950363783226

`A292253(n+1)+A292255(n+1)-A292945(n+1)`
-/

namespace A292941.P606123950363783226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292253 (n + 1) + (A292255 (n + 1) - A292945 (n + 1))

end

end A292941.P606123950363783226

/-! ## A292941.P3601043821251898224

`xor(A292263(n+1), A292945(n+1))%A000051(n)`
-/

namespace A292941.P3601043821251898224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A292263 (n + 1)) (A292945 (n + 1))) (A000051 n)

end

end A292941.P3601043821251898224

/-! ## A292941.P403443359573485905

`xor(A292945(n+1)%A000079(n), A292263(n+1))`
-/

namespace A292941.P403443359573485905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A292945 (n + 1)) (A000079 n)) (A292263 (n + 1))

end

end A292941.P403443359573485905

/-!
# A292942: a(n) = A292941(A163511(n)).

The programs for A292942, there is no canonical definition to state claims against.
-/

/-! ## A292942.P17390690085600498679

`A292941(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292942.P17390690085600498679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292941 (A163511 n).toNat

end

end A292942.P17390690085600498679

/-! ## A292942.P17654157000561220263

`A292264(n)-A292946(n)`
-/

namespace A292942.P17654157000561220263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 n - A292946 n

end

end A292942.P17654157000561220263

/-! ## A292942.P20853906753251999

`n-(A292946(n)+A292944(n))`
-/

namespace A292942.P20853906753251999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A292946 n + A292944 n)

end

end A292942.P20853906753251999

/-! ## A292942.P14340777773049071174

`xor(A292264(n), A292946(A028310(n)))`
-/

namespace A292942.P14340777773049071174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292264 n) (A292946 (A028310 n).toNat)

end

end A292942.P14340777773049071174

/-! ## A292942.P1344979024967807312

`A001489(A292946(n)+A292944(n))+n`
-/

namespace A292942.P1344979024967807312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A292946 n + A292944 n).toNat + (n : ℤ)

end

end A292942.P1344979024967807312

/-! ## A292942.P6060344099560391227

`A292254(n)+A292256(n)-A292946(n)`
-/

namespace A292942.P6060344099560391227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292254 n + (A292256 n - A292946 n)

end

end A292942.P6060344099560391227

/-! ## A292942.P3440120271793544255

`A005408(n)%(n+1+A292946(n)+A292944(n))`
-/

namespace A292942.P3440120271793544255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) ((n + 1 : ℤ) + (A292946 n + A292944 n))

end

end A292942.P3440120271793544255

/-! ## A292942.P6494691277784662463

`xor(A292946(n)+A292944(n), A110654(2*n))`
-/

namespace A292942.P6494691277784662463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292946 n + A292944 n) (A110654 (2 * n))

end

end A292942.P6494691277784662463

/-! ## A292942.P16048071120617410077

`A292263(A163511(n))-A292946(n)`
-/

namespace A292942.P16048071120617410077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292263 (A163511 n).toNat - A292946 n

end

end A292942.P16048071120617410077

/-! ## A292942.P1142029391854322392

`A292264(n)-A292945(A163511(n))`
-/

namespace A292942.P1142029391854322392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 n - A292945 (A163511 n).toNat

end

end A292942.P1142029391854322392

/-!
# A292943: a(n) = A292944(A243071(n)); Base-2 expansion of a(n) encodes the steps where numbers of the form 6k+3 are encountered when map x -> A252463(x) is iterated down to 1, starting from x=n.

The programs for A292943, there is no canonical definition to state claims against.
-/

/-! ## A292943.P3911336610891579666

`A292944(A243071(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292943.P3911336610891579666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292944 (A243071 (n + 1)).toNat

end

end A292943.P3911336610891579666

/-! ## A292943.P14862973501930302459

`A243071(n+1)-A292263(n+1)`
-/

namespace A292943.P14862973501930302459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1) - A292263 (n + 1)

end

end A292943.P14862973501930302459

/-! ## A292943.P14626404789772418741

`A156552(A252463(n+1))-A292380(n+1)`
-/

namespace A292943.P14626404789772418741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A252463 (n + 1)).toNat - A292380 (n + 1)

end

end A292943.P14626404789772418741

/-! ## A292943.P891872797945678614

`A243071(n+1)-(A292255(n+1)+A292253(n+1))`
-/

namespace A292943.P891872797945678614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1) - (A292255 (n + 1) + A292253 (n + 1))

end

end A292943.P891872797945678614

/-! ## A292943.P11086529886478808119

`A243071(n+1)-(A292945(n+1)+A292941(n+1))`
-/

namespace A292943.P11086529886478808119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1) - (A292945 (n + 1) + A292941 (n + 1))

end

end A292943.P11086529886478808119

/-! ## A292943.P15364164759594146146

`A156552(A252463(n+1))+A292382(n+1)-A156552(n+1)`
-/

namespace A292943.P15364164759594146146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A252463 (n + 1)).toNat + (A292382 (n + 1) - A156552 (n + 1))

end

end A292943.P15364164759594146146

/-!
# A292944: a(n) = A292272(A004754(n)) - 2*A053644(n).

The programs for A292944, the canonical program `A292944.P3273024462616144554` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292944 has offset 0).

The definition of A292944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292944.P16402049163599372846

`A292943(A163511(n))`
-/

namespace A292944.P16402049163599372846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292943 (A163511 n).toNat

end

end A292944.P16402049163599372846

namespace A292944

/-- `A292943(A163511(n))` -/
def P16402049163599372846.Spec : Prop :=
  ∀ n, P16402049163599372846.a n = A292944 n

end A292944

/-! ## A292944.P6763975205967917878

`n-A292264(n)`
-/

namespace A292944.P6763975205967917878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292264 n

end

end A292944.P6763975205967917878

namespace A292944

/-- `n-A292264(n)` -/
def P6763975205967917878.Spec : Prop :=
  ∀ n, P6763975205967917878.a n = A292944 n

end A292944

/-! ## A292944.P17969911089377091277

`and(2*n, A092569(n))/2`
-/

namespace A292944.P17969911089377091277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (2 * n : ℤ) (A092569 n) : ℚ) / 2

end

end A292944.P17969911089377091277

namespace A292944

/-- `and(2*n, A092569(n))/2` -/
def P17969911089377091277.Spec : Prop :=
  ∀ n, P17969911089377091277.a n = (A292944 n : ℚ)

end A292944

/-! ## A292944.P12597255897964927440

`xor(n, A292264(xor(1, xor(1, n))))`
-/

namespace A292944.P12597255897964927440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292264 (Nat.xor 1 (Nat.xor 1 n)))

end

end A292944.P12597255897964927440

namespace A292944

/-- `xor(n, A292264(xor(1, xor(1, n))))` -/
def P12597255897964927440.Spec : Prop :=
  ∀ n, P12597255897964927440.a n = A292944 n

end A292944

/-! ## A292944.P3273024462616144554

`A292272(n-A053644(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A292944

/-- `A292272(n-A053644(n))` -/
def P3273024462616144554.Spec : Prop :=
  ∀ n, P3273024462616144554.a n = A292944 n

theorem P3273024462616144554.correct : P3273024462616144554.Spec := by
  intro n
  simp only [A292944]

end A292944

/-! ## A292944.P5241623845401150872

`and(A233280(n), A318934(n+1))`
-/

namespace A292944.P5241623845401150872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A233280 n) (A318934 (n + 1))

end

end A292944.P5241623845401150872

namespace A292944

/-- `and(A233280(n), A318934(n+1))` -/
def P5241623845401150872.Spec : Prop :=
  ∀ n, P5241623845401150872.a n = A292944 n

end A292944

/-! ## A292944.P15945282851196274707

`n-and(n, A063946(A180201(n)))`
-/

namespace A292944.P15945282851196274707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A063946 (A180201 n).toNat)

end

end A292944.P15945282851196274707

namespace A292944

/-- `n-and(n, A063946(A180201(n)))` -/
def P15945282851196274707.Spec : Prop :=
  ∀ n, P15945282851196274707.a n = A292944 n

end A292944

/-! ## A292944.P14031211307969909598

`A377404(A233280(n))`
-/

namespace A292944.P14031211307969909598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377404 (A233280 n).toNat

end

end A292944.P14031211307969909598

namespace A292944

/-- `A377404(A233280(n))` -/
def P14031211307969909598.Spec : Prop :=
  ∀ n, P14031211307969909598.a n = A292944 n

end A292944

/-! ## A292944.P16955641988996433463

`n-and(n, A261349(2*n))`
-/

namespace A292944.P16955641988996433463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A261349 (2 * n))

end

end A292944.P16955641988996433463

namespace A292944

/-- `n-and(n, A261349(2*n))` -/
def P16955641988996433463.Spec : Prop :=
  ∀ n, P16955641988996433463.a n = A292944 n

end A292944

/-! ## A292944.P4935281879568130519

`n-(A292256(n)+A292254(n))`
-/

namespace A292944.P4935281879568130519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A292256 n + A292254 n)

end

end A292944.P4935281879568130519

namespace A292944

/-- `n-(A292256(n)+A292254(n))` -/
def P4935281879568130519.Spec : Prop :=
  ∀ n, P4935281879568130519.a n = A292944 n

end A292944

/-! ## A292944.P11116419412829175564

`n-(A292946(n)+A292942(n))`
-/

namespace A292944.P11116419412829175564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A292946 n + A292942 n)

end

end A292944.P11116419412829175564

namespace A292944

/-- `n-(A292946(n)+A292942(n))` -/
def P11116419412829175564.Spec : Prop :=
  ∀ n, P11116419412829175564.a n = A292944 n

end A292944

/-! ## A292944.P10392295957810024370

`A292272(n-A292942(A292272(n)))`
-/

namespace A292944.P10392295957810024370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 ((n : ℤ) - A292942 (A292272 n).toNat).toNat

end

end A292944.P10392295957810024370

namespace A292944

/-- `A292272(n-A292942(A292272(n)))` -/
def P10392295957810024370.Spec : Prop :=
  ∀ n, P10392295957810024370.a n = A292944 n

end A292944

/-! ## A292944.P4357756976228976043

`(A231550(n)-A341691(A231550(n)))/2`
-/

namespace A292944.P4357756976228976043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231550 n - A341691 (A231550 n).toNat : ℚ) / 2

end

end A292944.P4357756976228976043

namespace A292944

/-- `(A231550(n)-A341691(A231550(n)))/2` -/
def P4357756976228976043.Spec : Prop :=
  ∀ n, P4357756976228976043.a n = (A292944 n : ℚ)

end A292944

/-! ## A292944.P7890181903460975768

`n-and(n, A154436(n))`
-/

namespace A292944.P7890181903460975768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A154436 n)

end

end A292944.P7890181903460975768

namespace A292944

/-- `n-and(n, A154436(n))` -/
def P7890181903460975768.Spec : Prop :=
  ∀ n, P7890181903460975768.a n = A292944 n

end A292944

/-!
# A292945: Base-2 expansion of a(n) encodes the steps where numbers of the form 6k+5 are encountered when map x -> A252463(x) is iterated down to 1, starting from x=n.

The programs for A292945, there is no canonical definition to state claims against.
-/

/-! ## A292945.P9531563885116256367

`A292263(n+1)-A292941(n+1)`
-/

namespace A292945.P9531563885116256367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292263 (n + 1) - A292941 (n + 1)

end

end A292945.P9531563885116256367

/-! ## A292945.P478967354089319967

`A243071(n+1)-(A292943(n+1)+A292941(n+1))`
-/

namespace A292945.P478967354089319967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1) - (A292943 (n + 1) + A292941 (n + 1))

end

end A292945.P478967354089319967

/-! ## A292945.P4808334968229224004

`A292946(A243071(n+1))`
-/

namespace A292945.P4808334968229224004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292946 (A243071 (n + 1)).toNat

end

end A292945.P4808334968229224004

/-! ## A292945.P5043989371657149095

`A292946(A292385(n+1)+A292383(n+1))`
-/

namespace A292945.P5043989371657149095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292946 (A292385 (n + 1) + A292383 (n + 1)).toNat

end

end A292945.P5043989371657149095

/-! ## A292945.P2311917846178413394

`A292946(A292943(n+1)+A292263(n+1))`
-/

namespace A292945.P2311917846178413394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292946 (A292943 (n + 1) + A292263 (n + 1)).toNat

end

end A292945.P2311917846178413394

/-!
# A292946: a(n) = A292945(A163511(n)).

The programs for A292946, there is no canonical definition to state claims against.
-/

/-! ## A292946.P14580866074510278945

`A292945(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292946.P14580866074510278945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292945 (A163511 n).toNat

end

end A292946.P14580866074510278945

/-! ## A292946.P12070400892279694516

`and(n, A292592(floor(n/2)))`
-/

namespace A292946.P12070400892279694516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A292592 ⌊(n : ℚ) / 2⌋.toNat)

end

end A292946.P12070400892279694516

/-! ## A292946.P521704332214237657

`A292264(n)-A292942(n)`
-/

namespace A292946.P521704332214237657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 n - A292942 n

end

end A292946.P521704332214237657

/-! ## A292946.P9577070940644129329

`and(A005843(n), A292592(n))/2`
-/

namespace A292946.P9577070940644129329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A005843 n) (A292592 n) : ℚ) / 2

end

end A292946.P9577070940644129329

/-! ## A292946.P7963923274433001675

`n-(A292944(n)+A292942(n))`
-/

namespace A292946.P7963923274433001675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A292944 n + A292942 n)

end

end A292946.P7963923274433001675

/-! ## A292946.P5763086511877853005

`A026741(and(A005843(n), A292592(n)))`
-/

namespace A292946.P5763086511877853005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.land (A005843 n) (A292592 n)).toNat

end

end A292946.P5763086511877853005

/-! ## A292946.P10880114261751356835

`A292263(A163511(n))-A292942(n)`
-/

namespace A292946.P10880114261751356835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292263 (A163511 n).toNat - A292942 n

end

end A292946.P10880114261751356835

/-!
# A292947: a(n) = A007947(A292270(n)).

The programs for A292947, there is no canonical definition to state claims against.
-/

/-! ## A292947.P4061148078316575450

`A007947(A292270(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292947.P4061148078316575450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A292270 n).toNat

end

end A292947.P4061148078316575450

/-! ## A292947.P18294921745362901272

`lcm(A007947(A293219(n)), A293218(n))`
-/

namespace A292947.P18294921745362901272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (A293219 n).toNat) (A293218 n)

end

end A292947.P18294921745362901272

/-! ## A292947.P6598897949068059655

`A000027(∏{p}[A292270(n), #])`
-/

namespace A292947.P6598897949068059655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A292947.P6598897949068059655

/-! ## A292947.P14530521922624118408

`∏{p}[A292270(A014682(2*n)), #]`
-/

namespace A292947.P14530521922624118408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292270 (A014682 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A292947.P14530521922624118408

/-! ## A292947.P5595393730410452477

`A007947(A293218(n)*A293219(n))`
-/

namespace A292947.P5595393730410452477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A293218 n * A293219 n).toNat

end

end A292947.P5595393730410452477

/-! ## A292947.P614313226511013014

`∏{p}[A292270(n), A002034(#)]`
-/

namespace A292947.P614313226511013014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002034 p

end

end A292947.P614313226511013014

/-!
# A292948: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where A(0,k) = 1 and A(n,k) = (-1)^(k+1) * Sum_{i=0..n-1} (-1)^i * binomial(n-1,i) * binomial(i+1,k) * A(n-1-i,k) for n > 0.

The programs for A292948, there is no canonical definition to state claims against.
-/

/-! ## A292948.P15916896235202718564

`A292973(n)/A096591(A048993(n))`
-/

namespace A292948.P15916896235202718564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292973 n : ℚ) / (A096591 (A048993 n).toNat : ℚ)

end

end A292948.P15916896235202718564

/-! ## A292948.P6027682024377034540

`A292973(n)/A000120(A155971(n))`
-/

namespace A292948.P6027682024377034540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292973 n : ℚ) / (A000120 (A155971 n).toNat : ℚ)

end

end A292948.P6027682024377034540

/-! ## A292948.P5065630036018596905

`A292973(n)/A010177(A288972(n))`
-/

namespace A292948.P5065630036018596905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292973 n : ℚ) / (A010177 (A288972 n).toNat : ℚ)

end

end A292948.P5065630036018596905

/-! ## A292948.P17441539280379398261

`A292973(n)/A040001(A273712(n))`
-/

namespace A292948.P17441539280379398261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292973 n : ℚ) / (A040001 (A273712 n).toNat : ℚ)

end

end A292948.P17441539280379398261

/-! ## A292948.P14487972853567714327

`A292973(n)/A143965(A333901(n))`
-/

namespace A292948.P14487972853567714327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292973 n : ℚ) / (A143965 (A333901 n).toNat : ℚ)

end

end A292948.P14487972853567714327

/-!
# A292949: Subsequence of terms of A019278 whose sum of divisors is also a term of A019278.

The programs for A292949, there is no canonical definition to state claims against.
-/

/-! ## A292949.P4248652008391382237

`∩[A019278(n+1), A275321(n+1)]`
-/

namespace A292949.P4248652008391382237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292949.P4248652008391382237

/-! ## A292949.P12850561153905962943

`∩[A019278(n+1), A067064(n+1)]`
-/

namespace A292949.P12850561153905962943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292949.P12850561153905962943

/-! ## A292949.P14451756067946694849

`∩[A067064(n+1), A318175(n+1)]`
-/

namespace A292949.P14451756067946694849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292949.P14451756067946694849

/-! ## A292949.P146228531332374008

`filter[A275321(n+1), A071034(#)]`
-/

namespace A292949.P146228531332374008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071034 (f1 j).toNat = 1) n)

end

end A292949.P146228531332374008

/-! ## A292949.P9780282447197398183

`filter[A275321(n+1), A190198(#)]`
-/

namespace A292949.P9780282447197398183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190198 (f1 j).toNat = 1) n)

end

end A292949.P9780282447197398183

/-!
# A292950: E.g.f.: exp(1/5! * x^5 * exp(-x)).

The programs for A292950, there is no canonical definition to state claims against.
-/

/-! ## A292950.P3759184334413246839

`A292948(A055999(n+3))`
-/

namespace A292950.P3759184334413246839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 (A055999 (n + 3)).toNat

end

end A292950.P3759184334413246839

/-! ## A292950.P8214070169895519936

`A292948(eq[5, A025581(n)])`
-/

namespace A292950.P8214070169895519936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292950.P8214070169895519936

/-! ## A292950.P14656587995648388872

`A292948(eq[6, A193739(n)])`
-/

namespace A292950.P14656587995648388872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292950.P14656587995648388872

/-! ## A292950.P10361087143710862489

`A292948(eq[11, A099375(n)])`
-/

namespace A292950.P10361087143710862489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292950.P10361087143710862489

/-! ## A292950.P8366528383404647984

`A292948(eq[6, A004736(n+1)])`
-/

namespace A292950.P8366528383404647984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292950.P8366528383404647984

/-! ## A292950.P6805707514194179418

`A292948(A001281(2*n+5)+A000124(n))`
-/

namespace A292950.P6805707514194179418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 (A001281 (2 * n + 5) + A000124 n).toNat

end

end A292950.P6805707514194179418

/-!
# A292951: Expansion of e.g.f. exp(x^2 * (1 - exp(x))).

The programs for A292951, there is no canonical definition to state claims against.
-/

/-! ## A292951.P6794222151990390064

`A292894(∑[n+3])`
-/

namespace A292951.P6794222151990390064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292894 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292951.P6794222151990390064

/-! ## A292951.P14766844998285830912

`A000034(4*n)*A292894(A055998(n+1))`
-/

namespace A292951.P14766844998285830912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (4 * n) * A292894 (A055998 (n + 1)).toNat

end

end A292951.P14766844998285830912

/-! ## A292951.P16019187290567546274

`A001222(A031914(n+1))*A292894(A055998(n+1))`
-/

namespace A292951.P16019187290567546274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A031914 (n + 1)).toNat * A292894 (A055998 (n + 1)).toNat

end

end A292951.P16019187290567546274

/-! ## A292951.P1943683508940280879

`A053150(A005117(n+1))*A292894(A055998(n+1))`
-/

namespace A292951.P1943683508940280879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A005117 (n + 1)).toNat * A292894 (A055998 (n + 1)).toNat

end

end A292951.P1943683508940280879

/-! ## A292951.P6594550192569896505

`A001221(A073703(n+1))*A292894(A055998(n+1))`
-/

namespace A292951.P6594550192569896505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A073703 (n + 1)).toNat * A292894 (A055998 (n + 1)).toNat

end

end A292951.P6594550192569896505

/-! ## A292951.P15849136570371295779

`A292894(A055998(n+1))%A292897(n)`
-/

namespace A292951.P15849136570371295779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292894 (A055998 (n + 1)).toNat) (A292897 n)

end

end A292951.P15849136570371295779

/-!
# A292952: E.g.f.: exp(-x * exp(x)).

The programs for A292952, there is no canonical definition to state claims against.
-/

/-! ## A292952.P8979867110612696348

`(-1)^n*A003725(n)`
-/

namespace A292952.P8979867110612696348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A003725 n

end

end A292952.P8979867110612696348

/-! ## A292952.P15745733573097641720

`A003725(n)*A033999(n)`
-/

namespace A292952.P15745733573097641720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003725 n * A033999 n

end

end A292952.P15745733573097641720

/-! ## A292952.P893164020794386500

`A003725(n)*A094267(n²)`
-/

namespace A292952.P893164020794386500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003725 n * A094267 (n ^ 2)

end

end A292952.P893164020794386500

/-! ## A292952.P5693013809174937854

`A003725(n)*A062157(n+1)`
-/

namespace A292952.P5693013809174937854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003725 n * A062157 (n + 1)

end

end A292952.P5693013809174937854

/-! ## A292952.P6846771681793952435

`A003725(n)/A057079(3*n)`
-/

namespace A292952.P6846771681793952435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003725 n : ℚ) / (A057079 (3 * n) : ℚ)

end

end A292952.P6846771681793952435

/-! ## A292952.P11320520503000975825

`A003725(n)/A033999(n)^A003462(n)`
-/

namespace A292952.P11320520503000975825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003725 n : ℚ) / (A033999 n : ℚ) ^ (A003462 n : ℤ)

end

end A292952.P11320520503000975825

/-! ## A292952.P14564725111990227883

`A003725(n)/A033999(n)^A140750(n+1)`
-/

namespace A292952.P14564725111990227883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003725 n : ℚ) / (A033999 n : ℚ) ^ (A140750 (n + 1) : ℤ)

end

end A292952.P14564725111990227883

/-! ## A292952.P17351398631724689165

`A293015(∑[n+2]-1)`
-/

namespace A292952.P17351398631724689165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A292952.P17351398631724689165

/-! ## A292952.P3669549658441627626

`A009121(n)-A009565(n)`
-/

namespace A292952.P3669549658441627626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009121 n - A009565 n

end

end A292952.P3669549658441627626

/-! ## A292952.P9281404206070190295

`2*A009121(n)-A000248(n)`
-/

namespace A292952.P9281404206070190295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009121 n - A000248 n

end

end A292952.P9281404206070190295

/-!
# A292953: E.g.f.: exp(-1/2! * x^2 * exp(x)).

The programs for A292953, there is no canonical definition to state claims against.
-/

/-! ## A292953.P11736725337868674705

`A293015(∑[n+3])`
-/

namespace A292953.P11736725337868674705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292953.P11736725337868674705

/-! ## A292953.P15166761496021192176

`and(-1, A293015(A055998(n+1)))`
-/

namespace A292953.P15166761496021192176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A293015 (A055998 (n + 1)).toNat)

end

end A292953.P15166761496021192176

/-! ## A292953.P110356826735217074

`A293015(A055998(n+1))+char[A063171(2*(n+1))-2]`
-/

namespace A292953.P110356826735217074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (2 * (n + 1)) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (A055998 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292953.P110356826735217074

/-! ## A292953.P8609497292581556713

`A001222(A000043(n+1))*A293015(A141214(n))`
-/

namespace A292953.P8609497292581556713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * A293015 (A141214 n).toNat

end

end A292953.P8609497292581556713

/-! ## A292953.P5934053099080030172

`A293015(A141214(n))*A320438(A320438(n+1)+1)`
-/

namespace A292953.P5934053099080030172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (A141214 n).toNat * A320438 (A320438 (n + 1) + 1).toNat

end

end A292953.P5934053099080030172

/-!
# A292954: E.g.f.: exp(-1/3! * x^3 * exp(x)).

The programs for A292954, there is no canonical definition to state claims against.
-/

/-! ## A292954.P6588459213560385258

`(-1)^n*A292910(n)`
-/

namespace A292954.P6588459213560385258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A292910 n

end

end A292954.P6588459213560385258

/-! ## A292954.P8067530472587277554

`A293015(∑[n+4]+2)`
-/

namespace A292954.P8067530472587277554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A292954.P8067530472587277554

/-! ## A292954.P16525483047466305632

`or(A000007(n), A293015(A046691(n+2)))`
-/

namespace A292954.P16525483047466305632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293015 (A046691 (n + 2)).toNat)

end

end A292954.P16525483047466305632

/-! ## A292954.P9737381420403702370

`A293015(A046691(n+2))+A000007(n+4)`
-/

namespace A292954.P9737381420403702370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (A046691 (n + 2)).toNat + A000007 (n + 4)

end

end A292954.P9737381420403702370

/-! ## A292954.P1230907683727188933

`A319691(2*(n+2))+A293015(A046691(n+2))`
-/

namespace A292954.P1230907683727188933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319691 (2 * (n + 2)) + A293015 (A046691 (n + 2)).toNat

end

end A292954.P1230907683727188933

/-! ## A292954.P9352382279798757879

`A293015(A046691(n+2))%A058313(3*n+4)`
-/

namespace A292954.P9352382279798757879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293015 (A046691 (n + 2)).toNat) (A058313 (3 * n + 4))

end

end A292954.P9352382279798757879

/-!
# A292955: E.g.f.: exp(-1/4! * x^4 * exp(x)).

The programs for A292955, there is no canonical definition to state claims against.
-/

/-! ## A292955.P10811299300399175557

`A293015(A052905(n+2))`
-/

namespace A292955.P10811299300399175557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (A052905 (n + 2)).toNat

end

end A292955.P10811299300399175557

/-! ## A292955.P16029444975922942426

`A293015(eq[4, A025581(n)])`
-/

namespace A292955.P16029444975922942426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292955.P16029444975922942426

/-! ## A292955.P11475496245112928153

`A293015(A000217(n+5)-5)`
-/

namespace A292955.P11475496245112928153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (A000217 (n + 5) - 5).toNat

end

end A292955.P11475496245112928153

/-! ## A292955.P5443978327297879882

`A293015(eq[5, A004736(n+1)])`
-/

namespace A292955.P5443978327297879882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292955.P5443978327297879882

/-! ## A292955.P11122105279435446706

`A293015(Δ[A023545(n+1)]-1)`
-/

namespace A292955.P11122105279435446706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (f1 (n + 1) - f1 n - 1).toNat

end

end A292955.P11122105279435446706

/-! ## A292955.P11979457593707494127

`A293015(A005408(n+1)+A000124(n+3))`
-/

namespace A292955.P11979457593707494127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (A005408 (n + 1) + A000124 (n + 3)).toNat

end

end A292955.P11979457593707494127

/-!
# A292956: Rectangular array by antidiagonals: T(n,m) = rank of n*(r+m) when all the numbers k*(r+h), where r = sqrt(2), k>=1, h>=0, are jointly ranked.

The programs for A292956, there is no canonical definition to state claims against.
-/

/-! ## A292956.P4321702243975169903

`A182846(∑[char[∑[n]]]²-n)`
-/

namespace A292956.P4321702243975169903
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182846 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A292956.P4321702243975169903

/-! ## A292956.P2505434852990840549

`A182846(A038722(n+1))%255`
-/

namespace A292956.P2505434852990840549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182846 (A038722 (n + 1)).toNat) 255

end

end A292956.P2505434852990840549

/-! ## A292956.P2189401729119206240

`∑{d}[A182846(A038722(n+1)), A000010(#)]`
-/

namespace A292956.P2189401729119206240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182846 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A292956.P2189401729119206240

/-! ## A292956.P18339562237664607464

`A178334(n+2)*A182846(A038722(n+1))`
-/

namespace A292956.P18339562237664607464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 2) * A182846 (A038722 (n + 1)).toNat

end

end A292956.P18339562237664607464

/-! ## A292956.P4053153496072610867

`A182846(A038722(n+1))/A010684(2*n)`
-/

namespace A292956.P4053153496072610867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182846 (A038722 (n + 1)).toNat : ℚ) / (A010684 (2 * n) : ℚ)

end

end A292956.P4053153496072610867

/-! ## A292956.P11147976261478858586

`A182846(A038722(n+1))/A000041(C(n, n²)!)`
-/

namespace A292956.P11147976261478858586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182846 (A038722 (n + 1)).toNat : ℚ) / (A000041 (Nat.factorial (Nat.choose n (n ^ 2))) : ℚ)

end

end A292956.P11147976261478858586

/-! ## A292956.P5001916273530890659

`A182846(A038722(n+1))^gcd(255, A073102(n+1))`
-/

namespace A292956.P5001916273530890659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182846 (A038722 (n + 1)).toNat ^ Int.gcd 255 (A073102 (n + 1))

end

end A292956.P5001916273530890659

/-! ## A292956.P8758746361850987036

`A182846(A038722(n+1))^A005117(floor(n/(n+1))+1)`
-/

namespace A292956.P8758746361850987036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182846 (A038722 (n + 1)).toNat : ℚ) ^ (A005117 (⌊(n : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat : ℤ)

end

end A292956.P8758746361850987036

/-! ## A292956.P12409074451959455629

`A182846(A038722(n+1))^A020639(floor(n/(n+1))+1)`
-/

namespace A292956.P12409074451959455629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182846 (A038722 (n + 1)).toNat : ℚ) ^ (A020639 (⌊(n : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat : ℤ)

end

end A292956.P12409074451959455629

/-! ## A292956.P10566925106086214021

`A182846(A038722(n+1))+A000010(floor(n/(n+1))+1)-1`
-/

namespace A292956.P10566925106086214021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182846 (A038722 (n + 1)).toNat + A000010 (⌊(n : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat - 1

end

end A292956.P10566925106086214021

/-!
# A292957: Rectangular array by antidiagonals: T(n,m) = rank of n*(r+m) when all the numbers k*(r+h), where r = sqrt(3), k>=1, h>=0, are jointly ranked.

The programs for A292957, there is no canonical definition to state claims against.
-/

/-! ## A292957.P13967539559977450686

`A182847(∑[char[∑[n]]]²-n)`
-/

namespace A292957.P13967539559977450686
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182847 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A292957.P13967539559977450686

/-! ## A292957.P6143655431871875935

`A182847(A038722(n+1))%255`
-/

namespace A292957.P6143655431871875935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182847 (A038722 (n + 1)).toNat) 255

end

end A292957.P6143655431871875935

/-! ## A292957.P15973325034051328043

`A182847(A038722(n+1))*A304042(n)`
-/

namespace A292957.P15973325034051328043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182847 (A038722 (n + 1)).toNat * A304042 n

end

end A292957.P15973325034051328043

/-! ## A292957.P1059984206836053671

`A182847(A038722(n+1))^A178334(n)`
-/

namespace A292957.P1059984206836053671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182847 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A292957.P1059984206836053671

/-! ## A292957.P12242460874435422495

`gcd(A130706(n), A182847(A038722(n+1)))`
-/

namespace A292957.P12242460874435422495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A182847 (A038722 (n + 1)).toNat)

end

end A292957.P12242460874435422495

/-! ## A292957.P1173235314267303850

`or(A000007(n), A182847(A038722(n+1)))`
-/

namespace A292957.P1173235314267303850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A182847 (A038722 (n + 1)).toNat)

end

end A292957.P1173235314267303850

/-! ## A292957.P6966816018034364799

`abs(A033999(n)*A182847(A038722(n+1)))`
-/

namespace A292957.P6966816018034364799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A182847 (A038722 (n + 1)).toNat|

end

end A292957.P6966816018034364799

/-! ## A292957.P16135024462593600143

`A182847(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A292957.P16135024462593600143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182847 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A292957.P16135024462593600143

/-! ## A292957.P13573709870673469735

`A182847(A038722(n+1))+val(A000040(n+4), 2)`
-/

namespace A292957.P13573709870673469735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182847 (A038722 (n + 1)).toNat + (SequenceMachineLib.valuation (A000040 (n + 4)).toNat 2 : ℤ)

end

end A292957.P13573709870673469735

/-!
# A292958: Rectangular array by antidiagonals: T(n,m) = rank of n*(r+m) when all the numbers k*(r+h), where r = sqrt(5), k>=1, h>=0, are jointly ranked.

The programs for A292958, there is no canonical definition to state claims against.
-/

/-! ## A292958.P18433434121161947659

`A182848(∑[char[∑[n]]]²-n)`
-/

namespace A292958.P18433434121161947659
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182848 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A292958.P18433434121161947659

/-! ## A292958.P7996577720589334603

`A182848(∑[2*n]%comp[∑[n]]+1)%(n+2)²`
-/

namespace A292958.P7996577720589334603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182848 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)) ((n + 2) ^ 2 : ℤ)

end

end A292958.P7996577720589334603

/-! ## A292958.P13062113903382747558

`A182848(A038722(n+1))%255`
-/

namespace A292958.P13062113903382747558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182848 (A038722 (n + 1)).toNat) 255

end

end A292958.P13062113903382747558

/-! ## A292958.P353042338637236701

`A182848(A038722(n+1))*A304042(n)`
-/

namespace A292958.P353042338637236701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182848 (A038722 (n + 1)).toNat * A304042 n

end

end A292958.P353042338637236701

/-! ## A292958.P10977515140506576780

`A182848(A038722(n+1))^A178334(n)`
-/

namespace A292958.P10977515140506576780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182848 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A292958.P10977515140506576780

/-! ## A292958.P6950586523504584416

`gcd(A000038(n), A182848(A038722(n+1)))`
-/

namespace A292958.P6950586523504584416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A182848 (A038722 (n + 1)).toNat)

end

end A292958.P6950586523504584416

/-! ## A292958.P1046909996140824623

`A025463(n)!*A182848(A038722(n+1))`
-/

namespace A292958.P1046909996140824623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025463 n).toNat : ℤ) * A182848 (A038722 (n + 1)).toNat

end

end A292958.P1046909996140824623

/-! ## A292958.P421268530576323027

`A182848(A038722(n+1))^cos(A000007(n))`
-/

namespace A292958.P421268530576323027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A182848 (A038722 (n + 1)).toNat : ℝ) ^ (Real.cos (A000007 n : ℝ))

end

end A292958.P421268530576323027

/-! ## A292958.P16888467181105418937

`A182848(A038722(n+1))+A000007(n+1)`
-/

namespace A292958.P16888467181105418937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182848 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A292958.P16888467181105418937

/-! ## A292958.P292069121038688150

`∑{e}[A000040(n+1), #]*A182848(A038722(n+1))`
-/

namespace A292958.P292069121038688150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A182848 (A038722 (n + 1)).toNat

end

end A292958.P292069121038688150

/-!
# A292959: Rectangular array by antidiagonals: T(n,m) = rank of n*(r+m) when all the numbers k*(r+h), where r = (1+sqrt(5))/2 (the golden ratio), k>=1, h>=0, are jointly ranked.

The programs for A292959, there is no canonical definition to state claims against.
-/

/-! ## A292959.P5670588342469233492

`A182849(∑[char[∑[n]]]²-n)`
-/

namespace A292959.P5670588342469233492
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182849 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A292959.P5670588342469233492

/-! ## A292959.P13653501019619031473

`A182849(A038722(n+1))%255`
-/

namespace A292959.P13653501019619031473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182849 (A038722 (n + 1)).toNat) 255

end

end A292959.P13653501019619031473

/-! ## A292959.P4247623155020455059

`A182849(A038722(char[2]+1+n))-char[2]`
-/

namespace A292959.P4247623155020455059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182849 (A038722 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A292959.P4247623155020455059

/-! ## A292959.P11252745577947855781

`gcd(A000038(n), A182849(A038722(n+1)))`
-/

namespace A292959.P11252745577947855781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A182849 (A038722 (n + 1)).toNat)

end

end A292959.P11252745577947855781

/-! ## A292959.P13425356184323184260

`lcm(A165326(n), A182849(A038722(n+1)))`
-/

namespace A292959.P13425356184323184260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 n) (A182849 (A038722 (n + 1)).toNat)

end

end A292959.P13425356184323184260

/-! ## A292959.P6804092254619949025

`or(A000007(n), A182849(A038722(n+1)))`
-/

namespace A292959.P6804092254619949025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A182849 (A038722 (n + 1)).toNat)

end

end A292959.P6804092254619949025

/-! ## A292959.P12926735359241884038

`A182849(A038722(n+1))/abs(A020985(n))`
-/

namespace A292959.P12926735359241884038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182849 (A038722 (n + 1)).toNat : ℚ) / (|A020985 n| : ℚ)

end

end A292959.P12926735359241884038

/-! ## A292959.P7181748395026612419

`gcd(2, A000040(n+2))*A182849(A038722(n+1))`
-/

namespace A292959.P7181748395026612419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A182849 (A038722 (n + 1)).toNat

end

end A292959.P7181748395026612419

/-! ## A292959.P12890269351261929614

`A182849(A038722(n+1))-A020639(2*(n+1))+2`
-/

namespace A292959.P12890269351261929614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182849 (A038722 (n + 1)).toNat - A020639 (2 * (n + 1)) + 2

end

end A292959.P12890269351261929614

/-! ## A292959.P10376462947819499892

`A182849(A038722(n+1))+∑{d}[n+1, #]-A000203(n+1)`
-/

namespace A292959.P10376462947819499892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182849 (A038722 (n + 1)).toNat + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A000203 (n + 1)

end

end A292959.P10376462947819499892

/-!
# A292960: Rectangular array by antidiagonals: T(n,m) = rank of n*(r+m) when all the numbers k*(r+h), where r = ((1+sqrt(5))/2)^2, k>=1, h>=0, are jointly ranked.

The programs for A292960, there is no canonical definition to state claims against.
-/

/-! ## A292960.P2125690924328029062

`A292963(n+1)-A216278(A008955(n))`
-/

namespace A292960.P2125690924328029062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292963 (n + 1) - A216278 (A008955 n).toNat

end

end A292960.P2125690924328029062

/-! ## A292960.P7978365254427290054

`or(A056978(A284577(n)), A292958(n+1))`
-/

namespace A292960.P7978365254427290054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056978 (A284577 n).toNat) (A292958 (n + 1))

end

end A292960.P7978365254427290054

/-! ## A292960.P43275223585437779

`A292963(n+1)-A285533(A001248(2*n+3))`
-/

namespace A292960.P43275223585437779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292963 (n + 1) - A285533 (A001248 (2 * n + 3)).toNat

end

end A292960.P43275223585437779

/-!
# A292963: Rectangular array by antidiagonals: T(n,m) = rank of n*(e + m) when all the numbers k*(e+h), for k>=1, h>=0, are jointly ranked.

The programs for A292963, there is no canonical definition to state claims against.
-/

/-! ## A292963.P1454283001472450191

`A292960(n+1)-A072786(A156885(n)²)`
-/

namespace A292963.P1454283001472450191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292960 (n + 1) - A072786 (A156885 n ^ 2).toNat

end

end A292963.P1454283001472450191

/-! ## A292963.P13270764217309651604

`A292960(n+1)+A185284(A292960(2*n+1))`
-/

namespace A292963.P13270764217309651604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292960 (n + 1) + A185284 (A292960 (2 * n + 1)).toNat

end

end A292963.P13270764217309651604

/-! ## A292963.P6520813227438316438

`A292960(n+1)+A063655(A029542(n+1))%2`
-/

namespace A292963.P6520813227438316438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292960 (n + 1) + Int.tmod (A063655 (A029542 (n + 1)).toNat) 2

end

end A292963.P6520813227438316438

/-!
# A292969: Expansion of e.g.f. exp(x^4 * exp(-x)).

The programs for A292969, there is no canonical definition to state claims against.
-/

/-! ## A292969.P2425203129150258687

`A292973(A052905(n+2))`
-/

namespace A292969.P2425203129150258687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 (A052905 (n + 2)).toNat

end

end A292969.P2425203129150258687

/-! ## A292969.P13986155877224919916

`A292973(eq[4, A025581(n)])`
-/

namespace A292969.P13986155877224919916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292969.P13986155877224919916

/-! ## A292969.P17768647992217652657

`A292973(A046691(n+3)-1)`
-/

namespace A292969.P17768647992217652657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 (A046691 (n + 3) - 1).toNat

end

end A292969.P17768647992217652657

/-! ## A292969.P5342103601549004256

`A292973(A000217(n+5)-5)`
-/

namespace A292969.P5342103601549004256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 (A000217 (n + 5) - 5).toNat

end

end A292969.P5342103601549004256

/-! ## A292969.P18062432690017274382

`A292973(eq[5, A004736(n+1)])`
-/

namespace A292969.P18062432690017274382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292969.P18062432690017274382

/-!
# A292970: Expansion of e.g.f. exp(x^5 * exp(-x)).

The programs for A292970, there is no canonical definition to state claims against.
-/

/-! ## A292970.P17740662708760829236

`A292973(A055999(n+3))`
-/

namespace A292970.P17740662708760829236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 (A055999 (n + 3)).toNat

end

end A292970.P17740662708760829236

/-! ## A292970.P16560396365582646810

`A292973(eq[5, A025581(n)])`
-/

namespace A292970.P16560396365582646810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292970.P16560396365582646810

/-! ## A292970.P14743333079826223530

`A292973(Δ[A023551(n+1)])`
-/

namespace A292970.P14743333079826223530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 (f1 (n + 1) - f1 n).toNat

end

end A292970.P14743333079826223530

/-! ## A292970.P8915623713732048999

`A292973(A046691(n+4)-2)`
-/

namespace A292970.P8915623713732048999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 (A046691 (n + 4) - 2).toNat

end

end A292970.P8915623713732048999

/-! ## A292970.P1944353579320563946

`A292973(A000217(n+6)-6)`
-/

namespace A292970.P1944353579320563946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 (A000217 (n + 6) - 6).toNat

end

end A292970.P1944353579320563946

/-!
# A292971: Number of 4-regular maps with n vertices on the torus, up to orientation-preserving isomorphisms.

The programs for A292971, there is no canonical definition to state claims against.
-/

/-! ## A292971.P9178468809189703582

`∑[A276444(A068571(n))]`
-/

namespace A292971.P9178468809189703582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276444 (A068571 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292971.P9178468809189703582

/-!
# A292973: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where T(0,k) = 1 and T(n,k) = (-1)^(k+1) * k! * Sum_{i=0..n-1} (-1)^i * binomial(n-1,i) * binomial(i+1,k) * T(n-1-i,k) for n > 0.

The programs for A292973, there is no canonical definition to state claims against.
-/

/-! ## A292973.P11002195738409778550

`A096591(A048993(n))*A292948(n)`
-/

namespace A292973.P11002195738409778550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096591 (A048993 n).toNat * A292948 n

end

end A292973.P11002195738409778550

/-! ## A292973.P9240653472169826898

`A000120(A155971(n))*A292948(n)`
-/

namespace A292973.P9240653472169826898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A155971 n).toNat * A292948 n

end

end A292973.P9240653472169826898

/-! ## A292973.P17453251467571441570

`A010177(A288972(n))*A292948(n)`
-/

namespace A292973.P17453251467571441570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010177 (A288972 n).toNat * A292948 n

end

end A292973.P17453251467571441570

/-! ## A292973.P5976106070846068306

`A040001(A273712(n))*A292948(n)`
-/

namespace A292973.P5976106070846068306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A273712 n).toNat * A292948 n

end

end A292973.P5976106070846068306

/-! ## A292973.P3100273386824360584

`A143965(A333901(n))*A292948(n)`
-/

namespace A292973.P3100273386824360584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143965 (A333901 n).toNat * A292948 n

end

end A292973.P3100273386824360584

/-!
# A292975: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(k*x)*(sec(x) + tan(x)).

The programs for A292975, there is no canonical definition to state claims against.
-/

/-! ## A292975.P15393785395234575340

`A145034(n)-A018843(A107616(n+1))`
-/

namespace A292975.P15393785395234575340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145034 n - A018843 (A107616 (n + 1)).toNat

end

end A292975.P15393785395234575340

/-! ## A292975.P16514268314804594635

`A120019(n+1)-A186747(A008279(n))`
-/

namespace A292975.P16514268314804594635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120019 (n + 1) - A186747 (A008279 n).toNat

end

end A292975.P16514268314804594635

/-!
# A292976: a(n) = n! * [x^n] exp(n*x)*(sec(x) + tan(x)).

The programs for A292976, there is no canonical definition to state claims against.
-/

/-! ## A292976.P3869145327273343883

`A292975(∑[4*n])`
-/

namespace A292976.P3869145327273343883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292976.P3869145327273343883

/-! ## A292976.P8403412848202926190

`record[A003982(n)*A292975(n)]`
-/

namespace A292976.P8403412848202926190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A292975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292976.P8403412848202926190

/-! ## A292976.P11215764861231758507

`record[A292975(gcd(n, A061579(n)))]`
-/

namespace A292976.P11215764861231758507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (Int.gcd (n : ℤ) (A061579 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292976.P11215764861231758507

/-! ## A292976.P918564157386189632

`record[gcd(A114327(n), A292975(n))]`
-/

namespace A292976.P918564157386189632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A292975 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292976.P918564157386189632

/-! ## A292976.P3465064669967674641

`or(A000007(n), A292975(A046092(n)))`
-/

namespace A292976.P3465064669967674641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292975 (A046092 n).toNat)

end

end A292976.P3465064669967674641

/-!
# A292977: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(-k*x)/(1 - x).

The programs for A292977, there is no canonical definition to state claims against.
-/

/-! ## A292977.P809389224463906470

`A335977(n)+A035060(A156953(n))`
-/

namespace A292977.P809389224463906470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335977 n + A035060 (A156953 n).toNat

end

end A292977.P809389224463906470

/-! ## A292977.P3053511433822361944

`A351420(n+1)-A102683(A099429(n))`
-/

namespace A292977.P3053511433822361944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351420 (n + 1) - A102683 (A099429 n).toNat

end

end A292977.P3053511433822361944

/-! ## A292977.P2023938337687764714

`A351420(n+1)-A055641(A283043(n))`
-/

namespace A292977.P2023938337687764714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351420 (n + 1) - A055641 (A283043 n).toNat

end

end A292977.P2023938337687764714

/-! ## A292977.P16248338926061056709

`A351420(n+1)-A054907(A289192(n))`
-/

namespace A292977.P16248338926061056709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351420 (n + 1) - A054907 (A289192 n).toNat

end

end A292977.P16248338926061056709

/-! ## A292977.P3354414865147532479

`A361781(n)+A332671(A006206(n+2))`
-/

namespace A292977.P3354414865147532479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361781 n + A332671 (A006206 (n + 2)).toNat

end

end A292977.P3354414865147532479

/-!
# A292978: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where T(0,k) = 1 and T(n,k) = k! * Sum_{i=0..n-1} binomial(n-1,i) * binomial(i+1,k) * T(n-1-i,k) for n > 0.

The programs for A292978, there is no canonical definition to state claims against.
-/

/-! ## A292978.P10448972467693987099

`A096591(A048993(n))*A145460(n)`
-/

namespace A292978.P10448972467693987099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096591 (A048993 n).toNat * A145460 n

end

end A292978.P10448972467693987099

/-! ## A292978.P14837787384551580231

`A000120(A155971(n))*A145460(n)`
-/

namespace A292978.P14837787384551580231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A155971 n).toNat * A145460 n

end

end A292978.P14837787384551580231

/-! ## A292978.P12864032830260588935

`A010177(A288972(n))*A145460(n)`
-/

namespace A292978.P12864032830260588935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010177 (A288972 n).toNat * A145460 n

end

end A292978.P12864032830260588935

/-! ## A292978.P2173556756176184243

`A040001(A273712(n))*A145460(n)`
-/

namespace A292978.P2173556756176184243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A273712 n).toNat * A145460 n

end

end A292978.P2173556756176184243

/-! ## A292978.P15155548102608809633

`A143965(A333901(n))*A145460(n)`
-/

namespace A292978.P15155548102608809633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143965 (A333901 n).toNat * A145460 n

end

end A292978.P15155548102608809633

/-!
# A292979: Expansion of e.g.f. exp(x^4 * exp(x)).

The programs for A292979, there is no canonical definition to state claims against.
-/

/-! ## A292979.P11601052989019397403

`(-1)^n*A292969(n)`
-/

namespace A292979.P11601052989019397403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A292969 n

end

end A292979.P11601052989019397403

/-! ## A292979.P12605672122316859195

`abs(A292969(n))`
-/

namespace A292979.P12605672122316859195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292969 n|

end

end A292979.P12605672122316859195

/-! ## A292979.P7812429259413915939

`A292978(A056115(n)+10)`
-/

namespace A292979.P7812429259413915939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 (A056115 n + 10).toNat

end

end A292979.P7812429259413915939

/-! ## A292979.P564979826137315019

`A292978(Δ[A111396(n)]-2)`
-/

namespace A292979.P564979826137315019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 (f1 (n + 1) - f1 n - 2).toNat

end

end A292979.P564979826137315019

/-! ## A292979.P723853631598280644

`A292978(A055998(n+3)-2)`
-/

namespace A292979.P723853631598280644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 (A055998 (n + 3) - 2).toNat

end

end A292979.P723853631598280644

/-! ## A292979.P16790643953566504651

`gcd(A292946(val(n+1, 2)), A292969(n))`
-/

namespace A292979.P16790643953566504651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292946 (SequenceMachineLib.valuation (n + 1) 2)) (A292969 n)

end

end A292979.P16790643953566504651

/-! ## A292979.P3145744182976892124

`A292978((n+5)²-A167499(n+3))`
-/

namespace A292979.P3145744182976892124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 (((n + 5) ^ 2 : ℤ) - A167499 (n + 3)).toNat

end

end A292979.P3145744182976892124

/-! ## A292979.P6401084718473801242

`gcd(A097945(A022144(n)), A292969(n))`
-/

namespace A292979.P6401084718473801242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097945 (A022144 n).toNat) (A292969 n)

end

end A292979.P6401084718473801242

/-!
# A292980: Smaller of bi-unitary amicable pair.

The programs for A292980, there is no canonical definition to state claims against.
-/

/-! ## A292980.P1613447900619756675

`A331970(A292981(n+1))`
-/

namespace A292980.P1613447900619756675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (A292981 (n + 1)).toNat

end

end A292980.P1613447900619756675

/-!
# A292981: Larger of bi-unitary amicable pair.

The programs for A292981, there is no canonical definition to state claims against.
-/

/-! ## A292981.P10928618299391279729

`A331970(A292980(n+1))`
-/

namespace A292981.P10928618299391279729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (A292980 (n + 1)).toNat

end

end A292981.P10928618299391279729

/-!
# A292982: Bi-unitary abundant numbers: numbers k such that bsigma(k) > 2*k, where bsigma is the sum of the bi-unitary divisors function (A188999).

The programs for A292982, there is no canonical definition to state claims against.
-/

/-! ## A292982.P8613592023096168552

`lt[n, A331970(A028310(n))]`
-/

namespace A292982.P8613592023096168552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A292982.P8613592023096168552

/-! ## A292982.P2638671134024486891

`A020725(lt[n+1, A331970(n+1)])`
-/

namespace A292982.P2638671134024486891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A292982.P2638671134024486891

/-! ## A292982.P1550789432101524889

`A153152(lt[n+1, A331970(n+1)])`
-/

namespace A292982.P1550789432101524889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A292982.P1550789432101524889

/-! ## A292982.P11864055111937254008

`lt[A005408(n), A188999(A028310(n))]`
-/

namespace A292982.P11864055111937254008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188999 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292982.P11864055111937254008

/-! ## A292982.P7478424120936611769

`lt[A028310(2*n), A188999(A028310(n))]`
-/

namespace A292982.P7478424120936611769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188999 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292982.P7478424120936611769

/-! ## A292982.P6648008729743862091

`lt[n+1, A331970(A233583(n+1))]`
-/

namespace A292982.P6648008729743862091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A292982.P6648008729743862091

/-!
# A292984: Bi-unitary superabundant numbers: numbers n such that bsigma(n)/n > bsigma(m)/m for all m < n, where bsigma is the sum of the bi-unitary divisors function (A188999).

The programs for A292984, there is no canonical definition to state claims against.
-/

/-! ## A292984.P18394057196944276495

`A293185(lt[A386379(n+3), A386402(2*n+1)])`
-/

namespace A292984.P18394057196944276495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386379 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386402 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293185 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292984.P18394057196944276495

/-! ## A292984.P1240787166505965802

`∩[A216365(n+1), A293185(n+1)]`
-/

namespace A292984.P1240787166505965802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292984.P1240787166505965802

/-! ## A292984.P9454179385300101887

`∩[A293185(n+1), A330813(n+1)]`
-/

namespace A292984.P9454179385300101887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292984.P9454179385300101887

/-! ## A292984.P1088118271056739288

`A293185(A185213(n)+A043318(n+1))`
-/

namespace A292984.P1088118271056739288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293185 (A185213 n + A043318 (n + 1)).toNat

end

end A292984.P1088118271056739288

/-!
# A292985: Bi-unitary pseudoperfect numbers: numbers that are equal to the sum of a subset of their aliquot bi-unitary divisors.

The programs for A292985, there is no canonical definition to state claims against.
-/

/-! ## A292985.P11274354198638472537

`∩[A122409(n+1), A335215(n+1)]`
-/

namespace A292985.P11274354198638472537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292985.P11274354198638472537

/-! ## A292985.P12844780430140637659

`∩[A231238(n+1), A335215(n+1)]`
-/

namespace A292985.P12844780430140637659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292985.P12844780430140637659

/-! ## A292985.P1324531002263820547

`∩[A335215(n+1), A377431(n+1)]`
-/

namespace A292985.P1324531002263820547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292985.P1324531002263820547

/-! ## A292985.P17503369015029535558

`A335215(A062399(n+1))`
-/

namespace A292985.P17503369015029535558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335215 (A062399 (n + 1)).toNat

end

end A292985.P17503369015029535558

/-! ## A292985.P9221320424810022237

`A111807(A335215(n+1))`
-/

namespace A292985.P9221320424810022237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111807 (A335215 (n + 1)).toNat

end

end A292985.P9221320424810022237

/-!
# A292986: Bi-unitary weird numbers: bi-unitary abundant numbers (A292982) that are not bi-unitary pseudoperfect (A292985).

The programs for A292986, there is no canonical definition to state claims against.
-/

/-! ## A292986.P2590913513047505518

`∪[A306984(n+1), A245092(A348631(n+1))]`
-/

namespace A292986.P2590913513047505518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A348631 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A292986.P2590913513047505518

/-! ## A292986.P2409405963378077608

`A306984(comp[A047689(n)*A218734(n)])`
-/

namespace A292986.P2409405963378077608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047689 n * A218734 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306984 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A292986.P2409405963378077608

/-! ## A292986.P17294023520266640135

`A306984(n+1)%A186625(n+1)`
-/

namespace A292986.P17294023520266640135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306984 (n + 1)) (A186625 (n + 1))

end

end A292986.P17294023520266640135

/-! ## A292986.P17619266235632377566

`A306984(n+1)+A204904(2*n+5)%2`
-/

namespace A292986.P17619266235632377566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306984 (n + 1) + Int.tmod (A204904 (2 * n + 5)) 2

end

end A292986.P17619266235632377566

/-!
# A292987: Beatty sequence of the real root of x^5 - x^4 - x^2 - 1; complement of A292988.

The programs for A292987, the canonical program `A292987.P9850565851364099735` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292987 has offset 1).

The definition of A292987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292987.P17246503221923985039

`round(n*acos(0))+1`
-/

namespace A292987.P17246503221923985039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.arccos (0 : ℝ)) + 1

end

end A292987.P17246503221923985039

namespace A292987

/-- `round(n*acos(0))+1` -/
def P17246503221923985039.Spec : Prop :=
  ∀ n, P17246503221923985039.a n = A292987 (n + 1)

end A292987

/-! ## A292987.P8806593330299187919

`round(n*asin(1))+1`
-/

namespace A292987.P8806593330299187919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.arcsin (1 : ℝ)) + 1

end

end A292987.P8806593330299187919

namespace A292987

/-- `round(n*asin(1))+1` -/
def P8806593330299187919.Spec : Prop :=
  ∀ n, P8806593330299187919.a n = A292987 (n + 1)

end A292987

/-! ## A292987.P18402326727672002988

`lt[acot(tan(2*n)), γ]`
-/

namespace A292987.P18402326727672002988
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Real.tan (2 * n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292987.P18402326727672002988

namespace A292987

/-- `lt[acot(tan(2*n)), γ]` -/
def P18402326727672002988.Spec : Prop :=
  ∀ n, (P18402326727672002988.a n : ℤ) = A292987 (n + 1)

end A292987

/-! ## A292987.P1939948986628178591

`ceil((π*n+1)/2)`
-/

namespace A292987.P1939948986628178591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.pi * (n : ℝ) + 1) / 2⌉

end

end A292987.P1939948986628178591

namespace A292987

/-- `ceil((π*n+1)/2)` -/
def P1939948986628178591.Spec : Prop :=
  ∀ n, P1939948986628178591.a n = A292987 (n + 1)

end A292987

/-! ## A292987.P4144723958982002868

`lt[tan(2*(n+5)), γ]`
-/

namespace A292987.P4144723958982002868
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (2 * (n + 5) : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292987.P4144723958982002868

namespace A292987

/-- `lt[tan(2*(n+5)), γ]` -/
def P4144723958982002868.Spec : Prop :=
  ∀ n, (P4144723958982002868.a n : ℤ) = A292987 (n + 1)

end A292987

/-! ## A292987.P9108284075513227632

`lt[cot(1-2*n), γ]`
-/

namespace A292987.P9108284075513227632
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (1 - (2 * n : ℤ) : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292987.P9108284075513227632

namespace A292987

/-- `lt[cot(1-2*n), γ]` -/
def P9108284075513227632.Spec : Prop :=
  ∀ n, (P9108284075513227632.a n : ℤ) = A292987 (n + 1)

end A292987

/-! ## A292987.P9395144002837830164

`round(∑[acos(acot(exp(n+1)))])`
-/

namespace A292987.P9395144002837830164
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (SequenceMachineLib.acot (Real.exp (n + 1 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292987.P9395144002837830164

namespace A292987

/-- `round(∑[acos(acot(exp(n+1)))])` -/
def P9395144002837830164.Spec : Prop :=
  ∀ n, P9395144002837830164.a n = A292987 (n + 1)

end A292987

/-! ## A292987.P15046123245267842427

`round(2*n*atan(1))+1`
-/

namespace A292987.P15046123245267842427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) * Real.arctan (1 : ℝ)) + 1

end

end A292987.P15046123245267842427

namespace A292987

/-- `round(2*n*atan(1))+1` -/
def P15046123245267842427.Spec : Prop :=
  ∀ n, P15046123245267842427.a n = A292987 (n + 1)

end A292987

/-! ## A292987.P9850565851364099735

`A121381(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292987

/-- `A121381(n)-a(n-1)` -/
def P9850565851364099735.Spec : Prop :=
  ∀ n, P9850565851364099735.a n = A292987 (n + 1)

theorem P9850565851364099735.correct : P9850565851364099735.Spec := by
  intro n
  simp only [A292987, Nat.add_sub_cancel]

end A292987

/-! ## A292987.P11107693059965265169

`A004084(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A292987.P11107693059965265169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004084 (n + 1) - a (n - 1)

end

end A292987.P11107693059965265169

namespace A292987

/-- `A004084(n+1)-a(n-1)` -/
def P11107693059965265169.Spec : Prop :=
  ∀ n, P11107693059965265169.a n = A292987 (n + 1)

end A292987

/-! ## A292987.P14661477979399326694

`A080513(A022844(n))`
-/

namespace A292987.P14661477979399326694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A022844 n).toNat

end

end A292987.P14661477979399326694

namespace A292987

/-- `A080513(A022844(n))` -/
def P14661477979399326694.Spec : Prop :=
  ∀ n, P14661477979399326694.a n = A292987 (n + 1)

end A292987

/-! ## A292987.P10034189545493374830

`A008619(A121381(n))`
-/

namespace A292987.P10034189545493374830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A121381 n).toNat

end

end A292987.P10034189545493374830

namespace A292987

/-- `A008619(A121381(n))` -/
def P10034189545493374830.Spec : Prop :=
  ∀ n, P10034189545493374830.a n = A292987 (n + 1)

end A292987

/-! ## A292987.P7887958263223655489

`A008619(A004084(n+1))`
-/

namespace A292987.P7887958263223655489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004084 (n + 1)).toNat

end

end A292987.P7887958263223655489

namespace A292987

/-- `A008619(A004084(n+1))` -/
def P7887958263223655489.Spec : Prop :=
  ∀ n, P7887958263223655489.a n = A292987 (n + 1)

end A292987

/-! ## A292987.P10596294810162053018

`A008619(A022844(n)+1)`
-/

namespace A292987.P10596294810162053018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022844 n + 1).toNat

end

end A292987.P10596294810162053018

namespace A292987

/-- `A008619(A022844(n)+1)` -/
def P10596294810162053018.Spec : Prop :=
  ∀ n, P10596294810162053018.a n = A292987 (n + 1)

end A292987

/-! ## A292987.P17519739825014799677

`A008621(A038130(n)+2)`
-/

namespace A292987.P17519739825014799677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A038130 n + 2).toNat

end

end A292987.P17519739825014799677

namespace A292987

/-- `A008621(A038130(n)+2)` -/
def P17519739825014799677.Spec : Prop :=
  ∀ n, P17519739825014799677.a n = A292987 (n + 1)

end A292987

/-! ## A292987.P5176004882087187539

`A140106(A327136(n+2))`
-/

namespace A292987.P5176004882087187539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A327136 (n + 2)).toNat

end

end A292987.P5176004882087187539

namespace A292987

/-- `A140106(A327136(n+2))` -/
def P5176004882087187539.Spec : Prop :=
  ∀ n, P5176004882087187539.a n = A292987 (n + 1)

end A292987

/-! ## A292987.P15991534986550330877

`A008624(2*A121381(n))`
-/

namespace A292987.P15991534986550330877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A121381 n).toNat

end

end A292987.P15991534986550330877

namespace A292987

/-- `A008624(2*A121381(n))` -/
def P15991534986550330877.Spec : Prop :=
  ∀ n, P15991534986550330877.a n = A292987 (n + 1)

end A292987

/-! ## A292987.P10679350813212724458

`A004084(n+1)-A140758(n)`
-/

namespace A292987.P10679350813212724458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1) - A140758 n

end

end A292987.P10679350813212724458

namespace A292987

/-- `A004084(n+1)-A140758(n)` -/
def P10679350813212724458.Spec : Prop :=
  ∀ n, P10679350813212724458.a n = A292987 (n + 1)

end A292987

/-! ## A292987.P3425853161545584447

`∪[A062389(n+1), A127451(n+1)]`
-/

namespace A292987.P3425853161545584447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A292987.P3425853161545584447

namespace A292987

/-- `∪[A062389(n+1), A127451(n+1)]` -/
def P3425853161545584447.Spec : Prop :=
  ∀ n, (P3425853161545584447.a n : ℤ) = A292987 (n + 1)

end A292987

/-! ## A292987.P11139715904330417143

`floor(∑[atan(8^(n+3))])`
-/

namespace A292987.P11139715904330417143
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (8 ^ (n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A292987.P11139715904330417143

namespace A292987

/-- `floor(∑[atan(8^(n+3))])` -/
def P11139715904330417143.Spec : Prop :=
  ∀ n, P11139715904330417143.a n = A292987 (n + 1)

end A292987

/-!
# A292988: Beatty sequence of the real root of 2*x^5 - 9*x^4 + 13*x^3 - 11*x^2 + 5*x - 1; complement of A292987.

The programs for A292988, there is no canonical definition to state claims against.
-/

/-! ## A292988.P17365573856159669312

`comp[round(n*acos(0))]+1`
-/

namespace A292988.P17365573856159669312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.arccos (0 : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A292988.P17365573856159669312

/-! ## A292988.P11743197397701356468

`floor((cos(7)+2)*(n+1))`
-/

namespace A292988.P11743197397701356468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.cos (7 : ℝ) + 2) * (n + 1 : ℝ)⌋

end

end A292988.P11743197397701356468

/-! ## A292988.P7645495974951925512

`comp[round(π*n/2)]+1`
-/

namespace A292988.P7645495974951925512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * ((n : ℚ) / 2 : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A292988.P7645495974951925512

/-! ## A292988.P18186926046808139590

`∑[val(a(val(n², 8)), 2)+2]` with `a(0)=2`
-/

namespace A292988.P18186926046808139590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.valuation (n ^ 2) 8)) 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292988.P18186926046808139590

/-! ## A292988.P9237062949532450466

`ceil(∑[cos(7)-n]+∑[n+2]-1)`
-/

namespace A292988.P9237062949532450466
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (7 : ℝ) - (n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1 : ℝ)⌉

end

end A292988.P9237062949532450466

/-! ## A292988.P12698080264295823230

`∑[A160385(or(20, n))]`
-/

namespace A292988.P12698080264295823230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (Nat.lor 20 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292988.P12698080264295823230

/-! ## A292988.P14503889940929152476

`floor(log2(A126528(n+1)))`
-/

namespace A292988.P14503889940929152476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A126528 (n + 1)).toNat

end

end A292988.P14503889940929152476

/-! ## A292988.P31726423969657297

`A030451(A277096(n+1))`
-/

namespace A292988.P31726423969657297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A277096 (n + 1)).toNat

end

end A292988.P31726423969657297

/-! ## A292988.P5543915691923142284

`∑[or(2, A001221(A061393(n)))]`
-/

namespace A292988.P5543915691923142284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A001221 (A061393 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292988.P5543915691923142284

/-! ## A292988.P5306726536077156207

`∑[A001221(A000203(or(60, n)²))]`
-/

namespace A292988.P5306726536077156207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000203 (Nat.lor 60 n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292988.P5306726536077156207

/-!
# A292989: Triangular numbers having exactly 6 divisors.

The programs for A292989, there is no canonical definition to state claims against.
-/

/-! ## A292989.P301004422198321966

`∩[A075875(n+1), A116541(n+1)]`
-/

namespace A292989.P301004422198321966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292989.P301004422198321966

/-! ## A292989.P988681279603984557

`∩[A075875(n+1), A253653(n+1)]`
-/

namespace A292989.P988681279603984557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292989.P988681279603984557

/-! ## A292989.P1693351910810850848

`∩[A061900(n+1), A075875(n+1)]`
-/

namespace A292989.P1693351910810850848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292989.P1693351910810850848

/-! ## A292989.P4196681246743132665

`A253145(eq[6, A063440(n+1)])`
-/

namespace A292989.P4196681246743132665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292989.P4196681246743132665

/-! ## A292989.P3036836713847892426

`A253145(eq[12, A278253(n+1)])`
-/

namespace A292989.P3036836713847892426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292989.P3036836713847892426

/-!
# A292990: Numbers whose absolute difference from a triangular number is never a prime.

The programs for A292990, there is no canonical definition to state claims against.
-/

/-! ## A292990.P2874313801820518068

`A000217(eq[0, A056564(n)])`
-/

namespace A292990.P2874313801820518068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292990.P2874313801820518068

/-! ## A292990.P5227678610378142246

`A000217(lt[A056564(n), 1])`
-/

namespace A292990.P5227678610378142246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056564 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A292990.P5227678610378142246

/-! ## A292990.P11202519010859020056

`A000217(eq[A056563(n), A089306(n+1)])`
-/

namespace A292990.P11202519010859020056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292990.P11202519010859020056

/-!
# A292995: Sum of digits of 3^n (A004166) divided by 9.

The programs for A292995, the canonical program `A292995.P14469871609488576223` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292995 has offset 0).

The definition of A292995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292995.P14469871609488576223

`floor(A004166(n)/9)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292995

/-- `floor(A004166(n)/9)` -/
def P14469871609488576223.Spec : Prop :=
  ∀ n, P14469871609488576223.a n = A292995 n

theorem P14469871609488576223.correct : P14469871609488576223.Spec := by
  intro n
  simp only [A292995]

end A292995

/-! ## A292995.P5389308521108694872

`A106610(A004166(n)%A169739(n))`
-/

namespace A292995.P5389308521108694872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (Int.tmod (A004166 n) (A169739 n)).toNat

end

end A292995.P5389308521108694872

namespace A292995

/-- `A106610(A004166(n)%A169739(n))` -/
def P5389308521108694872.Spec : Prop :=
  ∀ n, P5389308521108694872.a n = A292995 n

end A292995

/-! ## A292995.P3137761879327207794

`round(A004166(n)/dr(A004166(2*n+1)))`
-/

namespace A292995.P3137761879327207794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004166 n : ℚ) / (SequenceMachineLib.digitalRoot (A004166 (2 * n + 1)) : ℚ))

end

end A292995.P3137761879327207794

namespace A292995

/-- `round(A004166(n)/dr(A004166(2*n+1)))` -/
def P3137761879327207794.Spec : Prop :=
  ∀ n, P3137761879327207794.a n = A292995 n

end A292995

/-! ## A292995.P2664437454036310799

`A343609(A004166(n))`
-/

namespace A292995.P2664437454036310799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A004166 n).toNat

end

end A292995.P2664437454036310799

namespace A292995

/-- `A343609(A004166(n))` -/
def P2664437454036310799.Spec : Prop :=
  ∀ n, P2664437454036310799.a n = A292995 n

end A292995

/-! ## A292995.P1485247843303118908

`A187187(A004166(n))%A008619(n)`
-/

namespace A292995.P1485247843303118908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187187 (A004166 n).toNat) (A008619 n)

end

end A292995.P1485247843303118908

namespace A292995

/-- `A187187(A004166(n))%A008619(n)` -/
def P1485247843303118908.Spec : Prop :=
  ∀ n, P1485247843303118908.a n = A292995 n

end A292995

/-! ## A292995.P15067458076961433625

`A106610(A004166(n))%A103285(n)`
-/

namespace A292995.P15067458076961433625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106610 (A004166 n).toNat) (A103285 n)

end

end A292995.P15067458076961433625

namespace A292995

/-- `A106610(A004166(n))%A103285(n)` -/
def P15067458076961433625.Spec : Prop :=
  ∀ n, P15067458076961433625.a n = A292995 n

end A292995

/-! ## A292995.P9244266040100187829

`floor(∑{digits}[3^n, #]/9)`
-/

namespace A292995.P9244266040100187829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) / 9⌋

end

end A292995.P9244266040100187829

namespace A292995

/-- `floor(∑{digits}[3^n, #]/9)` -/
def P9244266040100187829.Spec : Prop :=
  ∀ n, P9244266040100187829.a n = A292995 n

end A292995

/-! ## A292995.P262365050246179001

`A002264(A002264(∑{digits}[3^n, #]))`
-/

namespace A292995.P262365050246179001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum).toNat

end

end A292995.P262365050246179001

namespace A292995

/-- `A002264(A002264(∑{digits}[3^n, #]))` -/
def P262365050246179001.Spec : Prop :=
  ∀ n, P262365050246179001.a n = A292995 n

end A292995

/-!
# A292997: Irregular triangle read by rows: lexicographically earliest, minimum size sets, S_n, such that {1, 2, ... n} is a subset of the union of S_n with the sums of distinct pairs in S_n and the differences of pairs in S_n.

The programs for A292997, there is no canonical definition to state claims against.
-/

/-! ## A292997.P16962582920920536027

`A099563(A226063(n+2)+A226060(n))`
-/

namespace A292997.P16962582920920536027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A226063 (n + 2) + A226060 n).toNat

end

end A292997.P16962582920920536027

/-! ## A292997.P2998260176374074739

`A167969(eq[A339088(n), A345388(n+1)])`
-/

namespace A292997.P2998260176374074739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292997.P2998260176374074739

/-! ## A292997.P16824632163680040797

`A255810(n+1)-A025469(A218522(n+1))`
-/

namespace A292997.P16824632163680040797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255810 (n + 1) - A025469 (A218522 (n + 1)).toNat

end

end A292997.P16824632163680040797

/-! ## A292997.P13673883218061441769

`A278763(lt[A011782(n), A113088(n)])`
-/

namespace A292997.P13673883218061441769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278763 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292997.P13673883218061441769

/-! ## A292997.P12437714209453446606

`A115577(A331873(2*n+3))-A294930(n+1)`
-/

namespace A292997.P12437714209453446606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115577 (A331873 (2 * n + 3)).toNat - A294930 (n + 1)

end

end A292997.P12437714209453446606

/-!
# A292998: Number of sequences of balls colored with at most n colors such that exactly three balls are the same color as some other ball in the sequence.

The programs for A292998, there is no canonical definition to state claims against.
-/

/-! ## A292998.P2842793508363047210

`(n+1)/6*Δ[Δ[floor(Δ[e*n!])]]`
-/

namespace A292998.P2842793508363047210
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f3 (n + 1) - f3 n⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6 * (f1 (n + 1) - f1 n : ℚ)

end

end A292998.P2842793508363047210

/-! ## A292998.P5058856775589384109

`(n+1)*A095000(n)`
-/

namespace A292998.P5058856775589384109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A095000 n

end

end A292998.P5058856775589384109

/-! ## A292998.P3280700210545903184

`(n+1)*A001341(n)/6`
-/

namespace A292998.P3280700210545903184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A001341 n : ℚ) / 6)

end

end A292998.P3280700210545903184

/-! ## A292998.P2256396578080669936

`(n+1)/3*Δ[A082030(n)]`
-/

namespace A292998.P2256396578080669936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082030 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (f1 (n + 1) - f1 n : ℚ)

end

end A292998.P2256396578080669936

/-! ## A292998.P10785415636565916450

`(n+1)*Δ[A001340(n)/6]`
-/

namespace A292998.P10785415636565916450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001340 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (f1 (n + 1) - f1 n)

end

end A292998.P10785415636565916450

/-! ## A292998.P10321978485602865826

`A095000(n+1)-A082030(n+1)`
-/

namespace A292998.P10321978485602865826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095000 (n + 1) - A082030 (n + 1)

end

end A292998.P10321978485602865826

/-!
# A292999: Triangle read by rows: T(n,k) (n >= 1, 4 <= k <= n+3) is the number of k-sequences of balls colored with at most n colors such that exactly four balls are the same color as some other ball in the sequence.

The programs for A292999, there is no canonical definition to state claims against.
-/

/-! ## A292999.P3703135771455261355

`n*A321762(a(n-1))` with `a(0)=1, a(1)=8, a(2)=10`
-/

namespace A292999.P3703135771455261355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 10] fun n a =>
  (n : ℤ) * A321762 (a (n - 1)).toNat

end

end A292999.P3703135771455261355

