import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.Opaque.C025

/-!
# A263001: Number of ordered pairs (k, m) with k > 0 and m > 0 such that n = pi(k*(k+1)) + pi(m*(m+1)/2), where pi(x) denotes the number of primes not exceeding x.

The programs for A263001, there is no canonical definition to state claims against.
-/

/-! ## A263001.P7591418439366351765

`val(A004011(A283286(n)), 4)`
-/

namespace A263001.P7591418439366351765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004011 (A283286 n).toNat).toNat 4

end

end A263001.P7591418439366351765

/-! ## A263001.P14834225381882414879

`A267263(∑{d}[A192424(n), #])`
-/

namespace A263001.P14834225381882414879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A263001.P14834225381882414879

/-! ## A263001.P13054425325291177934

`∑[A171182(A289459(n))-a(n-1)]` with `a(0)=1`
-/

namespace A263001.P13054425325291177934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A171182 (A289459 n).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263001.P13054425325291177934

/-! ## A263001.P15908680344186057521

`A090001(A132796(n+1)-A308858(n))`
-/

namespace A263001.P15908680344186057521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (A132796 (n + 1) - A308858 n).toNat

end

end A263001.P15908680344186057521

/-! ## A263001.P11173704565895909810

`A156078(n+1)+A108730(A229774(n+1))`
-/

namespace A263001.P11173704565895909810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156078 (n + 1) + A108730 (A229774 (n + 1)).toNat

end

end A263001.P11173704565895909810

/-!
# A263002: Expansion of (f(-x^5) / f(-x))^2 in powers of x where f() is a Ramanujan theta function.

The programs for A263002, there is no canonical definition to state claims against.
-/

/-! ## A263002.P5522467447177448200

`abs(A058511(5*n+2))`
-/

namespace A263002.P5522467447177448200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058511 (5 * n + 2)|

end

end A263002.P5522467447177448200

/-! ## A263002.P11594096609465601175

`record[-A058511(A047221(n+1))]`
-/

namespace A263002.P11594096609465601175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A058511 (A047221 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263002.P11594096609465601175

/-! ## A263002.P16832766737133088297

`record[A007814(n+1)-A058511(A047221(n+1))]`
-/

namespace A263002.P16832766737133088297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A058511 (A047221 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263002.P16832766737133088297

/-! ## A263002.P374983177297865295

`A007814(2*n+1)-A058511(A047221(2*n+1))`
-/

namespace A263002.P374983177297865295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) - A058511 (A047221 (2 * n + 1)).toNat

end

end A263002.P374983177297865295

/-!
# A263003: Partition array for the products of the hook lengths of Ferrers (Young) diagrams corresponding to the partitions of n, written in Abramowitz-Stegun order.

The programs for A263003, there is no canonical definition to state claims against.
-/

/-! ## A263003.P16130164384105544644

`A036042(n)!/A117506(n)`
-/

namespace A263003.P16130164384105544644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℚ) / (A117506 n : ℚ)

end

end A263003.P16130164384105544644

/-! ## A263003.P13842161782095276558

`A036042(n)!/A153452(A185974(n))`
-/

namespace A263003.P13842161782095276558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℚ) / (A153452 (A185974 n).toNat : ℚ)

end

end A263003.P13842161782095276558

/-! ## A263003.P6377614019134579656

`A036042(n)!/A153452(A334434(n))`
-/

namespace A263003.P6377614019134579656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℚ) / (A153452 (A334434 n).toNat : ℚ)

end

end A263003.P6377614019134579656

/-! ## A263003.P2158717981224365769

`A036042(n)!/sqrt(A136100(n))`
-/

namespace A263003.P2158717981224365769
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℝ) / Real.sqrt (A136100 n : ℝ)

end

end A263003.P2158717981224365769

/-! ## A263003.P14288582368385924600

`A036042(n)!/A000196(A136100(n)+1)`
-/

namespace A263003.P14288582368385924600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℚ) / (A000196 (A136100 n + 1).toNat : ℚ)

end

end A263003.P14288582368385924600

/-! ## A263003.P14956125320437442454

`A036042(n)!/A000196(or(1, A136100(n)))`
-/

namespace A263003.P14956125320437442454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℚ) / (A000196 (Int.lor 1 (A136100 n)).toNat : ℚ)

end

end A263003.P14956125320437442454

/-! ## A263003.P4835752967487461578

`A178801(n)/A117506(n)`
-/

namespace A263003.P4835752967487461578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178801 n : ℚ) / (A117506 n : ℚ)

end

end A263003.P4835752967487461578

/-!
# A263004: Row sums of the partition array for the products of the hook lengths numbers of Ferrers (or Young) diagrams A263003.

The programs for A263004, there is no canonical definition to state claims against.
-/

/-! ## A263004.P2501384809451864771

`A090606(A148569(n))`
-/

namespace A263004.P2501384809451864771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090606 (A148569 n).toNat

end

end A263004.P2501384809451864771

/-! ## A263004.P10075911846706721646

`A080685(A293441(n²))`
-/

namespace A263004.P10075911846706721646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080685 (A293441 (n ^ 2)).toNat

end

end A263004.P10075911846706721646

/-!
# A263006: First member R0(n) of the smallest positive pair (R0(n), S0(n)) for the n-th 1-happy number couple (B(n), C(n)).

The programs for A263006, there is no canonical definition to state claims against.
-/

/-! ## A263006.P12663250517494969843

`A261250(n+1)/A263007(n+1)`
-/

namespace A263006.P12663250517494969843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261250 (n + 1) : ℚ) / (A263007 (n + 1) : ℚ)

end

end A263006.P12663250517494969843

/-! ## A263006.P1806184631283787739

`gcd(A261250(n+1), A262025(n+1))`
-/

namespace A263006.P1806184631283787739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A261250 (n + 1)) (A262025 (n + 1))

end

end A263006.P1806184631283787739

/-! ## A263006.P5253761459491554414

`sqrt(A262025(n+1)/A191854(n+1))`
-/

namespace A263006.P5253761459491554414
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A262025 (n + 1) : ℚ) / (A191854 (n + 1) : ℚ) : ℝ)

end

end A263006.P5253761459491554414

/-! ## A263006.P10612524483679443723

`sqrt(floor(A262024(n+1)/2)/A191854(n+1))`
-/

namespace A263006.P10612524483679443723
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((⌊(A262024 (n + 1) : ℚ) / 2⌋ : ℚ) / (A191854 (n + 1) : ℚ) : ℝ)

end

end A263006.P10612524483679443723

/-! ## A263006.P16627668621149575794

`A002349(A007969(n+1))/(2*A263007(n+1))`
-/

namespace A263006.P16627668621149575794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002349 (A007969 (n + 1)).toNat : ℚ) / (2 * A263007 (n + 1) : ℚ)

end

end A263006.P16627668621149575794

/-! ## A263006.P17032692622532477592

`A006703(4*A007969(n+1))/A263007(n+1)`
-/

namespace A263006.P17032692622532477592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (4 * A007969 (n + 1)).toNat : ℚ) / (A263007 (n + 1) : ℚ)

end

end A263006.P17032692622532477592

/-! ## A263006.P8636819355874012866

`A002349(A007969(n+1))/A004277(A263007(n+1))`
-/

namespace A263006.P8636819355874012866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002349 (A007969 (n + 1)).toNat : ℚ) / (A004277 (A263007 (n + 1)).toNat : ℚ)

end

end A263006.P8636819355874012866

/-!
# A263007: Second member S0(n) of the smallest positive pair (R0(n), S0(n)) for the n-th 1-happy number couple (B(n), C(n)).

The programs for A263007, there is no canonical definition to state claims against.
-/

/-! ## A263007.P4283530552336090405

`A261250(n+1)/A263006(n+1)`
-/

namespace A263007.P4283530552336090405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261250 (n + 1) : ℚ) / (A263006 (n + 1) : ℚ)

end

end A263007.P4283530552336090405

/-! ## A263007.P5842988202030890511

`gcd(A262025(n+1)+1, A261250(n+1))`
-/

namespace A263007.P5842988202030890511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A262025 (n + 1) + 1) (A261250 (n + 1))

end

end A263007.P5842988202030890511

/-! ## A263007.P11895356747160844527

`ceil(sqrt(A262025(n+1)/A191855(n+1)))`
-/

namespace A263007.P11895356747160844527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A262025 (n + 1) : ℚ) / (A191855 (n + 1) : ℚ) : ℝ)⌉

end

end A263007.P11895356747160844527

/-! ## A263007.P17442942946923083985

`round(sqrt(A262025(n+3-4/2)/A191855(n+1)))`
-/

namespace A263007.P17442942946923083985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A262025 (SequenceMachineLib.roundAway ((n + 3 : ℚ) - (4 : ℚ) / 2)).toNat : ℚ) / (A191855 (n + 1) : ℚ) : ℝ))

end

end A263007.P17442942946923083985

/-! ## A263007.P10754228455329744786

`A006703(4*A007969(n+1))/A263006(n+1)`
-/

namespace A263007.P10754228455329744786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (4 * A007969 (n + 1)).toNat : ℚ) / (A263006 (n + 1) : ℚ)

end

end A263007.P10754228455329744786

/-! ## A263007.P13735543113198322482

`sqrt(A191854(n+1)/A262025(n+1))*A261250(n+1)`
-/

namespace A263007.P13735543113198322482
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A191854 (n + 1) : ℚ) / (A262025 (n + 1) : ℚ) : ℝ) * (A261250 (n + 1) : ℝ)

end

end A263007.P13735543113198322482

/-!
# A263008: First member T0(n) of the smallest positive pair (T0(n), U0(n)) for the n-th 2-happy number couple (D(n), E(n)).

The programs for A263008, there is no canonical definition to state claims against.
-/

/-! ## A263008.P15517221500637727433

`A262026(n+1)/A263009(n+1)`
-/

namespace A263008.P15517221500637727433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262026 (n + 1) : ℚ) / (A263009 (n + 1) : ℚ)

end

end A263008.P15517221500637727433

/-! ## A263008.P3913601488294205323

`gcd(1-A262027(n+1), A262026(n+1))`
-/

namespace A263008.P3913601488294205323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A262027 (n + 1)) (A262026 (n + 1))

end

end A263008.P3913601488294205323

/-! ## A263008.P2649917089303599638

`floor(sqrt(A262027(n+1)/A191856(n+1)))`
-/

namespace A263008.P2649917089303599638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A262027 (n + 1) : ℚ) / (A191856 (n + 1) : ℚ) : ℝ)⌋

end

end A263008.P2649917089303599638

/-! ## A263008.P13827039400734813333

`A002349(A007970(n+1))/A263009(n+1)`
-/

namespace A263008.P13827039400734813333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002349 (A007970 (n + 1)).toNat : ℚ) / (A263009 (n + 1) : ℚ)

end

end A263008.P13827039400734813333

/-! ## A263008.P17387894897311902253

`A002349(eq[2, A007968(n)])/A263009(n+1)`
-/

namespace A263008.P17387894897311902253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (A263009 (n + 1) : ℚ)

end

end A263008.P17387894897311902253

/-! ## A263008.P3702512394069615088

`A006703(eq[2, A007968(n)])/A263009(n+1)`
-/

namespace A263008.P3702512394069615088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (A263009 (n + 1) : ℚ)

end

end A263008.P3702512394069615088

/-! ## A263008.P4538395244430073924

`A002349(eq[1, A010340(n+1)%2]+1)/A263009(n+1)`
-/

namespace A263008.P4538395244430073924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010340 (n + 1)) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / (A263009 (n + 1) : ℚ)

end

end A263008.P4538395244430073924

/-! ## A263008.P13649831095332449118

`A006703(A007970(n+1)*A262681(n))/A263009(n+1)`
-/

namespace A263008.P13649831095332449118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (A007970 (n + 1) * A262681 n).toNat : ℚ) / (A263009 (n + 1) : ℚ)

end

end A263008.P13649831095332449118

/-!
# A263009: Second member U0(n) of the smallest positive pair (T0(n), U0(n)) for the n-th 2-happy number couple (D(n), E(n)).

The programs for A263009, there is no canonical definition to state claims against.
-/

/-! ## A263009.P12638726820785198639

`A262026(n+1)/A263008(n+1)`
-/

namespace A263009.P12638726820785198639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262026 (n + 1) : ℚ) / (A263008 (n + 1) : ℚ)

end

end A263009.P12638726820785198639

/-! ## A263009.P14396355214712941683

`gcd(A262027(n+1)+1, A262026(n+1))`
-/

namespace A263009.P14396355214712941683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A262027 (n + 1) + 1) (A262026 (n + 1))

end

end A263009.P14396355214712941683

/-! ## A263009.P9103554348872845912

`ceil(sqrt(A262027(n+1)/A191857(n+1)))`
-/

namespace A263009.P9103554348872845912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A262027 (n + 1) : ℚ) / (A191857 (n + 1) : ℚ) : ℝ)⌉

end

end A263009.P9103554348872845912

/-! ## A263009.P5371870181785083603

`A002349(A007970(n+1))/A263008(n+1)`
-/

namespace A263009.P5371870181785083603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002349 (A007970 (n + 1)).toNat : ℚ) / (A263008 (n + 1) : ℚ)

end

end A263009.P5371870181785083603

/-! ## A263009.P7954702725619849267

`A002349(eq[2, A007968(n)])/A263008(n+1)`
-/

namespace A263009.P7954702725619849267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (A263008 (n + 1) : ℚ)

end

end A263009.P7954702725619849267

/-! ## A263009.P16665435713712745175

`A006703(eq[2, A007968(n)])/A263008(n+1)`
-/

namespace A263009.P16665435713712745175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (A263008 (n + 1) : ℚ)

end

end A263009.P16665435713712745175

/-! ## A263009.P8011134690684952163

`A002349(eq[1, A010340(n+1)%2]+1)/A263008(n+1)`
-/

namespace A263009.P8011134690684952163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010340 (n + 1)) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / (A263008 (n + 1) : ℚ)

end

end A263009.P8011134690684952163

/-! ## A263009.P686299924857799731

`A006703(A007970(n+1)*A262681(n))/A263008(n+1)`
-/

namespace A263009.P686299924857799731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (A007970 (n + 1) * A262681 n).toNat : ℚ) / (A263008 (n + 1) : ℚ)

end

end A263009.P686299924857799731

/-!
# A263011: Numbers D == 1 (mod 8), not a square, and if composite without prime factors 3 or 5 (mod 8).

The programs for A263011, there is no canonical definition to state claims against.
-/

/-! ## A263011.P8567686424610257453

`∩[A057126(n+1), A081643(n+1)]`
-/

namespace A263011.P8567686424610257453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P8567686424610257453

/-! ## A263011.P9370213485404750095

`∩[A058529(n+1), A081643(n+1)]`
-/

namespace A263011.P9370213485404750095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P9370213485404750095

/-! ## A263011.P2158480687604289832

`∩[A081643(n+1), A253408(n+1)]`
-/

namespace A263011.P2158480687604289832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P2158480687604289832

/-! ## A263011.P3983882038409232143

`∩[A057126(n+1), A077425(n+1)]`
-/

namespace A263011.P3983882038409232143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P3983882038409232143

/-! ## A263011.P7328101977584601521

`∩[A058529(n+1), A077425(n+1)]`
-/

namespace A263011.P7328101977584601521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P7328101977584601521

/-! ## A263011.P14863090360865748072

`∩[A077425(n+1), A253408(n+1)]`
-/

namespace A263011.P14863090360865748072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P14863090360865748072

/-! ## A263011.P13732065242936059222

`∩[A057126(n+1), A361160(n+1)]`
-/

namespace A263011.P13732065242936059222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P13732065242936059222

/-! ## A263011.P11243255521786504398

`∩[A058529(n+1), A361160(n+1)]`
-/

namespace A263011.P11243255521786504398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P11243255521786504398

/-! ## A263011.P8380716509614045890

`∩[A253408(n+1), A361160(n+1)]`
-/

namespace A263011.P8380716509614045890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P8380716509614045890

/-! ## A263011.P17850495103660124148

`∩[A057126(n+1), A079896(n+1)]`
-/

namespace A263011.P17850495103660124148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P17850495103660124148

/-! ## A263011.P10643909669893445312

`∩[A058529(n+1), A079896(n+1)]`
-/

namespace A263011.P10643909669893445312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P10643909669893445312

/-! ## A263011.P7069073532269469571

`∩[A079896(n+1), A253408(n+1)]`
-/

namespace A263011.P7069073532269469571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P7069073532269469571

/-! ## A263011.P9317560797867844663

`∩[A058529(n+1), A274918(n+1)]`
-/

namespace A263011.P9317560797867844663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P9317560797867844663

/-! ## A263011.P5510817942004978080

`∩[A253408(n+1), A274918(n+1)]`
-/

namespace A263011.P5510817942004978080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P5510817942004978080

/-! ## A263011.P15938391290357444494

`∩[A066507(n+1), A077425(n+1)]`
-/

namespace A263011.P15938391290357444494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263011.P15938391290357444494

/-!
# A263012: Odd numbers D not a square that admit proper solutions (x, y) to the Pell equation x^2 - D*y^2 = +8 with both x and y odd.

The programs for A263012, there is no canonical definition to state claims against.
-/

/-! ## A263012.P15382403529488560757

`∩[A057126(n+1), A391419(n+1)]`
-/

namespace A263012.P15382403529488560757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263012.P15382403529488560757

/-! ## A263012.P16941615515298589785

`∩[A058529(n+1), A391419(n+1)]`
-/

namespace A263012.P16941615515298589785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263012.P16941615515298589785

/-! ## A263012.P6352586229815874723

`∩[A253408(n+1), A391419(n+1)]`
-/

namespace A263012.P6352586229815874723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263012.P6352586229815874723

/-! ## A263012.P1241757552586340935

`∩[A263011(n+1), A391419(n+1)]`
-/

namespace A263012.P1241757552586340935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263012.P1241757552586340935

/-! ## A263012.P15625598806934710489

`∩[2*n+1, A264355(n+1)]`
-/

namespace A263012.P15625598806934710489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263012.P15625598806934710489

/-!
# A263013: a(0) = -a(1) = a(2) = 1, a(n) = 0 for n>2.

The programs for A263013, the canonical program `A263013.P2235530556352225671` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263013 has offset 0).

The definition of A263013 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130716, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A263013.P2235530556352225671

