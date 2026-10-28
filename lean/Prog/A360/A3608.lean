import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
# A360800: Numbers Sum_{i=1..2r+1} 2^k(i) such that k(1) is even and, for r > 0 and i < 2r+1, the difference k(i+1)-k(i) is > 0 and odd.

The programs for A360800, there is no canonical definition to state claims against.
-/

/-! ## A360800.P16055918709434248335

`∩[A060142(n), 3*n+1]`
-/

namespace A360800.P16055918709434248335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A360800.P16055918709434248335

/-! ## A360800.P12294826183562560195

`∩[A165404(n), 3*n-2]`
-/

namespace A360800.P12294826183562560195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165404 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360800.P12294826183562560195

/-! ## A360800.P14201182599294332819

`record[gcd((n+1)/3^val(n+1, 3), A343029(2*(n+1)))]`
-/

namespace A360800.P14201182599294332819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) (A343029 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360800.P14201182599294332819

/-! ## A360800.P17877418391448391924

`A165404(A026351(n))`
-/

namespace A360800.P17877418391448391924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165404 (A026351 n).toNat

end

end A360800.P17877418391448391924

/-! ## A360800.P4592549025303228948

`A059010(A391394(n+1))`
-/

namespace A360800.P4592549025303228948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 (A391394 (n + 1)).toNat

end

end A360800.P4592549025303228948

/-! ## A360800.P3663845531695703715

`filter[A060142(n), A010060(#)]`
-/

namespace A360800.P3663845531695703715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A360800.P3663845531695703715

/-! ## A360800.P8987200000555240332

`filter[A060142(n), A011655(#)]`
-/

namespace A360800.P8987200000555240332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A360800.P8987200000555240332

/-! ## A360800.P6486930056887120186

`filter[A016777(n), A086747(#)]`
-/

namespace A360800.P6486930056887120186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086747 (f1 j).toNat = 1) n)

end

end A360800.P6486930056887120186

/-! ## A360800.P17589170198778780551

`filter[A080030(n), A086747(#)]`
-/

namespace A360800.P17589170198778780551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086747 (f1 j).toNat = 1) n)

end

end A360800.P17589170198778780551

/-! ## A360800.P7089641153171617748

`filter[A080031(n), A086747(#)]`
-/

namespace A360800.P7089641153171617748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086747 (f1 j).toNat = 1) n)

end

end A360800.P7089641153171617748

/-!
# A360801: Expansion of Sum_{k>0} (x / (1 - 2 * x^k))^k.

The programs for A360801, the canonical program `A360801.P13672050860262338840` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360801 has offset 1).

The definition of A360801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360801.P13672050860262338840

`∑{d}[n+1, 2^((n+1)/#-1)*C(#+(n+1)/#-2, #-1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360801

/-- `∑{d}[n+1, 2^((n+1)/#-1)*C(#+(n+1)/#-2, #-1)]` -/
def P13672050860262338840.Spec : Prop :=
  ∀ n, P13672050860262338840.a n = (A360801 (n + 1) : ℝ)

end A360801

/-!
# A360802: Expansion of Sum_{k>0} (x / (1 - (2 * x)^k))^k.

The programs for A360802, the canonical program `A360802.P13721780774532476112` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360802 has offset 1).

The definition of A360802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360802.P13721780774532476112

`∑{d}[n+1, 2^(n+1-#)*C(#+(n+1)/#-2, #-1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360802

/-- `∑{d}[n+1, 2^(n+1-#)*C(#+(n+1)/#-2, #-1)]` -/
def P13721780774532476112.Spec : Prop :=
  ∀ n, P13721780774532476112.a n = (A360802 (n + 1) : ℚ)

end A360802

/-! ## A360802.P11765475925924971267

`∑[and(∑[4*n+5], A106037(n+1))]`
-/

namespace A360802.P11765475925924971267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A106037 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360802.P11765475925924971267

namespace A360802

/-- `∑[and(∑[4*n+5], A106037(n+1))]` -/
def P11765475925924971267.Spec : Prop :=
  ∀ n, P11765475925924971267.a n = A360802 (n + 1)

end A360802

/-!
# A360803: Numbers whose squares have a digit average of 8 or more.

The programs for A360803, there is no canonical definition to state claims against.
-/

/-! ## A360803.P17011479620611465721

`∪[A164772(n+1), A164841(n+1)]`
-/

namespace A360803.P17011479620611465721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360803.P17011479620611465721

/-!
# A360804: Number of ways to tile an n X n square using rectangles with distinct areas.

The programs for A360804, there is no canonical definition to state claims against.
-/

/-! ## A360804.P232065290641126794

`A008611(A003952(n)-A113746(n+1))`
-/

namespace A360804.P232065290641126794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A003952 n - A113746 (n + 1)).toNat

end

end A360804.P232065290641126794

/-!
# A360806: a(0) = 1; for n >= 1, a(n) is the least integer k > a(n-1) such that k / A000005(k) = a(n-1).

The programs for A360806, there is no canonical definition to state claims against.
-/

/-! ## A360806.P7433437939447208128

`A330816(A000931(2*n+3)+n)`
-/

namespace A360806.P7433437939447208128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330816 (A000931 (2 * n + 3) + (n : ℤ)).toNat

end

end A360806.P7433437939447208128

/-! ## A360806.P17931284435517216177

`A330816(A212868(n+1)+A000009(2*n+1))`
-/

namespace A360806.P17931284435517216177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330816 (A212868 (n + 1) + A000009 (2 * n + 1)).toNat

end

end A360806.P17931284435517216177

/-! ## A360806.P11664753428871539913

`A330816(A301750(n+2))`
-/

namespace A360806.P11664753428871539913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330816 (A301750 (n + 2)).toNat

end

end A360806.P11664753428871539913

/-!
# A360810: Expansion of Sum_{k>=0} ( x / (1 - k * x^2) )^k.

The programs for A360810, there is no canonical definition to state claims against.
-/

/-! ## A360810.P15804704005628471428

`A184408(n)+A023193(A000108(n))`
-/

namespace A360810.P15804704005628471428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184408 n + A023193 (A000108 n).toNat

end

end A360810.P15804704005628471428

/-!
# A360811: Expansion of Sum_{k>=0} ( x / (1 - k * x^3) )^k.

The programs for A360811, there is no canonical definition to state claims against.
-/

/-! ## A360811.P16049524316491974010

`A346127(floor(2^n/9)+1)`
-/

namespace A360811.P16049524316491974010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (⌊(2 ^ n : ℚ) / 9⌋ + 1).toNat

end

end A360811.P16049524316491974010

/-! ## A360811.P3140810118856995846

`A100719(A196195(n))`
-/

namespace A360811.P3140810118856995846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100719 (A196195 n).toNat

end

end A360811.P3140810118856995846

/-! ## A360811.P15564004325714601437

`A055184(A279562(n))`
-/

namespace A360811.P15564004325714601437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055184 (A279562 n).toNat

end

end A360811.P15564004325714601437

/-! ## A360811.P8094660529083241985

`A391991(A055891(n))`
-/

namespace A360811.P8094660529083241985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391991 (A055891 n).toNat

end

end A360811.P8094660529083241985

/-! ## A360811.P6896093600051086371

`A099257(A393181(n))`
-/

namespace A360811.P6896093600051086371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099257 (A393181 n).toNat

end

end A360811.P6896093600051086371

/-!
# A360812: Expansion of Sum_{k>=0} ( x / (1 - (k * x)^2) )^k.

The programs for A360812, there is no canonical definition to state claims against.
-/

/-! ## A360812.P14542685459364460098

`A002262(∑[floor((n-1)^n/2)])+1`
-/

namespace A360812.P14542685459364460098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n : ℤ) - 1) ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A360812.P14542685459364460098

/-! ## A360812.P2598515479002459309

`A356075(A151390(n))`
-/

namespace A360812.P2598515479002459309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356075 (A151390 n).toNat

end

end A360812.P2598515479002459309

/-! ## A360812.P5334725093819791359

`A353386(A215340(n))`
-/

namespace A360812.P5334725093819791359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353386 (A215340 n).toNat

end

end A360812.P5334725093819791359

/-!
# A360813: Expansion of Sum_{k>=0} ( x / (1 - (k * x)^3) )^k.

The programs for A360813, there is no canonical definition to state claims against.
-/

/-! ## A360813.P12234159188736665000

`A360747(n)+A185246(n²+3)`
-/

namespace A360813.P12234159188736665000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360747 n + A185246 (n ^ 2 + 3)

end

end A360813.P12234159188736665000

/-! ## A360813.P4696109302460124287

`A360747(n)+A024326(A029651(n))`
-/

namespace A360813.P4696109302460124287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360747 n + A024326 (A029651 n).toNat

end

end A360813.P4696109302460124287

/-! ## A360813.P6849970753370635195

`A360747(n)+A070109(A000142(n))`
-/

namespace A360813.P6849970753370635195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360747 n + A070109 (A000142 n).toNat

end

end A360813.P6849970753370635195

/-!
# A360814: Expansion of Sum_{k>=0} x^(2*k) / (1 - k*x)^(k+1).

The programs for A360814, the canonical program `A360814.P11120117700072801568` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360814 has offset 0).

The definition of A360814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360814.P11120117700072801568

`∑{#}[floor(n/2), #^(n-2*#)*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360814

/-- `∑{#}[floor(n/2), #^(n-2*#)*C(n-#, #)]` -/
def P11120117700072801568.Spec : Prop :=
  ∀ n, P11120117700072801568.a n = (A360814 n : ℚ)

end A360814

/-!
# A360815: Expansion of Sum_{k>=0} x^(3*k) / (1 - k*x)^(k+1).

The programs for A360815, the canonical program `A360815.P6752745602471257781` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360815 has offset 0).

The definition of A360815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360815.P6752745602471257781

`∑{#}[floor(n/3), #^(n-3*#)*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360815

/-- `∑{#}[floor(n/3), #^(n-3*#)*C(n-2*#, #)]` -/
def P6752745602471257781.Spec : Prop :=
  ∀ n, P6752745602471257781.a n = (A360815 n : ℚ)

end A360815

/-! ## A360815.P6281439326221841514

`A316432(eq[A012257(n+4), A246277(n+1)])`
-/

namespace A360815.P6281439326221841514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012257 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316432 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A360815.P6281439326221841514

namespace A360815

/-- `A316432(eq[A012257(n+4), A246277(n+1)])` -/
def P6281439326221841514.Spec : Prop :=
  ∀ n, P6281439326221841514.a n = A360815 n

end A360815

/-!
# A360816: Expansion of Sum_{k>=0} (k*x)^(2*k) / (1 - k*x)^(k+1).

The programs for A360816, the canonical program `A360816.P5689344778589095968` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360816 has offset 0).

