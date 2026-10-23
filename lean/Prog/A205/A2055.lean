import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
# A205500: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n/n * Product_{d|n} A(d*x^n)^d ).

The programs for A205500, there is no canonical definition to state claims against.
-/

/-! ## A205500.P2127164858793844144

`A156689(or(A148380(n), A148384(n)))`
-/

namespace A205500.P2127164858793844144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (Int.lor (A148380 n) (A148384 n)).toNat

end

end A205500.P2127164858793844144

/-! ## A205500.P8441791162090570865

`A275209(n)+A002024(A331001(n+1))`
-/

namespace A205500.P8441791162090570865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275209 n + A002024 (A331001 (n + 1)).toNat

end

end A205500.P8441791162090570865

/-! ## A205500.P9691421643147356979

`A257639(A026233(n+1)²*A212884(n))`
-/

namespace A205500.P9691421643147356979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A026233 (n + 1) ^ 2 * A212884 n).toNat

end

end A205500.P9691421643147356979

/-! ## A205500.P16202277291814750042

`A257639(A026233(n+1)*A212884(n)*A026233(n+1))`
-/

namespace A205500.P16202277291814750042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A026233 (n + 1) * A212884 n * A026233 (n + 1)).toNat

end

end A205500.P16202277291814750042

/-!
# A205501: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n/n * Product_{d|n} A(d*x^d)^n ).

The programs for A205501, there is no canonical definition to state claims against.
-/

/-! ## A205501.P3506595728230387516

`ceil(sqrt(A000010(2*n^n)))`
-/

namespace A205501.P3506595728230387516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000010 (2 * n ^ n) : ℝ)⌉

end

end A205501.P3506595728230387516

/-! ## A205501.P15009029248240569316

`A108141(A148455(n))`
-/

namespace A205501.P15009029248240569316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148455 n).toNat

end

end A205501.P15009029248240569316

/-! ## A205501.P1449323926886885552

`A262689(A058892(n))`
-/

namespace A205501.P1449323926886885552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A058892 n).toNat

end

end A205501.P1449323926886885552

/-!
# A205502: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n/n * Product_{d|n} A(d*x^(n/d))^d ).

The programs for A205502, there is no canonical definition to state claims against.
-/

/-! ## A205502.P8856006336192741306

`A036537(A241842(n+1)+2)-1`
-/

namespace A205502.P8856006336192741306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (A241842 (n + 1) + 2).toNat - 1

end

end A205502.P8856006336192741306

/-! ## A205502.P3936307143493466731

`A004396(A113227(n)+A000272(n))`
-/

namespace A205502.P3936307143493466731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A113227 n + A000272 n).toNat

end

end A205502.P3936307143493466731

/-! ## A205502.P16889227703162070155

`A186646(A330498(n)+A155112(n))`
-/

namespace A205502.P16889227703162070155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186646 (A330498 n + A155112 n).toNat

end

end A205502.P16889227703162070155

/-!
# A205503: G.f.: exp( Sum_{n>=1} x^n/n * exp( Sum_{k>=1} binomial(2*n*k,n*k)*x^(n*k)/k ) ).

The programs for A205503, there is no canonical definition to state claims against.
-/

/-! ## A205503.P12357982935639477979

`A037203(9*A149288(n))`
-/

namespace A205503.P12357982935639477979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 (9 * A149288 n).toNat

end

end A205503.P12357982935639477979

/-! ## A205503.P5967910822256711678

`A148823(n)+A018843(A270995(n))`
-/

namespace A205503.P5967910822256711678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148823 n + A018843 (A270995 n).toNat

end

end A205503.P5967910822256711678

/-! ## A205503.P8796345603723952659

`A353566(A030467(n+1))+A148823(n)`
-/

namespace A205503.P8796345603723952659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353566 (A030467 (n + 1)).toNat + A148823 n

end

end A205503.P8796345603723952659

/-!
# A205504: G.f.: exp( Sum_{n>=1} x^n/n * exp( Sum_{k>=1} binomial(2*n*k,n*k)/2 * x^(n*k)/k ) ).

The programs for A205504, there is no canonical definition to state claims against.
-/

/-! ## A205504.P8083329281197615507

`A148184(n)-A216188(A114277(n))`
-/

namespace A205504.P8083329281197615507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148184 n - A216188 (A114277 n).toNat

end

end A205504.P8083329281197615507

/-! ## A205504.P6701552463684290821

`or(A000085(n), A138260(A000108(n)))`
-/

namespace A205504.P6701552463684290821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000085 n) (A138260 (A000108 n).toNat)

end

end A205504.P6701552463684290821

/-! ## A205504.P14447017566266242057

`A002635(or(A097331(n), A171498(n)))`
-/

namespace A205504.P14447017566266242057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (Int.lor (A097331 n) (A171498 n)).toNat

end

end A205504.P14447017566266242057

/-! ## A205504.P14508176291126993477

`A002635(or(A138741(n), A171498(n)))`
-/

namespace A205504.P14508176291126993477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (Int.lor (A138741 n) (A171498 n)).toNat

end

end A205504.P14508176291126993477

/-!
# A205505: a(n) = Fibonacci(n*(n+1)) / Fibonacci(n).

The programs for A205505, there is no canonical definition to state claims against.
-/

/-! ## A205505.P3719293798983715842

`A028412(2*(n+1)²)`
-/

namespace A205505.P3719293798983715842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 (2 * (n + 1) ^ 2)

end

end A205505.P3719293798983715842

/-! ## A205505.P12710224754824329465

`A214978(2*(n+1)²)`
-/

namespace A205505.P12710224754824329465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214978 (2 * (n + 1) ^ 2)

end

end A205505.P12710224754824329465

/-! ## A205505.P9726897029695768621

`A000045(n+2)*A103624(n+1)`
-/

namespace A205505.P9726897029695768621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A103624 (n + 1)

end

end A205505.P9726897029695768621

/-! ## A205505.P18442874989222698438

`A000045(∑[2*(n+1)])/A000045(n+1)`
-/

namespace A205505.P18442874989222698438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A205505.P18442874989222698438

/-! ## A205505.P5461790969294730023

`floor(A000045((n+1)*(n+2))/A000045(n+1))`
-/

namespace A205505.P5461790969294730023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 ((n + 1) * (n + 2)) : ℚ) / (A000045 (n + 1) : ℚ)⌋

end

end A205505.P5461790969294730023

/-!
# A205506: Least positive integer m > 1 such that 1 - m^k + m^(2*k) is prime, where k=A003586(n).

The programs for A205506, there is no canonical definition to state claims against.
-/

/-! ## A205506.P11079714797909102146

`A085398(6*A003586(n+1))`
-/

namespace A205506.P11079714797909102146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (6 * A003586 (n + 1)).toNat

end

end A205506.P11079714797909102146

/-! ## A205506.P9996700640346390839

`A085398(A033845(n+1))`
-/

namespace A205506.P9996700640346390839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A033845 (n + 1)).toNat

end

end A205506.P9996700640346390839

/-! ## A205506.P2205281960876656701

`A085398(A187778(n+2))`
-/

namespace A205506.P2205281960876656701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A187778 (n + 2)).toNat

end

end A205506.P2205281960876656701

/-! ## A205506.P16306749705958493769

`A085398(∑[6*A061987(n)])`
-/

namespace A205506.P16306749705958493769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A205506.P16306749705958493769

/-! ## A205506.P13280281814898647351

`A085398(Δ[6*A259823(n)])`
-/

namespace A205506.P13280281814898647351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (f1 (n + 1) - f1 n).toNat

end

end A205506.P13280281814898647351

/-!
# A205507: a(n) = Fibonacci(n) * A004018(n) for n>=1 with a(0)=1, where A004018(n) is the number of ways of writing n as a sum of 2 squares.

The programs for A205507, there is no canonical definition to state claims against.
-/

/-! ## A205507.P571246899220914134

`A004018(n)*A324969(n+1)`
-/

namespace A205507.P571246899220914134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n * A324969 (n + 1)

end

end A205507.P571246899220914134

/-! ## A205507.P11309804243634945099

`A004525(A004018(n))*A055389(n)`
-/

namespace A205507.P11309804243634945099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004018 n).toNat * A055389 n

end

end A205507.P11309804243634945099

/-! ## A205507.P17953154771361948557

`A000045(A233583(n+1))*A004018(n)`
-/

namespace A205507.P17953154771361948557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A233583 (n + 1)).toNat * A004018 n

end

end A205507.P17953154771361948557

/-! ## A205507.P7638493369001294012

`(A000045(n)*A004018(n))^A089309(n)`
-/

namespace A205507.P7638493369001294012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n * A004018 n : ℚ) ^ (A089309 n : ℤ)

end

end A205507.P7638493369001294012

/-! ## A205507.P4717151382183066312

`A004018(n)/A000118(n)*A205963(n)`
-/

namespace A205507.P4717151382183066312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) / (A000118 n : ℚ) * (A205963 n : ℚ)

end

end A205507.P4717151382183066312

/-! ## A205507.P12083195994002385758

`A004018(n)/A000143(n)*A205964(n)`
-/

namespace A205507.P12083195994002385758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) / (A000143 n : ℚ) * (A205964 n : ℚ)

end

end A205507.P12083195994002385758

/-! ## A205507.P13972202920695292121

`A205508(n)/A209443(n)*A205963(n)`
-/

namespace A205507.P13972202920695292121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205508 n : ℚ) / (A209443 n : ℚ) * (A205963 n : ℚ)

end

end A205507.P13972202920695292121

/-! ## A205507.P9252329338487330008

`A205508(n)/A209444(n)*A205964(n)`
-/

namespace A205507.P9252329338487330008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205508 n : ℚ) / (A209444 n : ℚ) * (A205964 n : ℚ)

end

end A205507.P9252329338487330008

/-! ## A205507.P2618287980507254851

`A000045(A305575(A000328(n)))*A004018(n)`
-/

namespace A205507.P2618287980507254851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A305575 (A000328 n).toNat).toNat * A004018 n

end

end A205507.P2618287980507254851

/-!
# A205508: a(n) = Pell(n) * A004018(n) for n>=1 with a(0)=1, where A004018(n) is the number of ways of writing n as a sum of 2 squares.

The programs for A205508, there is no canonical definition to state claims against.
-/

/-! ## A205508.P7400659470772393574

`A004018(n)*A215928(n)`
-/

namespace A205508.P7400659470772393574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n * A215928 n

end

end A205508.P7400659470772393574

/-! ## A205508.P16595515209241820987

`abs(A104794(n)*A215928(n))`
-/

namespace A205508.P16595515209241820987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104794 n * A215928 n|

end

end A205508.P16595515209241820987

/-! ## A205508.P10372367486862628654

`A104794(2*n)*A215928(n)`
-/

namespace A205508.P10372367486862628654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (2 * n) * A215928 n

end

end A205508.P10372367486862628654

/-! ## A205508.P11416282637255962286

`A004531(4*n)*A215928(n)`
-/

namespace A205508.P11416282637255962286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (4 * n) * A215928 n

end

end A205508.P11416282637255962286

/-! ## A205508.P8406584142681138190

`A002965(A004277(n))*A004018(n)`
-/

namespace A205508.P8406584142681138190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A004277 n).toNat * A004018 n

end

end A205508.P8406584142681138190

/-! ## A205508.P14454561358792682082

`A205507(n)/A205963(n)*A209443(n)`
-/

namespace A205508.P14454561358792682082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205507 n : ℚ) / (A205963 n : ℚ) * (A209443 n : ℚ)

end

end A205508.P14454561358792682082

/-! ## A205508.P11046342265620813804

`A205507(n)/A205964(n)*A209444(n)`
-/

namespace A205508.P11046342265620813804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205507 n : ℚ) / (A205964 n : ℚ) * (A209444 n : ℚ)

end

end A205508.P11046342265620813804

/-!
# A205510: Binary Hamming distance between prime(n) and prime(n+1).

The programs for A205510, the canonical program `A205510.P11813062267428190125` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205510 has offset 1).

The definition of A205510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1899 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205510.P11813062267428190125

`A000120(xor(A005097(n+1), A102781(n+1)))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A205510

/-- `A000120(xor(A005097(n+1), A102781(n+1)))` -/
def P11813062267428190125.Spec : Prop :=
  ∀ n, P11813062267428190125.a n = A205510 (n + 1)

theorem P11813062267428190125.correct : P11813062267428190125.Spec := by
  intro n
  simp only [A205510, Nat.add_sub_cancel]

end A205510

/-! ## A205510.P6908254239302863255

`A000120(xor(p?[2*n+1], A008578(n+2)))`
-/

namespace A205510.P6908254239302863255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A008578 (n + 2))).toNat

end

end A205510.P6908254239302863255

namespace A205510

/-- `A000120(xor(p?[2*n+1], A008578(n+2)))` -/
def P6908254239302863255.Spec : Prop :=
  ∀ n, P6908254239302863255.a n = A205510 (n + 1)

end A205510

/-! ## A205510.P1549343498713995199

`A000120(A175329(n+1)-A175330(n+1))`
-/

namespace A205510.P1549343498713995199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175329 (n + 1) - A175330 (n + 1)).toNat

end

end A205510.P1549343498713995199

namespace A205510

/-- `A000120(A175329(n+1)-A175330(n+1))` -/
def P1549343498713995199.Spec : Prop :=
  ∀ n, P1549343498713995199.a n = A205510 (n + 1)

end A205510

/-! ## A205510.P15866978836254641750

`A000120(xor(A000040(n+1), A065091(n+1)))`
-/

namespace A205510.P15866978836254641750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A000040 (n + 1)) (A065091 (n + 1))).toNat

end

end A205510.P15866978836254641750

namespace A205510

/-- `A000120(xor(A000040(n+1), A065091(n+1)))` -/
def P15866978836254641750.Spec : Prop :=
  ∀ n, P15866978836254641750.a n = A205510 (n + 1)

end A205510

/-! ## A205510.P15741147154626361019

`A000120(xor(A006005(n+1), A065091(n+1)))`
-/

namespace A205510.P15741147154626361019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A006005 (n + 1)) (A065091 (n + 1))).toNat

end

end A205510.P15741147154626361019

namespace A205510

/-- `A000120(xor(A006005(n+1), A065091(n+1)))` -/
def P15741147154626361019.Spec : Prop :=
  ∀ n, P15741147154626361019.a n = A205510 (n + 1)

end A205510

/-! ## A205510.P16195643795825047642

`A000120(xor(A000040(n+1), A000040(n+2)))`
-/

namespace A205510.P16195643795825047642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A000040 (n + 1)) (A000040 (n + 2))).toNat

end

end A205510.P16195643795825047642

namespace A205510

/-- `A000120(xor(A000040(n+1), A000040(n+2)))` -/
def P16195643795825047642.Spec : Prop :=
  ∀ n, P16195643795825047642.a n = A205510 (n + 1)

end A205510

/-! ## A205510.P11235713949233137069

`A000120(xor(A039915(n+2), A039915(n+1)))`
-/

namespace A205510.P11235713949233137069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A039915 (n + 2)) (A039915 (n + 1))).toNat

end

end A205510.P11235713949233137069

namespace A205510

/-- `A000120(xor(A039915(n+2), A039915(n+1)))` -/
def P11235713949233137069.Spec : Prop :=
  ∀ n, P11235713949233137069.a n = A205510 (n + 1)

end A205510

/-! ## A205510.P8221249613382597513

`A000120(xor(A008578(n+2), A008578(n+3)))`
-/

namespace A205510.P8221249613382597513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A008578 (n + 2)) (A008578 (n + 3))).toNat

end

end A205510.P8221249613382597513

namespace A205510

/-- `A000120(xor(A008578(n+2), A008578(n+3)))` -/
def P8221249613382597513.Spec : Prop :=
  ∀ n, P8221249613382597513.a n = A205510 (n + 1)

end A205510

/-! ## A205510.P7514754514803212128

`A000120(A112591(n+1))`
-/

namespace A205510.P7514754514803212128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A112591 (n + 1)).toNat

end

end A205510.P7514754514803212128

namespace A205510

/-- `A000120(A112591(n+1))` -/
def P7514754514803212128.Spec : Prop :=
  ∀ n, P7514754514803212128.a n = A205510 (n + 1)

end A205510

/-! ## A205510.P1597667952186661217

`A000120(xor(A045344(n+1), A160656(n+1)))`
-/

namespace A205510.P1597667952186661217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A045344 (n + 1)) (A160656 (n + 1))).toNat

end

end A205510.P1597667952186661217

namespace A205510

/-- `A000120(xor(A045344(n+1), A160656(n+1)))` -/
def P1597667952186661217.Spec : Prop :=
  ∀ n, P1597667952186661217.a n = A205510 (n + 1)

end A205510

/-!
# A205511: Lesser of the n-th pair of Hamming twin primes.

The programs for A205511, the canonical program `A205511.P14836272613106091644` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205511 has offset 1).

The definition of A205511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205511.P14836272613106091644

`A000040(eq[1, A205510(n+1)]+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A205511

/-- `A000040(eq[1, A205510(n+1)]+1)` -/
def P14836272613106091644.Spec : Prop :=
  ∀ n, P14836272613106091644.a n = A205511 (n + 1)

theorem P14836272613106091644.correct : P14836272613106091644.Spec := by
  intro n
  simp only [A205511, Nat.add_sub_cancel]

end A205511

/-! ## A205511.P16037214738148765624

`A000040(lt[A205510(n+1), 2]+1)`
-/

namespace A205511.P16037214738148765624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205510 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A205511.P16037214738148765624

namespace A205511

/-- `A000040(lt[A205510(n+1), 2]+1)` -/
def P16037214738148765624.Spec : Prop :=
  ∀ n, P16037214738148765624.a n = A205511 (n + 1)

end A205511

/-! ## A205511.P5983141533372861964

`A000040(record[(n+1)/A205510(n+1)])`
-/

namespace A205511.P5983141533372861964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A205510 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A205511.P5983141533372861964

namespace A205511

/-- `A000040(record[(n+1)/A205510(n+1)])` -/
def P5983141533372861964.Spec : Prop :=
  ∀ n, P5983141533372861964.a n = A205511 (n + 1)

end A205511

/-! ## A205511.P16192137389343272971

`p?[A000040(n+1)*A205510(n+1)]`
-/

namespace A205511.P16192137389343272971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A205510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205511.P16192137389343272971

namespace A205511

/-- `p?[A000040(n+1)*A205510(n+1)]` -/
def P16192137389343272971.Spec : Prop :=
  ∀ n, P16192137389343272971.a n = A205511 (n + 1)

end A205511

/-! ## A205511.P6900349987500165212

`A261080(n+1)/A205302(n+1)`
-/

namespace A205511.P6900349987500165212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261080 (n + 1) : ℚ) / (A205302 (n + 1) : ℚ)

end

end A205511.P6900349987500165212

namespace A205511

/-- `A261080(n+1)/A205302(n+1)` -/
def P6900349987500165212.Spec : Prop :=
  ∀ n, P6900349987500165212.a n = (A205511 (n + 1) : ℚ)

end A205511

/-! ## A205511.P7525030931481332018

`A064989(A205302(n+1))`
-/

namespace A205511.P7525030931481332018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A205302 (n + 1)).toNat

end

end A205511.P7525030931481332018

namespace A205511

/-- `A064989(A205302(n+1))` -/
def P7525030931481332018.Spec : Prop :=
  ∀ n, P7525030931481332018.a n = A205511 (n + 1)

end A205511

/-!
# A205512: Number of (n+1)X(n+1) 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock differing from each horizontal or vertical neighbor.

The programs for A205512, there is no canonical definition to state claims against.
-/