`(-1)^n*A130716(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A263013

/-- `(-1)^n*A130716(n)` -/
def P2235530556352225671.Spec : Prop :=
  ∀ n, P2235530556352225671.a n = A263013 n

theorem P2235530556352225671.correct : P2235530556352225671.Spec := by
  intro n
  simp only [A263013]

end A263013

/-!
# A263014: a(n) = Sum_{0 < a, b <= n and gcd(a^2 + b^2, n) = 1} (a + bi)^n (mod n).

The programs for A263014, there is no canonical definition to state claims against.
-/

/-! ## A263014.P16147000533102796570

`and(A091234(n+1), A340852(n+1))`
-/

namespace A263014.P16147000533102796570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091234 (n + 1)) (A340852 (n + 1))

end

end A263014.P16147000533102796570

/-! ## A263014.P11697633416725105769

`and(A048146(n+1), A105154(A072861(n+1)))`
-/

namespace A263014.P11697633416725105769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048146 (n + 1)) (A105154 (A072861 (n + 1)).toNat)

end

end A263014.P11697633416725105769

/-! ## A263014.P11780967384311340340

`and(A091234(n+1), A105154(A072861(n+1)))`
-/

namespace A263014.P11780967384311340340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091234 (n + 1)) (A105154 (A072861 (n + 1)).toNat)

end

end A263014.P11780967384311340340

/-! ## A263014.P1973167545649881554

`and(A231563(A225561(n+1)), A340852(n+1))`
-/

namespace A263014.P1973167545649881554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A231563 (A225561 (n + 1)).toNat) (A340852 (n + 1))

end

end A263014.P1973167545649881554

/-! ## A263014.P9369049558250567157

`and(A341434(n+1)*A341435(n+1), A341412(n+1))`
-/

namespace A263014.P9369049558250567157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A341434 (n + 1) * A341435 (n + 1)) (A341412 (n + 1))

end

end A263014.P9369049558250567157

/-!
# A263015: Integers n such that A007504(n) is the sum of 2 nonzero squares.

The programs for A263015, there is no canonical definition to state claims against.
-/

/-! ## A263015.P3655993401404616100

`lt[A010054(3*n+2), A025426(A007504(n))]`
-/

namespace A263015.P3655993401404616100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A007504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263015.P3655993401404616100

/-! ## A263015.P2187550025180998849

`lt[A131531(3*n+5), A025426(A007504(n))]`
-/

namespace A263015.P2187550025180998849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A007504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263015.P2187550025180998849

/-! ## A263015.P1626851504508373072

`lt[0, A037214(A007504(n))]`
-/

namespace A263015.P1626851504508373072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 (A007504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A263015.P1626851504508373072

/-! ## A263015.P13835765943477512993

`lt[A000038(n), A000161(A007504(n))]`
-/

namespace A263015.P13835765943477512993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A007504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263015.P13835765943477512993

/-! ## A263015.P15445136708187970436

`lt[A000034(n), A004018(A007504(n))]`
-/

namespace A263015.P15445136708187970436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A007504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263015.P15445136708187970436

/-!
# A263016: Numbers n such that A263014(n) > 0.

The programs for A263016, there is no canonical definition to state claims against.
-/

/-! ## A263016.P9785804071328929244

`lt[0, A263014(n+1)]+1`
-/

namespace A263016.P9785804071328929244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A263016.P9785804071328929244

/-! ## A263016.P12685896773202905598

`lt[1, A263014(n-a(n-1))]` with `a(0)=-2`
-/

namespace A263016.P12685896773202905598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  A263014 ((n : ℤ) - f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A263016.P12685896773202905598

/-! ## A263016.P4642097200271753141

`lt[0, A263014(A028310(n))]`
-/

namespace A263016.P4642097200271753141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263014 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A263016.P4642097200271753141

/-! ## A263016.P7530093788528306828

`A020725(lt[0, A263014(n+1)])`
-/

namespace A263016.P7530093788528306828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A263016.P7530093788528306828

/-! ## A263016.P3126591425670695988

`lt[0, A263014(A233583(n+1))]`
-/

namespace A263016.P3126591425670695988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263014 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A263016.P3126591425670695988

/-!
# A263017: n is the a(n)-th positive integer having its binary weight.

The programs for A263017, there is no canonical definition to state claims against.
-/

/-! ## A263017.P6280174231305832670

`1+A068076(n)`
-/

namespace A263017.P6280174231305832670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A068076 n

end

end A263017.P6280174231305832670

/-! ## A263017.P11612744823062712567

`A375216(A206332(n+1))`
-/

namespace A263017.P11612744823062712567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375216 (A206332 (n + 1)).toNat

end

end A263017.P11612744823062712567

/-! ## A263017.P15006111189593905491

`A361079(2*n+1)-A361079(n)`
-/

namespace A263017.P15006111189593905491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361079 (2 * n + 1) - A361079 n

end

end A263017.P15006111189593905491

/-! ## A263017.P3799650803509301318

`A375216(A004760(n+2))`
-/

namespace A263017.P3799650803509301318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375216 (A004760 (n + 2)).toNat

end

end A263017.P3799650803509301318

/-! ## A263017.P7862185082059332161

`A286558(A341911(n))`
-/

namespace A263017.P7862185082059332161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286558 (A341911 n).toNat

end

end A263017.P7862185082059332161

/-! ## A263017.P8512278801131372628

`A286552(A048678(n))`
-/

namespace A263017.P8512278801131372628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 (A048678 n).toNat

end

end A263017.P8512278801131372628

/-!
# A263018: If n is the i-th positive integer with binary weight j, then a(n) is the j-th positive integer with binary weight i.

The programs for A263018, there is no canonical definition to state claims against.
-/

/-! ## A263018.P4848240148351303634

`A066884(A356419(n+1))`
-/

namespace A263018.P4848240148351303634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A356419 (n + 1)).toNat

end

end A263018.P4848240148351303634

/-! ## A263018.P12519565735496876964

`A067576(A067587(n+1))`
-/

namespace A263018.P12519565735496876964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067576 (A067587 (n + 1)).toNat

end

end A263018.P12519565735496876964

/-!
# A263019: If n is the i-th positive integer with digital sum j, then a(n) is the j-th positive integer with digital sum i.

The programs for A263019, there is no canonical definition to state claims against.
-/

/-! ## A263019.P8050587504417176434

`gcd(∑{digits}[n, 10^#], A212044(A013611(n)))`
-/

namespace A263019.P8050587504417176434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ) (A212044 (A013611 n).toNat)

end

end A263019.P8050587504417176434

/-! ## A263019.P10531280844224524978

`gcd(A185284(A215078(n)), A348783(n))`
-/

namespace A263019.P10531280844224524978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 (A215078 n).toNat) (A348783 n)

end

end A263019.P10531280844224524978

/-!
# A263021: Expansion of f(-x^3)^6 / (phi(-x) * phi(-x^3)) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A263021, the canonical program `A263021.P16204132987011673581` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263021 has offset 0).

The definition of A263021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263021.P16204132987011673581

`A260109(Δ[n²])/3`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A263021

/-- `A260109(Δ[n²])/3` -/
def P16204132987011673581.Spec : Prop :=
  ∀ n, P16204132987011673581.a n = (A263021 n : ℚ)

end A263021

/-! ## A263021.P2421935825284510766

`A261445(A016789(n))/9`
-/

namespace A263021.P2421935825284510766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261445 (A016789 n).toNat : ℚ) / 9

end

end A263021.P2421935825284510766

namespace A263021

/-- `A261445(A016789(n))/9` -/
def P2421935825284510766.Spec : Prop :=
  ∀ n, P2421935825284510766.a n = (A263021 n : ℚ)

end A263021

/-! ## A263021.P13816906099983289775

`A124815(4*n+3)/3`
-/

namespace A263021.P13816906099983289775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124815 (4 * n + 3) : ℚ) / 3

end

end A263021.P13816906099983289775

namespace A263021

/-- `A124815(4*n+3)/3` -/
def P13816906099983289775.Spec : Prop :=
  ∀ n, P13816906099983289775.a n = (A263021 n : ℚ)

end A263021

/-! ## A263021.P16250605354949253097

`A002264(A260109(2*n+1))`
-/

namespace A263021.P16250605354949253097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A260109 (2 * n + 1)).toNat

end

end A263021.P16250605354949253097

namespace A263021

/-- `A002264(A260109(2*n+1))` -/
def P16250605354949253097.Spec : Prop :=
  ∀ n, P16250605354949253097.a n = A263021 n

end A263021

/-! ## A263021.P10758434238925533501

`A099480(A260109(2*n+1)-3)`
-/

namespace A263021.P10758434238925533501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099480 (A260109 (2 * n + 1) - 3).toNat

end

end A263021.P10758434238925533501

namespace A263021

/-- `A099480(A260109(2*n+1)-3)` -/
def P10758434238925533501.Spec : Prop :=
  ∀ n, P10758434238925533501.a n = A263021 n

end A263021

/-!
# A263022: a(n) = gcd(n, 1^(n-1) + 2^(n-1) + ... + (n-1)^(n-1)) for n > 1.

The programs for A263022, the canonical program `A263022.P14938541142514975447` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263022 has offset 2).

The definition of A263022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263022.P8781241815994775332

`gcd(A031971(n+1), n+2)`
-/

namespace A263022.P8781241815994775332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031971 (n + 1)) (n + 2 : ℤ)

end

end A263022.P8781241815994775332

namespace A263022

/-- `gcd(A031971(n+1), n+2)` -/
def P8781241815994775332.Spec : Prop :=
  ∀ n, (P8781241815994775332.a n : ℤ) = A263022 (n + 2)

end A263022

/-! ## A263022.P14938541142514975447

`gcd(∑[n+1]², A326478(n+2))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A263022

/-- `gcd(∑[n+1]², A326478(n+2))` -/
def P14938541142514975447.Spec : Prop :=
  ∀ n, (P14938541142514975447.a n : ℤ) = A263022 (n + 2)

theorem P14938541142514975447.correct : P14938541142514975447.Spec := by
  intro n
  simp only [A263022, Nat.add_sub_cancel]

end A263022

/-! ## A263022.P6646689817819526210

`A145979(n)/gcd(A027642(n+1), A145979(n))`
-/

namespace A263022.P6646689817819526210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145979 n : ℚ) / (Int.gcd (A027642 (n + 1)) (A145979 n) : ℚ)

end

end A263022.P6646689817819526210

namespace A263022

/-- `A145979(n)/gcd(A027642(n+1), A145979(n))` -/
def P6646689817819526210.Spec : Prop :=
  ∀ n, P6646689817819526210.a n = (A263022 (n + 2) : ℚ)

end A263022

/-! ## A263022.P4463125390179772264

`A283971(A326478(n+2))`
-/

namespace A263022.P4463125390179772264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (A326478 (n + 2)).toNat

end

end A263022.P4463125390179772264

namespace A263022

/-- `A283971(A326478(n+2))` -/
def P4463125390179772264.Spec : Prop :=
  ∀ n, P4463125390179772264.a n = A263022 (n + 2)

end A263022

/-! ## A263022.P2224462666410909172

`A055032(lcm(2, A326478(n+2)))`
-/

namespace A263022.P2224462666410909172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055032 (Int.lcm 2 (A326478 (n + 2)))

end

end A263022.P2224462666410909172

namespace A263022

/-- `A055032(lcm(2, A326478(n+2)))` -/
def P2224462666410909172.Spec : Prop :=
  ∀ n, P2224462666410909172.a n = A263022 (n + 2)

end A263022

/-! ## A263022.P696533798123878264

`gcd(A046094(n+2), A055032(n+2))`
-/

namespace A263022.P696533798123878264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046094 (n + 2)) (A055032 (n + 2))

end

end A263022.P696533798123878264

namespace A263022

/-- `gcd(A046094(n+2), A055032(n+2))` -/
def P696533798123878264.Spec : Prop :=
  ∀ n, (P696533798123878264.a n : ℤ) = A263022 (n + 2)

end A263022

/-!
# A263025: n is the a(n)-th positive integer having its sum of divisors.

The programs for A263025, there is no canonical definition to state claims against.
-/

/-! ## A263025.P13114142448953956867

`A304118(A141677(n+2))`
-/

namespace A263025.P13114142448953956867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (A141677 (n + 2)).toNat

end

end A263025.P13114142448953956867

/-! ## A263025.P6117857349896238661

`A232800(A087145(n+2))`
-/

namespace A263025.P6117857349896238661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232800 (A087145 (n + 2)).toNat

end

end A263025.P6117857349896238661

/-! ## A263025.P6502035497003350345

`A348041(A284249(n)*A358136(3*n+4))`
-/

namespace A263025.P6502035497003350345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348041 (A284249 n * A358136 (3 * n + 4)).toNat

end

end A263025.P6502035497003350345

/-! ## A263025.P7133248241959485239

`gcd(A108566(n), A147456(n+1))`
-/

namespace A263025.P7133248241959485239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108566 n) (A147456 (n + 1))

end

end A263025.P7133248241959485239

/-! ## A263025.P16463295653175978930

`gcd(A223708(n+1), A247602(n+1))`
-/

namespace A263025.P16463295653175978930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A223708 (n + 1)) (A247602 (n + 1))

end

end A263025.P16463295653175978930

/-!
# A263027: a(n) = A002322(n) + 1, where A002322 is Carmichael lambda.

The programs for A263027, there is no canonical definition to state claims against.
-/

/-! ## A263027.P1113102463691743020

`A002322(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263027.P1113102463691743020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) + 1

end

end A263027.P1113102463691743020

/-! ## A263027.P4454746456104352662

`2-A277127(n+1)+n`
-/

namespace A263027.P4454746456104352662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A277127 (n + 1) + (n : ℤ)

end

end A263027.P4454746456104352662

/-! ## A263027.P11144687104577357748

`A020725(A002322(n+1))`
-/

namespace A263027.P11144687104577357748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A002322 (n + 1)).toNat

end

end A263027.P11144687104577357748

/-! ## A263027.P6442540172107969238

`A008864(n+1)-A104193(n+1)`
-/

namespace A263027.P6442540172107969238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A104193 (n + 1)

end

end A263027.P6442540172107969238

/-! ## A263027.P9504889635585024280

`A039649(n+1)-A104194(n+1)`
-/

namespace A263027.P9504889635585024280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A104194 (n + 1)

end

end A263027.P9504889635585024280

/-! ## A263027.P13193791426902706205

`A000010(n+1)+1-A104194(n+1)`
-/

namespace A263027.P13193791426902706205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (1 - A104194 (n + 1))

end

end A263027.P13193791426902706205

/-! ## A263027.P5258068248725882339

`A000040(n+1)+1-A104193(n+1)`
-/

namespace A263027.P5258068248725882339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (1 - A104193 (n + 1))

end

end A263027.P5258068248725882339

/-! ## A263027.P220719491683823215

`A134198(n+1)+1-A051903(n+1)`
-/

namespace A263027.P220719491683823215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134198 (n + 1) + (1 - A051903 (n + 1))

end

end A263027.P220719491683823215

/-! ## A263027.P6801158746025625234

`A104192(n+1)+1-A104195(n+1)`
-/

namespace A263027.P6801158746025625234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104192 (n + 1) + (1 - A104195 (n + 1))

end

end A263027.P6801158746025625234

/-! ## A263027.P7474989843196128486

`A000010(n+1)/A034380(n+1)+1`
-/

namespace A263027.P7474989843196128486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ) + 1

end

end A263027.P7474989843196128486

/-! ## A263027.P16531258079983496827

`A007434(n+1)/A220345(n+1)+1`
-/

namespace A263027.P16531258079983496827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A220345 (n + 1) : ℚ) + 1

end

end A263027.P16531258079983496827

/-! ## A263027.P12482738141722529832

`gcd(A011773(n+1), A104194(n+1))+1`
-/

namespace A263027.P12482738141722529832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011773 (n + 1)) (A104194 (n + 1)) + 1

end

end A263027.P12482738141722529832

/-! ## A263027.P10602694764596099979

`(A039649(n+1)-1)/A034380(n+1)+1`
-/

namespace A263027.P10602694764596099979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A034380 (n + 1) : ℚ) + 1

end

end A263027.P10602694764596099979

/-! ## A263027.P13738200418376021750

`(1-A051953(n+1)+n)/A034380(n+1)+1`
-/

namespace A263027.P13738200418376021750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A034380 (n + 1) : ℚ) + 1

end

end A263027.P13738200418376021750

/-! ## A263027.P13191331313335963329

`(n+1)/∏{p}[n+1, #]*A173557(n+1)/A034380(n+1)+1`
-/

namespace A263027.P13191331313335963329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ) + 1

end

end A263027.P13191331313335963329

/-! ## A263027.P3154839776038289545

`A007947(A034380(n+1))*A289624(n+1)+1`
-/

namespace A263027.P3154839776038289545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A034380 (n + 1)).toNat * A289624 (n + 1) + 1

end

end A263027.P3154839776038289545

/-! ## A263027.P6336697084454770180

`(A048865(n+1)+A048864(n+1))/A034380(n+1)+1`
-/

namespace A263027.P6336697084454770180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048865 (n + 1) + A048864 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ) + 1

end

end A263027.P6336697084454770180

/-! ## A263027.P18366576561318481522

`A353643(n+1)*A353644(n+1)/A034380(n+1)+1`
-/

namespace A263027.P18366576561318481522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353643 (n + 1) * A353644 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ) + 1

end

end A263027.P18366576561318481522

/-! ## A263027.P9122784614970481623

`A004736(A289622(n+1))+1`
-/

namespace A263027.P9122784614970481623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A289622 (n + 1)).toNat + 1

end

end A263027.P9122784614970481623

/-!
# A263028: Numbers n such that A002322(n) + 1 is a prime, where A002322 is Carmichael lambda.

The programs for A263028, there is no canonical definition to state claims against.
-/

/-! ## A263028.P6355820605110379235

`lt[0, A296077(n+1)]+1`
-/

namespace A263028.P6355820605110379235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A263028.P6355820605110379235

/-! ## A263028.P8090906855502055579

`eq[2, A296076(n+1)]+1`
-/

namespace A263028.P8090906855502055579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263028.P8090906855502055579

/-! ## A263028.P3880968240383647386

`comp[A263029(n+1)-1]+1`
-/

namespace A263028.P3880968240383647386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263029 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A263028.P3880968240383647386

/-! ## A263028.P14598208469728897947

`record[(n+1)/A209634(A296076(n+1)+2)]`
-/

namespace A263028.P14598208469728897947
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A209634 (A296076 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263028.P14598208469728897947

/-! ## A263028.P1879591780397944229

`filter[n+1, A296077(#)]`
-/

namespace A263028.P1879591780397944229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296077 (f1 j) = 1) n)

end

end A263028.P1879591780397944229

/-! ## A263028.P2184599653981397317

`eq[2, A000005(A263027(n+1))]+1`
-/

namespace A263028.P2184599653981397317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A263027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263028.P2184599653981397317

/-! ## A263028.P2425506598279248545

`eq[1, A001222(A002322(n+1)+1)]+1`
-/

namespace A263028.P2425506598279248545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002322 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263028.P2425506598279248545

/-! ## A263028.P7465079266352843911

`eq[1, A054024(A002322(n+1)+1)]+1`
-/

namespace A263028.P7465079266352843911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A002322 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263028.P7465079266352843911

/-! ## A263028.P2614150207924540629

`eq[2, A296071(A002322(n+1)+1)]+1`
-/