The definition of A360816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360816.P5689344778589095968

`∑{#}[floor(n/2), #^n*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360816

/-- `∑{#}[floor(n/2), #^n*C(n-#, #)]` -/
def P5689344778589095968.Spec : Prop :=
  ∀ n, (P5689344778589095968.a n : ℤ) = A360816 n

theorem P5689344778589095968.correct : P5689344778589095968.Spec := by
  intro n
  simp only [A360816]

end A360816

/-!
# A360817: Expansion of Sum_{k>=0} (k*x)^(3*k) / (1 - k*x)^(k+1).

The programs for A360817, the canonical program `A360817.P5297755099730034403` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360817 has offset 0).

The definition of A360817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360817.P5297755099730034403

`∑{#}[floor(n/3), #^n*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360817

/-- `∑{#}[floor(n/3), #^n*C(n-2*#, #)]` -/
def P5297755099730034403.Spec : Prop :=
  ∀ n, (P5297755099730034403.a n : ℤ) = A360817 n

theorem P5297755099730034403.correct : P5297755099730034403.Spec := by
  intro n
  simp only [A360817]

end A360817

/-!
# A360819: Expansion of Sum_{k>=0} ( (k*x)^3 / (1 - k*x) )^k.

The programs for A360819, there is no canonical definition to state claims against.
-/

/-! ## A360819.P11846152558047925894

`filter[A352982(n), A070909(#)]`
-/

namespace A360819.P11846152558047925894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070909 (f1 j).toNat = 1) n)

end

end A360819.P11846152558047925894

/-! ## A360819.P1512207907543994933

`filter[A352982(n), A070950(#)]`
-/

namespace A360819.P1512207907543994933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070950 (f1 j).toNat = 1) n)

end

end A360819.P1512207907543994933

/-! ## A360819.P10691503402692595448

`filter[A352982(n), A071024(#)]`
-/

namespace A360819.P10691503402692595448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071024 (f1 j).toNat = 1) n)

end

end A360819.P10691503402692595448

/-! ## A360819.P17115900914626004944

`filter[A352982(n), A071031(#)]`
-/

namespace A360819.P17115900914626004944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071031 (f1 j).toNat = 1) n)

end

end A360819.P17115900914626004944

/-!
# A360820: a(n) = Sum_{k=0..n} binomial(n, k)*2^(n^2-k*(n-k)).

The programs for A360820, the canonical program `A360820.P2333523091738024436` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360820 has offset 0).

The definition of A360820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360820.P2333523091738024436

`∑{#}[n, C(n, #)*2^(n²-#*(n-#))]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360820

/-- `∑{#}[n, C(n, #)*2^(n²-#*(n-#))]` -/
def P2333523091738024436.Spec : Prop :=
  ∀ n, P2333523091738024436.a n = (A360820 n : ℚ)

end A360820

/-! ## A360820.P1626175241958591555

`A006125(n+1)*A226773(n)`
-/

namespace A360820.P1626175241958591555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) * A226773 n

end

end A360820.P1626175241958591555

namespace A360820

/-- `A006125(n+1)*A226773(n)` -/
def P1626175241958591555.Spec : Prop :=
  ∀ n, P1626175241958591555.a n = A360820 n

end A360820

/-! ## A360820.P2048390836205818696

`2^n*A006125(n)*A226773(n)`
-/

namespace A360820.P2048390836205818696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006125 n * A226773 n

end

end A360820.P2048390836205818696

namespace A360820

/-- `2^n*A006125(n)*A226773(n)` -/
def P2048390836205818696.Spec : Prop :=
  ∀ n, P2048390836205818696.a n = A360820 n

end A360820

/-! ## A360820.P8827532970941092872

`A011782(A000124(n))*A226773(n)`
-/

namespace A360820.P8827532970941092872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000124 n).toNat * A226773 n

end

end A360820.P8827532970941092872

namespace A360820

/-- `A011782(A000124(n))*A226773(n)` -/
def P8827532970941092872.Spec : Prop :=
  ∀ n, P8827532970941092872.a n = A360820 n

end A360820

/-!
# A360823: Expansion of Sum_{k>0} k * x^k / (1 - k * x^k)^(k+1).

The programs for A360823, the canonical program `A360823.P16031217315762263179` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360823 has offset 1).

The definition of A360823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360823.P16031217315762263179

`∑{d}[n+1, #^((n+1)/#)*C(#+(n+1)/#-1, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360823

/-- `∑{d}[n+1, #^((n+1)/#)*C(#+(n+1)/#-1, #)]` -/
def P16031217315762263179.Spec : Prop :=
  ∀ n, P16031217315762263179.a n = (A360823 (n + 1) : ℝ)

end A360823

/-!
# A360824: Expansion of Sum_{k>0} (k * x)^k / (1 - k * x^k)^(k+1).

The programs for A360824, the canonical program `A360824.P7233496506113399292` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360824 has offset 1).

The definition of A360824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360824.P7233496506113399292

`∑{d}[n+1, #^(#+(n+1)/#-1)*C(#+(n+1)/#-1, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360824

/-- `∑{d}[n+1, #^(#+(n+1)/#-1)*C(#+(n+1)/#-1, #)]` -/
def P7233496506113399292.Spec : Prop :=
  ∀ n, P7233496506113399292.a n = (A360824 (n + 1) : ℝ)

end A360824

/-!
# A360825: a(n) is the remainder after dividing n! by its least nondivisor.

The programs for A360825, there is no canonical definition to state claims against.
-/

/-! ## A360825.P14153299655242073833

`A375277(n)+A185013(n)`
-/

namespace A360825.P14153299655242073833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 n + A185013 n

end

end A360825.P14153299655242073833

/-! ## A360825.P15126570414272674300

`A375277(n-A185013(n))`
-/

namespace A360825.P15126570414272674300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 ((n : ℤ) - A185013 n).toNat

end

end A360825.P15126570414272674300

/-! ## A360825.P1705650099068905318

`A375277(n)+A209229(A328909(2*n+1))`
-/

namespace A360825.P1705650099068905318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 n + A209229 (A328909 (2 * n + 1)).toNat

end

end A360825.P1705650099068905318

/-! ## A360825.P13132464636174541523

`A298735(A375270(3*(n+1)))*A375277(n)`
-/

namespace A360825.P13132464636174541523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (A375270 (3 * (n + 1))).toNat * A375277 n

end

end A360825.P13132464636174541523

/-! ## A360825.P1518174710040114948

`A375277(n)+A082784(A000040(n+1))`
-/

namespace A360825.P1518174710040114948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 n + A082784 (A000040 (n + 1)).toNat

end

end A360825.P1518174710040114948

/-! ## A360825.P2596049870005625271

`A375277(n)+A082784(A079148(n+1))`
-/

namespace A360825.P2596049870005625271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 n + A082784 (A079148 (n + 1)).toNat

end

end A360825.P2596049870005625271

/-! ## A360825.P2033815174771243037

`A052565(n)%A151800(n)`
-/

namespace A360825.P2033815174771243037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052565 n) (A151800 n)

end

end A360825.P2033815174771243037

/-! ## A360825.P12388547976292397972

`A375277(n)+A010052(A049345(3*n+2))`
-/

namespace A360825.P12388547976292397972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375277 n + A010052 (A049345 (3 * n + 2)).toNat

end

end A360825.P12388547976292397972

/-!
# A360827: Primes p, not safe primes, such that the smallest factor of (2^(p-1)-1) / 3 is equal to p.

The programs for A360827, there is no canonical definition to state claims against.
-/

/-! ## A360827.P1308036526249487419

`∩[A062304(n+1), A359387(n+1)]`
-/

namespace A360827.P1308036526249487419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360827.P1308036526249487419

/-! ## A360827.P11775234407266983370

`∩[A152952(n+1), A359387(n+1)]`
-/

namespace A360827.P11775234407266983370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360827.P11775234407266983370

/-!
# A360830: Numbers that when concatenated with the natural numbers from 1 to N are divisible by the corresponding order number.

The programs for A360830, there is no canonical definition to state claims against.
-/

/-! ## A360830.P7335559004192054425

`A187188(record[lcm(n, a(n-1))])` with `a(0)=10, a(1)=5`
-/

namespace A360830.P7335559004192054425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 5] fun n f1 =>
  Nat.lcm n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A360830.P7335559004192054425

/-! ## A360830.P14978870427117027601

`∏[A020639(record[∑{d}[n+1, #]^4])]`
-/

namespace A360830.P14978870427117027601
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f3 n), d) ^ 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A360830.P14978870427117027601

/-!
# A360831: Expansion of Sum_{k>0} (k * x)^k / (1 - (k * x)^k)^(k+1).

The programs for A360831, the canonical program `A360831.P5269010293726022864` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360831 has offset 1).

The definition of A360831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360831.P5269010293726022864

`∑{d}[n+1, #^(n+1)*C(#+(n+1)/#-1, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360831

/-- `∑{d}[n+1, #^(n+1)*C(#+(n+1)/#-1, #)]` -/
def P5269010293726022864.Spec : Prop :=
  ∀ n, (P5269010293726022864.a n : ℤ) = A360831 (n + 1)

theorem P5269010293726022864.correct : P5269010293726022864.Spec := by
  intro n
  simp only [A360831, Nat.add_sub_cancel]

end A360831

/-!
# A360832: Expansion of Sum_{k>=0} ( k * x / (1 - (k * x)^2) )^k.

The programs for A360832, there is no canonical definition to state claims against.
-/

/-! ## A360832.P13387595640296466914

`A003815(A360018(n))`
-/

namespace A360832.P13387595640296466914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A360018 n).toNat

end

end A360832.P13387595640296466914

/-! ## A360832.P4618353938410671676

`A190001(A189981(n))+char[5]`
-/