/-! ## A205512.P5459098311179298373

`A205520((n+1)²+n²)`
-/

namespace A205512.P5459098311179298373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 ((n + 1) ^ 2 + n ^ 2)

end

end A205512.P5459098311179298373

/-!
# A205513: Number of (n+1) X 2 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock differing from each horizontal or vertical neighbor.

The programs for A205513, there is no canonical definition to state claims against.
-/

/-! ## A205513.P8752301900973526635

`A205736(∑[n+1])`
-/

namespace A205513.P8752301900973526635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205736 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205513.P8752301900973526635

/-! ## A205513.P2973381514966537531

`lcm(3, A205736(Δ[A000292(n)]))`
-/

namespace A205513.P2973381514966537531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205736 (f1 (n + 1) - f1 n).toNat)

end

end A205513.P2973381514966537531

/-! ## A205513.P14953979217702245563

`record[root(A205736(n+1), A038207(n))]`
-/

namespace A205513.P14953979217702245563
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205736 (n + 1) : ℝ) ^ (1 / (A038207 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205513.P14953979217702245563

/-! ## A205513.P11682286809176336576

`record[root(A205736(n+1), A112626(n))]`
-/

namespace A205513.P11682286809176336576
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205736 (n + 1) : ℝ) ^ (1 / (A112626 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205513.P11682286809176336576

/-! ## A205513.P6666331387265691627

`record[root(A205736(n+1), A187888(n))]`
-/

namespace A205513.P6666331387265691627
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205736 (n + 1) : ℝ) ^ (1 / (A187888 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205513.P6666331387265691627

/-!
# A205514: Number of (n+1)X3 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock differing from each horizontal or vertical neighbor.

The programs for A205514, there is no canonical definition to state claims against.
-/

/-! ## A205514.P16126775325750912489

`A205520(∑[n+1]+2)`
-/

namespace A205514.P16126775325750912489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205514.P16126775325750912489

/-! ## A205514.P1323361003692731557

`lcm(2, A205520(A133263(n+1)))`
-/

namespace A205514.P1323361003692731557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205520 (A133263 (n + 1)).toNat)

end

end A205514.P1323361003692731557

/-! ## A205514.P1708164143965464779

`record[A205520(A133263(abs(1-n)))]`
-/

namespace A205514.P1708164143965464779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205514.P1708164143965464779

/-! ## A205514.P13813783585270086497

`record[root(A205520(n+2), A059268(n))]`
-/

namespace A205514.P13813783585270086497
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205520 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205514.P13813783585270086497

/-! ## A205514.P2496859985768455115

`record[root(A205520(n+2), A074909(n))]`
-/

namespace A205514.P2496859985768455115
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205520 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205514.P2496859985768455115

/-!
# A205515: Number of (n+1)X4 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock differing from each horizontal or vertical neighbor.

The programs for A205515, there is no canonical definition to state claims against.
-/

/-! ## A205515.P14966388304802070864

`A205520(∑[n+2]+4)`
-/

namespace A205515.P14966388304802070864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205515.P14966388304802070864

/-! ## A205515.P8759977328554648893

`lcm(3, A205520(A167614(n+1)))`
-/

namespace A205515.P8759977328554648893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205520 (A167614 (n + 1)).toNat)

end

end A205515.P8759977328554648893

/-! ## A205515.P8673226218732131032

`A205520(A167614(n+1))+A014083(n)`
-/

namespace A205515.P8673226218732131032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (A167614 (n + 1)).toNat + A014083 n

end

end A205515.P8673226218732131032

/-! ## A205515.P112907185757115532

`A205520(A167614(n+1))+A025469(n)`
-/

namespace A205515.P112907185757115532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (A167614 (n + 1)).toNat + A025469 n

end

end A205515.P112907185757115532

/-! ## A205515.P17992114765695259751

`A007318(C(2, n))*A205520(A167614(n+1))`
-/

namespace A205515.P17992114765695259751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A205520 (A167614 (n + 1)).toNat

end

end A205515.P17992114765695259751

/-!
# A205516: Number of (n+1)X5 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock differing from each horizontal or vertical neighbor.

The programs for A205516, there is no canonical definition to state claims against.
-/

/-! ## A205516.P7058131651179389726

`A205520(A374004(n+1))`
-/

namespace A205516.P7058131651179389726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (A374004 (n + 1)).toNat

end

end A205516.P7058131651179389726

/-! ## A205516.P16463239983198485062

`A205520(A141214(n)+7)`
-/

namespace A205516.P16463239983198485062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (A141214 n + 7).toNat

end

end A205516.P16463239983198485062

/-! ## A205516.P4977060678934167371

`A205520(A052905(n)+9)`
-/

namespace A205516.P4977060678934167371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (A052905 n + 9).toNat

end

end A205516.P4977060678934167371

/-! ## A205516.P15703211756205150385

`A205520(A167614(n+2)+1)`
-/

namespace A205516.P15703211756205150385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (A167614 (n + 2) + 1).toNat

end

end A205516.P15703211756205150385

/-! ## A205516.P11738619843633608761

`A205520(eq[3, A002262(n)]+1)`
-/

namespace A205516.P11738619843633608761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205516.P11738619843633608761

/-!
# A205517: Number of (n+1) X 6 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock differing from each horizontal or vertical neighbor.

The programs for A205517, there is no canonical definition to state claims against.
-/

/-! ## A205517.P6632839309550516838

`A205520(A374005(n+1))`
-/

namespace A205517.P6632839309550516838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (A374005 (n + 1)).toNat

end

end A205517.P6632839309550516838

/-! ## A205517.P4973046091762621354

`A205520(A155212(n)+13)`
-/

namespace A205517.P4973046091762621354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (A155212 n + 13).toNat

end

end A205517.P4973046091762621354

/-! ## A205517.P2847639945205916333

`A205520(eq[6, A131818(n+1)])`
-/

namespace A205517.P2847639945205916333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205517.P2847639945205916333

/-! ## A205517.P7388002878164539770

`A205520(A055999(n+3)-A005843(n))`
-/

namespace A205517.P7388002878164539770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (A055999 (n + 3) - A005843 n).toNat

end

end A205517.P7388002878164539770

/-! ## A205517.P11471712836477784599

`A205520(Δ[A264443(n)])`
-/

namespace A205517.P11471712836477784599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (f1 (n + 1) - f1 n).toNat

end

end A205517.P11471712836477784599

/-!
# A205518: Number of (n+1)X7 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock differing from each horizontal or vertical neighbor.

The programs for A205518, there is no canonical definition to state claims against.
-/

/-! ## A205518.P17377979015316972246

`A205520(A374007(n+1))`
-/

namespace A205518.P17377979015316972246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (A374007 (n + 1)).toNat

end

end A205518.P17377979015316972246

/-! ## A205518.P18218729658408354309

`A205520(Δ[A264443(n)]+10)`
-/

namespace A205518.P18218729658408354309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (f1 (n + 1) - f1 n + 10).toNat

end

end A205518.P18218729658408354309

/-! ## A205518.P10346696051125606545

`A205520(eq[5, A002262(n)]+1)`
-/

namespace A205518.P10346696051125606545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205518.P10346696051125606545

/-! ## A205518.P2071467461958306197

`A205520(eq[7, A131818(n+1)])`
-/

namespace A205518.P2071467461958306197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205518.P2071467461958306197

/-! ## A205518.P1125328754617473193

`A205520(A052905(n+3))`
-/

namespace A205518.P1125328754617473193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (A052905 (n + 3)).toNat

end

end A205518.P1125328754617473193

/-!
# A205519: Number of (n+1)X8 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock differing from each horizontal or vertical neighbor.

The programs for A205519, there is no canonical definition to state claims against.
-/

/-! ## A205519.P2017347381071949081

`A205520(A374008(n+1))`
-/

namespace A205519.P2017347381071949081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (A374008 (n + 1)).toNat

end

end A205519.P2017347381071949081

/-! ## A205519.P12015398832290611971

`A205520(A133263(n+6)+5)`
-/

namespace A205519.P12015398832290611971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (A133263 (n + 6) + 5).toNat

end

end A205519.P12015398832290611971

/-! ## A205519.P1985938718869073344

`A205520(eq[8, A131818(n+1)])`
-/

namespace A205519.P1985938718869073344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205519.P1985938718869073344

/-! ## A205519.P17754232577310301124

`A205520(eq[4, A219347(n)])`
-/

namespace A205519.P17754232577310301124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205519.P17754232577310301124

/-! ## A205519.P7195894913846337121

`A205520(eq[6, A193592(n)])`
-/

namespace A205519.P7195894913846337121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205519.P7195894913846337121

/-!
# A205521: Numbers n such that 4*11^n - 1 is prime.

The programs for A205521, there is no canonical definition to state claims against.
-/

/-! ## A205521.P11621805652413361020

`∑[∑[A093656(A148549(n))]]`
-/

namespace A205521.P11621805652413361020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093656 (A148549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205521.P11621805652413361020

/-! ## A205521.P2764559676058294313

`∑[∑[A093656(A287967(n))]]`
-/

namespace A205521.P2764559676058294313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093656 (A287967 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205521.P2764559676058294313

/-!
# A205523: Numbers k such that gcd(k, sigma(k)) == sigma(k) (mod k).

The programs for A205523, the canonical program `A205523.P3343605037505574197` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205523 has offset 1).

The definition of A205523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205523.P5152822192053888671

`record[(n+1)*(2-A000010(A071862(n+1)))]`
-/

namespace A205523.P5152822192053888671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A000010 (A071862 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205523.P5152822192053888671

namespace A205523

/-- `record[(n+1)*(2-A000010(A071862(n+1)))]` -/
def P5152822192053888671.Spec : Prop :=
  ∀ n, P5152822192053888671.a n = A205523 (n + 1)

end A205523

/-! ## A205523.P3343605037505574197

`lt[A272008(n+1), 2]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A205523

/-- `lt[A272008(n+1), 2]+1` -/
def P3343605037505574197.Spec : Prop :=
  ∀ n, (P3343605037505574197.a n : ℤ) = A205523 (n + 1)

theorem P3343605037505574197.correct : P3343605037505574197.Spec := by
  intro n
  simp only [A205523, Nat.add_sub_cancel]

end A205523

/-! ## A205523.P7457729739277300996

`eq[n, n*a(A272008(n))]` with `a(0)=1`
-/

namespace A205523.P7457729739277300996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  n * f2 (A272008 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A205523.P7457729739277300996

namespace A205523

/-- `eq[n, n*a(A272008(n))]` -/
def P7457729739277300996.Spec : Prop :=
  ∀ n, (P7457729739277300996.a n : ℤ) = A205523 (n + 1)

end A205523

/-! ## A205523.P9775748632133426390

`eq[1, A284082(n+1)]+1`
-/

namespace A205523.P9775748632133426390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A205523.P9775748632133426390

namespace A205523

/-- `eq[1, A284082(n+1)]+1` -/
def P9775748632133426390.Spec : Prop :=
  ∀ n, (P9775748632133426390.a n : ℤ) = A205523 (n + 1)

end A205523

/-! ## A205523.P8806704615855662084

`record[gcd(n+1, A001065(n+1)-A009194(n+1))]`
-/

namespace A205523.P8806704615855662084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001065 (n + 1) - A009194 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205523.P8806704615855662084

namespace A205523

/-- `record[gcd(n+1, A001065(n+1)-A009194(n+1))]` -/
def P8806704615855662084.Spec : Prop :=
  ∀ n, (P8806704615855662084.a n : ℤ) = A205523 (n + 1)

end A205523

/-!
# A205524: Numbers n such that gcd(n, sigma(n)) is not equal to sigma(n) mod n.

The programs for A205524, there is no canonical definition to state claims against.
-/

/-! ## A205524.P3653904731826531449

`lt[1, A272008(n+1)]+1`
-/

namespace A205524.P3653904731826531449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A205524.P3653904731826531449

/-! ## A205524.P412281693649363950

`lt[2, A071862(n+1)]+1`
-/

namespace A205524.P412281693649363950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A205524.P412281693649363950

/-! ## A205524.P8233549845313411806

`comp[A205523(n+1)-1]+1`
-/

namespace A205524.P8233549845313411806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205523 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A205524.P8233549845313411806

/-! ## A205524.P3700606638234809678

`lt[1, A272008(A028310(n))]`
-/

namespace A205524.P3700606638234809678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A205524.P3700606638234809678

/-! ## A205524.P799118192775465441

`A020725(lt[1, A272008(n+1)])`
-/

namespace A205524.P799118192775465441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205524.P799118192775465441

/-! ## A205524.P1988379398438605168

`A065475(lt[1, A272008(n+1)])`
-/

namespace A205524.P1988379398438605168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205524.P1988379398438605168

/-! ## A205524.P5215687459917015236

`lt[1, A272008(A233583(n+1))]`
-/

namespace A205524.P5215687459917015236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A205524.P5215687459917015236

/-! ## A205524.P17663969791156628035

`eq[1, A016099(a(A272008(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A205524.P17663969791156628035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A016099 (f2 (A272008 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205524.P17663969791156628035

/-! ## A205524.P15472487169491489093

`eq[1, A000010(a(A272008(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A205524.P15472487169491489093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000010 (f2 (A272008 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205524.P15472487169491489093

/-! ## A205524.P15480109966767490270

`eq[1, A000045(a(A272008(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A205524.P15480109966767490270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000045 (f2 (A272008 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205524.P15480109966767490270

/-!
# A205525: Nonprime numbers k such that gcd(k, sigma(k)) == sigma(k) (mod k).

The programs for A205525, there is no canonical definition to state claims against.
-/

/-! ## A205525.P13134552108341416246

`filter[A205523(n+1), A005171(#)]`
-/

namespace A205525.P13134552108341416246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A205525.P13134552108341416246

/-! ## A205525.P12711278202834195196

`∩[A205523(n+1), A103517(n)]`
-/

namespace A205525.P12711278202834195196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205525.P12711278202834195196

/-! ## A205525.P8367445338451919814

`∩[A018252(n+1), A205523(n+1)]`
-/

namespace A205525.P8367445338451919814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205525.P8367445338451919814

/-! ## A205525.P16273312351444275147

`∩[A056653(n+1), A205523(n+1)]`
-/

namespace A205525.P16273312351444275147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205525.P16273312351444275147

/-! ## A205525.P7716563740425295357

`∩[A092671(n+1), A205523(n+1)]`
-/

namespace A205525.P7716563740425295357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205525.P7716563740425295357

/-! ## A205525.P13440926943810293052

`∩[A139118(n+1), A205523(n+1)]`
-/

namespace A205525.P13440926943810293052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205525.P13440926943810293052

/-! ## A205525.P10541182124391914781

`∩[A141468(n+1), A205523(n+1)]`
-/

namespace A205525.P10541182124391914781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205525.P10541182124391914781

/-! ## A205525.P1781743448020680923

`∩[A163164(n+1), A205523(n+1)]`
-/

namespace A205525.P1781743448020680923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205525.P1781743448020680923

/-! ## A205525.P1711450071746088405

`∩[A174891(n+1), A205523(n+1)]`
-/

namespace A205525.P1711450071746088405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205525.P1711450071746088405

/-! ## A205525.P9856659247816694735

`∩[A205523(n+1), A205783(n+1)]`
-/

namespace A205525.P9856659247816694735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205525.P9856659247816694735

/-!
# A205526: Least positive integer y such that Kronecker(y^2 - 4, p(n)) == -1 and (x+2)^(p(n)+1) == 5 -+ 2*y (mod p(n), mod x^2 +- y*x + 1).

The programs for A205526, there is no canonical definition to state claims against.
-/

/-! ## A205526.P15549863761105354012

`gcd(A276176(A139321(n+1)), A276214(n+1))`
-/

namespace A205526.P15549863761105354012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276176 (A139321 (n + 1)).toNat) (A276214 (n + 1))

end

end A205526.P15549863761105354012

/-! ## A205526.P16563572030903741782

`A134011(A004999(n+1)*A122111(n+1))`
-/

namespace A205526.P16563572030903741782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134011 (A004999 (n + 1) * A122111 (n + 1)).toNat

end

end A205526.P16563572030903741782

/-! ## A205526.P4367270540438529997

`A127057(lcm(A178858(n+1), A331027(n+1)))`
-/

namespace A205526.P4367270540438529997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (Int.lcm (A178858 (n + 1)) (A331027 (n + 1)))

end

end A205526.P4367270540438529997

/-! ## A205526.P5297618111821318319

`A053150(A167614(A080079(n+1))²)`
-/

namespace A205526.P5297618111821318319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A167614 (A080079 (n + 1)).toNat ^ 2).toNat

end

end A205526.P5297618111821318319

/-! ## A205526.P7208570630145288206

`gcd(A001221(A233997(n+1)), A078010(n))`
-/

namespace A205526.P7208570630145288206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A233997 (n + 1)).toNat) (A078010 n)

end

end A205526.P7208570630145288206

/-!
# A205529: Noncomposite k-digit numbers m such that each sum of 1 - k digits of m is a substring of m.

The programs for A205529, there is no canonical definition to state claims against.
-/

/-! ## A205529.P13731991549562332164

`lt[lcm(A294898(n+1)+1, n+1), 10]`
-/

namespace A205529.P13731991549562332164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A294898 (n + 1) + 1) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A205529.P13731991549562332164

/-! ## A205529.P11254215163330652669

`A025147(A208227(n))+n`
-/

namespace A205529.P11254215163330652669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (A208227 n).toNat + (n : ℤ)

end

end A205529.P11254215163330652669

/-!
# A205530: Composite numbers n with k digits such that each sum of 1 to k digits of n is substring of n.

The programs for A205530, there is no canonical definition to state claims against.
-/

/-! ## A205530.P2752550216055112629

`filter[A202272(n+2), A066247(#)]`
-/

namespace A205530.P2752550216055112629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202272 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A205530.P2752550216055112629

/-! ## A205530.P11654791342261434997

`filter[A202272(n+3), A005171(#)]`
-/

namespace A205530.P11654791342261434997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202272 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A205530.P11654791342261434997

/-! ## A205530.P14389699743144207675

`record[A191558(A202272(n+5))]`
-/

namespace A205530.P14389699743144207675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A202272 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205530.P14389699743144207675

/-! ## A205530.P11441331022196210579

`filter[A202272(n+2), A252742(#)]`
-/

namespace A205530.P11441331022196210579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202272 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252742 (f1 j).toNat = 1) n)

end

end A205530.P11441331022196210579

/-!
# A205531: Least nonnegative integer y such that Kronecker(y^2 - 4, p(n)) == -1 and (x+2)^(p(n)+1) == 5 -+ 2*y (mod p(n), mod x^2 +- y*x + 1).

The programs for A205531, there is no canonical definition to state claims against.
-/

/-! ## A205531.P5573570900522082489

`A098033(n+1)*A205526(n+1)`
-/

namespace A205531.P5573570900522082489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098033 (n + 1) * A205526 (n + 1)

end

end A205531.P5573570900522082489

/-! ## A205531.P2716638904937748986

`15%A112050(A039915(n+1))`
-/

namespace A205531.P2716638904937748986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 15 (A112050 (A039915 (n + 1)).toNat)

end

end A205531.P2716638904937748986

/-! ## A205531.P7470606806207253059

`A205535(p?[comp[n²]])`
-/

namespace A205531.P7470606806207253059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205535 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A205531.P7470606806207253059

/-! ## A205531.P10764042192562512432

`A205535(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A205531.P10764042192562512432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205535 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A205531.P10764042192562512432

/-! ## A205531.P5887001033951226712

`∏{p}[4*p?[round(8*n/7)], A205535(#)]`
-/

namespace A205531.P5887001033951226712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A205535 p

end

end A205531.P5887001033951226712

/-!
# A205532: Primes at which occur records of A205531 and A205535.

The programs for A205532, there is no canonical definition to state claims against.
-/

/-! ## A205532.P5752432945662011624

`p?[or(A007590(n), A093335(n))]`
-/

namespace A205532.P5752432945662011624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007590 n) (A093335 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205532.P5752432945662011624

/-!
# A205533: Intersection of A205302 and A205511.

The programs for A205533, the canonical program `A205533.P3095447443842354911` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205533 has offset 1).

The definition of A205533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205533.P13500484748199748307

`∩[A205302(n+1), A205511(n+1)]`
-/

namespace A205533.P13500484748199748307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205533.P13500484748199748307

namespace A205533

/-- `∩[A205302(n+1), A205511(n+1)]` -/
def P13500484748199748307.Spec : Prop :=
  ∀ n, (P13500484748199748307.a n : ℤ) = A205533 (n + 1)

end A205533

/-! ## A205533.P3095447443842354911

`p?[gcd(A205302(n+1), A205511(n+2))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A205533

/-- `p?[gcd(A205302(n+1), A205511(n+2))]` -/
def P3095447443842354911.Spec : Prop :=
  ∀ n, (P3095447443842354911.a n : ℤ) = A205533 (n + 1)

theorem P3095447443842354911.correct : P3095447443842354911.Spec := by
  intro n
  simp only [A205533, Nat.add_sub_cancel]

end A205533

/-! ## A205533.P2792602090956825416

`record[gcd(A205302(n+3), A205511(n+4))]`
-/

namespace A205533.P2792602090956825416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205302 (n + 3)) (A205511 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205533.P2792602090956825416

namespace A205533

/-- `record[gcd(A205302(n+3), A205511(n+4))]` -/
def P2792602090956825416.Spec : Prop :=
  ∀ n, (P2792602090956825416.a n : ℤ) = A205533 (n + 1)

end A205533

/-! ## A205533.P17622427368413724336

`p?[gcd(A261080(n+1), A261080(n+2))]`
-/

namespace A205533.P17622427368413724336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A261080 (n + 1)) (A261080 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A205533.P17622427368413724336

namespace A205533

/-- `p?[gcd(A261080(n+1), A261080(n+2))]` -/
def P17622427368413724336.Spec : Prop :=
  ∀ n, (P17622427368413724336.a n : ℤ) = A205533 (n + 1)

end A205533

/-! ## A205533.P1108810740610702524

`∩[A205511(n+1), A003961(A205511(n+2))]`
-/

namespace A205533.P1108810740610702524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A205511 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205533.P1108810740610702524

namespace A205533

/-- `∩[A205511(n+1), A003961(A205511(n+2))]` -/
def P1108810740610702524.Spec : Prop :=
  ∀ n, (P1108810740610702524.a n : ℤ) = A205533 (n + 1)

end A205533

/-! ## A205533.P12867915325222932897

`∩[A205302(n+1), A064989(A205302(n+2))]`
-/

namespace A205533.P12867915325222932897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A205302 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205533.P12867915325222932897

namespace A205533

/-- `∩[A205302(n+1), A064989(A205302(n+2))]` -/
def P12867915325222932897.Spec : Prop :=
  ∀ n, (P12867915325222932897.a n : ℤ) = A205533 (n + 1)

end A205533

/-!
# A205534: Record values of A205531 and A205535.

The programs for A205534, there is no canonical definition to state claims against.
-/

/-! ## A205534.P14135452502328011467

`record[A346615(A062028(n))]`
-/

namespace A205534.P14135452502328011467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346615 (A062028 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205534.P14135452502328011467

/-! ## A205534.P66079245654284078

`record[A346615(A305117(n))]`
-/

namespace A205534.P66079245654284078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346615 (A305117 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205534.P66079245654284078

/-! ## A205534.P7878439403516526230

`record[A344767(A160939(n+1))]`
-/

namespace A205534.P7878439403516526230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344767 (A160939 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205534.P7878439403516526230

/-! ## A205534.P18253868294170863946

`record[A097559(A097745(n+3))]`
-/

namespace A205534.P18253868294170863946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097559 (A097745 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205534.P18253868294170863946

/-! ## A205534.P3277214446929215562

`eq[2, A000005(A104697(n+2))]`
-/

namespace A205534.P3277214446929215562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A104697 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205534.P3277214446929215562

/-!
# A205535: Least nonnegative integer y such that Kronecker(y^2 - 4, n) == -1 and (x+2)^(n+1) == 5 -+ 2*y (mod n, mod x^2 +- y*x + 1), or -1 if there is no such y.

The programs for A205535, there is no canonical definition to state claims against.
-/

/-! ## A205535.P10353310656996846550

`A353457(∑[11*a(n-2)-10*a(n-4)]+1)` with `a(0)=5, a(1)=0, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A205535.P10353310656996846550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0, 1, 1, 3] fun n f1 =>
  11 * f1 (n - 2) - 10 * f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353457 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A205535.P10353310656996846550

/-! ## A205535.P2226436521999640317

`A359378(A001906(n)+7)`
-/

namespace A205535.P2226436521999640317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (A001906 n + 7).toNat

end

end A205535.P2226436521999640317

/-! ## A205535.P18007812158532623647

`A359378(A000045(2*n)+7)`
-/

namespace A205535.P18007812158532623647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (A000045 (2 * n) + 7).toNat

end

end A205535.P18007812158532623647

/-! ## A205535.P16582240590379760791

`A284793(A265381(n)+Δ[n²])`
-/

namespace A205535.P16582240590379760791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (A265381 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A205535.P16582240590379760791

/-! ## A205535.P13783600324315228778

`A008683(∑[A189560(2*(n+2))])`
-/

namespace A205535.P13783600324315228778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189560 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A205535.P13783600324315228778

/-!
# A205536: Number of distinct values of Sum_{i=0..n} x(i)*binomial(n,i), where the x(i) is a vector of length n+1 that runs through all combinations of {0, 1}.

The programs for A205536, there is no canonical definition to state claims against.
-/

/-! ## A205536.P3719959562712530909

`A205542(∑[n]+n)`
-/

namespace A205536.P3719959562712530909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205542 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A205536.P3719959562712530909

/-! ## A205536.P8187123516302422431

`A205542(A000096(n))+char[23]`
-/

namespace A205536.P8187123516302422431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205542 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A205536.P8187123516302422431

/-! ## A205536.P8268064972356431237

`record[A023531(n)*A205542(n)]`
-/

namespace A205536.P8268064972356431237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A205542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205536.P8268064972356431237

/-! ## A205536.P4554958279129568191

`record[A055137(n)*A205542(n)]`
-/

namespace A205536.P4554958279129568191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055137 n * A205542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205536.P4554958279129568191

/-! ## A205536.P15979458824183729295

`record[A103452(n)*A205542(n)]`
-/

namespace A205536.P15979458824183729295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A205542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205536.P15979458824183729295

/-!
# A205537: Number of distinct values of Sum_{i=0..n} x(i)*binomial(n,i), where the x(i) have values in 0..2.

The programs for A205537, there is no canonical definition to state claims against.
-/

/-! ## A205537.P15215500600130476946

`A205542(∑[n+2]-1)`
-/

namespace A205537.P15215500600130476946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205542 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A205537.P15215500600130476946

/-! ## A205537.P12792539945950946177

`or(1, A205542(A034856(n+1)))`
-/

namespace A205537.P12792539945950946177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A205542 (A034856 (n + 1)).toNat)

end

end A205537.P12792539945950946177

/-! ## A205537.P3553621769389452170

`A205542(A034856(n+1))%A129226(n)`
-/

namespace A205537.P3553621769389452170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205542 (A034856 (n + 1)).toNat) (A129226 n)

end

end A205537.P3553621769389452170

/-! ## A205537.P10285941695606587195

`A007318(∑[n])*A205542(A034856(n+1))`
-/

namespace A205537.P10285941695606587195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A205542 (A034856 (n + 1)).toNat

end

end A205537.P10285941695606587195

/-! ## A205537.P677502254797032995

`A057427(2*n+3)*A205542(A034856(n+1))`
-/

namespace A205537.P677502254797032995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * n + 3) * A205542 (A034856 (n + 1)).toNat

end

end A205537.P677502254797032995

/-!
# A205538: Number of distinct values of Sum_{i=0..n} x(i)*binomial(n,i), where the x(i) have values in 0..3.

The programs for A205538, there is no canonical definition to state claims against.
-/

/-! ## A205538.P6559007359865952504

`A205542(∑[n+3])`
-/

namespace A205538.P6559007359865952504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205542 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205538.P6559007359865952504

/-! ## A205538.P3993288650710518139

`or(n%2, A205542(A141214(n)))`
-/

namespace A205538.P3993288650710518139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A205542 (A141214 n).toNat)

end

end A205538.P3993288650710518139

/-! ## A205538.P18378107656122232381

`A205542(A055998(n+1))+char[23]`
-/

namespace A205538.P18378107656122232381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205542 (A055998 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A205538.P18378107656122232381

/-! ## A205538.P15586790621936758921

`A205542(A141214(n))%A005009(n)`
-/

namespace A205538.P15586790621936758921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205542 (A141214 n).toNat) (A005009 n)

end

end A205538.P15586790621936758921

/-! ## A205538.P7298707093296974351

`lcm(A020985(n), A205542(A141214(n)))`
-/

namespace A205538.P7298707093296974351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A205542 (A141214 n).toNat)

end

end A205538.P7298707093296974351

/-!
# A205539: Number of distinct values of Sum_{i=0..n} x(i)*binomial(n,i), where the x(i) have values in 0..4.

The programs for A205539, there is no canonical definition to state claims against.
-/

/-! ## A205539.P3806749492856966452

`A205542(∑[n+4]+2)`
-/

namespace A205539.P3806749492856966452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205542 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205539.P3806749492856966452

/-! ## A205539.P13105072092181797989

`A080677(8*A008862(n))`
-/

namespace A205539.P13105072092181797989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (8 * A008862 n).toNat

end

end A205539.P13105072092181797989

/-! ## A205539.P16653287383365411900

`A080677(8*A172319(n))`
-/

namespace A205539.P16653287383365411900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (8 * A172319 n).toNat

end

end A205539.P16653287383365411900

/-! ## A205539.P12993162358884766336

`A020737(n)-A047197(A309863(n))`
-/

namespace A205539.P12993162358884766336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n - A047197 (A309863 n).toNat

end

end A205539.P12993162358884766336

/-! ## A205539.P14318280417980918721

`A020737(n)-A058343(A004086(n+2))`
-/

namespace A205539.P14318280417980918721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n - A058343 (A004086 (n + 2)).toNat

end

end A205539.P14318280417980918721

/-!
# A205540: Number of distinct values of Sum_{i=0..n} x(i)*binomial(n,i), where the x(i) have values in 0..5.

The programs for A205540, there is no canonical definition to state claims against.
-/

/-! ## A205540.P5322070559881294407

`A205542(∑[n+5]+5)`
-/

namespace A205540.P5322070559881294407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205542 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A205540.P5322070559881294407

/-!
# A205541: Number of distinct values of Sum_{i=0..n} x(i)*binomial(n,i), where the x(i) have values in 0..6.

The programs for A205541, there is no canonical definition to state claims against.
-/

/-! ## A205541.P3027187988433646582

`A205542(A055999(n+3))`
-/

namespace A205541.P3027187988433646582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205542 (A055999 (n + 3)).toNat

end

end A205541.P3027187988433646582

/-! ## A205541.P8244398948797182309

`A205542(A056119(n)+15)`
-/

namespace A205541.P8244398948797182309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205542 (A056119 n + 15).toNat

end

end A205541.P8244398948797182309

/-! ## A205541.P2638452498983099472

`A205542(eq[5, A025581(n)])`
-/

namespace A205541.P2638452498983099472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205541.P2638452498983099472

/-! ## A205541.P8332756854159573015

`A205542(eq[11, A099375(n)])`
-/

namespace A205541.P8332756854159573015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205541.P8332756854159573015

/-! ## A205541.P8312791087131996514

`A205542(Δ[A023551(n+1)])`
-/

namespace A205541.P8312791087131996514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205542 (f1 (n + 1) - f1 n).toNat

end

end A205541.P8312791087131996514

/-!
# A205542: T(n,k) = Number of distinct values of Sum_{i=0..n} x(i)*binomial(n,i) where the x(i) have values in 0..k.

The programs for A205542, there is no canonical definition to state claims against.
-/

/-! ## A205542.P6514565038039046789

`A130128(n+1)+A020985(A257278(n+1))`
-/

namespace A205542.P6514565038039046789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130128 (n + 1) + A020985 (A257278 (n + 1)).toNat

end

end A205542.P6514565038039046789

/-! ## A205542.P2346385890744260827

`A287896(A036561(n))+A001221(lcm(4, 2^n))`
-/

namespace A205542.P2346385890744260827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (A036561 n).toNat + A001221 (Nat.lcm 4 (2 ^ n))

end

end A205542.P2346385890744260827

/-! ## A205542.P15339113985104587027

`A287896(A036561(n))+A001221(A079373(n+1))`
-/

namespace A205542.P15339113985104587027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (A036561 n).toNat + A001221 (A079373 (n + 1)).toNat

end

end A205542.P15339113985104587027

/-! ## A205542.P5979682705788540267

`A130128(n+1)+A000367(A230398(n+3))`
-/

namespace A205542.P5979682705788540267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130128 (n + 1) + A000367 (A230398 (n + 3)).toNat

end

end A205542.P5979682705788540267

/-!
# A205543: Logarithmic derivative of the Bell numbers (A000110).

The programs for A205543, there is no canonical definition to state claims against.
-/

/-! ## A205543.P11339248604977447977

`∑{d}[n+1, #*A085686(#)]`
-/

namespace A205543.P11339248604977447977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A085686 d

end

end A205543.P11339248604977447977

/-! ## A205543.P11678421189511062404

`∑[∑[A194640(A174808(n))]]`
-/

namespace A205543.P11678421189511062404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A174808 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205543.P11678421189511062404

/-!
# A205544: G.f.: Sum_{n>=0} x^n / Product_{d|n} (1-d*x).

The programs for A205544, there is no canonical definition to state claims against.
-/

/-! ## A205544.P17500157377098724607

`A173022(n*A009623(n))`
-/

namespace A205544.P17500157377098724607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173022 ((n : ℤ) * A009623 n).toNat

end

end A205544.P17500157377098724607

/-! ## A205544.P17222173478747563832

`A075864(n)+A008651(A014323(n))`
-/

namespace A205544.P17222173478747563832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075864 n + A008651 (A014323 n).toNat

end

end A205544.P17222173478747563832

/-! ## A205544.P18115277755485410286

`A100196(A090365(n)+A090338(n))`
-/

namespace A205544.P18115277755485410286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A090365 n + A090338 n).toNat

end

end A205544.P18115277755485410286

/-! ## A205544.P2918965753856431451

`A100196(A090365(n)+A090339(n))`
-/

namespace A205544.P2918965753856431451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A090365 n + A090339 n).toNat

end

end A205544.P2918965753856431451

/-!
# A205545: Symmetric matrix by antidiagonals: C(max(3i,3j),min(3i,3j)), i>=0, j>=0.

The programs for A205545, there is no canonical definition to state claims against.
-/

/-! ## A205545.P2577790803033433809

`A082680(A232065(n+1))%A265806(n+4)`
-/

namespace A205545.P2577790803033433809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082680 (A232065 (n + 1)).toNat) (A265806 (n + 4))

end

end A205545.P2577790803033433809

/-! ## A205545.P395634184072523894

`A139459(A323621(n))%A296563(3*n+4)`
-/

namespace A205545.P395634184072523894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139459 (A323621 n).toNat) (A296563 (3 * n + 4))

end

end A205545.P395634184072523894

/-! ## A205545.P10656680989436305664

`A082680(gcd(A076734(2^n), A318024(n+1)))`
-/

namespace A205545.P10656680989436305664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082680 (Int.gcd (A076734 (2 ^ n)) (A318024 (n + 1)))

end

end A205545.P10656680989436305664

/-! ## A205545.P16400378295876841530

`A139459(A296157(n+1))%A298593(3*n+4)`
-/

namespace A205545.P16400378295876841530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139459 (A296157 (n + 1)).toNat) (A298593 (3 * n + 4))