namespace A263028.P2614150207924540629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296071 (A002322 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263028.P2614150207924540629

/-! ## A263028.P12221991586098639436

`eq[2, A303809(A002322(n+1)+1)]+1`
-/

namespace A263028.P12221991586098639436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303809 (A002322 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263028.P12221991586098639436

/-! ## A263028.P6426437263427177463

`eq[n, A028310(n)*A296077(A028310(n))]`
-/

namespace A263028.P6426437263427177463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A296077 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263028.P6426437263427177463

/-! ## A263028.P16333662464930378277

`eq[A002322(n+1), A171462(A002322(n+1)+1)]+1`
-/

namespace A263028.P16333662464930378277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171462 (A002322 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A263028.P16333662464930378277

/-!
# A263029: Numbers n such that A002322(n) + 1 is not a prime, where A002322 is Carmichael lambda.

The programs for A263029, there is no canonical definition to state claims against.
-/

/-! ## A263029.P17756338671967462412

`eq[0, A296077(n+1)]+1`
-/

namespace A263029.P17756338671967462412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263029.P17756338671967462412

/-! ## A263029.P17679298410748285977

`lt[2, A296076(n+1)]+1`
-/

namespace A263029.P17679298410748285977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A263029.P17679298410748285977

/-! ## A263029.P1984666464148273210

`comp[A263028(n+1)-1]+1`
-/

namespace A263029.P1984666464148273210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263028 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A263029.P1984666464148273210

/-! ## A263029.P8249965589036311987

`A181569(eq[0, A296077(n+1)])`
-/

namespace A263029.P8249965589036311987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263029.P8249965589036311987

/-! ## A263029.P3786390788882976726

`eq[0, A296077(A028310(n))]`
-/

namespace A263029.P3786390788882976726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296077 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263029.P3786390788882976726

/-! ## A263029.P17647609636875596358

`lt[2, A046523(A002322(n+1)+1)]+1`
-/

namespace A263029.P17647609636875596358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A002322 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A263029.P17647609636875596358

/-! ## A263029.P8018874084545945012

`A113484(eq[0, A296077(n+1)])`
-/

namespace A263029.P8018874084545945012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263029.P8018874084545945012

/-! ## A263029.P2525357529502295716

`eq[0, A296077(A233583(n+1))]`
-/

namespace A263029.P2525357529502295716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296077 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263029.P2525357529502295716

/-!
# A263032: Number of (n+2)X(n+2) 0..1 arrays with each row and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A263032, there is no canonical definition to state claims against.
-/

/-! ## A263032.P813453595533455502

`A263040((n+1)²+n²)`
-/

namespace A263032.P813453595533455502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 ((n + 1) ^ 2 + n ^ 2)

end

end A263032.P813453595533455502

/-!
# A263033: Number of (n+2)X(1+2) 0..1 arrays with each row and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A263033, there is no canonical definition to state claims against.
-/

/-! ## A263033.P11338543842795583265

`A263040(∑[n]+1)`
-/

namespace A263033.P11338543842795583265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263033.P11338543842795583265

/-! ## A263033.P12253705870889921717

`record[A010054(n)*A263040(n+1)]`
-/

namespace A263033.P12253705870889921717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263033.P12253705870889921717

/-! ## A263033.P7047092895723749915

`record[A263040(n+1)/A022167(n)]`
-/

namespace A263033.P7047092895723749915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263040 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263033.P7047092895723749915

/-! ## A263033.P843585804767807027

`record[root(A263040(n+1), A035607(n))]`
-/

namespace A263033.P843585804767807027
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263040 (n + 1) : ℝ) ^ (1 / (A035607 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263033.P843585804767807027

/-! ## A263033.P6960441295472853217

`record[gcd(A002262(n), A263040(n+1))]`
-/

namespace A263033.P6960441295472853217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A263040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263033.P6960441295472853217

/-!
# A263034: Number of (n+2)X(2+2) 0..1 arrays with each row and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A263034, there is no canonical definition to state claims against.
-/

/-! ## A263034.P16389856799613272746

`A263040(∑[n+1]+2)`
-/

namespace A263034.P16389856799613272746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263034.P16389856799613272746

/-! ## A263034.P3149467755908305353

`record[A010054(n)*A263040(n+2)]`
-/

namespace A263034.P3149467755908305353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263034.P3149467755908305353

/-! ## A263034.P8067583153800039838

`record[root(A263040(n+2), A035607(n))]`
-/

namespace A263034.P8067583153800039838
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263040 (n + 2) : ℝ) ^ (1 / (A035607 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263034.P8067583153800039838

/-! ## A263034.P11518073603055832356

`record[gcd(A002262(n), A263040(n+2))]`
-/

namespace A263034.P11518073603055832356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A263040 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263034.P11518073603055832356

/-! ## A263034.P15499077765526694504

`record[root(A263040(n+2), A301906(n+1))]`
-/

namespace A263034.P15499077765526694504
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263040 (n + 2) : ℝ) ^ (1 / (A301906 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263034.P15499077765526694504

/-!
# A263035: Number of (n+2)X(3+2) 0..1 arrays with each row and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A263035, there is no canonical definition to state claims against.
-/

/-! ## A263035.P13239435178535590100

`A263040(∑[n+2]+4)`
-/

namespace A263035.P13239435178535590100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263035.P13239435178535590100

/-! ## A263035.P7007796812030383772

`lcm((-1)^n, A263040(A167614(n+1)))`
-/

namespace A263035.P7007796812030383772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A263040 (A167614 (n + 1)).toNat)

end

end A263035.P7007796812030383772

/-! ## A263035.P9635039345902282094

`A263040(A167614(n+1))+A097599(n)`
-/

namespace A263035.P9635039345902282094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (A167614 (n + 1)).toNat + A097599 n

end

end A263035.P9635039345902282094

/-! ## A263035.P13621228932195402328

`A264668(n)+A263040(A167614(n+1))`
-/

namespace A263035.P13621228932195402328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A263040 (A167614 (n + 1)).toNat

end

end A263035.P13621228932195402328

/-! ## A263035.P2724914493116483646

`A250662(n)*A263040(A167614(n+1))`
-/

namespace A263035.P2724914493116483646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 n * A263040 (A167614 (n + 1)).toNat

end

end A263035.P2724914493116483646

/-!
# A263036: Number of (n+2)X(4+2) 0..1 arrays with each row and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A263036, there is no canonical definition to state claims against.
-/

/-! ## A263036.P6887311718280704031

`A263040(A374004(n+1))`
-/

namespace A263036.P6887311718280704031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (A374004 (n + 1)).toNat

end

end A263036.P6887311718280704031

/-! ## A263036.P15654885076513057710

`A263040(A052905(n)+9)`
-/

namespace A263036.P15654885076513057710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (A052905 n + 9).toNat

end

end A263036.P15654885076513057710

/-! ## A263036.P14724825598450539561

`A263040(A167614(n+2)+1)`
-/

namespace A263036.P14724825598450539561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (A167614 (n + 2) + 1).toNat

end

end A263036.P14724825598450539561

/-! ## A263036.P5618697620633435895

`A263040(A141214(n+1))`
-/

namespace A263036.P5618697620633435895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (A141214 (n + 1)).toNat

end

end A263036.P5618697620633435895

/-! ## A263036.P9232231734268029850

`A263040(A055998(n+2))`
-/

namespace A263036.P9232231734268029850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (A055998 (n + 2)).toNat

end

end A263036.P9232231734268029850

/-!
# A263037: Number of (n+2)X(5+2) 0..1 arrays with each row and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A263037, there is no canonical definition to state claims against.
-/

/-! ## A263037.P10329183864119118734

`A263040(A374005(n+1))`
-/

namespace A263037.P10329183864119118734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (A374005 (n + 1)).toNat

end

end A263037.P10329183864119118734

/-! ## A263037.P3843463364869296048

`A263040(A056000(n)+15)`
-/

namespace A263037.P3843463364869296048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (A056000 n + 15).toNat

end

end A263037.P3843463364869296048

/-! ## A263037.P1691684616030722842

`A263040(Δ[A264443(n)])`
-/

namespace A263037.P1691684616030722842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (f1 (n + 1) - f1 n).toNat

end

end A263037.P1691684616030722842

/-! ## A263037.P12096747943874006180

`A263040(eq[2, A092921(n)])`
-/

namespace A263037.P12096747943874006180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263037.P12096747943874006180

/-!
# A263038: Number of (n+2)X(6+2) 0..1 arrays with each row and column not divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A263038, there is no canonical definition to state claims against.
-/

/-! ## A263038.P7305747838487758358

`A263040(A374007(n+1))`
-/

namespace A263038.P7305747838487758358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (A374007 (n + 1)).toNat

end

end A263038.P7305747838487758358

/-! ## A263038.P10397777120834314128

`A263040(A000124(n+5)+5)`
-/

namespace A263038.P10397777120834314128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (A000124 (n + 5) + 5).toNat

end

end A263038.P10397777120834314128

/-! ## A263038.P14304898373027954453

`A263040(eq[16, A141020(n)])`
-/

namespace A263038.P14304898373027954453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263038.P14304898373027954453

/-!
# A263041: Expansion of f(-x, -x^5)^2 / f(x, x^3) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A263041, there is no canonical definition to state claims against.
-/

/-! ## A263041.P8247261174381794483

`-A053269(3*n+2)`
-/

namespace A263041.P8247261174381794483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053269 (3 * n + 2)

end

end A263041.P8247261174381794483

/-! ## A263041.P3690962543131879277

`A267852(3*n+1)`
-/

namespace A263041.P3690962543131879277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267852 (3 * n + 1)

end

end A263041.P3690962543131879277

/-! ## A263041.P991937733346054848

`char[A017237(n)]-A053269(3*n+2)`
-/

namespace A263041.P991937733346054848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017237 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A053269 (3 * n + 2)

end

end A263041.P991937733346054848

/-! ## A263041.P18427063865704620468

`A000038(n+1)-A053269(3*n+2)`
-/

namespace A263041.P18427063865704620468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A053269 (3 * n + 2)

end

end A263041.P18427063865704620468

/-! ## A263041.P13273588895775079458

`char[A067140(n+1)]-A053269(3*n+2)`
-/

namespace A263041.P13273588895775079458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067140 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A053269 (3 * n + 2)

end

end A263041.P13273588895775079458

/-! ## A263041.P5924666784568308716

`char[A067141(n+1)]-A053269(3*n+2)`
-/

namespace A263041.P5924666784568308716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067141 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A053269 (3 * n + 2)

end

end A263041.P5924666784568308716

/-!
# A263042: a(n) = Sum_{i >= 1} d_i(n) * prime(i) where d_i(n) is the i-th digit of n in base 10, and prime(i) is the i-th prime.

The programs for A263042, there is no canonical definition to state claims against.
-/

/-! ## A263042.P12886467927880958542

`A007953(n)+A007953(A056142(n))`
-/

namespace A263042.P12886467927880958542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A007953 (A056142 n).toNat

end

end A263042.P12886467927880958542

/-!
# A263043: a(n)=n for n = 1..5; for n>=6, a(n) = a(n-5)*a(n-3)*a(n-1) - a(n-4)*a(n-2).

The programs for A263043, the canonical program `A263043.P8844028230059979110` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263043 has offset 1).

The definition of A263043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-5)*a(n-3)*a(n-1)-a(n-4)*a(n-2)` (program `A263043.P8844028230059979110`, by `A263043.P8844028230059979110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A263043.P8844028230059979110

`a(n-5)*a(n-3)*a(n-1)-a(n-4)*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A263043

/-- `a(n-5)*a(n-3)*a(n-1)-a(n-4)*a(n-2)` -/
def P8844028230059979110.Spec : Prop :=
  ∀ n, P8844028230059979110.a n = A263043 (n + 1)

theorem P8844028230059979110.correct : P8844028230059979110.Spec := by
  intro n
  simp only [A263043, Nat.add_sub_cancel]

end A263043

/-!
# A263044: a(1) = a(2) = a(3) = 1; for n>3, a(n) = (a(n-3) + a(n-1))*(a(n-2) + a(n-3)).

The programs for A263044, the canonical program `A263044.P5118705259823762397` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263044 has offset 1).

The definition of A263044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-3)+a(n-1))*(a(n-2)+a(n-3))` (program `A263044.P5118705259823762397`, by `A263044.P5118705259823762397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A263044.P5118705259823762397

`(a(n-3)+a(n-1))*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A263044

/-- `(a(n-3)+a(n-1))*(a(n-2)+a(n-3))` -/
def P5118705259823762397.Spec : Prop :=
  ∀ n, (P5118705259823762397.a n : ℤ) = A263044 (n + 1)

theorem P5118705259823762397.correct : P5118705259823762397.Spec := by
  intro n
  simp only [A263044, Nat.add_sub_cancel]

end A263044

/-! ## A263044.P12934208635226744230

`A039960(or(3, A055937(n+1)))`
-/

namespace A263044.P12934208635226744230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (Int.lor 3 (A055937 (n + 1))).toNat

end

end A263044.P12934208635226744230

namespace A263044

/-- `A039960(or(3, A055937(n+1)))` -/
def P12934208635226744230.Spec : Prop :=
  ∀ n, P12934208635226744230.a n = A263044 (n + 1)

end A263044

/-! ## A263044.P9992288449562897381

`A098859(A050343(n)^A034851(n))`
-/

namespace A263044.P9992288449562897381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098859 (SequenceMachineLib.roundAway ((A050343 n : ℚ) ^ (A034851 n : ℤ))).toNat

end

end A263044.P9992288449562897381

namespace A263044

/-- `A098859(A050343(n)^A034851(n))` -/
def P9992288449562897381.Spec : Prop :=
  ∀ n, P9992288449562897381.a n = A263044 (n + 1)

end A263044

/-!
# A263045: a(1)=a(2)=1, a(3)=2; for n>3, a(n) = (a(n-1) + a(n-2))*a(n-3) - a(n-1).

The programs for A263045, the canonical program `A263045.P3061787187047994210` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263045 has offset 1).

The definition of A263045 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+a(n-2))*a(n-3)-a(n-1)` (program `A263045.P3061787187047994210`, by `A263045.P3061787187047994210.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A263045.P3061787187047994210

`(a(n-1)+a(n-2))*a(n-3)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A263045

/-- `(a(n-1)+a(n-2))*a(n-3)-a(n-1)` -/
def P3061787187047994210.Spec : Prop :=
  ∀ n, P3061787187047994210.a n = A263045 (n + 1)

theorem P3061787187047994210.correct : P3061787187047994210.Spec := by
  intro n
  simp only [A263045, Nat.add_sub_cancel]

end A263045

/-! ## A263045.P16941623732241802596

`A271824(ceil(log2(n+4)^n/6))`
-/

namespace A263045.P16941623732241802596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271824 ⌈Real.logb 2 (n + 4 : ℝ) ^ n / 6⌉.toNat

end

end A263045.P16941623732241802596

namespace A263045

/-- `A271824(ceil(log2(n+4)^n/6))` -/
def P16941623732241802596.Spec : Prop :=
  ∀ n, P16941623732241802596.a n = A263045 (n + 1)

end A263045

/-! ## A263045.P4525155828488208968

`A117470(A001975(n))`
-/

namespace A263045.P4525155828488208968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117470 (A001975 n).toNat

end

end A263045.P4525155828488208968

namespace A263045

/-- `A117470(A001975(n))` -/
def P4525155828488208968.Spec : Prop :=
  ∀ n, P4525155828488208968.a n = A263045 (n + 1)

end A263045

/-! ## A263045.P5936003865188584161

`A217467(A194532(n+1)+1)`
-/

namespace A263045.P5936003865188584161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217467 (A194532 (n + 1) + 1).toNat

end

end A263045.P5936003865188584161

namespace A263045

/-- `A217467(A194532(n+1)+1)` -/
def P5936003865188584161.Spec : Prop :=
  ∀ n, P5936003865188584161.a n = A263045 (n + 1)

end A263045

/-! ## A263045.P4946119283131515718

`and(A046789(n+1), A323927(n+1))+1`
-/

namespace A263045.P4946119283131515718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046789 (n + 1)) (A323927 (n + 1)) + 1

end

end A263045.P4946119283131515718

namespace A263045

/-- `and(A046789(n+1), A323927(n+1))+1` -/
def P4946119283131515718.Spec : Prop :=
  ∀ n, P4946119283131515718.a n = A263045 (n + 1)

end A263045

/-!
# A263047: a(1)=0, a(2)=1, a(3)=2; for n>3, a(n) = a(n-3)*a(n-1) - a(n-2).

The programs for A263047, the canonical program `A263047.P15818111117233098722` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263047 has offset 1).

The definition of A263047 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)*a(n-1)-a(n-2)` (program `A263047.P15818111117233098722`, by `A263047.P15818111117233098722.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A263047.P15818111117233098722

`a(n-3)*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A263047

/-- `a(n-3)*a(n-1)-a(n-2)` -/
def P15818111117233098722.Spec : Prop :=
  ∀ n, P15818111117233098722.a n = A263047 (n + 1)

theorem P15818111117233098722.correct : P15818111117233098722.Spec := by
  intro n
  simp only [A263047, Nat.add_sub_cancel]

end A263047

/-! ## A263047.P1542538371229064262

`a(n-3)/a(n-1)^(-1)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A263047.P1542538371229064262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 3) / a (n - 1) ^ (-1 : ℤ) - a (n - 2)

end

end A263047.P1542538371229064262

namespace A263047

/-- `a(n-3)/a(n-1)^(-1)-a(n-2)` -/
def P1542538371229064262.Spec : Prop :=
  ∀ n, P1542538371229064262.a n = (A263047 (n + 1) : ℚ)

end A263047

/-!
# A263048: a(0)=0, a(1)=1; for n>1, a(n) = a(n-2)^a(n-1) + a(n-1)^a(n-2).

The programs for A263048, the canonical program `A263048.P4214844415892088080` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263048 has offset 0).

The definition of A263048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)^a(n-1)+a(n-1)^a(n-2)` (program `A263048.P4214844415892088080`, by `A263048.P4214844415892088080.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A263048.P4214844415892088080

`a(n-2)^a(n-1)+a(n-1)^a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A263048

/-- `a(n-2)^a(n-1)+a(n-1)^a(n-2)` -/
def P4214844415892088080.Spec : Prop :=
  ∀ n, (P4214844415892088080.a n : ℤ) = A263048 n

theorem P4214844415892088080.correct : P4214844415892088080.Spec := by
  intro n
  simp only [A263048]

end A263048

/-!
# A263050: Expansion of f(-x) * f(x^4, x^8) / f(-x^3)^2 in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A263050, there is no canonical definition to state claims against.
-/

/-! ## A263050.P13168487481456508127

`A137569(2*n)`
-/

namespace A263050.P13168487481456508127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137569 (2 * n)

end

end A263050.P13168487481456508127

/-! ## A263050.P8283715311934750029

`2-4/2+A137569(n+n)`
-/

namespace A263050.P8283715311934750029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 + (A137569 (n + n) : ℚ)

end

end A263050.P8283715311934750029

/-! ## A263050.P15214007320317977180

`A137569(n+n)/A001222(A053760(n+1))`
-/

namespace A263050.P15214007320317977180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137569 (n + n) : ℚ) / (A001222 (A053760 (n + 1)).toNat : ℚ)

end

end A263050.P15214007320317977180

/-! ## A263050.P8322335153379331719

`A137569(n+n)%A000041(A092391(n+1))`
-/

namespace A263050.P8322335153379331719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137569 (n + n)) (A000041 (A092391 (n + 1)).toNat)

end

end A263050.P8322335153379331719

/-! ## A263050.P12755385598918828020

`A137569(n+n)+A000122(A000040(n+1))`
-/

namespace A263050.P12755385598918828020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137569 (n + n) + A000122 (A000040 (n + 1)).toNat

end

end A263050.P12755385598918828020

/-!
# A263051: Expansion of f(-x) * f(x^2, x^10) / f(-x^3)^2 in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A263051, there is no canonical definition to state claims against.
-/

/-! ## A263051.P6923224873733448033

`-A137569(2*n+1)`
-/

namespace A263051.P6923224873733448033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137569 (2 * n + 1)

end

end A263051.P6923224873733448033

/-! ## A263051.P16992529292736975101

`A000007(n+1)-A137569(2*n+1)`
-/

namespace A263051.P16992529292736975101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A137569 (2 * n + 1)

end

end A263051.P16992529292736975101

/-! ## A263051.P18240211609667586200

`A007814(2*n+1)-A137569(2*n+1)`
-/

namespace A263051.P18240211609667586200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) - A137569 (2 * n + 1)

end

end A263051.P18240211609667586200

/-! ## A263051.P515192625464597720

`A035385(2*n+1)-A137569(2*n+1)`
-/

namespace A263051.P515192625464597720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035385 (2 * n + 1) - A137569 (2 * n + 1)

end

end A263051.P515192625464597720

/-! ## A263051.P2085630427855717391

`1-(A137569(2*n+1)+A057979(2*n))`
-/

namespace A263051.P2085630427855717391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A137569 (2 * n + 1) + A057979 (2 * n))