namespace A360832.P4618353938410671676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190001 (A189981 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A360832.P4618353938410671676

/-!
# A360833: Expansion of Sum_{k>=0} ( k * x / (1 - (k * x)^3) )^k.

The programs for A360833, there is no canonical definition to state claims against.
-/

/-! ## A360833.P6399805047163137494

`A360032(n)+A185246(n²+3)`
-/

namespace A360833.P6399805047163137494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360032 n + A185246 (n ^ 2 + 3)

end

end A360833.P6399805047163137494

/-! ## A360833.P10339864628793172594

`A360032(n)+A107846(A000248(n))`
-/

namespace A360833.P10339864628793172594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360032 n + A107846 (A000248 n).toNat

end

end A360833.P10339864628793172594

/-! ## A360833.P7622853590801671622

`A360032(n)+A055641(A053496(n))`
-/

namespace A360833.P7622853590801671622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360032 n + A055641 (A053496 n).toNat

end

end A360833.P7622853590801671622

/-! ## A360833.P3116962320824034192

`A360032(n)+A275926(A000255(n))`
-/

namespace A360833.P3116962320824034192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360032 n + A275926 (A000255 n).toNat

end

end A360833.P3116962320824034192

/-!
# A360834: Expansion of Sum_{k>=0} (k * x)^k / (1 - (k * x)^2)^(k+1).

The programs for A360834, the canonical program `A360834.P14935158018514299560` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360834 has offset 0).

The definition of A360834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360834.P14935158018514299560

`∑{#}[floor(n/2), (n-2*#)^n*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360834

/-- `∑{#}[floor(n/2), (n-2*#)^n*C(n-#, #)]` -/
def P14935158018514299560.Spec : Prop :=
  ∀ n, P14935158018514299560.a n = A360834 n

theorem P14935158018514299560.correct : P14935158018514299560.Spec := by
  intro n
  simp only [A360834]

end A360834

/-!
# A360835: Expansion of Sum_{k>=0} (k * x)^k / (1 - (k * x)^3)^(k+1).

The programs for A360835, the canonical program `A360835.P13248210965383902327` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360835 has offset 0).

The definition of A360835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360835.P13248210965383902327

`∑{#}[floor(n/3), (n-3*#)^n*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360835

/-- `∑{#}[floor(n/3), (n-3*#)^n*C(n-2*#, #)]` -/
def P13248210965383902327.Spec : Prop :=
  ∀ n, P13248210965383902327.a n = A360835 n

theorem P13248210965383902327.correct : P13248210965383902327.Spec := by
  intro n
  simp only [A360835]

end A360835

/-! ## A360835.P6261749461989447744

`A088462(A080526(n+1)-n)`
-/

namespace A360835.P6261749461989447744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A080526 (n + 1) - (n : ℤ)).toNat

end

end A360835.P6261749461989447744

namespace A360835

/-- `A088462(A080526(n+1)-n)` -/
def P6261749461989447744.Spec : Prop :=
  ∀ n, P6261749461989447744.a n = A360835 n

end A360835

/-!
# A360840: 3-full numbers (A036966) sandwiched between twin primes.

The programs for A360840, there is no canonical definition to state claims against.
-/

/-! ## A360840.P9594494596785184672

`∩[A113839(n+1), A388293(n+1)]`
-/

namespace A360840.P9594494596785184672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360840.P9594494596785184672

/-! ## A360840.P11084605581457533919

`∩[A036966(n+1), A113839(n+1)]`
-/

namespace A360840.P11084605581457533919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360840.P11084605581457533919

/-!
# A360845: Triangle read by rows: T(n,k) is the state of the k-th light after n steps of the light switch problem, 1 <= k <= A003418(n).

The programs for A360845, there is no canonical definition to state claims against.
-/

/-! ## A360845.P16328925588460900378

`A138553(n+1)%2`
-/

namespace A360845.P16328925588460900378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138553 (n + 1)) 2

end

end A360845.P16328925588460900378

/-! ## A360845.P191832661020798729

`and(1, A138553(A000027(n+1)))`
-/

namespace A360845.P191832661020798729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A138553 (A000027 (n + 1)).toNat)

end

end A360845.P191832661020798729

/-! ## A360845.P3872680000543372080

`and(A000322(n), A138553(n+1))`
-/

namespace A360845.P3872680000543372080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000322 n) (A138553 (n + 1))

end

end A360845.P3872680000543372080

/-! ## A360845.P8825481974679050530

`and(A001535(n), A138553(n+1))`
-/

namespace A360845.P8825481974679050530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A138553 (n + 1))

end

end A360845.P8825481974679050530

/-! ## A360845.P8885331146339187951

`and(A001546(n), A138553(n+1))`
-/

namespace A360845.P8885331146339187951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A138553 (n + 1))

end

end A360845.P8885331146339187951

/-! ## A360845.P5810330989703770937

`and(A001576(n), A138553(n+1))`
-/

namespace A360845.P5810330989703770937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001576 n) (A138553 (n + 1))

end

end A360845.P5810330989703770937

/-! ## A360845.P10885693939131862028

`and(A001846(n), A138553(n+1))`
-/

namespace A360845.P10885693939131862028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A138553 (n + 1))

end

end A360845.P10885693939131862028

/-! ## A360845.P12694687286754498500

`and(A002064(n), A138553(n+1))`
-/

namespace A360845.P12694687286754498500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A138553 (n + 1))

end

end A360845.P12694687286754498500

/-! ## A360845.P16600929766468468314

`and(A004768(n), A138553(n+1))`
-/

namespace A360845.P16600929766468468314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A138553 (n + 1))

end

end A360845.P16600929766468468314

/-! ## A360845.P4921930154125576299

`and(A006483(n), A138553(n+1))`
-/

namespace A360845.P4921930154125576299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006483 n) (A138553 (n + 1))

end

end A360845.P4921930154125576299

/-!
# A360847: Number of dominating induced trees in the n X n grid graph.

The programs for A360847, there is no canonical definition to state claims against.
-/

/-! ## A360847.P6151624501938171275

`A360846((n+1)²+n²)`
-/

namespace A360847.P6151624501938171275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360846 ((n + 1) ^ 2 + n ^ 2)

end

end A360847.P6151624501938171275

/-! ## A360847.P6400616925018622185

`record[A360846(A330613(n+1))]`
-/

namespace A360847.P6400616925018622185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360846 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360847.P6400616925018622185

/-! ## A360847.P6017431421380053523

`record[A360846(A001844(∑{e}[n+1, #]))]`
-/

namespace A360847.P6017431421380053523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360846 (A001844 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360847.P6017431421380053523

/-! ## A360847.P15499269789414627756

`A360846(A001844(n))+A137579(n)`
-/

namespace A360847.P15499269789414627756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360846 (A001844 n).toNat + A137579 n

end

end A360847.P15499269789414627756

/-! ## A360847.P322430821114010512

`gcd(A112316(n), A360846(A001844(n)))`
-/

namespace A360847.P322430821114010512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 n) (A360846 (A001844 n).toNat)

end

end A360847.P322430821114010512

/-!
# A360848: Number of dominating induced trees in the n-ladder graph P_2_X P_n.

The programs for A360848, the canonical program `A360848.P665902551700864304` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360848 has offset 1).

The definition of A360848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360848.P13262608649939627670

`ogf((3+5x+3x^2-x^3)/(1-x-2x^2))`
-/

namespace A360848.P13262608649939627670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, 3, -1] [1, -1, -2] n

end

end A360848.P13262608649939627670

namespace A360848

/-- `ogf((3+5x+3x^2-x^3)/(1-x-2x^2))` -/
def P13262608649939627670.Spec : Prop :=
  ∀ n, P13262608649939627670.a n = A360848 (n + 1)

end A360848

/-! ## A360848.P665902551700864304

`a(n-1)+2*a(n-2)` with `a(0)=3, a(1)=8, a(2)=17, a(3)=32`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360848

/-- `a(n-1)+2*a(n-2)` -/
def P665902551700864304.Spec : Prop :=
  ∀ n, (P665902551700864304.a n : ℤ) = A360848 (n + 1)

theorem P665902551700864304.correct : P665902551700864304.Spec := by
  intro n
  simp only [A360848, Nat.add_sub_cancel]

end A360848

/-! ## A360848.P9908904389053323202

`2*(1-(2*n%2-a(n-1)))` with `a(0)=3, a(1)=8, a(2)=17`
-/

namespace A360848.P9908904389053323202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8, 17] fun n a =>
  2 * (1 - (((2 * (n % 2) : ℕ) : ℤ) - a (n - 1)))

end

end A360848.P9908904389053323202

namespace A360848

/-- `2*(1-(2*n%2-a(n-1)))` -/
def P9908904389053323202.Spec : Prop :=
  ∀ n, P9908904389053323202.a n = A360848 (n + 1)

end A360848

/-! ## A360848.P1079409063604145405

`a(n-1)-(a(n-1)%2-a(n-2)-a(n-2))` with `a(0)=3, a(1)=8, a(2)=17`
-/

namespace A360848.P1079409063604145405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8, 17] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 1)) 2 - a (n - 2) - a (n - 2))

end

end A360848.P1079409063604145405

namespace A360848

/-- `a(n-1)-(a(n-1)%2-a(n-2)-a(n-2))` -/
def P1079409063604145405.Spec : Prop :=
  ∀ n, P1079409063604145405.a n = A360848 (n + 1)

end A360848

/-! ## A360848.P13736517304066634891

`A360846(∑[n+2])`
-/

namespace A360848.P13736517304066634891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360846 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360848.P13736517304066634891

namespace A360848

/-- `A360846(∑[n+2])` -/
def P13736517304066634891.Spec : Prop :=
  ∀ n, P13736517304066634891.a n = A360848 (n + 1)

end A360848

/-!
# A360849: Array read by antidiagonals: T(m,n) is the number of (undirected) cycles in the complete bipartite graph K_{m,n}.

The programs for A360849, there is no canonical definition to state claims against.
-/

/-! ## A360849.P1385023945263297710

`A360853(n+1)-A360855(n+1)`
-/

namespace A360849.P1385023945263297710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360853 (n + 1) - A360855 (n + 1)

end

end A360849.P1385023945263297710

/-! ## A360849.P3186601670456565401

`A072088(A156184(n))-1`
-/

namespace A360849.P3186601670456565401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A156184 n).toNat - 1

end

end A360849.P3186601670456565401

/-! ## A360849.P17905248765382771103

`A121902(A202750(n)-1)`
-/

namespace A360849.P17905248765382771103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A202750 n - 1).toNat

end

end A360849.P17905248765382771103

/-! ## A360849.P2160313675222068313

`A121902(xor(A202750(n), A360918(n+1)))`
-/

namespace A360849.P2160313675222068313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (Int.xor (A202750 n) (A360918 (n + 1))).toNat

end

end A360849.P2160313675222068313

/-! ## A360849.P17310283795526921036

`A089869(A001263(n+1)-A038792(n+1))`
-/

namespace A360849.P17310283795526921036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A001263 (n + 1) - A038792 (n + 1)).toNat

end

end A360849.P17310283795526921036

