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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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

/-!
# A234600: Denominators of the expectation of the process defined by randomly moving 2n balls between bins.

The programs for A234600, there is no canonical definition to state claims against.
-/

/-! ## A234600.P7179129877174905975

`lcm(16, A091342(n+1))/16`
-/

namespace A234600.P7179129877174905975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 16 (A091342 (n + 1)) : ℚ) / 16

end

end A234600.P7179129877174905975

/-! ## A234600.P4465414545400302830

`lcm(n+1, A025547(n+1))/(n+1)`
-/

namespace A234600.P4465414545400302830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A025547 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A234600.P4465414545400302830

/-! ## A234600.P10333870274604821354

`gcd(A025535(n), A025547(n+1))`
-/

namespace A234600.P10333870274604821354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025535 n) (A025547 (n + 1))

end

end A234600.P10333870274604821354

/-! ## A234600.P13242560190107258133

`A025547(n+1)/A000265(n+1)`
-/

namespace A234600.P13242560190107258133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025547 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ)

end

end A234600.P13242560190107258133

/-! ## A234600.P14516573580583944754

`A025547(n+1)/(A153733(n)+1)`
-/

namespace A234600.P14516573580583944754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025547 (n + 1) : ℚ) / (A153733 n + 1 : ℚ)

end

end A234600.P14516573580583944754

/-!
# A234601: Total counts of distinct (undirected) cycles for all simple graphs of order n.

The programs for A234601, there is no canonical definition to state claims against.
-/

/-! ## A234601.P10350527622436763677

`A140106(A078634(n))`
-/

namespace A234601.P10350527622436763677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A078634 n).toNat

end

end A234601.P10350527622436763677

/-! ## A234601.P4924467522340400026

`floor(A121195(n+1)/A301071(2*n+3))`
-/

namespace A234601.P4924467522340400026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121195 (n + 1) : ℚ) / (A301071 (2 * n + 3) : ℚ)⌋

end

end A234601.P4924467522340400026

/-!
# A234603: Numbers of undirected cycles in the n X n black bishop graph.

The programs for A234603, there is no canonical definition to state claims against.
-/

/-! ## A234603.P8289275279790727026

`A234636(n+3)-A234630(n+3)`
-/

namespace A234603.P8289275279790727026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234636 (n + 3) - A234630 (n + 3)

end

end A234603.P8289275279790727026

/-!
# A234612: Self-inverse permutation of nonnegative integers, "blue-gray" code: a(n) = A003188(A193231(n)).

The programs for A234612, there is no canonical definition to state claims against.
-/

/-! ## A234612.P6700788415382480833

`A003188(A193231(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234612.P6700788415382480833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A193231 n).toNat

end

end A234612.P6700788415382480833

/-! ## A234612.P14355052322759377627

`A193231(A006068(n))`
-/

namespace A234612.P14355052322759377627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A006068 n).toNat

end

end A234612.P14355052322759377627

/-! ## A234612.P6929832308135131598

`A003188(A003188(A234613(n)))`
-/

namespace A234612.P6929832308135131598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (A234613 n).toNat).toNat

end

end A234612.P6929832308135131598

/-! ## A234612.P4579833542286575884

`A064706(A234613(n))`
-/

namespace A234612.P4579833542286575884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (A234613 n).toNat

end

end A234612.P4579833542286575884

/-! ## A234612.P13235701224172625729

`A234613(A064707(n))`
-/

namespace A234612.P13235701224172625729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A064707 n).toNat

end

end A234612.P13235701224172625729

/-! ## A234612.P13613174393572843034

`A234026(A233279(n))`
-/

namespace A234612.P13613174393572843034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A233279 n).toNat

end

end A234612.P13613174393572843034

/-! ## A234612.P1161760392243637617

`A233280(A234025(n))`
-/

namespace A234612.P1161760392243637617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A234025 n).toNat

end

end A234612.P1161760392243637617

/-! ## A234612.P12001291914309100295

`A193231(A292600(2*n))`
-/

namespace A234612.P12001291914309100295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A292600 (2 * n)).toNat

end

end A234612.P12001291914309100295

/-! ## A234612.P9568340852734370437

`A193231(A268716(n)/2)`
-/

namespace A234612.P9568340852734370437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat

end

end A234612.P9568340852734370437

/-! ## A234612.P6371299684349698025

`A193231(A286546(n)+n)`
-/

namespace A234612.P6371299684349698025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A286546 n + (n : ℤ)).toNat

end

end A234612.P6371299684349698025

/-! ## A234612.P80019497895277200

`A105081(A193231(n)+1)-1`
-/

namespace A234612.P80019497895277200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105081 (A193231 n + 1).toNat - 1

end

end A234612.P80019497895277200

/-! ## A234612.P8889550807768848955

`A193231(2*n-A292601(2*n))`
-/

namespace A234612.P8889550807768848955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 ((2 * n : ℤ) - A292601 (2 * n)).toNat

end

end A234612.P8889550807768848955

/-! ## A234612.P15517190512921611954

`A234613(A006068(A006068(2*n-n)))`
-/

namespace A234612.P15517190512921611954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A006068 (A006068 (2 * n - n)).toNat).toNat

end

end A234612.P15517190512921611954

/-! ## A234612.P2488741908191200689

`A193231(xor(A001969(n+1), A268716(n)))`
-/

namespace A234612.P2488741908191200689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (Int.xor (A001969 (n + 1)) (A268716 n)).toNat

end

end A234612.P2488741908191200689

/-! ## A234612.P8946539592313064393

`A193231(xor(A341916(n)%2+2*n, A268716(n)))`
-/

namespace A234612.P8946539592313064393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (Int.xor (Int.tmod (A341916 n) 2 + (2 * n : ℤ)) (A268716 n)).toNat

end

end A234612.P8946539592313064393

/-! ## A234612.P14459263422020441925

`A064706(A193231(A233280(A233275(A233278(n)))))`
-/

namespace A234612.P14459263422020441925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (A193231 (A233280 (A233275 (A233278 n).toNat).toNat).toNat).toNat

end

end A234612.P14459263422020441925

/-! ## A234612.P14424832848586313052

`floor(A193231(2*n)/2)`
-/

namespace A234612.P14424832848586313052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193231 (2 * n) : ℚ) / 2⌋

end

end A234612.P14424832848586313052

/-! ## A234612.P860168447862496064

`A193231(A001969(n+1))/2`
-/

namespace A234612.P860168447862496064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193231 (A001969 (n + 1)).toNat : ℚ) / 2

end

end A234612.P860168447862496064

/-! ## A234612.P17432074372815836524

`A004526(A193231(2*n))`
-/

namespace A234612.P17432074372815836524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A193231 (2 * n)).toNat

end

end A234612.P17432074372815836524

/-! ## A234612.P17992769200642545308

`A234613(2*A006068(n))/2`
-/

namespace A234612.P17992769200642545308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234613 (2 * A006068 n).toNat : ℚ) / 2

end

end A234612.P17992769200642545308

/-!
# A234613: Self-inverse permutation of nonnegative integers, "gray-blue" code: a(n) = A193231(A003188(n)).

The programs for A234613, there is no canonical definition to state claims against.
-/

/-! ## A234613.P1680756600396285344

`A193231(A003188(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234613.P1680756600396285344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A003188 n).toNat

end

end A234613.P1680756600396285344

/-! ## A234613.P7920213195508829116

`A006068(A193231(n))`
-/

namespace A234613.P7920213195508829116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A193231 n).toNat

end

end A234613.P7920213195508829116

/-! ## A234613.P13009099564420079222

`xor(A234612(A002265(n)), A234612(n))`
-/

namespace A234613.P13009099564420079222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A234612 (A002265 n).toNat) (A234612 n)

end

end A234613.P13009099564420079222

/-! ## A234613.P10062971718487405042

`A000035(n)+2*A193231(A004526(n))`
-/

namespace A234613.P10062971718487405042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + 2 * A193231 (A004526 n).toNat

end

end A234613.P10062971718487405042

/-! ## A234613.P8354436512285954891

`A193231(xor(n, floor(n/2)))`
-/

namespace A234613.P8354436512285954891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A234613.P8354436512285954891

/-! ## A234613.P8005085335195338139

`A193231(round(xor(n+1, 2*n+1)/2))`
-/

namespace A234613.P8005085335195338139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (SequenceMachineLib.roundAway ((Nat.xor (n + 1) (2 * n + 1) : ℚ) / 2)).toNat

end

end A234613.P8005085335195338139

/-! ## A234613.P2230474282469878610

`A234612(A064706(n))`
-/

namespace A234613.P2230474282469878610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A064706 n).toNat

end

end A234613.P2230474282469878610

/-! ## A234613.P264656042871629076

`A064707(A234612(n))`
-/

namespace A234613.P264656042871629076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (A234612 n).toNat

end

end A234613.P264656042871629076

/-! ## A234613.P73241387768955493

`A234026(A180201(n))`
-/

namespace A234613.P73241387768955493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A180201 n).toNat

end

end A234613.P73241387768955493

/-! ## A234613.P17846434145548820154

`A180200(A234025(n))`
-/

namespace A234613.P17846434145548820154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A234025 n).toNat

end

end A234613.P17846434145548820154

/-! ## A234613.P13320817326978586055

`A292600(2*A193231(n))`
-/

namespace A234613.P13320817326978586055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * A193231 n).toNat

end

end A234613.P13320817326978586055

/-! ## A234613.P2064094667931217476

`A193231(A286548(n)+n)`
-/

namespace A234613.P2064094667931217476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A286548 n + (n : ℤ)).toNat

end

end A234613.P2064094667931217476

/-! ## A234613.P12952108445014156509

`A234612(xor(n, A002265(n)))`
-/

namespace A234613.P12952108445014156509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (Int.xor (n : ℤ) (A002265 n)).toNat

end

end A234613.P12952108445014156509

/-! ## A234613.P2208912288450603616

`A193231(A105081(n+1)-1)`
-/

namespace A234613.P2208912288450603616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A105081 (n + 1) - 1).toNat

end

end A234613.P2208912288450603616

/-! ## A234613.P16967649362074907767

`A006068(A234612(ceil(xor(n-1, 2*n)/2)))`
-/

namespace A234613.P16967649362074907767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A234612 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat).toNat

end

end A234613.P16967649362074907767

/-! ## A234613.P3852007608050380190

`A234612(A003188(A286548(n)+n))`
-/

namespace A234613.P3852007608050380190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A003188 (A286548 n + (n : ℤ)).toNat).toNat

end

end A234613.P3852007608050380190

/-! ## A234613.P2904426460658591164

`A292600(A193231(n)+A193231(n))`
-/

namespace A234613.P2904426460658591164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A193231 n + A193231 n).toNat

end

end A234613.P2904426460658591164

/-! ## A234613.P6815904871151645330

`A193231(A233280(A233277(A233276(n))))`
-/

namespace A234613.P6815904871151645330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A233280 (A233277 (A233276 n).toNat).toNat).toNat

end

end A234613.P6815904871151645330

/-! ## A234613.P18142858538719691052

`A193231(A233280(A233275(A233278(n))))`
-/

namespace A234613.P18142858538719691052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A233280 (A233275 (A233278 n).toNat).toNat).toNat

end

end A234613.P18142858538719691052

/-! ## A234613.P4914201751958266195

`A234612(A003188(A003188(A234024(A234024(n)))))`
-/

namespace A234613.P4914201751958266195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A003188 (A003188 (A234024 (A234024 n).toNat).toNat).toNat).toNat

end

end A234613.P4914201751958266195

/-!
# A234615: Number of ways to write n = k + m with k > 0 and m > 0 such that p = prime(k) + phi(m) and q(p) - 1 are both prime, where phi(.) is Euler's totient function and q(.) is the strict partition function (A000009).

The programs for A234615, there is no canonical definition to state claims against.
-/

/-! ## A234615.P10078967179532030572

`A269303(A000929(2*n))%A000929(n)`
-/

namespace A234615.P10078967179532030572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269303 (A000929 (2 * n)).toNat) (A000929 n)

end

end A234615.P10078967179532030572

/-!
# A234617: Numbers of undirected cycles in the 2n-crossed prism graph.

The programs for A234617, the canonical program `A234617.P14389326993764515837` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234617 has offset 1).

The definition of A234617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234617.P14389326993764515837