end

end A263051.P2085630427855717391

/-! ## A263051.P17727176326298029845

`A274719(2*n+1)-A137569(2*n+1)`
-/

namespace A263051.P17727176326298029845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (2 * n + 1) - A137569 (2 * n + 1)

end

end A263051.P17727176326298029845

/-! ## A263051.P10647009421539632676

`1-(A137569(2*n+1)+A001511(2*n+1))`
-/

namespace A263051.P10647009421539632676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A137569 (2 * n + 1) + A001511 (2 * n + 1))

end

end A263051.P10647009421539632676

/-! ## A263051.P12422656217652485477

`1-(A137569(2*n+1)+A123726(2*n+1))`
-/

namespace A263051.P12422656217652485477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A137569 (2 * n + 1) + A123726 (2 * n + 1))

end

end A263051.P12422656217652485477

/-! ## A263051.P3592449341503917096

`A057979(A057979(2*n))-A137569(2*n+1)`
-/

namespace A263051.P3592449341503917096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A057979 (2 * n)).toNat - A137569 (2 * n + 1)

end

end A263051.P3592449341503917096

/-! ## A263051.P11317514327517037115

`A001222(A001222(A053760(n+2)))-A137569(2*n+1)`
-/

namespace A263051.P11317514327517037115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (A053760 (n + 2)).toNat).toNat - A137569 (2 * n + 1)

end

end A263051.P11317514327517037115

/-! ## A263051.P3033971820176757158

`A137569(2*n+1)/A057428(A016789(n))`
-/

namespace A263051.P3033971820176757158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137569 (2 * n + 1) : ℚ) / (A057428 (A016789 n).toNat : ℚ)

end

end A263051.P3033971820176757158

/-! ## A263051.P17814272996147267730

`A000122(A000040(n+1))-A137569(n+1+n)`
-/

namespace A263051.P17814272996147267730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000040 (n + 1)).toNat - A137569 (n + 1 + n)

end

end A263051.P17814272996147267730

/-! ## A263051.P5077501914230504043

`A137579(A137579(n))-A137569(2*n+1)`
-/

namespace A263051.P5077501914230504043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A137579 n).toNat - A137569 (2 * n + 1)

end

end A263051.P5077501914230504043

/-!
# A263052: Number of (n+1)X(n+1) 0..1 arrays with each row and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A263052, there is no canonical definition to state claims against.
-/

/-! ## A263052.P13665634187768400253

`A263060((n+1)²+n²)`
-/

namespace A263052.P13665634187768400253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 ((n + 1) ^ 2 + n ^ 2)

end

end A263052.P13665634187768400253

/-!
# A263053: Number of (n+1) X 2 0..1 arrays with each row and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A263053, the canonical program `A263053.P1060349985249524718` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263053 has offset 1).

The definition of A263053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263053.P9140386399354753035

`2^(n+1)-2/3-(-2)^(n+1)/3`
-/

namespace A263053.P9140386399354753035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) - (2 : ℚ) / 3 - ((-2) ^ (n + 1) : ℚ) / 3

end

end A263053.P9140386399354753035

namespace A263053

/-- `2^(n+1)-2/3-(-2)^(n+1)/3` -/
def P9140386399354753035.Spec : Prop :=
  ∀ n, P9140386399354753035.a n = (A263053 (n + 1) : ℚ)

end A263053

/-! ## A263053.P1060349985249524718