/-!
# A360850: Array read by antidiagonals: T(m,n) is the number of (undirected) paths in the complete bipartite graph K_{m,n}.

The programs for A360850, there is no canonical definition to state claims against.
-/

/-! ## A360850.P6211990264227312531

`A360851(n+1)+A003991(n+1)`
-/

namespace A360850.P6211990264227312531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360851 (n + 1) + A003991 (n + 1)

end

end A360850.P6211990264227312531

/-! ## A360850.P15246728336062443463

`A360851(n+1)+A098352(n+1)/4`
-/

namespace A360850.P15246728336062443463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360851 (n + 1) : ℚ) + (A098352 (n + 1) : ℚ) / 4

end

end A360850.P15246728336062443463

/-! ## A360850.P9954787480911283000

`A360851(n+1)+A077028(n)+A003056(n)`
-/

namespace A360850.P9954787480911283000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360851 (n + 1) + (A077028 n + A003056 n)

end

end A360850.P9954787480911283000

/-! ## A360850.P2866616053486678188

`A360851(n+1)+A049627(n)+A049615(n)`
-/

namespace A360850.P2866616053486678188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360851 (n + 1) + (A049627 n + A049615 n)

end

end A360850.P2866616053486678188

/-! ## A360850.P12364811256672536605

`A360851(n+1)+A176270(n)+A141387(n)`
-/

namespace A360850.P12364811256672536605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360851 (n + 1) + (A176270 n + A141387 n)

end

end A360850.P12364811256672536605

/-! ## A360850.P5697864935905355493

`A360851(n+1)+A004247(n)+∑[A010054(n)]`
-/

namespace A360850.P5697864935905355493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360851 (n + 1) + (A004247 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360850.P5697864935905355493

/-! ## A360850.P15694745629465219885

`A002024(n+1)+A360851(n+1)+A004247(n)`
-/

namespace A360850.P15694745629465219885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A360851 (n + 1) + A004247 n)

end

end A360850.P15694745629465219885

/-! ## A360850.P10108663914730669522

`A360851(n+1)+A049615(n)+A049687(n)+1`
-/

namespace A360850.P10108663914730669522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360851 (n + 1) + (A049615 n + (A049687 n + 1))

end

end A360850.P10108663914730669522

/-! ## A360850.P11228942171305890959

`A141429(n+1)+A360851(n+1)-A004736(n+1)`
-/

namespace A360850.P11228942171305890959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141429 (n + 1) + (A360851 (n + 1) - A004736 (n + 1))

end

end A360850.P11228942171305890959

/-! ## A360850.P2928599380190944976

`A360851(n+1)+A003989(n+1)*A003990(n+1)`
-/

namespace A360850.P2928599380190944976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360851 (n + 1) + A003989 (n + 1) * A003990 (n + 1)

end

end A360850.P2928599380190944976

/-! ## A360850.P4656859175098213069

`A360851(n+1)+(A025581(n)+1)*A002260(n+1)`
-/

namespace A360850.P4656859175098213069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360851 (n + 1) + (A025581 n + 1) * A002260 (n + 1)

end

end A360850.P4656859175098213069

/-! ## A360850.P14932083356673238281

`A360851(n+1)+(A025581(n)+1)*(A002262(n)+1)`
-/

namespace A360850.P14932083356673238281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360851 (n + 1) + (A025581 n + 1) * (A002262 n + 1)

end

end A360850.P14932083356673238281

/-!
# A360851: Array read by antidiagonals: T(m,n) is the number of induced paths in the rook graph K_m X K_n.

The programs for A360851, there is no canonical definition to state claims against.
-/

/-! ## A360851.P9156138637737532510

`A360850(n+1)-A003991(n+1)`
-/

namespace A360851.P9156138637737532510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360850 (n + 1) - A003991 (n + 1)

end

end A360851.P9156138637737532510

/-! ## A360851.P4600987416691355597

`A360850(n+1)-(A003056(n)+A004247(n)+1)`
-/

namespace A360851.P4600987416691355597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360850 (n + 1) - (A003056 n + (A004247 n + 1))

end

end A360851.P4600987416691355597

/-! ## A360851.P14197959113145229340

`A360850(n+1)-A131818(n+1)*A193592(n)`
-/

namespace A360851.P14197959113145229340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360850 (n + 1) - A131818 (n + 1) * A193592 n

end

end A360851.P14197959113145229340

/-!
# A360852: Number of induced paths in the n X n rook graph.

The programs for A360852, there is no canonical definition to state claims against.
-/

/-! ## A360852.P1571080433483307616

`A288035(n+1)-(n+1)²`
-/

namespace A360852.P1571080433483307616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288035 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A360852.P1571080433483307616

/-! ## A360852.P8562938517052915062

`(∑[2*n]+a(n-1))*(n+1)²` with `a(0)=0`
-/

namespace A360852.P8562938517052915062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)) * (n + 1) ^ 2

end

end A360852.P8562938517052915062

/-! ## A360852.P5506784579026909854

`(a(n-1)+n²+n)*(n+1)²` with `a(0)=0`
-/

namespace A360852.P5506784579026909854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (n ^ 2 + n)) * (n + 1) ^ 2

end

end A360852.P5506784579026909854

/-! ## A360852.P18256808805013927165

`(a(n-1)/(n+1)+n)*(n+1)^3` with `a(0)=0`
-/

namespace A360852.P18256808805013927165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) / (n + 1 : ℚ) + (n : ℚ)) * ((n + 1) ^ 3 : ℚ)

end

end A360852.P18256808805013927165

/-! ## A360852.P11475632573011031101

`(n+1)*(∑[2*n]+a(n-1))*(n+1)` with `a(0)=0`
-/

namespace A360852.P11475632573011031101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)) * (n + 1))

end

end A360852.P11475632573011031101

/-!
# A360853: Array read by antidiagonals: T(m,n) is the number of induced cycles in the rook graph K_m X K_n.

The programs for A360853, there is no canonical definition to state claims against.
-/

/-! ## A360853.P3841202564298886837

`A360855(n+1)+A360849(n+1)`
-/

namespace A360853.P3841202564298886837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360855 (n + 1) + A360849 (n + 1)

end

end A360853.P3841202564298886837

/-! ## A360853.P17676465362289857965

`A360855(n+1)+A121902(A202750(n)-1)`
-/

namespace A360853.P17676465362289857965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360855 (n + 1) + A121902 (A202750 n - 1).toNat

end

end A360853.P17676465362289857965

/-! ## A360853.P11605409869572407063

`A360855(n+1)+A121902(A202750(n))`
-/

namespace A360853.P11605409869572407063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360855 (n + 1) + A121902 (A202750 n).toNat

end

end A360853.P11605409869572407063

/-! ## A360853.P7672969324166725091

`A360855(n+1)+C(A002034(A007318(n)!), 2)`
-/

namespace A360853.P7672969324166725091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360855 (n + 1) + (Nat.choose (A002034 (Nat.factorial (A007318 n).toNat)).toNat 2 : ℤ)

end

end A360853.P7672969324166725091

/-! ## A360853.P15549916051957532782

`A360855(n+1)+A359674(2^A139600(n+1))`
-/

namespace A360853.P15549916051957532782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360855 (n + 1) + A359674 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A139600 (n + 1) : ℤ))).toNat

end

end A360853.P15549916051957532782

/-!
# A360854: Number of induced cycles in the n X n rook graph.

The programs for A360854, there is no canonical definition to state claims against.
-/

/-! ## A360854.P11917704869752437686

`A288961(n+1)+A070968(n+1)`
-/

namespace A360854.P11917704869752437686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288961 (n + 1) + A070968 (n + 1)

end

end A360854.P11917704869752437686

/-! ## A360854.P15004886152321419322

`A070968(n+1)+A071238(n)-∑[n]`
-/

namespace A360854.P15004886152321419322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070968 (n + 1) + (A071238 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A360854.P15004886152321419322

/-! ## A360854.P2085353668439378083

`A070968(n+1)+∑[A000447(n)-n²]`
-/

namespace A360854.P2085353668439378083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070968 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360854.P2085353668439378083

/-! ## A360854.P6654996426064141328

`A070968(n+1)+∑[n]+A330700(n)-n`
-/

namespace A360854.P6654996426064141328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070968 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A330700 n - (n : ℤ)))

end

end A360854.P6654996426064141328

/-! ## A360854.P7051013942052225480

`A070968(n+1)+A014820(n)-(n+1)^3`
-/

namespace A360854.P7051013942052225480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070968 (n + 1) + (A014820 n - ((n + 1) ^ 3 : ℤ))

end

end A360854.P7051013942052225480

/-!
# A360855: Array read by antidiagonals: T(m,n) is the number of triangles in the rook graph K_m X K_n.

The programs for A360855, the canonical program `A360855.P6052176909958446910` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360855 has offset 1).

The definition of A360855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360855.P6052176909958446910