end

end A205545.P16400378295876841530

/-! ## A205545.P8433981187171092563

`A108556(A045912(n))`
-/

namespace A205545.P8433981187171092563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108556 (A045912 n).toNat

end

end A205545.P8433981187171092563

/-!
# A205547: The number j such that 3 divides prime(k)-prime(j), where k(n)=A205560(n).

The programs for A205547, the canonical program `A205547.P16237328813757143675` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205547 has offset 1).

The definition of A205547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205547.P11321761150209184471

`A000720(A205674(n+1))`
-/

namespace A205547.P11321761150209184471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205674 (n + 1)).toNat

end

end A205547.P11321761150209184471

namespace A205547

/-- `A000720(A205674(n+1))` -/
def P11321761150209184471.Spec : Prop :=
  ∀ n, P11321761150209184471.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P17612525608445780738

`A003963(p?[A205674(n+1)])`
-/

namespace A205547.P17612525608445780738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A205547.P17612525608445780738

namespace A205547

/-- `A003963(p?[A205674(n+1)])` -/
def P17612525608445780738.Spec : Prop :=
  ∀ n, P17612525608445780738.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P6683269380314966478

`A026233(p?[A205674(n+1)])`
-/

namespace A205547.P6683269380314966478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A205547.P6683269380314966478

namespace A205547

/-- `A026233(p?[A205674(n+1)])` -/
def P6683269380314966478.Spec : Prop :=
  ∀ n, P6683269380314966478.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P12408690079982878653

`A026238(p?[A205674(n+1)])`
-/

namespace A205547.P12408690079982878653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A205547.P12408690079982878653

namespace A205547

/-- `A026238(p?[A205674(n+1)])` -/
def P12408690079982878653.Spec : Prop :=
  ∀ n, P12408690079982878653.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P6380418809374171942

`A003963(2*A205674(n+1))`
-/

namespace A205547.P6380418809374171942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A205674 (n + 1)).toNat

end

end A205547.P6380418809374171942

namespace A205547

/-- `A003963(2*A205674(n+1))` -/
def P6380418809374171942.Spec : Prop :=
  ∀ n, P6380418809374171942.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P2081810461727510879

`A061395(2*A205674(n+1))`
-/

namespace A205547.P2081810461727510879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A205674 (n + 1)).toNat

end

end A205547.P2081810461727510879

namespace A205547

/-- `A061395(2*A205674(n+1))` -/
def P2081810461727510879.Spec : Prop :=
  ∀ n, P2081810461727510879.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P5447208467400267155

`A056239(2*A205674(n+1))-1`
-/

namespace A205547.P5447208467400267155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A205674 (n + 1)).toNat - 1

end

end A205547.P5447208467400267155

namespace A205547

/-- `A056239(2*A205674(n+1))-1` -/
def P5447208467400267155.Spec : Prop :=
  ∀ n, P5447208467400267155.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P14122989207720569743

`A003963(A205674(n+1)%(n+10))`
-/

namespace A205547.P14122989207720569743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.tmod (A205674 (n + 1)) (n + 10 : ℤ)).toNat

end

end A205547.P14122989207720569743

namespace A205547

/-- `A003963(A205674(n+1)%(n+10))` -/
def P14122989207720569743.Spec : Prop :=
  ∀ n, P14122989207720569743.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P7712466177747196626