`2^n+4^(n+1)+(2^(n+2)-3)*(n+1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A234617

/-- `2^n+4^(n+1)+(2^(n+2)-3)*(n+1)` -/
def P14389326993764515837.Spec : Prop :=
  ∀ n, P14389326993764515837.a n = A234617 (n + 1)

theorem P14389326993764515837.correct : P14389326993764515837.Spec := by
  intro n
  simp only [A234617, Nat.add_sub_cancel]

end A234617

/-!
# A234624: Number of (undirected) cycles in the n X n rook graph.

The programs for A234624, there is no canonical definition to state claims against.
-/

/-! ## A234624.P12356229356446431553

`A286418((n+1)²+n²)`
-/

namespace A234624.P12356229356446431553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286418 ((n + 1) ^ 2 + n ^ 2)

end

end A234624.P12356229356446431553

/-!
# A234627: Numbers of undirected cycles in the n-sun graph.

The programs for A234627, there is no canonical definition to state claims against.
-/

/-! ## A234627.P12349029139849741203

`A334267(A000108(n))+A010842(n)`
-/

namespace A234627.P12349029139849741203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (A000108 n).toNat + A010842 n

end

end A234627.P12349029139849741203

/-! ## A234627.P14834352211811330644

`A160124(A147606(2*n))+A147606(n)`
-/

namespace A234627.P14834352211811330644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160124 (A147606 (2 * n)).toNat + A147606 n

end

end A234627.P14834352211811330644

/-!
# A234630: Numbers of undirected cycles in the n X n white bishop graph.

The programs for A234630, there is no canonical definition to state claims against.
-/

/-! ## A234630.P2221445859529797412

`A234636(n+3)-A234603(n+3)`
-/

namespace A234630.P2221445859529797412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234636 (n + 3) - A234603 (n + 3)

end

end A234630.P2221445859529797412

/-!
# A234632: Numbers of directed Hamiltonian paths in the n X n black bishop graph.

The programs for A234632, there is no canonical definition to state claims against.
-/

/-! ## A234632.P1269729798658453544

`2*A307934(n+2)`
-/

namespace A234632.P1269729798658453544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307934 (n + 2)

end

end A234632.P1269729798658453544

/-! ## A234632.P6948984009348552050

`A000034(n)*A307556(n+2)`
-/

namespace A234632.P6948984009348552050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A307556 (n + 2)

end

end A234632.P6948984009348552050

/-!
# A234633: Numbers of directed Hamiltonian paths in the complete tripartite graph K_{n,n,n}.

The programs for A234633, there is no canonical definition to state claims against.
-/

/-! ## A234633.P11207606583156982210

`(n+1)!^3*A110706(n+1)`
-/

namespace A234633.P11207606583156982210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ 3 : ℤ) * A110706 (n + 1)

end

end A234633.P11207606583156982210

/-! ## A234633.P13552648522870514515

`2*A307936(n+1)`
-/

namespace A234633.P13552648522870514515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307936 (n + 1)

end

end A234633.P13552648522870514515

/-! ## A234633.P5452507624238353393

`A307936(A249818(n+1))+A307936(n+1)`
-/

namespace A234633.P5452507624238353393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307936 (A249818 (n + 1)).toNat + A307936 (n + 1)

end

end A234633.P5452507624238353393

/-!
# A234637: Number of directed Hamiltonian paths in the n X n white bishop graph.

The programs for A234637, there is no canonical definition to state claims against.
-/

/-! ## A234637.P16260103329927485763

`2*A308146(n+2)`
-/

namespace A234637.P16260103329927485763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308146 (n + 2)

end

end A234637.P16260103329927485763

/-! ## A234637.P821742279937168403

`A308146(A308110(n+2))+A308146(n+2)`
-/

namespace A234637.P821742279937168403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308146 (A308110 (n + 2)).toNat + A308146 (n + 2)

end

end A234637.P821742279937168403

/-!
# A234638: Numbers n for which sigma(sigma(n)) is odd.

The programs for A234638, the canonical program `A234638.P1618051015318160246` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234638 has offset 1).

The definition of A234638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234638.P1618051015318160246

`lt[A007913(A000203(n+1)), 3]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A234638

/-- `lt[A007913(A000203(n+1)), 3]+1` -/
def P1618051015318160246.Spec : Prop :=
  ∀ n, (P1618051015318160246.a n : ℤ) = A234638 (n + 1)

theorem P1618051015318160246.correct : P1618051015318160246.Spec := by
  intro n
  simp only [A234638, Nat.add_sub_cancel]

end A234638

/-! ## A234638.P5225564981850332295

`record[(n+1)/gcd(2, A000203(2*A000203(n+1)))]`
-/

namespace A234638.P5225564981850332295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 2 (A000203 (2 * A000203 (n + 1)).toNat) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234638.P5225564981850332295

namespace A234638

/-- `record[(n+1)/gcd(2, A000203(2*A000203(n+1)))]` -/
def P5225564981850332295.Spec : Prop :=
  ∀ n, P5225564981850332295.a n = (A234638 (n + 1) : ℚ)

end A234638

/-! ## A234638.P1538067372152042758

`eq[1, gcd(4, ∑{d}[∑{d}[n, #], #])]`
-/

namespace A234638.P1538067372152042758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234638.P1538067372152042758

namespace A234638

/-- `eq[1, gcd(4, ∑{d}[∑{d}[n, #], #])]` -/
def P1538067372152042758.Spec : Prop :=
  ∀ n, (P1538067372152042758.a n : ℤ) = A234638 (n + 1)

end A234638

/-! ## A234638.P10749722279709953034

`eq[1, and(1, A051027(n+1))]+1`
-/

namespace A234638.P10749722279709953034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A051027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234638.P10749722279709953034

namespace A234638

/-- `eq[1, and(1, A051027(n+1))]+1` -/
def P10749722279709953034.Spec : Prop :=
  ∀ n, (P10749722279709953034.a n : ℤ) = A234638 (n + 1)

end A234638

/-! ## A234638.P13642892691480315316

`lt[val(A000203(A001065(n+1)+1+n), 2), 1]+1`
-/

namespace A234638.P13642892691480315316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (A001065 (n + 1) + 1 + (n : ℤ)).toNat).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234638.P13642892691480315316

namespace A234638

/-- `lt[val(A000203(A001065(n+1)+1+n), 2), 1]+1` -/
def P13642892691480315316.Spec : Prop :=
  ∀ n, (P13642892691480315316.a n : ℤ) = A234638 (n + 1)

end A234638

/-! ## A234638.P8005930450019558618

`lt[2, A020639(∑{d}[∑{d}[n, #], #]+64)]`
-/

namespace A234638.P8005930450019558618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f3 n), d + 64)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A234638.P8005930450019558618

namespace A234638

/-- `lt[2, A020639(∑{d}[∑{d}[n, #], #]+64)]` -/
def P8005930450019558618.Spec : Prop :=
  ∀ n, (P8005930450019558618.a n : ℤ) = A234638 (n + 1)

end A234638

/-! ## A234638.P7773166724599466640

`lt[A193336(A000203(n+1)), A051027(n+1)]+1`
-/

namespace A234638.P7773166724599466640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234638.P7773166724599466640

namespace A234638

/-- `lt[A193336(A000203(n+1)), A051027(n+1)]+1` -/
def P7773166724599466640.Spec : Prop :=
  ∀ n, (P7773166724599466640.a n : ℤ) = A234638 (n + 1)

end A234638

/-! ## A234638.P15772220778337178905

`record[(n+1)*and(1, A033879(A074400(n+1)))]`
-/

namespace A234638.P15772220778337178905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A033879 (A074400 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234638.P15772220778337178905

namespace A234638

/-- `record[(n+1)*and(1, A033879(A074400(n+1)))]` -/
def P15772220778337178905.Spec : Prop :=
  ∀ n, P15772220778337178905.a n = A234638 (n + 1)

end A234638

/-! ## A234638.P3693979867692407871

`eq[1, A286357(A161942(n+1))]+1`
-/

namespace A234638.P3693979867692407871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (A161942 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234638.P3693979867692407871

namespace A234638

/-- `eq[1, A286357(A161942(n+1))]+1` -/
def P3693979867692407871.Spec : Prop :=
  ∀ n, (P3693979867692407871.a n : ℤ) = A234638 (n + 1)

end A234638

/-!
# A234639: Numbers n for which sigma(sigma(sigma(n))) is odd.

The programs for A234639, the canonical program `A234639.P10335545487523328048` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234639 has offset 1).

The definition of A234639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234639.P10335545487523328048

`record[(n+1)*A000203(A000203(A000203(n+1)))%2]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A234639

/-- `record[(n+1)*A000203(A000203(A000203(n+1)))%2]` -/
def P10335545487523328048.Spec : Prop :=
  ∀ n, P10335545487523328048.a n = A234639 (n + 1)

theorem P10335545487523328048.correct : P10335545487523328048.Spec := by
  intro n
  simp only [A234639, Nat.add_sub_cancel]

end A234639

/-! ## A234639.P687202533533348173

`eq[1, A051027(A000203(n+1))%2]+1`
-/

namespace A234639.P687202533533348173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051027 (A000203 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234639.P687202533533348173

namespace A234639

/-- `eq[1, A051027(A000203(n+1))%2]+1` -/
def P687202533533348173.Spec : Prop :=
  ∀ n, (P687202533533348173.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P11730974441189822794

`eq[0, A193336(A051027(n+1))]+1`
-/

namespace A234639.P11730974441189822794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A051027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234639.P11730974441189822794

namespace A234639

/-- `eq[0, A193336(A051027(n+1))]+1` -/
def P11730974441189822794.Spec : Prop :=
  ∀ n, (P11730974441189822794.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P12350627578373383911

`lt[A193336(A051027(n+1)), A000203(n+1)]+1`
-/

namespace A234639.P12350627578373383911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A051027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234639.P12350627578373383911

namespace A234639

/-- `lt[A193336(A051027(n+1)), A000203(n+1)]+1` -/
def P12350627578373383911.Spec : Prop :=
  ∀ n, (P12350627578373383911.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P10077763411369749011

`lt[A193336(A051027(n+1)), A003817(n)+1]+1`
-/

namespace A234639.P10077763411369749011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A051027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234639.P10077763411369749011

namespace A234639

/-- `lt[A193336(A051027(n+1)), A003817(n)+1]+1` -/
def P10077763411369749011.Spec : Prop :=
  ∀ n, (P10077763411369749011.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P17516301058119813502

`lt[A193336(A051027(n+1)), A025431(n)+1]+1`
-/

namespace A234639.P17516301058119813502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A051027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025431 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234639.P17516301058119813502

namespace A234639

/-- `lt[A193336(A051027(n+1)), A025431(n)+1]+1` -/
def P17516301058119813502.Spec : Prop :=
  ∀ n, (P17516301058119813502.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P5099282961621110887

`lt[A193336(A051027(n+1)), A140773(n+1)]+1`
-/

namespace A234639.P5099282961621110887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A051027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234639.P5099282961621110887

namespace A234639

/-- `lt[A193336(A051027(n+1)), A140773(n+1)]+1` -/
def P5099282961621110887.Spec : Prop :=
  ∀ n, (P5099282961621110887.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P17775180457704086954

`lt[A193336(A051027(n+1)), A155828(n+3)]+1`
-/

namespace A234639.P17775180457704086954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A051027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155828 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234639.P17775180457704086954

namespace A234639

/-- `lt[A193336(A051027(n+1)), A155828(n+3)]+1` -/
def P17775180457704086954.Spec : Prop :=
  ∀ n, (P17775180457704086954.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P5977803001191538430

`lt[A193336(A051027(n+1))-1, A063377(n+1)]+1`
-/

namespace A234639.P5977803001191538430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (A051027 (n + 1)).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A234639.P5977803001191538430

namespace A234639

/-- `lt[A193336(A051027(n+1))-1, A063377(n+1)]+1` -/
def P5977803001191538430.Spec : Prop :=
  ∀ n, (P5977803001191538430.a n : ℤ) = A234639 (n + 1)

end A234639

/-! ## A234639.P8252328931601388006

`lt[A025475(n+1)*A193336(A051027(n+1)), 1]+1`
-/

namespace A234639.P8252328931601388006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1) * A193336 (A051027 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A234639.P8252328931601388006

namespace A234639

/-- `lt[A025475(n+1)*A193336(A051027(n+1)), 1]+1` -/
def P8252328931601388006.Spec : Prop :=
  ∀ n, (P8252328931601388006.a n : ℤ) = A234639 (n + 1)

end A234639

/-!
# A234640: Odd numbers n for which sigma(sigma(sigma(n))) is odd.

The programs for A234640, there is no canonical definition to state claims against.
-/

/-! ## A234640.P8885927603532758046

`record[A000265(A234639(n+1))]`
-/

namespace A234640.P8885927603532758046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A234639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234640.P8885927603532758046

/-! ## A234640.P17299059367764829140

`record[A093178(A234639(n+2))]`
-/

namespace A234640.P17299059367764829140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A234639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234640.P17299059367764829140

/-! ## A234640.P11101068699695084481

`filter[A234639(n+1), A000035(#)]`
-/

namespace A234640.P11101068699695084481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A234640.P11101068699695084481

/-! ## A234640.P14916572595320648220

`record[2*n+1-A193336(A051027(2*n+1))]`
-/

namespace A234640.P14916572595320648220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A193336 (A051027 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234640.P14916572595320648220

/-! ## A234640.P1171728291219587499

`eq[gcd(2, n+1)², A051027(A000203(n+1))%2]+1`
-/

namespace A234640.P1171728291219587499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051027 (A000203 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234640.P1171728291219587499

/-! ## A234640.P11559545455448441566

`A004273(record[A003602(A234639(n+1))])`
-/

namespace A234640.P11559545455448441566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A234639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A234640.P11559545455448441566

/-!
# A234641: Odd numbers k such that sigma(sigma(k^2)) is odd.

The programs for A234641, there is no canonical definition to state claims against.
-/

/-! ## A234641.P7283673147727728730

`sqrt(A231484(n+1))`
-/

namespace A234641.P7283673147727728730
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A231484 (n + 1) : ℝ)

end

end A234641.P7283673147727728730

/-! ## A234641.P148733235723920090

`record[and(1, A008847(n+1))*A008847(n+1)]`
-/

namespace A234641.P148733235723920090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A008847 (n + 1)) * A008847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234641.P148733235723920090

/-! ## A234641.P765474994057118654

`root(A231484(n+1), A001316(A001316(n)))`
-/

namespace A234641.P765474994057118654
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231484 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A234641.P765474994057118654

/-! ## A234641.P9418487270422327144

`root(A231484(n+1), A034444(A034444(n+1)))`
-/

namespace A234641.P9418487270422327144
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231484 (n + 1) : ℝ) ^ (1 / (A034444 (A034444 (n + 1)).toNat : ℝ))

end

end A234641.P9418487270422327144

/-! ## A234641.P2537085982472542517

`root(A231484(n+1), A071188(A071188(n+1)))`
-/

namespace A234641.P2537085982472542517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231484 (n + 1) : ℝ) ^ (1 / (A071188 (A071188 (n + 1)).toNat : ℝ))

end

end A234641.P2537085982472542517

/-! ## A234641.P5949683360539977517

`A231484(n+1)^(A005843(n)/A008574(n))`
-/

namespace A234641.P5949683360539977517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231484 (n + 1) : ℝ) ^ ((A005843 n : ℚ) / (A008574 n : ℚ) : ℝ)