`2*A052992(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A263053

/-- `2*A052992(n)` -/
def P1060349985249524718.Spec : Prop :=
  ∀ n, P1060349985249524718.a n = A263053 (n + 1)

theorem P1060349985249524718.correct : P1060349985249524718.Spec := by
  intro n
  simp only [A263053, Nat.add_sub_cancel]

end A263053

/-! ## A263053.P6617197977067826646

`∑[ogf(2/(1-4x^2))]`
-/

namespace A263053.P6617197977067826646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, 0, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263053.P6617197977067826646

namespace A263053

/-- `∑[ogf(2/(1-4x^2))]` -/
def P6617197977067826646.Spec : Prop :=
  ∀ n, P6617197977067826646.a n = A263053 (n + 1)

end A263053

/-! ## A263053.P18110319180231314023

`ogf(2/(1-x-4x^2+4x^3))`
-/

namespace A263053.P18110319180231314023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -1, -4, 4] n

end

end A263053.P18110319180231314023

namespace A263053

/-- `ogf(2/(1-x-4x^2+4x^3))` -/
def P18110319180231314023.Spec : Prop :=
  ∀ n, P18110319180231314023.a n = A263053 (n + 1)

end A263053

/-! ## A263053.P12533518543832670298

`∑[4*a(n-2)]` with `a(0)=2, a(1)=0`
-/

namespace A263053.P12533518543832670298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263053.P12533518543832670298

namespace A263053

/-- `∑[4*a(n-2)]` -/
def P12533518543832670298.Spec : Prop :=
  ∀ n, (P12533518543832670298.a n : ℤ) = A263053 (n + 1)

end A263053

/-! ## A263053.P12589621732645196920

`or(2, 4*a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A263053.P12589621732645196920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  Nat.lor 2 (4 * a (n - 2))

end

end A263053.P12589621732645196920

namespace A263053

/-- `or(2, 4*a(n-2))` -/
def P12589621732645196920.Spec : Prop :=
  ∀ n, (P12589621732645196920.a n : ℤ) = A263053 (n + 1)

end A263053

/-! ## A263053.P785999347618264266

`xor(2, 4*a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A263053.P785999347618264266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  Nat.xor 2 (4 * a (n - 2))

end

end A263053.P785999347618264266

namespace A263053

/-- `xor(2, 4*a(n-2))` -/
def P785999347618264266.Spec : Prop :=
  ∀ n, (P785999347618264266.a n : ℤ) = A263053 (n + 1)

end A263053

/-! ## A263053.P16640482493458337643

`∑[and(2, gcd(2, n))^(n+1)]`
-/

namespace A263053.P16640482493458337643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Nat.gcd 2 n) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263053.P16640482493458337643

namespace A263053

/-- `∑[and(2, gcd(2, n))^(n+1)]` -/
def P16640482493458337643.Spec : Prop :=
  ∀ n, (P16640482493458337643.a n : ℤ) = A263053 (n + 1)

end A263053

/-! ## A263053.P12026933714925109649

`or(2^or(1, n), a(n-1))` with `a(0)=2`
-/

namespace A263053.P12026933714925109649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor (2 ^ Nat.lor 1 n) (a (n - 1))

end

end A263053.P12026933714925109649

namespace A263053

/-- `or(2^or(1, n), a(n-1))` -/
def P12026933714925109649.Spec : Prop :=
  ∀ n, (P12026933714925109649.a n : ℤ) = A263053 (n + 1)

end A263053

/-! ## A263053.P8332700839237012438

`∑[a(n-2)/(1/2)²]` with `a(0)=2, a(1)=0`
-/

namespace A263053.P8332700839237012438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263053.P8332700839237012438

namespace A263053

/-- `∑[a(n-2)/(1/2)²]` -/
def P8332700839237012438.Spec : Prop :=
  ∀ n, P8332700839237012438.a n = (A263053 (n + 1) : ℚ)

end A263053

/-! ## A263053.P2424260966115107305

`∑[(2*and(1, n+1))^(n+1)]`
-/

namespace A263053.P2424260966115107305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 (n + 1)) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263053.P2424260966115107305

namespace A263053

/-- `∑[(2*and(1, n+1))^(n+1)]` -/
def P2424260966115107305.Spec : Prop :=
  ∀ n, (P2424260966115107305.a n : ℤ) = A263053 (n + 1)

end A263053

/-! ## A263053.P13182663354587313468

`∑[(gcd(4, 2*n)-2)^(n+1)]`
-/

namespace A263053.P13182663354587313468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 4 (2 * n) : ℤ) - 2) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263053.P13182663354587313468

namespace A263053

/-- `∑[(gcd(4, 2*n)-2)^(n+1)]` -/
def P13182663354587313468.Spec : Prop :=
  ∀ n, P13182663354587313468.a n = A263053 (n + 1)

end A263053

/-! ## A263053.P10254958649262238841

`∑[and(2, n-1+n)^(n+1)]`
-/

namespace A263053.P10254958649262238841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n : ℤ) - 1 + (n : ℤ)) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263053.P10254958649262238841

namespace A263053

/-- `∑[and(2, n-1+n)^(n+1)]` -/
def P10254958649262238841.Spec : Prop :=
  ∀ n, P10254958649262238841.a n = A263053 (n + 1)

end A263053

/-! ## A263053.P10532725843576015283

`∑[(xor(1, n)-(n-1))^(n+1)]`
-/

namespace A263053.P10532725843576015283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 n : ℤ) - ((n : ℤ) - 1)) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263053.P10532725843576015283

namespace A263053

/-- `∑[(xor(1, n)-(n-1))^(n+1)]` -/
def P10532725843576015283.Spec : Prop :=
  ∀ n, P10532725843576015283.a n = A263053 (n + 1)

end A263053

/-! ## A263053.P14874197152011269011

`∑[(2*or(1, n)-2*n)^(n+1)]`
-/

namespace A263053.P14874197152011269011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.lor 1 n : ℤ) - (2 * n : ℤ)) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263053.P14874197152011269011

namespace A263053

/-- `∑[(2*or(1, n)-2*n)^(n+1)]` -/
def P14874197152011269011.Spec : Prop :=
  ∀ n, P14874197152011269011.a n = A263053 (n + 1)

end A263053

/-! ## A263053.P6370771686699242446

`A026644(or(1, n))`
-/

namespace A263053.P6370771686699242446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026644 (Nat.lor 1 n)

end

end A263053.P6370771686699242446

namespace A263053

/-- `A026644(or(1, n))` -/
def P6370771686699242446.Spec : Prop :=
  ∀ n, P6370771686699242446.a n = A263053 (n + 1)

end A263053

/-! ## A263053.P5525896971220241806

`A238720(or(1, n))`
-/

namespace A263053.P5525896971220241806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238720 (Nat.lor 1 n)

end

end A263053.P5525896971220241806

namespace A263053

/-- `A238720(or(1, n))` -/
def P5525896971220241806.Spec : Prop :=
  ∀ n, P5525896971220241806.a n = A263053 (n + 1)

end A263053

/-! ## A263053.P4451257556805737311

`∑[A103424(n+1)]`
-/

namespace A263053.P4451257556805737311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263053.P4451257556805737311

namespace A263053

/-- `∑[A103424(n+1)]` -/
def P4451257556805737311.Spec : Prop :=
  ∀ n, P4451257556805737311.a n = A263053 (n + 1)

end A263053

/-! ## A263053.P993998297488821929

`∑[A199573(n+2)]`
-/

namespace A263053.P993998297488821929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199573 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263053.P993998297488821929

namespace A263053

/-- `∑[A199573(n+2)]` -/
def P993998297488821929.Spec : Prop :=
  ∀ n, P993998297488821929.a n = A263053 (n + 1)

end A263053

/-! ## A263053.P5260215420757176428

`∑[2*A199572(n)]`
-/

namespace A263053.P5260215420757176428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263053.P5260215420757176428

namespace A263053

/-- `∑[2*A199572(n)]` -/
def P5260215420757176428.Spec : Prop :=
  ∀ n, P5260215420757176428.a n = A263053 (n + 1)

end A263053

/-!
# A263054: Number of (n+1) X (2+1) 0..1 arrays with each row and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A263054, there is no canonical definition to state claims against.
-/

/-! ## A263054.P8391846302008488628

`A263060(∑[n+1]+2)`
-/

namespace A263054.P8391846302008488628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263054.P8391846302008488628

/-! ## A263054.P14563382211563057943

`record[root(A263060(n+1), A102405(n))]`
-/

namespace A263054.P14563382211563057943
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263060 (n + 1) : ℝ) ^ (1 / (A102405 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263054.P14563382211563057943

/-! ## A263054.P13009280332798899519

`record[gcd(A208333(n+2), A263060(n+3))]`
-/

namespace A263054.P13009280332798899519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208333 (n + 2)) (A263060 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263054.P13009280332798899519

/-! ## A263054.P3278580193705086001

`A263060(A133263(n+1))+A008683(4*(n+1))`
-/

namespace A263054.P3278580193705086001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A133263 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A263054.P3278580193705086001

/-! ## A263054.P12719156731107029244

`record[A263060(∑[A152271(n)])]`
-/

namespace A263054.P12719156731107029244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263054.P12719156731107029244

/-!
# A263055: Number of (n+1)X(3+1) 0..1 arrays with each row and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A263055, there is no canonical definition to state claims against.
-/

/-! ## A263055.P10583163290138409654

`A263060(∑[n+2]+4)`
-/

namespace A263055.P10583163290138409654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263055.P10583163290138409654

/-! ## A263055.P14134526023801847121

`lcm(2, A263060(A167614(n+1)))`
-/

namespace A263055.P14134526023801847121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A263060 (A167614 (n + 1)).toNat)

end

end A263055.P14134526023801847121

/-! ## A263055.P11223534407169002689

`record[gcd(A208333(n+2), A263060(n+4))]`
-/

namespace A263055.P11223534407169002689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208333 (n + 2)) (A263060 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263055.P11223534407169002689

/-! ## A263055.P253142799540208440

`A263060(A167614(n+1))+A185284(n)`
-/

namespace A263055.P253142799540208440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A167614 (n + 1)).toNat + A185284 n

end

end A263055.P253142799540208440

/-! ## A263055.P16406632863287415331

`A263060(A167614(n+1))%A263056(n+2)`
-/

namespace A263055.P16406632863287415331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263060 (A167614 (n + 1)).toNat) (A263056 (n + 2))

end

end A263055.P16406632863287415331

/-!
# A263056: Number of (n+1)X(4+1) 0..1 arrays with each row and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A263056, there is no canonical definition to state claims against.
-/

/-! ## A263056.P8909851268902369102

`A263060(A374004(n+1))`
-/

namespace A263056.P8909851268902369102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A374004 (n + 1)).toNat

end

end A263056.P8909851268902369102

/-! ## A263056.P15705317648195534878

`A263060(A141214(n)+7)`
-/

namespace A263056.P15705317648195534878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A141214 n + 7).toNat

end

end A263056.P15705317648195534878

/-! ## A263056.P13534223304911082147

`A263060(A052905(n)+9)`
-/

namespace A263056.P13534223304911082147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A052905 n + 9).toNat

end

end A263056.P13534223304911082147

/-! ## A263056.P14261677425582807845

`A263060(A055999(n)+10)`
-/

namespace A263056.P14261677425582807845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A055999 n + 10).toNat

end

end A263056.P14261677425582807845

/-! ## A263056.P3752546441956145883

`A263060(A167614(n+2)+1)`
-/

namespace A263056.P3752546441956145883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A167614 (n + 2) + 1).toNat

end

end A263056.P3752546441956145883

/-!
# A263057: Number of (n+1)X(5+1) 0..1 arrays with each row and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A263057, there is no canonical definition to state claims against.
-/

/-! ## A263057.P7533792721698268082

`A263060(A374005(n+1))`
-/

namespace A263057.P7533792721698268082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A374005 (n + 1)).toNat

end

end A263057.P7533792721698268082

/-! ## A263057.P11175085215186203396

`A263060(A167499(n+3))`
-/

namespace A263057.P11175085215186203396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A167499 (n + 3)).toNat

end

end A263057.P11175085215186203396

/-! ## A263057.P10398753023108811428

`A263060(A155212(n)+13)`
-/

namespace A263057.P10398753023108811428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A155212 n + 13).toNat

end

end A263057.P10398753023108811428

/-! ## A263057.P18269382125260461180

`A263060(A056000(n)+15)`
-/

namespace A263057.P18269382125260461180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A056000 n + 15).toNat

end

end A263057.P18269382125260461180

/-! ## A263057.P17529127040643112512

`A263060(eq[6, A131818(n+1)])`
-/

namespace A263057.P17529127040643112512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263057.P17529127040643112512

/-!
# A263058: Number of (n+1)X(6+1) 0..1 arrays with each row and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A263058, there is no canonical definition to state claims against.
-/

/-! ## A263058.P530139732728358932

`A263060(∑[n+5]+16)`
-/

namespace A263058.P530139732728358932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A263058.P530139732728358932

/-! ## A263058.P9518462517645246320

`A263060(A374007(n+1))+A025469(n)`
-/

namespace A263058.P9518462517645246320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A374007 (n + 1)).toNat + A025469 n

end

end A263058.P9518462517645246320

/-! ## A263058.P12712351231377175312

`A263060(A374007(n+1))+A185284(n)`
-/

namespace A263058.P12712351231377175312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A374007 (n + 1)).toNat + A185284 n

end

end A263058.P12712351231377175312

/-! ## A263058.P8531500015883110605

`A263060(A374007(n+1))+A010051(2*(n+2))`
-/

namespace A263058.P8531500015883110605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A374007 (n + 1)).toNat + A010051 (2 * (n + 2))

end

end A263058.P8531500015883110605

/-! ## A263058.P12158200545309610859

`A263060(A000096(n+4)+7)+A010051(2*(n+2))`
-/

namespace A263058.P12158200545309610859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A000096 (n + 4) + 7).toNat + A010051 (2 * (n + 2))

end

end A263058.P12158200545309610859

/-!
# A263059: Number of (n+1)X(7+1) 0..1 arrays with each row and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A263059, there is no canonical definition to state claims against.
-/

/-! ## A263059.P15132417123444144313

`A263060(A374008(n+1))`
-/

namespace A263059.P15132417123444144313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A374008 (n + 1)).toNat

end

end A263059.P15132417123444144313

/-! ## A263059.P6751004169544807566

`A263060(A000096(n+5)+8)`
-/

namespace A263059.P6751004169544807566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A000096 (n + 5) + 8).toNat

end

end A263059.P6751004169544807566

/-! ## A263059.P3342159362159580910

`A263060(eq[8, A131818(n+1)])`
-/

namespace A263059.P3342159362159580910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263059.P3342159362159580910

/-! ## A263059.P11066238149321664555

`A263060(eq[4, A219347(n)])`
-/

namespace A263059.P11066238149321664555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263059.P11066238149321664555

/-! ## A263059.P10987423245645696571

`A263060(A000124(n+7)-7)`
-/

namespace A263059.P10987423245645696571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263060 (A000124 (n + 7) - 7).toNat

end

end A263059.P10987423245645696571

/-!
# A263060: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with each row and column not divisible by 3, read as a binary number with top and left being the most significant bits.

The programs for A263060, there is no canonical definition to state claims against.
-/

/-! ## A263060.P481495742063725184

`A271129(A230254(n!))+1`
-/

namespace A263060.P481495742063725184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271129 (A230254 (Nat.factorial n)).toNat + 1

end

end A263060.P481495742063725184

/-!
# A263061: Number of lattice paths from {5}^n to {0}^n using steps that decrement one or more components by one.

The programs for A263061, there is no canonical definition to state claims against.
-/

/-! ## A263061.P17672655171279543132

`A262809(eq[5, A002262(n)])`
-/

namespace A263061.P17672655171279543132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263061.P17672655171279543132

/-! ## A263061.P1882720356780288748

`A262809(A000217(n+5)+5)`
-/

namespace A263061.P1882720356780288748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A000217 (n + 5) + 5).toNat

end

end A263061.P1882720356780288748

/-! ## A263061.P15084363497514749419

`A262809(eq[6, A002260(n+1)])`
-/

namespace A263061.P15084363497514749419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263061.P15084363497514749419

/-!
# A263062: Number of lattice paths from {6}^n to {0}^n using steps that decrement one or more components by one.

The programs for A263062, there is no canonical definition to state claims against.
-/

/-! ## A263062.P345562579184360441

`A262809(eq[6, A002262(n)])`
-/

namespace A263062.P345562579184360441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263062.P345562579184360441

/-! ## A263062.P16099800336267202941

`A262809(eq[7, A002260(n+1)])`
-/

namespace A263062.P16099800336267202941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263062.P16099800336267202941

/-!
# A263064: Number of lattice paths from (n,n,n,n) to (0,0,0,0) using steps that decrement one or more components by one.

The programs for A263064, there is no canonical definition to state claims against.
-/

/-! ## A263064.P3095389366443721043

`A262809(A052905(n+2))`
-/

namespace A263064.P3095389366443721043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A052905 (n + 2)).toNat

end

end A263064.P3095389366443721043

/-! ## A263064.P10939961706556199311

`A262809(A056115(n)+10)`
-/

namespace A263064.P10939961706556199311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A056115 n + 10).toNat

end

end A263064.P10939961706556199311

/-! ## A263064.P5085903011678121944

`A262809(eq[4, A025581(n)])`
-/

namespace A263064.P5085903011678121944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263064.P5085903011678121944

/-! ## A263064.P16958898336223712837

`A262809(Δ[A055831(n+4)])`
-/

namespace A263064.P16958898336223712837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (f1 (n + 1) - f1 n).toNat

end

end A263064.P16958898336223712837

/-! ## A263064.P2483520300085346920

`A262809(A055999(n+2)+1)`
-/

namespace A263064.P2483520300085346920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A055999 (n + 2) + 1).toNat

end

end A263064.P2483520300085346920

/-!
# A263065: Number of lattice paths from {n}^5 to {0}^5 using steps that decrement one or more components by one.

The programs for A263065, there is no canonical definition to state claims against.
-/

/-! ## A263065.P4793831209613997274

`A262809(A055999(n+3))`
-/

namespace A263065.P4793831209613997274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A055999 (n + 3)).toNat

end

end A263065.P4793831209613997274

/-! ## A263065.P10799429230356463834

`A262809(eq[5, A025581(n)])`
-/

namespace A263065.P10799429230356463834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263065.P10799429230356463834

/-! ## A263065.P9654711657475755407

`A262809(eq[11, A099375(n)])`
-/

namespace A263065.P9654711657475755407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263065.P9654711657475755407

/-! ## A263065.P11393757682770625749

`A262809(eq[6, A004736(n+1)])`
-/

namespace A263065.P11393757682770625749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263065.P11393757682770625749

/-! ## A263065.P12260928620103655912

`A262809(Δ[A055831(n+5)]-1)`
-/

namespace A263065.P12260928620103655912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (f1 (n + 1) - f1 n - 1).toNat

end

end A263065.P12260928620103655912

/-!
# A263066: 

The programs for A263066, there is no canonical definition to state claims against.
-/

/-! ## A263066.P8206831346113846789

`A262809(eq[6, A025581(n)])`
-/

namespace A263066.P8206831346113846789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263066.P8206831346113846789

/-! ## A263066.P13255267741239856437

`A262809(A141214(n+4)-4)`
-/

namespace A263066.P13255267741239856437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A141214 (n + 4) - 4).toNat

end

end A263066.P13255267741239856437

/-! ## A263066.P240086804151468265

`A262809(A056115(n+3)-n)`
-/

namespace A263066.P240086804151468265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A056115 (n + 3) - (n : ℤ)).toNat

end

end A263066.P240086804151468265

/-!
# A263067: 

The programs for A263067, there is no canonical definition to state claims against.
-/

/-! ## A263067.P14723579292627395320

`A262809(A056115(n+3)+7)`
-/

namespace A263067.P14723579292627395320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A056115 (n + 3) + 7).toNat

end

end A263067.P14723579292627395320

/-! ## A263067.P1450561135493879251

`A262809(A000124(n+8)-9)`
-/

namespace A263067.P1450561135493879251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A000124 (n + 8) - 9).toNat

end

end A263067.P1450561135493879251

/-!
# A263069: 

The programs for A263069, there is no canonical definition to state claims against.
-/

/-! ## A263069.P15225414803873984383

`A262809(eq[9, A025581(n)])`
-/

namespace A263069.P15225414803873984383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263069.P15225414803873984383

/-!
# A263070: 

The programs for A263070, there is no canonical definition to state claims against.
-/

/-! ## A263070.P15525928823159537607

`A262809(A055999(n+8)-5)+A025437(n)`
-/

namespace A263070.P15525928823159537607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A055999 (n + 8) - 5).toNat + A025437 n

end

end A263070.P15525928823159537607

/-!
# A263071: 

The programs for A263071, there is no canonical definition to state claims against.
-/

/-! ## A263071.P9331381331041752069

`A262809(A167499(n+8)+4)`
-/

namespace A263071.P9331381331041752069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A167499 (n + 8) + 4).toNat

end

end A263071.P9331381331041752069

/-!
# A263072: 

The programs for A263072, there is no canonical definition to state claims against.
-/

/-! ## A263072.P15405622075687236474

`A262809(eq[11, A002260(n+1)])`
-/

namespace A263072.P15405622075687236474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263072.P15405622075687236474

/-!
# A263073: Expansion of phi(-x^5) / (chi(-x) * chi(-x^15)) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A263073, there is no canonical definition to state claims against.
-/

/-! ## A263073.P15361371508585059631

`A263074(5*n+3)`
-/

namespace A263073.P15361371508585059631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263074 (5 * n + 3)

end

end A263073.P15361371508585059631

/-! ## A263073.P8670414118063810169

`abs(A263074(A016885(n)))`
-/

namespace A263073.P8670414118063810169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A263074 (A016885 n).toNat|

end

end A263073.P8670414118063810169

/-! ## A263073.P11276280865695702389

`gcd(A000038(n), A263074(A016885(n)))`
-/

namespace A263073.P11276280865695702389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A263074 (A016885 n).toNat)

end

end A263073.P11276280865695702389

/-! ## A263073.P9775919862054485183

`A263074(A016885(n))+A000007(n+1)`
-/

namespace A263073.P9775919862054485183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263074 (A016885 n).toNat + A000007 (n + 1)

end

end A263073.P9775919862054485183

/-! ## A263073.P7560944986074385089

`A057979(2*n)*A263074(A016885(n))`
-/

namespace A263073.P7560944986074385089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A263074 (A016885 n).toNat

end

end A263073.P7560944986074385089

/-! ## A263073.P4985004320111550790

`A263074(A016885(n))%A000041(n+2)`
-/

namespace A263073.P4985004320111550790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263074 (A016885 n).toNat) (A000041 (n + 2))

end

end A263073.P4985004320111550790

/-! ## A263073.P5341977070876642810

`A165603(n)%2*A263074(A016885(n))`
-/

namespace A263073.P5341977070876642810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165603 n) 2 * A263074 (A016885 n).toNat

end

end A263073.P5341977070876642810

/-! ## A263073.P2211847573101077065

`A263074(A016885(n))+and(2, A010054(n))`
-/

namespace A263073.P2211847573101077065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263074 (A016885 n).toNat + Int.land 2 (A010054 n)

end

end A263073.P2211847573101077065

/-! ## A263073.P15573996608602078093

`or(A154272(n+1), A263074(A016885(n)))`
-/

namespace A263073.P15573996608602078093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154272 (n + 1)) (A263074 (A016885 n).toNat)

end

end A263073.P15573996608602078093

/-! ## A263073.P7077288582577341000

`A263074(A016885(n))-n²*A000007(n)`
-/

namespace A263073.P7077288582577341000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263074 (A016885 n).toNat - (n ^ 2 : ℤ) * A000007 n

end

end A263073.P7077288582577341000

/-! ## A263073.P17958453802139201922

`A263074(A016885(n))%A199208(n)`
-/

namespace A263073.P17958453802139201922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263074 (A016885 n).toNat) (A199208 n)

end

end A263073.P17958453802139201922

/-!
# A263074: Expansion of phi(-x) / (chi(-x^3) * chi(-x^5)) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A263074, there is no canonical definition to state claims against.
-/

/-! ## A263074.P2812187605398242029

`A115525(A005455(n))*A115526(n)`
-/

namespace A263074.P2812187605398242029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115525 (A005455 n).toNat * A115526 n

end

end A263074.P2812187605398242029

/-! ## A263074.P3422495293515141484

`A117945(2*n+1)+A008683(A213800(2*n+1))`
-/

namespace A263074.P3422495293515141484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117945 (2 * n + 1) + A008683 (A213800 (2 * n + 1)).toNat

end

end A263074.P3422495293515141484

/-!
# A263075: G.f. satisfies: [x^(n-1)] A(x)^(n^2) = n^n * (n-1)! for n>=1.

The programs for A263075, there is no canonical definition to state claims against.
-/

/-! ## A263075.P9621793773536957519

`A306732(A006380(n))`
-/

namespace A263075.P9621793773536957519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306732 (A006380 n).toNat

end

end A263075.P9621793773536957519

/-!
# A263077: a(n) = greatest k where A155043(k) < A155043(n).

The programs for A263077, there is no canonical definition to state claims against.
-/

/-! ## A263077.P4610478269938869665

`A263082(A155043(n+1)-1)`
-/

namespace A263077.P4610478269938869665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263082 (A155043 (n + 1) - 1).toNat

end

end A263077.P4610478269938869665

/-! ## A263077.P7600245507146302569

`A263078(n+1)+1+n`
-/

namespace A263077.P7600245507146302569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263078 (n + 1) + 1 + (n : ℤ)

end

end A263077.P7600245507146302569

/-! ## A263077.P11390070597358453109

`A263082(∑[A264893(n)]-1)`
-/

namespace A263077.P11390070597358453109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263082 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A263077.P11390070597358453109

/-! ## A263077.P10362003556456293297

`A263082(∑[A264893(n)%A008729(n)])`
-/

namespace A263077.P10362003556456293297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264893 n) (A008729 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263082 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263077.P10362003556456293297

/-! ## A263077.P6702254454389564497

`A262503(A155043(A049820(n+1)%A000043(n+1)))`
-/

namespace A263077.P6702254454389564497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262503 (A155043 (Int.tmod (A049820 (n + 1)) (A000043 (n + 1))).toNat).toNat

end

end A263077.P6702254454389564497

/-!
# A263078: a(n) = greatest k for which A155043(n+k) < A155043(n); a(n) = A263077(n)-n.

The programs for A263078, there is no canonical definition to state claims against.
-/

/-! ## A263078.P4900655988540888914

`A263077(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263078.P4900655988540888914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263077 (n + 1) - (n + 1 : ℤ)

end

end A263078.P4900655988540888914

/-! ## A263078.P2829982273762330687

`A263082(∑[A264893(n)]-1)-(n+1)`
-/

namespace A263078.P2829982273762330687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263082 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat - (n + 1 : ℤ)

end

end A263078.P2829982273762330687

/-! ## A263078.P2728929101864546465

`A263082(A155043(n+1)-1)-(n+1)`
-/

namespace A263078.P2728929101864546465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263082 (A155043 (n + 1) - 1).toNat - (n + 1 : ℤ)

end

end A263078.P2728929101864546465

/-! ## A263078.P3951804006892334267

`A023443(A263077(n+1))-n`
-/

namespace A263078.P3951804006892334267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A263077 (n + 1)).toNat - (n : ℤ)

end

end A263078.P3951804006892334267

/-! ## A263078.P12475509339652463792

`A263077(A008619(2*n))-n-1`
-/

namespace A263078.P12475509339652463792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263077 (A008619 (2 * n)).toNat - (n : ℤ) - 1

end

end A263078.P12475509339652463792

/-! ## A263078.P1482698712665124989

`A263077(A014430(∑[n]))-1-n`
-/

namespace A263078.P1482698712665124989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263077 (A014430 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1 - (n : ℤ)

end

end A263078.P1482698712665124989

/-!
# A263079: Numbers n for which there does not exist any x > n such that A155043(x) < A155043(n).

The programs for A263079, there is no canonical definition to state claims against.
-/

/-! ## A263079.P12727149126519876641

`record[A263265(n+1)]`
-/

namespace A263079.P12727149126519876641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263079.P12727149126519876641

/-! ## A263079.P2687030837437208205

`lt[A263078(n+1), 0]+1`
-/

namespace A263079.P2687030837437208205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263078 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A263079.P2687030837437208205

/-! ## A263079.P4198274519927175536

`lt[A263077(n+1), n+1]+1`
-/

namespace A263079.P4198274519927175536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263077 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A263079.P4198274519927175536

/-! ## A263079.P17544734024667312217

`record[xor(A000007(n), A263265(n))]`
-/

namespace A263079.P17544734024667312217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A263265 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263079.P17544734024667312217

/-! ## A263079.P12096062320263301640

`record[A028310(A263265(n))]`
-/

namespace A263079.P12096062320263301640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A263265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263079.P12096062320263301640

/-! ## A263079.P16571817007861894112

`record[A263265(n)%A000040(A000040(a(n-1)))]` with `a(0)=1`
-/

namespace A263079.P16571817007861894112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (A263265 n) (A000040 (A000040 (f1 (n - 1)).toNat).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263079.P16571817007861894112

/-!
# A263080: Numbers n for which there exists x > n such that A155043(x) < A155043(n); numbers n for which A263078(n) is positive.

The programs for A263080, there is no canonical definition to state claims against.
-/

/-! ## A263080.P12899226136088571940

`comp[record[A263265(n)]]`
-/

namespace A263080.P12899226136088571940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263265 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A263080.P12899226136088571940

/-! ## A263080.P7183235277519401254

`lt[n, A263077(n+1)]+1`
-/

namespace A263080.P7183235277519401254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A263080.P7183235277519401254

/-! ## A263080.P12494600049601061545

`eq[abs(A263078(n+1)), A263078(n+1)]+1`
-/

namespace A263080.P12494600049601061545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A263078 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A263080.P12494600049601061545

/-! ## A263080.P9036725050996310795

`eq[char[A263079(n+1)], A000007(n)]`
-/

namespace A263080.P9036725050996310795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263079 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A263080.P9036725050996310795

/-! ## A263080.P1221215893504308459

`eq[char[A263079(n+1)], A000038(n)]`
-/

namespace A263080.P1221215893504308459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263079 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A263080.P1221215893504308459

/-! ## A263080.P12719391064416264731

`lt[A000122(2*n), A263078(n+1)]+1`
-/

namespace A263080.P12719391064416264731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A263080.P12719391064416264731

/-! ## A263080.P12619015063890995883

`eq[char[A263079(n+1)], A151933(n)]`
-/

namespace A263080.P12619015063890995883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263079 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A263080.P12619015063890995883

/-!
# A263081: a(n) = largest k for which A155043(k) < A262508(n); a(n) = A262509(n) + A262909(n).

The programs for A263081, there is no canonical definition to state claims against.
-/

/-! ## A263081.P2658148774500338299

`A262509(n+1)+A262909(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263081.P2658148774500338299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262509 (n + 1) + A262909 (n + 1)

end

end A263081.P2658148774500338299

/-!
# A263082: a(n) = Max( A262503(k) : k=0,1,2,3,...,n ), where A262503(k) = largest x such that A155043(x) = k.

The programs for A263082, there is no canonical definition to state claims against.
-/

/-! ## A263082.P16087867279704969538

`A263077(A261089(n+1))`
-/

namespace A263082.P16087867279704969538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263077 (A261089 (n + 1)).toNat

end

end A263082.P16087867279704969538

/-! ## A263082.P10056731540688210312

`A263077(A263269(n+1))`
-/

namespace A263082.P10056731540688210312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263077 (A263269 (n + 1)).toNat

end

end A263082.P10056731540688210312

/-! ## A263082.P14114164486787923364

`A263077(A264988(n+1))`
-/

namespace A263082.P14114164486787923364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263077 (A264988 (n + 1)).toNat

end

end A263082.P14114164486787923364

/-! ## A263082.P17391283961428685968

`A263077(A259934(n+1))`
-/

namespace A263082.P17391283961428685968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263077 (A259934 (n + 1)).toNat

end

end A263082.P17391283961428685968

/-! ## A263082.P13538301606752141385

`A263077(A262503(n+1))`
-/

namespace A263082.P13538301606752141385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263077 (A262503 (n + 1)).toNat

end

end A263082.P13538301606752141385

/-!
# A263083: a(n) = largest k such that A049820(k) <= A262509(n).

The programs for A263083, there is no canonical definition to state claims against.
-/

/-! ## A263083.P14819266954408412700

`A262509(n+1)+A262908(n+1)`
-/

namespace A263083.P14819266954408412700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262509 (n + 1) + A262908 (n + 1)

end

end A263083.P14819266954408412700

/-! ## A263083.P17031500524001651588

`A262908(n+1)+A263081(n+1)-A262909(n+1)`
-/

namespace A263083.P17031500524001651588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262908 (n + 1) + (A263081 (n + 1) - A262909 (n + 1))

end

end A263083.P17031500524001651588

/-! ## A263083.P1239865863508886487

`A262908(n+1)+A082284(A262510(n+1))`
-/

namespace A263083.P1239865863508886487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262908 (n + 1) + A082284 (A262510 (n + 1)).toNat

end

end A263083.P1239865863508886487

/-! ## A263083.P7171684671208065599

`A262908(n+1)+A259934(A262508(n+1))`
-/

namespace A263083.P7171684671208065599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262908 (n + 1) + A259934 (A262508 (n + 1)).toNat

end

end A263083.P7171684671208065599

/-!
# A263084: a(n) = A263086(n) - A263085(n).

The programs for A263084, the canonical program `A263084.P12304099767879666495` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263084 has offset 1).

The definition of A263084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263084.P13363642153998921950

`A263086(n+1)-A263085(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263084.P13363642153998921950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263086 (n + 1) - A263085 (n + 1)

end

end A263084.P13363642153998921950

namespace A263084

/-- `A263086(n+1)-A263085(n+1)` -/
def P13363642153998921950.Spec : Prop :=
  ∀ n, P13363642153998921950.a n = A263084 (n + 1)

end A263084

/-! ## A263084.P12304099767879666495

`∑[A051950(2*(n+1))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A263084

/-- `∑[A051950(2*(n+1))]` -/
def P12304099767879666495.Spec : Prop :=
  ∀ n, P12304099767879666495.a n = A263084 (n + 1)

theorem P12304099767879666495.correct : P12304099767879666495.Spec := by
  intro n
  simp only [A263084, Nat.add_sub_cancel]

end A263084

/-! ## A263084.P8226988635736737579

`∑[A099777(n+1)-A099774(n+1)]`
-/

namespace A263084.P8226988635736737579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - A099774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263084.P8226988635736737579

namespace A263084

/-- `∑[A099777(n+1)-A099774(n+1)]` -/
def P8226988635736737579.Spec : Prop :=
  ∀ n, P8226988635736737579.a n = A263084 (n + 1)

end A263084

/-! ## A263084.P16839266415577330750

`∑[A000005(2*(n+1))-A099774(n+1)]`
-/

namespace A263084.P16839266415577330750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A099774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263084.P16839266415577330750

namespace A263084

/-- `∑[A000005(2*(n+1))-A099774(n+1)]` -/
def P16839266415577330750.Spec : Prop :=
  ∀ n, P16839266415577330750.a n = A263084 (n + 1)

end A263084

/-! ## A263084.P17323103402100815648

`∑[A099777(n+1)-A000005(2*n+1)]`
-/

namespace A263084.P17323103402100815648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - A000005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263084.P17323103402100815648

namespace A263084

/-- `∑[A099777(n+1)-A000005(2*n+1)]` -/
def P17323103402100815648.Spec : Prop :=
  ∀ n, P17323103402100815648.a n = A263084 (n + 1)

end A263084

/-! ## A263084.P8715297284831686537

`∑[A000005(2*(n+1))-A000005(2*n+1)]`
-/

namespace A263084.P8715297284831686537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A000005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263084.P8715297284831686537

namespace A263084

/-- `∑[A000005(2*(n+1))-A000005(2*n+1)]` -/
def P8715297284831686537.Spec : Prop :=
  ∀ n, P8715297284831686537.a n = A263084 (n + 1)

end A263084

/-! ## A263084.P18401770825649722875

`∑[A378216(2*n+1)-A378216(2*(n+1))]`
-/

namespace A263084.P18401770825649722875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (2 * n + 1) - A378216 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263084.P18401770825649722875

namespace A263084

/-- `∑[A378216(2*n+1)-A378216(2*(n+1))]` -/
def P18401770825649722875.Spec : Prop :=
  ∀ n, P18401770825649722875.a n = A263084 (n + 1)

end A263084

/-! ## A263084.P9724457567592408544

`∑[A320111(A008574(n+1))-A320111(2*n+1)]`
-/

namespace A263084.P9724457567592408544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A008574 (n + 1)).toNat - A320111 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263084.P9724457567592408544

namespace A263084

/-- `∑[A320111(A008574(n+1))-A320111(2*n+1)]` -/
def P9724457567592408544.Spec : Prop :=
  ∀ n, P9724457567592408544.a n = A263084 (n + 1)

end A263084

/-! ## A263084.P2442222967385107919

`A307704(2*(n+1))`
-/

namespace A263084.P2442222967385107919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307704 (2 * (n + 1))

end

end A263084.P2442222967385107919

namespace A263084

/-- `A307704(2*(n+1))` -/
def P2442222967385107919.Spec : Prop :=
  ∀ n, P2442222967385107919.a n = A263084 (n + 1)

end A263084

/-! ## A263084.P1395669233296767882

`∑[A341062(2*(n+1))]`
-/

namespace A263084.P1395669233296767882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263084.P1395669233296767882

namespace A263084

/-- `∑[A341062(2*(n+1))]` -/
def P1395669233296767882.Spec : Prop :=
  ∀ n, P1395669233296767882.a n = A263084 (n + 1)

end A263084

/-! ## A263084.P7684575746860991304

`∑[A334954(2*(n+1))-A334954(2*n+1)]`
-/

namespace A263084.P7684575746860991304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (2 * (n + 1)) - A334954 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263084.P7684575746860991304

namespace A263084

/-- `∑[A334954(2*(n+1))-A334954(2*n+1)]` -/
def P7684575746860991304.Spec : Prop :=
  ∀ n, P7684575746860991304.a n = A263084 (n + 1)

end A263084

/-! ## A263084.P15960197319743690845

`∑[A361003(2*(n+1))-A361003(2*n+1)]`
-/

namespace A263084.P15960197319743690845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361003 (2 * (n + 1)) - A361003 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263084.P15960197319743690845

namespace A263084

/-- `∑[A361003(2*(n+1))-A361003(2*n+1)]` -/
def P15960197319743690845.Spec : Prop :=
  ∀ n, P15960197319743690845.a n = A263084 (n + 1)

end A263084

/-! ## A263084.P18142367414395778745

`∑[log2(A100577(2*(n+1))/A100577(2*n+1))]`
-/

namespace A263084.P18142367414395778745
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A100577 (2 * (n + 1)) : ℚ) / (A100577 (2 * n + 1) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263084.P18142367414395778745

namespace A263084

/-- `∑[log2(A100577(2*(n+1))/A100577(2*n+1))]` -/
def P18142367414395778745.Spec : Prop :=
  ∀ n, P18142367414395778745.a n = (A263084 (n + 1) : ℝ)

end A263084

/-! ## A263084.P11182548157599631566

`∑[log2(A338506(2*(n+1))/A338506(2*n+1))]`
-/

namespace A263084.P11182548157599631566
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A338506 (2 * (n + 1)) : ℚ) / (A338506 (2 * n + 1) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263084.P11182548157599631566

namespace A263084

/-- `∑[log2(A338506(2*(n+1))/A338506(2*n+1))]` -/
def P11182548157599631566.Spec : Prop :=
  ∀ n, P11182548157599631566.a n = (A263084 (n + 1) : ℝ)

end A263084

/-! ## A263084.P200619625153131482

`∑[A032741(A004277(n+1))-A032741(2*n+1)]`
-/

namespace A263084.P200619625153131482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004277 (n + 1)).toNat - A032741 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263084.P200619625153131482

namespace A263084

/-- `∑[A032741(A004277(n+1))-A032741(2*n+1)]` -/
def P200619625153131482.Spec : Prop :=
  ∀ n, P200619625153131482.a n = A263084 (n + 1)

end A263084

/-! ## A263084.P17260469128429373578

`∑[A032741(A005843(n+1))-A032741(2*n+1)]`
-/

namespace A263084.P17260469128429373578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A005843 (n + 1)).toNat - A032741 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263084.P17260469128429373578

namespace A263084

/-- `∑[A032741(A005843(n+1))-A032741(2*n+1)]` -/
def P17260469128429373578.Spec : Prop :=
  ∀ n, P17260469128429373578.a n = A263084 (n + 1)

end A263084

/-! ## A263084.P3746859648333015206

`A326440(2*(n+1))-1`
-/

namespace A263084.P3746859648333015206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326440 (2 * (n + 1)) - 1

end

end A263084.P3746859648333015206

namespace A263084

/-- `A326440(2*(n+1))-1` -/
def P3746859648333015206.Spec : Prop :=
  ∀ n, P3746859648333015206.a n = A263084 (n + 1)

end A263084

/-! ## A263084.P8347813279155692987

`A128188(2*(n+1))-A128188(2*n+1)`
-/

namespace A263084.P8347813279155692987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128188 (2 * (n + 1)) - A128188 (2 * n + 1)

end

end A263084.P8347813279155692987

namespace A263084

/-- `A128188(2*(n+1))-A128188(2*n+1)` -/
def P8347813279155692987.Spec : Prop :=
  ∀ n, P8347813279155692987.a n = A263084 (n + 1)

end A263084

/-!
# A263085: Partial sums of A099774 (A099774(n) = number of divisors of n-th odd number).

The programs for A263085, the canonical program `A263085.P16582971687481211869` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263085 has offset 1).

The definition of A263085 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A263085.P16582971687481211869

`A000005(2*(n+1)-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A263085

/-- `A000005(2*(n+1)-1)+a(n-1)` -/
def P16582971687481211869.Spec : Prop :=
  ∀ n, P16582971687481211869.a n = A263085 (n + 1)

theorem P16582971687481211869.correct : P16582971687481211869.Spec := by
  intro n
  simp only [A263085, Nat.add_sub_cancel]

end A263085

/-! ## A263085.P8058347478338342389

`A263086(n+1)-A263084(n+1)`
-/

namespace A263085.P8058347478338342389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263086 (n + 1) - A263084 (n + 1)

end

end A263085.P8058347478338342389

namespace A263085

/-- `A263086(n+1)-A263084(n+1)` -/
def P8058347478338342389.Spec : Prop :=
  ∀ n, P8058347478338342389.a n = A263085 (n + 1)

end A263085

/-! ## A263085.P7746832825187591009

`∑[∏{e}[Δ[n²], #+1]]`
-/

namespace A263085.P7746832825187591009
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263085.P7746832825187591009

namespace A263085

/-- `∑[∏{e}[Δ[n²], #+1]]` -/
def P7746832825187591009.Spec : Prop :=
  ∀ n, (P7746832825187591009.a n : ℤ) = A263085 (n + 1)

end A263085

/-! ## A263085.P4234402708530949171

`∑[∑{d}[2*n+1, #%2]]`
-/

namespace A263085.P4234402708530949171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263085.P4234402708530949171

namespace A263085

/-- `∑[∑{d}[2*n+1, #%2]]` -/
def P4234402708530949171.Spec : Prop :=
  ∀ n, (P4234402708530949171.a n : ℤ) = A263085 (n + 1)

end A263085

/-! ## A263085.P7634643718548751605

`∑[∑{d}[2*n+1, gcd(2, #)]]`
-/

namespace A263085.P7634643718548751605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd 2 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263085.P7634643718548751605

namespace A263085

/-- `∑[∑{d}[2*n+1, gcd(2, #)]]` -/
def P7634643718548751605.Spec : Prop :=
  ∀ n, (P7634643718548751605.a n : ℤ) = A263085 (n + 1)

end A263085

/-! ## A263085.P2799856420091250352

`∑[∑{d}[2*n+1, and(1, #)]]`
-/

namespace A263085.P2799856420091250352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.land 1 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263085.P2799856420091250352

namespace A263085

/-- `∑[∑{d}[2*n+1, and(1, #)]]` -/
def P2799856420091250352.Spec : Prop :=
  ∀ n, (P2799856420091250352.a n : ℤ) = A263085 (n + 1)

end A263085

/-! ## A263085.P13832445535651494477

`∑[∑{d}[2*n+1, ceil(acot(#))]]`
-/

namespace A263085.P13832445535651494477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263085.P13832445535651494477

namespace A263085

/-- `∑[∑{d}[2*n+1, ceil(acot(#))]]` -/
def P13832445535651494477.Spec : Prop :=
  ∀ n, P13832445535651494477.a n = A263085 (n + 1)

end A263085

/-! ## A263085.P1341906141212434328

`∑[∑{d}[2*n+1, -(-1)^#]]`
-/

namespace A263085.P1341906141212434328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263085.P1341906141212434328

namespace A263085

/-- `∑[∑{d}[2*n+1, -(-1)^#]]` -/
def P1341906141212434328.Spec : Prop :=
  ∀ n, P1341906141212434328.a n = A263085 (n + 1)

end A263085

/-! ## A263085.P15832985537794405058

`∏{e}[2*n+1, #+1]+a(n-1)` with `a(0)=1`
-/

namespace A263085.P15832985537794405058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + a (n - 1)

end

end A263085.P15832985537794405058

namespace A263085

/-- `∏{e}[2*n+1, #+1]+a(n-1)` -/
def P15832985537794405058.Spec : Prop :=
  ∀ n, (P15832985537794405058.a n : ℤ) = A263085 (n + 1)

end A263085

/-! ## A263085.P5343800217158938695

`∑[A099774(n+1)]`
-/

namespace A263085.P5343800217158938695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263085.P5343800217158938695

namespace A263085

/-- `∑[A099774(n+1)]` -/
def P5343800217158938695.Spec : Prop :=
  ∀ n, P5343800217158938695.a n = A263085 (n + 1)

end A263085

/-! ## A263085.P13322156041765879267

`∑[A000005(Δ[n²])]`
-/

namespace A263085.P13322156041765879267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263085.P13322156041765879267

namespace A263085

/-- `∑[A000005(Δ[n²])]` -/
def P13322156041765879267.Spec : Prop :=
  ∀ n, P13322156041765879267.a n = A263085 (n + 1)

end A263085

/-! ## A263085.P9376442776382623826

`∑[A320111(Δ[n²])]`
-/

namespace A263085.P9376442776382623826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263085.P9376442776382623826

namespace A263085

/-- `∑[A320111(Δ[n²])]` -/
def P9376442776382623826.Spec : Prop :=
  ∀ n, P9376442776382623826.a n = A263085 (n + 1)

end A263085

/-! ## A263085.P13904368995428729126

`∑[A060764(2*n+1)]`
-/

namespace A263085.P13904368995428729126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263085.P13904368995428729126

namespace A263085

/-- `∑[A060764(2*n+1)]` -/
def P13904368995428729126.Spec : Prop :=
  ∀ n, P13904368995428729126.a n = A263085 (n + 1)

end A263085

/-! ## A263085.P14729246959452439868

`∑[A174273(2*n+1)]`
-/

namespace A263085.P14729246959452439868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174273 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263085.P14729246959452439868

namespace A263085

/-- `∑[A174273(2*n+1)]` -/
def P14729246959452439868.Spec : Prop :=
  ∀ n, P14729246959452439868.a n = A263085 (n + 1)

end A263085

/-! ## A263085.P14455912078487082209

`∑[A349211(2*n+1)]`
-/

namespace A263085.P14455912078487082209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349211 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263085.P14455912078487082209

namespace A263085

/-- `∑[A349211(2*n+1)]` -/
def P14455912078487082209.Spec : Prop :=
  ∀ n, P14455912078487082209.a n = A263085 (n + 1)

end A263085

/-! ## A263085.P6073375588611566170

`∑[A000005(4*n+2)/2]`
-/

namespace A263085.P6073375588611566170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (4 * n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263085.P6073375588611566170

namespace A263085

/-- `∑[A000005(4*n+2)/2]` -/
def P6073375588611566170.Spec : Prop :=
  ∀ n, P6073375588611566170.a n = (A263085 (n + 1) : ℚ)

end A263085

/-! ## A263085.P4511070567459538612

`∑[A000005(lcm(2, n+1+n))]/2`
-/

namespace A263085.P4511070567459538612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lcm 2 (n + 1 + n))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A263085.P4511070567459538612

namespace A263085

/-- `∑[A000005(lcm(2, n+1+n))]/2` -/
def P4511070567459538612.Spec : Prop :=
  ∀ n, P4511070567459538612.a n = (A263085 (n + 1) : ℚ)

end A263085

/-! ## A263085.P9079159243208419075

`∑[A000005(C(2, n+2)+2*n+1)]-1`
-/

namespace A263085.P9079159243208419075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose 2 (n + 2) + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A263085.P9079159243208419075

namespace A263085

/-- `∑[A000005(C(2, n+2)+2*n+1)]-1` -/
def P9079159243208419075.Spec : Prop :=
  ∀ n, P9079159243208419075.a n = A263085 (n + 1)

end A263085

/-! ## A263085.P1267868498352761731

`A006591(n+1)-A248517(n)`
-/

namespace A263085.P1267868498352761731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006591 (n + 1) - A248517 n

end

end A263085.P1267868498352761731

namespace A263085

/-- `A006591(n+1)-A248517(n)` -/
def P1267868498352761731.Spec : Prop :=
  ∀ n, P1267868498352761731.a n = A263085 (n + 1)

end A263085

/-! ## A263085.P3822171807208782011

`A077024(n+1)-A248517(n+1)`
-/

namespace A263085.P3822171807208782011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077024 (n + 1) - A248517 (n + 1)

end

end A263085.P3822171807208782011

namespace A263085

/-- `A077024(n+1)-A248517(n+1)` -/
def P3822171807208782011.Spec : Prop :=
  ∀ n, P3822171807208782011.a n = A263085 (n + 1)

end A263085

/-!
# A263086: Partial sums of A099777, where A099777(n) gives the number of divisors of n-th even number.

The programs for A263086, the canonical program `A263086.P10455314351694714214` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263086 has offset 1).

The definition of A263086 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A263084, A263085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A263086.P3529414525031942336

`A000005(2*(n+1))+a(n-1)` with `a(0)=2`
-/

namespace A263086.P3529414525031942336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000005 (2 * (n + 1)) + a (n - 1)

end

end A263086.P3529414525031942336

namespace A263086

/-- `A000005(2*(n+1))+a(n-1)` -/
def P3529414525031942336.Spec : Prop :=
  ∀ n, P3529414525031942336.a n = A263086 (n + 1)

end A263086

/-! ## A263086.P10455314351694714214

`A263084(n+1)+A263085(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A263086

/-- `A263084(n+1)+A263085(n+1)` -/
def P10455314351694714214.Spec : Prop :=
  ∀ n, P10455314351694714214.a n = A263086 (n + 1)

theorem P10455314351694714214.correct : P10455314351694714214.Spec := by
  intro n
  simp only [A263086, Nat.add_sub_cancel]

end A263086

/-! ## A263086.P5005086304859150579

`∑[∏{e}[2*(n+1), #+1]]`
-/

namespace A263086.P5005086304859150579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263086.P5005086304859150579

namespace A263086

/-- `∑[∏{e}[2*(n+1), #+1]]` -/
def P5005086304859150579.Spec : Prop :=
  ∀ n, (P5005086304859150579.a n : ℤ) = A263086 (n + 1)

end A263086

/-! ## A263086.P15045395744839637173

`∑[∑{d}[n+1, #%2+1]]`
-/

namespace A263086.P15045395744839637173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d % 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263086.P15045395744839637173

namespace A263086

/-- `∑[∑{d}[n+1, #%2+1]]` -/
def P15045395744839637173.Spec : Prop :=
  ∀ n, (P15045395744839637173.a n : ℤ) = A263086 (n + 1)

end A263086

/-! ## A263086.P2840502056860037862

`∑[∑{d}[n+1, gcd(2, #+1)]]`
-/

namespace A263086.P2840502056860037862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd 2 (d + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263086.P2840502056860037862

namespace A263086

/-- `∑[∑{d}[n+1, gcd(2, #+1)]]` -/
def P2840502056860037862.Spec : Prop :=
  ∀ n, (P2840502056860037862.a n : ℤ) = A263086 (n + 1)

end A263086

/-! ## A263086.P13618324761151814843

`∑[∑{d}[n+1, and(1, #)+1]]`
-/

namespace A263086.P13618324761151814843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (Nat.land 1 d + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263086.P13618324761151814843

namespace A263086

/-- `∑[∑{d}[n+1, and(1, #)+1]]` -/
def P13618324761151814843.Spec : Prop :=
  ∀ n, (P13618324761151814843.a n : ℤ) = A263086 (n + 1)

end A263086

/-! ## A263086.P18121241733666938989

`∑[∑{d}[n+1, lcm(2, #)/#]]`
-/

namespace A263086.P18121241733666938989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (Nat.lcm 2 d : ℚ) / (d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263086.P18121241733666938989

namespace A263086

/-- `∑[∑{d}[n+1, lcm(2, #)/#]]` -/
def P18121241733666938989.Spec : Prop :=
  ∀ n, P18121241733666938989.a n = (A263086 (n + 1) : ℚ)

end A263086

/-! ## A263086.P8409207451522166547

`∏{e}[2*(n+1), #+1]+a(n-1)` with `a(0)=2`
-/

namespace A263086.P8409207451522166547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + a (n - 1)

end

end A263086.P8409207451522166547

namespace A263086

/-- `∏{e}[2*(n+1), #+1]+a(n-1)` -/
def P8409207451522166547.Spec : Prop :=
  ∀ n, (P8409207451522166547.a n : ℤ) = A263086 (n + 1)

end A263086

/-! ## A263086.P16604147665074222719

`∑[A099777(n+1)]`
-/

namespace A263086.P16604147665074222719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263086.P16604147665074222719

namespace A263086

/-- `∑[A099777(n+1)]` -/
def P16604147665074222719.Spec : Prop :=
  ∀ n, P16604147665074222719.a n = A263086 (n + 1)

end A263086

/-! ## A263086.P13094374809266433426

`∑[A066660(n+1)+1]`
-/

namespace A263086.P13094374809266433426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263086.P13094374809266433426

namespace A263086

/-- `∑[A066660(n+1)+1]` -/
def P13094374809266433426.Spec : Prop :=
  ∀ n, P13094374809266433426.a n = A263086 (n + 1)

end A263086

/-! ## A263086.P14790269802380159685

`∑[A069930(n+1)+2]`
-/

namespace A263086.P14790269802380159685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263086.P14790269802380159685

namespace A263086

/-- `∑[A069930(n+1)+2]` -/
def P14790269802380159685.Spec : Prop :=
  ∀ n, P14790269802380159685.a n = A263086 (n + 1)

end A263086

/-! ## A263086.P17460397275862345246

`∑[A000005(2*(n+1))]`
-/

namespace A263086.P17460397275862345246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263086.P17460397275862345246

namespace A263086

/-- `∑[A000005(2*(n+1))]` -/
def P17460397275862345246.Spec : Prop :=
  ∀ n, P17460397275862345246.a n = A263086 (n + 1)

end A263086

/-! ## A263086.P14412128840118336749

`∑[A340273(2*(n+1))]`
-/

namespace A263086.P14412128840118336749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263086.P14412128840118336749

namespace A263086

/-- `∑[A340273(2*(n+1))]` -/
def P14412128840118336749.Spec : Prop :=
  ∀ n, P14412128840118336749.a n = A263086 (n + 1)

end A263086

/-! ## A263086.P16449749043453939919

`A113241(n+1)+1+n`
-/

namespace A263086.P16449749043453939919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113241 (n + 1) + 1 + (n : ℤ)

end

end A263086.P16449749043453939919

namespace A263086

/-- `A113241(n+1)+1+n` -/
def P16449749043453939919.Spec : Prop :=
  ∀ n, P16449749043453939919.a n = A263086 (n + 1)

end A263086

/-! ## A263086.P14253631698532831684

`∑[2-A378216(2*(n+1))]`
-/

namespace A263086.P14253631698532831684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A378216 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263086.P14253631698532831684

namespace A263086

/-- `∑[2-A378216(2*(n+1))]` -/
def P14253631698532831684.Spec : Prop :=
  ∀ n, P14253631698532831684.a n = A263086 (n + 1)

end A263086

/-! ## A263086.P10917465933361437893

`∑[A000005(n+2+n)%(n+3)]`
-/

namespace A263086.P10917465933361437893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 2 + n)) (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263086.P10917465933361437893

namespace A263086

/-- `∑[A000005(n+2+n)%(n+3)]` -/
def P10917465933361437893.Spec : Prop :=
  ∀ n, P10917465933361437893.a n = A263086 (n + 1)

end A263086

/-! ## A263086.P12964218257467115030

`abs(∑[A000005(Δ[n²]+1)]-1)+1`
-/

namespace A263086.P12964218257467115030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1| + 1

end

end A263086.P12964218257467115030

namespace A263086

/-- `abs(∑[A000005(Δ[n²]+1)]-1)+1` -/
def P12964218257467115030.Spec : Prop :=
  ∀ n, P12964218257467115030.a n = A263086 (n + 1)

end A263086

/-! ## A263086.P182917708222963855

`∑[A000027(A000005(n+2+n))]`
-/

namespace A263086.P182917708222963855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000005 (n + 2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263086.P182917708222963855

namespace A263086

/-- `∑[A000027(A000005(n+2+n))]` -/
def P182917708222963855.Spec : Prop :=
  ∀ n, P182917708222963855.a n = A263086 (n + 1)

end A263086

/-! ## A263086.P7782675774697960000

`∑[A000005(comp[A004277(n)]+1)]+1`
-/

namespace A263086.P7782675774697960000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A263086.P7782675774697960000

namespace A263086

/-- `∑[A000005(comp[A004277(n)]+1)]+1` -/
def P7782675774697960000.Spec : Prop :=
  ∀ n, P7782675774697960000.a n = A263086 (n + 1)

end A263086

/-! ## A263086.P17402559118473839082

`∑[A001227(n+1)+A000005(n+1)]`
-/

namespace A263086.P17402559118473839082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263086.P17402559118473839082

namespace A263086

/-- `∑[A001227(n+1)+A000005(n+1)]` -/
def P17402559118473839082.Spec : Prop :=
  ∀ n, P17402559118473839082.a n = A263086 (n + 1)

end A263086

/-!
# A263087: a(n) = A060990(n^2); number of solutions to x - d(x) = n^2, where d(x) is the number of divisors of x (A000005).

The programs for A263087, there is no canonical definition to state claims against.
-/

/-! ## A263087.P7474737280825585172

`A060990(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263087.P7474737280825585172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (n ^ 2)

end

end A263087.P7474737280825585172

/-! ## A263087.P13843183279732633029

`xor(1, xor(1, A060990(n^2)))`
-/

namespace A263087.P13843183279732633029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A060990 (n ^ 2)))

end

end A263087.P13843183279732633029

/-! ## A263087.P3709870004999805868

`A060990(A000290(n))%6`
-/

namespace A263087.P3709870004999805868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060990 (A000290 n).toNat) 6

end

end A263087.P3709870004999805868

/-! ## A263087.P17173906308057684210

`A060990(A000290(n))+A000035(2*n)`
-/

namespace A263087.P17173906308057684210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A000290 n).toNat + A000035 (2 * n)

end

end A263087.P17173906308057684210

/-! ## A263087.P3703930046026786693

`and(A037074(n+1), A060990(A000290(n)))`
-/

namespace A263087.P3703930046026786693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037074 (n + 1)) (A060990 (A000290 n).toNat)

end

end A263087.P3703930046026786693

/-! ## A263087.P11418603053008874651

`and(A060990(A000290(n)), A216926(n+1))`
-/

namespace A263087.P11418603053008874651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060990 (A000290 n).toNat) (A216926 (n + 1))

end

end A263087.P11418603053008874651

/-! ## A263087.P14511991611407854662

`A060990(A000290(n))+A007814(2*n+1)`
-/

namespace A263087.P14511991611407854662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A000290 n).toNat + A007814 (2 * n + 1)

end

end A263087.P14511991611407854662

/-! ## A263087.P15753968875117083011

`A014963(A024619(n+1))*A060990(n*n)`
-/

namespace A263087.P15753968875117083011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A024619 (n + 1)).toNat * A060990 (n * n)

end

end A263087.P15753968875117083011

/-! ## A263087.P17840680734088489537

`A262697(A259934(n))+A060990(A000290(n))`
-/

namespace A263087.P17840680734088489537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 (A259934 n).toNat + A060990 (A000290 n).toNat

end

end A263087.P17840680734088489537

/-! ## A263087.P5079873067741229276

`A060990(A045765(n+1))+A060990(A000290(n))`
-/

namespace A263087.P5079873067741229276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A045765 (n + 1)).toNat + A060990 (A000290 n).toNat

end

end A263087.P5079873067741229276

/-!
# A263088: a(n) = A262697(n^2).

The programs for A263088, there is no canonical definition to state claims against.
-/

/-! ## A263088.P6456089067255754332

`A262697(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263088.P6456089067255754332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 (n ^ 2)

end

end A263088.P6456089067255754332

/-! ## A263088.P3085755687321942575

`or(char[5], A262697(n*n))`
-/

namespace A263088.P3085755687321942575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A262697 (n * n))

end

end A263088.P3085755687321942575

/-! ## A263088.P10028388956527564599

`A262697(n*n)%A017006(n)`
-/

namespace A263088.P10028388956527564599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262697 (n * n)) (A017006 n)

end

end A263088.P10028388956527564599

/-! ## A263088.P13742939316445365340

`∑{d}[A262697(n*n), A000010(#)]`
-/

namespace A263088.P13742939316445365340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 (n * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A263088.P13742939316445365340

/-! ## A263088.P1899181013409766777

`A262697(n*n)+A000007(n+1)`
-/

namespace A263088.P1899181013409766777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 (n * n) + A000007 (n + 1)

end

end A263088.P1899181013409766777

/-! ## A263088.P5432149879504301487

`A262697(n*n)+A000038(n+1)`
-/

namespace A263088.P5432149879504301487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 (n * n) + A000038 (n + 1)

end

end A263088.P5432149879504301487

/-! ## A263088.P5620058695310354984

`A000034(2*n)*A262697(n*n)`
-/

namespace A263088.P5620058695310354984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A262697 (n * n)

end

end A263088.P5620058695310354984

/-! ## A263088.P15335888969290415894

`A007318(C(2, n))*A262697(n*n)`
-/

namespace A263088.P15335888969290415894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A262697 (n * n)

end

end A263088.P15335888969290415894

/-! ## A263088.P4810010520539501408

`and(1, A099375(n))*A262697(n*n)`
-/

namespace A263088.P4810010520539501408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A099375 n) * A262697 (n * n)

end

end A263088.P4810010520539501408

/-! ## A263088.P9027338793275675887

`A007318(Δ[or(1, n)])*A262697(n*n)`
-/

namespace A263088.P9027338793275675887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A262697 (n * n)

end

end A263088.P9027338793275675887

/-! ## A263088.P7614342515804094270

`A014963(8*n+6)*A262697(n*n)`
-/

namespace A263088.P7614342515804094270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 6) * A262697 (n * n)

end

end A263088.P7614342515804094270

/-! ## A263088.P53559821899786476

`A262697(n*n)+C(2, A000203(n+2))`
-/

namespace A263088.P53559821899786476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 (n * n) + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A263088.P53559821899786476

/-! ## A263088.P5370678052668778701

`A000045(gcd(n, n+1))*A262697(n*n)`
-/

namespace A263088.P5370678052668778701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A262697 (n * n)

end

end A263088.P5370678052668778701

/-! ## A263088.P7771252712246154906

`A262697(n*n)+char[A016848(2*n+1)]`
-/

namespace A263088.P7771252712246154906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016848 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 (n * n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A263088.P7771252712246154906

/-! ## A263088.P9319534651629762232

`A262697(n*n)+(n+2)%A020639(n+2)`
-/

namespace A263088.P9319534651629762232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 (n * n) + Int.tmod (n + 2 : ℤ) (A020639 (n + 2))

end

end A263088.P9319534651629762232

/-! ## A263088.P15169957494851553423

`A262697(A000290(n))%A000041(n+7)`
-/

namespace A263088.P15169957494851553423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262697 (A000290 n).toNat) (A000041 (n + 7))

end

end A263088.P15169957494851553423

/-! ## A263088.P1219048622310663856

`A001222(A002146(n))*A262697(n*n)`
-/

namespace A263088.P1219048622310663856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002146 n).toNat * A262697 (n * n)

end

end A263088.P1219048622310663856

/-! ## A263088.P17311143958029490532

`A001065(A000040(n+1))*A262697(n*n)`
-/

namespace A263088.P17311143958029490532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000040 (n + 1)).toNat * A262697 (n * n)

end

end A263088.P17311143958029490532

/-! ## A263088.P2234712419333522898

`A262697(A259934(n))+A262697(A000290(n))`
-/

namespace A263088.P2234712419333522898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 (A259934 n).toNat + A262697 (A000290 n).toNat

end

end A263088.P2234712419333522898

/-! ## A263088.P4191847653240614492

`A255338(A255057(A262697(n*n)))`
-/

namespace A263088.P4191847653240614492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 (A255057 (A262697 (n * n)).toNat).toNat

end

end A263088.P4191847653240614492

/-!
# A263089: Least monotonic left inverse for A261089; a(n) = largest k for which A261089(k) <= n.

The programs for A263089, there is no canonical definition to state claims against.
-/

/-! ## A263089.P2377238800332438932

`∑[char[A261089(n+1)]]`
-/

namespace A263089.P2377238800332438932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261089 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263089.P2377238800332438932

/-! ## A263089.P12866409288540985744

`∑[char[A261089(n)]]-1`
-/

namespace A263089.P12866409288540985744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261089 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A263089.P12866409288540985744

/-! ## A263089.P18044353957861031146

`A023443(∑[char[A261089(n)]])`
-/

namespace A263089.P18044353957861031146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261089 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263089.P18044353957861031146

/-! ## A263089.P3186027208442557086

`∑[char[A263265(A263260(n))]]`
-/

namespace A263089.P3186027208442557086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263265 (A263260 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263089.P3186027208442557086

/-! ## A263089.P15587897983252186473

`char[A261089(n)]+a(A023443(n))` with `a(0)=0`
-/

namespace A263089.P15587897983252186473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (A023443 n).toNat

end

end A263089.P15587897983252186473

/-! ## A263089.P5542900421985073738

`∑[A294080(A263259(n)^5+1)]-1`
-/

namespace A263089.P5542900421985073738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294080 (A263259 n ^ 5 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A263089.P5542900421985073738

/-! ## A263089.P10851024395519670792

`∑[A294080(A263259(n)^5+1)%A000034(n)]`
-/

namespace A263089.P10851024395519670792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294080 (A263259 n ^ 5 + 1).toNat) (A000034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263089.P10851024395519670792

/-!
# A263090: Primes p for which A049820(x) = p has a solution.

The programs for A263090, there is no canonical definition to state claims against.
-/

/-! ## A263090.P9668163297938973792

`p?[n%A266116(n)]`
-/

namespace A263090.P9668163297938973792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A266116 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263090.P9668163297938973792

/-! ## A263090.P17034030319357837435

`p?[n*ceil(A266110(n)/(n+1))]`
-/

namespace A263090.P17034030319357837435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(A266110 n : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263090.P17034030319357837435

/-! ## A263090.P5127264844885433999

`p?[n*round(A082284(n)/(n+1))]`
-/

namespace A263090.P5127264844885433999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway ((A082284 n : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263090.P5127264844885433999

/-! ## A263090.P5142493923593838366

`p?[(n+1)%(A082284(n+1)+1)]`
-/

namespace A263090.P5142493923593838366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A082284 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263090.P5142493923593838366

/-! ## A263090.P2657952035067712785

`p?[A236562(n+1)]`
-/

namespace A263090.P2657952035067712785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263090.P2657952035067712785

/-! ## A263090.P3855361906133614471

`p?[lt[0, A060990(n)]]`
-/

namespace A263090.P3855361906133614471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A263090.P3855361906133614471

/-! ## A263090.P11387937591893632378

`p?[lt[1, A082284(n)]]`
-/

namespace A263090.P11387937591893632378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A263090.P11387937591893632378

/-! ## A263090.P4198121848075157387

`p?[comp[A045765(n+1)]]`
-/

namespace A263090.P4198121848075157387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A263090.P4198121848075157387

/-! ## A263090.P13244440643546189906

`record[A006530(A236562(n+3))]`
-/

namespace A263090.P13244440643546189906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A236562 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263090.P13244440643546189906

/-! ## A263090.P15570528883172413028

`filter[A236562(n+2), A010051(#)]`
-/

namespace A263090.P15570528883172413028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236562 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A263090.P15570528883172413028

/-! ## A263090.P14300848227486111310

`∩[A000040(n+1), A236562(n+1)]`
-/

namespace A263090.P14300848227486111310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263090.P14300848227486111310

/-! ## A263090.P38640733436993378

`p?[lt[0, A262686(n)]]`
-/

namespace A263090.P38640733436993378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262686 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A263090.P38640733436993378

/-! ## A263090.P9763557120326186898

`p?[lt[1, A264971(n)]]`
-/

namespace A263090.P9763557120326186898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264971 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A263090.P9763557120326186898

/-! ## A263090.P14531829074291256999

`filter[A236562(n+3), A080339(#)]`
-/

namespace A263090.P14531829074291256999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236562 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A263090.P14531829074291256999

/-! ## A263090.P6021519319249613760

`eq[A032741(n), A057427(A262686(n))]`
-/

namespace A263090.P6021519319249613760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A262686 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263090.P6021519319249613760

/-! ## A263090.P17452304476605661182

`p?[comp[A262522(n)]]`
-/

namespace A263090.P17452304476605661182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262522 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A263090.P17452304476605661182

/-!
# A263091: Primes p for which A049820(x) = p has no solution.

The programs for A263091, there is no canonical definition to state claims against.
-/

/-! ## A263091.P3948532710421939383

`p?[n-A082284(n)]`
-/

namespace A263091.P3948532710421939383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263091.P3948532710421939383

/-! ## A263091.P1787092967119097240

`p?[n*(1-A060990(n))]`
-/

namespace A263091.P1787092967119097240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A060990 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263091.P1787092967119097240

/-! ## A263091.P10760909507378052067

`p?[n*(1-A266110(n))]`
-/

namespace A263091.P10760909507378052067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A266110 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263091.P10760909507378052067

/-! ## A263091.P11779502892625759995

`eq[A072480(n), A082284(n)]`
-/

namespace A263091.P11779502892625759995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263091.P11779502892625759995

/-! ## A263091.P11973925883304415387

`eq[A082284(n), A237053(n)]`
-/

namespace A263091.P11973925883304415387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263091.P11973925883304415387

/-! ## A263091.P14345684177091616750

`A082284(eq[n+2, A266116(n)])`
-/

namespace A263091.P14345684177091616750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263091.P14345684177091616750

/-! ## A263091.P12750793956263958729

`A266116(eq[n+2, A266116(n)])`
-/

namespace A263091.P12750793956263958729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263091.P12750793956263958729

/-! ## A263091.P3663580996443899032

`A082284(eq[2, A266116(n)-n])`
-/

namespace A263091.P3663580996443899032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266116 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263091.P3663580996443899032

/-! ## A263091.P14551734097946299072

`A266116(eq[2, A266116(n)-n])`
-/

namespace A263091.P14551734097946299072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266116 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263091.P14551734097946299072

/-! ## A263091.P13407099752290419439

`p?[A045765(n+1)]`
-/

namespace A263091.P13407099752290419439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263091.P13407099752290419439

/-! ## A263091.P1431133045413498142

`p?[eq[0, A060990(n)]]`
-/

namespace A263091.P1431133045413498142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A263091.P1431133045413498142

/-! ## A263091.P10614065787285194571

`p?[comp[n+1-A000005(n+1)]]`
-/

namespace A263091.P10614065787285194571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A263091.P10614065787285194571

/-! ## A263091.P8274204679024407046

`filter[A045765(n+1), A010051(#)]`
-/

namespace A263091.P8274204679024407046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A263091.P8274204679024407046

/-! ## A263091.P16595533651849487114

`∩[A000040(n+1), A045765(n+1)]`
-/

namespace A263091.P16595533651849487114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263091.P16595533651849487114

/-! ## A263091.P17859244082571092473

`∩[A004139(n+1), A045765(n+1)]`
-/

namespace A263091.P17859244082571092473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263091.P17859244082571092473

/-! ## A263091.P7937473183308632272

`∩[A006005(n+1), A045765(n+1)]`
-/

namespace A263091.P7937473183308632272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263091.P7937473183308632272

/-! ## A263091.P17094416549989513140

`∩[A008578(n+1), A045765(n+1)]`
-/

namespace A263091.P17094416549989513140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263091.P17094416549989513140

/-! ## A263091.P5608402973763288285

`∩[A033946(n+1), A045765(n+1)]`
-/

namespace A263091.P5608402973763288285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263091.P5608402973763288285

/-! ## A263091.P17556446551421714228

`∩[A045319(n+1), A045765(n+1)]`
-/

namespace A263091.P17556446551421714228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263091.P17556446551421714228

/-! ## A263091.P11612967251086643756

`∩[A045344(n+1), A045765(n+1)]`
-/

namespace A263091.P11612967251086643756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263091.P11612967251086643756

/-!
# A263092: Numbers whose squares are in A236562; numbers n such that there is at least one such k for which k - d(k) = n^2, where d(k) is the number of divisors of k (A000005).

The programs for A263092, there is no canonical definition to state claims against.
-/

/-! ## A263092.P249163316007678607

`sqrt(A263094(n))`
-/

namespace A263092.P249163316007678607
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A263094 n : ℝ)

end

end A263092.P249163316007678607

/-! ## A263092.P82337234029529920

`comp[A263093(n+1)]`
-/

namespace A263092.P82337234029529920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A263092.P82337234029529920

/-! ## A263092.P13025232684190216900

`lt[0, A263087(n)]`
-/

namespace A263092.P13025232684190216900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A263092.P13025232684190216900

/-! ## A263092.P8249100205400013911

`eq[1, gcd(A001097(n+1), A263087(n))]`
-/

namespace A263092.P8249100205400013911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001097 (n + 1)) (A263087 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263092.P8249100205400013911

/-! ## A263092.P5593386502152423639

`eq[2, A000040(n*char[A263093(n+1)]+1)]`
-/

namespace A263092.P5593386502152423639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263093 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n * (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263092.P5593386502152423639

/-! ## A263092.P16958631796828187684

`lt[0, A082284(n²)]`
-/

namespace A263092.P16958631796828187684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A263092.P16958631796828187684

/-! ## A263092.P15182929399496165134

`lt[0, A262686(n²)]`
-/

namespace A263092.P15182929399496165134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262686 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A263092.P15182929399496165134

/-! ## A263092.P9273488495219256126

`lt[1, A264971(n²)]`
-/

namespace A263092.P9273488495219256126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264971 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A263092.P9273488495219256126

/-! ## A263092.P12255501224204606940

`lt[1, A266111(n²)]`
-/

namespace A263092.P12255501224204606940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266111 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A263092.P12255501224204606940

/-!
# A263093: Numbers whose squares are in A045765.

The programs for A263093, there is no canonical definition to state claims against.
-/

/-! ## A263093.P357329859963699299

`A000196(A263095(n+1))`
-/

namespace A263093.P357329859963699299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A263095 (n + 1)).toNat

end

end A263093.P357329859963699299

/-! ## A263093.P14743556765306306344

`comp[A263092(n)]`
-/

namespace A263093.P14743556765306306344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A263093.P14743556765306306344

/-! ## A263093.P6032802064314868364

`root(A263095(n+1), A040059(2*n+1))²`
-/

namespace A263093.P6032802064314868364
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A263095 (n + 1) : ℝ) ^ (1 / (A040059 (2 * n + 1) : ℝ))) ^ 2

end

end A263093.P6032802064314868364

/-! ## A263093.P8978026789019641393

`root(A263095(n+1), A001316(A001316(n)))`
-/

namespace A263093.P8978026789019641393
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263095 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A263093.P8978026789019641393

/-! ## A263093.P7992186389583341695

`eq[0, A263087(n)]`
-/

namespace A263093.P7992186389583341695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263093.P7992186389583341695

/-! ## A263093.P404930844936455882

`lt[A263087(n), A001222(A263090(n+1))]`
-/

namespace A263093.P404930844936455882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A263090 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263093.P404930844936455882

/-! ## A263093.P17500796239722462189

`lt[A263087(n), A001222(A263091(n+1))]`
-/

namespace A263093.P17500796239722462189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A263091 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263093.P17500796239722462189

/-! ## A263093.P6310314192194563976

`eq[0, A082284(n²)]`
-/

namespace A263093.P6310314192194563976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263093.P6310314192194563976

/-! ## A263093.P16697688495540352721

`eq[0, A266110(n²)]`
-/

namespace A263093.P16697688495540352721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266110 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263093.P16697688495540352721

/-! ## A263093.P14615612964881117535

`eq[n², A266116(n²)]`
-/

namespace A263093.P14615612964881117535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266116 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263093.P14615612964881117535

/-! ## A263093.P8887817476877447634

`eq[0, A060990(n²)]`
-/

namespace A263093.P8887817476877447634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263093.P8887817476877447634

/-! ## A263093.P1048219854932880404

`eq[1, A060990(A000290(n))+1]`
-/

namespace A263093.P1048219854932880404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A000290 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263093.P1048219854932880404

/-!
# A263094: Squares in A236562; numbers n^2 such that there is at least one such k for which k - d(k) = n^2, where d(k) is the number of divisors of k (A000005).

The programs for A263094, there is no canonical definition to state claims against.
-/

/-! ## A263094.P5978506301084089085

`A000290(A263092(n))`
-/

namespace A263094.P5978506301084089085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A263092 n).toNat

end

end A263094.P5978506301084089085

/-! ## A263094.P585614191659773268

`comp[A263093(n+1)]²`
-/

namespace A263094.P585614191659773268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A263094.P585614191659773268

/-! ## A263094.P3152824004298481550

`A263092(or(n, char[1]))*A263092(n)`
-/

namespace A263094.P3152824004298481550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263092 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0)) * A263092 n

end

end A263094.P3152824004298481550

/-! ## A263094.P10725620963506606906

`A263092(n)*A263092(n%(n+1))`
-/

namespace A263094.P10725620963506606906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263092 n * A263092 (n % (n + 1))

end

end A263094.P10725620963506606906

/-! ## A263094.P16165463574807474071

`A263092(n)^A155541(C(n, n+1))`
-/

namespace A263094.P16165463574807474071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263092 n : ℚ) ^ (A155541 (Nat.choose n (n + 1) + 1) : ℤ)

end

end A263094.P16165463574807474071

/-! ## A263094.P14089442304062230796

`A263092(n)^A033547(A000108(C(3, n+1)))`
-/

namespace A263094.P14089442304062230796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263092 n : ℚ) ^ (A033547 (A000108 (Nat.choose 3 (n + 1))).toNat : ℤ)

end

end A263094.P14089442304062230796

/-! ## A263094.P12229920600253473308

`A263092(n)^A001222(A263106(n+1))`
-/

namespace A263094.P12229920600253473308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263092 n : ℚ) ^ (A001222 (A263106 (n + 1)).toNat : ℤ)

end

end A263094.P12229920600253473308

/-! ## A263094.P8407326309803944344

`lt[0, A263087(n)]²`
-/

namespace A263094.P8407326309803944344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A263094.P8407326309803944344

/-! ## A263094.P16076177932622506842

`eq[1, gcd(A001097(n+1), A263087(n))]²`
-/

namespace A263094.P16076177932622506842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001097 (n + 1)) (A263087 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A263094.P16076177932622506842

/-! ## A263094.P12941982759142474103

`A263092(n)^A001222(A263108(n+1))`
-/

namespace A263094.P12941982759142474103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263092 n : ℚ) ^ (A001222 (A263108 (n + 1)).toNat : ℤ)