`A205674(n+1)-A026233(A205674(n+1)-1)`
-/

namespace A205547.P7712466177747196626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1) - A026233 (A205674 (n + 1) - 1).toNat

end

end A205547.P7712466177747196626

namespace A205547

/-- `A205674(n+1)-A026233(A205674(n+1)-1)` -/
def P7712466177747196626.Spec : Prop :=
  ∀ n, P7712466177747196626.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P13689853261392353633

`A026238(2*A205674(n+1)-A205674(n+1))`
-/

namespace A205547.P13689853261392353633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (2 * A205674 (n + 1) - A205674 (n + 1)).toNat

end

end A205547.P13689853261392353633

namespace A205547

/-- `A026238(2*A205674(n+1)-A205674(n+1))` -/
def P13689853261392353633.Spec : Prop :=
  ∀ n, P13689853261392353633.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P14089948559223249020

`A049084(2*A205674(n+1)-A205674(n+1))`
-/

namespace A205547.P14089948559223249020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A205674 (n + 1) - A205674 (n + 1)).toNat

end

end A205547.P14089948559223249020

namespace A205547

/-- `A049084(2*A205674(n+1)-A205674(n+1))` -/
def P14089948559223249020.Spec : Prop :=
  ∀ n, P14089948559223249020.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P11797215392462577656

`A055396(2*A205674(n+1)-A205674(n+1))`
-/

namespace A205547.P11797215392462577656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A205674 (n + 1) - A205674 (n + 1)).toNat

end

end A205547.P11797215392462577656

namespace A205547

/-- `A055396(2*A205674(n+1)-A205674(n+1))` -/
def P11797215392462577656.Spec : Prop :=
  ∀ n, P11797215392462577656.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P16237328813757143675

`A002260(A205559(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A205547

/-- `A002260(A205559(n+1))` -/
def P16237328813757143675.Spec : Prop :=
  ∀ n, P16237328813757143675.a n = A205547 (n + 1)

theorem P16237328813757143675.correct : P16237328813757143675.Spec := by
  intro n
  simp only [A205547, Nat.add_sub_cancel]

end A205547

/-! ## A205547.P12656585511751426018

`A061395(A205674(n+1)²)`
-/

namespace A205547.P12656585511751426018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A205674 (n + 1) ^ 2).toNat

end

end A205547.P12656585511751426018

namespace A205547

/-- `A061395(A205674(n+1)²)` -/
def P12656585511751426018.Spec : Prop :=
  ∀ n, P12656585511751426018.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P8055283667543712445

`A055396(A205674(n+1)²)`
-/

namespace A205547.P8055283667543712445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A205674 (n + 1) ^ 2).toNat

end

end A205547.P8055283667543712445

namespace A205547

/-- `A055396(A205674(n+1)²)` -/
def P8055283667543712445.Spec : Prop :=
  ∀ n, P8055283667543712445.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P1803631966766910530

`A056239(A205674(n+1)²)/2`
-/

namespace A205547.P1803631966766910530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (A205674 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A205547.P1803631966766910530

namespace A205547

/-- `A056239(A205674(n+1)²)/2` -/
def P1803631966766910530.Spec : Prop :=
  ∀ n, P1803631966766910530.a n = (A205547 (n + 1) : ℚ)

end A205547

/-! ## A205547.P9704407682140433186

`A049084(A205674(n+1)²)+A049084(A205674(n+1))`
-/

namespace A205547.P9704407682140433186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A205674 (n + 1) ^ 2).toNat + A049084 (A205674 (n + 1)).toNat

end

end A205547.P9704407682140433186

namespace A205547

/-- `A049084(A205674(n+1)²)+A049084(A205674(n+1))` -/
def P9704407682140433186.Spec : Prop :=
  ∀ n, P9704407682140433186.a n = A205547 (n + 1)

end A205547

/-! ## A205547.P10187230575493467472

`A055396((A205674(n+1)+A205557(n+1))*A205674(n+1))`
-/

namespace A205547.P10187230575493467472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 ((A205674 (n + 1) + A205557 (n + 1)) * A205674 (n + 1)).toNat

end

end A205547.P10187230575493467472

namespace A205547

/-- `A055396((A205674(n+1)+A205557(n+1))*A205674(n+1))` -/
def P10187230575493467472.Spec : Prop :=
  ∀ n, P10187230575493467472.a n = A205547 (n + 1)

end A205547

/-!
# A205548: Symmetric matrix by antidiagonals: C(max(i+1,j+1),min(i+1,j+1)), i>=1, j>=1.

The programs for A205548, the canonical program `A205548.P6561402102953099810` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205548 has offset 1).

The definition of A205548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205548.P6561402102953099810

`C(A051125(n+1)+1, A049581(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A205548

/-- `C(A051125(n+1)+1, A049581(n))` -/
def P6561402102953099810.Spec : Prop :=
  ∀ n, (P6561402102953099810.a n : ℤ) = A205548 (n + 1)

theorem P6561402102953099810.correct : P6561402102953099810.Spec := by
  intro n
  simp only [A205548, Nat.add_sub_cancel]

end A205548

/-! ## A205548.P6564031565226259045

`C(A020725(A051125(n+1)), A049581(n))`
-/

namespace A205548.P6564031565226259045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020725 (A051125 (n + 1)).toNat).toNat (A049581 n).toNat

end

end A205548.P6564031565226259045

namespace A205548

/-- `C(A020725(A051125(n+1)), A049581(n))` -/
def P6564031565226259045.Spec : Prop :=
  ∀ n, (P6564031565226259045.a n : ℤ) = A205548 (n + 1)

end A205548

/-! ## A205548.P7517144128292576509

`A059674(lt[1, A047996(n)])`
-/

namespace A205548.P7517144128292576509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205548.P7517144128292576509

namespace A205548

/-- `A059674(lt[1, A047996(n)])` -/
def P7517144128292576509.Spec : Prop :=
  ∀ n, P7517144128292576509.a n = A205548 (n + 1)

end A205548

/-! ## A205548.P831064668418686611

`A059674(lt[1, A052307(n)])`
-/

namespace A205548.P831064668418686611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205548.P831064668418686611

namespace A205548

/-- `A059674(lt[1, A052307(n)])` -/
def P831064668418686611.Spec : Prop :=
  ∀ n, P831064668418686611.a n = A205548 (n + 1)

end A205548

/-! ## A205548.P5777257657047811883

`A059674(lt[n+1, A028326(n)])`
-/

namespace A205548.P5777257657047811883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205548.P5777257657047811883

namespace A205548

/-- `A059674(lt[n+1, A028326(n)])` -/
def P5777257657047811883.Spec : Prop :=
  ∀ n, P5777257657047811883.a n = A205548 (n + 1)

end A205548

/-! ## A205548.P4367216882380439633

`A059674(lt[1, A028326(n)-n])`
-/

namespace A205548.P4367216882380439633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205548.P4367216882380439633

namespace A205548

/-- `A059674(lt[1, A028326(n)-n])` -/
def P4367216882380439633.Spec : Prop :=
  ∀ n, P4367216882380439633.a n = A205548 (n + 1)

end A205548

/-! ## A205548.P16489682201391664736

`A059674(lt[2*n, A210219(n+1)])`
-/

namespace A205548.P16489682201391664736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205548.P16489682201391664736

namespace A205548

/-- `A059674(lt[2*n, A210219(n+1)])` -/
def P16489682201391664736.Spec : Prop :=
  ∀ n, P16489682201391664736.a n = A205548 (n + 1)

end A205548

/-! ## A205548.P14396789844252296072

`A059674(lt[n, A210219(n+1)/2])`
-/

namespace A205548.P14396789844252296072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210219 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A205548.P14396789844252296072

namespace A205548

/-- `A059674(lt[n, A210219(n+1)/2])` -/
def P14396789844252296072.Spec : Prop :=
  ∀ n, P14396789844252296072.a n = A205548 (n + 1)

end A205548

/-! ## A205548.P3995471102830203287

`A059674(lt[n, A210219(n+1)-n])`
-/

namespace A205548.P3995471102830203287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205548.P3995471102830203287

namespace A205548

/-- `A059674(lt[n, A210219(n+1)-n])` -/
def P3995471102830203287.Spec : Prop :=
  ∀ n, P3995471102830203287.a n = A205548 (n + 1)

end A205548

/-! ## A205548.P15306430557024696270

`A059674(lt[A004767(n), A086645(n)])`
-/

namespace A205548.P15306430557024696270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A205548.P15306430557024696270

namespace A205548

/-- `A059674(lt[A004767(n), A086645(n)])` -/
def P15306430557024696270.Spec : Prop :=
  ∀ n, P15306430557024696270.a n = A205548 (n + 1)

end A205548

/-! ## A205548.P17623619333242362060

`A059674(lt[A008574(n), A086645(n)])`
-/

namespace A205548.P17623619333242362060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A205548.P17623619333242362060

namespace A205548

/-- `A059674(lt[A008574(n), A086645(n)])` -/
def P17623619333242362060.Spec : Prop :=
  ∀ n, P17623619333242362060.a n = A205548 (n + 1)

end A205548

/-! ## A205548.P2211603549664394738

`A059674(lt[n, A159623(n)])`
-/

namespace A205548.P2211603549664394738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205548.P2211603549664394738

namespace A205548

/-- `A059674(lt[n, A159623(n)])` -/
def P2211603549664394738.Spec : Prop :=
  ∀ n, P2211603549664394738.a n = A205548 (n + 1)

end A205548

/-!
# A205549: Symmetric matrix by antidiagonals: C(max(i+2,j+2),min(i+2,j+2)), i>=1, j>=1.

The programs for A205549, the canonical program `A205549.P12206282629607975759` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205549 has offset 1).

The definition of A205549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205549.P12206282629607975759

`C(A051125(n+1)+2, A049581(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A205549

/-- `C(A051125(n+1)+2, A049581(n))` -/
def P12206282629607975759.Spec : Prop :=
  ∀ n, (P12206282629607975759.a n : ℤ) = A205549 (n + 1)

theorem P12206282629607975759.correct : P12206282629607975759.Spec := by
  intro n
  simp only [A205549, Nat.add_sub_cancel]

end A205549

/-! ## A205549.P14464532599515027298

`A205548(lt[1, A002262(n)])`
-/

namespace A205549.P14464532599515027298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205549.P14464532599515027298

namespace A205549

/-- `A205548(lt[1, A002262(n)])` -/
def P14464532599515027298.Spec : Prop :=
  ∀ n, P14464532599515027298.a n = A205549 (n + 1)

end A205549

/-! ## A205549.P12062562091217169175

`A059674(lt[n, A007318(n)])`
-/

namespace A205549.P12062562091217169175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205549.P12062562091217169175

namespace A205549

/-- `A059674(lt[n, A007318(n)])` -/
def P12062562091217169175.Spec : Prop :=
  ∀ n, P12062562091217169175.a n = A205549 (n + 1)

end A205549

/-! ## A205549.P8741464654170073524

`A059674(lt[2*n, A028326(n)])`
-/

namespace A205549.P8741464654170073524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205549.P8741464654170073524

namespace A205549

/-- `A059674(lt[2*n, A028326(n)])` -/
def P8741464654170073524.Spec : Prop :=
  ∀ n, P8741464654170073524.a n = A205549 (n + 1)

end A205549

/-! ## A205549.P311708585367196637

`A059674(lt[n, A028326(n)/2])`
-/

namespace A205549.P311708585367196637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A205549.P311708585367196637

namespace A205549

/-- `A059674(lt[n, A028326(n)/2])` -/
def P311708585367196637.Spec : Prop :=
  ∀ n, P311708585367196637.a n = A205549 (n + 1)

end A205549

/-! ## A205549.P9508847487435979996

`A059674(lt[n, A028326(n)-n])`
-/

namespace A205549.P9508847487435979996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205549.P9508847487435979996

namespace A205549

/-- `A059674(lt[n, A028326(n)-n])` -/
def P9508847487435979996.Spec : Prop :=
  ∀ n, P9508847487435979996.a n = A205549 (n + 1)

end A205549

/-! ## A205549.P2178227451216632729

`A059674(lt[A117573(n), A210219(n+1)])`
-/

namespace A205549.P2178227451216632729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A205549.P2178227451216632729

namespace A205549

/-- `A059674(lt[A117573(n), A210219(n+1)])` -/
def P2178227451216632729.Spec : Prop :=
  ∀ n, P2178227451216632729.a n = A205549 (n + 1)

end A205549

/-! ## A205549.P16717587086982716665

`A059674(lt[A004767(n), A159623(n)])`
-/

namespace A205549.P16717587086982716665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A205549.P16717587086982716665

namespace A205549

/-- `A059674(lt[A004767(n), A159623(n)])` -/
def P16717587086982716665.Spec : Prop :=
  ∀ n, P16717587086982716665.a n = A205549 (n + 1)

end A205549

/-! ## A205549.P4631011746389503864

`A059674(lt[A008574(n), A159623(n)])`
-/

namespace A205549.P4631011746389503864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A205549.P4631011746389503864

namespace A205549

/-- `A059674(lt[A008574(n), A159623(n)])` -/
def P4631011746389503864.Spec : Prop :=
  ∀ n, P4631011746389503864.a n = A205549 (n + 1)

end A205549

/-! ## A205549.P12342363668528310125

`A205548(lt[n+1, A135299(n)])`
-/

namespace A205549.P12342363668528310125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205549.P12342363668528310125

namespace A205549

/-- `A205548(lt[n+1, A135299(n)])` -/
def P12342363668528310125.Spec : Prop :=
  ∀ n, P12342363668528310125.a n = A205549 (n + 1)

end A205549

/-! ## A205549.P476791551209507269

`A205548(lt[1, A135299(n)-n])`
-/

namespace A205549.P476791551209507269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135299 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205549.P476791551209507269

namespace A205549

/-- `A205548(lt[1, A135299(n)-n])` -/
def P476791551209507269.Spec : Prop :=
  ∀ n, P476791551209507269.a n = A205549 (n + 1)

end A205549

/-!
# A205550: Symmetric matrix by antidiagonals: C(max(g(i),g(j)),min(g(i),g(j))), where g(k)=2k-1.

The programs for A205550, the canonical program `A205550.P12428340349728459363` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205550 has offset 1).

The definition of A205550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205550.P12428340349728459363

`A258993(A143182(n)+A057944(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A205550

/-- `A258993(A143182(n)+A057944(n))` -/
def P12428340349728459363.Spec : Prop :=
  ∀ n, P12428340349728459363.a n = A205550 (n + 1)

theorem P12428340349728459363.correct : P12428340349728459363.Spec := by
  intro n
  simp only [A205550, Nat.add_sub_cancel]

end A205550

/-! ## A205550.P10053092956878951450

`A205456(A185868(n+1))`
-/

namespace A205550.P10053092956878951450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205456 (A185868 (n + 1)).toNat

end

end A205550.P10053092956878951450

namespace A205550

/-- `A205456(A185868(n+1))` -/
def P10053092956878951450.Spec : Prop :=
  ∀ n, P10053092956878951450.a n = A205550 (n + 1)

end A205550

/-! ## A205550.P1151920030925790429

`A059674(eq[0, A051159(n)])`
-/

namespace A205550.P1151920030925790429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205550.P1151920030925790429

namespace A205550

/-- `A059674(eq[0, A051159(n)])` -/
def P1151920030925790429.Spec : Prop :=
  ∀ n, P1151920030925790429.a n = A205550 (n + 1)

end A205550

/-! ## A205550.P1291217194079472013

`A059674(A140978(n+1)+2*n)`
-/

namespace A205550.P1291217194079472013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (A140978 (n + 1) + (2 * n : ℤ)).toNat

end

end A205550.P1291217194079472013

namespace A205550

/-- `A059674(A140978(n+1)+2*n)` -/
def P1291217194079472013.Spec : Prop :=
  ∀ n, P1291217194079472013.a n = A205550 (n + 1)

end A205550

/-! ## A205550.P3276196286333455110

`A059674(A140978(n+1)+n+n)`
-/

namespace A205550.P3276196286333455110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (A140978 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A205550.P3276196286333455110

namespace A205550

/-- `A059674(A140978(n+1)+n+n)` -/
def P3276196286333455110.Spec : Prop :=
  ∀ n, P3276196286333455110.a n = A205550 (n + 1)

end A205550

/-! ## A205550.P14675663381810332467

`A059674(eq[1, A000034(A003989(n+1))])`
-/

namespace A205550.P14675663381810332467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A003989 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205550.P14675663381810332467

namespace A205550

/-- `A059674(eq[1, A000034(A003989(n+1))])` -/
def P14675663381810332467.Spec : Prop :=
  ∀ n, P14675663381810332467.a n = A205550 (n + 1)

end A205550

/-! ## A205550.P11637359782538790633

`A059674(eq[0, A155997(n)])`
-/

namespace A205550.P11637359782538790633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205550.P11637359782538790633

namespace A205550

/-- `A059674(eq[0, A155997(n)])` -/
def P11637359782538790633.Spec : Prop :=
  ∀ n, P11637359782538790633.a n = A205550 (n + 1)

end A205550

/-! ## A205550.P4037744207317914748

`A059674(eq[A028326(n), A155998(n)])`
-/

namespace A205550.P4037744207317914748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A205550.P4037744207317914748

namespace A205550

/-- `A059674(eq[A028326(n), A155998(n)])` -/
def P4037744207317914748.Spec : Prop :=
  ∀ n, P4037744207317914748.a n = A205550 (n + 1)

end A205550

/-! ## A205550.P6679191248878838209

`A059674(eq[0, A187596(n)])`
-/

namespace A205550.P6679191248878838209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205550.P6679191248878838209

namespace A205550

/-- `A059674(eq[0, A187596(n)])` -/
def P6679191248878838209.Spec : Prop :=
  ∀ n, P6679191248878838209.a n = A205550 (n + 1)

end A205550

/-! ## A205550.P5070089864588657572

`A059674(eq[0, A319367(n+1)])`
-/

namespace A205550.P5070089864588657572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205550.P5070089864588657572

namespace A205550

/-- `A059674(eq[0, A319367(n+1)])` -/
def P5070089864588657572.Spec : Prop :=
  ∀ n, P5070089864588657572.a n = A205550 (n + 1)

end A205550

/-!
# A205551: The least j such that n divides k^k-j^j, where k (as in A205546) is the least number for which there is such a j.

The programs for A205551, there is no canonical definition to state claims against.
-/

/-! ## A205551.P17615685874872869865

`A323086(A231818(n+2))`
-/

namespace A205551.P17615685874872869865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323086 (A231818 (n + 2)).toNat

end

end A205551.P17615685874872869865

/-! ## A205551.P7757965670442302466

`gcd(4, A147485(n+8)*A147485(n+10))`
-/

namespace A205551.P7757965670442302466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A147485 (n + 8) * A147485 (n + 10))

end

end A205551.P7757965670442302466

/-! ## A205551.P10210303663683304886

`A342017(A001037(n)*A010554(3*n+4))`
-/

namespace A205551.P10210303663683304886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342017 (A001037 n * A010554 (3 * n + 4)).toNat

end

end A205551.P10210303663683304886

/-! ## A205551.P10877477838905365597

`gcd(A033075(A222654(n+1)), A073103(n+1))`
-/

namespace A205551.P10877477838905365597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033075 (A222654 (n + 1)).toNat) (A073103 (n + 1))

end

end A205551.P10877477838905365597

/-! ## A205551.P12115843217511198463

`gcd(A000010(n+1), A007953(A371793(n+1)))`
-/

namespace A205551.P12115843217511198463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A007953 (A371793 (n + 1)).toNat)