end

end A234641.P5949683360539977517

/-! ## A234641.P3007168513086958265

`A231484(n+1)^(A074400(n+1)/A239050(n+1))`
-/

namespace A234641.P3007168513086958265
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231484 (n + 1) : ℝ) ^ ((A074400 (n + 1) : ℚ) / (A239050 (n + 1) : ℚ) : ℝ)

end

end A234641.P3007168513086958265

/-!
# A234643: E.g.f.: Sum_{n>=0} Integral^n (exp(x) + 1)^n dx^n, where integral^n F(x) dx^n is the n-th integration of F(x) with no constant of integration.

The programs for A234643, there is no canonical definition to state claims against.
-/

/-! ## A234643.P10133234931681361385

`∑[floor(root(A198761(n+2), 5))]`
-/

namespace A234643.P10133234931681361385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198761 (n + 2) : ℝ) ^ (1 / (5 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234643.P10133234931681361385

/-! ## A234643.P9066628678747892103

`A342696(A114277(n))+A000079(n)`
-/

namespace A234643.P9066628678747892103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A114277 n).toNat + A000079 n

end

end A234643.P9066628678747892103

/-! ## A234643.P12807266399846936920

`A000079(n)-(A342696(n)-A342696(A114277(n)))`
-/

namespace A234643.P12807266399846936920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A342696 n - A342696 (A114277 n).toNat)

end

end A234643.P12807266399846936920

/-!
# A234644: Primes p with q(p) - 1 also prime, where q(.) is the strict partition function (A000009).

The programs for A234644, there is no canonical definition to state claims against.
-/

/-! ## A234644.P8250860177495596625

`p?[comp[gcd(n, A179150(n+1))]]`
-/

namespace A234644.P8250860177495596625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A179150 (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A234644.P8250860177495596625

/-! ## A234644.P10822863010555728559

`record[A342659(A301678(n)+1)]`
-/

namespace A234644.P10822863010555728559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342659 (A301678 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234644.P10822863010555728559

/-! ## A234644.P16768229413471765077

`record[A342659(A128913(n+2))]`
-/

namespace A234644.P16768229413471765077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342659 (A128913 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234644.P16768229413471765077

/-! ## A234644.P3163147660428611627

`p?[eq[1, A032741(A111133(n))]]`
-/

namespace A234644.P3163147660428611627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A111133 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A234644.P3163147660428611627

/-! ## A234644.P15368549718876721850

`p?[∑[A080905(A081856(n+1))]]`
-/

namespace A234644.P15368549718876721850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080905 (A081856 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234644.P15368549718876721850

/-!
# A234645: Sum of the divisors of n^3+1.

The programs for A234645, the canonical program `A234645.P14684045542751646639` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234645 has offset 0).

The definition of A234645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234645.P14684045542751646639

`∑{d}[n^3+1, #]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A234645

/-- `∑{d}[n^3+1, #]` -/
def P14684045542751646639.Spec : Prop :=
  ∀ n, (P14684045542751646639.a n : ℤ) = A234645 n

theorem P14684045542751646639.correct : P14684045542751646639.Spec := by
  intro n
  simp only [A234645]

end A234645

/-! ## A234645.P16832653863479151101

`2*∑{d}[n*n²+1, #/2]`
-/

namespace A234645.P16832653863479151101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 2)

end

end A234645.P16832653863479151101

namespace A234645

/-- `2*∑{d}[n*n²+1, #/2]` -/
def P16832653863479151101.Spec : Prop :=
  ∀ n, P16832653863479151101.a n = (A234645 n : ℚ)

end A234645

/-! ## A234645.P2919738352316372000

`abs(1-∑{d}[n*n²+1, #])+1`
-/

namespace A234645.P2919738352316372000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)| + 1

end

end A234645.P2919738352316372000

namespace A234645

/-- `abs(1-∑{d}[n*n²+1, #])+1` -/
def P2919738352316372000.Spec : Prop :=
  ∀ n, P2919738352316372000.a n = A234645 n

end A234645

/-! ## A234645.P8110348174706434899

`floor(sqrt(∑{d}[n*n²+1, #]²+1))`
-/

namespace A234645.P8110348174706434899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((∑ d ∈ Nat.divisors (f1 n), d) ^ 2 + 1)

end

end A234645.P8110348174706434899

namespace A234645

/-- `floor(sqrt(∑{d}[n*n²+1, #]²+1))` -/
def P8110348174706434899.Spec : Prop :=
  ∀ n, (P8110348174706434899.a n : ℤ) = A234645 n

end A234645

/-! ## A234645.P12055399237200669063

`∑{d}[n*n²+1, #]%(2*(n+1))²²`
-/

namespace A234645.P12055399237200669063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % ((2 * (n + 1)) ^ 2) ^ 2

end

end A234645.P12055399237200669063

namespace A234645

/-- `∑{d}[n*n²+1, #]%(2*(n+1))²²` -/
def P12055399237200669063.Spec : Prop :=
  ∀ n, (P12055399237200669063.a n : ℤ) = A234645 n

end A234645

/-! ## A234645.P9425996859550863829

`root(∑{d}[A000578(n)+1, #], 2)²`
-/

namespace A234645.P9425996859550863829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A234645.P9425996859550863829

namespace A234645

/-- `root(∑{d}[A000578(n)+1, #], 2)²` -/
def P9425996859550863829.Spec : Prop :=
  ∀ n, P9425996859550863829.a n = (A234645 n : ℝ)

end A234645

/-! ## A234645.P11392916793990086631

`or(∑{d}[A000578(n)+1, #], A000007(n))`
-/

namespace A234645.P11392916793990086631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A000007 n)

end

end A234645.P11392916793990086631

namespace A234645

/-- `or(∑{d}[A000578(n)+1, #], A000007(n))` -/
def P11392916793990086631.Spec : Prop :=
  ∀ n, P11392916793990086631.a n = A234645 n

end A234645

/-! ## A234645.P4973401912382445244

`A000007(n+1)+∑{d}[A000578(n)+1, #]`
-/

namespace A234645.P4973401912382445244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A234645.P4973401912382445244

namespace A234645

/-- `A000007(n+1)+∑{d}[A000578(n)+1, #]` -/
def P4973401912382445244.Spec : Prop :=
  ∀ n, P4973401912382445244.a n = A234645 n

end A234645

/-! ## A234645.P12700328339004857433

`lcm(A001221(n+2), ∑{d}[A000578(n)+1, #])`
-/

namespace A234645.P12700328339004857433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A234645.P12700328339004857433

namespace A234645

/-- `lcm(A001221(n+2), ∑{d}[A000578(n)+1, #])` -/
def P12700328339004857433.Spec : Prop :=
  ∀ n, (P12700328339004857433.a n : ℤ) = A234645 n

end A234645

/-! ## A234645.P4320467079098305616

`and(-A180466(n+1), ∑{d}[A000578(n)+1, #])`
-/

namespace A234645.P4320467079098305616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A180466 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A234645.P4320467079098305616

namespace A234645

/-- `and(-A180466(n+1), ∑{d}[A000578(n)+1, #])` -/
def P4320467079098305616.Spec : Prop :=
  ∀ n, P4320467079098305616.a n = A234645 n

end A234645

/-! ## A234645.P8377118794123946301

`∑{d}[A000578(n)+1, #]+char[A051264(n+1)]`
-/

namespace A234645.P8377118794123946301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A234645.P8377118794123946301

namespace A234645

/-- `∑{d}[A000578(n)+1, #]+char[A051264(n+1)]` -/
def P8377118794123946301.Spec : Prop :=
  ∀ n, (P8377118794123946301.a n : ℤ) = A234645 n

end A234645

/-! ## A234645.P13276031578402647624

`∑{d}[A000578(n)+1, #]*A019427(2*(n+1))`
-/

namespace A234645.P13276031578402647624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) * A019427 (2 * (n + 1))

end

end A234645.P13276031578402647624

namespace A234645

/-- `∑{d}[A000578(n)+1, #]*A019427(2*(n+1))` -/
def P13276031578402647624.Spec : Prop :=
  ∀ n, P13276031578402647624.a n = A234645 n

end A234645

/-! ## A234645.P3239865423122190165

`∑{d}[A000578(n)+1, #]*A322584(2*n+1)`
-/

namespace A234645.P3239865423122190165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) * A322584 (2 * n + 1)

end

end A234645.P3239865423122190165

namespace A234645

/-- `∑{d}[A000578(n)+1, #]*A322584(2*n+1)` -/
def P3239865423122190165.Spec : Prop :=
  ∀ n, P3239865423122190165.a n = A234645 n

end A234645

/-! ## A234645.P13782011182891189458

`∑{d}[A000578(n)+1, #]*A286539(A060632(n))`
-/

namespace A234645.P13782011182891189458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) * A286539 (A060632 n).toNat

end

end A234645.P13782011182891189458

namespace A234645

/-- `∑{d}[A000578(n)+1, #]*A286539(A060632(n))` -/
def P13782011182891189458.Spec : Prop :=
  ∀ n, P13782011182891189458.a n = A234645 n

end A234645

/-! ## A234645.P12942710519456464875

`∑{d}[A000578(n)+1, #]*A353468(A259936(n+1))`
-/

namespace A234645.P12942710519456464875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) * A353468 (A259936 (n + 1)).toNat

end

end A234645.P12942710519456464875

namespace A234645

/-- `∑{d}[A000578(n)+1, #]*A353468(A259936(n+1))` -/
def P12942710519456464875.Spec : Prop :=
  ∀ n, P12942710519456464875.a n = A234645 n

end A234645