`(col(n)+1)*C(row(n)-col(n)+1, 3)+(row(n)-col(n)+1)*C(col(n)+1, 3)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360855

/-- `(col(n)+1)*C(row(n)-col(n)+1, 3)+(row(n)-col(n)+1)*C(col(n)+1, 3)` -/
def P6052176909958446910.Spec : Prop :=
  ∀ n, P6052176909958446910.a n = A360855 (n + 1)

theorem P6052176909958446910.correct : P6052176909958446910.Spec := by
  intro n
  simp only [A360855, Nat.add_sub_cancel]

end A360855

/-! ## A360855.P4334764759729268305

`A360853(n+1)-A360849(n+1)`
-/

namespace A360855.P4334764759729268305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360853 (n + 1) - A360849 (n + 1)

end

end A360855.P4334764759729268305

namespace A360855

/-- `A360853(n+1)-A360849(n+1)` -/
def P4334764759729268305.Spec : Prop :=
  ∀ n, P4334764759729268305.a n = A360855 (n + 1)

end A360855

/-! ## A360855.P1575425920164217006

`A360853(n+1)-A121902(A202750(n)-1)`
-/

namespace A360855.P1575425920164217006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360853 (n + 1) - A121902 (A202750 n - 1).toNat

end

end A360855.P1575425920164217006

namespace A360855

/-- `A360853(n+1)-A121902(A202750(n)-1)` -/
def P1575425920164217006.Spec : Prop :=
  ∀ n, P1575425920164217006.a n = A360855 (n + 1)

end A360855

/-! ## A360855.P10500999604018193283

`A360853(n+1)-A121902(A202750(n))`
-/

namespace A360855.P10500999604018193283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360853 (n + 1) - A121902 (A202750 n).toNat

end

end A360855.P10500999604018193283

namespace A360855

/-- `A360853(n+1)-A121902(A202750(n))` -/
def P10500999604018193283.Spec : Prop :=
  ∀ n, P10500999604018193283.a n = A360855 (n + 1)

end A360855

/-!
# A360856: a(n) = [x^n](1/2)*(1 + (2*x + 1)/sqrt(1 - 8*x^2*(x + 1))).

The programs for A360856, there is no canonical definition to state claims against.
-/

/-! ## A360856.P1998440316444506229

`A360571(n²+1)`
-/

namespace A360856.P1998440316444506229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360571 (n ^ 2 + 1)

end

end A360856.P1998440316444506229

/-! ## A360856.P7464103770203001952

`and(-1, A360571(A002522(n)))`
-/

namespace A360856.P7464103770203001952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A360571 (A002522 n).toNat)

end

end A360856.P7464103770203001952

/-! ## A360856.P16554333490954540988

`A000027(A360571(or(1, n²)))`
-/

namespace A360856.P16554333490954540988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A360571 (Nat.lor 1 (n ^ 2))).toNat

end

end A360856.P16554333490954540988

/-! ## A360856.P3291937651470903290

`A175772(n)*A360571(A002522(n))`
-/

namespace A360856.P3291937651470903290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175772 n * A360571 (A002522 n).toNat

end

end A360856.P3291937651470903290

/-! ## A360856.P951872678932650064

`A360571(A002522(n))*A361236(n)`
-/

namespace A360856.P951872678932650064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360571 (A002522 n).toNat * A361236 n

end

end A360856.P951872678932650064

/-!
# A360857: Triangle read by rows. T(n, k) = binomial(n, ceil(k/2)) * binomial(n + 1, floor(k/2)).

The programs for A360857, the canonical program `A360857.P4875605771002454380` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360857 has offset 0).

The definition of A360857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), ceil(col(n)/2))*C(row(n)+1, floor(col(n)/2))` (program `A360857.P4875605771002454380`, by `A360857.P4875605771002454380.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A360857.P4875605771002454380

`C(row(n), ceil(col(n)/2))*C(row(n)+1, floor(col(n)/2))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360857

/-- `C(row(n), ceil(col(n)/2))*C(row(n)+1, floor(col(n)/2))` -/
def P4875605771002454380.Spec : Prop :=
  ∀ n, (P4875605771002454380.a n : ℤ) = A360857 n

theorem P4875605771002454380.correct : P4875605771002454380.Spec := by
  intro n
  simp only [A360857]

end A360857

/-! ## A360857.P14295347304243249737

`A124320(n)%A000196(A024450(n+1))`
-/

namespace A360857.P14295347304243249737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124320 n) (A000196 (A024450 (n + 1)).toNat)

end

end A360857.P14295347304243249737

namespace A360857

/-- `A124320(n)%A000196(A024450(n+1))` -/
def P14295347304243249737.Spec : Prop :=
  ∀ n, P14295347304243249737.a n = A360857 n

end A360857

/-!
# A360858: Triangle read by rows. T(n, k) = binomial(n + 1, ceil(k/2)) * binomial(n, floor(k/2)).

The programs for A360858, the canonical program `A360858.P17663084955820888303` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360858 has offset 0).

The definition of A360858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+1, ceil(col(n)/2))*C(row(n), floor(col(n)/2))` (program `A360858.P17663084955820888303`, by `A360858.P17663084955820888303.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A360858.P17663084955820888303

`C(row(n)+1, ceil(col(n)/2))*C(row(n), floor(col(n)/2))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360858

/-- `C(row(n)+1, ceil(col(n)/2))*C(row(n), floor(col(n)/2))` -/
def P17663084955820888303.Spec : Prop :=
  ∀ n, (P17663084955820888303.a n : ℤ) = A360858 n

theorem P17663084955820888303.correct : P17663084955820888303.Spec := by
  intro n
  simp only [A360858]

end A360858

/-! ## A360858.P11305496225008681703

`A088459(lt[(ceil(sqrt(n))²-n)², n])`
-/

namespace A360858.P11305496225008681703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088459 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A360858.P11305496225008681703

namespace A360858

/-- `A088459(lt[(ceil(sqrt(n))²-n)², n])` -/
def P11305496225008681703.Spec : Prop :=
  ∀ n, P11305496225008681703.a n = A360858 n

end A360858

/-! ## A360858.P11517717323434009344

`A088459(A004201(n+1))`
-/

namespace A360858.P11517717323434009344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088459 (A004201 (n + 1)).toNat

end

end A360858.P11517717323434009344

namespace A360858

/-- `A088459(A004201(n+1))` -/
def P11517717323434009344.Spec : Prop :=
  ∀ n, P11517717323434009344.a n = A360858 n

end A360858

/-! ## A360858.P17833987733133989829

`A088459(A061885(n)+1)`
-/

namespace A360858.P17833987733133989829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088459 (A061885 n + 1).toNat

end

end A360858.P17833987733133989829

namespace A360858

/-- `A088459(A061885(n)+1)` -/
def P17833987733133989829.Spec : Prop :=
  ∀ n, P17833987733133989829.a n = A360858 n

end A360858

/-! ## A360858.P454482026898071663

`A088855(A341706(n+1))`
-/

namespace A360858.P454482026898071663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (A341706 (n + 1)).toNat

end

end A360858.P454482026898071663

namespace A360858

/-- `A088855(A341706(n+1))` -/
def P454482026898071663.Spec : Prop :=
  ∀ n, P454482026898071663.a n = A360858 n

end A360858

/-! ## A360858.P7702743835309620783

`A107430(comp[∑[n]])*A107430(n)`
-/

namespace A360858.P7702743835309620783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A107430 n

end

end A360858.P7702743835309620783

namespace A360858

/-- `A107430(comp[∑[n]])*A107430(n)` -/
def P7702743835309620783.Spec : Prop :=
  ∀ n, P7702743835309620783.a n = A360858 n

end A360858

/-!
# A360859: Triangle read by rows. T(n, k) = binomial(n, ceil(k/2)) * binomial(n, floor(k/2)).

The programs for A360859, the canonical program `A360859.P11880042715612358300` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360859 has offset 0).

The definition of A360859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), ceil(col(n)/2))*C(row(n), floor(col(n)/2))` (program `A360859.P11880042715612358300`, by `A360859.P11880042715612358300.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A360859.P11880042715612358300

`C(row(n), ceil(col(n)/2))*C(row(n), floor(col(n)/2))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360859

/-- `C(row(n), ceil(col(n)/2))*C(row(n), floor(col(n)/2))` -/
def P11880042715612358300.Spec : Prop :=
  ∀ n, (P11880042715612358300.a n : ℤ) = A360859 n

theorem P11880042715612358300.correct : P11880042715612358300.Spec := by
  intro n
  simp only [A360859]

end A360859

/-! ## A360859.P7449869868661470563

`A172101(A341706(n+1))`
-/

namespace A360859.P7449869868661470563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172101 (A341706 (n + 1)).toNat

end

end A360859.P7449869868661470563

namespace A360859

/-- `A172101(A341706(n+1))` -/
def P7449869868661470563.Spec : Prop :=
  ∀ n, P7449869868661470563.a n = A360859 n

end A360859

/-! ## A360859.P4972205939672085273

`A229998(A059836(n+1))`
-/

namespace A360859.P4972205939672085273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229998 (A059836 (n + 1)).toNat

end

end A360859.P4972205939672085273

namespace A360859

/-- `A229998(A059836(n+1))` -/
def P4972205939672085273.Spec : Prop :=
  ∀ n, P4972205939672085273.a n = A360859 n

end A360859

/-!
# A360861: a(n) = Sum_{k=0..n} binomial(n, ceiling(k/2)) * binomial(n, floor(k/2)).

The programs for A360861, the canonical program `A360861.P13893556917198149552` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360861 has offset 0).

The definition of A360861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, ceil(#/2))*C(n, floor(#/2))]` (program `A360861.P13893556917198149552`, by `A360861.P13893556917198149552.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A360861.P13893556917198149552

`∑{#}[n, C(n, ceil(#/2))*C(n, floor(#/2))]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360861

/-- `∑{#}[n, C(n, ceil(#/2))*C(n, floor(#/2))]` -/
def P13893556917198149552.Spec : Prop :=
  ∀ n, (P13893556917198149552.a n : ℤ) = A360861 n

theorem P13893556917198149552.correct : P13893556917198149552.Spec := by
  intro n
  simp only [A360861]

end A360861

/-! ## A360861.P10908850089204685768

`(C(2*n+1, n)+C(n, floor(n/2))²)/2`
-/

namespace A360861.P10908850089204685768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) n + Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ) / 2

end

end A360861.P10908850089204685768

namespace A360861

/-- `(C(2*n+1, n)+C(n, floor(n/2))²)/2` -/
def P10908850089204685768.Spec : Prop :=
  ∀ n, P10908850089204685768.a n = (A360861 n : ℚ)

end A360861

/-! ## A360861.P15419195558037140472

`A005654(n+1)+C(A210736(n+1), 2)`
-/

namespace A360861.P15419195558037140472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005654 (n + 1) + (Nat.choose (A210736 (n + 1)).toNat 2 : ℤ)

end

end A360861.P15419195558037140472

namespace A360861

/-- `A005654(n+1)+C(A210736(n+1), 2)` -/
def P15419195558037140472.Spec : Prop :=
  ∀ n, P15419195558037140472.a n = A360861 n

end A360861

/-! ## A360861.P6251006433115509169

`(A018224(n)+A001700(n))/2`
-/

namespace A360861.P6251006433115509169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018224 n + A001700 n : ℚ) / 2

end

end A360861.P6251006433115509169

namespace A360861

/-- `(A018224(n)+A001700(n))/2` -/
def P6251006433115509169.Spec : Prop :=
  ∀ n, P6251006433115509169.a n = (A360861 n : ℚ)

end A360861

/-! ## A360861.P6995665195224369673

`A378069(n)+C(n, floor(n/2))²`
-/

namespace A360861.P6995665195224369673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378069 n + (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℤ)

end

end A360861.P6995665195224369673

namespace A360861

/-- `A378069(n)+C(n, floor(n/2))²` -/
def P6995665195224369673.Spec : Prop :=
  ∀ n, P6995665195224369673.a n = A360861 n

end A360861

/-!
# A360863: Number of unlabeled connected multigraphs with n edges and degree >= 3 at each node, loops allowed.

The programs for A360863, there is no canonical definition to state claims against.
-/