end

end A205551.P12115843217511198463

/-!
# A205552: Square array: C(max(2i-2,j-1),min(2i-2,j-1)), i>=1, j>=1; by antidiagonals.

The programs for A205552, there is no canonical definition to state claims against.
-/

/-! ## A205552.P7806469592174296651

`A205553(A080036(A056943(n)))`
-/

namespace A205552.P7806469592174296651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205553 (A080036 (A056943 n).toNat).toNat

end

end A205552.P7806469592174296651

/-! ## A205552.P6576660729577423043

`A205553(A056943(n)+A002024(n+1))`
-/

namespace A205552.P6576660729577423043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205553 (A056943 n + A002024 (n + 1)).toNat

end

end A205552.P6576660729577423043

/-! ## A205552.P2890242007101438382

`A205553(gcd(A010816(n), A038722(n+1)))`
-/

namespace A205552.P2890242007101438382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205553 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A205552.P2890242007101438382

/-! ## A205552.P4002046115019274871

`A205553(A038722(n+1))`
-/

namespace A205552.P4002046115019274871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205553 (A038722 (n + 1)).toNat

end

end A205552.P4002046115019274871

/-! ## A205552.P13690896295958374514

`A205553(A061579(n)+1)`
-/

namespace A205552.P13690896295958374514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205553 (A061579 n + 1).toNat

end

end A205552.P13690896295958374514

/-! ## A205552.P6663957232236543034

`A205553(A093995(n+1)-n)`
-/

namespace A205552.P6663957232236543034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205553 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A205552.P6663957232236543034

/-! ## A205552.P5077931764799919182

`A205553(A002024(n+1)²-n)`
-/

namespace A205552.P5077931764799919182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205553 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A205552.P5077931764799919182

/-! ## A205552.P5741157887001883697

`A059674(A245300(n)+A114327(n))`
-/

namespace A205552.P5741157887001883697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (A245300 n + A114327 n).toNat

end

end A205552.P5741157887001883697

/-! ## A205552.P5816439473641996187

`A059674(A245300(n)+A002262(n))`
-/

namespace A205552.P5816439473641996187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (A245300 n + A002262 n).toNat

end

end A205552.P5816439473641996187

/-!
# A205553: Square array by antidiagonals: C(max(i-1,2j-2),min(i-1,2j-2)), i>=1, j>=1.

The programs for A205553, there is no canonical definition to state claims against.
-/

/-! ## A205553.P11082828115318921690

`A205552(A056943(n)+A002024(n+1))`
-/

namespace A205553.P11082828115318921690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205552 (A056943 n + A002024 (n + 1)).toNat

end

end A205553.P11082828115318921690

/-! ## A205553.P15286008927094908411

`A205552(gcd(A010816(n), A038722(n+1)))`
-/

namespace A205553.P15286008927094908411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205552 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A205553.P15286008927094908411

/-! ## A205553.P2067161822458965358

`A205552(A038722(n+1))`
-/

namespace A205553.P2067161822458965358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205552 (A038722 (n + 1)).toNat

end

end A205553.P2067161822458965358

/-! ## A205553.P14501870423773515169

`A205552(A061579(n)+1)`
-/

namespace A205553.P14501870423773515169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205552 (A061579 n + 1).toNat

end

end A205553.P14501870423773515169

/-! ## A205553.P15733637210547907921

`A205552(A093995(n+1)-n)`
-/

namespace A205553.P15733637210547907921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205552 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A205553.P15733637210547907921

/-! ## A205553.P5234869045236318291

`A205552(A002024(n+1)²-n)`
-/

namespace A205553.P5234869045236318291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205552 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A205553.P5234869045236318291

/-! ## A205553.P16513123639461614562

`A205552(A185869(n+1)-A016777(n))`
-/

namespace A205553.P16513123639461614562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205552 (A185869 (n + 1) - A016777 n).toNat

end

end A205553.P16513123639461614562

/-!
# A205555: Least positive integer j such that n divides k^(k-1)-j^(j-1), where k (as in A205554) is the least positive integer for which there is such a j.

The programs for A205555, there is no canonical definition to state claims against.
-/

/-! ## A205555.P11110080505838522385

`gcd(A005718(n), A055881(A001405(n)))`
-/

namespace A205555.P11110080505838522385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005718 n) (A055881 (A001405 n).toNat)

end

end A205555.P11110080505838522385

/-! ## A205555.P12876605010748266987

`gcd(A001057(A063013(n)), A095814(n))`
-/

namespace A205555.P12876605010748266987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001057 (A063013 n).toNat) (A095814 n)

end

end A205555.P12876605010748266987

/-! ## A205555.P16590797056121444435

`gcd(A000203(n+1), A096765(A022101(n)))`
-/

namespace A205555.P16590797056121444435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A096765 (A022101 n).toNat)

end

end A205555.P16590797056121444435

/-! ## A205555.P2439473282949907081

`or(A079944(n), A080237(A032305(n+1)))`
-/

namespace A205555.P2439473282949907081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079944 n) (A080237 (A032305 (n + 1)).toNat)

end

end A205555.P2439473282949907081

/-! ## A205555.P8799235263550280834

`gcd(A002384(A206399(n)), A242763(2*n+5))`
-/

namespace A205555.P8799235263550280834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002384 (A206399 n).toNat) (A242763 (2 * n + 5))

end

end A205555.P8799235263550280834

/-!
# A205556: Positions of multiples of 2 in A204922 (differences of Fibonacci numbers).

The programs for A205556, the canonical program `A205556.P5027991820685192587` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205556 has offset 1).

The definition of A205556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5539 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205556.P10263522444031168511

`eq[0, A204922(n+1)%2]+1`
-/

namespace A205556.P10263522444031168511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A205556.P10263522444031168511

namespace A205556

/-- `eq[0, A204922(n+1)%2]+1` -/
def P10263522444031168511.Spec : Prop :=
  ∀ n, (P10263522444031168511.a n : ℤ) = A205556 (n + 1)

end A205556

/-! ## A205556.P14038597401552859935

`eq[2, gcd(2, A205371(n+1))]+1`
-/

namespace A205556.P14038597401552859935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A205371 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205556.P14038597401552859935

namespace A205556

/-- `eq[2, gcd(2, A205371(n+1))]+1` -/
def P14038597401552859935.Spec : Prop :=
  ∀ n, (P14038597401552859935.a n : ℤ) = A205556 (n + 1)

end A205556

/-! ## A205556.P5027991820685192587

`lt[1, gcd(3, A049777(n+1))]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A205556

/-- `lt[1, gcd(3, A049777(n+1))]+1` -/
def P5027991820685192587.Spec : Prop :=
  ∀ n, (P5027991820685192587.a n : ℤ) = A205556 (n + 1)

theorem P5027991820685192587.correct : P5027991820685192587.Spec := by
  intro n
  simp only [A205556, Nat.add_sub_cancel]

end A205556

/-! ## A205556.P8641951842137936061

`lt[1, gcd(2, A204922(A028310(n)))]`
-/

namespace A205556.P8641951842137936061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A204922 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A205556.P8641951842137936061

namespace A205556

/-- `lt[1, gcd(2, A204922(A028310(n)))]` -/
def P8641951842137936061.Spec : Prop :=
  ∀ n, (P8641951842137936061.a n : ℤ) = A205556 (n + 1)

end A205556

/-! ## A205556.P14325961454206150816

`lt[A020639(A205376(n+1)+3), 4]+1`
-/

namespace A205556.P14325961454206150816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A205376 (n + 1) + 3).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A205556.P14325961454206150816

namespace A205556

/-- `lt[A020639(A205376(n+1)+3), 4]+1` -/
def P14325961454206150816.Spec : Prop :=
  ∀ n, (P14325961454206150816.a n : ℤ) = A205556 (n + 1)

end A205556

/-! ## A205556.P3800236517757517423

`eq[0, A204922(A000007(n)+n)%2]`
-/

namespace A205556.P3800236517757517423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (A000007 n + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205556.P3800236517757517423

namespace A205556

/-- `eq[0, A204922(A000007(n)+n)%2]` -/
def P3800236517757517423.Spec : Prop :=
  ∀ n, (P3800236517757517423.a n : ℤ) = A205556 (n + 1)

end A205556

/-! ## A205556.P10125191452644853513

`eq[2, A020639(A204922(n+1))]+1`
-/

namespace A205556.P10125191452644853513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A204922 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A205556.P10125191452644853513

namespace A205556

/-- `eq[2, A020639(A204922(n+1))]+1` -/
def P10125191452644853513.Spec : Prop :=
  ∀ n, (P10125191452644853513.a n : ℤ) = A205556 (n + 1)

end A205556

/-! ## A205556.P1831275121333819858

`eq[A020639(A059389(n+1)), A036453(n+1)]`
-/

namespace A205556.P1831275121333819858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A059389 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A205556.P1831275121333819858

namespace A205556

/-- `eq[A020639(A059389(n+1)), A036453(n+1)]` -/
def P1831275121333819858.Spec : Prop :=
  ∀ n, (P1831275121333819858.a n : ℤ) = A205556 (n + 1)

end A205556

/-! ## A205556.P16494062729591915682

`eq[2, A107393(A059389(n+1))]`
-/

namespace A205556.P16494062729591915682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A059389 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205556.P16494062729591915682

namespace A205556

/-- `eq[2, A107393(A059389(n+1))]` -/
def P16494062729591915682.Spec : Prop :=
  ∀ n, (P16494062729591915682.a n : ℤ) = A205556 (n + 1)

end A205556

/-! ## A205556.P4022221123075208580

`eq[A000007(n), A318657(A059389(n+1))]`
-/

namespace A205556.P4022221123075208580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A059389 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A205556.P4022221123075208580

namespace A205556

/-- `eq[A000007(n), A318657(A059389(n+1))]` -/
def P4022221123075208580.Spec : Prop :=
  ∀ n, (P4022221123075208580.a n : ℤ) = A205556 (n + 1)

end A205556

/-! ## A205556.P7321330456015773606

`eq[A000038(n), A318657(A059389(n+1))]`
-/

namespace A205556.P7321330456015773606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A059389 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A205556.P7321330456015773606

namespace A205556

/-- `eq[A000038(n), A318657(A059389(n+1))]` -/
def P7321330456015773606.Spec : Prop :=
  ∀ n, (P7321330456015773606.a n : ℤ) = A205556 (n + 1)

end A205556

/-! ## A205556.P6772332469847205503

`eq[2, A020639(A213765(n+1))]+1`
-/

namespace A205556.P6772332469847205503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A213765 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A205556.P6772332469847205503

namespace A205556

/-- `eq[2, A020639(A213765(n+1))]+1` -/
def P6772332469847205503.Spec : Prop :=
  ∀ n, (P6772332469847205503.a n : ℤ) = A205556 (n + 1)

end A205556

/-!
# A205557: prime(k)-prime(j), where the pairs (k,j) are given by A205560 and A205547.

The programs for A205557, there is no canonical definition to state claims against.
-/

/-! ## A205557.P2791133796094227170

`3*A205675(n+1)`
-/

namespace A205557.P2791133796094227170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A205675 (n + 1)

end

end A205557.P2791133796094227170

/-! ## A205557.P1957581986806023671

`A008486(A205675(n+1))`
-/

namespace A205557.P1957581986806023671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A205675 (n + 1)).toNat

end

end A205557.P1957581986806023671

/-! ## A205557.P16781761930820379373

`A205673(n+1)-A205674(n+1)`
-/

namespace A205557.P16781761930820379373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205673 (n + 1) - A205674 (n + 1)

end

end A205557.P16781761930820379373

/-! ## A205557.P17386582130444316232

`A205673(n+1)-A000040(A205547(n+1))`
-/

namespace A205557.P17386582130444316232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205673 (n + 1) - A000040 (A205547 (n + 1)).toNat

end

end A205557.P17386582130444316232

/-! ## A205557.P12436640988331168396

`A000040(A205560(n+1))-A205674(n+1)`
-/

namespace A205557.P12436640988331168396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205560 (n + 1)).toNat - A205674 (n + 1)

end

end A205557.P12436640988331168396

/-! ## A205557.P16181368714196879544

`A204890(A205559(n+1))`
-/

namespace A205557.P16181368714196879544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A205559 (n + 1)).toNat

end

end A205557.P16181368714196879544

/-! ## A205557.P17663943282099115701

`filter[A204890(n+1), A079978(#)]`
-/

namespace A205557.P17663943282099115701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A205557.P17663943282099115701

/-! ## A205557.P18340611683444096092

`filter[A204890(n+2), A173857(#)]`
-/

namespace A205557.P18340611683444096092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A205557.P18340611683444096092

/-! ## A205557.P2221998489686770627

`filter[A204890(n+2), A329680(#)]`
-/

namespace A205557.P2221998489686770627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A205557.P2221998489686770627

/-!
# A205558: (A204898)/2 = (prime(k)-prime(j))/2; A086802 without its zeros.

The programs for A205558, the canonical program `A205558.P3325342254299425434` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205558 has offset 1).

The definition of A205558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205558.P15161732780991888740

`A204898(n+1)/2`
-/

namespace A205558.P15161732780991888740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204898 (n + 1) : ℚ) / 2

end

end A205558.P15161732780991888740

namespace A205558

/-- `A204898(n+1)/2` -/
def P15161732780991888740.Spec : Prop :=
  ∀ n, P15161732780991888740.a n = (A205558 (n + 1) : ℚ)

end A205558

/-! ## A205558.P1805468455343219557

`A001281(A204898(n+1))`
-/

namespace A205558.P1805468455343219557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A204898 (n + 1)).toNat

end

end A205558.P1805468455343219557

namespace A205558

/-- `A001281(A204898(n+1))` -/
def P1805468455343219557.Spec : Prop :=
  ∀ n, P1805468455343219557.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P6390875567526825319

`A004524(A204898(n+1)+1)`
-/

namespace A205558.P6390875567526825319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A204898 (n + 1) + 1).toNat

end

end A205558.P6390875567526825319

namespace A205558

/-- `A004524(A204898(n+1)+1)` -/
def P6390875567526825319.Spec : Prop :=
  ∀ n, P6390875567526825319.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P7999764119301540524

`A004526(A204898(n+1)+1)`
-/

namespace A205558.P7999764119301540524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A204898 (n + 1) + 1).toNat

end

end A205558.P7999764119301540524

namespace A205558

/-- `A004526(A204898(n+1)+1)` -/
def P7999764119301540524.Spec : Prop :=
  ∀ n, P7999764119301540524.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P17447584937166402738

`A084964(A204898(n+1)+1)`
-/

namespace A205558.P17447584937166402738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A204898 (n + 1) + 1).toNat

end

end A205558.P17447584937166402738

namespace A205558

/-- `A084964(A204898(n+1)+1)` -/
def P17447584937166402738.Spec : Prop :=
  ∀ n, P17447584937166402738.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P8759257829083868902

`A123108(A204898(n+1)+1)`
-/

namespace A205558.P8759257829083868902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A204898 (n + 1) + 1).toNat

end

end A205558.P8759257829083868902

namespace A205558

/-- `A123108(A204898(n+1)+1)` -/
def P8759257829083868902.Spec : Prop :=
  ∀ n, P8759257829083868902.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P12527748187773509515

`A000463(A204898(n+1)-1)`
-/

namespace A205558.P12527748187773509515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A204898 (n + 1) - 1).toNat

end

end A205558.P12527748187773509515

namespace A205558

/-- `A000463(A204898(n+1)-1)` -/
def P12527748187773509515.Spec : Prop :=
  ∀ n, P12527748187773509515.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P2906558487331666902

`A001057(A204898(n+1)-1)`
-/

namespace A205558.P2906558487331666902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A204898 (n + 1) - 1).toNat

end

end A205558.P2906558487331666902

namespace A205558

/-- `A001057(A204898(n+1)-1)` -/
def P2906558487331666902.Spec : Prop :=
  ∀ n, P2906558487331666902.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P11297147377523990547

`A008619(A204898(n+1)-1)`
-/

namespace A205558.P11297147377523990547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A204898 (n + 1) - 1).toNat

end

end A205558.P11297147377523990547

namespace A205558

/-- `A008619(A204898(n+1)-1)` -/
def P11297147377523990547.Spec : Prop :=
  ∀ n, P11297147377523990547.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P15523941690820281735

`A065033(A204898(n+1)-1)`
-/

namespace A205558.P15523941690820281735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A204898 (n + 1) - 1).toNat

end

end A205558.P15523941690820281735

namespace A205558

/-- `A065033(A204898(n+1)-1)` -/
def P15523941690820281735.Spec : Prop :=
  ∀ n, P15523941690820281735.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P7027920741228186703

`A110654(A204898(n+1)-1)`
-/

namespace A205558.P7027920741228186703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A204898 (n + 1) - 1).toNat

end

end A205558.P7027920741228186703

namespace A205558

/-- `A110654(A204898(n+1)-1)` -/
def P7027920741228186703.Spec : Prop :=
  ∀ n, P7027920741228186703.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P2311951738418122581

`A052938(A204898(n+1)-2)`
-/

namespace A205558.P2311951738418122581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A204898 (n + 1) - 2).toNat

end

end A205558.P2311951738418122581

namespace A205558

/-- `A052938(A204898(n+1)-2)` -/
def P2311951738418122581.Spec : Prop :=
  ∀ n, P2311951738418122581.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P11780964128395925583

`A002265(2*A204898(n+1))`
-/

namespace A205558.P11780964128395925583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A204898 (n + 1)).toNat

end

end A205558.P11780964128395925583

namespace A205558

/-- `A002265(2*A204898(n+1))` -/
def P11780964128395925583.Spec : Prop :=
  ∀ n, P11780964128395925583.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P5004491447361267997

`A008615(3*A204898(n+1))`
-/

namespace A205558.P5004491447361267997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A204898 (n + 1)).toNat

end

end A205558.P5004491447361267997

namespace A205558

/-- `A008615(3*A204898(n+1))` -/
def P5004491447361267997.Spec : Prop :=
  ∀ n, P5004491447361267997.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P9883500660530981826

`A038572(lcm(2, A204898(n+1)))`
-/

namespace A205558.P9883500660530981826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lcm 2 (A204898 (n + 1)))

end

end A205558.P9883500660530981826

namespace A205558

/-- `A038572(lcm(2, A204898(n+1)))` -/
def P9883500660530981826.Spec : Prop :=
  ∀ n, P9883500660530981826.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P5219160603564980793

`A014682(A204898(n+1)+2)-1`
-/

namespace A205558.P5219160603564980793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A204898 (n + 1) + 2).toNat - 1

end

end A205558.P5219160603564980793

namespace A205558

/-- `A014682(A204898(n+1)+2)-1` -/
def P5219160603564980793.Spec : Prop :=
  ∀ n, P5219160603564980793.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P11520202777574482919

`A026741(A204898(n+1)+2)-1`
-/

namespace A205558.P11520202777574482919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A204898 (n + 1) + 2).toNat - 1

end

end A205558.P11520202777574482919

namespace A205558

/-- `A026741(A204898(n+1)+2)-1` -/
def P11520202777574482919.Spec : Prop :=
  ∀ n, P11520202777574482919.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P16575528368350977560

`A038572(A204898(n+1)+2)-1`
-/

namespace A205558.P16575528368350977560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A204898 (n + 1) + 2).toNat - 1

end

end A205558.P16575528368350977560

namespace A205558

/-- `A038572(A204898(n+1)+2)-1` -/
def P16575528368350977560.Spec : Prop :=
  ∀ n, P16575528368350977560.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P7005194724105482631