end

end A263094.P12941982759142474103

/-! ## A263094.P8981111566918134758

`lt[0, A082284(n²)]²`
-/

namespace A263094.P8981111566918134758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A263094.P8981111566918134758

/-! ## A263094.P12274588052368530978

`A263092(A000196(n²))²`
-/

namespace A263094.P12274588052368530978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263092 (A000196 (n ^ 2)).toNat ^ 2

end

end A263094.P12274588052368530978

/-!
# A263095: Squares in A045765; numbers n^2 such that there is no such k for which k - d(k) = n^2, where d(k) is the number of divisors of k (A000005).

The programs for A263095, there is no canonical definition to state claims against.
-/

/-! ## A263095.P8906368480714518678

`comp[A263092(n)]²`
-/

namespace A263095.P8906368480714518678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A263095.P8906368480714518678

/-! ## A263095.P5666152920161903825

`A263093(n+1)²`
-/

namespace A263095.P5666152920161903825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263093 (n + 1) ^ 2

end

end A263095.P5666152920161903825

/-! ## A263095.P226803012883710824

`A263093(A000027(n+1))*A263093(n+1)`
-/

namespace A263095.P226803012883710824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263093 (A000027 (n + 1)).toNat * A263093 (n + 1)

end

end A263095.P226803012883710824