/-! ## A360863.P14737977791598326213

`A071840(A057409(n+2))`
-/

namespace A360863.P14737977791598326213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071840 (A057409 (n + 2)).toNat

end

end A360863.P14737977791598326213

/-!
# A360864: Number of unlabeled connected multigraphs with circuit rank n and degree >= 3 at each node, loops allowed.

The programs for A360864, there is no canonical definition to state claims against.
-/

/-! ## A360864.P4352377709161673762

`A152467(A056913((n+2)^n))`
-/

namespace A360864.P4352377709161673762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A056913 ((n + 2) ^ n)).toNat

end

end A360864.P4352377709161673762

/-!
# A360865: Number of unlabeled multigraphs with n edges and degree >= 3 at each node, loops allowed.

The programs for A360865, there is no canonical definition to state claims against.
-/

/-! ## A360865.P8713190749286580325

`A362562(3*n+1)+record[A368409(n)]`
-/

namespace A360865.P8713190749286580325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362562 (3 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360865.P8713190749286580325

/-! ## A360865.P12423853521117769260

`record[and(A114588(n+1), A114613(n+1))]`
-/

namespace A360865.P12423853521117769260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114588 (n + 1)) (A114613 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360865.P12423853521117769260

/-!
# A360866: Triangle read by rows: T(n,k) is the number of unlabeled connected loopless multigraphs with n edges on k nodes and degree >= 3 at each node, n >= 2, 1 <= k <= floor(2*n/3).

The programs for A360866, there is no canonical definition to state claims against.
-/

/-! ## A360866.P15704439657358236134

`A024316(A240047(n+1))`
-/

namespace A360866.P15704439657358236134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (A240047 (n + 1)).toNat

end

end A360866.P15704439657358236134

/-! ## A360866.P9509064402445869995

`A096863(∏{p}[A396993(2*n+5), #])`
-/

namespace A360866.P9509064402445869995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396993 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096863 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A360866.P9509064402445869995

/-! ## A360866.P5272800745018426348

`A267113(A176153(n)+A000079(n))`
-/

namespace A360866.P5272800745018426348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267113 (A176153 n + A000079 n).toNat

end

end A360866.P5272800745018426348

/-! ## A360866.P11341687549658540637

`A100095(n)%A329349(A000079(n))`
-/

namespace A360866.P11341687549658540637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100095 n) (A329349 (A000079 n).toNat)

end

end A360866.P11341687549658540637

/-! ## A360866.P12822975733314354093

`C(A309722(A000079(n)), A309699(n))`
-/

namespace A360866.P12822975733314354093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A309722 (A000079 n).toNat).toNat (A309699 n).toNat

end

end A360866.P12822975733314354093

/-!
# A360867: Number of unlabeled connected loopless multigraphs with n edges and degree >= 3 at each node.

The programs for A360867, there is no canonical definition to state claims against.
-/

/-! ## A360867.P13102866845793261416

`A331935(A360885(n))%A000142(n)`
-/

namespace A360867.P13102866845793261416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331935 (A360885 n).toNat) (A000142 n)

end

end A360867.P13102866845793261416

/-! ## A360867.P1459507005793797197

`∑{d}[A008615(A003422(n)), A002487(#)]`
-/

namespace A360867.P1459507005793797197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A003422 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A002487 d

end

end A360867.P1459507005793797197

/-!
# A360868: Number of unlabeled connected loopless multigraphs with circuit rank n and degree >= 3 at each node.

The programs for A360868, there is no canonical definition to state claims against.
-/

/-! ## A360868.P17314574729661372299

`A230980(n^(n+1)+n)`
-/

namespace A360868.P17314574729661372299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n ^ (n + 1) + n)

end

end A360868.P17314574729661372299

/-!
# A360869: Number of unlabeled loopless multigraphs with n edges and degree >= 3 at each node.

The programs for A360869, there is no canonical definition to state claims against.
-/

/-! ## A360869.P10047904822155326579

`A085858(A342520(n+3)+A054888(n))`
-/

namespace A360869.P10047904822155326579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085858 (A342520 (n + 3) + A054888 n).toNat

end

end A360869.P10047904822155326579

/-!
# A360871: Number of unlabeled nonseparable (or 2-connected) multigraphs with n edges and degree >= 3 at each node, loops allowed.

The programs for A360871, there is no canonical definition to state claims against.
-/

/-! ## A360871.P11702273877163910216

`A360882(n+1)-ceil(abs(sin(n)))`
-/

namespace A360871.P11702273877163910216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360882 (n + 1) - ⌈|Real.sin (n : ℝ)|⌉

end

end A360871.P11702273877163910216

/-! ## A360871.P14832688447079712640

`A360882(floor(acot(n)+n)+1)-1`
-/

namespace A360871.P14832688447079712640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360882 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1).toNat - 1

end

end A360871.P14832688447079712640

/-! ## A360871.P14841854690234028726

`A360882(n+1)+A057428(n)`
-/

namespace A360871.P14841854690234028726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360882 (n + 1) + A057428 n

end

end A360871.P14841854690234028726

/-! ## A360871.P6139547692685886486

`A360882(n+1)-char[A007318(n)]`
-/

namespace A360871.P6139547692685886486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360882 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A360871.P6139547692685886486

/-! ## A360871.P3122598241637272553

`A360882(n+1)-char[A068611(n)]`
-/

namespace A360871.P3122598241637272553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068611 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360882 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A360871.P3122598241637272553

/-!
# A360872: Irregular triangle read by rows of the length of runs in intermediate solutions to the light switch problem.

The programs for A360872, there is no canonical definition to state claims against.
-/

/-! ## A360872.P1184331565432235425

`A219244(A173415(n+1))`
-/

namespace A360872.P1184331565432235425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219244 (A173415 (n + 1)).toNat

end

end A360872.P1184331565432235425

/-! ## A360872.P17515814520618473268

`A379663(A270339(n+1)+A093431(n+1))`
-/

namespace A360872.P17515814520618473268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379663 (A270339 (n + 1) + A093431 (n + 1)).toNat

end

end A360872.P17515814520618473268

/-! ## A360872.P6135761384620647647

`A051903(A130089(n+5)+A000005(n+1))`
-/

namespace A360872.P6135761384620647647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A130089 (n + 5) + A000005 (n + 1)).toNat

end

end A360872.P6135761384620647647

/-! ## A360872.P17646606072923854339

`gcd(A176039(n+1), A213181(A213180(n+2)))`
-/

namespace A360872.P17646606072923854339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176039 (n + 1)) (A213181 (A213180 (n + 2)).toNat)

end

end A360872.P17646606072923854339

/-! ## A360872.P14423946184852404109

`A350833(xor(A001567(n+1), A005179(n+1)))`
-/

namespace A360872.P14423946184852404109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350833 (Int.xor (A001567 (n + 1)) (A005179 (n + 1))).toNat

end

end A360872.P14423946184852404109

/-!
# A360873: Array read by antidiagonals: T(m,n) is the number of (non-null) connected induced subgraphs in the rook graph K_m X K_n.

The programs for A360873, there is no canonical definition to state claims against.
-/

/-! ## A360873.P706001284582119638

`A155905(A282996(n+1))`
-/

namespace A360873.P706001284582119638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155905 (A282996 (n + 1)).toNat

end

end A360873.P706001284582119638

/-! ## A360873.P8654219695441893451

`A155905(A295275(n+1))`
-/

namespace A360873.P8654219695441893451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155905 (A295275 (n + 1)).toNat

end

end A360873.P8654219695441893451

/-! ## A360873.P1297729999638897531

`A374633(A269089(n+1))`
-/

namespace A360873.P1297729999638897531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374633 (A269089 (n + 1)).toNat

end

end A360873.P1297729999638897531

/-! ## A360873.P11049744066088724334

`A239086(A287274(n+1))+A079260(n+1)`
-/

namespace A360873.P11049744066088724334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A287274 (n + 1)).toNat + A079260 (n + 1)

end

end A360873.P11049744066088724334

/-! ## A360873.P14137520091925985608

`A287320(A089231(3*n+1))+A287274(n+1)`
-/

namespace A360873.P14137520091925985608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287320 (A089231 (3 * n + 1)).toNat + A287274 (n + 1)

end

end A360873.P14137520091925985608

/-!
# A360874: Number of (non-null) connected induced subgraphs in the 2 X n rook graph.

The programs for A360874, the canonical program `A360874.P7038618525971059090` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360874 has offset 1).

The definition of A360874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360874.P7038618525971059090

`4^(n+1)-3^(n+1)+2^(n+2)-2`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360874

/-- `4^(n+1)-3^(n+1)+2^(n+2)-2` -/
def P7038618525971059090.Spec : Prop :=
  ∀ n, P7038618525971059090.a n = A360874 (n + 1)

theorem P7038618525971059090.correct : P7038618525971059090.Spec := by
  intro n
  simp only [A360874, Nat.add_sub_cancel]

end A360874

/-! ## A360874.P6860118366969089388

`ogf((3-17x+26x^2)/(1-10x+35x^2-50x^3+24x^4))`
-/

namespace A360874.P6860118366969089388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -17, 26] [1, -10, 35, -50, 24] n

end

end A360874.P6860118366969089388

namespace A360874

/-- `ogf((3-17x+26x^2)/(1-10x+35x^2-50x^3+24x^4))` -/
def P6860118366969089388.Spec : Prop :=
  ∀ n, P6860118366969089388.a n = A360874 (n + 1)

end A360874

/-! ## A360874.P4692023055001922403

`A360873(∑[n+1]+2)`
-/

namespace A360874.P4692023055001922403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360873 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A360874.P4692023055001922403

namespace A360874

/-- `A360873(∑[n+1]+2)` -/
def P4692023055001922403.Spec : Prop :=
  ∀ n, P4692023055001922403.a n = A360874 (n + 1)

end A360874

/-!
# A360875: Array read by antidiagonals: T(m,n) is the number of connected dominating sets in the rook graph K_m X K_n.

The programs for A360875, there is no canonical definition to state claims against.
-/

/-! ## A360875.P478123117466165468

`A297102(n+1)-A070081(A176641(n))`
-/

namespace A360875.P478123117466165468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (n + 1) - A070081 (A176641 n).toNat

end

end A360875.P478123117466165468

/-! ## A360875.P8673352644960507257

`A267508(A297094(n+1)-A001263(n+1))`
-/

namespace A360875.P8673352644960507257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (A297094 (n + 1) - A001263 (n + 1)).toNat

end

end A360875.P8673352644960507257

/-! ## A360875.P7665862829003405470