`A078898(A204898(n+1)+2)-1`
-/

namespace A205558.P7005194724105482631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A204898 (n + 1) + 2).toNat - 1

end

end A205558.P7005194724105482631

namespace A205558

/-- `A078898(A204898(n+1)+2)-1` -/
def P7005194724105482631.Spec : Prop :=
  ∀ n, P7005194724105482631.a n = A205558 (n + 1)

end A205558

/-! ## A205558.P3325342254299425434

`A089253(A003057(n+2))-A089253(A002260(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A205558

/-- `A089253(A003057(n+2))-A089253(A002260(n+1))` -/
def P3325342254299425434.Spec : Prop :=
  ∀ n, P3325342254299425434.a n = A205558 (n + 1)

theorem P3325342254299425434.correct : P3325342254299425434.Spec := by
  intro n
  simp only [A205558, Nat.add_sub_cancel]

end A205558

/-!
# A205559: Positions of multiples of 3 in A204890 (differences of primes).

The programs for A205559, the canonical program `A205559.P2583783127805785041` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205559 has offset 1).

The definition of A205559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4901 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205559.P2583783127805785041

`eq[3, gcd(3, A204890(n+1))]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A205559

/-- `eq[3, gcd(3, A204890(n+1))]+1` -/
def P2583783127805785041.Spec : Prop :=
  ∀ n, (P2583783127805785041.a n : ℤ) = A205559 (n + 1)

theorem P2583783127805785041.correct : P2583783127805785041.Spec := by
  intro n
  simp only [A205559, Nat.add_sub_cancel]

end A205559

/-! ## A205559.P4194412604698489903

`eq[1, (A204890(A000007(n)+n)+1)%3]`
-/

namespace A205559.P4194412604698489903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204890 (A000007 n + (n : ℤ)).toNat + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205559.P4194412604698489903

namespace A205559

/-- `eq[1, (A204890(A000007(n)+n)+1)%3]` -/
def P4194412604698489903.Spec : Prop :=
  ∀ n, (P4194412604698489903.a n : ℤ) = A205559 (n + 1)

end A205559

/-! ## A205559.P14403708099154566568

`eq[1, A007089(A339116(n+2))%2]+1`
-/

namespace A205559.P14403708099154566568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 (A339116 (n + 2)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A205559.P14403708099154566568

namespace A205559

/-- `eq[1, A007089(A339116(n+2))%2]+1` -/
def P14403708099154566568.Spec : Prop :=
  ∀ n, (P14403708099154566568.a n : ℤ) = A205559 (n + 1)

end A205559

/-! ## A205559.P18073534691121182024

`eq[1, A019565(A018900(n+1))%3]+1`
-/

namespace A205559.P18073534691121182024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019565 (A018900 (n + 1)).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A205559.P18073534691121182024

namespace A205559

/-- `eq[1, A019565(A018900(n+1))%3]+1` -/
def P18073534691121182024.Spec : Prop :=
  ∀ n, (P18073534691121182024.a n : ℤ) = A205559 (n + 1)

end A205559

/-!
# A205560: Numbers k for which 3 divides prime(k)-prime(j) for some j

The programs for A205560, there is no canonical definition to state claims against.
-/

/-! ## A205560.P5682924558421569397

`A000720(A205673(n+1))`
-/

namespace A205560.P5682924558421569397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205673 (n + 1)).toNat

end

end A205560.P5682924558421569397

/-! ## A205560.P942609695298546640

`A204892(A205673(n+1)-2)`
-/

namespace A205560.P942609695298546640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A205673 (n + 1) - 2).toNat

end

end A205560.P942609695298546640

/-! ## A205560.P9347590385082958198

`A056239(or(1, A205673(n+1)))`
-/

namespace A205560.P9347590385082958198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A205673 (n + 1))).toNat

end

end A205560.P9347590385082958198

/-! ## A205560.P857494407681594895

`A000720(A205674(n+1)+A205557(n+1))`
-/

namespace A205560.P857494407681594895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205674 (n + 1) + A205557 (n + 1)).toNat

end

end A205560.P857494407681594895

/-! ## A205560.P7191523788573051945

`A003963(A205674(n+1)+A205557(n+1))`
-/

namespace A205560.P7191523788573051945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A205674 (n + 1) + A205557 (n + 1)).toNat

end

end A205560.P7191523788573051945

/-! ## A205560.P5942655611329966573

`A026233(A205674(n+1)+A205557(n+1))`
-/

namespace A205560.P5942655611329966573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A205674 (n + 1) + A205557 (n + 1)).toNat

end

end A205560.P5942655611329966573

/-! ## A205560.P11969131132332080687

`A026238(A205674(n+1)+A205557(n+1))`
-/

namespace A205560.P11969131132332080687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A205674 (n + 1) + A205557 (n + 1)).toNat

end

end A205560.P11969131132332080687

/-! ## A205560.P14916723892633900209

`A049084(A205674(n+1)+A205557(n+1))`
-/

namespace A205560.P14916723892633900209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A205674 (n + 1) + A205557 (n + 1)).toNat

end

end A205560.P14916723892633900209

/-! ## A205560.P9115170387268510653

`A055396(A205674(n+1)+A205557(n+1))`
-/

namespace A205560.P9115170387268510653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A205674 (n + 1) + A205557 (n + 1)).toNat

end

end A205560.P9115170387268510653

/-! ## A205560.P10159777123698661466

`A056239(A205674(n+1)+A205557(n+1))`
-/

namespace A205560.P10159777123698661466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A205674 (n + 1) + A205557 (n + 1)).toNat

end

end A205560.P10159777123698661466

/-! ## A205560.P17550672158326950618

`A061395(A205674(n+1)+A205557(n+1))`
-/

namespace A205560.P17550672158326950618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A205674 (n + 1) + A205557 (n + 1)).toNat

end

end A205560.P17550672158326950618

/-! ## A205560.P8351354227538671996

`A204892(A205557(n+1)+A205674(n+1)-2)`
-/

namespace A205560.P8351354227538671996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A205557 (n + 1) + (A205674 (n + 1) - 2)).toNat

end

end A205560.P8351354227538671996

/-! ## A205560.P790208025913762761

`A080036(A205559(n+1))-A205559(n+1)`
-/

namespace A205560.P790208025913762761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (A205559 (n + 1)).toNat - A205559 (n + 1)

end

end A205560.P790208025913762761

/-!
# A205561: Least positive integer k such that n divides (2k)! - (2j)! for some j in [1,k-1].

The programs for A205561, there is no canonical definition to state claims against.
-/

/-! ## A205561.P12481835087443946068

`A205562(n+1)+A000120(A204981(n+1))`
-/

namespace A205561.P12481835087443946068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205562 (n + 1) + A000120 (A204981 (n + 1)).toNat

end

end A205561.P12481835087443946068

/-! ## A205561.P18060098549233765214

`A205573(A205549(n+4))+A205562(n+1)`
-/

namespace A205561.P18060098549233765214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205573 (A205549 (n + 4)).toNat + A205562 (n + 1)

end

end A205561.P18060098549233765214

/-! ## A205561.P6273503679937867368

`A205573(A205548(2*(n+1)))+A205562(n+1)`
-/

namespace A205561.P6273503679937867368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205573 (A205548 (2 * (n + 1))).toNat + A205562 (n + 1)

end

end A205561.P6273503679937867368

/-! ## A205561.P18380064950363344070

`A319713(A205522(2*(n+1)))+A205562(n+1)`
-/

namespace A205561.P18380064950363344070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319713 (A205522 (2 * (n + 1))).toNat + A205562 (n + 1)

end

end A205561.P18380064950363344070

/-! ## A205561.P5592692682393898923

`A205562(n+1)+A052409(A212975(3*n+4))`
-/

namespace A205561.P5592692682393898923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205562 (n + 1) + A052409 (A212975 (3 * n + 4)).toNat

end

end A205561.P5592692682393898923

/-!
# A205562: Least positive integer j such that n divides (2k)!-(2j)!, where k, as in A205561, is the least number for which there is such a j.

The programs for A205562, there is no canonical definition to state claims against.
-/

/-! ## A205562.P7639615216941243190

`(A205561(n+1)-1)%A104867(n+1)`
-/

namespace A205562.P7639615216941243190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205561 (n + 1) - 1) (A104867 (n + 1))

end

end A205562.P7639615216941243190

/-! ## A205562.P6557256686235486377

`A205561(n+1)-A000265(A011782(n))`
-/

namespace A205562.P6557256686235486377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205561 (n + 1) - A000265 (A011782 n).toNat

end

end A205562.P6557256686235486377

/-! ## A205562.P18354156984688523796

`A205561(n+1)-A003415(A053999(n))`
-/

namespace A205562.P18354156984688523796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205561 (n + 1) - A003415 (A053999 n).toNat

end

end A205562.P18354156984688523796

/-! ## A205562.P98181238033725805

`A205561(n+1)-A139434(A354797(n))`
-/

namespace A205562.P98181238033725805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205561 (n + 1) - A139434 (A354797 n).toNat

end

end A205562.P98181238033725805

/-! ## A205562.P6913498967041802643

`A205561(n+1)-A052409(A109068(n+1))`
-/

namespace A205562.P6913498967041802643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205561 (n + 1) - A052409 (A109068 (n + 1)).toNat

end

end A205562.P6913498967041802643

/-!
# A205563: Least positive integer k such that n divides 2k!-2j! for some j in [1,k-1].

The programs for A205563, there is no canonical definition to state claims against.
-/

/-! ## A205563.P7595117653192540654

`A204932(gcd(n+1, ∑[n]))`
-/

namespace A205563.P7595117653192540654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204932 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A205563.P7595117653192540654

/-! ## A205563.P13899673430190395200

`A204932(A026741(n+1))`
-/

namespace A205563.P13899673430190395200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204932 (A026741 (n + 1)).toNat

end

end A205563.P13899673430190395200

/-! ## A205563.P4673994725901143464

`A204932(A109043(n+1)/2)`
-/

namespace A205563.P4673994725901143464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204932 (SequenceMachineLib.roundAway ((A109043 (n + 1) : ℚ) / 2)).toNat

end

end A205563.P4673994725901143464

/-! ## A205563.P11293148360482477683

`A204932((n+1)/A000034(n))`
-/

namespace A205563.P11293148360482477683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204932 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A205563.P11293148360482477683

/-! ## A205563.P17414157941133632815

`A204932(Δ[A001318(n)])`
-/

namespace A205563.P17414157941133632815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204932 (f1 (n + 1) - f1 n).toNat

end

end A205563.P17414157941133632815

/-! ## A205563.P7722658702768561240

`A204932(Δ[A319390(n)])`
-/

namespace A205563.P7722658702768561240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204932 (f1 (n + 1) - f1 n).toNat

end

end A205563.P7722658702768561240

/-! ## A205563.P7843239997251425994

`A204932(A001318(n+1)-A001318(n))`
-/

namespace A205563.P7843239997251425994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204932 (A001318 (n + 1) - A001318 n).toNat

end

end A205563.P7843239997251425994

/-! ## A205563.P11939822736307396292

`A204932(A319390(n+1)-A319390(n))`
-/

namespace A205563.P11939822736307396292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204932 (A319390 (n + 1) - A319390 n).toNat

end

end A205563.P11939822736307396292

/-!
# A205564: Least positive integer j such that n divides 2k!-2j!, where k, as in A205563, is the least number for which there is such a j.

The programs for A205564, there is no canonical definition to state claims against.
-/

/-! ## A205564.P11206068830900953585

`A204933(gcd(n+1, ∑[n]))`
-/

namespace A205564.P11206068830900953585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204933 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A205564.P11206068830900953585

/-! ## A205564.P12826640337772649617

`A204933(A026741(n+1))`
-/

namespace A205564.P12826640337772649617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204933 (A026741 (n + 1)).toNat

end

end A205564.P12826640337772649617

/-! ## A205564.P502587437818011022

`A204933(A029579(xor(1, n)))`
-/

namespace A205564.P502587437818011022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204933 (A029579 (Nat.xor 1 n)).toNat

end

end A205564.P502587437818011022

/-! ## A205564.P10073626514925513829

`A204933(∑[1-A001057(n)])`
-/

namespace A205564.P10073626514925513829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204933 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A205564.P10073626514925513829

/-! ## A205564.P17802228185429943876

`A204933(A109043(n+1)/2)`
-/

namespace A205564.P17802228185429943876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204933 (SequenceMachineLib.roundAway ((A109043 (n + 1) : ℚ) / 2)).toNat

end

end A205564.P17802228185429943876

/-! ## A205564.P1072912707346615906

`A204933((n+1)/A000034(n))`
-/

namespace A205564.P1072912707346615906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204933 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A205564.P1072912707346615906

/-! ## A205564.P3119686971719767987

`A204933(∑[A001057(A004442(n))])`
-/

namespace A205564.P3119686971719767987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204933 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A205564.P3119686971719767987

/-! ## A205564.P17166756063777577278

`A204933(Δ[A001318(n)])`
-/

namespace A205564.P17166756063777577278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204933 (f1 (n + 1) - f1 n).toNat

end

end A205564.P17166756063777577278

/-! ## A205564.P8737118645427262594

`A204933(A001318(n+1)-A001318(n))`
-/

namespace A205564.P8737118645427262594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204933 (A001318 (n + 1) - A001318 n).toNat

end

end A205564.P8737118645427262594

/-!
# A205565: Number of ways of writing n = u + v with u <= v, and u,v having in ternary representation no 3.

The programs for A205565, the canonical program `A205565.P12968844545537805874` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205565 has offset 0).

The definition of A205565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205565.P12968844545537805874