/-! ## A263095.P12845076093616495070

`A263093(A049820(n+1)+A000005(n+1))^2`
-/

namespace A263095.P12845076093616495070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263093 (A049820 (n + 1) + A000005 (n + 1)).toNat ^ 2

end

end A263095.P12845076093616495070

/-! ## A263095.P10578389253173980827

`A060990(A045765(n+1))+A263093(n+1)^2`
-/

namespace A263095.P10578389253173980827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A045765 (n + 1)).toNat + A263093 (n + 1) ^ 2

end

end A263095.P10578389253173980827

/-! ## A263095.P14308075514393083026

`A263093(A049820(n+1)+A000005(n+1))*A263093(n+1)`
-/

namespace A263095.P14308075514393083026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263093 (A049820 (n + 1) + A000005 (n + 1)).toNat * A263093 (n + 1)

end

end A263095.P14308075514393083026

/-! ## A263095.P1285274558242194603

`A263093(n+1)^A001222(A263106(n+1))`
-/

namespace A263095.P1285274558242194603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263093 (n + 1) : ℚ) ^ (A001222 (A263106 (n + 1)).toNat : ℤ)

end

end A263095.P1285274558242194603

/-! ## A263095.P5942985736185087124

`eq[0, A263087(n)]²`
-/

namespace A263095.P5942985736185087124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A263095.P5942985736185087124