`A343996(A256890(n)%A099969(2*n+3))`
-/

namespace A360875.P7665862829003405470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343996 (Int.tmod (A256890 n) (A099969 (2 * n + 3))).toNat

end

end A360875.P7665862829003405470

/-!
# A360876: Number of connected dominating sets in the 2 X n rook graph.

The programs for A360876, the canonical program `A360876.P16985465090734843350` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360876 has offset 1).

The definition of A360876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360876.P852707867004542852

`ogf((3-15x+24x^2)/(1-8x+19x^2-12x^3))`
-/

namespace A360876.P852707867004542852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -15, 24] [1, -8, 19, -12] n

end

end A360876.P852707867004542852

namespace A360876

/-- `ogf((3-15x+24x^2)/(1-8x+19x^2-12x^3))` -/
def P852707867004542852.Spec : Prop :=
  ∀ n, P852707867004542852.a n = A360876 (n + 1)

end A360876

/-! ## A360876.P16985465090734843350

`4^(n+1)-3^(n+1)+2`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360876

/-- `4^(n+1)-3^(n+1)+2` -/
def P16985465090734843350.Spec : Prop :=
  ∀ n, P16985465090734843350.a n = A360876 (n + 1)

theorem P16985465090734843350.correct : P16985465090734843350.Spec := by
  intro n
  simp only [A360876, Nat.add_sub_cancel]

end A360876

/-! ## A360876.P8759230754221019392

`∑[lcm(3, Δ[4^n-3^n])]`
-/

namespace A360876.P8759230754221019392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (3 ^ n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360876.P8759230754221019392

namespace A360876

/-- `∑[lcm(3, Δ[4^n-3^n])]` -/
def P8759230754221019392.Spec : Prop :=
  ∀ n, (P8759230754221019392.a n : ℤ) = A360876 (n + 1)

end A360876

/-! ## A360876.P14491731581224019936

`∑[or(2, Δ[4^n-3^n])]`
-/

namespace A360876.P14491731581224019936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (3 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360876.P14491731581224019936

namespace A360876

/-- `∑[or(2, Δ[4^n-3^n])]` -/
def P14491731581224019936.Spec : Prop :=
  ∀ n, P14491731581224019936.a n = A360876 (n + 1)

end A360876

/-! ## A360876.P8549607084260493692

`xor(1, A155609(n+1))`
-/

namespace A360876.P8549607084260493692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155609 (n + 1))

end

end A360876.P8549607084260493692

namespace A360876

/-- `xor(1, A155609(n+1))` -/
def P8549607084260493692.Spec : Prop :=
  ∀ n, P8549607084260493692.a n = A360876 (n + 1)

end A360876

/-! ## A360876.P3015851175350889683

`or(1, ∑[A255463(n)]+1)`
-/

namespace A360876.P3015851175350889683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A360876.P3015851175350889683

namespace A360876

/-- `or(1, ∑[A255463(n)]+1)` -/
def P3015851175350889683.Spec : Prop :=
  ∀ n, P3015851175350889683.a n = A360876 (n + 1)

end A360876

/-! ## A360876.P7225272188229735726

`3*(2*A081674(n)+1)`
-/

namespace A360876.P7225272188229735726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A081674 n + 1)

end

end A360876.P7225272188229735726

namespace A360876

/-- `3*(2*A081674(n)+1)` -/
def P7225272188229735726.Spec : Prop :=
  ∀ n, P7225272188229735726.a n = A360876 (n + 1)

end A360876

/-! ## A360876.P16611837231454917462

`or(1, A005061(n+1)+1)`
-/

namespace A360876.P16611837231454917462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005061 (n + 1) + 1)

end

end A360876.P16611837231454917462

namespace A360876

/-- `or(1, A005061(n+1)+1)` -/
def P16611837231454917462.Spec : Prop :=
  ∀ n, P16611837231454917462.a n = A360876 (n + 1)

end A360876

/-! ## A360876.P15908314092977080943

`xor(A141725(n)+1, A058481(n+1))`
-/

namespace A360876.P15908314092977080943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A141725 n + 1) (A058481 (n + 1))

end

end A360876.P15908314092977080943

namespace A360876

/-- `xor(A141725(n)+1, A058481(n+1))` -/
def P15908314092977080943.Spec : Prop :=
  ∀ n, P15908314092977080943.a n = A360876 (n + 1)

end A360876

/-! ## A360876.P2553015043489476351

`abs(A360874(n+1)-A028399(n+2))`
-/

namespace A360876.P2553015043489476351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A360874 (n + 1) - A028399 (n + 2)|

end

end A360876.P2553015043489476351

namespace A360876

/-- `abs(A360874(n+1)-A028399(n+2))` -/
def P2553015043489476351.Spec : Prop :=
  ∀ n, P2553015043489476351.a n = A360876 (n + 1)

end A360876

/-! ## A360876.P11013290430444368633

`3*(A047849(n+1)-A133494(n+1))`
-/

namespace A360876.P11013290430444368633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A047849 (n + 1) - A133494 (n + 1))

end

end A360876.P11013290430444368633

namespace A360876

/-- `3*(A047849(n+1)-A133494(n+1))` -/
def P11013290430444368633.Spec : Prop :=
  ∀ n, P11013290430444368633.a n = A360876 (n + 1)

end A360876

/-! ## A360876.P17994650832017898460

`∑[abs(1-(A165665(n)-A002783(n)))+2]`
-/

namespace A360876.P17994650832017898460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A165665 n - A002783 n)| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360876.P17994650832017898460

namespace A360876

/-- `∑[abs(1-(A165665(n)-A002783(n)))+2]` -/
def P17994650832017898460.Spec : Prop :=
  ∀ n, P17994650832017898460.a n = A360876 (n + 1)

end A360876

/-! ## A360876.P3001692870814178958

`(∑[A255463(n)]+2)*A010051(A059456(n+1))`
-/

namespace A360876.P3001692870814178958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) * A010051 (A059456 (n + 1)).toNat

end

end A360876.P3001692870814178958

namespace A360876

/-- `(∑[A255463(n)]+2)*A010051(A059456(n+1))` -/
def P3001692870814178958.Spec : Prop :=
  ∀ n, P3001692870814178958.a n = A360876 (n + 1)

end A360876

/-! ## A360876.P1047838034271477864

`abs(A284850(n+1)+A145071(n+1)-A028399(n+2))`
-/

namespace A360876.P1047838034271477864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284850 (n + 1) + A145071 (n + 1) - A028399 (n + 2)|

end

end A360876.P1047838034271477864

namespace A360876

/-- `abs(A284850(n+1)+A145071(n+1)-A028399(n+2))` -/
def P1047838034271477864.Spec : Prop :=
  ∀ n, P1047838034271477864.a n = A360876 (n + 1)

end A360876

/-! ## A360876.P16955523368658376729

`abs(A028399(n+2)-(A126646(2*n+1)-A028243(n+2)))`
-/

namespace A360876.P16955523368658376729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028399 (n + 2) - (A126646 (2 * n + 1) - A028243 (n + 2))|

end

end A360876.P16955523368658376729

namespace A360876

/-- `abs(A028399(n+2)-(A126646(2*n+1)-A028243(n+2)))` -/
def P16955523368658376729.Spec : Prop :=
  ∀ n, P16955523368658376729.a n = A360876 (n + 1)

end A360876

/-! ## A360876.P17357561355059363717

`or(1, A155559(n+1)²-A101052(n+1)-A028399(n+2))`
-/

namespace A360876.P17357561355059363717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155559 (n + 1) ^ 2 - A101052 (n + 1) - A028399 (n + 2))

end

end A360876.P17357561355059363717

namespace A360876

/-- `or(1, A155559(n+1)²-A101052(n+1)-A028399(n+2))` -/
def P17357561355059363717.Spec : Prop :=
  ∀ n, P17357561355059363717.a n = A360876 (n + 1)

end A360876

/-! ## A360876.P9942405515758742281

`(12*4^n+2)%(3^(n+1)+8*4^n)`
-/

namespace A360876.P9942405515758742281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (12 * 4 ^ n + 2) % (3 ^ (n + 1) + 8 * 4 ^ n)

end

end A360876.P9942405515758742281

namespace A360876

/-- `(12*4^n+2)%(3^(n+1)+8*4^n)` -/
def P9942405515758742281.Spec : Prop :=
  ∀ n, (P9942405515758742281.a n : ℤ) = A360876 (n + 1)

end A360876

/-! ## A360876.P17107886002559899475

`or(1, A000051(2*n+3)-A074605(n+1))`
-/

namespace A360876.P17107886002559899475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000051 (2 * n + 3) - A074605 (n + 1))

end

end A360876.P17107886002559899475

namespace A360876

/-- `or(1, A000051(2*n+3)-A074605(n+1))` -/
def P17107886002559899475.Spec : Prop :=
  ∀ n, P17107886002559899475.a n = A360876 (n + 1)

end A360876

/-!
# A360878: Number of (undirected) paths in the 2 X n rook graph.

The programs for A360878, there is no canonical definition to state claims against.
-/

/-! ## A360878.P7240205683465601324

`A360877(∑[n+2])`
-/

namespace A360878.P7240205683465601324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360877 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360878.P7240205683465601324

/-! ## A360878.P11413092585695188426

`record[A360877(A198453(n+1))]`
-/

namespace A360878.P11413092585695188426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360877 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360878.P11413092585695188426

/-!
# A360879: Number of unlabeled nonseparable (or 2-connected) loopless multigraphs with circuit rank n and degree >= 3 at each node.

The programs for A360879, there is no canonical definition to state claims against.
-/

/-! ## A360879.P10395105159994317124

`A363532(A000009(3*n+2))+A001251(n+1)`
-/

namespace A360879.P10395105159994317124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363532 (A000009 (3 * n + 2)).toNat + A001251 (n + 1)

end

end A360879.P10395105159994317124

/-!
# A360880: Triangle read by rows: T(n,k) is the number of unlabeled nonseparable (or 2-connected) multigraphs with n edges and k nodes, loops allowed, n >= 1, 2 <= k <= n + 1.

The programs for A360880, there is no canonical definition to state claims against.
-/

/-! ## A360880.P12609178030475314566

`A238345(n+1)+A020987(A238366(n))`
-/

namespace A360880.P12609178030475314566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238345 (n + 1) + A020987 (A238366 n).toNat

end

end A360880.P12609178030475314566

/-!
# A360881: Number of unlabeled nonseparable (or 2-connected) multigraphs with n edges, loops allowed.