`ceil(A120880(n)/2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A205565

/-- `ceil(A120880(n)/2)` -/
def P12968844545537805874.Spec : Prop :=
  ∀ n, P12968844545537805874.a n = A205565 n

theorem P12968844545537805874.correct : P12968844545537805874.Spec := by
  intro n
  simp only [A205565]

end A205565

/-! ## A205565.P6960150033478121000

`ceil(2^(A062756(n)-1))`
-/

namespace A205565.P6960150033478121000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A062756 n - 1 : ℤ)⌉

end

end A205565.P6960150033478121000

namespace A205565

/-- `ceil(2^(A062756(n)-1))` -/
def P6960150033478121000.Spec : Prop :=
  ∀ n, P6960150033478121000.a n = A205565 n

end A205565

/-! ## A205565.P4062029943495975424

`A000010(A120880(n))`
-/

namespace A205565.P4062029943495975424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A120880 n).toNat

end

end A205565.P4062029943495975424

namespace A205565

/-- `A000010(A120880(n))` -/
def P4062029943495975424.Spec : Prop :=
  ∀ n, P4062029943495975424.a n = A205565 n

end A205565

/-! ## A205565.P12687328129114842906

`A117535(A038574(n))`
-/

namespace A205565.P12687328129114842906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 (A038574 n).toNat

end

end A205565.P12687328129114842906

namespace A205565

/-- `A117535(A038574(n))` -/
def P12687328129114842906.Spec : Prop :=
  ∀ n, P12687328129114842906.a n = A205565 n

end A205565

/-! ## A205565.P14689781243155556096

`A160467(A006047(n))`
-/

namespace A205565.P14689781243155556096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (A006047 n).toNat

end

end A205565.P14689781243155556096

namespace A205565

/-- `A160467(A006047(n))` -/
def P14689781243155556096.Spec : Prop :=
  ∀ n, P14689781243155556096.a n = A205565 n

end A205565

/-! ## A205565.P7605034864216748814

`A004526(A120880(n)+1)`
-/

namespace A205565.P7605034864216748814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A120880 n + 1).toNat

end

end A205565.P7605034864216748814

namespace A205565

/-- `A004526(A120880(n)+1)` -/
def P7605034864216748814.Spec : Prop :=
  ∀ n, P7605034864216748814.a n = A205565 n

end A205565

/-! ## A205565.P10687531450505026840

`A152271(A120880(n)-1)`
-/

namespace A205565.P10687531450505026840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A120880 n - 1).toNat

end

end A205565.P10687531450505026840

namespace A205565

/-- `A152271(A120880(n)-1)` -/
def P10687531450505026840.Spec : Prop :=
  ∀ n, P10687531450505026840.a n = A205565 n

end A205565

/-! ## A205565.P12754791550537289408

`A004526(lcm(2, A120880(n)))`
-/

namespace A205565.P12754791550537289408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A120880 n))

end

end A205565.P12754791550537289408

namespace A205565

/-- `A004526(lcm(2, A120880(n)))` -/
def P12754791550537289408.Spec : Prop :=
  ∀ n, P12754791550537289408.a n = A205565 n

end A205565

/-! ## A205565.P4237764778730823479

`A120880(n)/A105220(n)`
-/

namespace A205565.P4237764778730823479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120880 n : ℚ) / (A105220 n : ℚ)

end

end A205565.P4237764778730823479

namespace A205565

/-- `A120880(n)/A105220(n)` -/
def P4237764778730823479.Spec : Prop :=
  ∀ n, P4237764778730823479.a n = (A205565 n : ℚ)

end A205565

/-! ## A205565.P6876737907918479131

`A110654(A120880(n)+2)-1`
-/

namespace A205565.P6876737907918479131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A120880 n + 2).toNat - 1

end

end A205565.P6876737907918479131

namespace A205565

/-- `A110654(A120880(n)+2)-1` -/
def P6876737907918479131.Spec : Prop :=
  ∀ n, P6876737907918479131.a n = A205565 n

end A205565

/-! ## A205565.P1948409226096129048

`A206424(A038574(n)+1)/2`
-/

namespace A205565.P1948409226096129048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206424 (A038574 n + 1).toNat : ℚ) / 2

end

end A205565.P1948409226096129048

namespace A205565

/-- `A206424(A038574(n)+1)/2` -/
def P1948409226096129048.Spec : Prop :=
  ∀ n, P1948409226096129048.a n = (A205565 n : ℚ)

end A205565

/-! ## A205565.P4136643039925236852

`A026741(3*A120880(n))/3`
-/

namespace A205565.P4136643039925236852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (3 * A120880 n).toNat : ℚ) / 3

end

end A205565.P4136643039925236852

namespace A205565

/-- `A026741(3*A120880(n))/3` -/
def P4136643039925236852.Spec : Prop :=
  ∀ n, P4136643039925236852.a n = (A205565 n : ℚ)

end A205565

/-! ## A205565.P17043975023780513784

`A120880(n)/(A316829(n)+1)`
-/

namespace A205565.P17043975023780513784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120880 n : ℚ) / (A316829 n + 1 : ℚ)

end

end A205565.P17043975023780513784

namespace A205565

/-- `A120880(n)/(A316829(n)+1)` -/
def P17043975023780513784.Spec : Prop :=
  ∀ n, P17043975023780513784.a n = (A205565 n : ℚ)

end A205565

/-! ## A205565.P8093265036545927533

`A120880(A088917(n)+n)/2`
-/

namespace A205565.P8093265036545927533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120880 (A088917 n + (n : ℤ)).toNat : ℚ) / 2

end

end A205565.P8093265036545927533

namespace A205565

/-- `A120880(A088917(n)+n)/2` -/
def P8093265036545927533.Spec : Prop :=
  ∀ n, P8093265036545927533.a n = (A205565 n : ℚ)

end A205565

/-! ## A205565.P4179248053909496918

`A120880(n)/(2-A088917(n))`
-/

namespace A205565.P4179248053909496918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120880 n : ℚ) / (2 - A088917 n : ℚ)

end

end A205565.P4179248053909496918

namespace A205565

/-- `A120880(n)/(2-A088917(n))` -/
def P4179248053909496918.Spec : Prop :=
  ∀ n, P4179248053909496918.a n = (A205565 n : ℚ)

end A205565

/-! ## A205565.P5838740731958125493

`(A120880(n)+char[A167878(n)])/2`
-/

namespace A205565.P5838740731958125493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120880 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) / 2

end

end A205565.P5838740731958125493

namespace A205565

/-- `(A120880(n)+char[A167878(n)])/2` -/
def P5838740731958125493.Spec : Prop :=
  ∀ n, P5838740731958125493.a n = (A205565 n : ℚ)

end A205565

/-! ## A205565.P7009240958609508196

`A120880(n)/(2-floor(1/A261787(n)))`
-/

namespace A205565.P7009240958609508196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120880 n : ℚ) / (2 - ⌊1 / (A261787 n : ℚ)⌋ : ℚ)

end

end A205565.P7009240958609508196

namespace A205565

/-- `A120880(n)/(2-floor(1/A261787(n)))` -/
def P7009240958609508196.Spec : Prop :=
  ∀ n, P7009240958609508196.a n = (A205565 n : ℚ)

end A205565

/-! ## A205565.P15660809862908751214

`A003958(A000010(A120879(n)))`
-/

namespace A205565.P15660809862908751214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A000010 (A120879 n).toNat).toNat

end

end A205565.P15660809862908751214

namespace A205565

/-- `A003958(A000010(A120879(n)))` -/
def P15660809862908751214.Spec : Prop :=
  ∀ n, P15660809862908751214.a n = A205565 n

end A205565

/-! ## A205565.P4634491541868190929

`A120880(n)-A001057(A120880(n)-1)`
-/

namespace A205565.P4634491541868190929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n - A001057 (A120880 n - 1).toNat

end

end A205565.P4634491541868190929

namespace A205565

/-- `A120880(n)-A001057(A120880(n)-1)` -/
def P4634491541868190929.Spec : Prop :=
  ∀ n, P4634491541868190929.a n = A205565 n

end A205565

/-! ## A205565.P637743353222150037

`A120880(n)-A110654(A120880(n)-1)`
-/

namespace A205565.P637743353222150037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n - A110654 (A120880 n - 1).toNat

end

end A205565.P637743353222150037

namespace A205565

/-- `A120880(n)-A110654(A120880(n)-1)` -/
def P637743353222150037.Spec : Prop :=
  ∀ n, P637743353222150037.a n = A205565 n

end A205565

/-!
# A205567: Number of 8-chromatic (i.e., chromatic number equals 8) simple graphs on n nodes.

The programs for A205567, there is no canonical definition to state claims against.
-/

/-! ## A205567.P10186949316083653231

`A076320(n+1)-A076319(n+1)`
-/

namespace A205567.P10186949316083653231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076320 (n + 1) - A076319 (n + 1)

end

end A205567.P10186949316083653231

/-! ## A205567.P1288289819398637516

`(A076320(n+1)%A076319(n+1))%A000088(n)`
-/

namespace A205567.P1288289819398637516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A076320 (n + 1)) (A076319 (n + 1))) (A000088 n)

end

end A205567.P1288289819398637516

/-! ## A205567.P14426537610775013231

`A076321(n+1)-(A205568(n+1)+A076319(n+1))`
-/

namespace A205567.P14426537610775013231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076321 (n + 1) - (A205568 (n + 1) + A076319 (n + 1))

end

end A205567.P14426537610775013231

/-! ## A205567.P1590326771079360897

`∪[A076320(n+1), A076320(n+2)]%A076319(n+1)`
-/

namespace A205567.P1590326771079360897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076320 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A076319 (n + 1))

end

end A205567.P1590326771079360897

/-! ## A205567.P10806692962472757089

`A076321(n+1)-(A076318(n+1)+A076283(n+1))-A205568(n+1)`
-/

namespace A205567.P10806692962472757089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076321 (n + 1) - (A076318 (n + 1) + A076283 (n + 1)) - A205568 (n + 1)

end

end A205567.P10806692962472757089

/-!
# A205568: Number of 9-chromatic (i.e., chromatic number equals 9) simple graphs on n nodes.

The programs for A205568, there is no canonical definition to state claims against.
-/

/-! ## A205568.P10590000988377356866

`round(15^((∑[n-4]+1)/5)/3)`
-/

namespace A205568.P10590000988377356866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((15 : ℝ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 5 : ℝ) / 3)

end

end A205568.P10590000988377356866

/-! ## A205568.P3752391137815330630

`ceil(Δ[A327510(n)/5])`
-/

namespace A205568.P3752391137815330630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327510 n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A205568.P3752391137815330630

/-! ## A205568.P15303371112094197596

`floor(A001064(n+1)/17)`
-/

namespace A205568.P15303371112094197596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001064 (n + 1) : ℚ) / 17⌋

end

end A205568.P15303371112094197596

/-! ## A205568.P4881692339258410936

`floor(A112874(n+1)/17)`
-/

namespace A205568.P4881692339258410936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112874 (n + 1) : ℚ) / 17⌋

end

end A205568.P4881692339258410936

/-! ## A205568.P10817372970211106076

`A205578(n+1)+char[10]`
-/

namespace A205568.P10817372970211106076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205578 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A205568.P10817372970211106076

/-!
# A205569: E.g.f.: 1/(1+x^2 - 2*x*cosh(x)).

The programs for A205569, there is no canonical definition to state claims against.
-/

/-! ## A205569.P16685988775718556749

`A004773(∑[A216492(n)])`
-/

namespace A205569.P16685988775718556749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A205569.P16685988775718556749

/-! ## A205569.P739938849055693261

`A071324(∑[A294466(n)])`
-/

namespace A205569.P739938849055693261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A205569.P739938849055693261

/-!
# A205570: E.g.f.: 1/sqrt(1+x^2 - 2*x*cosh(x)).

The programs for A205570, there is no canonical definition to state claims against.
-/

/-! ## A205570.P16938464377663229891

`or(A038572(A005442(n)), A265820(n))`
-/

namespace A205570.P16938464377663229891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038572 (A005442 n).toNat) (A265820 n)

end

end A205570.P16938464377663229891

/-! ## A205570.P11151515181325972203

`A140106(A005442(n))+A080304(n+1)`
-/

namespace A205570.P11151515181325972203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A005442 n).toNat + A080304 (n + 1)

end

end A205570.P11151515181325972203

/-! ## A205570.P8782875446852840411

`A028242(xor(A005442(n), A008834(n+3)))`
-/

namespace A205570.P8782875446852840411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor (A005442 n) (A008834 (n + 3))).toNat

end

end A205570.P8782875446852840411

/-!
# A205571: Expansion of e.g.f. 1/(1 - x*cosh(x)).

The programs for A205571, there is no canonical definition to state claims against.
-/

/-! ## A205571.P881551964082430365

`A004277(A205570(n))-A258114(n)`
-/

namespace A205571.P881551964082430365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A205570 n).toNat - A258114 n

end

end A205571.P881551964082430365

/-! ## A205571.P18404494874467468565

`n*A193406(a(n-1))` with `a(0)=1`
-/

namespace A205571.P18404494874467468565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A193406 (a (n - 1)).toNat

end

end A205571.P18404494874467468565

/-!
# A205572: E.g.f.: 1/(cos(x) - sinh(x)).

The programs for A205572, there is no canonical definition to state claims against.
-/

/-! ## A205572.P7171595628744350286

`A004277(A343787(n))-A000670(n)`
-/

namespace A205572.P7171595628744350286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A343787 n).toNat - A000670 n

end

end A205572.P7171595628744350286

/-! ## A205572.P4762639772566814869

`A004273(A343787(n))-A052875(n)`
-/

namespace A205572.P4762639772566814869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A343787 n).toNat - A052875 n

end

end A205572.P4762639772566814869

/-! ## A205572.P18262654696339520761

`A004277(A343787(n))-A276926(n)`
-/

namespace A205572.P18262654696339520761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A343787 n).toNat - A276926 n

end

end A205572.P18262654696339520761

/-!
# A205573: Array M read by antidiagonals in which successive rows evidently converge to A001405 (central binomial coefficients).

The programs for A205573, there is no canonical definition to state claims against.
-/

/-! ## A205573.P13390384243744978474

`A359276(A140994(n))+1`
-/

namespace A205573.P13390384243744978474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359276 (A140994 n).toNat + 1

end

end A205573.P13390384243744978474

/-! ## A205573.P2188483587296949039

`A097688(A265312(n))`
-/

namespace A205573.P2188483587296949039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097688 (A265312 n).toNat

end

end A205573.P2188483587296949039

/-! ## A205573.P11591600688405896313

`A077430(A195644(n+1))`
-/

namespace A205573.P11591600688405896313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077430 (A195644 (n + 1)).toNat

end

end A205573.P11591600688405896313

/-! ## A205573.P7778354971990349176

`A081604(A195644(n+1)+1)`
-/

namespace A205573.P7778354971990349176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A195644 (n + 1) + 1).toNat

end

end A205573.P7778354971990349176

/-! ## A205573.P11578265380242070569

`ceil((A249351(3*n+4)+A140994(n)+1)/4)`
-/

namespace A205573.P11578265380242070569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A249351 (3 * n + 4) + A140994 n + 1 : ℚ) / 4⌉

end

end A205573.P11578265380242070569

/-!
# A205574: Triangle T(n,k), 0<=k<=n, given by (0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, ...) DELTA (1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A205574, there is no canonical definition to state claims against.
-/

/-! ## A205574.P17711430939221470104

`A292870(A061579(n))`
-/

namespace A205574.P17711430939221470104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A061579 n).toNat

end

end A205574.P17711430939221470104

/-! ## A205574.P15923864257324710611

`A292870(A114327(n)+n)`
-/

namespace A205574.P15923864257324710611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A114327 n + (n : ℤ)).toNat

end

end A205574.P15923864257324710611

/-! ## A205574.P10635630345015891038

`A292870(A038722(n+1)-1)`
-/

namespace A205574.P10635630345015891038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A038722 (n + 1) - 1).toNat

end

end A205574.P10635630345015891038

/-! ## A205574.P15416928542940199309

`A292870(A002024(n+1)²-(n+1))`
-/

namespace A205574.P15416928542940199309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A205574.P15416928542940199309

/-! ## A205574.P3790874744950533540

`A292870(Δ[A004247(n)+A000124(n)])`
-/

namespace A205574.P3790874744950533540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (f1 (n + 1) - f1 n).toNat

end

end A205574.P3790874744950533540

/-! ## A205574.P11626447387561039759

`A292870(A038722(n+2))`
-/

namespace A205574.P11626447387561039759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (A038722 (n + 2)).toNat

end

end A205574.P11626447387561039759

/-!
# A205575: Triangle read by rows, related to Pascal's triangle, starting with rows 1; 1,0.

The programs for A205575, there is no canonical definition to state claims against.
-/

/-! ## A205575.P6182311393779355648

`A209137(n+1)-A228815(n)`
-/

namespace A205575.P6182311393779355648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (n + 1) - A228815 n

end

end A205575.P6182311393779355648

/-! ## A205575.P15946731836491375782

`2*A091533(n)-A209138(n+1)`
-/

namespace A205575.P15946731836491375782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091533 n - A209138 (n + 1)

end

end A205575.P15946731836491375782

/-! ## A205575.P16648530571209050728

`A209137(n+1)+A091562(n)-A091533(n)`
-/

namespace A205575.P16648530571209050728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (n + 1) + (A091562 n - A091533 n)

end

end A205575.P16648530571209050728

/-! ## A205575.P2797781129416387865

`A209137(n+1)+A091533(n)-A209167(n+1)`
-/

namespace A205575.P2797781129416387865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (n + 1) + (A091533 n - A209167 (n + 1))

end

end A205575.P2797781129416387865

/-! ## A205575.P14543339991282807589

`A209138(A038722(n+1))-A228815(n)`
-/

namespace A205575.P14543339991282807589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209138 (A038722 (n + 1)).toNat - A228815 n

end

end A205575.P14543339991282807589

/-! ## A205575.P6646816480345998188

`A005843(A091533(n))-A209138(n+1)`
-/

namespace A205575.P6646816480345998188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A091533 n).toNat - A209138 (n + 1)

end

end A205575.P6646816480345998188

/-!
# A205576: E.g.f.: 1/(cos(x) - x*cosh(x)).

The programs for A205576, there is no canonical definition to state claims against.
-/

/-! ## A205576.P4914402260177004107

`A247987(floor((2^n/2)^sqrt(n)))`
-/

namespace A205576.P4914402260177004107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247987 ⌊((2 ^ n : ℚ) / 2 : ℝ) ^ (Real.sqrt (n : ℝ))⌋.toNat

end

end A205576.P4914402260177004107

/-! ## A205576.P21630282375028256

`or(1, A262694(A135743(n+1)))`
-/

namespace A205576.P21630282375028256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A262694 (A135743 (n + 1)).toNat)

end

end A205576.P21630282375028256

/-!
# A205577: Number of n-node simple graphs having clique number 8.

The programs for A205577, there is no canonical definition to state claims against.
-/

/-! ## A205577.P6589561985389420042

`A095160(C(n, 7))`
-/

namespace A205577.P6589561985389420042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095160 (Nat.choose n 7)

end

end A205577.P6589561985389420042

/-! ## A205577.P14974368489938511460

`ceil((A241470(n+1)²/(n+2)-1)/2)`
-/

namespace A205577.P14974368489938511460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A241470 (n + 1) ^ 2 : ℚ) / (n + 2 : ℚ) - 1) / 2⌉

end

end A205577.P14974368489938511460

/-! ## A205577.P15528941823247590304

`A095160(A290995(n))`
-/

namespace A205577.P15528941823247590304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095160 (A290995 n).toNat

end

end A205577.P15528941823247590304

/-! ## A205577.P10381587396583371384

`A240076(A102276(n+1))`
-/

namespace A205577.P10381587396583371384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240076 (A102276 (n + 1)).toNat

end

end A205577.P10381587396583371384

/-! ## A205577.P8412041498143610926

`A029331(A120688(C(n, 7)))`
-/

namespace A205577.P8412041498143610926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (A120688 (Nat.choose n 7)).toNat

end

end A205577.P8412041498143610926

/-!
# A205578: Number of n-node simple graphs having clique number 9.

The programs for A205578, there is no canonical definition to state claims against.
-/

/-! ## A205578.P10005272789937695592

`A205568(n+1)-char[10]`
-/

namespace A205578.P10005272789937695592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205568 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A205578.P10005272789937695592

/-! ## A205578.P6940418146612592034

`A360251(A102276(n))`
-/

namespace A205578.P6940418146612592034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360251 (A102276 n).toNat

end

end A205578.P6940418146612592034

/-! ## A205578.P532705847209921324

`A287207(A122055(n+1))`
-/

namespace A205578.P532705847209921324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287207 (A122055 (n + 1)).toNat

end

end A205578.P532705847209921324

/-! ## A205578.P5088010164202873537

`A324103(∏[A257594(n)!])`
-/

namespace A205578.P5088010164202873537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A257594 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324103 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A205578.P5088010164202873537

/-! ## A205578.P14735236213496887394

`A154585(Δ[A061672(n+1)])`
-/

namespace A205578.P14735236213496887394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154585 (f1 (n + 1) - f1 n).toNat

end

end A205578.P14735236213496887394

/-!
# A205579: a(n) = round(r^n) where r is the smallest Pisot number (real root r=1.3247179.. of x^3-x-1).

The programs for A205579, the canonical program `A205579.P9526870637845310586` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205579 has offset 0).

The definition of A205579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205579.P9526870637845310586

`floor(A054405(2*n+1)/A054405(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A205579

/-- `floor(A054405(2*n+1)/A054405(n+1))` -/
def P9526870637845310586.Spec : Prop :=
  ∀ n, P9526870637845310586.a n = A205579 n

theorem P9526870637845310586.correct : P9526870637845310586.Spec := by
  intro n
  simp only [A205579]

end A205579

/-! ## A205579.P10058220625873140751

`floor(A193744(2*n)/A193744(n))`
-/

namespace A205579.P10058220625873140751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193744 (2 * n) : ℚ) / (A193744 n : ℚ)⌋

end

end A205579.P10058220625873140751

namespace A205579

/-- `floor(A193744(2*n)/A193744(n))` -/
def P10058220625873140751.Spec : Prop :=
  ∀ n, P10058220625873140751.a n = A205579 n

end A205579

/-! ## A205579.P13170288203728905311

`floor(A018918(n+1)/A164315(n+2))`
-/

namespace A205579.P13170288203728905311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018918 (n + 1) : ℚ) / (A164315 (n + 2) : ℚ)⌋

end

end A205579.P13170288203728905311

namespace A205579

/-- `floor(A018918(n+1)/A164315(n+2))` -/
def P13170288203728905311.Spec : Prop :=
  ∀ n, P13170288203728905311.a n = A205579 n

end A205579

/-! ## A205579.P8923046977981644797

`A112639(n)+char[A051017(n+1)]`
-/

namespace A205579.P8923046977981644797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051017 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112639 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A205579.P8923046977981644797

namespace A205579

/-- `A112639(n)+char[A051017(n+1)]` -/
def P8923046977981644797.Spec : Prop :=
  ∀ n, P8923046977981644797.a n = A205579 n

end A205579

/-!
# A205580: E.g.f.: 1/(cos(x) - sin(x)*cosh(x)).

The programs for A205580, there is no canonical definition to state claims against.
-/

/-! ## A205580.P16763480929722029746

`A008619(A006957(n)-n!)`
-/

namespace A205580.P16763480929722029746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A006957 n - (Nat.factorial n : ℤ)).toNat

end

end A205580.P16763480929722029746

/-! ## A205580.P5654372132156279118

`Δ[A336148(A107881(comp[2*n+7]))]`
-/