/-!
# A234646: Sum of the distinct prime divisors of n^3 + 1.

The programs for A234646, the canonical program `A234646.P14047031751974978695` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234646 has offset 0).

The definition of A234646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234646.P14047031751974978695

`A005070((1-n)²+n)+∑{p}[n+1, #]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A234646

/-- `A005070((1-n)²+n)+∑{p}[n+1, #]` -/
def P14047031751974978695.Spec : Prop :=
  ∀ n, P14047031751974978695.a n = A234646 n

theorem P14047031751974978695.correct : P14047031751974978695.Spec := by
  intro n
  simp only [A234646]

end A234646

/-! ## A234646.P9359456019126972242

`A008472(n+1)+A005070((1-n)²+n)`
-/

namespace A234646.P9359456019126972242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A005070 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A234646.P9359456019126972242

namespace A234646

/-- `A008472(n+1)+A005070((1-n)²+n)` -/
def P9359456019126972242.Spec : Prop :=
  ∀ n, P9359456019126972242.a n = A234646 n

end A234646

/-! ## A234646.P10660301367385478851

`∑{p}[n^3+1, #]`
-/

namespace A234646.P10660301367385478851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A234646.P10660301367385478851

namespace A234646

/-- `∑{p}[n^3+1, #]` -/
def P10660301367385478851.Spec : Prop :=
  ∀ n, (P10660301367385478851.a n : ℤ) = A234646 n

end A234646

/-! ## A234646.P6153140974540410085

`∑{p}[A000578(n)+1, #]%(A134067(n)+1)`
-/

namespace A234646.P6153140974540410085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) (A134067 n + 1)

end

end A234646.P6153140974540410085

namespace A234646

/-- `∑{p}[A000578(n)+1, #]%(A134067(n)+1)` -/
def P6153140974540410085.Spec : Prop :=
  ∀ n, P6153140974540410085.a n = A234646 n

end A234646

/-!
# A234647: Primes of the form q(p) - 1, where p is a prime and q(.) is the strict partition function (A000009).

The programs for A234647, there is no canonical definition to state claims against.
-/

/-! ## A234647.P16751562667501195155

`A079124(A234644(n+1))`
-/

namespace A234647.P16751562667501195155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079124 (A234644 (n + 1)).toNat

end

end A234647.P16751562667501195155

/-! ## A234647.P2734114562792254567

`A111133(p?[A234644(n+1)])`
-/

namespace A234647.P2734114562792254567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234647.P2734114562792254567

/-! ## A234647.P16751215016136411948

`A111133(or(1, A234644(n+1)))`
-/

namespace A234647.P16751215016136411948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (Int.lor 1 (A234644 (n + 1))).toNat

end

end A234647.P16751215016136411948

/-! ## A234647.P11447456223834336667

`A000009(A234644(n+1))-A007318(∑[n])`
-/

namespace A234647.P11447456223834336667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A234644 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234647.P11447456223834336667

/-! ## A234647.P11940121282164851490

`A057428(2*(n+2))-A081360(A234644(n+1))`
-/

namespace A234647.P11940121282164851490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * (n + 2)) - A081360 (A234644 (n + 1)).toNat

end

end A234647.P11940121282164851490

/-!
# A234648: Even sums of 2 consecutive odious numbers (A000069).

The programs for A234648, the canonical program `A234648.P5813461578857952792` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234648 has offset 1).

The definition of A234648 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A225822, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A234648.P5813461578857952792

`A225822(n+1)+(-1)^(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A234648

/-- `A225822(n+1)+(-1)^(n+1)` -/
def P5813461578857952792.Spec : Prop :=
  ∀ n, P5813461578857952792.a n = A234648 (n + 1)

theorem P5813461578857952792.correct : P5813461578857952792.Spec := by
  intro n
  simp only [A234648, Nat.add_sub_cancel]

end A234648

/-! ## A234648.P17662167216586418199

`A234011(A036554(n+1))`
-/

namespace A234648.P17662167216586418199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (A036554 (n + 1)).toNat

end

end A234648.P17662167216586418199

namespace A234648

/-- `A234011(A036554(n+1))` -/
def P17662167216586418199.Spec : Prop :=
  ∀ n, P17662167216586418199.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P9403632488387616120

`2*(A131323(n+1)+A000035(n))`
-/

namespace A234648.P9403632488387616120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131323 (n + 1) + A000035 n)

end

end A234648.P9403632488387616120

namespace A234648

/-- `2*(A131323(n+1)+A000035(n))` -/
def P9403632488387616120.Spec : Prop :=
  ∀ n, P9403632488387616120.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P5795734976272281641

`2*(A108269(n+1)-A059841(n))`
-/

namespace A234648.P5795734976272281641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A108269 (n + 1) - A059841 n)

end

end A234648.P5795734976272281641

namespace A234648

/-- `2*(A108269(n+1)-A059841(n))` -/
def P5795734976272281641.Spec : Prop :=
  ∀ n, P5795734976272281641.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P13005985011571394614

`2*(A108269(n+1)-A056594(n)²)`
-/

namespace A234648.P13005985011571394614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A108269 (n + 1) - A056594 n ^ 2)

end

end A234648.P13005985011571394614

namespace A234648

/-- `2*(A108269(n+1)-A056594(n)²)` -/
def P13005985011571394614.Spec : Prop :=
  ∀ n, P13005985011571394614.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P4671636498501821805

`2*∪[A131323(2*n+1), A108269(2*(n+1))]`
-/

namespace A234648.P4671636498501821805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108269 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A234648.P4671636498501821805

namespace A234648

/-- `2*∪[A131323(2*n+1), A108269(2*(n+1))]` -/
def P4671636498501821805.Spec : Prop :=
  ∀ n, (P4671636498501821805.a n : ℤ) = A234648 (n + 1)

end A234648

/-! ## A234648.P6443397678420677409

`2*(A131323(n+1)+A010060(A121539(n+1)))`
-/

namespace A234648.P6443397678420677409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131323 (n + 1) + A010060 (A121539 (n + 1)).toNat)

end

end A234648.P6443397678420677409

namespace A234648

/-- `2*(A131323(n+1)+A010060(A121539(n+1)))` -/
def P6443397678420677409.Spec : Prop :=
  ∀ n, P6443397678420677409.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P11092893164799854059

`2*(A286056(2*(n+1))-2*(n+1))`
-/

namespace A234648.P11092893164799854059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A286056 (2 * (n + 1)) - (2 * (n + 1) : ℤ))

end

end A234648.P11092893164799854059

namespace A234648

/-- `2*(A286056(2*(n+1))-2*(n+1))` -/
def P11092893164799854059.Spec : Prop :=
  ∀ n, P11092893164799854059.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P9934112148689610193

`2*A344346(A014601(n)+1)`
-/

namespace A234648.P9934112148689610193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344346 (A014601 n + 1).toNat

end

end A234648.P9934112148689610193

namespace A234648

/-- `2*A344346(A014601(n)+1)` -/
def P9934112148689610193.Spec : Prop :=
  ∀ n, P9934112148689610193.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P8368794287623407417

`2*A344346(A042948(n+1))`
-/

namespace A234648.P8368794287623407417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344346 (A042948 (n + 1)).toNat

end

end A234648.P8368794287623407417

namespace A234648

/-- `2*A344346(A042948(n+1))` -/
def P8368794287623407417.Spec : Prop :=
  ∀ n, P8368794287623407417.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P6631280738468223509

`2*(A081706(2*(n+1))+A000035(n))`
-/

namespace A234648.P6631280738468223509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081706 (2 * (n + 1)) + A000035 n)

end

end A234648.P6631280738468223509

namespace A234648

/-- `2*(A081706(2*(n+1))+A000035(n))` -/
def P6631280738468223509.Spec : Prop :=
  ∀ n, P6631280738468223509.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P12035989908611109038

`2*(A249034(n+1)-A001285(A171947(n+1)))`
-/

namespace A234648.P12035989908611109038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A249034 (n + 1) - A001285 (A171947 (n + 1)).toNat)

end

end A234648.P12035989908611109038

namespace A234648

/-- `2*(A249034(n+1)-A001285(A171947(n+1)))` -/
def P12035989908611109038.Spec : Prop :=
  ∀ n, P12035989908611109038.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P8481772782333667153

`A234011(A079523(n+1)+1)`
-/

namespace A234648.P8481772782333667153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (A079523 (n + 1) + 1).toNat

end

end A234648.P8481772782333667153

namespace A234648

/-- `A234011(A079523(n+1)+1)` -/
def P8481772782333667153.Spec : Prop :=
  ∀ n, P8481772782333667153.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P16979162504731417257

`A234011(A162648(n+1)+2)`
-/

namespace A234648.P16979162504731417257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (A162648 (n + 1) + 2).toNat

end

end A234648.P16979162504731417257

namespace A234648

/-- `A234011(A162648(n+1)+2)` -/
def P16979162504731417257.Spec : Prop :=
  ∀ n, P16979162504731417257.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P3943257516370299616

`A234011(2*A003159(n+1))`
-/

namespace A234648.P3943257516370299616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (2 * A003159 (n + 1)).toNat

end

end A234648.P3943257516370299616

namespace A234648

/-- `A234011(2*A003159(n+1))` -/
def P3943257516370299616.Spec : Prop :=
  ∀ n, P3943257516370299616.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P14651209240962608126

`A234011(A036552(2*(n+1)))`
-/

namespace A234648.P14651209240962608126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (A036552 (2 * (n + 1))).toNat

end

end A234648.P14651209240962608126

namespace A234648

/-- `A234011(A036552(2*(n+1)))` -/
def P14651209240962608126.Spec : Prop :=
  ∀ n, P14651209240962608126.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P9157721609350218096

`A234011(A108269(n+1)/2)`
-/

namespace A234648.P9157721609350218096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (SequenceMachineLib.roundAway ((A108269 (n + 1) : ℚ) / 2)).toNat

end

end A234648.P9157721609350218096

namespace A234648

/-- `A234011(A108269(n+1)/2)` -/
def P9157721609350218096.Spec : Prop :=
  ∀ n, P9157721609350218096.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P2593620123659450777

`filter[A234011(n+1), A217586(#)]`
-/

namespace A234648.P2593620123659450777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A234648.P2593620123659450777

namespace A234648

/-- `filter[A234011(n+1), A217586(#)]` -/
def P2593620123659450777.Spec : Prop :=
  ∀ n, P2593620123659450777.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P3907340605590864680

`filter[A234011(n+1), A354034(#)]`
-/

namespace A234648.P3907340605590864680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A234648.P3907340605590864680

namespace A234648

/-- `filter[A234011(n+1), A354034(#)]` -/
def P3907340605590864680.Spec : Prop :=
  ∀ n, P3907340605590864680.a n = A234648 (n + 1)

end A234648

/-! ## A234648.P11313209529519114998

`A129771(A079523(n+1)+1)+1`
-/

namespace A234648.P11313209529519114998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (A079523 (n + 1) + 1).toNat + 1

end

end A234648.P11313209529519114998

namespace A234648

/-- `A129771(A079523(n+1)+1)+1` -/
def P11313209529519114998.Spec : Prop :=
  ∀ n, P11313209529519114998.a n = A234648 (n + 1)

end A234648

/-!
# A234649: Difference between the first members of the widest and the narrowest prime pair having an arithmetic mean of n.

The programs for A234649, there is no canonical definition to state claims against.
-/

/-! ## A234649.P12482149910339183813

`A078587(n+8)-A002373(n+8)`
-/

namespace A234649.P12482149910339183813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (n + 8) - A002373 (n + 8)

end

end A234649.P12482149910339183813

/-!
# A234650: Number of (n+1) X (n+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234650, there is no canonical definition to state claims against.
-/

/-! ## A234650.P11395404023179983210

`A234658(∑[4*n]+1)`
-/

namespace A234650.P11395404023179983210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234650.P11395404023179983210

/-! ## A234650.P15334931176042504962

`lcm(2, A234658(A001844(n)))`
-/

namespace A234650.P15334931176042504962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234658 (A001844 n).toNat)

end

end A234650.P15334931176042504962

/-! ## A234650.P4888747533490249649

`record[A003982(n)*A234658(n+1)]`
-/

namespace A234650.P4888747533490249649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234650.P4888747533490249649

/-! ## A234650.P4420510395818786182

`record[A214505(n)*A234658(n+1)]`
-/

namespace A234650.P4420510395818786182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A234658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234650.P4420510395818786182

/-! ## A234650.P14105853358292337744

`A234658(A001844(n))+A185284(n)`
-/

namespace A234650.P14105853358292337744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A001844 n).toNat + A185284 n