/-! ## A263095.P1126747791001936146

`A263093(n+1)^A001222(A263108(n+1))`
-/

namespace A263095.P1126747791001936146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263093 (n + 1) : ℚ) ^ (A001222 (A263108 (n + 1)).toNat : ℤ)

end

end A263095.P1126747791001936146

/-! ## A263095.P6779172477272271417

`record[A263093(A263111(n))²]`
-/

namespace A263095.P6779172477272271417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263093 (A263111 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263095.P6779172477272271417

/-! ## A263095.P6584160057418376630

`record[A263093(A263111(n))]*A263093(n+1)`
-/

namespace A263095.P6584160057418376630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263093 (A263111 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A263093 (n + 1)

end

end A263095.P6584160057418376630

/-! ## A263095.P5161182595882632642

`eq[0, A082284(n²)]²`
-/

namespace A263095.P5161182595882632642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A263095.P5161182595882632642

/-! ## A263095.P4118014801452037032

`eq[1, A266110(n²)+1]²`
-/

namespace A263095.P4118014801452037032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266110 (n ^ 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A263095.P4118014801452037032

/-! ## A263095.P4061619547653946403

`eq[0, A060990(n²)]²`
-/

namespace A263095.P4061619547653946403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A263095.P4061619547653946403

/-!
# A263096: Square roots of highly composite numbers, floored down: a(n) = A000196(A002182(n)).

The programs for A263096, there is no canonical definition to state claims against.
-/

/-! ## A263096.P5630836719094237828

`A000196(A002182(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263096.P5630836719094237828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002182 (n + 1)).toNat

end

end A263096.P5630836719094237828

/-! ## A263096.P8157491547566809593

`A263097(n)+a(n-1)` with `a(0)=1`
-/

namespace A263096.P8157491547566809593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263097 n + a (n - 1)

end

end A263096.P8157491547566809593

/-! ## A263096.P13770582903704225784

`floor(sqrt(A135372(n+1)-1))`
-/

namespace A263096.P13770582903704225784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A135372 (n + 1) - 1)

end

end A263096.P13770582903704225784

/-! ## A263096.P3009668234696418036

`∑[A263097(2-2%(n+1)+n)]`
-/

namespace A263096.P3009668234696418036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263097 (2 - ((2 % (n + 1) : ℕ) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263096.P3009668234696418036

/-! ## A263096.P17202432163547122840

`floor(sqrt(A063072(n+1)-A072824(n+1)))`
-/

namespace A263096.P17202432163547122840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A063072 (n + 1) - A072824 (n + 1))

end

end A263096.P17202432163547122840

/-! ## A263096.P3775260122909590848

`floor(sqrt(A301413(n+1)*A319865(n+1)))`
-/

namespace A263096.P3775260122909590848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A301413 (n + 1) * A319865 (n + 1))

end

end A263096.P3775260122909590848

/-! ## A263096.P8820537192393849813

`∑[A263097(n+1)]+1-A263097(n+1)`
-/

namespace A263096.P8820537192393849813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A263097 (n + 1))

end

end A263096.P8820537192393849813

/-! ## A263096.P13430373406331226668

`floor(sqrt(sqrt(A046952(n+1))))`
-/

namespace A263096.P13430373406331226668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A046952 (n + 1) : ℝ))⌋

end

end A263096.P13430373406331226668

/-! ## A263096.P4812221959368345382

`floor(sqrt(A152047(n+1)*A152048(n+1)))`
-/

namespace A263096.P4812221959368345382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A152047 (n + 1) * A152048 (n + 1))

end

end A263096.P4812221959368345382

/-!
# A263097: First differences of A263096.

The programs for A263097, there is no canonical definition to state claims against.
-/

/-! ## A263097.P15609684703497085016

`A263096(n+2)-A263096(n+1)`
-/

namespace A263097.P15609684703497085016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263096 (n + 2) - A263096 (n + 1)

end

end A263097.P15609684703497085016

/-! ## A263097.P7700890900678257176

`Δ[A263096(n+1)]`
-/

namespace A263097.P7700890900678257176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263097.P7700890900678257176

/-! ## A263097.P11666386759453052870

`Δ[floor(sqrt(A002182(n+1)))]`
-/

namespace A263097.P11666386759453052870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002182 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263097.P11666386759453052870

/-! ## A263097.P17728798141013422968

`Δ[ceil(sqrt(A135372(n+1)))]`
-/

namespace A263097.P17728798141013422968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A135372 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263097.P17728798141013422968

/-! ## A263097.P13450902193573286464

`Δ[floor(sqrt(A063072(n+1)-A072824(n+1)))]`
-/

namespace A263097.P13450902193573286464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A063072 (n + 1) - A072824 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263097.P13450902193573286464

/-! ## A263097.P12978966120778176236

`Δ[floor(sqrt(A301413(n+1)*A319865(n+1)))]`
-/

namespace A263097.P12978966120778176236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A301413 (n + 1) * A319865 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263097.P12978966120778176236

/-! ## A263097.P4575436534718692178

`Δ[floor(sqrt(∑[A262501(n+1)]+1-A262501(n+1)))]`
-/

namespace A263097.P4575436534718692178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f2 j + (1 - A262501 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263097.P4575436534718692178

/-! ## A263097.P12450727776783630849

`Δ[floor(sqrt(sqrt(A046952(n+1))))]`
-/

namespace A263097.P12450727776783630849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A046952 (n + 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263097.P12450727776783630849

/-!
# A263098: a(n) = Max( tau(k) : k=1,2,3,...,n^2 ) where tau(k) = A000005(k) is the number of divisors of k.

The programs for A263098, there is no canonical definition to state claims against.
-/

/-! ## A263098.P306090344455814497

`∏{e}[A329004((n+1)²), #+1]`
-/

namespace A263098.P306090344455814497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A263098.P306090344455814497

/-! ## A263098.P17947605301546507248

`A000005(A329004((n+1)²))`
-/

namespace A263098.P17947605301546507248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A329004 ((n + 1) ^ 2)).toNat

end

end A263098.P17947605301546507248

/-! ## A263098.P11194774459717855855

`A002183(A261100((n+1)²))`
-/

namespace A263098.P11194774459717855855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (A261100 ((n + 1) ^ 2)).toNat

end

end A263098.P11194774459717855855

/-!
# A263099: Triangle read by rows: T(n,k) is the number of graphs with n vertices and k acyclic orientations.

The programs for A263099, there is no canonical definition to state claims against.
-/

/-! ## A263099.P6048419775531706054

`A000161(A029707(n+1)+n^3)`
-/

namespace A263099.P6048419775531706054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A029707 (n + 1) + (n ^ 3 : ℤ)).toNat

end

end A263099.P6048419775531706054

/-! ## A263099.P13998434590217009249

`A033788((A008611(n)%A028421(n))!)`
-/

namespace A263099.P13998434590217009249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033788 (Nat.factorial (Int.tmod (A008611 n) (A028421 n)).toNat)

end

end A263099.P13998434590217009249

/-! ## A263099.P18385140584952310128

`A224444(lcm(A000174(n), A121048(n+1)))`
-/

namespace A263099.P18385140584952310128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224444 (Int.lcm (A000174 n) (A121048 (n + 1)))

end

end A263099.P18385140584952310128

/-! ## A263099.P14822757588595233002

`A285701(or(A088811(n), A141893(n+1)))`
-/

namespace A263099.P14822757588595233002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (Int.lor (A088811 n) (A141893 (n + 1))).toNat

end

end A263099.P14822757588595233002

/-! ## A263099.P17622834422116993179

`A355741(A355741(n+4)+A345899(n+1))`
-/

namespace A263099.P17622834422116993179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (A355741 (n + 4) + A345899 (n + 1)).toNat

end

end A263099.P17622834422116993179