namespace A205580.P5654372132156279118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336148 (A107881 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205580.P5654372132156279118

/-!
# A205581: Primes p whose smallest positive primitive root (mod p) is not squarefree.

The programs for A205581, there is no canonical definition to state claims against.
-/

/-! ## A205581.P5185538871156605323

`A125746(∪[A061325(n+1), A061330(n+1)])`
-/

namespace A205581.P5185538871156605323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061330 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A205581.P5185538871156605323

/-!
# A205582: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205582, there is no canonical definition to state claims against.
-/

/-! ## A205582.P4031082082093656160

`A205590(∑[4*n]+1)`
-/

namespace A205582.P4031082082093656160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205582.P4031082082093656160

/-!
# A205583: Number of (n+1) X 2 0..2 arrays with no 2 X 2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205583, there is no canonical definition to state claims against.
-/

/-! ## A205583.P13046666836141460039

`A205753(∑[n+1])`
-/

namespace A205583.P13046666836141460039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205583.P13046666836141460039

/-! ## A205583.P10099902496820509778

`record[A205753(A106255(n+1))]`
-/

namespace A205583.P10099902496820509778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A106255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205583.P10099902496820509778

/-! ## A205583.P12339485183094790874

`record[A205753(A115017(n+1))]`
-/

namespace A205583.P12339485183094790874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205583.P12339485183094790874

/-! ## A205583.P8683061998398212993

`record[A205753(A130270(n+1))]`
-/

namespace A205583.P8683061998398212993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205583.P8683061998398212993

/-! ## A205583.P14205561126388618449

`record[A205753(A135223(n+1))]`
-/

namespace A205583.P14205561126388618449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (A135223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205583.P14205561126388618449

/-!
# A205584: Number of (n+1) X 3 0..2 arrays with no 2 X 2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205584, there is no canonical definition to state claims against.
-/

/-! ## A205584.P17324939887294446826

`A205590(∑[n+1]+2)`
-/

namespace A205584.P17324939887294446826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205584.P17324939887294446826

/-! ## A205584.P9521672199983444928

`record[A205590(A008795(n)+2)]`
-/

namespace A205584.P9521672199983444928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205584.P9521672199983444928

/-! ## A205584.P6062801501896965865

`record[A205590(A106255(n+1)+2)]`
-/

namespace A205584.P6062801501896965865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (A106255 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205584.P6062801501896965865

/-! ## A205584.P6078703344423772867

`record[A205590(A115017(n+1)+2)]`
-/

namespace A205584.P6078703344423772867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (A115017 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205584.P6078703344423772867

/-! ## A205584.P11955260007990919662

`record[A205590(A130270(n+1)+2)]`
-/

namespace A205584.P11955260007990919662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205584.P11955260007990919662

/-!
# A205585: Number of (n+1)X4 0..2 arrays with no 2X2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205585, there is no canonical definition to state claims against.
-/

/-! ## A205585.P14341157026219459869

`A205590(∑[n+2]+4)`
-/

namespace A205585.P14341157026219459869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205585.P14341157026219459869

/-! ## A205585.P5225984126846777160

`record[A205590(A106255(n+1)+3)]`
-/

namespace A205585.P5225984126846777160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (A106255 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205585.P5225984126846777160

/-! ## A205585.P14507419950014983655

`record[A205590(A115017(n+1)+3)]`
-/

namespace A205585.P14507419950014983655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (A115017 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205585.P14507419950014983655

/-! ## A205585.P10785121360275341025

`record[A205590(A130270(n+1)+3)]`
-/

namespace A205585.P10785121360275341025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (A130270 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205585.P10785121360275341025

/-! ## A205585.P10730554157991734365

`record[gcd(A025581(n), A205590(n+4))]`
-/

namespace A205585.P10730554157991734365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A205590 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205585.P10730554157991734365

/-!
# A205586: Number of (n+1)X5 0..2 arrays with no 2X2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205586, there is no canonical definition to state claims against.
-/

/-! ## A205586.P17860900655111131176

`A205590(∑[n+3]+7)`
-/

namespace A205586.P17860900655111131176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A205586.P17860900655111131176

/-! ## A205586.P1737576489193442828

`lcm(2, A205590(A374004(n+1)))`
-/

namespace A205586.P1737576489193442828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205590 (A374004 (n + 1)).toNat)

end

end A205586.P1737576489193442828

/-! ## A205586.P15799159529713077357

`A235145(n)+A205590(A374004(n+1))`
-/

namespace A205586.P15799159529713077357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 n + A205590 (A374004 (n + 1)).toNat

end

end A205586.P15799159529713077357

/-! ## A205586.P15820103955248415990

`A205590(A374004(n+1))+A001613(2*n+1)`
-/

namespace A205586.P15820103955248415990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (A374004 (n + 1)).toNat + A001613 (2 * n + 1)

end

end A205586.P15820103955248415990

/-! ## A205586.P8257973693343202922

`A235145(n)+A205590(A055998(n+2))`
-/

namespace A205586.P8257973693343202922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 n + A205590 (A055998 (n + 2)).toNat

end

end A205586.P8257973693343202922

/-!
# A205587: Number of (n+1)X6 0..2 arrays with no 2X2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205587, there is no canonical definition to state claims against.
-/

/-! ## A205587.P12502213014688293366

`A205590(A374005(n+1))`
-/

namespace A205587.P12502213014688293366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (A374005 (n + 1)).toNat

end

end A205587.P12502213014688293366

/-! ## A205587.P7688847331867932777

`A205590(A167499(n+3))`
-/

namespace A205587.P7688847331867932777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (A167499 (n + 3)).toNat

end

end A205587.P7688847331867932777

/-! ## A205587.P15449070427444051332

`A205590(A155212(n)+13)`
-/

namespace A205587.P15449070427444051332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (A155212 n + 13).toNat

end

end A205587.P15449070427444051332

/-! ## A205587.P10899660582107640390

`A205590(A056000(n)+15)`
-/

namespace A205587.P10899660582107640390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (A056000 n + 15).toNat

end

end A205587.P10899660582107640390

/-! ## A205587.P17926030146225535812

`A205590(eq[7, A066657(n)])`
-/

namespace A205587.P17926030146225535812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205587.P17926030146225535812

/-!
# A205588: Number of (n+1)X7 0..2 arrays with no 2X2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205588, there is no canonical definition to state claims against.
-/

/-! ## A205588.P11033143287256924414

`A205590(∑[n+5]+16)`
-/

namespace A205588.P11033143287256924414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A205588.P11033143287256924414

/-!
# A205589: Number of (n+1)X8 0..2 arrays with no 2X2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A205589, there is no canonical definition to state claims against.
-/

/-! ## A205589.P1638116921164947233

`A205590(A374008(n+1))`
-/

namespace A205589.P1638116921164947233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205590 (A374008 (n + 1)).toNat

end

end A205589.P1638116921164947233

/-!
# A205591: a(1) = 1, a(n) = a(floor((2n-1)/3)) + a(floor(2n/3)) for n > 1.

The programs for A205591, the canonical program `A205591.P3194420432006079838` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205591 has offset 1).

The definition of A205591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor((2*(n+1)-1)/3)-1)+a(floor(2*(n+1)/3)-1)` (program `A205591.P3194420432006079838`, by `A205591.P3194420432006079838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A205591.P3194420432006079838

`a(floor((2*(n+1)-1)/3)-1)+a(floor(2*(n+1)/3)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A205591

/-- `a(floor((2*(n+1)-1)/3)-1)+a(floor(2*(n+1)/3)-1)` -/
def P3194420432006079838.Spec : Prop :=
  ∀ n, (P3194420432006079838.a n : ℤ) = A205591 (n + 1)

theorem P3194420432006079838.correct : P3194420432006079838.Spec := by
  intro n
  simp only [A205591, Nat.add_sub_cancel]

end A205591

/-! ## A205591.P17423740330710728574

`A006998(n+2)/2`
-/

namespace A205591.P17423740330710728574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006998 (n + 2) : ℚ) / 2

end

end A205591.P17423740330710728574

namespace A205591

/-- `A006998(n+2)/2` -/
def P17423740330710728574.Spec : Prop :=
  ∀ n, P17423740330710728574.a n = (A205591 (n + 1) : ℚ)

end A205591

/-! ## A205591.P5139787975446769971

`∑[A205592(abs(1-n)+2)]`
-/

namespace A205591.P5139787975446769971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205592 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205591.P5139787975446769971

namespace A205591

/-- `∑[A205592(abs(1-n)+2)]` -/
def P5139787975446769971.Spec : Prop :=
  ∀ n, P5139787975446769971.a n = A205591 (n + 1)

end A205591

/-! ## A205591.P1343634877948425089

`A205592(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A205591.P1343634877948425089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A205592 (n + 1) + a (n - 1)

end

end A205591.P1343634877948425089

namespace A205591

/-- `A205592(n+1)+a(n-1)` -/
def P1343634877948425089.Spec : Prop :=
  ∀ n, P1343634877948425089.a n = A205591 (n + 1)

end A205591

/-! ## A205591.P15825187679161269131

`∑[2^A205593(abs(1-n)+2)]`
-/

namespace A205591.P15825187679161269131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A205593 (|1 - (n : ℤ)| + 2).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205591.P15825187679161269131

namespace A205591

/-- `∑[2^A205593(abs(1-n)+2)]` -/
def P15825187679161269131.Spec : Prop :=
  ∀ n, P15825187679161269131.a n = (A205591 (n + 1) : ℚ)

end A205591

/-! ## A205591.P2814738997594979037

`∑[A000079(A205593(abs(1-n)+2))]`
-/

namespace A205591.P2814738997594979037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A205593 (|1 - (n : ℤ)| + 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205591.P2814738997594979037

namespace A205591

/-- `∑[A000079(A205593(abs(1-n)+2))]` -/
def P2814738997594979037.Spec : Prop :=
  ∀ n, P2814738997594979037.a n = A205591 (n + 1)

end A205591

/-! ## A205591.P5338666339515961896

`∑[A205592(n+2)]+1-A205592(n+2)`
-/

namespace A205591.P5338666339515961896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205592 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A205592 (n + 2))

end

end A205591.P5338666339515961896

namespace A205591

/-- `∑[A205592(n+2)]+1-A205592(n+2)` -/
def P5338666339515961896.Spec : Prop :=
  ∀ n, P5338666339515961896.a n = A205591 (n + 1)

end A205591

/-! ## A205591.P13723745921688188962

`A008619(A006998(n+2)-1)`
-/

namespace A205591.P13723745921688188962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A006998 (n + 2) - 1).toNat

end

end A205591.P13723745921688188962

namespace A205591

/-- `A008619(A006998(n+2)-1)` -/
def P13723745921688188962.Spec : Prop :=
  ∀ n, P13723745921688188962.a n = A205591 (n + 1)

end A205591

/-! ## A205591.P18307427044089519416

`A002265(2*A006998(n+2))`
-/

namespace A205591.P18307427044089519416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A006998 (n + 2)).toNat

end

end A205591.P18307427044089519416

namespace A205591

/-- `A002265(2*A006998(n+2))` -/
def P18307427044089519416.Spec : Prop :=
  ∀ n, P18307427044089519416.a n = A205591 (n + 1)

end A205591

/-!
# A205592: a(2) = 1, a(3k) = a(3k+1) = a(2k), a(3k+2) = 2a(2k+1) for k >= 1.

The programs for A205592, the canonical program `A205592.P4234756135742741029` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205592 has offset 2).

The definition of A205592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205592.P4234756135742741029

`A205591(n+2)-A205591(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A205592

/-- `A205591(n+2)-A205591(n+1)` -/
def P4234756135742741029.Spec : Prop :=
  ∀ n, P4234756135742741029.a n = A205592 (n + 2)

theorem P4234756135742741029.correct : P4234756135742741029.Spec := by
  intro n
  simp only [A205592, Nat.add_sub_cancel]

end A205592

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

namespace A205592

/-- `Δ[A205591(n+1)]` -/
def P7792590669953959238.Spec : Prop :=
  ∀ n, P7792590669953959238.a n = A205592 (n + 2)

theorem P7792590669953959238.correct : P7792590669953959238.Spec := by
  intro n
  simp only [A205592, Nat.add_sub_cancel, A205592.P7792590669953959238.f1, A205592.P7792590669953959238.a, A205592.P4234756135742741029.a, SequenceMachineLib.memo_apply]

end A205592

/-! ## A205592.P9082249027982076785

`2^A205593(n+2)`
-/

namespace A205592.P9082249027982076785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A205593 (n + 2) : ℤ)

end

end A205592.P9082249027982076785

namespace A205592

/-- `2^A205593(n+2)` -/
def P9082249027982076785.Spec : Prop :=
  ∀ n, P9082249027982076785.a n = (A205592 (n + 2) : ℚ)

end A205592

/-! ## A205592.P1874084053469506678

`A000079(A205593(n+2))`
-/

namespace A205592.P1874084053469506678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A205593 (n + 2)).toNat

end

end A205592.P1874084053469506678

namespace A205592

/-- `A000079(A205593(n+2))` -/
def P1874084053469506678.Spec : Prop :=
  ∀ n, P1874084053469506678.a n = A205592 (n + 2)

end A205592

/-! ## A205592.P4529231750454603404

`A000010(Δ[A006998(n+2)])`
-/

namespace A205592.P4529231750454603404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006998 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A205592.P4529231750454603404

namespace A205592

/-- `A000010(Δ[A006998(n+2)])` -/
def P4529231750454603404.Spec : Prop :=
  ∀ n, P4529231750454603404.a n = A205592 (n + 2)

end A205592

/-!
# A205593: a(2) = 0, a(3k) = a(3k+1) = a(2k), a(3k+2) = a(2k+1) + 1 for k >= 1.

The programs for A205593, the canonical program `A205593.P16905158844139717774` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205593 has offset 2).

The definition of A205593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205593.P16905158844139717774

`log2(A205592(n+2))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A205593

/-- `log2(A205592(n+2))` -/
def P16905158844139717774.Spec : Prop :=
  ∀ n, P16905158844139717774.a n = (A205593 (n + 2) : ℝ)

end A205593

/-! ## A205593.P11685251146251632928

`log2(Δ[A205591(n+1)])`
-/

namespace A205593.P11685251146251632928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205591 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A205593.P11685251146251632928

namespace A205593

/-- `log2(Δ[A205591(n+1)])` -/
def P11685251146251632928.Spec : Prop :=
  ∀ n, P11685251146251632928.a n = (A205593 (n + 2) : ℝ)

end A205593

/-! ## A205593.P10211939884959854009

`A001222(Δ[A205591(n+1)])`
-/

namespace A205593.P10211939884959854009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A205593.P10211939884959854009

namespace A205593

/-- `A001222(Δ[A205591(n+1)])` -/
def P10211939884959854009.Spec : Prop :=
  ∀ n, P10211939884959854009.a n = A205593 (n + 2)

end A205593

/-! ## A205593.P9104103635655028914

`A000120(A205592(n+2)-1)`
-/

namespace A205593.P9104103635655028914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A205592 (n + 2) - 1).toNat

end

end A205593.P9104103635655028914

namespace A205593

/-- `A000120(A205592(n+2)-1)` -/
def P9104103635655028914.Spec : Prop :=
  ∀ n, P9104103635655028914.a n = A205593 (n + 2)

end A205593

/-! ## A205593.P17676564877996391078

`A046660(2*A205592(n+2))`
-/

namespace A205593.P17676564877996391078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (2 * A205592 (n + 2)).toNat

end

end A205593.P17676564877996391078

namespace A205593

/-- `A046660(2*A205592(n+2))` -/
def P17676564877996391078.Spec : Prop :=
  ∀ n, P17676564877996391078.a n = A205593 (n + 2)

end A205593

/-! ## A205593.P12327859769547686363

`A299480(2*A205592(n+2))`
-/

namespace A205593.P12327859769547686363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (2 * A205592 (n + 2)).toNat

end

end A205593.P12327859769547686363

namespace A205593

/-- `A299480(2*A205592(n+2))` -/
def P12327859769547686363.Spec : Prop :=
  ∀ n, P12327859769547686363.a n = A205593 (n + 2)

end A205593

/-! ## A205593.P17556546712341504900

`A000005(Δ[A205591(n+1)])-1`
-/

namespace A205593.P17556546712341504900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat - 1

end

end A205593.P17556546712341504900

namespace A205593

/-- `A000005(Δ[A205591(n+1)])-1` -/
def P17556546712341504900.Spec : Prop :=
  ∀ n, P17556546712341504900.a n = A205593 (n + 2)

end A205593

/-! ## A205593.P8368878599970973686

`A159918(Δ[A205591(n+1)]-1)`
-/

namespace A205593.P8368878599970973686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (f1 (n + 1) - f1 n - 1).toNat

end

end A205593.P8368878599970973686

namespace A205593

/-- `A159918(Δ[A205591(n+1)]-1)` -/
def P8368878599970973686.Spec : Prop :=
  ∀ n, P8368878599970973686.a n = A205593 (n + 2)

end A205593

/-! ## A205593.P969270735353297804

`A001222(Δ[A006998(n+2)/2])`
-/

namespace A205593.P969270735353297804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006998 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A205593.P969270735353297804

namespace A205593

/-- `A001222(Δ[A006998(n+2)/2])` -/
def P969270735353297804.Spec : Prop :=
  ∀ n, P969270735353297804.a n = A205593 (n + 2)

end A205593

/-! ## A205593.P10118683949089000966

`A001222(A000010(Δ[A006998(n+2)]))`
-/

namespace A205593.P10118683949089000966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006998 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (f1 (n + 1) - f1 n).toNat).toNat

end

end A205593.P10118683949089000966

namespace A205593

/-- `A001222(A000010(Δ[A006998(n+2)]))` -/
def P10118683949089000966.Spec : Prop :=
  ∀ n, P10118683949089000966.a n = A205593 (n + 2)

end A205593

/-!
# A205594: n such that A205592(n) > n.

The programs for A205594, there is no canonical definition to state claims against.
-/

/-! ## A205594.P2176305734106477443

`A205596(log2(record[2^A300444(n+4)]))`
-/

namespace A205594.P2176305734106477443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A300444 (n + 4) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205596 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))).toNat

end

end A205594.P2176305734106477443

/-! ## A205594.P15500353408394710351

`∑{e}[record[2^A300444(n+4)], A205596(#)]`
-/

namespace A205594.P15500353408394710351
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A300444 (n + 4) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A205596 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A205594.P15500353408394710351

/-! ## A205594.P12593620878771722558

`∑{e}[A000010(2^A202707(n+1)), A205596(#)]`
-/

namespace A205594.P12593620878771722558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A202707 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A205596 (Nat.factorization (f1 n).natAbs p)

end

end A205594.P12593620878771722558

/-!
# A205595: A205592(A205594(n)).

The programs for A205595, there is no canonical definition to state claims against.
-/

/-! ## A205595.P9337768398162404548

`A355944(A355919(2*n+3)/2)`
-/

namespace A205595.P9337768398162404548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355944 (SequenceMachineLib.roundAway ((A355919 (2 * n + 3) : ℚ) / 2)).toNat

end

end A205595.P9337768398162404548

/-! ## A205595.P10091631488146986585

`record[2^A300444(n+4)]`
-/

namespace A205595.P10091631488146986585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A300444 (n + 4) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205595.P10091631488146986585

/-! ## A205595.P436054917977371755

`A004756(A384786(n+2))`
-/

namespace A205595.P436054917977371755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (A384786 (n + 2)).toNat

end

end A205595.P436054917977371755

/-!
# A205596: Least k such that A205592(k) = 2^n.

The programs for A205596, there is no canonical definition to state claims against.
-/

/-! ## A205596.P2690755787224615215

`record[A330189(n+3)-A330193(n+1)]`
-/

namespace A205596.P2690755787224615215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330189 (n + 3) - A330193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205596.P2690755787224615215

/-! ## A205596.P15572834418261878400

`A165334(eq[ceil(n/2), A308063(n+1)])`
-/

namespace A205596.P15572834418261878400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165334 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A205596.P15572834418261878400

/-! ## A205596.P5457273353666879891

`A165334(or(A033677(n+1), A295723(n+1)))`
-/

namespace A205596.P5457273353666879891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165334 (Int.lor (A033677 (n + 1)) (A295723 (n + 1))).toNat

end

end A205596.P5457273353666879891

/-!
# A205597: Odd terms of A019278: odd n such that sigma(sigma(n))/n is an integer.

The programs for A205597, there is no canonical definition to state claims against.
-/

/-! ## A205597.P13022404683827072232

`∩[or(1, A019278(n+1)), A019278(n+1)]`
-/

namespace A205597.P13022404683827072232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A019278 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205597.P13022404683827072232

/-!
# A205598: The number n written using a minimizing algorithm in the base where the values of the places are 1 and primes.

The programs for A205598, there is no canonical definition to state claims against.
-/

/-! ## A205598.P8608334656828663573

`A007088(A345297(n))`
-/

namespace A205598.P8608334656828663573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A345297 n).toNat

end

end A205598.P8608334656828663573

/-! ## A205598.P9272303092797043115

`A185544(2*A345297(n))`
-/

namespace A205598.P9272303092797043115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A345297 n).toNat

end

end A205598.P9272303092797043115

/-! ## A205598.P6201686867029509687

`A185544(A345297(n)+A345297(n))`
-/

namespace A205598.P6201686867029509687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A345297 n + A345297 n).toNat

end

end A205598.P6201686867029509687