end

end A234650.P14105853358292337744

/-!
# A234651: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234651, there is no canonical definition to state claims against.
-/

/-! ## A234651.P10271869273684457476

`A234658(∑[n]+1)`
-/

namespace A234651.P10271869273684457476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234651.P10271869273684457476

/-! ## A234651.P422942386890598484

`record[A234658(n+1)]`
-/

namespace A234651.P422942386890598484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234651.P422942386890598484

/-! ## A234651.P18439428349471388463

`lcm(2, A234658(A000124(n)))`
-/

namespace A234651.P18439428349471388463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234658 (A000124 n).toNat)

end

end A234651.P18439428349471388463

/-! ## A234651.P11721902365775039521

`lcm(4, A234658(∑[A028310(n)]))`
-/

namespace A234651.P11721902365775039521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A234658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A234651.P11721902365775039521

/-! ## A234651.P2393098683536039671

`A326680(n)+A234658(A000124(n))`
-/

namespace A234651.P2393098683536039671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 n + A234658 (A000124 n).toNat

end

end A234651.P2393098683536039671

/-!
# A234652: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234652, there is no canonical definition to state claims against.
-/

/-! ## A234652.P4688436126594646054

`A234658(∑[n+1]+2)`
-/

namespace A234652.P4688436126594646054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234652.P4688436126594646054

/-! ## A234652.P6112457997109355372

`lcm(2, A234658(A133263(n+1)))`
-/

namespace A234652.P6112457997109355372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234658 (A133263 (n + 1)).toNat)

end

end A234652.P6112457997109355372

/-! ## A234652.P4490259734373380225

`record[gcd(A025581(n), A234658(n+3))]`
-/

namespace A234652.P4490259734373380225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A234658 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234652.P4490259734373380225

/-! ## A234652.P16750858828992487357

`record[gcd(n%A209518(n)², A234658(n+2))]`
-/

namespace A234652.P16750858828992487357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (n : ℤ) (A209518 n ^ 2)) (A234658 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234652.P16750858828992487357

/-! ## A234652.P2379580794586631553

`A234658(A133263(n+1))*A330098(n+1)`
-/

namespace A234652.P2379580794586631553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A133263 (n + 1)).toNat * A330098 (n + 1)

end

end A234652.P2379580794586631553

/-!
# A234653: Number of (n+1) X (3+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234653, there is no canonical definition to state claims against.
-/

/-! ## A234653.P1383874852035161443

`A234658(∑[n+2]+4)`
-/

namespace A234653.P1383874852035161443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234653.P1383874852035161443

/-! ## A234653.P1060035714046136457

`lcm(2, A234658(A167614(n+1)))`
-/

namespace A234653.P1060035714046136457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234658 (A167614 (n + 1)).toNat)

end

end A234653.P1060035714046136457

/-! ## A234653.P8957733927660220593

`record[gcd(A025581(n), A234658(n+4))]`
-/

namespace A234653.P8957733927660220593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A234658 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234653.P8957733927660220593

/-! ## A234653.P8444777613856335077

`record[root(A234658(n+4), A208721(n+1))]`
-/

namespace A234653.P8444777613856335077
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234658 (n + 4) : ℝ) ^ (1 / (A208721 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234653.P8444777613856335077

/-! ## A234653.P16428975417106317795

`record[A234658(A167614(gcd(xor(1, n²), ∑[n])))]`
-/

namespace A234653.P16428975417106317795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A167614 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234653.P16428975417106317795

/-!
# A234654: Number of (n+1) X (4+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234654, there is no canonical definition to state claims against.
-/

/-! ## A234654.P10306289484749177198

`A234658(∑[n+3]+7)`
-/

namespace A234654.P10306289484749177198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234654.P10306289484749177198

/-! ## A234654.P14866613877542272383

`lcm(2, A234658(A000217(n+3)+4))`
-/

namespace A234654.P14866613877542272383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234658 (A000217 (n + 3) + 4).toNat)

end

end A234654.P14866613877542272383

/-! ## A234654.P18064140286754335979

`A007318(C(2, n))*A234658(A000217(n+3)+4)`
-/

namespace A234654.P18064140286754335979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A234658 (A000217 (n + 3) + 4).toNat

end

end A234654.P18064140286754335979

/-! ## A234654.P2421184669604630108

`A007318(and(2, -n))*A234658(A000217(n+3)+4)`
-/

namespace A234654.P2421184669604630108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 (-(n : ℤ))).toNat * A234658 (A000217 (n + 3) + 4).toNat

end

end A234654.P2421184669604630108

/-! ## A234654.P2883143431327255557

`A000041(C(2, n+2))*A234658(A000217(n+3)+4)`
-/

namespace A234654.P2883143431327255557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A234658 (A000217 (n + 3) + 4).toNat

end

end A234654.P2883143431327255557

/-!
# A234655: Number of (n+1) X (5+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234655, there is no canonical definition to state claims against.
-/

/-! ## A234655.P15856881935329395236

`A234658(A374005(n+1))`
-/

namespace A234655.P15856881935329395236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A374005 (n + 1)).toNat

end

end A234655.P15856881935329395236

/-! ## A234655.P16343177164742874190

`A234658(A167499(n+3))`
-/

namespace A234655.P16343177164742874190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A167499 (n + 3)).toNat

end

end A234655.P16343177164742874190

/-! ## A234655.P5906698849586498593

`A234658(A155212(n)+13)`
-/

namespace A234655.P5906698849586498593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A155212 n + 13).toNat

end

end A234655.P5906698849586498593

/-! ## A234655.P17356502446944845675

`A234658(A056000(n)+15)`
-/

namespace A234655.P17356502446944845675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A056000 n + 15).toNat

end

end A234655.P17356502446944845675

/-! ## A234655.P7476106275794285616

`A234658(eq[7, A066657(n)])`
-/

namespace A234655.P7476106275794285616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234655.P7476106275794285616

/-!
# A234656: Number of (n+1) X (6+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234656, there is no canonical definition to state claims against.
-/

/-! ## A234656.P7930211706717685048

`A234658(∑[n+5]+16)`
-/

namespace A234656.P7930211706717685048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A234656.P7930211706717685048

/-! ## A234656.P11299561183531375520

`A234658(A052905(n+3))+A000122(3*n+2)`
-/

namespace A234656.P11299561183531375520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A052905 (n + 3)).toNat + A000122 (3 * n + 2)

end

end A234656.P11299561183531375520

/-!
# A234657: Number of (n+1) X (7+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234657, there is no canonical definition to state claims against.
-/

/-! ## A234657.P7128580809378194116

`A234658(A374008(n+1))`
-/

namespace A234657.P7128580809378194116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A374008 (n + 1)).toNat

end

end A234657.P7128580809378194116

/-! ## A234657.P8088924658032439342

`A234658(A056119(n)+28)`
-/

namespace A234657.P8088924658032439342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A056119 n + 28).toNat

end

end A234657.P8088924658032439342

/-! ## A234657.P11243974760988759127

`A234658(eq[11, A066657(n)])`
-/

namespace A234657.P11243974760988759127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234657.P11243974760988759127

/-! ## A234657.P5916823276892583635

`A234658(A000096(n+5)+8)`
-/

namespace A234657.P5916823276892583635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A000096 (n + 5) + 8).toNat

end

end A234657.P5916823276892583635

/-! ## A234657.P8377315895477349488

`A234658(A000217(n+6)+7)`
-/

namespace A234657.P8377315895477349488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234658 (A000217 (n + 6) + 7).toNat

end

end A234657.P8377315895477349488

/-!
# A234659: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234659, there is no canonical definition to state claims against.
-/

/-! ## A234659.P2344871438837415742

`A234665(∑[n]+1)`
-/

namespace A234659.P2344871438837415742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234659.P2344871438837415742

/-! ## A234659.P3978894215211491471

`record[A234665(n+1)]`
-/

namespace A234659.P3978894215211491471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234659.P3978894215211491471

/-! ## A234659.P11349729668627331788

`lcm(2, A234665(A000124(n)))`
-/

namespace A234659.P11349729668627331788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234665 (A000124 n).toNat)

end

end A234659.P11349729668627331788

/-! ## A234659.P9165933162984982912

`A234665(A000124(n))+A011730(n)`
-/

namespace A234659.P9165933162984982912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A000124 n).toNat + A011730 n

end

end A234659.P9165933162984982912

/-! ## A234659.P12279856767772494005

`A234665(A000124(n))+A025442(n)`
-/

namespace A234659.P12279856767772494005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A000124 n).toNat + A025442 n

end

end A234659.P12279856767772494005

/-!
# A234660: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234660, there is no canonical definition to state claims against.
-/

/-! ## A234660.P5925639543862112142

`A234665(∑[n+1]+2)`
-/

namespace A234660.P5925639543862112142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234660.P5925639543862112142

/-! ## A234660.P9845949939558593205

`record[root(A234665(n+2), A002260(n+1))]`
-/

namespace A234660.P9845949939558593205
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234665 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234660.P9845949939558593205

/-! ## A234660.P12989486245434729971

`record[root(A234665(n+2), A008517(n+1))]`
-/

namespace A234660.P12989486245434729971
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234665 (n + 2) : ℝ) ^ (1 / (A008517 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234660.P12989486245434729971

/-! ## A234660.P924876024945920322

`record[A234665(abs(A201163(n)))]`
-/

namespace A234660.P924876024945920322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234660.P924876024945920322

/-! ## A234660.P13271048475100207335

`A234665(A000096(n+1))+A003982(2*n+1)`
-/

namespace A234660.P13271048475100207335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A000096 (n + 1)).toNat + A003982 (2 * n + 1)

end

end A234660.P13271048475100207335

/-!
# A234661: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234661, there is no canonical definition to state claims against.
-/

/-! ## A234661.P13338907600907409865

`A234665(∑[n+2]+4)`
-/

namespace A234661.P13338907600907409865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234661.P13338907600907409865

/-! ## A234661.P3455842839924197750

`lcm(2, A234665(A167614(n+1)))`
-/

namespace A234661.P3455842839924197750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234665 (A167614 (n + 1)).toNat)

end

end A234661.P3455842839924197750

/-! ## A234661.P11187553980889908090

`record[A234665(n+4)/A027465(n)]`
-/

namespace A234661.P11187553980889908090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234665 (n + 4) : ℚ) / (A027465 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234661.P11187553980889908090

/-! ## A234661.P996112540212146774

`record[root(A234665(n+4), A125232(n+1))]`
-/

namespace A234661.P996112540212146774
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234665 (n + 4) : ℝ) ^ (1 / (A125232 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234661.P996112540212146774

/-! ## A234661.P13600079959943539200

`record[root(A234665(n+4), A218592(n+1))]`
-/

namespace A234661.P13600079959943539200
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234665 (n + 4) : ℝ) ^ (1 / (A218592 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234661.P13600079959943539200

/-!
# A234662: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234662, there is no canonical definition to state claims against.
-/

/-! ## A234662.P10411175150314308437

`A234665(∑[n+3]+7)`
-/

namespace A234662.P10411175150314308437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234662.P10411175150314308437

/-! ## A234662.P13308101916104158391

`A234665(eq[5, A131818(n+1)])%A234664(n+1)`
-/

namespace A234662.P13308101916104158391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A234664 (n + 1))

end

end A234662.P13308101916104158391

/-! ## A234662.P381819621555794466

`lcm(2, A234665(A141214(n+1)))`
-/

namespace A234662.P381819621555794466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234665 (A141214 (n + 1)).toNat)

end

end A234662.P381819621555794466

/-! ## A234662.P900399855430528470

`A234665(eq[3, A193592(n)])%A234664(n+1)`
-/

namespace A234662.P900399855430528470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A234664 (n + 1))

end

end A234662.P900399855430528470

/-!
# A234663: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234663, there is no canonical definition to state claims against.
-/

/-! ## A234663.P15420948831981316047

`A234665(A167499(n+3))`
-/

namespace A234663.P15420948831981316047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A167499 (n + 3)).toNat

end

end A234663.P15420948831981316047

/-! ## A234663.P5257822409954086457

`A234665(A155212(n)+13)`
-/

namespace A234663.P5257822409954086457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A155212 n + 13).toNat

end

end A234663.P5257822409954086457

/-! ## A234663.P9558137198338470576

`A234665(A056000(n)+15)`
-/