The programs for A360881, there is no canonical definition to state claims against.
-/

/-! ## A360881.P629001654908971421

`A002024(∑[n*∑[n!]]+1)`
-/

namespace A360881.P629001654908971421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A360881.P629001654908971421

/-! ## A360881.P7947556486462344779

`A002024(A209673(n))+n`
-/

namespace A360881.P7947556486462344779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A209673 n).toNat + (n : ℤ)

end

end A360881.P7947556486462344779

/-! ## A360881.P16958665620558603919

`A002024(A350252(n)+A007582(n))`
-/

namespace A360881.P16958665620558603919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A350252 n + A007582 n).toNat

end

end A360881.P16958665620558603919

/-!
# A360882: Number of unlabeled connected multigraphs with n edges, no cut-points and degree >= 3 at each node, loops allowed.

The programs for A360882, there is no canonical definition to state claims against.
-/

/-! ## A360882.P9122478254927082479

`A360871(n+1)+ceil(abs(sin(n)))`
-/

namespace A360882.P9122478254927082479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360871 (n + 1) + ⌈|Real.sin (n : ℝ)|⌉

end

end A360882.P9122478254927082479

/-! ## A360882.P6158313363925683031

`A360871(n+1)+A255270(n)`
-/

namespace A360882.P6158313363925683031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360871 (n + 1) + A255270 n

end

end A360882.P6158313363925683031

/-! ## A360882.P18327234718759399171

`A360871(n+1)-A057428(n)`
-/

namespace A360882.P18327234718759399171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360871 (n + 1) - A057428 n

end

end A360882.P18327234718759399171

/-! ## A360882.P13959656355819169358

`A360871(n+1)+abs(A165476(n))`
-/

namespace A360882.P13959656355819169358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360871 (n + 1) + |A165476 n|

end

end A360882.P13959656355819169358

/-! ## A360882.P3856859287091207758

`A360871(n+1)+A165476(n²)`
-/

namespace A360882.P3856859287091207758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360871 (n + 1) + A165476 (n ^ 2)

end

end A360882.P3856859287091207758

/-!
# A360884: a(n) = a(n-1) + a(n-2) + gcd(a(n-1), n), a(1) = a(2) = 1.

The programs for A360884, the canonical program `A360884.P10182426592793395370` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360884 has offset 1).

The definition of A360884 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+gcd(a(n-1), n+1)` (program `A360884.P10182426592793395370`, by `A360884.P10182426592793395370.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A360884.P10182426592793395370

`a(n-1)+a(n-2)+gcd(a(n-1), n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360884

/-- `a(n-1)+a(n-2)+gcd(a(n-1), n+1)` -/
def P10182426592793395370.Spec : Prop :=
  ∀ n, (P10182426592793395370.a n : ℤ) = A360884 (n + 1)

theorem P10182426592793395370.correct : P10182426592793395370.Spec := by
  intro n
  simp only [A360884, Nat.add_sub_cancel]

end A360884

/-! ## A360884.P5455371357788155626

`A352830(round(sqrt(A335456(n))))`
-/

namespace A360884.P5455371357788155626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352830 (SequenceMachineLib.roundAway (Real.sqrt (A335456 n : ℝ))).toNat

end

end A360884.P5455371357788155626

namespace A360884

/-- `A352830(round(sqrt(A335456(n))))` -/
def P5455371357788155626.Spec : Prop :=
  ∀ n, P5455371357788155626.a n = A360884 (n + 1)

end A360884

/-! ## A360884.P8826433643712818908

`A012264(A014244(n+2))`
-/

namespace A360884.P8826433643712818908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012264 (A014244 (n + 2)).toNat

end

end A360884.P8826433643712818908

namespace A360884

/-- `A012264(A014244(n+2))` -/
def P8826433643712818908.Spec : Prop :=
  ∀ n, P8826433643712818908.a n = A360884 (n + 1)

end A360884

/-!
# A360885: G.f. satisfies A(x) = 1 + x * A(x * (1 + x^2)).

The programs for A360885, there is no canonical definition to state claims against.
-/

/-! ## A360885.P3718234311097119969

`A280951(∑[floor((n/2)²)])`
-/

namespace A360885.P3718234311097119969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360885.P3718234311097119969

/-! ## A360885.P17930917870774684775

`A137735(A004111(n)*A213683(n))`
-/

namespace A360885.P17930917870774684775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A004111 n * A213683 n).toNat

end

end A360885.P17930917870774684775

/-! ## A360885.P10998781519043796449

`lcm(A034363(n+1), A280951(A173196(n)))`
-/

namespace A360885.P10998781519043796449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034363 (n + 1)) (A280951 (A173196 n).toNat)

end

end A360885.P10998781519043796449

/-! ## A360885.P12540948856602839750

`or(A280951(A173196(n)), A361854(n+1))`
-/

namespace A360885.P12540948856602839750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A280951 (A173196 n).toNat) (A361854 (n + 1))

end

end A360885.P12540948856602839750

/-! ## A360885.P15175439450317331928

`A103284(n)+round(A255678(n+1)/A255649(3*n+4))`
-/

namespace A360885.P15175439450317331928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103284 n + SequenceMachineLib.roundAway ((A255678 (n + 1) : ℚ) / (A255649 (3 * n + 4) : ℚ))

end

end A360885.P15175439450317331928

/-!
# A360886: G.f. satisfies A(x) = 1 + x * A(x * (1 + x^3)).

The programs for A360886, there is no canonical definition to state claims against.
-/

/-! ## A360886.P4720126696478100173

`A084618(A002989(n)+2)`
-/

namespace A360886.P4720126696478100173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (A002989 n + 2).toNat

end

end A360886.P4720126696478100173

/-!
# A360888: G.f. satisfies A(x) = 1 + x * (1 + x^2)^2 * A(x * (1 + x^2)).

The programs for A360888, there is no canonical definition to state claims against.
-/

/-! ## A360888.P13328979588595742937

`A218980(A193147(n))`
-/

namespace A360888.P13328979588595742937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218980 (A193147 n).toNat

end

end A360888.P13328979588595742937

/-!
# A360889: G.f. satisfies A(x) = 1 + x * (1 + x^3)^2 * A(x * (1 + x^3)).

The programs for A360889, there is no canonical definition to state claims against.
-/

/-! ## A360889.P16535072503484257882

`A325611(A122584(n+1))`
-/

namespace A360889.P16535072503484257882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325611 (A122584 (n + 1)).toNat

end

end A360889.P16535072503484257882

/-! ## A360889.P964801590083284278

`∑{d}[A187741(n), A348687(#)]`
-/

namespace A360889.P964801590083284278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A348687 d

end

end A360889.P964801590083284278

/-! ## A360889.P14809944051113051422

`ceil((A165288(A118033(n))+1)/5)`
-/

namespace A360889.P14809944051113051422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A165288 (A118033 n).toNat + 1 : ℚ) / 5⌉

end

end A360889.P14809944051113051422

/-! ## A360889.P5086743581954136482

`A346132(A088637(∑[floor(n/4)]+1))`
-/

namespace A360889.P5086743581954136482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A088637 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat).toNat

end

end A360889.P5086743581954136482

/-!
# A360890: G.f. satisfies A(x) = 1 + x/(1 - x^3) * A(x/(1 - x^3)).

The programs for A360890, there is no canonical definition to state claims against.
-/

/-! ## A360890.P4055990405502387951

`A201997(A036650(n))`
-/

namespace A360890.P4055990405502387951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201997 (A036650 n).toNat

end

end A360890.P4055990405502387951

/-! ## A360890.P9161885108160638594

`A366169(A005253(n))`
-/

namespace A360890.P9161885108160638594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366169 (A005253 n).toNat

end

end A360890.P9161885108160638594

/-! ## A360890.P8731690669333140951

`A206718(A369581(n))`
-/

namespace A360890.P8731690669333140951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206718 (A369581 n).toNat

end

end A360890.P8731690669333140951

/-! ## A360890.P2547603419913265217

`A309589(A002989(n+1))`
-/

namespace A360890.P2547603419913265217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309589 (A002989 (n + 1)).toNat

end

end A360890.P2547603419913265217

/-! ## A360890.P14634497285400811096

`A394301(A285003(n+2))`
-/

namespace A360890.P14634497285400811096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 (A285003 (n + 2)).toNat

end

end A360890.P14634497285400811096

/-!
# A360891: G.f. satisfies A(x) = 1 + x/(1 - x^4) * A(x/(1 - x^4)).

The programs for A360891, there is no canonical definition to state claims against.
-/

/-! ## A360891.P10026896124890308152

`A358636(A005252(n))`
-/

namespace A360891.P10026896124890308152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358636 (A005252 n).toNat

end

end A360891.P10026896124890308152

/-! ## A360891.P9035799006681742016

`A342591(A023427(n))`
-/

namespace A360891.P9035799006681742016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (A023427 n).toNat

end

end A360891.P9035799006681742016

/-! ## A360891.P12022768548913133868

`A243903(A357926(n))`
-/

namespace A360891.P12022768548913133868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (A357926 n).toNat

end

end A360891.P12022768548913133868

/-! ## A360891.P11816673252541639801

`A180580(A119610(n+1))`
-/

namespace A360891.P11816673252541639801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180580 (A119610 (n + 1)).toNat

end

end A360891.P11816673252541639801

/-! ## A360891.P8502738461785740734

`A358636(Δ[Δ[A130578(n+1)]])`
-/

namespace A360891.P8502738461785740734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358636 (f1 (n + 1) - f1 n).toNat

end

end A360891.P8502738461785740734

/-!
# A360892: G.f. satisfies A(x) = 1 + x/(1 - x^3)^2 * A(x/(1 - x^3)).

The programs for A360892, there is no canonical definition to state claims against.
-/

/-! ## A360892.P3622078424051934308

`A109647(A352044(n))`
-/

namespace A360892.P3622078424051934308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109647 (A352044 n).toNat

end

end A360892.P3622078424051934308

/-! ## A360892.P11752792031463169215

`A332073(A360889(n))`
-/

namespace A360892.P11752792031463169215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332073 (A360889 n).toNat

end

end A360892.P11752792031463169215

/-! ## A360892.P4089973302132858047

`A384436(A025269(n+1))`
-/

namespace A360892.P4089973302132858047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384436 (A025269 (n + 1)).toNat

end

end A360892.P4089973302132858047

/-! ## A360892.P12205073744413574903

`A057828(A072856(n)+2)`
-/

namespace A360892.P12205073744413574903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057828 (A072856 n + 2).toNat

end

end A360892.P12205073744413574903