namespace A234663.P9558137198338470576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A056000 n + 15).toNat

end

end A234663.P9558137198338470576

/-! ## A234663.P7636787546946595618

`A234665(eq[7, A066657(n)])`
-/

namespace A234663.P7636787546946595618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234663.P7636787546946595618

/-! ## A234663.P13418067760342035532

`A234665(A167487(n+3)-2)`
-/

namespace A234663.P13418067760342035532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A167487 (n + 3) - 2).toNat

end

end A234663.P13418067760342035532

/-!
# A234664: Number of (n+1) X (6+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234664, there is no canonical definition to state claims against.
-/

/-! ## A234664.P8600797513433446632

`A234665(A000217(n+5)+6)`
-/

namespace A234664.P8600797513433446632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A000217 (n + 5) + 6).toNat

end

end A234664.P8600797513433446632

/-! ## A234664.P8049803985693799722

`A234665(A141214(n+2)+9)`
-/

namespace A234664.P8049803985693799722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A141214 (n + 2) + 9).toNat

end

end A234664.P8049803985693799722

/-! ## A234664.P6705670740088969709

`A234665(A161680(n+6)+6)`
-/

namespace A234664.P6705670740088969709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A161680 (n + 6) + 6).toNat

end

end A234664.P6705670740088969709

/-! ## A234664.P11296511362433583236

`A234665(eq[7, A131818(n+1)])`
-/

namespace A234664.P11296511362433583236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234664.P11296511362433583236

/-! ## A234664.P3582580179008919431

`A234665(A112355(n+4)-n)`
-/

namespace A234664.P3582580179008919431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234665 (A112355 (n + 4) - (n : ℤ)).toNat

end

end A234664.P3582580179008919431

/-!
# A234666: Number of combinations for the sum of 6 different numbers from 1 to 49.

The programs for A234666, there is no canonical definition to state claims against.
-/

/-! ## A234666.P16054571726921669296

`A001402(n)-A002262(A010894(n))`
-/

namespace A234666.P16054571726921669296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A002262 (A010894 (n + 21)).toNat

end

end A234666.P16054571726921669296

/-!
# A234667: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234667, there is no canonical definition to state claims against.
-/

/-! ## A234667.P16211067023572732601

`A234672(∑[n]+1)`
-/

namespace A234667.P16211067023572732601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234667.P16211067023572732601

/-! ## A234667.P138961262987092560

`record[A234672(n+1)]`
-/

namespace A234667.P138961262987092560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234667.P138961262987092560

/-! ## A234667.P10711722584110417673

`lcm(2, A234672(A000124(n)))`
-/

namespace A234667.P10711722584110417673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234672 (A000124 n).toNat)

end

end A234667.P10711722584110417673

/-! ## A234667.P8659089220696383637

`record[A234672(A008619(n))-n%2]`
-/

namespace A234667.P8659089220696383637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (A008619 n).toNat - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234667.P8659089220696383637

/-! ## A234667.P6183004119053891914

`A234672(A000124(n))/A260340(n)`
-/

namespace A234667.P6183004119053891914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234672 (A000124 n).toNat : ℚ) / (A260340 n : ℚ)

end

end A234667.P6183004119053891914

/-!
# A234668: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234668, there is no canonical definition to state claims against.
-/

/-! ## A234668.P1346778824656450854

`A234672(∑[n+1]+2)`
-/

namespace A234668.P1346778824656450854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234668.P1346778824656450854

/-! ## A234668.P13610521103002139280

`record[A234672(A220693(n+1)+2)]`
-/

namespace A234668.P13610521103002139280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (A220693 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234668.P13610521103002139280

/-! ## A234668.P15325577089702852150

`record[A010054(n)*A234672(n+2)]`
-/

namespace A234668.P15325577089702852150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234672 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234668.P15325577089702852150

/-! ## A234668.P14981801190046382126

`record[A234672(n+3)/A053122(n)]`
-/

namespace A234668.P14981801190046382126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234672 (n + 3) : ℚ) / (A053122 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234668.P14981801190046382126

/-! ## A234668.P12563201703315236293

`record[gcd(A002262(n), A234672(n+2))]`
-/

namespace A234668.P12563201703315236293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234672 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234668.P12563201703315236293

/-!
# A234669: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234669, there is no canonical definition to state claims against.
-/

/-! ## A234669.P3789067277480918647

`A234672(∑[n+2]+4)`
-/

namespace A234669.P3789067277480918647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234669.P3789067277480918647

/-! ## A234669.P15624853914750880884

`lcm(2, A234672(A167614(n+1)))`
-/

namespace A234669.P15624853914750880884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234672 (A167614 (n + 1)).toNat)

end

end A234669.P15624853914750880884

/-! ## A234669.P9183738557788329271

`A235145(n)+A234672(A167614(n+1))`
-/

namespace A234669.P9183738557788329271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 n + A234672 (A167614 (n + 1)).toNat

end

end A234669.P9183738557788329271

/-! ## A234669.P15935517191306238164

`A309632(n)+A234672(A167614(n+1))`
-/

namespace A234669.P15935517191306238164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309632 n + A234672 (A167614 (n + 1)).toNat

end

end A234669.P15935517191306238164

/-! ## A234669.P14765404642553176253

`A326685(n)+A234672(A167614(n+1))`
-/

namespace A234669.P14765404642553176253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A234672 (A167614 (n + 1)).toNat

end

end A234669.P14765404642553176253

/-!
# A234670: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234670, there is no canonical definition to state claims against.
-/

/-! ## A234670.P4906217700385120960

`A234672(∑[n+3]+7)`
-/

namespace A234670.P4906217700385120960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234670.P4906217700385120960

/-! ## A234670.P386130071368034968

`A234672(A141214(n)+7)+char[8]`
-/

namespace A234670.P386130071368034968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A234670.P386130071368034968

/-! ## A234670.P2560593110858778730

`A234672(A052905(n)+9)+char[8]`
-/

namespace A234670.P2560593110858778730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A234670.P2560593110858778730

/-! ## A234670.P9998688810518605282

`A234672(A055999(n)+10)+char[8]`
-/

namespace A234670.P9998688810518605282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A234670.P9998688810518605282

/-!
# A234671: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234671, there is no canonical definition to state claims against.
-/

/-! ## A234671.P4372802921849992052

`A234672(A374005(n+1))`
-/

namespace A234671.P4372802921849992052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (A374005 (n + 1)).toNat

end

end A234671.P4372802921849992052

/-! ## A234671.P5763520479657627079

`A234672(A167499(n+3))`
-/

namespace A234671.P5763520479657627079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (A167499 (n + 3)).toNat

end

end A234671.P5763520479657627079

/-! ## A234671.P703931896050341829

`A234672(A155212(n)+13)`
-/

namespace A234671.P703931896050341829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234672 (A155212 n + 13).toNat

end

end A234671.P703931896050341829

/-!
# A234673: Number of (n+1) X (n+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234673, there is no canonical definition to state claims against.
-/

/-! ## A234673.P2533311664100068099

`A234681(∑[4*n]+1)`
-/

namespace A234673.P2533311664100068099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234673.P2533311664100068099

/-! ## A234673.P14722833460230129138

`lcm(2, A234681(A001844(n)))`
-/

namespace A234673.P14722833460230129138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234681 (A001844 n).toNat)

end

end A234673.P14722833460230129138

/-! ## A234673.P3179122712368237154

`record[A234681(A152271(n²))]`
-/

namespace A234673.P3179122712368237154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234673.P3179122712368237154

/-! ## A234673.P354233119785904692

`record[A003982(n)*A234681(n+1)]`
-/

namespace A234673.P354233119785904692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234673.P354233119785904692

/-! ## A234673.P963399452729509603

`record[lcm(A000122(2*n+1), A234681(n+1))]`
-/

namespace A234673.P963399452729509603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000122 (2 * n + 1)) (A234681 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234673.P963399452729509603

/-!
# A234674: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234674, there is no canonical definition to state claims against.
-/

/-! ## A234674.P14705346273214395845

`A234681(∑[n]+1)`
-/

namespace A234674.P14705346273214395845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234674.P14705346273214395845

/-! ## A234674.P16949327229019160132

`record[A234681(n+1)]`
-/

namespace A234674.P16949327229019160132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234674.P16949327229019160132

/-! ## A234674.P17139312282331534581

`lcm(2, A234681(A000124(n)))`
-/

namespace A234674.P17139312282331534581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234681 (A000124 n).toNat)

end

end A234674.P17139312282331534581

/-! ## A234674.P9257699255933520347

`A007318(∑[n])*A234681(A000124(n))`
-/

namespace A234674.P9257699255933520347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A234681 (A000124 n).toNat

end

end A234674.P9257699255933520347

/-! ## A234674.P943399936088157997

`A234681(A000124(n))+A212619(n+1)`
-/

namespace A234674.P943399936088157997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A000124 n).toNat + A212619 (n + 1)

end

end A234674.P943399936088157997

/-!
# A234675: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234675, there is no canonical definition to state claims against.
-/

/-! ## A234675.P9228263126960265241

`A234681(∑[n+1]+2)`
-/

namespace A234675.P9228263126960265241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234675.P9228263126960265241

/-! ## A234675.P3425963806306909736

`lcm(2, A234681(A133263(n+1)))`
-/

namespace A234675.P3425963806306909736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234681 (A133263 (n + 1)).toNat)

end

end A234675.P3425963806306909736

/-! ## A234675.P9016228054729626460

`record[root(A234681(n+3), A038622(n))]`
-/

namespace A234675.P9016228054729626460
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234681 (n + 3) : ℝ) ^ (1 / (A038622 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234675.P9016228054729626460

/-! ## A234675.P9436653567926015762

`record[gcd(A002262(n), A234681(n+2))]`
-/

namespace A234675.P9436653567926015762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234681 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234675.P9436653567926015762

/-! ## A234675.P8249772750088052945

`lcm(4, A234681(A252460(2*(n+2))))`
-/

namespace A234675.P8249772750088052945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A234681 (A252460 (2 * (n + 2))).toNat)

end

end A234675.P8249772750088052945

/-!
# A234676: Number of (n+1) X (3+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234676, there is no canonical definition to state claims against.
-/

/-! ## A234676.P11649273068820272265

`A234681(∑[n+2]+4)`
-/

namespace A234676.P11649273068820272265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234676.P11649273068820272265

/-! ## A234676.P14329064907696003816

`lcm(2, A234681(A167614(n+1)))`
-/

namespace A234676.P14329064907696003816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234681 (A167614 (n + 1)).toNat)

end

end A234676.P14329064907696003816

/-! ## A234676.P8123128785486644682

`record[A234681(n+4)/A093565(n)]`
-/

namespace A234676.P8123128785486644682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234681 (n + 4) : ℚ) / (A093565 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234676.P8123128785486644682

/-! ## A234676.P10457765281342535184

`lcm(4, A234681(A000217(n+2)+3))`
-/

namespace A234676.P10457765281342535184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A234681 (A000217 (n + 2) + 3).toNat)

end

end A234676.P10457765281342535184

/-! ## A234676.P11835464647007293458

`A234681(A167614(n+1))*A328569(2*n)`
-/

namespace A234676.P11835464647007293458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A167614 (n + 1)).toNat * A328569 (2 * n)

end

end A234676.P11835464647007293458

/-!
# A234677: Number of (n+1) X (4+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234677, there is no canonical definition to state claims against.
-/

/-! ## A234677.P7240126319232077591

`A234681(∑[n+3]+7)`
-/

namespace A234677.P7240126319232077591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234677.P7240126319232077591

/-! ## A234677.P16400548310939590242

`lcm(2, A234681(A052905(n)+9))`
-/

namespace A234677.P16400548310939590242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234681 (A052905 n + 9).toNat)

end

end A234677.P16400548310939590242

/-! ## A234677.P14644012011952183857

`lcm(4, A234681(A055999(n)+10))`
-/

namespace A234677.P14644012011952183857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A234681 (A055999 n + 10).toNat)

end

end A234677.P14644012011952183857

/-! ## A234677.P8744329220150653369

`A007318(C(n, 2))*A234681(A052905(n)+9)`
-/

namespace A234677.P8744329220150653369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A234681 (A052905 n + 9).toNat

end

end A234677.P8744329220150653369

/-! ## A234677.P17645508247581872864

`A007318(val(n+2, 7))*A234681(A052905(n)+9)`
-/

namespace A234677.P17645508247581872864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 2) 7) * A234681 (A052905 n + 9).toNat

end

end A234677.P17645508247581872864

/-!
# A234678: Number of (n+1) X (5+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234678, there is no canonical definition to state claims against.
-/

/-! ## A234678.P1022117706374470174

`A234681(A374005(n+1))`
-/

namespace A234678.P1022117706374470174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A374005 (n + 1)).toNat

end

end A234678.P1022117706374470174

/-! ## A234678.P9973587658788499828

`A234681(A167499(n+3))`
-/

namespace A234678.P9973587658788499828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A167499 (n + 3)).toNat

end

end A234678.P9973587658788499828

/-! ## A234678.P9423165147664975852

`A234681(A155212(n)+13)`
-/

namespace A234678.P9423165147664975852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A155212 n + 13).toNat

end

end A234678.P9423165147664975852

/-! ## A234678.P17721782590521266548

`A234681(A056000(n)+15)`
-/

namespace A234678.P17721782590521266548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A056000 n + 15).toNat

end

end A234678.P17721782590521266548

/-! ## A234678.P8552855517823026604

`A234681(eq[7, A066657(n)])`
-/

namespace A234678.P8552855517823026604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234678.P8552855517823026604

/-!
# A234679: Number of (n+1) X (6+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234679, there is no canonical definition to state claims against.
-/

/-! ## A234679.P1838761150589152350

`A234681(A374007(n+1))`
-/

namespace A234679.P1838761150589152350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A374007 (n + 1)).toNat

end

end A234679.P1838761150589152350

/-! ## A234679.P12775279054295432405

`A234681(A166136(n+4))`
-/

namespace A234679.P12775279054295432405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A166136 (n + 4)).toNat

end

end A234679.P12775279054295432405

/-! ## A234679.P13194714819093446269

`A234681(A056115(n)+21)`
-/

namespace A234679.P13194714819093446269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A056115 n + 21).toNat

end

end A234679.P13194714819093446269

/-! ## A234679.P16557135332235052637

`A234681(A167499(n+4)+1)`
-/

namespace A234679.P16557135332235052637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A167499 (n + 4) + 1).toNat

end

end A234679.P16557135332235052637

/-! ## A234679.P3104937110133971605

`A234681(A167614(n+4)+3)`
-/

namespace A234679.P3104937110133971605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A167614 (n + 4) + 3).toNat

end

end A234679.P3104937110133971605

/-!
# A234680: Number of (n+1) X (7+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234680, there is no canonical definition to state claims against.
-/

/-! ## A234680.P14451377090680685421

`A234681(∑[n+6]+22)`
-/

namespace A234680.P14451377090680685421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A234680.P14451377090680685421

/-! ## A234680.P17462455257435422850

`A234681(A000096(n+6)-5)+A000007(3*(n+1))`
-/

namespace A234680.P17462455257435422850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234681 (A000096 (n + 6) - 5).toNat + A000007 (3 * (n + 1))

end

end A234680.P17462455257435422850

/-!
# A234682: Number of (n+1) X (n+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234682, there is no canonical definition to state claims against.
-/

/-! ## A234682.P8848595403614367480

`A234690(∑[4*n]+1)`
-/

namespace A234682.P8848595403614367480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234682.P8848595403614367480

/-! ## A234682.P16083285079037571321

`lcm(2, A234690(A001844(n)))`
-/

namespace A234682.P16083285079037571321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234690 (A001844 n).toNat)

end

end A234682.P16083285079037571321

/-! ## A234682.P9441083524612646241

`record[A003982(n)*A234690(n+1)]`
-/

namespace A234682.P9441083524612646241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234682.P9441083524612646241

/-! ## A234682.P17593052867489159360

`record[gcd(A114327(n), A234690(n+1))]`
-/

namespace A234682.P17593052867489159360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A234690 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234682.P17593052867489159360

/-!
# A234683: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234683, there is no canonical definition to state claims against.
-/

/-! ## A234683.P7817567857300791302

`A234690(∑[n]+1)`
-/

namespace A234683.P7817567857300791302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234683.P7817567857300791302

/-! ## A234683.P13576810398277516138

`record[A234690(n+1)]`
-/

namespace A234683.P13576810398277516138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234683.P13576810398277516138

/-! ## A234683.P1198981341494343840

`lcm(2, A234690(A000124(n)))`
-/

namespace A234683.P1198981341494343840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234690 (A000124 n).toNat)

end

end A234683.P1198981341494343840

/-! ## A234683.P2216324265221796922

`A007318(∑[n])*A234690(A000124(n))`
-/

namespace A234683.P2216324265221796922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A234690 (A000124 n).toNat

end

end A234683.P2216324265221796922

/-! ## A234683.P5247745453789025775

`A234690(A000124(n))+A000007(n+1)`
-/

namespace A234683.P5247745453789025775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A000124 n).toNat + A000007 (n + 1)

end

end A234683.P5247745453789025775

/-!
# A234684: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234684, there is no canonical definition to state claims against.
-/

/-! ## A234684.P12303723642254968617

`A234690(∑[n+1]+2)`
-/

namespace A234684.P12303723642254968617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234684.P12303723642254968617

/-! ## A234684.P10568105515355868426

`lcm(2, A234690(A133263(n+1)))`
-/

namespace A234684.P10568105515355868426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234690 (A133263 (n + 1)).toNat)

end

end A234684.P10568105515355868426

/-! ## A234684.P14807292139994226388

`A234690(A133263(n+1))%A234685(n+1)`
-/

namespace A234684.P14807292139994226388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234690 (A133263 (n + 1)).toNat) (A234685 (n + 1))

end

end A234684.P14807292139994226388

/-! ## A234684.P16796967912931098281

`A007318(C(3, n))*A234690(A133263(n+1))`
-/

namespace A234684.P16796967912931098281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A234690 (A133263 (n + 1)).toNat

end

end A234684.P16796967912931098281

/-! ## A234684.P11232848444623489957

`A234690(A133263(n+1))/A000040(n+2)%2`
-/

namespace A234684.P11232848444623489957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234690 (A133263 (n + 1)).toNat : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A234684.P11232848444623489957

/-!
# A234685: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234685, there is no canonical definition to state claims against.
-/

/-! ## A234685.P3949590634623306886

`A234690(∑[n+2]+4)`
-/

namespace A234685.P3949590634623306886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234685.P3949590634623306886

/-! ## A234685.P6658863733122932843

`lcm(2, A234690(A167614(n+1)))`
-/

namespace A234685.P6658863733122932843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234690 (A167614 (n + 1)).toNat)

end

end A234685.P6658863733122932843

/-! ## A234685.P16598384720483046101

`A276183(n+1)+A234690(A167614(n+1))`
-/

namespace A234685.P16598384720483046101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1) + A234690 (A167614 (n + 1)).toNat

end

end A234685.P16598384720483046101

/-! ## A234685.P8530204449407517009

`A234690(A167614(n+1))%A234686(n+1)`
-/

namespace A234685.P8530204449407517009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234690 (A167614 (n + 1)).toNat) (A234686 (n + 1))

end

end A234685.P8530204449407517009

/-! ## A234685.P5187924333867348624

`A007318(C(2, n))*A234690(A167614(n+1))`
-/

namespace A234685.P5187924333867348624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A234690 (A167614 (n + 1)).toNat

end

end A234685.P5187924333867348624

/-!
# A234686: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234686, there is no canonical definition to state claims against.
-/

/-! ## A234686.P5869684975837859710

`A234690(∑[n+3]+7)`
-/

namespace A234686.P5869684975837859710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234686.P5869684975837859710

/-!
# A234687: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234687, there is no canonical definition to state claims against.
-/

/-! ## A234687.P2148569232799936538

`A234690(A374005(n+1))`
-/

namespace A234687.P2148569232799936538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A374005 (n + 1)).toNat

end

end A234687.P2148569232799936538

/-! ## A234687.P8194631313314104819

`A234690(A167499(n+3))`
-/

namespace A234687.P8194631313314104819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A167499 (n + 3)).toNat

end

end A234687.P8194631313314104819

/-! ## A234687.P12408864953104821190

`A234690(A155212(n)+13)`
-/

namespace A234687.P12408864953104821190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A155212 n + 13).toNat

end

end A234687.P12408864953104821190

/-! ## A234687.P18444588496113925655

`A234690(A056000(n)+15)`
-/

namespace A234687.P18444588496113925655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A056000 n + 15).toNat

end

end A234687.P18444588496113925655

/-! ## A234687.P4693784098430350576

`A234690(eq[7, A066657(n)])`
-/

namespace A234687.P4693784098430350576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234687.P4693784098430350576

/-!
# A234688: Number of (n+1) X (6+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234688, there is no canonical definition to state claims against.
-/

/-! ## A234688.P14240205388720835373

`A234690(A374007(n+1))`
-/

namespace A234688.P14240205388720835373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A374007 (n + 1)).toNat

end

end A234688.P14240205388720835373

/-! ## A234688.P8347031835273058360

`A234690(A056115(n)+21)`
-/

namespace A234688.P8347031835273058360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A056115 n + 21).toNat

end

end A234688.P8347031835273058360

/-! ## A234688.P7086171982728080100

`A234690(A000124(n+5)+5)`
-/

namespace A234688.P7086171982728080100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A000124 (n + 5) + 5).toNat

end

end A234688.P7086171982728080100

/-! ## A234688.P10503078005376893132

`A234690(A000217(n+5)+6)`
-/

namespace A234688.P10503078005376893132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A000217 (n + 5) + 6).toNat

end

end A234688.P10503078005376893132

/-! ## A234688.P6824890417709172765

`A234690(A052905(n+2)+11)`
-/

namespace A234688.P6824890417709172765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A052905 (n + 2) + 11).toNat

end

end A234688.P6824890417709172765

/-!
# A234689: Number of (n+1) X (7+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234689, there is no canonical definition to state claims against.
-/

/-! ## A234689.P15482843119278665745

`A234690(A374008(n+1))`
-/

namespace A234689.P15482843119278665745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A374008 (n + 1)).toNat

end

end A234689.P15482843119278665745

/-! ## A234689.P9533670607953288983

`A234690(eq[11, A066657(n)])`
-/

namespace A234689.P9533670607953288983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234689.P9533670607953288983

/-! ## A234689.P2929919386735991335

`A234690(A166136(n+5)+1)`
-/

namespace A234689.P2929919386735991335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A166136 (n + 5) + 1).toNat

end

end A234689.P2929919386735991335

/-! ## A234689.P2540668586051206776

`A234690(A167499(n+5)+2)`
-/

namespace A234689.P2540668586051206776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A167499 (n + 5) + 2).toNat

end

end A234689.P2540668586051206776

/-! ## A234689.P10605730496427474462

`A234690(A000124(n+6)+6)`
-/

namespace A234689.P10605730496427474462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234690 (A000124 (n + 6) + 6).toNat

end

end A234689.P10605730496427474462

/-!
# A234693: Primes of the form n^2 + 1 such that (n - 1)^2 + 1 and (n + 1)^2 + 1 are semiprimes.

The programs for A234693, there is no canonical definition to state claims against.
-/

/-! ## A234693.P16432277982654382667

`1+A321795(n+1)²`
-/

namespace A234693.P16432277982654382667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A321795 (n + 1) ^ 2

end

end A234693.P16432277982654382667

/-! ## A234693.P9703118799486279685

`A321795(n+1)^(2%A242100(n+1))+1`
-/

namespace A234693.P9703118799486279685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321795 (n + 1) : ℚ) ^ (Int.tmod 2 (A242100 (n + 1)) : ℤ) + 1

end

end A234693.P9703118799486279685

/-! ## A234693.P6471707067790535613

`A084057(Δ[A004396(n)])+A321795(n+1)^2`
-/

namespace A234693.P6471707067790535613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 (f1 (n + 1) - f1 n).toNat + A321795 (n + 1) ^ 2

end

end A234693.P6471707067790535613

/-! ## A234693.P16387807473109621259

`xor(A005408(n), A005843(n))+A321795(n+1)^2`
-/

namespace A234693.P16387807473109621259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005408 n) (A005843 n) + A321795 (n + 1) ^ 2

end

end A234693.P16387807473109621259

/-! ## A234693.P842415836530383937

`char[A061601(n)]+A321795(n+1)*A321795(n+1)`
-/

namespace A234693.P842415836530383937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A321795 (n + 1) * A321795 (n + 1)

end

end A234693.P842415836530383937

/-!
# A234694: a(n) = |{0 < k < n: p = k + prime(n-k) and prime(p) - p + 1 are both prime}|.

The programs for A234694, there is no canonical definition to state claims against.
-/

/-! ## A234694.P10944285217882032805

`A007814(A048330(∑[A047130(n)]))`
-/

namespace A234694.P10944285217882032805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A048330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A234694.P10944285217882032805

/-! ## A234694.P14543984901370509884

`A151945(A324886(n+1))%A070082(n+1)`
-/

namespace A234694.P14543984901370509884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151945 (A324886 (n + 1)).toNat) (A070082 (n + 1))

end

end A234694.P14543984901370509884

/-! ## A234694.P6359414511245863369

`A046019(C(n, ceil(n/2)))%A366707(n+1)`
-/

namespace A234694.P6359414511245863369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046019 (Nat.choose n ⌈(n : ℚ) / 2⌉.toNat)) (A366707 (n + 1))

end

end A234694.P6359414511245863369

/-! ## A234694.P18039256591900853432

`A003101(n)%A113965(A003081(n))`
-/

namespace A234694.P18039256591900853432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003101 n) (A113965 (A003081 n).toNat)

end

end A234694.P18039256591900853432

/-! ## A234694.P5381034834913490967

`A350356(A364492(n+4))%A333257(n)`
-/

namespace A234694.P5381034834913490967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350356 (A364492 (n + 4)).toNat) (A333257 n)

end

end A234694.P5381034834913490967

/-!
# A234695: Primes p with prime(p) - p + 1 also prime.

The programs for A234695, the canonical program `A234695.P11730189554864400723` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234695 has offset 1).

The definition of A234695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234695.P11730189554864400723

`p?[A234851(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A234695

/-- `p?[A234851(n+1)]` -/
def P11730189554864400723.Spec : Prop :=
  ∀ n, P11730189554864400723.a n = A234695 (n + 1)

theorem P11730189554864400723.correct : P11730189554864400723.Spec := by
  intro n
  simp only [A234695, Nat.add_sub_cancel]

end A234695

/-! ## A234695.P10251358008946678385

`A234851(A234853(n+1))`
-/

namespace A234695.P10251358008946678385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (A234853 (n + 1)).toNat

end

end A234695.P10251358008946678385

namespace A234695

/-- `A234851(A234853(n+1))` -/
def P10251358008946678385.Spec : Prop :=
  ∀ n, P10251358008946678385.a n = A234695 (n + 1)

end A234695

/-! ## A234695.P12105898283325220636

`∩[A106118(n+1), A234851(n+1)]`
-/

namespace A234695.P12105898283325220636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P12105898283325220636

namespace A234695

/-- `∩[A106118(n+1), A234851(n+1)]` -/
def P12105898283325220636.Spec : Prop :=
  ∀ n, (P12105898283325220636.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P15331698706218317112

`∩[A000040(n+1), A234851(n+1)]`
-/

namespace A234695.P15331698706218317112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P15331698706218317112

namespace A234695

/-- `∩[A000040(n+1), A234851(n+1)]` -/
def P15331698706218317112.Spec : Prop :=
  ∀ n, (P15331698706218317112.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P6918142963092628285

`∩[A051948(n+1), A234851(n+1)]`
-/

namespace A234695.P6918142963092628285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P6918142963092628285

namespace A234695

/-- `∩[A051948(n+1), A234851(n+1)]` -/
def P6918142963092628285.Spec : Prop :=
  ∀ n, (P6918142963092628285.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P14099661975753468046

`∩[A053813(n+1), A234851(n+1)]`
-/

namespace A234695.P14099661975753468046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P14099661975753468046

namespace A234695

/-- `∩[A053813(n+1), A234851(n+1)]` -/
def P14099661975753468046.Spec : Prop :=
  ∀ n, (P14099661975753468046.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P3050957161888413816

`∩[A116974(n+1), A234851(n+1)]`
-/

namespace A234695.P3050957161888413816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P3050957161888413816

namespace A234695

/-- `∩[A116974(n+1), A234851(n+1)]` -/
def P3050957161888413816.Spec : Prop :=
  ∀ n, (P3050957161888413816.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P13517120388954415016

`∩[A175787(n+1), A234851(n+1)]`
-/

namespace A234695.P13517120388954415016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P13517120388954415016

namespace A234695

/-- `∩[A175787(n+1), A234851(n+1)]` -/
def P13517120388954415016.Spec : Prop :=
  ∀ n, (P13517120388954415016.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P14026929447597861393

`∩[A182986(n+1), A234851(n+1)]`
-/

namespace A234695.P14026929447597861393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P14026929447597861393

namespace A234695

/-- `∩[A182986(n+1), A234851(n+1)]` -/
def P14026929447597861393.Spec : Prop :=
  ∀ n, (P14026929447597861393.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P4710012136442674837

`∩[A234851(n+1), A301987(n+1)]`
-/

namespace A234695.P4710012136442674837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P4710012136442674837

namespace A234695

/-- `∩[A234851(n+1), A301987(n+1)]` -/
def P4710012136442674837.Spec : Prop :=
  ∀ n, (P4710012136442674837.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P12029621677634193586

`∩[A053577(n+1), A234851(n+1)]`
-/

namespace A234695.P12029621677634193586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P12029621677634193586

namespace A234695

/-- `∩[A053577(n+1), A234851(n+1)]` -/
def P12029621677634193586.Spec : Prop :=
  ∀ n, (P12029621677634193586.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P12477185242134531570

`∩[A066191(n+1), A234851(n+1)]`
-/

namespace A234695.P12477185242134531570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P12477185242134531570

namespace A234695

/-- `∩[A066191(n+1), A234851(n+1)]` -/
def P12477185242134531570.Spec : Prop :=
  ∀ n, (P12477185242134531570.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P417176076517777628

`record[A006530(A234851(n+2))]`
-/

namespace A234695.P417176076517777628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A234851 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234695.P417176076517777628

namespace A234695

/-- `record[A006530(A234851(n+2))]` -/
def P417176076517777628.Spec : Prop :=
  ∀ n, P417176076517777628.a n = A234695 (n + 1)

end A234695

/-! ## A234695.P5114983333653852835

`filter[A234851(n+1), A010051(#)]`
-/

namespace A234695.P5114983333653852835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A234695.P5114983333653852835

namespace A234695

/-- `filter[A234851(n+1), A010051(#)]` -/
def P5114983333653852835.Spec : Prop :=
  ∀ n, P5114983333653852835.a n = A234695 (n + 1)

end A234695

/-! ## A234695.P14346786905738724164

`filter[A234851(n+2), A365716(#)]`
-/

namespace A234695.P14346786905738724164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A234695.P14346786905738724164

namespace A234695

/-- `filter[A234851(n+2), A365716(#)]` -/
def P14346786905738724164.Spec : Prop :=
  ∀ n, P14346786905738724164.a n = A234695 (n + 1)

end A234695

/-! ## A234695.P14597224588321710501

`filter[A234851(n+2), A380467(#)]`
-/

namespace A234695.P14597224588321710501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A234695.P14597224588321710501

namespace A234695

/-- `filter[A234851(n+2), A380467(#)]` -/
def P14597224588321710501.Spec : Prop :=
  ∀ n, P14597224588321710501.a n = A234695 (n + 1)

end A234695

/-! ## A234695.P16891138058214316775

`∩[A174219(n+1), A234851(n+1)]`
-/

namespace A234695.P16891138058214316775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234695.P16891138058214316775

namespace A234695

/-- `∩[A174219(n+1), A234851(n+1)]` -/
def P16891138058214316775.Spec : Prop :=
  ∀ n, (P16891138058214316775.a n : ℤ) = A234695 (n + 1)

end A234695

/-! ## A234695.P10667481718893772258

`filter[A234851(n+1), A323153(#)]`
-/

namespace A234695.P10667481718893772258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A234695.P10667481718893772258

namespace A234695

/-- `filter[A234851(n+1), A323153(#)]` -/
def P10667481718893772258.Spec : Prop :=
  ∀ n, P10667481718893772258.a n = A234695 (n + 1)

end A234695

/-! ## A234695.P5104870223438450947

`filter[A234851(n+2), A323152(#)]`
-/

namespace A234695.P5104870223438450947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A234695.P5104870223438450947

namespace A234695

/-- `filter[A234851(n+2), A323152(#)]` -/
def P5104870223438450947.Spec : Prop :=
  ∀ n, P5104870223438450947.a n = A234695 (n + 1)

end A234695

/-! ## A234695.P14314363686993630511

`filter[A234851(n+2), A340371(#)]`
-/

namespace A234695.P14314363686993630511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A234695.P14314363686993630511

namespace A234695

/-- `filter[A234851(n+2), A340371(#)]` -/
def P14314363686993630511.Spec : Prop :=
  ∀ n, P14314363686993630511.a n = A234695 (n + 1)

end A234695

/-!
# A234696: Indices of primes in the tribonacci-like sequence, A214727.

The programs for A234696, there is no canonical definition to state claims against.
-/

/-! ## A234696.P17447472787543434455

`A253593(n+1)*A253593(A237770(n))`
-/

namespace A234696.P17447472787543434455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253593 (n + 1) * A253593 (A237770 n).toNat

end

end A234696.P17447472787543434455

/-!
# A234697: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234697, there is no canonical definition to state claims against.
-/

/-! ## A234697.P7644874891177180269

`A234702(∑[n]+1)`
-/

namespace A234697.P7644874891177180269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234697.P7644874891177180269

/-! ## A234697.P11115196893137578400

`record[A234702(n+1)]`
-/

namespace A234697.P11115196893137578400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234697.P11115196893137578400

/-! ## A234697.P7622721405497642836

`lcm(2, A234702(A000124(n)))`
-/

namespace A234697.P7622721405497642836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234702 (A000124 n).toNat)

end

end A234697.P7622721405497642836

/-! ## A234697.P14401671953552635759

`lcm(3, record[A234702(A065033(n))])`
-/

namespace A234697.P14401671953552635759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (A065033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A234697.P14401671953552635759

/-! ## A234697.P11207995821167509989

`A234702(A000124(n))+A105516(n)`
-/

namespace A234697.P11207995821167509989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (A000124 n).toNat + A105516 n

end

end A234697.P11207995821167509989

/-!
# A234698: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234698, there is no canonical definition to state claims against.
-/

/-! ## A234698.P11776022747338704715

`A234702(∑[n+1]+2)`
-/

namespace A234698.P11776022747338704715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234698.P11776022747338704715

/-! ## A234698.P10774495068850536428

`lcm(2, A234702(A000096(n)+3))`
-/

namespace A234698.P10774495068850536428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234702 (A000096 n + 3).toNat)

end

end A234698.P10774495068850536428

/-! ## A234698.P11482125237963193639

`record[A010054(n)*A234702(n+2)]`
-/

namespace A234698.P11482125237963193639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234702 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234698.P11482125237963193639

/-! ## A234698.P5199582905240637937

`A234702(A000096(n)+3)+A192541(n)`
-/

namespace A234698.P5199582905240637937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (A000096 n + 3).toNat + A192541 n

end

end A234698.P5199582905240637937

/-! ## A234698.P927204500008173773

`A016182(n)*A234702(A000096(n)+3)`
-/

namespace A234698.P927204500008173773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016182 n * A234702 (A000096 n + 3).toNat

end

end A234698.P927204500008173773

/-!
# A234699: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A234699, there is no canonical definition to state claims against.
-/

/-! ## A234699.P5142020212451099852

`A234702(∑[n+2]+4)`
-/

namespace A234699.P5142020212451099852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234699.P5142020212451099852

/-! ## A234699.P3557055373355461047

`lcm(2, A234702(A167614(n+1)))`
-/

namespace A234699.P3557055373355461047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234702 (A167614 (n + 1)).toNat)

end

end A234699.P3557055373355461047

/-! ## A234699.P5812774511101731264

`A234702(A167614(n+1))+A025444(n)`
-/

namespace A234699.P5812774511101731264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (A167614 (n + 1)).toNat + A025444 n

end

end A234699.P5812774511101731264

/-! ## A234699.P14909829667493326022

`A234702(A167614(n+1))+A185284(n)`
-/

namespace A234699.P14909829667493326022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (A167614 (n + 1)).toNat + A185284 n

end

end A234699.P14909829667493326022

/-! ## A234699.P5705338991385907848

`A234702(A167614(n+1))+A192541(n)`
-/

namespace A234699.P5705338991385907848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234702 (A167614 (n + 1)).toNat + A192541 n

end

end A234699.P5705338991385907848

